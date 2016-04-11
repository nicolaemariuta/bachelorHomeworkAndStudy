/*  Name     : main.c
 *  Purpose  : Main file for making stop watch with PIC16F877 using LCD display.
 *  Author   : M.Saeed Yasin
 *  Date     : 16-12-12
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
	unsigned char State = NORMAL_STATE;	// To store current state

	TRISD0 = 0;						// Make RD0 pin an output
	RD0	   = 0;						// Make RD0 zero
	TRISE  = 0x07;					// PORTE is used for inputs
	ADCON1 = 0x07;					// Disable ADC to make PORTE pins 
									// as digital IO pins
	
	InitLCD();						// Initialize LCD in 4bit mode
	Init1msecTimerInterrupt();		// Start 1 msec timer

	while(1)
	{
		if(State == NORMAL_STATE)
		{
			if(!RE0)				// If 'Set Time' button pressed
			{
				State = CONFIG_HR_STATE;	// Change state to Hr config

				while(!RE0)			// Wait for button to be released
					UpdateTimeCounters(State);// Keep updating time counters
			}

			if( secCounter == 0 && minCounter == 0 && hrCounter == 0 )
				RD0 = 1;	// Time up, turn LED on
			else
				RD0 = 0;	// Time remaining, keep LED off

		}
		else					// If state is not NORMAL_STATE
		{
			if(!RE1)			// If Up button pressed
			{
				while(!RE1)		// Wait for button to be released
					UpdateTimeCounters(State);// Keep updating time counters

				switch(State)	// Increment counter
				{
				case CONFIG_SEC_STATE:	if(secCounter==59)
											secCounter = 0;
										else
											secCounter++;
										break;
				case CONFIG_MIN_STATE:	if(minCounter==59)
											minCounter = 0;
										else
											minCounter++;
										break;
				case CONFIG_HR_STATE: 	if(hrCounter==23)
											hrCounter = 0;
										else
											hrCounter++;
										break;
				}
			}
			else if(!RE2)		// If Down button pressed
			{
				while(!RE2)		// Wait for button to be released
					UpdateTimeCounters(State);// Keep updating time counters

				switch(State)	// Decrement counter
				{
				case CONFIG_SEC_STATE:	if(secCounter==0)
											secCounter = 59;
										else
											secCounter--;
										break;
				case CONFIG_MIN_STATE:	if(minCounter==0)
											minCounter = 59;
										else
											minCounter--;
										break;
				case CONFIG_HR_STATE: 	if(hrCounter==0)
											hrCounter = 23;
										else
											hrCounter--;
										break;
				}
			}
			else if(!RE0)		// If 'Set Time' button pressed again
			{
				while(!RE0)		// Wait for button to be released
					UpdateTimeCounters(State);// Keep updating time counters

				switch(State)	// Shift to next state
				{
				case CONFIG_HR_STATE: 	State = CONFIG_MIN_STATE;	break;
				case CONFIG_MIN_STATE:	State = CONFIG_SEC_STATE;	break;
				case CONFIG_SEC_STATE:	State = NORMAL_STATE;		break;
				}
				
			}	
		}

		UpdateTimeCounters(State);       // Update sec, min, hours counters

		if( msCounter == 0 )    // msCounter becomes zero after exact one sec
		{
			// Display time in HH:MM:SS format
			DisplayTimeToLCD(hrCounter, minCounter, secCounter, NORMAL_STATE);   
		}
		else if( msCounter == 500 && State != NORMAL_STATE )    
		{
			// Display time with either HH or MM or SS missing
			// according to the State, to create an animated experience
			DisplayTimeToLCD(hrCounter, minCounter, secCounter, State);   
		}
  	}
}

