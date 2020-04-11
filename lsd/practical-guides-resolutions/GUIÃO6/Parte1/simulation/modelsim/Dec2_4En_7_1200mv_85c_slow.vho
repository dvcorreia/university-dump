-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/10/2015 11:04:24"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Dec2_4En IS
    PORT (
	enable : IN std_logic;
	inputs : IN std_logic_vector(1 DOWNTO 0);
	outputs : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Dec2_4En;

-- Design Ports Information
-- outputs[0]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[1]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputs[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[1]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[0]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Dec2_4En IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_inputs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_outputs : std_logic_vector(3 DOWNTO 0);
SIGNAL \outputs[0]~output_o\ : std_logic;
SIGNAL \outputs[1]~output_o\ : std_logic;
SIGNAL \outputs[2]~output_o\ : std_logic;
SIGNAL \outputs[3]~output_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \inputs[0]~input_o\ : std_logic;
SIGNAL \inputs[1]~input_o\ : std_logic;
SIGNAL \outputs~0_combout\ : std_logic;
SIGNAL \outputs~1_combout\ : std_logic;
SIGNAL \outputs~2_combout\ : std_logic;
SIGNAL \outputs~3_combout\ : std_logic;

BEGIN

ww_enable <= enable;
ww_inputs <= inputs;
outputs <= ww_outputs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y4_N2
\outputs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs~0_combout\,
	devoe => ww_devoe,
	o => \outputs[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\outputs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs~1_combout\,
	devoe => ww_devoe,
	o => \outputs[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\outputs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs~2_combout\,
	devoe => ww_devoe,
	o => \outputs[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\outputs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs~3_combout\,
	devoe => ww_devoe,
	o => \outputs[3]~output_o\);

-- Location: IOIBUF_X0_Y6_N1
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\inputs[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(0),
	o => \inputs[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\inputs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(1),
	o => \inputs[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\outputs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputs~0_combout\ = (\enable~input_o\ & (!\inputs[0]~input_o\ & !\inputs[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \inputs[0]~input_o\,
	datad => \inputs[1]~input_o\,
	combout => \outputs~0_combout\);

-- Location: LCCOMB_X1_Y4_N26
\outputs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputs~1_combout\ = (\enable~input_o\ & (\inputs[0]~input_o\ & !\inputs[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \inputs[0]~input_o\,
	datad => \inputs[1]~input_o\,
	combout => \outputs~1_combout\);

-- Location: LCCOMB_X1_Y4_N4
\outputs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputs~2_combout\ = (\enable~input_o\ & (!\inputs[0]~input_o\ & \inputs[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \inputs[0]~input_o\,
	datad => \inputs[1]~input_o\,
	combout => \outputs~2_combout\);

-- Location: LCCOMB_X1_Y4_N14
\outputs~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputs~3_combout\ = (\enable~input_o\ & (\inputs[0]~input_o\ & \inputs[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \inputs[0]~input_o\,
	datad => \inputs[1]~input_o\,
	combout => \outputs~3_combout\);

ww_outputs(0) <= \outputs[0]~output_o\;

ww_outputs(1) <= \outputs[1]~output_o\;

ww_outputs(2) <= \outputs[2]~output_o\;

ww_outputs(3) <= \outputs[3]~output_o\;
END structure;


