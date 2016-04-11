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
# 11 "C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\Main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_InitADC
	FNCALL	_main,_InitLCD
	FNCALL	_main,_ClearLCDScreen
	FNCALL	_main,_GetADCValue
	FNCALL	_main,___lwdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_WriteDataToLCD
	FNCALL	_ClearLCDScreen,_WriteCommandToLCD
	FNCALL	_InitLCD,_ToggleEpinOfLCD
	FNCALL	_InitLCD,_WriteCommandToLCD
	FNCALL	_WriteDataToLCD,_ToggleEpinOfLCD
	FNCALL	_WriteCommandToLCD,_ToggleEpinOfLCD
	FNROOT	_main
	global	_ADCON0
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISE
_TRISE	set	137
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISB6
_TRISB6	set	1078
	global	_TRISB7
_TRISB7	set	1079
	file	"ADC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
	global	?_ToggleEpinOfLCD
?_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	??_ToggleEpinOfLCD
??_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	?_WriteCommandToLCD
?_WriteCommandToLCD:	; 0 bytes @ 0x0
	global	?_WriteDataToLCD
?_WriteDataToLCD:	; 0 bytes @ 0x0
	global	?_InitLCD
?_InitLCD:	; 0 bytes @ 0x0
	global	?_ClearLCDScreen
?_ClearLCDScreen:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_GetADCValue
?_GetADCValue:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	2
	global	??_GetADCValue
??_GetADCValue:	; 0 bytes @ 0x2
	global	??_WriteCommandToLCD
??_WriteCommandToLCD:	; 0 bytes @ 0x2
	global	??_WriteDataToLCD
??_WriteDataToLCD:	; 0 bytes @ 0x2
	global	WriteCommandToLCD@Command
WriteCommandToLCD@Command:	; 1 bytes @ 0x2
	global	WriteDataToLCD@LCDChar
WriteDataToLCD@LCDChar:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	??_InitLCD
??_InitLCD:	; 0 bytes @ 0x3
	global	??_ClearLCDScreen
??_ClearLCDScreen:	; 0 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	GetADCValue@Channel
GetADCValue@Channel:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xA
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xA
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
	global	main@digit4
main@digit4:	; 2 bytes @ 0x4
	ds	2
	global	main@digit3
main@digit3:	; 2 bytes @ 0x6
	ds	2
	global	main@digit2
main@digit2:	; 2 bytes @ 0x8
	ds	2
	global	main@digit1
main@digit1:	; 2 bytes @ 0xA
	ds	2
	global	main@ADC_value
main@ADC_value:	; 2 bytes @ 0xC
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     14      14
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?_GetADCValue	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lwdiv
;;   _ClearLCDScreen->_WriteCommandToLCD
;;   _InitLCD->_WriteCommandToLCD
;;   _WriteDataToLCD->_ToggleEpinOfLCD
;;   _WriteCommandToLCD->_ToggleEpinOfLCD
;;   ___lwdiv->___wmul
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                14    14      0     725
;;                                              0 BANK0     14    14      0
;;                            _InitADC
;;                            _InitLCD
;;                     _ClearLCDScreen
;;                        _GetADCValue
;;                            ___lwdiv
;;                             ___wmul
;;                     _WriteDataToLCD
;; ---------------------------------------------------------------------------------
;; (1) _ClearLCDScreen                                       2     2      0      44
;;                                              3 COMMON     2     2      0
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (1) _InitLCD                                              3     3      0      44
;;                                              3 COMMON     3     3      0
;;                    _ToggleEpinOfLCD
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (1) _WriteDataToLCD                                       1     1      0      44
;;                                              2 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (2) _WriteCommandToLCD                                    1     1      0      44
;;                                              2 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (2) _ToggleEpinOfLCD                                      2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _GetADCValue                                          5     3      2      22
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              7     3      4     162
;;                                              6 COMMON     7     3      4
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (1) _InitADC                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitADC
;;   _InitLCD
;;     _ToggleEpinOfLCD
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _ClearLCDScreen
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _GetADCValue
;;   ___lwdiv
;;     ___wmul (ARG)
;;   ___wmul
;;   _WriteDataToLCD
;;     _ToggleEpinOfLCD
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      E       E       5       17.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 16 in file "C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ADC_value       2   12[BANK0 ] unsigned int 
;;  digit1          2   10[BANK0 ] unsigned int 
;;  digit2          2    8[BANK0 ] unsigned int 
;;  digit3          2    6[BANK0 ] unsigned int 
;;  digit4          2    4[BANK0 ] unsigned int 
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
;;      Locals:         0      10       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_InitADC
;;		_InitLCD
;;		_ClearLCDScreen
;;		_GetADCValue
;;		___lwdiv
;;		___wmul
;;		_WriteDataToLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\Main.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	17
	
