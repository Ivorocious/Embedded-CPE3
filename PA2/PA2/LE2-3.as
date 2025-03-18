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
	FNCALL	_main,_delay
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
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
	global	delay@max
delay@max:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	ds	1
	global	delay@cnt
delay@cnt:	; 2 bytes @ 0x3
	ds	2
??_instCtrl:	; 0 bytes @ 0x5
??_dataCtrl:	; 0 bytes @ 0x5
	global	instCtrl@data
instCtrl@data:	; 1 bytes @ 0x5
	global	dataCtrl@data
dataCtrl@data:	; 1 bytes @ 0x5
	ds	1
??_initLCD:	; 0 bytes @ 0x6
??_main:	; 0 bytes @ 0x6
	ds	2
	global	main@input
main@input:	; 2 bytes @ 0x8
	ds	2
	global	main@max_LCD_pos
main@max_LCD_pos:	; 2 bytes @ 0xA
	ds	2
	global	main@curr_LCD_pos
main@curr_LCD_pos:	; 2 bytes @ 0xC
	ds	2
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
;!    COMMON           14     14      14
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 8     8      0     816
;!                                              6 COMMON     8     8      0
;!                           _dataCtrl
;!                              _delay
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     174
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     174
;!                                              5 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             1     1      0     174
;!                                              5 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                5     3      2     159
;!                                              0 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dataCtrl
;!     _delay
;!   _delay
;!   _initLCD
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
;!COMMON               E      E       E       1      100.0%
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
;;		line 51 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\PA2\LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  curr_LCD_pos    2   12[COMMON] unsigned int 
;;  max_LCD_pos     2   10[COMMON] unsigned int 
;;  input           2    8[COMMON] unsigned int 
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
;;      Locals:         6       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;;		_delay
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\PA2\LE2-3.c"
	line	51
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\PA2\LE2-3.c"
	line	51
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	54
	
l538:	
;LE2-3.c: 53: unsigned input;
;LE2-3.c: 54: unsigned curr_LCD_pos = 0x80;
	movlw	low(080h)
	movwf	(main@curr_LCD_pos)
	movlw	high(080h)
	movwf	((main@curr_LCD_pos))+1
	line	55
;LE2-3.c: 55: unsigned max_LCD_pos = 0xE8;
	movlw	low(0E8h)
	movwf	(main@max_LCD_pos)
	movlw	high(0E8h)
	movwf	((main@max_LCD_pos))+1
	line	56
	
l540:	
;LE2-3.c: 56: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	57
	
l542:	
;LE2-3.c: 57: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	58
;LE2-3.c: 58: TRISD = 0x1F;
	movlw	(01Fh)
	movwf	(136)^080h	;volatile
	line	60
	
l544:	
;LE2-3.c: 60: initLCD();
	fcall	_initLCD
	line	61
