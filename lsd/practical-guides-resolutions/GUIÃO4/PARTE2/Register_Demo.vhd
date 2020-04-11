library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register_Demo is
  port(SW : in std_logic_vector(8 downto 0);
       KEY : in std_logic_vector(0 downto 0);
		 LEDR : out std_logic_vector(8 downto 0));
end Regiter_Demo;

architecture shell of Register_Demo is
begin 
   system_core : entity work.RegisterN(Behavioral)		 
               port map (clk => Key(0),
				             dataIN => SW(7 downto 0),
								 wrEN => SW(8),
								 dataOut => LEDR(7 downto 0) );
end shell;