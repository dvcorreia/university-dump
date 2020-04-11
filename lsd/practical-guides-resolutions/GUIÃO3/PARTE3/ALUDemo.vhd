--surrender
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ALUDemo is
		port ( SW : in std_logic_vector(17 downto 0);
				 LEDR : out std_logic_vector(7 downto 0));
end ALUDemo;

architecture shell of ALUDemo is
begin

	alu4 : entity work.Alu4(Behavioral)
				port map( a => SW(7 downto 4),
							 b => SW(3 downto 0),
							 op => SW(17 downto 15),
							 m => LEDR(7 downto 4),
							 r => LEDR(3 downto 0));
end shell;