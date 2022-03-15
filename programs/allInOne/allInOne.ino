#include "config.h"
#include "src/macros.h"
#include "src/debounceClass.h"
#include <EEPROM.h>


/*******  GENERAL IO ********/
const int   ADDRESS = 0x00 ;                                                    // address in EEPROM for 'myAddress'
uint16      myAddress ;                                                         // STORED IN EEPROM
const int   configPin = A5 ;                                                    // in all variants this pin is used to configure address
bool        getAddress ;
Debounce    configBtn( configPin ) ;

/******* INTERFACE *******/
#if   defined X_NET
    #include "src/XpressNetMaster.h"
    const int RS485DIR = 2 ;
    XpressNetMasterClass Xnet ;

#elif defined L_NET
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

    const int servPin1 = 3, relPin1 =  7 ,
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
    const int nRelays = 16 ;
    const int nAddresses = nRelays ;
    const int relay[nRelays]   = { 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, A0, A1, A2, A3, A4 } ;

#elif defined OCCUPANCY || defined CONTROL_PANEL                                // both OCCUPANCY detector as switch panel use same inputs
    const int nAddresses = 0xFF ;
    const int nSensors = 16 ;
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

#elif defined SIGNAL


#else
#error NO MODULE DEFINED, CANNOT COMPILE
#endif




/********* CONTROL OUTPUTS (interface abstract) ************/

void sendOPC_SW_REQ(int address, byte dir, byte on)
{
#ifdef L_NET
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
void notifySwitchRequest( uint16_t Address, uint8_t Output, uint8_t Direction ) 
{
    if( Output == 1 )
    {
        if( getAddress ) storeNewAddress( Address ) ;
        else             setOutput( Address, Direction ) ;
    }
}

// DCC
void notifyDccAccTurnoutOutput ( uint16 Addr, uint8 Direction, uint8 OutputPower ) // NOTE MAKE WRAPPER FUNCTION TO BE CALLED FROM ALL CALLBACKS
{
    if( OutputPower == 1 )
    {
        if( getAddress ) storeNewAddress( Addr ) ;
        else             setOutput( Addr, Direction ) ;
    }
}



/********* TRANSMITT FUNCTIONS *********/
void sendState( uint8 IO, uint8 state )
{
#if defined X_NET                                                               // if Xnet, send accesory instruction
    Xnet.SetTrntPos( myAddress + IO , 1, state ) ;
    delay( 20 ) ;
    Xnet.SetTrntPos( myAddress + IO , 0, state ) ;

#elif defined L_NET
    #if defined OCCUPANCY
    // Lnet.sendFeedback() ;                                                    // to be filled in (check for difference in turnout command or OCCUPANCY info)

    #elif defined CONTROL_PANEL
    setLNTurnout( myAddress + IO, state )

    #endif
#endif
}


void setup()
{
    EEPROM.get( ADDRESS, myAddress ) ;
    if( myAddress == 0xFFFF )
    {
        myAddress = 1 ;
        EEPROM.put( ADDRESS, myAddress ) ;
    }

#if defined X_NET
    Xnet.setup( Loco128 ,RS485DIR ) ;
#elif defined L_NET
    LocoNet.init(LNtxPin);
#elif defined DCC
    //dcc.init( /* add paramterts */ ) ;
#endif

}

/********* MAIN LOOP **********/
void loop()
{
    static uint8 index = 0 ;

    REPEAT_MS( 50 )
    {
        configBtn.debounce() ;
    } END_REPEAT
    
    if( configBtn.getState() == FALLING ) { getAddress = true ; }


/******* INTERFACE HANDLING *******/
#if defined X_NET                                                               // Xnet
    Xnet.update() ;

#elif defined L_NET                                                             // Lnet
    LnPacket = LocoNet.receive() ;
    if( LnPacket )
    {   
        LocoNet.processSwitchSensorMessage( LnPacket ) ;
    }

#elif defined DCC                                                               // DCC
    dcc.process() ;

#endif
    
/******* ROUND ROBIN TASKS *******/
#if defined SERVO
    for( int i = 0 ; i < nServos ; i ++ )
    {
        servo[i].sweep() ;
    }

#elif defined MOSFET
    for( int i = 0 ; i < nCoilDrives ; i ++ )
    {
        coilDrive[i].update() ;
    }

#elif defined OCCUPANCY || defined CONTROL_PANEL
    REPEAT_MS( sampleTime )                                                     // 1 input will be debounced at the time
    {
        input[index].debounce() ;
        if( ++ index == nSensors ) index = 0 ;
    
    } END_REPEAT

    uint8 state = input[index].getState() ;
    if( state == FALLING ) sendState( index, 1 ) ;                              // depending on interface, must either transmit detector state
    if( state ==  RISING ) sendState( index, 0 ) ;                              // or take control of a point


#elif defined SIGNAL
    // not yet created, unsure if update function will be needed?

#endif
}