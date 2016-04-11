opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F877
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 4 "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_InitADC
	FNCALL	_main,_initLCD
	FNCALL	_main,_Init_I2C
	FNCALL	_main,_InitKeypad
	FNCALL	_main,_GetTime_RTC
	FNCALL	_main,___lbdiv
	FNCALL	_main,___lbmod
	FNCALL	_main,_clearScreen
	FNCALL	_main,_detectieIncendiu
	FNCALL	_main,_GetChar
	FNCALL	_main,_tastaApasata
	FNCALL	_main,_verificareOreSonerie
	FNCALL	_main,_afiareDefault
	FNCALL	_afiareDefault,_GetTime_RTC
	FNCALL	_afiareDefault,_DisplayTimeToLCD
	FNCALL	_afiareDefault,_GetDate_RTC
	FNCALL	_afiareDefault,_DisplayDateOnLCD
	FNCALL	_verificareOreSonerie,___wmul
	FNCALL	_verificareOreSonerie,___lbdiv
	FNCALL	_verificareOreSonerie,___lbmod
	FNCALL	_verificareOreSonerie,_test
	FNCALL	_verificareOreSonerie,_GetTime_RTC
	FNCALL	_detectieIncendiu,_GetADCValue
	FNCALL	_detectieIncendiu,___lwdiv
	FNCALL	_detectieIncendiu,___wmul
	FNCALL	_detectieIncendiu,_test
	FNCALL	_test,_clearScreen
	FNCALL	_test,_writeString
	FNCALL	_tastaApasata,_SetTime_RTC
	FNCALL	_tastaApasata,_SetDate_RTC
	FNCALL	_tastaApasata,_clearScreen
	FNCALL	_tastaApasata,_writeString
	FNCALL	_tastaApasata,_GetChar2
	FNCALL	_tastaApasata,_writeChar
	FNCALL	_tastaApasata,___wmul
	FNCALL	_tastaApasata,_disp_num
	FNCALL	_DisplayDateOnLCD,_writeCommand
	FNCALL	_DisplayDateOnLCD,___lbdiv
	FNCALL	_DisplayDateOnLCD,_writeChar
	FNCALL	_DisplayDateOnLCD,___lbmod
	FNCALL	_DisplayDateOnLCD,_writeString
	FNCALL	_DisplayTimeToLCD,_clearScreen
	FNCALL	_DisplayTimeToLCD,___lbdiv
	FNCALL	_DisplayTimeToLCD,_writeChar
	FNCALL	_DisplayTimeToLCD,___lbmod
	FNCALL	_DisplayTimeToLCD,_writeString
	FNCALL	_disp_num,___wmul
	FNCALL	_disp_num,_writeChar
	FNCALL	_disp_num,___awdiv
	FNCALL	_disp_num,___bmul
	FNCALL	_clearScreen,_writeCommand
	FNCALL	_writeString,_writeChar
	FNCALL	_initLCD,_pulseEpin
	FNCALL	_initLCD,_writeCommand
	FNCALL	_GetDate_RTC,_ReadBFrom_RTC
	FNCALL	_GetDate_RTC,___bmul
	FNCALL	_SetDate_RTC,___lbmod
	FNCALL	_SetDate_RTC,___lbdiv
	FNCALL	_SetDate_RTC,_WriteBTo_RTC
	FNCALL	_SetTime_RTC,___lbmod
	FNCALL	_SetTime_RTC,___lbdiv
	FNCALL	_SetTime_RTC,_WriteBTo_RTC
	FNCALL	_GetTime_RTC,_ReadBFrom_RTC
	FNCALL	_GetTime_RTC,___bmul
	FNCALL	_writeChar,_pulseEpin
	FNCALL	_writeCommand,_pulseEpin
	FNCALL	_GetChar2,_readSwitches
	FNCALL	_GetChar,_readSwitches
	FNCALL	_ReadBFrom_RTC,_Start_I2C
	FNCALL	_ReadBFrom_RTC,_Write_I2C
	FNCALL	_ReadBFrom_RTC,_Restart_I2C
	FNCALL	_ReadBFrom_RTC,_Read_I2C
	FNCALL	_ReadBFrom_RTC,_SendACK_I2C
	FNCALL	_ReadBFrom_RTC,_SendNACK_I2C
	FNCALL	_ReadBFrom_RTC,_Stop_I2C
	FNCALL	_WriteBTo_RTC,_Start_I2C
	FNCALL	_WriteBTo_RTC,_Write_I2C
	FNCALL	_WriteBTo_RTC,_Stop_I2C
	FNROOT	_main
	global	_apasat
	global	_intervalSonerie
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	line	34

;initializer for _apasat
	retlw	014h
	retlw	0

	line	23

;initializer for _intervalSonerie
	retlw	05h
	retlw	0

	global	_prevH1
	global	_prevM1
	global	_prevM2
	global	_prevS1
	global	_prevS2
	global	_Temp
	global	_oraNext
	global	_oraPrev
	global	_oreSonerie
	global	_RTCArray
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_SSPIF
_SSPIF	set	99
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_SSPADD
_SSPADD	set	147
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISE
_TRISE	set	137
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_ACKSTAT
_ACKSTAT	set	1166
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_SEN
_SEN	set	1160
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISD0
_TRISD0	set	1088
	global	_TRISD1
_TRISD1	set	1089
	global	_TRISD4
_TRISD4	set	1092
	global	_TRISD5
_TRISD5	set	1093
	global	_TRISD6
_TRISD6	set	1094
	global	_TRISD7
_TRISD7	set	1095
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_19:	
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	117	;'u'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_24:	
	retlw	87	;'W'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_13:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	115	;'s'
	retlw	0
psect	strings
	
STR_23:	
	retlw	87	;'W'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	112	;'p'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	0
psect	strings
	
STR_12:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_20:	
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	0
psect	strings
	
STR_17:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_15:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	0
psect	strings
	
STR_16:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	121	;'y'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_11:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	104	;'h'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_21:	
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_14:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	121	;'y'
	retlw	0
psect	strings
	
STR_22:	
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	0
psect	strings
	
STR_10:	
	retlw	63	;'?'
	retlw	63	;'?'
	retlw	63	;'?'
	retlw	0
psect	strings
	
STR_5:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_4:	
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_7:	
	retlw	70	;'F'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	0
psect	strings
	
STR_3:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_9:	
	retlw	83	;'S'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_8:	
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_6:	
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	85	;'U'
	retlw	0
psect	strings
	
STR_1:	
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	0
psect	strings
	
STR_2:	
	retlw	80	;'P'
	retlw	77	;'M'
	retlw	0
psect	strings
STR_25	equ	STR_23+0
STR_18	equ	STR_17+0
	file	"SchoolBell.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_prevH1:
       ds      2

_prevM1:
       ds      2

_prevM2:
       ds      2

_prevS1:
       ds      2

_prevS2:
       ds      2

_Temp:
       ds      1

_oraNext:
       ds      1

_oraPrev:
       ds      1

_RTCArray:
       ds      4

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	line	34
_apasat:
       ds      2

psect	dataBANK0
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	line	23
_intervalSonerie:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_oreSonerie:
       ds      80

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+011h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+050h)
	fcall	clear_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_InitADC
?_InitADC:	; 0 bytes @ 0x0
	global	??_InitADC
??_InitADC:	; 0 bytes @ 0x0
	global	?_Init_I2C
?_Init_I2C:	; 0 bytes @ 0x0
	global	??_Init_I2C
??_Init_I2C:	; 0 bytes @ 0x0
	global	?_detectieIncendiu
?_detectieIncendiu:	; 0 bytes @ 0x0
	global	?_tastaApasata
?_tastaApasata:	; 0 bytes @ 0x0
	global	?_verificareOreSonerie
?_verificareOreSonerie:	; 0 bytes @ 0x0
	global	?_afiareDefault
?_afiareDefault:	; 0 bytes @ 0x0
	global	?_Start_I2C
?_Start_I2C:	; 0 bytes @ 0x0
	global	??_Start_I2C
??_Start_I2C:	; 0 bytes @ 0x0
	global	?_Write_I2C
?_Write_I2C:	; 1 bit 
	global	??_Write_I2C
??_Write_I2C:	; 0 bytes @ 0x0
	global	?_Stop_I2C
?_Stop_I2C:	; 0 bytes @ 0x0
	global	??_Stop_I2C
??_Stop_I2C:	; 0 bytes @ 0x0
	global	?_Restart_I2C
?_Restart_I2C:	; 0 bytes @ 0x0
	global	??_Restart_I2C
??_Restart_I2C:	; 0 bytes @ 0x0
	global	??_Read_I2C
??_Read_I2C:	; 0 bytes @ 0x0
	global	?_SendNACK_I2C
?_SendNACK_I2C:	; 0 bytes @ 0x0
	global	??_SendNACK_I2C
??_SendNACK_I2C:	; 0 bytes @ 0x0
	global	?_SendACK_I2C
?_SendACK_I2C:	; 0 bytes @ 0x0
	global	??_SendACK_I2C
??_SendACK_I2C:	; 0 bytes @ 0x0
	global	?_InitKeypad
?_InitKeypad:	; 0 bytes @ 0x0
	global	??_InitKeypad
??_InitKeypad:	; 0 bytes @ 0x0
	global	??_readSwitches
??_readSwitches:	; 0 bytes @ 0x0
	global	?_pulseEpin
?_pulseEpin:	; 0 bytes @ 0x0
	global	??_pulseEpin
??_pulseEpin:	; 0 bytes @ 0x0
	global	?_writeCommand
?_writeCommand:	; 0 bytes @ 0x0
	global	?_writeChar
?_writeChar:	; 0 bytes @ 0x0
	global	?_initLCD
?_initLCD:	; 0 bytes @ 0x0
	global	?_writeString
?_writeString:	; 0 bytes @ 0x0
	global	?_clearScreen
?_clearScreen:	; 0 bytes @ 0x0
	global	?_DisplayTimeToLCD
?_DisplayTimeToLCD:	; 0 bytes @ 0x0
	global	?_DisplayDateOnLCD
?_DisplayDateOnLCD:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_test
?_test:	; 0 bytes @ 0x0
	global	?_GetTime_RTC
?_GetTime_RTC:	; 1 bytes @ 0x0
	global	?_GetDate_RTC
?_GetDate_RTC:	; 1 bytes @ 0x0
	global	?_Read_I2C
?_Read_I2C:	; 1 bytes @ 0x0
	global	?_readSwitches
?_readSwitches:	; 1 bytes @ 0x0
	global	?_GetChar
?_GetChar:	; 1 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x0
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	?_GetADCValue
?_GetADCValue:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	Write_I2C@Byte
Write_I2C@Byte:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	?_WriteBTo_RTC
?_WriteBTo_RTC:	; 0 bytes @ 0x1
	global	?_ReadBFrom_RTC
?_ReadBFrom_RTC:	; 0 bytes @ 0x1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	WriteBTo_RTC@pData
WriteBTo_RTC@pData:	; 1 bytes @ 0x1
	global	ReadBFrom_RTC@pData
ReadBFrom_RTC@pData:	; 1 bytes @ 0x1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x1
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x1
	ds	1
	global	??_GetADCValue
??_GetADCValue:	; 0 bytes @ 0x2
	global	??_writeCommand
??_writeCommand:	; 0 bytes @ 0x2
	global	??_writeChar
??_writeChar:	; 0 bytes @ 0x2
	global	writeCommand@Command
writeCommand@Command:	; 1 bytes @ 0x2
	global	writeChar@LCDChar
writeChar@LCDChar:	; 1 bytes @ 0x2
	global	WriteBTo_RTC@NOBytes
WriteBTo_RTC@NOBytes:	; 1 bytes @ 0x2
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x2
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	ReadBFrom_RTC@NOBytes
ReadBFrom_RTC@NOBytes:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_GetChar
??_GetChar:	; 0 bytes @ 0x3
	global	??_initLCD
??_initLCD:	; 0 bytes @ 0x3
	global	??_writeString
??_writeString:	; 0 bytes @ 0x3
	global	??_clearScreen
??_clearScreen:	; 0 bytes @ 0x3
	global	??_WriteBTo_RTC
??_WriteBTo_RTC:	; 0 bytes @ 0x3
	global	?_GetChar2
?_GetChar2:	; 2 bytes @ 0x3
	global	writeString@s
writeString@s:	; 1 bytes @ 0x3
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	global	GetChar@contor
GetChar@contor:	; 2 bytes @ 0x3
	ds	1
	global	??_ReadBFrom_RTC
??_ReadBFrom_RTC:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	GetADCValue@Channel
GetADCValue@Channel:	; 1 bytes @ 0x4
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??_GetChar2
??_GetChar2:	; 0 bytes @ 0x5
	global	??_DisplayTimeToLCD
??_DisplayTimeToLCD:	; 0 bytes @ 0x5
	global	??_DisplayDateOnLCD
??_DisplayDateOnLCD:	; 0 bytes @ 0x5
	global	??_test
??_test:	; 0 bytes @ 0x5
	global	GetChar@key
GetChar@key:	; 1 bytes @ 0x5
	global	GetChar2@key
GetChar2@key:	; 1 bytes @ 0x5
	global	DisplayTimeToLCD@pTimeArray
DisplayTimeToLCD@pTimeArray:	; 1 bytes @ 0x5
	global	DisplayDateOnLCD@pDateArray
DisplayDateOnLCD@pDateArray:	; 1 bytes @ 0x5
	global	WriteBTo_RTC@Address
WriteBTo_RTC@Address:	; 1 bytes @ 0x5
	global	ReadBFrom_RTC@Address
ReadBFrom_RTC@Address:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	test@count
test@count:	; 2 bytes @ 0x5
	ds	1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	WriteBTo_RTC@i
WriteBTo_RTC@i:	; 2 bytes @ 0x6
	global	ReadBFrom_RTC@i
ReadBFrom_RTC@i:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	test@count2
test@count2:	; 2 bytes @ 0x7
	ds	1
	global	??_GetTime_RTC
??_GetTime_RTC:	; 0 bytes @ 0x8
	global	?_SetTime_RTC
?_SetTime_RTC:	; 0 bytes @ 0x8
	global	?_SetDate_RTC
?_SetDate_RTC:	; 0 bytes @ 0x8
	global	?_disp_num
?_disp_num:	; 0 bytes @ 0x8
	global	??_GetDate_RTC
??_GetDate_RTC:	; 0 bytes @ 0x8
	global	SetTime_RTC@Hours
SetTime_RTC@Hours:	; 1 bytes @ 0x8
	global	SetDate_RTC@Month
SetDate_RTC@Month:	; 1 bytes @ 0x8
	global	disp_num@numb
disp_num@numb:	; 2 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	1
	global	??_afiareDefault
??_afiareDefault:	; 0 bytes @ 0x9
	global	test@message
test@message:	; 1 bytes @ 0x9
	global	SetTime_RTC@Minutes
SetTime_RTC@Minutes:	; 1 bytes @ 0x9
	global	SetDate_RTC@Year
SetDate_RTC@Year:	; 1 bytes @ 0x9
	global	afiareDefault@count
afiareDefault@count:	; 2 bytes @ 0x9
	ds	1
	global	??_verificareOreSonerie
??_verificareOreSonerie:	; 0 bytes @ 0xA
	global	??_disp_num
??_disp_num:	; 0 bytes @ 0xA
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xA
	global	SetTime_RTC@Seconds
SetTime_RTC@Seconds:	; 1 bytes @ 0xA
	global	SetDate_RTC@Day
SetDate_RTC@Day:	; 1 bytes @ 0xA
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xA
	ds	1
	global	??_SetTime_RTC
??_SetTime_RTC:	; 0 bytes @ 0xB
	global	??_SetDate_RTC
??_SetDate_RTC:	; 0 bytes @ 0xB
	global	disp_num@UnitDigit
disp_num@UnitDigit:	; 1 bytes @ 0xB
	global	afiareDefault@count2
afiareDefault@count2:	; 2 bytes @ 0xB
	ds	1
	global	disp_num@TenthDigit
disp_num@TenthDigit:	; 1 bytes @ 0xC
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xC
	ds	1
	global	SetTime_RTC@Mode
SetTime_RTC@Mode:	; 1 bytes @ 0xD
	global	SetDate_RTC@Date
SetDate_RTC@Date:	; 1 bytes @ 0xD
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_detectieIncendiu
??_detectieIncendiu:	; 0 bytes @ 0x0
	global	??_tastaApasata
??_tastaApasata:	; 0 bytes @ 0x0
	ds	2
	global	verificareOreSonerie@newH1
verificareOreSonerie@newH1:	; 2 bytes @ 0x2
	ds	1
	global	tastaApasata@count
tastaApasata@count:	; 2 bytes @ 0x3
	ds	1
	global	detectieIncendiu@count
detectieIncendiu@count:	; 2 bytes @ 0x4
	global	verificareOreSonerie@newM1
verificareOreSonerie@newM1:	; 2 bytes @ 0x4
	ds	1
	global	tastaApasata@count2
tastaApasata@count2:	; 2 bytes @ 0x5
	ds	1
	global	detectieIncendiu@count2
detectieIncendiu@count2:	; 2 bytes @ 0x6
	global	verificareOreSonerie@newM2
verificareOreSonerie@newM2:	; 2 bytes @ 0x6
	ds	1
	global	tastaApasata@count_2852
tastaApasata@count_2852:	; 2 bytes @ 0x7
	ds	1
	global	detectieIncendiu@temperatura
detectieIncendiu@temperatura:	; 2 bytes @ 0x8
	global	verificareOreSonerie@newS1
verificareOreSonerie@newS1:	; 2 bytes @ 0x8
	ds	1
	global	tastaApasata@count2_2853
tastaApasata@count2_2853:	; 2 bytes @ 0x9
	ds	1
	global	detectieIncendiu@fum
detectieIncendiu@fum:	; 2 bytes @ 0xA
	global	verificareOreSonerie@newS2
verificareOreSonerie@newS2:	; 2 bytes @ 0xA
	ds	1
	global	tastaApasata@year
tastaApasata@year:	; 2 bytes @ 0xB
	ds	1
	global	detectieIncendiu@digit4
detectieIncendiu@digit4:	; 2 bytes @ 0xC
	global	verificareOreSonerie@prevMinute
verificareOreSonerie@prevMinute:	; 2 bytes @ 0xC
	ds	1
	global	tastaApasata@ch1
tastaApasata@ch1:	; 2 bytes @ 0xD
	ds	1
	global	detectieIncendiu@ADC_value
detectieIncendiu@ADC_value:	; 2 bytes @ 0xE
	global	verificareOreSonerie@newMinute
verificareOreSonerie@newMinute:	; 2 bytes @ 0xE
	ds	1
	global	tastaApasata@ch2
tastaApasata@ch2:	; 2 bytes @ 0xF
	ds	1
	global	detectieIncendiu@ADC_value_2
detectieIncendiu@ADC_value_2:	; 2 bytes @ 0x10
	global	verificareOreSonerie@prevSecond
verificareOreSonerie@prevSecond:	; 2 bytes @ 0x10
	ds	1
	global	tastaApasata@m1
tastaApasata@m1:	; 2 bytes @ 0x11
	ds	1
	global	detectieIncendiu@digit3
detectieIncendiu@digit3:	; 2 bytes @ 0x12
	global	verificareOreSonerie@newSecond
verificareOreSonerie@newSecond:	; 2 bytes @ 0x12
	ds	1
	global	tastaApasata@m2
tastaApasata@m2:	; 2 bytes @ 0x13
	ds	1
	global	detectieIncendiu@digit2
detectieIncendiu@digit2:	; 2 bytes @ 0x14
	global	verificareOreSonerie@dif
verificareOreSonerie@dif:	; 2 bytes @ 0x14
	ds	1
	global	tastaApasata@s1
tastaApasata@s1:	; 2 bytes @ 0x15
	ds	1
	global	verificareOreSonerie@oraCurenta
verificareOreSonerie@oraCurenta:	; 1 bytes @ 0x16
	global	detectieIncendiu@digit1
detectieIncendiu@digit1:	; 2 bytes @ 0x16
	ds	1
	global	tastaApasata@s2
tastaApasata@s2:	; 2 bytes @ 0x17
	ds	2
	global	tastaApasata@ch1_2837
tastaApasata@ch1_2837:	; 2 bytes @ 0x19
	ds	2
	global	tastaApasata@ch2_2838
tastaApasata@ch2_2838:	; 2 bytes @ 0x1B
	ds	2
	global	tastaApasata@m1_2841
tastaApasata@m1_2841:	; 2 bytes @ 0x1D
	ds	2
	global	tastaApasata@m2_2842
tastaApasata@m2_2842:	; 2 bytes @ 0x1F
	ds	2
	global	tastaApasata@s1_2845
tastaApasata@s1_2845:	; 2 bytes @ 0x21
	ds	2
	global	tastaApasata@s2_2846
tastaApasata@s2_2846:	; 2 bytes @ 0x23
	ds	2
	global	tastaApasata@hour
tastaApasata@hour:	; 2 bytes @ 0x25
	ds	2
	global	tastaApasata@minute
tastaApasata@minute:	; 2 bytes @ 0x27
	ds	2
	global	tastaApasata@second
tastaApasata@second:	; 2 bytes @ 0x29
	ds	2
	global	tastaApasata@day
tastaApasata@day:	; 2 bytes @ 0x2B
	ds	2
	global	tastaApasata@month
tastaApasata@month:	; 2 bytes @ 0x2D
	ds	2
	global	tastaApasata@i
tastaApasata@i:	; 2 bytes @ 0x2F
	ds	2
	global	tastaApasata@k
tastaApasata@k:	; 2 bytes @ 0x31
	ds	2
	global	tastaApasata@tasta
tastaApasata@tasta:	; 1 bytes @ 0x33
	ds	1
	global	main@tasta
main@tasta:	; 1 bytes @ 0x34
	ds	1
