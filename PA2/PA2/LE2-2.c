#include<xc.h> // include file for the XC8 compiler
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF


void delay (int MUL)
{
	int i,j;
	for (i=MUL; i != 0; i--){
		for (j=0; j < 256; j++){} // loop until j = 0
	} // loop until i = 0
	
}

void instCtrl (unsigned char INST)
{
	PORTB = INST; // load instruction to PORTB
	RC0 = 0; // set RS to 0 (instruction reg)
	RC1 = 0; // set RW to 0 (write)
	RC2 = 1; // set E to 1
	delay(1); // 1 ms delay (estimate)
	RC2 = 0; // set E to 0 (strobe)
}

void dataCtrl (unsigned char DATA)
{
	PORTB = DATA; 		// load data to PORTB
	RC0 = 1; 			// set RS to 1 (data reg)
	RC1 = 0; 			// set RW to 0 (write)
	RC2 = 1; 			// set E to 1
	delay(1); 			// 1 ms delay (estimate)
	RC2 = 0; 			// set E to 0 (strobe)
}

void initLCD()
{
	delay(1); // LCD startup about approx 15ms
	instCtrl(0x38); // function set: 8-bit; dual-line
	instCtrl(0x08); // display off
	instCtrl(0x01); // display clear
	instCtrl(0x06); // entry mode: increment; shift off
	instCtrl(0x0E); // display on; cursor on; blink off	
}




void main(){


	

	TRISA = 0x00;
	TRISD = 0xFF;
	
	int DATA;
	
	while(1){

		DATA = PORTD & 0x0F;
		while(RD4){}
		if(RD4){
			if(DATA == 0x00){
				PORTA = 0x01;
			}
			else if(DATA == 0x01){
				PORTA = 0x02;
			}
			else if(DATA == 0x02){
				PORTA = 0x03;
			}
			else if(DATA == 0x04){
				PORTA = 0x04;
			}
			else if(DATA == 0x05){
				PORTA = 0x05;
			}
			else if(DATA == 0x06){
				PORTA = 0x06;
			}
			else if(DATA == 0x08){
				PORTA = 0x07;
			}
			else if(DATA == 0x09){
				PORTA = 0x08;
			}
			else if(DATA == 0x0A){
				PORTA = 0x09;
			}
			else if(DATA == 0x00){
				PORTA = 0x00;
			}
		}

	}

}