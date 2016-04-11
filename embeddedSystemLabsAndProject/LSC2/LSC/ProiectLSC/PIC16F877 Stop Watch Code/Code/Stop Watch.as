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
# 11 "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_InitLCD
	FNCALL	_main,_Init1msecTimerInterrupt
	FNCALL	_main,_UpdateTimeCounters
	FNCALL	_main,_DisplayTimeToLCD
	FNCALL	_DisplayTimeToLCD,_ClearLCDScreen
	FNCALL	_DisplayTimeToLCD,_WriteDataToLCD
	FNCALL	_DisplayTimeToLCD,___lwdiv
	FNCALL	_DisplayTimeToLCD,___lwmod
	FNCALL	_ClearLCDScreen,_WriteCommandToLCD
	FNCALL	_InitLCD,_ToggleEpinOfLCD
	FNCALL	_InitLCD,_WriteCommandToLCD
	FNCALL	_WriteDataToLCD,_ToggleEpinOfLCD
	FNCALL	_WriteCommandToLCD,_ToggleEpinOfLCD
	FNCALL	_Init1msecTimerInterrupt,_InitTimer0
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_secCounter
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Timer.c"
	line	6

;initializer for _secCounter
	retlw	0Ah
	retlw	0

	global	_hrCounter
	global	_msCounter
	global	_minCounter
	global	_PORTB
_PORTB	set	6
	global	_TMR0
_TMR0	set	1
	global	_GIE
_GIE	set	95
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
	global	_RD0
_RD0	set	64
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_ADCON1
_ADCON1	set	159
	global	_OPTION_REG
_OPTION_REG	set	129
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
	global	_TRISD0
_TRISD0	set	1088
	file	"Stop Watch.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_minCounter:
       ds      2

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Timer.c"
_secCounter:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_hrCounter:
       ds      2

_msCounter:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Init1msecTimerInterrupt
?_Init1msecTimerInterrupt:	; 0 bytes @ 0x0
	global	?_UpdateTimeCounters
?_UpdateTimeCounters:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_ToggleEpinOfLCD
?_ToggleEpinOfLCD:	; 0 bytes @ 0x0
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
	global	?_InitTimer0
?_InitTimer0:	; 0 bytes @ 0x0
	ds	2
	global	??_Init1msecTimerInterrupt
??_Init1msecTimerInterrupt:	; 0 bytes @ 0x2
	global	??_UpdateTimeCounters
??_UpdateTimeCounters:	; 0 bytes @ 0x2
	global	??_ToggleEpinOfLCD
??_ToggleEpinOfLCD:	; 0 bytes @ 0x2
	global	??_InitTimer0
??_InitTimer0:	; 0 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	UpdateTimeCounters@State
UpdateTimeCounters@State:	; 1 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	ds	1
	global	??_WriteCommandToLCD
??_WriteCommandToLCD:	; 0 bytes @ 0x3
	global	??_WriteDataToLCD
??_WriteDataToLCD:	; 0 bytes @ 0x3
	global	WriteCommandToLCD@Command
WriteCommandToLCD@Command:	; 1 bytes @ 0x3
	global	WriteDataToLCD@LCDChar
WriteDataToLCD@LCDChar:	; 1 bytes @ 0x3
	ds	1
	global	??_InitLCD
??_InitLCD:	; 0 bytes @ 0x4
	global	??_ClearLCDScreen
??_ClearLCDScreen:	; 0 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x6
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	ds	1
	global	??_DisplayTimeToLCD
??_DisplayTimeToLCD:	; 0 bytes @ 0x7
	global	??_main
??_main:	; 0 bytes @ 0x7
	global	main@State
main@State:	; 1 bytes @ 0x7
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	2
	global	?_DisplayTimeToLCD
?_DisplayTimeToLCD:	; 0 bytes @ 0x3
	global	DisplayTimeToLCD@h
DisplayTimeToLCD@h:	; 2 bytes @ 0x3
	ds	2
	global	DisplayTimeToLCD@m
DisplayTimeToLCD@m:	; 2 bytes @ 0x5
	ds	2
	global	DisplayTimeToLCD@s
DisplayTimeToLCD@s:	; 2 bytes @ 0x7
	ds	2
	global	DisplayTimeToLCD@State
DisplayTimeToLCD@State:	; 1 bytes @ 0x9
	ds	1