;;Data sizes: Strings 179, constant 0, data 4, bss 97, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     53      74
;; BANK1           80      0      80
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_GetADCValue	unsigned int  size(1) Largest target is 0
;;
;; ?_GetDate_RTC	PTR unsigned char  size(1) Largest target is 4
;;		 -> RTCArray(BANK0[4]), 
;;
;; ?_GetTime_RTC	PTR unsigned char  size(1) Largest target is 4
;;		 -> RTCArray(BANK0[4]), 
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ReadBFrom_RTC@pData	PTR unsigned char  size(1) Largest target is 4
;;		 -> RTCArray(BANK0[4]), 
;;
;; WriteBTo_RTC@pData	PTR unsigned char  size(1) Largest target is 4
;;		 -> RTCArray(BANK0[4]), 
;;
;; sp__GetDate_RTC	PTR unsigned char  size(1) Largest target is 4
;;		 -> RTCArray(BANK0[4]), 
;;
;; verificareOreSonerie@oraCurenta	PTR unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), RTCArray(BANK0[4]), 
;;
;; test@message	PTR const unsigned char  size(1) Largest target is 19
;;		 -> STR_21(CODE[8]), STR_20(CODE[11]), STR_19(CODE[19]), 
;;
;; oraNext	PTR unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), RTCArray(BANK0[4]), 
;;
;; sp__GetTime_RTC	PTR unsigned char  size(1) Largest target is 4
;;		 -> RTCArray(BANK0[4]), 
;;
;; oraPrev	PTR unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), RTCArray(BANK0[4]), 
;;
;; DisplayDateOnLCD@pDateArray	PTR unsigned char  size(1) Largest target is 4
;;		 -> RTCArray(BANK0[4]), 
;;
;; DisplayTimeToLCD@pTimeArray	PTR unsigned char  size(1) Largest target is 4
;;		 -> RTCArray(BANK0[4]), 
;;
;; writeString@s	PTR const unsigned char  size(1) Largest target is 19
;;		 -> STR_25(CODE[12]), STR_24(CODE[15]), STR_23(CODE[12]), STR_22(CODE[7]), 
;;		 -> STR_21(CODE[8]), STR_20(CODE[11]), STR_19(CODE[19]), STR_18(CODE[10]), 
;;		 -> STR_17(CODE[10]), STR_16(CODE[9]), STR_15(CODE[10]), STR_14(CODE[8]), 
;;		 -> STR_13(CODE[12]), STR_12(CODE[11]), STR_11(CODE[9]), STR_10(CODE[4]), 
;;		 -> STR_9(CODE[4]), STR_8(CODE[4]), STR_7(CODE[4]), STR_6(CODE[4]), 
;;		 -> STR_5(CODE[4]), STR_4(CODE[4]), STR_3(CODE[4]), STR_2(CODE[3]), 
;;		 -> STR_1(CODE[3]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _afiareDefault->_GetTime_RTC
;;   _afiareDefault->_GetDate_RTC
;;   _verificareOreSonerie->_test
;;   _detectieIncendiu->___lwdiv
;;   _test->_clearScreen
;;   _tastaApasata->_SetTime_RTC
;;   _tastaApasata->_SetDate_RTC
;;   _DisplayDateOnLCD->___lbmod
;;   _DisplayTimeToLCD->_clearScreen
;;   _DisplayTimeToLCD->___lbmod
;;   _disp_num->___awdiv
;;   _clearScreen->_writeCommand
;;   _writeString->_writeChar
;;   _initLCD->_writeCommand
;;   _GetDate_RTC->_ReadBFrom_RTC
;;   _SetDate_RTC->_WriteBTo_RTC
;;   _SetTime_RTC->_WriteBTo_RTC
;;   _GetTime_RTC->_ReadBFrom_RTC
;;   _writeChar->_pulseEpin
;;   _writeCommand->_pulseEpin
;;   _GetChar2->_readSwitches
;;   _GetChar->_readSwitches
;;   _ReadBFrom_RTC->_Write_I2C
;;   _WriteBTo_RTC->_Write_I2C
;;   ___lwdiv->___wmul
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_tastaApasata
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0    8719
;;                                             52 BANK0      1     1      0
;;                            _InitADC
;;                            _initLCD
;;                           _Init_I2C
;;                         _InitKeypad
;;                        _GetTime_RTC
;;                            ___lbdiv
;;                            ___lbmod
;;                        _clearScreen
;;                   _detectieIncendiu
;;                            _GetChar
;;                       _tastaApasata
;;               _verificareOreSonerie
;;                      _afiareDefault
;; ---------------------------------------------------------------------------------
;; (1) _afiareDefault                                        4     4      0    1846
;;                                              9 COMMON     4     4      0
;;                        _GetTime_RTC
;;                   _DisplayTimeToLCD
;;                        _GetDate_RTC
;;                   _DisplayDateOnLCD
;; ---------------------------------------------------------------------------------
;; (1) _verificareOreSonerie                                27    27      0    1289
;;                                              0 BANK0     23    23      0
;;                             ___wmul
;;                            ___lbdiv
;;                            ___lbmod
;;                               _test
;;                        _GetTime_RTC
;; ---------------------------------------------------------------------------------
;; (1) _detectieIncendiu                                    24    24      0    1211
;;                                              0 BANK0     24    24      0
;;                        _GetADCValue
;;                            ___lwdiv
;;                             ___wmul
;;                               _test
;; ---------------------------------------------------------------------------------
;; (2) _test                                                 5     5      0     201
;;                                              5 COMMON     5     5      0
;;                        _clearScreen
;;                        _writeString
;; ---------------------------------------------------------------------------------
;; (1) _tastaApasata                                        52    52      0    3600
;;                                              0 BANK0     52    52      0
;;                        _SetTime_RTC
;;                        _SetDate_RTC
;;                        _clearScreen
;;                        _writeString
;;                           _GetChar2
;;                          _writeChar
;;                             ___wmul
;;                           _disp_num
;; ---------------------------------------------------------------------------------
;; (2) _DisplayDateOnLCD                                     1     1      0     652
;;                                              5 COMMON     1     1      0
;;                       _writeCommand
;;                            ___lbdiv
;;                          _writeChar
;;                            ___lbmod
;;                        _writeString
;; ---------------------------------------------------------------------------------
;; (2) _DisplayTimeToLCD                                     1     1      0     652
;;                                              5 COMMON     1     1      0
;;                        _clearScreen
;;                            ___lbdiv
;;                          _writeChar
;;                            ___lbmod
;;                        _writeString
;; ---------------------------------------------------------------------------------
;; (2) _disp_num                                             5     3      2     709
;;                                              8 COMMON     5     3      2
;;                             ___wmul
;;                          _writeChar
;;                            ___awdiv
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (3) _clearScreen                                          2     2      0      44
;;                                              3 COMMON     2     2      0
;;                       _writeCommand
;; ---------------------------------------------------------------------------------
;; (3) _writeString                                          1     1      0      89
;;                                              3 COMMON     1     1      0
;;                          _writeChar
;; ---------------------------------------------------------------------------------
;; (1) _initLCD                                              3     3      0      44
;;                                              3 COMMON     3     3      0
;;                          _pulseEpin
;;                       _writeCommand
;; ---------------------------------------------------------------------------------
;; (2) _GetDate_RTC                                          1     1      0     248
;;                                              8 COMMON     1     1      0
;;                      _ReadBFrom_RTC
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (2) _SetDate_RTC                                          6     3      3     631
;;                                              8 COMMON     6     3      3
;;                            ___lbmod
;;                            ___lbdiv
;;                       _WriteBTo_RTC
;; ---------------------------------------------------------------------------------
;; (2) _SetTime_RTC                                          6     3      3     609
;;                                              8 COMMON     6     3      3
;;                            ___lbmod
;;                            ___lbdiv
;;                       _WriteBTo_RTC
;; ---------------------------------------------------------------------------------
;; (2) _GetTime_RTC                                          1     1      0     248
;;                                              8 COMMON     1     1      0
;;                      _ReadBFrom_RTC
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (4) _writeChar                                            1     1      0      44
;;                                              2 COMMON     1     1      0
;;                          _pulseEpin
;; ---------------------------------------------------------------------------------
;; (3) _writeCommand                                         1     1      0      44
;;                                              2 COMMON     1     1      0
;;                          _pulseEpin
;; ---------------------------------------------------------------------------------
;; (2) _GetChar2                                             3     1      2     244
;;                                              3 COMMON     3     1      2
;;                       _readSwitches
;; ---------------------------------------------------------------------------------
;; (1) _GetChar                                              3     3      0      70
;;                                              3 COMMON     3     3      0
;;                       _readSwitches
;; ---------------------------------------------------------------------------------
;; (3) _ReadBFrom_RTC                                        7     4      3     156
;;                                              1 COMMON     7     4      3
;;                          _Start_I2C
;;                          _Write_I2C
;;                        _Restart_I2C
;;                           _Read_I2C
;;                        _SendACK_I2C
;;                       _SendNACK_I2C
;;                           _Stop_I2C
;; ---------------------------------------------------------------------------------
;; (3) _WriteBTo_RTC                                         7     5      2     134
;;                                              1 COMMON     7     5      2
;;                          _Start_I2C
;;                          _Write_I2C
;;                           _Stop_I2C
;; ---------------------------------------------------------------------------------
;; (2) _GetADCValue                                          5     3      2      22
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (5) _pulseEpin                                            2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _readSwitches                                         3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     300
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (3) ___lbmod                                              5     4      1     159
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lbdiv                                              4     3      1     162
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              6 COMMON     7     3      4
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               3     2      1      92
;;                                              0 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (4) _SendACK_I2C                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _SendNACK_I2C                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _Read_I2C                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _Restart_I2C                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _Stop_I2C                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _Write_I2C                                            1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _Start_I2C                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Init_I2C                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _InitADC                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _InitKeypad                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitADC
;;   _initLCD
;;     _pulseEpin
;;     _writeCommand
;;       _pulseEpin
;;   _Init_I2C
;;   _InitKeypad
;;   _GetTime_RTC
;;     _ReadBFrom_RTC
;;       _Start_I2C
;;       _Write_I2C
;;       _Restart_I2C
;;       _Read_I2C
;;       _SendACK_I2C
;;       _SendNACK_I2C
;;       _Stop_I2C
;;     ___bmul
;;   ___lbdiv
;;   ___lbmod
;;   _clearScreen
;;     _writeCommand
;;       _pulseEpin
;;   _detectieIncendiu
;;     _GetADCValue
;;     ___lwdiv
;;       ___wmul (ARG)
;;     ___wmul
;;     _test
;;       _clearScreen
;;         _writeCommand
;;           _pulseEpin
;;       _writeString
;;         _writeChar
;;           _pulseEpin
;;   _GetChar
;;     _readSwitches
;;   _tastaApasata
;;     _SetTime_RTC
;;       ___lbmod
;;       ___lbdiv
;;       _WriteBTo_RTC
;;         _Start_I2C
;;         _Write_I2C
;;         _Stop_I2C
;;     _SetDate_RTC
;;       ___lbmod
;;       ___lbdiv
;;       _WriteBTo_RTC
;;         _Start_I2C
;;         _Write_I2C
;;         _Stop_I2C
;;     _clearScreen
;;       _writeCommand
;;         _pulseEpin
;;     _writeString
;;       _writeChar
;;         _pulseEpin
;;     _GetChar2
;;       _readSwitches
;;     _writeChar
;;       _pulseEpin
;;     ___wmul
;;     _disp_num
;;       ___wmul
;;       _writeChar
;;         _pulseEpin
;;       ___awdiv
;;       ___bmul
;;   _verificareOreSonerie
;;     ___wmul
;;     ___lbdiv
;;     ___lbmod
;;     _test
;;       _clearScreen
;;         _writeCommand
;;           _pulseEpin
;;       _writeString
;;         _writeChar
;;           _pulseEpin
;;     _GetTime_RTC
;;       _ReadBFrom_RTC
;;         _Start_I2C
;;         _Write_I2C
;;         _Restart_I2C
;;         _Read_I2C
;;         _SendACK_I2C
;;         _SendNACK_I2C
;;         _Stop_I2C
;;       ___bmul
;;   _afiareDefault
;;     _GetTime_RTC
;;       _ReadBFrom_RTC
;;         _Start_I2C
;;         _Write_I2C
;;         _Restart_I2C
;;         _Read_I2C
;;         _SendACK_I2C
;;         _SendNACK_I2C
;;         _Stop_I2C
;;       ___bmul
;;     _DisplayTimeToLCD
;;       _clearScreen
;;         _writeCommand
;;           _pulseEpin
;;       ___lbdiv
;;       _writeChar
;;         _pulseEpin
;;       ___lbmod
;;       _writeString
;;         _writeChar
;;           _pulseEpin
;;     _GetDate_RTC
;;       _ReadBFrom_RTC
;;         _Start_I2C
;;         _Write_I2C
;;         _Restart_I2C
;;         _Read_I2C
;;         _SendACK_I2C
;;         _SendNACK_I2C
;;         _Stop_I2C
;;       ___bmul
;;     _DisplayDateOnLCD
;;       _writeCommand
;;         _pulseEpin
;;       ___lbdiv
;;       _writeChar
;;         _pulseEpin
;;       ___lbmod
;;       _writeString
;;         _writeChar
;;           _pulseEpin
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      50       7      100.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      AD      12        0.0%
;;ABS                  0      0      A8       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       5       2        0.0%
;;BANK0               50     35      4A       5       92.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 39 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tasta           1   52[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_InitADC
;;		_initLCD
;;		_Init_I2C
;;		_InitKeypad
;;		_GetTime_RTC
;;		___lbdiv
;;		___lbmod
;;		_clearScreen
;;		_detectieIncendiu
;;		_GetChar
;;		_tastaApasata
;;		_verificareOreSonerie
;;		_afiareDefault
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	line	39
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	40
	
l8745:	
	line	45
	
l8747:	
;Main.c: 45: InitADC();
	fcall	_InitADC
	line	46
	
l8749:	
;Main.c: 46: initLCD();
	fcall	_initLCD
	line	47
	
l8751:	
;Main.c: 47: Init_I2C();
	fcall	_Init_I2C
	line	48
	
l8753:	
;Main.c: 48: InitKeypad();
	fcall	_InitKeypad
	line	51
	
l8755:	
;Main.c: 51: oraPrev = GetTime_RTC();
	fcall	_GetTime_RTC
	movwf	(_oraPrev)
	line	52
	
l8757:	
;Main.c: 52: prevH1 = (oraPrev[2]/10);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_oraPrev),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	___lbdiv
	movwf	(_prevH1)
	clrf	(_prevH1+1)
	line	53
	
l8759:	
;Main.c: 53: prevH2 = (oraPrev[2]%10);
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(_oraPrev),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	___lbmod
	line	54
	
l8761:	
;Main.c: 54: prevM1 = (oraPrev[1]/10);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_oraPrev),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	___lbdiv
	movwf	(_prevM1)
	clrf	(_prevM1+1)
	line	55
	
l8763:	
;Main.c: 55: prevM2 = (oraPrev[1]%10);
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(_oraPrev),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	___lbmod
	movwf	(_prevM2)
	clrf	(_prevM2+1)
	line	56
	
l8765:	
;Main.c: 56: prevS1 = (oraPrev[0]/10);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_oraPrev),w
	movwf	fsr0
	movf	indf,w
	fcall	___lbdiv
	movwf	(_prevS1)
	clrf	(_prevS1+1)
	line	57
	
l8767:	
;Main.c: 57: prevS2 = (oraPrev[0]%10);
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(_oraPrev),w
	movwf	fsr0
	movf	indf,w
	fcall	___lbmod
	movwf	(_prevS2)
	clrf	(_prevS2+1)
	line	69
	
l8769:	
;Main.c: 69: clearScreen();
	fcall	_clearScreen
	line	75
	
l8771:	
;Main.c: 72: {
;Main.c: 75: detectieIncendiu();
	fcall	_detectieIncendiu
	line	78
	
l8773:	
;Main.c: 78: tasta = GetChar();
	fcall	_GetChar
	movwf	(main@tasta)
	line	79
;Main.c: 79: if(tasta != 'x')
	movf	(main@tasta),w
	xorlw	078h
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l8777
u2300:
	line	82
	
l8775:	
;Main.c: 80: {
;Main.c: 82: tastaApasata( tasta);
	movf	(main@tasta),w
	fcall	_tastaApasata
	line	88
	
l8777:	
;Main.c: 83: }
;Main.c: 88: oraNext = GetTime_RTC();
	fcall	_GetTime_RTC
	movwf	(_oraNext)
	line	89
	
l8779:	
;Main.c: 89: verificareOreSonerie(oraNext);
	movf	(_oraNext),w
	fcall	_verificareOreSonerie
	line	95
	
l8781:	
;Main.c: 95: afiareDefault();
	fcall	_afiareDefault
	goto	l8771
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	103
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_afiareDefault
psect	text857,local,class=CODE,delta=2
global __ptext857
__ptext857:

;; *************** function _afiareDefault *****************
;; Defined at:
;;		line 429 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count2          2   11[COMMON] unsigned int 
;;  count           2    9[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_GetTime_RTC
;;		_DisplayTimeToLCD
;;		_GetDate_RTC
;;		_DisplayDateOnLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text857
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	line	429
	global	__size_of_afiareDefault
	__size_of_afiareDefault	equ	__end_of_afiareDefault-_afiareDefault
	
_afiareDefault:	
	opt	stack 3
; Regs used in _afiareDefault: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	430
	
l8729:	
;Main.c: 430: if (apasat == 0)
	movf	((_apasat+1)),w
	iorwf	((_apasat)),w
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l8743
u2270:
	line	432
	
l8731:	
;Main.c: 431: {
;Main.c: 432: DisplayTimeToLCD(GetTime_RTC());
	fcall	_GetTime_RTC
	fcall	_DisplayTimeToLCD
	line	433
;Main.c: 433: DisplayDateOnLCD(GetDate_RTC());
	fcall	_GetDate_RTC
	fcall	_DisplayDateOnLCD
	line	434
	
l8733:	
;Main.c: 434: unsigned int count = 10000;
	movlw	low(02710h)
	movwf	(afiareDefault@count)
	movlw	high(02710h)
	movwf	((afiareDefault@count))+1
	line	435
;Main.c: 435: while(count--)
	goto	l8739
	line	437
	
l8735:	
;Main.c: 436: {
;Main.c: 437: unsigned int count2 = 10;
	movlw	0Ah
	movwf	(afiareDefault@count2)
	clrf	(afiareDefault@count2+1)
	line	438
;Main.c: 438: while(count2--);
	
l8737:	
	movlw	low(01h)
	subwf	(afiareDefault@count2),f
	movlw	high(01h)
	skipc
	decf	(afiareDefault@count2+1),f
	subwf	(afiareDefault@count2+1),f
	incf	((afiareDefault@count2)),w
	skipnz
	incf	((afiareDefault@count2+1)),w

	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l8737
u2280:
	line	435
	
l8739:	
	movlw	low(01h)
	subwf	(afiareDefault@count),f
	movlw	high(01h)
	skipc
	decf	(afiareDefault@count+1),f
	subwf	(afiareDefault@count+1),f
	incf	((afiareDefault@count)),w
	skipnz
	incf	((afiareDefault@count+1)),w

	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l8735
u2290:
	line	440
	
l8741:	
;Main.c: 439: }
;Main.c: 440: apasat = 20;
	movlw	014h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_apasat)
	clrf	(_apasat+1)
	line	443
	
l8743:	
;Main.c: 442: }
;Main.c: 443: apasat--;
	movlw	-1
	addwf	(_apasat),f
	skipc
	decf	(_apasat+1),f
	line	444
	
l2202:	
	return
	opt stack 0
GLOBAL	__end_of_afiareDefault
	__end_of_afiareDefault:
;; =============== function _afiareDefault ends ============

	signat	_afiareDefault,88
	global	_verificareOreSonerie
psect	text858,local,class=CODE,delta=2
global __ptext858
__ptext858:

;; *************** function _verificareOreSonerie *****************
;; Defined at:
;;		line 376 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
;; Parameters:    Size  Location     Type
;;  oraCurenta      1    wreg     PTR unsigned char 
;;		 -> NULL(0), RTCArray(4), 
;; Auto vars:     Size  Location     Type
;;  oraCurenta      1   22[BANK0 ] PTR unsigned char 
;;		 -> NULL(0), RTCArray(4), 
;;  dif             2   20[BANK0 ] int 
;;  newSecond       2   18[BANK0 ] int 
;;  prevSecond      2   16[BANK0 ] int 
;;  newMinute       2   14[BANK0 ] int 
;;  prevMinute      2   12[BANK0 ] int 
;;  newS2           2   10[BANK0 ] int 
;;  newS1           2    8[BANK0 ] int 
;;  newM2           2    6[BANK0 ] int 
;;  newM1           2    4[BANK0 ] int 
;;  newH1           2    2[BANK0 ] int 
;;  newH2           2    0        int 
;;  newHour         2    0        int 
;;  prevHour        2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      23       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      23       0       0       0
;;Total ram usage:       23 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___wmul
;;		___lbdiv
;;		___lbmod
;;		_test
;;		_GetTime_RTC
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text858
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	line	376
	global	__size_of_verificareOreSonerie
	__size_of_verificareOreSonerie	equ	__end_of_verificareOreSonerie-_verificareOreSonerie
	
_verificareOreSonerie:	
	opt	stack 3
; Regs used in _verificareOreSonerie: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;verificareOreSonerie@oraCurenta stored from wreg
	line	380
	movwf	(verificareOreSonerie@oraCurenta)
	
l8693:	
;Main.c: 380: int prevSecond = prevS1*10 + prevS2;
	movf	(_prevS1+1),w
	movwf	(?___wmul+1)
	movf	(_prevS1),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(verificareOreSonerie@prevSecond+1)
	movf	(0+(?___wmul)),w
	movwf	(verificareOreSonerie@prevSecond)
	
l8695:	
	movf	(_prevS2),w
	addwf	(verificareOreSonerie@prevSecond),f
	skipnc
	incf	(verificareOreSonerie@prevSecond+1),f
	movf	(_prevS2+1),w
	addwf	(verificareOreSonerie@prevSecond+1),f
	line	381
	
l8697:	
;Main.c: 381: int prevHour = prevH1*10 + prevH2;
	movf	(_prevH1+1),w
	movwf	(?___wmul+1)
	movf	(_prevH1),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	line	382
	
l8699:	
;Main.c: 382: int prevMinute = prevM1*10 + prevM2;
	movf	(_prevM1+1),w
	movwf	(?___wmul+1)
	movf	(_prevM1),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(verificareOreSonerie@prevMinute+1)
	movf	(0+(?___wmul)),w
	movwf	(verificareOreSonerie@prevMinute)
	
l8701:	
	movf	(_prevM2),w
	addwf	(verificareOreSonerie@prevMinute),f
	skipnc
	incf	(verificareOreSonerie@prevMinute+1),f
	movf	(_prevM2+1),w
	addwf	(verificareOreSonerie@prevMinute+1),f
	line	385
	
l8703:	
;Main.c: 385: int newH1 = (oraCurenta[2]/10);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(verificareOreSonerie@oraCurenta),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	___lbdiv
	movwf	(verificareOreSonerie@newH1)
	clrf	(verificareOreSonerie@newH1+1)
	line	386
	
l8705:	
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(verificareOreSonerie@oraCurenta),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	___lbmod
	line	387
;Main.c: 387: int newHour = newH1*10 + newH2;
	movf	(verificareOreSonerie@newH1+1),w
	movwf	(?___wmul+1)
	movf	(verificareOreSonerie@newH1),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	line	389
	
l8707:	
;Main.c: 389: int newM1 = (oraCurenta[1]/10);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(verificareOreSonerie@oraCurenta),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	___lbdiv
	movwf	(verificareOreSonerie@newM1)
	clrf	(verificareOreSonerie@newM1+1)
	line	390
	
l8709:	
;Main.c: 390: int newM2 = (oraCurenta[1]%10);
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(verificareOreSonerie@oraCurenta),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	___lbmod
	movwf	(verificareOreSonerie@newM2)
	clrf	(verificareOreSonerie@newM2+1)
	line	391
;Main.c: 391: int newMinute = newM1*10 + newM2;
	movf	(verificareOreSonerie@newM1+1),w
	movwf	(?___wmul+1)
	movf	(verificareOreSonerie@newM1),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(verificareOreSonerie@newMinute+1)
	movf	(0+(?___wmul)),w
	movwf	(verificareOreSonerie@newMinute)
	
l8711:	
	movf	(verificareOreSonerie@newM2),w
	addwf	(verificareOreSonerie@newMinute),f
	skipnc
	incf	(verificareOreSonerie@newMinute+1),f
	movf	(verificareOreSonerie@newM2+1),w
	addwf	(verificareOreSonerie@newMinute+1),f
	line	393
	
l8713:	
;Main.c: 393: int newS1 = (oraCurenta[0]/10);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(verificareOreSonerie@oraCurenta),w
	movwf	fsr0
	movf	indf,w
	fcall	___lbdiv
	movwf	(verificareOreSonerie@newS1)
	clrf	(verificareOreSonerie@newS1+1)
	line	394
	
l8715:	
;Main.c: 394: int newS2 = (oraCurenta[0]%10);
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(verificareOreSonerie@oraCurenta),w
	movwf	fsr0
	movf	indf,w
	fcall	___lbmod
	movwf	(verificareOreSonerie@newS2)
	clrf	(verificareOreSonerie@newS2+1)
	line	395
	
l8717:	
;Main.c: 395: int newSecond = newS1*10 + newS2;
	movf	(verificareOreSonerie@newS1+1),w
	movwf	(?___wmul+1)
	movf	(verificareOreSonerie@newS1),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(verificareOreSonerie@newSecond+1)
	movf	(0+(?___wmul)),w
	movwf	(verificareOreSonerie@newSecond)
	movf	(verificareOreSonerie@newS2),w
	addwf	(verificareOreSonerie@newSecond),f
	skipnc
	incf	(verificareOreSonerie@newSecond+1),f
	movf	(verificareOreSonerie@newS2+1),w
	addwf	(verificareOreSonerie@newSecond+1),f
	line	397
	
l8719:	
	line	399
	
l8721:	
;Main.c: 399: if(prevMinute!=newMinute)
	movf	(verificareOreSonerie@newMinute+1),w
	xorwf	(verificareOreSonerie@prevMinute+1),w
	skipz
	goto	u2255
	movf	(verificareOreSonerie@newMinute),w
	xorwf	(verificareOreSonerie@prevMinute),w
u2255:

	skipnz
	goto	u2251
	goto	u2250
u2251:
	goto	l8725
u2250:
	line	400
	
l8723:	
;Main.c: 400: dif = newSecond + (60 - prevSecond);
	movf	(verificareOreSonerie@newSecond+1),w
	movwf	(verificareOreSonerie@dif+1)
	movf	(verificareOreSonerie@newSecond),w
	movwf	(verificareOreSonerie@dif)
	movf	(verificareOreSonerie@prevSecond),w
	subwf	(verificareOreSonerie@dif),f
	movf	(verificareOreSonerie@prevSecond+1),w
	skipc
	decf	(verificareOreSonerie@dif+1),f
	subwf	(verificareOreSonerie@dif+1),f
	movlw	03Ch
	addwf	(verificareOreSonerie@dif),f
	skipnc
	incf	(verificareOreSonerie@dif+1),f
	goto	l2184
	line	401
	
l8725:	
;Main.c: 401: else dif = newSecond - prevSecond;
	movf	(verificareOreSonerie@newSecond+1),w
	movwf	(verificareOreSonerie@dif+1)
	movf	(verificareOreSonerie@newSecond),w
	movwf	(verificareOreSonerie@dif)
	movf	(verificareOreSonerie@prevSecond),w
	subwf	(verificareOreSonerie@dif),f
	movf	(verificareOreSonerie@prevSecond+1),w
	skipc
	decf	(verificareOreSonerie@dif+1),f
	subwf	(verificareOreSonerie@dif+1),f
	
l2184:	
	line	403
;Main.c: 403: if(dif >= intervalSonerie)
	movf	(_intervalSonerie+1),w
	subwf	(verificareOreSonerie@dif+1),w
	skipz
	goto	u2265
	movf	(_intervalSonerie),w
	subwf	(verificareOreSonerie@dif),w
u2265:
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l2186
u2260:
	line	404
	
l8727:	
;Main.c: 404: { test("sonerie");
	movlw	((STR_21-__stringbase))&0ffh
	fcall	_test
	line	406
;Main.c: 406: oraPrev = GetTime_RTC();
	fcall	_GetTime_RTC
	movwf	(_oraPrev)
	line	407
;Main.c: 407: prevH1 = (oraPrev[2]/10);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_oraPrev),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	___lbdiv
	movwf	(_prevH1)
	clrf	(_prevH1+1)
	line	408
;Main.c: 408: prevH2 = (oraPrev[2]%10);
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(_oraPrev),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	___lbmod
	line	409
;Main.c: 409: prevM1 = (oraPrev[1]/10);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_oraPrev),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	___lbdiv
	movwf	(_prevM1)
	clrf	(_prevM1+1)
	line	410
