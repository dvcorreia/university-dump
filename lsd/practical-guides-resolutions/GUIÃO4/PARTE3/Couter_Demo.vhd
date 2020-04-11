library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Couter_Demo is
	port(SW : in std_logic_vector(1 downto 0);
			LEDR : out std_logic_vector(3 downto 0);
			KEY : in std_logic_vector(3 downto 3));
		  
end Couter_Demo;

architecture Shell of Couter_Demo is
begin
	counterupdonw : entity work.CounterUpDown4(Behavioral)
		port map(clk => KEY(3),
					reset => SW(1),
					upDown => SW(0),
					count => LEDR(3 downto 0));
end Shell;