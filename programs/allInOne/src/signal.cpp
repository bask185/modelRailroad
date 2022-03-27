#include "signal.h"

Signal::Signal( uint8 _green, uint8 _yellow, uint8 _red )
{
    greenPin = _green ;
    yellowPin = _yellow ;
    redPin = _red ;
}

void Signal::begin()
{
    digitalWrite(  greenPin, OUTPUT ) ;
    digitalWrite( yellowPin, OUTPUT ) ;
    digitalWrite(    redPin, OUTPUT ) ;
}

void Signal::setSensor1( uint8 _state )
{
    sensor1 = _state ;
    update() ;
}

void Signal::setSensor2( uint8 _state )
{
    sensor2 = _state ;
    update() ;
}

void Signal::update()
{
    uint8 greenState, yellowState, redState ;

  #define setStates(x,y,z) greenState = x ; yellowState = y ; redState = z ;
    if( sensor1 == HIGH )     { setStates(  LOW,  LOW, HIGH ) ; }   // red
    else { 
        if( sensor2 == HIGH ) { setStates(  LOW, HIGH,  LOW ) ; }   // orange
        else                  { setStates( HIGH,  LOW,  LOW ) ; }   // green
    }
  #undef setStates

    digitalWrite( greenPin,  greenState ) ;
    digitalWrite( yellowPin, yellowState) ;
    digitalWrite( redPin,    redState) ;
}