;Main.c: 410: prevM2 = (oraPrev[1]%10);
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(_oraPrev),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	___lbmod
	movwf	(_prevM2)
	clrf	(_prevM2+1)
	line	411
;Main.c: 411: prevS1 = (oraPrev[0]/10);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_oraPrev),w
	movwf	fsr0
	movf	indf,w
	fcall	___lbdiv
	movwf	(_prevS1)
	clrf	(_prevS1+1)
	line	412
;Main.c: 412: prevS2 = (oraPrev[0]%10);}
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(_oraPrev),w
	movwf	fsr0
	movf	indf,w
	fcall	___lbmod
	movwf	(_prevS2)
	clrf	(_prevS2+1)
	line	415
	
l2186:	
	return
	opt stack 0
GLOBAL	__end_of_verificareOreSonerie
	__end_of_verificareOreSonerie:
;; =============== function _verificareOreSonerie ends ============

	signat	_verificareOreSonerie,4216
	global	_detectieIncendiu
psect	text859,local,class=CODE,delta=2
global __ptext859
__ptext859:

;; *************** function _detectieIncendiu *****************
;; Defined at:
;;		line 309 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count2          2    6[BANK0 ] unsigned int 
;;  count           2    4[BANK0 ] unsigned int 
;;  digit1          2   22[BANK0 ] unsigned int 
;;  digit2          2   20[BANK0 ] unsigned int 
;;  digit3          2   18[BANK0 ] unsigned int 
;;  ADC_value_2     2   16[BANK0 ] unsigned int 
;;  ADC_value       2   14[BANK0 ] unsigned int 
;;  digit4          2   12[BANK0 ] unsigned int 
;;  fum             2   10[BANK0 ] unsigned int 
;;  temperatura     2    8[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      20       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      24       0       0       0
;;Total ram usage:       24 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_GetADCValue
;;		___lwdiv
;;		___wmul
;;		_test
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text859
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	line	309
	global	__size_of_detectieIncendiu
	__size_of_detectieIncendiu	equ	__end_of_detectieIncendiu-_detectieIncendiu
	
_detectieIncendiu:	
	opt	stack 3
; Regs used in _detectieIncendiu: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	310
	
l8623:	
	line	311
;Main.c: 311: unsigned int fum = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(detectieIncendiu@fum)
	clrf	(detectieIncendiu@fum+1)
	line	315
	
l8625:	
	movlw	(02h)
	fcall	_GetADCValue
	line	316
	
l8627:	
	movlw	(01h)
	fcall	_GetADCValue
	line	319
	
l8629:	
;Main.c: 319: unsigned int ADC_value = GetADCValue(2);
	movlw	(02h)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(detectieIncendiu@ADC_value+1)
	movf	(0+(?_GetADCValue)),w
	movwf	(detectieIncendiu@ADC_value)
	line	323
	
l8631:	
;Main.c: 323: digit1 = (unsigned int)(ADC_value/1000);
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(detectieIncendiu@ADC_value+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(detectieIncendiu@ADC_value),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit1+1)
	movf	(0+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit1)
	line	324
	
l8633:	
;Main.c: 324: digit2 = (unsigned int)((ADC_value - digit1*1000)/100);
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(detectieIncendiu@digit1+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit1),w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(detectieIncendiu@ADC_value),w
	addwf	(0+(?___wmul)),w
	movwf	0+(?___lwdiv)+02h
	movf	(detectieIncendiu@ADC_value+1),w
	skipnc
	incf	(detectieIncendiu@ADC_value+1),w
	addwf	(1+(?___wmul)),w
	movwf	1+0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit2+1)
	movf	(0+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit2)
	line	325
	
l8635:	
;Main.c: 325: digit3 = (unsigned int)((ADC_value - (digit1*1000+digit2*100))/10);
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(detectieIncendiu@digit1+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit1),w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+?___wmul),w
	movwf	(??_detectieIncendiu+0)+0
	movf	(1+?___wmul),w
	movwf	((??_detectieIncendiu+0)+0+1)
	movf	(detectieIncendiu@digit2+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit2),w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	0+(??_detectieIncendiu+0)+0,w
	movwf	(??_detectieIncendiu+2)+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_detectieIncendiu+0)+0,w
	movwf	1+(??_detectieIncendiu+2)+0
	movf	(detectieIncendiu@ADC_value),w
	addwf	0+(??_detectieIncendiu+2)+0,w
	movwf	0+(?___lwdiv)+02h
	movf	(detectieIncendiu@ADC_value+1),w
	skipnc
	incf	(detectieIncendiu@ADC_value+1),w
	addwf	1+(??_detectieIncendiu+2)+0,w
	movwf	1+0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit3+1)
	movf	(0+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit3)
	line	326
	
l8637:	
;Main.c: 326: digit4 = (unsigned int)(ADC_value - (digit1*1000+digit2*100+digit3*10));
	movf	(detectieIncendiu@digit3+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit3),w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(detectieIncendiu@digit4+1)
	movf	(0+(?___wmul)),w
	movwf	(detectieIncendiu@digit4)
	
l8639:	
	movf	(detectieIncendiu@digit2+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit2),w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(detectieIncendiu@digit4),f
	skipnc
	incf	(detectieIncendiu@digit4+1),f
	movf	(1+(?___wmul)),w
	addwf	(detectieIncendiu@digit4+1),f
	
l8641:	
	movf	(detectieIncendiu@digit1+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit1),w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(detectieIncendiu@digit4),f
	skipnc
	incf	(detectieIncendiu@digit4+1),f
	movf	(1+(?___wmul)),w
	addwf	(detectieIncendiu@digit4+1),f
	
l8643:	
	movf	(detectieIncendiu@ADC_value),w
	addwf	(detectieIncendiu@digit4),f
	skipnc
	incf	(detectieIncendiu@digit4+1),f
	movf	(detectieIncendiu@ADC_value+1),w
	addwf	(detectieIncendiu@digit4+1),f
	line	329
	
l8645:	
;Main.c: 329: temperatura = digit1*1000+digit2*100+digit3*10+digit4;
	movf	(detectieIncendiu@digit1+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit1),w
	movwf	(?___wmul)
	movlw	low(03E8h)
	movwf	0+(?___wmul)+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(detectieIncendiu@temperatura+1)
	movf	(0+(?___wmul)),w
	movwf	(detectieIncendiu@temperatura)
	
l8647:	
	movf	(detectieIncendiu@digit2+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit2),w
	movwf	(?___wmul)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(detectieIncendiu@temperatura),f
	skipnc
	incf	(detectieIncendiu@temperatura+1),f
	movf	(1+(?___wmul)),w
	addwf	(detectieIncendiu@temperatura+1),f
	
l8649:	
	movf	(detectieIncendiu@digit3+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit3),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(detectieIncendiu@temperatura),f
	skipnc
	incf	(detectieIncendiu@temperatura+1),f
	movf	(1+(?___wmul)),w
	addwf	(detectieIncendiu@temperatura+1),f
	
l8651:	
	movf	(detectieIncendiu@digit4),w
	addwf	(detectieIncendiu@temperatura),f
	skipnc
	incf	(detectieIncendiu@temperatura+1),f
	movf	(detectieIncendiu@digit4+1),w
	addwf	(detectieIncendiu@temperatura+1),f
	line	332
	
l8653:	
;Main.c: 332: if(temperatura > tempAlarma)
	movlw	high(065h)
	subwf	(detectieIncendiu@temperatura+1),w
	movlw	low(065h)
	skipnz
	subwf	(detectieIncendiu@temperatura),w
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l8657
u2210:
	line	334
	
l8655:	
;Main.c: 333: {
;Main.c: 334: test("arde uite cum arde");
	movlw	((STR_19-__stringbase))&0ffh
	fcall	_test
	line	344
	
l8657:	
;Main.c: 339: }
;Main.c: 344: unsigned int ADC_value_2 = GetADCValue(1);
	movlw	(01h)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(detectieIncendiu@ADC_value_2+1)
	movf	(0+(?_GetADCValue)),w
	movwf	(detectieIncendiu@ADC_value_2)
	line	348
	
l8659:	
;Main.c: 348: digit1 = (unsigned int)(ADC_value_2/1000);
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(detectieIncendiu@ADC_value_2+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(detectieIncendiu@ADC_value_2),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit1+1)
	movf	(0+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit1)
	line	349
	
l8661:	
;Main.c: 349: digit2 = (unsigned int)((ADC_value_2 - digit1*1000)/100);
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(detectieIncendiu@digit1+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit1),w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(detectieIncendiu@ADC_value_2),w
	addwf	(0+(?___wmul)),w
	movwf	0+(?___lwdiv)+02h
	movf	(detectieIncendiu@ADC_value_2+1),w
	skipnc
	incf	(detectieIncendiu@ADC_value_2+1),w
	addwf	(1+(?___wmul)),w
	movwf	1+0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit2+1)
	movf	(0+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit2)
	line	350
	
l8663:	
;Main.c: 350: digit3 = (unsigned int)((ADC_value_2 - (digit1*1000+digit2*100))/10);
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(detectieIncendiu@digit1+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit1),w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+?___wmul),w
	movwf	(??_detectieIncendiu+0)+0
	movf	(1+?___wmul),w
	movwf	((??_detectieIncendiu+0)+0+1)
	movf	(detectieIncendiu@digit2+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit2),w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	0+(??_detectieIncendiu+0)+0,w
	movwf	(??_detectieIncendiu+2)+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_detectieIncendiu+0)+0,w
	movwf	1+(??_detectieIncendiu+2)+0
	movf	(detectieIncendiu@ADC_value_2),w
	addwf	0+(??_detectieIncendiu+2)+0,w
	movwf	0+(?___lwdiv)+02h
	movf	(detectieIncendiu@ADC_value_2+1),w
	skipnc
	incf	(detectieIncendiu@ADC_value_2+1),w
	addwf	1+(??_detectieIncendiu+2)+0,w
	movwf	1+0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit3+1)
	movf	(0+(?___lwdiv)),w
	movwf	(detectieIncendiu@digit3)
	line	351
	
l8665:	
;Main.c: 351: digit4 = (unsigned int)(ADC_value_2 - (digit1*1000+digit2*100+digit3*10));
	movf	(detectieIncendiu@digit3+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit3),w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(detectieIncendiu@digit4+1)
	movf	(0+(?___wmul)),w
	movwf	(detectieIncendiu@digit4)
	
l8667:	
	movf	(detectieIncendiu@digit2+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit2),w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(detectieIncendiu@digit4),f
	skipnc
	incf	(detectieIncendiu@digit4+1),f
	movf	(1+(?___wmul)),w
	addwf	(detectieIncendiu@digit4+1),f
	
l8669:	
	movf	(detectieIncendiu@digit1+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit1),w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(detectieIncendiu@digit4),f
	skipnc
	incf	(detectieIncendiu@digit4+1),f
	movf	(1+(?___wmul)),w
	addwf	(detectieIncendiu@digit4+1),f
	
l8671:	
	movf	(detectieIncendiu@ADC_value_2),w
	addwf	(detectieIncendiu@digit4),f
	skipnc
	incf	(detectieIncendiu@digit4+1),f
	movf	(detectieIncendiu@ADC_value_2+1),w
	addwf	(detectieIncendiu@digit4+1),f
	line	354
	
l8673:	
;Main.c: 354: fum = digit1*1000+digit2*100+digit3*10+digit4;
	movf	(detectieIncendiu@digit1+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit1),w
	movwf	(?___wmul)
	movlw	low(03E8h)
	movwf	0+(?___wmul)+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(detectieIncendiu@fum+1)
	movf	(0+(?___wmul)),w
	movwf	(detectieIncendiu@fum)
	
l8675:	
	movf	(detectieIncendiu@digit2+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit2),w
	movwf	(?___wmul)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(detectieIncendiu@fum),f
	skipnc
	incf	(detectieIncendiu@fum+1),f
	movf	(1+(?___wmul)),w
	addwf	(detectieIncendiu@fum+1),f
	
l8677:	
	movf	(detectieIncendiu@digit3+1),w
	movwf	(?___wmul+1)
	movf	(detectieIncendiu@digit3),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(detectieIncendiu@fum),f
	skipnc
	incf	(detectieIncendiu@fum+1),f
	movf	(1+(?___wmul)),w
	addwf	(detectieIncendiu@fum+1),f
	
l8679:	
	movf	(detectieIncendiu@digit4),w
	addwf	(detectieIncendiu@fum),f
	skipnc
	incf	(detectieIncendiu@fum+1),f
	movf	(detectieIncendiu@digit4+1),w
	addwf	(detectieIncendiu@fum+1),f
	line	357
	
l8681:	
;Main.c: 357: if(fum > fumAlarma)
	movlw	high(065h)
	subwf	(detectieIncendiu@fum+1),w
	movlw	low(065h)
	skipnz
	subwf	(detectieIncendiu@fum),w
	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l2180
u2220:
	line	359
	
