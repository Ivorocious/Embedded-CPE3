#include<xc.h> // include file for the XC8 compiler

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

bit myINTF = 0;
bit myTMR0IF = 0;
unsigned char counter = 0x00;

void interrupt ISR()
{
	GIE = 0;
	
	if(INTF == 1)
	{
		INTF = 0;
		//myINTF ^= 1;
		
		if (PORTB == 0x01)
		{
			PORTC = 0x01;
			counter = 0x01;
			//counter++;
		}
		
		if (PORTB == 0x03)
		{
			PORTC = 0x02;
			counter = 0x02;
			//counter++;
		}

		if (PORTB == 0x07)
		{
			PORTC = 0x03;
			counter = 0x03;
			
		}
		if (PORTB == 0x09)
		{
			PORTC = 0x04;
			counter = 0x04;
		}
		if (PORTB == 0x0B)
		{
			PORTC = 0x05;
			counter = 0x05;
		}
		if (PORTB == 0x0F)
		{
			PORTC = 0x06;
			counter = 0x06;
		}
		if (PORTB == 0x11)
		{
			PORTC = 0x07;
			counter = 0x07;
		}
		if (PORTB == 0x13)
		{
			PORTC = 0x08;
			counter = 0x08;
		}
		if (PORTB == 0x17)
		{
			PORTC = 0x09;
			counter = 0x09;
		}
	}
	
	
	else if(TMR0IF == 1)
	{
		TMR0IF = 0;
		myTMR0IF = 1;
	}
	GIE = 1;
}

void delay(int count)
{
	int of_count = 0;
	
	while (of_count < count)
	{
		if(myTMR0IF == 1)
		{
			of_count++;
			myTMR0IF = 0;
		}	
	}
}

void main ()
{
	//unsigned char counter = 0x00;
	TRISB = 0xFF;
	TRISC = 0x00;
	
	OPTION_REG = 0xC3;

	INTF = 0;
	INTE = 1;
	
	TMR0IF = 0;
	TMR0IE = 1;	
	
	GIE = 1;
	
	
	PORTC = 0x00;
	while (1)
	{
		if (myINTF == 0)
		{
			counter++;
			
				if (counter == 0x0A)
			{
			counter = 0x00;
			}
			/*while(myINTF != 1)
			{
				//Nothing Really Matters, Anyone can see
			}*/
		}
		
		/*if (PORTB == 0x10)
		{
			PORTC = 0x01;
			counter = 0x01;
		}*/
		/*else if (counter == 0x09)
		{
			counter = 0x00;
		}*/
		else
		{
			//counter++;
		}
		delay(195);
		PORTC = counter;
	}
}