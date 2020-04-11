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

-- DATE "03/20/2015 13:01:19"

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

ENTITY 	ShiftRegister_Demo IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 3);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fredivider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \fredivider|Add0~0_combout\ : std_logic;
SIGNAL \fredivider|Add0~1\ : std_logic;
SIGNAL \fredivider|Add0~2_combout\ : std_logic;
SIGNAL \fredivider|Add0~3\ : std_logic;
SIGNAL \fredivider|Add0~4_combout\ : std_logic;
SIGNAL \fredivider|Add0~5\ : std_logic;
SIGNAL \fredivider|Add0~6_combout\ : std_logic;
SIGNAL \fredivider|Add0~7\ : std_logic;
SIGNAL \fredivider|Add0~8_combout\ : std_logic;
SIGNAL \fredivider|Add0~9\ : std_logic;
SIGNAL \fredivider|Add0~10_combout\ : std_logic;
SIGNAL \fredivider|Add0~11\ : std_logic;
SIGNAL \fredivider|Add0~12_combout\ : std_logic;
SIGNAL \fredivider|s_divCounter~2_combout\ : std_logic;
SIGNAL \fredivider|Add0~13\ : std_logic;
SIGNAL \fredivider|Add0~14_combout\ : std_logic;
SIGNAL \fredivider|Add0~15\ : std_logic;
SIGNAL \fredivider|Add0~16_combout\ : std_logic;
SIGNAL \fredivider|s_divCounter~1_combout\ : std_logic;
SIGNAL \fredivider|Add0~17\ : std_logic;
SIGNAL \fredivider|Add0~18_combout\ : std_logic;
SIGNAL \fredivider|s_divCounter~7_combout\ : std_logic;
SIGNAL \fredivider|Add0~19\ : std_logic;
SIGNAL \fredivider|Add0~20_combout\ : std_logic;
SIGNAL \fredivider|Add0~21\ : std_logic;
SIGNAL \fredivider|Add0~22_combout\ : std_logic;
SIGNAL \fredivider|s_divCounter~6_combout\ : std_logic;
SIGNAL \fredivider|Add0~23\ : std_logic;
SIGNAL \fredivider|Add0~24_combout\ : std_logic;
SIGNAL \fredivider|Add0~25\ : std_logic;
SIGNAL \fredivider|Add0~26_combout\ : std_logic;
SIGNAL \fredivider|Add0~27\ : std_logic;
SIGNAL \fredivider|Add0~28_combout\ : std_logic;
SIGNAL \fredivider|s_divCounter~5_combout\ : std_logic;
SIGNAL \fredivider|Equal0~8_combout\ : std_logic;
SIGNAL \fredivider|Equal0~9_combout\ : std_logic;
SIGNAL \fredivider|Add0~29\ : std_logic;
SIGNAL \fredivider|Add0~30_combout\ : std_logic;
SIGNAL \fredivider|Add0~31\ : std_logic;
SIGNAL \fredivider|Add0~32_combout\ : std_logic;
SIGNAL \fredivider|Add0~33\ : std_logic;
SIGNAL \fredivider|Add0~34_combout\ : std_logic;
SIGNAL \fredivider|Add0~35\ : std_logic;
SIGNAL \fredivider|Add0~36_combout\ : std_logic;
SIGNAL \fredivider|s_divCounter~0_combout\ : std_logic;
SIGNAL \fredivider|Add0~37\ : std_logic;
SIGNAL \fredivider|Add0~38_combout\ : std_logic;
SIGNAL \fredivider|s_divCounter~4_combout\ : std_logic;
SIGNAL \fredivider|Add0~39\ : std_logic;
SIGNAL \fredivider|Add0~40_combout\ : std_logic;
SIGNAL \fredivider|Add0~41\ : std_logic;
SIGNAL \fredivider|Add0~42_combout\ : std_logic;
SIGNAL \fredivider|Equal0~7_combout\ : std_logic;
SIGNAL \fredivider|Add0~43\ : std_logic;
SIGNAL \fredivider|Add0~45\ : std_logic;
SIGNAL \fredivider|Add0~46_combout\ : std_logic;
SIGNAL \fredivider|Add0~47\ : std_logic;
SIGNAL \fredivider|Add0~48_combout\ : std_logic;
SIGNAL \fredivider|Add0~49\ : std_logic;
SIGNAL \fredivider|Add0~50_combout\ : std_logic;
SIGNAL \fredivider|Add0~51\ : std_logic;
SIGNAL \fredivider|Add0~52_combout\ : std_logic;
SIGNAL \fredivider|Add0~53\ : std_logic;
SIGNAL \fredivider|Add0~54_combout\ : std_logic;
SIGNAL \fredivider|Add0~55\ : std_logic;
SIGNAL \fredivider|Add0~56_combout\ : std_logic;
SIGNAL \fredivider|Add0~57\ : std_logic;
SIGNAL \fredivider|Add0~58_combout\ : std_logic;
SIGNAL \fredivider|Add0~59\ : std_logic;
SIGNAL \fredivider|Add0~60_combout\ : std_logic;
SIGNAL \fredivider|Add0~61\ : std_logic;
SIGNAL \fredivider|Add0~62_combout\ : std_logic;
SIGNAL \fredivider|Equal0~5_combout\ : std_logic;
SIGNAL \fredivider|Equal0~2_combout\ : std_logic;
SIGNAL \fredivider|Equal0~1_combout\ : std_logic;
SIGNAL \fredivider|Equal0~3_combout\ : std_logic;
SIGNAL \fredivider|Equal0~0_combout\ : std_logic;
SIGNAL \fredivider|Equal0~4_combout\ : std_logic;
SIGNAL \fredivider|Equal0~6_combout\ : std_logic;
SIGNAL \fredivider|Equal0~10_combout\ : std_logic;
SIGNAL \fredivider|Add0~44_combout\ : std_logic;
SIGNAL \fredivider|s_divCounter~3_combout\ : std_logic;
SIGNAL \fredivider|clkOut~0_combout\ : std_logic;
SIGNAL \fredivider|clkOut~1_combout\ : std_logic;
SIGNAL \fredivider|clkOut~2_combout\ : std_logic;
SIGNAL \fredivider|clkOut~3_combout\ : std_logic;
SIGNAL \fredivider|clkOut~4_combout\ : std_logic;
SIGNAL \fredivider|clkOut~q\ : std_logic;
SIGNAL \fredivider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[0]~0_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[1]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[2]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[3]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[4]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[5]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[6]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[7]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[8]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[9]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[10]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[11]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[12]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[13]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[14]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[15]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[16]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg[17]~feeder_combout\ : std_logic;
SIGNAL \shiftRegisterN|s_shiftReg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fredivider|s_divCounter\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\fredivider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fredivider|clkOut~q\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(0),
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
	i => \shiftRegisterN|s_shiftReg\(1),
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
	i => \shiftRegisterN|s_shiftReg\(2),
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
	i => \shiftRegisterN|s_shiftReg\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(10),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(11),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(12),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(13),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(14),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(15),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(16),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftRegisterN|s_shiftReg\(17),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fredivider|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X53_Y30_N0
