#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define  BIN(b7,b6,b5,b4,b3,b2,b1,b0) \
    ((b7 << 7) | (b6 << 6) | (b5 << 5) | (b4 << 4) | (b3 << 3) | (b2 << 2) | (b1 << 1) | (b0))
 
void interrupt ISR(void)
{
	GIE = 0;
	if(TMR2IF == 1)
	{
		TMR2IF = 0;
		RA0 = RA0^1;
	}
	GIE = 1;
}

 
void main(void)
{
	ADCON1 = 0x6;
	TRISA = 0x00;
	RA0 = 0;
	T2CON = 0;
	TMR2IE = 1;
	TMR2IF = 0;
	PEIE = 1;
	GIE = 1;
	PR2 = 0x7D;
	TMR2ON = 1;
	
	for (;;)
	{
	}
}