/*  Name     : main.c
 *  Purpose  : Main file for using ADC of PIC16F877.
 *  Author   : M.Saeed Yasin
 *  Date     : 17-12-12
 *  Website  : saeedsolutions.blogspot.com
 *  Revision : None
 */
#include "Includes.h"

// Configuration word for PIC16F877
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
		& LVP_OFF & CPD_OFF & WRT_ON & DEBUG_OFF);

// Main Function
void main(void)
{
	unsigned int ADC_value = 0;
	unsigned int digit1, digit2, digit3, digit4;

	InitADC();			// Initialize ADC
	InitLCD();			// Initialize LCD

	while(1)
	{
		ClearLCDScreen();					// Clear LCD screen
		ADC_value = GetADCValue(AN7);		// Read ADC value from RE2(AN7) pin

		// ADC_value can have a value from 0 (0v) to 1023(5v) only.
		// SO display 4 digits of ADC_value
		digit1 = (unsigned int)(ADC_value/1000);									 // Calculate digit1 of ADC_value
		digit2 = (unsigned int)((ADC_value - digit1*1000)/100);						 // Calculate digit2 of ADC_value
		digit3 = (unsigned int)((ADC_value - (digit1*1000+digit2*100))/10);			 // Calculate digit3 of ADC_value
		digit4 = (unsigned int)(ADC_value - (digit1*1000+digit2*100+digit3*10));	 // Calculate digit4 of ADC_value

		WriteDataToLCD(digit1+0x30);		// Display digit1 of ADC_value on LCD
		WriteDataToLCD(digit2+0x30);		// Display digit2 of ADC_value on LCD
		WriteDataToLCD(digit3+0x30);		// Display digit3 of ADC_value on LCD
		WriteDataToLCD(digit4+0x30);		// Display digit4 of ADC_value on LCD

		__delay_ms(500);					// Half second delay before next reading
	}
}

