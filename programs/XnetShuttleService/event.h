#include <Arduino.h>
#include "src/macros.h"

const int FAST = 125 ;
const int SLOW = 250 ;

enum events
{
    ready2receiveTrain = 1, // modes
    receivingTrain,
    sendingTrain,
    pausingTrain,
    teachin,
    waiting4address,


    teachingEnabled,        // events
    started,
    stopped,
    onOffPressed,
    onOffReleased,
    turnedOff,
    detector1Made,           
    detector2Made,  
    detectorReleased,         
    trainBraking,       
    trainArrived,
    trainDeparting,     
    trainNotDeparted, 
    trainDeparted,      
    slotAdded,
    slotNotFound, 
    slotLoaded,
    addressReceived,
} ;


extern void lightHandler() ;
extern void setLights( uint8 ) ;
extern void setMode( uint8 ) ;
extern uint8 mode ;
