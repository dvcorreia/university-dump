library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegisterN is
   generic(N : positive := 4); 
	port(wrEN : in std_logic;
	     clk : in std_logic;
		  dataIn : in std_logic_vector((N-1) downto 0);
		  dataOut : out std_logic_vector ((N-1)downto 0));
end RegisterN;

architecture Behavioral of RegisterN is
begin 
   process(clk)
   begin
	  if ( rising_edge(clk)) then
	  if(wrEN = '1') then     	dataOut <= dataIn;
	end if;
   end if;
end process;
end Behavioral;	