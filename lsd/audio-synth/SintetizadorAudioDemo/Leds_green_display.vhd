library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Leds_green_display is
	port(binInput	: in  std_logic_vector(3 downto 0);
		  decOut	: out std_logic_vector(7 downto 0));
end Leds_green_display;

architecture Behavioral of Leds_green_display is	
begin
	with binInput select
		decOut   <= "00000000" when "0000",   
						"11111111" when others;   
end Behavioral;