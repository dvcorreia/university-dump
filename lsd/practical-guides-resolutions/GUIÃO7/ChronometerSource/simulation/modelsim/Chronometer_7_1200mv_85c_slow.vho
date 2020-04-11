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

-- DATE "04/17/2015 12:06:57"

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

ENTITY 	Chronometer IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Chronometer;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Chronometer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \system_core|clk_divider_500000|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~0_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~1\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~2_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~3\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~4_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~5\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~6_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~7\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~8_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~9\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~10_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Equal0~6_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~15\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~16_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|s_divCounter~6_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~17\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~18_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~19\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~20_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~21\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~22_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Equal0~5_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~23\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~24_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~25\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~26_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|s_divCounter~5_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~27\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~28_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~29\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~30_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|s_divCounter~2_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~31\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~32_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|s_divCounter~1_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~33\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~34_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|s_divCounter~0_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~35\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~36_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|s_divCounter~4_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Equal0~8_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Equal0~9_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~37\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~38_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~39\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~40_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~41\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~42_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~43\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~44_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~45\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~46_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~47\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~48_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~49\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~50_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~51\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~52_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~53\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~54_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Equal0~1_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Equal0~2_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Equal0~3_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~55\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~56_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~57\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~58_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~59\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~60_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Equal0~0_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Equal0~4_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Equal0~10_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|s_divCounter~3_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~11\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~12_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~13\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Add0~14_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|clkOut~0_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|clkOut~1_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|Equal0~7_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|clkOut~2_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|clkOut~feeder_combout\ : std_logic;
SIGNAL \system_core|clk_divider_500000|clkOut~q\ : std_logic;
SIGNAL \system_core|clk_divider_500000|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \system_core|statop_debounce|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \system_core|statop_debounce|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[15]~feeder_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|Equal0~5_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|Equal0~6_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \system_core|statop_debounce|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|Equal0~7_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|Equal0~8_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|Equal0~9_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_resetPulse~0_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_resetPulse~q\ : std_logic;
SIGNAL \system_core|statop_debounce|out_proc~0_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[15]~feeder_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|Equal0~5_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|Equal0~6_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|Equal0~7_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|Equal0~8_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|Equal0~9_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_resetPulse~0_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_resetPulse~q\ : std_logic;
SIGNAL \system_core|laprst_debounce|out_proc~0_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \system_core|control_unit|s_currentState~7_combout\ : std_logic;
SIGNAL \system_core|control_unit|s_currentState~8_combout\ : std_logic;
SIGNAL \system_core|control_unit|s_currentState.TlapStopped~q\ : std_logic;
SIGNAL \system_core|control_unit|Selector3~0_combout\ : std_logic;
SIGNAL \system_core|control_unit|Selector3~1_combout\ : std_logic;
SIGNAL \system_core|control_unit|s_currentState.TLapView~q\ : std_logic;
SIGNAL \system_core|control_unit|Selector1~0_combout\ : std_logic;
SIGNAL \system_core|control_unit|Selector1~1_combout\ : std_logic;
SIGNAL \system_core|control_unit|s_currentState.TStarted~q\ : std_logic;
SIGNAL \system_core|control_unit|Selector2~0_combout\ : std_logic;
SIGNAL \system_core|control_unit|Selector2~1_combout\ : std_logic;
SIGNAL \system_core|control_unit|s_currentState.TStopped~q\ : std_logic;
SIGNAL \system_core|control_unit|s_currentState~9_combout\ : std_logic;
SIGNAL \system_core|control_unit|s_currentState~10_combout\ : std_logic;
SIGNAL \system_core|control_unit|s_currentState.TCleared~q\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~0_combout\ : std_logic;
SIGNAL \system_core|control_unit|cntEnable~2_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|Add3~0_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~2_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|Equal0~0_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~1_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|Add3~1_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~3_combout\ : std_logic;
SIGNAL \system_core|control_unit|regEnable~1_combout\ : std_logic;
SIGNAL \system_core|disp_0_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \system_core|disp_0_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \system_core|disp_0_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \system_core|disp_0_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \system_core|disp_0_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \system_core|disp_0_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \system_core|disp_0_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~4_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count[4]~5_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|Add2~1_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~8_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|Equal1~0_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~6_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|Add2~0_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~7_combout\ : std_logic;
SIGNAL \system_core|freeze_register|dataOut[7]~feeder_combout\ : std_logic;
SIGNAL \system_core|disp_1_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \system_core|disp_1_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \system_core|disp_1_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \system_core|disp_1_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \system_core|disp_1_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \system_core|disp_1_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \system_core|disp_1_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~9_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count[11]~10_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count[11]~11_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~13_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|Add1~0_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~14_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count[11]~12_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|Add1~1_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~15_combout\ : std_logic;
SIGNAL \system_core|freeze_register|dataOut[8]~feeder_combout\ : std_logic;
SIGNAL \system_core|freeze_register|dataOut[9]~feeder_combout\ : std_logic;
SIGNAL \system_core|disp_2_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \system_core|disp_2_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \system_core|disp_2_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \system_core|disp_2_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \system_core|disp_2_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \system_core|disp_2_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \system_core|disp_2_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~16_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count[4]~17_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count[12]~18_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~20_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|Add0~1_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~22_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count[12]~19_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|Add0~0_combout\ : std_logic;
SIGNAL \system_core|bcd_counter|s_count~21_combout\ : std_logic;
SIGNAL \system_core|disp_3_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \system_core|disp_3_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \system_core|disp_3_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \system_core|disp_3_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \system_core|disp_3_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \system_core|disp_3_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \system_core|disp_3_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \system_core|clk_divider_500000|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \system_core|statop_debounce|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \system_core|freeze_register|dataOut\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \system_core|bcd_counter|s_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \system_core|laprst_debounce|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \system_core|laprst_debounce|ALT_INV_s_dirtyIn~q\ : std_logic;
SIGNAL \system_core|statop_debounce|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \system_core|statop_debounce|ALT_INV_s_dirtyIn~q\ : std_logic;
SIGNAL \system_core|disp_3_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \system_core|disp_2_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \system_core|disp_1_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \system_core|disp_0_decoder|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\system_core|clk_divider_500000|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \system_core|clk_divider_500000|clkOut~q\);
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\system_core|laprst_debounce|ALT_INV_out_proc~0_combout\ <= NOT \system_core|laprst_debounce|out_proc~0_combout\;
\system_core|laprst_debounce|ALT_INV_s_dirtyIn~q\ <= NOT \system_core|laprst_debounce|s_dirtyIn~q\;
\system_core|statop_debounce|ALT_INV_out_proc~0_combout\ <= NOT \system_core|statop_debounce|out_proc~0_combout\;
\system_core|statop_debounce|ALT_INV_s_dirtyIn~q\ <= NOT \system_core|statop_debounce|s_dirtyIn~q\;
\system_core|disp_3_decoder|ALT_INV_Mux0~0_combout\ <= NOT \system_core|disp_3_decoder|Mux0~0_combout\;
\system_core|disp_2_decoder|ALT_INV_Mux0~0_combout\ <= NOT \system_core|disp_2_decoder|Mux0~0_combout\;
\system_core|disp_1_decoder|ALT_INV_Mux0~0_combout\ <= NOT \system_core|disp_1_decoder|Mux0~0_combout\;
\system_core|disp_0_decoder|ALT_INV_Mux0~0_combout\ <= NOT \system_core|disp_0_decoder|Mux0~0_combout\;

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_0_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_0_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_0_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_0_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_0_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_0_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_0_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_1_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_1_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_1_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_1_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_1_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_1_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_1_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_2_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_2_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_2_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_2_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_2_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_2_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_2_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_3_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_3_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_3_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_3_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_3_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_3_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|disp_3_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

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

-- Location: LCCOMB_X113_Y40_N2
\system_core|clk_divider_500000|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~0_combout\ = \system_core|clk_divider_500000|s_divCounter\(0) $ (VCC)
-- \system_core|clk_divider_500000|Add0~1\ = CARRY(\system_core|clk_divider_500000|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(0),
	datad => VCC,
	combout => \system_core|clk_divider_500000|Add0~0_combout\,
	cout => \system_core|clk_divider_500000|Add0~1\);

-- Location: FF_X113_Y40_N3
\system_core|clk_divider_500000|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(0));

-- Location: LCCOMB_X113_Y40_N4
\system_core|clk_divider_500000|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~2_combout\ = (\system_core|clk_divider_500000|s_divCounter\(1) & (!\system_core|clk_divider_500000|Add0~1\)) # (!\system_core|clk_divider_500000|s_divCounter\(1) & ((\system_core|clk_divider_500000|Add0~1\) # (GND)))
-- \system_core|clk_divider_500000|Add0~3\ = CARRY((!\system_core|clk_divider_500000|Add0~1\) # (!\system_core|clk_divider_500000|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(1),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~1\,
	combout => \system_core|clk_divider_500000|Add0~2_combout\,
	cout => \system_core|clk_divider_500000|Add0~3\);

-- Location: FF_X113_Y40_N5
\system_core|clk_divider_500000|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(1));

-- Location: LCCOMB_X113_Y40_N6
\system_core|clk_divider_500000|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~4_combout\ = (\system_core|clk_divider_500000|s_divCounter\(2) & (\system_core|clk_divider_500000|Add0~3\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(2) & (!\system_core|clk_divider_500000|Add0~3\ & 
-- VCC))
-- \system_core|clk_divider_500000|Add0~5\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(2) & !\system_core|clk_divider_500000|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(2),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~3\,
	combout => \system_core|clk_divider_500000|Add0~4_combout\,
	cout => \system_core|clk_divider_500000|Add0~5\);

-- Location: FF_X113_Y40_N7
\system_core|clk_divider_500000|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(2));

-- Location: LCCOMB_X113_Y40_N8
\system_core|clk_divider_500000|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~6_combout\ = (\system_core|clk_divider_500000|s_divCounter\(3) & (!\system_core|clk_divider_500000|Add0~5\)) # (!\system_core|clk_divider_500000|s_divCounter\(3) & ((\system_core|clk_divider_500000|Add0~5\) # (GND)))
-- \system_core|clk_divider_500000|Add0~7\ = CARRY((!\system_core|clk_divider_500000|Add0~5\) # (!\system_core|clk_divider_500000|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(3),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~5\,
	combout => \system_core|clk_divider_500000|Add0~6_combout\,
	cout => \system_core|clk_divider_500000|Add0~7\);

-- Location: FF_X113_Y40_N9
\system_core|clk_divider_500000|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(3));

-- Location: LCCOMB_X113_Y40_N10
\system_core|clk_divider_500000|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~8_combout\ = (\system_core|clk_divider_500000|s_divCounter\(4) & (\system_core|clk_divider_500000|Add0~7\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(4) & (!\system_core|clk_divider_500000|Add0~7\ & 
-- VCC))
-- \system_core|clk_divider_500000|Add0~9\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(4) & !\system_core|clk_divider_500000|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(4),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~7\,
	combout => \system_core|clk_divider_500000|Add0~8_combout\,
	cout => \system_core|clk_divider_500000|Add0~9\);

-- Location: FF_X113_Y40_N11
\system_core|clk_divider_500000|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(4));

-- Location: LCCOMB_X113_Y40_N12
\system_core|clk_divider_500000|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~10_combout\ = (\system_core|clk_divider_500000|s_divCounter\(5) & (!\system_core|clk_divider_500000|Add0~9\)) # (!\system_core|clk_divider_500000|s_divCounter\(5) & ((\system_core|clk_divider_500000|Add0~9\) # (GND)))
-- \system_core|clk_divider_500000|Add0~11\ = CARRY((!\system_core|clk_divider_500000|Add0~9\) # (!\system_core|clk_divider_500000|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(5),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~9\,
	combout => \system_core|clk_divider_500000|Add0~10_combout\,
	cout => \system_core|clk_divider_500000|Add0~11\);

-- Location: LCCOMB_X114_Y40_N6
\system_core|clk_divider_500000|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Equal0~6_combout\ = (\system_core|clk_divider_500000|s_divCounter\(3) & (\system_core|clk_divider_500000|s_divCounter\(1) & (\system_core|clk_divider_500000|s_divCounter\(2) & 
-- !\system_core|clk_divider_500000|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(3),
	datab => \system_core|clk_divider_500000|s_divCounter\(1),
	datac => \system_core|clk_divider_500000|s_divCounter\(2),
	datad => \system_core|clk_divider_500000|s_divCounter\(5),
	combout => \system_core|clk_divider_500000|Equal0~6_combout\);

-- Location: LCCOMB_X113_Y40_N16
\system_core|clk_divider_500000|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~14_combout\ = (\system_core|clk_divider_500000|s_divCounter\(7) & (!\system_core|clk_divider_500000|Add0~13\)) # (!\system_core|clk_divider_500000|s_divCounter\(7) & ((\system_core|clk_divider_500000|Add0~13\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~15\ = CARRY((!\system_core|clk_divider_500000|Add0~13\) # (!\system_core|clk_divider_500000|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(7),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~13\,
	combout => \system_core|clk_divider_500000|Add0~14_combout\,
	cout => \system_core|clk_divider_500000|Add0~15\);

-- Location: LCCOMB_X113_Y40_N18
\system_core|clk_divider_500000|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~16_combout\ = (\system_core|clk_divider_500000|s_divCounter\(8) & (\system_core|clk_divider_500000|Add0~15\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(8) & (!\system_core|clk_divider_500000|Add0~15\ & 
-- VCC))
-- \system_core|clk_divider_500000|Add0~17\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(8) & !\system_core|clk_divider_500000|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(8),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~15\,
	combout => \system_core|clk_divider_500000|Add0~16_combout\,
	cout => \system_core|clk_divider_500000|Add0~17\);

-- Location: LCCOMB_X113_Y40_N0
\system_core|clk_divider_500000|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|s_divCounter~6_combout\ = (\system_core|clk_divider_500000|Add0~16_combout\ & !\system_core|clk_divider_500000|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|Add0~16_combout\,
	datad => \system_core|clk_divider_500000|Equal0~10_combout\,
	combout => \system_core|clk_divider_500000|s_divCounter~6_combout\);

-- Location: FF_X113_Y40_N1
\system_core|clk_divider_500000|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(8));

-- Location: LCCOMB_X113_Y40_N20
\system_core|clk_divider_500000|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~18_combout\ = (\system_core|clk_divider_500000|s_divCounter\(9) & (!\system_core|clk_divider_500000|Add0~17\)) # (!\system_core|clk_divider_500000|s_divCounter\(9) & ((\system_core|clk_divider_500000|Add0~17\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~19\ = CARRY((!\system_core|clk_divider_500000|Add0~17\) # (!\system_core|clk_divider_500000|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(9),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~17\,
	combout => \system_core|clk_divider_500000|Add0~18_combout\,
	cout => \system_core|clk_divider_500000|Add0~19\);

-- Location: FF_X113_Y40_N21
\system_core|clk_divider_500000|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(9));

-- Location: LCCOMB_X113_Y40_N22
\system_core|clk_divider_500000|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~20_combout\ = (\system_core|clk_divider_500000|s_divCounter\(10) & (\system_core|clk_divider_500000|Add0~19\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(10) & (!\system_core|clk_divider_500000|Add0~19\ 
-- & VCC))
-- \system_core|clk_divider_500000|Add0~21\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(10) & !\system_core|clk_divider_500000|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(10),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~19\,
	combout => \system_core|clk_divider_500000|Add0~20_combout\,
	cout => \system_core|clk_divider_500000|Add0~21\);

-- Location: FF_X113_Y40_N23
\system_core|clk_divider_500000|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(10));

-- Location: LCCOMB_X113_Y40_N24
\system_core|clk_divider_500000|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~22_combout\ = (\system_core|clk_divider_500000|s_divCounter\(11) & (!\system_core|clk_divider_500000|Add0~21\)) # (!\system_core|clk_divider_500000|s_divCounter\(11) & ((\system_core|clk_divider_500000|Add0~21\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~23\ = CARRY((!\system_core|clk_divider_500000|Add0~21\) # (!\system_core|clk_divider_500000|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(11),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~21\,
	combout => \system_core|clk_divider_500000|Add0~22_combout\,
	cout => \system_core|clk_divider_500000|Add0~23\);

-- Location: FF_X113_Y40_N25
\system_core|clk_divider_500000|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(11));

-- Location: LCCOMB_X114_Y40_N20
\system_core|clk_divider_500000|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Equal0~5_combout\ = (!\system_core|clk_divider_500000|s_divCounter\(6) & (!\system_core|clk_divider_500000|s_divCounter\(11) & (!\system_core|clk_divider_500000|s_divCounter\(9) & 
-- !\system_core|clk_divider_500000|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(6),
	datab => \system_core|clk_divider_500000|s_divCounter\(11),
	datac => \system_core|clk_divider_500000|s_divCounter\(9),
	datad => \system_core|clk_divider_500000|s_divCounter\(10),
	combout => \system_core|clk_divider_500000|Equal0~5_combout\);

-- Location: LCCOMB_X113_Y40_N26
\system_core|clk_divider_500000|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~24_combout\ = (\system_core|clk_divider_500000|s_divCounter\(12) & (\system_core|clk_divider_500000|Add0~23\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(12) & (!\system_core|clk_divider_500000|Add0~23\ 
-- & VCC))
-- \system_core|clk_divider_500000|Add0~25\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(12) & !\system_core|clk_divider_500000|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(12),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~23\,
	combout => \system_core|clk_divider_500000|Add0~24_combout\,
	cout => \system_core|clk_divider_500000|Add0~25\);

-- Location: FF_X113_Y40_N27
\system_core|clk_divider_500000|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(12));

-- Location: LCCOMB_X113_Y40_N28
\system_core|clk_divider_500000|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~26_combout\ = (\system_core|clk_divider_500000|s_divCounter\(13) & (!\system_core|clk_divider_500000|Add0~25\)) # (!\system_core|clk_divider_500000|s_divCounter\(13) & ((\system_core|clk_divider_500000|Add0~25\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~27\ = CARRY((!\system_core|clk_divider_500000|Add0~25\) # (!\system_core|clk_divider_500000|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(13),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~25\,
	combout => \system_core|clk_divider_500000|Add0~26_combout\,
	cout => \system_core|clk_divider_500000|Add0~27\);

-- Location: LCCOMB_X114_Y40_N4
\system_core|clk_divider_500000|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|s_divCounter~5_combout\ = (!\system_core|clk_divider_500000|Equal0~10_combout\ & \system_core|clk_divider_500000|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|clk_divider_500000|Equal0~10_combout\,
	datad => \system_core|clk_divider_500000|Add0~26_combout\,
	combout => \system_core|clk_divider_500000|s_divCounter~5_combout\);

