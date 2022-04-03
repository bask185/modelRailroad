#include <Arduino.h>
#include "src/macros.h"

extern void storeServoPos( uint8 ID, uint8 state, uint16 pos ) ;
extern void getServoPos();

extern uint16 loadMyAddress() ;
extern void storeMyAddress( uint16 myAddress ) ;