\fredivider|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~0_combout\ = \fredivider|s_divCounter\(0) $ (VCC)
-- \fredivider|Add0~1\ = CARRY(\fredivider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(0),
	datad => VCC,
	combout => \fredivider|Add0~0_combout\,
	cout => \fredivider|Add0~1\);

-- Location: FF_X53_Y30_N1
\fredivider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(0));

-- Location: LCCOMB_X53_Y30_N2
\fredivider|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~2_combout\ = (\fredivider|s_divCounter\(1) & (!\fredivider|Add0~1\)) # (!\fredivider|s_divCounter\(1) & ((\fredivider|Add0~1\) # (GND)))
-- \fredivider|Add0~3\ = CARRY((!\fredivider|Add0~1\) # (!\fredivider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(1),
	datad => VCC,
	cin => \fredivider|Add0~1\,
	combout => \fredivider|Add0~2_combout\,
	cout => \fredivider|Add0~3\);

-- Location: FF_X53_Y30_N3
\fredivider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(1));

-- Location: LCCOMB_X53_Y30_N4
\fredivider|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~4_combout\ = (\fredivider|s_divCounter\(2) & (\fredivider|Add0~3\ $ (GND))) # (!\fredivider|s_divCounter\(2) & (!\fredivider|Add0~3\ & VCC))
-- \fredivider|Add0~5\ = CARRY((\fredivider|s_divCounter\(2) & !\fredivider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(2),
	datad => VCC,
	cin => \fredivider|Add0~3\,
	combout => \fredivider|Add0~4_combout\,
	cout => \fredivider|Add0~5\);

-- Location: FF_X53_Y30_N5
\fredivider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(2));

-- Location: LCCOMB_X53_Y30_N6
\fredivider|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~6_combout\ = (\fredivider|s_divCounter\(3) & (!\fredivider|Add0~5\)) # (!\fredivider|s_divCounter\(3) & ((\fredivider|Add0~5\) # (GND)))
-- \fredivider|Add0~7\ = CARRY((!\fredivider|Add0~5\) # (!\fredivider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(3),
	datad => VCC,
	cin => \fredivider|Add0~5\,
	combout => \fredivider|Add0~6_combout\,
	cout => \fredivider|Add0~7\);

-- Location: FF_X53_Y30_N7
\fredivider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(3));

-- Location: LCCOMB_X53_Y30_N8
\fredivider|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~8_combout\ = (\fredivider|s_divCounter\(4) & (\fredivider|Add0~7\ $ (GND))) # (!\fredivider|s_divCounter\(4) & (!\fredivider|Add0~7\ & VCC))
-- \fredivider|Add0~9\ = CARRY((\fredivider|s_divCounter\(4) & !\fredivider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(4),
	datad => VCC,
	cin => \fredivider|Add0~7\,
	combout => \fredivider|Add0~8_combout\,
	cout => \fredivider|Add0~9\);

-- Location: FF_X53_Y30_N9
\fredivider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(4));

-- Location: LCCOMB_X53_Y30_N10
\fredivider|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~10_combout\ = (\fredivider|s_divCounter\(5) & (!\fredivider|Add0~9\)) # (!\fredivider|s_divCounter\(5) & ((\fredivider|Add0~9\) # (GND)))
-- \fredivider|Add0~11\ = CARRY((!\fredivider|Add0~9\) # (!\fredivider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(5),
	datad => VCC,
	cin => \fredivider|Add0~9\,
	combout => \fredivider|Add0~10_combout\,
	cout => \fredivider|Add0~11\);

-- Location: FF_X53_Y30_N11
\fredivider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(5));

