//ICC-AVR application builder : 10/27/2013 7:58:53 AM
// Target : M128
// Crystal: 11.059Mhz

#include <iom128v.h>
#include <macros.h>

#define COUNTER2 0x00 

void port_init(void)
{
 PORTA = 0x00;
 DDRA  = 0x00;
 PORTB = 0x00;
 DDRB  = 0x00;
 PORTC = 0x00; //m103 output only
 DDRC  = 0xFF;
 PORTD = 0x80;
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
 
 // Initializarea registriilor aferenti modulului TIMER2 / COUNTER 2
 // - TEMA1 - 
 // Identificati si reprogramati registrii modulului COUNTER2 (vezi TIMER2.pdf)
 TCCR2 = 0x00; 
 TCNT2 = 0x00; 
 OCR2  = 0x00;
 TCCR2 = 0x00;
 
 //insert your functional code here...
 while(1)
 {
   // - TEMA2 - 
   // a) inlocuiti numele generic COUNTER2, cu numele reg. identificat in documentatie (vezi TIMER2.pdf)  
   // b) resetati la 0 registrul counter dupa depasirea valorii 0x15  
   PORTC=COUNTER2;
 }
}

