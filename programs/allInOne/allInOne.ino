#include "config.h"
#include "src/macros.h"
#include "src/debounceClass.h"
#include <EEPROM.h>

/*************** INITIALIZATION *****************/


/*******  GENERAL IO ********/
const int   ADDRESS = 0x00 ;                                                    // address in EEPROM for 'myAddress'
uint16      myAddress ;                                                         // STORED IN EEPROM
const int   configPin = A6 ;                                                    // in all variants this pin is used to configure address may also be A7 perhaps, check board designs
bool        getAddress ;
Debounce    configBtn( 255 ) ;                                                  // analog only
const int   statusLed ;

/******* INTERFACE *******/
#if   defined XNET
    #include "src/XpressNetMaster.h"
    const int RS485DIR = 2 ;
    XpressNetMasterClass Xnet ;

#elif defined LNET
    #include "src/LocoNet.h"
    const int LNtxPin = 0 ;  
    lnMsg  *LnPacket;          // pointer to a received LNet packet  

#elif defined DCC
    #include "src/NmraDcc.h"
    NmraDcc dcc ;

#else
    #error NO INTERFACE DEFINED, CANNOT COMPILE

#endif


/******* MODULE TYPE *******/
#ifdef SERVO
    #include "src/ServoSweep.h"

    const int nServos = 4 ;
    const int nAddresses = nServos ;

    const int servPin1 = 3, relPin1 =  7 ,  // fix pins
              servPin2 = 4, relPin2 =  8 ,
              servPin3 = 5, relPin3 =  9 ,
              servPin4 = 6, relPin4 = 10 ;

    ServoSweep servo[nServos] =
    {
        ServoSweep( servPin1, 80, 100, 1, 20, relPin1 ),
        ServoSweep( servPin2, 80, 100, 1, 20, relPin2 ),
        ServoSweep( servPin3, 80, 100, 1, 20, relPin3 ),
        ServoSweep( servPin4, 80, 100, 1, 20, relPin4 )
    } ;

#elif defined MOSFET
    #include "src/CoilDrive.h"
    const int nCoilDrives = 4 ;
    const int nAddresses = nCoilDrives ;

    const int switchTime = 250 ; // ms
    const int coilPin1A = 3, coilPin1B =  4 ,
              coilPin2A = 5, coilPin2B =  6 ,
              coilPin3A = 7, coilPin3B =  8 ,
              coilPin4A = 9, coilPin4B = 10 ;

    CoilDrive coilDrive[ nCoilDrives] =
    {
        CoilDrive( coilPin1A, coilPin1B, switchTime ) ,
        CoilDrive( coilPin2A, coilPin2B, switchTime ) ,
        CoilDrive( coilPin3A, coilPin3B, switchTime ) ,
        CoilDrive( coilPin4A, coilPin4B, switchTime ) 
    } ;


#elif defined RELAY
    #include "src/Relay.h"
    const int nRelays = 16 ;
    const int nAddresses = nRelays ;
    const int relayPins[nRelays] = { 10,  9,  8,  7,  6,  5,  4,  3
                                     A5, A4, A3, A2, A1, A0, 11, 12 } ;
    Relay relay[nRelays] =
    {
        Relay( relayPins[ 0] ),  Relay( relayPins[ 1] ), Relay( relayPins[ 2] ), Relay( relayPins[ 3] ),   
        Relay( relayPins[ 4] ),  Relay( relayPins[ 5] ), Relay( relayPins[ 6] ), Relay( relayPins[ 7] ),   
        Relay( relayPins[ 8] ),  Relay( relayPins[ 9] ), Relay( relayPins[10] ), Relay( relayPins[11] ),   
        Relay( relayPins[12] ),  Relay( relayPins[13] ), Relay( relayPins[14] ), Relay( relayPins[15] )
    } ; 

