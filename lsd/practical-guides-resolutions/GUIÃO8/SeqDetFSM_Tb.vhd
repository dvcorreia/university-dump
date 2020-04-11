library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM_Tb is
end SeqDetFSM_Tb;

architecture Test of SeqDetFSM_Tb is

	signal s_yout : std_logic;
	signal s_xin : std_logic;
	signal s_clk : std_logic;
	signal s_reset: std_logic;
	
begin
	
		SeqDetector : entity work.SeqDetFSM(MealyArch)
							port map( Yout => s_yout,
										 Xin => s_xin,
										 clk => s_clk,
										 reset => s_reset);
										 
		--PROCESSO DO CLOCK
		clock_process : process
		begin
			
			s_clk <= '0'; wait for 100 ns;
			s_clk <= '1'; wait for 100 ns;
			
		end process;
		
		
		-------------------------------------------
		
		test_proc : process
		begin
			
			wait for 100 ns;
			s_reset <= '1';
			wait for 100 ns;
			
			s_xin <= '0';
			wait for 100 ns;
			
			s_xin <= '1';
			wait for 100 ns;
			
			s_xin <= '0';
			wait for 100 ns;
			
			s_xin <= '1';
			wait for 100 ns;
			
			s_xin <= '0';
			wait for 100 ns;
			
			s_xin <= '1';
			wait for 100 ns;
			
			s_xin <= '0';
			wait for 100 ns;
			
			s_xin <= '1';
			wait for 100 ns;
			
			s_xin <= '1';
			wait for 100 ns;
			
		end process;
	end Test;
			
			