-- Location: FF_X114_Y40_N5
\system_core|clk_divider_500000|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(13));

-- Location: LCCOMB_X113_Y40_N30
\system_core|clk_divider_500000|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~28_combout\ = (\system_core|clk_divider_500000|s_divCounter\(14) & (\system_core|clk_divider_500000|Add0~27\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(14) & (!\system_core|clk_divider_500000|Add0~27\ 
-- & VCC))
-- \system_core|clk_divider_500000|Add0~29\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(14) & !\system_core|clk_divider_500000|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(14),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~27\,
	combout => \system_core|clk_divider_500000|Add0~28_combout\,
	cout => \system_core|clk_divider_500000|Add0~29\);

-- Location: FF_X113_Y40_N31
\system_core|clk_divider_500000|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(14));

-- Location: LCCOMB_X113_Y39_N0
\system_core|clk_divider_500000|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~30_combout\ = (\system_core|clk_divider_500000|s_divCounter\(15) & (!\system_core|clk_divider_500000|Add0~29\)) # (!\system_core|clk_divider_500000|s_divCounter\(15) & ((\system_core|clk_divider_500000|Add0~29\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~31\ = CARRY((!\system_core|clk_divider_500000|Add0~29\) # (!\system_core|clk_divider_500000|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(15),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~29\,
	combout => \system_core|clk_divider_500000|Add0~30_combout\,
	cout => \system_core|clk_divider_500000|Add0~31\);

-- Location: LCCOMB_X114_Y39_N16
\system_core|clk_divider_500000|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|s_divCounter~2_combout\ = (\system_core|clk_divider_500000|Add0~30_combout\ & !\system_core|clk_divider_500000|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|clk_divider_500000|Add0~30_combout\,
	datad => \system_core|clk_divider_500000|Equal0~10_combout\,
	combout => \system_core|clk_divider_500000|s_divCounter~2_combout\);

-- Location: FF_X114_Y39_N17
\system_core|clk_divider_500000|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(15));

-- Location: LCCOMB_X113_Y39_N2
\system_core|clk_divider_500000|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~32_combout\ = (\system_core|clk_divider_500000|s_divCounter\(16) & (\system_core|clk_divider_500000|Add0~31\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(16) & (!\system_core|clk_divider_500000|Add0~31\ 
-- & VCC))
-- \system_core|clk_divider_500000|Add0~33\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(16) & !\system_core|clk_divider_500000|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(16),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~31\,
	combout => \system_core|clk_divider_500000|Add0~32_combout\,
	cout => \system_core|clk_divider_500000|Add0~33\);

-- Location: LCCOMB_X114_Y40_N30
\system_core|clk_divider_500000|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|s_divCounter~1_combout\ = (!\system_core|clk_divider_500000|Equal0~10_combout\ & \system_core|clk_divider_500000|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|clk_divider_500000|Equal0~10_combout\,
	datad => \system_core|clk_divider_500000|Add0~32_combout\,
	combout => \system_core|clk_divider_500000|s_divCounter~1_combout\);

-- Location: FF_X114_Y40_N31
\system_core|clk_divider_500000|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(16));

-- Location: LCCOMB_X113_Y39_N4
\system_core|clk_divider_500000|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~34_combout\ = (\system_core|clk_divider_500000|s_divCounter\(17) & (!\system_core|clk_divider_500000|Add0~33\)) # (!\system_core|clk_divider_500000|s_divCounter\(17) & ((\system_core|clk_divider_500000|Add0~33\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~35\ = CARRY((!\system_core|clk_divider_500000|Add0~33\) # (!\system_core|clk_divider_500000|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(17),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~33\,
	combout => \system_core|clk_divider_500000|Add0~34_combout\,
	cout => \system_core|clk_divider_500000|Add0~35\);

-- Location: LCCOMB_X114_Y39_N30
\system_core|clk_divider_500000|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|s_divCounter~0_combout\ = (\system_core|clk_divider_500000|Add0~34_combout\ & !\system_core|clk_divider_500000|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|clk_divider_500000|Add0~34_combout\,
	datad => \system_core|clk_divider_500000|Equal0~10_combout\,
	combout => \system_core|clk_divider_500000|s_divCounter~0_combout\);

-- Location: FF_X114_Y39_N31
\system_core|clk_divider_500000|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(17));

-- Location: LCCOMB_X113_Y39_N6
\system_core|clk_divider_500000|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~36_combout\ = (\system_core|clk_divider_500000|s_divCounter\(18) & (\system_core|clk_divider_500000|Add0~35\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(18) & (!\system_core|clk_divider_500000|Add0~35\ 
-- & VCC))
-- \system_core|clk_divider_500000|Add0~37\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(18) & !\system_core|clk_divider_500000|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(18),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~35\,
	combout => \system_core|clk_divider_500000|Add0~36_combout\,
	cout => \system_core|clk_divider_500000|Add0~37\);

-- Location: LCCOMB_X114_Y40_N28
\system_core|clk_divider_500000|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|s_divCounter~4_combout\ = (!\system_core|clk_divider_500000|Equal0~10_combout\ & \system_core|clk_divider_500000|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|Equal0~10_combout\,
	datac => \system_core|clk_divider_500000|Add0~36_combout\,
	combout => \system_core|clk_divider_500000|s_divCounter~4_combout\);

-- Location: FF_X114_Y40_N29
\system_core|clk_divider_500000|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(18));

-- Location: LCCOMB_X114_Y40_N12
\system_core|clk_divider_500000|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Equal0~8_combout\ = (!\system_core|clk_divider_500000|s_divCounter\(12) & (\system_core|clk_divider_500000|s_divCounter\(18) & (\system_core|clk_divider_500000|s_divCounter\(13) & 
-- !\system_core|clk_divider_500000|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(12),
	datab => \system_core|clk_divider_500000|s_divCounter\(18),
	datac => \system_core|clk_divider_500000|s_divCounter\(13),
	datad => \system_core|clk_divider_500000|s_divCounter\(14),
	combout => \system_core|clk_divider_500000|Equal0~8_combout\);

-- Location: LCCOMB_X114_Y40_N14
\system_core|clk_divider_500000|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Equal0~9_combout\ = (!\system_core|clk_divider_500000|s_divCounter\(7) & (\system_core|clk_divider_500000|s_divCounter\(4) & (\system_core|clk_divider_500000|s_divCounter\(8) & 
-- \system_core|clk_divider_500000|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(7),
	datab => \system_core|clk_divider_500000|s_divCounter\(4),
	datac => \system_core|clk_divider_500000|s_divCounter\(8),
	datad => \system_core|clk_divider_500000|Equal0~8_combout\,
	combout => \system_core|clk_divider_500000|Equal0~9_combout\);

-- Location: LCCOMB_X113_Y39_N8
\system_core|clk_divider_500000|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~38_combout\ = (\system_core|clk_divider_500000|s_divCounter\(19) & (!\system_core|clk_divider_500000|Add0~37\)) # (!\system_core|clk_divider_500000|s_divCounter\(19) & ((\system_core|clk_divider_500000|Add0~37\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~39\ = CARRY((!\system_core|clk_divider_500000|Add0~37\) # (!\system_core|clk_divider_500000|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(19),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~37\,
	combout => \system_core|clk_divider_500000|Add0~38_combout\,
	cout => \system_core|clk_divider_500000|Add0~39\);

-- Location: FF_X113_Y39_N9
\system_core|clk_divider_500000|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(19));

-- Location: LCCOMB_X113_Y39_N10
\system_core|clk_divider_500000|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~40_combout\ = (\system_core|clk_divider_500000|s_divCounter\(20) & (\system_core|clk_divider_500000|Add0~39\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(20) & (!\system_core|clk_divider_500000|Add0~39\ 
-- & VCC))
-- \system_core|clk_divider_500000|Add0~41\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(20) & !\system_core|clk_divider_500000|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(20),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~39\,
	combout => \system_core|clk_divider_500000|Add0~40_combout\,
	cout => \system_core|clk_divider_500000|Add0~41\);

-- Location: FF_X113_Y39_N11
\system_core|clk_divider_500000|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(20));

-- Location: LCCOMB_X113_Y39_N12
\system_core|clk_divider_500000|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~42_combout\ = (\system_core|clk_divider_500000|s_divCounter\(21) & (!\system_core|clk_divider_500000|Add0~41\)) # (!\system_core|clk_divider_500000|s_divCounter\(21) & ((\system_core|clk_divider_500000|Add0~41\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~43\ = CARRY((!\system_core|clk_divider_500000|Add0~41\) # (!\system_core|clk_divider_500000|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(21),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~41\,
	combout => \system_core|clk_divider_500000|Add0~42_combout\,
	cout => \system_core|clk_divider_500000|Add0~43\);

-- Location: FF_X113_Y39_N13
\system_core|clk_divider_500000|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(21));

-- Location: LCCOMB_X113_Y39_N14
\system_core|clk_divider_500000|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~44_combout\ = (\system_core|clk_divider_500000|s_divCounter\(22) & (\system_core|clk_divider_500000|Add0~43\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(22) & (!\system_core|clk_divider_500000|Add0~43\ 
-- & VCC))
-- \system_core|clk_divider_500000|Add0~45\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(22) & !\system_core|clk_divider_500000|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(22),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~43\,
	combout => \system_core|clk_divider_500000|Add0~44_combout\,
	cout => \system_core|clk_divider_500000|Add0~45\);

-- Location: FF_X113_Y39_N15
\system_core|clk_divider_500000|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(22));

-- Location: LCCOMB_X113_Y39_N16
\system_core|clk_divider_500000|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~46_combout\ = (\system_core|clk_divider_500000|s_divCounter\(23) & (!\system_core|clk_divider_500000|Add0~45\)) # (!\system_core|clk_divider_500000|s_divCounter\(23) & ((\system_core|clk_divider_500000|Add0~45\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~47\ = CARRY((!\system_core|clk_divider_500000|Add0~45\) # (!\system_core|clk_divider_500000|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(23),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~45\,
	combout => \system_core|clk_divider_500000|Add0~46_combout\,
	cout => \system_core|clk_divider_500000|Add0~47\);

-- Location: FF_X113_Y39_N17
\system_core|clk_divider_500000|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(23));

-- Location: LCCOMB_X113_Y39_N18
\system_core|clk_divider_500000|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~48_combout\ = (\system_core|clk_divider_500000|s_divCounter\(24) & (\system_core|clk_divider_500000|Add0~47\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(24) & (!\system_core|clk_divider_500000|Add0~47\ 
-- & VCC))
-- \system_core|clk_divider_500000|Add0~49\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(24) & !\system_core|clk_divider_500000|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(24),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~47\,
	combout => \system_core|clk_divider_500000|Add0~48_combout\,
	cout => \system_core|clk_divider_500000|Add0~49\);

-- Location: FF_X113_Y39_N19
\system_core|clk_divider_500000|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(24));

-- Location: LCCOMB_X113_Y39_N20
\system_core|clk_divider_500000|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~50_combout\ = (\system_core|clk_divider_500000|s_divCounter\(25) & (!\system_core|clk_divider_500000|Add0~49\)) # (!\system_core|clk_divider_500000|s_divCounter\(25) & ((\system_core|clk_divider_500000|Add0~49\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~51\ = CARRY((!\system_core|clk_divider_500000|Add0~49\) # (!\system_core|clk_divider_500000|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(25),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~49\,
	combout => \system_core|clk_divider_500000|Add0~50_combout\,
	cout => \system_core|clk_divider_500000|Add0~51\);

-- Location: FF_X113_Y39_N21
\system_core|clk_divider_500000|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(25));

-- Location: LCCOMB_X113_Y39_N22
\system_core|clk_divider_500000|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~52_combout\ = (\system_core|clk_divider_500000|s_divCounter\(26) & (\system_core|clk_divider_500000|Add0~51\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(26) & (!\system_core|clk_divider_500000|Add0~51\ 
-- & VCC))
-- \system_core|clk_divider_500000|Add0~53\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(26) & !\system_core|clk_divider_500000|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(26),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~51\,
	combout => \system_core|clk_divider_500000|Add0~52_combout\,
	cout => \system_core|clk_divider_500000|Add0~53\);

-- Location: FF_X113_Y39_N23
\system_core|clk_divider_500000|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(26));

-- Location: LCCOMB_X113_Y39_N24
\system_core|clk_divider_500000|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~54_combout\ = (\system_core|clk_divider_500000|s_divCounter\(27) & (!\system_core|clk_divider_500000|Add0~53\)) # (!\system_core|clk_divider_500000|s_divCounter\(27) & ((\system_core|clk_divider_500000|Add0~53\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~55\ = CARRY((!\system_core|clk_divider_500000|Add0~53\) # (!\system_core|clk_divider_500000|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(27),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~53\,
	combout => \system_core|clk_divider_500000|Add0~54_combout\,
	cout => \system_core|clk_divider_500000|Add0~55\);

-- Location: FF_X113_Y39_N25
\system_core|clk_divider_500000|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(27));

