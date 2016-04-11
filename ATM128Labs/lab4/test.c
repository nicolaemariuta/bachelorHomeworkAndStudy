/*
 * test.c
 *
 * Created: 11/11/2013 7:02:50 PM
 *  Author: Win32
 */ 

#include <avr/io.h>

int main(void)
{
		PORTC = 0x0F;
		DDRC= 0xFF;
		TCNT1H = 0xFF; 
		TCNT1L = 0xFE;
		TCCR1A = 0x00;
		TCCR1B = (1<<CS12); //prescaler  1024
		uint16_t count=0;
while(1)
	{
	// 2) - Completati codul cu instructiunile necesare pentru a obtine o comutare a ledurilor de pe PORTC cu frecventa de 1Hz
	
	if(TIFR & 0x04){
		count=0;
		TIFR |= 0X04;
			if(PORTC == 0x0F) {PORTC = 0xF0;}
			else PORTC = 0x0F;

		TCNT1H = 0xAb;   //0.5Hz
		TCNT1L = 0xA0;

		/*TCNT1H = 0xd5;
		TCNT1L = 0xD0;	 //1 hz
		*/
		/*TCNT1H = 0xEA;
		TCNT1L = 0xE8;*/ //2 hz
		}
count++;
	}
}