l3407:	
	line	20
	
l3409:	
;Main.c: 18: unsigned int digit1, digit2, digit3, digit4;
;Main.c: 20: InitADC();
	fcall	_InitADC
	line	21
	
l3411:	
;Main.c: 21: InitLCD();
	fcall	_InitLCD
	line	25
	
l3413:	
;Main.c: 24: {
;Main.c: 25: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	26
	
l3415:	
;Main.c: 26: ADC_value = GetADCValue(7);
	movlw	(07h)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@ADC_value+1)
	movf	(0+(?_GetADCValue)),w
	movwf	(main@ADC_value)
	line	30
	
l3417:	
;Main.c: 30: digit1 = (unsigned int)(ADC_value/1000);
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(main@ADC_value+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(main@ADC_value),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@digit1+1)
	movf	(0+(?___lwdiv)),w
	movwf	(main@digit1)
	line	31
	
l3419:	
;Main.c: 31: digit2 = (unsigned int)((ADC_value - digit1*1000)/100);
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@digit1+1),w
	movwf	(?___wmul+1)
	movf	(main@digit1),w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(main@ADC_value),w
	addwf	(0+(?___wmul)),w
	movwf	0+(?___lwdiv)+02h
	movf	(main@ADC_value+1),w
	skipnc
	incf	(main@ADC_value+1),w
	addwf	(1+(?___wmul)),w
	movwf	1+0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@digit2+1)
	movf	(0+(?___lwdiv)),w
	movwf	(main@digit2)
	line	32
	
l3421:	
;Main.c: 32: digit3 = (unsigned int)((ADC_value - (digit1*1000+digit2*100))/10);
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@digit1+1),w
	movwf	(?___wmul+1)
	movf	(main@digit1),w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+?___wmul),w
	movwf	(??_main+0)+0
	movf	(1+?___wmul),w
	movwf	((??_main+0)+0+1)
	movf	(main@digit2+1),w
	movwf	(?___wmul+1)
	movf	(main@digit2),w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(??_main+2)+0
	movf	(main@ADC_value),w
	addwf	0+(??_main+2)+0,w
	movwf	0+(?___lwdiv)+02h
	movf	(main@ADC_value+1),w
	skipnc
	incf	(main@ADC_value+1),w
	addwf	1+(??_main+2)+0,w
	movwf	1+0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@digit3+1)
	movf	(0+(?___lwdiv)),w
	movwf	(main@digit3)
	line	33
	
l3423:	
;Main.c: 33: digit4 = (unsigned int)(ADC_value - (digit1*1000+digit2*100+digit3*10));
	movf	(main@digit3+1),w
	movwf	(?___wmul+1)
	movf	(main@digit3),w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@digit4+1)
	movf	(0+(?___wmul)),w
	movwf	(main@digit4)
	
l3425:	
	movf	(main@digit2+1),w
	movwf	(?___wmul+1)
	movf	(main@digit2),w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@digit4),f
	skipnc
	incf	(main@digit4+1),f
	movf	(1+(?___wmul)),w
	addwf	(main@digit4+1),f
	
l3427:	
	movf	(main@digit1+1),w
	movwf	(?___wmul+1)
	movf	(main@digit1),w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@digit4),f
	skipnc
	incf	(main@digit4+1),f
	movf	(1+(?___wmul)),w
	addwf	(main@digit4+1),f
	
