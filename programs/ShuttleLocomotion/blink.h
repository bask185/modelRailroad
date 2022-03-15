#include <Arduino.h>


enum blinkReasons
{
	program_is_recording ,
	program_is_playing ,
	program_already_recording ,
	program_already_playing ,
	program_is_idle ,
	new_event ,
	program_stopped_recording ,
	program_stopped_playing,
	shortcircuit,
} ;

typedef struct  
{
	uint8_t pin ;
	uint8_t state ;
	uint8_t blinkTime ;
	uint8_t blinkCounter ;
	uint8_t maxBlinkCounts ;
} Led ;
	


class Blink {

public:
	Blink( uint8_t, uint8_t ) ; // green led pin, red led pin

	void flash( ) ;
	void error( uint8_t ) ;

private:
	uint8_t blinkReason ;
	Led green ;
	Led red ;
} ;