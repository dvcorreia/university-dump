-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "03/13/2015 12:32:48"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Couter_Demo IS
    PORT (
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 3)
	);
END Couter_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Couter_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 3);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \counterupdonw|s_count~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \counterupdonw|s_count[1]~5_cout\ : std_logic;
SIGNAL \counterupdonw|s_count[1]~6_combout\ : std_logic;
SIGNAL \counterupdonw|s_count[1]~7\ : std_logic;
SIGNAL \counterupdonw|s_count[2]~8_combout\ : std_logic;
SIGNAL \counterupdonw|s_count[2]~9\ : std_logic;
SIGNAL \counterupdonw|s_count[3]~10_combout\ : std_logic;
SIGNAL \counterupdonw|s_count\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counterupdonw|s_count\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counterupdonw|s_count\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counterupdonw|s_count\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counterupdonw|s_count\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y35_N12
\counterupdonw|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterupdonw|s_count~3_combout\ = (!\counterupdonw|s_count\(0) & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counterupdonw|s_count\(0),
	datad => \SW[1]~input_o\,
	combout => \counterupdonw|s_count~3_combout\);

-- Location: FF_X114_Y35_N13
\counterupdonw|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \counterupdonw|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterupdonw|s_count\(0));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y35_N22
\counterupdonw|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterupdonw|s_count[1]~5_cout\ = CARRY(\counterupdonw|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterupdonw|s_count\(0),
	datad => VCC,
	cout => \counterupdonw|s_count[1]~5_cout\);

-- Location: LCCOMB_X114_Y35_N24
\counterupdonw|s_count[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterupdonw|s_count[1]~6_combout\ = (\SW[0]~input_o\ & ((\counterupdonw|s_count\(1) & (\counterupdonw|s_count[1]~5_cout\ & VCC)) # (!\counterupdonw|s_count\(1) & (!\counterupdonw|s_count[1]~5_cout\)))) # (!\SW[0]~input_o\ & ((\counterupdonw|s_count\(1) 
-- & (!\counterupdonw|s_count[1]~5_cout\)) # (!\counterupdonw|s_count\(1) & ((\counterupdonw|s_count[1]~5_cout\) # (GND)))))
-- \counterupdonw|s_count[1]~7\ = CARRY((\SW[0]~input_o\ & (!\counterupdonw|s_count\(1) & !\counterupdonw|s_count[1]~5_cout\)) # (!\SW[0]~input_o\ & ((!\counterupdonw|s_count[1]~5_cout\) # (!\counterupdonw|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \counterupdonw|s_count\(1),
	datad => VCC,
	cin => \counterupdonw|s_count[1]~5_cout\,
	combout => \counterupdonw|s_count[1]~6_combout\,
	cout => \counterupdonw|s_count[1]~7\);

-- Location: FF_X114_Y35_N25
\counterupdonw|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \counterupdonw|s_count[1]~6_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterupdonw|s_count\(1));

-- Location: LCCOMB_X114_Y35_N26
\counterupdonw|s_count[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterupdonw|s_count[2]~8_combout\ = ((\counterupdonw|s_count\(2) $ (\SW[0]~input_o\ $ (!\counterupdonw|s_count[1]~7\)))) # (GND)
-- \counterupdonw|s_count[2]~9\ = CARRY((\counterupdonw|s_count\(2) & ((\SW[0]~input_o\) # (!\counterupdonw|s_count[1]~7\))) # (!\counterupdonw|s_count\(2) & (\SW[0]~input_o\ & !\counterupdonw|s_count[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterupdonw|s_count\(2),
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \counterupdonw|s_count[1]~7\,
	combout => \counterupdonw|s_count[2]~8_combout\,
	cout => \counterupdonw|s_count[2]~9\);

-- Location: FF_X114_Y35_N27
\counterupdonw|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \counterupdonw|s_count[2]~8_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterupdonw|s_count\(2));

-- Location: LCCOMB_X114_Y35_N28
\counterupdonw|s_count[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterupdonw|s_count[3]~10_combout\ = \SW[0]~input_o\ $ (\counterupdonw|s_count[2]~9\ $ (\counterupdonw|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \counterupdonw|s_count\(3),
	cin => \counterupdonw|s_count[2]~9\,
	combout => \counterupdonw|s_count[3]~10_combout\);

-- Location: FF_X114_Y35_N29
\counterupdonw|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \counterupdonw|s_count[3]~10_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterupdonw|s_count\(3));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;
END structure;


