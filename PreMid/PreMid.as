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
	FNCALL	_initLCD,_delay1
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay1
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_myINTF
	global	_myTMR0IF
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_RB0
_RB0	set	0x30
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
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
	file	"PreMid.as"
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

	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
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
?_dataCtrl:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_initLCD:	; 2 bytes @ 0x0
	ds	4
?_delay:	; 0 bytes @ 0x4
?_delay1:	; 0 bytes @ 0x4
	global	delay@count
delay@count:	; 2 bytes @ 0x4
	global	delay1@MUL
delay1@MUL:	; 2 bytes @ 0x4
	ds	2
??_delay:	; 0 bytes @ 0x6
??_delay1:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x6
	ds	1
??_initLCD:	; 0 bytes @ 0x7
	global	delay@of_count
delay@of_count:	; 2 bytes @ 0x7
	ds	2
??_dataCtrl:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x0
	global	delay1@i
delay1@i:	; 2 bytes @ 0x0
	ds	2
	global	delay1@j
delay1@j:	; 2 bytes @ 0x2
	ds	2
??_main:	; 0 bytes @ 0x4
	ds	2
	global	main@STORE
main@STORE:	; 1 bytes @ 0x6
	ds	1
	global	main@DATA
main@DATA:	; 1 bytes @ 0x7
	ds	1
	global	main@MSB
main@MSB:	; 1 bytes @ 0x8
	ds	1
	global	main@LSB
main@LSB:	; 1 bytes @ 0x9
	ds	1
	global	main@fspeed
main@fspeed:	; 1 bytes @ 0xA
	ds	1
	global	main@speed
main@speed:	; 1 bytes @ 0xB
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
;!    COMMON           14      9      10
;!    BANK0            80     12      12
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
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay1
;!    _dataCtrl->_delay
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 8     8      0    2976
;!                                              4 BANK0      8     8      0
;!                           _dataCtrl
;!                              _delay
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     625
;!                             _delay1
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     328
;!                                              6 COMMON     1     1      0
;!                             _delay1
;! ---------------------------------------------------------------------------------
;! (2) _delay1                                               6     4      2     297
;!                                              4 COMMON     2     0      2
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             1     1      0     489
;!                                              0 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     3      2     458
;!                                              4 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
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
;!   _dataCtrl
;!     _delay
;!   _delay
;!   _initLCD
;!     _delay1
;!     _instCtrl
;!       _delay1
;!   _instCtrl
;!     _delay1
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      16       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      C       C       5       15.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      16      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 83 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  speed           1   11[BANK0 ] unsigned char 
;;  fspeed          1   10[BANK0 ] unsigned char 
;;  LSB             1    9[BANK0 ] unsigned char 
;;  MSB             1    8[BANK0 ] unsigned char 
;;  DATA            1    7[BANK0 ] unsigned char 
;;  STORE           1    6[BANK0 ] unsigned char 
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
;;      Locals:         0       6       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels required when called:    4
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
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
	line	83
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
	line	83
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	85
	
l1015:	
;PreMidPrac.c: 85: TRISB = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	86
	
l1017:	
;PreMidPrac.c: 86: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	87
	
l1019:	
;PreMidPrac.c: 87: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	91
;PreMidPrac.c: 89: unsigned char DATA;
;PreMidPrac.c: 90: unsigned char STORE;
;PreMidPrac.c: 91: unsigned char MSB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@MSB)
	line	92
;PreMidPrac.c: 92: unsigned char LSB = 0x00;
	clrf	(main@LSB)
	line	94
	
