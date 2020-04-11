// Diogo Vala Correia 76608
// dv.correia@ua.pt

// PORTA ANALÓGICA DO POT --> RB14

// RESULTADOS: 20.1 us

# include <detpic32.h>
void delay(unsigned int);

void main(void){

	TRISEbits.TRISE0 =  0 ; 	// RE0 = output

	int value = 0;				// valor digital da converção da porta analógica

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

	while(1){

		AD1CON1bits.ASAM = 1; 				// Start conversion
		while( IFS1bits.AD1IF == 0 ){ 		// Wait while conversion not done (AD1IF == 0)
			LATEbits.LATE0 = 1;				// light led em RE0
		}

		LATEbits.LATE0 = 0;					// put off led em RE0	

		// Read conversion result (ADC1BUF0 value) and print it
		value = ADC1BUF0;					// value = memory buff
		printInt(value,10);					// print(value)
		printStr("\n");
		
		// Reset AD1IF
		IFS1bits.AD1IF = 0;					// reset do bit de polling

		delay(250);
	}

	return(0);
}

void delay (unsigned int n_intervals){
	int CALIBRATION_VALUE = 4998;
	volatile unsigned int i;
	for(; n_intervals != 0 ; n_intervals--)
		for(i = CALIBRATION_VALUE ; i != 0 ; i--);
}