-- Location: LCCOMB_X53_Y30_N12
\fredivider|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~12_combout\ = (\fredivider|s_divCounter\(6) & (\fredivider|Add0~11\ $ (GND))) # (!\fredivider|s_divCounter\(6) & (!\fredivider|Add0~11\ & VCC))
-- \fredivider|Add0~13\ = CARRY((\fredivider|s_divCounter\(6) & !\fredivider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(6),
	datad => VCC,
	cin => \fredivider|Add0~11\,
	combout => \fredivider|Add0~12_combout\,
	cout => \fredivider|Add0~13\);

-- Location: LCCOMB_X52_Y30_N6
\fredivider|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|s_divCounter~2_combout\ = (!\fredivider|Equal0~10_combout\ & \fredivider|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|Equal0~10_combout\,
	datad => \fredivider|Add0~12_combout\,
	combout => \fredivider|s_divCounter~2_combout\);

-- Location: FF_X52_Y30_N7
\fredivider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(6));

-- Location: LCCOMB_X53_Y30_N14
\fredivider|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~14_combout\ = (\fredivider|s_divCounter\(7) & (!\fredivider|Add0~13\)) # (!\fredivider|s_divCounter\(7) & ((\fredivider|Add0~13\) # (GND)))
-- \fredivider|Add0~15\ = CARRY((!\fredivider|Add0~13\) # (!\fredivider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(7),
	datad => VCC,
	cin => \fredivider|Add0~13\,
	combout => \fredivider|Add0~14_combout\,
	cout => \fredivider|Add0~15\);

-- Location: FF_X53_Y30_N15
\fredivider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(7));

-- Location: LCCOMB_X53_Y30_N16
\fredivider|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~16_combout\ = (\fredivider|s_divCounter\(8) & (\fredivider|Add0~15\ $ (GND))) # (!\fredivider|s_divCounter\(8) & (!\fredivider|Add0~15\ & VCC))
-- \fredivider|Add0~17\ = CARRY((\fredivider|s_divCounter\(8) & !\fredivider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(8),
	datad => VCC,
	cin => \fredivider|Add0~15\,
	combout => \fredivider|Add0~16_combout\,
	cout => \fredivider|Add0~17\);

-- Location: LCCOMB_X52_Y30_N10
\fredivider|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|s_divCounter~1_combout\ = (!\fredivider|Equal0~10_combout\ & \fredivider|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|Equal0~10_combout\,
	datad => \fredivider|Add0~16_combout\,
	combout => \fredivider|s_divCounter~1_combout\);

-- Location: FF_X52_Y30_N11
\fredivider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(8));

-- Location: LCCOMB_X53_Y30_N18
\fredivider|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~18_combout\ = (\fredivider|s_divCounter\(9) & (!\fredivider|Add0~17\)) # (!\fredivider|s_divCounter\(9) & ((\fredivider|Add0~17\) # (GND)))
-- \fredivider|Add0~19\ = CARRY((!\fredivider|Add0~17\) # (!\fredivider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(9),
	datad => VCC,
	cin => \fredivider|Add0~17\,
	combout => \fredivider|Add0~18_combout\,
	cout => \fredivider|Add0~19\);

-- Location: LCCOMB_X52_Y30_N0
\fredivider|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|s_divCounter~7_combout\ = (!\fredivider|Equal0~10_combout\ & \fredivider|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|Equal0~10_combout\,
	datad => \fredivider|Add0~18_combout\,
	combout => \fredivider|s_divCounter~7_combout\);

-- Location: FF_X52_Y30_N1
\fredivider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(9));

-- Location: LCCOMB_X53_Y30_N20
\fredivider|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~20_combout\ = (\fredivider|s_divCounter\(10) & (\fredivider|Add0~19\ $ (GND))) # (!\fredivider|s_divCounter\(10) & (!\fredivider|Add0~19\ & VCC))
-- \fredivider|Add0~21\ = CARRY((\fredivider|s_divCounter\(10) & !\fredivider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(10),
	datad => VCC,
	cin => \fredivider|Add0~19\,
	combout => \fredivider|Add0~20_combout\,
	cout => \fredivider|Add0~21\);

-- Location: FF_X53_Y30_N21
\fredivider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(10));

-- Location: LCCOMB_X53_Y30_N22
\fredivider|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~22_combout\ = (\fredivider|s_divCounter\(11) & (!\fredivider|Add0~21\)) # (!\fredivider|s_divCounter\(11) & ((\fredivider|Add0~21\) # (GND)))
-- \fredivider|Add0~23\ = CARRY((!\fredivider|Add0~21\) # (!\fredivider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(11),
	datad => VCC,
	cin => \fredivider|Add0~21\,
	combout => \fredivider|Add0~22_combout\,
	cout => \fredivider|Add0~23\);

-- Location: LCCOMB_X52_Y30_N8
\fredivider|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|s_divCounter~6_combout\ = (!\fredivider|Equal0~10_combout\ & \fredivider|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|Equal0~10_combout\,
	datad => \fredivider|Add0~22_combout\,
	combout => \fredivider|s_divCounter~6_combout\);

-- Location: FF_X52_Y30_N9
\fredivider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(11));

