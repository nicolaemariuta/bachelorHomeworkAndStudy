//ICC-AVR application builder : 10/11/2013 12:04:52 PM
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

void Dly(unsigned long d)
{
  while(d--);
}

void blink()
{int i=0;
 	
	for(;i<2;i++)
	{PORTC=0xFF;
	Dly(0x00013728ul);
	PORTC=0x00;
	Dly(0x00013728ul);}
}


void main(void)
{ 

/*
int i;
 init_devices();
 //insert your functional code here...
 while(1)
 {

 if(PORTC ==0x00)
  for(i=0; i<4; i++)
    {
   PORTC = (0x10<<i) | (0x08 >> i) |PORTC;
   Dly(0x00013728ul);
  }
  if(PORTC == 0xFF)
  {//PORTC =0x00;
  	
  }
  
  Dly(0x00013728ul);
}
*/

int flag = 0; 
init_devices(); 
PORTC = 0x01; 
while(1) { 
    if(flag==0){
	  PORTC = PORTC <<1; 
			if(PORTC == 0x80){flag=1;} 
	 }
	else{PORTC = PORTC >>1;
	if(PORTC == 0x01) { 
	flag=0; } 
	} 
	Dly(0x00000728ul); 
	}

}
