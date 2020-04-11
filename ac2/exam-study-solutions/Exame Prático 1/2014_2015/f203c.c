// TESTE 1 PRÁTICO AC2 2014/2015 - EX 2 c) SNAKE
// Diogo Vala Correia - 76608
// dv.correia@ua.pt

#include <detpic32.h>;

void initAll();
void send2Display(unsigned char, int);
void delay(unsigned int);
int readADC();

volatile int dispFlag = 0;		// global flag constant

void main (void) {
 	// arrays com a info dos displays
	//  	          f1  a1 b1 e2 d2 c2 b2 a2 f2 c1 d1 e1         
	int letterSeq[] = {5, 0, 1, 4, 3, 2, 1, 0, 5, 2, 3, 4};
	int gateSeq[] =   {0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0};

	int i = 0 ; 						// Display seg indicator , clock counter
	int speed = 0;						// snake speed

	initAll();							// inicialização

	while(1){

		send2Display(letterSeq[i], gateSeq[i]);
		i++;
		if(i == 12) i = 0;  				// reset i 

		AD1CON1bits.ASAM = 1 ;			// start ADC conversion
		while(IFS1bits.AD1IF == 0);		// wait for conversion

		speed = readADC();
		printInt(speed, 10);			// print speed decimal
		printStr("\n");

		delay(250 * speed);  			// delay de 0,25 * speed segundos
	}

}

void initAll(){
	TRISB &= 0xFC00; 		// Displays & Gates --> outputs
	LATB &= 0xFF00;			// turn off displays

	// ADC configuration
	TRISBbits.TRISB14 = 1;			// Disconect digital output
	AD1PCFGbits.PCFG14 = 0; 		// Configurar como entrana analógica

	AD1CHSbits.CH0SA = 14;			// AN14 como input para a ADC
	AD1CON2bits.SMPI = 7; 			// 7 samples da ADC (buffers)

	AD1CON1bits.SSRC = 7;			// códigos adicionais
	AD1CON1bits.CLRASAM = 1;		//
	AD1CON3bits.SAMC = 16;			//
	AD1CON1bits.ON = 1; 			//

}

void send2Display(unsigned char code, int onoff){
//  									A    B    C    D   E     F    G 
static const unsigned char codes[] = {0x02,0x01,0x40,0x20,0x10,0x04,0x08};

	if(onoff){

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

 int readADC(){
 	int media = 0, i;
 	static unsigned int *p = (int *)(&ADC1BUF0);

 	for(i = 0 ; i < 8 ; i++ ){
 		media += p[i * 4];
 	}

 	media = media / 8; 

 	// calculo do valor para os 8 ńíveis
 	return ((media * 8) / 1023) + 1;  // +1 para não haver nível 0
 }