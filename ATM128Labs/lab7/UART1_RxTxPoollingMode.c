//ICC-AVR application builder : 11/14/2013 1:59:19 PM
// Target : M128
// Crystal: 11.059Mhz

#include <iom128v.h>
#include <macros.h>

int contor = 0;

#pragma interrupt_handler timer3_ovf_isr:30
void timer3_ovf_isr(void)
{
	

	if(contor == 0)
		printf("\r");
	if(contor == 1)
		printf("\n");	
	if(contor == 2)
		printf("T");
	if(contor == 3)
		printf("I");
	if(contor == 4)
		printf("M");
	if(contor == 5)
		printf("E");
	if(contor == 6)
		printf("R");
	if(contor == 7)
		printf("1");

	if(contor == 7)
		contor = 0;

	contor++;

TCNT3H = 0xD5; 
TCNT3L = 0xD9;
}

void port_init(void)
{
 PORTA = 0x00;
 DDRA  = 0x00;
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

//UART1 initialize
// desired baud rate:115200
// actual baud rate:115198 (0.0%)
// char size: 8 bit
// parity: Disabled
void uart1_init(void)
{
 UCSR1B = 0x00; //disable while setting baud rate
 UCSR1A = 0x00;
 UCSR1C = 0x24;
 UBRR1L = 0x05; //set baud rate lo
 UBRR1H = 0x00; //set baud rate hi
 UCSR1B = 0x18;
}

//call this routine to initialize all peripherals
void init_devices(void)
{
 //stop errant interrupts until set up
 CLI(); //disable all interrupts
 XDIV  = 0x00; //xtal divider
 XMCRA = 0x00; //external memory
 port_init();
 uart1_init();

 MCUCR = 0x00;
 EICRA = 0x00; //extended ext ints
 EICRB = 0x00; //extended ext ints
 EIMSK = 0x00;
 
 
 //=========================================================================
// TEMA1: Configurati registrii TIMER3 astfel incat:
// - prescaler: 1024
// - frecventa 2Hz
// - modul de lucru: in intrerupere

 TCCR3B = 0x00; //stop Timer // 1024
 TCNT3H = 0xd5; //setup
 TCNT3L = 0xd9;
 TCCR3A = 0x00;
 TCCR3B = 0x04; //start Timer
 TIMSK  = 0x04; //timer interrupt sources
 ETIMSK = 0x04; //extended timer interrupt sources

//=========================================================================

 SEI(); //re-enable interrupts
 //all peripherals are now initialized
}

void putchar(char c)
{
 	 while((UCSR1A&0x20)==0);
	 UDR1=c;

// TEMA1 
// - introduceti instructiunile necesare transmiterii unui caracter (byte) prin metoda pooling! 
}
		  
	
unsigned char getchar(void)
{
   while ((UCSR1A & 0x80) == 0);
   return UDR1;
}

//
void main(void)
{

 init_devices();

 
 }
}