-- Location: LCCOMB_X114_Y39_N26
\system_core|clk_divider_500000|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Equal0~1_combout\ = (!\system_core|clk_divider_500000|s_divCounter\(27) & (!\system_core|clk_divider_500000|s_divCounter\(24) & (!\system_core|clk_divider_500000|s_divCounter\(26) & 
-- !\system_core|clk_divider_500000|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(27),
	datab => \system_core|clk_divider_500000|s_divCounter\(24),
	datac => \system_core|clk_divider_500000|s_divCounter\(26),
	datad => \system_core|clk_divider_500000|s_divCounter\(25),
	combout => \system_core|clk_divider_500000|Equal0~1_combout\);

-- Location: LCCOMB_X114_Y39_N24
\system_core|clk_divider_500000|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Equal0~2_combout\ = (!\system_core|clk_divider_500000|s_divCounter\(22) & (!\system_core|clk_divider_500000|s_divCounter\(20) & (!\system_core|clk_divider_500000|s_divCounter\(23) & 
-- !\system_core|clk_divider_500000|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(22),
	datab => \system_core|clk_divider_500000|s_divCounter\(20),
	datac => \system_core|clk_divider_500000|s_divCounter\(23),
	datad => \system_core|clk_divider_500000|s_divCounter\(21),
	combout => \system_core|clk_divider_500000|Equal0~2_combout\);

-- Location: LCCOMB_X114_Y39_N22
\system_core|clk_divider_500000|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Equal0~3_combout\ = (\system_core|clk_divider_500000|s_divCounter\(17) & (\system_core|clk_divider_500000|s_divCounter\(15) & (\system_core|clk_divider_500000|s_divCounter\(16) & 
-- !\system_core|clk_divider_500000|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(17),
	datab => \system_core|clk_divider_500000|s_divCounter\(15),
	datac => \system_core|clk_divider_500000|s_divCounter\(16),
	datad => \system_core|clk_divider_500000|s_divCounter\(19),
	combout => \system_core|clk_divider_500000|Equal0~3_combout\);

-- Location: LCCOMB_X113_Y39_N26
\system_core|clk_divider_500000|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~56_combout\ = (\system_core|clk_divider_500000|s_divCounter\(28) & (\system_core|clk_divider_500000|Add0~55\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(28) & (!\system_core|clk_divider_500000|Add0~55\ 
-- & VCC))
-- \system_core|clk_divider_500000|Add0~57\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(28) & !\system_core|clk_divider_500000|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(28),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~55\,
	combout => \system_core|clk_divider_500000|Add0~56_combout\,
	cout => \system_core|clk_divider_500000|Add0~57\);

-- Location: FF_X113_Y39_N27
\system_core|clk_divider_500000|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(28));

-- Location: LCCOMB_X113_Y39_N28
\system_core|clk_divider_500000|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~58_combout\ = (\system_core|clk_divider_500000|s_divCounter\(29) & (!\system_core|clk_divider_500000|Add0~57\)) # (!\system_core|clk_divider_500000|s_divCounter\(29) & ((\system_core|clk_divider_500000|Add0~57\) # 
-- (GND)))
-- \system_core|clk_divider_500000|Add0~59\ = CARRY((!\system_core|clk_divider_500000|Add0~57\) # (!\system_core|clk_divider_500000|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(29),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~57\,
	combout => \system_core|clk_divider_500000|Add0~58_combout\,
	cout => \system_core|clk_divider_500000|Add0~59\);

-- Location: FF_X113_Y39_N29
\system_core|clk_divider_500000|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(29));

-- Location: LCCOMB_X113_Y39_N30
\system_core|clk_divider_500000|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~60_combout\ = \system_core|clk_divider_500000|s_divCounter\(30) $ (!\system_core|clk_divider_500000|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(30),
	cin => \system_core|clk_divider_500000|Add0~59\,
	combout => \system_core|clk_divider_500000|Add0~60_combout\);

-- Location: FF_X113_Y39_N31
\system_core|clk_divider_500000|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(30));

-- Location: LCCOMB_X114_Y39_N28
\system_core|clk_divider_500000|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Equal0~0_combout\ = (!\system_core|clk_divider_500000|s_divCounter\(28) & (!\system_core|clk_divider_500000|s_divCounter\(29) & (\system_core|clk_divider_500000|s_divCounter\(0) & 
-- !\system_core|clk_divider_500000|s_divCounter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(28),
	datab => \system_core|clk_divider_500000|s_divCounter\(29),
	datac => \system_core|clk_divider_500000|s_divCounter\(0),
	datad => \system_core|clk_divider_500000|s_divCounter\(30),
	combout => \system_core|clk_divider_500000|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y39_N0
\system_core|clk_divider_500000|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Equal0~4_combout\ = (\system_core|clk_divider_500000|Equal0~1_combout\ & (\system_core|clk_divider_500000|Equal0~2_combout\ & (\system_core|clk_divider_500000|Equal0~3_combout\ & 
-- \system_core|clk_divider_500000|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|Equal0~1_combout\,
	datab => \system_core|clk_divider_500000|Equal0~2_combout\,
	datac => \system_core|clk_divider_500000|Equal0~3_combout\,
	datad => \system_core|clk_divider_500000|Equal0~0_combout\,
	combout => \system_core|clk_divider_500000|Equal0~4_combout\);

-- Location: LCCOMB_X114_Y40_N26
\system_core|clk_divider_500000|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Equal0~10_combout\ = (\system_core|clk_divider_500000|Equal0~6_combout\ & (\system_core|clk_divider_500000|Equal0~5_combout\ & (\system_core|clk_divider_500000|Equal0~9_combout\ & 
-- \system_core|clk_divider_500000|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|Equal0~6_combout\,
	datab => \system_core|clk_divider_500000|Equal0~5_combout\,
	datac => \system_core|clk_divider_500000|Equal0~9_combout\,
	datad => \system_core|clk_divider_500000|Equal0~4_combout\,
	combout => \system_core|clk_divider_500000|Equal0~10_combout\);

-- Location: LCCOMB_X114_Y40_N2
\system_core|clk_divider_500000|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|s_divCounter~3_combout\ = (\system_core|clk_divider_500000|Add0~10_combout\ & !\system_core|clk_divider_500000|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|Add0~10_combout\,
	datac => \system_core|clk_divider_500000|Equal0~10_combout\,
	combout => \system_core|clk_divider_500000|s_divCounter~3_combout\);

-- Location: FF_X114_Y40_N3
\system_core|clk_divider_500000|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(5));

-- Location: LCCOMB_X113_Y40_N14
\system_core|clk_divider_500000|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Add0~12_combout\ = (\system_core|clk_divider_500000|s_divCounter\(6) & (\system_core|clk_divider_500000|Add0~11\ $ (GND))) # (!\system_core|clk_divider_500000|s_divCounter\(6) & (!\system_core|clk_divider_500000|Add0~11\ & 
-- VCC))
-- \system_core|clk_divider_500000|Add0~13\ = CARRY((\system_core|clk_divider_500000|s_divCounter\(6) & !\system_core|clk_divider_500000|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|clk_divider_500000|s_divCounter\(6),
	datad => VCC,
	cin => \system_core|clk_divider_500000|Add0~11\,
	combout => \system_core|clk_divider_500000|Add0~12_combout\,
	cout => \system_core|clk_divider_500000|Add0~13\);

-- Location: FF_X113_Y40_N15
\system_core|clk_divider_500000|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(6));

-- Location: FF_X113_Y40_N17
\system_core|clk_divider_500000|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|s_divCounter\(7));

-- Location: LCCOMB_X114_Y40_N18
\system_core|clk_divider_500000|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|clkOut~0_combout\ = (\system_core|clk_divider_500000|s_divCounter\(12) & (!\system_core|clk_divider_500000|s_divCounter\(18) & (!\system_core|clk_divider_500000|s_divCounter\(13) & 
-- \system_core|clk_divider_500000|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(12),
	datab => \system_core|clk_divider_500000|s_divCounter\(18),
	datac => \system_core|clk_divider_500000|s_divCounter\(13),
	datad => \system_core|clk_divider_500000|s_divCounter\(14),
	combout => \system_core|clk_divider_500000|clkOut~0_combout\);

-- Location: LCCOMB_X114_Y40_N22
\system_core|clk_divider_500000|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|clkOut~1_combout\ = (\system_core|clk_divider_500000|s_divCounter\(7) & (!\system_core|clk_divider_500000|s_divCounter\(4) & (!\system_core|clk_divider_500000|s_divCounter\(8) & 
-- \system_core|clk_divider_500000|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|s_divCounter\(7),
	datab => \system_core|clk_divider_500000|s_divCounter\(4),
	datac => \system_core|clk_divider_500000|s_divCounter\(8),
	datad => \system_core|clk_divider_500000|clkOut~0_combout\,
	combout => \system_core|clk_divider_500000|clkOut~1_combout\);

-- Location: LCCOMB_X114_Y40_N16
\system_core|clk_divider_500000|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|Equal0~7_combout\ = (\system_core|clk_divider_500000|Equal0~6_combout\ & (\system_core|clk_divider_500000|Equal0~5_combout\ & \system_core|clk_divider_500000|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|Equal0~6_combout\,
	datab => \system_core|clk_divider_500000|Equal0~5_combout\,
	datad => \system_core|clk_divider_500000|Equal0~4_combout\,
	combout => \system_core|clk_divider_500000|Equal0~7_combout\);

-- Location: LCCOMB_X114_Y40_N10
\system_core|clk_divider_500000|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|clkOut~2_combout\ = (!\system_core|clk_divider_500000|Equal0~10_combout\ & ((\system_core|clk_divider_500000|clkOut~q\) # ((\system_core|clk_divider_500000|clkOut~1_combout\ & 
-- \system_core|clk_divider_500000|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|clkOut~1_combout\,
	datab => \system_core|clk_divider_500000|clkOut~q\,
	datac => \system_core|clk_divider_500000|Equal0~10_combout\,
	datad => \system_core|clk_divider_500000|Equal0~7_combout\,
	combout => \system_core|clk_divider_500000|clkOut~2_combout\);

-- Location: LCCOMB_X114_Y40_N24
\system_core|clk_divider_500000|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|clk_divider_500000|clkOut~feeder_combout\ = \system_core|clk_divider_500000|clkOut~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|clk_divider_500000|clkOut~2_combout\,
	combout => \system_core|clk_divider_500000|clkOut~feeder_combout\);

-- Location: FF_X114_Y40_N25
\system_core|clk_divider_500000|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|clk_divider_500000|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|clk_divider_500000|clkOut~q\);

-- Location: CLKCTRL_G8
\system_core|clk_divider_500000|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \system_core|clk_divider_500000|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\);

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

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X102_Y24_N14
\system_core|statop_debounce|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_dirtyIn~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \system_core|statop_debounce|s_dirtyIn~feeder_combout\);

-- Location: FF_X102_Y24_N15
\system_core|statop_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_dirtyIn~q\);

-- Location: LCCOMB_X103_Y24_N16
\system_core|statop_debounce|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \system_core|statop_debounce|s_pulsedOut~feeder_combout\);

-- Location: LCCOMB_X102_Y26_N2
\system_core|statop_debounce|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[0]~31_combout\ = \system_core|statop_debounce|s_debounceCnt\(0) $ (VCC)
-- \system_core|statop_debounce|s_debounceCnt[0]~32\ = CARRY(\system_core|statop_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \system_core|statop_debounce|s_debounceCnt[0]~31_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[0]~32\);

-- Location: LCCOMB_X91_Y26_N4
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X102_Y26_N3
\system_core|statop_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X102_Y26_N4
\system_core|statop_debounce|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[1]~33_combout\ = (\system_core|statop_debounce|s_debounceCnt\(1) & (\system_core|statop_debounce|s_debounceCnt[0]~32\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(1) & 
-- (!\system_core|statop_debounce|s_debounceCnt[0]~32\))
-- \system_core|statop_debounce|s_debounceCnt[1]~34\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(1) & !\system_core|statop_debounce|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[0]~32\,
	combout => \system_core|statop_debounce|s_debounceCnt[1]~33_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[1]~34\);

-- Location: FF_X102_Y26_N5
\system_core|statop_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X102_Y26_N6
\system_core|statop_debounce|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[2]~35_combout\ = (\system_core|statop_debounce|s_debounceCnt\(2) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[1]~34\))) # (!\system_core|statop_debounce|s_debounceCnt\(2) & 
-- (\system_core|statop_debounce|s_debounceCnt[1]~34\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[2]~36\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(2)) # (!\system_core|statop_debounce|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[1]~34\,
	combout => \system_core|statop_debounce|s_debounceCnt[2]~35_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[2]~36\);

-- Location: FF_X102_Y26_N7
\system_core|statop_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X102_Y26_N8
\system_core|statop_debounce|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[3]~37_combout\ = (\system_core|statop_debounce|s_debounceCnt\(3) & (\system_core|statop_debounce|s_debounceCnt[2]~36\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(3) & 
-- (!\system_core|statop_debounce|s_debounceCnt[2]~36\))
-- \system_core|statop_debounce|s_debounceCnt[3]~38\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(3) & !\system_core|statop_debounce|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[2]~36\,
	combout => \system_core|statop_debounce|s_debounceCnt[3]~37_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[3]~38\);

-- Location: FF_X102_Y26_N9
\system_core|statop_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X102_Y26_N10
\system_core|statop_debounce|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[4]~39_combout\ = (\system_core|statop_debounce|s_debounceCnt\(4) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[3]~38\))) # (!\system_core|statop_debounce|s_debounceCnt\(4) & 
-- (\system_core|statop_debounce|s_debounceCnt[3]~38\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[4]~40\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(4)) # (!\system_core|statop_debounce|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[3]~38\,
	combout => \system_core|statop_debounce|s_debounceCnt[4]~39_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[4]~40\);

-- Location: FF_X102_Y26_N11
\system_core|statop_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X102_Y26_N12
\system_core|statop_debounce|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[5]~41_combout\ = (\system_core|statop_debounce|s_debounceCnt\(5) & (\system_core|statop_debounce|s_debounceCnt[4]~40\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(5) & 
-- (!\system_core|statop_debounce|s_debounceCnt[4]~40\))
-- \system_core|statop_debounce|s_debounceCnt[5]~42\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(5) & !\system_core|statop_debounce|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[4]~40\,
	combout => \system_core|statop_debounce|s_debounceCnt[5]~41_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[5]~42\);

-- Location: FF_X102_Y26_N13
\system_core|statop_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X102_Y26_N14
\system_core|statop_debounce|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[6]~43_combout\ = (\system_core|statop_debounce|s_debounceCnt\(6) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[5]~42\))) # (!\system_core|statop_debounce|s_debounceCnt\(6) & 
-- (\system_core|statop_debounce|s_debounceCnt[5]~42\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[6]~44\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(6)) # (!\system_core|statop_debounce|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[5]~42\,
	combout => \system_core|statop_debounce|s_debounceCnt[6]~43_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[6]~44\);

-- Location: FF_X102_Y26_N15
\system_core|statop_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[6]~43_combout\,
	asdata => \system_core|statop_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X102_Y26_N16
\system_core|statop_debounce|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[7]~45_combout\ = (\system_core|statop_debounce|s_debounceCnt\(7) & (\system_core|statop_debounce|s_debounceCnt[6]~44\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(7) & 
-- (!\system_core|statop_debounce|s_debounceCnt[6]~44\))
-- \system_core|statop_debounce|s_debounceCnt[7]~46\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(7) & !\system_core|statop_debounce|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[6]~44\,
	combout => \system_core|statop_debounce|s_debounceCnt[7]~45_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[7]~46\);

-- Location: FF_X102_Y26_N17
\system_core|statop_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[7]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X102_Y26_N18
\system_core|statop_debounce|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[8]~47_combout\ = (\system_core|statop_debounce|s_debounceCnt\(8) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[7]~46\))) # (!\system_core|statop_debounce|s_debounceCnt\(8) & 
-- (\system_core|statop_debounce|s_debounceCnt[7]~46\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[8]~48\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(8)) # (!\system_core|statop_debounce|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[7]~46\,
	combout => \system_core|statop_debounce|s_debounceCnt[8]~47_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[8]~48\);

-- Location: FF_X102_Y26_N19
\system_core|statop_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[8]~47_combout\,
	asdata => \system_core|statop_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X102_Y26_N20
\system_core|statop_debounce|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[9]~49_combout\ = (\system_core|statop_debounce|s_debounceCnt\(9) & (\system_core|statop_debounce|s_debounceCnt[8]~48\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(9) & 
-- (!\system_core|statop_debounce|s_debounceCnt[8]~48\))
-- \system_core|statop_debounce|s_debounceCnt[9]~50\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(9) & !\system_core|statop_debounce|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[8]~48\,
	combout => \system_core|statop_debounce|s_debounceCnt[9]~49_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[9]~50\);

-- Location: FF_X102_Y26_N21
\system_core|statop_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[9]~49_combout\,
	asdata => \system_core|statop_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X102_Y26_N22
\system_core|statop_debounce|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[10]~51_combout\ = (\system_core|statop_debounce|s_debounceCnt\(10) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[9]~50\))) # (!\system_core|statop_debounce|s_debounceCnt\(10) & 
-- (\system_core|statop_debounce|s_debounceCnt[9]~50\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[10]~52\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(10)) # (!\system_core|statop_debounce|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[9]~50\,
	combout => \system_core|statop_debounce|s_debounceCnt[10]~51_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[10]~52\);

-- Location: FF_X102_Y26_N23
\system_core|statop_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X102_Y26_N24
\system_core|statop_debounce|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[11]~53_combout\ = (\system_core|statop_debounce|s_debounceCnt\(11) & (\system_core|statop_debounce|s_debounceCnt[10]~52\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(11) & 
-- (!\system_core|statop_debounce|s_debounceCnt[10]~52\))
-- \system_core|statop_debounce|s_debounceCnt[11]~54\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(11) & !\system_core|statop_debounce|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[10]~52\,
	combout => \system_core|statop_debounce|s_debounceCnt[11]~53_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[11]~54\);

-- Location: FF_X102_Y26_N25
\system_core|statop_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[11]~53_combout\,
	asdata => \system_core|statop_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X102_Y26_N26
\system_core|statop_debounce|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[12]~55_combout\ = (\system_core|statop_debounce|s_debounceCnt\(12) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[11]~54\))) # (!\system_core|statop_debounce|s_debounceCnt\(12) & 
-- (\system_core|statop_debounce|s_debounceCnt[11]~54\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[12]~56\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(12)) # (!\system_core|statop_debounce|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[11]~54\,
	combout => \system_core|statop_debounce|s_debounceCnt[12]~55_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[12]~56\);

-- Location: FF_X102_Y26_N27
\system_core|statop_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X102_Y26_N28
\system_core|statop_debounce|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[13]~57_combout\ = (\system_core|statop_debounce|s_debounceCnt\(13) & (\system_core|statop_debounce|s_debounceCnt[12]~56\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(13) & 
-- (!\system_core|statop_debounce|s_debounceCnt[12]~56\))
-- \system_core|statop_debounce|s_debounceCnt[13]~58\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(13) & !\system_core|statop_debounce|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[12]~56\,
	combout => \system_core|statop_debounce|s_debounceCnt[13]~57_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[13]~58\);

-- Location: FF_X102_Y26_N29
\system_core|statop_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[13]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X102_Y26_N30
\system_core|statop_debounce|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[14]~59_combout\ = (\system_core|statop_debounce|s_debounceCnt\(14) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[13]~58\))) # (!\system_core|statop_debounce|s_debounceCnt\(14) & 
-- (\system_core|statop_debounce|s_debounceCnt[13]~58\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[14]~60\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(14)) # (!\system_core|statop_debounce|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[13]~58\,
	combout => \system_core|statop_debounce|s_debounceCnt[14]~59_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[14]~60\);

-- Location: FF_X102_Y26_N31
\system_core|statop_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[14]~59_combout\,
	asdata => \system_core|statop_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X102_Y25_N0
\system_core|statop_debounce|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[15]~61_combout\ = (\system_core|statop_debounce|s_debounceCnt\(15) & (\system_core|statop_debounce|s_debounceCnt[14]~60\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(15) & 
-- (!\system_core|statop_debounce|s_debounceCnt[14]~60\))
-- \system_core|statop_debounce|s_debounceCnt[15]~62\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(15) & !\system_core|statop_debounce|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[14]~60\,
	combout => \system_core|statop_debounce|s_debounceCnt[15]~61_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[15]~62\);

-- Location: LCCOMB_X103_Y26_N20
\system_core|statop_debounce|s_debounceCnt[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[15]~feeder_combout\ = \system_core|statop_debounce|s_debounceCnt[15]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt[15]~61_combout\,
	combout => \system_core|statop_debounce|s_debounceCnt[15]~feeder_combout\);

-- Location: FF_X103_Y26_N21
\system_core|statop_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[15]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X102_Y25_N2
\system_core|statop_debounce|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[16]~63_combout\ = (\system_core|statop_debounce|s_debounceCnt\(16) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[15]~62\))) # (!\system_core|statop_debounce|s_debounceCnt\(16) & 
-- (\system_core|statop_debounce|s_debounceCnt[15]~62\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[16]~64\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(16)) # (!\system_core|statop_debounce|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[15]~62\,
	combout => \system_core|statop_debounce|s_debounceCnt[16]~63_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[16]~64\);

-- Location: FF_X102_Y25_N3
\system_core|statop_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X102_Y25_N4
\system_core|statop_debounce|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[17]~65_combout\ = (\system_core|statop_debounce|s_debounceCnt\(17) & (\system_core|statop_debounce|s_debounceCnt[16]~64\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(17) & 
-- (!\system_core|statop_debounce|s_debounceCnt[16]~64\))
-- \system_core|statop_debounce|s_debounceCnt[17]~66\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(17) & !\system_core|statop_debounce|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[16]~64\,
	combout => \system_core|statop_debounce|s_debounceCnt[17]~65_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[17]~66\);

-- Location: FF_X102_Y25_N5
\system_core|statop_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X102_Y25_N6
\system_core|statop_debounce|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[18]~67_combout\ = (\system_core|statop_debounce|s_debounceCnt\(18) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[17]~66\))) # (!\system_core|statop_debounce|s_debounceCnt\(18) & 
-- (\system_core|statop_debounce|s_debounceCnt[17]~66\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[18]~68\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(18)) # (!\system_core|statop_debounce|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[17]~66\,
	combout => \system_core|statop_debounce|s_debounceCnt[18]~67_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[18]~68\);

-- Location: FF_X102_Y25_N7
\system_core|statop_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[18]~67_combout\,
	asdata => \system_core|statop_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X102_Y25_N8
\system_core|statop_debounce|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[19]~69_combout\ = (\system_core|statop_debounce|s_debounceCnt\(19) & (\system_core|statop_debounce|s_debounceCnt[18]~68\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(19) & 
-- (!\system_core|statop_debounce|s_debounceCnt[18]~68\))
-- \system_core|statop_debounce|s_debounceCnt[19]~70\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(19) & !\system_core|statop_debounce|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[18]~68\,
	combout => \system_core|statop_debounce|s_debounceCnt[19]~69_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[19]~70\);

-- Location: FF_X102_Y25_N9
\system_core|statop_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[19]~69_combout\,
	asdata => \system_core|statop_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X103_Y26_N22
\system_core|statop_debounce|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|Equal0~5_combout\ = (!\system_core|statop_debounce|s_debounceCnt\(18) & (!\system_core|statop_debounce|s_debounceCnt\(19) & (!\system_core|statop_debounce|s_debounceCnt\(17) & 
-- !\system_core|statop_debounce|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(18),
	datab => \system_core|statop_debounce|s_debounceCnt\(19),
	datac => \system_core|statop_debounce|s_debounceCnt\(17),
	datad => \system_core|statop_debounce|s_debounceCnt\(16),
	combout => \system_core|statop_debounce|Equal0~5_combout\);

-- Location: LCCOMB_X102_Y25_N10
\system_core|statop_debounce|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[20]~71_combout\ = (\system_core|statop_debounce|s_debounceCnt\(20) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[19]~70\))) # (!\system_core|statop_debounce|s_debounceCnt\(20) & 
-- (\system_core|statop_debounce|s_debounceCnt[19]~70\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[20]~72\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(20)) # (!\system_core|statop_debounce|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[19]~70\,
	combout => \system_core|statop_debounce|s_debounceCnt[20]~71_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[20]~72\);

