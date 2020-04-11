library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AdderDemo is
	port( SW : in std_logic_vector(7 downto 0);
			LEDR : out std_logic_vector(4 downto 0);
			KEY : in std_logic_vector(0 downto 0));
end AdderDemo;
			
architecture Shell of AdderDemo is
begin

	system_core : entity work.AddSub4(Behavioral)
								port map ( a => SW(7 downto 4),
												b => SW(3 downto 0),
												cout => LEDR(4),
												s => LEDR(3 downto 0),
												sub => KEY(0) );
end Shell;				