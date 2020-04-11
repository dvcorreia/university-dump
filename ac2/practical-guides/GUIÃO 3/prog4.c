// Diogo Vala Correia - 76608
// dv.correia@ua.pt


#include <detpic32.h>
void delay(unsigned int);

void main(void){

	TRISB = TRISE & 0xFC00; 		// RB0 - RB9 = 0 (output)
	LATBbits.LATB8 = 1;				// gate RB8 = 1
	LATBbits.LATB9 = 0;				// gate RB8 = 0
	int count = 0;
	while(1){

		count++;
		if(count == 6) count = 0; 

		switch(count){
			case(0): LATB = 0x102; break;
			case(1): LATB = 0x101; break;
			case(2): LATB = 0x140; break;
			case(3): LATB = 0x120; break;
			case(4): LATB = 0x110; break;
			case(5): LATB = 0x104; break;
			default: LATB = 0x180; break;		
		}

		delay(250);
	}
}

void delay (unsigned int n_intervals){
	int CALIBRATION_VALUE = 4998;
	volatile unsigned int i;
	for(; n_intervals != 0 ; n_intervals--)
		for(i = CALIBRATION_VALUE ; i != 0 ; i--);
}