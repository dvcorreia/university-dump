// Diogo Vala Correia 76608
// dv.correia@ua.pt

								// VOLTIMETRO DIGITAL 

// PORTA ANALÓGICA DO POT --> RB14

# include <detpic32.h>
void delay(unsigned int);
void send2Displays(unsigned char);
unsigned char toBcd(unsigned char);

void main(void){

	TRISE = 0xFFF0 ; 	// RE0 - RE3 = output

	int value = 0;				// valor digital da converção da porta analógica
	int i = 0, media = 0, v = 0, v_a = 0;
	int h = 0, g = 0, flag = 0;		// variáveis utilitárias para os prints nos 7Seg
	int ledonoff = 0, ledc = 0;
	int *p = (int *)(&ADC1BUF0);	// ponteiro com os buffers

	// Configure A/D module and RB14 as analog input :

	TRISBbits.TRISB14 = 1;		// RB14 digital output disconnected
	AD1PCFGbits.PCFG14 = 0;		// RB14 configured as analog input (AN14)

	AD1CHSbits.CH0SA = 14; 		// Selects AN14 as input for the A/D converter
	AD1CON2bits.SMPI = 3;		// 3 sample will be converted and store in buffer ADC1BUF0

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
	g = 0;
	while(1){
		delay(10);			// wait 10 ms using the core timer
		if(g++ == 25){		// 250 ms

			AD1CON1bits.ASAM = 1; 				// Start conversion
			while( IFS1bits.AD1IF == 0 ); 		// Wait while conversion not done (AD1IF == 0)

			// Read conversion result (ADC1BUF0 value) and print it
			for(i = 0 ; i < 4 ; i++){			// calcular sumatório dos 4 buffers
				media += p[i*4];
			}
			media = media / 4;			// calculo da média dos buffer
			v = (media * 33) / 1023; 	// calculo do V médio s/ arredontamento
			v_a = (media * 33 + 511) / 1023; 	// calculo do V médio c/ arredontamento

			g = 0;		// inicialização de g

		}

		printInt(v,10);				// print V no terminal
		printStr(", ");
		printInt(v_a,10);				// print V_a no terminal
		printStr("\n");	
		
		// print v nos Display7Seg
		h = 0;
		while(h++ != 25){		// != 250 ms

			send2Displays(toBcd(v_a));		// send to display Bcd( v_a )

			if(!flag){ 
				LATBbits.LATB7 = 0;			// turn on point Display2
			}else{
				LATBbits.LATB7 = 1;			// turn of point
			}

			flag = !flag;					// change flag
		}

		// Reset AD1IF
		IFS1bits.AD1IF = 0;					// reset do bit de polling
		media = 0;							// clear variável media
	
		// Leds (cuz i want)
		if(ledc == 50){				// pisca a cada 500 ms
			if(!ledonoff){
				LATE |= 0x000F;		// turn on LEDS 
			}else{
				LATE &= 0xFFF0;		// turn off LEDS
			}
			ledonoff = !ledonoff;
			ledc = 0;
		}
		ledc++;

	}

	return(0);
}

		// SIDE FUNCTIONS

void delay (unsigned int n_intervals){
	int CALIBRATION_VALUE = 4998;
	volatile unsigned int i;
	for(; n_intervals != 0 ; n_intervals--)
		for(i = CALIBRATION_VALUE ; i != 0 ; i--);
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