l1021:	
;PreMidPrac.c: 93: unsigned char speed;
;PreMidPrac.c: 94: unsigned char fspeed = 122;
	movlw	(07Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	line	96
	
l1023:	
;PreMidPrac.c: 96: initLCD();
	fcall	_initLCD
	line	98
	
l1025:	
;PreMidPrac.c: 98: OPTION_REG = 0xC4;
	movlw	(0C4h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	100
	
l1027:	
;PreMidPrac.c: 100: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	101
	
l1029:	
;PreMidPrac.c: 101: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	103
	
l1031:	
;PreMidPrac.c: 103: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	104
	
l1033:	
;PreMidPrac.c: 104: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	106
	
l1035:	
;PreMidPrac.c: 106: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	108
	
l1037:	
;PreMidPrac.c: 108: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	109
	
l1039:	
;PreMidPrac.c: 109: dataCtrl('0');
	movlw	(030h)
	fcall	_dataCtrl
	line	110
	
l1041:	
;PreMidPrac.c: 110: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	111
	
l1043:	
;PreMidPrac.c: 111: dataCtrl('0');
	movlw	(030h)
	fcall	_dataCtrl
	goto	l1045
	line	114
;PreMidPrac.c: 114: while(1){
	
l66:	
	line	115
	
l1045:	
;PreMidPrac.c: 115: if(myINTF == 0){
	btfsc	(_myINTF/8),(_myINTF)&7
	goto	u731
	goto	u730
u731:
	goto	l67
u730:
	goto	l68
	line	116
	
l1047:	
;PreMidPrac.c: 116: while(myINTF != 1){}
	goto	l68
	
l69:	
	
l68:	
	btfss	(_myINTF/8),(_myINTF)&7
	goto	u741
	goto	u740
u741:
	goto	l68
u740:
	goto	l67
	
l70:	
	line	117
	
l67:	
	line	119
;PreMidPrac.c: 117: }
;PreMidPrac.c: 119: if(RB0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7	;volatile
	goto	u751
	goto	u750
u751:
	goto	l71
u750:
	line	120
	
l1049:	
;PreMidPrac.c: 120: DATA = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@DATA)
	line	121
	
l1051:	
;PreMidPrac.c: 121: if(DATA == 0x0C | DATA == 0x0E){
	movf	(main@DATA),w
	xorlw	0Ch
	skipnz
	goto	u761
	goto	u760
u761:
	goto	l1055
u760:
	
l1053:	
	movf	(main@DATA),w
	xorlw	0Eh
	skipz
	goto	u771
	goto	u770
u771:
	goto	l1057
u770:
	goto	l1055
	
l74:	
	line	122
	
l1055:	
;PreMidPrac.c: 122: STORE = DATA;
	movf	(main@DATA),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@STORE)
	line	123
;PreMidPrac.c: 123: }
	goto	l71
	line	124
	
l72:	
	line	125
	
l1057:	
;PreMidPrac.c: 124: else{
;PreMidPrac.c: 125: speed = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@speed)
	line	126
;PreMidPrac.c: 126: while(RB0){}
	goto	l76
	
l77:	
	
l76:	
	btfsc	(48/8),(48)&7	;volatile
	goto	u781
	goto	u780
u781:
	goto	l76
u780:
	goto	l1059
	
l78:	
	line	127
	
l1059:	
;PreMidPrac.c: 127: if(speed == 0x00){fspeed = 12;}
	movf	(main@speed),f
	skipz
	goto	u791
	goto	u790
u791:
	goto	l79
u790:
	
l1061:	
	movlw	(0Ch)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	
l79:	
	line	128
;PreMidPrac.c: 128: if(speed == 0x01){fspeed = 24;}
	movf	(main@speed),w
	xorlw	01h
	skipz
	goto	u801
	goto	u800
u801:
	goto	l80
u800:
	
l1063:	
	movlw	(018h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	
l80:	
	line	129
;PreMidPrac.c: 129: if(speed == 0x02){fspeed = 37;}
	movf	(main@speed),w
	xorlw	02h
	skipz
	goto	u811
	goto	u810
u811:
	goto	l81
u810:
	
l1065:	
	movlw	(025h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	
l81:	
	line	130
;PreMidPrac.c: 130: if(speed == 0x04){fspeed = 49;}
	movf	(main@speed),w
	xorlw	04h
	skipz
	goto	u821
	goto	u820
u821:
	goto	l82
u820:
	
l1067:	
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	
l82:	
	line	131
;PreMidPrac.c: 131: if(speed == 0x05){fspeed = 61;}
	movf	(main@speed),w
	xorlw	05h
	skipz
	goto	u831
	goto	u830
u831:
	goto	l83
u830:
	
l1069:	
	movlw	(03Dh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	
l83:	
	line	132
;PreMidPrac.c: 132: if(speed == 0x06){fspeed = 73;}
	movf	(main@speed),w
	xorlw	06h
	skipz
	goto	u841
	goto	u840
u841:
	goto	l84
u840:
	
l1071:	
	movlw	(049h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	
l84:	
	line	133
;PreMidPrac.c: 133: if(speed == 0x08){fspeed = 85;}
	movf	(main@speed),w
	xorlw	08h
	skipz
	goto	u851
	goto	u850
u851:
	goto	l85
u850:
	
l1073:	
	movlw	(055h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	
l85:	
	line	134
;PreMidPrac.c: 134: if(speed == 0x09){fspeed = 98;}
	movf	(main@speed),w
	xorlw	09h
	skipz
	goto	u861
	goto	u860
u861:
	goto	l86
u860:
	
l1075:	
	movlw	(062h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	
l86:	
	line	135
;PreMidPrac.c: 135: if(speed == 0x0A){fspeed = 110;}
	movf	(main@speed),w
	xorlw	0Ah
	skipz
	goto	u871
	goto	u870
u871:
	goto	l87
u870:
	
l1077:	
	movlw	(06Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	
l87:	
	line	136
;PreMidPrac.c: 136: if(speed == 0x0C){fspeed = 122;}
	movf	(main@speed),w
	xorlw	0Ch
	skipz
	goto	u881
	goto	u880
u881:
	goto	l88
u880:
	
l1079:	
	movlw	(07Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	
l88:	
	line	137
;PreMidPrac.c: 137: if(speed == 0x0D){fspeed = 122;}
	movf	(main@speed),w
	xorlw	0Dh
	skipz
	goto	u891
	goto	u890
u891:
	goto	l89
u890:
	
l1081:	
	movlw	(07Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	
l89:	
	line	138
;PreMidPrac.c: 138: if(speed == 0x0E){fspeed = 122;}
	movf	(main@speed),w
	xorlw	0Eh
	skipz
	goto	u901
	goto	u900
u901:
	goto	l71
u900:
	
l1083:	
	movlw	(07Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@fspeed)
	goto	l71
	
l90:	
	goto	l71
	line	139
	
l75:	
	line	141
	
l71:	
	line	143
;PreMidPrac.c: 139: }
;PreMidPrac.c: 141: }
;PreMidPrac.c: 143: if(STORE == 0x0C){
	movf	(main@STORE),w
	xorlw	0Ch
	skipz
	goto	u911
	goto	u910
u911:
	goto	l1123
u910:
	line	144
	
l1085:	
;PreMidPrac.c: 144: if(MSB == 0x0A && LSB == 0x00){
	movf	(main@MSB),w
	xorlw	0Ah
	skipz
	goto	u921
	goto	u920
u921:
	goto	l1099
u920:
	
l1087:	
	movf	(main@LSB),f
	skipz
	goto	u931
	goto	u930
u931:
	goto	l1099
u930:
	line	145
	
l1089:	
;PreMidPrac.c: 145: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	146
	
l1091:	
;PreMidPrac.c: 146: dataCtrl('0');
	movlw	(030h)
	fcall	_dataCtrl
	line	147
	
l1093:	
;PreMidPrac.c: 147: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	148
;PreMidPrac.c: 148: dataCtrl('0');
	movlw	(030h)
	fcall	_dataCtrl
	line	149
	
l1095:	
;PreMidPrac.c: 149: LSB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@LSB)
	line	150
	
l1097:	
;PreMidPrac.c: 150: MSB = 0x00;
	clrf	(main@MSB)
	line	151
;PreMidPrac.c: 151: delay(fspeed);
	movf	(main@fspeed),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(delay@count)
	movf	1+(??_main+0)+0,w
	movwf	(delay@count+1)
	fcall	_delay
	line	152
;PreMidPrac.c: 152: }
	goto	l1045
	line	153
	
l92:	
	
l1099:	
;PreMidPrac.c: 153: else if(LSB == 0x09){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@LSB),w
	xorlw	09h
	skipz
	goto	u941
	goto	u940
u941:
	goto	l1115
u940:
	line	154
	
l1101:	
;PreMidPrac.c: 154: delay(fspeed);
	movf	(main@fspeed),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(delay@count)
	movf	1+(??_main+0)+0,w
	movwf	(delay@count+1)
	fcall	_delay
	line	155
	
l1103:	
;PreMidPrac.c: 155: MSB++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@MSB),f
	line	156
	
l1105:	
;PreMidPrac.c: 156: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	157
	
l1107:	
;PreMidPrac.c: 157: dataCtrl(MSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@MSB),w
	addlw	030h
	fcall	_dataCtrl
	line	158
	
l1109:	
;PreMidPrac.c: 158: LSB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@LSB)
	line	159
	
l1111:	
;PreMidPrac.c: 159: instCtrl(0x0C9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	160
	
l1113:	
;PreMidPrac.c: 160: dataCtrl('0');
	movlw	(030h)
	fcall	_dataCtrl
	line	161
;PreMidPrac.c: 161: }
	goto	l1045
	line	162
	
l94:	
	line	163
	
l1115:	
;PreMidPrac.c: 162: else {
;PreMidPrac.c: 163: delay(fspeed);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@fspeed),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(delay@count)
	movf	1+(??_main+0)+0,w
	movwf	(delay@count+1)
	fcall	_delay
	line	164
	
l1117:	
;PreMidPrac.c: 164: LSB++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@LSB),f
	line	165
	
l1119:	
;PreMidPrac.c: 165: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	166
	
l1121:	
;PreMidPrac.c: 166: dataCtrl(LSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@LSB),w
	addlw	030h
	fcall	_dataCtrl
	goto	l1045
	line	167
	
l95:	
	goto	l1045
	
l93:	
	line	169
;PreMidPrac.c: 167: }
;PreMidPrac.c: 169: }
	goto	l1045
	line	170
	
l91:	
	
l1123:	
;PreMidPrac.c: 170: else if(STORE == 0x0E){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@STORE),w
	xorlw	0Eh
	skipz
	goto	u951
	goto	u950
u951:
	goto	l1045
u950:
	line	171
	
l1125:	
;PreMidPrac.c: 171: if(MSB == 0x00 && LSB == 0x00){
	movf	(main@MSB),f
	skipz
	goto	u961
	goto	u960
u961:
	goto	l1139
u960:
	
l1127:	
	movf	(main@LSB),f
	skipz
	goto	u971
	goto	u970
u971:
	goto	l1139
u970:
	line	172
	
l1129:	
;PreMidPrac.c: 172: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	173
	
l1131:	
;PreMidPrac.c: 173: dataCtrl('9');
	movlw	(039h)
	fcall	_dataCtrl
	line	174
	
l1133:	
;PreMidPrac.c: 174: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	175
;PreMidPrac.c: 175: dataCtrl('9');
	movlw	(039h)
	fcall	_dataCtrl
	line	176
	
l1135:	
;PreMidPrac.c: 176: LSB = 0x09;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@LSB)
	line	177
	
l1137:	
;PreMidPrac.c: 177: MSB = 0x09;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@MSB)
	line	178
;PreMidPrac.c: 178: delay(fspeed);
	movf	(main@fspeed),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(delay@count)
	movf	1+(??_main+0)+0,w
	movwf	(delay@count+1)
	fcall	_delay
	line	179
;PreMidPrac.c: 179: }
	goto	l1045
	line	180
	
l98:	
	
l1139:	
;PreMidPrac.c: 180: else if(LSB == 0x00){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@LSB),f
	skipz
	goto	u981
	goto	u980
u981:
	goto	l1153
u980:
	line	181
	
l1141:	
;PreMidPrac.c: 181: MSB--;
	movlw	low(01h)
	subwf	(main@MSB),f
	line	182
	
l1143:	
;PreMidPrac.c: 182: instCtrl(0xC8);
	movlw	(0C8h)
	fcall	_instCtrl
	line	183
	
l1145:	
;PreMidPrac.c: 183: dataCtrl(MSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@MSB),w
	addlw	030h
	fcall	_dataCtrl
	line	184
	
l1147:	
;PreMidPrac.c: 184: LSB = 0x09;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@LSB)
	line	185
	
l1149:	
;PreMidPrac.c: 185: instCtrl(0x0C9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	186
	
l1151:	
;PreMidPrac.c: 186: dataCtrl('9');
	movlw	(039h)
	fcall	_dataCtrl
	line	187
;PreMidPrac.c: 187: } else {
	goto	l1045
	
l100:	
	line	188
	
l1153:	
;PreMidPrac.c: 188: delay(fspeed);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@fspeed),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(delay@count)
	movf	1+(??_main+0)+0,w
	movwf	(delay@count+1)
	fcall	_delay
	line	189
	
l1155:	
;PreMidPrac.c: 189: LSB--;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@LSB),f
	line	190
	
