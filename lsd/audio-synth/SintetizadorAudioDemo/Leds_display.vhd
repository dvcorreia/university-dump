library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Leds_display is
	port(binInput	: in  std_logic_vector(3 downto 0);
		  decOut	: out std_logic_vector(11 downto 0));
end Leds_display;

architecture Behavioral of Leds_display is	
begin
	with binInput select
		decOut   <= "000000000000" when "0000",   -- MUDO
						"000000000001" when "0001",   -- C
						"000000000010" when "0010",   -- Db
						"000000000100" when "0011",   -- D
						"000000001000" when "0100",   -- Eb
						"000000010000" when "0101",   -- E
						"000000100000" when "0110",   -- F
						"000001000000" when "0111",   -- Gb
						"000010000000" when "1000",   -- G
						"000100000000" when "1001",   -- Ab
						"001000000000" when "1010",   -- A
						"010000000000" when "1011",   -- Bb
						"100000000000" when "1100",   -- B
						"111111111111" when others;   -- others
end Behavioral;