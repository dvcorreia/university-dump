/*	Diogo Vala Correia 76608
	dv.correia@ua.pt
	26/04/2016 */

//	RECEPÇÃO / TRANSMIÇÃO POLLING

# include <detpic32.h>

void initAll();
char getc();
void delay(unsigned int);

void main (void){

	initAll();

	while(1){

		putChar(U1RXREG);

		delay(500);
	}
}

void initAll(){

	// Configuração da UART
		// configuração do gerador baudrate
	U1BRG = 10;
	U1MODEbits.BRGH = 0;
		// configuração do nº de data bits e tipo de paridade
	U1MODEbits.PDSEL = 0;
	U1MODEbits.STSEL = 0;
		// activar os módulos TX e RX
	U1STAbits.UTXEN = 1;
	U1STAbits.URXEN = 1;
		// activar UART
	U1MODEbits.ON = 1;	

	// configuração da interrupção da UART
			// nivel de prioridade = 1
			// autorizar interrupçãoes da UART
			// reset da flag da interrupçao
	EnableInterrupts(); 
}

char getc(){

	while(U1STAbits.URXDA == 0);			// wait while URXDA == 0
	return U1RXREG;							// return U1RXREG
}

void delay(unsigned int timer){
	resetCoreTimer();
	while(readCoreTimer() < timer * (PBCLK / 1000));
}A