-- Location: LCCOMB_X53_Y30_N24
\fredivider|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~24_combout\ = (\fredivider|s_divCounter\(12) & (\fredivider|Add0~23\ $ (GND))) # (!\fredivider|s_divCounter\(12) & (!\fredivider|Add0~23\ & VCC))
-- \fredivider|Add0~25\ = CARRY((\fredivider|s_divCounter\(12) & !\fredivider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(12),
	datad => VCC,
	cin => \fredivider|Add0~23\,
	combout => \fredivider|Add0~24_combout\,
	cout => \fredivider|Add0~25\);

-- Location: FF_X53_Y30_N25
\fredivider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(12));

-- Location: LCCOMB_X53_Y30_N26
\fredivider|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~26_combout\ = (\fredivider|s_divCounter\(13) & (!\fredivider|Add0~25\)) # (!\fredivider|s_divCounter\(13) & ((\fredivider|Add0~25\) # (GND)))
-- \fredivider|Add0~27\ = CARRY((!\fredivider|Add0~25\) # (!\fredivider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(13),
	datad => VCC,
	cin => \fredivider|Add0~25\,
	combout => \fredivider|Add0~26_combout\,
	cout => \fredivider|Add0~27\);

-- Location: FF_X53_Y30_N27
\fredivider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(13));

-- Location: LCCOMB_X53_Y30_N28
\fredivider|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~28_combout\ = (\fredivider|s_divCounter\(14) & (\fredivider|Add0~27\ $ (GND))) # (!\fredivider|s_divCounter\(14) & (!\fredivider|Add0~27\ & VCC))
-- \fredivider|Add0~29\ = CARRY((\fredivider|s_divCounter\(14) & !\fredivider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(14),
	datad => VCC,
	cin => \fredivider|Add0~27\,
	combout => \fredivider|Add0~28_combout\,
	cout => \fredivider|Add0~29\);

-- Location: LCCOMB_X52_Y30_N12
\fredivider|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|s_divCounter~5_combout\ = (!\fredivider|Equal0~10_combout\ & \fredivider|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|Equal0~10_combout\,
	datad => \fredivider|Add0~28_combout\,
	combout => \fredivider|s_divCounter~5_combout\);

-- Location: FF_X52_Y30_N13
\fredivider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(14));

-- Location: LCCOMB_X54_Y30_N8
\fredivider|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Equal0~8_combout\ = (!\fredivider|s_divCounter\(13) & (\fredivider|s_divCounter\(14) & (\fredivider|s_divCounter\(11) & !\fredivider|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(13),
	datab => \fredivider|s_divCounter\(14),
	datac => \fredivider|s_divCounter\(11),
	datad => \fredivider|s_divCounter\(10),
	combout => \fredivider|Equal0~8_combout\);

-- Location: LCCOMB_X52_Y30_N16
\fredivider|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Equal0~9_combout\ = (\fredivider|s_divCounter\(5) & (!\fredivider|s_divCounter\(7) & \fredivider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(5),
	datac => \fredivider|s_divCounter\(7),
	datad => \fredivider|s_divCounter\(9),
	combout => \fredivider|Equal0~9_combout\);

-- Location: LCCOMB_X53_Y30_N30
\fredivider|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~30_combout\ = (\fredivider|s_divCounter\(15) & (!\fredivider|Add0~29\)) # (!\fredivider|s_divCounter\(15) & ((\fredivider|Add0~29\) # (GND)))
-- \fredivider|Add0~31\ = CARRY((!\fredivider|Add0~29\) # (!\fredivider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(15),
	datad => VCC,
	cin => \fredivider|Add0~29\,
	combout => \fredivider|Add0~30_combout\,
	cout => \fredivider|Add0~31\);

-- Location: FF_X53_Y30_N31
\fredivider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(15));

-- Location: LCCOMB_X53_Y29_N0
\fredivider|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~32_combout\ = (\fredivider|s_divCounter\(16) & (\fredivider|Add0~31\ $ (GND))) # (!\fredivider|s_divCounter\(16) & (!\fredivider|Add0~31\ & VCC))
-- \fredivider|Add0~33\ = CARRY((\fredivider|s_divCounter\(16) & !\fredivider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(16),
	datad => VCC,
	cin => \fredivider|Add0~31\,
	combout => \fredivider|Add0~32_combout\,
	cout => \fredivider|Add0~33\);

-- Location: FF_X53_Y29_N1
\fredivider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(16));

-- Location: LCCOMB_X53_Y29_N2
\fredivider|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~34_combout\ = (\fredivider|s_divCounter\(17) & (!\fredivider|Add0~33\)) # (!\fredivider|s_divCounter\(17) & ((\fredivider|Add0~33\) # (GND)))
-- \fredivider|Add0~35\ = CARRY((!\fredivider|Add0~33\) # (!\fredivider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(17),
	datad => VCC,
	cin => \fredivider|Add0~33\,
	combout => \fredivider|Add0~34_combout\,
	cout => \fredivider|Add0~35\);

-- Location: FF_X53_Y29_N3
\fredivider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(17));

-- Location: LCCOMB_X53_Y29_N4
\fredivider|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~36_combout\ = (\fredivider|s_divCounter\(18) & (\fredivider|Add0~35\ $ (GND))) # (!\fredivider|s_divCounter\(18) & (!\fredivider|Add0~35\ & VCC))
-- \fredivider|Add0~37\ = CARRY((\fredivider|s_divCounter\(18) & !\fredivider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(18),
	datad => VCC,
	cin => \fredivider|Add0~35\,
	combout => \fredivider|Add0~36_combout\,
	cout => \fredivider|Add0~37\);

-- Location: LCCOMB_X52_Y30_N20
\fredivider|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|s_divCounter~0_combout\ = (!\fredivider|Equal0~10_combout\ & \fredivider|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|Equal0~10_combout\,
	datad => \fredivider|Add0~36_combout\,
	combout => \fredivider|s_divCounter~0_combout\);

-- Location: FF_X52_Y30_N21
\fredivider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(18));

-- Location: LCCOMB_X53_Y29_N6
\fredivider|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~38_combout\ = (\fredivider|s_divCounter\(19) & (!\fredivider|Add0~37\)) # (!\fredivider|s_divCounter\(19) & ((\fredivider|Add0~37\) # (GND)))
-- \fredivider|Add0~39\ = CARRY((!\fredivider|Add0~37\) # (!\fredivider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(19),
	datad => VCC,
	cin => \fredivider|Add0~37\,
	combout => \fredivider|Add0~38_combout\,
	cout => \fredivider|Add0~39\);

-- Location: LCCOMB_X52_Y29_N16
\fredivider|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|s_divCounter~4_combout\ = (!\fredivider|Equal0~10_combout\ & \fredivider|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fredivider|Equal0~10_combout\,
	datad => \fredivider|Add0~38_combout\,
	combout => \fredivider|s_divCounter~4_combout\);

-- Location: FF_X52_Y29_N17
\fredivider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(19));

