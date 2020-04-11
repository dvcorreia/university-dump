// Diogo Vala Correia - 76608
// dv.correia@ua.pt

#include <detpic32.h>
void delay(unsigned int);

void main(void){

	TRISB = TRISE & 0xFE00; 		// RB0 - RB9 = 0 (output)
	LATBbits.LATB8 = 1;				// gate RB8 = 1

	while(1){

		printStr("getChar: ");
		char i = getChar();
		printStr("\n");

		switch(i){

			case('0'): LATB = 0x177; break;
			case('1'): LATB = 0x141; break;
			case('2'): LATB = 0x13B; break;
			case('3'): LATB = 0x16B; break;
			case('4'): LATB = 0x14D; break;
			case('5'): LATB = 0x16E; break;
			case('6'): LATB = 0x17E; break;
			case('7'): LATB = 0x143; break;
			case('8'): LATB = 0x17F; break;
			case('9'): LATB = 0x16F; break;

			case('a'): LATB = 0x15F; break;
			case('b'): LATB = 0x17C; break;
			case('c'): LATB = 0x136; break;
			case('d'): LATB = 0x179; break;
			case('e'): LATB = 0x13E; break;
			case('f'): LATB = 0x11E; break;

			default: LATB = 0x1FF; break;

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