#include "shuttleService.h"
#include "src/stateMachineClass.h"
#include "event.h"
#include "points.h"
#include "src/io.h"

static StateMachine sm ;

extern uint16 currentAddress ;
extern uint8 sensor1state ;
extern uint8 sensor2state ;
extern uint8 onOffState ; 

uint8  speed ; 
uint8  direction;
uint8  firstSensor ;

uint16 breakingFactor ;
uint16 acceleratingFactor ;
uint16 maxSpeed ;
uint32 pauseTime ;

void initShuttleService()
{
    sm.setState( awaitingTrain ) ;
}

void getSettings()
{
    breakingFactor     = map( analogRead( brakePin ), 1023, 0, 20, 200 ) ;
    acceleratingFactor = map( analogRead( accelPin ), 1023, 0, 20, 200 ) ;
    maxSpeed           = map( analogRead( speedPin ), 1023, 0, 10, 126 ) ;        // obsolete, may be replaced by current speed?
    pauseTime          = map( analogRead( pausePin ), 1023, 0, 5000, 300000 ) ;   // 5 seconds to 5 minute pause time

    DebugPrint(F("breakingFactor")) ;
    DebugPrint(breakingFactor) ;
    DebugPrint(F("acceleratingFactor")) ;
    DebugPrint(acceleratingFactor) ;
    DebugPrint(F("maxSpeed")) ;
    DebugPrint(maxSpeed) ;
    DebugPrint(F("pauseTime")) ;
    DebugPrint(pauseTime) ;
}

#define entryState  if( sm.entryState() )
#define onState     if( sm.onState() )
#define exitState   if( sm.exitState() )

StateFunction( awaitingTrain )
{
    entryState
    {
        DebugPrint(F(" awaiting train ")) ;
        setMode( ready2receiveTrain ) ;
    }
    onState
    {       
        if( sensor1state == FALLING
        ||  sensor2state == FALLING  ) sm.exit() ;
    }
    exitState
    {
        if( sensor1state == FALLING ) firstSensor = 1 ;
        else                          firstSensor = 2 ;

        getSettings() ;
        return 1 ;
    }
    return 0 ;
}

StateFunction( braking )
{
    entryState
    {
        // speed = 100 ;                        // when train comes we start with it's actual current speed and not 'just' 100
        DebugPrint(F(" breaking... ")) ;
        DebugPrint( breakingFactor) ;

        setMode( receivingTrain ) ;
    }
    onState
    {
        if( sm.repeat( breakingFactor ) )
        {
            if( speed >= 0 )
            {
                speed -- ;
                if( speed == 1 ) speed -- ; // skip emergency stop
            }
            DebugPrint(F(" speed... ")) ;
            DebugPrint(speed) ;
            
        #ifndef DEBUG
            Xnet.setLocoDrive( loco128, speed | direction ) ;
        #endif
        }

        if( ( firstSensor == 1 && sensor2state == FALLING )
        ||  ( firstSensor == 2 && sensor1state == FALLING ) )       // if the other sensor is made, slow down faster!!!
        {
            breakingFactor /= 4 ;
            DebugPrint(F(" breaking faster ")) ;
        }

        if( speed == 0 ) sm.exit() ;
    }
    exitState
    {
        setPoints( 0 ) ;                                                        // set street back to main track

        return 1 ;
    }
    return 0 ;
}

StateFunction( pausing )
{
    entryState
    {
        setMode( pausingTrain ) ;
        DebugPrint(F(" pausing for ")) ; 
        DebugPrint( pauseTime / 1000  ) ; // in seconds
        direction ^= 0x80 ;
        sm.setTimeout( pauseTime ) ;
    }
    onState
    {
        if( sm.timeout() && onOffState == HIGH ) sm.exit() ;                       // if time has passed and train is allowed to depart
    }
    exitState
    {
        setPoints( 1 ) ;                                                        // set the street to the siding before accelerating

        return 1 ;
    }
    return 0 ;
}

StateFunction( accelerating )
{
    entryState
    {
        setMode( sendingTrain ) ;
        DebugPrint(F(" accelerating ")) ;
        speed = 1 ; // skip emergency stop
    }
    onState
    {
        if( sm.repeat( breakingFactor ) )
        {
            if( speed <= maxSpeed )
            {
                speed ++ ;
            }            
            DebugPrint(F(" speed... ")) ;
            DebugPrint(speed) ;
        #ifndef DEBUG
            Xnet.setLocoDrive( loco128, speed | direction ) ;
        #endif
        }
        
        if( speed == maxSpeed ) sm.exit() ;
    }
    exitState
    {
        DebugPrint(F(" train at full ")) ;
        return 1 ;
    }
    return 0 ;
}

// StateFunction( departure ) OBSOLETE, REPLACED BY TIME OF 5 SECONDS
// {
//     entryState
//     {
//         DebugPrint(F(" train departing.. ")) ;
//         sm.setTimeout( 20000 ) ;                                                // train must be free of the section within 20 seconds
//     }
//     onState
//     {
//         if( ( firstSensor == 1 && sensor1state == RISING ) 
//         ||  ( firstSensor == 2 && sensor2state == RISING ) ) sm.exit() ;

//         if( sm.timeout() )
//         {
//             // Xnet.setPower( /* kill power */ ) ;
//             setLights( trainNotDeparted ) ;
//         }
//     }
//     exitState
//     {
//         DebugPrint(F(" train departed ")) ;
//         return 1 ;
//     }
//     return 0 ;
// }

uint8_t shuttleService()
{
    STATE_MACHINE_BEGIN(sm)
    {
        State( awaitingTrain )  sm.nextState( braking,          0 ) ;               // wait for sensor to be tripped
        State( braking )        sm.nextState( pausing,       1000 ) ;               // start slowing down
        State( pausing )        sm.nextState( accelerating,  5000 ) ;               // toggle direction after 5s and wait before accelerating, also sets points before accelerating
        State( accelerating )   sm.nextState( awaitingTrain, 5000 ) ;               // accelerate train
        //State( departure)       sm.nextState( awaitingTrain,         0 ) ;               // wait for train to leave the sensor, 20 second timeout

    } STATE_MACHINE_END(sm)
}