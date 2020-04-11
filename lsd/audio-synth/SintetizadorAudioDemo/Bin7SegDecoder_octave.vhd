library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder_octave is
	port(binInput	: in  std_logic_vector(1 downto 0);
		  decOut	: out std_logic_vector(6 downto 0));
end Bin7SegDecoder_octave;

architecture Behavioral of Bin7SegDecoder_octave is	
begin
	with binInput select
		decOut   <= "0000110" when "00",   -- 1
						"1101101" when "01",   -- 2
						"1111001" when "10",   -- 3
						"0110011" when "11",   -- 4
						"0000001" when others;   -- others
end Behavioral;