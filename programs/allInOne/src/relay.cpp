#include "relay.h"

Relay::Relay( uint8 _pin )
{
   pin = _pin ;
}

void Relay::begin()
{
	pinMode( pin, OUTPUT ) ;
}

void Relay::setState( uint8 _state )
{
    state = _state ;
}

void Relay::update()
{
    digitalWrite( pin, _state ) ;
}
