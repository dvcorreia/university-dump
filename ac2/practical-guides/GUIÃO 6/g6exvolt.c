// Diogo Correia - 76608
// dv.correia@ua.pt

// FREQ 1Hz por Interrupções

#include <detpic32.h>;
void configureAll();
void isr_T3(void);
void isr_T1(void);
void isr_adc(void);

volatile unsigned char value2display = 0;

int media = 0;

// MAIN FUNCTION

void main(void){

	TRISB &= 0xFC00;		// Displays and Gate configuration (output)

	configureAll(); 		// Function to configuration all timers, interruption and inputs


	// Reset AD1IF, T1IF and T3IF flags

	IFS0bits.T3IF = 0 ;		// Reset Interruption flag (timer 3)
	IFS0bits.T1IF = 0 ;		// Reset Interruption flag (timer 1)
	IFS1bits.AD1IF = 0 ;	// Reset Interruption flag (ADC)

	EnableInterrupts();		// Global Interrupt Enable

	while(1);

	return(0);				// end program

}

// FUNCTIONS

void _int_(27) isr_adc(void){

	// Calculate buffer average (8 samples)

	int *p = (int *)(&ADC1BUF0);
	int i ;
	for(i = 0 ; i < 8 ; i++){
		media += p[i + 4];
	}
	media = media / 8;

	// Calculate voltage amplitude
	media = (media * 33 + 511) / 1023;

	// Convert voltage amplitude to decimal. Assign it to "value2display"
	value2display = ((media/10) << 4) + (media % 10);

	media = 0; 						// reset media
	IFS1bits.AD1IF = 0;				// reset A/D converter flag
}

void _int_(4) isr_T1(void){

	AD1CON1bits.ASAM = 1; 			//Start A/D conversion
	IFS0bits.T1IF = 0;				// reset timer flag
}

void _int_(12) isr_T3(void){

	// Send "value2display" global variable to display
	static const unsigned char codes[] = {0x77, 0x41, 0x3B, 0x6B, 0x4D, 0x6E, 0x7E, 
										  0x43, 0x7F,0x4F, 0x5F, 0x7C, 0x36, 0x79, 
										  0x3E, 0x1E};

	static unsigned flag = 0;				// flag das gates
	LATB &= 0xFC00;							// reset displays

	if(flag){
		LATBbits.LATB8 = 0;						// gate configuration
		LATBbits.LATB9 = 1;						//
		LATB |= codes[value2display % 16];	// send to displays (and clear)
	}else{
		LATBbits.LATB8 = 1;						// gate configutation
		LATBbits.LATB9 = 0;						//
		LATB |= codes[value2display / 16];	// send to displays (and clear)
	}

	flag = !flag;					// change flag
	IFS0bits.T3IF = 0;				// reset timer flag
}

void configureAll(){
	
	// Interrupts Configuration
	// (neste caso não faz diferença o nível de prioridade das interrupções
	
	IEC0bits.T3IE = 1 ;			// interrupções do timer 3
	IPC3bits.T3IP = 1 ;			// autorização da interrupção

	IEC0bits.T1IE = 2 ;			// interrupções do timer 1
	IPC1bits.T1IP = 1 ;			// autorização da interrupção

	IPC6bits.AD1IP = 3 ;		// interrupções da ADC
	IEC1bits.AD1IE = 1 ;		// autorização da interrupção
			

	// Timer T1 configuration (4Hz)

	T1CONbits.TCKPS = 0b111 ;		// Prescaler (111 = 7 --> 2⁷ = 256)
	TMR1 = 0 ;						// registo de contagem
	PR1 = 19530 ;					// constante de divisão

	IEC0bits.T1IE = 1;				// Interrupt enable control (enable)

	T1CONbits.TON = 1;				// enable timer

	// Timer T3 configuration (10Hz)

	T3CONbits.TCKPS = 0b111 ;		// Prescaler (111 = 7 --> 2⁷ = 256)
	TMR3 = 0 ;						// registo de contagem
	PR3 = 7811 ;					// constante de divisão

	IEC0bits.T3IE = 1;				// Interrupt enable control (enable)

	T3CONbits.TON = 1;				// enable timer

	// Configure A/D module and RB14 as analog input :

	TRISBbits.TRISB14 = 1;			// RB14 digital output disconnected
	AD1PCFGbits.PCFG14 = 0;			// RB14 configured as analog input (AN14)

	AD1CHSbits.CH0SA = 14; 			// Selects AN14 as input for the A/D converter
	AD1CON2bits.SMPI = 7;			// 8 sample will be converted and store in buffer ADC1BUF0

	// códigos adicionais :
	AD1CON1bits.SSRC = 7;			// conversion trigger selection bits: in this
									// mode an internal counter end sampling and starts conversion

	AD1CON1bits.CLRASAM = 1;		// Stop conversions when the 1st A/D converter
									// interrupt is generated. At the same time,
									// hardware clears the ASAM bit

	AD1CON3bits.SAMC = 16;			// Sample time is 16 TAD (TAD = 100 ns)

	AD1CON1bits.ON = 1;				// Enable A/D converter
									// This must the last command of the A/D
									// configuration sequence
}