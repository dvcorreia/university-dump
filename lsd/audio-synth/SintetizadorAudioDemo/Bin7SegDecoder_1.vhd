library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder_1 is
	port(binInput	: in  std_logic_vector(3 downto 0);
		  decOut	: out std_logic_vector(6 downto 0));
end Bin7SegDecoder_1;

architecture Behavioral of Bin7SegDecoder_1 is	
begin
		decOut <=   "0000001" when (binInput = "0000") else   -- MUDO
						"1001110" when (binInput = "0001") else  -- C
						"0111101" when (binInput = "0010") else  -- Db
						"0111101" when (binInput = "0011") else  -- D
						"1001111" when (binInput = "0100") else  -- Eb
						"1001111" when (binInput = "0101") else  -- E
						"1000111" when (binInput = "0110") else  -- F
						"1011111" when (binInput = "0111") else  -- Gb
						"1011111" when (binInput = "1000") else  -- G
						"1110111" when (binInput = "1001") else  -- Ab
						"1110111" when (binInput = "1010") else  -- A
						"0011111" when (binInput = "1011") else  -- Bb
						"0011111" when (binInput = "1100") else  -- B
						"0000000";   -- others
end Behavioral;