-- Location: FF_X102_Y25_N11
\system_core|statop_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X102_Y25_N12
\system_core|statop_debounce|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[21]~73_combout\ = (\system_core|statop_debounce|s_debounceCnt\(21) & (\system_core|statop_debounce|s_debounceCnt[20]~72\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(21) & 
-- (!\system_core|statop_debounce|s_debounceCnt[20]~72\))
-- \system_core|statop_debounce|s_debounceCnt[21]~74\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(21) & !\system_core|statop_debounce|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[20]~72\,
	combout => \system_core|statop_debounce|s_debounceCnt[21]~73_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[21]~74\);

-- Location: FF_X102_Y25_N13
\system_core|statop_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[21]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X102_Y25_N14
\system_core|statop_debounce|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[22]~75_combout\ = (\system_core|statop_debounce|s_debounceCnt\(22) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[21]~74\))) # (!\system_core|statop_debounce|s_debounceCnt\(22) & 
-- (\system_core|statop_debounce|s_debounceCnt[21]~74\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[22]~76\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(22)) # (!\system_core|statop_debounce|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(22),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[21]~74\,
	combout => \system_core|statop_debounce|s_debounceCnt[22]~75_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[22]~76\);

-- Location: FF_X102_Y25_N15
\system_core|statop_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[22]~75_combout\,
	asdata => \system_core|statop_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X102_Y25_N16
\system_core|statop_debounce|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[23]~77_combout\ = (\system_core|statop_debounce|s_debounceCnt\(23) & (\system_core|statop_debounce|s_debounceCnt[22]~76\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(23) & 
-- (!\system_core|statop_debounce|s_debounceCnt[22]~76\))
-- \system_core|statop_debounce|s_debounceCnt[23]~78\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(23) & !\system_core|statop_debounce|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(23),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[22]~76\,
	combout => \system_core|statop_debounce|s_debounceCnt[23]~77_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[23]~78\);

-- Location: FF_X102_Y25_N17
\system_core|statop_debounce|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[23]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(23));

-- Location: LCCOMB_X103_Y26_N28
\system_core|statop_debounce|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|Equal0~6_combout\ = (!\system_core|statop_debounce|s_debounceCnt\(22) & (!\system_core|statop_debounce|s_debounceCnt\(20) & (!\system_core|statop_debounce|s_debounceCnt\(23) & 
-- !\system_core|statop_debounce|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(22),
	datab => \system_core|statop_debounce|s_debounceCnt\(20),
	datac => \system_core|statop_debounce|s_debounceCnt\(23),
	datad => \system_core|statop_debounce|s_debounceCnt\(21),
	combout => \system_core|statop_debounce|Equal0~6_combout\);

-- Location: LCCOMB_X103_Y26_N26
\system_core|statop_debounce|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|Equal0~0_combout\ = (!\system_core|statop_debounce|s_debounceCnt\(3) & (!\system_core|statop_debounce|s_debounceCnt\(1) & (!\system_core|statop_debounce|s_debounceCnt\(2) & !\system_core|statop_debounce|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(3),
	datab => \system_core|statop_debounce|s_debounceCnt\(1),
	datac => \system_core|statop_debounce|s_debounceCnt\(2),
	datad => \system_core|statop_debounce|s_debounceCnt\(0),
	combout => \system_core|statop_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X103_Y26_N24
\system_core|statop_debounce|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|Equal0~1_combout\ = (!\system_core|statop_debounce|s_debounceCnt\(6) & (!\system_core|statop_debounce|s_debounceCnt\(5) & (!\system_core|statop_debounce|s_debounceCnt\(7) & !\system_core|statop_debounce|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(6),
	datab => \system_core|statop_debounce|s_debounceCnt\(5),
	datac => \system_core|statop_debounce|s_debounceCnt\(7),
	datad => \system_core|statop_debounce|s_debounceCnt\(4),
	combout => \system_core|statop_debounce|Equal0~1_combout\);

-- Location: LCCOMB_X102_Y26_N0
\system_core|statop_debounce|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|Equal0~2_combout\ = (!\system_core|statop_debounce|s_debounceCnt\(10) & (!\system_core|statop_debounce|s_debounceCnt\(11) & (!\system_core|statop_debounce|s_debounceCnt\(9) & !\system_core|statop_debounce|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(10),
	datab => \system_core|statop_debounce|s_debounceCnt\(11),
	datac => \system_core|statop_debounce|s_debounceCnt\(9),
	datad => \system_core|statop_debounce|s_debounceCnt\(8),
	combout => \system_core|statop_debounce|Equal0~2_combout\);

-- Location: LCCOMB_X103_Y26_N18
\system_core|statop_debounce|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|Equal0~3_combout\ = (!\system_core|statop_debounce|s_debounceCnt\(15) & (!\system_core|statop_debounce|s_debounceCnt\(13) & (!\system_core|statop_debounce|s_debounceCnt\(12) & 
-- !\system_core|statop_debounce|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(15),
	datab => \system_core|statop_debounce|s_debounceCnt\(13),
	datac => \system_core|statop_debounce|s_debounceCnt\(12),
	datad => \system_core|statop_debounce|s_debounceCnt\(14),
	combout => \system_core|statop_debounce|Equal0~3_combout\);

-- Location: LCCOMB_X103_Y26_N4
\system_core|statop_debounce|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|Equal0~4_combout\ = (\system_core|statop_debounce|Equal0~0_combout\ & (\system_core|statop_debounce|Equal0~1_combout\ & (\system_core|statop_debounce|Equal0~2_combout\ & \system_core|statop_debounce|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|Equal0~0_combout\,
	datab => \system_core|statop_debounce|Equal0~1_combout\,
	datac => \system_core|statop_debounce|Equal0~2_combout\,
	datad => \system_core|statop_debounce|Equal0~3_combout\,
	combout => \system_core|statop_debounce|Equal0~4_combout\);

-- Location: LCCOMB_X102_Y25_N18
\system_core|statop_debounce|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[24]~79_combout\ = (\system_core|statop_debounce|s_debounceCnt\(24) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[23]~78\))) # (!\system_core|statop_debounce|s_debounceCnt\(24) & 
-- (\system_core|statop_debounce|s_debounceCnt[23]~78\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[24]~80\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(24)) # (!\system_core|statop_debounce|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(24),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[23]~78\,
	combout => \system_core|statop_debounce|s_debounceCnt[24]~79_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[24]~80\);

-- Location: FF_X102_Y25_N19
\system_core|statop_debounce|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(24));

-- Location: LCCOMB_X102_Y25_N20
\system_core|statop_debounce|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[25]~81_combout\ = (\system_core|statop_debounce|s_debounceCnt\(25) & (\system_core|statop_debounce|s_debounceCnt[24]~80\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(25) & 
-- (!\system_core|statop_debounce|s_debounceCnt[24]~80\))
-- \system_core|statop_debounce|s_debounceCnt[25]~82\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(25) & !\system_core|statop_debounce|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(25),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[24]~80\,
	combout => \system_core|statop_debounce|s_debounceCnt[25]~81_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[25]~82\);

-- Location: FF_X102_Y25_N21
\system_core|statop_debounce|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(25));

-- Location: LCCOMB_X102_Y25_N22
\system_core|statop_debounce|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[26]~83_combout\ = (\system_core|statop_debounce|s_debounceCnt\(26) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[25]~82\))) # (!\system_core|statop_debounce|s_debounceCnt\(26) & 
-- (\system_core|statop_debounce|s_debounceCnt[25]~82\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[26]~84\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(26)) # (!\system_core|statop_debounce|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(26),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[25]~82\,
	combout => \system_core|statop_debounce|s_debounceCnt[26]~83_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[26]~84\);

-- Location: FF_X102_Y25_N23
\system_core|statop_debounce|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(26));

-- Location: LCCOMB_X102_Y25_N24
\system_core|statop_debounce|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[27]~85_combout\ = (\system_core|statop_debounce|s_debounceCnt\(27) & (\system_core|statop_debounce|s_debounceCnt[26]~84\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(27) & 
-- (!\system_core|statop_debounce|s_debounceCnt[26]~84\))
-- \system_core|statop_debounce|s_debounceCnt[27]~86\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(27) & !\system_core|statop_debounce|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(27),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[26]~84\,
	combout => \system_core|statop_debounce|s_debounceCnt[27]~85_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[27]~86\);

-- Location: FF_X102_Y25_N25
\system_core|statop_debounce|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(27));

-- Location: LCCOMB_X102_Y25_N26
\system_core|statop_debounce|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[28]~87_combout\ = (\system_core|statop_debounce|s_debounceCnt\(28) & ((GND) # (!\system_core|statop_debounce|s_debounceCnt[27]~86\))) # (!\system_core|statop_debounce|s_debounceCnt\(28) & 
-- (\system_core|statop_debounce|s_debounceCnt[27]~86\ $ (GND)))
-- \system_core|statop_debounce|s_debounceCnt[28]~88\ = CARRY((\system_core|statop_debounce|s_debounceCnt\(28)) # (!\system_core|statop_debounce|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(28),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[27]~86\,
	combout => \system_core|statop_debounce|s_debounceCnt[28]~87_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[28]~88\);

-- Location: FF_X102_Y25_N27
\system_core|statop_debounce|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(28));

-- Location: LCCOMB_X102_Y25_N28
\system_core|statop_debounce|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[29]~89_combout\ = (\system_core|statop_debounce|s_debounceCnt\(29) & (\system_core|statop_debounce|s_debounceCnt[28]~88\ & VCC)) # (!\system_core|statop_debounce|s_debounceCnt\(29) & 
-- (!\system_core|statop_debounce|s_debounceCnt[28]~88\))
-- \system_core|statop_debounce|s_debounceCnt[29]~90\ = CARRY((!\system_core|statop_debounce|s_debounceCnt\(29) & !\system_core|statop_debounce|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|statop_debounce|s_debounceCnt\(29),
	datad => VCC,
	cin => \system_core|statop_debounce|s_debounceCnt[28]~88\,
	combout => \system_core|statop_debounce|s_debounceCnt[29]~89_combout\,
	cout => \system_core|statop_debounce|s_debounceCnt[29]~90\);

-- Location: FF_X102_Y25_N29
\system_core|statop_debounce|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(29));

-- Location: LCCOMB_X102_Y25_N30
\system_core|statop_debounce|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_debounceCnt[30]~91_combout\ = \system_core|statop_debounce|s_debounceCnt\(30) $ (\system_core|statop_debounce|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(30),
	cin => \system_core|statop_debounce|s_debounceCnt[29]~90\,
	combout => \system_core|statop_debounce|s_debounceCnt[30]~91_combout\);

-- Location: FF_X102_Y25_N31
\system_core|statop_debounce|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|statop_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_debounceCnt\(30));

-- Location: LCCOMB_X103_Y26_N2
\system_core|statop_debounce|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|Equal0~7_combout\ = (!\system_core|statop_debounce|s_debounceCnt\(25) & (!\system_core|statop_debounce|s_debounceCnt\(27) & (!\system_core|statop_debounce|s_debounceCnt\(24) & 
-- !\system_core|statop_debounce|s_debounceCnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(25),
	datab => \system_core|statop_debounce|s_debounceCnt\(27),
	datac => \system_core|statop_debounce|s_debounceCnt\(24),
	datad => \system_core|statop_debounce|s_debounceCnt\(26),
	combout => \system_core|statop_debounce|Equal0~7_combout\);

-- Location: LCCOMB_X103_Y26_N12
\system_core|statop_debounce|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|Equal0~8_combout\ = (!\system_core|statop_debounce|s_debounceCnt\(28) & (!\system_core|statop_debounce|s_debounceCnt\(29) & (!\system_core|statop_debounce|s_debounceCnt\(30) & \system_core|statop_debounce|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_debounceCnt\(28),
	datab => \system_core|statop_debounce|s_debounceCnt\(29),
	datac => \system_core|statop_debounce|s_debounceCnt\(30),
	datad => \system_core|statop_debounce|Equal0~7_combout\,
	combout => \system_core|statop_debounce|Equal0~8_combout\);

-- Location: LCCOMB_X103_Y26_N30
\system_core|statop_debounce|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|Equal0~9_combout\ = (\system_core|statop_debounce|Equal0~5_combout\ & (\system_core|statop_debounce|Equal0~6_combout\ & (\system_core|statop_debounce|Equal0~4_combout\ & \system_core|statop_debounce|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|Equal0~5_combout\,
	datab => \system_core|statop_debounce|Equal0~6_combout\,
	datac => \system_core|statop_debounce|Equal0~4_combout\,
	datad => \system_core|statop_debounce|Equal0~8_combout\,
	combout => \system_core|statop_debounce|Equal0~9_combout\);

-- Location: LCCOMB_X103_Y24_N30
\system_core|statop_debounce|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|s_resetPulse~0_combout\ = (\system_core|statop_debounce|s_pulsedOut~q\) # (!\system_core|statop_debounce|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|statop_debounce|s_pulsedOut~q\,
	datad => \system_core|statop_debounce|Equal0~9_combout\,
	combout => \system_core|statop_debounce|s_resetPulse~0_combout\);

-- Location: FF_X103_Y24_N31
\system_core|statop_debounce|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|statop_debounce|s_resetPulse~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_resetPulse~q\);

-- Location: LCCOMB_X103_Y24_N12
\system_core|statop_debounce|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|statop_debounce|out_proc~0_combout\ = (\system_core|statop_debounce|s_resetPulse~q\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datac => \system_core|statop_debounce|s_resetPulse~q\,
	combout => \system_core|statop_debounce|out_proc~0_combout\);

-- Location: FF_X103_Y24_N17
\system_core|statop_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|statop_debounce|ALT_INV_s_dirtyIn~q\,
	d => \system_core|statop_debounce|s_pulsedOut~feeder_combout\,
	clrn => \system_core|statop_debounce|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|statop_debounce|s_pulsedOut~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X91_Y7_N15
\system_core|laprst_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_dirtyIn~q\);

-- Location: LCCOMB_X92_Y7_N24
\system_core|laprst_debounce|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \system_core|laprst_debounce|s_pulsedOut~feeder_combout\);

-- Location: LCCOMB_X92_Y27_N2
\system_core|laprst_debounce|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[0]~31_combout\ = \system_core|laprst_debounce|s_debounceCnt\(0) $ (VCC)
-- \system_core|laprst_debounce|s_debounceCnt[0]~32\ = CARRY(\system_core|laprst_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \system_core|laprst_debounce|s_debounceCnt[0]~31_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[0]~32\);

-- Location: FF_X92_Y27_N3
\system_core|laprst_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X92_Y27_N4
\system_core|laprst_debounce|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[1]~33_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(1) & (\system_core|laprst_debounce|s_debounceCnt[0]~32\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(1) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[0]~32\))
-- \system_core|laprst_debounce|s_debounceCnt[1]~34\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(1) & !\system_core|laprst_debounce|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[0]~32\,
	combout => \system_core|laprst_debounce|s_debounceCnt[1]~33_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[1]~34\);

-- Location: FF_X92_Y27_N5
\system_core|laprst_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X92_Y27_N6
\system_core|laprst_debounce|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[2]~35_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(2) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[1]~34\))) # (!\system_core|laprst_debounce|s_debounceCnt\(2) & 
-- (\system_core|laprst_debounce|s_debounceCnt[1]~34\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[2]~36\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(2)) # (!\system_core|laprst_debounce|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[1]~34\,
	combout => \system_core|laprst_debounce|s_debounceCnt[2]~35_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[2]~36\);

-- Location: FF_X92_Y27_N7
\system_core|laprst_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X92_Y27_N8
\system_core|laprst_debounce|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[3]~37_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(3) & (\system_core|laprst_debounce|s_debounceCnt[2]~36\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(3) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[2]~36\))
-- \system_core|laprst_debounce|s_debounceCnt[3]~38\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(3) & !\system_core|laprst_debounce|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[2]~36\,
	combout => \system_core|laprst_debounce|s_debounceCnt[3]~37_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[3]~38\);

-- Location: FF_X92_Y27_N9
\system_core|laprst_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X92_Y27_N10
\system_core|laprst_debounce|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[4]~39_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(4) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[3]~38\))) # (!\system_core|laprst_debounce|s_debounceCnt\(4) & 
-- (\system_core|laprst_debounce|s_debounceCnt[3]~38\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[4]~40\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(4)) # (!\system_core|laprst_debounce|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[3]~38\,
	combout => \system_core|laprst_debounce|s_debounceCnt[4]~39_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[4]~40\);

-- Location: FF_X92_Y27_N11
\system_core|laprst_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X92_Y27_N12
\system_core|laprst_debounce|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[5]~41_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(5) & (\system_core|laprst_debounce|s_debounceCnt[4]~40\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(5) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[4]~40\))
-- \system_core|laprst_debounce|s_debounceCnt[5]~42\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(5) & !\system_core|laprst_debounce|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[4]~40\,
	combout => \system_core|laprst_debounce|s_debounceCnt[5]~41_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[5]~42\);

-- Location: FF_X92_Y27_N13
\system_core|laprst_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X92_Y27_N14
\system_core|laprst_debounce|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[6]~43_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(6) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[5]~42\))) # (!\system_core|laprst_debounce|s_debounceCnt\(6) & 
-- (\system_core|laprst_debounce|s_debounceCnt[5]~42\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[6]~44\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(6)) # (!\system_core|laprst_debounce|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[5]~42\,
	combout => \system_core|laprst_debounce|s_debounceCnt[6]~43_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[6]~44\);

-- Location: FF_X92_Y27_N15
\system_core|laprst_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[6]~43_combout\,
	asdata => \system_core|laprst_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X92_Y27_N16
\system_core|laprst_debounce|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[7]~45_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(7) & (\system_core|laprst_debounce|s_debounceCnt[6]~44\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(7) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[6]~44\))
-- \system_core|laprst_debounce|s_debounceCnt[7]~46\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(7) & !\system_core|laprst_debounce|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[6]~44\,
	combout => \system_core|laprst_debounce|s_debounceCnt[7]~45_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[7]~46\);