l8683:	
;Main.c: 358: {
;Main.c: 359: test("alarma fum");
	movlw	((STR_20-__stringbase))&0ffh
	fcall	_test
	line	365
	
l8685:	
;Main.c: 365: unsigned int count = 10000;
	movlw	low(02710h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(detectieIncendiu@count)
	movlw	high(02710h)
	movwf	((detectieIncendiu@count))+1
	line	366
;Main.c: 366: while(count--)
	goto	l8691
	line	368
	
l8687:	
;Main.c: 367: {
;Main.c: 368: unsigned int count2 = 100;
	movlw	064h
	movwf	(detectieIncendiu@count2)
	clrf	(detectieIncendiu@count2+1)
	line	369
;Main.c: 369: while(count2--);
	
l8689:	
	movlw	low(01h)
	subwf	(detectieIncendiu@count2),f
	movlw	high(01h)
	skipc
	decf	(detectieIncendiu@count2+1),f
	subwf	(detectieIncendiu@count2+1),f
	incf	((detectieIncendiu@count2)),w
	skipnz
	incf	((detectieIncendiu@count2+1)),w

	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l8689
u2230:
	line	366
	
l8691:	
	movlw	low(01h)
	subwf	(detectieIncendiu@count),f
	movlw	high(01h)
	skipc
	decf	(detectieIncendiu@count+1),f
	subwf	(detectieIncendiu@count+1),f
	incf	((detectieIncendiu@count)),w
	skipnz
	incf	((detectieIncendiu@count+1)),w

	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l8687
u2240:
	line	372
	
l2180:	
	return
	opt stack 0
GLOBAL	__end_of_detectieIncendiu
	__end_of_detectieIncendiu:
;; =============== function _detectieIncendiu ends ============

	signat	_detectieIncendiu,88
	global	_test
psect	text860,local,class=CODE,delta=2
global __ptext860
__ptext860:

;; *************** function _test *****************
;; Defined at:
;;		line 108 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
;; Parameters:    Size  Location     Type
;;  message         1    wreg     PTR const unsigned char 
;;		 -> STR_21(8), STR_20(11), STR_19(19), 
;; Auto vars:     Size  Location     Type
;;  message         1    9[COMMON] PTR const unsigned char 
;;		 -> STR_21(8), STR_20(11), STR_19(19), 
;;  count2          2    7[COMMON] unsigned int 
;;  count           2    5[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_clearScreen
;;		_writeString
;; This function is called by:
;;		_detectieIncendiu
;;		_verificareOreSonerie
;; This function uses a non-reentrant model
;;
psect	text860
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	line	108
	global	__size_of_test
	__size_of_test	equ	__end_of_test-_test
	
_test:	
	opt	stack 3
; Regs used in _test: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;test@message stored from wreg
	movwf	(test@message)
	line	109
	
l8609:	
;Main.c: 109: apasat = 20;
	movlw	014h
	movwf	(_apasat)
	clrf	(_apasat+1)
	line	110
	
l8611:	
;Main.c: 110: clearScreen();
	fcall	_clearScreen
	line	111
	
l8613:	
;Main.c: 111: writeString(message);
	movf	(test@message),w
	fcall	_writeString
	line	113
	
l8615:	
;Main.c: 113: unsigned int count = 10000;
	movlw	low(02710h)
	movwf	(test@count)
	movlw	high(02710h)
	movwf	((test@count))+1
	line	114
;Main.c: 114: while(count--)
	goto	l8621
	line	116
	
l8617:	
;Main.c: 115: {
;Main.c: 116: unsigned int count2 = 100;
	movlw	064h
	movwf	(test@count2)
	clrf	(test@count2+1)
	line	117
;Main.c: 117: while(count2--);
	
l8619:	
	movlw	low(01h)
	subwf	(test@count2),f
	movlw	high(01h)
	skipc
	decf	(test@count2+1),f
	subwf	(test@count2+1),f
	incf	((test@count2)),w
	skipnz
	incf	((test@count2+1)),w

	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l8619
u2190:
	line	114
	
l8621:	
	movlw	low(01h)
	subwf	(test@count),f
	movlw	high(01h)
	skipc
	decf	(test@count+1),f
	subwf	(test@count+1),f
	incf	((test@count)),w
	skipnz
	incf	((test@count+1)),w

	skipz
	goto	u2201
	goto	u2200
u2201:
	goto	l8617
u2200:
	line	119
	
l2141:	
	return
	opt stack 0
GLOBAL	__end_of_test
	__end_of_test:
;; =============== function _test ends ============

	signat	_test,4216
	global	_tastaApasata
psect	text861,local,class=CODE,delta=2
global __ptext861
__ptext861:

;; *************** function _tastaApasata *****************
;; Defined at:
;;		line 123 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
;; Parameters:    Size  Location     Type
;;  tasta           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  tasta           1   51[BANK0 ] unsigned char 
;;  k               2   49[BANK0 ] int 
;;  count2          2    9[BANK0 ] unsigned int 
;;  count2          2    5[BANK0 ] unsigned int 
;;  i               2   47[BANK0 ] int 
;;  count           2    7[BANK0 ] unsigned int 
;;  count           2    3[BANK0 ] unsigned int 
;;  month           2   45[BANK0 ] int 
;;  day             2   43[BANK0 ] int 
;;  s2              2   35[BANK0 ] int 
;;  s1              2   33[BANK0 ] int 
;;  m2              2   31[BANK0 ] int 
;;  m1              2   29[BANK0 ] int 
;;  ch2             2   27[BANK0 ] int 
;;  ch1             2   25[BANK0 ] int 
;;  year            2   11[BANK0 ] int 
;;  second          2   41[BANK0 ] int 
;;  minute          2   39[BANK0 ] int 
;;  hour            2   37[BANK0 ] int 
;;  s2              2   23[BANK0 ] int 
;;  s1              2   21[BANK0 ] int 
;;  m2              2   19[BANK0 ] int 
;;  m1              2   17[BANK0 ] int 
;;  ch2             2   15[BANK0 ] int 
;;  ch1             2   13[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      49       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      52       0       0       0
;;Total ram usage:       52 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SetTime_RTC
;;		_SetDate_RTC
;;		_clearScreen
;;		_writeString
;;		_GetChar2
;;		_writeChar
;;		___wmul
;;		_disp_num
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text861
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	line	123
	global	__size_of_tastaApasata
	__size_of_tastaApasata	equ	__end_of_tastaApasata-_tastaApasata
	
_tastaApasata:	
	opt	stack 4
; Regs used in _tastaApasata: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;tastaApasata@tasta stored from wreg
	line	125
	movwf	(tastaApasata@tasta)
	
l8405:	
;Main.c: 125: if(tasta == 'C')
	movf	(tastaApasata@tasta),w
	xorlw	043h
	skipz
	goto	u2011
	goto	u2010
u2011:
	goto	l8431
u2010:
	line	128
	
l8407:	
;Main.c: 126: {
;Main.c: 128: SetTime_RTC(2, 0, 0, 0);
	clrf	(?_SetTime_RTC)
	clrf	0+(?_SetTime_RTC)+01h
	clrf	0+(?_SetTime_RTC)+02h
	movlw	(02h)
	fcall	_SetTime_RTC
	line	129
;Main.c: 129: SetDate_RTC(8, 5, 14, 2);
	movlw	(05h)
	movwf	(?_SetDate_RTC)
	movlw	(0Eh)
	movwf	0+(?_SetDate_RTC)+01h
	movlw	(02h)
	movwf	0+(?_SetDate_RTC)+02h
	movlw	(08h)
	fcall	_SetDate_RTC
	line	136
	
l8409:	
;Main.c: 136: for(int i = 0; i< 20; i++)
	clrf	(tastaApasata@i)
	clrf	(tastaApasata@i+1)
	line	138
	
l8415:	
;Main.c: 137: {
;Main.c: 138: for(int k = 0; k< 4; k++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(tastaApasata@k)
	clrf	(tastaApasata@k+1)
	line	140
	
l8421:	
;Main.c: 139: {
;Main.c: 140: oreSonerie[i][k] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tastaApasata@i),w
	movwf	(??_tastaApasata+0)+0
	clrc
	rlf	(??_tastaApasata+0)+0,f
	clrc
	rlf	(??_tastaApasata+0)+0,f
	movlw	(_oreSonerie)&0ffh
	addwf	0+(??_tastaApasata+0)+0,w
	movwf	(??_tastaApasata+1)+0
	movf	(tastaApasata@k),w
	addwf	0+(??_tastaApasata+1)+0,w
	movwf	(??_tastaApasata+2)+0
	movf	0+(??_tastaApasata+2)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	138
	
l8423:	
	incf	(tastaApasata@k),f
	skipnz
	incf	(tastaApasata@k+1),f
	
l8425:	
	movf	(tastaApasata@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2025
	movlw	low(04h)
	subwf	(tastaApasata@k),w
u2025:

	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l8421
u2020:
	line	136
	
l8427:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(tastaApasata@i),f
	skipnz
	incf	(tastaApasata@i+1),f
	
l8429:	
	movf	(tastaApasata@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2035
	movlw	low(014h)
	subwf	(tastaApasata@i),w
u2035:

	skipc
	goto	u2031
	goto	u2030
u2031:
	goto	l8415
u2030:
	line	145
	
l8431:	
;Main.c: 141: }
;Main.c: 142: }
;Main.c: 143: }
;Main.c: 145: if(tasta == '/')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tastaApasata@tasta),w
	xorlw	02Fh
	skipz
	goto	u2041
	goto	u2040
u2041:
	goto	l8495
u2040:
	line	148
	
l8433:	
	line	151
	
l8435:	
;Main.c: 149: int ch1;
;Main.c: 150: int ch2;
;Main.c: 151: clearScreen();
	fcall	_clearScreen
	line	152
	
l8437:	
;Main.c: 152: writeString("Set hour");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_writeString
	line	154
	
l8439:	
;Main.c: 154: ch1 = GetChar2();
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@ch1+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@ch1)
	line	155
	
l8441:	
;Main.c: 155: writeChar(ch1);
	movf	(tastaApasata@ch1),w
	fcall	_writeChar
	line	157
	
l8443:	
;Main.c: 157: ch2 = GetChar2();
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@ch2+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@ch2)
	line	158
	
l8445:	
;Main.c: 158: writeChar(ch2);
	movf	(tastaApasata@ch2),w
	fcall	_writeChar
	line	160
	
l8447:	
;Main.c: 160: clearScreen();
	fcall	_clearScreen
	line	163
	
l8449:	
	line	167
;Main.c: 164: int m1;
;Main.c: 165: int m2;
;Main.c: 167: writeString("Set minute");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_writeString
	line	169
	
l8451:	
;Main.c: 169: m1 = GetChar2();
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@m1+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@m1)
	line	170
	
l8453:	
;Main.c: 170: writeChar(m1);
	movf	(tastaApasata@m1),w
	fcall	_writeChar
	line	172
	
l8455:	
;Main.c: 172: m2 = GetChar2() ;
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@m2+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@m2)
	line	173
	
l8457:	
;Main.c: 173: writeChar(m2);
	movf	(tastaApasata@m2),w
	fcall	_writeChar
	line	175
	
l8459:	
;Main.c: 175: clearScreen();
	fcall	_clearScreen
	line	178
	
l8461:	
	line	182
	
l8463:	
;Main.c: 179: int s1;
;Main.c: 180: int s2;
;Main.c: 182: writeString("Set seconds");
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_writeString
	line	184
	
l8465:	
;Main.c: 184: s1 = GetChar2();
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@s1+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@s1)
	line	185
	
l8467:	
;Main.c: 185: writeChar(s1);
	movf	(tastaApasata@s1),w
	fcall	_writeChar
	line	187
	
l8469:	
;Main.c: 187: s2 = GetChar2();
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@s2+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@s2)
	line	188
	
l8471:	
;Main.c: 188: writeChar(s2);
	movf	(tastaApasata@s2),w
	fcall	_writeChar
	line	190
	
l8473:	
;Main.c: 190: hour = ch1*10+ch2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tastaApasata@ch1+1),w
	movwf	(?___wmul+1)
	movf	(tastaApasata@ch1),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(tastaApasata@hour+1)
	movf	(0+(?___wmul)),w
	movwf	(tastaApasata@hour)
	
l8475:	
	movf	(tastaApasata@ch2),w
	addwf	(tastaApasata@hour),f
	skipnc
	incf	(tastaApasata@hour+1),f
	movf	(tastaApasata@ch2+1),w
	addwf	(tastaApasata@hour+1),f
	line	191
	
l8477:	
;Main.c: 191: minute = m1*10+m2;
	movf	(tastaApasata@m1+1),w
	movwf	(?___wmul+1)
	movf	(tastaApasata@m1),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(tastaApasata@minute+1)
	movf	(0+(?___wmul)),w
	movwf	(tastaApasata@minute)
	
l8479:	
	movf	(tastaApasata@m2),w
	addwf	(tastaApasata@minute),f
	skipnc
	incf	(tastaApasata@minute+1),f
	movf	(tastaApasata@m2+1),w
	addwf	(tastaApasata@minute+1),f
	line	192
	
l8481:	
;Main.c: 192: second = s1*10+s2;
	movf	(tastaApasata@s1+1),w
	movwf	(?___wmul+1)
	movf	(tastaApasata@s1),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(tastaApasata@second+1)
	movf	(0+(?___wmul)),w
	movwf	(tastaApasata@second)
	
l8483:	
	movf	(tastaApasata@s2),w
	addwf	(tastaApasata@second),f
	skipnc
	incf	(tastaApasata@second+1),f
	movf	(tastaApasata@s2+1),w
	addwf	(tastaApasata@second+1),f
	line	194
	
l8485:	
;Main.c: 194: if(hour<24 && minute<60 && second<60)
	movf	(tastaApasata@hour+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(018h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2055
	movlw	low(018h)
	subwf	(tastaApasata@hour),w
u2055:

	skipnc
	goto	u2051
	goto	u2050
u2051:
	goto	l8493
u2050:
	
l8487:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tastaApasata@minute+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2065
	movlw	low(03Ch)
	subwf	(tastaApasata@minute),w
u2065:

	skipnc
	goto	u2061
	goto	u2060
u2061:
	goto	l8493
u2060:
	
l8489:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tastaApasata@second+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2075
	movlw	low(03Ch)
	subwf	(tastaApasata@second),w
u2075:

	skipnc
	goto	u2071
	goto	u2070
u2071:
	goto	l8493
u2070:
	line	195
	
l8491:	
;Main.c: 195: SetTime_RTC(2, hour, minute, second);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tastaApasata@hour),w
	movwf	(?_SetTime_RTC)
	movf	(tastaApasata@minute),w
	movwf	0+(?_SetTime_RTC)+01h
	movf	(tastaApasata@second),w
	movwf	0+(?_SetTime_RTC)+02h
	movlw	(02h)
	fcall	_SetTime_RTC
	line	197
	
l8493:	
;Main.c: 197: clearScreen();
	fcall	_clearScreen
	line	204
	
l8495:	
;Main.c: 200: }
;Main.c: 204: if(tasta == '*')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tastaApasata@tasta),w
	xorlw	02Ah
	skipz
	goto	u2081
	goto	u2080
u2081:
	goto	l8569
u2080:
	line	207
	
l8497:	
	line	210
	
l8499:	
;Main.c: 208: int ch1;
;Main.c: 209: int ch2;
;Main.c: 210: clearScreen();
	fcall	_clearScreen
	line	211
	
l8501:	
;Main.c: 211: writeString("Set day");
	movlw	((STR_14-__stringbase))&0ffh
	fcall	_writeString
	line	213
	
l8503:	
;Main.c: 213: ch1 = GetChar2();
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@ch1_2837+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@ch1_2837)
	line	214
	
l8505:	
;Main.c: 214: writeChar(ch1);
	movf	(tastaApasata@ch1_2837),w
	fcall	_writeChar
	line	215
	
l8507:	
;Main.c: 215: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_tastaApasata+0)+0+2),f
movlw	88
movwf	((??_tastaApasata+0)+0+1),f
	movlw	94
movwf	((??_tastaApasata+0)+0),f
u2317:
	decfsz	((??_tastaApasata+0)+0),f
	goto	u2317
	decfsz	((??_tastaApasata+0)+0+1),f
	goto	u2317
	decfsz	((??_tastaApasata+0)+0+2),f
	goto	u2317
	nop2
opt asmopt_on

	line	217
	
l8509:	
;Main.c: 217: ch2 = GetChar2();
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@ch2_2838+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@ch2_2838)
	line	218
	
l8511:	
;Main.c: 218: writeChar(ch2);
	movf	(tastaApasata@ch2_2838),w
	fcall	_writeChar
	line	219
	
l8513:	
;Main.c: 219: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_tastaApasata+0)+0+2),f
movlw	88
movwf	((??_tastaApasata+0)+0+1),f
	movlw	94
movwf	((??_tastaApasata+0)+0),f
u2327:
	decfsz	((??_tastaApasata+0)+0),f
	goto	u2327
	decfsz	((??_tastaApasata+0)+0+1),f
	goto	u2327
	decfsz	((??_tastaApasata+0)+0+2),f
	goto	u2327
	nop2
opt asmopt_on

	line	221
	
l8515:	
;Main.c: 221: clearScreen();
	fcall	_clearScreen
	line	224
	
l8517:	
	line	228
;Main.c: 225: int m1;
;Main.c: 226: int m2;
;Main.c: 228: writeString("Set month");
	movlw	((STR_15-__stringbase))&0ffh
	fcall	_writeString
	line	230
	
l8519:	
;Main.c: 230: m1 = GetChar2();
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@m1_2841+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@m1_2841)
	line	231
	
l8521:	
;Main.c: 231: writeChar(m1);
	movf	(tastaApasata@m1_2841),w
	fcall	_writeChar
	line	232
	
l8523:	
;Main.c: 232: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_tastaApasata+0)+0+2),f
movlw	88
movwf	((??_tastaApasata+0)+0+1),f
	movlw	94
movwf	((??_tastaApasata+0)+0),f
u2337:
	decfsz	((??_tastaApasata+0)+0),f
	goto	u2337
	decfsz	((??_tastaApasata+0)+0+1),f
	goto	u2337
	decfsz	((??_tastaApasata+0)+0+2),f
	goto	u2337
	nop2
opt asmopt_on

	line	234
	
l8525:	
;Main.c: 234: m2 = GetChar2() ;
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@m2_2842+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@m2_2842)
	line	235
	
l8527:	
;Main.c: 235: writeChar(m2);
	movf	(tastaApasata@m2_2842),w
	fcall	_writeChar
	line	236
	
l8529:	
;Main.c: 236: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_tastaApasata+0)+0+2),f
movlw	88
movwf	((??_tastaApasata+0)+0+1),f
	movlw	94
movwf	((??_tastaApasata+0)+0),f
u2347:
	decfsz	((??_tastaApasata+0)+0),f
	goto	u2347
	decfsz	((??_tastaApasata+0)+0+1),f
	goto	u2347
	decfsz	((??_tastaApasata+0)+0+2),f
	goto	u2347
	nop2
opt asmopt_on

	line	238
	
l8531:	
;Main.c: 238: clearScreen();
	fcall	_clearScreen
	line	241
	
l8533:	
	line	245
	
l8535:	
;Main.c: 242: int s1;
;Main.c: 243: int s2;
;Main.c: 245: writeString("Set year");
	movlw	((STR_16-__stringbase))&0ffh
	fcall	_writeString
	line	247
	
l8537:	
;Main.c: 247: s1 = GetChar2();
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@s1_2845+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@s1_2845)
	line	248
	
l8539:	
;Main.c: 248: writeChar(s1);
	movf	(tastaApasata@s1_2845),w
	fcall	_writeChar
	line	249
	
l8541:	
;Main.c: 249: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_tastaApasata+0)+0+2),f
movlw	88
movwf	((??_tastaApasata+0)+0+1),f
	movlw	94
movwf	((??_tastaApasata+0)+0),f
u2357:
	decfsz	((??_tastaApasata+0)+0),f
	goto	u2357
	decfsz	((??_tastaApasata+0)+0+1),f
	goto	u2357
	decfsz	((??_tastaApasata+0)+0+2),f
	goto	u2357
	nop2
opt asmopt_on

	line	251
	
l8543:	
;Main.c: 251: s2 = GetChar2();
	fcall	_GetChar2
	movf	(1+(?_GetChar2)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@s2_2846+1)
	movf	(0+(?_GetChar2)),w
	movwf	(tastaApasata@s2_2846)
	line	252
	
l8545:	
;Main.c: 252: writeChar(s2);
	movf	(tastaApasata@s2_2846),w
	fcall	_writeChar
	line	253
	
l8547:	
;Main.c: 253: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_tastaApasata+0)+0+2),f
movlw	88
movwf	((??_tastaApasata+0)+0+1),f
	movlw	94
movwf	((??_tastaApasata+0)+0),f
u2367:
	decfsz	((??_tastaApasata+0)+0),f
	goto	u2367
	decfsz	((??_tastaApasata+0)+0+1),f
	goto	u2367
	decfsz	((??_tastaApasata+0)+0+2),f
	goto	u2367
	nop2
opt asmopt_on

	line	255
	
l8549:	
;Main.c: 255: day = ch1*10+ch2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tastaApasata@ch1_2837+1),w
	movwf	(?___wmul+1)
	movf	(tastaApasata@ch1_2837),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(tastaApasata@day+1)
	movf	(0+(?___wmul)),w
	movwf	(tastaApasata@day)
	
l8551:	
	movf	(tastaApasata@ch2_2838),w
	addwf	(tastaApasata@day),f
	skipnc
	incf	(tastaApasata@day+1),f
	movf	(tastaApasata@ch2_2838+1),w
	addwf	(tastaApasata@day+1),f
	line	256
	
l8553:	
;Main.c: 256: month = m1*10+m2;
	movf	(tastaApasata@m1_2841+1),w
	movwf	(?___wmul+1)
	movf	(tastaApasata@m1_2841),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(tastaApasata@month+1)
	movf	(0+(?___wmul)),w
	movwf	(tastaApasata@month)
	
l8555:	
	movf	(tastaApasata@m2_2842),w
	addwf	(tastaApasata@month),f
	skipnc
	incf	(tastaApasata@month+1),f
	movf	(tastaApasata@m2_2842+1),w
	addwf	(tastaApasata@month+1),f
	line	257
	
l8557:	
;Main.c: 257: year = s1*10+s2;
	movf	(tastaApasata@s1_2845+1),w
	movwf	(?___wmul+1)
	movf	(tastaApasata@s1_2845),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(tastaApasata@year+1)
	movf	(0+(?___wmul)),w
	movwf	(tastaApasata@year)
	
l8559:	
	movf	(tastaApasata@s2_2846),w
	addwf	(tastaApasata@year),f
	skipnc
	incf	(tastaApasata@year+1),f
	movf	(tastaApasata@s2_2846+1),w
	addwf	(tastaApasata@year+1),f
	line	259
	
l8561:	
;Main.c: 259: if(day < 31 && month <12)
	movf	(tastaApasata@day+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2095
	movlw	low(01Fh)
	subwf	(tastaApasata@day),w
u2095:

	skipnc
	goto	u2091
	goto	u2090
u2091:
	goto	l8567
u2090:
	
l8563:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tastaApasata@month+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2105
	movlw	low(0Ch)
	subwf	(tastaApasata@month),w
u2105:

	skipnc
	goto	u2101
	goto	u2100
u2101:
	goto	l8567
u2100:
	line	260
	
l8565:	
;Main.c: 260: SetDate_RTC(day, month, year, 2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tastaApasata@month),w
	movwf	(?_SetDate_RTC)
	movf	(tastaApasata@year),w
	movwf	0+(?_SetDate_RTC)+01h
	movlw	(02h)
	movwf	0+(?_SetDate_RTC)+02h
	movf	(tastaApasata@day),w
	fcall	_SetDate_RTC
	line	262
	
l8567:	
;Main.c: 262: clearScreen();
	fcall	_clearScreen
	line	268
	
l8569:	
;Main.c: 265: }
;Main.c: 268: if(tasta == '+')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tastaApasata@tasta),w
	xorlw	02Bh
	skipz
	goto	u2111
	goto	u2110
u2111:
	goto	l8589
u2110:
	line	270
	
l8571:	
;Main.c: 269: {
;Main.c: 270: clearScreen();
	fcall	_clearScreen
	line	272
	
l8573:	
;Main.c: 272: if(intervalSonerie <60)
	movlw	high(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_intervalSonerie+1),w
	movlw	low(03Ch)
	skipnz
	subwf	(_intervalSonerie),w
	skipnc
	goto	u2121
	goto	u2120
u2121:
	goto	l8577
u2120:
	line	273
	
l8575:	
;Main.c: 273: intervalSonerie++;
	incf	(_intervalSonerie),f
	skipnz
	incf	(_intervalSonerie+1),f
	line	275
	
l8577:	
;Main.c: 275: writeString("Interval ");
	movlw	((STR_17-__stringbase))&0ffh
	fcall	_writeString
	line	276
	
l8579:	
;Main.c: 276: disp_num(intervalSonerie);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_intervalSonerie+1),w
	movwf	(?_disp_num+1)
	movf	(_intervalSonerie),w
	movwf	(?_disp_num)
	fcall	_disp_num
	line	278
	
l8581:	
;Main.c: 278: unsigned int count = 10000;
	movlw	low(02710h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@count)
	movlw	high(02710h)
	movwf	((tastaApasata@count))+1
	line	279
;Main.c: 279: while(count--)
	goto	l8587
	line	281
	