;;Data sizes: Strings 0, constant 0, data 2, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      12
;; BANK0           80     10      14
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _DisplayTimeToLCD->___lwmod
;;   _ClearLCDScreen->_WriteCommandToLCD
;;   _InitLCD->_WriteCommandToLCD
;;   _WriteDataToLCD->_ToggleEpinOfLCD
;;   _WriteCommandToLCD->_ToggleEpinOfLCD
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_DisplayTimeToLCD
;;   _DisplayTimeToLCD->___lwdiv
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
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
;; (0) _main                                                 1     1      0    1189
;;                                              7 COMMON     1     1      0
;;                            _InitLCD
;;            _Init1msecTimerInterrupt
;;                 _UpdateTimeCounters
;;                   _DisplayTimeToLCD
;; ---------------------------------------------------------------------------------
;; (1) _DisplayTimeToLCD                                     7     0      7     767
;;                                              3 BANK0      7     0      7
;;                     _ClearLCDScreen
;;                     _WriteDataToLCD
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (2) _ClearLCDScreen                                       2     2      0      44
;;                                              4 COMMON     2     2      0
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (1) _InitLCD                                              2     2      0      44
;;                                              4 COMMON     2     2      0
;;                    _ToggleEpinOfLCD
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (2) _WriteDataToLCD                                       1     1      0      44
;;                                              3 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (3) _WriteCommandToLCD                                    1     1      0      44
;;                                              3 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (1) _Init1msecTimerInterrupt                              0     0      0       0
;;                         _InitTimer0
;; ---------------------------------------------------------------------------------
;; (3) _ToggleEpinOfLCD                                      1     1      0       0
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              2 COMMON     5     1      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     241
;;                                              2 COMMON     4     0      4
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _InitTimer0                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _UpdateTimeCounters                                   1     1      0      22
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ISR                                                  2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitLCD
;;     _ToggleEpinOfLCD
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _Init1msecTimerInterrupt
;;     _InitTimer0
;;   _UpdateTimeCounters
;;   _DisplayTimeToLCD
;;     _ClearLCDScreen
;;       _WriteCommandToLCD
;;         _ToggleEpinOfLCD
;;     _WriteDataToLCD
;;       _ToggleEpinOfLCD
;;     ___lwdiv
;;     ___lwmod
;;
;; _ISR (ROOT)
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
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      1E      12        0.0%
;;ABS                  0      0      1A       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50      A       E       5       17.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 16 in file "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  State           1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_InitLCD
;;		_Init1msecTimerInterrupt
;;		_UpdateTimeCounters
;;		_DisplayTimeToLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Main.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	17
	
l4434:	
;Main.c: 17: unsigned char State = 0;
	clrf	(main@State)
	line	19
	
l4436:	
;Main.c: 19: TRISD0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1088/8)^080h,(1088)&7
	line	20
	
l4438:	
;Main.c: 20: RD0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(64/8),(64)&7
	line	21
	
l4440:	
;Main.c: 21: TRISE = 0x07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	22
	
l4442:	
;Main.c: 22: ADCON1 = 0x07;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	25
	
l4444:	
;Main.c: 25: InitLCD();
	fcall	_InitLCD
	line	26
	
l4446:	
;Main.c: 26: Init1msecTimerInterrupt();
	fcall	_Init1msecTimerInterrupt
	line	30
	
