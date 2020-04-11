library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_16_8 is
	port(address	: in  std_logic_vector(3 downto 0);
		  dataOut	: out std_logic_vector(15 downto 0));
end ROM_16_8;

architecture RTL of Rom_16_8 is

	subtype TDataWord is std_logic_vector(7 downto 0);
	type TROM is array (0 to 15) of integer;
	constant c_memory : TROM := (0, 01010101 ,  00100100,  00010001,  00000001,  
										  11011011,  11101110,  11111110, 01010101, 00100100, 
										  00010001, 00000001, 11011011, 11101110, 
										  11111110, 0);
begin
	dataOut <= c_memory(to_integer(unsigned(address)));
end RTL;
