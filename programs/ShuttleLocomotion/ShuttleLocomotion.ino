#include "src/basics/timers.h"
#include "src/basics/io.h"
#include "src/modules/XpressNet.h"
#include "src/modules/Weistra.h"
#include "src/modules/debounceClass.h"
#include "src/modules/shortCircuit.h"
#include "recorder.h"
#include "player.h"
#include "variables.h"
#include "src/basics/macros.h"

const int nChannels = 4 ;
Recorder recorder[nChannels] = 
{
    Recorder( 0x50 ), 
    Recorder( 0x51 ), 
    Recorder( 0x52 ), 
    Recorder( 0x53 )
} ;

Player player[nChannels] = 
{
    Player( 0x50 ), 
    Player( 0x51 ), 
    Player( 0x52 ), 
    Player( 0x53 )
} ;
uint8_t channel = 0;

uint8_t mode[nChannels] ;

struct {
    uint8_t speed ;
    uint8_t function ;
    uint8_t accessory ;
    uint8_t locoSpeed ;
    uint8_t state ;
    uint8_t newSpeed ;
    uint8_t newFunction ;
    uint8_t newAccessory ;
    uint8_t newLocoSpeed ;
    uint8_t newState ;
    uint8_t newTime ;
    uint8_t newLoco ;
    uint8_t newSensor ;
    uint8_t _new ;
} event[nChannels] ;

void clearEvent()
{
    for( int i = 0 ; i < nChannels ; i ++ )
    {
        event[i].speed = 0 ;
        event[i].function = 0 ;
        event[i].accessory = 0 ;
        event[i].locoSpeed = 0 ;
        event[i].state = 0 ;
    }
}


// constructors
//XpressNetClass Xpressnet;

//shortCircuit.
Debounce on_off( onSwitch ) ;
Debounce record( recordSwitch ) ;
Weistra controller( power ) ;




void initSensors()
{
    sens[1].pin = sens1 ;
    sens[2].pin = sens2 ;
    sens[3].pin = sens3 ;
    sens[4].pin = sens4 ;
    
    sens[1].timer = &sens1T ;
    sens[2].timer = &sens2T ;
    sens[3].timer = &sens3T ;
    sens[4].timer = &sens4T ;
}

void readSensors()
{
    for( int i = 0 ; i < nSensors ; i++ )
    {
        if( digitalRead( sens[i].pin ) == LOW )
        {
            sens[i].timer = 200 ;
            sens[i].state = 1 ;
        }
        if( !sens[i].timer )
        {
            sens[i].state = 0 ;
        }
    }
}
////////////////////////////////

// READ SWITCHES
uint8_t on_off_state ;
uint8_t record_state ;

void readSwitches()
{
    REPEAT_MS( 20 ) 
    on_off.debounceInputs() ;
    record.debounceInputs() ;
    END_REPEAT
    
    on_off_state = on_off.readInput() ;
    record_state = record.readInput() ;
}

// blink led code
uint8_t greenLedBlinkTimes[]   = {100, 200 } ; // enter more number here is groups of 2
uint8_t redLedBlinkTimes[]     = {100, 200 } ;

void blinkLeds()
{
    if( !redLedT )
    {
        if( digitalRead( redLed ) )
        {
            //digitalWrite( redLed, LOW ) ;
            //redLedT = redLedOffTime[ blinkCodeR ] ;
        }
        else
        {
            //if( blinkCodeR ) digitalWrite( redLed, HIGH ) ;
            //redLedT = redLedOnTime[ blinkCodeR ] ;
        }
    }
    if( !greenLedT )
    {
        if( digitalRead( greenLedT ) )
        {
            //digitalWrite( greenLedT, LOW ) ;
            //greenLedT = greenLedOffTime[ blinkCodeG ] ;
        }
        else
        {
            //if( blinkCodeG ) digitalWrite( redLed, HIGH ) ;
            //greenLedT = greenLedOnTime[ blinkCodeG ] ;
        }
    }
}

