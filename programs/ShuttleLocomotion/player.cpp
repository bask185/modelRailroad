#include <Wire.h>
#include "Player.h"
#include "variables.h"



enum states {
    waitTime ,
    getEvent ,
    waitSensor ,
    setAccessory ,
    setLocoSpeed ,
    setLocoFunction ,
    stopPlaying ,
} ;

Player::Player( uint8_t _I2Caddress)
{
   I2Caddress = _I2Caddress ;
}

void Player::fetchArguments( uint8_t arguments )
{
    if( arguments )                                        // if atleast one argument, initiate the request
    {
        Wire.beginTransmission( I2Caddress ) ;
        Wire.write( eeAddress ) ;
        Wire.endTransmission() ;
        Wire.requestFrom( I2Caddress, arguments ) ;
        
        if( arguments > 0 ) { retVal[1] = Wire.read() ; eeAddress ++ ; } // always true...
        if( arguments > 1 ) { retVal[2] = Wire.read() ; eeAddress ++ ; }
        if( arguments > 2 ) { retVal[3] = Wire.read() ; eeAddress ++ ; }
    }
}

// STATE MACHINE FUNCTIONS
#define StateFunction(x) bool Player::x##F()
StateFunction(getEvent)
{
    Wire.beginTransmission( I2Caddress ) ;
    Wire.write( eeAddress++ ) ;
    Wire.endTransmission() ;
    
    Wire.requestFrom( I2Caddress, 1 ) ;
    nextEvent = Wire.read() ;                       // fetch next event
    uint8_t nArguments = 0 ;
    switch( nextEvent )
    {
    case timeExpireEvent:                                   // time + time + time
        fetchArguments(3) ;
        newTime = ( retVal[0]<<16 | retVal[1]<<8 | retVal[0] ) + millis() ;
        break ;

    case locoFunctionEvent:                                 // address + state|function
        fetchArguments(2) ;
        newLoco     = retVal[ 0 ] ;
        newFunction = retVal[ 1 ] & 0x7F ;
        newState    = retVal[ 1 ] >> 7 ;
        break ;
 
    case locoSpeedEvent:                                    // address + speed
        fetchArguments(2) ;
        newLoco     = retVal[ 0 ] ;
        newSpeed    = retVal[ 1 ] ; // N.B. SPEED AND DIRECTION STEPS NEED TO BE SOLVED
        //newDir      = 
        break ;

    case accessoryEvent:    
        fetchArguments(2) ;
        newAccessory = retVal[ 0 ] ;
        newState     = retVal[ 1 ] ;
        break ;
            // address + state
    case sensorEvent:       
        fetchArguments(1) ;
        newSensor = retVal[ 0 ] & 0x7F;
        newState  = retVal[ 1 ] >> 7 ;
        break ;
            // state|sensor
    case stopEvent:         
        fetchArguments(0) ;
         
        break ;
            // N/A
    }
    
    
    return true ;
}

StateFunction(waitTime)
{
    if( millis() >= newTime ) return true ;
    return false ;
}

StateFunction(waitSensor)
{
    if( sens[ /*newSensor*/1 ].state == newState ) return true ;
    return false ;
}

#define LOW(x)  ((x)&0xff)
#define HIGH(x) (((x)>>8)&0xff)

StateFunction(setAccessory)
{
    XpressNet.setTrntPos( HIGH(newAccessory) , 
                          LOW(newAccessory) , 
                          newState );
    return true ;
}

StateFunction(setLocoSpeed)
{
    XpressNet.setLocoDrive( HIGH( newLoco ) , 
                            LOW( newLoco) , 
                            28/*ovb*/ , 
                            newSpeed ) ;
    return true ;
}

StateFunction(setLocoFunction)
{
	XpressNet.setLocoFunc( HIGH (newLoco ) , 
                           LOW( newLoco ) , 
                           1/*what type goes here?*/ , 
                           newFunction ) ;
    return true ;
}

StateFunction(stopPlaying)
{
   if( allowed2run )                  // if no stop command is issued, run program again
   {
       eeAddress = 0 ;
       return true ;
   }
   else                               // if stop command is issued, return to idle and keep looping in this state until allowed2run is set again.
   {
        mode = idle ;  
        return false ;
   }
}

#undef StateFunction


// STATE MACHINE
#define State(x) break; case x: if(x##F())
bool Player::stateMachine()
{
    switch( state ) {

        State(waitTime) {
            state = getEvent ; }

        State(waitSensor) {
            state = getEvent ; }

    #define nextState(x) if( nextEvent == x ) state = x ;
        State(getEvent) {
            nextState( waitSensor ) ; 
            nextState( waitTime ) ; 
            nextState( setAccessory ) ;  
            nextState( setLocoSpeed ) ;  
            nextState( setLocoFunction ) ;
            nextState( stopPlaying ) ; }

        State(setAccessory) {
            state = getEvent ; }

        State(setLocoSpeed) {
            state = getEvent ; }

        State(setLocoFunction) {
            state = getEvent ; }

        State(stopPlaying) {
            state = getEvent ; }

        break ;
    }
}
#undef State



uint8_t Player::StartPlaying( )
{
    if( mode == idle )
    {
        eeAddress = 0 ;
        allowed2run = 1 ;
        mode = playing ;
        return 1 ;
    }
    return 0 ;
}

uint8_t Player::StopPlaying( )
{
    allowed2run = 0 ;
    return 1 ;
}