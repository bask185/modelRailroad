#include "Encoder.h"
#include "Led.h"
#include "programs.h"
#include "debounceClass.h"

const int sw1 = A0 ;
const int pwmPin[] = { 11, 10, 9, 6, 5, 3 } ;
const int swPin[]  = { A0, A1, A2, A3,  A4,  A5 } ;

const int clkPin = 7 ;
const int dataPin = 4 ;
const int switchPin = 2 ;

const int nLeds = 6 ;
//const int nPrograms = 20 ;

uint8_t second ;
uint8_t encoderState = HIGH ;
int8_t  currentLed ;

uint8_t ledMask ;

#define allLedsOn 0b00111111
#define allLedsOff 0


#define REPEAT_MS(x)    { \
                            static uint32_t previousTime ; \
                            uint32_t currentTime = millis() ; \
                            if( currentTime - previousTime >= x ) \
                            {   \
                                previousTime = currentTime ;
                         
#define END_REPEAT          } \
                        }

Encoder encoder( clkPin, dataPin, switchPin ) ;

LedDriver led[ nLeds ] {     // this correct?
    LedDriver( 0, pwmPin[0] ),
    LedDriver( 1, pwmPin[1] ),
    LedDriver( 2, pwmPin[2] ),
    LedDriver( 3, pwmPin[3] ),
    LedDriver( 4, pwmPin[4] ),
    LedDriver( 5, pwmPin[5] )
} ;

// Debounce sw[nLeds] {
//     Debounce( swPin[0] ) ,
//     Debounce( swPin[1] ) ,
//     Debounce( swPin[2] ) ,
//     Debounce( swPin[3] ) ,
//     Debounce( swPin[4] ) ,
//     Debounce( swPin[5] ) 
// } ;


void setup()
{   
    Serial.begin(115200) ;

    ledMask = allLedsOn ;

    for( int i = 0 ; i < nLeds ; i ++ )
    {
        led[i].begin() ;
        
        pinMode( swPin[i], INPUT_PULLUP ) ;
    }
    
    pinMode( 13, OUTPUT ) ;
    encoder.begin() ;
    Serial.println("IO initialized");

    randomSeed(analogRead(A7));
    Serial.print("RNG started at: ");
    Serial.println(random(1, 1000));

    
    Serial.println("\nLED driver V1.0 by Bas Knippels, succesfully booted");
}

/**** MAIN LOOP *****/

void loop() {    
    encoderStateMachine() ;

    // REPEAT_MS( 20 ) ;
    // for( int i = 0 ; i < nLeds ; i ++ )         // debounce all 6 regular input pins every 20ms
    // {
    //     sw[i].debounce() ;
    // }
    // END_REPEAT

    uint8_t specialProgram = led[ 0 ].getProgram() ;

    if( specialProgram  < runningLight1  )
    {
        for( int i = 0 ; i < nLeds ; i ++ )               // if led 1 is not on special program, the standard programs are run
        {
            if( digitalRead( swPin[i] ) & ledMask >> i )  // if both are, true, led may be on
            {
                led[i].runProgram() ;
            }
            else
            {
                led[i].stopProgram() ;
            }
        }
    }
    
    else if( specialProgram == runningLight1 )
    {
        REPEAT_MS( specialProgramInterval )
        static uint8_t counter = 0 ;
        if( ++counter == nLeds ) { counter = 0 ; }

        Serial.println(counter) ;
        
        for( int i = 0 ; i < nLeds ; i ++ )
        {
            if( i == counter )  led[i].turnOn() ;
            else                led[i].turnOff() ;
        }
        END_REPEAT
    }
    else if( specialProgram == runningLight2 )
    {
        REPEAT_MS( specialProgramInterval )
        static uint8_t counter = 0 ;
        if( ++counter == nLeds ) { counter = 0 ; }
        
        for( int i = 0 ; i < nLeds ; i ++ )
        {
            if( i == counter )  led[i].turnOff() ;
            else                led[i].turnOn() ;
        }
        END_REPEAT
    }
    else if( specialProgram == runningLight3 ) // I forgot what I had in mind to do here
    {
        static uint8_t counter = 0 ;

    }
}

/**************** ENCODER STATE MACHINE ******************/
/** below code if for the menu part with which one can confire the led driver **/

// CONSTANTS
enum states {
    waitChange,
    selectLed,
    changeBrightness,
    changeProgram,
    factorySettings,
} ;