l1157:	
;PreMidPrac.c: 190: instCtrl(0xC9);
	movlw	(0C9h)
	fcall	_instCtrl
	line	191
	
l1159:	
;PreMidPrac.c: 191: dataCtrl(LSB + '0');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@LSB),w
	addlw	030h
	fcall	_dataCtrl
	goto	l1045
	line	192
	
l101:	
	goto	l1045
	
l99:	
	goto	l1045
	line	193
	
l97:	
	goto	l1045
	line	195
	
l96:	
	goto	l1045
	
l102:	
	line	114
	goto	l1045
	
l103:	
	line	196
	
l104:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 62 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   59[COMMON] int 
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
psect	text1,local,class=CODE,delta=2,merge=1
	line	62
global __ptext1
__ptext1:	;psect for function _initLCD
psect	text1
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
	line	62
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	64
	
l1001:	
;PreMidPrac.c: 64: delay1(1);
	movlw	low(01h)
	movwf	(delay1@MUL)
	movlw	high(01h)
	movwf	((delay1@MUL))+1
	fcall	_delay1
	line	65
;PreMidPrac.c: 65: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	66
;PreMidPrac.c: 66: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	67
;PreMidPrac.c: 67: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	68
;PreMidPrac.c: 68: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	69
;PreMidPrac.c: 69: instCtrl(0x0F);
	movlw	(0Fh)
	fcall	_instCtrl
	line	70
	
