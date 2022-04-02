#include <Arduino.h>
#include "src/macros.h"

enum states
{
    awaitingTrain,          // green
    braking,                // green + red flash
    pausing,                // green flashing
    accelerating,           // green + yellow flash
    departure,
} ;

extern void initShuttleService() ;
extern uint8 shuttleService() ;