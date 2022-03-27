#include <Arduino.h>
#include "macros.h"

const int  GREEN = 1 ;
const int YELLOW = 2 ;
const int    RED = 3 ;

class Signal
{
public:
    Signal( uint8 _green, uint8 _yellow, uint8 _red ) ;
    void setSensor1( uint8 _state ) ;
    void setSensor2( uint8 _state ) ;
    void update() ;
    void begin() ;

private:
    uint8 greenPin ;
    uint8 yellowPin ;
    uint8 redPin ;

    uint8 state ;

    uint8 sensor1 ;
    uint8 sensor2 ;
} ;
