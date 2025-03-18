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
	FNCALL	_main,_dataCtrl
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RD4
_RD4	set	0x44
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
__ptext0:	;psect for function _delay
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
	file	"LE2-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	delay@MUL
delay@MUL:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	global	delay@i
delay@i:	; 2 bytes @ 0x2
	ds	2
	global	delay@j
delay@j:	; 2 bytes @ 0x4
	ds	2
??_instCtrl:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x6
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x6
	ds	1
??_initLCD:	; 0 bytes @ 0x7
??_main:	; 0 bytes @ 0x7
	ds	1
	global	main@charCount
main@charCount:	; 2 bytes @ 0x8
	ds	2
	global	main@DATA
main@DATA:	; 1 bytes @ 0xA
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     11      11
;!    BANK0            80      0       0
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
;!    _main->_dataCtrl
;!    _main->_instCtrl
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
;!    _dataCtrl->_delay
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
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
;! (0) _main                                                 4     4      0    1056
;!                                              7 COMMON     4     4      0
;!                           _dataCtrl
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     423
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     219
;!                                              6 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             1     1      0     219
;!                                              6 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                6     4      2     204
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dataCtrl
;!     _delay
;!   _initLCD
;!     _delay
;!     _instCtrl
;!       _delay
;!   _instCtrl
;!     _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      B       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 54 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  charCount       2    8[COMMON] unsigned int 
;;  DATA            1   10[COMMON] unsigned char 
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
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\LE2-3\LE2-3.c"
	line	54
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\LE2-3\LE2-3.c"
	line	54
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	56
	
l571:	
;LE2-3.c: 55: unsigned char DATA;
;LE2-3.c: 56: unsigned int charCount = 0;
	clrf	(main@charCount)
	clrf	(main@charCount+1)
	line	58
;LE2-3.c: 58: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	59
;LE2-3.c: 59: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	60
	
l573:	
;LE2-3.c: 60: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	61
	
l575:	
;LE2-3.c: 61: initLCD();
	fcall	_initLCD
	line	63
	
l577:	
;LE2-3.c: 63: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	goto	l579
	line	65
