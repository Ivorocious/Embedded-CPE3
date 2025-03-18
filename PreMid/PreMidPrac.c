#include <xc.h>

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

void interrupt ISR(){
    GIE = 0;
    
    if(INTF == 1){
        INTF = 0; //reset Flag main
        myINTF = 1;
    }
    else if(TMR0IF == 1){
        TMR0IF = 0; //reset Flag main
        myTMR0IF = 1;
    }

    GIE = 1;
}//interrupt

void delay(int count){
    int    of_count = 0;
    
    while(of_count < count){
        if(myTMR0IF == 1){
            of_count++; //inc until 255
            myTMR0IF = 0;
        }
    }//while
}//delay

void delay1 (int MUL)
{
	int i,j;
	for (i=MUL; i != 0; i--) // loop until i = 0
	{
		for (j=0; j < 256; j++){} // loop until j = 0
	}
}


void instCtrl (unsigned char INST)
{
	PORTC = INST; // load instruction to PORTB (data)
	RB5 = 0; // set RS to 0 (instruction reg)
	RB6 = 0; // set RW to 0 (write)
	RB7 = 1; // set E to 1
	delay1(1); // 1 ms delay (estimate)
	RB7 = 0; // set E to 0 (strobe)
}


initLCD()
{
	delay1(1); // LCD startup about 15ms
	instCtrl(0x38); // function set: 8-bit; dual-line
	instCtrl(0x08); // display off
	instCtrl(0x01); // display clear
	instCtrl(0x06); // entry mode: increment; shift off
	instCtrl(0x0F); // display on; cursor on; blink off
}


void dataCtrl (unsigned char DATA)
{
	PORTC = DATA; // load data to PORTB (data)
	RB5 = 1; // set RS to 1 (data reg)
	RB6 = 0; // set RW to 0 (write)
	RB7 = 1; // set E to 1
	delay(1); // 1 ms delay (estimate)
	RB7 = 0; // set E to 0 (strobe)
}

void main ()
{
	TRISB = 0x01;
	TRISC = 0x00;
	TRISD = 0xFF;

	unsigned char DATA;
	unsigned char STORE;
	unsigned char MSB = 0x00;
	unsigned char LSB = 0x00;
	unsigned char speed;
	unsigned char fspeed = 122;

	initLCD();

	OPTION_REG = 0xC4;    
    
    INTF = 0;
    INTE = 1;

    TMR0IF = 0;
    TMR0IE = 1;

    GIE = 1;

	instCtrl(0xC8);		
	dataCtrl('0');
	instCtrl(0xC9);		
	dataCtrl('0');


	while(1){
		 if(myINTF == 0){
            while(myINTF != 1){} //wait for key press
        } 
		
		if(RB0){
			DATA = PORTD & 0x0F;
      			if(DATA == 0x0C | DATA == 0x0E){
					STORE = DATA;
				} 
				else{
					speed = PORTD & 0x0F;	
					while(RB0){}
					if(speed == 0x00){fspeed = 12;}
					if(speed == 0x01){fspeed = 24;}
					if(speed == 0x02){fspeed = 37;}
					if(speed == 0x04){fspeed = 49;}
					if(speed == 0x05){fspeed = 61;}
					if(speed == 0x06){fspeed = 73;}
					if(speed == 0x08){fspeed = 85;}
					if(speed == 0x09){fspeed = 98;}
					if(speed == 0x0A){fspeed = 110;}
					if(speed == 0x0C){fspeed = 122;}
					if(speed == 0x0D){fspeed = 122;}
					if(speed == 0x0E){fspeed = 122;}
				}

		}

		if(STORE == 0x0C){
			if(MSB == 0x0A && LSB == 0x00){
				instCtrl(0xC8);
				dataCtrl('0');
				instCtrl(0xC9);
				dataCtrl('0');
				LSB = 0x00;
				MSB = 0x00;
				delay(fspeed);
			}
			else if(LSB == 0x09){
				delay(fspeed);
				MSB++;
				instCtrl(0xC8);
				dataCtrl(MSB + '0');
				LSB = 0x00;
				instCtrl(0x0C9);
				dataCtrl('0');
			}
			else {
				delay(fspeed);
				LSB++;
				instCtrl(0xC9);
				dataCtrl(LSB + '0');
			} 

		}
		else if(STORE == 0x0E){
			if(MSB == 0x00 && LSB == 0x00){
				instCtrl(0xC8);
				dataCtrl('9');
				instCtrl(0xC9);
				dataCtrl('9');
				LSB = 0x09;
				MSB = 0x09;
				delay(fspeed);
			}
			else if(LSB == 0x00){
				MSB--;
				instCtrl(0xC8);
				dataCtrl(MSB + '0');
				LSB = 0x09;
				instCtrl(0x0C9);
				dataCtrl('9');
			} else {
				delay(fspeed);
				LSB--;
				instCtrl(0xC9);
				dataCtrl(LSB + '0');
			}
		}

	} //while(1)
}//main

/*
		if(count == 0x28){instCtrl(0xC0);}
				if(count == 0x50){
					count == 0x00;
					initLCD();
				}

				if(RD4 == 1){
					DATA = PORTD & 0x0F;
					while(RD4){}
					if(DATA == 0x00){dataCtrl('1');}
					if(DATA == 0x01){dataCtrl('2');}
					if(DATA == 0x02){dataCtrl('3');}
					if(DATA == 0x04){dataCtrl('4');}
					if(DATA == 0x05){dataCtrl('5');}
					if(DATA == 0x06){dataCtrl('6');}
					if(DATA == 0x08){dataCtrl('7');}
					if(DATA == 0x09){dataCtrl('8');}
					if(DATA == 0x0A){dataCtrl('9');}
					if(DATA == 0x0C){dataCtrl('*');}
					if(DATA == 0x0D){dataCtrl('0');}
					if(DATA == 0x0E){dataCtrl('#');}
					count++;
				}
		
		}
*/