-- Location: FF_X92_Y27_N17
\system_core|laprst_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[7]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X92_Y27_N18
\system_core|laprst_debounce|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[8]~47_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(8) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[7]~46\))) # (!\system_core|laprst_debounce|s_debounceCnt\(8) & 
-- (\system_core|laprst_debounce|s_debounceCnt[7]~46\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[8]~48\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(8)) # (!\system_core|laprst_debounce|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[7]~46\,
	combout => \system_core|laprst_debounce|s_debounceCnt[8]~47_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[8]~48\);

-- Location: FF_X92_Y27_N19
\system_core|laprst_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[8]~47_combout\,
	asdata => \system_core|laprst_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X92_Y27_N20
\system_core|laprst_debounce|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[9]~49_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(9) & (\system_core|laprst_debounce|s_debounceCnt[8]~48\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(9) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[8]~48\))
-- \system_core|laprst_debounce|s_debounceCnt[9]~50\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(9) & !\system_core|laprst_debounce|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[8]~48\,
	combout => \system_core|laprst_debounce|s_debounceCnt[9]~49_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[9]~50\);

-- Location: FF_X92_Y27_N21
\system_core|laprst_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[9]~49_combout\,
	asdata => \system_core|laprst_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X92_Y27_N22
\system_core|laprst_debounce|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[10]~51_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(10) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[9]~50\))) # (!\system_core|laprst_debounce|s_debounceCnt\(10) & 
-- (\system_core|laprst_debounce|s_debounceCnt[9]~50\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[10]~52\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(10)) # (!\system_core|laprst_debounce|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[9]~50\,
	combout => \system_core|laprst_debounce|s_debounceCnt[10]~51_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[10]~52\);

-- Location: FF_X92_Y27_N23
\system_core|laprst_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X92_Y27_N24
\system_core|laprst_debounce|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[11]~53_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(11) & (\system_core|laprst_debounce|s_debounceCnt[10]~52\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(11) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[10]~52\))
-- \system_core|laprst_debounce|s_debounceCnt[11]~54\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(11) & !\system_core|laprst_debounce|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[10]~52\,
	combout => \system_core|laprst_debounce|s_debounceCnt[11]~53_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[11]~54\);

-- Location: FF_X92_Y27_N25
\system_core|laprst_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[11]~53_combout\,
	asdata => \system_core|laprst_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X92_Y27_N26
\system_core|laprst_debounce|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[12]~55_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(12) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[11]~54\))) # (!\system_core|laprst_debounce|s_debounceCnt\(12) & 
-- (\system_core|laprst_debounce|s_debounceCnt[11]~54\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[12]~56\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(12)) # (!\system_core|laprst_debounce|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[11]~54\,
	combout => \system_core|laprst_debounce|s_debounceCnt[12]~55_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[12]~56\);

-- Location: FF_X92_Y27_N27
\system_core|laprst_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X92_Y27_N28
\system_core|laprst_debounce|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[13]~57_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(13) & (\system_core|laprst_debounce|s_debounceCnt[12]~56\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(13) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[12]~56\))
-- \system_core|laprst_debounce|s_debounceCnt[13]~58\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(13) & !\system_core|laprst_debounce|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[12]~56\,
	combout => \system_core|laprst_debounce|s_debounceCnt[13]~57_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[13]~58\);

-- Location: FF_X92_Y27_N29
\system_core|laprst_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[13]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X92_Y27_N30
\system_core|laprst_debounce|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[14]~59_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(14) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[13]~58\))) # (!\system_core|laprst_debounce|s_debounceCnt\(14) & 
-- (\system_core|laprst_debounce|s_debounceCnt[13]~58\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[14]~60\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(14)) # (!\system_core|laprst_debounce|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[13]~58\,
	combout => \system_core|laprst_debounce|s_debounceCnt[14]~59_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[14]~60\);

-- Location: FF_X92_Y27_N31
\system_core|laprst_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[14]~59_combout\,
	asdata => \system_core|laprst_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X92_Y26_N0
\system_core|laprst_debounce|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[15]~61_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(15) & (\system_core|laprst_debounce|s_debounceCnt[14]~60\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(15) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[14]~60\))
-- \system_core|laprst_debounce|s_debounceCnt[15]~62\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(15) & !\system_core|laprst_debounce|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[14]~60\,
	combout => \system_core|laprst_debounce|s_debounceCnt[15]~61_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[15]~62\);

-- Location: LCCOMB_X91_Y26_N12
\system_core|laprst_debounce|s_debounceCnt[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[15]~feeder_combout\ = \system_core|laprst_debounce|s_debounceCnt[15]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt[15]~61_combout\,
	combout => \system_core|laprst_debounce|s_debounceCnt[15]~feeder_combout\);

-- Location: FF_X91_Y26_N13
\system_core|laprst_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[15]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X92_Y26_N2
\system_core|laprst_debounce|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[16]~63_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(16) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[15]~62\))) # (!\system_core|laprst_debounce|s_debounceCnt\(16) & 
-- (\system_core|laprst_debounce|s_debounceCnt[15]~62\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[16]~64\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(16)) # (!\system_core|laprst_debounce|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[15]~62\,
	combout => \system_core|laprst_debounce|s_debounceCnt[16]~63_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[16]~64\);

-- Location: FF_X92_Y26_N3
\system_core|laprst_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X92_Y26_N4
\system_core|laprst_debounce|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[17]~65_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(17) & (\system_core|laprst_debounce|s_debounceCnt[16]~64\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(17) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[16]~64\))
-- \system_core|laprst_debounce|s_debounceCnt[17]~66\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(17) & !\system_core|laprst_debounce|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[16]~64\,
	combout => \system_core|laprst_debounce|s_debounceCnt[17]~65_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[17]~66\);

-- Location: FF_X92_Y26_N5
\system_core|laprst_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X92_Y26_N6
\system_core|laprst_debounce|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[18]~67_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(18) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[17]~66\))) # (!\system_core|laprst_debounce|s_debounceCnt\(18) & 
-- (\system_core|laprst_debounce|s_debounceCnt[17]~66\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[18]~68\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(18)) # (!\system_core|laprst_debounce|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[17]~66\,
	combout => \system_core|laprst_debounce|s_debounceCnt[18]~67_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[18]~68\);

-- Location: FF_X92_Y26_N7
\system_core|laprst_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[18]~67_combout\,
	asdata => \system_core|laprst_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X92_Y26_N8
\system_core|laprst_debounce|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[19]~69_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(19) & (\system_core|laprst_debounce|s_debounceCnt[18]~68\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(19) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[18]~68\))
-- \system_core|laprst_debounce|s_debounceCnt[19]~70\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(19) & !\system_core|laprst_debounce|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[18]~68\,
	combout => \system_core|laprst_debounce|s_debounceCnt[19]~69_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[19]~70\);

-- Location: FF_X92_Y26_N9
\system_core|laprst_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[19]~69_combout\,
	asdata => \system_core|laprst_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X91_Y26_N26
\system_core|laprst_debounce|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|Equal0~5_combout\ = (!\system_core|laprst_debounce|s_debounceCnt\(18) & (!\system_core|laprst_debounce|s_debounceCnt\(19) & (!\system_core|laprst_debounce|s_debounceCnt\(16) & 
-- !\system_core|laprst_debounce|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(18),
	datab => \system_core|laprst_debounce|s_debounceCnt\(19),
	datac => \system_core|laprst_debounce|s_debounceCnt\(16),
	datad => \system_core|laprst_debounce|s_debounceCnt\(17),
	combout => \system_core|laprst_debounce|Equal0~5_combout\);

-- Location: LCCOMB_X92_Y26_N10
\system_core|laprst_debounce|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[20]~71_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(20) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[19]~70\))) # (!\system_core|laprst_debounce|s_debounceCnt\(20) & 
-- (\system_core|laprst_debounce|s_debounceCnt[19]~70\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[20]~72\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(20)) # (!\system_core|laprst_debounce|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[19]~70\,
	combout => \system_core|laprst_debounce|s_debounceCnt[20]~71_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[20]~72\);

-- Location: FF_X92_Y26_N11
\system_core|laprst_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X92_Y26_N12
\system_core|laprst_debounce|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[21]~73_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(21) & (\system_core|laprst_debounce|s_debounceCnt[20]~72\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(21) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[20]~72\))
-- \system_core|laprst_debounce|s_debounceCnt[21]~74\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(21) & !\system_core|laprst_debounce|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[20]~72\,
	combout => \system_core|laprst_debounce|s_debounceCnt[21]~73_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[21]~74\);

-- Location: FF_X92_Y26_N13
\system_core|laprst_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[21]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X92_Y26_N14
\system_core|laprst_debounce|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[22]~75_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(22) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[21]~74\))) # (!\system_core|laprst_debounce|s_debounceCnt\(22) & 
-- (\system_core|laprst_debounce|s_debounceCnt[21]~74\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[22]~76\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(22)) # (!\system_core|laprst_debounce|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(22),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[21]~74\,
	combout => \system_core|laprst_debounce|s_debounceCnt[22]~75_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[22]~76\);

-- Location: FF_X92_Y26_N15
\system_core|laprst_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[22]~75_combout\,
	asdata => \system_core|laprst_debounce|s_pulsedOut~q\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X92_Y26_N16
\system_core|laprst_debounce|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[23]~77_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(23) & (\system_core|laprst_debounce|s_debounceCnt[22]~76\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(23) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[22]~76\))
-- \system_core|laprst_debounce|s_debounceCnt[23]~78\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(23) & !\system_core|laprst_debounce|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(23),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[22]~76\,
	combout => \system_core|laprst_debounce|s_debounceCnt[23]~77_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[23]~78\);

-- Location: FF_X92_Y26_N17
\system_core|laprst_debounce|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[23]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(23));

-- Location: LCCOMB_X91_Y26_N20
\system_core|laprst_debounce|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|Equal0~6_combout\ = (!\system_core|laprst_debounce|s_debounceCnt\(22) & (!\system_core|laprst_debounce|s_debounceCnt\(21) & (!\system_core|laprst_debounce|s_debounceCnt\(20) & 
-- !\system_core|laprst_debounce|s_debounceCnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(22),
	datab => \system_core|laprst_debounce|s_debounceCnt\(21),
	datac => \system_core|laprst_debounce|s_debounceCnt\(20),
	datad => \system_core|laprst_debounce|s_debounceCnt\(23),
	combout => \system_core|laprst_debounce|Equal0~6_combout\);

-- Location: LCCOMB_X92_Y26_N18
\system_core|laprst_debounce|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[24]~79_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(24) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[23]~78\))) # (!\system_core|laprst_debounce|s_debounceCnt\(24) & 
-- (\system_core|laprst_debounce|s_debounceCnt[23]~78\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[24]~80\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(24)) # (!\system_core|laprst_debounce|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(24),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[23]~78\,
	combout => \system_core|laprst_debounce|s_debounceCnt[24]~79_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[24]~80\);

-- Location: FF_X92_Y26_N19
\system_core|laprst_debounce|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(24));

-- Location: LCCOMB_X92_Y26_N20
\system_core|laprst_debounce|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[25]~81_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(25) & (\system_core|laprst_debounce|s_debounceCnt[24]~80\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(25) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[24]~80\))
-- \system_core|laprst_debounce|s_debounceCnt[25]~82\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(25) & !\system_core|laprst_debounce|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(25),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[24]~80\,
	combout => \system_core|laprst_debounce|s_debounceCnt[25]~81_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[25]~82\);

-- Location: FF_X92_Y26_N21
\system_core|laprst_debounce|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(25));

-- Location: LCCOMB_X92_Y26_N22
\system_core|laprst_debounce|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[26]~83_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(26) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[25]~82\))) # (!\system_core|laprst_debounce|s_debounceCnt\(26) & 
-- (\system_core|laprst_debounce|s_debounceCnt[25]~82\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[26]~84\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(26)) # (!\system_core|laprst_debounce|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(26),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[25]~82\,
	combout => \system_core|laprst_debounce|s_debounceCnt[26]~83_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[26]~84\);

-- Location: FF_X92_Y26_N23
\system_core|laprst_debounce|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(26));

-- Location: LCCOMB_X92_Y26_N24
\system_core|laprst_debounce|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[27]~85_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(27) & (\system_core|laprst_debounce|s_debounceCnt[26]~84\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(27) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[26]~84\))
-- \system_core|laprst_debounce|s_debounceCnt[27]~86\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(27) & !\system_core|laprst_debounce|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(27),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[26]~84\,
	combout => \system_core|laprst_debounce|s_debounceCnt[27]~85_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[27]~86\);

-- Location: FF_X92_Y26_N25
\system_core|laprst_debounce|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(27));

-- Location: LCCOMB_X92_Y26_N26
\system_core|laprst_debounce|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[28]~87_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(28) & ((GND) # (!\system_core|laprst_debounce|s_debounceCnt[27]~86\))) # (!\system_core|laprst_debounce|s_debounceCnt\(28) & 
-- (\system_core|laprst_debounce|s_debounceCnt[27]~86\ $ (GND)))
-- \system_core|laprst_debounce|s_debounceCnt[28]~88\ = CARRY((\system_core|laprst_debounce|s_debounceCnt\(28)) # (!\system_core|laprst_debounce|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(28),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[27]~86\,
	combout => \system_core|laprst_debounce|s_debounceCnt[28]~87_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[28]~88\);

-- Location: FF_X92_Y26_N27
\system_core|laprst_debounce|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(28));

-- Location: LCCOMB_X92_Y26_N28
\system_core|laprst_debounce|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[29]~89_combout\ = (\system_core|laprst_debounce|s_debounceCnt\(29) & (\system_core|laprst_debounce|s_debounceCnt[28]~88\ & VCC)) # (!\system_core|laprst_debounce|s_debounceCnt\(29) & 
-- (!\system_core|laprst_debounce|s_debounceCnt[28]~88\))
-- \system_core|laprst_debounce|s_debounceCnt[29]~90\ = CARRY((!\system_core|laprst_debounce|s_debounceCnt\(29) & !\system_core|laprst_debounce|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_debounceCnt\(29),
	datad => VCC,
	cin => \system_core|laprst_debounce|s_debounceCnt[28]~88\,
	combout => \system_core|laprst_debounce|s_debounceCnt[29]~89_combout\,
	cout => \system_core|laprst_debounce|s_debounceCnt[29]~90\);

-- Location: FF_X92_Y26_N29
\system_core|laprst_debounce|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(29));

-- Location: LCCOMB_X92_Y26_N30
\system_core|laprst_debounce|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_debounceCnt[30]~91_combout\ = \system_core|laprst_debounce|s_debounceCnt\(30) $ (\system_core|laprst_debounce|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(30),
	cin => \system_core|laprst_debounce|s_debounceCnt[29]~90\,
	combout => \system_core|laprst_debounce|s_debounceCnt[30]~91_combout\);

-- Location: FF_X92_Y26_N31
\system_core|laprst_debounce|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[3]~input_o\,
	sload => \system_core|laprst_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_debounceCnt\(30));

