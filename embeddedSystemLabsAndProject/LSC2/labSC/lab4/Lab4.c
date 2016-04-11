//ICC-AVR application builder : 11/4/2013 7:32:45 AM
// Target : M128
// Crystal: 11.059Mhz

#include <iom128v.h>
#include <macros.h>

void port_init(void)
{
 PORTA = 0x00;
 DDRA  = 0x00;
 PORTB = 0x00;
 DDRB  = 0x00;
 PORTC = 0x0F; //m103 output only
 DDRC  = 0xFF;
 PORTD = 0x00;
 DDRD  = 0x00;
 PORTE = 0x00;
 DDRE  = 0x00;
 PORTF = 0x00;
 DDRF  = 0x00;
 PORTG = 0x00;
 DDRG  = 0x00;
}


//call this routine to initialize all peripherals
void init_devices(void)
{
 //stop errant interrupts until set up
 CLI(); //disable all interrupts
 XDIV  = 0x00; //xtal divider
 XMCRA = 0x00; //external memory
 port_init();

 MCUCR = 0x00;
 EICRA = 0x00; //extended ext ints
 EICRB = 0x00; //extended ext ints
 EIMSK = 0x00;
 TIMSK = 0x00; //timer interrupt sources
 ETIMSK = 0x00; //extended timer interrupt sources
 SEI(); //re-enable interrupts
 //all peripherals are now initialized
}

//
void main(void)
{
 init_devices();
 //insert your functional code here...
 
 
 
 // 1) - Reprogramati registrii TIMER1 pentru:
 //   a) Frecventa: 2Hz
 //   b) Prescaler: 256
 //   c) Detectare overflow prin testarea ciclica a flag-lui TOV1 
 
 TCNT1H = 0xFF; 
 TCNT1L = 0xFF;
 TCCR1A = 0x00;
 TCCR1B = 0x04; 
 
 while(1)
 {
 // 2) - Completati codul cu instructiunile necesare pentru a obtine o comutare a ledurilor 
 //      de pe PORTC cu frecventa de 1Hz
 if(TIFR & 0x04)
{
  TIFR |= 0X04;
 if(PORTC == 0x0F) 		 
{PORTC = 0xF0;}
else PORTC = 0x0F;

TCNT1H = 0xA6;
TCNT1L = 0x27;	 
}


 }
}