-- Location: LCCOMB_X53_Y29_N8
\fredivider|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~40_combout\ = (\fredivider|s_divCounter\(20) & (\fredivider|Add0~39\ $ (GND))) # (!\fredivider|s_divCounter\(20) & (!\fredivider|Add0~39\ & VCC))
-- \fredivider|Add0~41\ = CARRY((\fredivider|s_divCounter\(20) & !\fredivider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(20),
	datad => VCC,
	cin => \fredivider|Add0~39\,
	combout => \fredivider|Add0~40_combout\,
	cout => \fredivider|Add0~41\);

-- Location: FF_X53_Y29_N9
\fredivider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(20));

-- Location: LCCOMB_X53_Y29_N10
\fredivider|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~42_combout\ = (\fredivider|s_divCounter\(21) & (!\fredivider|Add0~41\)) # (!\fredivider|s_divCounter\(21) & ((\fredivider|Add0~41\) # (GND)))
-- \fredivider|Add0~43\ = CARRY((!\fredivider|Add0~41\) # (!\fredivider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(21),
	datad => VCC,
	cin => \fredivider|Add0~41\,
	combout => \fredivider|Add0~42_combout\,
	cout => \fredivider|Add0~43\);

-- Location: FF_X53_Y29_N11
\fredivider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(21));

-- Location: LCCOMB_X52_Y29_N24
\fredivider|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Equal0~7_combout\ = (!\fredivider|s_divCounter\(17) & (!\fredivider|s_divCounter\(21) & (\fredivider|s_divCounter\(22) & \fredivider|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(17),
	datab => \fredivider|s_divCounter\(21),
	datac => \fredivider|s_divCounter\(22),
	datad => \fredivider|s_divCounter\(19),
	combout => \fredivider|Equal0~7_combout\);

-- Location: LCCOMB_X53_Y29_N12
\fredivider|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~44_combout\ = (\fredivider|s_divCounter\(22) & (\fredivider|Add0~43\ $ (GND))) # (!\fredivider|s_divCounter\(22) & (!\fredivider|Add0~43\ & VCC))
-- \fredivider|Add0~45\ = CARRY((\fredivider|s_divCounter\(22) & !\fredivider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(22),
	datad => VCC,
	cin => \fredivider|Add0~43\,
	combout => \fredivider|Add0~44_combout\,
	cout => \fredivider|Add0~45\);

-- Location: LCCOMB_X53_Y29_N14
\fredivider|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~46_combout\ = (\fredivider|s_divCounter\(23) & (!\fredivider|Add0~45\)) # (!\fredivider|s_divCounter\(23) & ((\fredivider|Add0~45\) # (GND)))
-- \fredivider|Add0~47\ = CARRY((!\fredivider|Add0~45\) # (!\fredivider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(23),
	datad => VCC,
	cin => \fredivider|Add0~45\,
	combout => \fredivider|Add0~46_combout\,
	cout => \fredivider|Add0~47\);

-- Location: FF_X53_Y29_N15
\fredivider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(23));

-- Location: LCCOMB_X53_Y29_N16
\fredivider|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~48_combout\ = (\fredivider|s_divCounter\(24) & (\fredivider|Add0~47\ $ (GND))) # (!\fredivider|s_divCounter\(24) & (!\fredivider|Add0~47\ & VCC))
-- \fredivider|Add0~49\ = CARRY((\fredivider|s_divCounter\(24) & !\fredivider|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(24),
	datad => VCC,
	cin => \fredivider|Add0~47\,
	combout => \fredivider|Add0~48_combout\,
	cout => \fredivider|Add0~49\);

-- Location: FF_X53_Y29_N17
\fredivider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(24));

-- Location: LCCOMB_X53_Y29_N18
\fredivider|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~50_combout\ = (\fredivider|s_divCounter\(25) & (!\fredivider|Add0~49\)) # (!\fredivider|s_divCounter\(25) & ((\fredivider|Add0~49\) # (GND)))
-- \fredivider|Add0~51\ = CARRY((!\fredivider|Add0~49\) # (!\fredivider|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(25),
	datad => VCC,
	cin => \fredivider|Add0~49\,
	combout => \fredivider|Add0~50_combout\,
	cout => \fredivider|Add0~51\);

-- Location: FF_X53_Y29_N19
\fredivider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(25));

-- Location: LCCOMB_X53_Y29_N20
\fredivider|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~52_combout\ = (\fredivider|s_divCounter\(26) & (\fredivider|Add0~51\ $ (GND))) # (!\fredivider|s_divCounter\(26) & (!\fredivider|Add0~51\ & VCC))
-- \fredivider|Add0~53\ = CARRY((\fredivider|s_divCounter\(26) & !\fredivider|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(26),
	datad => VCC,
	cin => \fredivider|Add0~51\,
	combout => \fredivider|Add0~52_combout\,
	cout => \fredivider|Add0~53\);

-- Location: FF_X53_Y29_N21
\fredivider|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(26));

-- Location: LCCOMB_X53_Y29_N22
\fredivider|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~54_combout\ = (\fredivider|s_divCounter\(27) & (!\fredivider|Add0~53\)) # (!\fredivider|s_divCounter\(27) & ((\fredivider|Add0~53\) # (GND)))
-- \fredivider|Add0~55\ = CARRY((!\fredivider|Add0~53\) # (!\fredivider|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(27),
	datad => VCC,
	cin => \fredivider|Add0~53\,
	combout => \fredivider|Add0~54_combout\,
	cout => \fredivider|Add0~55\);

-- Location: FF_X53_Y29_N23
\fredivider|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(27));