l60:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,90
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 51 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	51
global __ptext2
__ptext2:	;psect for function _instCtrl
psect	text2
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
	line	51
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	53
	
l989:	
;PreMidPrac.c: 53: PORTC = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	54
	
l991:	
;PreMidPrac.c: 54: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	55
	
l993:	
;PreMidPrac.c: 55: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	56
	
l995:	
;PreMidPrac.c: 56: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	57
	
l997:	
;PreMidPrac.c: 57: delay1(1);
	movlw	low(01h)
	movwf	(delay1@MUL)
	movlw	high(01h)
	movwf	((delay1@MUL))+1
	fcall	_delay1
	line	58
	
l999:	
;PreMidPrac.c: 58: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	59
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay1

;; *************** function _delay1 *****************
;; Defined at:
;;		line 41 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
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
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	41
global __ptext3
__ptext3:	;psect for function _delay1
psect	text3
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
	line	41
	global	__size_of_delay1
	__size_of_delay1	equ	__end_of_delay1-_delay1
	
_delay1:	
;incstack = 0
	opt	stack 5
; Regs used in _delay1: [wreg+status,2+status,0+btemp+1]
	line	44
	
l963:	
;PreMidPrac.c: 43: int i,j;
;PreMidPrac.c: 44: for (i=MUL; i != 0; i--)
	movf	(delay1@MUL+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay1@i+1)
	addwf	(delay1@i+1)
	movf	(delay1@MUL),w
	clrf	(delay1@i)
	addwf	(delay1@i)

	