l3429:	
	movf	(main@ADC_value),w
	addwf	(main@digit4),f
	skipnc
	incf	(main@digit4+1),f
	movf	(main@ADC_value+1),w
	addwf	(main@digit4+1),f
	line	35
	
l3431:	
;Main.c: 35: WriteDataToLCD(digit1+0x30);
	movf	(main@digit1),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	36
	
l3433:	
;Main.c: 36: WriteDataToLCD(digit2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@digit2),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	37
	
l3435:	
;Main.c: 37: WriteDataToLCD(digit3+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@digit3),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	38
	
l3437:	
;Main.c: 38: WriteDataToLCD(digit4+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@digit4),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	40
	
l3439:	
;Main.c: 40: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u157:
	decfsz	((??_main+0)+0),f
	goto	u157
	decfsz	((??_main+0)+0+1),f
	goto	u157
	decfsz	((??_main+0)+0+2),f
	goto	u157
	clrwdt
opt asmopt_on

	goto	l3413
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	42
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ClearLCDScreen
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function _ClearLCDScreen *****************
;; Defined at:
;;		line 99 in file "C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\LCD.c"
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
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text195
	file	"C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\LCD.c"
	line	99
	global	__size_of_ClearLCDScreen
	__size_of_ClearLCDScreen	equ	__end_of_ClearLCDScreen-_ClearLCDScreen
	
_ClearLCDScreen:	
	opt	stack 5
; Regs used in _ClearLCDScreen: [wreg+status,2+status,0+pclath+cstack]
	line	100
	
l3403:	
;LCD.c: 100: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	101
	
l3405:	
;LCD.c: 101: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_ClearLCDScreen+0)+0+1),f
	movlw	251
movwf	((??_ClearLCDScreen+0)+0),f
u167:
	decfsz	((??_ClearLCDScreen+0)+0),f
	goto	u167
	decfsz	((??_ClearLCDScreen+0)+0+1),f
	goto	u167
	nop2
opt asmopt_on

	line	102
	
l1310:	
	return
	opt stack 0
GLOBAL	__end_of_ClearLCDScreen
	__end_of_ClearLCDScreen:
;; =============== function _ClearLCDScreen ends ============

	signat	_ClearLCDScreen,88
	global	_InitLCD
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:

;; *************** function _InitLCD *****************
;; Defined at:
;;		line 42 in file "C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\LCD.c"
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
;;		_ToggleEpinOfLCD
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text196
	file	"C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\LCD.c"
	line	42
	global	__size_of_InitLCD
	__size_of_InitLCD	equ	__end_of_InitLCD-_InitLCD
	
_InitLCD:	
	opt	stack 5
; Regs used in _InitLCD: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l3363:	
;LCD.c: 44: RB0 = 0;
	bcf	(48/8),(48)&7
	line	45
;LCD.c: 45: RB1 = 0;
	bcf	(49/8),(49)&7
	line	46
;LCD.c: 46: RB4 = 0;
	bcf	(52/8),(52)&7
	line	47
;LCD.c: 47: RB5 = 0;
	bcf	(53/8),(53)&7
	line	48
;LCD.c: 48: RB6 = 0;
	bcf	(54/8),(54)&7
	line	49
;LCD.c: 49: RB7 = 0;
	bcf	(55/8),(55)&7
	line	50
;LCD.c: 50: TRISB0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1072/8)^080h,(1072)&7
	line	51
;LCD.c: 51: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	52
;LCD.c: 52: TRISB4 = 0;
	bcf	(1076/8)^080h,(1076)&7
	line	53
;LCD.c: 53: TRISB5 = 0;
	bcf	(1077/8)^080h,(1077)&7
	line	54
;LCD.c: 54: TRISB6 = 0;
	bcf	(1078/8)^080h,(1078)&7
	line	55
;LCD.c: 55: TRISB7 = 0;
	bcf	(1079/8)^080h,(1079)&7
	line	58
	
l3365:	
;LCD.c: 58: _delay((unsigned long)((40)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_InitLCD+0)+0+2),f
movlw	4
movwf	((??_InitLCD+0)+0+1),f
	movlw	186