l4448:	
;Main.c: 29: {
;Main.c: 30: if(State == 0)
	movf	(main@State),f
	skipz
	goto	u841
	goto	u840
u841:
	goto	l1972
u840:
	line	32
	
l4450:	
;Main.c: 31: {
;Main.c: 32: if(!RE0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(72/8),(72)&7
	goto	u851
	goto	u850
u851:
	goto	l4458
u850:
	line	34
	
l4452:	
;Main.c: 33: {
;Main.c: 34: State = 1;
	clrf	(main@State)
	incf	(main@State),f
	line	36
;Main.c: 36: while(!RE0)
	goto	l4456
	line	37
	
l4454:	
;Main.c: 37: UpdateTimeCounters(State);
	movf	(main@State),w
	fcall	_UpdateTimeCounters
	line	36
	
l4456:	
	btfss	(72/8),(72)&7
	goto	u861
	goto	u860
u861:
	goto	l4454
u860:
	line	40
	
l4458:	
;Main.c: 38: }
;Main.c: 40: if( secCounter == 0 && minCounter == 0 && hrCounter == 0 )
	movf	((_secCounter+1)),w
	iorwf	((_secCounter)),w
	skipz
	goto	u871
	goto	u870
u871:
	goto	l1977
u870:
	
l4460:	
	movf	((_minCounter+1)),w
	iorwf	((_minCounter)),w
	skipz
	goto	u881
	goto	u880
u881:
	goto	l1977
u880:
	
l4462:	
	movf	((_hrCounter+1)),w
	iorwf	((_hrCounter)),w
	skipz
	goto	u891
	goto	u890
u891:
	goto	l1977
u890:
	line	41
	
l4464:	
;Main.c: 41: RD0 = 1;
	bsf	(64/8),(64)&7
	goto	l4538
	line	42
	
l1977:	
	line	43
;Main.c: 42: else
;Main.c: 43: RD0 = 0;
	bcf	(64/8),(64)&7
	goto	l4538
	line	46
	
l1972:	
	line	48
;Main.c: 46: else
;Main.c: 47: {
;Main.c: 48: if(!RE1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(73/8),(73)&7
	goto	u901
	goto	u900
u901:
	goto	l1980
u900:
	goto	l4470
	line	51
	
l4468:	
;Main.c: 51: UpdateTimeCounters(State);
	movf	(main@State),w
	fcall	_UpdateTimeCounters
	line	50
	
l4470:	
	btfss	(73/8),(73)&7
	goto	u911
	goto	u910
u911:
	goto	l4468
u910:
	goto	l4492
	line	55
	
l4472:	
		movf	(_secCounter),w
	xorlw	59
	iorwf	(_secCounter+1),w

	skipz
	goto	u921
	goto	u920
u921:
	goto	l4476
u920:
	line	56
	
l4474:	
;Main.c: 56: secCounter = 0;
	clrf	(_secCounter)
	clrf	(_secCounter+1)
	goto	l4538
	line	58
	
l4476:	
;Main.c: 57: else
;Main.c: 58: secCounter++;
	incf	(_secCounter),f
	skipnz
	incf	(_secCounter+1),f
	goto	l4538
	line	60
	
l4478:	
		movf	(_minCounter),w
	xorlw	59
	iorwf	(_minCounter+1),w

	skipz
	goto	u931
	goto	u930
u931:
	goto	l4482
u930:
	line	61
	
l4480:	
;Main.c: 61: minCounter = 0;
	clrf	(_minCounter)
	clrf	(_minCounter+1)
	goto	l4538
	line	63
	
l4482:	
;Main.c: 62: else
;Main.c: 63: minCounter++;
	incf	(_minCounter),f
	skipnz
	incf	(_minCounter+1),f
	goto	l4538
	line	65
	
l4484:	
		movf	(_hrCounter),w
	xorlw	23
	iorwf	(_hrCounter+1),w

	skipz
	goto	u941
	goto	u940
u941:
	goto	l4488
u940:
	line	66
	
l4486:	
;Main.c: 66: hrCounter = 0;
	clrf	(_hrCounter)
	clrf	(_hrCounter+1)
	goto	l4538
	line	68
	
l4488:	
;Main.c: 67: else
;Main.c: 68: hrCounter++;
	incf	(_hrCounter),f
	skipnz
	incf	(_hrCounter+1),f
	goto	l4538
	line	53
	
l4492:	
	movf	(main@State),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l4484
	xorlw	2^1	; case 2
	skipnz
	goto	l4478
	xorlw	3^2	; case 3
	skipnz
	goto	l4472
	goto	l4538
	opt asmopt_on

	line	72
	
l1980:	
;Main.c: 72: else if(!RE2)
	btfsc	(74/8),(74)&7
	goto	u951
	goto	u950
u951:
	goto	l1996
u950:
	goto	l4498
	line	75
	
l4496:	
;Main.c: 75: UpdateTimeCounters(State);
	movf	(main@State),w
	fcall	_UpdateTimeCounters
	line	74
	
l4498:	
	btfss	(74/8),(74)&7
	goto	u961
	goto	u960
u961:
	goto	l4496
u960:
	goto	l4520
	line	79
	
l4500:	
	movf	((_secCounter+1)),w
	iorwf	((_secCounter)),w
	skipz
	goto	u971
	goto	u970
u971:
	goto	l4504
u970:
	line	80
	
l4502:	
;Main.c: 80: secCounter = 59;
	movlw	03Bh
	movwf	(_secCounter)
	clrf	(_secCounter+1)
	goto	l4538
	line	82
	
l4504:	
;Main.c: 81: else
;Main.c: 82: secCounter--;
	movlw	low(01h)
	subwf	(_secCounter),f
	movlw	high(01h)
	skipc
	decf	(_secCounter+1),f
	subwf	(_secCounter+1),f
	goto	l4538
	line	84
	
l4506:	
	movf	((_minCounter+1)),w
	iorwf	((_minCounter)),w
	skipz
	goto	u981
	goto	u980
u981:
	goto	l4510
u980:
	line	85
	
l4508:	
;Main.c: 85: minCounter = 59;
	movlw	03Bh
	movwf	(_minCounter)
	clrf	(_minCounter+1)
	goto	l4538
	line	87
	
l4510:	
;Main.c: 86: else
;Main.c: 87: minCounter--;
	movlw	low(01h)
	subwf	(_minCounter),f
	movlw	high(01h)
	skipc
	decf	(_minCounter+1),f
	subwf	(_minCounter+1),f
	goto	l4538
	line	89
	
l4512:	
	movf	((_hrCounter+1)),w
	iorwf	((_hrCounter)),w
	skipz
	goto	u991
	goto	u990
u991:
	goto	l4516
u990:
	line	90
	
l4514:	
;Main.c: 90: hrCounter = 23;
	movlw	017h
	movwf	(_hrCounter)
	clrf	(_hrCounter+1)
	goto	l4538
	line	92
	
l4516:	
;Main.c: 91: else
;Main.c: 92: hrCounter--;
	movlw	low(01h)
	subwf	(_hrCounter),f
	movlw	high(01h)
	skipc
	decf	(_hrCounter+1),f
	subwf	(_hrCounter+1),f
	goto	l4538
	line	77
	
l4520:	
	movf	(main@State),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l4512
	xorlw	2^1	; case 2
	skipnz
	goto	l4506
	xorlw	3^2	; case 3
	skipnz
	goto	l4500
	goto	l4538
	opt asmopt_on

	line	96
	
l1996:	
;Main.c: 96: else if(!RE0)
	btfsc	(72/8),(72)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l4538
u1000:
	goto	l4526
	line	99
	
l4524:	
;Main.c: 99: UpdateTimeCounters(State);
	movf	(main@State),w
	fcall	_UpdateTimeCounters
	line	98
	
l4526:	
	btfss	(72/8),(72)&7
	goto	u1011
	goto	u1010
u1011:
	goto	l4524
u1010:
	goto	l4536
	line	103
	
l4528:	
	movlw	(02h)
	movwf	(main@State)
	goto	l4538
	line	104
	
l4530:	
	movlw	(03h)
	movwf	(main@State)
	goto	l4538
	line	105
	
l4532:	
	clrf	(main@State)
	goto	l4538
	line	101
	
l4536:	
	movf	(main@State),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l4528
	xorlw	2^1	; case 2
	skipnz
	goto	l4530
	xorlw	3^2	; case 3
	skipnz
	goto	l4532
	goto	l4538
	opt asmopt_on

	line	111
	
l4538:	
;Main.c: 108: }
;Main.c: 109: }
;Main.c: 111: UpdateTimeCounters(State);
	movf	(main@State),w
	fcall	_UpdateTimeCounters
	line	113
	
l4540:	
;Main.c: 113: if( msCounter == 0 )
	movf	((_msCounter+1)),w
	iorwf	((_msCounter)),w
	skipz
	goto	u1021
	goto	u1020
u1021:
	goto	l4544
u1020:
	line	116
	
l4542:	
;Main.c: 114: {
;Main.c: 116: DisplayTimeToLCD(hrCounter, minCounter, secCounter, 0);
	movf	(_hrCounter+1),w
	movwf	(?_DisplayTimeToLCD+1)
	movf	(_hrCounter),w
	movwf	(?_DisplayTimeToLCD)
	movf	(_minCounter+1),w
	movwf	1+(?_DisplayTimeToLCD)+02h
	movf	(_minCounter),w
	movwf	0+(?_DisplayTimeToLCD)+02h
	movf	(_secCounter+1),w
	movwf	1+(?_DisplayTimeToLCD)+04h
	movf	(_secCounter),w
	movwf	0+(?_DisplayTimeToLCD)+04h
	clrf	0+(?_DisplayTimeToLCD)+06h
	fcall	_DisplayTimeToLCD
	line	117
;Main.c: 117: }
	goto	l4448
	line	118
	
l4544:	
;Main.c: 118: else if( msCounter == 500 && State != 0 )
	decf	(_msCounter+1),w
	movlw	244
	skipnz
	xorwf	(_msCounter),w

	skipz
	goto	u1031
	goto	u1030
u1031:
	goto	l4448
u1030:
	
l4546:	
	movf	(main@State),w
	skipz
	goto	u1040
	goto	l4448
u1040:
	line	122
	
l4548:	
;Main.c: 119: {
;Main.c: 122: DisplayTimeToLCD(hrCounter, minCounter, secCounter, State);
	movf	(_hrCounter+1),w
	movwf	(?_DisplayTimeToLCD+1)
	movf	(_hrCounter),w
	movwf	(?_DisplayTimeToLCD)
	movf	(_minCounter+1),w
	movwf	1+(?_DisplayTimeToLCD)+02h
	movf	(_minCounter),w
	movwf	0+(?_DisplayTimeToLCD)+02h
	movf	(_secCounter+1),w
	movwf	1+(?_DisplayTimeToLCD)+04h
	movf	(_secCounter),w
	movwf	0+(?_DisplayTimeToLCD)+04h
	movf	(main@State),w
	movwf	0+(?_DisplayTimeToLCD)+06h
	fcall	_DisplayTimeToLCD
	goto	l4448
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	125
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_DisplayTimeToLCD
psect	text413,local,class=CODE,delta=2
global __ptext413
__ptext413:

;; *************** function _DisplayTimeToLCD *****************
;; Defined at:
;;		line 107 in file "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  h               2    3[BANK0 ] unsigned int 
;;  m               2    5[BANK0 ] unsigned int 
;;  s               2    7[BANK0 ] unsigned int 
;;  State           1    9[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       7       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ClearLCDScreen
;;		_WriteDataToLCD
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text413
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
	line	107
	global	__size_of_DisplayTimeToLCD
	__size_of_DisplayTimeToLCD	equ	__end_of_DisplayTimeToLCD-_DisplayTimeToLCD
	
_DisplayTimeToLCD:	
	opt	stack 3
; Regs used in _DisplayTimeToLCD: [wreg+status,2+status,0+pclath+cstack]
	line	108
	
l4414:	
;LCD.c: 108: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	110
	
l4416:	
;LCD.c: 110: if(State == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(DisplayTimeToLCD@State),w
	skipz
	goto	u811
	goto	u810
u811:
	goto	l4420
u810:
	line	112
	
l4418:	
;LCD.c: 111: {
;LCD.c: 112: WriteDataToLCD( ' ' );
	movlw	(020h)
	fcall	_WriteDataToLCD
	line	113
;LCD.c: 113: WriteDataToLCD( ' ' );
	movlw	(020h)
	fcall	_WriteDataToLCD
	line	114
;LCD.c: 114: }
	goto	l1309
	line	117
	
l4420:	
;LCD.c: 115: else
;LCD.c: 116: {
;LCD.c: 117: WriteDataToLCD( (h/10)+0x30 );
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(DisplayTimeToLCD@h+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(DisplayTimeToLCD@h),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	118
;LCD.c: 118: WriteDataToLCD( (h%10)+0x30 );
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DisplayTimeToLCD@h+1),w
	movwf	1+(?___lwmod)+02h
	movf	(DisplayTimeToLCD@h),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	119
	
l1309:	
	line	122
;LCD.c: 119: }
;LCD.c: 122: WriteDataToLCD(':');
	movlw	(03Ah)
	fcall	_WriteDataToLCD
	line	124
	
l4422:	
;LCD.c: 124: if(State == 2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DisplayTimeToLCD@State),w
	xorlw	02h
	skipz
	goto	u821
	goto	u820
u821:
	goto	l4426
u820:
	line	126
	
l4424:	
;LCD.c: 125: {
;LCD.c: 126: WriteDataToLCD( ' ' );
	movlw	(020h)
	fcall	_WriteDataToLCD
	line	127
;LCD.c: 127: WriteDataToLCD( ' ' );
	movlw	(020h)
	fcall	_WriteDataToLCD
	line	128
;LCD.c: 128: }
	goto	l1311
	line	131
	
l4426:	
;LCD.c: 129: else
;LCD.c: 130: {
;LCD.c: 131: WriteDataToLCD( (m/10)+0x30 );
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(DisplayTimeToLCD@m+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(DisplayTimeToLCD@m),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	132
;LCD.c: 132: WriteDataToLCD( (m%10)+0x30 );
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DisplayTimeToLCD@m+1),w
	movwf	1+(?___lwmod)+02h
	movf	(DisplayTimeToLCD@m),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	133
	
l1311:	
	line	136
;LCD.c: 133: }
;LCD.c: 136: WriteDataToLCD(':');
	movlw	(03Ah)
	fcall	_WriteDataToLCD
	line	138
	
l4428:	
;LCD.c: 138: if(State == 3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DisplayTimeToLCD@State),w
	xorlw	03h
	skipz
	goto	u831
	goto	u830
u831:
	goto	l4432
u830:
	line	140
	
l4430:	
;LCD.c: 139: {
;LCD.c: 140: WriteDataToLCD( ' ' );
	movlw	(020h)
	fcall	_WriteDataToLCD
	line	141
;LCD.c: 141: WriteDataToLCD( ' ' );
	movlw	(020h)
	fcall	_WriteDataToLCD
	line	142
;LCD.c: 142: }
	goto	l1314
	line	145
	
l4432:	
;LCD.c: 143: else
;LCD.c: 144: {
;LCD.c: 145: WriteDataToLCD( (s/10)+0x30 );
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(DisplayTimeToLCD@s+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(DisplayTimeToLCD@s),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	146
;LCD.c: 146: WriteDataToLCD( (s%10)+0x30 );
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DisplayTimeToLCD@s+1),w
	movwf	1+(?___lwmod)+02h
	movf	(DisplayTimeToLCD@s),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	148
	
l1314:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayTimeToLCD
	__end_of_DisplayTimeToLCD:
;; =============== function _DisplayTimeToLCD ends ============

	signat	_DisplayTimeToLCD,16504
	global	_ClearLCDScreen
psect	text414,local,class=CODE,delta=2
global __ptext414
__ptext414:

;; *************** function _ClearLCDScreen *****************
;; Defined at:
;;		line 99 in file "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_WriteCommandToLCD
;; This function is called by:
;;		_DisplayTimeToLCD
;; This function uses a non-reentrant model
;;
psect	text414
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
	line	99
	global	__size_of_ClearLCDScreen
	__size_of_ClearLCDScreen	equ	__end_of_ClearLCDScreen-_ClearLCDScreen
	
_ClearLCDScreen:	
	opt	stack 3
; Regs used in _ClearLCDScreen: [wreg+status,2+status,0+pclath+cstack]
	line	100
	
l4236:	
;LCD.c: 100: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	101
	
l4238:	
;LCD.c: 101: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_ClearLCDScreen+0)+0+1),f
	movlw	151
movwf	((??_ClearLCDScreen+0)+0),f
u1057:
	decfsz	((??_ClearLCDScreen+0)+0),f
	goto	u1057
	decfsz	((??_ClearLCDScreen+0)+0+1),f
	goto	u1057
	nop2
opt asmopt_on

	line	102
	
l1305:	
	return
	opt stack 0
GLOBAL	__end_of_ClearLCDScreen
	__end_of_ClearLCDScreen:
;; =============== function _ClearLCDScreen ends ============

	signat	_ClearLCDScreen,88
	global	_InitLCD
psect	text415,local,class=CODE,delta=2
global __ptext415
__ptext415:

;; *************** function _InitLCD *****************
;; Defined at:
;;		line 42 in file "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ToggleEpinOfLCD
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text415
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
	line	42
	global	__size_of_InitLCD
	__size_of_InitLCD	equ	__end_of_InitLCD-_InitLCD
	
_InitLCD:	
	opt	stack 4
; Regs used in _InitLCD: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l4196:	
;LCD.c: 44: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
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
	
l4198:	
;LCD.c: 58: _delay((unsigned long)((40)*(4000000/4000.0)));
	opt asmopt_off
movlw	52
movwf	((??_InitLCD+0)+0+1),f
	movlw	241
movwf	((??_InitLCD+0)+0),f
u1067:
	decfsz	((??_InitLCD+0)+0),f
	goto	u1067
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u1067
	nop2
opt asmopt_on

	line	60
	
l4200:	
;LCD.c: 60: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	61
	
l4202:	
;LCD.c: 61: PORTB |= 0x30;
	movlw	(030h)
	iorwf	(6),f	;volatile
	line	62
	
l4204:	
;LCD.c: 62: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	64
	
l4206:	
;LCD.c: 64: _delay((unsigned long)((6)*(4000000/4000.0)));
	opt asmopt_off
movlw	8
movwf	((??_InitLCD+0)+0+1),f
	movlw	201
movwf	((??_InitLCD+0)+0),f
u1077:
	decfsz	((??_InitLCD+0)+0),f
	goto	u1077
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u1077
	nop2
opt asmopt_on

	line	66
	
l4208:	
;LCD.c: 66: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	67
	
l4210:	
;LCD.c: 67: PORTB |= 0x30;
	movlw	(030h)
	iorwf	(6),f	;volatile
	line	68
;LCD.c: 68: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	70
	
l4212:	
;LCD.c: 70: _delay((unsigned long)((300)*(4000000/4000000.0)));
	opt asmopt_off
movlw	99
movwf	(??_InitLCD+0)+0,f
u1087:
decfsz	(??_InitLCD+0)+0,f
	goto	u1087
	nop2	;nop
opt asmopt_on

	line	72
	
l4214:	
;LCD.c: 72: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	73
	
l4216:	
;LCD.c: 73: PORTB |= 0x30;
	movlw	(030h)
	iorwf	(6),f	;volatile
	line	74
	
l4218:	
;LCD.c: 74: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	76
;LCD.c: 76: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_InitLCD+0)+0+1),f
	movlw	151
movwf	((??_InitLCD+0)+0),f
u1097:
	decfsz	((??_InitLCD+0)+0),f
	goto	u1097
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u1097
	nop2
opt asmopt_on

	line	78
	
l4220:	
;LCD.c: 78: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	79
	
l4222:	
;LCD.c: 79: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	line	80
	
l4224:	
;LCD.c: 80: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	82
	
l4226:	
;LCD.c: 82: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_InitLCD+0)+0+1),f
	movlw	151
movwf	((??_InitLCD+0)+0),f
u1107:
	decfsz	((??_InitLCD+0)+0),f
	goto	u1107
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u1107
	nop2
opt asmopt_on

	line	84
	
l4228:	
;LCD.c: 84: WriteCommandToLCD(0x28);
	movlw	(028h)
	fcall	_WriteCommandToLCD
	line	85
	
l4230:	
;LCD.c: 85: WriteCommandToLCD(0x0c);
	movlw	(0Ch)
	fcall	_WriteCommandToLCD
	line	86
	
l4232:	
;LCD.c: 86: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	87
	
l4234:	
;LCD.c: 87: WriteCommandToLCD(0x06);
	movlw	(06h)
	fcall	_WriteCommandToLCD
	line	88
	
l1296:	
	return
	opt stack 0
GLOBAL	__end_of_InitLCD
	__end_of_InitLCD:
;; =============== function _InitLCD ends ============

	signat	_InitLCD,88
	global	_WriteDataToLCD
psect	text416,local,class=CODE,delta=2
global __ptext416
__ptext416:

;; *************** function _WriteDataToLCD *****************
;; Defined at:
;;		line 28 in file "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDChar         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDChar         1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_DisplayTimeToLCD
;; This function uses a non-reentrant model
;;
psect	text416
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
	line	28
	global	__size_of_WriteDataToLCD
	__size_of_WriteDataToLCD	equ	__end_of_WriteDataToLCD-_WriteDataToLCD
	
_WriteDataToLCD:	
	opt	stack 4
; Regs used in _WriteDataToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteDataToLCD@LCDChar stored from wreg
	movwf	(WriteDataToLCD@LCDChar)
	line	29
	
l4184:	
;LCD.c: 29: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	31
	
l4186:	
;LCD.c: 31: PORTB &= 0x0F;
	movlw	(0Fh)
	andwf	(6),f	;volatile
	line	32
;LCD.c: 32: PORTB |= (LCDChar&0xF0);
	movf	(WriteDataToLCD@LCDChar),w
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	33
	
l4188:	
;LCD.c: 33: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	35
	
l4190:	
;LCD.c: 35: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	36
	
l4192:	
;LCD.c: 36: PORTB |= ((LCDChar<<4)&0xF0);
	swapf	(WriteDataToLCD@LCDChar),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	37
	
l4194:	
;LCD.c: 37: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	38
	
l1293:	
	return
	opt stack 0
GLOBAL	__end_of_WriteDataToLCD
	__end_of_WriteDataToLCD:
;; =============== function _WriteDataToLCD ends ============

	signat	_WriteDataToLCD,4216
	global	_WriteCommandToLCD
psect	text417,local,class=CODE,delta=2
global __ptext417
__ptext417:

;; *************** function _WriteCommandToLCD *****************
;; Defined at:
;;		line 14 in file "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_InitLCD
;;		_ClearLCDScreen
;; This function uses a non-reentrant model
;;
psect	text417
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
	line	14
	global	__size_of_WriteCommandToLCD
	__size_of_WriteCommandToLCD	equ	__end_of_WriteCommandToLCD-_WriteCommandToLCD
	
_WriteCommandToLCD:	
	opt	stack 3
; Regs used in _WriteCommandToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteCommandToLCD@Command stored from wreg
	movwf	(WriteCommandToLCD@Command)
	line	15
	
l4172:	
;LCD.c: 15: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	17
	
l4174:	
;LCD.c: 17: PORTB &= 0x0F;
	movlw	(0Fh)
	andwf	(6),f	;volatile
	line	18
;LCD.c: 18: PORTB |= (Command&0xF0);
	movf	(WriteCommandToLCD@Command),w
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	19
	
l4176:	
;LCD.c: 19: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	21
	
l4178:	
;LCD.c: 21: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	22
	
l4180:	
;LCD.c: 22: PORTB |= ((Command<<4)&0xF0);
	swapf	(WriteCommandToLCD@Command),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	23
	
l4182:	
;LCD.c: 23: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	24
	
l1290:	
	return
	opt stack 0
GLOBAL	__end_of_WriteCommandToLCD
	__end_of_WriteCommandToLCD:
;; =============== function _WriteCommandToLCD ends ============

	signat	_WriteCommandToLCD,4216
	global	_Init1msecTimerInterrupt
psect	text418,local,class=CODE,delta=2
global __ptext418
__ptext418:

;; *************** function _Init1msecTimerInterrupt *****************
;; Defined at:
;;		line 24 in file "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_InitTimer0
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text418
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Timer.c"
	global	__size_of_Init1msecTimerInterrupt
	__size_of_Init1msecTimerInterrupt	equ	__end_of_Init1msecTimerInterrupt-_Init1msecTimerInterrupt
	
_Init1msecTimerInterrupt:	
	opt	stack 5
; Regs used in _Init1msecTimerInterrupt: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l4170:	
;Timer.c: 25: InitTimer0();
	fcall	_InitTimer0
	line	26
	
l2678:	
	return
	opt stack 0
GLOBAL	__end_of_Init1msecTimerInterrupt
	__end_of_Init1msecTimerInterrupt:
;; =============== function _Init1msecTimerInterrupt ends ============

	signat	_Init1msecTimerInterrupt,88
	global	_ToggleEpinOfLCD
psect	text419,local,class=CODE,delta=2
global __ptext419
__ptext419:

;; *************** function _ToggleEpinOfLCD *****************
;; Defined at:
;;		line 5 in file "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteCommandToLCD
;;		_WriteDataToLCD
;;		_InitLCD
;; This function uses a non-reentrant model
;;
psect	text419
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\LCD.c"
	line	5
	global	__size_of_ToggleEpinOfLCD
	__size_of_ToggleEpinOfLCD	equ	__end_of_ToggleEpinOfLCD-_ToggleEpinOfLCD
	
_ToggleEpinOfLCD:	
	opt	stack 4
; Regs used in _ToggleEpinOfLCD: [wreg]
	line	6
	
l4164:	
;LCD.c: 6: RB0 = 1;
	bsf	(48/8),(48)&7
	line	7
	
l4166:	
;LCD.c: 7: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ToggleEpinOfLCD+0)+0,f
u1117:
decfsz	(??_ToggleEpinOfLCD+0)+0,f
	goto	u1117
	clrwdt
