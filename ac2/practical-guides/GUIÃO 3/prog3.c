// Diogo Vala Correia - 76608
// dv.correia@ua.pt

#include <detpic32.h>
void delay(unsigned int);

void main(void){

	TRISB = TRISE & 0xFC00; 		// RB0 - RB9 = 0 (output)
	LATBbits.LATB8 = 1;				// gate RB8 = 1
	LATBbits.LATB9 = 1;				// gate RB8 = 1

	while(1){

		printStr("getChar: ");
		char i = getChar();
		printStr("\n");

		switch(i){
			case('a'): LATB = 0x02; break;
			case('b'): LATB = 0x01; break;
			case('c'): LATB = 0x40; break;
			case('d'): LATB = 0x20; break;
			case('e'): LATB = 0x10; break;
			case('f'): LATB = 0x04; break;
			case('g'): LATB = 0x08; break;
			case('.'): LATB = 0x80; break;
			default: LATB = 0xFF; break;

			delay(1000);
		}

	}
}

void delay (unsigned int n_intervals){
	int CALIBRATION_VALUE = 4998;
	volatile unsigned int i;
	for(; n_intervals != 0 ; n_intervals--)
		for(i = CALIBRATION_VALUE ; i != 0 ; i--);
}