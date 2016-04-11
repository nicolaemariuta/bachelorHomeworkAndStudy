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

//UART1 initialize
// desired baud rate:115200
// actual baud rate:115198 (0.0%)
// char size: 8 bit
// parity: Disabled
void uart1_init(void)
{
 UCSR1B = 0x00; //disable while setting baud rate
 UCSR1A = 0x00;
 UCSR1C = 0x06;
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
 TIMSK = 0x00; //timer interrupt sources
 ETIMSK = 0x00; //extended timer interrupt sources
 SEI(); //re-enable interrupts
 //all peripherals are now initialized
}

void putchar(char c)
{
// TEMA1 
// - introduceti instructiunile necesare transmiterii unui caracter (byte) prin metoda pooling! 
if(c=='\n')
  putchar('\r');
while(!(UCSR1A & 0x20));
     UDR1 = c;
	 
}
		  
	
unsigned char getchar(void)
{
   while ((UCSR1A & 0x80) == 0);
   return UDR1;
   
}


//
void main(void)
{
unsigned char b;
 unsigned int tmp,a,c;
 init_devices();
 //insert your functional code here...
 while(1)
 
 
 {  
	 
	

	 printf("\na:");
	 scanf("%d",&a);
	 printf("\na:%d",a);
	 
	 printf("\nop:");
	 scanf("%c",&b);
	 printf("\nop:%d",b);

	 printf("\nb:");
	 scanf("%d",&c);
	 printf("\nb:%d",c);
	 
	 if(b=='+')
			tmp = a+c;
	        //printf ("\n%d+%d=%d",a,c,tmp);
	if(b=='-')
			tmp = a-c;
	       // printf ("\n%d-%d=%d",a,c,tmp);
	if(b=='/')
			tmp =a/c;
	        //printf ("\n%d/%d=%d",a,c,tmp);
	if(b=='*')
			tmp = a*c;
	       // printf ("\n%d*%d=%d",a,c,tmp);		
	
		printf ("\na:%d \nb:%d \nRez:%d",a,c,tmp);
	
		
	 
 //TEMA2
 // implementai utilizang functiile printf & getchar o socotitoare care sa accepte operatiile de +-/*
 }
}

