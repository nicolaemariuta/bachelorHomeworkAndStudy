#include "Includes.h"


// define digital clock variables
unsigned int msCounter  = 0;
unsigned int secCounter = 0;
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
	if (msCounter==1000)
	{
		if(State == NORMAL_STATE)
			secCounter++;
		msCounter=0;
	}

	if(secCounter==60)
	{
		if(State == NORMAL_STATE)
			minCounter++;
		secCounter=0;
	}

	if(minCounter==60)
	{
		if(State == NORMAL_STATE)
			hrCounter++;
		minCounter=0;
	}

	if(hrCounter==24)
	{
		hrCounter = 0;
	}
}