opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_delay1
	FNCALL	_main,_initLCD
	FNCALL	_main,_updateDisplay
	FNCALL	_updateDisplay,_dataCtrl
	FNCALL	_updateDisplay,_instCtrl
	FNCALL	_dataCtrl,_delay1
	FNCALL	_initLCD,_delay1
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay1
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_secondCounter
	global	_isPaused
	global	_keypadPressed
	global	_pausePressed
	global	_timer0Overflow
	global	_timerStopped
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_TMR0
_TMR0	set	0x1
	global	_GIE
_GIE	set	0x5F
	global	_RB0
_RB0	set	0x30
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RB3
_RB3	set	0x33
	global	_RB5
_RB5	set	0x35
	global	_RBIE
_RBIE	set	0x5B
	global	_RBIF
_RBIF	set	0x58
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _ISR
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"PreMidPrac.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_isPaused:
       ds      1

_keypadPressed:
       ds      1

_pausePressed:
       ds      1

_timer0Overflow:
       ds      1

_timerStopped:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_secondCounter:
       ds      2

	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	4
?_delay1:	; 0 bytes @ 0x4
	global	delay1@MUL
delay1@MUL:	; 2 bytes @ 0x4
	ds	2
??_delay1:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x6
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x6
	ds	1
??_initLCD:	; 0 bytes @ 0x7
??_updateDisplay:	; 0 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	delay1@i
delay1@i:	; 2 bytes @ 0x0
	ds	2
	global	delay1@j
delay1@j:	; 2 bytes @ 0x2
	ds	2
?_updateDisplay:	; 0 bytes @ 0x4
	global	updateDisplay@LSB
updateDisplay@LSB:	; 1 bytes @ 0x4
	ds	1
	global	updateDisplay@MSB
updateDisplay@MSB:	; 1 bytes @ 0x5
	ds	1
??_main:	; 0 bytes @ 0x6
	ds	1
	global	main@keyData
main@keyData:	; 1 bytes @ 0x7
	ds	1
	global	main@mode
main@mode:	; 1 bytes @ 0x8
	ds	1
	global	main@MSB
main@MSB:	; 1 bytes @ 0x9
	ds	1
	global	main@LSB
main@LSB:	; 1 bytes @ 0xA
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      10
;!    BANK0            80     11      11
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _updateDisplay->_dataCtrl
;!    _updateDisplay->_instCtrl
;!    _dataCtrl->_delay1
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay1
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_updateDisplay
;!    _dataCtrl->_delay1
;!    _initLCD->_delay1
;!    _instCtrl->_delay1
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0    3862
;!                                              6 BANK0      5     5      0
;!                             _delay1
;!                            _initLCD
;!                      _updateDisplay
;! ---------------------------------------------------------------------------------
;! (1) _updateDisplay                                        2     1      1    1563
;!                                              4 BANK0      2     1      1
;!                           _dataCtrl
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0     523
;!                                              6 COMMON     1     1      0
;!                             _delay1
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0    1015
;!                             _delay1
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             1     1      0     523
;!                                              6 COMMON     1     1      0
;!                             _delay1
;! ---------------------------------------------------------------------------------
;! (3) _delay1                                               6     4      2     492
;!                                              4 COMMON     2     0      2
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay1
;!   _initLCD
;!     _delay1
;!     _instCtrl
;!       _delay1
;!   _updateDisplay
;!     _dataCtrl
;!       _delay1
;!     _instCtrl
;!       _delay1
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      15       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      B       B       5       13.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      15      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 97 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  LSB             1   10[BANK0 ] unsigned char 
;;  MSB             1    9[BANK0 ] unsigned char 
;;  mode            1    8[BANK0 ] unsigned char 
;;  keyData         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay1
;;		_initLCD
;;		_updateDisplay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
	line	97
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
	line	97
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	98
	
l942:	
;PracPreMid.c: 98: TRISB = 0x21;
	movlw	(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	99
	
l944:	
;PracPreMid.c: 99: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	100
	
l946:	
;PracPreMid.c: 100: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	104
;PracPreMid.c: 103: unsigned char keyData;
;PracPreMid.c: 104: unsigned char mode = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@mode)
	line	105
