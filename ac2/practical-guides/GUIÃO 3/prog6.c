// Diogo Vala Correia - 76608
// dv.correia@ua.pt

# include <detpic32.h>
void delay(unsigned int);

void main(void){

	static unsigned char display7Scodes[] = {0x77,0x41,0x3B,0x6B,0x4D,0x6E,
											0x7E,0x43,0x7F,0x6F,0x5F,0x7C,
											0x36,0x79,0x3E,0x1E};

	TRISB = TRISE & 0xFE00; 		// RB0 - RB9 = 0 (output) (7seg)
	TRISE = TRISE & 0xF0; 			// RE4 - RE7 = 1 (input) (switches)
	LATBbits.LATB8 = 1;				// gate RB8 = 1

	while(1){

		// read dip-switch & convert to 7seg code
		int bitread = PORTE & 0x00F0;
		bitread = bitread >> 4;
	
		printInt(bitread, 10);
		printStr("\n");

		// send to display
		LATB = (display7Scodes[bitread] | 0x0100) & 0xFDFF;
		delay(1000);
		
	}
}

void delay (unsigned int n_intervals){
	int CALIBRATION_VALUE = 4998;
	volatile unsigned int i;
	for(; n_intervals != 0 ; n_intervals--)
		for(i = CALIBRATION_VALUE ; i != 0 ; i--);
}