movwf	((??_InitLCD+0)+0),f
u177:
	decfsz	((??_InitLCD+0)+0),f
	goto	u177
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u177
	decfsz	((??_InitLCD+0)+0+2),f
	goto	u177
	clrwdt
opt asmopt_on

	line	60
	
l3367:	
;LCD.c: 60: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	61
	
l3369:	
;LCD.c: 61: PORTB |= 0x30;
	movlw	(030h)
	iorwf	(6),f	;volatile
	line	62
	
l3371:	
;LCD.c: 62: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	64
	
l3373:	
;LCD.c: 64: _delay((unsigned long)((6)*(20000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_InitLCD+0)+0+1),f
	movlw	245
movwf	((??_InitLCD+0)+0),f
u187:
	decfsz	((??_InitLCD+0)+0),f
	goto	u187
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u187
opt asmopt_on

	line	66
	
l3375:	
;LCD.c: 66: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	67
	
l3377:	
;LCD.c: 67: PORTB |= 0x30;
	movlw	(030h)
	iorwf	(6),f	;volatile
	line	68
;LCD.c: 68: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	70
	
l3379:	
;LCD.c: 70: _delay((unsigned long)((300)*(20000000/4000000.0)));
	opt asmopt_off
movlw	214
movwf	(??_InitLCD+0)+0,f
u197:
	nop2
	nop2
decfsz	(??_InitLCD+0)+0,f
	goto	u197
	clrwdt
opt asmopt_on

	line	72
	
l3381:	
;LCD.c: 72: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	73
	
l3383:	
;LCD.c: 73: PORTB |= 0x30;
	movlw	(030h)
	iorwf	(6),f	;volatile
	line	74
	
l3385:	
;LCD.c: 74: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	76
;LCD.c: 76: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u207:
	decfsz	((??_InitLCD+0)+0),f
	goto	u207
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u207
	nop2
opt asmopt_on

	line	78
	
l3387:	
;LCD.c: 78: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	79
	
l3389:	
;LCD.c: 79: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	line	80
	
l3391:	
;LCD.c: 80: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	82
	
l3393:	
;LCD.c: 82: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u217:
	decfsz	((??_InitLCD+0)+0),f
	goto	u217
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u217
	nop2
opt asmopt_on

	line	84
	
l3395:	
;LCD.c: 84: WriteCommandToLCD(0x28);
	movlw	(028h)
	fcall	_WriteCommandToLCD
	line	85
	
l3397:	
;LCD.c: 85: WriteCommandToLCD(0x0c);
	movlw	(0Ch)
	fcall	_WriteCommandToLCD
	line	86
	
l3399:	
;LCD.c: 86: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	87
	
l3401:	
;LCD.c: 87: WriteCommandToLCD(0x06);
	movlw	(06h)
	fcall	_WriteCommandToLCD
	line	88
	
l1301:	
	return
	opt stack 0
GLOBAL	__end_of_InitLCD
	__end_of_InitLCD:
;; =============== function _InitLCD ends ============

	signat	_InitLCD,88
	global	_WriteDataToLCD
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function _WriteDataToLCD *****************
;; Defined at:
;;		line 28 in file "C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDChar         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDChar         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
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
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text197
	file	"C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\LCD.c"
	line	28
	global	__size_of_WriteDataToLCD
	__size_of_WriteDataToLCD	equ	__end_of_WriteDataToLCD-_WriteDataToLCD
	
_WriteDataToLCD:	
	opt	stack 6
; Regs used in _WriteDataToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteDataToLCD@LCDChar stored from wreg
	movwf	(WriteDataToLCD@LCDChar)
	line	29
	
l3351:	
;LCD.c: 29: RB1 = 1;
	bsf	(49/8),(49)&7
	line	31
	
l3353:	
;LCD.c: 31: PORTB &= 0x0F;
	movlw	(0Fh)
	andwf	(6),f	;volatile
	line	32
;LCD.c: 32: PORTB |= (LCDChar&0xF0);
	movf	(WriteDataToLCD@LCDChar),w
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	33
	
l3355:	
;LCD.c: 33: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	35
	
l3357:	
;LCD.c: 35: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	36
	
l3359:	
;LCD.c: 36: PORTB |= ((LCDChar<<4)&0xF0);
	swapf	(WriteDataToLCD@LCDChar),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	37
	
l3361:	
;LCD.c: 37: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	38
	
l1298:	
	return
	opt stack 0
GLOBAL	__end_of_WriteDataToLCD
	__end_of_WriteDataToLCD:
;; =============== function _WriteDataToLCD ends ============

	signat	_WriteDataToLCD,4216
	global	_WriteCommandToLCD
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:

;; *************** function _WriteCommandToLCD *****************
;; Defined at:
;;		line 14 in file "C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\LCD.c"
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
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_InitLCD
;;		_ClearLCDScreen
;; This function uses a non-reentrant model
;;
psect	text198
	file	"C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\LCD.c"
	line	14
	global	__size_of_WriteCommandToLCD
	__size_of_WriteCommandToLCD	equ	__end_of_WriteCommandToLCD-_WriteCommandToLCD
	
_WriteCommandToLCD:	
	opt	stack 5
; Regs used in _WriteCommandToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteCommandToLCD@Command stored from wreg
	movwf	(WriteCommandToLCD@Command)
	line	15
	
l3339:	
;LCD.c: 15: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	17
	
l3341:	
;LCD.c: 17: PORTB &= 0x0F;
	movlw	(0Fh)
	andwf	(6),f	;volatile
	line	18
;LCD.c: 18: PORTB |= (Command&0xF0);
	movf	(WriteCommandToLCD@Command),w
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	19
	
l3343:	
;LCD.c: 19: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	21
	
l3345:	
;LCD.c: 21: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	22
	
l3347:	
;LCD.c: 22: PORTB |= ((Command<<4)&0xF0);
	swapf	(WriteCommandToLCD@Command),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	23
	
l3349:	
;LCD.c: 23: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	24
	
l1295:	
	return
	opt stack 0
GLOBAL	__end_of_WriteCommandToLCD
	__end_of_WriteCommandToLCD:
;; =============== function _WriteCommandToLCD ends ============

	signat	_WriteCommandToLCD,4216
	global	_ToggleEpinOfLCD
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:

;; *************** function _ToggleEpinOfLCD *****************
;; Defined at:
;;		line 5 in file "C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\LCD.c"
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
;;		_WriteCommandToLCD
;;		_WriteDataToLCD
;;		_InitLCD
;; This function uses a non-reentrant model
;;
psect	text199
	file	"C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\LCD.c"
	line	5
	global	__size_of_ToggleEpinOfLCD
	__size_of_ToggleEpinOfLCD	equ	__end_of_ToggleEpinOfLCD-_ToggleEpinOfLCD
	
_ToggleEpinOfLCD:	
	opt	stack 6
; Regs used in _ToggleEpinOfLCD: [wreg]
	line	6
	
l3333:	
;LCD.c: 6: RB0 = 1;
	bsf	(48/8),(48)&7
	line	7
	
l3335:	
;LCD.c: 7: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ToggleEpinOfLCD+0)+0+1),f
	movlw	61
