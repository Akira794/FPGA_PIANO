-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/29/2018 17:03:12"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CLOCK IS
    PORT (
	CLK : IN std_logic;
	STARTN : IN std_logic;
	RESETN : IN std_logic;
	S_CHECK : OUT std_logic;
	R_CHECK : OUT std_logic
	);
END CLOCK;

-- Design Ports Information
-- S_CHECK	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_CHECK	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESETN	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STARTN	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CLOCK IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_STARTN : std_logic;
SIGNAL ww_RESETN : std_logic;
SIGNAL ww_S_CHECK : std_logic;
SIGNAL ww_R_CHECK : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \RESETN~input_o\ : std_logic;
SIGNAL \U0|DIVCOUNT[0]~0_combout\ : std_logic;
SIGNAL \U0|DIVCOUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|Add0~5_sumout\ : std_logic;
SIGNAL \U0|Add0~6\ : std_logic;
SIGNAL \U0|Add0~73_sumout\ : std_logic;
SIGNAL \U0|Add0~74\ : std_logic;
SIGNAL \U0|Add0~69_sumout\ : std_logic;
SIGNAL \U0|Add0~70\ : std_logic;
SIGNAL \U0|Add0~65_sumout\ : std_logic;
SIGNAL \U0|Add0~66\ : std_logic;
SIGNAL \U0|Add0~61_sumout\ : std_logic;
SIGNAL \U0|Add0~62\ : std_logic;
SIGNAL \U0|Add0~57_sumout\ : std_logic;
SIGNAL \U0|Add0~58\ : std_logic;
SIGNAL \U0|Add0~53_sumout\ : std_logic;
SIGNAL \U0|Add0~54\ : std_logic;
SIGNAL \U0|Add0~1_sumout\ : std_logic;
SIGNAL \U0|Add0~2\ : std_logic;
SIGNAL \U0|Add0~49_sumout\ : std_logic;
SIGNAL \U0|Add0~50\ : std_logic;
SIGNAL \U0|Add0~45_sumout\ : std_logic;
SIGNAL \U0|DIVCOUNT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|Add0~46\ : std_logic;
SIGNAL \U0|Add0~41_sumout\ : std_logic;
SIGNAL \U0|Add0~42\ : std_logic;
SIGNAL \U0|Add0~37_sumout\ : std_logic;
SIGNAL \U0|DIVCOUNT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|Add0~38\ : std_logic;
SIGNAL \U0|Add0~33_sumout\ : std_logic;
SIGNAL \U0|DIVCOUNT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|Add0~34\ : std_logic;
SIGNAL \U0|Add0~29_sumout\ : std_logic;
SIGNAL \U0|Add0~30\ : std_logic;
SIGNAL \U0|Add0~25_sumout\ : std_logic;
SIGNAL \U0|Add0~26\ : std_logic;
SIGNAL \U0|Add0~21_sumout\ : std_logic;
SIGNAL \U0|Add0~22\ : std_logic;
SIGNAL \U0|Add0~17_sumout\ : std_logic;
SIGNAL \U0|Add0~18\ : std_logic;
SIGNAL \U0|Add0~13_sumout\ : std_logic;
SIGNAL \U0|Add0~14\ : std_logic;
SIGNAL \U0|Add0~9_sumout\ : std_logic;
SIGNAL \U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|Equal0~1_combout\ : std_logic;
SIGNAL \U0|DIVCOUNT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|DIVCOUNT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|Equal0~2_combout\ : std_logic;
SIGNAL \U0|Equal0~3_combout\ : std_logic;
SIGNAL \U0|ENABLE~q\ : std_logic;
SIGNAL \STARTN~input_o\ : std_logic;
SIGNAL \U0|SWBEFOREN~0_combout\ : std_logic;
SIGNAL \U0|SWBEFOREN~q\ : std_logic;
SIGNAL \U0|SWONEN~0_combout\ : std_logic;
SIGNAL \U0|SWONEN~q\ : std_logic;
SIGNAL \U1|SW_FF~0_combout\ : std_logic;
SIGNAL \U1|SW_FF~q\ : std_logic;
SIGNAL \U2|COUNT[23]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|LessThan0~5_combout\ : std_logic;
SIGNAL \U2|Add0~17_sumout\ : std_logic;
SIGNAL \U2|COUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|COUNT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~18\ : std_logic;
SIGNAL \U2|Add0~13_sumout\ : std_logic;
SIGNAL \U2|Add0~6\ : std_logic;
SIGNAL \U2|Add0~1_sumout\ : std_logic;
SIGNAL \U2|COUNT~0_combout\ : std_logic;
SIGNAL \U2|COUNT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~14\ : std_logic;
SIGNAL \U2|Add0~37_sumout\ : std_logic;
SIGNAL \U2|Add0~38\ : std_logic;
SIGNAL \U2|Add0~33_sumout\ : std_logic;
SIGNAL \U2|Add0~34\ : std_logic;
SIGNAL \U2|Add0~29_sumout\ : std_logic;
SIGNAL \U2|Add0~30\ : std_logic;
SIGNAL \U2|Add0~25_sumout\ : std_logic;
SIGNAL \U2|Add0~26\ : std_logic;
SIGNAL \U2|Add0~21_sumout\ : std_logic;
SIGNAL \U2|Add0~22\ : std_logic;
SIGNAL \U2|Add0~9_sumout\ : std_logic;
SIGNAL \U2|COUNT~1_combout\ : std_logic;
SIGNAL \U2|Add0~10\ : std_logic;
SIGNAL \U2|Add0~53_sumout\ : std_logic;
SIGNAL \U2|Add0~54\ : std_logic;
SIGNAL \U2|Add0~49_sumout\ : std_logic;
SIGNAL \U2|Add0~50\ : std_logic;
SIGNAL \U2|Add0~45_sumout\ : std_logic;
SIGNAL \U2|Add0~46\ : std_logic;
SIGNAL \U2|Add0~41_sumout\ : std_logic;
SIGNAL \U2|LessThan0~1_combout\ : std_logic;
SIGNAL \U2|COUNT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|Add0~42\ : std_logic;
SIGNAL \U2|Add0~73_sumout\ : std_logic;
SIGNAL \U2|COUNT~6_combout\ : std_logic;
SIGNAL \U2|Add0~74\ : std_logic;
SIGNAL \U2|Add0~69_sumout\ : std_logic;
SIGNAL \U2|COUNT~5_combout\ : std_logic;
SIGNAL \U2|Add0~70\ : std_logic;
SIGNAL \U2|Add0~65_sumout\ : std_logic;
SIGNAL \U2|COUNT~4_combout\ : std_logic;
SIGNAL \U2|Add0~66\ : std_logic;
SIGNAL \U2|Add0~61_sumout\ : std_logic;
SIGNAL \U2|COUNT~3_combout\ : std_logic;
SIGNAL \U2|LessThan0~3_combout\ : std_logic;
SIGNAL \U2|LessThan0~7_combout\ : std_logic;
SIGNAL \U2|Add0~62\ : std_logic;
SIGNAL \U2|Add0~81_sumout\ : std_logic;
SIGNAL \U2|Add0~82\ : std_logic;
SIGNAL \U2|Add0~57_sumout\ : std_logic;
SIGNAL \U2|COUNT~2_combout\ : std_logic;
SIGNAL \U2|COUNT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~58\ : std_logic;
SIGNAL \U2|Add0~77_sumout\ : std_logic;
SIGNAL \U2|LessThan0~4_combout\ : std_logic;
SIGNAL \U2|Add0~78\ : std_logic;
SIGNAL \U2|Add0~101_sumout\ : std_logic;
SIGNAL \U2|COUNT~11_combout\ : std_logic;
SIGNAL \U2|Add0~102\ : std_logic;
SIGNAL \U2|Add0~97_sumout\ : std_logic;
SIGNAL \U2|COUNT~10_combout\ : std_logic;
SIGNAL \U2|COUNT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~98\ : std_logic;
SIGNAL \U2|Add0~93_sumout\ : std_logic;
SIGNAL \U2|COUNT~9_combout\ : std_logic;
SIGNAL \U2|Add0~94\ : std_logic;
SIGNAL \U2|Add0~89_sumout\ : std_logic;
SIGNAL \U2|COUNT~8_combout\ : std_logic;
SIGNAL \U2|COUNT[22]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~90\ : std_logic;
SIGNAL \U2|Add0~85_sumout\ : std_logic;
SIGNAL \U2|COUNT~7_combout\ : std_logic;
SIGNAL \U2|Add0~86\ : std_logic;
SIGNAL \U2|Add0~5_sumout\ : std_logic;
SIGNAL \U2|LessThan0~2_combout\ : std_logic;
SIGNAL \U2|LessThan0~6_combout\ : std_logic;
SIGNAL \U2|ENABLE~q\ : std_logic;
SIGNAL \U2|COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U0|DIVCOUNT\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U0|ALT_INV_DIVCOUNT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|ALT_INV_DIVCOUNT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|ALT_INV_DIVCOUNT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|ALT_INV_DIVCOUNT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|ALT_INV_DIVCOUNT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|ALT_INV_DIVCOUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[22]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[23]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_STARTN~input_o\ : std_logic;
SIGNAL \U0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U0|ALT_INV_DIVCOUNT\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \U0|ALT_INV_ENABLE~q\ : std_logic;
SIGNAL \U0|ALT_INV_SWBEFOREN~q\ : std_logic;
SIGNAL \U2|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \U2|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U2|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \U2|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \U2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \U0|ALT_INV_SWONEN~q\ : std_logic;
SIGNAL \U1|ALT_INV_SW_FF~q\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_STARTN <= STARTN;
ww_RESETN <= RESETN;
S_CHECK <= ww_S_CHECK;
R_CHECK <= ww_R_CHECK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U0|ALT_INV_DIVCOUNT[3]~DUPLICATE_q\ <= NOT \U0|DIVCOUNT[3]~DUPLICATE_q\;
\U0|ALT_INV_DIVCOUNT[4]~DUPLICATE_q\ <= NOT \U0|DIVCOUNT[4]~DUPLICATE_q\;
\U0|ALT_INV_DIVCOUNT[10]~DUPLICATE_q\ <= NOT \U0|DIVCOUNT[10]~DUPLICATE_q\;
\U0|ALT_INV_DIVCOUNT[12]~DUPLICATE_q\ <= NOT \U0|DIVCOUNT[12]~DUPLICATE_q\;
\U0|ALT_INV_DIVCOUNT[13]~DUPLICATE_q\ <= NOT \U0|DIVCOUNT[13]~DUPLICATE_q\;
\U0|ALT_INV_DIVCOUNT[0]~DUPLICATE_q\ <= NOT \U0|DIVCOUNT[0]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[20]~DUPLICATE_q\ <= NOT \U2|COUNT[20]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[22]~DUPLICATE_q\ <= NOT \U2|COUNT[22]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[23]~DUPLICATE_q\ <= NOT \U2|COUNT[23]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[17]~DUPLICATE_q\ <= NOT \U2|COUNT[17]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[25]~DUPLICATE_q\ <= NOT \U2|COUNT[25]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[4]~DUPLICATE_q\ <= NOT \U2|COUNT[4]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[0]~DUPLICATE_q\ <= NOT \U2|COUNT[0]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[1]~DUPLICATE_q\ <= NOT \U2|COUNT[1]~DUPLICATE_q\;
\ALT_INV_STARTN~input_o\ <= NOT \STARTN~input_o\;
\U0|ALT_INV_Equal0~2_combout\ <= NOT \U0|Equal0~2_combout\;
\U0|ALT_INV_DIVCOUNT\(2) <= NOT \U0|DIVCOUNT\(2);
\U0|ALT_INV_DIVCOUNT\(3) <= NOT \U0|DIVCOUNT\(3);
\U0|ALT_INV_DIVCOUNT\(4) <= NOT \U0|DIVCOUNT\(4);
\U0|ALT_INV_DIVCOUNT\(5) <= NOT \U0|DIVCOUNT\(5);
\U0|ALT_INV_DIVCOUNT\(6) <= NOT \U0|DIVCOUNT\(6);
\U0|ALT_INV_DIVCOUNT\(7) <= NOT \U0|DIVCOUNT\(7);
\U0|ALT_INV_Equal0~1_combout\ <= NOT \U0|Equal0~1_combout\;
\U0|ALT_INV_DIVCOUNT\(9) <= NOT \U0|DIVCOUNT\(9);
\U0|ALT_INV_DIVCOUNT\(10) <= NOT \U0|DIVCOUNT\(10);
\U0|ALT_INV_DIVCOUNT\(11) <= NOT \U0|DIVCOUNT\(11);
\U0|ALT_INV_DIVCOUNT\(12) <= NOT \U0|DIVCOUNT\(12);
\U0|ALT_INV_DIVCOUNT\(13) <= NOT \U0|DIVCOUNT\(13);
\U0|ALT_INV_Equal0~0_combout\ <= NOT \U0|Equal0~0_combout\;
\U0|ALT_INV_DIVCOUNT\(14) <= NOT \U0|DIVCOUNT\(14);
\U0|ALT_INV_DIVCOUNT\(15) <= NOT \U0|DIVCOUNT\(15);
\U0|ALT_INV_DIVCOUNT\(16) <= NOT \U0|DIVCOUNT\(16);
\U0|ALT_INV_DIVCOUNT\(17) <= NOT \U0|DIVCOUNT\(17);
\U0|ALT_INV_DIVCOUNT\(18) <= NOT \U0|DIVCOUNT\(18);
\U0|ALT_INV_DIVCOUNT\(19) <= NOT \U0|DIVCOUNT\(19);
\U0|ALT_INV_DIVCOUNT\(0) <= NOT \U0|DIVCOUNT\(0);
\U0|ALT_INV_DIVCOUNT\(1) <= NOT \U0|DIVCOUNT\(1);
\U0|ALT_INV_DIVCOUNT\(8) <= NOT \U0|DIVCOUNT\(8);
\U2|ALT_INV_LessThan0~7_combout\ <= NOT \U2|LessThan0~7_combout\;
\U0|ALT_INV_ENABLE~q\ <= NOT \U0|ENABLE~q\;
\U0|ALT_INV_SWBEFOREN~q\ <= NOT \U0|SWBEFOREN~q\;
\U2|ALT_INV_LessThan0~6_combout\ <= NOT \U2|LessThan0~6_combout\;
\U2|ALT_INV_LessThan0~5_combout\ <= NOT \U2|LessThan0~5_combout\;
\U2|ALT_INV_COUNT\(19) <= NOT \U2|COUNT\(19);
\U2|ALT_INV_COUNT\(20) <= NOT \U2|COUNT\(20);
\U2|ALT_INV_COUNT\(21) <= NOT \U2|COUNT\(21);
\U2|ALT_INV_COUNT\(22) <= NOT \U2|COUNT\(22);
\U2|ALT_INV_COUNT\(23) <= NOT \U2|COUNT\(23);
\U2|ALT_INV_LessThan0~4_combout\ <= NOT \U2|LessThan0~4_combout\;
\U2|ALT_INV_LessThan0~3_combout\ <= NOT \U2|LessThan0~3_combout\;
\U2|ALT_INV_COUNT\(12) <= NOT \U2|COUNT\(12);
\U2|ALT_INV_COUNT\(13) <= NOT \U2|COUNT\(13);
\U2|ALT_INV_COUNT\(14) <= NOT \U2|COUNT\(14);
\U2|ALT_INV_COUNT\(15) <= NOT \U2|COUNT\(15);
\U2|ALT_INV_COUNT\(17) <= NOT \U2|COUNT\(17);
\U2|ALT_INV_LessThan0~2_combout\ <= NOT \U2|LessThan0~2_combout\;
\U2|ALT_INV_LessThan0~1_combout\ <= NOT \U2|LessThan0~1_combout\;
\U2|ALT_INV_LessThan0~0_combout\ <= NOT \U2|LessThan0~0_combout\;
\U2|ALT_INV_COUNT\(7) <= NOT \U2|COUNT\(7);
\U2|ALT_INV_COUNT\(25) <= NOT \U2|COUNT\(25);
\U0|ALT_INV_SWONEN~q\ <= NOT \U0|SWONEN~q\;
\U1|ALT_INV_SW_FF~q\ <= NOT \U1|SW_FF~q\;
\U2|ALT_INV_Add0~101_sumout\ <= NOT \U2|Add0~101_sumout\;
\U2|ALT_INV_Add0~97_sumout\ <= NOT \U2|Add0~97_sumout\;
\U2|ALT_INV_Add0~93_sumout\ <= NOT \U2|Add0~93_sumout\;
\U2|ALT_INV_Add0~89_sumout\ <= NOT \U2|Add0~89_sumout\;
\U2|ALT_INV_Add0~85_sumout\ <= NOT \U2|Add0~85_sumout\;
\U2|ALT_INV_Add0~73_sumout\ <= NOT \U2|Add0~73_sumout\;
\U2|ALT_INV_Add0~69_sumout\ <= NOT \U2|Add0~69_sumout\;
\U2|ALT_INV_Add0~65_sumout\ <= NOT \U2|Add0~65_sumout\;
\U2|ALT_INV_Add0~61_sumout\ <= NOT \U2|Add0~61_sumout\;
\U2|ALT_INV_Add0~57_sumout\ <= NOT \U2|Add0~57_sumout\;
\U2|ALT_INV_Add0~9_sumout\ <= NOT \U2|Add0~9_sumout\;
\U2|ALT_INV_Add0~1_sumout\ <= NOT \U2|Add0~1_sumout\;
\U2|ALT_INV_COUNT\(16) <= NOT \U2|COUNT\(16);
\U2|ALT_INV_COUNT\(18) <= NOT \U2|COUNT\(18);
\U2|ALT_INV_COUNT\(8) <= NOT \U2|COUNT\(8);
\U2|ALT_INV_COUNT\(9) <= NOT \U2|COUNT\(9);
\U2|ALT_INV_COUNT\(10) <= NOT \U2|COUNT\(10);
\U2|ALT_INV_COUNT\(11) <= NOT \U2|COUNT\(11);
\U2|ALT_INV_COUNT\(2) <= NOT \U2|COUNT\(2);
\U2|ALT_INV_COUNT\(3) <= NOT \U2|COUNT\(3);
\U2|ALT_INV_COUNT\(4) <= NOT \U2|COUNT\(4);
\U2|ALT_INV_COUNT\(5) <= NOT \U2|COUNT\(5);
\U2|ALT_INV_COUNT\(6) <= NOT \U2|COUNT\(6);
\U2|ALT_INV_COUNT\(0) <= NOT \U2|COUNT\(0);
\U2|ALT_INV_COUNT\(1) <= NOT \U2|COUNT\(1);
\U2|ALT_INV_COUNT\(24) <= NOT \U2|COUNT\(24);