l965:	
	movf	((delay1@i+1)),w
	iorwf	((delay1@i)),w
	skipz
	goto	u671
	goto	u670
u671:
	goto	l969
u670:
	goto	l54
	
l967:	
	goto	l54
	line	45
	
l50:	
	line	46
	
l969:	
;PreMidPrac.c: 45: {
;PreMidPrac.c: 46: for (j=0; j < 256; j++){}
	clrf	(delay1@j)
	clrf	(delay1@j+1)
	
l971:	
	movf	(delay1@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u685
	movlw	low(0100h)
	subwf	(delay1@j),w
u685:

	skipc
	goto	u681
	goto	u680
u681:
	goto	l975
u680:
	goto	l979
	
l973:	
	goto	l979
	
l52:	
	
l975:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay1@j),f
	skipnc
	incf	(delay1@j+1),f
	movlw	high(01h)
	addwf	(delay1@j+1),f
	
l977:	
	movf	(delay1@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u695
	movlw	low(0100h)
	subwf	(delay1@j),w
u695:

	skipc
	goto	u691
	goto	u690
u691:
	goto	l975
u690:
	goto	l979
	
l53:	
	line	44
	
l979:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay1@i),f
	skipnc
	incf	(delay1@i+1),f
	movlw	high(-1)
	addwf	(delay1@i+1),f
	
l981:	
	movf	((delay1@i+1)),w
	iorwf	((delay1@i)),w
	skipz
	goto	u701
	goto	u700
u701:
	goto	l969
u700:
	goto	l54
	
l51:	
	line	48
	
l54:	
	return
	opt stack 0
GLOBAL	__end_of_delay1
	__end_of_delay1:
	signat	_delay1,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 73 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	73
global __ptext4
__ptext4:	;psect for function _dataCtrl
psect	text4
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
	line	73
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@DATA stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCtrl@DATA)
	line	75
	