// MACROS
#define stateFunction(x) static bool x##F(void)
#define entryState if(runOnce)
#define onState runOnce = false; if(runOnce==false)
#define exitState if(!exitFlag) return false; else
#define State(x) break; case x: if( x##F())
#define STATE_MACHINE_BEGIN switch( state ) {\
	default:
#define STATE_MACHINE_END break;}



// VARIABLES
static unsigned char state = waitChange ;
static bool runOnce = true, exitFlag = false;

void nextState( uint8_t _state ) 
{
    state = _state ; 
    runOnce = true ; 
    exitFlag = false ;
}

// default state, turn all leds on and do nothing else but to monitor encoder change
stateFunction( waitChange ) {
    static uint32_t previousTime ;
    entryState
    {
        previousTime = millis() ;
        Serial.println("wait Change");
        ledMask = allLedsOn ;
        second = 0 ;
    }
    
    onState
    {
        uint32_t currentTime = millis() ;

        if( encoderState == RISING ) exitFlag = true ; // if button is pressed and released
    
        if( encoderState == LOW )
        {
            if( currentTime - previousTime > 10000 )    // button is pressed longer than 15s
            {
                second = 10;
                exitFlag = true ;                       // exit
            }
        }
        else                                            // if button is not pressed, keep setting previous time to millis()
        {
            previousTime = currentTime ;
        }
    }
    exitState
    {
        ledMask = allLedsOff ;
        currentLed = 0 ;
        return true ;
    }
}

// select a led, light it up, and press the button for 1s to adjust brightness and hold for 2s to adjust program
stateFunction( selectLed ) {    
    static uint32_t previousTime ;
    entryState
    {
        currentLed = constrain( currentLed, 0, nLeds-1 ) ;
        Serial.print(currentLed) ;Serial.println(" selected");
        second = 0 ;
        ledMask = 1 << currentLed ;         // turn on the led, by enabling it
    }
    onState
    {
        uint32_t currentTime = millis() ;
        
        if( encoderState ==  leftPulse ) { currentLed -- ; runOnce = true ; }  // select new led and restart case
        if( encoderState == rightPulse ) { currentLed ++ ; runOnce = true ; }

        if ( encoderState ==  RISING ) exitFlag = true ;         // if any of these states, exit
        
        if( encoderState == LOW )
        {
            if( currentTime - previousTime > 1000 )    // buttonPress > 1s
            {
                second = 1;
                digitalWrite( pwmPin[currentLed], LOW ) ;
            }
        }
        else
        {
            previousTime = currentTime ;
        }
    }
    exitState
    {
        return true ;
    }
}

stateFunction( changeBrightness ) {
    entryState
    {
        Serial.println("change Brightness");
    }
    onState
    {
        if( encoderState ==  leftPulse ) led[currentLed].decBrightness() ;
        if( encoderState == rightPulse ) led[currentLed].incBrightness() ;
        
        if( encoderState == RISING ) exitFlag = true ;
    }
    exitState
    {
        led[currentLed].storeSettings() ;
        return true ;
    }
}

stateFunction( changeProgram ) {
    entryState
    {
        Serial.println("change Program");
    }
    onState
    {
        if( encoderState ==  leftPulse ) led[currentLed].decProgram();
        if( encoderState == rightPulse ) led[currentLed].incProgram();
        
        if( encoderState == RISING) exitFlag = true ;
    }
    exitState
    {
        led[currentLed].storeSettings() ;
        return true ;
    }
}


stateFunction( factorySettings ) {
    entryState
    {
        Serial.println("Factory settings applied");

        for( int i = 0 ; i < nLeds ; i ++ )
        {
            led[i].factoryReset() ;
        }
    }
    onState
    {
        if( encoderState == RISING ) exitFlag = true ;  // button is already low when entering this state, so exit when button is released
    }
    exitState
    {
        return true ;
    }
}

void encoderStateMachine() {
    
    REPEAT_MS( 1 ) ;
    encoder.update() ;  // debounce all encoder inputs every x ms
    END_REPEAT ;
    
    if( millis() > 100) encoderState = encoder.getState() ;
    
    STATE_MACHINE_BEGIN
    
    State( waitChange) {
        if( second == 0 ) nextState( selectLed ) ; 
        else              nextState( factorySettings ) ; }
    
    State( selectLed ) {
        if( second == 0 ) nextState( changeBrightness ) ;
        if( second == 1 ) nextState( changeProgram ) ; }

        
    State( changeBrightness )  {
        nextState( waitChange ) ; }
        
    State( changeProgram ) {
        nextState( waitChange ) ; }

    State( factorySettings ) {
        nextState( waitChange ) ; }
        
    STATE_MACHINE_END
}