l8583:	
;Main.c: 280: {
;Main.c: 281: unsigned int count2 = 10;
	movlw	0Ah
	movwf	(tastaApasata@count2)
	clrf	(tastaApasata@count2+1)
	line	282
;Main.c: 282: while(count2--);
	
l8585:	
	movlw	low(01h)
	subwf	(tastaApasata@count2),f
	movlw	high(01h)
	skipc
	decf	(tastaApasata@count2+1),f
	subwf	(tastaApasata@count2+1),f
	incf	((tastaApasata@count2)),w
	skipnz
	incf	((tastaApasata@count2+1)),w

	skipz
	goto	u2131
	goto	u2130
u2131:
	goto	l8585
u2130:
	line	279
	
l8587:	
	movlw	low(01h)
	subwf	(tastaApasata@count),f
	movlw	high(01h)
	skipc
	decf	(tastaApasata@count+1),f
	subwf	(tastaApasata@count+1),f
	incf	((tastaApasata@count)),w
	skipnz
	incf	((tastaApasata@count+1)),w

	skipz
	goto	u2141
	goto	u2140
u2141:
	goto	l8583
u2140:
	line	288
	
l8589:	
;Main.c: 283: }
;Main.c: 286: }
;Main.c: 288: if(tasta == '-')
	movf	(tastaApasata@tasta),w
	xorlw	02Dh
	skipz
	goto	u2151
	goto	u2150
u2151:
	goto	l2169
u2150:
	line	290
	
l8591:	
;Main.c: 289: {
;Main.c: 290: clearScreen();
	fcall	_clearScreen
	line	292
	
l8593:	
;Main.c: 292: if(intervalSonerie >3)
	movlw	high(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_intervalSonerie+1),w
	movlw	low(04h)
	skipnz
	subwf	(_intervalSonerie),w
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l8597
u2160:
	line	293
	
l8595:	
;Main.c: 293: intervalSonerie--;
	movlw	low(01h)
	subwf	(_intervalSonerie),f
	movlw	high(01h)
	skipc
	decf	(_intervalSonerie+1),f
	subwf	(_intervalSonerie+1),f
	line	295
	
l8597:	
;Main.c: 295: writeString("Interval ");
	movlw	((STR_18-__stringbase))&0ffh
	fcall	_writeString
	line	296
	
l8599:	
;Main.c: 296: disp_num(intervalSonerie);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_intervalSonerie+1),w
	movwf	(?_disp_num+1)
	movf	(_intervalSonerie),w
	movwf	(?_disp_num)
	fcall	_disp_num
	line	298
	
l8601:	
;Main.c: 298: unsigned int count = 10000;
	movlw	low(02710h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tastaApasata@count_2852)
	movlw	high(02710h)
	movwf	((tastaApasata@count_2852))+1
	line	299
;Main.c: 299: while(count--)
	goto	l8607
	line	301
	
