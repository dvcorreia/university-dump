library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder_2 is
	port(binInput	: in  std_logic_vector(3 downto 0);
		  decOut	: out std_logic_vector(6 downto 0));
end Bin7SegDecoder_2;

architecture Behavioral of Bin7SegDecoder_2 is	
begin
	with binInput select
		decOut   <= "0000001" when "0000",   -- MUDO
						"0000000" when "0001",   -- C
						"0011111" when "0010",   -- Db
						"0000000" when "0011",   -- D
						"0011111" when "0100",   -- Eb
						"0000000" when "0101",   -- E
						"0000000" when "0110",   -- F
						"0011111" when "0111",   -- Gb
						"0000000" when "1000",   -- G
						"0011111" when "1001",   -- Ab
						"0000000" when "1010",   -- A
						"0011111" when "1011",   -- Bb
						"0000000" when "1100",   -- B
						"0000000" when others;   -- others
end Behavioral;