-- Location: IOOBUF_X12_Y0_N19
\S_CHECK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|SW_FF~q\,
	devoe => ww_devoe,
	o => ww_S_CHECK);

-- Location: IOOBUF_X0_Y20_N56
\R_CHECK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ENABLE~q\,
	devoe => ww_devoe,
	o => ww_R_CHECK);

-- Location: IOIBUF_X22_Y0_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G6
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X10_Y0_N92
\RESETN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESETN,
	o => \RESETN~input_o\);

-- Location: FF_X17_Y6_N44
\U0|DIVCOUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|DIVCOUNT[0]~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(0));

-- Location: LABCELL_X17_Y6_N42
\U0|DIVCOUNT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|DIVCOUNT[0]~0_combout\ = ( !\U0|DIVCOUNT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U0|ALT_INV_DIVCOUNT\(0),
	combout => \U0|DIVCOUNT[0]~0_combout\);

-- Location: FF_X17_Y6_N43
\U0|DIVCOUNT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|DIVCOUNT[0]~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT[0]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N0
\U0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~5_sumout\ = SUM(( \U0|DIVCOUNT\(0) ) + ( \U0|DIVCOUNT\(1) ) + ( !VCC ))
-- \U0|Add0~6\ = CARRY(( \U0|DIVCOUNT\(0) ) + ( \U0|DIVCOUNT\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(1),
	datad => \U0|ALT_INV_DIVCOUNT\(0),
	cin => GND,
	sumout => \U0|Add0~5_sumout\,
	cout => \U0|Add0~6\);

-- Location: FF_X16_Y6_N2
\U0|DIVCOUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~5_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(1));

