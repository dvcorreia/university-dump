// AC2 - Guião Nº 7 - UART
// Diogo Correia 76608
// dv.correia@ua.pt

#include <detpic32.h>

void initAll();
void putc(char);
char getc();
void delay(unsigned int);
void puts(char *);

void main(void){
	
	initAll();		// UART configuration

	while(1){
		// putc('+');
		puts("String de Teste\n");

		// wait 1 s
		delay(1000);
	}
}

void initAll(){
	// UART configuration
	//	1. Configurar o gerador baudrate de acordo com a taxa de transmição/recepção
	//	  pretendida(registo UxBRG e bit BRGH do registo UxMODE)
		U1BRG = ((PBCLK + 8 * 115200)/(16 * 115200));	// 115200 bps
		U1MODEbits.BRGH = 0;							// 16x baud clock

	//	2. Configurar a dimensão da palavra a transmitir (número de data bits), tipo
	//	  de paridade (bits PDSEL<1:0> do registo UxMODE) e o número de stop bits 
	//	  (bit STSEL do registo UxMODE).
		U1MODEbits.PDSEL = 00;		// 8bits - sem paridade
		U1MODEbits.STSEL = 0;		// 1 stop bit

	//	3. Ativar os módulos de transmissão e receção (bits UTXEN e URXEN do registo UxSTA).
		U1STAbits.UTXEN = 1;
		U1STAbits.URXEN = 1;

	//	4. Ativar a UART (bit ON do registo UxMODE). 
		U1MODEbits.ON = 1;
}

void putc(char byte2send){
	while(U1STAbits.UTXBF);			// wait while UTXBF == 1
	U1TXREG = byte2send;			// Copy byte2send to the UxTXREG register
}

char getc(void){
	if(U1STAbits.OERR == 1) U1STAbits.OERR = 0;			// If OERR == 1 then reset OERR
	while(U1STAbits.URXDA == 0);					 	// Wait while URXDA == 0
	return U1RXREG;										// Return U1RXREG
}

void delay(unsigned int timer){
	resetCoreTimer();
	while(readCoreTimer() < timer * (PBCLK / 1000));
}

void puts(char *str){
	while(*str != '\0'){
		putc(*str);
		str++;
	}
}