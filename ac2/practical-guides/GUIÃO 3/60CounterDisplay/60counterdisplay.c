# include <detpic32.h>
void delay(unsigned int);
void send2displays(unsigned char);

void main(void){

	TRISB &= 0xFC00;		// configurações de saida = 0 (output)

	int counter = -1;		// contador = 0
	int i = 0;

	while(1){

		i = 0;

		do{
			delay(50); 							// wait 50 ms
			send2displays(counter);				// send info to Displays
		}while(++i < 4);

		if(counter == 0xFF)	counter = -1; 	// reset contador
		counter ++;							// incrementação do contador

		printInt(counter,8);				// debug printInt(counter)
		printStr("\n");						// -

		delay(100); 						// delay (5 Hz --> 1200 ms)
	}

}

void send2displays(unsigned char value){

	static unsigned char display7Scodes[] = {0x77,0x41,0x3B,0x6B,0x4D,0x6E,
											0x7E,0x43,0x7F,0x6F,0x5F,0x7C,
											0x36,0x79,0x3E,0x1E};
	static unsigned char displayFlag = 0;

	LATB &= 0xFF00;		// reset do late

	if(!displayFlag){
		// send digit_low to display_low
		LATBbits.LATB8 = 1;			// abrir gate 1
		LATBbits.LATB9 = 0;		// fechar gate 2

		LATE |= display7Scodes[value & 0x000F]; // obter 4 bits menos significativos e limpar à esquerda & display

	}else{

		// send digit_high to display_high
		LATBbits.LATB8 = 0;					// abrir gate 2
		LATBbits.LATB9 = 1;					// fechar gate 1
		LATE |= display7Scodes[(value & 0x00F0) >> 4];	// obter bit4-7, limpar e >> de 4 & display
	}
	displayFlag = !displayFlag;		// toggle da displayFlag
}


void delay (unsigned int n_intervals){
	int CALIBRATION_VALUE = 4998;
	volatile unsigned int i;
	for(; n_intervals != 0 ; n_intervals--)
		for(i = CALIBRATION_VALUE ; i != 0 ; i--);
}