opt asmopt_on

	line	8
	
l4168:	
;LCD.c: 8: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	9
;LCD.c: 9: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ToggleEpinOfLCD+0)+0,f
u1127:
decfsz	(??_ToggleEpinOfLCD+0)+0,f
	goto	u1127
	clrwdt
opt asmopt_on

	line	10
	
l1287:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleEpinOfLCD
	__end_of_ToggleEpinOfLCD:
;; =============== function _ToggleEpinOfLCD ends ============

	signat	_ToggleEpinOfLCD,88
	global	___lwmod
psect	text420,local,class=CODE,delta=2
global __ptext420
__ptext420:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayTimeToLCD
;; This function uses a non-reentrant model
;;
psect	text420
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4144:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u491
	goto	u490
u491:
	goto	l4160
u490:
	line	9
	
l4146:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l4150
	line	11
	
l4148:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l4150:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u501
	goto	u500
u501:
	goto	l4148
u500:
	line	15
	
l4152:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u515
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u515:
	skipc
	goto	u511
	goto	u510
u511:
	goto	l4156
u510:
	line	16
	
l4154:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l4156:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l4158:	
	decfsz	(___lwmod@counter),f
	goto	u521
	goto	u520
u521:
	goto	l4152
u520:
	line	20
	
l4160:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l3355:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text421,local,class=CODE,delta=2
global __ptext421
__ptext421:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       3       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayTimeToLCD
;; This function uses a non-reentrant model
;;
psect	text421
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4388:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4390:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u771
	goto	u770
