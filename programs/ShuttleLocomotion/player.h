#include <Arduino.h>



class Player
{
public:
    Player(uint8_t) ;
    uint8_t StartPlaying( ) ;
    uint8_t StopPlaying( ) ;
    bool stateMachine( ) ;

private:
    bool getEventF() ;
    bool waitTimeF() ;
    bool waitSensorF() ;
    bool setAccessoryF() ;
    bool setLocoSpeedF() ;
    bool setLocoFunctionF() ; 
    bool stopPlayingF() ;
    void fetchArguments( uint8_t ) ;
    
    uint8_t I2Caddress ;
    uint8_t retVal[3] ;
    uint16_t eeAddress ;
    uint32_t lastTime ;
    uint32_t newTime ;
    uint8_t state ;
    uint8_t mode ;
    uint8_t nextEvent ;
    
    uint8_t newLoco ;
    uint8_t newFunction ;
    uint8_t newState ;
    uint8_t newSpeed ;
    uint8_t newAccessory ;
    uint8_t newSensor ;

    bool allowed2run ;
} ;