-- Location: LCCOMB_X53_Y29_N24
\fredivider|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~56_combout\ = (\fredivider|s_divCounter\(28) & (\fredivider|Add0~55\ $ (GND))) # (!\fredivider|s_divCounter\(28) & (!\fredivider|Add0~55\ & VCC))
-- \fredivider|Add0~57\ = CARRY((\fredivider|s_divCounter\(28) & !\fredivider|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(28),
	datad => VCC,
	cin => \fredivider|Add0~55\,
	combout => \fredivider|Add0~56_combout\,
	cout => \fredivider|Add0~57\);

-- Location: FF_X53_Y29_N25
\fredivider|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(28));

-- Location: LCCOMB_X53_Y29_N26
\fredivider|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~58_combout\ = (\fredivider|s_divCounter\(29) & (!\fredivider|Add0~57\)) # (!\fredivider|s_divCounter\(29) & ((\fredivider|Add0~57\) # (GND)))
-- \fredivider|Add0~59\ = CARRY((!\fredivider|Add0~57\) # (!\fredivider|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(29),
	datad => VCC,
	cin => \fredivider|Add0~57\,
	combout => \fredivider|Add0~58_combout\,
	cout => \fredivider|Add0~59\);

-- Location: FF_X53_Y29_N27
\fredivider|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(29));

-- Location: LCCOMB_X53_Y29_N28
\fredivider|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~60_combout\ = (\fredivider|s_divCounter\(30) & (\fredivider|Add0~59\ $ (GND))) # (!\fredivider|s_divCounter\(30) & (!\fredivider|Add0~59\ & VCC))
-- \fredivider|Add0~61\ = CARRY((\fredivider|s_divCounter\(30) & !\fredivider|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(30),
	datad => VCC,
	cin => \fredivider|Add0~59\,
	combout => \fredivider|Add0~60_combout\,
	cout => \fredivider|Add0~61\);

-- Location: FF_X53_Y29_N29
\fredivider|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(30));

-- Location: LCCOMB_X53_Y29_N30
\fredivider|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Add0~62_combout\ = \fredivider|s_divCounter\(31) $ (\fredivider|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(31),
	cin => \fredivider|Add0~61\,
	combout => \fredivider|Add0~62_combout\);

-- Location: FF_X53_Y29_N31
\fredivider|s_divCounter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(31));

