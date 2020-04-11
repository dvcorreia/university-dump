// exercício 2 do teste de terça-feira (24/05/2016)
// Diogo Correia 76608
// dv.correia@ua.pt

// a) Escreva termómetro 0-70º . Displays em decimal. 
// 	refresh da ADC 50Hz . refresh Displays 400Hz c/ timer 2.
// b) Gerar no ponto de teste OC2 um sinal 400Hz e duty-cycle 25%.

#include <detpic32.h>

void send2Displays(unsigned char);
unsigned char to_Bcd(unsigned char);
void initAll();
unsigned char readADC();

static volatile unsigned char adcInfo;

void main(void){

	initAll();

	while(1) ;	
}

void initAll(){

	TRISB &= 0xFC00; 				// Displays and Gates as outputs
	LATB &= 0xFC00;					// all displays off

	// ADC configuration
	TRISBbits.TRISB14 = 1;			// RB14 digital output disconnected
	AD1PCFGbits.PCFG14 = 0;			// RB14 configured as analog input (AN14)

	AD1CHSbits.CH0SA = 14;			// Selects AN14 as input for the A/D converter	
	AD1CON2bits.SMPI = 7;			// 8 samples will be converted and stored
										// in buffer locations ADC1BUF0 to ADC1BUF3
	
	AD1CON1bits.SSRC = 7;			// códigos adicionais
	AD1CON1bits.CLRASAM = 1;		//
	AD1CON3bits.SAMC = 16;			//

	AD1CON1bits.ON = 1;				// enable ADC converter

	// Configure ADC interruption
	IPC6bits.AD1IP = 1;				// prioridade da interrupção
	IEC1bits.AD1IE = 1; 			// autorizar interrupções
	IFS1bits.AD1IF = 0;				// reset da flag (só para o caso)

	// configure Timer 2 and timer 2 interruption
	T2CONbits.TCKPS = 5;			// pre-scaler 32
	PR2 = 1566;						// constant (PR2 = PBCBLCK/32/400)
	TMR2 = 0;						// reset timer T2 count register
	T2CONbits.TON = 1;				// Enable timer T2

	IFS0bits.T2IF = 0;				// reset timer interruption flag
	IPC2bits.T2IP = 3; 				// prioridade da interrupção
	IEC0bits.T2IE = 1;				// enable timer T2 interruptions

	// configure Timer 3 and timer 3 interruption
	T3CONbits.TCKPS = 5;			// pre-scaler 32
	PR3 = 12500;					// constant (PR2 = PBCBLCK/32/50)
	TMR3 = 0;						// reset timer T3 count register
	T3CONbits.TON = 1;				// Enable timer T3

	IFS0bits.T3IF = 0;				// reset timer interruption flag
	IPC3bits.T3IP = 4; 				// prioridade da interrupção
	IEC0bits.T3IE = 1;				// enable timer T3 interruptions

	EnableInterrupts();

	// PWM configuration
	OC1CONbits.OCM = 6;				// PWM mode on . fault pin disabled
	OC1CONbits.OCTSEL = 0;			// Use timer 2 as time base for PWM generator
	OC1RS = 392;					// Ton constant ((PR2 + 1) * %duty-c / 100)
	OC1CONbits.ON =1;				// Enable OC1 module
}

void send2Displays(unsigned char code){
	static volatile int dispFlag = 0;
	static const unsigned char codes[] = {	0x77, 0x41, 0x3B, 0x6B, 0x4D, 0x6E, 0x7E, 
										  	0x43, 0x7F,0x4F, 0x5F, 0x7C, 0x36, 0x79, 
										  	0x3E, 0x1E	};

	unsigned char to_hig = to_Bcd(code) >> 4;
	unsigned char to_low = to_Bcd(code) & 0xFF0F;

	if(!dispFlag){
		LATB |= codes[to_hig];
		LATB &= codes[to_hig];
		LATBbits.LATB8 = 1;
		LATBbits.LATB9 = 0;
	}else{
		LATB |= codes[to_low];
		LATB &= codes[to_low];
		LATBbits.LATB8 = 0;
		LATBbits.LATB9 = 1;
	}
	dispFlag = !dispFlag;
}

unsigned char to_Bcd(unsigned char value){
	return ((value / 10) << 4) + (value % 10);
}

unsigned char readADC(){
	unsigned int *p = (int*)(&ADC1BUF0);
	int i, media = 0;

	for(i = 0; i < 8; i++){
		media += p[i * 4];
	}

	media = media / 8;
	media = (media * 70 + 511) / 1023;

	printStr("\nADC done");

	return media;
}

void _int_(27) isr_adc(void){
	adcInfo = readADC();

	printStr("\nTemperatura = ");
	printInt10(adcInfo);					

 	IFS1bits.AD1IF = 0;				// reset da flag
}

void _int_(8) isr_timer2(void){		// displays timer interruption
	send2Displays(adcInfo);
	IFS0bits.T2IF = 0;				// reset timer interruption flag
}

void _int_(12) isr_timer3(void){	// adc convertion order interruption
	AD1CON1bits.ASAM = 1 ;			// start ADC conversion
	IFS0bits.T3IF = 0;				// reset timer interruption flag
}