;LE2-3.c: 65: while (1) {
	
l37:	
	line	66
	
l579:	
;LE2-3.c: 66: if (RD4 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u51
	goto	u50
u51:
	goto	l579
u50:
	line	67
	
l581:	
;LE2-3.c: 67: DATA = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@DATA)
	line	68
;LE2-3.c: 68: while (RD4) {}
	goto	l39
	
l40:	
	
l39:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u61
	goto	u60
u61:
	goto	l39
u60:
	goto	l583
	
l41:	
	line	70
	
l583:	
;LE2-3.c: 70: if (DATA == 0x00) { dataCtrl('1'); }
	movf	(main@DATA),f
	skipz
	goto	u71
	goto	u70
u71:
	goto	l587
u70:
	
l585:	
	movlw	(031h)
	fcall	_dataCtrl
	goto	l631
	line	71
	
l42:	
	
l587:	
;LE2-3.c: 71: else if (DATA == 0x01) { dataCtrl('2'); }
	movf	(main@DATA),w
	xorlw	01h
	skipz
	goto	u81
	goto	u80
u81:
	goto	l591
u80:
	
l589:	
	movlw	(032h)
	fcall	_dataCtrl
	goto	l631
	line	72
	
l44:	
	
l591:	
;LE2-3.c: 72: else if (DATA == 0x02) { dataCtrl('3'); }
	movf	(main@DATA),w
	xorlw	02h
	skipz
	goto	u91
	goto	u90
u91:
	goto	l595
u90:
	
l593:	
	movlw	(033h)
	fcall	_dataCtrl
	goto	l631
	line	73
	
l46:	
	
l595:	
;LE2-3.c: 73: else if (DATA == 0x04) { dataCtrl('4'); }
	movf	(main@DATA),w
	xorlw	04h
	skipz
	goto	u101
	goto	u100
u101:
	goto	l599
u100:
	
l597:	
	movlw	(034h)
	fcall	_dataCtrl
	goto	l631
	line	74
	
l48:	
	
l599:	
;LE2-3.c: 74: else if (DATA == 0x05) { dataCtrl('5'); }
	movf	(main@DATA),w
	xorlw	05h
	skipz
	goto	u111
	goto	u110
u111:
	goto	l603
u110:
	
l601:	
	movlw	(035h)
	fcall	_dataCtrl
	goto	l631
	line	75
	
l50:	
	
l603:	
;LE2-3.c: 75: else if (DATA == 0x06) { dataCtrl('6'); }
	movf	(main@DATA),w
	xorlw	06h
	skipz
	goto	u121
	goto	u120
u121:
	goto	l607
u120:
	
l605:	
	movlw	(036h)
	fcall	_dataCtrl
	goto	l631
	line	76
	
l52:	
	
l607:	
;LE2-3.c: 76: else if (DATA == 0x08) { dataCtrl('7'); }
	movf	(main@DATA),w
	xorlw	08h
	skipz
	goto	u131
	goto	u130
u131:
	goto	l611
u130:
	
l609:	
	movlw	(037h)
	fcall	_dataCtrl
	goto	l631
	line	77
	
l54:	
	
l611:	
;LE2-3.c: 77: else if (DATA == 0x09) { dataCtrl('8'); }
	movf	(main@DATA),w
	xorlw	09h
	skipz
	goto	u141
	goto	u140
u141:
	goto	l615
u140:
	
l613:	
	movlw	(038h)
	fcall	_dataCtrl
	goto	l631
	line	78
	
l56:	
	
l615:	
;LE2-3.c: 78: else if (DATA == 0x0A) { dataCtrl('9'); }
	movf	(main@DATA),w
	xorlw	0Ah
	skipz
	goto	u151
	goto	u150
u151:
	goto	l619
u150:
	
l617:	
	movlw	(039h)
	fcall	_dataCtrl
	goto	l631
	line	79
	
l58:	
	
l619:	
;LE2-3.c: 79: else if (DATA == 0x0C) { dataCtrl('*'); }
	movf	(main@DATA),w
	xorlw	0Ch
	skipz
	goto	u161
	goto	u160
u161:
	goto	l623
u160:
	
l621:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l631
	line	80
	
l60:	
	
l623:	
;LE2-3.c: 80: else if (DATA == 0x0D) { dataCtrl('0'); }
	movf	(main@DATA),w
	xorlw	0Dh
	skipz
	goto	u171
	goto	u170
u171:
	goto	l627
u170:
	
l625:	
	movlw	(030h)
	fcall	_dataCtrl
	goto	l631
	line	81
	
l62:	
	
l627:	
;LE2-3.c: 81: else if (DATA == 0x0E) { dataCtrl('#'); }
	movf	(main@DATA),w
	xorlw	0Eh
	skipz
	goto	u181
	goto	u180
u181:
	goto	l631
u180:
	
l629:	
	movlw	(023h)
	fcall	_dataCtrl
	goto	l631
	
l64:	
	goto	l631
	line	83
	
l63:	
	goto	l631
	
l61:	
	goto	l631
	
l59:	
	goto	l631
	
l57:	
	goto	l631
	
l55:	
	goto	l631
	
l53:	
	goto	l631
	
l51:	
	goto	l631
	
l49:	
	goto	l631
	
l47:	
	goto	l631
	
l45:	
	goto	l631
	
l43:	
	
l631:	
;LE2-3.c: 83: charCount++;
	movlw	low(01h)
	addwf	(main@charCount),f
	skipnc
	incf	(main@charCount+1),f
	movlw	high(01h)
	addwf	(main@charCount+1),f
	line	85
	
l633:	
;LE2-3.c: 85: if (charCount >= 104) {
	movlw	high(068h)
	subwf	(main@charCount+1),w
	movlw	low(068h)
	skipnz
	subwf	(main@charCount),w
	skipc
	goto	u191
	goto	u190
u191:
	goto	l579
u190:
	line	86
	
l635:	
;LE2-3.c: 86: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	87
;LE2-3.c: 87: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	88
	
l637:	
;LE2-3.c: 88: charCount = 0;
	clrf	(main@charCount)
	clrf	(main@charCount+1)
	goto	l579
	line	89
	
l65:	
	goto	l579
	line	90
	
l38:	
	goto	l579
	line	91
	
l66:	
	line	65
	goto	l579
	
l67:	
	line	92
	
l68:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 41 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\LE2-3\LE2-3.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	41
global __ptext1
__ptext1:	;psect for function _initLCD
psect	text1
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\LE2-3\LE2-3.c"
	line	41
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	43
	
l569:	
;LE2-3.c: 43: delay(1);
	movlw	low(01h)
	movwf	(delay@MUL)
	movlw	high(01h)
	movwf	((delay@MUL))+1
	fcall	_delay
	line	44
;LE2-3.c: 44: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	45
;LE2-3.c: 45: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	46
;LE2-3.c: 46: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	47
;LE2-3.c: 47: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	48
;LE2-3.c: 48: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	49
	
l34:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 21 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\LE2-3\LE2-3.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	21
global __ptext2
__ptext2:	;psect for function _instCtrl
psect	text2
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\LE2-3\LE2-3.c"
	line	21
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	23
	
l545:	
;LE2-3.c: 23: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	24
	
l547:	
;LE2-3.c: 24: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	25
	
l549:	
;LE2-3.c: 25: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	26
	
l551:	
;LE2-3.c: 26: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	27
	
l553:	
;LE2-3.c: 27: delay(1);
	movlw	low(01h)
	movwf	(delay@MUL)
	movlw	high(01h)
	movwf	((delay@MUL))+1
	fcall	_delay
	line	28
	
l555:	
;LE2-3.c: 28: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	29
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 31 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\LE2-3\LE2-3.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	31
global __ptext3
__ptext3:	;psect for function _dataCtrl
psect	text3
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\LE2-3\LE2-3.c"
	line	31
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	33
	
l557:	
;LE2-3.c: 33: PORTB = DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	34
	
l559:	
;LE2-3.c: 34: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	35
	
l561:	
;LE2-3.c: 35: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	36
	
l563:	
;LE2-3.c: 36: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	37
	
l565:	
;LE2-3.c: 37: delay(1);
	movlw	low(01h)
	movwf	(delay@MUL)
	movlw	high(01h)
	movwf	((delay@MUL))+1
	fcall	_delay
	line	38
	
l567:	
;LE2-3.c: 38: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	39
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 12 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  MUL             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    4[COMMON] int 
;;  i               2    2[COMMON] int 
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
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_instCtrl
;;		_dataCtrl
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	12
global __ptext4
__ptext4:	;psect for function _delay
psect	text4
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\LE2-3\LE2-3.c"
	line	12
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2+status,0+btemp+1]
	line	15
	
l525:	
;LE2-3.c: 14: int i,j;
;LE2-3.c: 15: for (i=MUL; i != 0; i--){
	movf	(delay@MUL+1),w
	clrf	(delay@i+1)
	addwf	(delay@i+1)
	movf	(delay@MUL),w
	clrf	(delay@i)
	addwf	(delay@i)

	
l527:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l531
u10:
	goto	l25
	
l529:	
	goto	l25
	
l21:	
	line	16
	
l531:	
;LE2-3.c: 16: for (j=0; j < 256; j++){}
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l533:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(0100h)
	subwf	(delay@j),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l537
u20:
	goto	l541
	
l535:	
	goto	l541
	
l23:	
	
l537:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l539:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(0100h)
	subwf	(delay@j),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l537
u30:
	goto	l541
	
l24:	
	line	15
	
l541:	
	movlw	low(-1)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(-1)
	addwf	(delay@i+1),f
	
l543:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l531
u40:
	goto	l25
	
l22:	
	line	19
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
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