;PracPreMid.c: 105: unsigned char MSB = 0;
	clrf	(main@MSB)
	line	106
;PracPreMid.c: 106: unsigned char LSB = 0;
	clrf	(main@LSB)
	line	109
	
l948:	
;PracPreMid.c: 109: initLCD();
	fcall	_initLCD
	line	112
	
l950:	
;PracPreMid.c: 112: OPTION_REG = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	113
	
l952:	
;PracPreMid.c: 113: TMR0 = 6;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	116
	
l954:	
;PracPreMid.c: 116: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	117
	
l956:	
;PracPreMid.c: 117: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	119
	
l958:	
;PracPreMid.c: 119: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	120
	
l960:	
;PracPreMid.c: 120: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	122
	
l962:	
;PracPreMid.c: 122: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	125
	
l964:	
;PracPreMid.c: 125: updateDisplay(0, 0);
	clrf	(updateDisplay@LSB)
	movlw	(0)
	fcall	_updateDisplay
	goto	l966
	line	127
;PracPreMid.c: 127: while (1) {
	
l77:	
	line	129
	
l966:	
;PracPreMid.c: 129: if (pausePressed = 1) {
	bsf	(_pausePressed/8),(_pausePressed)&7
	btfss	(_pausePressed/8),(_pausePressed)&7
	goto	u541
	goto	u540
u541:
	goto	l976
u540:
	line	130
	
l968:	
;PracPreMid.c: 130: delay1(20);
	movlw	low(014h)
	movwf	(delay1@MUL)
	movlw	high(014h)
	movwf	((delay1@MUL))+1
	fcall	_delay1
	line	131
;PracPreMid.c: 131: while (RB0 == 1);
	goto	l79
	
l80:	
	
l79:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u551
	goto	u550
u551:
	goto	l79
u550:
	goto	l970
	
l81:	
	line	132
	
l970:	
;PracPreMid.c: 132: delay1(20);
	movlw	low(014h)
	movwf	(delay1@MUL)
	movlw	high(014h)
	movwf	((delay1@MUL))+1
	fcall	_delay1
	line	134
	
l972:	
;PracPreMid.c: 134: isPaused ^= isPaused;
	bcf	(_isPaused/8),(_isPaused)&7
	line	135
	
l974:	
;PracPreMid.c: 135: pausePressed = 0;
	bcf	(_pausePressed/8),(_pausePressed)&7
	goto	l976
	line	136
	
l78:	
	line	139
	
l976:	
;PracPreMid.c: 136: }
;PracPreMid.c: 139: if (!isPaused && keypadPressed) {
	btfsc	(_isPaused/8),(_isPaused)&7
	goto	u561
	goto	u560
u561:
	goto	l1002
u560:
	
l978:	
	btfss	(_keypadPressed/8),(_keypadPressed)&7
	goto	u571
	goto	u570
u571:
	goto	l1002
u570:
	line	140
	
l980:	
;PracPreMid.c: 140: keyData = PORTD & 0x0F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@keyData)
	line	142
	
l982:	
;PracPreMid.c: 142: if (keyData == 0x0C) {
	movf	(main@keyData),w
	xorlw	0Ch
	skipz
	goto	u581
	goto	u580
u581:
	goto	l986
u580:
	line	143
	
l984:	
;PracPreMid.c: 143: mode = 1;
	clrf	(main@mode)
	incf	(main@mode),f
	line	144
;PracPreMid.c: 144: timerStopped = 0;
	bcf	(_timerStopped/8),(_timerStopped)&7
	line	145
;PracPreMid.c: 145: }
	goto	l1000
	line	146
	
l83:	
	
l986:	
;PracPreMid.c: 146: else if (keyData == 0x0E) {
	movf	(main@keyData),w
	xorlw	0Eh
	skipz
	goto	u591
	goto	u590
u591:
	goto	l1000
u590:
	line	147
	
l988:	
;PracPreMid.c: 147: mode = 2;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@mode)
	line	150
	
l990:	
;PracPreMid.c: 150: if (MSB == 0 && LSB == 0) {
	movf	(main@MSB),f
	skipz
	goto	u601
	goto	u600
u601:
	goto	l998
u600:
	
l992:	
	movf	(main@LSB),f
	skipz
	goto	u611
	goto	u610
u611:
	goto	l998
u610:
	line	151
	
l994:	
;PracPreMid.c: 151: MSB = 2;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@MSB)
	line	152
;PracPreMid.c: 152: LSB = 4;
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@LSB)
	line	153
	
