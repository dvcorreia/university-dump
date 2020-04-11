// AC2 - Guião Nº 7 - UART
// Diogo Correia 76608
// dv.correia@ua.pt

#include <detpic32.h>

void initAll();
void putc(char);
char getc();
void delay(unsigned int);
void puts(char *);
void configUart(unsigned int, char, unsigned int);

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
	configUart(115200,'N',1);		// UART configuration
}

void configUart(unsigned int baud, char parity, unsigned int stopbits){
	// UART configuration
	//	1. Configurar o gerador baudrate
		if(baud >= 600 && baud <= 115200){
			U1BRG = ((PBCLK + 8 * baud)/(16 * baud) -1);		// constant calculation
		}else{
			U1BRG = ((PBCLK + 8 * 115200)/(16 * 115200) -1);	// default baud
		}

		U1MODEbits.BRGH = 0;								// 16x baud clock

	//	2. Configure number of data bits (8), parity and number of stop bits
		switch(parity){
			case('N') : U1MODEbits.PDSEL = 00; break;		// 8bits - sem paridade
			case('E') : U1MODEbits.PDSEL = 01; break;		// 8bits - paridade par (even)
			case('O') : U1MODEbits.PDSEL = 10; break;		// 8bits - paridade ímpar (odd)
			default : U1MODEbits.PDSEL = 00; break;			// 8bits - sem paridade
		}
		switch(stopbits){
			case(1) : U1MODEbits.STSEL = 0;	break;			// 1 stop bit
			case(2) : U1MODEbits.STSEL = 1;	break;			// 2 stop bit
			default : U1MODEbits.STSEL = 0;	break;			// 1 stop bit 
		}
	//	3. Ativar os módulos de transmissão e receção 
		U1STAbits.UTXEN = 1;
		U1STAbits.URXEN = 1;

	//	4. Ativar a UART 
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