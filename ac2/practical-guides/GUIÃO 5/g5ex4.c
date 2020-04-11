// Diogo Vala Correia 76608
// dv.correia@ua.pt


# include <detpic32.h>
void delay(unsigned int);
void isr_adc(void);
void adc_init(void);
void send2Displays(unsigned char);
unsigned char toBcd(unsigned char);

volatile unsigned char value2display = 0;	// Global variable

// MAIN FUNCTION

void main(void){

	// variáveis
	int *p = (int *)(&ADC1BUF0);	// ponteiro dos buffers

	adc_init();		// configuração do módulo A/D
					// EnableInterrupts();

	int i = 0;
	while(1){		
		delay(10);					// Wait 10 ms using the core timer

		if(i++ == 25){				// 250 ms
			AD1CON1bits.ASAM = 1; 	// Start A/D conversion
			i = 0;
		}

		// Read results

		for(int i = 0 ; i < 8; i++){
			value2display += p[i*4];
		}
		value2display = value2display / 8; 					// média dos buffers
		value2display = (value2display * 33 + 511) / 1023; 	// V médio c/ arredondamento



		// send "value2display" variable to display
		send2Displays(toBcd(value2display));
	}
}








// FUNCTIONS

void delay (unsigned int n_intervals){
	int CALIBRATION_VALUE = 4998;
	volatile unsigned int i;
	for(; n_intervals != 0 ; n_intervals--)
		for(i = CALIBRATION_VALUE ; i != 0 ; i--);
}

void adc_init(){

// Configure A/D module and RB14 as analog input :

	TRISBbits.TRISB14 = 1;		// RB14 digital output disconnected
	AD1PCFGbits.PCFG14 = 0;		// RB14 configured as analog input (AN14)

	AD1CHSbits.CH0SA = 14; 		// Selects AN14 as input for the A/D converter
	AD1CON2bits.SMPI = 7;		// 8 sample will be converted and store in buffer ADC1BUF0

	// códigos adicionais :
	AD1CON1bits.SSRC = 7;		// conversion trigger selection bits: in this
								// mode an internal counter end sampling and starts conversion

	AD1CON1bits.CLRASAM = 1;	// Stop conversions when the 1st A/D converter
								// interrupt is generated. At the same time,
								// hardware clears the ASAM bit

	AD1CON3bits.SAMC = 16;		// Sample time is 16 TAD (TAD = 100 ns)

	AD1CON1bits.ON = 1;			// Enable A/D converter
								// This must the last command of the A/D
								// configuration sequence

// configuração dos níveis de prioridades das interrupçãos &
// Configuração das interrupções geradas pelo módulo A/D

	IPC6bits.AD1IP = 1;			// nivel de prioridade = 1
	IEC1bits.AD1IE = 1;
	IFS1bits.AD1IF = 0;			// Reset AD1IF flag
	EnableInterrupts();			// global Interrupt Enable
}

// Interrupt Handler

void _int_(27) isr_adc(void){		// Replace VECTOR by the A/D vector
									// number - see "PIC32 family data sheet" (pages 122-124)
	LATEbits.LATE0 = 0;				// reset RE0 ; RE0 = 0 
	printInt(ADC1BUF0, 16);			// Print ADC1BUF0 value // Hexadecimal (3 digits format)
	printStr("\n");
	LATEbits.LATE0 = 1;				// Set RE0 ; RE0 = 1
	AD1CON1bits.ASAM = 1;			// Start A/D conversion
	IFS1bits.AD1IF = 0;				// Reset AD1IF flag
}

void send2Displays(unsigned char value){
	static unsigned char displayFlag = 0;
	static const unsigned char codes[] = {0x77, 0x41, 0x3B, 0x6B, 0x4D, 0x6E, 0x7E, 
										  0x43, 0x7F,0x4F, 0x5F, 0x7C, 0x36, 0x79, 
										  0x3E, 0x1E};

	TRISB &= 0xFC00;

	LATB &= 0xFF00;

	if(!displayFlag){
		LATBbits.LATB8 = 0;
		LATBbits.LATB9 = 1;
		LATB |= codes[value%16];
	}
	else{
		LATBbits.LATB8 = 1;
		LATBbits.LATB9 = 0;
		LATB |= codes[value/16];
	}
	displayFlag=!displayFlag;		// flag complement
}

unsigned char toBcd(unsigned char value){
	return ((value/10) << 4) + (value % 10);
}