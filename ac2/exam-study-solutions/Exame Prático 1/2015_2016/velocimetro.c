/*	Teste 2 - 2015/2016
	Diogo Vala Correia 76608
	dv.correia@ua.pt

		problema : Velocidade de um carro controlada pelo POT (RB14) (0 - 50km/h)
*/

# include <detpic32.h>

void initAll();
void send2displays(unsigned char);
void delay(unsigned int);
unsigned char readADC();
unsigned char to_BCD(unsigned char);

volatile char velocidade = 0;				// valor da velocidade

// MAIN

void main(void){

	initAll();

	while(1){

		AD1CON1bits.ASAM = 1;				// Start conversion

		send2displays(velocidade);			// print Velocidade

		delay(16); 							// 60 Hz
	}
}

// OUTRAS FUNÇÕES 

void initAll(){					// inicialização
	
	// Configuração das I/O
	TRISB &= 0xFC00;			// I/O init : displays + gates --> output
	LATB &= 0xFC00;				// displays off

	// Configuração da ADC 
	TRISBbits.TRISB14 = 1;		// disconect digital output
	AD1PCFGbits.PCFG14 = 0;		// configured as analog input

	AD1CHSbits.CH0SA = 14; 		// Selects AN14 as input for the A/D converter
	AD1CON2bits.SMPI = 7;		// 8 samples will be converted and stored
								// in buffer locations ADC1BUF0 to ADC1BUF3
	
	AD1CON1bits.SSRC = 7;		// aditional condes
	AD1CON1bits.CLRASAM = 1; 	//
	AD1CON3bits.SAMC = 16;		//
	AD1CON1bits.ON = 1;			//

	// Configuração da interrupção da ADC 
	IPC6bits.AD1IP = 1;			// nivel de prioridade = 1
	IEC1bits.AD1IE = 1;			// autorizar interrupçãoes da ADC
	IFS1bits.AD1IF = 0;			// reset da flag da interrupçao (para o caso ...)
	EnableInterrupts(); 
}

void send2displays(unsigned char value){

	static volatile int flag = 0;
	static const unsigned char codes[] = {0x77, 0x41, 0x3B, 0x6B, 0x4D, 0x6E, 0x7E, 
										  0x43, 0x7F,0x4F, 0x5F, 0x7C, 0x36, 0x79, 
										  0x3E, 0x1E};

	unsigned char to_hig = to_BCD(value) >> 4;
	unsigned char to_low = to_BCD(value) & 0xFF0F;

	if(!flag){
		LATB |= codes[to_hig];
		LATB &= codes[to_hig];
		LATBbits.LATB8 = 1;			// turn on high
		LATBbits.LATB9 = 0;			//
	}else{
		LATB |= codes[to_low];
		LATB &= codes[to_low];
		LATBbits.LATB8 = 0;			// turn on low
		LATBbits.LATB9 = 1;			//
	}
	flag = !flag;					// change flag
}

void delay(unsigned int timer){
	resetCoreTimer();
	while (readCoreTimer() < timer * (PBCLK / 1000));
}

unsigned char readADC(){

	static unsigned int *p = (int *)(&ADC1BUF0);	// variáveis
	int media = 0;	int i;							//

	for(i = 0 ; i < 8 ; i++ ){
		media += p[i * 4];							// somatório dos buffers
	}
	media = media / 8;								// calculo da media
	media = ((media * 50 + 511) / 1023);			// return de um inteiro entre 0 e 50 km/h

	return media;
}		

void _int_(27) adc_interruption(void){

	velocidade = readADC();					// le a ADC

	printStr("\nvelocidade = ");			// print velocidade
	printInt(velocidade, 10);				//

	IFS1bits.AD1IF = 0;						// reset da flag da interrupçao
}

unsigned char to_BCD(unsigned char value){
	return ((value/10) << 4) + (value % 10);
}