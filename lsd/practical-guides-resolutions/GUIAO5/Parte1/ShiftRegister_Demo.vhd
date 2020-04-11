library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister_Demo is 
	port(KEY : in std_logic_vector(3 downto 3);
		  LEDR : out std_logic_vector(17 downto 0);
		  CLOCK_50 : in std_logic;
		  LEDG : out std_logic_vector(0 downto 0));
end ShiftRegister_Demo;

architecture shell of ShiftRegister_Demo is

	signal clk_s : std_logic;

begin 

	fredivider : entity work.clkDividerN(Behav)
						generic map (divFactor => 5000000)
						port map(clkIn => CLOCK_50,
									clkOut => clk_s);
									
	shiftRegisterN : entity work.ShiftRegisterN(RTL)
							generic map (n => 18)
							port map(clk => clk_s,
										dataOut => LEDR(17 downto 0),
										si => KEY(3));
	LEDG(0)<= clk_s  ;
	
end shell;