l8603:	
;Main.c: 300: {
;Main.c: 301: unsigned int count2 = 10;
	movlw	0Ah
	movwf	(tastaApasata@count2_2853)
	clrf	(tastaApasata@count2_2853+1)
	line	302
;Main.c: 302: while(count2--);
	
l8605:	
	movlw	low(01h)
	subwf	(tastaApasata@count2_2853),f
	movlw	high(01h)
	skipc
	decf	(tastaApasata@count2_2853+1),f
	subwf	(tastaApasata@count2_2853+1),f
	incf	((tastaApasata@count2_2853)),w
	skipnz
	incf	((tastaApasata@count2_2853+1)),w

	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l8605
u2170:
	line	299
	
l8607:	
	movlw	low(01h)
	subwf	(tastaApasata@count_2852),f
	movlw	high(01h)
	skipc
	decf	(tastaApasata@count_2852+1),f
	subwf	(tastaApasata@count_2852+1),f
	incf	((tastaApasata@count_2852)),w
	skipnz
	incf	((tastaApasata@count_2852+1)),w

	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l8603
u2180:
	line	305
	
l2169:	
	return
	opt stack 0
GLOBAL	__end_of_tastaApasata
	__end_of_tastaApasata:
;; =============== function _tastaApasata ends ============

	signat	_tastaApasata,4216
	global	_DisplayDateOnLCD
psect	text862,local,class=CODE,delta=2
global __ptext862
__ptext862:

;; *************** function _DisplayDateOnLCD *****************
;; Defined at:
;;		line 143 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
;; Parameters:    Size  Location     Type
;;  pDateArray      1    wreg     PTR unsigned char 
;;		 -> RTCArray(4), 
;; Auto vars:     Size  Location     Type
;;  pDateArray      1    5[COMMON] PTR unsigned char 
;;		 -> RTCArray(4), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_writeCommand
;;		___lbdiv
;;		_writeChar
;;		___lbmod
;;		_writeString
;; This function is called by:
;;		_afiareDefault
;; This function uses a non-reentrant model
;;
psect	text862
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
	line	143
	global	__size_of_DisplayDateOnLCD
	__size_of_DisplayDateOnLCD	equ	__end_of_DisplayDateOnLCD-_DisplayDateOnLCD
	
_DisplayDateOnLCD:	
	opt	stack 3
; Regs used in _DisplayDateOnLCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;DisplayDateOnLCD@pDateArray stored from wreg
	movwf	(DisplayDateOnLCD@pDateArray)
	line	144
	
l8371:	
;LCD.c: 144: writeCommand(0xc0);
	movlw	(0C0h)
	fcall	_writeCommand
	line	147
	
l8373:	
;LCD.c: 147: writeChar( (pDateArray[1]/10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbdiv
	addlw	030h
	fcall	_writeChar
	line	148
	
l8375:	
;LCD.c: 148: writeChar( (pDateArray[1]%10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbmod
	addlw	030h
	fcall	_writeChar
	line	151
;LCD.c: 151: writeChar('/');
	movlw	(02Fh)
	fcall	_writeChar
	line	154
	
l8377:	
;LCD.c: 154: writeChar( (pDateArray[2]/10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbdiv
	addlw	030h
	fcall	_writeChar
	line	155
	
l8379:	
;LCD.c: 155: writeChar( (pDateArray[2]%10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbmod
	addlw	030h
	fcall	_writeChar
	line	158
;LCD.c: 158: writeChar('/');
	movlw	(02Fh)
	fcall	_writeChar
	line	161
	
l8381:	
;LCD.c: 161: writeChar( (pDateArray[3]/10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbdiv
	addlw	030h
	fcall	_writeChar
	line	162
	
l8383:	
;LCD.c: 162: writeChar( (pDateArray[3]%10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbmod
	addlw	030h
	fcall	_writeChar
	line	165
;LCD.c: 165: writeChar(' ');
	movlw	(020h)
	fcall	_writeChar
	line	168
;LCD.c: 168: switch(pDateArray[0])
	goto	l8403
	line	170
	
l8385:	
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_writeString
	goto	l1415
	line	171
	
l8387:	
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_writeString
	goto	l1415
	line	172
	
l8389:	
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_writeString
	goto	l1415
	line	173
	
l8391:	
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_writeString
	goto	l1415
	line	174
	
l8393:	
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_writeString
	goto	l1415
	line	175
	
l8395:	
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_writeString
	goto	l1415
	line	176
	
l8397:	
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_writeString
	goto	l1415
	line	178
	
l8399:	
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_writeString
	goto	l1415
	line	168
	
l8403:	
	movf	(DisplayDateOnLCD@pDateArray),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 1 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
; direct_byte           32    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l8385
	xorlw	2^1	; case 2
	skipnz
	goto	l8387
	xorlw	3^2	; case 3
	skipnz
	goto	l8389
	xorlw	4^3	; case 4
	skipnz
	goto	l8391
	xorlw	5^4	; case 5
	skipnz
	goto	l8393
	xorlw	6^5	; case 6
	skipnz
	goto	l8395
	xorlw	7^6	; case 7
	skipnz
	goto	l8397
	goto	l8399
	opt asmopt_on

	line	180
	
l1415:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayDateOnLCD
	__end_of_DisplayDateOnLCD:
;; =============== function _DisplayDateOnLCD ends ============

	signat	_DisplayDateOnLCD,4216
	global	_DisplayTimeToLCD
psect	text863,local,class=CODE,delta=2
global __ptext863
__ptext863:

;; *************** function _DisplayTimeToLCD *****************
;; Defined at:
;;		line 105 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
;; Parameters:    Size  Location     Type
;;  pTimeArray      1    wreg     PTR unsigned char 
;;		 -> RTCArray(4), 
;; Auto vars:     Size  Location     Type
;;  pTimeArray      1    5[COMMON] PTR unsigned char 
;;		 -> RTCArray(4), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_clearScreen
;;		___lbdiv
;;		_writeChar
;;		___lbmod
;;		_writeString
;; This function is called by:
;;		_afiareDefault
;; This function uses a non-reentrant model
;;
psect	text863
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
	line	105
	global	__size_of_DisplayTimeToLCD
	__size_of_DisplayTimeToLCD	equ	__end_of_DisplayTimeToLCD-_DisplayTimeToLCD
	
_DisplayTimeToLCD:	
	opt	stack 3
; Regs used in _DisplayTimeToLCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;DisplayTimeToLCD@pTimeArray stored from wreg
	movwf	(DisplayTimeToLCD@pTimeArray)
	line	106
	
l8347:	
;LCD.c: 106: clearScreen();
	fcall	_clearScreen
	line	109
	
l8349:	
;LCD.c: 109: writeChar( (pTimeArray[2]/10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(DisplayTimeToLCD@pTimeArray),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbdiv
	addlw	030h
	fcall	_writeChar
	line	110
	
l8351:	
;LCD.c: 110: writeChar( (pTimeArray[2]%10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(DisplayTimeToLCD@pTimeArray),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbmod
	addlw	030h
	fcall	_writeChar
	line	113
;LCD.c: 113: writeChar(':');
	movlw	(03Ah)
	fcall	_writeChar
	line	116
	
l8353:	
;LCD.c: 116: writeChar( (pTimeArray[1]/10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(DisplayTimeToLCD@pTimeArray),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbdiv
	addlw	030h
	fcall	_writeChar
	line	117
	
l8355:	
;LCD.c: 117: writeChar( (pTimeArray[1]%10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(DisplayTimeToLCD@pTimeArray),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbmod
	addlw	030h
	fcall	_writeChar
	line	120
;LCD.c: 120: writeChar(':');
	movlw	(03Ah)
	fcall	_writeChar
	line	123
	
l8357:	
;LCD.c: 123: writeChar( (pTimeArray[0]/10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(DisplayTimeToLCD@pTimeArray),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbdiv
	addlw	030h
	fcall	_writeChar
	line	124
	
l8359:	
;LCD.c: 124: writeChar( (pTimeArray[0]%10)+0x30 );
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(DisplayTimeToLCD@pTimeArray),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___lbmod
	addlw	030h
	fcall	_writeChar
	line	127
;LCD.c: 127: writeChar(' ');
	movlw	(020h)
	fcall	_writeChar
	line	130
;LCD.c: 130: switch(pTimeArray[3])
	goto	l8369
	line	132
	
l8361:	
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_writeString
	goto	l1402
	line	133
	
l8363:	
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_writeString
	goto	l1402
	line	135
	
l8365:	
	movlw	(048h)
	fcall	_writeChar
	goto	l1402
	line	130
	
l8369:	
	movf	(DisplayTimeToLCD@pTimeArray),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             6     6 (fixed)
; spacedrange           10     9 (fixed)
; locatedrange           2     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l8361
	xorlw	1^0	; case 1
	skipnz
	goto	l8363
	goto	l8365
	opt asmopt_on

	line	137
	
l1402:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayTimeToLCD
	__end_of_DisplayTimeToLCD:
;; =============== function _DisplayTimeToLCD ends ============

	signat	_DisplayTimeToLCD,4216
	global	_disp_num
psect	text864,local,class=CODE,delta=2
global __ptext864
__ptext864:

;; *************** function _disp_num *****************
;; Defined at:
;;		line 505 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
;; Parameters:    Size  Location     Type
;;  numb            2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  TenthDigit      1   12[COMMON] unsigned char 
;;  UnitDigit       1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___wmul
;;		_writeChar
;;		___awdiv
;;		___bmul
;; This function is called by:
;;		_tastaApasata
;; This function uses a non-reentrant model
;;
psect	text864
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Main.c"
	line	505
	global	__size_of_disp_num
	__size_of_disp_num	equ	__end_of_disp_num-_disp_num
	
_disp_num:	
	opt	stack 4
; Regs used in _disp_num: [wreg+status,2+status,0+pclath+cstack]
	line	506
	
l8337:	
	line	507
;Main.c: 507: unsigned char TenthDigit = 0;
	clrf	(disp_num@TenthDigit)
	line	509
	
l8339:	
;Main.c: 509: if(numb<0)
	btfss	(disp_num@numb+1),7
	goto	u1991
	goto	u1990
u1991:
	goto	l2235
u1990:
	line	511
	
l8341:	
;Main.c: 510: {
;Main.c: 511: numb = -1*numb;
	movlw	low(-1)
	movwf	(?___wmul)
	movlw	high(-1)
	movwf	((?___wmul))+1
	movf	(disp_num@numb+1),w
	movwf	1+(?___wmul)+02h
	movf	(disp_num@numb),w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(disp_num@numb+1)
	movf	(0+(?___wmul)),w
	movwf	(disp_num@numb)
	line	512
;Main.c: 512: writeChar('-');
	movlw	(02Dh)
	fcall	_writeChar
	line	513
	
l2235:	
	line	515
;Main.c: 513: }
;Main.c: 515: TenthDigit = (numb/10);
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(disp_num@numb+1),w
	movwf	1+(?___awdiv)+02h
	movf	(disp_num@numb),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(disp_num@TenthDigit)
	line	517
	
l8343:	
;Main.c: 517: if( TenthDigit != 0)
	movf	(disp_num@TenthDigit),w
	skipz
	goto	u2000
	goto	l2236
u2000:
	line	518
	
l8345:	
;Main.c: 518: writeChar(TenthDigit+0x30);
	movf	(disp_num@TenthDigit),w
	addlw	030h
	fcall	_writeChar
	
l2236:	
	line	520
;Main.c: 520: UnitDigit = numb - TenthDigit*10;
	movlw	(0F6h)
	movwf	(?___bmul)
	movf	(disp_num@TenthDigit),w
	fcall	___bmul
	movwf	(??_disp_num+0)+0
	movf	(disp_num@numb),w
	addwf	0+(??_disp_num+0)+0,w
	movwf	(disp_num@UnitDigit)
	line	522
;Main.c: 522: writeChar(UnitDigit+0x30);
	movf	(disp_num@UnitDigit),w
	addlw	030h
	fcall	_writeChar
	line	523
	
l2237:	
	return
	opt stack 0
GLOBAL	__end_of_disp_num
	__end_of_disp_num:
;; =============== function _disp_num ends ============

	signat	_disp_num,4216
	global	_clearScreen
psect	text865,local,class=CODE,delta=2
global __ptext865
__ptext865:

;; *************** function _clearScreen *****************
;; Defined at:
;;		line 99 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_writeCommand
;; This function is called by:
;;		_DisplayTimeToLCD
;;		_main
;;		_test
;;		_tastaApasata
;; This function uses a non-reentrant model
;;
psect	text865
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
	line	99
	global	__size_of_clearScreen
	__size_of_clearScreen	equ	__end_of_clearScreen-_clearScreen
	
_clearScreen:	
	opt	stack 3
; Regs used in _clearScreen: [wreg+status,2+status,0+pclath+cstack]
	line	100
	
l8333:	
;LCD.c: 100: writeCommand(0x01);
	movlw	(01h)
	fcall	_writeCommand
	line	101
	
l8335:	
;LCD.c: 101: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_clearScreen+0)+0+1),f
	movlw	251
movwf	((??_clearScreen+0)+0),f
u2377:
	decfsz	((??_clearScreen+0)+0),f
	goto	u2377
	decfsz	((??_clearScreen+0)+0+1),f
	goto	u2377
	nop2
opt asmopt_on

	line	102
	
l1394:	
	return
	opt stack 0
GLOBAL	__end_of_clearScreen
	__end_of_clearScreen:
;; =============== function _clearScreen ends ============

	signat	_clearScreen,88
	global	_writeString
psect	text866,local,class=CODE,delta=2
global __ptext866
__ptext866:

;; *************** function _writeString *****************
;; Defined at:
;;		line 92 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_25(12), STR_24(15), STR_23(12), STR_22(7), 
;;		 -> STR_21(8), STR_20(11), STR_19(19), STR_18(10), 
;;		 -> STR_17(10), STR_16(9), STR_15(10), STR_14(8), 
;;		 -> STR_13(12), STR_12(11), STR_11(9), STR_10(4), 
;;		 -> STR_9(4), STR_8(4), STR_7(4), STR_6(4), 
;;		 -> STR_5(4), STR_4(4), STR_3(4), STR_2(3), 
;;		 -> STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    3[COMMON] PTR const unsigned char 
;;		 -> STR_25(12), STR_24(15), STR_23(12), STR_22(7), 
;;		 -> STR_21(8), STR_20(11), STR_19(19), STR_18(10), 
;;		 -> STR_17(10), STR_16(9), STR_15(10), STR_14(8), 
;;		 -> STR_13(12), STR_12(11), STR_11(9), STR_10(4), 
;;		 -> STR_9(4), STR_8(4), STR_7(4), STR_6(4), 
;;		 -> STR_5(4), STR_4(4), STR_3(4), STR_2(3), 
;;		 -> STR_1(3), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_writeChar
;; This function is called by:
;;		_DisplayTimeToLCD
;;		_DisplayDateOnLCD
;;		_test
;;		_tastaApasata
;; This function uses a non-reentrant model
;;
psect	text866
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
	line	92
	global	__size_of_writeString
	__size_of_writeString	equ	__end_of_writeString-_writeString
	
_writeString:	
	opt	stack 3
; Regs used in _writeString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;writeString@s stored from wreg
	movwf	(writeString@s)
	line	93
	
l8325:	
;LCD.c: 93: while(*s)
	goto	l8331
	line	94
	
l8327:	
;LCD.c: 94: writeChar(*s++);
	movf	(writeString@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_writeChar
	
l8329:	
	incf	(writeString@s),f
	line	93
	
l8331:	
	movf	(writeString@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u1981
	goto	u1980
u1981:
	goto	l8327
u1980:
	line	95
	
l1391:	
	return
	opt stack 0
GLOBAL	__end_of_writeString
	__end_of_writeString:
;; =============== function _writeString ends ============

	signat	_writeString,4216
	global	_initLCD
psect	text867,local,class=CODE,delta=2
global __ptext867
__ptext867:

;; *************** function _initLCD *****************
;; Defined at:
;;		line 42 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulseEpin
;;		_writeCommand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text867
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
	line	42
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l8285:	
;LCD.c: 44: RD0 = 0;
	bcf	(64/8),(64)&7
	line	45
;LCD.c: 45: RD1 = 0;
	bcf	(65/8),(65)&7
	line	46
;LCD.c: 46: RD4 = 0;
	bcf	(68/8),(68)&7
	line	47
;LCD.c: 47: RD5 = 0;
	bcf	(69/8),(69)&7
	line	48
;LCD.c: 48: RD6 = 0;
	bcf	(70/8),(70)&7
	line	49
;LCD.c: 49: RD7 = 0;
	bcf	(71/8),(71)&7
	line	50
;LCD.c: 50: TRISD0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1088/8)^080h,(1088)&7
	line	51
;LCD.c: 51: TRISD1 = 0;
	bcf	(1089/8)^080h,(1089)&7
	line	52
;LCD.c: 52: TRISD4 = 0;
	bcf	(1092/8)^080h,(1092)&7
	line	53
;LCD.c: 53: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	54
;LCD.c: 54: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	55
;LCD.c: 55: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	58
	
l8287:	
;LCD.c: 58: _delay((unsigned long)((40)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_initLCD+0)+0+2),f
movlw	4
movwf	((??_initLCD+0)+0+1),f
	movlw	186
movwf	((??_initLCD+0)+0),f
u2387:
	decfsz	((??_initLCD+0)+0),f
	goto	u2387
	decfsz	((??_initLCD+0)+0+1),f
	goto	u2387
	decfsz	((??_initLCD+0)+0+2),f
	goto	u2387
	clrwdt
opt asmopt_on

	line	60
	
l8289:	
;LCD.c: 60: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	61
	
l8291:	
;LCD.c: 61: PORTD |= 0x30;
	movlw	(030h)
	iorwf	(8),f	;volatile
	line	62
	
l8293:	
;LCD.c: 62: pulseEpin();
	fcall	_pulseEpin
	line	64
	
l8295:	
;LCD.c: 64: _delay((unsigned long)((6)*(20000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_initLCD+0)+0+1),f
	movlw	245
movwf	((??_initLCD+0)+0),f
u2397:
	decfsz	((??_initLCD+0)+0),f
	goto	u2397
	decfsz	((??_initLCD+0)+0+1),f
	goto	u2397
opt asmopt_on

	line	66
	
l8297:	
;LCD.c: 66: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	67
	
l8299:	
;LCD.c: 67: PORTD |= 0x30;
	movlw	(030h)
	iorwf	(8),f	;volatile
	line	68
;LCD.c: 68: pulseEpin();
	fcall	_pulseEpin
	line	70
	
l8301:	
;LCD.c: 70: _delay((unsigned long)((300)*(20000000/4000000.0)));
	opt asmopt_off
movlw	214
movwf	(??_initLCD+0)+0,f
u2407:
	nop2
	nop2
decfsz	(??_initLCD+0)+0,f
	goto	u2407
	clrwdt
opt asmopt_on

	line	72
	
l8303:	
;LCD.c: 72: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	73
	
l8305:	
;LCD.c: 73: PORTD |= 0x30;
	movlw	(030h)
	iorwf	(8),f	;volatile
	line	74
	
l8307:	
;LCD.c: 74: pulseEpin();
	fcall	_pulseEpin
	line	76
;LCD.c: 76: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_initLCD+0)+0+1),f
	movlw	251
movwf	((??_initLCD+0)+0),f
u2417:
	decfsz	((??_initLCD+0)+0),f
	goto	u2417
	decfsz	((??_initLCD+0)+0+1),f
	goto	u2417
	nop2
opt asmopt_on

	line	78
	
l8309:	
;LCD.c: 78: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	79
	
l8311:	
;LCD.c: 79: PORTD |= 0x20;
	bsf	(8)+(5/8),(5)&7	;volatile
	line	80
	
l8313:	
;LCD.c: 80: pulseEpin();
	fcall	_pulseEpin
	line	82
	
l8315:	
;LCD.c: 82: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_initLCD+0)+0+1),f
	movlw	251
movwf	((??_initLCD+0)+0),f
u2427:
	decfsz	((??_initLCD+0)+0),f
	goto	u2427
	decfsz	((??_initLCD+0)+0+1),f
	goto	u2427
	nop2
opt asmopt_on

	line	84
	
l8317:	
;LCD.c: 84: writeCommand(0x28);
	movlw	(028h)
	fcall	_writeCommand
	line	85
	
l8319:	
;LCD.c: 85: writeCommand(0x0c);
	movlw	(0Ch)
	fcall	_writeCommand
	line	86
	
l8321:	
;LCD.c: 86: writeCommand(0x01);
	movlw	(01h)
	fcall	_writeCommand
	line	87
	
l8323:	
;LCD.c: 87: writeCommand(0x06);
	movlw	(06h)
	fcall	_writeCommand
	line	88
	
l1385:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
;; =============== function _initLCD ends ============

	signat	_initLCD,88
	global	_GetDate_RTC
psect	text868,local,class=CODE,delta=2
global __ptext868
__ptext868:

;; *************** function _GetDate_RTC *****************
;; Defined at:
;;		line 207 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ReadBFrom_RTC
;;		___bmul
;; This function is called by:
;;		_afiareDefault
;; This function uses a non-reentrant model
;;
psect	text868
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
	line	207
	global	__size_of_GetDate_RTC
	__size_of_GetDate_RTC	equ	__end_of_GetDate_RTC-_GetDate_RTC
	
_GetDate_RTC:	
	opt	stack 4
; Regs used in _GetDate_RTC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	209
	
l8267:	
;DS1307.c: 209: ReadBFrom_RTC(0x03, RTCArray, 4);
	movlw	(_RTCArray)&0ffh
	movwf	(?_ReadBFrom_RTC)
	movlw	04h
	movwf	0+(?_ReadBFrom_RTC)+01h
	clrf	1+(?_ReadBFrom_RTC)+01h
	movlw	(03h)
	fcall	_ReadBFrom_RTC
	line	212
	
l8269:	
;DS1307.c: 212: Temp = RTCArray[1];
	movf	0+(_RTCArray)+01h,w
	movwf	(_Temp)
	line	213
	
l8271:	
;DS1307.c: 213: RTCArray[1] = (Temp>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(?___bmul)
	swapf	(_Temp),w
	andlw	(0ffh shr 4) & 0ffh
	fcall	___bmul
	movwf	(??_GetDate_RTC+0)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_GetDate_RTC+0)+0,w
	movwf	0+(_RTCArray)+01h
	line	216
	
l8273:	
;DS1307.c: 216: Temp = RTCArray[2];
	movf	0+(_RTCArray)+02h,w
	movwf	(_Temp)
	line	217
	
l8275:	
;DS1307.c: 217: RTCArray[2] = (Temp>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(?___bmul)
	swapf	(_Temp),w
	andlw	(0ffh shr 4) & 0ffh
	fcall	___bmul
	movwf	(??_GetDate_RTC+0)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_GetDate_RTC+0)+0,w
	movwf	0+(_RTCArray)+02h
	line	220
	
l8277:	
;DS1307.c: 220: Temp = RTCArray[3];
	movf	0+(_RTCArray)+03h,w
	movwf	(_Temp)
	line	221
	
l8279:	
;DS1307.c: 221: RTCArray[3] = (Temp>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(?___bmul)
	swapf	(_Temp),w
	andlw	(0ffh shr 4) & 0ffh
	fcall	___bmul
	movwf	(??_GetDate_RTC+0)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_GetDate_RTC+0)+0,w
	movwf	0+(_RTCArray)+03h
	line	223
	
l8281:	
;DS1307.c: 223: return RTCArray;
	movlw	(_RTCArray)&0ffh
	line	224
	
l2944:	
	return
	opt stack 0
GLOBAL	__end_of_GetDate_RTC
	__end_of_GetDate_RTC:
;; =============== function _GetDate_RTC ends ============

	signat	_GetDate_RTC,89
	global	_SetDate_RTC
psect	text869,local,class=CODE,delta=2
global __ptext869
__ptext869:

;; *************** function _SetDate_RTC *****************
;; Defined at:
;;		line 188 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
;; Parameters:    Size  Location     Type
;;  Date            1    wreg     unsigned char 
;;  Month           1    8[COMMON] unsigned char 
;;  Year            1    9[COMMON] unsigned char 
;;  Day             1   10[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Date            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbmod
;;		___lbdiv
;;		_WriteBTo_RTC
;; This function is called by:
;;		_tastaApasata
;; This function uses a non-reentrant model
;;
psect	text869
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
	line	188
	global	__size_of_SetDate_RTC
	__size_of_SetDate_RTC	equ	__end_of_SetDate_RTC-_SetDate_RTC
	
_SetDate_RTC:	
	opt	stack 4
; Regs used in _SetDate_RTC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;SetDate_RTC@Date stored from wreg
	line	190
	movwf	(SetDate_RTC@Date)
	
l8263:	
;DS1307.c: 190: RTCArray[0] = (((unsigned char)(Day/10))<<4)|((unsigned char)(Day%10));
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(SetDate_RTC@Day),w
	fcall	___lbmod
	movwf	(??_SetDate_RTC+0)+0
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(SetDate_RTC@Day),w
	fcall	___lbdiv
	movwf	(??_SetDate_RTC+1)+0
	swapf	(??_SetDate_RTC+1)+0,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	0+(??_SetDate_RTC+0)+0,w
	movwf	(_RTCArray)
	line	191
;DS1307.c: 191: RTCArray[1] = (((unsigned char)(Date/10))<<4)|((unsigned char)(Date%10));
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(SetDate_RTC@Date),w
	fcall	___lbmod
	movwf	(??_SetDate_RTC+0)+0
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(SetDate_RTC@Date),w
	fcall	___lbdiv
	movwf	(??_SetDate_RTC+1)+0
	swapf	(??_SetDate_RTC+1)+0,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	0+(??_SetDate_RTC+0)+0,w
	movwf	0+(_RTCArray)+01h
	line	192
;DS1307.c: 192: RTCArray[2] = (((unsigned char)(Month/10))<<4)|((unsigned char)(Month%10));
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(SetDate_RTC@Month),w
	fcall	___lbmod
	movwf	(??_SetDate_RTC+0)+0
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(SetDate_RTC@Month),w
	fcall	___lbdiv
	movwf	(??_SetDate_RTC+1)+0
	swapf	(??_SetDate_RTC+1)+0,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	0+(??_SetDate_RTC+0)+0,w
	movwf	0+(_RTCArray)+02h
	line	193
;DS1307.c: 193: RTCArray[3] = (((unsigned char)(Year/10))<<4)|((unsigned char)(Year%10));
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(SetDate_RTC@Year),w
	fcall	___lbmod
	movwf	(??_SetDate_RTC+0)+0
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(SetDate_RTC@Year),w
	fcall	___lbdiv
	movwf	(??_SetDate_RTC+1)+0
	swapf	(??_SetDate_RTC+1)+0,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	0+(??_SetDate_RTC+0)+0,w
	movwf	0+(_RTCArray)+03h
	line	196
	
l8265:	
;DS1307.c: 196: WriteBTo_RTC(0x03, RTCArray, 4);
	movlw	(_RTCArray)&0ffh
	movwf	(?_WriteBTo_RTC)
	movlw	(04h)
	movwf	0+(?_WriteBTo_RTC)+01h
	movlw	(03h)
	fcall	_WriteBTo_RTC
	line	197
	
l2941:	
	return
	opt stack 0
GLOBAL	__end_of_SetDate_RTC
	__end_of_SetDate_RTC:
;; =============== function _SetDate_RTC ends ============

	signat	_SetDate_RTC,16504
	global	_SetTime_RTC
psect	text870,local,class=CODE,delta=2
global __ptext870
__ptext870:

;; *************** function _SetTime_RTC *****************
;; Defined at:
;;		line 123 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
;; Parameters:    Size  Location     Type
;;  Mode            1    wreg     unsigned char 
;;  Hours           1    8[COMMON] unsigned char 
;;  Minutes         1    9[COMMON] unsigned char 
;;  Seconds         1   10[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Mode            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbmod
;;		___lbdiv
;;		_WriteBTo_RTC
;; This function is called by:
;;		_tastaApasata
;; This function uses a non-reentrant model
;;
psect	text870
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
	line	123
	global	__size_of_SetTime_RTC
	__size_of_SetTime_RTC	equ	__end_of_SetTime_RTC-_SetTime_RTC
	
_SetTime_RTC:	
	opt	stack 4
; Regs used in _SetTime_RTC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;SetTime_RTC@Mode stored from wreg
	line	125
	movwf	(SetTime_RTC@Mode)
	
l8253:	
;DS1307.c: 125: RTCArray[0] = (((unsigned char)(Seconds/10))<<4)|((unsigned char)(Seconds%10));
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(SetTime_RTC@Seconds),w
	fcall	___lbmod
	movwf	(??_SetTime_RTC+0)+0
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(SetTime_RTC@Seconds),w
	fcall	___lbdiv
	movwf	(??_SetTime_RTC+1)+0
	swapf	(??_SetTime_RTC+1)+0,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	0+(??_SetTime_RTC+0)+0,w
	movwf	(_RTCArray)
	line	126
;DS1307.c: 126: RTCArray[1] = (((unsigned char)(Minutes/10))<<4)|((unsigned char)(Minutes%10));
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(SetTime_RTC@Minutes),w
	fcall	___lbmod
	movwf	(??_SetTime_RTC+0)+0
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(SetTime_RTC@Minutes),w
	fcall	___lbdiv
	movwf	(??_SetTime_RTC+1)+0
	swapf	(??_SetTime_RTC+1)+0,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	0+(??_SetTime_RTC+0)+0,w
	movwf	0+(_RTCArray)+01h
	line	127
;DS1307.c: 127: RTCArray[2] = (((unsigned char)(Hours/10))<<4) |((unsigned char)(Hours%10));
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(SetTime_RTC@Hours),w
	fcall	___lbmod
	movwf	(??_SetTime_RTC+0)+0
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(SetTime_RTC@Hours),w
	fcall	___lbdiv
	movwf	(??_SetTime_RTC+1)+0
	swapf	(??_SetTime_RTC+1)+0,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	0+(??_SetTime_RTC+0)+0,w
	movwf	0+(_RTCArray)+02h
	line	129
;DS1307.c: 129: switch(Mode)
	goto	l8259
	line	131
;DS1307.c: 130: {
;DS1307.c: 131: case 0: RTCArray[2] |= 0x40; break;
	
l2927:	
	bsf	0+(_RTCArray)+02h+(6/8),(6)&7
	goto	l8261
	line	132
	
l8255:	
	movlw	(060h)
	iorwf	0+(_RTCArray)+02h,f
	goto	l8261
	line	129
	
l8259:	
	movf	(SetTime_RTC@Mode),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             6     6 (fixed)
; spacedrange           10     9 (fixed)
; locatedrange           2     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2927
	xorlw	1^0	; case 1
	skipnz
	goto	l8255
	goto	l8261
	opt asmopt_on

	line	138
	
l8261:	
;DS1307.c: 138: WriteBTo_RTC(0x00, RTCArray, 3);
	movlw	(_RTCArray)&0ffh
	movwf	(?_WriteBTo_RTC)
	movlw	(03h)
	movwf	0+(?_WriteBTo_RTC)+01h
	movlw	(0)
	fcall	_WriteBTo_RTC
	line	139
	
l2931:	
	return
	opt stack 0
GLOBAL	__end_of_SetTime_RTC
	__end_of_SetTime_RTC:
;; =============== function _SetTime_RTC ends ============

	signat	_SetTime_RTC,16504
	global	_GetTime_RTC
psect	text871,local,class=CODE,delta=2
global __ptext871
__ptext871:

;; *************** function _GetTime_RTC *****************
;; Defined at:
;;		line 149 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ReadBFrom_RTC
;;		___bmul
;; This function is called by:
;;		_main
;;		_verificareOreSonerie
;;		_afiareDefault
;; This function uses a non-reentrant model
;;
psect	text871
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
	line	149
	global	__size_of_GetTime_RTC
	__size_of_GetTime_RTC	equ	__end_of_GetTime_RTC-_GetTime_RTC
	
_GetTime_RTC:	
	opt	stack 4
; Regs used in _GetTime_RTC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	151
	
l8221:	
;DS1307.c: 151: ReadBFrom_RTC(0x00, RTCArray, 3);
	movlw	(_RTCArray)&0ffh
	movwf	(?_ReadBFrom_RTC)
	movlw	03h
	movwf	0+(?_ReadBFrom_RTC)+01h
	clrf	1+(?_ReadBFrom_RTC)+01h
	movlw	(0)
	fcall	_ReadBFrom_RTC
	line	154
	
l8223:	
;DS1307.c: 154: Temp = RTCArray[0];
	movf	(_RTCArray),w
	movwf	(_Temp)
	line	155
	
l8225:	
;DS1307.c: 155: RTCArray[0] = ((Temp&0x7F)>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(?___bmul)
	swapf	(_Temp),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	07h
	fcall	___bmul
	movwf	(??_GetTime_RTC+0)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_GetTime_RTC+0)+0,w
	movwf	(_RTCArray)
	line	158
	
l8227:	
;DS1307.c: 158: Temp = RTCArray[1];
	movf	0+(_RTCArray)+01h,w
	movwf	(_Temp)
	line	159
	
l8229:	
;DS1307.c: 159: RTCArray[1] = (Temp>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(?___bmul)
	swapf	(_Temp),w
	andlw	(0ffh shr 4) & 0ffh
	fcall	___bmul
	movwf	(??_GetTime_RTC+0)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_GetTime_RTC+0)+0,w
	movwf	0+(_RTCArray)+01h
	line	162
	
l8231:	
;DS1307.c: 162: if(RTCArray[2]&0x40)
	btfss	0+(_RTCArray)+02h,(6)&7
	goto	u1961
	goto	u1960
u1961:
	goto	l8243
u1960:
	line	164
	
l8233:	
;DS1307.c: 163: {
;DS1307.c: 164: if(RTCArray[2]&0x20)
	btfss	0+(_RTCArray)+02h,(5)&7
	goto	u1971
	goto	u1970
u1971:
	goto	l8237
u1970:
	line	165
	
l8235:	
;DS1307.c: 165: RTCArray[3] = 1;
	clrf	0+(_RTCArray)+03h
	incf	0+(_RTCArray)+03h,f
	goto	l8239
	line	167
	
l8237:	
;DS1307.c: 166: else
;DS1307.c: 167: RTCArray[3] = 0;
	clrf	0+(_RTCArray)+03h
	line	169
	
l8239:	
;DS1307.c: 169: Temp =RTCArray[2];
	movf	0+(_RTCArray)+02h,w
	movwf	(_Temp)
	line	170
	
l8241:	
;DS1307.c: 170: RTCArray[2] = ((Temp&0x1F)>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(?___bmul)
	swapf	(_Temp),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	01h
	fcall	___bmul
	movwf	(??_GetTime_RTC+0)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_GetTime_RTC+0)+0,w
	movwf	0+(_RTCArray)+02h
	line	171
;DS1307.c: 171: }
	goto	l8249
	line	174
	
l8243:	
;DS1307.c: 172: else
;DS1307.c: 173: {
;DS1307.c: 174: Temp = RTCArray[2];
	movf	0+(_RTCArray)+02h,w
	movwf	(_Temp)
	line	175
	
l8245:	
;DS1307.c: 175: RTCArray[2] = (Temp>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(?___bmul)
	swapf	(_Temp),w
	andlw	(0ffh shr 4) & 0ffh
	fcall	___bmul
	movwf	(??_GetTime_RTC+0)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_GetTime_RTC+0)+0,w
	movwf	0+(_RTCArray)+02h
	line	176
	
l8247:	
;DS1307.c: 176: RTCArray[3] = 2;
	movlw	(02h)
	movwf	0+(_RTCArray)+03h
	line	179
	
l8249:	
;DS1307.c: 177: }
;DS1307.c: 179: return RTCArray;
	movlw	(_RTCArray)&0ffh
	line	180
	
l2938:	
	return
	opt stack 0
GLOBAL	__end_of_GetTime_RTC
	__end_of_GetTime_RTC:
;; =============== function _GetTime_RTC ends ============

	signat	_GetTime_RTC,89
	global	_writeChar
psect	text872,local,class=CODE,delta=2
global __ptext872
__ptext872:

;; *************** function _writeChar *****************
;; Defined at:
;;		line 28 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDChar         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDChar         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulseEpin
;; This function is called by:
;;		_writeString
;;		_DisplayTimeToLCD
;;		_DisplayDateOnLCD
;;		_tastaApasata
;;		_disp_num
;; This function uses a non-reentrant model
;;
psect	text872
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
	line	28
	global	__size_of_writeChar
	__size_of_writeChar	equ	__end_of_writeChar-_writeChar
	
_writeChar:	
	opt	stack 3
; Regs used in _writeChar: [wreg+status,2+status,0+pclath+cstack]
;writeChar@LCDChar stored from wreg
	movwf	(writeChar@LCDChar)
	line	29
	
l8209:	
;LCD.c: 29: RD1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	31
	
l8211:	
;LCD.c: 31: PORTD &= 0x0F;
	movlw	(0Fh)
	andwf	(8),f	;volatile
	line	32
;LCD.c: 32: PORTD |= (LCDChar&0xF0);
	movf	(writeChar@LCDChar),w
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	33
	
l8213:	
;LCD.c: 33: pulseEpin();
	fcall	_pulseEpin
	line	35
	
l8215:	
;LCD.c: 35: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	36
	
l8217:	
;LCD.c: 36: PORTD |= ((LCDChar<<4)&0xF0);
	swapf	(writeChar@LCDChar),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	37
	
l8219:	
;LCD.c: 37: pulseEpin();
	fcall	_pulseEpin
	line	38
	
l1382:	
	return
	opt stack 0
GLOBAL	__end_of_writeChar
	__end_of_writeChar:
;; =============== function _writeChar ends ============

	signat	_writeChar,4216
	global	_writeCommand
psect	text873,local,class=CODE,delta=2
global __ptext873
__ptext873:

;; *************** function _writeCommand *****************
;; Defined at:
;;		line 14 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulseEpin
;; This function is called by:
;;		_initLCD
;;		_clearScreen
;;		_DisplayDateOnLCD
;; This function uses a non-reentrant model
;;
psect	text873
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
	line	14
	global	__size_of_writeCommand
	__size_of_writeCommand	equ	__end_of_writeCommand-_writeCommand
	
_writeCommand:	
	opt	stack 4
; Regs used in _writeCommand: [wreg+status,2+status,0+pclath+cstack]
;writeCommand@Command stored from wreg
	movwf	(writeCommand@Command)
	line	15
	
l8197:	
;LCD.c: 15: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	17
	
l8199:	
;LCD.c: 17: PORTD &= 0x0F;
	movlw	(0Fh)
	andwf	(8),f	;volatile
	line	18
;LCD.c: 18: PORTD |= (Command&0xF0);
	movf	(writeCommand@Command),w
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	19
	
l8201:	
;LCD.c: 19: pulseEpin();
	fcall	_pulseEpin
	line	21
	
l8203:	
;LCD.c: 21: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	22
	
l8205:	
;LCD.c: 22: PORTD |= ((Command<<4)&0xF0);
	swapf	(writeCommand@Command),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	23
	
l8207:	
;LCD.c: 23: pulseEpin();
	fcall	_pulseEpin
	line	24
	
l1379:	
	return
	opt stack 0
GLOBAL	__end_of_writeCommand
	__end_of_writeCommand:
;; =============== function _writeCommand ends ============

	signat	_writeCommand,4216
	global	_GetChar2
psect	text874,local,class=CODE,delta=2
global __ptext874
__ptext874:

;; *************** function _GetChar2 *****************
;; Defined at:
;;		line 125 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_readSwitches
;; This function is called by:
;;		_tastaApasata
;; This function uses a non-reentrant model
;;
psect	text874
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Keypad.c"
	line	125
	global	__size_of_GetChar2
	__size_of_GetChar2	equ	__end_of_GetChar2-_GetChar2
	
_GetChar2:	
	opt	stack 5
; Regs used in _GetChar2: [wreg+status,2+status,0+pclath+cstack]
	line	126
	
l8127:	
;Keypad.c: 126: char key = 'x';
	movlw	(078h)
	movwf	(GetChar2@key)
	line	129
;Keypad.c: 129: while(key == 'x'){
	goto	l8131
	line	130
	
l8129:	
;Keypad.c: 130: key = readSwitches();
	fcall	_readSwitches
	movwf	(GetChar2@key)
	line	129
	
l8131:	
	movf	(GetChar2@key),w
	xorlw	078h
	skipnz
	goto	u1851
	goto	u1850
u1851:
	goto	l8129
u1850:
	line	133
	
l8133:	
;Keypad.c: 131: }
;Keypad.c: 133: if(key == '0')
	movf	(GetChar2@key),w
	xorlw	030h
	skipz
	goto	u1861
	goto	u1860
u1861:
	goto	l8139
u1860:
	line	134
	
l8135:	
;Keypad.c: 134: return 0;
	clrf	(?_GetChar2)
	clrf	(?_GetChar2+1)
	goto	l724
	line	135
	
l8139:	
;Keypad.c: 135: if(key == '1')
	movf	(GetChar2@key),w
	xorlw	031h
	skipz
	goto	u1871
	goto	u1870
u1871:
	goto	l8145
u1870:
	line	136
	
l8141:	
;Keypad.c: 136: return 1;
	clrf	(?_GetChar2)
	incf	(?_GetChar2),f
	clrf	(?_GetChar2+1)
	goto	l724
	line	137
	
l8145:	
;Keypad.c: 137: if(key == '2')
	movf	(GetChar2@key),w
	xorlw	032h
	skipz
	goto	u1881
	goto	u1880
u1881:
	goto	l8151
u1880:
	line	138
	
l8147:	
;Keypad.c: 138: return 2;
	movlw	02h
	movwf	(?_GetChar2)
	clrf	(?_GetChar2+1)
	goto	l724
	line	139
	
l8151:	
;Keypad.c: 139: if(key == '3')
	movf	(GetChar2@key),w
	xorlw	033h
	skipz
	goto	u1891
	goto	u1890
u1891:
	goto	l8157
u1890:
	line	140
	
l8153:	
;Keypad.c: 140: return 3;
	movlw	03h
	movwf	(?_GetChar2)
	clrf	(?_GetChar2+1)
	goto	l724
	line	141
	
l8157:	
;Keypad.c: 141: if(key == '4')
	movf	(GetChar2@key),w
	xorlw	034h
	skipz
	goto	u1901
	goto	u1900
u1901:
	goto	l8163
u1900:
	line	142
	
l8159:	
;Keypad.c: 142: return 4;
	movlw	04h
	movwf	(?_GetChar2)
	clrf	(?_GetChar2+1)
	goto	l724
	line	143
	
l8163:	
;Keypad.c: 143: if(key == '5')
	movf	(GetChar2@key),w
	xorlw	035h
	skipz
	goto	u1911
	goto	u1910
u1911:
	goto	l8169
u1910:
	line	144
	
l8165:	
;Keypad.c: 144: return 5;
	movlw	05h
	movwf	(?_GetChar2)
	clrf	(?_GetChar2+1)
	goto	l724
	line	145
	
l8169:	
;Keypad.c: 145: if(key == '6')
	movf	(GetChar2@key),w
	xorlw	036h
	skipz
	goto	u1921
	goto	u1920
u1921:
	goto	l8175
u1920:
	line	146
	
l8171:	
;Keypad.c: 146: return 6;
	movlw	06h
	movwf	(?_GetChar2)
	clrf	(?_GetChar2+1)
	goto	l724
	line	147
	
l8175:	
;Keypad.c: 147: if(key == '7')
	movf	(GetChar2@key),w
	xorlw	037h
	skipz
	goto	u1931
	goto	u1930
u1931:
	goto	l8181
u1930:
	line	148
	
l8177:	
;Keypad.c: 148: return 7;
	movlw	07h
	movwf	(?_GetChar2)
	clrf	(?_GetChar2+1)
	goto	l724
	line	149
	
l8181:	
;Keypad.c: 149: if(key == '8')
	movf	(GetChar2@key),w
	xorlw	038h
	skipz
	goto	u1941
	goto	u1940
u1941:
	goto	l8187
u1940:
	line	150
	
l8183:	
;Keypad.c: 150: return 8;
	movlw	08h
	movwf	(?_GetChar2)
	clrf	(?_GetChar2+1)
	goto	l724
	line	151
	
l8187:	
;Keypad.c: 151: if(key == '9')
	movf	(GetChar2@key),w
	xorlw	039h
	skipz
	goto	u1951
	goto	u1950
u1951:
	goto	l8135
u1950:
	line	152
	
l8189:	
;Keypad.c: 152: return 9;
	movlw	09h
	movwf	(?_GetChar2)
	clrf	(?_GetChar2+1)
	line	156
	
l724:	
	return
	opt stack 0
GLOBAL	__end_of_GetChar2
	__end_of_GetChar2:
;; =============== function _GetChar2 ends ============

	signat	_GetChar2,90
	global	_GetChar
psect	text875,local,class=CODE,delta=2
global __ptext875
__ptext875:

;; *************** function _GetChar *****************
;; Defined at:
;;		line 106 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  contor          2    3[COMMON] unsigned int 
;;  key             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_readSwitches
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text875
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Keypad.c"
	line	106
	global	__size_of_GetChar
	__size_of_GetChar	equ	__end_of_GetChar-_GetChar
	
_GetChar:	
	opt	stack 6
; Regs used in _GetChar: [wreg+status,2+status,0+pclath+cstack]
	line	107
	
l8111:	
;Keypad.c: 107: char key = 'x';
	movlw	(078h)
	movwf	(GetChar@key)
	line	108
;Keypad.c: 108: unsigned int contor = 100;
	movlw	064h
	movwf	(GetChar@contor)
	clrf	(GetChar@contor+1)
	line	111
;Keypad.c: 111: while(key == 'x'){
	goto	l8121
	line	113
	
l8113:	
;Keypad.c: 113: key = readSwitches();
	fcall	_readSwitches
	movwf	(GetChar@key)
	line	114
	
l8115:	
;Keypad.c: 114: contor--;
	movlw	low(01h)
	subwf	(GetChar@contor),f
	movlw	high(01h)
	skipc
	decf	(GetChar@contor+1),f
	subwf	(GetChar@contor+1),f
	line	116
	
l8117:	
;Keypad.c: 116: if(!contor)
	movf	((GetChar@contor+1)),w
	iorwf	((GetChar@contor)),w
	skipz
	goto	u1831
	goto	u1830
u1831:
	goto	l8121
u1830:
	goto	l8123
	line	111
	
l8121:	
	movf	(GetChar@key),w
	xorlw	078h
	skipnz
	goto	u1841
	goto	u1840
u1841:
	goto	l8113
u1840:
	line	120
	
l8123:	
;Keypad.c: 118: }
;Keypad.c: 120: return key;
	movf	(GetChar@key),w
	line	122
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_GetChar
	__end_of_GetChar:
;; =============== function _GetChar ends ============

	signat	_GetChar,89
	global	_ReadBFrom_RTC
psect	text876,local,class=CODE,delta=2
global __ptext876
__ptext876:

;; *************** function _ReadBFrom_RTC *****************
;; Defined at:
;;		line 85 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
;; Parameters:    Size  Location     Type
;;  Address         1    wreg     unsigned char 
;;  pData           1    1[COMMON] PTR unsigned char 
;;		 -> RTCArray(4), 
;;  NOBytes         2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  Address         1    5[COMMON] unsigned char 
;;  i               2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Start_I2C
;;		_Write_I2C
;;		_Restart_I2C
;;		_Read_I2C
;;		_SendACK_I2C
;;		_SendNACK_I2C
;;		_Stop_I2C
;; This function is called by:
;;		_GetTime_RTC
;;		_GetDate_RTC
;; This function uses a non-reentrant model
;;
psect	text876
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
	line	85
	global	__size_of_ReadBFrom_RTC
	__size_of_ReadBFrom_RTC	equ	__end_of_ReadBFrom_RTC-_ReadBFrom_RTC
	
_ReadBFrom_RTC:	
	opt	stack 4
; Regs used in _ReadBFrom_RTC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;ReadBFrom_RTC@Address stored from wreg
	line	88
	movwf	(ReadBFrom_RTC@Address)
	
l8085:	
;DS1307.c: 86: unsigned int i;
;DS1307.c: 88: Start_I2C();
	fcall	_Start_I2C
	line	91
;DS1307.c: 91: while(Write_I2C(0xD0 + 0) == 1)
	
l8089:	
	movlw	(0D0h)
	fcall	_Write_I2C
	btfsc	status,0
	goto	u1811
	goto	u1810
u1811:
	goto	l8085
u1810:
	line	96
	
l8091:	
;DS1307.c: 94: }
;DS1307.c: 96: Write_I2C(Address);
	movf	(ReadBFrom_RTC@Address),w
	fcall	_Write_I2C
	line	97
	
l8093:	
;DS1307.c: 97: Restart_I2C();
	fcall	_Restart_I2C
	line	100
	
l8095:	
;DS1307.c: 100: Write_I2C(0xD0 + 1);
	movlw	(0D1h)
	fcall	_Write_I2C
	line	102
	
l8097:	
;DS1307.c: 102: pData[0] = Read_I2C();
	movf	(ReadBFrom_RTC@pData),w
	movwf	fsr0
	fcall	_Read_I2C
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	104
	
l8099:	
;DS1307.c: 104: for(i=1;i<NOBytes;i++)
	clrf	(ReadBFrom_RTC@i)
	incf	(ReadBFrom_RTC@i),f
	clrf	(ReadBFrom_RTC@i+1)
	goto	l8107
	line	106
	
l8101:	
;DS1307.c: 105: {
;DS1307.c: 106: SendACK_I2C();
	fcall	_SendACK_I2C
	line	107
	
l8103:	
;DS1307.c: 107: pData[i] = Read_I2C();
	movf	(ReadBFrom_RTC@i),w
	addwf	(ReadBFrom_RTC@pData),w
	movwf	(??_ReadBFrom_RTC+0)+0
	movf	0+(??_ReadBFrom_RTC+0)+0,w
	movwf	fsr0
	fcall	_Read_I2C
	movwf	indf
	line	104
	
l8105:	
	incf	(ReadBFrom_RTC@i),f
	skipnz
	incf	(ReadBFrom_RTC@i+1),f
	
l8107:	
	movf	(ReadBFrom_RTC@NOBytes+1),w
	subwf	(ReadBFrom_RTC@i+1),w
	skipz
	goto	u1825
	movf	(ReadBFrom_RTC@NOBytes),w
	subwf	(ReadBFrom_RTC@i),w
u1825:
	skipc
	goto	u1821
	goto	u1820
u1821:
	goto	l8101
u1820:
	line	110
	
l8109:	
;DS1307.c: 108: }
;DS1307.c: 110: SendNACK_I2C();
	fcall	_SendNACK_I2C
	line	111
;DS1307.c: 111: Stop_I2C();
	fcall	_Stop_I2C
	line	112
	
l2923:	
	return
	opt stack 0
GLOBAL	__end_of_ReadBFrom_RTC
	__end_of_ReadBFrom_RTC:
;; =============== function _ReadBFrom_RTC ends ============

	signat	_ReadBFrom_RTC,12408
	global	_WriteBTo_RTC
psect	text877,local,class=CODE,delta=2
global __ptext877
__ptext877:

;; *************** function _WriteBTo_RTC *****************
;; Defined at:
;;		line 61 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
;; Parameters:    Size  Location     Type
;;  Address         1    wreg     unsigned char 
;;  pData           1    1[COMMON] PTR unsigned char 
;;		 -> RTCArray(4), 
;;  NOBytes         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Address         1    5[COMMON] unsigned char 
;;  i               2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Start_I2C
;;		_Write_I2C
;;		_Stop_I2C
;; This function is called by:
;;		_SetTime_RTC
;;		_SetDate_RTC
;; This function uses a non-reentrant model
;;
psect	text877
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\DS1307.c"
	line	61
	global	__size_of_WriteBTo_RTC
	__size_of_WriteBTo_RTC	equ	__end_of_WriteBTo_RTC-_WriteBTo_RTC
	
_WriteBTo_RTC:	
	opt	stack 4
; Regs used in _WriteBTo_RTC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;WriteBTo_RTC@Address stored from wreg
	line	64
	movwf	(WriteBTo_RTC@Address)
	
l8067:	
;DS1307.c: 62: unsigned int i;
;DS1307.c: 64: Start_I2C();
	fcall	_Start_I2C
	line	67
;DS1307.c: 67: while(Write_I2C(0xD0 + 0) == 1)
	
l8071:	
	movlw	(0D0h)
	fcall	_Write_I2C
	btfsc	status,0
	goto	u1791
	goto	u1790
u1791:
	goto	l8067
u1790:
	line	72
	
l8073:	
;DS1307.c: 70: }
;DS1307.c: 72: Write_I2C(Address);
	movf	(WriteBTo_RTC@Address),w
	fcall	_Write_I2C
	line	74
	
l8075:	
;DS1307.c: 74: for(i=0;i<NOBytes;i++)
	clrf	(WriteBTo_RTC@i)
	clrf	(WriteBTo_RTC@i+1)
	goto	l8081
	line	75
	
l8077:	
;DS1307.c: 75: Write_I2C(pData[i]);
	movf	(WriteBTo_RTC@i),w
	addwf	(WriteBTo_RTC@pData),w
	movwf	(??_WriteBTo_RTC+0)+0
	movf	0+(??_WriteBTo_RTC+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_Write_I2C
	line	74
	
l8079:	
	incf	(WriteBTo_RTC@i),f
	skipnz
	incf	(WriteBTo_RTC@i+1),f
	
l8081:	
	movf	(WriteBTo_RTC@NOBytes),w
	movwf	(??_WriteBTo_RTC+0)+0
	clrf	(??_WriteBTo_RTC+0)+0+1
	movf	1+(??_WriteBTo_RTC+0)+0,w
	subwf	(WriteBTo_RTC@i+1),w
	skipz
	goto	u1805
	movf	0+(??_WriteBTo_RTC+0)+0,w
	subwf	(WriteBTo_RTC@i),w
u1805:
	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l8077
u1800:
	line	77
	
l8083:	
;DS1307.c: 77: Stop_I2C();
	fcall	_Stop_I2C
	line	78
	
l2914:	
	return
	opt stack 0
GLOBAL	__end_of_WriteBTo_RTC
	__end_of_WriteBTo_RTC:
;; =============== function _WriteBTo_RTC ends ============

	signat	_WriteBTo_RTC,12408
	global	_GetADCValue
psect	text878,local,class=CODE,delta=2
global __ptext878
__ptext878:

;; *************** function _GetADCValue *****************
;; Defined at:
;;		line 15 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\ADC.c"
;; Parameters:    Size  Location     Type
;;  Channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Channel         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_detectieIncendiu
;; This function uses a non-reentrant model
;;
psect	text878
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\ADC.c"
	line	15
	global	__size_of_GetADCValue
	__size_of_GetADCValue	equ	__end_of_GetADCValue-_GetADCValue
	
_GetADCValue:	
	opt	stack 6
; Regs used in _GetADCValue: [wreg+status,2+status,0]
;GetADCValue@Channel stored from wreg
	movwf	(GetADCValue@Channel)
	line	16
	
l8057:	
;ADC.c: 16: ADCON0 &= 0xc7;
	movlw	(0C7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	17
;ADC.c: 17: ADCON0 |= (Channel<<3);
	movf	(GetADCValue@Channel),w
	movwf	(??_GetADCValue+0)+0
	clrc
	rlf	(??_GetADCValue+0)+0,f
	clrc
	rlf	(??_GetADCValue+0)+0,f
	clrc
	rlf	(??_GetADCValue+0)+0,w
	iorwf	(31),f	;volatile
	line	19
	
l8059:	
;ADC.c: 19: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_GetADCValue+0)+0+1),f
	movlw	238
movwf	((??_GetADCValue+0)+0),f
u2437:
	decfsz	((??_GetADCValue+0)+0),f
	goto	u2437
	decfsz	((??_GetADCValue+0)+0+1),f
	goto	u2437
	clrwdt
opt asmopt_on

	line	21
	
l8061:	
;ADC.c: 21: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	23
;ADC.c: 23: while(GO_nDONE);
	
l4273:	
	btfsc	(250/8),(250)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l4273
u1780:
	line	25
	
l8063:	
;ADC.c: 25: return ((ADRESH<<8)+ADRESL);
	movf	(30),w	;volatile
	movwf	(?_GetADCValue+1)
	clrf	(?_GetADCValue)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(?_GetADCValue),f
	skipnc
	incf	(?_GetADCValue+1),f
	line	26
	
l4276:	
	return
	opt stack 0
GLOBAL	__end_of_GetADCValue
	__end_of_GetADCValue:
;; =============== function _GetADCValue ends ============

	signat	_GetADCValue,4218
	global	_pulseEpin
psect	text879,local,class=CODE,delta=2
global __ptext879
__ptext879:

;; *************** function _pulseEpin *****************
;; Defined at:
;;		line 5 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_writeCommand
;;		_writeChar
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text879
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\LCD.c"
	line	5
	global	__size_of_pulseEpin
	__size_of_pulseEpin	equ	__end_of_pulseEpin-_pulseEpin
	
_pulseEpin:	
	opt	stack 3
; Regs used in _pulseEpin: [wreg]
	line	6
	
l8051:	
;LCD.c: 6: RD0 = 1;
	bsf	(64/8),(64)&7
	line	7
	
l8053:	
;LCD.c: 7: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_pulseEpin+0)+0+1),f
	movlw	61
movwf	((??_pulseEpin+0)+0),f
u2447:
	decfsz	((??_pulseEpin+0)+0),f
	goto	u2447
	decfsz	((??_pulseEpin+0)+0+1),f
	goto	u2447
	nop2
opt asmopt_on

	line	8
	
l8055:	
;LCD.c: 8: RD0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	9
;LCD.c: 9: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_pulseEpin+0)+0+1),f
	movlw	61
movwf	((??_pulseEpin+0)+0),f
u2457:
	decfsz	((??_pulseEpin+0)+0),f
	goto	u2457
	decfsz	((??_pulseEpin+0)+0+1),f
	goto	u2457
	nop2
opt asmopt_on

	line	10
	
l1376:	
	return
	opt stack 0
GLOBAL	__end_of_pulseEpin
	__end_of_pulseEpin:
;; =============== function _pulseEpin ends ============

	signat	_pulseEpin,88
	global	_readSwitches
psect	text880,local,class=CODE,delta=2
global __ptext880
__ptext880:

;; *************** function _readSwitches *****************
;; Defined at:
;;		line 18 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GetChar
;;		_GetChar2
;; This function uses a non-reentrant model
;;
psect	text880
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Keypad.c"
	line	18
	global	__size_of_readSwitches
	__size_of_readSwitches	equ	__end_of_readSwitches-_readSwitches
	
_readSwitches:	
	opt	stack 5
; Regs used in _readSwitches: [wreg]
	line	19
	
l7949:	
;Keypad.c: 19: RB0 = 0; RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	bsf	(49/8),(49)&7
	line	20
;Keypad.c: 20: RB2 = 1; RB3 = 1;
	bsf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	line	22
;Keypad.c: 22: if (RB4 == 0) {
	btfsc	(52/8),(52)&7
	goto	u1461
	goto	u1460
u1461:
	goto	l646
u1460:
	line	23
	
l7951:	
;Keypad.c: 23: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2467:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2467
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2467
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2467
	nop2
opt asmopt_on

	line	24
;Keypad.c: 24: while (RB4==0);
	
l647:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u1471
	goto	u1470
u1471:
	goto	l647
u1470:
	line	25
	
l7953:	
;Keypad.c: 25: return '7';
	movlw	(037h)
	goto	l650
	line	26
	
l646:	
	line	27
;Keypad.c: 26: }
;Keypad.c: 27: if (RB5 == 0) {
	btfsc	(53/8),(53)&7
	goto	u1481
	goto	u1480
u1481:
	goto	l651
u1480:
	line	28
	
l7957:	
;Keypad.c: 28: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2477:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2477
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2477
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2477
	nop2
opt asmopt_on

	line	29
;Keypad.c: 29: while (RB5==0);
	
l652:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l652
u1490:
	line	30
	
l7959:	
;Keypad.c: 30: return '8'; }
	movlw	(038h)
	goto	l650
	
l651:	
	line	31
;Keypad.c: 31: if (RB6 == 0) {
	btfsc	(54/8),(54)&7
	goto	u1501
	goto	u1500
u1501:
	goto	l655
u1500:
	line	32
	
l7963:	
;Keypad.c: 32: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2487:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2487
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2487
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2487
	nop2
opt asmopt_on

	line	33
;Keypad.c: 33: while (RB6==0);
	
l656:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u1511
	goto	u1510
u1511:
	goto	l656
u1510:
	line	34
	
l7965:	
;Keypad.c: 34: return '9'; }
	movlw	(039h)
	goto	l650
	
l655:	
	line	35
;Keypad.c: 35: if (RB7 == 0) {
	btfsc	(55/8),(55)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l659
u1520:
	line	36
	
l7969:	
;Keypad.c: 36: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2497:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2497
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2497
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2497
	nop2
opt asmopt_on

	line	37
;Keypad.c: 37: while (RB7==0);
	
l660:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u1531
	goto	u1530
u1531:
	goto	l660
u1530:
	line	38
	
l7971:	
;Keypad.c: 38: return '/'; }
	movlw	(02Fh)
	goto	l650
	
l659:	
	line	40
;Keypad.c: 40: RB0 = 1; RB1 = 0;
	bsf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	41
;Keypad.c: 41: RB2 = 1; RB3 = 1;
	bsf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	line	43
;Keypad.c: 43: if (RB4 == 0) {
	btfsc	(52/8),(52)&7
	goto	u1541
	goto	u1540
u1541:
	goto	l663
u1540:
	line	44
	
l7975:	
;Keypad.c: 44: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2507:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2507
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2507
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2507
	nop2
opt asmopt_on

	line	45
;Keypad.c: 45: while (RB4==0);
	
l664:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l664
u1550:
	line	46
	
l7977:	
;Keypad.c: 46: return '4'; }
	movlw	(034h)
	goto	l650
	
l663:	
	line	47
;Keypad.c: 47: if (RB5 == 0) {
	btfsc	(53/8),(53)&7
	goto	u1561
	goto	u1560
u1561:
	goto	l667
u1560:
	line	48
	
l7981:	
;Keypad.c: 48: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2517:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2517
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2517
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2517
	nop2
opt asmopt_on

	line	49
;Keypad.c: 49: while (RB5==0);
	
l668:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u1571
	goto	u1570
u1571:
	goto	l668
u1570:
	line	50
	
l7983:	
;Keypad.c: 50: return '5'; }
	movlw	(035h)
	goto	l650
	
l667:	
	line	51
;Keypad.c: 51: if (RB6 == 0) {
	btfsc	(54/8),(54)&7
	goto	u1581
	goto	u1580
u1581:
	goto	l671
u1580:
	line	52
	
l7987:	
;Keypad.c: 52: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2527:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2527
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2527
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2527
	nop2
opt asmopt_on

	line	53
;Keypad.c: 53: while (RB6==0);
	
l672:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u1591
	goto	u1590
u1591:
	goto	l672
u1590:
	line	54
	
l7989:	
;Keypad.c: 54: return '6'; }
	movlw	(036h)
	goto	l650
	
l671:	
	line	55
;Keypad.c: 55: if (RB7 == 0) {
	btfsc	(55/8),(55)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l675
u1600:
	line	56
	
l7993:	
;Keypad.c: 56: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2537:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2537
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2537
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2537
	nop2
opt asmopt_on

	line	57
;Keypad.c: 57: while (RB7==0);
	
l676:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u1611
	goto	u1610
u1611:
	goto	l676
u1610:
	line	58
	
l7995:	
;Keypad.c: 58: return '*'; }
	movlw	(02Ah)
	goto	l650
	
l675:	
	line	60
;Keypad.c: 60: RB0 = 1; RB1 = 1;
	bsf	(48/8),(48)&7
	bsf	(49/8),(49)&7
	line	61
;Keypad.c: 61: RB2 = 0; RB3 = 1;
	bcf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	line	63
;Keypad.c: 63: if (RB4 == 0) {
	btfsc	(52/8),(52)&7
	goto	u1621
	goto	u1620
u1621:
	goto	l679
u1620:
	line	64
	
l7999:	
;Keypad.c: 64: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2547:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2547
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2547
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2547
	nop2
opt asmopt_on

	line	65
;Keypad.c: 65: while (RB4==0);
	
l680:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u1631
	goto	u1630
u1631:
	goto	l680
u1630:
	line	66
	
l8001:	
;Keypad.c: 66: return '1'; }
	movlw	(031h)
	goto	l650
	
l679:	
	line	67
;Keypad.c: 67: if (RB5 == 0) {
	btfsc	(53/8),(53)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l683
u1640:
	line	68
	
l8005:	
;Keypad.c: 68: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2557:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2557
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2557
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2557
	nop2
opt asmopt_on

	line	69
;Keypad.c: 69: while (RB5==0);
	
l684:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l684
u1650:
	line	70
	
l8007:	
;Keypad.c: 70: return '2'; }
	movlw	(032h)
	goto	l650
	
l683:	
	line	71
;Keypad.c: 71: if (RB6 == 0) {
	btfsc	(54/8),(54)&7
	goto	u1661
	goto	u1660
u1661:
	goto	l687
u1660:
	line	72
	
l8011:	
;Keypad.c: 72: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2567:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2567
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2567
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2567
	nop2
opt asmopt_on

	line	73
;Keypad.c: 73: while (RB6==0);
	
l688:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u1671
	goto	u1670
u1671:
	goto	l688
u1670:
	line	74
	
l8013:	
;Keypad.c: 74: return '3'; }
	movlw	(033h)
	goto	l650
	
l687:	
	line	75
;Keypad.c: 75: if (RB7 == 0) {
	btfsc	(55/8),(55)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l691
u1680:
	line	76
	
l8017:	
;Keypad.c: 76: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2577:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2577
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2577
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2577
	nop2
opt asmopt_on

	line	77
;Keypad.c: 77: while (RB7==0);
	
l692:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u1691
	goto	u1690
u1691:
	goto	l692
u1690:
	line	78
	
l8019:	
;Keypad.c: 78: return '-'; }
	movlw	(02Dh)
	goto	l650
	
l691:	
	line	80
;Keypad.c: 80: RB0 = 1; RB1 = 1;
	bsf	(48/8),(48)&7
	bsf	(49/8),(49)&7
	line	81
;Keypad.c: 81: RB2 = 1; RB3 = 0;
	bsf	(50/8),(50)&7
	bcf	(51/8),(51)&7
	line	83
;Keypad.c: 83: if (RB4 == 0) {
	btfsc	(52/8),(52)&7
	goto	u1701
	goto	u1700
u1701:
	goto	l695
u1700:
	line	84
	
l8023:	
;Keypad.c: 84: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2587:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2587
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2587
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2587
	nop2
opt asmopt_on

	line	85
;Keypad.c: 85: while (RB4==0);
	
l696:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u1711
	goto	u1710
u1711:
	goto	l696
u1710:
	line	86
	
l8025:	
;Keypad.c: 86: return 'C'; }
	movlw	(043h)
	goto	l650
	
l695:	
	line	87
;Keypad.c: 87: if (RB5 == 0) {
	btfsc	(53/8),(53)&7
	goto	u1721
	goto	u1720
u1721:
	goto	l699
u1720:
	line	88
	
l8029:	
;Keypad.c: 88: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2597:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2597
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2597
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2597
	nop2
opt asmopt_on

	line	89
;Keypad.c: 89: while (RB5==0);
	
l700:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u1731
	goto	u1730
u1731:
	goto	l700
u1730:
	line	90
	
l8031:	
;Keypad.c: 90: return '0'; }
	movlw	(030h)
	goto	l650
	
l699:	
	line	91
;Keypad.c: 91: if (RB6 == 0) {
	btfsc	(54/8),(54)&7
	goto	u1741
	goto	u1740
u1741:
	goto	l703
u1740:
	line	92
	
l8035:	
;Keypad.c: 92: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2607:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2607
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2607
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2607
	nop2
opt asmopt_on

	line	93
;Keypad.c: 93: while (RB6==0);
	
l704:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u1751
	goto	u1750
u1751:
	goto	l704
u1750:
	line	94
	
l8037:	
;Keypad.c: 94: return '='; }
	movlw	(03Dh)
	goto	l650
	
l703:	
	line	95
;Keypad.c: 95: if (RB7 == 0) {
	btfsc	(55/8),(55)&7
	goto	u1761
	goto	u1760
u1761:
	goto	l8047
u1760:
	line	96
	
l8041:	
;Keypad.c: 96: _delay((unsigned long)((250)*(20000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_readSwitches+0)+0+2),f
movlw	88
movwf	((??_readSwitches+0)+0+1),f
	movlw	94
movwf	((??_readSwitches+0)+0),f
u2617:
	decfsz	((??_readSwitches+0)+0),f
	goto	u2617
	decfsz	((??_readSwitches+0)+0+1),f
	goto	u2617
	decfsz	((??_readSwitches+0)+0+2),f
	goto	u2617
	nop2
opt asmopt_on

	line	97
;Keypad.c: 97: while (RB7==0);
	
l708:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l708
u1770:
	line	98
	
l8043:	
;Keypad.c: 98: return '+'; }
	movlw	(02Bh)
	goto	l650
	line	101
	
l8047:	
;Keypad.c: 101: return 'x';
	movlw	(078h)
	line	102
	
l650:	
	return
	opt stack 0
GLOBAL	__end_of_readSwitches
	__end_of_readSwitches:
;; =============== function _readSwitches ends ============

	signat	_readSwitches,89
	global	___awdiv
psect	text881,local,class=CODE,delta=2
global __ptext881
__ptext881:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] int 
;;  sign            1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_disp_num
;; This function uses a non-reentrant model
;;
psect	text881
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l7905:	
	clrf	(___awdiv@sign)
	line	10
	
l7907:	
	btfss	(___awdiv@divisor+1),7
	goto	u1391
	goto	u1390
u1391:
	goto	l7913
u1390:
	line	11
	
l7909:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l7911:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l7913:	
	btfss	(___awdiv@dividend+1),7
	goto	u1401
	goto	u1400
u1401:
	goto	l7919
u1400:
	line	15
	
l7915:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l7917:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l7919:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l7921:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1411
	goto	u1410
u1411:
	goto	l7941
u1410:
	line	20
	
l7923:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l7927
	line	22
	
l7925:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l7927:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1421
	goto	u1420
u1421:
	goto	l7925
u1420:
	line	26
	
l7929:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l7931:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1435
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1435:
	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l7937
u1430:
	line	28
	
l7933:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l7935:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l7937:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l7939:	
	decfsz	(___awdiv@counter),f
	goto	u1441
	goto	u1440
u1441:
	goto	l7929
u1440:
	line	34
	
l7941:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1450
	goto	l7945
u1450:
	line	35
	
l7943:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l7945:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l5069:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lbmod
psect	text882,local,class=CODE,delta=2
global __ptext882
__ptext882:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[COMMON] unsigned char 
;;  rem             1    4[COMMON] unsigned char 
;;  counter         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayTimeToLCD
;;		_DisplayDateOnLCD
;;		_main
;;		_verificareOreSonerie
;;		_SetTime_RTC
;;		_SetDate_RTC
;; This function uses a non-reentrant model
;;
psect	text882
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 5
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l7887:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l7889:	
	clrf	(___lbmod@rem)
	line	12
	
l7891:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1365:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1365
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l7893:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l7895:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1371
	goto	u1370
u1371:
	goto	l7899
u1370:
	line	15
	
l7897:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l7899:	
	decfsz	(___lbmod@counter),f
	goto	u1381
	goto	u1380
u1381:
	goto	l7891
u1380:
	line	17
	
l7901:	
	movf	(___lbmod@rem),w
	line	18
	
l4958:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text883,local,class=CODE,delta=2
global __ptext883
__ptext883:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[COMMON] unsigned char 
;;  quotient        1    3[COMMON] unsigned char 
;;  counter         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayTimeToLCD
;;		_DisplayDateOnLCD
;;		_main
;;		_verificareOreSonerie
;;		_SetTime_RTC
;;		_SetDate_RTC
;; This function uses a non-reentrant model
;;
psect	text883
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 5
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l7863:	
	clrf	(___lbdiv@quotient)
	line	10
	
l7865:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u1320
	goto	l7883
u1320:
	line	11
	
l7867:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l7871
	
l4947:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l7869:	
	incf	(___lbdiv@counter),f
	line	12
	
l7871:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1331
	goto	u1330
u1331:
	goto	l4947
u1330:
	line	16
	
l4949:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l7873:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1341
	goto	u1340
u1341:
	goto	l7879
u1340:
	line	19
	
l7875:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l7877:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l7879:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l7881:	
	decfsz	(___lbdiv@counter),f
	goto	u1351
	goto	u1350
u1351:
	goto	l4949
u1350:
	line	25
	
l7883:	
	movf	(___lbdiv@quotient),w
	line	26
	
l4952:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___lwdiv
psect	text884,local,class=CODE,delta=2
global __ptext884
__ptext884:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[COMMON] unsigned int 
;;  dividend        2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   10[COMMON] unsigned int 
;;  counter         1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_detectieIncendiu
;; This function uses a non-reentrant model
;;
psect	text884
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l7837:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l7839:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1281
	goto	u1280
u1281:
	goto	l7859
u1280:
	line	11
	
l7841:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l7845
	line	13
	
l7843:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l7845:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1291
	goto	u1290
u1291:
	goto	l7843
u1290:
	line	17
	
l7847:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l7849:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1305
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1305:
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l7855
u1300:
	line	19
	
l7851:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l7853:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l7855:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l7857:	
	decfsz	(___lwdiv@counter),f
	goto	u1311
	goto	u1310
u1311:
	goto	l7847
u1310:
	line	25
	
l7859:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l4932:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text885,local,class=CODE,delta=2
global __ptext885
__ptext885:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_tastaApasata
;;		_detectieIncendiu
;;		_verificareOreSonerie
;;		_disp_num
;; This function uses a non-reentrant model
;;
psect	text885
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l7821:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l7823:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1261
	goto	u1260
u1261:
	goto	l7827
u1260:
	line	8
	
l7825:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l7827:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l7829:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l7831:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1271
	goto	u1270
u1271:
	goto	l7823
u1270:
	line	12
	
l7833:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l4922:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text886,local,class=CODE,delta=2
global __ptext886
__ptext886:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    2[COMMON] unsigned char 
;;  product         1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_disp_num
;;		_GetTime_RTC
;;		_GetDate_RTC
;; This function uses a non-reentrant model
;;
psect	text886
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l7805:	
	clrf	(___bmul@product)
	line	7
	
l7807:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1241
	goto	u1240
u1241:
	goto	l7811
u1240:
	line	8
	
l7809:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l7811:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l7813:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l7815:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u1251
	goto	u1250
u1251:
	goto	l7807
u1250:
	line	12
	
l7817:	
	movf	(___bmul@product),w
	line	13
	
l4916:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_SendACK_I2C
psect	text887,local,class=CODE,delta=2
global __ptext887
__ptext887:

;; *************** function _SendACK_I2C *****************
;; Defined at:
;;		line 45 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadBFrom_RTC
;; This function uses a non-reentrant model
;;
psect	text887
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
	line	45
	global	__size_of_SendACK_I2C
	__size_of_SendACK_I2C	equ	__end_of_SendACK_I2C-_SendACK_I2C
	
_SendACK_I2C:	
	opt	stack 4
; Regs used in _SendACK_I2C: []
	line	46
	
l7803:	
;I2C.c: 46: ACKDT = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	47
;I2C.c: 47: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	48
;I2C.c: 48: while(!SSPIF);
	
l3606:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u1231
	goto	u1230
u1231:
	goto	l3606
u1230:
	
l3608:	
	line	49
;I2C.c: 49: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	50
	
l3609:	
	return
	opt stack 0
GLOBAL	__end_of_SendACK_I2C
	__end_of_SendACK_I2C:
;; =============== function _SendACK_I2C ends ============

	signat	_SendACK_I2C,88
	global	_SendNACK_I2C
psect	text888,local,class=CODE,delta=2
global __ptext888
__ptext888:

;; *************** function _SendNACK_I2C *****************
;; Defined at:
;;		line 55 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadBFrom_RTC
;; This function uses a non-reentrant model
;;
psect	text888
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
	line	55
	global	__size_of_SendNACK_I2C
	__size_of_SendNACK_I2C	equ	__end_of_SendNACK_I2C-_SendNACK_I2C
	
_SendNACK_I2C:	
	opt	stack 4
; Regs used in _SendNACK_I2C: []
	line	56
	
l7801:	
;I2C.c: 56: ACKDT = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	57
;I2C.c: 57: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	58
;I2C.c: 58: while(!SSPIF);
	
l3612:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u1221
	goto	u1220
u1221:
	goto	l3612
u1220:
	
l3614:	
	line	59
;I2C.c: 59: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	60
	
l3615:	
	return
	opt stack 0
GLOBAL	__end_of_SendNACK_I2C
	__end_of_SendNACK_I2C:
;; =============== function _SendNACK_I2C ends ============

	signat	_SendNACK_I2C,88
	global	_Read_I2C
psect	text889,local,class=CODE,delta=2
global __ptext889
__ptext889:

;; *************** function _Read_I2C *****************
;; Defined at:
;;		line 76 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadBFrom_RTC
;; This function uses a non-reentrant model
;;
psect	text889
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
	line	76
	global	__size_of_Read_I2C
	__size_of_Read_I2C	equ	__end_of_Read_I2C-_Read_I2C
	
_Read_I2C:	
	opt	stack 4
; Regs used in _Read_I2C: [wreg]
	line	77
	
l7795:	
;I2C.c: 77: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	78
;I2C.c: 78: while(!SSPIF);
	
l3624:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u1211
	goto	u1210
u1211:
	goto	l3624
u1210:
	
l3626:	
	line	79
;I2C.c: 79: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	81
	
l7797:	
;I2C.c: 81: return SSPBUF;
	movf	(19),w	;volatile
	line	82
	
l3627:	
	return
	opt stack 0
GLOBAL	__end_of_Read_I2C
	__end_of_Read_I2C:
;; =============== function _Read_I2C ends ============

	signat	_Read_I2C,89
	global	_Restart_I2C
psect	text890,local,class=CODE,delta=2
global __ptext890
__ptext890:

;; *************** function _Restart_I2C *****************
;; Defined at:
;;		line 27 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadBFrom_RTC
;; This function uses a non-reentrant model
;;
psect	text890
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
	line	27
	global	__size_of_Restart_I2C
	__size_of_Restart_I2C	equ	__end_of_Restart_I2C-_Restart_I2C
	
_Restart_I2C:	
	opt	stack 4
; Regs used in _Restart_I2C: []
	line	28
	
l7793:	
;I2C.c: 28: RSEN = 1;
	bsf	(1161/8)^080h,(1161)&7
	line	29
;I2C.c: 29: while(!SSPIF);
	
l3594:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l3594
u1200:
	
l3596:	
	line	30
;I2C.c: 30: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	31
	
l3597:	
	return
	opt stack 0
GLOBAL	__end_of_Restart_I2C
	__end_of_Restart_I2C:
;; =============== function _Restart_I2C ends ============

	signat	_Restart_I2C,88
	global	_Stop_I2C
psect	text891,local,class=CODE,delta=2
global __ptext891
__ptext891:

;; *************** function _Stop_I2C *****************
;; Defined at:
;;		line 36 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteBTo_RTC
;;		_ReadBFrom_RTC
;; This function uses a non-reentrant model
;;
psect	text891
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
	line	36
	global	__size_of_Stop_I2C
	__size_of_Stop_I2C	equ	__end_of_Stop_I2C-_Stop_I2C
	
_Stop_I2C:	
	opt	stack 4
; Regs used in _Stop_I2C: []
	line	37
	
l7791:	
;I2C.c: 37: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	38
;I2C.c: 38: while(!SSPIF);
	
l3600:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u1191
	goto	u1190
u1191:
	goto	l3600
u1190:
	
l3602:	
	line	39
;I2C.c: 39: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	40
	
l3603:	
	return
	opt stack 0
GLOBAL	__end_of_Stop_I2C
	__end_of_Stop_I2C:
;; =============== function _Stop_I2C ends ============

	signat	_Stop_I2C,88
	global	_Write_I2C
psect	text892,local,class=CODE,delta=2
global __ptext892
__ptext892:

;; *************** function _Write_I2C *****************
;; Defined at:
;;		line 65 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteBTo_RTC
;;		_ReadBFrom_RTC
;; This function uses a non-reentrant model
;;
psect	text892
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
	line	65
	global	__size_of_Write_I2C
	__size_of_Write_I2C	equ	__end_of_Write_I2C-_Write_I2C
	
_Write_I2C:	
	opt	stack 4
; Regs used in _Write_I2C: [wreg+status,2+status,0]
;Write_I2C@Byte stored from wreg
	movwf	(Write_I2C@Byte)
	line	66
	
l7783:	
;I2C.c: 66: SSPBUF = Byte;
	movf	(Write_I2C@Byte),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	67
;I2C.c: 67: while(!SSPIF);
	
l3618:	
	btfss	(99/8),(99)&7
	goto	u1171
	goto	u1170
u1171:
	goto	l3618
u1170:
	
l3620:	
	line	68
;I2C.c: 68: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	70
;I2C.c: 70: return ACKSTAT;
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u1181
	goto	u1180
u1181:
	goto	l7787
u1180:
	
l7785:	
	clrc
	
	goto	l3621
	
l7787:	
	setc
	
	line	71
	
l3621:	
	return
	opt stack 0
GLOBAL	__end_of_Write_I2C
	__end_of_Write_I2C:
;; =============== function _Write_I2C ends ============

	signat	_Write_I2C,4216
	global	_Start_I2C
psect	text893,local,class=CODE,delta=2
global __ptext893
__ptext893:

;; *************** function _Start_I2C *****************
;; Defined at:
;;		line 19 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteBTo_RTC
;;		_ReadBFrom_RTC
;; This function uses a non-reentrant model
;;
psect	text893
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
	line	19
	global	__size_of_Start_I2C
	__size_of_Start_I2C	equ	__end_of_Start_I2C-_Start_I2C
	
_Start_I2C:	
	opt	stack 4
; Regs used in _Start_I2C: []
	line	20
	
l7781:	
;I2C.c: 20: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	21
;I2C.c: 21: while(!SSPIF);
	
l3588:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u1161
	goto	u1160
u1161:
	goto	l3588
u1160:
	
l3590:	
	line	22
;I2C.c: 22: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	23
	
l3591:	
	return
	opt stack 0
GLOBAL	__end_of_Start_I2C
	__end_of_Start_I2C:
;; =============== function _Start_I2C ends ============

	signat	_Start_I2C,88
	global	_Init_I2C
psect	text894,local,class=CODE,delta=2
global __ptext894
__ptext894:

;; *************** function _Init_I2C *****************
;; Defined at:
;;		line 8 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text894
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\I2C.c"
	line	8
	global	__size_of_Init_I2C
	__size_of_Init_I2C	equ	__end_of_Init_I2C-_Init_I2C
	
_Init_I2C:	
	opt	stack 7
; Regs used in _Init_I2C: [wreg]
	line	9
	
l7777:	
;I2C.c: 9: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	10
;I2C.c: 10: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	12
	
l7779:	
;I2C.c: 12: SSPADD = ((20000000/4000)/100) - 1;
	movlw	(031h)
	movwf	(147)^080h	;volatile
	line	13
;I2C.c: 13: SSPSTAT = 0x80;
	movlw	(080h)
	movwf	(148)^080h	;volatile
	line	14
;I2C.c: 14: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	15
	
l3585:	
	return
	opt stack 0
GLOBAL	__end_of_Init_I2C
	__end_of_Init_I2C:
;; =============== function _Init_I2C ends ============

	signat	_Init_I2C,88
	global	_InitADC
psect	text895,local,class=CODE,delta=2
global __ptext895
__ptext895:

;; *************** function _InitADC *****************
;; Defined at:
;;		line 5 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text895
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\ADC.c"
	line	5
	global	__size_of_InitADC
	__size_of_InitADC	equ	__end_of_InitADC-_InitADC
	
_InitADC:	
	opt	stack 7
; Regs used in _InitADC: [wreg]
	line	6
	
l7775:	
;ADC.c: 6: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	8
;ADC.c: 8: TRISA = 0x2f;
	movlw	(02Fh)
	movwf	(133)^080h	;volatile
	line	9
;ADC.c: 9: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	10
;ADC.c: 10: ADCON0 = 0x81;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	11
	
l4270:	
	return
	opt stack 0
GLOBAL	__end_of_InitADC
	__end_of_InitADC:
;; =============== function _InitADC ends ============

	signat	_InitADC,88
	global	_InitKeypad
psect	text896,local,class=CODE,delta=2
global __ptext896
__ptext896:

;; *************** function _InitKeypad *****************
;; Defined at:
;;		line 8 in file "C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text896
	file	"C:\Users\nicolae\MPLABXProjects\SchoolBell2.X\Keypad.c"
	line	8
	global	__size_of_InitKeypad
	__size_of_InitKeypad	equ	__end_of_InitKeypad-_InitKeypad
	
_InitKeypad:	
	opt	stack 7
; Regs used in _InitKeypad: [wreg+status,2]
	line	9
	
l7769:	
;Keypad.c: 9: PORTB = 0x00;
	clrf	(6)	;volatile
	line	10
	
l7771:	
;Keypad.c: 10: TRISB = 0xF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	14
	
l7773:	
;Keypad.c: 14: OPTION_REG &= 0x7F;
	bcf	(129)^080h+(7/8),(7)&7	;volatile
	line	15
	
l643:	
	return
	opt stack 0
GLOBAL	__end_of_InitKeypad
	__end_of_InitKeypad:
;; =============== function _InitKeypad ends ============

	signat	_InitKeypad,88
psect	text897,local,class=CODE,delta=2
global __ptext897
__ptext897:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
