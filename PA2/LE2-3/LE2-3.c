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
    PORTB = DATA;         // load data to PORTB
    RC0 = 1;             // set RS to 1 (data reg)
    RC1 = 0;             // set RW to 0 (write)
    RC2 = 1;             // set E to 1
    delay(1);             // 1 ms delay (estimate)
    RC2 = 0;             // set E to 0 (strobe)
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




void main() {
    unsigned char DATA;
    unsigned int charCount = 0; // Counter for character position

    TRISB = 0x00;
    TRISC = 0x00;
    TRISD = 0xFF;
    initLCD();

    instCtrl(0x80); // Move cursor to the beginning of the first line

    while (1) {
        if (RD4 == 1) {
            DATA = PORTD & 0x0F;
            while (RD4) {} // Wait for button release

            if (DATA == 0x00) { dataCtrl('1'); }
            else if (DATA == 0x01) { dataCtrl('2'); }
            else if (DATA == 0x02) { dataCtrl('3'); }
            else if (DATA == 0x04) { dataCtrl('4'); }
            else if (DATA == 0x05) { dataCtrl('5'); }
            else if (DATA == 0x06) { dataCtrl('6'); }
            else if (DATA == 0x08) { dataCtrl('7'); }
            else if (DATA == 0x09) { dataCtrl('8'); }
            else if (DATA == 0x0A) { dataCtrl('9'); }
            else if (DATA == 0x0C) { dataCtrl('*'); }
            else if (DATA == 0x0D) { dataCtrl('0'); }
            else if (DATA == 0x0E) { dataCtrl('#'); }

            charCount++; // Increment character counter

            if (charCount >= 104) { // Check if the screen is full 
                instCtrl(0x01); // Clear display
                instCtrl(0x80); // Reset cursor to the first position
                charCount = 0; // Reset character counter
            }
        }
    }
}