l996:	
;PracPreMid.c: 153: updateDisplay(MSB, LSB);
	movf	(main@LSB),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(updateDisplay@LSB)
	movf	(main@MSB),w
	fcall	_updateDisplay
	goto	l998
	line	154
	
l86:	
	line	156
	
l998:	
;PracPreMid.c: 154: }
;PracPreMid.c: 156: timerStopped = 0;
	bcf	(_timerStopped/8),(_timerStopped)&7
	goto	l1000
	line	157
	
l85:	
	goto	l1000
	line	159
	
l84:	
	
l1000:	
;PracPreMid.c: 157: }
;PracPreMid.c: 159: keypadPressed = 0;
	bcf	(_keypadPressed/8),(_keypadPressed)&7
	goto	l1002
	line	160
	
l82:	
	line	163
	
l1002:	
;PracPreMid.c: 160: }
;PracPreMid.c: 163: if (timer0Overflow) {
	btfss	(_timer0Overflow/8),(_timer0Overflow)&7
	goto	u621
	goto	u620
u621:
	goto	l966
u620:
	line	164
	
l1004:	
;PracPreMid.c: 164: timer0Overflow = 0;
	bcf	(_timer0Overflow/8),(_timer0Overflow)&7
	line	166
	
l1006:	
;PracPreMid.c: 166: if (mode == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@mode),w
	xorlw	01h
	skipz
	goto	u631
	goto	u630
u631:
	goto	l1030
u630:
	line	168
	
l1008:	
;PracPreMid.c: 168: if (MSB == 2 && LSB == 4) {
	movf	(main@MSB),w
	xorlw	02h
	skipz
	goto	u641
	goto	u640
u641:
	goto	l1018
u640:
	
l1010:	
	movf	(main@LSB),w
	xorlw	04h
	skipz
	goto	u651
	goto	u650
u651:
	goto	l1018
u650:
	line	169
	
l1012:	
;PracPreMid.c: 169: MSB = 0;
	clrf	(main@MSB)
	line	170
;PracPreMid.c: 170: LSB = 0;
	clrf	(main@LSB)
	line	171
	
l1014:	
;PracPreMid.c: 171: updateDisplay(MSB, LSB);
	movf	(main@LSB),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(updateDisplay@LSB)
	movf	(main@MSB),w
	fcall	_updateDisplay
	line	172
	
l1016:	
;PracPreMid.c: 172: timerStopped = 1;
	bsf	(_timerStopped/8),(_timerStopped)&7
	line	173
;PracPreMid.c: 173: }
	goto	l966
	line	174
	
l89:	
	
l1018:	
;PracPreMid.c: 174: else if (LSB == 9) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@LSB),w
	xorlw	09h
	skipz
	goto	u661
	goto	u660
u661:
	goto	l1026
u660:
	line	175
	
l1020:	
;PracPreMid.c: 175: LSB = 0;
	clrf	(main@LSB)
	line	176
	
l1022:	
;PracPreMid.c: 176: MSB++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@MSB),f
	line	177
	
l1024:	
;PracPreMid.c: 177: updateDisplay(MSB, LSB);
	movf	(main@LSB),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(updateDisplay@LSB)
	movf	(main@MSB),w
	fcall	_updateDisplay
	line	178
;PracPreMid.c: 178: }
	goto	l966
	line	179
	
l91:	
	line	180
	
l1026:	
;PracPreMid.c: 179: else {
;PracPreMid.c: 180: LSB++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@LSB),f
	line	181
	
