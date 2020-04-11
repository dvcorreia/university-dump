// Diogo Vala Correia 76608
// dv.correia@ua.pt

# include <detpic32.h>
void delay(unsigned int);
void isr_adc(void);
void adc_init(void);

void main(void){

	adc_init();		// configuração do módulo A/D
	
	AD1CON1bits.ASAM = 1; 	// Start A/D conversion

	while(1)
		delay(1000);	// do nothing (all activity is done by the ISR)

	return(0);
}

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
	AD1CON2bits.SMPI = 0;		// 1 sample will be converted and store in buffer ADC1BUF0

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
	printInt(ADC1BUF0, 16);			// Print ADC1BUF0 value // Hexadecimal (3 digits format)
	printStr("\n");
	AD1CON1bits.ASAM = 1;			// Start A/D conversion
	IFS1bits.AD1IF = 0;				// Reset AD1IF flag
}