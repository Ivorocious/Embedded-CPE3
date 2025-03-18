#include<xc.h>

 #pragma config FOSC = XT 
 #pragma config WDTE = OFF 
 #pragma config PWRTE = ON 
 #pragma config BOREN = ON 
 #pragma config LVP = OFF 
 #pragma config CPD = OFF 
 #pragma config WRT = OFF 
 #pragma config CP = OFF

void main()
 {
   // Write your code here
    int i, cnt;
    TRISB = 0x00;
    TRISA = 0x01;
    ADCON1 = 0x06;
    
    PORTB = 0x00;
    if(RA0 == 1){
	 for(i=0; i<3; i++){
	    for(cnt=0; cnt<1000;cnt++);
	       PORTB = 0x01;
	    for(cnt=0; cnt<1000;cnt++);
	        PORTB = 0x00;
	    
	    }
    }
    return;
   
 }