;LE2-3.c: 61: while (curr_LCD_pos <= max_LCD_pos){
	goto	l602
	
l33:	
	line	62
	
l546:	
;LE2-3.c: 62: instCtrl(curr_LCD_pos);
	movf	(main@curr_LCD_pos),w
	fcall	_instCtrl
	line	63
	
l548:	
;LE2-3.c: 63: if(RD4 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l602
u20:
	line	64
	
l550:	
;LE2-3.c: 64: input = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@input)
	movf	1+(??_main+0)+0,w
	movwf	(main@input+1)
	line	65
;LE2-3.c: 65: switch(input){
	goto	l578
	line	66
;LE2-3.c: 66: case 0x00: dataCtrl('1'); break;
	
l36:	
	
l552:	
	movlw	(031h)
	fcall	_dataCtrl
	goto	l580
	line	67
;LE2-3.c: 67: case 0x01: dataCtrl('2'); break;
	
l38:	
	
l554:	
	movlw	(032h)
	fcall	_dataCtrl
	goto	l580
	line	68
;LE2-3.c: 68: case 0x02: dataCtrl('3'); break;
	
l39:	
	
l556:	
	movlw	(033h)
	fcall	_dataCtrl
	goto	l580
	line	69
;LE2-3.c: 69: case 0x04: dataCtrl('4'); break;
	
l40:	
	
l558:	
	movlw	(034h)
	fcall	_dataCtrl
	goto	l580
	line	70
;LE2-3.c: 70: case 0x05: dataCtrl('5'); break;
	
l41:	
	
l560:	
	movlw	(035h)
	fcall	_dataCtrl
	goto	l580
	line	71
;LE2-3.c: 71: case 0x06: dataCtrl('6'); break;
	
l42:	
	
l562:	
	movlw	(036h)
	fcall	_dataCtrl
	goto	l580
	line	72
;LE2-3.c: 72: case 0x08: dataCtrl('7'); break;
	
l43:	
	
l564:	
	movlw	(037h)
	fcall	_dataCtrl
	goto	l580
	line	73
;LE2-3.c: 73: case 0x09: dataCtrl('8'); break;
	
l44:	
	
l566:	
	movlw	(038h)
	fcall	_dataCtrl
	goto	l580
	line	74
;LE2-3.c: 74: case 0x0A: dataCtrl('9'); break;
	
l45:	
	
l568:	
	movlw	(039h)
	fcall	_dataCtrl
	goto	l580
	line	75
;LE2-3.c: 75: case 0x0C: dataCtrl('*'); break;
	
l46:	
	
l570:	
	movlw	(02Ah)
	fcall	_dataCtrl
	goto	l580
	line	76
;LE2-3.c: 76: case 0x0D: dataCtrl('0'); break;
	
l47:	
	
l572:	
	movlw	(030h)
	fcall	_dataCtrl
	goto	l580
	line	77
;LE2-3.c: 77: case 0x0E: dataCtrl('#'); break;
	
l48:	
	
l574:	
	movlw	(023h)
	fcall	_dataCtrl
	goto	l580
	line	78
	
l576:	
;LE2-3.c: 78: }
	goto	l580
	line	65
	
l35:	
	
l578:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@input+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l640
	goto	l580
	opt asmopt_on
	
l640:	
; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           53     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@input),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l552
	xorlw	1^0	; case 1
	skipnz
	goto	l554
	xorlw	2^1	; case 2
	skipnz
	goto	l556
	xorlw	4^2	; case 4
	skipnz
	goto	l558
	xorlw	5^4	; case 5
	skipnz
	goto	l560
	xorlw	6^5	; case 6
	skipnz
	goto	l562
	xorlw	8^6	; case 8
	skipnz
	goto	l564
	xorlw	9^8	; case 9
	skipnz
	goto	l566
	xorlw	10^9	; case 10
	skipnz
	goto	l568
	xorlw	12^10	; case 12
	skipnz
	goto	l570
	xorlw	13^12	; case 13
	skipnz
	goto	l572
	xorlw	14^13	; case 14
	skipnz
	goto	l574
	goto	l580
	opt asmopt_on

	line	78
	
l37:	
	line	80
	
l580:	
;LE2-3.c: 80: delay(5000);
	movlw	low(01388h)
	movwf	(delay@max)
	movlw	high(01388h)
	movwf	((delay@max))+1
	fcall	_delay
	line	81
	
l582:	
;LE2-3.c: 81: if(curr_LCD_pos == 0x93){
	movlw	093h
	xorwf	(main@curr_LCD_pos),w
	iorwf	(main@curr_LCD_pos+1),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l586
u30:
	line	82
	
l584:	
;LE2-3.c: 82: curr_LCD_pos = 0xBF;
	movlw	low(0BFh)
	movwf	(main@curr_LCD_pos)
	movlw	high(0BFh)
	movwf	((main@curr_LCD_pos))+1
	line	83
;LE2-3.c: 83: } else if (curr_LCD_pos == 0xD3){
	goto	l600
	
l49:	
	
l586:	
	movlw	0D3h
	xorwf	(main@curr_LCD_pos),w
	iorwf	(main@curr_LCD_pos+1),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l590
u40:
	line	84
	
l588:	
;LE2-3.c: 84: curr_LCD_pos = 0x93;
	movlw	low(093h)
	movwf	(main@curr_LCD_pos)
	movlw	high(093h)
	movwf	((main@curr_LCD_pos))+1
	line	85
;LE2-3.c: 85: } else if (curr_LCD_pos == 0xA7){
	goto	l600
	
l51:	
	
l590:	
	movlw	0A7h
	xorwf	(main@curr_LCD_pos),w
	iorwf	(main@curr_LCD_pos+1),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l594
u50:
	line	86
	
l592:	
;LE2-3.c: 86: curr_LCD_pos = 0xD3;
	movlw	low(0D3h)
	movwf	(main@curr_LCD_pos)
	movlw	high(0D3h)
	movwf	((main@curr_LCD_pos))+1
	line	87
;LE2-3.c: 87: } else if (curr_LCD_pos < max_LCD_pos){
	goto	l600
	
l53:	
	
l594:	
	movf	(main@max_LCD_pos+1),w
	subwf	(main@curr_LCD_pos+1),w
	skipz
	goto	u65
	movf	(main@max_LCD_pos),w
	subwf	(main@curr_LCD_pos),w
u65:
	skipnc
	goto	u61
	goto	u60
u61:
	goto	l600
u60:
	line	88
	
l596:	
;LE2-3.c: 88: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	89
	
l598:	
;LE2-3.c: 89: curr_LCD_pos = 0x7F;
	movlw	low(07Fh)
	movwf	(main@curr_LCD_pos)
	movlw	high(07Fh)
	movwf	((main@curr_LCD_pos))+1
	goto	l600
	line	90
	
l55:	
	goto	l600
	line	91
	
l54:	
	goto	l600
	
l52:	
	goto	l600
	
l50:	
	
l600:	
;LE2-3.c: 90: }
;LE2-3.c: 91: curr_LCD_pos++;
	movlw	low(01h)
	addwf	(main@curr_LCD_pos),f
	skipnc
	incf	(main@curr_LCD_pos+1),f
	movlw	high(01h)
	addwf	(main@curr_LCD_pos+1),f
	goto	l602
	line	92
	