void selectChannel()
{
    REPEAT_MS( 100 )
    channel = analogRead( channelSelectPin ) / 0x100 ; // 1023 / 256 = 0-3
    END_REPEAT
}

void recordPrograms()
{
    uint8_t mode = recorder[ channel ].GetMode() ;
    if( record_state == FALLING )              // IF BUTTON IS PRESSED
    {
        if(      mode == idle       ) recorder[ channel ].StartRecording() ;
        else if( mode == recording  ) recorder[ channel ].StopRecording() ;
        else
        {
            // mode must be playing, so an error blink will suffice
        }
    }
    if( mode == recording )
    {
        if( event[channel].newSensor )    recorder[ channel ].SensorEvent(        event[channel].newSensor |(event[channel].state << 7) ) ;
        if( event[channel].locoSpeed )    recorder[ channel ].LocoSpeedEvent(     event[channel].newLoco   , event[channel].speed ) ;
        if( event[channel].function )     recorder[ channel ].LocoFunctionEvent(  event[channel].newLoco   , event[channel].function | (event[channel].state << 7) ) ;
        if( event[channel].accessory )    recorder[ channel ].AccessoryEvent(     event[channel].accessory , event[channel].state ) ;
        
        clearEvent() ;
    }
}

void playPrograms()
{
    uint8_t mode = recorder[ channel ].GetMode() ;
    if( on_off_state == FALLING )              // IF BUTTON IS PRESSED
    {
        if( mode == idle ) player[ channel ].StartPlaying() ;
        else
        {
            // recorder is either already playing or recording, error blink needed
        }
    }
    
    for( int i = 0 ; i < nChannels ; channel ++ )
    {
        player[i].stateMachine() ;     
    }
} 

// analog train controls
const int nSamples = 4 ;
uint16_t sample[ nSamples ] ;
void speedControl()
{
    if( speedKnobT == 0 )
    {   speedKnobT = 10 ;   // 10x per second
        
        static uint8_t counter   = 0 ;
        static uint8_t speedPrev = 0 ;
        uint16_t average = 0;
        
        sample[ counter ] = analogRead( speedKnob ) ;
        if( ++counter == nSamples ) counter = 0 ;
        
        for( int i = 0 ; i < nSamples ; i ++ ) 
        {
            average += sample[ i ] ;
        }
        
        average /= nSamples ;
        uint8_t speed = map( average, 0, 1023, -100, 100 ) ;
        
        if( speed < 0 ) { digitalWrite( dirLeft, HIGH ) ; digitalWrite( dirRight,  LOW ) ; }
        if( speed > 0 ) { digitalWrite( dirLeft,  LOW ) ; digitalWrite( dirRight, HIGH ) ; }
        
        if( speed != speedPrev )
        {   speedPrev  = speed ;
            controller.setSpeed( speed ) ;
        }
    }
}




void setup()
{
    initTimers() ;
    initIO() ;
    initSensors() ;
    
    XpressNet.start(XNetAddress, 3);
    controller.begin() ;
    // shortCircuit.begin() ;
}

void loop() 
{
// handle XpressNet Bus
    XpressNet.receive() ;            // handles XpressNet bus communication
    // decodeCommands() ;                // process XpressNet commands to monitor updates for trains and turnouts.
    
// readInput switches
    readSwitches() ;                    // reads and debounces switches as well as I2C inputs
    readSensors() ;                    // reads and debounces sensors
    
// run programs
    recordPrograms () ;                // record programs
    playPrograms() ;                    // play programs
    blinkLeds() ;
    
// analog train controls
    speedControl() ;                // reads and debounces speed for pwm
    controller.update() ;                 // handles track PWM
    shortCircuit() ;                    // monitors current draw and regulates power pin
}

/*

TO BE DONE:
* event must me maded and added

WHAT TO TEST:
* reading sensor
* recording programs
* playing programs
* reading to EEPROM
* reading from EEPROM


*/