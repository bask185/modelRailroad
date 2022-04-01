#include <Arduino.h>
#include "macros.h"

class Relay
{

public:
    Relay( uint8 ) ;
    void begin() ;
    void setState( uint8 ) ;
    void update() ;

private:
    uint8 pin ;
} ;