#elif defined OCCUPANCY || defined CONTROLPANEL                                // both OCCUPANCY detector as switch panel use same inputs
    const int nSensors = 16 ;
    const int nAddresses = nSensors ;
    const int sensorPin[nSensors] = { 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, A0, A1, A2, A3, A4 } ;
    Debounce input[] =
    {
        Debounce( sensorPin[0] ), Debounce( sensorPin[4] ), Debounce( sensorPin[ 8] ), Debounce( sensorPin[12] ),
        Debounce( sensorPin[1] ), Debounce( sensorPin[5] ), Debounce( sensorPin[ 9] ), Debounce( sensorPin[13] ),
        Debounce( sensorPin[2] ), Debounce( sensorPin[6] ), Debounce( sensorPin[10] ), Debounce( sensorPin[14] ),
        Debounce( sensorPin[3] ), Debounce( sensorPin[7] ), Debounce( sensorPin[11] ), Debounce( sensorPin[15] )
    } ;
        #if defined OCCUPANCY
        uint16 sampleTime = 30 ;
        #else
        uint16 sampleTime = 3 ;
        #endif

#elif defined SIGNALS || defined SIGNALS_BLOCK
#include "src/signal.h"
const int nSignals = 4 ;
    #if defined SIGNALS_BLOCK
const int nAddresses = nSignals + 1 ;   // N.B. for block signals addresses are linked
    #else
const int nAddresses = nSignals * 2;    // N.B. for 3 state lose signals, we listen to an extra address 
    #endif
const int signalPins[ nSignals * 3 ] = 
{  3,  4,  5, 
   6,  7,  8, 
  13, A5, 12, 
   9, 10, 11
} ;
Signal signal[] =
{
    Signal( signalPins[ 0], signalPins[ 1], signalPins[ 2] ),
    Signal( signalPins[ 3], signalPins[ 4], signalPins[ 5] ),
    Signal( signalPins[ 6], signalPins[ 7], signalPins[ 8] ),
    Signal( signalPins[ 9], signalPins[10], signalPins[11] )
} ;

#else
#error NO MODULE DEFINED, CANNOT COMPILE
#endif

/*********** SETUP ***********/
void setup()
{
// LOAD ADDRESS FROM EEPROM
    EEPROM.get( ADDRESS, myAddress ) ;
    if( myAddress == 0xFFFF )
    {
        myAddress = 1 ;
        EEPROM.put( ADDRESS, myAddress ) ;
    }

// INITIALIZE INTERFACE
#if defined XNET
    Xnet.setup( Loco128 ,RS485DIR ) ;

#elif defined LNET
    LocoNet.init(LNtxPin);

#elif defined DCC
    //dcc.init( /* add paramterts */ ) ;
#endif

// INITIALIZE MODULE
#if defined SERVO
    for( int i = 0 ; i < nServos ; i ++ )
    {
        servo[i].begin() ;
    }

#elif defined SIGNALS || defined SIGNALS_BLOCK
    for( int i = 0 ; i < nSignals ; i ++ )
    {
        signal[i].begin() ;
    }

#elif defined MOSFET
    for( int i = 0 ; i < nCoilDrives ; i ++ )
    {
        coilDrive[i].begin() ;
    }
#elif defined RELAY
    for( int i = 0 ; i < nRelays ; i ++ )
    {
        relay[i].begin() ;
    }

#endif
}


/********* OUTPUTS ************/

void storeNewAddress( uint16 _address )
{
    getAddress = false ;
    myAddress = _address ;
    EEPROM.put( ADDRESS, myAddress ) ;
}

void setOutput( uint16 Address, uint8 state )
{
    if( Address >= myAddress && Address < (myAddress + nAddresses ) )           // if valid address for this module..
    {
        uint8 ID = Address - myAddress ;                                        // get ID

    #if defined RELAY                       
        digitalWrite( relay[ID], state ) ;                                      // directly set relay pin

    #elif defined SERVO                                                         // set servoSweep state
        servo[ID].setState( state ) ;

    #elif defined MOSFET                                                        // set one of 2 coils, and turn it off later.
        coilDrive[ID].setState( state ) ;

    #elif defined SIGNALS
        if( ID < nSignals) { signal[ ID ].setSensor1( state ) ; }                  // This code should work, it is ment for 3 tone color
        if( ID > 0 )       { signal[ID-1].setSensor2( state ) ; }
     
    #elif defined SIGNALS_BLOCK
        if( ID & 1 ) { signal[ID/2].setSensor2( state ) ; }                     // unequal ID means sensor 2
        else         { signal[ID/2].setSensor1( state ) ; }                     //   equal ID means sensor 1

    #endif
    }
}



/********* CALL BACK FUNCTIONS *********/
// Xnet
void notifyXNetTrnt( uint16 Address, uint8 data )
{
    if( bitRead( data, 3 ) == 1 )
    {
        if( getAddress ) storeNewAddress( Address ) ;
        else             setOutput( Address, data & 1 ) ;
    }
}