-- Location: LCCOMB_X52_Y29_N14
\fredivider|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Equal0~5_combout\ = (!\fredivider|s_divCounter\(27) & (!\fredivider|s_divCounter\(30) & (!\fredivider|s_divCounter\(29) & !\fredivider|s_divCounter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(27),
	datab => \fredivider|s_divCounter\(30),
	datac => \fredivider|s_divCounter\(29),
	datad => \fredivider|s_divCounter\(28),
	combout => \fredivider|Equal0~5_combout\);

-- Location: LCCOMB_X52_Y30_N26
\fredivider|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Equal0~2_combout\ = (\fredivider|s_divCounter\(8) & (\fredivider|s_divCounter\(4) & (!\fredivider|s_divCounter\(6) & \fredivider|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(8),
	datab => \fredivider|s_divCounter\(4),
	datac => \fredivider|s_divCounter\(6),
	datad => \fredivider|s_divCounter\(3),
	combout => \fredivider|Equal0~2_combout\);

-- Location: LCCOMB_X52_Y30_N4
\fredivider|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Equal0~1_combout\ = (\fredivider|s_divCounter\(18) & (!\fredivider|s_divCounter\(12) & (!\fredivider|s_divCounter\(16) & !\fredivider|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(18),
	datab => \fredivider|s_divCounter\(12),
	datac => \fredivider|s_divCounter\(16),
	datad => \fredivider|s_divCounter\(15),
	combout => \fredivider|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y30_N22
\fredivider|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Equal0~3_combout\ = (!\fredivider|s_divCounter\(26) & (\fredivider|s_divCounter\(0) & (\fredivider|s_divCounter\(2) & \fredivider|s_divCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(26),
	datab => \fredivider|s_divCounter\(0),
	datac => \fredivider|s_divCounter\(2),
	datad => \fredivider|s_divCounter\(1),
	combout => \fredivider|Equal0~3_combout\);

-- Location: LCCOMB_X52_Y29_N0
\fredivider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Equal0~0_combout\ = (!\fredivider|s_divCounter\(23) & (!\fredivider|s_divCounter\(24) & (!\fredivider|s_divCounter\(20) & !\fredivider|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(23),
	datab => \fredivider|s_divCounter\(24),
	datac => \fredivider|s_divCounter\(20),
	datad => \fredivider|s_divCounter\(25),
	combout => \fredivider|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y30_N28
\fredivider|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Equal0~4_combout\ = (\fredivider|Equal0~2_combout\ & (\fredivider|Equal0~1_combout\ & (\fredivider|Equal0~3_combout\ & \fredivider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|Equal0~2_combout\,
	datab => \fredivider|Equal0~1_combout\,
	datac => \fredivider|Equal0~3_combout\,
	datad => \fredivider|Equal0~0_combout\,
	combout => \fredivider|Equal0~4_combout\);

-- Location: LCCOMB_X52_Y30_N24
\fredivider|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Equal0~6_combout\ = (!\fredivider|s_divCounter\(31) & (\fredivider|Equal0~5_combout\ & \fredivider|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|s_divCounter\(31),
	datac => \fredivider|Equal0~5_combout\,
	datad => \fredivider|Equal0~4_combout\,
	combout => \fredivider|Equal0~6_combout\);

-- Location: LCCOMB_X52_Y30_N18
\fredivider|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|Equal0~10_combout\ = (\fredivider|Equal0~8_combout\ & (\fredivider|Equal0~9_combout\ & (\fredivider|Equal0~7_combout\ & \fredivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|Equal0~8_combout\,
	datab => \fredivider|Equal0~9_combout\,
	datac => \fredivider|Equal0~7_combout\,
	datad => \fredivider|Equal0~6_combout\,
	combout => \fredivider|Equal0~10_combout\);

-- Location: LCCOMB_X52_Y30_N30
\fredivider|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|s_divCounter~3_combout\ = (!\fredivider|Equal0~10_combout\ & \fredivider|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fredivider|Equal0~10_combout\,
	datad => \fredivider|Add0~44_combout\,
	combout => \fredivider|s_divCounter~3_combout\);

-- Location: FF_X52_Y30_N31
\fredivider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|s_divCounter\(22));

-- Location: LCCOMB_X52_Y29_N22
\fredivider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|clkOut~0_combout\ = (!\fredivider|s_divCounter\(22) & (!\fredivider|s_divCounter\(19) & (\fredivider|s_divCounter\(21) & \fredivider|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(22),
	datab => \fredivider|s_divCounter\(19),
	datac => \fredivider|s_divCounter\(21),
	datad => \fredivider|s_divCounter\(17),
	combout => \fredivider|clkOut~0_combout\);

-- Location: LCCOMB_X54_Y30_N28
\fredivider|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|clkOut~1_combout\ = (\fredivider|s_divCounter\(13) & (\fredivider|s_divCounter\(10) & (!\fredivider|s_divCounter\(11) & !\fredivider|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(13),
	datab => \fredivider|s_divCounter\(10),
	datac => \fredivider|s_divCounter\(11),
	datad => \fredivider|s_divCounter\(14),
	combout => \fredivider|clkOut~1_combout\);

-- Location: LCCOMB_X54_Y30_N2
\fredivider|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|clkOut~2_combout\ = (\fredivider|s_divCounter\(7) & (!\fredivider|s_divCounter\(9) & (!\fredivider|s_divCounter\(5) & \fredivider|clkOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|s_divCounter\(7),
	datab => \fredivider|s_divCounter\(9),
	datac => \fredivider|s_divCounter\(5),
	datad => \fredivider|clkOut~1_combout\,
	combout => \fredivider|clkOut~2_combout\);

-- Location: LCCOMB_X52_Y30_N14
\fredivider|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|clkOut~3_combout\ = (\fredivider|clkOut~q\) # ((\fredivider|clkOut~0_combout\ & (\fredivider|clkOut~2_combout\ & \fredivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|clkOut~0_combout\,
	datab => \fredivider|clkOut~q\,
	datac => \fredivider|clkOut~2_combout\,
	datad => \fredivider|Equal0~6_combout\,
	combout => \fredivider|clkOut~3_combout\);

-- Location: LCCOMB_X52_Y30_N2
\fredivider|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fredivider|clkOut~4_combout\ = (\fredivider|clkOut~3_combout\ & !\fredivider|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fredivider|clkOut~3_combout\,
	datad => \fredivider|Equal0~10_combout\,
	combout => \fredivider|clkOut~4_combout\);

-- Location: FF_X52_Y30_N3
\fredivider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fredivider|clkOut~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fredivider|clkOut~q\);

-- Location: CLKCTRL_G19
\fredivider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fredivider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fredivider|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X80_Y72_N0
\shiftRegisterN|s_shiftReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[0]~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	combout => \shiftRegisterN|s_shiftReg[0]~0_combout\);

-- Location: FF_X80_Y72_N1
\shiftRegisterN|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(0));

-- Location: LCCOMB_X80_Y72_N6
\shiftRegisterN|s_shiftReg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[1]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(0),
	combout => \shiftRegisterN|s_shiftReg[1]~feeder_combout\);

-- Location: FF_X80_Y72_N7
\shiftRegisterN|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(1));

-- Location: LCCOMB_X80_Y72_N28
\shiftRegisterN|s_shiftReg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[2]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(1),
	combout => \shiftRegisterN|s_shiftReg[2]~feeder_combout\);

-- Location: FF_X80_Y72_N29
\shiftRegisterN|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(2));

-- Location: LCCOMB_X80_Y72_N10
\shiftRegisterN|s_shiftReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[3]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(2),
	combout => \shiftRegisterN|s_shiftReg[3]~feeder_combout\);

-- Location: FF_X80_Y72_N11
\shiftRegisterN|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(3));

-- Location: LCCOMB_X80_Y72_N24
\shiftRegisterN|s_shiftReg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[4]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(3),
	combout => \shiftRegisterN|s_shiftReg[4]~feeder_combout\);

-- Location: FF_X80_Y72_N25
\shiftRegisterN|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(4));

-- Location: LCCOMB_X80_Y72_N18
\shiftRegisterN|s_shiftReg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[5]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(4),
	combout => \shiftRegisterN|s_shiftReg[5]~feeder_combout\);

-- Location: FF_X80_Y72_N19
\shiftRegisterN|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(5));

-- Location: LCCOMB_X80_Y72_N12
\shiftRegisterN|s_shiftReg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[6]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(5),
	combout => \shiftRegisterN|s_shiftReg[6]~feeder_combout\);

-- Location: FF_X80_Y72_N13
\shiftRegisterN|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(6));

-- Location: LCCOMB_X80_Y72_N2
\shiftRegisterN|s_shiftReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[7]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(6),
	combout => \shiftRegisterN|s_shiftReg[7]~feeder_combout\);

-- Location: FF_X80_Y72_N3
\shiftRegisterN|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(7));

-- Location: LCCOMB_X79_Y72_N12
\shiftRegisterN|s_shiftReg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[8]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(7),
	combout => \shiftRegisterN|s_shiftReg[8]~feeder_combout\);

-- Location: FF_X79_Y72_N13
\shiftRegisterN|s_shiftReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(8));

-- Location: LCCOMB_X79_Y72_N26
\shiftRegisterN|s_shiftReg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[9]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(8),
	combout => \shiftRegisterN|s_shiftReg[9]~feeder_combout\);

-- Location: FF_X79_Y72_N27
\shiftRegisterN|s_shiftReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(9));

