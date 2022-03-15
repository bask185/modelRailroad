#include <Arduino.h>
#include "src/modules/XpressNet.h"

extern XpressNetClass XpressNet ;

const int XNetAddress = 29 ;

// SENSORS 
const int nSensors = 4 ;
typedef struct {
    uint8_t pin : 4;
    uint8_t state  : 1;
    uint8_t statePrev : 1 ;
    uint8_t *timer ;
} Sensors ;
extern Sensors sens[nSensors] ;

enum events 
{
    sensorEvent = 1,
    locoSpeedEvent,
    locoFunctionEvent,
    timeExpireEvent,
    accessoryEvent,
    logTime,
    stopEvent = 255,
} ;

enum modes
{
    playing ,
    recording ,
    idle ,
} ;