#include "Includes.h"


// define digital clock variables
unsigned int msCounter  = 0;
unsigned int secCounter = 10;
unsigned int minCounter = 0;
unsigned int hrCounter  = 0;




void InitTimer0(void)
{
	// Timer0 is 8bit timer, select T0CS and PSA to be zero
	OPTION_REG &= 0xC1;     // Make Prescalar 1:4
	
	T0IE = 1;				// Enable Timer0 interrupt
	GIE = 1;				// Enable global interrupts
}


void Init1msecTimerInterrupt(void)
{
	InitTimer0();		// Intialize timer0 to genrate 1msec interrupts
}




void UpdateTimeCounters(unsigned char State)
{
	if(msCounter==1000)
	{
		msCounter=0;

		if(State == NORMAL_STATE)
		{
			if(secCounter==0)
			{
				if(minCounter==0)
				{
					if(hrCounter==0)
					{
						// Do nothing
					}
					else
					{
						hrCounter--;
						minCounter = 59;
						secCounter = 59;
					}
				}
				else
				{	
					minCounter--;
					secCounter = 59;
				}
			}
			else
				secCounter--;
		}
	}
}