-- Location: LCCOMB_X79_Y72_N28
\shiftRegisterN|s_shiftReg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[10]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shiftRegisterN|s_shiftReg\(9),
	combout => \shiftRegisterN|s_shiftReg[10]~feeder_combout\);

-- Location: FF_X79_Y72_N29
\shiftRegisterN|s_shiftReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(10));

-- Location: LCCOMB_X79_Y72_N6
\shiftRegisterN|s_shiftReg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[11]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(10),
	combout => \shiftRegisterN|s_shiftReg[11]~feeder_combout\);

-- Location: FF_X79_Y72_N7
\shiftRegisterN|s_shiftReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(11));

-- Location: LCCOMB_X79_Y72_N16
\shiftRegisterN|s_shiftReg[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[12]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(11),
	combout => \shiftRegisterN|s_shiftReg[12]~feeder_combout\);

-- Location: FF_X79_Y72_N17
\shiftRegisterN|s_shiftReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(12));

-- Location: LCCOMB_X79_Y72_N18
\shiftRegisterN|s_shiftReg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[13]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(12),
	combout => \shiftRegisterN|s_shiftReg[13]~feeder_combout\);

-- Location: FF_X79_Y72_N19
\shiftRegisterN|s_shiftReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(13));

-- Location: LCCOMB_X79_Y72_N24
\shiftRegisterN|s_shiftReg[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[14]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(13),
	combout => \shiftRegisterN|s_shiftReg[14]~feeder_combout\);

-- Location: FF_X79_Y72_N25
\shiftRegisterN|s_shiftReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(14));

-- Location: LCCOMB_X79_Y72_N10
\shiftRegisterN|s_shiftReg[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[15]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(14),
	combout => \shiftRegisterN|s_shiftReg[15]~feeder_combout\);

-- Location: FF_X79_Y72_N11
\shiftRegisterN|s_shiftReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(15));

-- Location: LCCOMB_X79_Y72_N20
\shiftRegisterN|s_shiftReg[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[16]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(15),
	combout => \shiftRegisterN|s_shiftReg[16]~feeder_combout\);

-- Location: FF_X79_Y72_N21
\shiftRegisterN|s_shiftReg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(16));

-- Location: LCCOMB_X79_Y72_N22
\shiftRegisterN|s_shiftReg[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftRegisterN|s_shiftReg[17]~feeder_combout\ = \shiftRegisterN|s_shiftReg\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftRegisterN|s_shiftReg\(16),
	combout => \shiftRegisterN|s_shiftReg[17]~feeder_combout\);

-- Location: FF_X79_Y72_N23
\shiftRegisterN|s_shiftReg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fredivider|clkOut~clkctrl_outclk\,
	d => \shiftRegisterN|s_shiftReg[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftRegisterN|s_shiftReg\(17));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


