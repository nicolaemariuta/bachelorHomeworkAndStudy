	.module UART1_RxPoollingMode.c
	.area text(rom, con, rel)
	.dbfile D:\Temp\UART1_RxPoollingMode.c
	.dbfunc e port_init _port_init fV
	.even
_port_init::
	.dbline -1
	.dbline 9
; //ICC-AVR application builder : 11/14/2013 1:59:19 PM
; // Target : M128
; // Crystal: 11.059Mhz
; 
; #include <iom128v.h>
; #include <macros.h>
; 
; void port_init(void)
; {
	.dbline 10
;  PORTA = 0x00;
	clr R2
	out 0x1b,R2
	.dbline 11
;  DDRA  = 0x00;
	out 0x1a,R2
	.dbline 12
;  PORTB = 0x00;
	out 0x18,R2
	.dbline 13
;  DDRB  = 0x00;
	out 0x17,R2
	.dbline 14
;  PORTC = 0x00; //m103 output only
	out 0x15,R2
	.dbline 15
;  DDRC  = 0xFF;
	ldi R24,255
	out 0x14,R24
	.dbline 16
;  PORTD = 0x00;
	out 0x12,R2
	.dbline 17
;  DDRD  = 0x00;
	out 0x11,R2
	.dbline 18
;  PORTE = 0x00;
	out 0x3,R2
	.dbline 19
;  DDRE  = 0x00;
	out 0x2,R2
	.dbline 20
;  PORTF = 0x00;
	sts 98,R2
	.dbline 21
;  DDRF  = 0x00;
	sts 97,R2
	.dbline 22
;  PORTG = 0x00;
	sts 101,R2
	.dbline 23
;  DDRG  = 0x00;
	sts 100,R2
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e uart1_init _uart1_init fV
	.even
_uart1_init::
	.dbline -1
	.dbline 27
; }
; 
; void uart1_init(void)
; {
	.dbline 39
; // TEMA1 
; // Reconfigurati registrii de mai jos astfel incat comunicatie seriala 
; // unidirectionala (PC -> DevKit) sa functioneze corect
; // - BaudRate: 115200
; // - Dimensiune caracter: 8 bit
; // - Paritate: dezactivat
; // - NumarBiti de STOP = 1
; // - Control transfer date Hardware/Software(xOn/xOff) = None
; 
; 
; 
;  UCSR1B = 0x00; 
	clr R2
	sts 154,R2
	.dbline 40
;  UCSR1A = 0x00;
	sts 155,R2
	.dbline 41
;  UCSR1C = 0x06;
	ldi R24,6
	sts 157,R24
	.dbline 42
;  UBRR1L = 0x05;
	ldi R24,5
	sts 153,R24
	.dbline 43
;  UBRR1H = 0x00; 
	sts 152,R2
	.dbline 44
;  UCSR1B = 0x10;
	ldi R24,16
	sts 154,R24
	.dbline -2
L2:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e init_devices _init_devices fV
	.even
_init_devices::
	.dbline -1
	.dbline 50
; 
; }
; 
; 
; void init_devices(void)
; {
	.dbline 51
;   CLI(); 
	cli
	.dbline 52
;  XDIV  = 0x00; 
	clr R2
	out 0x3c,R2
	.dbline 53
;  XMCRA = 0x00; 
	sts 109,R2
	.dbline 54
;  port_init();
	xcall _port_init
	.dbline 55
;  uart1_init();
	xcall _uart1_init
	.dbline 57
; 
;  MCUCR = 0x00;
	clr R2
	out 0x35,R2
	.dbline 58
;  EICRA = 0x00; 
	sts 106,R2
	.dbline 59
;  EICRB = 0x00; 
	out 0x3a,R2
	.dbline 60
;  EIMSK = 0x00;
	out 0x39,R2
	.dbline 61
;  TIMSK = 0x00; 
	out 0x37,R2
	.dbline 62
;  ETIMSK = 0x00; 
	sts 125,R2
	.dbline 63
;  SEI(); 
	sei
	.dbline -2
L3:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e putchar _putchar fV
;              c -> R0
	.even
_putchar::
	.dbline -1
	.dbline 67
; }
; 
; void putchar(char c)
; {
	.dbline -2
L4:
	.dbline 0 ; func end
	ret
	.dbsym l c 0 c
	.dbend
	.dbfunc e getchar _getchar fc
	.even
_getchar::
	.dbline -1
	.dbline 73
; // LABORATORUL VIITOR
; }
; 		  
; 	
; unsigned char getchar(void)
; {
L6:
	.dbline 79
L7:
	.dbline 79
; // TEMA2 
; // - introduceti instructiunile necesare astfel incat:
; //   a) rutina (getchar) sa astepte (la infinit) sosirea unei noi date (char)
; //   b) sa returneze noua data (char) sosita 
; 
; while(!(UCSR1A & 0x80));
	lds R2,155
	sbrs R2,7
	rjmp L6
	.dbline 80
; 			  return UDR1;
	lds R16,156
	.dbline -2
L5:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
;            tmp -> R20
	.even
_main::
	.dbline -1
	.dbline 86
;     
; }
; 
; //
; void main(void)
; {
	.dbline 87
;  unsigned char tmp=0;
	clr R20
	.dbline 88
;  init_devices();
	xcall _init_devices
	xjmp L11
L10:
	.dbline 90
;  while(1)
;    {
	.dbline 91
; 	 tmp=getchar();
	xcall _getchar
	mov R20,R16
	.dbline 92
; 	 if(tmp=='1')
	cpi R16,49
	brne L13
	.dbline 93
; 	    tmp=0x01;
	ldi R20,1
L13:
	.dbline 94
; 	 if(tmp=='2')
	cpi R20,50
	brne L15
	.dbline 95
; 	    tmp=0x02;
	ldi R20,2
L15:
	.dbline 96
; 	 if(tmp=='3')
	cpi R20,51
	brne L17
	.dbline 97
; 	    tmp=0x04;
	ldi R20,4
L17:
	.dbline 98
; 	 if(tmp=='4')
	cpi R20,52
	brne L19
	.dbline 99
; 	    tmp=0x08;
	ldi R20,8
L19:
	.dbline 100
; 	 if(tmp=='5')
	cpi R20,53
	brne L21
	.dbline 101
; 	    tmp=0x10;
	ldi R20,16
L21:
	.dbline 102
; 	 if(tmp=='6')
	cpi R20,54
	brne L23
	.dbline 103
; 	    tmp=0x20;
	ldi R20,32
L23:
	.dbline 104
; 	if(tmp=='7')
	cpi R20,55
	brne L25
	.dbline 105
; 	    tmp=0x40;
	ldi R20,64
L25:
	.dbline 106
; 	if(tmp=='8')
	cpi R20,56
	brne L27
	.dbline 107
; 	    tmp=0x80;
	ldi R20,128
L27:
	.dbline 108
	out 0x15,R20
	.dbline 115
L11:
	.dbline 89
	xjmp L10
X0:
	.dbline -2
L9:
	.dbline 0 ; func end
	ret
	.dbsym r tmp 20 c
	.dbend
