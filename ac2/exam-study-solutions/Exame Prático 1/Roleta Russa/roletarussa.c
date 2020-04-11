// Diogo Vala Correia - 76608
// dv.correia@ua.pt
// start time = 18:15

# include <detpic32.h>

void initAll();
void send2Displays(unsigned char);
void delay(unsigned int);
int readADC();


volatile unsigned int speed = 0;
volatile int counter = -1;

void main(void){
	
	initAll();						// inicialização
	printStr("\nInicialização DONE");

	while(1){

		AD1CON1bits.ASAM = 1 ;			// start ADC conversion
		printStr("\nConversion START");

		if(counter == 0xFF)			// reset do contador
		counter = -1;				// 

		printStr("\nCounter");
		printInt(counter, 16);
		
		if(PORTEbits.RE4 == 0)	// switch of
			delay(10);
			counter ++;			// incrementa contador

		send2Displays(counter);

		delay(speed);
	}
}

void initAll(){

	TRISB &= 0xFC00; 				// displays ans gates as outputs
	TRISEbits.TRISE4 = 1;			// switch in RE4 as input

	LATB &= 0xFC00;					// reset displays

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

void send2Displays(unsigned char number){
	
	static volatile int flag = 0;		// flag dos displays

	static const unsigned char codes[] = {0x77, 0x41, 0x3B, 0x6B, 0x4D, 0x6E, 0x7E, 
										  0x43, 0x7F,0x4F, 0x5F, 0x7C, 0x36, 0x79, 
										  0x3E, 0x1E};
	if(!flag){
		LATB |= codes[number / 16];
		LATB &= codes[number / 16];
		LATBbits.LATB8 = 1;
		LATBbits.LATB9 = 0;
	}else{
		LATB |= codes[number % 16];
		LATB &= codes[number % 16];
		LATBbits.LATB8 = 0;
		LATBbits.LATB9 = 1;
	}
	flag = !flag;
}

int readADC(){
	int *p = (int *)(&ADC1BUF0);
	int i, media = 0; 
	for(i = 0 ; i < 10 ; i++){
		media += p[i * 4];
	}

	media = media / 8;
	media = ((media * 10) / 1023) + 1;	// calculo do nível (0-10) 
	return media * 50;
}

void delay(unsigned int timer){
 	resetCoreTimer();
 	while(readCoreTimer() < timer * (PBCLK/1000));
}

void _int_(27) adc_interruption(void){
	speed = readADC();		// set speed
	printStr("\nSpeed = ");
	printInt(speed, 10);	// print speed
	printStr("\n");
	IFS1bits.AD1IF = 0; 	// reset flag
}