-- Location: LABCELL_X16_Y6_N3
\U0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~73_sumout\ = SUM(( \U0|DIVCOUNT\(2) ) + ( GND ) + ( \U0|Add0~6\ ))
-- \U0|Add0~74\ = CARRY(( \U0|DIVCOUNT\(2) ) + ( GND ) + ( \U0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|ALT_INV_DIVCOUNT\(2),
	cin => \U0|Add0~6\,
	sumout => \U0|Add0~73_sumout\,
	cout => \U0|Add0~74\);

-- Location: FF_X16_Y6_N5
\U0|DIVCOUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~73_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(2));

-- Location: LABCELL_X16_Y6_N6
\U0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~69_sumout\ = SUM(( \U0|DIVCOUNT\(3) ) + ( GND ) + ( \U0|Add0~74\ ))
-- \U0|Add0~70\ = CARRY(( \U0|DIVCOUNT\(3) ) + ( GND ) + ( \U0|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|ALT_INV_DIVCOUNT\(3),
	cin => \U0|Add0~74\,
	sumout => \U0|Add0~69_sumout\,
	cout => \U0|Add0~70\);

-- Location: FF_X16_Y6_N7
\U0|DIVCOUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~69_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(3));

-- Location: LABCELL_X16_Y6_N9
\U0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~65_sumout\ = SUM(( \U0|DIVCOUNT\(4) ) + ( GND ) + ( \U0|Add0~70\ ))
-- \U0|Add0~66\ = CARRY(( \U0|DIVCOUNT\(4) ) + ( GND ) + ( \U0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(4),
	cin => \U0|Add0~70\,
	sumout => \U0|Add0~65_sumout\,
	cout => \U0|Add0~66\);

-- Location: FF_X16_Y6_N11
\U0|DIVCOUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~65_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(4));

-- Location: LABCELL_X16_Y6_N12
\U0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~61_sumout\ = SUM(( \U0|DIVCOUNT\(5) ) + ( GND ) + ( \U0|Add0~66\ ))
-- \U0|Add0~62\ = CARRY(( \U0|DIVCOUNT\(5) ) + ( GND ) + ( \U0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|ALT_INV_DIVCOUNT\(5),
	cin => \U0|Add0~66\,
	sumout => \U0|Add0~61_sumout\,
	cout => \U0|Add0~62\);

-- Location: FF_X16_Y6_N14
\U0|DIVCOUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~61_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(5));

-- Location: LABCELL_X16_Y6_N15
\U0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~57_sumout\ = SUM(( \U0|DIVCOUNT\(6) ) + ( GND ) + ( \U0|Add0~62\ ))
-- \U0|Add0~58\ = CARRY(( \U0|DIVCOUNT\(6) ) + ( GND ) + ( \U0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(6),
	cin => \U0|Add0~62\,
	sumout => \U0|Add0~57_sumout\,
	cout => \U0|Add0~58\);

-- Location: FF_X16_Y6_N17
\U0|DIVCOUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~57_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(6));

-- Location: LABCELL_X16_Y6_N18
\U0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~53_sumout\ = SUM(( \U0|DIVCOUNT\(7) ) + ( GND ) + ( \U0|Add0~58\ ))
-- \U0|Add0~54\ = CARRY(( \U0|DIVCOUNT\(7) ) + ( GND ) + ( \U0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(7),
	cin => \U0|Add0~58\,
	sumout => \U0|Add0~53_sumout\,
	cout => \U0|Add0~54\);

-- Location: FF_X16_Y6_N20
\U0|DIVCOUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~53_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(7));