l34:	
	goto	l602
	line	93
	
l32:	
	line	61
	
l602:	
	movf	(main@curr_LCD_pos+1),w
	subwf	(main@max_LCD_pos+1),w
	skipz
	goto	u75
	movf	(main@curr_LCD_pos),w
	subwf	(main@max_LCD_pos),w
u75:
	skipnc
	goto	u71
	goto	u70
u71:
	goto	l546
u70:
	goto	l57
	
l56:	
	line	95
;LE2-3.c: 92: }
;LE2-3.c: 93: }
;LE2-3.c: 94: return;
	
l57:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 41 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\PA2\LE2-3.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
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
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\PA2\LE2-3.c"
	line	41
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	42
	
l534:	
;LE2-3.c: 42: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	43
;LE2-3.c: 43: instCtrl(0x00);
	movlw	(0)
	fcall	_instCtrl
	line	44
;LE2-3.c: 44: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	45
;LE2-3.c: 45: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	46
;LE2-3.c: 46: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	goto	l29
	line	48
	
l536:	
	line	49
;LE2-3.c: 48: return;
	
l29:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 23 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\PA2\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    5[COMMON] unsigned char 
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
;;		_delay
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	23
global __ptext2
__ptext2:	;psect for function _instCtrl
psect	text2
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\PA2\LE2-3.c"
	line	23
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
;instCtrl@data stored from wreg
	movwf	(instCtrl@data)
	line	24
	
l518:	
;LE2-3.c: 24: PORTB = data;
	movf	(instCtrl@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	25
;LE2-3.c: 25: PORTC = 0x02;
	movlw	(02h)
	movwf	(7)	;volatile
	line	26
	
l520:	
;LE2-3.c: 26: delay(5000);
	movlw	low(01388h)
	movwf	(delay@max)
	movlw	high(01388h)
	movwf	((delay@max))+1
	fcall	_delay
	line	27
	
l522:	
;LE2-3.c: 27: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l23
	line	29
	
l524:	
	line	30
;LE2-3.c: 29: return;
	
l23:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 32 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\PA2\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    5[COMMON] unsigned char 
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
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	32
global __ptext3
__ptext3:	;psect for function _dataCtrl
psect	text3
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\PA2\LE2-3.c"
	line	32
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@data stored from wreg
	movwf	(dataCtrl@data)
	line	33
	
l526:	
;LE2-3.c: 33: PORTB = data;
	movf	(dataCtrl@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	34
;LE2-3.c: 34: PORTC = 0x03;
	movlw	(03h)
	movwf	(7)	;volatile
	line	35
	
l528:	
;LE2-3.c: 35: delay(5000);
	movlw	low(01388h)
	movwf	(delay@max)
	movlw	high(01388h)
	movwf	((delay@max))+1
	fcall	_delay
	line	36
	
l530:	
;LE2-3.c: 36: PORTC = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l26
	line	38
	
l532:	
	line	39
;LE2-3.c: 38: return;
	
l26:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 15 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\PA2\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  max             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  cnt             2    3[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_instCtrl
;;		_dataCtrl
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	15
global __ptext4
__ptext4:	;psect for function _delay
psect	text4
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PA2\PA2\LE2-3.c"
	line	15
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	17
	
l514:	
;LE2-3.c: 16: int cnt;
;LE2-3.c: 17: for(cnt=0;cnt<max;cnt++);
	clrf	(delay@cnt)
	clrf	(delay@cnt+1)
	goto	l17
	
l18:	
	
l516:	
	movlw	low(01h)
	addwf	(delay@cnt),f
	skipnc
	incf	(delay@cnt+1),f
	movlw	high(01h)
	addwf	(delay@cnt+1),f
	
l17:	
	movf	(delay@cnt+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@max+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u15
	movf	(delay@max),w
	subwf	(delay@cnt),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l516
u10:
	goto	l20
	
l19:	
	line	20
;LE2-3.c: 19: return;
	
l20:	
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
