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
	int period = 0;
	GIE = 0;
	if (CCP1IF = 1)
	{
		CCP1IF = 0;
		TMR1 = 0;
		period = CCPR1/1000;
		
		period = period*8;
	}
	GIE = 1;

}
 
void main (void)
{
	TRSIC = 0x04;
	T1CON = 0x30;
	CCP1CON = 0x05;
	CCP1IE = 1;
	CCP1IF = 0;
	PEIE = 1; 
	GIE = 1; 
	TMR1ON = 1;
	
	for(;;)
	{
	}
	
}