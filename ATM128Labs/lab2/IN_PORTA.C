//ICC-AVR application builder : 10/11/2013 12:04:52 PM
// Target : M128
// Crystal: 11.059Mhz

#include <iom128v.h>
#include <macros.h>

void port_init(void)
{
 PORTA = 0xFF; // Am activat rezistentele de Pull-Up
 DDRA  = 0x00; // PORTA - setat ca port de intrare
 PORTB = 0x00;
 DDRB  = 0x00;
 PORTC = 0x00; //m103 output only
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
 unsigned char GetPORTA;
 init_devices();
 //insert your functional code here...
 while(1)
 {
   GetPORTA=PINA;  // variabila de tip byte GetPORTA contine
                   // starea logica a portului A (8 biti) 
	out =0x00;
	out = (!(PINA&0x40))?out | 0b00000011 : out & 11111100;
	out = (!(PINA&0x08))?out | 0b00001100 : out & 11110011;
	out = (!(PINA&0x04))?out | 0b00110000 : out & 11001111;
	out = (!(PINA&0x01))?out | 0b11000000 : out & 00111111;
	PORTC = out;
 }
}