movwf	((??_ToggleEpinOfLCD+0)+0),f
u227:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u227
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u227
	nop2
opt asmopt_on

	line	8
	
l3337:	
;LCD.c: 8: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	9
;LCD.c: 9: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ToggleEpinOfLCD+0)+0+1),f
	movlw	61
movwf	((??_ToggleEpinOfLCD+0)+0),f
u237:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u237
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u237
	nop2
opt asmopt_on

	line	10
	
l1292:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleEpinOfLCD
	__end_of_ToggleEpinOfLCD:
;; =============== function _ToggleEpinOfLCD ends ============

	signat	_ToggleEpinOfLCD,88
	global	_GetADCValue
psect	text200,local,class=CODE,delta=2
global __ptext200
__ptext200:

;; *************** function _GetADCValue *****************
;; Defined at:
;;		line 31 in file "C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\ADC.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text200
	file	"C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\ADC.c"
	line	31
	global	__size_of_GetADCValue
	__size_of_GetADCValue	equ	__end_of_GetADCValue-_GetADCValue
	
_GetADCValue:	
	opt	stack 7
; Regs used in _GetADCValue: [wreg+status,2+status,0]
;GetADCValue@Channel stored from wreg
	movwf	(GetADCValue@Channel)
	line	32
	
l3323:	
;ADC.c: 32: ADCON0 &= 0xc7;
	movlw	(0C7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	33
;ADC.c: 33: ADCON0 |= (Channel<<3);
	movf	(GetADCValue@Channel),w
	movwf	(??_GetADCValue+0)+0
	clrc
	rlf	(??_GetADCValue+0)+0,f
	clrc
	rlf	(??_GetADCValue+0)+0,f
	clrc
	rlf	(??_GetADCValue+0)+0,w
	iorwf	(31),f	;volatile
	line	35
	
l3325:	
;ADC.c: 35: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_GetADCValue+0)+0+1),f
	movlw	238