l1028:	
;PracPreMid.c: 181: updateDisplay(MSB, LSB);
	movf	(main@LSB),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(updateDisplay@LSB)
	movf	(main@MSB),w
	fcall	_updateDisplay
	goto	l966
	line	182
	
l92:	
	goto	l966
	
l90:	
	line	183
;PracPreMid.c: 182: }
;PracPreMid.c: 183: }
	goto	l966
	line	184
	
l88:	
	
l1030:	
;PracPreMid.c: 184: else if (mode == 2) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@mode),w
	xorlw	02h
	skipz
	goto	u671
	goto	u670
u671:
	goto	l966
u670:
	line	186
	
l1032:	
;PracPreMid.c: 186: if (MSB == 0 && LSB == 0) {
	movf	(main@MSB),f
	skipz
	goto	u681
	goto	u680
u681:
	goto	l1038
u680:
	
l1034:	
	movf	(main@LSB),f
	skipz
	goto	u691
	goto	u690
u691:
	goto	l1038
u690:
	line	187
	
l1036:	
;PracPreMid.c: 187: timerStopped = 1;
	bsf	(_timerStopped/8),(_timerStopped)&7
	line	188
;PracPreMid.c: 188: }
	goto	l966
	line	189
	
l95:	
	
l1038:	
;PracPreMid.c: 189: else if (LSB == 0) {
	movf	(main@LSB),f
	skipz
	goto	u701
	goto	u700
u701:
	goto	l1046
u700:
	line	190
	
l1040:	
;PracPreMid.c: 190: LSB = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@LSB)
	line	191
	
l1042:	
;PracPreMid.c: 191: MSB--;
	movlw	low(01h)
	subwf	(main@MSB),f
	line	192
	
l1044:	
;PracPreMid.c: 192: updateDisplay(MSB, LSB);
	movf	(main@LSB),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(updateDisplay@LSB)
	movf	(main@MSB),w
	fcall	_updateDisplay
	line	193
;PracPreMid.c: 193: }
	goto	l966
	line	194
	
l97:	
	line	195
	
l1046:	
;PracPreMid.c: 194: else {
;PracPreMid.c: 195: LSB--;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@LSB),f
	line	196
	
l1048:	
;PracPreMid.c: 196: updateDisplay(MSB, LSB);
	movf	(main@LSB),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(updateDisplay@LSB)
	movf	(main@MSB),w
	fcall	_updateDisplay
	goto	l966
	line	197
	
l98:	
	goto	l966
	
l96:	
	goto	l966
	line	198
	
l94:	
	goto	l966
	line	199
	
l93:	
	goto	l966
	
l87:	
	goto	l966
	line	200
	
l99:	
	line	127
	goto	l966
	
l100:	
	line	201
	
l101:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_updateDisplay

;; *************** function _updateDisplay *****************
;; Defined at:
;;		line 87 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
;; Parameters:    Size  Location     Type
;;  MSB             1    wreg     unsigned char 
;;  LSB             1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  MSB             1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	87
global __ptext1
__ptext1:	;psect for function _updateDisplay
psect	text1
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
	line	87
	global	__size_of_updateDisplay
	__size_of_updateDisplay	equ	__end_of_updateDisplay-_updateDisplay
	
_updateDisplay:	
;incstack = 0
	opt	stack 4
; Regs used in _updateDisplay: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;updateDisplay@MSB stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(updateDisplay@MSB)
	line	89
	
