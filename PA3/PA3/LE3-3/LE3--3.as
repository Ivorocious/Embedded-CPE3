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
	FNCALL	_main,_delay
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_counter
	global	_myINTF
	global	_myTMR0IF
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
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
	file	"LE3--3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_myINTF:
       ds      1

_myTMR0IF:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_counter:
       ds      1

	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
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
?_main:	; 0 bytes @ 0x0
	ds	5
?_delay:	; 0 bytes @ 0x5
	global	delay@count
delay@count:	; 2 bytes @ 0x5
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_delay:	; 0 bytes @ 0x0
	ds	1
	global	delay@of_count
delay@of_count:	; 2 bytes @ 0x1
	ds	2
??_main:	; 0 bytes @ 0x3
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         1
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7       9
;!    BANK0            80      4       4
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
;!    _main->_delay
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_delay
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
;! (0) _main                                                 1     1      0     133
;!                                              3 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     3      2     133
;!                                              5 COMMON     2     0      2
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       D       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      4       4       5        5.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       D      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 100 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA3\PA3\LE3-3\LE3-3.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA3\PA3\LE3-3\LE3-3.c"
	line	100
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA3\PA3\LE3-3\LE3-3.c"
	line	100
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	103
	
l616:	
;LE3-3.c: 103: TRISB = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	104
	
l618:	
;LE3-3.c: 104: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	106
	
l620:	
;LE3-3.c: 106: OPTION_REG = 0xC3;
	movlw	(0C3h)
	movwf	(129)^080h	;volatile
	line	108
	
l622:	
;LE3-3.c: 108: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	109
	
l624:	
;LE3-3.c: 109: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	111
	
l626:	
;LE3-3.c: 111: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	112
	
l628:	
;LE3-3.c: 112: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	114
	
l630:	
;LE3-3.c: 114: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	117
;LE3-3.c: 117: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l632
	line	118
;LE3-3.c: 118: while (1)
	
l51:	
	line	120
	
l632:	
;LE3-3.c: 119: {
;LE3-3.c: 120: if (myINTF == 0)
	btfsc	(_myINTF/8),(_myINTF)&7
	goto	u221
	goto	u220
u221:
	goto	l640
u220:
	line	122
	
l634:	
;LE3-3.c: 121: {
;LE3-3.c: 122: counter++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_counter),f
	line	124
	
l636:	
;LE3-3.c: 124: if (counter == 0x0A)
	movf	(_counter),w
	xorlw	0Ah
	skipz
	goto	u231
	goto	u230
u231:
	goto	l640
u230:
	line	126
	
l638:	
;LE3-3.c: 125: {
;LE3-3.c: 126: counter = 0x00;
	clrf	(_counter)
	goto	l640
	line	127
	
l53:	
	line	132
;LE3-3.c: 127: }
;LE3-3.c: 132: }
	goto	l640
	line	143
	
l52:	
	goto	l640
	line	146
;LE3-3.c: 143: else
;LE3-3.c: 144: {
	
l54:	
	line	147
	
l640:	
;LE3-3.c: 146: }
;LE3-3.c: 147: delay(195);
	movlw	low(0C3h)
	movwf	(delay@count)
	movlw	high(0C3h)
	movwf	((delay@count))+1
	fcall	_delay
	line	148
	
l642:	
;LE3-3.c: 148: PORTC = counter;
	movf	(_counter),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l632
	line	149
	
l55:	
	line	118
	goto	l632
	
l56:	
	line	150
	
l57:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 86 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA3\PA3\LE3-3\LE3-3.c"
;; Parameters:    Size  Location     Type
;;  count           2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  of_count        2    1[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	86
global __ptext1
__ptext1:	;psect for function _delay
psect	text1
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA3\PA3\LE3-3\LE3-3.c"
	line	86
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	88
	
l610:	
;LE3-3.c: 88: int of_count = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@of_count)
	clrf	(delay@of_count+1)
	line	90
;LE3-3.c: 90: while (of_count < count)
	goto	l44
	
l45:	
	line	92
