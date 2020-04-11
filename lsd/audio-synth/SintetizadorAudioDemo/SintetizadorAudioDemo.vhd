library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SintetizadorAudioDemo is
	port(-- Clock and reset
		  CLOCK_50		: in    std_logic;
		  KEY				: in    std_logic_vector(3 downto 0);
		  SW				: in    std_logic_vector(4 downto 0);
		  HEX6 			: out std_logic_vector(6 downto 0);
		  HEX7 			: out std_logic_vector(6 downto 0);
		  HEX5 			: out std_logic_vector(6 downto 0);
		  HEX4 			: out std_logic_vector(6 downto 0);
		  LEDR 			: out std_logic_vector(11 downto 0);
		  LEDG			: out std_logic_vector(7 downto 0);
		  -- Audio Serial Data Interface
		  AUD_ADCLRCK	: inout std_logic;
		  AUD_ADCDAT	: in    std_logic;
		  AUD_DACLRCK	: inout std_logic;
		  AUD_DACDAT	: out   std_logic;
		  AUD_BCLK		: inout std_logic;
		  AUD_XCK		: out   std_logic;
		  -- Audio I2C Configuration Interface
		  I2C_SCLK		: out   std_logic;
		  I2C_SDAT		: inout std_logic);
end SintetizadorAudioDemo;

architecture Structural of SintetizadorAudioDemo is

	-- Definition of the Audio Interface Module Black Box
	component AudioInterfaceCore is
		port(-- Clock and reset
			  CLOCK_50			: in    std_logic;
			  RESET_N			: in    std_logic;
			  -- Parallel Samples Interface (to/from client logic)
			  IN_SAMPLE_VALID	: out   std_logic;
			  CH_L_IN_SAMPLE	: out   std_logic_vector(15 downto 0);
			  CH_R_IN_SAMPLE	: out   std_logic_vector(15 downto 0);
			  OUT_SAMPLE_RQST	: out   std_logic;
			  CH_L_OUT_SAMPLE	: in    std_logic_vector(15 downto 0);
			  CH_R_OUT_SAMPLE	: in    std_logic_vector(15 downto 0);
			  -- Audio Serial Data Interface (to/from FPGA pins)
			  AUD_ADCLRCK		: inout std_logic;
			  AUD_ADCDAT		: in    std_logic;
			  AUD_DACLRCK		: inout std_logic;
			  AUD_DACDAT		: out   std_logic;
			  AUD_BCLK			: inout std_logic;
			  AUD_XCK			: out   std_logic;
			  -- Audio I2C Configuration Interface (to/from FPGA pins)
			  I2C_SCLK			: out   std_logic;
			  I2C_SDAT			: inout std_logic);
	end component;

	signal s_inSampleValid,   s_outSampleRqst		: std_logic;
	signal s_outLeftSample,   s_outRightSample	: std_logic_vector(15 downto 0);
	signal s_inLeftSample,    s_inRightSample		: std_logic_vector(15 downto 0);
	signal s_regInLeftSample, s_regInRightSample	: std_logic_vector(15 downto 0);

	signal s_leftSinArg, s_rightSinArg	: unsigned(8 downto 0);
	signal s_leftSinVal, s_rightSinVal	: std_logic_vector(15 downto 0);
	
	signal octave_val_left : std_logic_vector(1 downto 0);
	signal octave_val_right : std_logic_vector(1 downto 0);


begin
	-- INSTANCIAÇAO DO MÚLO Audio Interface (BLACK BOX)
	audio_interface : AudioInterfaceCore
		port map(CLOCK_50				=> CLOCK_50,
					RESET_N				=> SW(0),
					IN_SAMPLE_VALID	=> s_inSampleValid,
					CH_L_IN_SAMPLE		=> s_inLeftSample,
					CH_R_IN_SAMPLE		=> s_inRightSample,
					OUT_SAMPLE_RQST	=> s_outSampleRqst,
					CH_L_OUT_SAMPLE	=> s_outLeftSample,
					CH_R_OUT_SAMPLE	=> s_outRightSample,
					AUD_ADCLRCK			=> AUD_ADCLRCK,
					AUD_ADCDAT			=> AUD_ADCDAT,
					AUD_DACLRCK			=> AUD_DACLRCK,
					AUD_DACDAT			=> AUD_DACDAT,
					AUD_BCLK				=> AUD_BCLK,
					AUD_XCK				=> AUD_XCK,
					I2C_SCLK				=> I2C_SCLK,
					I2C_SDAT				=> I2C_SDAT);
	
	-- Módulos do Display
	Display_nota_1 : entity work.Bin7SegDecoder_1(Behavioral)
		port map( binInput => (not KEY),
					 decOut => HEX7);
					 
	Display_nota_2 : entity work.Bin7SegDecoder_2(Behavioral)
		port map( binInput => (not KEY),
					 decOut => HEX6);
	
	octave_val_left <= SW(4 downto 3);
	octave_val_right <= SW(2 downto 1);
 	
	Display_oitava_left : entity work.Bin7SegDecoder_octave(Behavioral)
		port map( binInput => octave_val_left,
					 decOut => HEX5);
					 
	Display_oitava_right : entity work.Bin7SegDecoder_octave(Behavioral)
		port map( binInput => octave_val_right,
					 decOut => HEX4);
					 
	-- Módulos Leds
	Display_Leds : entity work.Leds_display(Behavioral)
		port map( binInput => not KEY,
					 decOut => LEDR);
	
	Display_Leds_green : entity work.Leds_green_display(Behavioral)
		port map( binInput => not KEY,
					 decOut => LEDG); 

	-- CONTADOR QUE PRECORRE OS PONTOS DAS ONDAS
	process(AUD_BCLK)
	begin
		if (rising_edge(AUD_BCLK)) then
			if (s_outSampleRqst = '1' ) then
				s_leftSinArg	<= s_leftSinArg + unsigned(octave_val_left);
				s_rightSinArg	<= s_rightSinArg + unsigned(octave_val_right);
			end if;
		end if;
	end process;

	-- ROM DA ONDA TRIANGULAR PARA O LADO ESQUERDO
	left_triangle367pts_rom : entity work.ROMTriangle367Pts(ROM)
		port map(notePt	=> std_logic_vector(s_leftSinArg),
					noteId => not KEY,
					DataOut	=> s_leftSinVal);

	-- ROM DA ONDA TRIANGULAR PARA O LADO DIREITO
	right_triangle367pts: entity work.ROMTriangle367Pts(ROM)
		port map(notePT	=> std_logic_vector(s_rightSinArg),
					noteId => not KEY,
					DataOut	=> s_rightSinVal);

	-- CONDIÇOES DO OUTPUT PARA O LADO ESQUERDO
	s_outLeftSample	<= s_leftSinVal(15) & s_leftSinVal(15) & s_leftSinVal(15 downto 2) 
								when (SW(0) or (KEY(0) and KEY(1) and KEY(2) and KEY(3))) = '0'
								else (others => '0');

	-- CONDIÇOES DO OUTPUT PARA O LADO DIREITO
	s_outRightSample	<= s_rightSinVal(15) & s_rightSinVal(15) & s_rightSinVal(15 downto 2)
								when (SW(0) or (KEY(0) and KEY(1) and KEY(2) and KEY(3))) = '0'
								else (others => '0');

end Structural;
