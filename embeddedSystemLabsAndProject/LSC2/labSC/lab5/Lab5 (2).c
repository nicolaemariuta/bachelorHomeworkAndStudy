//ICC-AVR application builder : 11/5/2013 3:07:07 PM
// Target : M128
// Crystal: 11.059Mhz

#include <iom128v.h>
#include <macros.h>


#pragma interrupt_handler timer3_ovf_isr:30
void timer3_ovf_isr(void)
{
//=========================================================================
// TEMA2: Introduceti instructiunile necesare pentru:
// - aprinderea alternata a ledurilor
// - resetarea TCNT3L, TCNT3H (a.i. ledurile sa comute cu frecv. de 2Hz)  

//=========================================================================
if(PORTC == 0x0f)
{
PORTC = 0xF0;
}
else
{
PORTC = 0x0F;
}
TCNT3H = 0xD5; 
TCNT3L = 0xD9;
}

//call this routine to initialize all peripherals
void init_devices(void)
{
 //stop errant interrupts until set up
 CLI(); //disable all interrupts
 XDIV  = 0x00; //xtal divider
 XMCRA = 0x00; //external memory
 MCUCR = 0x00;
 EICRA = 0x00; //extended ext ints
 EICRB = 0x00; //extended ext ints
 EIMSK = 0x00;

 PORTC = 0x0F; // Setup PORTC
 DDRC  = 0xFF;

//=========================================================================
// TEMA1: Configurati registrii TIMER3 astfel incat:
// - prescaler: 1024
// - frecventa 2Hz
// - modul de lucru: in intrerupere

 TCCR3B = 0x00; //stop Timer // 1024
 TCNT3H = 0xd5; //setup
 TCNT3L = 0xd9;
 TCCR3A = 0x00;
 TCCR3B = 0x05; //start Timer
 TIMSK  = 0x04; //timer interrupt sources
 ETIMSK = 0x04; //extended timer interrupt sources

//=========================================================================

 SEI(); //re-enable interrupts
 //all peripherals are now initialized
}

//
void main(void)
{
 init_devices();
 //insert your functional code here...
}

