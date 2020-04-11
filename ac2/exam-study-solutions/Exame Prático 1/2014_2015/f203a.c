// TESTE 1 PRÁTICO AC2 2014/2015 - EX 2 SNAKE
// Diogo Vala Correia - 76608
// dv.correia@ua.pt

#include <detpic32.h>;

void initAll();
void send2Display(unsigned char, int);
void delay(unsigned int);

volatile int dispFlag = 0;		// global flag constant

void main (void) {

	int i = 0 ; 		// Display seg indicator , clock counter

	initAll();		// inicialização

	while(1){

		send2Display(i, 0);
		i++;
		if(i == 8) i = 0;  // reset i 

		delay(250);  // delay de 0,25 segundos
	}

}

void initAll(){
	TRISB &= 0xFC00; 		// Displays & Gates --> outputs
	LATB &= 0xFF00;			// turn off displays
}

void send2Display(unsigned char code, int onoff){

//										F   A    B    G    E    D     C    G
static const unsigned char codes[] = {0x04,0x02,0x01,0x08,0x10,0x20,0x40,0x08};

	if(!onoff){

		LATB |= codes[code];
		LATB &= codes[code];
		LATBbits.LATB8 = onoff;			// Gate 1 on
		LATBbits.LATB9 = !onoff; 		// GAte 2 off

	}else{

		LATB |= codes[code];
		LATB &= codes[code];
		LATBbits.LATB8 = onoff;			// Gate 1 off
		LATBbits.LATB9 = !onoff; 		// GAte 2 on
	}

}
 
 void delay( unsigned int timer){
 	resetCoreTimer();
 	while(readCoreTimer() < timer * (PBCLK/1000));
 }