l940:	
;PracPreMid.c: 89: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	90
;PracPreMid.c: 90: dataCtrl(MSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(updateDisplay@MSB),w
	addlw	030h
	fcall	_dataCtrl
	line	93
;PracPreMid.c: 93: instCtrl(0xCA);
	movlw	(0CAh)
	fcall	_instCtrl
	line	94
;PracPreMid.c: 94: dataCtrl(LSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(updateDisplay@LSB),w
	addlw	030h
	fcall	_dataCtrl
	line	95
	
l74:	
	return
	opt stack 0
GLOBAL	__end_of_updateDisplay
	__end_of_updateDisplay:
	signat	_updateDisplay,8312
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 78 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;;		_delay1
;; This function is called by:
;;		_updateDisplay
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	78
global __ptext2
__ptext2:	;psect for function _dataCtrl
psect	text2
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
	line	78
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 4
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	79
	
l926:	
;PracPreMid.c: 79: PORTC = DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	80
	
l928:	
;PracPreMid.c: 80: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	81
	
l930:	
;PracPreMid.c: 81: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	82
	
l932:	
;PracPreMid.c: 82: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	83
	
l934:	
;PracPreMid.c: 83: delay1(1);
	movlw	low(01h)
	movwf	(delay1@MUL)
	movlw	high(01h)
	movwf	((delay1@MUL))+1
	fcall	_delay1
	line	84
	
l936:	
;PracPreMid.c: 84: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	line	85
	
l71:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 69 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay1
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	69
global __ptext3
__ptext3:	;psect for function _initLCD
psect	text3
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
	line	69
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	70
	
l938:	
;PracPreMid.c: 70: delay1(15);
	movlw	low(0Fh)
	movwf	(delay1@MUL)
	movlw	high(0Fh)
	movwf	((delay1@MUL))+1
	fcall	_delay1
	line	71
;PracPreMid.c: 71: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	72
;PracPreMid.c: 72: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	73
;PracPreMid.c: 73: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	74
;PracPreMid.c: 74: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	75
;PracPreMid.c: 75: instCtrl(0x0F);
	movlw	(0Fh)
	fcall	_instCtrl
	line	76
	
l68:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 60 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;;		_delay1
;; This function is called by:
;;		_initLCD
;;		_updateDisplay
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	60
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
	line	60
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 4
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	61
	
l914:	
;PracPreMid.c: 61: PORTC = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	62
	
l916:	
;PracPreMid.c: 62: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	63
	
l918:	
;PracPreMid.c: 63: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	64
	
l920:	
;PracPreMid.c: 64: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	65
	
l922:	
;PracPreMid.c: 65: delay1(1);
	movlw	low(01h)
	movwf	(delay1@MUL)
	movlw	high(01h)
	movwf	((delay1@MUL))+1
	fcall	_delay1
	line	66
	
l924:	
;PracPreMid.c: 66: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	line	67
	
l65:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay1

;; *************** function _delay1 *****************
;; Defined at:
;;		line 20 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
;; Parameters:    Size  Location     Type
;;  MUL             2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    2[BANK0 ] int 
;;  i               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_instCtrl
;;		_initLCD
;;		_dataCtrl
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	20
global __ptext5
__ptext5:	;psect for function _delay1
psect	text5
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
	line	20
	global	__size_of_delay1
	__size_of_delay1	equ	__end_of_delay1-_delay1
	
_delay1:	
;incstack = 0
	opt	stack 4
; Regs used in _delay1: [wreg+status,2+status,0+btemp+1]
	line	22
	
l894:	
;PracPreMid.c: 21: int i, j;
;PracPreMid.c: 22: for (i = MUL; i != 0; i--) {
	movf	(delay1@MUL+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay1@i+1)
	addwf	(delay1@i+1)
	movf	(delay1@MUL),w
	clrf	(delay1@i)
	addwf	(delay1@i)

	
l896:	
	movf	((delay1@i+1)),w
	iorwf	((delay1@i)),w
	skipz
	goto	u501
	goto	u500
u501:
	goto	l900
u500:
	goto	l53
	
l898:	
	goto	l53
	
l49:	
	line	23
	
l900:	
;PracPreMid.c: 23: for (j = 0; j < 256; j++) {}
	clrf	(delay1@j)
	clrf	(delay1@j+1)
	
l902:	
	movf	(delay1@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u515
	movlw	low(0100h)
	subwf	(delay1@j),w
u515:

	skipc
	goto	u511
	goto	u510
u511:
	goto	l906
u510:
	goto	l910
	
l904:	
	goto	l910
	
l51:	
	
l906:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay1@j),f
	skipnc
	incf	(delay1@j+1),f
	movlw	high(01h)
	addwf	(delay1@j+1),f
	
l908:	
	movf	(delay1@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u525
	movlw	low(0100h)
	subwf	(delay1@j),w
u525:

	skipc
	goto	u521
	goto	u520
u521:
	goto	l906
u520:
	goto	l910
	
l52:	
	line	22
	
l910:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay1@i),f
	skipnc
	incf	(delay1@i+1),f
	movlw	high(-1)
	addwf	(delay1@i+1),f
	
l912:	
	movf	((delay1@i+1)),w
	iorwf	((delay1@i)),w
	skipz
	goto	u531
	goto	u530
u531:
	goto	l900
u530:
	goto	l53
	
l50:	
	line	25
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_delay1
	__end_of_delay1:
	signat	_delay1,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 27 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	27
global __ptext6
__ptext6:	;psect for function _ISR
psect	text6
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PracPreMid\PracPreMid.c"
	line	27
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _ISR: [wreg+status,2]
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
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text6
	line	28
	
i1l606:	
;PracPreMid.c: 28: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	30
;PracPreMid.c: 30: if (RBIF == 1) {
	btfss	(88/8),(88)&7	;volatile
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l56
u5_20:
	line	31
	
i1l608:	
;PracPreMid.c: 31: if (RB5 == 1) {
	btfss	(53/8),(53)&7	;volatile
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l57
u6_20:
	line	32
	
i1l610:	
;PracPreMid.c: 32: keypadPressed = 1;
	bsf	(_keypadPressed/8),(_keypadPressed)&7
	line	33
	
i1l57:	
	line	35
;PracPreMid.c: 33: }
;PracPreMid.c: 35: if (RB0 == 1) {
	btfss	(48/8),(48)&7	;volatile
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l58
u7_20:
	line	36
	
i1l612:	
;PracPreMid.c: 36: pausePressed = 1;
	bsf	(_pausePressed/8),(_pausePressed)&7
	line	37
	
i1l58:	
	line	39
;PracPreMid.c: 37: }
;PracPreMid.c: 39: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	40
	
i1l56:	
	line	42
;PracPreMid.c: 40: }
;PracPreMid.c: 42: if (TMR0IF == 1) {
	btfss	(90/8),(90)&7	;volatile
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l628
u8_20:
	line	43
	
i1l614:	
;PracPreMid.c: 43: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	44
	
i1l616:	
;PracPreMid.c: 44: TMR0 = 6;
	movlw	(06h)
	movwf	(1)	;volatile
	line	46
	
i1l618:	
;PracPreMid.c: 46: if (!isPaused && !timerStopped) {
	btfsc	(_isPaused/8),(_isPaused)&7
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l628
u9_20:
	
i1l620:	
	btfsc	(_timerStopped/8),(_timerStopped)&7
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l628
u10_20:
	line	47
	
i1l622:	
;PracPreMid.c: 47: secondCounter++;
	movlw	low(01h)
	addwf	(_secondCounter),f
	skipnc
	incf	(_secondCounter+1),f
	movlw	high(01h)
	addwf	(_secondCounter+1),f
	line	50
;PracPreMid.c: 50: if (secondCounter >= 100) {
	movlw	high(064h)
	subwf	(_secondCounter+1),w
	movlw	low(064h)
	skipnz
	subwf	(_secondCounter),w
	skipc
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l628
u11_20:
	line	51
	
i1l624:	
;PracPreMid.c: 51: timer0Overflow = 1;
	bsf	(_timer0Overflow/8),(_timer0Overflow)&7
	line	52
	
i1l626:	
;PracPreMid.c: 52: secondCounter = 0;
	clrf	(_secondCounter)
	clrf	(_secondCounter+1)
	goto	i1l628
	line	53
	
i1l61:	
	goto	i1l628
	line	54
	
i1l60:	
	goto	i1l628
	line	55
	
i1l59:	
	line	57
	
i1l628:	
;PracPreMid.c: 53: }
;PracPreMid.c: 54: }
;PracPreMid.c: 55: }
;PracPreMid.c: 57: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	58
	
i1l62:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
