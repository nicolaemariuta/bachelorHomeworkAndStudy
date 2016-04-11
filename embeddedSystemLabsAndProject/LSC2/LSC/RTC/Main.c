#define _XTAL_FREQ   20000000  

#include <htc.h>
#include "I2C.h"
#include "LCD.h"
#include "DS1307.h"


// Configuration word for PIC16F877
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
		& LVP_OFF & CPD_OFF & WRT_ON & DEBUG_OFF);

// Main function
void main(void)
{
	InitLCD();	// Initialize LCD	
	Init_I2C();	// Initialize i2c pins											

	// Set initial time
	SetTime_RTC(PM, 1, 50, 59);	// Set time 08:32:59 PM

	// Set initial date
	SetDate_RTC(4, 5, 14, Saturday); 	// Set 15-12-2012 @ Saturday

	while(1)
	{
		// Display RTC time on first line of LCD
		DisplayTimeToLCD(GetTime_RTC());

		// Display RTC date on second line of LCD
		DisplayDateOnLCD(GetDate_RTC());

		__delay_ms(1000);	// 1 second delay
	}
}

