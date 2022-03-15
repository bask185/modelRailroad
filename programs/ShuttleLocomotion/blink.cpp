#include "blink.h"

enum blinkStates 
{
    on,
    off,
    blink,
    blinkFast,
} ;

Blink::Blink( uint8_t _greenLed, uint8_t _redLed )
{
    green.pin = _greenLed ;
    green.state = 0 ;
    green.blinkTime = 0 ;
    green.blinkCounter = 0 ;
    green.maxBlinkCounts = 0 ;

    red.pin = _redLed ;
    red.state = 0 ;
    red.blinkTime = 0 ;
    red.blinkCounter = 0 ;
    red.maxBlinkCounts = 0 ;
}

void Blink::flash( )
{

}

#define infinite = 0 ;
void Blink::error( uint8_t _error ) 
{
    switch( _error )
    {
    case program_is_recording :
        green.state = off ;
        red.state = blink ; // TO ADD, BLINK COUNTERS
        break ;

    case program_is_playing :
        green.state = blink ;
        red.state = off ;
        break ;

    case program_already_recording :
        green.state = off ;
        red.state = blink ;
        break ;

    case program_already_playing :
        green.state = blink ;
        break ;

    case program_is_idle :
        green.state = on ;
        red.state   = off ;
        break ;

    case new_event :

        break ;

    case program_stopped_recording :

        break ;

    case program_stopped_playing :

        break ;

    }
}
#undef infinite



