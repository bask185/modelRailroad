#include "Signal.h"

Signal::signal( uint8 _green, uint8 _yellow, uint8 _red )
{
    greenPin = _green ;
    yellowPin = _yellow ;
    redPin = _red
}

void Signal::setState( uint8 _state )
{
    #define setStates(x,y,z) greenState = x ; yellowState = y ; redState = z ;
    switch( _state )
    {
        case GREEN :   setStates( HIGH,  LOW,  LOW ) ; break ;
        case YELLOW :  setStates(  LOW, HIGH,  LOW ) ; break ; 
        case RED :     setStates(  LOW,  LOW, HIGH ) ; break ;
    }
    #undef setStates

    digitalWrite( greenPin,  greenState ) ;
    digitalWrite( yellowPin, yellowState) ;
    digitalWrite( redPin,    redState) ;
}
