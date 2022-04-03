#include "eeprom.h"
#include <EEPROM.h>

extern uint16 myAddress ;
extern uint32 servoPositions ;

const int servoPosAddress = 2 ; 
const int ADDRESS = 0 ; 

void getServoPos( uint16 *addresses )
{
	uint16 eeAddress = servoPosAddress ;

	for (int i = 0; i < 8; i++)
	{
		uint16 pos ;
		EEPROM.get( eeAddress, pos ) ;
		*addresses = pos ;

		eeAddress += 2 ;
		addresses ++ ;
	}
}

void storeServoPos( uint8 ID, uint8 state, uint16 pos )
{
	uint16 eeAddress = ID * 2 + state + servoPosAddress ;
	EEPROM.put( eeAddress, pos ) ;
}

uint16 loadMyAddress()
{
	EEPROM.get( ADDRESS, myAddress ) ;
	return myAddress ;
}

void storeMyAddress( uint16 myAddress )
{
	EEPROM.put( ADDRESS, myAddress ) ;
}