-- Location: LCCOMB_X91_Y26_N6
\system_core|laprst_debounce|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|Equal0~7_combout\ = (!\system_core|laprst_debounce|s_debounceCnt\(25) & (!\system_core|laprst_debounce|s_debounceCnt\(26) & (!\system_core|laprst_debounce|s_debounceCnt\(24) & 
-- !\system_core|laprst_debounce|s_debounceCnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(25),
	datab => \system_core|laprst_debounce|s_debounceCnt\(26),
	datac => \system_core|laprst_debounce|s_debounceCnt\(24),
	datad => \system_core|laprst_debounce|s_debounceCnt\(27),
	combout => \system_core|laprst_debounce|Equal0~7_combout\);

-- Location: LCCOMB_X91_Y26_N8
\system_core|laprst_debounce|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|Equal0~8_combout\ = (!\system_core|laprst_debounce|s_debounceCnt\(30) & (!\system_core|laprst_debounce|s_debounceCnt\(29) & (!\system_core|laprst_debounce|s_debounceCnt\(28) & \system_core|laprst_debounce|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(30),
	datab => \system_core|laprst_debounce|s_debounceCnt\(29),
	datac => \system_core|laprst_debounce|s_debounceCnt\(28),
	datad => \system_core|laprst_debounce|Equal0~7_combout\,
	combout => \system_core|laprst_debounce|Equal0~8_combout\);

-- Location: LCCOMB_X91_Y26_N10
\system_core|laprst_debounce|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|Equal0~1_combout\ = (!\system_core|laprst_debounce|s_debounceCnt\(5) & (!\system_core|laprst_debounce|s_debounceCnt\(4) & (!\system_core|laprst_debounce|s_debounceCnt\(7) & !\system_core|laprst_debounce|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(5),
	datab => \system_core|laprst_debounce|s_debounceCnt\(4),
	datac => \system_core|laprst_debounce|s_debounceCnt\(7),
	datad => \system_core|laprst_debounce|s_debounceCnt\(6),
	combout => \system_core|laprst_debounce|Equal0~1_combout\);

-- Location: LCCOMB_X91_Y26_N14
\system_core|laprst_debounce|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|Equal0~3_combout\ = (!\system_core|laprst_debounce|s_debounceCnt\(15) & (!\system_core|laprst_debounce|s_debounceCnt\(14) & (!\system_core|laprst_debounce|s_debounceCnt\(12) & 
-- !\system_core|laprst_debounce|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(15),
	datab => \system_core|laprst_debounce|s_debounceCnt\(14),
	datac => \system_core|laprst_debounce|s_debounceCnt\(12),
	datad => \system_core|laprst_debounce|s_debounceCnt\(13),
	combout => \system_core|laprst_debounce|Equal0~3_combout\);

-- Location: LCCOMB_X92_Y27_N0
\system_core|laprst_debounce|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|Equal0~0_combout\ = (!\system_core|laprst_debounce|s_debounceCnt\(2) & (!\system_core|laprst_debounce|s_debounceCnt\(3) & (!\system_core|laprst_debounce|s_debounceCnt\(1) & !\system_core|laprst_debounce|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(2),
	datab => \system_core|laprst_debounce|s_debounceCnt\(3),
	datac => \system_core|laprst_debounce|s_debounceCnt\(1),
	datad => \system_core|laprst_debounce|s_debounceCnt\(0),
	combout => \system_core|laprst_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X91_Y26_N24
\system_core|laprst_debounce|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|Equal0~2_combout\ = (!\system_core|laprst_debounce|s_debounceCnt\(11) & (!\system_core|laprst_debounce|s_debounceCnt\(10) & (!\system_core|laprst_debounce|s_debounceCnt\(9) & !\system_core|laprst_debounce|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|s_debounceCnt\(11),
	datab => \system_core|laprst_debounce|s_debounceCnt\(10),
	datac => \system_core|laprst_debounce|s_debounceCnt\(9),
	datad => \system_core|laprst_debounce|s_debounceCnt\(8),
	combout => \system_core|laprst_debounce|Equal0~2_combout\);

-- Location: LCCOMB_X91_Y26_N16
\system_core|laprst_debounce|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|Equal0~4_combout\ = (\system_core|laprst_debounce|Equal0~1_combout\ & (\system_core|laprst_debounce|Equal0~3_combout\ & (\system_core|laprst_debounce|Equal0~0_combout\ & \system_core|laprst_debounce|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|Equal0~1_combout\,
	datab => \system_core|laprst_debounce|Equal0~3_combout\,
	datac => \system_core|laprst_debounce|Equal0~0_combout\,
	datad => \system_core|laprst_debounce|Equal0~2_combout\,
	combout => \system_core|laprst_debounce|Equal0~4_combout\);

-- Location: LCCOMB_X91_Y26_N22
\system_core|laprst_debounce|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|Equal0~9_combout\ = (\system_core|laprst_debounce|Equal0~5_combout\ & (\system_core|laprst_debounce|Equal0~6_combout\ & (\system_core|laprst_debounce|Equal0~8_combout\ & \system_core|laprst_debounce|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|laprst_debounce|Equal0~5_combout\,
	datab => \system_core|laprst_debounce|Equal0~6_combout\,
	datac => \system_core|laprst_debounce|Equal0~8_combout\,
	datad => \system_core|laprst_debounce|Equal0~4_combout\,
	combout => \system_core|laprst_debounce|Equal0~9_combout\);

-- Location: LCCOMB_X92_Y7_N18
\system_core|laprst_debounce|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|s_resetPulse~0_combout\ = (\system_core|laprst_debounce|s_pulsedOut~q\) # (!\system_core|laprst_debounce|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|laprst_debounce|s_pulsedOut~q\,
	datad => \system_core|laprst_debounce|Equal0~9_combout\,
	combout => \system_core|laprst_debounce|s_resetPulse~0_combout\);

-- Location: FF_X92_Y7_N19
\system_core|laprst_debounce|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|laprst_debounce|s_resetPulse~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_resetPulse~q\);

-- Location: LCCOMB_X92_Y7_N20
\system_core|laprst_debounce|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|laprst_debounce|out_proc~0_combout\ = (\system_core|laprst_debounce|s_resetPulse~q\) # (!\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \system_core|laprst_debounce|s_resetPulse~q\,
	combout => \system_core|laprst_debounce|out_proc~0_combout\);

-- Location: FF_X92_Y7_N25
\system_core|laprst_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|laprst_debounce|ALT_INV_s_dirtyIn~q\,
	d => \system_core|laprst_debounce|s_pulsedOut~feeder_combout\,
	clrn => \system_core|laprst_debounce|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|laprst_debounce|s_pulsedOut~q\);

-- Location: LCCOMB_X106_Y4_N18
\system_core|control_unit|s_currentState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|s_currentState~7_combout\ = (\KEY[3]~input_o\ & ((\system_core|statop_debounce|s_pulsedOut~q\ & ((\system_core|control_unit|s_currentState.TLapView~q\))) # (!\system_core|statop_debounce|s_pulsedOut~q\ & 
-- (\system_core|control_unit|s_currentState.TlapStopped~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \system_core|control_unit|s_currentState.TlapStopped~q\,
	datac => \system_core|control_unit|s_currentState.TLapView~q\,
	datad => \system_core|statop_debounce|s_pulsedOut~q\,
	combout => \system_core|control_unit|s_currentState~7_combout\);

-- Location: LCCOMB_X106_Y4_N12
\system_core|control_unit|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|s_currentState~8_combout\ = (!\system_core|laprst_debounce|s_pulsedOut~q\ & \system_core|control_unit|s_currentState~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|laprst_debounce|s_pulsedOut~q\,
	datad => \system_core|control_unit|s_currentState~7_combout\,
	combout => \system_core|control_unit|s_currentState~8_combout\);

-- Location: FF_X106_Y4_N13
\system_core|control_unit|s_currentState.TlapStopped\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|control_unit|s_currentState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|control_unit|s_currentState.TlapStopped~q\);

-- Location: LCCOMB_X106_Y4_N24
\system_core|control_unit|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|Selector3~0_combout\ = (!\system_core|statop_debounce|s_pulsedOut~q\ & ((\system_core|laprst_debounce|s_pulsedOut~q\ & (\system_core|control_unit|s_currentState.TStarted~q\)) # (!\system_core|laprst_debounce|s_pulsedOut~q\ & 
-- ((\system_core|control_unit|s_currentState.TLapView~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TStarted~q\,
	datab => \system_core|control_unit|s_currentState.TLapView~q\,
	datac => \system_core|laprst_debounce|s_pulsedOut~q\,
	datad => \system_core|statop_debounce|s_pulsedOut~q\,
	combout => \system_core|control_unit|Selector3~0_combout\);

-- Location: LCCOMB_X106_Y4_N4
\system_core|control_unit|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|Selector3~1_combout\ = (\system_core|control_unit|Selector3~0_combout\) # ((\system_core|statop_debounce|s_pulsedOut~q\ & \system_core|control_unit|s_currentState.TlapStopped~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_pulsedOut~q\,
	datab => \system_core|control_unit|s_currentState.TlapStopped~q\,
	datad => \system_core|control_unit|Selector3~0_combout\,
	combout => \system_core|control_unit|Selector3~1_combout\);

-- Location: FF_X106_Y4_N5
\system_core|control_unit|s_currentState.TLapView\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|control_unit|Selector3~1_combout\,
	sclr => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|control_unit|s_currentState.TLapView~q\);

-- Location: LCCOMB_X102_Y4_N2
\system_core|control_unit|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|Selector1~0_combout\ = (\system_core|laprst_debounce|s_pulsedOut~q\ & (((\system_core|control_unit|s_currentState.TLapView~q\)))) # (!\system_core|laprst_debounce|s_pulsedOut~q\ & 
-- (\system_core|control_unit|s_currentState.TStarted~q\ & ((!\system_core|statop_debounce|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TStarted~q\,
	datab => \system_core|control_unit|s_currentState.TLapView~q\,
	datac => \system_core|laprst_debounce|s_pulsedOut~q\,
	datad => \system_core|statop_debounce|s_pulsedOut~q\,
	combout => \system_core|control_unit|Selector1~0_combout\);

-- Location: LCCOMB_X102_Y4_N24
\system_core|control_unit|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|Selector1~1_combout\ = (\system_core|control_unit|Selector1~0_combout\) # ((\system_core|statop_debounce|s_pulsedOut~q\ & ((\system_core|control_unit|s_currentState.TStopped~q\) # 
-- (!\system_core|control_unit|s_currentState.TCleared~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_pulsedOut~q\,
	datab => \system_core|control_unit|s_currentState.TStopped~q\,
	datac => \system_core|control_unit|s_currentState.TCleared~q\,
	datad => \system_core|control_unit|Selector1~0_combout\,
	combout => \system_core|control_unit|Selector1~1_combout\);

-- Location: FF_X102_Y4_N25
\system_core|control_unit|s_currentState.TStarted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|control_unit|Selector1~1_combout\,
	sclr => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|control_unit|s_currentState.TStarted~q\);

-- Location: LCCOMB_X106_Y4_N6
\system_core|control_unit|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|Selector2~0_combout\ = (!\system_core|statop_debounce|s_pulsedOut~q\ & ((\system_core|laprst_debounce|s_pulsedOut~q\ & (\system_core|control_unit|s_currentState.TlapStopped~q\)) # (!\system_core|laprst_debounce|s_pulsedOut~q\ & 
-- ((\system_core|control_unit|s_currentState.TStopped~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TlapStopped~q\,
	datab => \system_core|control_unit|s_currentState.TStopped~q\,
	datac => \system_core|laprst_debounce|s_pulsedOut~q\,
	datad => \system_core|statop_debounce|s_pulsedOut~q\,
	combout => \system_core|control_unit|Selector2~0_combout\);

-- Location: LCCOMB_X106_Y4_N22
\system_core|control_unit|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|Selector2~1_combout\ = (\system_core|control_unit|Selector2~0_combout\) # ((\system_core|statop_debounce|s_pulsedOut~q\ & \system_core|control_unit|s_currentState.TStarted~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|statop_debounce|s_pulsedOut~q\,
	datac => \system_core|control_unit|s_currentState.TStarted~q\,
	datad => \system_core|control_unit|Selector2~0_combout\,
	combout => \system_core|control_unit|Selector2~1_combout\);

-- Location: FF_X106_Y4_N23
\system_core|control_unit|s_currentState.TStopped\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|control_unit|Selector2~1_combout\,
	sclr => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|control_unit|s_currentState.TStopped~q\);

-- Location: LCCOMB_X106_Y4_N16
\system_core|control_unit|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|s_currentState~9_combout\ = (!\system_core|statop_debounce|s_pulsedOut~q\ & (((\system_core|control_unit|s_currentState.TStopped~q\ & \system_core|laprst_debounce|s_pulsedOut~q\)) # 
-- (!\system_core|control_unit|s_currentState.TCleared~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TStopped~q\,
	datab => \system_core|control_unit|s_currentState.TCleared~q\,
	datac => \system_core|laprst_debounce|s_pulsedOut~q\,
	datad => \system_core|statop_debounce|s_pulsedOut~q\,
	combout => \system_core|control_unit|s_currentState~9_combout\);

-- Location: LCCOMB_X106_Y4_N20
\system_core|control_unit|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|s_currentState~10_combout\ = (\KEY[3]~input_o\ & !\system_core|control_unit|s_currentState~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \system_core|control_unit|s_currentState~9_combout\,
	combout => \system_core|control_unit|s_currentState~10_combout\);

-- Location: FF_X106_Y4_N21
\system_core|control_unit|s_currentState.TCleared\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|control_unit|s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|control_unit|s_currentState.TCleared~q\);

-- Location: LCCOMB_X108_Y4_N10
\system_core|bcd_counter|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~0_combout\ = (!\system_core|bcd_counter|s_count\(0) & \system_core|control_unit|s_currentState.TCleared~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|bcd_counter|s_count\(0),
	datad => \system_core|control_unit|s_currentState.TCleared~q\,
	combout => \system_core|bcd_counter|s_count~0_combout\);

-- Location: LCCOMB_X108_Y4_N12
\system_core|control_unit|cntEnable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|cntEnable~2_combout\ = (!\system_core|control_unit|s_currentState.TStopped~q\ & !\system_core|control_unit|s_currentState.TlapStopped~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TStopped~q\,
	datad => \system_core|control_unit|s_currentState.TlapStopped~q\,
	combout => \system_core|control_unit|cntEnable~2_combout\);

-- Location: FF_X108_Y4_N11
\system_core|bcd_counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~0_combout\,
	ena => \system_core|control_unit|cntEnable~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(0));

-- Location: LCCOMB_X108_Y4_N20
\system_core|bcd_counter|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|Add3~0_combout\ = \system_core|bcd_counter|s_count\(2) $ (((\system_core|bcd_counter|s_count\(1) & \system_core|bcd_counter|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(1),
	datab => \system_core|bcd_counter|s_count\(0),
	datac => \system_core|bcd_counter|s_count\(2),
	combout => \system_core|bcd_counter|Add3~0_combout\);

-- Location: LCCOMB_X108_Y4_N26
\system_core|bcd_counter|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~2_combout\ = (\system_core|bcd_counter|Add3~0_combout\ & (\system_core|bcd_counter|Equal0~0_combout\ & \system_core|control_unit|s_currentState.TCleared~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|bcd_counter|Add3~0_combout\,
	datac => \system_core|bcd_counter|Equal0~0_combout\,
	datad => \system_core|control_unit|s_currentState.TCleared~q\,
	combout => \system_core|bcd_counter|s_count~2_combout\);

-- Location: FF_X108_Y4_N27
\system_core|bcd_counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~2_combout\,
	ena => \system_core|control_unit|cntEnable~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(2));

-- Location: LCCOMB_X108_Y4_N6
\system_core|bcd_counter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|Equal0~0_combout\ = ((\system_core|bcd_counter|s_count\(2)) # ((\system_core|bcd_counter|s_count\(1)) # (!\system_core|bcd_counter|s_count\(3)))) # (!\system_core|bcd_counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(0),
	datab => \system_core|bcd_counter|s_count\(2),
	datac => \system_core|bcd_counter|s_count\(1),
	datad => \system_core|bcd_counter|s_count\(3),
	combout => \system_core|bcd_counter|Equal0~0_combout\);

-- Location: LCCOMB_X108_Y4_N4
\system_core|bcd_counter|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~1_combout\ = (\system_core|control_unit|s_currentState.TCleared~q\ & (\system_core|bcd_counter|Equal0~0_combout\ & (\system_core|bcd_counter|s_count\(1) $ (\system_core|bcd_counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TCleared~q\,
	datab => \system_core|bcd_counter|Equal0~0_combout\,
	datac => \system_core|bcd_counter|s_count\(1),
	datad => \system_core|bcd_counter|s_count\(0),
	combout => \system_core|bcd_counter|s_count~1_combout\);

-- Location: FF_X108_Y4_N5
\system_core|bcd_counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~1_combout\,
	ena => \system_core|control_unit|cntEnable~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(1));

-- Location: LCCOMB_X108_Y4_N18
\system_core|bcd_counter|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|Add3~1_combout\ = \system_core|bcd_counter|s_count\(3) $ (((\system_core|bcd_counter|s_count\(1) & (\system_core|bcd_counter|s_count\(2) & \system_core|bcd_counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(1),
	datab => \system_core|bcd_counter|s_count\(2),
	datac => \system_core|bcd_counter|s_count\(3),
	datad => \system_core|bcd_counter|s_count\(0),
	combout => \system_core|bcd_counter|Add3~1_combout\);

-- Location: LCCOMB_X108_Y4_N28
\system_core|bcd_counter|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~3_combout\ = (\system_core|bcd_counter|Add3~1_combout\ & (\system_core|bcd_counter|Equal0~0_combout\ & \system_core|control_unit|s_currentState.TCleared~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|bcd_counter|Add3~1_combout\,
	datac => \system_core|bcd_counter|Equal0~0_combout\,
	datad => \system_core|control_unit|s_currentState.TCleared~q\,
	combout => \system_core|bcd_counter|s_count~3_combout\);

-- Location: FF_X108_Y4_N29
\system_core|bcd_counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~3_combout\,
	ena => \system_core|control_unit|cntEnable~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(3));

-- Location: LCCOMB_X106_Y4_N10
\system_core|control_unit|regEnable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|control_unit|regEnable~1_combout\ = (!\system_core|control_unit|s_currentState.TLapView~q\ & !\system_core|control_unit|s_currentState.TlapStopped~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|control_unit|s_currentState.TLapView~q\,
	datad => \system_core|control_unit|s_currentState.TlapStopped~q\,
	combout => \system_core|control_unit|regEnable~1_combout\);

-- Location: FF_X108_Y4_N19
\system_core|freeze_register|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(3),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(3));

-- Location: FF_X108_Y4_N13
\system_core|freeze_register|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(0),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(0));

-- Location: FF_X108_Y4_N21
\system_core|freeze_register|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(2),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(2));

-- Location: FF_X108_Y4_N7
\system_core|freeze_register|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(1),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(1));

-- Location: LCCOMB_X108_Y4_N30
\system_core|disp_0_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_0_decoder|Mux6~0_combout\ = (\system_core|freeze_register|dataOut\(3) & (\system_core|freeze_register|dataOut\(0) & (\system_core|freeze_register|dataOut\(2) $ (\system_core|freeze_register|dataOut\(1))))) # 
-- (!\system_core|freeze_register|dataOut\(3) & (!\system_core|freeze_register|dataOut\(1) & (\system_core|freeze_register|dataOut\(0) $ (\system_core|freeze_register|dataOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(3),
	datab => \system_core|freeze_register|dataOut\(0),
	datac => \system_core|freeze_register|dataOut\(2),
	datad => \system_core|freeze_register|dataOut\(1),
	combout => \system_core|disp_0_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y4_N8
\system_core|disp_0_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_0_decoder|Mux5~0_combout\ = (\system_core|freeze_register|dataOut\(3) & ((\system_core|freeze_register|dataOut\(0) & ((\system_core|freeze_register|dataOut\(1)))) # (!\system_core|freeze_register|dataOut\(0) & 
-- (\system_core|freeze_register|dataOut\(2))))) # (!\system_core|freeze_register|dataOut\(3) & (\system_core|freeze_register|dataOut\(2) & (\system_core|freeze_register|dataOut\(0) $ (\system_core|freeze_register|dataOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(3),
	datab => \system_core|freeze_register|dataOut\(0),
	datac => \system_core|freeze_register|dataOut\(2),
	datad => \system_core|freeze_register|dataOut\(1),
	combout => \system_core|disp_0_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y4_N22
\system_core|disp_0_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_0_decoder|Mux4~0_combout\ = (\system_core|freeze_register|dataOut\(3) & (\system_core|freeze_register|dataOut\(2) & ((\system_core|freeze_register|dataOut\(1)) # (!\system_core|freeze_register|dataOut\(0))))) # 
-- (!\system_core|freeze_register|dataOut\(3) & (!\system_core|freeze_register|dataOut\(0) & (!\system_core|freeze_register|dataOut\(2) & \system_core|freeze_register|dataOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(3),
	datab => \system_core|freeze_register|dataOut\(0),
	datac => \system_core|freeze_register|dataOut\(2),
	datad => \system_core|freeze_register|dataOut\(1),
	combout => \system_core|disp_0_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y4_N16
\system_core|disp_0_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_0_decoder|Mux3~0_combout\ = (\system_core|freeze_register|dataOut\(1) & ((\system_core|freeze_register|dataOut\(0) & ((\system_core|freeze_register|dataOut\(2)))) # (!\system_core|freeze_register|dataOut\(0) & 
-- (\system_core|freeze_register|dataOut\(3) & !\system_core|freeze_register|dataOut\(2))))) # (!\system_core|freeze_register|dataOut\(1) & (!\system_core|freeze_register|dataOut\(3) & (\system_core|freeze_register|dataOut\(0) $ 
-- (\system_core|freeze_register|dataOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(3),
	datab => \system_core|freeze_register|dataOut\(0),
	datac => \system_core|freeze_register|dataOut\(2),
	datad => \system_core|freeze_register|dataOut\(1),
	combout => \system_core|disp_0_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y4_N24
\system_core|disp_0_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_0_decoder|Mux2~0_combout\ = (\system_core|freeze_register|dataOut\(1) & (!\system_core|freeze_register|dataOut\(3) & (\system_core|freeze_register|dataOut\(0)))) # (!\system_core|freeze_register|dataOut\(1) & 
-- ((\system_core|freeze_register|dataOut\(2) & (!\system_core|freeze_register|dataOut\(3))) # (!\system_core|freeze_register|dataOut\(2) & ((\system_core|freeze_register|dataOut\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(3),
	datab => \system_core|freeze_register|dataOut\(0),
	datac => \system_core|freeze_register|dataOut\(2),
	datad => \system_core|freeze_register|dataOut\(1),
	combout => \system_core|disp_0_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y4_N2
\system_core|disp_0_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_0_decoder|Mux1~0_combout\ = (\system_core|freeze_register|dataOut\(0) & (\system_core|freeze_register|dataOut\(3) $ (((\system_core|freeze_register|dataOut\(1)) # (!\system_core|freeze_register|dataOut\(2)))))) # 
-- (!\system_core|freeze_register|dataOut\(0) & (!\system_core|freeze_register|dataOut\(3) & (!\system_core|freeze_register|dataOut\(2) & \system_core|freeze_register|dataOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(3),
	datab => \system_core|freeze_register|dataOut\(0),
	datac => \system_core|freeze_register|dataOut\(2),
	datad => \system_core|freeze_register|dataOut\(1),
	combout => \system_core|disp_0_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y4_N14
\system_core|disp_0_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_0_decoder|Mux0~0_combout\ = (\system_core|freeze_register|dataOut\(0) & ((\system_core|freeze_register|dataOut\(3)) # (\system_core|freeze_register|dataOut\(2) $ (\system_core|freeze_register|dataOut\(1))))) # 
-- (!\system_core|freeze_register|dataOut\(0) & ((\system_core|freeze_register|dataOut\(1)) # (\system_core|freeze_register|dataOut\(3) $ (\system_core|freeze_register|dataOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(3),
	datab => \system_core|freeze_register|dataOut\(0),
	datac => \system_core|freeze_register|dataOut\(2),
	datad => \system_core|freeze_register|dataOut\(1),
	combout => \system_core|disp_0_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X103_Y4_N22
\system_core|bcd_counter|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~4_combout\ = (!\system_core|bcd_counter|s_count\(4) & \system_core|control_unit|s_currentState.TCleared~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|bcd_counter|s_count\(4),
	datad => \system_core|control_unit|s_currentState.TCleared~q\,
	combout => \system_core|bcd_counter|s_count~4_combout\);

-- Location: LCCOMB_X103_Y4_N4
\system_core|bcd_counter|s_count[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count[4]~5_combout\ = ((!\system_core|control_unit|s_currentState.TlapStopped~q\ & (!\system_core|bcd_counter|Equal0~0_combout\ & !\system_core|control_unit|s_currentState.TStopped~q\))) # 
-- (!\system_core|control_unit|s_currentState.TCleared~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TlapStopped~q\,
	datab => \system_core|bcd_counter|Equal0~0_combout\,
	datac => \system_core|control_unit|s_currentState.TStopped~q\,
	datad => \system_core|control_unit|s_currentState.TCleared~q\,
	combout => \system_core|bcd_counter|s_count[4]~5_combout\);

-- Location: FF_X103_Y4_N23
\system_core|bcd_counter|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~4_combout\,
	ena => \system_core|bcd_counter|s_count[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(4));

-- Location: LCCOMB_X103_Y4_N12
\system_core|bcd_counter|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|Add2~1_combout\ = \system_core|bcd_counter|s_count\(7) $ (((\system_core|bcd_counter|s_count\(5) & (\system_core|bcd_counter|s_count\(4) & \system_core|bcd_counter|s_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(5),
	datab => \system_core|bcd_counter|s_count\(4),
	datac => \system_core|bcd_counter|s_count\(6),
	datad => \system_core|bcd_counter|s_count\(7),
	combout => \system_core|bcd_counter|Add2~1_combout\);

-- Location: LCCOMB_X103_Y4_N0
\system_core|bcd_counter|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~8_combout\ = (\system_core|bcd_counter|Add2~1_combout\ & (\system_core|bcd_counter|Equal1~0_combout\ & \system_core|control_unit|s_currentState.TCleared~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|bcd_counter|Add2~1_combout\,
	datac => \system_core|bcd_counter|Equal1~0_combout\,
	datad => \system_core|control_unit|s_currentState.TCleared~q\,
	combout => \system_core|bcd_counter|s_count~8_combout\);

-- Location: FF_X103_Y4_N1
\system_core|bcd_counter|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~8_combout\,
	ena => \system_core|bcd_counter|s_count[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(7));

-- Location: LCCOMB_X103_Y4_N28
\system_core|bcd_counter|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|Equal1~0_combout\ = (\system_core|bcd_counter|s_count\(5)) # ((\system_core|bcd_counter|s_count\(6)) # ((!\system_core|bcd_counter|s_count\(7)) # (!\system_core|bcd_counter|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(5),
	datab => \system_core|bcd_counter|s_count\(6),
	datac => \system_core|bcd_counter|s_count\(4),
	datad => \system_core|bcd_counter|s_count\(7),
	combout => \system_core|bcd_counter|Equal1~0_combout\);

-- Location: LCCOMB_X103_Y4_N30
\system_core|bcd_counter|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~6_combout\ = (\system_core|bcd_counter|Equal1~0_combout\ & (\system_core|control_unit|s_currentState.TCleared~q\ & (\system_core|bcd_counter|s_count\(4) $ (\system_core|bcd_counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|Equal1~0_combout\,
	datab => \system_core|bcd_counter|s_count\(4),
	datac => \system_core|bcd_counter|s_count\(5),
	datad => \system_core|control_unit|s_currentState.TCleared~q\,
	combout => \system_core|bcd_counter|s_count~6_combout\);

-- Location: FF_X103_Y4_N31
\system_core|bcd_counter|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~6_combout\,
	ena => \system_core|bcd_counter|s_count[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(5));

-- Location: LCCOMB_X103_Y4_N6
\system_core|bcd_counter|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|Add2~0_combout\ = \system_core|bcd_counter|s_count\(6) $ (((\system_core|bcd_counter|s_count\(5) & \system_core|bcd_counter|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(6),
	datac => \system_core|bcd_counter|s_count\(5),
	datad => \system_core|bcd_counter|s_count\(4),
	combout => \system_core|bcd_counter|Add2~0_combout\);

-- Location: LCCOMB_X103_Y4_N8
\system_core|bcd_counter|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~7_combout\ = (\system_core|bcd_counter|Add2~0_combout\ & (\system_core|bcd_counter|Equal1~0_combout\ & \system_core|control_unit|s_currentState.TCleared~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|bcd_counter|Add2~0_combout\,
	datac => \system_core|bcd_counter|Equal1~0_combout\,
	datad => \system_core|control_unit|s_currentState.TCleared~q\,
	combout => \system_core|bcd_counter|s_count~7_combout\);

-- Location: FF_X103_Y4_N9
\system_core|bcd_counter|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~7_combout\,
	ena => \system_core|bcd_counter|s_count[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(6));

-- Location: FF_X103_Y4_N13
\system_core|freeze_register|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(6),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(6));

-- Location: LCCOMB_X103_Y4_N20
\system_core|freeze_register|dataOut[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|freeze_register|dataOut[7]~feeder_combout\ = \system_core|bcd_counter|s_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|bcd_counter|s_count\(7),
	combout => \system_core|freeze_register|dataOut[7]~feeder_combout\);

-- Location: FF_X103_Y4_N21
\system_core|freeze_register|dataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|freeze_register|dataOut[7]~feeder_combout\,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(7));

-- Location: FF_X103_Y4_N7
\system_core|freeze_register|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(5),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(5));

-- Location: FF_X103_Y4_N29
\system_core|freeze_register|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(4),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(4));

-- Location: LCCOMB_X103_Y4_N26
\system_core|disp_1_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_1_decoder|Mux6~0_combout\ = (\system_core|freeze_register|dataOut\(6) & (!\system_core|freeze_register|dataOut\(5) & (\system_core|freeze_register|dataOut\(7) $ (!\system_core|freeze_register|dataOut\(4))))) # 
-- (!\system_core|freeze_register|dataOut\(6) & (\system_core|freeze_register|dataOut\(4) & (\system_core|freeze_register|dataOut\(7) $ (!\system_core|freeze_register|dataOut\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(6),
	datab => \system_core|freeze_register|dataOut\(7),
	datac => \system_core|freeze_register|dataOut\(5),
	datad => \system_core|freeze_register|dataOut\(4),
	combout => \system_core|disp_1_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X103_Y4_N18
\system_core|disp_1_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_1_decoder|Mux5~0_combout\ = (\system_core|freeze_register|dataOut\(7) & ((\system_core|freeze_register|dataOut\(4) & ((\system_core|freeze_register|dataOut\(5)))) # (!\system_core|freeze_register|dataOut\(4) & 
-- (\system_core|freeze_register|dataOut\(6))))) # (!\system_core|freeze_register|dataOut\(7) & (\system_core|freeze_register|dataOut\(6) & (\system_core|freeze_register|dataOut\(5) $ (\system_core|freeze_register|dataOut\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(6),
	datab => \system_core|freeze_register|dataOut\(7),
	datac => \system_core|freeze_register|dataOut\(5),
	datad => \system_core|freeze_register|dataOut\(4),
	combout => \system_core|disp_1_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X103_Y4_N10
\system_core|disp_1_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_1_decoder|Mux4~0_combout\ = (\system_core|freeze_register|dataOut\(6) & (\system_core|freeze_register|dataOut\(7) & ((\system_core|freeze_register|dataOut\(5)) # (!\system_core|freeze_register|dataOut\(4))))) # 
-- (!\system_core|freeze_register|dataOut\(6) & (!\system_core|freeze_register|dataOut\(7) & (\system_core|freeze_register|dataOut\(5) & !\system_core|freeze_register|dataOut\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(6),
	datab => \system_core|freeze_register|dataOut\(7),
	datac => \system_core|freeze_register|dataOut\(5),
	datad => \system_core|freeze_register|dataOut\(4),
	combout => \system_core|disp_1_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X103_Y4_N14
\system_core|disp_1_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_1_decoder|Mux3~0_combout\ = (\system_core|freeze_register|dataOut\(5) & ((\system_core|freeze_register|dataOut\(6) & ((\system_core|freeze_register|dataOut\(4)))) # (!\system_core|freeze_register|dataOut\(6) & 
-- (\system_core|freeze_register|dataOut\(7) & !\system_core|freeze_register|dataOut\(4))))) # (!\system_core|freeze_register|dataOut\(5) & (!\system_core|freeze_register|dataOut\(7) & (\system_core|freeze_register|dataOut\(6) $ 
-- (\system_core|freeze_register|dataOut\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(6),
	datab => \system_core|freeze_register|dataOut\(7),
	datac => \system_core|freeze_register|dataOut\(5),
	datad => \system_core|freeze_register|dataOut\(4),
	combout => \system_core|disp_1_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X103_Y4_N24
\system_core|disp_1_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_1_decoder|Mux2~0_combout\ = (\system_core|freeze_register|dataOut\(5) & (((!\system_core|freeze_register|dataOut\(7) & \system_core|freeze_register|dataOut\(4))))) # (!\system_core|freeze_register|dataOut\(5) & 
-- ((\system_core|freeze_register|dataOut\(6) & (!\system_core|freeze_register|dataOut\(7))) # (!\system_core|freeze_register|dataOut\(6) & ((\system_core|freeze_register|dataOut\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(6),
	datab => \system_core|freeze_register|dataOut\(7),
	datac => \system_core|freeze_register|dataOut\(5),
	datad => \system_core|freeze_register|dataOut\(4),
	combout => \system_core|disp_1_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X103_Y4_N2
\system_core|disp_1_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_1_decoder|Mux1~0_combout\ = (\system_core|freeze_register|dataOut\(6) & (\system_core|freeze_register|dataOut\(4) & (\system_core|freeze_register|dataOut\(7) $ (\system_core|freeze_register|dataOut\(5))))) # 
-- (!\system_core|freeze_register|dataOut\(6) & (!\system_core|freeze_register|dataOut\(7) & ((\system_core|freeze_register|dataOut\(5)) # (\system_core|freeze_register|dataOut\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(6),
	datab => \system_core|freeze_register|dataOut\(7),
	datac => \system_core|freeze_register|dataOut\(5),
	datad => \system_core|freeze_register|dataOut\(4),
	combout => \system_core|disp_1_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X103_Y4_N16
\system_core|disp_1_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_1_decoder|Mux0~0_combout\ = (\system_core|freeze_register|dataOut\(4) & ((\system_core|freeze_register|dataOut\(7)) # (\system_core|freeze_register|dataOut\(6) $ (\system_core|freeze_register|dataOut\(5))))) # 
-- (!\system_core|freeze_register|dataOut\(4) & ((\system_core|freeze_register|dataOut\(5)) # (\system_core|freeze_register|dataOut\(6) $ (\system_core|freeze_register|dataOut\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(6),
	datab => \system_core|freeze_register|dataOut\(7),
	datac => \system_core|freeze_register|dataOut\(5),
	datad => \system_core|freeze_register|dataOut\(4),
	combout => \system_core|disp_1_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X106_Y4_N8
\system_core|bcd_counter|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~9_combout\ = (!\system_core|bcd_counter|s_count\(8) & \system_core|control_unit|s_currentState.TCleared~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|bcd_counter|s_count\(8),
	datad => \system_core|control_unit|s_currentState.TCleared~q\,
	combout => \system_core|bcd_counter|s_count~9_combout\);

-- Location: LCCOMB_X106_Y4_N2
\system_core|bcd_counter|s_count[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count[11]~10_combout\ = (\system_core|bcd_counter|Equal0~0_combout\) # (\system_core|bcd_counter|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|bcd_counter|Equal0~0_combout\,
	datad => \system_core|bcd_counter|Equal1~0_combout\,
	combout => \system_core|bcd_counter|s_count[11]~10_combout\);

-- Location: LCCOMB_X106_Y4_N28
\system_core|bcd_counter|s_count[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count[11]~11_combout\ = ((!\system_core|control_unit|s_currentState.TlapStopped~q\ & (!\system_core|control_unit|s_currentState.TStopped~q\ & !\system_core|bcd_counter|s_count[11]~10_combout\))) # 
-- (!\system_core|control_unit|s_currentState.TCleared~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TlapStopped~q\,
	datab => \system_core|control_unit|s_currentState.TCleared~q\,
	datac => \system_core|control_unit|s_currentState.TStopped~q\,
	datad => \system_core|bcd_counter|s_count[11]~10_combout\,
	combout => \system_core|bcd_counter|s_count[11]~11_combout\);

-- Location: FF_X106_Y4_N9
\system_core|bcd_counter|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~9_combout\,
	ena => \system_core|bcd_counter|s_count[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(8));

-- Location: LCCOMB_X106_Y4_N14
\system_core|bcd_counter|s_count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~13_combout\ = (\system_core|control_unit|s_currentState.TCleared~q\ & (!\system_core|bcd_counter|s_count[11]~12_combout\ & (\system_core|bcd_counter|s_count\(8) $ (\system_core|bcd_counter|s_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(8),
	datab => \system_core|control_unit|s_currentState.TCleared~q\,
	datac => \system_core|bcd_counter|s_count\(9),
	datad => \system_core|bcd_counter|s_count[11]~12_combout\,
	combout => \system_core|bcd_counter|s_count~13_combout\);

-- Location: FF_X106_Y4_N15
\system_core|bcd_counter|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~13_combout\,
	ena => \system_core|bcd_counter|s_count[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(9));

-- Location: LCCOMB_X107_Y4_N6
\system_core|bcd_counter|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|Add1~0_combout\ = \system_core|bcd_counter|s_count\(10) $ (((\system_core|bcd_counter|s_count\(9) & \system_core|bcd_counter|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(9),
	datab => \system_core|bcd_counter|s_count\(10),
	datad => \system_core|bcd_counter|s_count\(8),
	combout => \system_core|bcd_counter|Add1~0_combout\);

-- Location: LCCOMB_X107_Y4_N22
\system_core|bcd_counter|s_count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~14_combout\ = (!\system_core|bcd_counter|s_count[11]~12_combout\ & (\system_core|control_unit|s_currentState.TCleared~q\ & \system_core|bcd_counter|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|bcd_counter|s_count[11]~12_combout\,
	datac => \system_core|control_unit|s_currentState.TCleared~q\,
	datad => \system_core|bcd_counter|Add1~0_combout\,
	combout => \system_core|bcd_counter|s_count~14_combout\);

-- Location: FF_X107_Y4_N23
\system_core|bcd_counter|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~14_combout\,
	ena => \system_core|bcd_counter|s_count[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(10));

-- Location: LCCOMB_X107_Y4_N12
\system_core|bcd_counter|s_count[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count[11]~12_combout\ = (!\system_core|bcd_counter|s_count\(9) & (\system_core|bcd_counter|s_count\(11) & (!\system_core|bcd_counter|s_count\(10) & \system_core|bcd_counter|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(9),
	datab => \system_core|bcd_counter|s_count\(11),
	datac => \system_core|bcd_counter|s_count\(10),
	datad => \system_core|bcd_counter|s_count\(8),
	combout => \system_core|bcd_counter|s_count[11]~12_combout\);

-- Location: LCCOMB_X107_Y4_N10
\system_core|bcd_counter|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|Add1~1_combout\ = \system_core|bcd_counter|s_count\(11) $ (((\system_core|bcd_counter|s_count\(8) & (\system_core|bcd_counter|s_count\(10) & \system_core|bcd_counter|s_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(8),
	datab => \system_core|bcd_counter|s_count\(11),
	datac => \system_core|bcd_counter|s_count\(10),
	datad => \system_core|bcd_counter|s_count\(9),
	combout => \system_core|bcd_counter|Add1~1_combout\);

-- Location: LCCOMB_X107_Y4_N8
\system_core|bcd_counter|s_count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~15_combout\ = (!\system_core|bcd_counter|s_count[11]~12_combout\ & (\system_core|control_unit|s_currentState.TCleared~q\ & \system_core|bcd_counter|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|bcd_counter|s_count[11]~12_combout\,
	datac => \system_core|control_unit|s_currentState.TCleared~q\,
	datad => \system_core|bcd_counter|Add1~1_combout\,
	combout => \system_core|bcd_counter|s_count~15_combout\);

-- Location: FF_X107_Y4_N9
\system_core|bcd_counter|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~15_combout\,
	ena => \system_core|bcd_counter|s_count[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(11));

-- Location: FF_X107_Y4_N7
\system_core|freeze_register|dataOut[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(11),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(11));

-- Location: LCCOMB_X107_Y4_N4
\system_core|freeze_register|dataOut[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|freeze_register|dataOut[8]~feeder_combout\ = \system_core|bcd_counter|s_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_core|bcd_counter|s_count\(8),
	combout => \system_core|freeze_register|dataOut[8]~feeder_combout\);

-- Location: FF_X107_Y4_N5
\system_core|freeze_register|dataOut[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|freeze_register|dataOut[8]~feeder_combout\,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(8));

-- Location: LCCOMB_X107_Y4_N26
\system_core|freeze_register|dataOut[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|freeze_register|dataOut[9]~feeder_combout\ = \system_core|bcd_counter|s_count\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \system_core|bcd_counter|s_count\(9),
	combout => \system_core|freeze_register|dataOut[9]~feeder_combout\);

-- Location: FF_X107_Y4_N27
\system_core|freeze_register|dataOut[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|freeze_register|dataOut[9]~feeder_combout\,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(9));

-- Location: FF_X107_Y4_N13
\system_core|freeze_register|dataOut[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(10),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(10));

-- Location: LCCOMB_X107_Y4_N20
\system_core|disp_2_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_2_decoder|Mux6~0_combout\ = (\system_core|freeze_register|dataOut\(11) & (\system_core|freeze_register|dataOut\(8) & (\system_core|freeze_register|dataOut\(9) $ (\system_core|freeze_register|dataOut\(10))))) # 
-- (!\system_core|freeze_register|dataOut\(11) & (!\system_core|freeze_register|dataOut\(9) & (\system_core|freeze_register|dataOut\(8) $ (\system_core|freeze_register|dataOut\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(11),
	datab => \system_core|freeze_register|dataOut\(8),
	datac => \system_core|freeze_register|dataOut\(9),
	datad => \system_core|freeze_register|dataOut\(10),
	combout => \system_core|disp_2_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X107_Y4_N14
\system_core|disp_2_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_2_decoder|Mux5~0_combout\ = (\system_core|freeze_register|dataOut\(11) & ((\system_core|freeze_register|dataOut\(8) & (\system_core|freeze_register|dataOut\(9))) # (!\system_core|freeze_register|dataOut\(8) & 
-- ((\system_core|freeze_register|dataOut\(10)))))) # (!\system_core|freeze_register|dataOut\(11) & (\system_core|freeze_register|dataOut\(10) & (\system_core|freeze_register|dataOut\(8) $ (\system_core|freeze_register|dataOut\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(11),
	datab => \system_core|freeze_register|dataOut\(8),
	datac => \system_core|freeze_register|dataOut\(9),
	datad => \system_core|freeze_register|dataOut\(10),
	combout => \system_core|disp_2_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y4_N16
\system_core|disp_2_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_2_decoder|Mux4~0_combout\ = (\system_core|freeze_register|dataOut\(11) & (\system_core|freeze_register|dataOut\(10) & ((\system_core|freeze_register|dataOut\(9)) # (!\system_core|freeze_register|dataOut\(8))))) # 
-- (!\system_core|freeze_register|dataOut\(11) & (!\system_core|freeze_register|dataOut\(8) & (\system_core|freeze_register|dataOut\(9) & !\system_core|freeze_register|dataOut\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(11),
	datab => \system_core|freeze_register|dataOut\(8),
	datac => \system_core|freeze_register|dataOut\(9),
	datad => \system_core|freeze_register|dataOut\(10),
	combout => \system_core|disp_2_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y4_N30
\system_core|disp_2_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_2_decoder|Mux3~0_combout\ = (\system_core|freeze_register|dataOut\(9) & ((\system_core|freeze_register|dataOut\(8) & ((\system_core|freeze_register|dataOut\(10)))) # (!\system_core|freeze_register|dataOut\(8) & 
-- (\system_core|freeze_register|dataOut\(11) & !\system_core|freeze_register|dataOut\(10))))) # (!\system_core|freeze_register|dataOut\(9) & (!\system_core|freeze_register|dataOut\(11) & (\system_core|freeze_register|dataOut\(8) $ 
-- (\system_core|freeze_register|dataOut\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(11),
	datab => \system_core|freeze_register|dataOut\(8),
	datac => \system_core|freeze_register|dataOut\(9),
	datad => \system_core|freeze_register|dataOut\(10),
	combout => \system_core|disp_2_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y4_N28
\system_core|disp_2_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_2_decoder|Mux2~0_combout\ = (\system_core|freeze_register|dataOut\(9) & (!\system_core|freeze_register|dataOut\(11) & (\system_core|freeze_register|dataOut\(8)))) # (!\system_core|freeze_register|dataOut\(9) & 
-- ((\system_core|freeze_register|dataOut\(10) & (!\system_core|freeze_register|dataOut\(11))) # (!\system_core|freeze_register|dataOut\(10) & ((\system_core|freeze_register|dataOut\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(11),
	datab => \system_core|freeze_register|dataOut\(8),
	datac => \system_core|freeze_register|dataOut\(9),
	datad => \system_core|freeze_register|dataOut\(10),
	combout => \system_core|disp_2_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y4_N18
\system_core|disp_2_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_2_decoder|Mux1~0_combout\ = (\system_core|freeze_register|dataOut\(8) & (\system_core|freeze_register|dataOut\(11) $ (((\system_core|freeze_register|dataOut\(9)) # (!\system_core|freeze_register|dataOut\(10)))))) # 
-- (!\system_core|freeze_register|dataOut\(8) & (!\system_core|freeze_register|dataOut\(11) & (\system_core|freeze_register|dataOut\(9) & !\system_core|freeze_register|dataOut\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(11),
	datab => \system_core|freeze_register|dataOut\(8),
	datac => \system_core|freeze_register|dataOut\(9),
	datad => \system_core|freeze_register|dataOut\(10),
	combout => \system_core|disp_2_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y4_N24
\system_core|disp_2_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_2_decoder|Mux0~0_combout\ = (\system_core|freeze_register|dataOut\(8) & ((\system_core|freeze_register|dataOut\(11)) # (\system_core|freeze_register|dataOut\(9) $ (\system_core|freeze_register|dataOut\(10))))) # 
-- (!\system_core|freeze_register|dataOut\(8) & ((\system_core|freeze_register|dataOut\(9)) # (\system_core|freeze_register|dataOut\(11) $ (\system_core|freeze_register|dataOut\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(11),
	datab => \system_core|freeze_register|dataOut\(8),
	datac => \system_core|freeze_register|dataOut\(9),
	datad => \system_core|freeze_register|dataOut\(10),
	combout => \system_core|disp_2_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X105_Y4_N22
\system_core|bcd_counter|s_count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~16_combout\ = (\system_core|control_unit|s_currentState.TCleared~q\ & !\system_core|bcd_counter|s_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TCleared~q\,
	datac => \system_core|bcd_counter|s_count\(12),
	combout => \system_core|bcd_counter|s_count~16_combout\);

-- Location: LCCOMB_X106_Y4_N26
\system_core|bcd_counter|s_count[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count[4]~17_combout\ = (!\system_core|control_unit|s_currentState.TStopped~q\ & (!\system_core|bcd_counter|Equal0~0_combout\ & !\system_core|control_unit|s_currentState.TlapStopped~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TStopped~q\,
	datac => \system_core|bcd_counter|Equal0~0_combout\,
	datad => \system_core|control_unit|s_currentState.TlapStopped~q\,
	combout => \system_core|bcd_counter|s_count[4]~17_combout\);

-- Location: LCCOMB_X105_Y4_N14
\system_core|bcd_counter|s_count[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count[12]~18_combout\ = ((!\system_core|bcd_counter|Equal1~0_combout\ & (\system_core|bcd_counter|s_count[11]~12_combout\ & \system_core|bcd_counter|s_count[4]~17_combout\))) # 
-- (!\system_core|control_unit|s_currentState.TCleared~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TCleared~q\,
	datab => \system_core|bcd_counter|Equal1~0_combout\,
	datac => \system_core|bcd_counter|s_count[11]~12_combout\,
	datad => \system_core|bcd_counter|s_count[4]~17_combout\,
	combout => \system_core|bcd_counter|s_count[12]~18_combout\);

-- Location: FF_X105_Y4_N23
\system_core|bcd_counter|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~16_combout\,
	ena => \system_core|bcd_counter|s_count[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(12));

-- Location: LCCOMB_X105_Y4_N4
\system_core|bcd_counter|s_count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~20_combout\ = (\system_core|control_unit|s_currentState.TCleared~q\ & (\system_core|bcd_counter|s_count[12]~19_combout\ & (\system_core|bcd_counter|s_count\(12) $ (\system_core|bcd_counter|s_count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|control_unit|s_currentState.TCleared~q\,
	datab => \system_core|bcd_counter|s_count\(12),
	datac => \system_core|bcd_counter|s_count\(13),
	datad => \system_core|bcd_counter|s_count[12]~19_combout\,
	combout => \system_core|bcd_counter|s_count~20_combout\);

-- Location: FF_X105_Y4_N5
\system_core|bcd_counter|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~20_combout\,
	ena => \system_core|bcd_counter|s_count[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(13));

-- Location: LCCOMB_X105_Y4_N2
\system_core|bcd_counter|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|Add0~1_combout\ = \system_core|bcd_counter|s_count\(15) $ (((\system_core|bcd_counter|s_count\(12) & (\system_core|bcd_counter|s_count\(13) & \system_core|bcd_counter|s_count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(12),
	datab => \system_core|bcd_counter|s_count\(13),
	datac => \system_core|bcd_counter|s_count\(15),
	datad => \system_core|bcd_counter|s_count\(14),
	combout => \system_core|bcd_counter|Add0~1_combout\);

-- Location: LCCOMB_X105_Y4_N8
\system_core|bcd_counter|s_count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~22_combout\ = (\system_core|bcd_counter|s_count[12]~19_combout\ & (\system_core|control_unit|s_currentState.TCleared~q\ & \system_core|bcd_counter|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count[12]~19_combout\,
	datac => \system_core|control_unit|s_currentState.TCleared~q\,
	datad => \system_core|bcd_counter|Add0~1_combout\,
	combout => \system_core|bcd_counter|s_count~22_combout\);

-- Location: FF_X105_Y4_N9
\system_core|bcd_counter|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~22_combout\,
	ena => \system_core|bcd_counter|s_count[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(15));

-- Location: LCCOMB_X105_Y4_N12
\system_core|bcd_counter|s_count[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count[12]~19_combout\ = ((\system_core|bcd_counter|s_count\(14)) # ((\system_core|bcd_counter|s_count\(13)) # (!\system_core|bcd_counter|s_count\(15)))) # (!\system_core|bcd_counter|s_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(12),
	datab => \system_core|bcd_counter|s_count\(14),
	datac => \system_core|bcd_counter|s_count\(13),
	datad => \system_core|bcd_counter|s_count\(15),
	combout => \system_core|bcd_counter|s_count[12]~19_combout\);

-- Location: LCCOMB_X105_Y4_N20
\system_core|bcd_counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|Add0~0_combout\ = \system_core|bcd_counter|s_count\(14) $ (((\system_core|bcd_counter|s_count\(12) & \system_core|bcd_counter|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count\(12),
	datab => \system_core|bcd_counter|s_count\(13),
	datac => \system_core|bcd_counter|s_count\(14),
	combout => \system_core|bcd_counter|Add0~0_combout\);

-- Location: LCCOMB_X105_Y4_N26
\system_core|bcd_counter|s_count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|bcd_counter|s_count~21_combout\ = (\system_core|bcd_counter|s_count[12]~19_combout\ & (\system_core|control_unit|s_currentState.TCleared~q\ & \system_core|bcd_counter|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|bcd_counter|s_count[12]~19_combout\,
	datac => \system_core|control_unit|s_currentState.TCleared~q\,
	datad => \system_core|bcd_counter|Add0~0_combout\,
	combout => \system_core|bcd_counter|s_count~21_combout\);

-- Location: FF_X105_Y4_N27
\system_core|bcd_counter|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_core|clk_divider_500000|clkOut~clkctrl_outclk\,
	d => \system_core|bcd_counter|s_count~21_combout\,
	ena => \system_core|bcd_counter|s_count[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|bcd_counter|s_count\(14));

-- Location: FF_X105_Y4_N21
\system_core|freeze_register|dataOut[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(14),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(14));

-- Location: FF_X105_Y4_N11
\system_core|freeze_register|dataOut[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(13),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(13));

-- Location: FF_X105_Y4_N3
\system_core|freeze_register|dataOut[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(15),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(15));

-- Location: FF_X105_Y4_N1
\system_core|freeze_register|dataOut[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|bcd_counter|s_count\(12),
	sload => VCC,
	ena => \system_core|control_unit|regEnable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|freeze_register|dataOut\(12));

-- Location: LCCOMB_X86_Y4_N28
\system_core|disp_3_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_3_decoder|Mux6~0_combout\ = (\system_core|freeze_register|dataOut\(14) & (!\system_core|freeze_register|dataOut\(13) & (\system_core|freeze_register|dataOut\(15) $ (!\system_core|freeze_register|dataOut\(12))))) # 
-- (!\system_core|freeze_register|dataOut\(14) & (\system_core|freeze_register|dataOut\(12) & (\system_core|freeze_register|dataOut\(13) $ (!\system_core|freeze_register|dataOut\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(14),
	datab => \system_core|freeze_register|dataOut\(13),
	datac => \system_core|freeze_register|dataOut\(15),
	datad => \system_core|freeze_register|dataOut\(12),
	combout => \system_core|disp_3_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X86_Y4_N26
\system_core|disp_3_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_3_decoder|Mux5~0_combout\ = (\system_core|freeze_register|dataOut\(13) & ((\system_core|freeze_register|dataOut\(12) & ((\system_core|freeze_register|dataOut\(15)))) # (!\system_core|freeze_register|dataOut\(12) & 
-- (\system_core|freeze_register|dataOut\(14))))) # (!\system_core|freeze_register|dataOut\(13) & (\system_core|freeze_register|dataOut\(14) & (\system_core|freeze_register|dataOut\(15) $ (\system_core|freeze_register|dataOut\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(14),
	datab => \system_core|freeze_register|dataOut\(13),
	datac => \system_core|freeze_register|dataOut\(15),
	datad => \system_core|freeze_register|dataOut\(12),
	combout => \system_core|disp_3_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X105_Y4_N24
\system_core|disp_3_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_3_decoder|Mux4~0_combout\ = (\system_core|freeze_register|dataOut\(14) & (\system_core|freeze_register|dataOut\(15) & ((\system_core|freeze_register|dataOut\(13)) # (!\system_core|freeze_register|dataOut\(12))))) # 
-- (!\system_core|freeze_register|dataOut\(14) & (\system_core|freeze_register|dataOut\(13) & (!\system_core|freeze_register|dataOut\(15) & !\system_core|freeze_register|dataOut\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(13),
	datab => \system_core|freeze_register|dataOut\(14),
	datac => \system_core|freeze_register|dataOut\(15),
	datad => \system_core|freeze_register|dataOut\(12),
	combout => \system_core|disp_3_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X86_Y4_N20
\system_core|disp_3_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_3_decoder|Mux3~0_combout\ = (\system_core|freeze_register|dataOut\(13) & ((\system_core|freeze_register|dataOut\(14) & ((\system_core|freeze_register|dataOut\(12)))) # (!\system_core|freeze_register|dataOut\(14) & 
-- (\system_core|freeze_register|dataOut\(15) & !\system_core|freeze_register|dataOut\(12))))) # (!\system_core|freeze_register|dataOut\(13) & (!\system_core|freeze_register|dataOut\(15) & (\system_core|freeze_register|dataOut\(14) $ 
-- (\system_core|freeze_register|dataOut\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(14),
	datab => \system_core|freeze_register|dataOut\(13),
	datac => \system_core|freeze_register|dataOut\(15),
	datad => \system_core|freeze_register|dataOut\(12),
	combout => \system_core|disp_3_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X86_Y4_N10
\system_core|disp_3_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_3_decoder|Mux2~0_combout\ = (\system_core|freeze_register|dataOut\(13) & (((!\system_core|freeze_register|dataOut\(15) & \system_core|freeze_register|dataOut\(12))))) # (!\system_core|freeze_register|dataOut\(13) & 
-- ((\system_core|freeze_register|dataOut\(14) & (!\system_core|freeze_register|dataOut\(15))) # (!\system_core|freeze_register|dataOut\(14) & ((\system_core|freeze_register|dataOut\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(14),
	datab => \system_core|freeze_register|dataOut\(13),
	datac => \system_core|freeze_register|dataOut\(15),
	datad => \system_core|freeze_register|dataOut\(12),
	combout => \system_core|disp_3_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X86_Y4_N12
\system_core|disp_3_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_3_decoder|Mux1~0_combout\ = (\system_core|freeze_register|dataOut\(14) & (\system_core|freeze_register|dataOut\(12) & (\system_core|freeze_register|dataOut\(13) $ (\system_core|freeze_register|dataOut\(15))))) # 
-- (!\system_core|freeze_register|dataOut\(14) & (!\system_core|freeze_register|dataOut\(15) & ((\system_core|freeze_register|dataOut\(13)) # (\system_core|freeze_register|dataOut\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(14),
	datab => \system_core|freeze_register|dataOut\(13),
	datac => \system_core|freeze_register|dataOut\(15),
	datad => \system_core|freeze_register|dataOut\(12),
	combout => \system_core|disp_3_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X86_Y4_N22
\system_core|disp_3_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|disp_3_decoder|Mux0~0_combout\ = (\system_core|freeze_register|dataOut\(12) & ((\system_core|freeze_register|dataOut\(15)) # (\system_core|freeze_register|dataOut\(14) $ (\system_core|freeze_register|dataOut\(13))))) # 
-- (!\system_core|freeze_register|dataOut\(12) & ((\system_core|freeze_register|dataOut\(13)) # (\system_core|freeze_register|dataOut\(14) $ (\system_core|freeze_register|dataOut\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|freeze_register|dataOut\(14),
	datab => \system_core|freeze_register|dataOut\(13),
	datac => \system_core|freeze_register|dataOut\(15),
	datad => \system_core|freeze_register|dataOut\(12),
	combout => \system_core|disp_3_decoder|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


