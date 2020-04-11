/* 	AC2 - Trabalho 9 (2015/2016)
	Diogo Vala Correia 76608
	dv.correia@ua.pt 
*/

// PARTE 1 

# include <detpic32.h>

# define RDSR	0x05
# define WRITE 	0x02
# define WREN	0x07

# define EEPROM_CLOCK	500000

void spi2_setClock(unsigned int);
void spi2_init(void);
char eeprom_readStatus(void);
void eeprom_writeStatusCommand(char);

void main(void){

	spi2_init();
	spi2_setClock(EEPROM_CLOCK);
	for(;;){

		eeprom_writeStatusCommand(WREN);
		printInt10(eeprom_readStatus());	// Call eeprom_readStatus() function
										// Print read value
	}
}

void spi2_setClock(unsigned int clock_freq){
	// Write SPI2BRG register
	// Configuração do gerador Baudrate
	SPI2BRG = (PBCLK + clock_freq ) / (2 * clock_freq ) - 1;
}

void spi2_init(void){

	volatile char trash;
	SPI2CONbits.ON = 0;					// Disable SPI2 module
	SPI2CONbits.CKP = 0;				// Configure clock idle state as logic level 0
	SPI2CONbits.CKE = 1;				// Configure the clock active transition: from active state to idle state
	
	// Configure SPI data input sample phase bit (middle of data output time)
	SPI2CONbits.MODE32 = 0;				// Configure word length (8 bits) (.AUDEN = 0)
	SPI2CONbits.MODE16 = 0;
	SPI2CONbits.ENHBUF = 1;				// Enable Enhanced buffer mode (this allows the usage of FIFOs RX,TX)
	SPI2CONbits.MSSEN =	1;				// Enable slave select support (Master Mode Slave Select)
	SPI2CONbits.MSTEN = 1;				// Enable master mode
	
	// Clear RX FIFO:
	while(SPI2STATbits.SPIRBE == 0)		// while RX FIFO not empty read
	trash = SPI2BUF;					// FIFO and discard read character
	SPI2STATbits.SPIROV = 0;			// Clear overflow error flag
	SPI2CONbits.ON = 1;					// Enable SPI2 module
}

char eeprom_readStatus(void){

	volatile char trash;

	// Clear RX FIFO
	while(SPI2STATbits.SPIRBE == 0)		// while RX FIFO not empty read
	trash = SPI2BUF;					// FIFO and discard read character

	SPI2STATbits.SPIROV = 0;			// Clear overflow error flag

	SPI2BUF = RDSR;						// Send RDSR command
	SPI2BUF = 0;						// Send anything so that EEPROM clocks data into SO
	while(SPI2STATbits.SPIBUSY);		// wait while SPI module is working
	trash = SPI2BUF; 					// First char received is garbage (received while 
										// sending command)
	
	return SPI2BUF;						// Second received character is the STATUS value
}

void eeprom_writeStatusCommand(char command){

	while( eeprom_readStatus() & 0x01 );	// Wait while WIP is true
											//	(write in progress)
	SPI2BUF = command;						// Copy "command" value to SPI2BUF (TX FIFO)
	while(SPI2STATbits.SPIBUSY);			// Wait while SPI module is working (SPIBUSY set)
}

void eeprom_writeData(int address, char value){

	address &= 0x01FF						// mask to limit address to 9 bits

	// Read STATUS and wait while WIP is true
	while( eeprom_readStatus() & 0x01 );	// Wait while WIP is true
											//	(write in progress)

	// Enable write operations (activate WEL bit in STATUS register, using eeprom_writeStatusCommand() function )
	eeprom_writeStatusCommand()
	
	// Copy WRITE command and A8 address bit to the TX FIFO:
	SPI2BUF = WRITE | ((address & 0x100) >> 5);
	// Copy address (8 LSBits) to the TX FIFO
	// Copy "value" to the TX FIFO
	// Wait while SPI module is working (SPIBUSY)
}