-- Location: LABCELL_X16_Y6_N21
\U0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~1_sumout\ = SUM(( \U0|DIVCOUNT\(8) ) + ( GND ) + ( \U0|Add0~54\ ))
-- \U0|Add0~2\ = CARRY(( \U0|DIVCOUNT\(8) ) + ( GND ) + ( \U0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|ALT_INV_DIVCOUNT\(8),
	cin => \U0|Add0~54\,
	sumout => \U0|Add0~1_sumout\,
	cout => \U0|Add0~2\);

-- Location: FF_X16_Y6_N23
\U0|DIVCOUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~1_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(8));

-- Location: LABCELL_X16_Y6_N24
\U0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~49_sumout\ = SUM(( \U0|DIVCOUNT\(9) ) + ( GND ) + ( \U0|Add0~2\ ))
-- \U0|Add0~50\ = CARRY(( \U0|DIVCOUNT\(9) ) + ( GND ) + ( \U0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(9),
	cin => \U0|Add0~2\,
	sumout => \U0|Add0~49_sumout\,
	cout => \U0|Add0~50\);

-- Location: FF_X16_Y6_N26
\U0|DIVCOUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~49_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(9));

-- Location: LABCELL_X16_Y6_N27
\U0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~45_sumout\ = SUM(( \U0|DIVCOUNT[10]~DUPLICATE_q\ ) + ( GND ) + ( \U0|Add0~50\ ))
-- \U0|Add0~46\ = CARRY(( \U0|DIVCOUNT[10]~DUPLICATE_q\ ) + ( GND ) + ( \U0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|ALT_INV_DIVCOUNT[10]~DUPLICATE_q\,
	cin => \U0|Add0~50\,
	sumout => \U0|Add0~45_sumout\,
	cout => \U0|Add0~46\);

-- Location: FF_X16_Y6_N29
\U0|DIVCOUNT[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~45_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT[10]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N30
\U0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~41_sumout\ = SUM(( \U0|DIVCOUNT\(11) ) + ( GND ) + ( \U0|Add0~46\ ))
-- \U0|Add0~42\ = CARRY(( \U0|DIVCOUNT\(11) ) + ( GND ) + ( \U0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(11),
	cin => \U0|Add0~46\,
	sumout => \U0|Add0~41_sumout\,
	cout => \U0|Add0~42\);

-- Location: FF_X16_Y6_N31
\U0|DIVCOUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~41_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(11));

-- Location: LABCELL_X16_Y6_N33
\U0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~37_sumout\ = SUM(( \U0|DIVCOUNT[12]~DUPLICATE_q\ ) + ( GND ) + ( \U0|Add0~42\ ))
-- \U0|Add0~38\ = CARRY(( \U0|DIVCOUNT[12]~DUPLICATE_q\ ) + ( GND ) + ( \U0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT[12]~DUPLICATE_q\,
	cin => \U0|Add0~42\,
	sumout => \U0|Add0~37_sumout\,
	cout => \U0|Add0~38\);

-- Location: FF_X16_Y6_N35
\U0|DIVCOUNT[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~37_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT[12]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N36
\U0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~33_sumout\ = SUM(( \U0|DIVCOUNT[13]~DUPLICATE_q\ ) + ( GND ) + ( \U0|Add0~38\ ))
-- \U0|Add0~34\ = CARRY(( \U0|DIVCOUNT[13]~DUPLICATE_q\ ) + ( GND ) + ( \U0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|ALT_INV_DIVCOUNT[13]~DUPLICATE_q\,
	cin => \U0|Add0~38\,
	sumout => \U0|Add0~33_sumout\,
	cout => \U0|Add0~34\);

-- Location: FF_X16_Y6_N38
\U0|DIVCOUNT[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~33_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT[13]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N39
\U0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~29_sumout\ = SUM(( \U0|DIVCOUNT\(14) ) + ( GND ) + ( \U0|Add0~34\ ))
-- \U0|Add0~30\ = CARRY(( \U0|DIVCOUNT\(14) ) + ( GND ) + ( \U0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(14),
	cin => \U0|Add0~34\,
	sumout => \U0|Add0~29_sumout\,
	cout => \U0|Add0~30\);

-- Location: FF_X16_Y6_N41
\U0|DIVCOUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~29_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(14));

-- Location: LABCELL_X16_Y6_N42
\U0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~25_sumout\ = SUM(( \U0|DIVCOUNT\(15) ) + ( GND ) + ( \U0|Add0~30\ ))
-- \U0|Add0~26\ = CARRY(( \U0|DIVCOUNT\(15) ) + ( GND ) + ( \U0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|ALT_INV_DIVCOUNT\(15),
	cin => \U0|Add0~30\,
	sumout => \U0|Add0~25_sumout\,
	cout => \U0|Add0~26\);

-- Location: FF_X16_Y6_N43
\U0|DIVCOUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~25_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(15));

-- Location: LABCELL_X16_Y6_N45
\U0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~21_sumout\ = SUM(( \U0|DIVCOUNT\(16) ) + ( GND ) + ( \U0|Add0~26\ ))
-- \U0|Add0~22\ = CARRY(( \U0|DIVCOUNT\(16) ) + ( GND ) + ( \U0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(16),
	cin => \U0|Add0~26\,
	sumout => \U0|Add0~21_sumout\,
	cout => \U0|Add0~22\);

-- Location: FF_X16_Y6_N47
\U0|DIVCOUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~21_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(16));

-- Location: LABCELL_X16_Y6_N48
\U0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~17_sumout\ = SUM(( \U0|DIVCOUNT\(17) ) + ( GND ) + ( \U0|Add0~22\ ))
-- \U0|Add0~18\ = CARRY(( \U0|DIVCOUNT\(17) ) + ( GND ) + ( \U0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(17),
	cin => \U0|Add0~22\,
	sumout => \U0|Add0~17_sumout\,
	cout => \U0|Add0~18\);

-- Location: FF_X16_Y6_N50
\U0|DIVCOUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~17_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(17));

-- Location: LABCELL_X16_Y6_N51
\U0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~13_sumout\ = SUM(( \U0|DIVCOUNT\(18) ) + ( GND ) + ( \U0|Add0~18\ ))
-- \U0|Add0~14\ = CARRY(( \U0|DIVCOUNT\(18) ) + ( GND ) + ( \U0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(18),
	cin => \U0|Add0~18\,
	sumout => \U0|Add0~13_sumout\,
	cout => \U0|Add0~14\);

-- Location: FF_X16_Y6_N52
\U0|DIVCOUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~13_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(18));

-- Location: LABCELL_X16_Y6_N54
\U0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~9_sumout\ = SUM(( \U0|DIVCOUNT\(19) ) + ( GND ) + ( \U0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(19),
	cin => \U0|Add0~14\,
	sumout => \U0|Add0~9_sumout\);

-- Location: FF_X16_Y6_N56
\U0|DIVCOUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~9_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(19));

-- Location: LABCELL_X14_Y6_N6
\U0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~0_combout\ = ( !\U0|DIVCOUNT\(14) & ( !\U0|DIVCOUNT\(17) & ( (!\U0|DIVCOUNT\(18) & (!\U0|DIVCOUNT\(16) & (!\U0|DIVCOUNT\(15) & !\U0|DIVCOUNT\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(18),
	datab => \U0|ALT_INV_DIVCOUNT\(16),
	datac => \U0|ALT_INV_DIVCOUNT\(15),
	datad => \U0|ALT_INV_DIVCOUNT\(19),
	datae => \U0|ALT_INV_DIVCOUNT\(14),
	dataf => \U0|ALT_INV_DIVCOUNT\(17),
	combout => \U0|Equal0~0_combout\);

-- Location: FF_X16_Y6_N28
\U0|DIVCOUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~45_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(10));

-- Location: FF_X16_Y6_N37
\U0|DIVCOUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~33_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(13));

-- Location: FF_X16_Y6_N34
\U0|DIVCOUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~37_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT\(12));

-- Location: LABCELL_X14_Y6_N12
\U0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~1_combout\ = ( !\U0|DIVCOUNT\(13) & ( !\U0|DIVCOUNT\(12) & ( (!\U0|DIVCOUNT\(10) & (!\U0|DIVCOUNT\(9) & !\U0|DIVCOUNT\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(10),
	datab => \U0|ALT_INV_DIVCOUNT\(9),
	datac => \U0|ALT_INV_DIVCOUNT\(11),
	datae => \U0|ALT_INV_DIVCOUNT\(13),
	dataf => \U0|ALT_INV_DIVCOUNT\(12),
	combout => \U0|Equal0~1_combout\);

-- Location: FF_X16_Y6_N10
\U0|DIVCOUNT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~65_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT[4]~DUPLICATE_q\);

-- Location: FF_X16_Y6_N8
\U0|DIVCOUNT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Add0~69_sumout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|DIVCOUNT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y6_N36
\U0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~2_combout\ = ( !\U0|DIVCOUNT\(2) & ( !\U0|DIVCOUNT\(7) & ( (!\U0|DIVCOUNT[4]~DUPLICATE_q\ & (!\U0|DIVCOUNT\(5) & (!\U0|DIVCOUNT\(6) & !\U0|DIVCOUNT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT[4]~DUPLICATE_q\,
	datab => \U0|ALT_INV_DIVCOUNT\(5),
	datac => \U0|ALT_INV_DIVCOUNT\(6),
	datad => \U0|ALT_INV_DIVCOUNT[3]~DUPLICATE_q\,
	datae => \U0|ALT_INV_DIVCOUNT\(2),
	dataf => \U0|ALT_INV_DIVCOUNT\(7),
	combout => \U0|Equal0~2_combout\);

-- Location: LABCELL_X14_Y6_N24
\U0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~3_combout\ = ( \U0|Equal0~1_combout\ & ( \U0|Equal0~2_combout\ & ( (!\U0|DIVCOUNT[0]~DUPLICATE_q\ & (\U0|Equal0~0_combout\ & (!\U0|DIVCOUNT\(8) & !\U0|DIVCOUNT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT[0]~DUPLICATE_q\,
	datab => \U0|ALT_INV_Equal0~0_combout\,
	datac => \U0|ALT_INV_DIVCOUNT\(8),
	datad => \U0|ALT_INV_DIVCOUNT\(1),
	datae => \U0|ALT_INV_Equal0~1_combout\,
	dataf => \U0|ALT_INV_Equal0~2_combout\,
	combout => \U0|Equal0~3_combout\);

-- Location: FF_X14_Y6_N25
\U0|ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Equal0~3_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|ENABLE~q\);

-- Location: IOIBUF_X14_Y0_N18
\STARTN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STARTN,
	o => \STARTN~input_o\);

-- Location: MLABCELL_X13_Y6_N15
\U0|SWBEFOREN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|SWBEFOREN~0_combout\ = ( \U0|ENABLE~q\ & ( !\STARTN~input_o\ ) ) # ( !\U0|ENABLE~q\ & ( \U0|SWBEFOREN~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STARTN~input_o\,
	datad => \U0|ALT_INV_SWBEFOREN~q\,
	dataf => \U0|ALT_INV_ENABLE~q\,
	combout => \U0|SWBEFOREN~0_combout\);

-- Location: FF_X13_Y6_N16
\U0|SWBEFOREN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|SWBEFOREN~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|SWBEFOREN~q\);

-- Location: MLABCELL_X13_Y6_N30
\U0|SWONEN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|SWONEN~0_combout\ = ( !\U0|SWBEFOREN~q\ & ( (\U0|ENABLE~q\ & !\STARTN~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|ALT_INV_ENABLE~q\,
	datac => \ALT_INV_STARTN~input_o\,
	dataf => \U0|ALT_INV_SWBEFOREN~q\,
	combout => \U0|SWONEN~0_combout\);

-- Location: FF_X13_Y6_N32
\U0|SWONEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|SWONEN~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|SWONEN~q\);

-- Location: MLABCELL_X13_Y6_N9
\U1|SW_FF~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|SW_FF~0_combout\ = !\U0|SWONEN~q\ $ (!\U1|SW_FF~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_SWONEN~q\,
	datad => \U1|ALT_INV_SW_FF~q\,
	combout => \U1|SW_FF~0_combout\);

-- Location: FF_X13_Y6_N10
\U1|SW_FF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|SW_FF~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|SW_FF~q\);

-- Location: FF_X13_Y6_N2
\U2|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~10_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(20));

-- Location: FF_X13_Y6_N29
\U2|COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~8_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(22));

-- Location: FF_X13_Y6_N35
\U2|COUNT[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~7_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[23]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y6_N3
\U2|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|LessThan0~5_combout\ = ( !\U2|COUNT[23]~DUPLICATE_q\ & ( (!\U2|COUNT\(20) & (!\U2|COUNT\(19) & (!\U2|COUNT\(21) & !\U2|COUNT\(22)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(20),
	datab => \U2|ALT_INV_COUNT\(19),
	datac => \U2|ALT_INV_COUNT\(21),
	datad => \U2|ALT_INV_COUNT\(22),
	dataf => \U2|ALT_INV_COUNT[23]~DUPLICATE_q\,
	combout => \U2|LessThan0~5_combout\);

-- Location: FF_X14_Y6_N31
\U2|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~17_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(0));

-- Location: LABCELL_X14_Y6_N30
\U2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~17_sumout\ = SUM(( \U2|COUNT\(0) ) + ( VCC ) + ( !VCC ))
-- \U2|Add0~18\ = CARRY(( \U2|COUNT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(0),
	cin => GND,
	sumout => \U2|Add0~17_sumout\,
	cout => \U2|Add0~18\);

-- Location: FF_X14_Y6_N32
\U2|COUNT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~17_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[0]~DUPLICATE_q\);

-- Location: FF_X14_Y6_N34
\U2|COUNT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~13_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[1]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y6_N33
\U2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~13_sumout\ = SUM(( \U2|COUNT[1]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~18\ ))
-- \U2|Add0~14\ = CARRY(( \U2|COUNT[1]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT[1]~DUPLICATE_q\,
	cin => \U2|Add0~18\,
	sumout => \U2|Add0~13_sumout\,
	cout => \U2|Add0~14\);

-- Location: FF_X14_Y6_N35
\U2|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~13_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(1));

-- Location: LABCELL_X14_Y5_N42
\U2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~5_sumout\ = SUM(( \U2|COUNT\(24) ) + ( VCC ) + ( \U2|Add0~86\ ))
-- \U2|Add0~6\ = CARRY(( \U2|COUNT\(24) ) + ( VCC ) + ( \U2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_COUNT\(24),
	cin => \U2|Add0~86\,
	sumout => \U2|Add0~5_sumout\,
	cout => \U2|Add0~6\);

-- Location: LABCELL_X14_Y5_N45
\U2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~1_sumout\ = SUM(( !\U2|COUNT[25]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT[25]~DUPLICATE_q\,
	cin => \U2|Add0~6\,
	sumout => \U2|Add0~1_sumout\);

-- Location: LABCELL_X14_Y5_N48
\U2|COUNT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~0_combout\ = ( !\U2|Add0~1_sumout\ & ( !\U2|LessThan0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_LessThan0~6_combout\,
	dataf => \U2|ALT_INV_Add0~1_sumout\,
	combout => \U2|COUNT~0_combout\);

-- Location: FF_X14_Y5_N49
\U2|COUNT[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[25]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y6_N36
\U2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~37_sumout\ = SUM(( \U2|COUNT\(2) ) + ( VCC ) + ( \U2|Add0~14\ ))
-- \U2|Add0~38\ = CARRY(( \U2|COUNT\(2) ) + ( VCC ) + ( \U2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(2),
	cin => \U2|Add0~14\,
	sumout => \U2|Add0~37_sumout\,
	cout => \U2|Add0~38\);

-- Location: FF_X14_Y6_N38
\U2|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~37_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(2));

-- Location: LABCELL_X14_Y6_N39
\U2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~33_sumout\ = SUM(( \U2|COUNT\(3) ) + ( VCC ) + ( \U2|Add0~38\ ))
-- \U2|Add0~34\ = CARRY(( \U2|COUNT\(3) ) + ( VCC ) + ( \U2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(3),
	cin => \U2|Add0~38\,
	sumout => \U2|Add0~33_sumout\,
	cout => \U2|Add0~34\);

-- Location: FF_X14_Y6_N41
\U2|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~33_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(3));

-- Location: LABCELL_X14_Y6_N42
\U2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~29_sumout\ = SUM(( \U2|COUNT\(4) ) + ( VCC ) + ( \U2|Add0~34\ ))
-- \U2|Add0~30\ = CARRY(( \U2|COUNT\(4) ) + ( VCC ) + ( \U2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(4),
	cin => \U2|Add0~34\,
	sumout => \U2|Add0~29_sumout\,
	cout => \U2|Add0~30\);

-- Location: FF_X14_Y6_N43
\U2|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~29_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(4));

-- Location: LABCELL_X14_Y6_N45
\U2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~25_sumout\ = SUM(( \U2|COUNT\(5) ) + ( VCC ) + ( \U2|Add0~30\ ))
-- \U2|Add0~26\ = CARRY(( \U2|COUNT\(5) ) + ( VCC ) + ( \U2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(5),
	cin => \U2|Add0~30\,
	sumout => \U2|Add0~25_sumout\,
	cout => \U2|Add0~26\);

-- Location: FF_X14_Y6_N47
\U2|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~25_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(5));

-- Location: LABCELL_X14_Y6_N48
\U2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~21_sumout\ = SUM(( \U2|COUNT\(6) ) + ( VCC ) + ( \U2|Add0~26\ ))
-- \U2|Add0~22\ = CARRY(( \U2|COUNT\(6) ) + ( VCC ) + ( \U2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(6),
	cin => \U2|Add0~26\,
	sumout => \U2|Add0~21_sumout\,
	cout => \U2|Add0~22\);

-- Location: FF_X14_Y6_N50
\U2|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~21_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(6));

-- Location: LABCELL_X14_Y6_N51
\U2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~9_sumout\ = SUM(( !\U2|COUNT\(7) ) + ( VCC ) + ( \U2|Add0~22\ ))
-- \U2|Add0~10\ = CARRY(( !\U2|COUNT\(7) ) + ( VCC ) + ( \U2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(7),
	cin => \U2|Add0~22\,
	sumout => \U2|Add0~9_sumout\,
	cout => \U2|Add0~10\);

-- Location: LABCELL_X14_Y6_N0
\U2|COUNT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~1_combout\ = ( \U2|LessThan0~7_combout\ & ( !\U2|Add0~9_sumout\ & ( (!\U2|COUNT[25]~DUPLICATE_q\ & ((\U2|LessThan0~5_combout\) # (\U2|COUNT\(24)))) ) ) ) # ( !\U2|LessThan0~7_combout\ & ( !\U2|Add0~9_sumout\ & ( (!\U2|COUNT[25]~DUPLICATE_q\ & 
-- (((!\U2|LessThan0~4_combout\ & \U2|LessThan0~5_combout\)) # (\U2|COUNT\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010110000001100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_LessThan0~4_combout\,
	datab => \U2|ALT_INV_COUNT\(24),
	datac => \U2|ALT_INV_COUNT[25]~DUPLICATE_q\,
	datad => \U2|ALT_INV_LessThan0~5_combout\,
	datae => \U2|ALT_INV_LessThan0~7_combout\,
	dataf => \U2|ALT_INV_Add0~9_sumout\,
	combout => \U2|COUNT~1_combout\);

-- Location: FF_X14_Y6_N2
\U2|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~1_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(7));

-- Location: LABCELL_X14_Y6_N54
\U2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~53_sumout\ = SUM(( \U2|COUNT\(8) ) + ( VCC ) + ( \U2|Add0~10\ ))
-- \U2|Add0~54\ = CARRY(( \U2|COUNT\(8) ) + ( VCC ) + ( \U2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(8),
	cin => \U2|Add0~10\,
	sumout => \U2|Add0~53_sumout\,
	cout => \U2|Add0~54\);

-- Location: FF_X14_Y6_N56
\U2|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~53_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(8));

-- Location: LABCELL_X14_Y6_N57
\U2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~49_sumout\ = SUM(( \U2|COUNT\(9) ) + ( VCC ) + ( \U2|Add0~54\ ))
-- \U2|Add0~50\ = CARRY(( \U2|COUNT\(9) ) + ( VCC ) + ( \U2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(9),
	cin => \U2|Add0~54\,
	sumout => \U2|Add0~49_sumout\,
	cout => \U2|Add0~50\);

-- Location: FF_X14_Y6_N59
\U2|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~49_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(9));

-- Location: LABCELL_X14_Y5_N0
\U2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~45_sumout\ = SUM(( \U2|COUNT\(10) ) + ( VCC ) + ( \U2|Add0~50\ ))
-- \U2|Add0~46\ = CARRY(( \U2|COUNT\(10) ) + ( VCC ) + ( \U2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(10),
	cin => \U2|Add0~50\,
	sumout => \U2|Add0~45_sumout\,
	cout => \U2|Add0~46\);

-- Location: FF_X14_Y5_N2
\U2|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~45_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(10));

-- Location: LABCELL_X14_Y5_N3
\U2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~41_sumout\ = SUM(( \U2|COUNT\(11) ) + ( VCC ) + ( \U2|Add0~46\ ))
-- \U2|Add0~42\ = CARRY(( \U2|COUNT\(11) ) + ( VCC ) + ( \U2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(11),
	cin => \U2|Add0~46\,
	sumout => \U2|Add0~41_sumout\,
	cout => \U2|Add0~42\);

-- Location: FF_X13_Y6_N41
\U2|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \U2|Add0~41_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(11));

-- Location: MLABCELL_X13_Y6_N12
\U2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|LessThan0~1_combout\ = ( !\U2|COUNT\(11) & ( (!\U2|COUNT\(9) & (!\U2|COUNT\(10) & !\U2|COUNT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_COUNT\(9),
	datac => \U2|ALT_INV_COUNT\(10),
	datad => \U2|ALT_INV_COUNT\(8),
	dataf => \U2|ALT_INV_COUNT\(11),
	combout => \U2|LessThan0~1_combout\);

-- Location: FF_X14_Y6_N44
\U2|COUNT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~29_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[4]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y6_N18
\U2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|LessThan0~0_combout\ = ( !\U2|COUNT\(5) & ( !\U2|COUNT[4]~DUPLICATE_q\ & ( (!\U2|COUNT\(6) & (!\U2|COUNT\(2) & !\U2|COUNT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(6),
	datac => \U2|ALT_INV_COUNT\(2),
	datad => \U2|ALT_INV_COUNT\(3),
	datae => \U2|ALT_INV_COUNT\(5),
	dataf => \U2|ALT_INV_COUNT[4]~DUPLICATE_q\,
	combout => \U2|LessThan0~0_combout\);

-- Location: LABCELL_X14_Y5_N6
\U2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~73_sumout\ = SUM(( !\U2|COUNT\(12) ) + ( VCC ) + ( \U2|Add0~42\ ))
-- \U2|Add0~74\ = CARRY(( !\U2|COUNT\(12) ) + ( VCC ) + ( \U2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(12),
	cin => \U2|Add0~42\,
	sumout => \U2|Add0~73_sumout\,
	cout => \U2|Add0~74\);

-- Location: MLABCELL_X13_Y6_N54
\U2|COUNT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~6_combout\ = ( !\U2|COUNT[25]~DUPLICATE_q\ & ( !\U2|Add0~73_sumout\ & ( ((\U2|LessThan0~5_combout\ & ((!\U2|LessThan0~4_combout\) # (\U2|LessThan0~7_combout\)))) # (\U2|COUNT\(24)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100011111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_LessThan0~5_combout\,
	datab => \U2|ALT_INV_LessThan0~7_combout\,
	datac => \U2|ALT_INV_COUNT\(24),
	datad => \U2|ALT_INV_LessThan0~4_combout\,
	datae => \U2|ALT_INV_COUNT[25]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_Add0~73_sumout\,
	combout => \U2|COUNT~6_combout\);

-- Location: FF_X13_Y6_N56
\U2|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~6_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(12));

-- Location: LABCELL_X14_Y5_N9
\U2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~69_sumout\ = SUM(( !\U2|COUNT\(13) ) + ( VCC ) + ( \U2|Add0~74\ ))
-- \U2|Add0~70\ = CARRY(( !\U2|COUNT\(13) ) + ( VCC ) + ( \U2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(13),
	cin => \U2|Add0~74\,
	sumout => \U2|Add0~69_sumout\,
	cout => \U2|Add0~70\);

-- Location: FF_X14_Y5_N50
\U2|COUNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(25));

-- Location: MLABCELL_X13_Y5_N21
\U2|COUNT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~5_combout\ = ( !\U2|COUNT\(25) & ( \U2|LessThan0~4_combout\ & ( (!\U2|Add0~69_sumout\ & (((\U2|LessThan0~5_combout\ & \U2|LessThan0~7_combout\)) # (\U2|COUNT\(24)))) ) ) ) # ( !\U2|COUNT\(25) & ( !\U2|LessThan0~4_combout\ & ( 
-- (!\U2|Add0~69_sumout\ & ((\U2|COUNT\(24)) # (\U2|LessThan0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000000000000000000000011111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_LessThan0~5_combout\,
	datab => \U2|ALT_INV_LessThan0~7_combout\,
	datac => \U2|ALT_INV_COUNT\(24),
	datad => \U2|ALT_INV_Add0~69_sumout\,
	datae => \U2|ALT_INV_COUNT\(25),
	dataf => \U2|ALT_INV_LessThan0~4_combout\,
	combout => \U2|COUNT~5_combout\);

-- Location: FF_X13_Y5_N22
\U2|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~5_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(13));

-- Location: LABCELL_X14_Y5_N12
\U2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~65_sumout\ = SUM(( !\U2|COUNT\(14) ) + ( VCC ) + ( \U2|Add0~70\ ))
-- \U2|Add0~66\ = CARRY(( !\U2|COUNT\(14) ) + ( VCC ) + ( \U2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(14),
	cin => \U2|Add0~70\,
	sumout => \U2|Add0~65_sumout\,
	cout => \U2|Add0~66\);

-- Location: MLABCELL_X13_Y5_N12
\U2|COUNT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~4_combout\ = ( !\U2|COUNT\(25) & ( \U2|LessThan0~4_combout\ & ( (!\U2|Add0~65_sumout\ & (((\U2|LessThan0~5_combout\ & \U2|LessThan0~7_combout\)) # (\U2|COUNT\(24)))) ) ) ) # ( !\U2|COUNT\(25) & ( !\U2|LessThan0~4_combout\ & ( 
-- (!\U2|Add0~65_sumout\ & ((\U2|COUNT\(24)) # (\U2|LessThan0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000000000000000000000110111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_LessThan0~5_combout\,
	datab => \U2|ALT_INV_COUNT\(24),
	datac => \U2|ALT_INV_LessThan0~7_combout\,
	datad => \U2|ALT_INV_Add0~65_sumout\,
	datae => \U2|ALT_INV_COUNT\(25),
	dataf => \U2|ALT_INV_LessThan0~4_combout\,
	combout => \U2|COUNT~4_combout\);

-- Location: FF_X13_Y5_N13
\U2|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~4_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(14));

-- Location: FF_X14_Y5_N58
\U2|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~2_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(17));

-- Location: LABCELL_X14_Y5_N15
\U2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~61_sumout\ = SUM(( !\U2|COUNT\(15) ) + ( VCC ) + ( \U2|Add0~66\ ))
-- \U2|Add0~62\ = CARRY(( !\U2|COUNT\(15) ) + ( VCC ) + ( \U2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(15),
	cin => \U2|Add0~66\,
	sumout => \U2|Add0~61_sumout\,
	cout => \U2|Add0~62\);

-- Location: MLABCELL_X13_Y6_N57
\U2|COUNT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~3_combout\ = ( !\U2|COUNT[25]~DUPLICATE_q\ & ( !\U2|Add0~61_sumout\ & ( ((\U2|LessThan0~5_combout\ & ((!\U2|LessThan0~4_combout\) # (\U2|LessThan0~7_combout\)))) # (\U2|COUNT\(24)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_LessThan0~5_combout\,
	datab => \U2|ALT_INV_LessThan0~7_combout\,
	datac => \U2|ALT_INV_LessThan0~4_combout\,
	datad => \U2|ALT_INV_COUNT\(24),
	datae => \U2|ALT_INV_COUNT[25]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_Add0~61_sumout\,
	combout => \U2|COUNT~3_combout\);

-- Location: FF_X13_Y6_N58
\U2|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~3_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(15));

-- Location: MLABCELL_X13_Y6_N24
\U2|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|LessThan0~3_combout\ = ( !\U2|COUNT\(15) & ( (!\U2|COUNT\(14) & (!\U2|COUNT\(13) & (!\U2|COUNT\(17) & !\U2|COUNT\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(14),
	datab => \U2|ALT_INV_COUNT\(13),
	datac => \U2|ALT_INV_COUNT\(17),
	datad => \U2|ALT_INV_COUNT\(12),
	dataf => \U2|ALT_INV_COUNT\(15),
	combout => \U2|LessThan0~3_combout\);

-- Location: MLABCELL_X13_Y6_N42
\U2|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|LessThan0~7_combout\ = ( \U2|LessThan0~0_combout\ & ( \U2|LessThan0~3_combout\ & ( (!\U2|LessThan0~1_combout\) # ((!\U2|COUNT\(7) & ((\U2|COUNT\(1)) # (\U2|COUNT[0]~DUPLICATE_q\)))) ) ) ) # ( !\U2|LessThan0~0_combout\ & ( \U2|LessThan0~3_combout\ & ( 
-- (!\U2|COUNT\(7)) # (!\U2|LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100001111111101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT[0]~DUPLICATE_q\,
	datab => \U2|ALT_INV_COUNT\(1),
	datac => \U2|ALT_INV_COUNT\(7),
	datad => \U2|ALT_INV_LessThan0~1_combout\,
	datae => \U2|ALT_INV_LessThan0~0_combout\,
	dataf => \U2|ALT_INV_LessThan0~3_combout\,
	combout => \U2|LessThan0~7_combout\);

-- Location: LABCELL_X14_Y5_N18
\U2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~81_sumout\ = SUM(( \U2|COUNT\(16) ) + ( VCC ) + ( \U2|Add0~62\ ))
-- \U2|Add0~82\ = CARRY(( \U2|COUNT\(16) ) + ( VCC ) + ( \U2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(16),
	cin => \U2|Add0~62\,
	sumout => \U2|Add0~81_sumout\,
	cout => \U2|Add0~82\);

-- Location: FF_X14_Y5_N20
\U2|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~81_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(16));

-- Location: LABCELL_X14_Y5_N21
\U2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~57_sumout\ = SUM(( !\U2|COUNT[17]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~82\ ))
-- \U2|Add0~58\ = CARRY(( !\U2|COUNT[17]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT[17]~DUPLICATE_q\,
	cin => \U2|Add0~82\,
	sumout => \U2|Add0~57_sumout\,
	cout => \U2|Add0~58\);

-- Location: LABCELL_X14_Y5_N57
\U2|COUNT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~2_combout\ = ( !\U2|COUNT[25]~DUPLICATE_q\ & ( !\U2|Add0~57_sumout\ & ( ((\U2|LessThan0~5_combout\ & ((!\U2|LessThan0~4_combout\) # (\U2|LessThan0~7_combout\)))) # (\U2|COUNT\(24)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_LessThan0~4_combout\,
	datab => \U2|ALT_INV_LessThan0~5_combout\,
	datac => \U2|ALT_INV_COUNT\(24),
	datad => \U2|ALT_INV_LessThan0~7_combout\,
	datae => \U2|ALT_INV_COUNT[25]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_Add0~57_sumout\,
	combout => \U2|COUNT~2_combout\);

-- Location: FF_X14_Y5_N59
\U2|COUNT[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~2_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[17]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y5_N24
\U2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~77_sumout\ = SUM(( \U2|COUNT\(18) ) + ( VCC ) + ( \U2|Add0~58\ ))
-- \U2|Add0~78\ = CARRY(( \U2|COUNT\(18) ) + ( VCC ) + ( \U2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(18),
	cin => \U2|Add0~58\,
	sumout => \U2|Add0~77_sumout\,
	cout => \U2|Add0~78\);

-- Location: FF_X14_Y5_N26
\U2|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~77_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(18));

-- Location: LABCELL_X14_Y5_N51
\U2|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|LessThan0~4_combout\ = ( \U2|COUNT\(16) & ( (!\U2|COUNT\(18) & \U2|COUNT[17]~DUPLICATE_q\) ) ) # ( !\U2|COUNT\(16) & ( !\U2|COUNT\(18) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(18),
	datac => \U2|ALT_INV_COUNT[17]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_COUNT\(16),
	combout => \U2|LessThan0~4_combout\);

-- Location: LABCELL_X14_Y5_N27
\U2|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~101_sumout\ = SUM(( !\U2|COUNT\(19) ) + ( VCC ) + ( \U2|Add0~78\ ))
-- \U2|Add0~102\ = CARRY(( !\U2|COUNT\(19) ) + ( VCC ) + ( \U2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(19),
	cin => \U2|Add0~78\,
	sumout => \U2|Add0~101_sumout\,
	cout => \U2|Add0~102\);

-- Location: LABCELL_X14_Y5_N54
\U2|COUNT~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~11_combout\ = ( !\U2|COUNT[25]~DUPLICATE_q\ & ( !\U2|Add0~101_sumout\ & ( ((\U2|LessThan0~5_combout\ & ((!\U2|LessThan0~4_combout\) # (\U2|LessThan0~7_combout\)))) # (\U2|COUNT\(24)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_LessThan0~4_combout\,
	datab => \U2|ALT_INV_LessThan0~5_combout\,
	datac => \U2|ALT_INV_LessThan0~7_combout\,
	datad => \U2|ALT_INV_COUNT\(24),
	datae => \U2|ALT_INV_COUNT[25]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_Add0~101_sumout\,
	combout => \U2|COUNT~11_combout\);

-- Location: FF_X14_Y5_N56
\U2|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~11_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(19));

-- Location: LABCELL_X14_Y5_N30
\U2|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~97_sumout\ = SUM(( !\U2|COUNT[20]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~102\ ))
-- \U2|Add0~98\ = CARRY(( !\U2|COUNT[20]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT[20]~DUPLICATE_q\,
	cin => \U2|Add0~102\,
	sumout => \U2|Add0~97_sumout\,
	cout => \U2|Add0~98\);

-- Location: MLABCELL_X13_Y6_N0
\U2|COUNT~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~10_combout\ = ( !\U2|Add0~97_sumout\ & ( !\U2|LessThan0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_LessThan0~6_combout\,
	dataf => \U2|ALT_INV_Add0~97_sumout\,
	combout => \U2|COUNT~10_combout\);

-- Location: FF_X13_Y6_N1
\U2|COUNT[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~10_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[20]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y5_N33
\U2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~93_sumout\ = SUM(( !\U2|COUNT\(21) ) + ( VCC ) + ( \U2|Add0~98\ ))
-- \U2|Add0~94\ = CARRY(( !\U2|COUNT\(21) ) + ( VCC ) + ( \U2|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(21),
	cin => \U2|Add0~98\,
	sumout => \U2|Add0~93_sumout\,
	cout => \U2|Add0~94\);

-- Location: MLABCELL_X13_Y6_N21
\U2|COUNT~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~9_combout\ = ( !\U2|LessThan0~6_combout\ & ( !\U2|Add0~93_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U2|ALT_INV_LessThan0~6_combout\,
	dataf => \U2|ALT_INV_Add0~93_sumout\,
	combout => \U2|COUNT~9_combout\);

-- Location: FF_X13_Y6_N22
\U2|COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~9_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(21));

-- Location: LABCELL_X14_Y5_N36
\U2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~89_sumout\ = SUM(( !\U2|COUNT[22]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~94\ ))
-- \U2|Add0~90\ = CARRY(( !\U2|COUNT[22]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT[22]~DUPLICATE_q\,
	cin => \U2|Add0~94\,
	sumout => \U2|Add0~89_sumout\,
	cout => \U2|Add0~90\);

-- Location: MLABCELL_X13_Y6_N27
\U2|COUNT~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~8_combout\ = ( !\U2|Add0~89_sumout\ & ( !\U2|LessThan0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_LessThan0~6_combout\,
	dataf => \U2|ALT_INV_Add0~89_sumout\,
	combout => \U2|COUNT~8_combout\);

-- Location: FF_X13_Y6_N28
\U2|COUNT[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~8_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[22]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y5_N39
\U2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~85_sumout\ = SUM(( !\U2|COUNT\(23) ) + ( VCC ) + ( \U2|Add0~90\ ))
-- \U2|Add0~86\ = CARRY(( !\U2|COUNT\(23) ) + ( VCC ) + ( \U2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(23),
	cin => \U2|Add0~90\,
	sumout => \U2|Add0~85_sumout\,
	cout => \U2|Add0~86\);

-- Location: MLABCELL_X13_Y6_N33
\U2|COUNT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT~7_combout\ = ( !\U2|Add0~85_sumout\ & ( !\U2|LessThan0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_LessThan0~6_combout\,
	dataf => \U2|ALT_INV_Add0~85_sumout\,
	combout => \U2|COUNT~7_combout\);

-- Location: FF_X13_Y6_N34
\U2|COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT~7_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(23));

-- Location: FF_X14_Y5_N44
\U2|COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~5_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(24));

-- Location: MLABCELL_X13_Y6_N6
\U2|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|LessThan0~2_combout\ = ( \U2|COUNT\(1) & ( (\U2|LessThan0~1_combout\ & \U2|COUNT\(7)) ) ) # ( !\U2|COUNT\(1) & ( (\U2|LessThan0~1_combout\ & (((\U2|LessThan0~0_combout\ & !\U2|COUNT[0]~DUPLICATE_q\)) # (\U2|COUNT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110011000100000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_LessThan0~0_combout\,
	datab => \U2|ALT_INV_LessThan0~1_combout\,
	datac => \U2|ALT_INV_COUNT[0]~DUPLICATE_q\,
	datad => \U2|ALT_INV_COUNT\(7),
	dataf => \U2|ALT_INV_COUNT\(1),
	combout => \U2|LessThan0~2_combout\);

-- Location: MLABCELL_X13_Y6_N51
\U2|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|LessThan0~6_combout\ = ( \U2|LessThan0~5_combout\ & ( \U2|LessThan0~2_combout\ & ( ((!\U2|COUNT\(24) & \U2|LessThan0~4_combout\)) # (\U2|COUNT[25]~DUPLICATE_q\) ) ) ) # ( !\U2|LessThan0~5_combout\ & ( \U2|LessThan0~2_combout\ & ( (!\U2|COUNT\(24)) # 
-- (\U2|COUNT[25]~DUPLICATE_q\) ) ) ) # ( \U2|LessThan0~5_combout\ & ( !\U2|LessThan0~2_combout\ & ( ((!\U2|COUNT\(24) & (\U2|LessThan0~4_combout\ & !\U2|LessThan0~3_combout\))) # (\U2|COUNT[25]~DUPLICATE_q\) ) ) ) # ( !\U2|LessThan0~5_combout\ & ( 
-- !\U2|LessThan0~2_combout\ & ( (!\U2|COUNT\(24)) # (\U2|COUNT[25]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011001110110011001110111011101110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(24),
	datab => \U2|ALT_INV_COUNT[25]~DUPLICATE_q\,
	datac => \U2|ALT_INV_LessThan0~4_combout\,
	datad => \U2|ALT_INV_LessThan0~3_combout\,
	datae => \U2|ALT_INV_LessThan0~5_combout\,
	dataf => \U2|ALT_INV_LessThan0~2_combout\,
	combout => \U2|LessThan0~6_combout\);

-- Location: FF_X13_Y6_N53
\U2|ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|LessThan0~6_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|ENABLE~q\);

-- Location: MLABCELL_X4_Y29_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


