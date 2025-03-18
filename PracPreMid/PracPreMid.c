#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

bit keypadPressed = 0;       // Flag for keypad input
bit pausePressed = 0;        // Flag for pause button pressed
bit isPaused = 0;            // Flag for pause state
bit timerStopped = 0;        // Flag to stop timer at limits
bit timer0Overflow = 0;      // Flag for timer0 overflow
unsigned int secondCounter = 0;  // Counter for tracking seconds

// Simple delay function that doesn't rely on Timer0
void delay1(int MUL) {
    int i, j;
    for (i = MUL; i != 0; i--) {
        for (j = 0; j < 256; j++) {} // Simple delay loop
    }
}

void interrupt ISR() {
    GIE = 0;  // Disable global interrupts temporarily

    if (RBIF == 1) {  // Check if a PORTB interrupt occurred
        if (RB5 == 1) {  // If RB5 (keypad) is pressed
            keypadPressed = 1;  // Set flag for keypad input
        }
        
        if (RB0 == 1) {  // If RB0 (pause button) is pressed
            pausePressed = 1;  // Set flag for button handling in main loop
        }
        
        RBIF = 0;  // Clear PORTB interrupt flag
    }

    if (TMR0IF == 1) {  // Timer0 overflow interrupt
        TMR0IF = 0;     // Clear the interrupt flag
        TMR0 = 6;       // Reload Timer0 for ~10ms overflow (with 4MHz clock and 1:32 prescaler)
        
        if (!isPaused && !timerStopped) {
            secondCounter++;   // Increment second counter
            
            // 100 overflows * 10ms = 1 second
            if (secondCounter >= 100) {  
                timer0Overflow = 1;  // Signal a second has passed
                secondCounter = 0;   // Reset counter
            }
        }
    }

    GIE = 1;  // Re-enable global interrupts
}

void instCtrl(unsigned char INST) {
    PORTC = INST;   // Load instruction to PORTC
    RB1 = 0;        // Set RS to 0 (instruction register)
    RB2 = 0;        // Set RW to 0 (write)
    RB3 = 1;        // Set E to 1
    delay1(1);      // Short delay
    RB3 = 0;        // Set E to 0 (strobe)
}

void initLCD() {
    delay1(15);     // LCD startup delay
    instCtrl(0x38); // Function set: 8-bit; dual-line
    instCtrl(0x08); // Display off
    instCtrl(0x01); // Display clear
    instCtrl(0x06); // Entry mode: increment; shift off
    instCtrl(0x0F); // Display on; cursor on; blink on
}

void dataCtrl(unsigned char DATA) {
    PORTC = DATA;   // Load data to PORTC
    RB1 = 1;        // Set RS to 1 (data register)
    RB2 = 0;        // Set RW to 0 (write)
    RB3 = 1;        // Set E to 1
    delay1(1);      // Short delay
    RB3 = 0;        // Set E to 0 (strobe)
}

void updateDisplay(unsigned char MSB, unsigned char LSB) {
    // Update MSB digit
    instCtrl(0xC9);
    dataCtrl(MSB + '0');
    
    // Update LSB digit
    instCtrl(0xCA);
    dataCtrl(LSB + '0');
}

void main() {
    TRISB = 0x21;  // RB0 and RB5 as inputs, rest outputs
    TRISC = 0x00;  // All PORTC pins as outputs for LCD
    TRISD = 0xFF;  // All PORTD pins as inputs for keypad
	//isPaused = 1;

    unsigned char keyData;
    unsigned char mode = 0;       // 0=none, 1=increment, 2=decrement
    unsigned char MSB = 0;        // Most significant digit
    unsigned char LSB = 0;        // Least significant digit

    // Initialize LCD
    initLCD();
    
    // Setup Timer0
    OPTION_REG = 0x04;  // Timer0 configuration: prescaler 1:32 assigned to Timer0
    TMR0 = 6;           // Initialize Timer0 for ~10ms overflow
    
    // Setup interrupts
    RBIF = 0;
    RBIE = 1;      // Enable PORTB interrupt for RB0-RB7 change
    
    TMR0IF = 0;
    TMR0IE = 1;    // Enable Timer0 interrupt
    
    GIE = 1;       // Enable global interrupts
    
    // Initial display of "00"
    updateDisplay(0, 0);

    while (1) {
        // Handle pause button in main loop instead of ISR
        if (pausePressed = 1) {
            delay1(20);  // Debounce delay
            while (RB0 == 1);  // Wait for button release
            delay1(20);  // Debounce delay after release
            
            isPaused ^= isPaused;  // Toggle pause state
            pausePressed = 0;      // Clear the flag
        }
    
        // Check for keypad input only when not paused
        if (!isPaused && keypadPressed) {
            keyData = PORTD & 0x0F;  // Read keypad
            
            if (keyData == 0x0C) {  // * key for increment
                mode = 1;
                timerStopped = 0;   // Enable counting
            } 
            else if (keyData == 0x0E) {  // # key for decrement
                mode = 2;
                
                // If at 00, set to 24 before starting to decrement
                if (MSB == 0 && LSB == 0) {
                    MSB = 2;
                    LSB = 4;
                    updateDisplay(MSB, LSB);
                }
                
                timerStopped = 0;   // Enable counting
            }
            
            keypadPressed = 0;  // Reset keypad flag
        }
        
        // Only count when one second has passed (controlled by timer0Overflow flag)
        if (timer0Overflow) {
            timer0Overflow = 0;  // Clear the flag
            
            if (mode == 1) {  // Increment mode
                // Increment logic
                if (MSB == 2 && LSB == 4) {  // Reset at 24
                    MSB = 0;
                    LSB = 0;
                    updateDisplay(MSB, LSB);
                    timerStopped = 1;  // Stop at 00
                }
                else if (LSB == 9) {  // Roll over from x9 to (x+1)0
                    LSB = 0;
                    MSB++;
                    updateDisplay(MSB, LSB);
                }
                else {  // Normal increment
                    LSB++;
                    updateDisplay(MSB, LSB);
                }
            }
            else if (mode == 2) {  // Decrement mode
                // Decrement logic
                if (MSB == 0 && LSB == 0) {  // Stop at 00
                    timerStopped = 1;  // Stop counting
                }
                else if (LSB == 0) {  // Roll over from x0 to (x-1)9
                    LSB = 9;
                    MSB--;
                    updateDisplay(MSB, LSB);
                }
                else {  // Normal decrement
                    LSB--;
                    updateDisplay(MSB, LSB);
                }
            }
        }
    }
}