;LE3-3.c: 91: {
;LE3-3.c: 92: if(myTMR0IF == 1)
	btfss	(_myTMR0IF/8),(_myTMR0IF)&7
	goto	u201
	goto	u200
u201:
	goto	l44
u200:
	line	94
	
l612:	
;LE3-3.c: 93: {
;LE3-3.c: 94: of_count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@of_count),f
	skipnc
	incf	(delay@of_count+1),f
	movlw	high(01h)
	addwf	(delay@of_count+1),f
	line	95
	
l614:	
;LE3-3.c: 95: myTMR0IF = 0;
	bcf	(_myTMR0IF/8),(_myTMR0IF)&7
	goto	l44
	line	96
	
l46:	
	line	97
	
l44:	
	line	90
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@of_count+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@count+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u215
	movf	(delay@count),w
	subwf	(delay@of_count),w
u215:

	skipc
	goto	u211
	goto	u210
u211:
	goto	l45
u210:
	goto	l48
	
l47:	
	line	98
	
l48:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 16 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA3\PA3\LE3-3\LE3-3.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	16
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA3\PA3\LE3-3\LE3-3.c"
	line	16
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text2
	line	18
	
i1l520:	
;LE3-3.c: 18: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	20
;LE3-3.c: 20: if(INTF == 1)
	btfss	(89/8),(89)&7	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l29
u3_20:
	line	22
	
i1l522:	
;LE3-3.c: 21: {
;LE3-3.c: 22: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	25
	
i1l524:	
;LE3-3.c: 25: if (PORTB == 0x01)
	movf	(6),w	;volatile
	xorlw	01h
	skipz
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l30
u4_20:
	line	27
	
i1l526:	
;LE3-3.c: 26: {
;LE3-3.c: 27: PORTC = 0x01;
	movlw	(01h)
	movwf	(7)	;volatile
	line	28
	
i1l528:	
;LE3-3.c: 28: counter = 0x01;
	clrf	(_counter)
	incf	(_counter),f
	line	30
	
i1l30:	
	line	32
;LE3-3.c: 30: }
;LE3-3.c: 32: if (PORTB == 0x03)
	movf	(6),w	;volatile
	xorlw	03h
	skipz
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l31
u5_20:
	line	34
	
i1l530:	
;LE3-3.c: 33: {
;LE3-3.c: 34: PORTC = 0x02;
	movlw	(02h)
	movwf	(7)	;volatile
	line	35
;LE3-3.c: 35: counter = 0x02;
	movlw	(02h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_counter)
	line	37
	
i1l31:	
	line	39
;LE3-3.c: 37: }
;LE3-3.c: 39: if (PORTB == 0x07)
	movf	(6),w	;volatile
	xorlw	07h
	skipz
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l32
u6_20:
	line	41
	
i1l532:	
;LE3-3.c: 40: {
;LE3-3.c: 41: PORTC = 0x03;
	movlw	(03h)
	movwf	(7)	;volatile
	line	42
;LE3-3.c: 42: counter = 0x03;
	movlw	(03h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_counter)
	line	44
	
i1l32:	
	line	45
;LE3-3.c: 44: }
;LE3-3.c: 45: if (PORTB == 0x09)
	movf	(6),w	;volatile
	xorlw	09h
	skipz
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l33
u7_20:
	line	47
	
i1l534:	
;LE3-3.c: 46: {
;LE3-3.c: 47: PORTC = 0x04;
	movlw	(04h)
	movwf	(7)	;volatile
	line	48
;LE3-3.c: 48: counter = 0x04;
	movlw	(04h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_counter)
	line	49
	
i1l33:	
	line	50
;LE3-3.c: 49: }
;LE3-3.c: 50: if (PORTB == 0x0B)
	movf	(6),w	;volatile
	xorlw	0Bh
	skipz
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l34
u8_20:
	line	52
	
i1l536:	
;LE3-3.c: 51: {
;LE3-3.c: 52: PORTC = 0x05;
	movlw	(05h)
	movwf	(7)	;volatile
	line	53
;LE3-3.c: 53: counter = 0x05;
	movlw	(05h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_counter)
	line	54
	
i1l34:	
	line	55
;LE3-3.c: 54: }
;LE3-3.c: 55: if (PORTB == 0x0F)
	movf	(6),w	;volatile
	xorlw	0Fh
	skipz
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l35
u9_20:
	line	57
	
i1l538:	
;LE3-3.c: 56: {
;LE3-3.c: 57: PORTC = 0x06;
	movlw	(06h)
	movwf	(7)	;volatile
	line	58
;LE3-3.c: 58: counter = 0x06;
	movlw	(06h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_counter)
	line	59
	
i1l35:	
	line	60
;LE3-3.c: 59: }
;LE3-3.c: 60: if (PORTB == 0x11)
	movf	(6),w	;volatile
	xorlw	011h
	skipz
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l36
u10_20:
	line	62
	
i1l540:	
;LE3-3.c: 61: {
;LE3-3.c: 62: PORTC = 0x07;
	movlw	(07h)
	movwf	(7)	;volatile
	line	63
;LE3-3.c: 63: counter = 0x07;
	movlw	(07h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_counter)
	line	64
	
i1l36:	
	line	65
;LE3-3.c: 64: }
;LE3-3.c: 65: if (PORTB == 0x13)
	movf	(6),w	;volatile
	xorlw	013h
	skipz
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l37
u11_20:
	line	67
	
i1l542:	
;LE3-3.c: 66: {
;LE3-3.c: 67: PORTC = 0x08;
	movlw	(08h)
	movwf	(7)	;volatile
	line	68
;LE3-3.c: 68: counter = 0x08;
	movlw	(08h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_counter)
	line	69
	
i1l37:	
	line	70
;LE3-3.c: 69: }
;LE3-3.c: 70: if (PORTB == 0x17)
	movf	(6),w	;volatile
	xorlw	017h
	skipz
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l39
u12_20:
	line	72
	
i1l544:	
;LE3-3.c: 71: {
;LE3-3.c: 72: PORTC = 0x09;
	movlw	(09h)
	movwf	(7)	;volatile
	line	73
;LE3-3.c: 73: counter = 0x09;
	movlw	(09h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_counter)
	goto	i1l39
	line	74
	
i1l38:	
	line	75
;LE3-3.c: 74: }
;LE3-3.c: 75: }
	goto	i1l39
	line	78
	
i1l29:	
;LE3-3.c: 78: else if(TMR0IF == 1)
	btfss	(90/8),(90)&7	;volatile
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l39
u13_20:
	line	80
	
i1l546:	
;LE3-3.c: 79: {
;LE3-3.c: 80: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	81
;LE3-3.c: 81: myTMR0IF = 1;
	bsf	(_myTMR0IF/8),(_myTMR0IF)&7
	goto	i1l39
	line	82
	
i1l40:	
	line	83
	
i1l39:	
;LE3-3.c: 82: }
;LE3-3.c: 83: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	84
	
i1l41:	
	movf	(??_ISR+4),w
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
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