// Lnet
void notifySwitchRequest( uint16 Address, uint8 Output, uint8 Direction ) 
{
    if( Output == 1 )
    {
        if( getAddress ) storeNewAddress( Address ) ;
        else             setOutput( Address, Direction ) ;
    }
}

// DCC
void notifyDccAccTurnoutOutput ( uint16 Addr, uint8 Direction, uint8 OutputPower )
{
    if( OutputPower == 1 )
    {
        if( getAddress ) storeNewAddress( Addr ) ;
        else             setOutput( Addr, Direction ) ;
    }
}



/********* TRANSMITT FUNCTIONS, Xnet and Lnet *********/
// Lnet
void sendOPC_SW_REQ(int address, byte dir, byte on)
{
#ifdef LNET
    lnMsg SendPacket ;
    
    int sw2 = 0x00 ;
    if (dir) sw2 |= B00100000 ;
    if (on)  sw2 |= B00010000 ;
    sw2 |= (address >> 7) & 0x0F ;
    
    SendPacket.data[ 0 ] = OPC_SW_REQ ;
    SendPacket.data[ 1 ] = address & 0x7F ;
    SendPacket.data[ 2 ] = sw2 ;
    
    LocoNet.send( &SendPacket );
#endif
}

void setLNTurnout(int address, byte dir)
{
    sendOPC_SW_REQ( address - 1, dir, 1 ) ;
    sendOPC_SW_REQ( address - 1, dir, 0 ) ;
}


void sendState( uint8 IO, uint8 state )
{
#if defined XNET                                                               // if Xnet, send accesory instruction
    Xnet.SetTrntPos( myAddress + IO , 1, state ) ;
    delay( 20 ) ;
    Xnet.SetTrntPos( myAddress + IO , 0, state ) ;

#elif defined LNET
    #if defined OCCUPANCY
    // Lnet.sendFeedback() ;                                                    // to be filled in (check for difference in turnout command or OCCUPANCY info)

    #elif defined CONTROLPANEL
    setLNTurnout( myAddress + IO, state ) ;

    #endif
#endif
}




/********* MAIN LOOP **********/
void loop()
{
    static uint8 index = 0 ;


/******* INTERFACE HANDLING *******/
#if defined XNET
    Xnet.update() ;

#elif defined LNET
    LnPacket = LocoNet.receive() ;
    if( LnPacket )
    {   
        LocoNet.processSwitchSensorMessage( LnPacket ) ;
    }

#elif defined DCC
    dcc.process() ;

#endif
    
/******* ROUND ROBIN TASKS *******/

// debounce config pin
    REPEAT_MS( 50 )
    {
        uint16 sample = analogRead( configPin ) ;
        if( sample < 500 ) { configBtn.debounce( 0 ) ; }
        else               { configBtn.debounce( 1 ) ; }
    } END_REPEAT
    
    if( configBtn.getState() == FALLING ) { getAddress = true ; }

// update status led
    REPEAT_MS( 1000 )
    {
        if( getAddress == true ) { digitalWrite( statusLed, !digitalRead( statusLed ) ) ; }
        else                     { digitalWrite( statusLed, HIGH ) ; }
    } END_REPEAT

// update servo motors and frog relais
#if defined SERVO
    for( int i = 0 ; i < nServos ; i ++ )
    {
        servo[i].update() ;
    }
// check when mosfets needs to be turned off
#elif defined MOSFET
    for( int i = 0 ; i < nCoilDrives ; i ++ )
    {
        coilDrive[i].update() ;
    }

// debounce inputs and transmitt updates
#elif defined OCCUPANCY || defined CONTROLPANEL
    REPEAT_MS( sampleTime )                                                     // 1 input will be debounced at the time
    {
        input[index].debounce() ;
        if( ++ index == nSensors ) index = 0 ;
    
    } END_REPEAT

    uint8 state = input[index].getState() ;
    if( state == FALLING ) sendState( index, 1 ) ;                              // depending on interface, must either transmit detector state
    if( state ==  RISING ) sendState( index, 0 ) ;                              // or take control of a point


//#elif defined SIGNALS                                                            // signals have (not yet) need for an update function. Perhaps on one day I will add fading or something.
    

#endif
}