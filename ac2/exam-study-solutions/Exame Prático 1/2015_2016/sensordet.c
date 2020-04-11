// Diogo Vala Correia - 76608
// dv.correia@ua.pt

/* Exercício de 2015/2016 em C:
1. usando a ADC, imprimir no display da direira valor em hexadecimal (escala 0 a F) , refresh a 50 Hz (polling)
2. fazer "sensor de temperatura" entre 0 e 50ªC, colocar nos displays com freq de conversão de 50 Hz (20ms) e de refresh a 100 Hz (10ms)
3. igual ao 2º, usar interrupções */

# include <detpic32.h>

void initAll();
void send2Displays(char);
void delay(unsigned int);
unsigned char readADC(int);
unsigned char toBcd(unsigned char);

volatile unsigned char temp = 0;			// temperatura em hexadecimal
volatile int refreshFlag = 1;

void main(void){
	initAll();

	while(1){
		
		if(refreshFlag)
			AD1CON1bits.ASAM = 1;			// start conversion
		
		refreshFlag = !refreshFlag;
		delay(10);							// delay de 10 ms ( 100 Hz)

		send2Displays(toBcd(temp));		// send2Displays bcd value of temp
	}
}

void initAll(){

	TRISB &= 0xFFC0; 		// Display da direita & Gate 1 --> outputs
	LATB &= 0xFC00;			// turn off display

	// ADC configuration
	TRISBbits.TRISB14 = 1;			// Disconect digital output
	AD1PCFGbits.PCFG14 = 0; 		// Configurar como entrana analógica

	AD1CHSbits.CH0SA = 14;			// AN14 como input para a ADC
	AD1CON2bits.SMPI = 7; 			// 8 samples da ADC (buffers)

	AD1CON1bits.SSRC = 7;			// códigos adicionais
	AD1CON1bits.CLRASAM = 1;		//
	AD1CON3bits.SAMC = 16;			//
	AD1CON1bits.ON = 1; 			//

	// Iterruption configuration

	IPC6bits.AD1IP = 1 ;		// interrupções da ADC (prioridade 1)
	IEC1bits.AD1IE = 1 ;		// autorização da interrupção

	IFS1bits.AD1IF = 0;			// reset da flag da conversão da adc (só para o caso)

	EnableInterrupts();			// global interrupts Enable
}

void send2Displays(char value){
	static unsigned char flag = 0;
	static const unsigned char codes[] = {0x77, 0x41, 0x3B, 0x6B, 0x4D, 0x6E, 0x7E, 
										  0x43, 0x7F,0x4F, 0x5F, 0x7C, 0x36, 0x79, 
										  0x3E, 0x1E};

	unsigned char low = value & 0x0F;
	unsigned char  hig = value >> 4;

	if(!flag){
		LATB |= codes[low];
		LATB &= codes[low];
		LATBbits.LATB8 = 0;
		LATBbits.LATB9 = 1;
	}else{
		LATB |= codes[hig];
		LATB &= codes[hig];
		LATBbits.LATB8 = 1;
		LATBbits.LATB9 = 0;
	}
	flag = !flag;
}

void delay(unsigned int timer){
	resetCoreTimer();
	while(readCoreTimer() < timer * (PBCLK / 1000));
}

unsigned char readADC(int nsamples){
	int *p = (int *)(&ADC1BUF0);
	int i, temperatura = 0;
	for(i = 0 ; i < nsamples ; i++){
		temperatura += p[i * 4];
	}
	temperatura = temperatura / nsamples;
	return (temperatura * 50) / 1023;
}

void _int_(27) adc_interruption(void){
	temp = readADC(8);
	printStr("\ntemperatura = ");
	printInt(temp, 10);

	IFS1bits.AD1IF = 0; 	// reset flag
}

unsigned char toBcd(unsigned char value){
	return ((value/10) << 4) + (value % 10);
}