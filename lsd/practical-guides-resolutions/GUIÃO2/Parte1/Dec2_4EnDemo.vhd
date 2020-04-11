entity Dec2_4EnDemo is
	port(SW	 :	in  std_logic_vector(2 downto 0);
		  LEDR : out std_logic_vector(3 downto 0));
end Dec2_4EnDemo;

architecture shell of Dec2_4EnDemo is

begin
	
	main_dec2_4 : work.Dec2_4EnDemo(BehavEquations)
						port map(enable     => SW(2),
									inputs(0)  => SW(0),
									inputs(1)  => SW(1),
									outputs(0) => LEDR(0),
									outputs(1) => LEDR(1),
									outputs(2) => LEDR(2),
									outputs(3) => LEDR(3));
end shell;