u771:
	goto	l4410
u770:
	line	11
	
l4392:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l4396
	line	13
	
l4394:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l4396:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u781
	goto	u780
u781:
	goto	l4394
u780:
	line	17
	
l4398:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l4400:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u795
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u795:
	skipc
	goto	u791
	goto	u790
u791:
	goto	l4406
u790:
	line	19
	
l4402:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4404:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l4406:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l4408:	
	decfsz	(___lwdiv@counter),f
	goto	u801
	goto	u800
u801:
	goto	l4398
u800:
	line	25
	
l4410:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l3345:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_InitTimer0
psect	text422,local,class=CODE,delta=2
global __ptext422
__ptext422:

;; *************** function _InitTimer0 *****************
;; Defined at:
;;		line 14 in file "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init1msecTimerInterrupt
;; This function uses a non-reentrant model
;;
psect	text422
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Timer.c"
	line	14
	global	__size_of_InitTimer0
	__size_of_InitTimer0	equ	__end_of_InitTimer0-_InitTimer0
	
_InitTimer0:	
	opt	stack 5
; Regs used in _InitTimer0: [wreg+status,2+status,0]
	line	16
	
l4112:	
;Timer.c: 16: OPTION_REG &= 0xC1;
	movlw	(0C1h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(129)^080h,f	;volatile
	line	18
	
l4114:	
;Timer.c: 18: T0IE = 1;
	bsf	(93/8),(93)&7
	line	19
	
l4116:	
;Timer.c: 19: GIE = 1;
	bsf	(95/8),(95)&7
	line	20
	
l2675:	
	return
	opt stack 0
GLOBAL	__end_of_InitTimer0
	__end_of_InitTimer0:
;; =============== function _InitTimer0 ends ============

	signat	_InitTimer0,88
	global	_UpdateTimeCounters
psect	text423,local,class=CODE,delta=2
global __ptext423
__ptext423:

;; *************** function _UpdateTimeCounters *****************
;; Defined at:
;;		line 32 in file "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Timer.c"
;; Parameters:    Size  Location     Type
;;  State           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  State           1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text423
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\Timer.c"
	line	32
	global	__size_of_UpdateTimeCounters
	__size_of_UpdateTimeCounters	equ	__end_of_UpdateTimeCounters-_UpdateTimeCounters
	
_UpdateTimeCounters:	
	opt	stack 6
; Regs used in _UpdateTimeCounters: [wreg+status,2+status,0]
;UpdateTimeCounters@State stored from wreg
	movwf	(UpdateTimeCounters@State)
	line	33
	
l4092:	
;Timer.c: 33: if(msCounter==1000)
		movf	(_msCounter+1),w
	xorlw	3
	movlw	232
	skipnz
	xorwf	(_msCounter),w

	skipz
	goto	u401
	goto	u400
u401:
	goto	l2689
u400:
	line	35
	
l4094:	
;Timer.c: 34: {
;Timer.c: 35: msCounter=0;
	clrf	(_msCounter)
	clrf	(_msCounter+1)
	line	37
	
l4096:	
;Timer.c: 37: if(State == 0)
	movf	(UpdateTimeCounters@State),f
	skipz
	goto	u411
	goto	u410
u411:
	goto	l2689
u410:
	line	39
	
l4098:	
;Timer.c: 38: {
;Timer.c: 39: if(secCounter==0)
	movf	((_secCounter+1)),w
	iorwf	((_secCounter)),w
	skipz
	goto	u421
	goto	u420
u421:
	goto	l4110
u420:
	line	41
	
l4100:	
;Timer.c: 40: {
;Timer.c: 41: if(minCounter==0)
	movf	((_minCounter+1)),w
	iorwf	((_minCounter)),w
	skipz
	goto	u431
	goto	u430
u431:
	goto	l4108
u430:
	line	43
	
l4102:	
;Timer.c: 42: {
;Timer.c: 43: if(hrCounter==0)
	movf	((_hrCounter+1)),w
	iorwf	((_hrCounter)),w
	skipz
	goto	u441
	goto	u440
u441:
	goto	l4106
u440:
	goto	l2689
	line	49
	
l4106:	
;Timer.c: 47: else
;Timer.c: 48: {
;Timer.c: 49: hrCounter--;
	movlw	low(01h)
	subwf	(_hrCounter),f
	movlw	high(01h)
	skipc
	decf	(_hrCounter+1),f
	subwf	(_hrCounter+1),f
	line	50
;Timer.c: 50: minCounter = 59;
	movlw	03Bh
	movwf	(_minCounter)
	clrf	(_minCounter+1)
	line	51
;Timer.c: 51: secCounter = 59;
	movlw	03Bh
	movwf	(_secCounter)
	clrf	(_secCounter+1)
	goto	l2689
	line	56
	
l4108:	
;Timer.c: 54: else
;Timer.c: 55: {
;Timer.c: 56: minCounter--;
	movlw	low(01h)
	subwf	(_minCounter),f
	movlw	high(01h)
	skipc
	decf	(_minCounter+1),f
	subwf	(_minCounter+1),f
	line	57
;Timer.c: 57: secCounter = 59;
	movlw	03Bh
	movwf	(_secCounter)
	clrf	(_secCounter+1)
	goto	l2689
	line	61
	
l4110:	
;Timer.c: 60: else
;Timer.c: 61: secCounter--;
	movlw	low(01h)
	subwf	(_secCounter),f
	movlw	high(01h)
	skipc
	decf	(_secCounter+1),f
	subwf	(_secCounter+1),f
	line	64
	
l2689:	
	return
	opt stack 0
GLOBAL	__end_of_UpdateTimeCounters
	__end_of_UpdateTimeCounters:
;; =============== function _UpdateTimeCounters ends ============

	signat	_UpdateTimeCounters,4216
	global	_ISR
psect	text424,local,class=CODE,delta=2
global __ptext424
__ptext424:

;; *************** function _ISR *****************
;; Defined at:
;;		line 6 in file "C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\ISR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
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
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text424
	file	"C:\Users\Saeed\Desktop\PIC16F877 Stop Watch Code\Code\ISR.c"
	line	6
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 3
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	pclath,w
	movwf	(??_ISR+1)
	ljmp	_ISR
psect	text424
	line	7
	
i1l4084:	
;ISR.c: 7: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u39_21
	goto	u39_20
u39_21:
	goto	i1l644
u39_20:
	line	9
	
i1l4086:	
;ISR.c: 8: {
;ISR.c: 9: TMR0 = 0x08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	10
	
i1l4088:	
;ISR.c: 10: T0IF = 0;
	bcf	(90/8),(90)&7
	line	11
	
i1l4090:	
;ISR.c: 11: msCounter++;
	incf	(_msCounter),f
	skipnz
	incf	(_msCounter+1),f
	line	13
	
i1l644:	
	movf	(??_ISR+1),w
	movwf	pclath
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text425,local,class=CODE,delta=2
global __ptext425
__ptext425:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