movwf	((??_GetADCValue+0)+0),f
u247:
	decfsz	((??_GetADCValue+0)+0),f
	goto	u247
	decfsz	((??_GetADCValue+0)+0+1),f
	goto	u247
	clrwdt
opt asmopt_on

	line	37
	
l3327:	
;ADC.c: 37: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	39
;ADC.c: 39: while(GO_nDONE);
	
l646:	
	btfsc	(250/8),(250)&7
	goto	u141
	goto	u140
u141:
	goto	l646
u140:
	line	41
	
l3329:	
;ADC.c: 41: return ((ADRESH<<8)+ADRESL);
	movf	(30),w	;volatile
	movwf	(?_GetADCValue+1)
	clrf	(?_GetADCValue)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(?_GetADCValue),f
	skipnc
	incf	(?_GetADCValue+1),f
	line	42
	
l649:	
	return
	opt stack 0
GLOBAL	__end_of_GetADCValue
	__end_of_GetADCValue:
;; =============== function _GetADCValue ends ============

	signat	_GetADCValue,4218
	global	___lwdiv
psect	text201,local,class=CODE,delta=2
global __ptext201
__ptext201:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text201
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3297:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3299:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u101
	goto	u100
u101:
	goto	l3319
u100:
	line	11
	
l3301:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3305
	line	13
	
l3303:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3305:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u111
	goto	u110
u111:
	goto	l3303
u110:
	line	17
	
l3307:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3309:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u125
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u125:
	skipc
	goto	u121
	goto	u120
u121:
	goto	l3315
u120:
	line	19
	
l3311:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3313:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3315:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3317:	
	decfsz	(___lwdiv@counter),f
	goto	u131
	goto	u130
u131:
	goto	l3307
u130:
	line	25
	
l3319:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2622:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text202,local,class=CODE,delta=2
global __ptext202
__ptext202:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text202
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3281:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l3283:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u81
	goto	u80
u81:
	goto	l3287
u80:
	line	8
	
l3285:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l3287:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l3289:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l3291:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l3283
u90:
	line	12
	
l3293:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2612:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_InitADC
psect	text203,local,class=CODE,delta=2
global __ptext203
__ptext203:

;; *************** function _InitADC *****************
;; Defined at:
;;		line 11 in file "C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\ADC.c"
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
psect	text203
	file	"C:\Users\Saeed\Desktop\PIC16F877 ADC Code\Code\ADC.c"
	line	11
	global	__size_of_InitADC
	__size_of_InitADC	equ	__end_of_InitADC-_InitADC
	
_InitADC:	
	opt	stack 7
; Regs used in _InitADC: [wreg]
	line	12
	
l3279:	
;ADC.c: 12: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	14
;ADC.c: 14: TRISA = 0x2f;
	movlw	(02Fh)
	movwf	(133)^080h	;volatile
	line	15
;ADC.c: 15: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	16
;ADC.c: 16: ADCON0 = 0x81;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	17
	
l643:	
	return
	opt stack 0
GLOBAL	__end_of_InitADC
	__end_of_InitADC:
;; =============== function _InitADC ends ============

	signat	_InitADC,88
psect	text204,local,class=CODE,delta=2
global __ptext204
__ptext204:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