l1003:	
;PreMidPrac.c: 75: PORTC = DATA;
	movf	(dataCtrl@DATA),w
	movwf	(7)	;volatile
	line	76
	
l1005:	
;PreMidPrac.c: 76: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	77
	
l1007:	
;PreMidPrac.c: 77: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	78
	
l1009:	
;PreMidPrac.c: 78: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	79
	
l1011:	
;PreMidPrac.c: 79: delay(1);
	movlw	low(01h)
	movwf	(delay@count)
	movlw	high(01h)
	movwf	((delay@count))+1
	fcall	_delay
	line	80
	
l1013:	
;PreMidPrac.c: 80: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	81
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 30 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
;; Parameters:    Size  Location     Type
;;  count           2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  of_count        2    7[COMMON] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dataCtrl
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	30
global __ptext5
__ptext5:	;psect for function _delay
psect	text5
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
	line	30
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	31
	
l983:	
;PreMidPrac.c: 31: int of_count = 0;
	clrf	(delay@of_count)
	clrf	(delay@of_count+1)
	line	33
;PreMidPrac.c: 33: while(of_count < count){
	goto	l43
	
l44:	
	line	34
;PreMidPrac.c: 34: if(myTMR0IF == 1){
	btfss	(_myTMR0IF/8),(_myTMR0IF)&7
	goto	u711
	goto	u710
u711:
	goto	l43
u710:
	line	35
	
l985:	
;PreMidPrac.c: 35: of_count++;
	movlw	low(01h)
	addwf	(delay@of_count),f
	skipnc
	incf	(delay@of_count+1),f
	movlw	high(01h)
	addwf	(delay@of_count+1),f
	line	36
	
l987:	
;PreMidPrac.c: 36: myTMR0IF = 0;
	bcf	(_myTMR0IF/8),(_myTMR0IF)&7
	goto	l43
	line	37
	
l45:	
	line	38
	
l43:	
	line	33
	movf	(delay@of_count+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@count+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u725
	movf	(delay@count),w
	subwf	(delay@of_count),w
u725:

	skipc
	goto	u721
	goto	u720
u721:
	goto	l44
u720:
	goto	l47
	
l46:	
	line	39
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 15 in file "C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
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
	line	15
global __ptext6
__ptext6:	;psect for function _ISR
psect	text6
	file	"C:\Users\ivorr\OneDrive\Documents\abEMBEDDED\PreMid\PreMidPrac.c"
	line	15
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _ISR: []
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
	line	16
	
i1l613:	
;PreMidPrac.c: 16: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	18
;PreMidPrac.c: 18: if(INTF == 1){
	btfss	(89/8),(89)&7	;volatile
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l37
u7_20:
	line	19
	
i1l615:	
;PreMidPrac.c: 19: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	20
;PreMidPrac.c: 20: myINTF = 1;
	bsf	(_myINTF/8),(_myINTF)&7
	line	21
;PreMidPrac.c: 21: }
	goto	i1l38
	line	22
	
i1l37:	
;PreMidPrac.c: 22: else if(TMR0IF == 1){
	btfss	(90/8),(90)&7	;volatile
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l38
u8_20:
	line	23
	
i1l617:	
;PreMidPrac.c: 23: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	24
;PreMidPrac.c: 24: myTMR0IF = 1;
	bsf	(_myTMR0IF/8),(_myTMR0IF)&7
	goto	i1l38
	line	25
	
i1l39:	
	line	27
	
i1l38:	
;PreMidPrac.c: 25: }
;PreMidPrac.c: 27: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	28
	
i1l40:	
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
