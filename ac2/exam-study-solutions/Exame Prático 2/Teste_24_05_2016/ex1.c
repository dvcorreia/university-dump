// exercício 1 do teste de terça-feira (24/05/2016)
// Diogo Correia 76608
// dv.correia@ua.pt

// Ler valor dos disp-switches (DS4-DS1) e meter nos leds
// apresentar também nos 7seg , display +significativo

#include <detpic32.h>

unsigned char readDipS();
void initAll();
void send2Leds(unsigned char);
void send2Displays(unsigned char);

static volatile unsigned char switchInfo;

void main(void){
	initAll();
	while(1){
		switchInfo = readDipS();
		send2Leds(switchInfo);
		send2Displays(switchInfo);
	}

}

unsigned char readDipS(){
	return (PORTE >> 4) & 0x000F;
}

void initAll(){
	TRISE &= 0xF0;		// leds & switches config
	TRISE |= 0xF0;		//

	TRISB &= 0xFC00;	// displays & gates config
	TRISB |= 0xFC00;
}

void send2Leds(unsigned char info){
	printStr("\nvalue = ");
	printInt10(info);

	LATE &= info;
	LATE |= info;
}

void send2Displays(unsigned char info){
	static const unsigned char codes[] = {	0x77, 0x41, 0x3B, 0x6B, 0x4D, 0x6E, 0x7E, 
										  	0x43, 0x7F,0x4F, 0x5F, 0x7C, 0x36, 0x79, 
										  	0x3E, 0x1E	};
	LATB = (LATB & codes[info]);
	LATB = (LATB | codes[info]);
	LATBbits.LATB8 = 1;
	LATBbits.LATB9 = 0;
}
