#include "src/io.h"
#include "src/date.h"
#include "src/io.h"
#include "src/version.h"
#include "src/macros.h"
#include "src/debounceClass.h"
#include "src/XpressNetMaster.h"
#include "shuttleService.h"
#include "event.h"
#include "points.h"
#include <EEPROM.h>


/* TODO 

The modes have to be set properly with the button states
the begin situation should examined, what to do with or without train?
XpressNet wrapper functions must be made to set speed and diretion with

*/

byte currentState ;

#ifndef DEBUG
XpressNetMasterClass Xnet ;
#endif

Debounce teach(     teachinButton ) ;
Debounce newTrain( newTrainButton ) ;
Debounce sensor1(      sensorPin1 ) ;
Debounce sensor2(      sensorPin2 ) ;
Debounce onOff(          onOffPin ) ;

volatile uint16 currentAddress ;

uint8 teachState ;
uint8 newTrainState ;
uint8 sensor1state ;
uint8 sensor2state ;
uint8 onOffState ;

extern uint8  speed ; 
extern uint8  direction ;

bool  waitingNewAddress ;


void debounceInputs()
{
    REPEAT_MS( 50 )
    {
        teach.debounce() ;
        newTrain.debounce() ;
        onOff.debounce() ;
    } END_REPEAT

    REPEAT_MS( 500 )
    {
        sensor1.debounce() ;
        sensor2.debounce() ;
    } END_REPEAT

    teachState    = teach.getState() ;      // can be both pust as toggle, I think toggle would do better
    newTrainState = newTrain.getState() ;   // note, newTrain should be push button
    sensor1state  = sensor1.getState() ;
    sensor2state  = sensor2.getState() ;
    onOffState    = onOff.getState() ;      // should be toggle Switch
}

void proccesButtons()
{

    if( newTrainState == FALLING && currentState == awaitingTrain )
    {
        waitingNewAddress = true ;
        setMode( waiting4address ) ;
    }
    if( onOffState ==  RISING ) setLights( started ) ;
    if( onOffState == FALLING ) setLights( stopped ) ;

    if( sensor1state == FALLING ) setLights( detector1Made ) ;
    if( sensor2state == FALLING ) setLights( detector2Made ) ;
    if( sensor1state == RISING
    ||  sensor2state == RISING )  setLights( detectorReleased ) ;
}

void notifyXNetLocoDrive128( uint16_t Address, uint8_t Speed )
{
    if( waitingNewAddress == true )
    {   waitingNewAddress  = false ;
        
        currentAddress = Address ;
        setLights( addressReceived ) ;
        setMode( ready2receiveTrain ) ;
        EEPROM.put( 0, currentAddress ) ;

        DebugPrint("new address stored") ;
        DebugPrint( currentAddress ) ;
    }

    else if( Address == currentAddress )
    {
        int8_t speedLocal ;

        speedLocal = Speed & 0x7F ;
        direction  = Speed & 0x80 ;

        if( speedLocal > 0 ) speedLocal -- ;
        speed = speedLocal ;
    }
}

void movePoint( uint16 raw )
{
    uint8  state   = raw >> 15 ;
    uint16 address = raw & 0x3FF ;

    #ifndef DEBUG
    Xnet.SetTrntPos( address, state, 1 ) ;
    delay( 20 ) ;
    Xnet.SetTrntPos( address, state, 0 ) ;
    #endif
}

void setup()
{
    initIO() ;
    initShuttleService() ;
#ifndef DEBUG
    Xnet.setup( Loco128, RS485dir ) ;  
#else
    Serial.begin(115200) ;
    Serial.println(F("booting program")) ;
#endif

    debounceInputs() ;
    delay( 100 ) ;
    debounceInputs() ;
    delay( 100 ) ;
    debounceInputs() ;

    EEPROM.get( 0, currentAddress ) ;
    DebugPrint(F("loaded address ")) ;
    DebugPrint( currentAddress ) ;

}

void loop()
{
    debounceInputs() ;
    proccesButtons() ;
    
    handlePoints() ;
    lightHandler() ;

    if( waitingNewAddress == 0 )
    {
        currentState = shuttleService() ;                                  // run state machine
    }
    
#ifdef DEBUG
    byte b = Serial.read() - '0' ;
    if( b >= 1 && b <= 9 )
    {
        notifyXNetLocoDrive128( b,  0 ) ;
    }
#else
    Xnet.update() ;
#endif
}
