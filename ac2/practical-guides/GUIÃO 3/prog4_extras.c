// Diogo Vala Correia - 76608
// dv.correia@ua.pt


#include <detpic32.h>
void delay(unsigned int);

void main(void){
	TRISE &= 0x0;					// RE0 - RE3 = output
	TRISB = TRISE & 0xFC00; 		// RB0 - RB9 = 0 (output)
	LATBbits.LATB8 = 1;				// gate RB8 = 1
	LATBbits.LATB9 = 0;				// gate RB8 = 0
	int count = 0;
	int freq = 0;
	int sentido = 1;
	int ledc = 0;

	while(1){
		count++;
		if(count == 13) count = 1; 

		if(sentido = 1){
			freq++;
			if(freq == 5){ freq = 1; sentido = 0;}
		}else{
			freq--;
			if(freq == 0){ freq = 1; sentido = 1;}
		}

		switch(count){
			
			case(1): LATB = 0x102; break;
			case(2): LATB = 0x101; break;
			case(3): LATB = 0x140; break;
			case(4): LATB = 0x220; break;
			case(5): LATB = 0x240; break;
			case(6): LATB = 0x201; break;
			case(7): LATB = 0x202; break;
			case(8): LATB = 0x204; break;
			case(9): LATB = 0x210; break;
			case(10): LATB = 0x120; break;
			case(11): LATB = 0x110; break;
			case(12): LATB = 0x104; break;

			default: LATB = 0x180; break;		
		}

		// led module
		if(ledc == 0){ ledc++; }
		else{
			ledc = ledc << 1;	
			if(ledc == 0x10) ledc = 0;	// reset leds
		}
		PORTE = ledc;		// send code to leds 


		delay(100/freq);
	}
}

void delay (unsigned int n_intervals){
	int CALIBRATION_VALUE = 4998;
	volatile unsigned int i;
	for(; n_intervals != 0 ; n_intervals--)
		for(i = CALIBRATION_VALUE ; i != 0 ; i--);
}