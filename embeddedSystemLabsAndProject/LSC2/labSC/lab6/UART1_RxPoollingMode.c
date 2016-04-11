//ICC-AVR application builder : 11/14/2013 1:59:19 PM
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

void uart1_init(void)
{
// TEMA1 
// Reconfigurati registrii de mai jos astfel incat comunicatie seriala 
// unidirectionala (PC -> DevKit) sa functioneze corect
// - BaudRate: 115200
// - Dimensiune caracter: 8 bit
// - Paritate: dezactivat
// - NumarBiti de STOP = 1
// - Control transfer date Hardware/Software(xOn/xOff) = None



 UCSR1B = 0x00; 
 UCSR1A = 0x00;
 UCSR1C = 0x06;
 UBRR1L = 0x05;
 UBRR1H = 0x00; 
 UCSR1B = 0x10;

}


void init_devices(void)
{
  CLI(); 
 XDIV  = 0x00; 
 XMCRA = 0x00; 
 port_init();
 uart1_init();

 MCUCR = 0x00;
 EICRA = 0x00; 
 EICRB = 0x00; 
 EIMSK = 0x00;
 TIMSK = 0x00; 
 ETIMSK = 0x00; 
 SEI(); 
}

void putchar(char c)
{
// LABORATORUL VIITOR
}
		  
	
unsigned char getchar(void)
{
// TEMA2 
// - introduceti instructiunile necesare astfel incat:
//   a) rutina (getchar) sa astepte (la infinit) sosirea unei noi date (char)
//   b) sa returneze noua data (char) sosita 

while(!(UCSR1A & 0x80));
			  return UDR1;
    
}

//
void main(void)
{
 unsigned char tmp=0;
 init_devices();
 while(1)
   {
	 tmp=getchar();
	 if(tmp=='1')
	    tmp=0x01;
	 if(tmp=='2')
	    tmp=0x02;
	 if(tmp=='3')
	    tmp=0x04;
	 if(tmp=='4')
	    tmp=0x08;
	 if(tmp=='5')
	    tmp=0x10;
	 if(tmp=='6')
	    tmp=0x20;
	if(tmp=='7')
	    tmp=0x40;
	if(tmp=='8')
	    tmp=0x80;
	 PORTC=tmp;
// TEMA 3
// - introduceti instructiunile necesare astfel incat:
// a)   daca caracterul sosit (pe interfata USART)/stocat in registrul tmp este in domeniul {'1','2'...'8'}
//      sa se realizeze o decodificare a acestuia caracter {'1'->0x01 '2'->0x02, .. '8'-> 0x08}
// b) - rezultatul/valoarea decodificarii sa se afiseze pe led-uri (PORTC)
// c) - caracterele care nu sunt in domeniul {'1','2'...'8'} sa fie transferate pe PORTC, si validate vizual ca valoare. 
   }
}

