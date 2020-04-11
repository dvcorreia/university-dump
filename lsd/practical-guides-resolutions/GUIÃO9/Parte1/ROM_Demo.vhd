library IEEE;

entity ROM_Demo is
	port ( SW : std_logic_vector(3 downto 0);
			 LEDR : std_logic_vector(15 downto 0));
	end ROM_Demo;
	
	architecture shell of ROM_Demo is 
	
	signal address_s : std_logic_vector(3 downto 0);
	signal data_Out_s : std_logic_vector(15 downto 0);
	
	begin
	
		ROM_16_8_impl : entity work.ROM_16_8
				port map( )