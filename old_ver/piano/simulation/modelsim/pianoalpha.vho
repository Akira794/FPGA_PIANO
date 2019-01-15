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

-- DATE "12/27/2018 13:13:25"

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

ENTITY 	PIANOALPHA IS
    PORT (
	CLK : IN std_logic;
	PSWITCH : IN std_logic_vector(7 DOWNTO 0);
	RESETN : IN std_logic;
	SPKR : BUFFER std_logic
	);
END PIANOALPHA;

-- Design Ports Information
-- SPKR	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[2]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESETN	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PIANOALPHA IS
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
SIGNAL ww_PSWITCH : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RESETN : std_logic;
SIGNAL ww_SPKR : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \B1|Add0~5_sumout\ : std_logic;
SIGNAL \RESETN~input_o\ : std_logic;
SIGNAL \PSWITCH[7]~input_o\ : std_logic;
SIGNAL \PSWITCH[2]~input_o\ : std_logic;
SIGNAL \PSWITCH[0]~input_o\ : std_logic;
SIGNAL \PSWITCH[1]~input_o\ : std_logic;
SIGNAL \PSWITCH[3]~input_o\ : std_logic;
SIGNAL \S0|Mux1~0_combout\ : std_logic;
SIGNAL \PSWITCH[6]~input_o\ : std_logic;
SIGNAL \PSWITCH[5]~input_o\ : std_logic;
SIGNAL \S0|Mux4~0_combout\ : std_logic;
SIGNAL \PSWITCH[4]~input_o\ : std_logic;
SIGNAL \S0|Mux4~1_combout\ : std_logic;
SIGNAL \S0|Mux1~1_combout\ : std_logic;
SIGNAL \S0|Mux1~2_combout\ : std_logic;
SIGNAL \S0|Mux2~1_combout\ : std_logic;
SIGNAL \S0|Mux2~0_combout\ : std_logic;
SIGNAL \S0|Mux2~2_combout\ : std_logic;
SIGNAL \S0|Mux3~1_combout\ : std_logic;
SIGNAL \S0|Mux3~0_combout\ : std_logic;
SIGNAL \S0|Mux3~2_combout\ : std_logic;
SIGNAL \B1|LessThan0~5_combout\ : std_logic;
SIGNAL \B1|SCALE_BOUT[14]~0_combout\ : std_logic;
SIGNAL \B1|LessThan0~4_combout\ : std_logic;
SIGNAL \B1|Equal8~2_combout\ : std_logic;
SIGNAL \B1|LessThan0~6_combout\ : std_logic;
SIGNAL \B1|Equal8~3_combout\ : std_logic;
SIGNAL \B1|Equal8~4_combout\ : std_logic;
SIGNAL \B1|Equal8~1_combout\ : std_logic;
SIGNAL \B1|Equal8~0_combout\ : std_logic;
SIGNAL \B1|LessThan0~15_combout\ : std_logic;
SIGNAL \B1|Equal8~6_combout\ : std_logic;
SIGNAL \B1|Add0~70\ : std_logic;
SIGNAL \B1|Add0~89_sumout\ : std_logic;
SIGNAL \B1|COUNT[0]~0_combout\ : std_logic;
SIGNAL \B1|Add0~90\ : std_logic;
SIGNAL \B1|Add0~85_sumout\ : std_logic;
SIGNAL \B1|Add0~86\ : std_logic;
SIGNAL \B1|Add0~81_sumout\ : std_logic;
SIGNAL \B1|Add0~82\ : std_logic;
SIGNAL \B1|Add0~77_sumout\ : std_logic;
SIGNAL \B1|Add0~78\ : std_logic;
SIGNAL \B1|Add0~73_sumout\ : std_logic;
SIGNAL \B1|Equal8~5_combout\ : std_logic;
SIGNAL \B1|Equal8~8_combout\ : std_logic;
SIGNAL \B1|Equal8~9_combout\ : std_logic;
SIGNAL \B1|Equal8~10_combout\ : std_logic;
SIGNAL \B1|Add0~6\ : std_logic;
SIGNAL \B1|Add0~1_sumout\ : std_logic;
SIGNAL \B1|Add0~2\ : std_logic;
SIGNAL \B1|Add0~13_sumout\ : std_logic;
SIGNAL \B1|Add0~14\ : std_logic;
SIGNAL \B1|Add0~9_sumout\ : std_logic;
SIGNAL \B1|Add0~10\ : std_logic;
SIGNAL \B1|Add0~21_sumout\ : std_logic;
SIGNAL \B1|COUNT[4]~feeder_combout\ : std_logic;
SIGNAL \B1|Add0~22\ : std_logic;
SIGNAL \B1|Add0~17_sumout\ : std_logic;
SIGNAL \B1|Add0~18\ : std_logic;
SIGNAL \B1|Add0~65_sumout\ : std_logic;
SIGNAL \B1|Add0~66\ : std_logic;
SIGNAL \B1|Add0~61_sumout\ : std_logic;
SIGNAL \B1|Add0~62\ : std_logic;
SIGNAL \B1|Add0~57_sumout\ : std_logic;
SIGNAL \B1|Add0~58\ : std_logic;
SIGNAL \B1|Add0~53_sumout\ : std_logic;
SIGNAL \B1|Add0~54\ : std_logic;
SIGNAL \B1|Add0~49_sumout\ : std_logic;
SIGNAL \B1|Add0~50\ : std_logic;
SIGNAL \B1|Add0~45_sumout\ : std_logic;
SIGNAL \B1|Add0~46\ : std_logic;
SIGNAL \B1|Add0~41_sumout\ : std_logic;
SIGNAL \B1|Add0~42\ : std_logic;
SIGNAL \B1|Add0~37_sumout\ : std_logic;
SIGNAL \B1|Add0~38\ : std_logic;
SIGNAL \B1|Add0~33_sumout\ : std_logic;
SIGNAL \B1|Add0~34\ : std_logic;
SIGNAL \B1|Add0~29_sumout\ : std_logic;
SIGNAL \B1|Add0~30\ : std_logic;
SIGNAL \B1|Add0~25_sumout\ : std_logic;
SIGNAL \B1|Add0~26\ : std_logic;
SIGNAL \B1|Add0~101_sumout\ : std_logic;
SIGNAL \B1|Add0~102\ : std_logic;
SIGNAL \B1|Add0~97_sumout\ : std_logic;
SIGNAL \B1|Add0~98\ : std_logic;
SIGNAL \B1|Add0~93_sumout\ : std_logic;
SIGNAL \B1|Add0~94\ : std_logic;
SIGNAL \B1|Add0~69_sumout\ : std_logic;
SIGNAL \B1|Equal8~7_combout\ : std_logic;
SIGNAL \B1|LessThan0~0_combout\ : std_logic;
SIGNAL \B1|LessThan0~1_combout\ : std_logic;
SIGNAL \B1|LessThan0~2_combout\ : std_logic;
SIGNAL \B1|LessThan0~3_combout\ : std_logic;
SIGNAL \B1|LessThan0~8_combout\ : std_logic;
SIGNAL \B1|LessThan0~7_combout\ : std_logic;
SIGNAL \B1|LessThan0~9_combout\ : std_logic;
SIGNAL \B1|LessThan0~10_combout\ : std_logic;
SIGNAL \B1|LessThan0~12_combout\ : std_logic;
SIGNAL \B1|LessThan0~11_combout\ : std_logic;
SIGNAL \B1|LessThan0~13_combout\ : std_logic;
SIGNAL \B1|LessThan0~14_combout\ : std_logic;
SIGNAL \B1|FLAG~0_combout\ : std_logic;
SIGNAL \B1|FLAG~q\ : std_logic;
SIGNAL \B1|BEEPOUT~0_combout\ : std_logic;
SIGNAL \B1|BEEPOUT~q\ : std_logic;
SIGNAL \B1|COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_RESETN~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[4]~input_o\ : std_logic;
SIGNAL \B1|ALT_INV_Equal8~10_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal8~9_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal8~8_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal8~7_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal8~6_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal8~5_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal8~4_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal8~3_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \B1|ALT_INV_SCALE_BOUT[14]~0_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \B1|ALT_INV_FLAG~q\ : std_logic;
SIGNAL \B1|ALT_INV_BEEPOUT~q\ : std_logic;
SIGNAL \B1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \B1|ALT_INV_COUNT\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_PSWITCH <= PSWITCH;
ww_RESETN <= RESETN;
SPKR <= ww_SPKR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RESETN~input_o\ <= NOT \RESETN~input_o\;
\ALT_INV_PSWITCH[1]~input_o\ <= NOT \PSWITCH[1]~input_o\;
\ALT_INV_PSWITCH[0]~input_o\ <= NOT \PSWITCH[0]~input_o\;
\ALT_INV_PSWITCH[3]~input_o\ <= NOT \PSWITCH[3]~input_o\;
\ALT_INV_PSWITCH[2]~input_o\ <= NOT \PSWITCH[2]~input_o\;
\ALT_INV_PSWITCH[7]~input_o\ <= NOT \PSWITCH[7]~input_o\;
\ALT_INV_PSWITCH[6]~input_o\ <= NOT \PSWITCH[6]~input_o\;
\ALT_INV_PSWITCH[5]~input_o\ <= NOT \PSWITCH[5]~input_o\;
\ALT_INV_PSWITCH[4]~input_o\ <= NOT \PSWITCH[4]~input_o\;
\B1|ALT_INV_Equal8~10_combout\ <= NOT \B1|Equal8~10_combout\;
\B1|ALT_INV_Equal8~9_combout\ <= NOT \B1|Equal8~9_combout\;
\B1|ALT_INV_Equal8~8_combout\ <= NOT \B1|Equal8~8_combout\;
\B1|ALT_INV_LessThan0~15_combout\ <= NOT \B1|LessThan0~15_combout\;
\B1|ALT_INV_LessThan0~14_combout\ <= NOT \B1|LessThan0~14_combout\;
\B1|ALT_INV_Equal8~7_combout\ <= NOT \B1|Equal8~7_combout\;
\B1|ALT_INV_Equal8~6_combout\ <= NOT \B1|Equal8~6_combout\;
\B1|ALT_INV_Equal8~5_combout\ <= NOT \B1|Equal8~5_combout\;
\B1|ALT_INV_LessThan0~13_combout\ <= NOT \B1|LessThan0~13_combout\;
\B1|ALT_INV_LessThan0~12_combout\ <= NOT \B1|LessThan0~12_combout\;
\B1|ALT_INV_LessThan0~11_combout\ <= NOT \B1|LessThan0~11_combout\;
\B1|ALT_INV_LessThan0~10_combout\ <= NOT \B1|LessThan0~10_combout\;
\B1|ALT_INV_LessThan0~9_combout\ <= NOT \B1|LessThan0~9_combout\;
\B1|ALT_INV_LessThan0~8_combout\ <= NOT \B1|LessThan0~8_combout\;
\B1|ALT_INV_LessThan0~7_combout\ <= NOT \B1|LessThan0~7_combout\;
\B1|ALT_INV_Equal8~4_combout\ <= NOT \B1|Equal8~4_combout\;
\B1|ALT_INV_Equal8~3_combout\ <= NOT \B1|Equal8~3_combout\;
\B1|ALT_INV_LessThan0~6_combout\ <= NOT \B1|LessThan0~6_combout\;
\B1|ALT_INV_Equal8~2_combout\ <= NOT \B1|Equal8~2_combout\;
\B1|ALT_INV_LessThan0~5_combout\ <= NOT \B1|LessThan0~5_combout\;
\B1|ALT_INV_LessThan0~4_combout\ <= NOT \B1|LessThan0~4_combout\;
\B1|ALT_INV_SCALE_BOUT[14]~0_combout\ <= NOT \B1|SCALE_BOUT[14]~0_combout\;
\B1|ALT_INV_LessThan0~3_combout\ <= NOT \B1|LessThan0~3_combout\;
\B1|ALT_INV_LessThan0~2_combout\ <= NOT \B1|LessThan0~2_combout\;
\B1|ALT_INV_LessThan0~1_combout\ <= NOT \B1|LessThan0~1_combout\;
\B1|ALT_INV_Equal8~1_combout\ <= NOT \B1|Equal8~1_combout\;
\B1|ALT_INV_Equal8~0_combout\ <= NOT \B1|Equal8~0_combout\;
\B1|ALT_INV_LessThan0~0_combout\ <= NOT \B1|LessThan0~0_combout\;
\S0|ALT_INV_Mux2~2_combout\ <= NOT \S0|Mux2~2_combout\;
\S0|ALT_INV_Mux2~1_combout\ <= NOT \S0|Mux2~1_combout\;
\S0|ALT_INV_Mux2~0_combout\ <= NOT \S0|Mux2~0_combout\;
\S0|ALT_INV_Mux3~2_combout\ <= NOT \S0|Mux3~2_combout\;
\S0|ALT_INV_Mux3~1_combout\ <= NOT \S0|Mux3~1_combout\;
\S0|ALT_INV_Mux3~0_combout\ <= NOT \S0|Mux3~0_combout\;
\S0|ALT_INV_Mux1~2_combout\ <= NOT \S0|Mux1~2_combout\;
\S0|ALT_INV_Mux1~1_combout\ <= NOT \S0|Mux1~1_combout\;
\S0|ALT_INV_Mux4~1_combout\ <= NOT \S0|Mux4~1_combout\;
\S0|ALT_INV_Mux4~0_combout\ <= NOT \S0|Mux4~0_combout\;
\S0|ALT_INV_Mux1~0_combout\ <= NOT \S0|Mux1~0_combout\;
\B1|ALT_INV_FLAG~q\ <= NOT \B1|FLAG~q\;
\B1|ALT_INV_BEEPOUT~q\ <= NOT \B1|BEEPOUT~q\;
\B1|ALT_INV_Add0~21_sumout\ <= NOT \B1|Add0~21_sumout\;
\B1|ALT_INV_COUNT\(17) <= NOT \B1|COUNT\(17);
\B1|ALT_INV_COUNT\(18) <= NOT \B1|COUNT\(18);
\B1|ALT_INV_COUNT\(19) <= NOT \B1|COUNT\(19);
\B1|ALT_INV_COUNT\(21) <= NOT \B1|COUNT\(21);
\B1|ALT_INV_COUNT\(22) <= NOT \B1|COUNT\(22);
\B1|ALT_INV_COUNT\(23) <= NOT \B1|COUNT\(23);
\B1|ALT_INV_COUNT\(24) <= NOT \B1|COUNT\(24);
\B1|ALT_INV_COUNT\(25) <= NOT \B1|COUNT\(25);
\B1|ALT_INV_COUNT\(20) <= NOT \B1|COUNT\(20);
\B1|ALT_INV_COUNT\(6) <= NOT \B1|COUNT\(6);
\B1|ALT_INV_COUNT\(7) <= NOT \B1|COUNT\(7);
\B1|ALT_INV_COUNT\(8) <= NOT \B1|COUNT\(8);
\B1|ALT_INV_COUNT\(9) <= NOT \B1|COUNT\(9);
\B1|ALT_INV_COUNT\(10) <= NOT \B1|COUNT\(10);
\B1|ALT_INV_COUNT\(11) <= NOT \B1|COUNT\(11);
\B1|ALT_INV_COUNT\(12) <= NOT \B1|COUNT\(12);
\B1|ALT_INV_COUNT\(13) <= NOT \B1|COUNT\(13);
\B1|ALT_INV_COUNT\(14) <= NOT \B1|COUNT\(14);
\B1|ALT_INV_COUNT\(15) <= NOT \B1|COUNT\(15);
\B1|ALT_INV_COUNT\(16) <= NOT \B1|COUNT\(16);
\B1|ALT_INV_COUNT\(4) <= NOT \B1|COUNT\(4);
\B1|ALT_INV_COUNT\(5) <= NOT \B1|COUNT\(5);
\B1|ALT_INV_COUNT\(2) <= NOT \B1|COUNT\(2);
\B1|ALT_INV_COUNT\(3) <= NOT \B1|COUNT\(3);
\B1|ALT_INV_COUNT\(0) <= NOT \B1|COUNT\(0);
\B1|ALT_INV_COUNT\(1) <= NOT \B1|COUNT\(1);

-- Location: IOOBUF_X52_Y45_N36
\SPKR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|BEEPOUT~q\,
	devoe => ww_devoe,
	o => ww_SPKR);

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

-- Location: MLABCELL_X42_Y43_N0
\B1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~5_sumout\ = SUM(( \B1|COUNT\(0) ) + ( VCC ) + ( !VCC ))
-- \B1|Add0~6\ = CARRY(( \B1|COUNT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(0),
	cin => GND,
	sumout => \B1|Add0~5_sumout\,
	cout => \B1|Add0~6\);

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

-- Location: IOIBUF_X36_Y45_N52
\PSWITCH[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(7),
	o => \PSWITCH[7]~input_o\);

-- Location: IOIBUF_X48_Y45_N52
\PSWITCH[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(2),
	o => \PSWITCH[2]~input_o\);

-- Location: IOIBUF_X40_Y45_N75
\PSWITCH[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(0),
	o => \PSWITCH[0]~input_o\);

-- Location: IOIBUF_X38_Y45_N35
\PSWITCH[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(1),
	o => \PSWITCH[1]~input_o\);

-- Location: IOIBUF_X50_Y45_N35
\PSWITCH[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(3),
	o => \PSWITCH[3]~input_o\);

-- Location: LABCELL_X40_Y43_N12
\S0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Mux1~0_combout\ = ( !\PSWITCH[1]~input_o\ & ( !\PSWITCH[3]~input_o\ & ( (!\PSWITCH[2]~input_o\ & !\PSWITCH[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PSWITCH[2]~input_o\,
	datac => \ALT_INV_PSWITCH[0]~input_o\,
	datae => \ALT_INV_PSWITCH[1]~input_o\,
	dataf => \ALT_INV_PSWITCH[3]~input_o\,
	combout => \S0|Mux1~0_combout\);

-- Location: IOIBUF_X36_Y45_N35
\PSWITCH[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(6),
	o => \PSWITCH[6]~input_o\);

-- Location: IOIBUF_X42_Y45_N35
\PSWITCH[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(5),
	o => \PSWITCH[5]~input_o\);

-- Location: LABCELL_X40_Y43_N21
\S0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Mux4~0_combout\ = ( !\PSWITCH[1]~input_o\ & ( \PSWITCH[3]~input_o\ & ( (!\PSWITCH[0]~input_o\ & !\PSWITCH[2]~input_o\) ) ) ) # ( \PSWITCH[1]~input_o\ & ( !\PSWITCH[3]~input_o\ & ( (!\PSWITCH[0]~input_o\ & !\PSWITCH[2]~input_o\) ) ) ) # ( 
-- !\PSWITCH[1]~input_o\ & ( !\PSWITCH[3]~input_o\ & ( !\PSWITCH[0]~input_o\ $ (!\PSWITCH[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101000001010000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[0]~input_o\,
	datac => \ALT_INV_PSWITCH[2]~input_o\,
	datae => \ALT_INV_PSWITCH[1]~input_o\,
	dataf => \ALT_INV_PSWITCH[3]~input_o\,
	combout => \S0|Mux4~0_combout\);

-- Location: IOIBUF_X36_Y45_N1
\PSWITCH[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(4),
	o => \PSWITCH[4]~input_o\);

-- Location: LABCELL_X40_Y43_N0
\S0|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Mux4~1_combout\ = ( \S0|Mux4~0_combout\ & ( \PSWITCH[4]~input_o\ & ( (!\PSWITCH[7]~input_o\ & (\S0|Mux1~0_combout\ & (!\PSWITCH[6]~input_o\ & !\PSWITCH[5]~input_o\))) ) ) ) # ( !\S0|Mux4~0_combout\ & ( \PSWITCH[4]~input_o\ & ( (!\PSWITCH[7]~input_o\ & 
-- (\S0|Mux1~0_combout\ & (!\PSWITCH[6]~input_o\ & !\PSWITCH[5]~input_o\))) ) ) ) # ( \S0|Mux4~0_combout\ & ( !\PSWITCH[4]~input_o\ & ( (!\PSWITCH[7]~input_o\ & ((!\S0|Mux1~0_combout\ & (!\PSWITCH[6]~input_o\ & !\PSWITCH[5]~input_o\)) # (\S0|Mux1~0_combout\ 
-- & ((!\PSWITCH[6]~input_o\) # (!\PSWITCH[5]~input_o\))))) # (\PSWITCH[7]~input_o\ & (\S0|Mux1~0_combout\ & (!\PSWITCH[6]~input_o\ & !\PSWITCH[5]~input_o\))) ) ) ) # ( !\S0|Mux4~0_combout\ & ( !\PSWITCH[4]~input_o\ & ( (\S0|Mux1~0_combout\ & 
-- ((!\PSWITCH[7]~input_o\ & (!\PSWITCH[6]~input_o\ $ (!\PSWITCH[5]~input_o\))) # (\PSWITCH[7]~input_o\ & (!\PSWITCH[6]~input_o\ & !\PSWITCH[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100000101100100010000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[7]~input_o\,
	datab => \S0|ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_PSWITCH[6]~input_o\,
	datad => \ALT_INV_PSWITCH[5]~input_o\,
	datae => \S0|ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_PSWITCH[4]~input_o\,
	combout => \S0|Mux4~1_combout\);

-- Location: LABCELL_X40_Y43_N57
\S0|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Mux1~1_combout\ = ( \PSWITCH[4]~input_o\ & ( (!\PSWITCH[7]~input_o\ & (!\PSWITCH[5]~input_o\ & !\PSWITCH[6]~input_o\)) ) ) # ( !\PSWITCH[4]~input_o\ & ( (!\PSWITCH[7]~input_o\ & (!\PSWITCH[5]~input_o\ $ (!\PSWITCH[6]~input_o\))) # 
-- (\PSWITCH[7]~input_o\ & (!\PSWITCH[5]~input_o\ & !\PSWITCH[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100000010110101010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[7]~input_o\,
	datac => \ALT_INV_PSWITCH[5]~input_o\,
	datad => \ALT_INV_PSWITCH[6]~input_o\,
	dataf => \ALT_INV_PSWITCH[4]~input_o\,
	combout => \S0|Mux1~1_combout\);

-- Location: LABCELL_X40_Y43_N27
\S0|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Mux1~2_combout\ = ( \S0|Mux1~1_combout\ & ( \S0|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \S0|ALT_INV_Mux1~1_combout\,
	dataf => \S0|ALT_INV_Mux1~0_combout\,
	combout => \S0|Mux1~2_combout\);

-- Location: LABCELL_X40_Y43_N30
\S0|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Mux2~1_combout\ = ( !\PSWITCH[4]~input_o\ & ( (!\PSWITCH[1]~input_o\ & (!\PSWITCH[5]~input_o\ & !\PSWITCH[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[1]~input_o\,
	datab => \ALT_INV_PSWITCH[5]~input_o\,
	datac => \ALT_INV_PSWITCH[0]~input_o\,
	dataf => \ALT_INV_PSWITCH[4]~input_o\,
	combout => \S0|Mux2~1_combout\);

-- Location: LABCELL_X40_Y43_N39
\S0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Mux2~0_combout\ = ( \PSWITCH[3]~input_o\ & ( (!\PSWITCH[6]~input_o\ & (!\PSWITCH[2]~input_o\ & !\PSWITCH[7]~input_o\)) ) ) # ( !\PSWITCH[3]~input_o\ & ( (!\PSWITCH[6]~input_o\ & (!\PSWITCH[2]~input_o\ $ (!\PSWITCH[7]~input_o\))) # 
-- (\PSWITCH[6]~input_o\ & (!\PSWITCH[2]~input_o\ & !\PSWITCH[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010001000011001101000100010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[6]~input_o\,
	datab => \ALT_INV_PSWITCH[2]~input_o\,
	datad => \ALT_INV_PSWITCH[7]~input_o\,
	dataf => \ALT_INV_PSWITCH[3]~input_o\,
	combout => \S0|Mux2~0_combout\);

-- Location: LABCELL_X40_Y43_N45
\S0|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Mux2~2_combout\ = ( \S0|Mux2~0_combout\ & ( \S0|Mux2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \S0|ALT_INV_Mux2~1_combout\,
	dataf => \S0|ALT_INV_Mux2~0_combout\,
	combout => \S0|Mux2~2_combout\);

-- Location: LABCELL_X40_Y43_N36
\S0|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Mux3~1_combout\ = ( !\PSWITCH[4]~input_o\ & ( (!\PSWITCH[6]~input_o\ & (!\PSWITCH[2]~input_o\ & !\PSWITCH[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[6]~input_o\,
	datab => \ALT_INV_PSWITCH[2]~input_o\,
	datac => \ALT_INV_PSWITCH[0]~input_o\,
	dataf => \ALT_INV_PSWITCH[4]~input_o\,
	combout => \S0|Mux3~1_combout\);

-- Location: LABCELL_X40_Y43_N33
\S0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Mux3~0_combout\ = ( \PSWITCH[3]~input_o\ & ( (!\PSWITCH[1]~input_o\ & (!\PSWITCH[5]~input_o\ & !\PSWITCH[7]~input_o\)) ) ) # ( !\PSWITCH[3]~input_o\ & ( (!\PSWITCH[1]~input_o\ & (!\PSWITCH[5]~input_o\ $ (!\PSWITCH[7]~input_o\))) # 
-- (\PSWITCH[1]~input_o\ & (!\PSWITCH[5]~input_o\ & !\PSWITCH[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010001000011001101000100010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[1]~input_o\,
	datab => \ALT_INV_PSWITCH[5]~input_o\,
	datad => \ALT_INV_PSWITCH[7]~input_o\,
	dataf => \ALT_INV_PSWITCH[3]~input_o\,
	combout => \S0|Mux3~0_combout\);

-- Location: LABCELL_X40_Y43_N54
\S0|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Mux3~2_combout\ = ( \S0|Mux3~0_combout\ & ( \S0|Mux3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \S0|ALT_INV_Mux3~1_combout\,
	dataf => \S0|ALT_INV_Mux3~0_combout\,
	combout => \S0|Mux3~2_combout\);

-- Location: LABCELL_X41_Y42_N21
\B1|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~5_combout\ = ( \S0|Mux3~2_combout\ & ( \B1|COUNT\(12) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux1~2_combout\ & (!\B1|COUNT\(13) & \S0|Mux2~2_combout\)) # (\S0|Mux1~2_combout\ & (!\B1|COUNT\(13) $ (\S0|Mux2~2_combout\))))) ) ) ) # ( 
-- !\S0|Mux3~2_combout\ & ( \B1|COUNT\(12) & ( (\S0|Mux4~1_combout\ & (\B1|COUNT\(13) & !\S0|Mux2~2_combout\)) ) ) ) # ( \S0|Mux3~2_combout\ & ( !\B1|COUNT\(12) & ( (!\B1|COUNT\(13) & ((!\S0|Mux4~1_combout\) # ((!\S0|Mux1~2_combout\ & 
-- !\S0|Mux2~2_combout\)))) ) ) ) # ( !\S0|Mux3~2_combout\ & ( !\B1|COUNT\(12) & ( (!\S0|Mux4~1_combout\ & (((!\B1|COUNT\(13))))) # (\S0|Mux4~1_combout\ & (\S0|Mux2~2_combout\ & (!\S0|Mux1~2_combout\ $ (!\B1|COUNT\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010110100111000001010000000000101000000000001000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux4~1_combout\,
	datab => \S0|ALT_INV_Mux1~2_combout\,
	datac => \B1|ALT_INV_COUNT\(13),
	datad => \S0|ALT_INV_Mux2~2_combout\,
	datae => \S0|ALT_INV_Mux3~2_combout\,
	dataf => \B1|ALT_INV_COUNT\(12),
	combout => \B1|LessThan0~5_combout\);

-- Location: LABCELL_X40_Y43_N48
\B1|SCALE_BOUT[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|SCALE_BOUT[14]~0_combout\ = ( \S0|Mux1~1_combout\ & ( \S0|Mux2~1_combout\ & ( (\S0|Mux2~0_combout\ & ((!\S0|Mux1~0_combout\) # ((\S0|Mux3~1_combout\ & \S0|Mux3~0_combout\)))) ) ) ) # ( !\S0|Mux1~1_combout\ & ( \S0|Mux2~1_combout\ & ( 
-- \S0|Mux2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux3~1_combout\,
	datab => \S0|ALT_INV_Mux2~0_combout\,
	datac => \S0|ALT_INV_Mux3~0_combout\,
	datad => \S0|ALT_INV_Mux1~0_combout\,
	datae => \S0|ALT_INV_Mux1~1_combout\,
	dataf => \S0|ALT_INV_Mux2~1_combout\,
	combout => \B1|SCALE_BOUT[14]~0_combout\);

-- Location: LABCELL_X41_Y42_N12
\B1|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~4_combout\ = ( \B1|COUNT\(15) & ( \B1|COUNT\(14) & ( (!\B1|SCALE_BOUT[14]~0_combout\ & (\S0|Mux1~2_combout\ & (\S0|Mux4~1_combout\ & !\B1|COUNT\(16)))) ) ) ) # ( !\B1|COUNT\(15) & ( \B1|COUNT\(14) & ( (!\B1|SCALE_BOUT[14]~0_combout\ & 
-- (!\S0|Mux1~2_combout\ & (\S0|Mux4~1_combout\ & \B1|COUNT\(16)))) ) ) ) # ( \B1|COUNT\(15) & ( !\B1|COUNT\(14) & ( (\B1|SCALE_BOUT[14]~0_combout\ & (\S0|Mux1~2_combout\ & (\S0|Mux4~1_combout\ & !\B1|COUNT\(16)))) ) ) ) # ( !\B1|COUNT\(15) & ( 
-- !\B1|COUNT\(14) & ( (!\S0|Mux4~1_combout\ & (((!\B1|COUNT\(16))))) # (\S0|Mux4~1_combout\ & (\B1|SCALE_BOUT[14]~0_combout\ & (!\S0|Mux1~2_combout\ & \B1|COUNT\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000100000000010000000000000000000010000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_SCALE_BOUT[14]~0_combout\,
	datab => \S0|ALT_INV_Mux1~2_combout\,
	datac => \S0|ALT_INV_Mux4~1_combout\,
	datad => \B1|ALT_INV_COUNT\(16),
	datae => \B1|ALT_INV_COUNT\(15),
	dataf => \B1|ALT_INV_COUNT\(14),
	combout => \B1|LessThan0~4_combout\);

-- Location: LABCELL_X41_Y42_N0
\B1|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal8~2_combout\ = ( \S0|Mux3~2_combout\ & ( \B1|COUNT\(10) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux2~2_combout\ & ((\B1|COUNT\(11)))) # (\S0|Mux2~2_combout\ & (!\S0|Mux1~2_combout\ & !\B1|COUNT\(11))))) ) ) ) # ( !\S0|Mux3~2_combout\ & ( \B1|COUNT\(10) 
-- & ( (!\B1|COUNT\(11) & (\S0|Mux4~1_combout\ & (!\S0|Mux2~2_combout\ $ (\S0|Mux1~2_combout\)))) ) ) ) # ( \S0|Mux3~2_combout\ & ( !\B1|COUNT\(10) & ( (!\B1|COUNT\(11) & (((!\S0|Mux4~1_combout\)))) # (\B1|COUNT\(11) & (\S0|Mux2~2_combout\ & 
-- (\S0|Mux1~2_combout\ & \S0|Mux4~1_combout\))) ) ) ) # ( !\S0|Mux3~2_combout\ & ( !\B1|COUNT\(10) & ( (!\B1|COUNT\(11) & (((!\S0|Mux4~1_combout\)))) # (\B1|COUNT\(11) & (\S0|Mux4~1_combout\ & (!\S0|Mux2~2_combout\ $ (!\S0|Mux1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000110111100000000000100000000100100000000000001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux2~2_combout\,
	datab => \S0|ALT_INV_Mux1~2_combout\,
	datac => \B1|ALT_INV_COUNT\(11),
	datad => \S0|ALT_INV_Mux4~1_combout\,
	datae => \S0|ALT_INV_Mux3~2_combout\,
	dataf => \B1|ALT_INV_COUNT\(10),
	combout => \B1|Equal8~2_combout\);

-- Location: MLABCELL_X42_Y43_N36
\B1|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~6_combout\ = ( \B1|COUNT\(9) & ( \B1|COUNT\(8) & ( (\S0|Mux2~2_combout\ & (!\S0|Mux1~2_combout\ & (\S0|Mux4~1_combout\ & \S0|Mux3~2_combout\))) ) ) ) # ( !\B1|COUNT\(9) & ( \B1|COUNT\(8) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux3~2_combout\ & 
-- ((\S0|Mux1~2_combout\))) # (\S0|Mux3~2_combout\ & (!\S0|Mux2~2_combout\)))) ) ) ) # ( \B1|COUNT\(9) & ( !\B1|COUNT\(8) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux2~2_combout\ & (!\S0|Mux1~2_combout\ & !\S0|Mux3~2_combout\)) # (\S0|Mux2~2_combout\ & 
-- (\S0|Mux1~2_combout\ & \S0|Mux3~2_combout\)))) ) ) ) # ( !\B1|COUNT\(9) & ( !\B1|COUNT\(8) & ( (!\S0|Mux4~1_combout\) # ((\S0|Mux2~2_combout\ & (!\S0|Mux1~2_combout\ & !\S0|Mux3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010011110000000010000000000100000011000010100000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux2~2_combout\,
	datab => \S0|ALT_INV_Mux1~2_combout\,
	datac => \S0|ALT_INV_Mux4~1_combout\,
	datad => \S0|ALT_INV_Mux3~2_combout\,
	datae => \B1|ALT_INV_COUNT\(9),
	dataf => \B1|ALT_INV_COUNT\(8),
	combout => \B1|LessThan0~6_combout\);

-- Location: MLABCELL_X42_Y43_N42
\B1|Equal8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal8~3_combout\ = ( \B1|COUNT\(7) & ( \B1|COUNT\(6) & ( (\S0|Mux4~1_combout\ & (!\S0|Mux2~2_combout\ $ (!\S0|Mux1~2_combout\))) ) ) ) # ( !\B1|COUNT\(7) & ( \B1|COUNT\(6) & ( (!\S0|Mux2~2_combout\ & (!\S0|Mux1~2_combout\ & (\S0|Mux4~1_combout\ & 
-- \S0|Mux3~2_combout\))) ) ) ) # ( \B1|COUNT\(7) & ( !\B1|COUNT\(6) & ( (\S0|Mux2~2_combout\ & (\S0|Mux1~2_combout\ & \S0|Mux4~1_combout\)) ) ) ) # ( !\B1|COUNT\(7) & ( !\B1|COUNT\(6) & ( (!\S0|Mux4~1_combout\) # ((!\S0|Mux2~2_combout\ & 
-- (!\S0|Mux1~2_combout\ & !\S0|Mux3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110000000000010000000100000000000010000000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux2~2_combout\,
	datab => \S0|ALT_INV_Mux1~2_combout\,
	datac => \S0|ALT_INV_Mux4~1_combout\,
	datad => \S0|ALT_INV_Mux3~2_combout\,
	datae => \B1|ALT_INV_COUNT\(7),
	dataf => \B1|ALT_INV_COUNT\(6),
	combout => \B1|Equal8~3_combout\);

-- Location: LABCELL_X41_Y42_N30
\B1|Equal8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal8~4_combout\ = ( \B1|Equal8~3_combout\ & ( (\B1|LessThan0~5_combout\ & (\B1|LessThan0~4_combout\ & (\B1|Equal8~2_combout\ & \B1|LessThan0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_LessThan0~5_combout\,
	datab => \B1|ALT_INV_LessThan0~4_combout\,
	datac => \B1|ALT_INV_Equal8~2_combout\,
	datad => \B1|ALT_INV_LessThan0~6_combout\,
	dataf => \B1|ALT_INV_Equal8~3_combout\,
	combout => \B1|Equal8~4_combout\);

-- Location: LABCELL_X41_Y43_N18
\B1|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal8~1_combout\ = ( \S0|Mux1~2_combout\ & ( \B1|COUNT\(5) & ( (\S0|Mux4~1_combout\ & ((!\B1|COUNT\(4) & (\S0|Mux2~2_combout\ & !\S0|Mux3~2_combout\)) # (\B1|COUNT\(4) & ((\S0|Mux3~2_combout\))))) ) ) ) # ( !\S0|Mux1~2_combout\ & ( \B1|COUNT\(5) & ( 
-- (!\S0|Mux2~2_combout\ & (\S0|Mux4~1_combout\ & (!\B1|COUNT\(4) & !\S0|Mux3~2_combout\))) ) ) ) # ( \S0|Mux1~2_combout\ & ( !\B1|COUNT\(5) & ( (!\B1|COUNT\(4) & ((!\S0|Mux4~1_combout\) # ((!\S0|Mux2~2_combout\ & !\S0|Mux3~2_combout\)))) ) ) ) # ( 
-- !\S0|Mux1~2_combout\ & ( !\B1|COUNT\(5) & ( (!\S0|Mux2~2_combout\ & (!\B1|COUNT\(4) & ((!\S0|Mux4~1_combout\) # (\S0|Mux3~2_combout\)))) # (\S0|Mux2~2_combout\ & (!\S0|Mux4~1_combout\ $ ((\B1|COUNT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111100001111000001100000000100000000000000001000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux2~2_combout\,
	datab => \S0|ALT_INV_Mux4~1_combout\,
	datac => \B1|ALT_INV_COUNT\(4),
	datad => \S0|ALT_INV_Mux3~2_combout\,
	datae => \S0|ALT_INV_Mux1~2_combout\,
	dataf => \B1|ALT_INV_COUNT\(5),
	combout => \B1|Equal8~1_combout\);

-- Location: LABCELL_X41_Y43_N42
\B1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal8~0_combout\ = ( \B1|COUNT\(3) & ( \B1|COUNT\(2) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux2~2_combout\ & (\S0|Mux3~2_combout\ & !\S0|Mux1~2_combout\)) # (\S0|Mux2~2_combout\ & (!\S0|Mux3~2_combout\ & \S0|Mux1~2_combout\)))) ) ) ) # ( \B1|COUNT\(3) & 
-- ( !\B1|COUNT\(2) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux2~2_combout\ & (!\S0|Mux3~2_combout\ & !\S0|Mux1~2_combout\)) # (\S0|Mux2~2_combout\ & (\S0|Mux3~2_combout\ & \S0|Mux1~2_combout\)))) ) ) ) # ( !\B1|COUNT\(3) & ( !\B1|COUNT\(2) & ( 
-- (!\S0|Mux4~1_combout\) # (!\S0|Mux2~2_combout\ $ (!\S0|Mux1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111101110001000000000000100000000000000000000001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux2~2_combout\,
	datab => \S0|ALT_INV_Mux4~1_combout\,
	datac => \S0|ALT_INV_Mux3~2_combout\,
	datad => \S0|ALT_INV_Mux1~2_combout\,
	datae => \B1|ALT_INV_COUNT\(3),
	dataf => \B1|ALT_INV_COUNT\(2),
	combout => \B1|Equal8~0_combout\);

-- Location: LABCELL_X41_Y43_N36
\B1|LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~15_combout\ = ( \B1|COUNT\(1) & ( (!\S0|Mux4~1_combout\) # ((!\S0|Mux2~2_combout\ & ((!\S0|Mux1~2_combout\))) # (\S0|Mux2~2_combout\ & (\S0|Mux3~2_combout\))) ) ) # ( !\B1|COUNT\(1) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux2~2_combout\ & 
-- ((\S0|Mux1~2_combout\))) # (\S0|Mux2~2_combout\ & (!\S0|Mux3~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110010111011111100110100010000001100101110111111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux2~2_combout\,
	datab => \S0|ALT_INV_Mux4~1_combout\,
	datac => \S0|ALT_INV_Mux3~2_combout\,
	datad => \S0|ALT_INV_Mux1~2_combout\,
	datae => \B1|ALT_INV_COUNT\(1),
	combout => \B1|LessThan0~15_combout\);

-- Location: LABCELL_X41_Y42_N33
\B1|Equal8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal8~6_combout\ = ( !\B1|COUNT\(18) & ( (!\B1|COUNT\(17) & !\B1|COUNT\(19)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(17),
	datad => \B1|ALT_INV_COUNT\(19),
	dataf => \B1|ALT_INV_COUNT\(18),
	combout => \B1|Equal8~6_combout\);

-- Location: MLABCELL_X42_Y42_N30
\B1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~69_sumout\ = SUM(( \B1|COUNT\(20) ) + ( GND ) + ( \B1|Add0~94\ ))
-- \B1|Add0~70\ = CARRY(( \B1|COUNT\(20) ) + ( GND ) + ( \B1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(20),
	cin => \B1|Add0~94\,
	sumout => \B1|Add0~69_sumout\,
	cout => \B1|Add0~70\);

-- Location: MLABCELL_X42_Y42_N33
\B1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~89_sumout\ = SUM(( \B1|COUNT\(21) ) + ( GND ) + ( \B1|Add0~70\ ))
-- \B1|Add0~90\ = CARRY(( \B1|COUNT\(21) ) + ( GND ) + ( \B1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(21),
	cin => \B1|Add0~70\,
	sumout => \B1|Add0~89_sumout\,
	cout => \B1|Add0~90\);

-- Location: LABCELL_X41_Y42_N27
\B1|COUNT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|COUNT[0]~0_combout\ = ( \B1|LessThan0~14_combout\ & ( \S0|Mux4~1_combout\ ) ) # ( !\B1|LessThan0~14_combout\ & ( (\B1|Equal8~10_combout\ & \S0|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_Equal8~10_combout\,
	datad => \S0|ALT_INV_Mux4~1_combout\,
	dataf => \B1|ALT_INV_LessThan0~14_combout\,
	combout => \B1|COUNT[0]~0_combout\);

-- Location: FF_X42_Y42_N35
\B1|COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~89_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(21));

-- Location: MLABCELL_X42_Y42_N36
\B1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~85_sumout\ = SUM(( \B1|COUNT\(22) ) + ( GND ) + ( \B1|Add0~90\ ))
-- \B1|Add0~86\ = CARRY(( \B1|COUNT\(22) ) + ( GND ) + ( \B1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(22),
	cin => \B1|Add0~90\,
	sumout => \B1|Add0~85_sumout\,
	cout => \B1|Add0~86\);

-- Location: FF_X42_Y42_N38
\B1|COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~85_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(22));

-- Location: MLABCELL_X42_Y42_N39
\B1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~81_sumout\ = SUM(( \B1|COUNT\(23) ) + ( GND ) + ( \B1|Add0~86\ ))
-- \B1|Add0~82\ = CARRY(( \B1|COUNT\(23) ) + ( GND ) + ( \B1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(23),
	cin => \B1|Add0~86\,
	sumout => \B1|Add0~81_sumout\,
	cout => \B1|Add0~82\);

-- Location: FF_X42_Y42_N41
\B1|COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~81_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(23));

-- Location: MLABCELL_X42_Y42_N42
\B1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~77_sumout\ = SUM(( \B1|COUNT\(24) ) + ( GND ) + ( \B1|Add0~82\ ))
-- \B1|Add0~78\ = CARRY(( \B1|COUNT\(24) ) + ( GND ) + ( \B1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(24),
	cin => \B1|Add0~82\,
	sumout => \B1|Add0~77_sumout\,
	cout => \B1|Add0~78\);

-- Location: FF_X42_Y42_N44
\B1|COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~77_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(24));

-- Location: MLABCELL_X42_Y42_N45
\B1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~73_sumout\ = SUM(( \B1|COUNT\(25) ) + ( GND ) + ( \B1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(25),
	cin => \B1|Add0~78\,
	sumout => \B1|Add0~73_sumout\);

-- Location: FF_X42_Y42_N47
\B1|COUNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~73_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(25));

-- Location: MLABCELL_X42_Y42_N48
\B1|Equal8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal8~5_combout\ = ( !\B1|COUNT\(25) & ( !\B1|COUNT\(24) & ( (!\B1|COUNT\(22) & (!\B1|COUNT\(21) & !\B1|COUNT\(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(22),
	datac => \B1|ALT_INV_COUNT\(21),
	datad => \B1|ALT_INV_COUNT\(23),
	datae => \B1|ALT_INV_COUNT\(25),
	dataf => \B1|ALT_INV_COUNT\(24),
	combout => \B1|Equal8~5_combout\);

-- Location: MLABCELL_X42_Y43_N30
\B1|Equal8~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal8~8_combout\ = ( \B1|COUNT\(0) & ( \S0|Mux1~2_combout\ & ( (!\S0|Mux2~2_combout\) # (!\S0|Mux4~1_combout\) ) ) ) # ( !\B1|COUNT\(0) & ( \S0|Mux1~2_combout\ & ( (\S0|Mux2~2_combout\ & \S0|Mux4~1_combout\) ) ) ) # ( \B1|COUNT\(0) & ( 
-- !\S0|Mux1~2_combout\ & ( (!\S0|Mux4~1_combout\) # ((!\S0|Mux2~2_combout\ & \S0|Mux3~2_combout\)) ) ) ) # ( !\B1|COUNT\(0) & ( !\S0|Mux1~2_combout\ & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux3~2_combout\) # (\S0|Mux2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101111100101111001000000101000001011111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux2~2_combout\,
	datab => \S0|ALT_INV_Mux3~2_combout\,
	datac => \S0|ALT_INV_Mux4~1_combout\,
	datae => \B1|ALT_INV_COUNT\(0),
	dataf => \S0|ALT_INV_Mux1~2_combout\,
	combout => \B1|Equal8~8_combout\);

-- Location: LABCELL_X41_Y42_N51
\B1|Equal8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal8~9_combout\ = ( \B1|Equal8~5_combout\ & ( !\B1|Equal8~8_combout\ & ( (\B1|Equal8~0_combout\ & (!\B1|COUNT\(20) & (!\B1|LessThan0~15_combout\ & \B1|Equal8~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Equal8~0_combout\,
	datab => \B1|ALT_INV_COUNT\(20),
	datac => \B1|ALT_INV_LessThan0~15_combout\,
	datad => \B1|ALT_INV_Equal8~6_combout\,
	datae => \B1|ALT_INV_Equal8~5_combout\,
	dataf => \B1|ALT_INV_Equal8~8_combout\,
	combout => \B1|Equal8~9_combout\);

-- Location: LABCELL_X41_Y42_N39
\B1|Equal8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal8~10_combout\ = ( \B1|Equal8~9_combout\ & ( (\B1|Equal8~4_combout\ & \B1|Equal8~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_Equal8~4_combout\,
	datad => \B1|ALT_INV_Equal8~1_combout\,
	dataf => \B1|ALT_INV_Equal8~9_combout\,
	combout => \B1|Equal8~10_combout\);

-- Location: FF_X42_Y43_N2
\B1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~5_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(0));

-- Location: MLABCELL_X42_Y43_N3
\B1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~1_sumout\ = SUM(( \B1|COUNT\(1) ) + ( GND ) + ( \B1|Add0~6\ ))
-- \B1|Add0~2\ = CARRY(( \B1|COUNT\(1) ) + ( GND ) + ( \B1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(1),
	cin => \B1|Add0~6\,
	sumout => \B1|Add0~1_sumout\,
	cout => \B1|Add0~2\);

-- Location: FF_X41_Y43_N29
\B1|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~1_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	sload => VCC,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(1));

-- Location: MLABCELL_X42_Y43_N6
\B1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~13_sumout\ = SUM(( \B1|COUNT\(2) ) + ( GND ) + ( \B1|Add0~2\ ))
-- \B1|Add0~14\ = CARRY(( \B1|COUNT\(2) ) + ( GND ) + ( \B1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(2),
	cin => \B1|Add0~2\,
	sumout => \B1|Add0~13_sumout\,
	cout => \B1|Add0~14\);

-- Location: FF_X41_Y43_N41
\B1|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~13_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	sload => VCC,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(2));

-- Location: MLABCELL_X42_Y43_N9
\B1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~9_sumout\ = SUM(( \B1|COUNT\(3) ) + ( GND ) + ( \B1|Add0~14\ ))
-- \B1|Add0~10\ = CARRY(( \B1|COUNT\(3) ) + ( GND ) + ( \B1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(3),
	cin => \B1|Add0~14\,
	sumout => \B1|Add0~9_sumout\,
	cout => \B1|Add0~10\);

-- Location: FF_X41_Y43_N5
\B1|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~9_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	sload => VCC,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(3));

-- Location: MLABCELL_X42_Y43_N12
\B1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~21_sumout\ = SUM(( \B1|COUNT\(4) ) + ( GND ) + ( \B1|Add0~10\ ))
-- \B1|Add0~22\ = CARRY(( \B1|COUNT\(4) ) + ( GND ) + ( \B1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(4),
	cin => \B1|Add0~10\,
	sumout => \B1|Add0~21_sumout\,
	cout => \B1|Add0~22\);

-- Location: LABCELL_X41_Y43_N48
\B1|COUNT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|COUNT[4]~feeder_combout\ = ( \B1|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \B1|ALT_INV_Add0~21_sumout\,
	combout => \B1|COUNT[4]~feeder_combout\);

-- Location: FF_X41_Y43_N50
\B1|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|COUNT[4]~feeder_combout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(4));

-- Location: MLABCELL_X42_Y43_N15
\B1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~17_sumout\ = SUM(( \B1|COUNT\(5) ) + ( GND ) + ( \B1|Add0~22\ ))
-- \B1|Add0~18\ = CARRY(( \B1|COUNT\(5) ) + ( GND ) + ( \B1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(5),
	cin => \B1|Add0~22\,
	sumout => \B1|Add0~17_sumout\,
	cout => \B1|Add0~18\);

-- Location: FF_X41_Y43_N35
\B1|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~17_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	sload => VCC,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(5));

-- Location: MLABCELL_X42_Y43_N18
\B1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~65_sumout\ = SUM(( \B1|COUNT\(6) ) + ( GND ) + ( \B1|Add0~18\ ))
-- \B1|Add0~66\ = CARRY(( \B1|COUNT\(6) ) + ( GND ) + ( \B1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(6),
	cin => \B1|Add0~18\,
	sumout => \B1|Add0~65_sumout\,
	cout => \B1|Add0~66\);

-- Location: FF_X42_Y43_N20
\B1|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~65_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(6));

-- Location: MLABCELL_X42_Y43_N21
\B1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~61_sumout\ = SUM(( \B1|COUNT\(7) ) + ( GND ) + ( \B1|Add0~66\ ))
-- \B1|Add0~62\ = CARRY(( \B1|COUNT\(7) ) + ( GND ) + ( \B1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(7),
	cin => \B1|Add0~66\,
	sumout => \B1|Add0~61_sumout\,
	cout => \B1|Add0~62\);

-- Location: FF_X42_Y43_N23
\B1|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~61_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(7));

-- Location: MLABCELL_X42_Y43_N24
\B1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~57_sumout\ = SUM(( \B1|COUNT\(8) ) + ( GND ) + ( \B1|Add0~62\ ))
-- \B1|Add0~58\ = CARRY(( \B1|COUNT\(8) ) + ( GND ) + ( \B1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(8),
	cin => \B1|Add0~62\,
	sumout => \B1|Add0~57_sumout\,
	cout => \B1|Add0~58\);

-- Location: FF_X42_Y43_N26
\B1|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~57_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(8));

-- Location: MLABCELL_X42_Y43_N27
\B1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~53_sumout\ = SUM(( \B1|COUNT\(9) ) + ( GND ) + ( \B1|Add0~58\ ))
-- \B1|Add0~54\ = CARRY(( \B1|COUNT\(9) ) + ( GND ) + ( \B1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(9),
	cin => \B1|Add0~58\,
	sumout => \B1|Add0~53_sumout\,
	cout => \B1|Add0~54\);

-- Location: FF_X42_Y43_N29
\B1|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~53_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(9));

-- Location: MLABCELL_X42_Y42_N0
\B1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~49_sumout\ = SUM(( \B1|COUNT\(10) ) + ( GND ) + ( \B1|Add0~54\ ))
-- \B1|Add0~50\ = CARRY(( \B1|COUNT\(10) ) + ( GND ) + ( \B1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(10),
	cin => \B1|Add0~54\,
	sumout => \B1|Add0~49_sumout\,
	cout => \B1|Add0~50\);

-- Location: FF_X41_Y42_N50
\B1|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~49_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	sload => VCC,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(10));

-- Location: MLABCELL_X42_Y42_N3
\B1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~45_sumout\ = SUM(( \B1|COUNT\(11) ) + ( GND ) + ( \B1|Add0~50\ ))
-- \B1|Add0~46\ = CARRY(( \B1|COUNT\(11) ) + ( GND ) + ( \B1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(11),
	cin => \B1|Add0~50\,
	sumout => \B1|Add0~45_sumout\,
	cout => \B1|Add0~46\);

-- Location: FF_X41_Y42_N20
\B1|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~45_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	sload => VCC,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(11));

-- Location: MLABCELL_X42_Y42_N6
\B1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~41_sumout\ = SUM(( \B1|COUNT\(12) ) + ( GND ) + ( \B1|Add0~46\ ))
-- \B1|Add0~42\ = CARRY(( \B1|COUNT\(12) ) + ( GND ) + ( \B1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(12),
	cin => \B1|Add0~46\,
	sumout => \B1|Add0~41_sumout\,
	cout => \B1|Add0~42\);

-- Location: FF_X41_Y42_N8
\B1|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~41_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	sload => VCC,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(12));

-- Location: MLABCELL_X42_Y42_N9
\B1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~37_sumout\ = SUM(( \B1|COUNT\(13) ) + ( GND ) + ( \B1|Add0~42\ ))
-- \B1|Add0~38\ = CARRY(( \B1|COUNT\(13) ) + ( GND ) + ( \B1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(13),
	cin => \B1|Add0~42\,
	sumout => \B1|Add0~37_sumout\,
	cout => \B1|Add0~38\);

-- Location: FF_X41_Y42_N17
\B1|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~37_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	sload => VCC,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(13));

-- Location: MLABCELL_X42_Y42_N12
\B1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~33_sumout\ = SUM(( \B1|COUNT\(14) ) + ( GND ) + ( \B1|Add0~38\ ))
-- \B1|Add0~34\ = CARRY(( \B1|COUNT\(14) ) + ( GND ) + ( \B1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(14),
	cin => \B1|Add0~38\,
	sumout => \B1|Add0~33_sumout\,
	cout => \B1|Add0~34\);

-- Location: FF_X42_Y42_N14
\B1|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~33_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(14));

-- Location: MLABCELL_X42_Y42_N15
\B1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~29_sumout\ = SUM(( \B1|COUNT\(15) ) + ( GND ) + ( \B1|Add0~34\ ))
-- \B1|Add0~30\ = CARRY(( \B1|COUNT\(15) ) + ( GND ) + ( \B1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(15),
	cin => \B1|Add0~34\,
	sumout => \B1|Add0~29_sumout\,
	cout => \B1|Add0~30\);

-- Location: FF_X42_Y42_N17
\B1|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~29_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(15));

-- Location: MLABCELL_X42_Y42_N18
\B1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~25_sumout\ = SUM(( \B1|COUNT\(16) ) + ( GND ) + ( \B1|Add0~30\ ))
-- \B1|Add0~26\ = CARRY(( \B1|COUNT\(16) ) + ( GND ) + ( \B1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(16),
	cin => \B1|Add0~30\,
	sumout => \B1|Add0~25_sumout\,
	cout => \B1|Add0~26\);

-- Location: FF_X42_Y42_N20
\B1|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~25_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(16));

-- Location: MLABCELL_X42_Y42_N21
\B1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~101_sumout\ = SUM(( \B1|COUNT\(17) ) + ( GND ) + ( \B1|Add0~26\ ))
-- \B1|Add0~102\ = CARRY(( \B1|COUNT\(17) ) + ( GND ) + ( \B1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(17),
	cin => \B1|Add0~26\,
	sumout => \B1|Add0~101_sumout\,
	cout => \B1|Add0~102\);

-- Location: FF_X42_Y42_N23
\B1|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~101_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(17));

-- Location: MLABCELL_X42_Y42_N24
\B1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~97_sumout\ = SUM(( \B1|COUNT\(18) ) + ( GND ) + ( \B1|Add0~102\ ))
-- \B1|Add0~98\ = CARRY(( \B1|COUNT\(18) ) + ( GND ) + ( \B1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(18),
	cin => \B1|Add0~102\,
	sumout => \B1|Add0~97_sumout\,
	cout => \B1|Add0~98\);

-- Location: FF_X42_Y42_N26
\B1|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~97_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(18));

-- Location: MLABCELL_X42_Y42_N27
\B1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~93_sumout\ = SUM(( \B1|COUNT\(19) ) + ( GND ) + ( \B1|Add0~98\ ))
-- \B1|Add0~94\ = CARRY(( \B1|COUNT\(19) ) + ( GND ) + ( \B1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(19),
	cin => \B1|Add0~98\,
	sumout => \B1|Add0~93_sumout\,
	cout => \B1|Add0~94\);

-- Location: FF_X42_Y42_N29
\B1|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~93_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(19));

-- Location: FF_X42_Y42_N32
\B1|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~69_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal8~10_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(20));

-- Location: LABCELL_X41_Y42_N57
\B1|Equal8~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal8~7_combout\ = ( \B1|Equal8~6_combout\ & ( (!\B1|COUNT\(20) & \B1|Equal8~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(20),
	datad => \B1|ALT_INV_Equal8~5_combout\,
	dataf => \B1|ALT_INV_Equal8~6_combout\,
	combout => \B1|Equal8~7_combout\);

-- Location: LABCELL_X41_Y43_N24
\B1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~0_combout\ = ( !\B1|COUNT\(0) & ( \B1|COUNT\(1) & ( (!\S0|Mux3~2_combout\ & (\S0|Mux4~1_combout\ & \S0|Mux2~2_combout\)) ) ) ) # ( \B1|COUNT\(0) & ( !\B1|COUNT\(1) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux2~2_combout\ & ((\S0|Mux1~2_combout\))) 
-- # (\S0|Mux2~2_combout\ & (!\S0|Mux3~2_combout\)))) ) ) ) # ( !\B1|COUNT\(0) & ( !\B1|COUNT\(1) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux3~2_combout\) # ((\S0|Mux1~2_combout\) # (\S0|Mux2~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011000000100011001000000010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux3~2_combout\,
	datab => \S0|ALT_INV_Mux4~1_combout\,
	datac => \S0|ALT_INV_Mux2~2_combout\,
	datad => \S0|ALT_INV_Mux1~2_combout\,
	datae => \B1|ALT_INV_COUNT\(0),
	dataf => \B1|ALT_INV_COUNT\(1),
	combout => \B1|LessThan0~0_combout\);

-- Location: LABCELL_X41_Y43_N54
\B1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~1_combout\ = ( !\B1|COUNT\(3) & ( \B1|COUNT\(2) & ( (\S0|Mux4~1_combout\ & (!\S0|Mux2~2_combout\ $ (\S0|Mux1~2_combout\))) ) ) ) # ( \B1|COUNT\(3) & ( !\B1|COUNT\(2) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux2~2_combout\ & (\S0|Mux3~2_combout\ & 
-- !\S0|Mux1~2_combout\)) # (\S0|Mux2~2_combout\ & (!\S0|Mux3~2_combout\ & \S0|Mux1~2_combout\)))) ) ) ) # ( !\B1|COUNT\(3) & ( !\B1|COUNT\(2) & ( (\S0|Mux4~1_combout\ & (!\S0|Mux2~2_combout\ $ (\S0|Mux1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001000000100001000000100010000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux2~2_combout\,
	datab => \S0|ALT_INV_Mux4~1_combout\,
	datac => \S0|ALT_INV_Mux3~2_combout\,
	datad => \S0|ALT_INV_Mux1~2_combout\,
	datae => \B1|ALT_INV_COUNT\(3),
	dataf => \B1|ALT_INV_COUNT\(2),
	combout => \B1|LessThan0~1_combout\);

-- Location: LABCELL_X41_Y43_N0
\B1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~2_combout\ = ( \S0|Mux1~2_combout\ & ( \B1|COUNT\(4) & ( (\S0|Mux4~1_combout\ & (!\B1|COUNT\(5) & ((\S0|Mux3~2_combout\) # (\S0|Mux2~2_combout\)))) ) ) ) # ( !\S0|Mux1~2_combout\ & ( \B1|COUNT\(4) & ( (!\S0|Mux2~2_combout\ & 
-- (\S0|Mux4~1_combout\ & (!\B1|COUNT\(5) & !\S0|Mux3~2_combout\))) ) ) ) # ( \S0|Mux1~2_combout\ & ( !\B1|COUNT\(4) & ( (\S0|Mux4~1_combout\ & (((\S0|Mux2~2_combout\ & !\B1|COUNT\(5))) # (\S0|Mux3~2_combout\))) ) ) ) # ( !\S0|Mux1~2_combout\ & ( 
-- !\B1|COUNT\(4) & ( (\S0|Mux4~1_combout\ & (!\B1|COUNT\(5) & ((!\S0|Mux3~2_combout\) # (\S0|Mux2~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000010000000100000011001100100000000000000001000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux2~2_combout\,
	datab => \S0|ALT_INV_Mux4~1_combout\,
	datac => \B1|ALT_INV_COUNT\(5),
	datad => \S0|ALT_INV_Mux3~2_combout\,
	datae => \S0|ALT_INV_Mux1~2_combout\,
	dataf => \B1|ALT_INV_COUNT\(4),
	combout => \B1|LessThan0~2_combout\);

-- Location: LABCELL_X41_Y43_N9
\B1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~3_combout\ = ( !\B1|LessThan0~2_combout\ & ( \B1|Equal8~1_combout\ & ( (!\B1|LessThan0~1_combout\ & ((!\B1|LessThan0~0_combout\) # (!\B1|Equal8~0_combout\))) ) ) ) # ( !\B1|LessThan0~2_combout\ & ( !\B1|Equal8~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_LessThan0~0_combout\,
	datac => \B1|ALT_INV_Equal8~0_combout\,
	datad => \B1|ALT_INV_LessThan0~1_combout\,
	datae => \B1|ALT_INV_LessThan0~2_combout\,
	dataf => \B1|ALT_INV_Equal8~1_combout\,
	combout => \B1|LessThan0~3_combout\);

-- Location: LABCELL_X40_Y42_N6
\B1|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~8_combout\ = ( !\B1|COUNT\(10) & ( \B1|COUNT\(11) & ( (\S0|Mux4~1_combout\ & (\S0|Mux3~2_combout\ & !\S0|Mux2~2_combout\)) ) ) ) # ( \B1|COUNT\(10) & ( !\B1|COUNT\(11) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux3~2_combout\ & (!\S0|Mux2~2_combout\ 
-- $ (!\S0|Mux1~2_combout\))) # (\S0|Mux3~2_combout\ & ((!\S0|Mux2~2_combout\) # (\S0|Mux1~2_combout\))))) ) ) ) # ( !\B1|COUNT\(10) & ( !\B1|COUNT\(11) & ( \S0|Mux4~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000101000101000100010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux4~1_combout\,
	datab => \S0|ALT_INV_Mux3~2_combout\,
	datac => \S0|ALT_INV_Mux2~2_combout\,
	datad => \S0|ALT_INV_Mux1~2_combout\,
	datae => \B1|ALT_INV_COUNT\(10),
	dataf => \B1|ALT_INV_COUNT\(11),
	combout => \B1|LessThan0~8_combout\);

-- Location: LABCELL_X40_Y42_N27
\B1|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~7_combout\ = ( !\B1|COUNT\(13) & ( \B1|COUNT\(12) & ( (\S0|Mux4~1_combout\ & (!\S0|Mux3~2_combout\ $ (((\S0|Mux1~2_combout\ & \S0|Mux2~2_combout\))))) ) ) ) # ( \B1|COUNT\(13) & ( !\B1|COUNT\(12) & ( (\S0|Mux4~1_combout\ & 
-- ((!\S0|Mux3~2_combout\ & ((!\S0|Mux2~2_combout\))) # (\S0|Mux3~2_combout\ & (\S0|Mux1~2_combout\ & \S0|Mux2~2_combout\)))) ) ) ) # ( !\B1|COUNT\(13) & ( !\B1|COUNT\(12) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux1~2_combout\ & ((!\S0|Mux3~2_combout\) # 
-- (\S0|Mux2~2_combout\))) # (\S0|Mux1~2_combout\ & ((!\S0|Mux2~2_combout\) # (\S0|Mux3~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101000101010100000000000101010000010000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux4~1_combout\,
	datab => \S0|ALT_INV_Mux1~2_combout\,
	datac => \S0|ALT_INV_Mux3~2_combout\,
	datad => \S0|ALT_INV_Mux2~2_combout\,
	datae => \B1|ALT_INV_COUNT\(13),
	dataf => \B1|ALT_INV_COUNT\(12),
	combout => \B1|LessThan0~7_combout\);

-- Location: MLABCELL_X42_Y42_N54
\B1|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~9_combout\ = ( \S0|Mux1~2_combout\ & ( \B1|COUNT\(15) & ( (\S0|Mux4~1_combout\ & (!\B1|SCALE_BOUT[14]~0_combout\ & (!\B1|COUNT\(16) & !\B1|COUNT\(14)))) ) ) ) # ( !\S0|Mux1~2_combout\ & ( \B1|COUNT\(15) & ( (\S0|Mux4~1_combout\ & 
-- !\B1|COUNT\(16)) ) ) ) # ( \S0|Mux1~2_combout\ & ( !\B1|COUNT\(15) & ( (\S0|Mux4~1_combout\ & !\B1|COUNT\(16)) ) ) ) # ( !\S0|Mux1~2_combout\ & ( !\B1|COUNT\(15) & ( (\S0|Mux4~1_combout\ & ((!\B1|COUNT\(16)) # ((!\B1|SCALE_BOUT[14]~0_combout\ & 
-- !\B1|COUNT\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010000010100000101000001010000010100000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux4~1_combout\,
	datab => \B1|ALT_INV_SCALE_BOUT[14]~0_combout\,
	datac => \B1|ALT_INV_COUNT\(16),
	datad => \B1|ALT_INV_COUNT\(14),
	datae => \S0|ALT_INV_Mux1~2_combout\,
	dataf => \B1|ALT_INV_COUNT\(15),
	combout => \B1|LessThan0~9_combout\);

-- Location: LABCELL_X41_Y42_N54
\B1|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~10_combout\ = ( \B1|LessThan0~4_combout\ & ( (!\B1|LessThan0~7_combout\ & (!\B1|LessThan0~9_combout\ & ((!\B1|LessThan0~5_combout\) # (!\B1|LessThan0~8_combout\)))) ) ) # ( !\B1|LessThan0~4_combout\ & ( !\B1|LessThan0~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_LessThan0~5_combout\,
	datab => \B1|ALT_INV_LessThan0~8_combout\,
	datac => \B1|ALT_INV_LessThan0~7_combout\,
	datad => \B1|ALT_INV_LessThan0~9_combout\,
	dataf => \B1|ALT_INV_LessThan0~4_combout\,
	combout => \B1|LessThan0~10_combout\);

-- Location: LABCELL_X41_Y43_N12
\B1|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~12_combout\ = ( !\B1|COUNT\(7) & ( \B1|COUNT\(6) & ( (\S0|Mux4~1_combout\ & ((\S0|Mux1~2_combout\) # (\S0|Mux2~2_combout\))) ) ) ) # ( \B1|COUNT\(7) & ( !\B1|COUNT\(6) & ( (\S0|Mux4~1_combout\ & (!\S0|Mux2~2_combout\ $ 
-- (!\S0|Mux1~2_combout\))) ) ) ) # ( !\B1|COUNT\(7) & ( !\B1|COUNT\(6) & ( (\S0|Mux4~1_combout\ & (((\S0|Mux1~2_combout\) # (\S0|Mux3~2_combout\)) # (\S0|Mux2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100010010001000010001001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux2~2_combout\,
	datab => \S0|ALT_INV_Mux4~1_combout\,
	datac => \S0|ALT_INV_Mux3~2_combout\,
	datad => \S0|ALT_INV_Mux1~2_combout\,
	datae => \B1|ALT_INV_COUNT\(7),
	dataf => \B1|ALT_INV_COUNT\(6),
	combout => \B1|LessThan0~12_combout\);

-- Location: MLABCELL_X42_Y43_N48
\B1|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~11_combout\ = ( !\B1|COUNT\(9) & ( \B1|COUNT\(8) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux2~2_combout\ & (!\S0|Mux1~2_combout\ & !\S0|Mux3~2_combout\)) # (\S0|Mux2~2_combout\ & ((\S0|Mux3~2_combout\))))) ) ) ) # ( \B1|COUNT\(9) & ( 
-- !\B1|COUNT\(8) & ( (\S0|Mux2~2_combout\ & (!\S0|Mux1~2_combout\ & (\S0|Mux4~1_combout\ & \S0|Mux3~2_combout\))) ) ) ) # ( !\B1|COUNT\(9) & ( !\B1|COUNT\(8) & ( (\S0|Mux4~1_combout\ & ((!\S0|Mux2~2_combout\) # ((\S0|Mux3~2_combout\) # 
-- (\S0|Mux1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001111000000000000010000001000000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux2~2_combout\,
	datab => \S0|ALT_INV_Mux1~2_combout\,
	datac => \S0|ALT_INV_Mux4~1_combout\,
	datad => \S0|ALT_INV_Mux3~2_combout\,
	datae => \B1|ALT_INV_COUNT\(9),
	dataf => \B1|ALT_INV_COUNT\(8),
	combout => \B1|LessThan0~11_combout\);

-- Location: LABCELL_X41_Y42_N9
\B1|LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~13_combout\ = ( \B1|LessThan0~6_combout\ & ( \B1|LessThan0~11_combout\ & ( (\B1|Equal8~2_combout\ & (\B1|LessThan0~4_combout\ & \B1|LessThan0~5_combout\)) ) ) ) # ( !\B1|LessThan0~6_combout\ & ( \B1|LessThan0~11_combout\ & ( 
-- (\B1|Equal8~2_combout\ & (\B1|LessThan0~4_combout\ & \B1|LessThan0~5_combout\)) ) ) ) # ( \B1|LessThan0~6_combout\ & ( !\B1|LessThan0~11_combout\ & ( (\B1|Equal8~2_combout\ & (\B1|LessThan0~4_combout\ & (\B1|LessThan0~12_combout\ & 
-- \B1|LessThan0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Equal8~2_combout\,
	datab => \B1|ALT_INV_LessThan0~4_combout\,
	datac => \B1|ALT_INV_LessThan0~12_combout\,
	datad => \B1|ALT_INV_LessThan0~5_combout\,
	datae => \B1|ALT_INV_LessThan0~6_combout\,
	dataf => \B1|ALT_INV_LessThan0~11_combout\,
	combout => \B1|LessThan0~13_combout\);

-- Location: LABCELL_X41_Y42_N24
\B1|LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~14_combout\ = ( \B1|LessThan0~13_combout\ & ( \B1|Equal8~7_combout\ ) ) # ( !\B1|LessThan0~13_combout\ & ( (\B1|Equal8~7_combout\ & ((!\B1|LessThan0~10_combout\) # ((\B1|Equal8~4_combout\ & !\B1|LessThan0~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010000010101010001000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Equal8~7_combout\,
	datab => \B1|ALT_INV_Equal8~4_combout\,
	datac => \B1|ALT_INV_LessThan0~3_combout\,
	datad => \B1|ALT_INV_LessThan0~10_combout\,
	dataf => \B1|ALT_INV_LessThan0~13_combout\,
	combout => \B1|LessThan0~14_combout\);

-- Location: LABCELL_X41_Y42_N42
\B1|FLAG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|FLAG~0_combout\ = ( \B1|FLAG~q\ & ( \B1|Equal8~4_combout\ & ( (!\S0|Mux4~1_combout\) # ((!\B1|Equal8~1_combout\) # ((!\B1|Equal8~9_combout\) # (!\RESETN~input_o\))) ) ) ) # ( !\B1|FLAG~q\ & ( \B1|Equal8~4_combout\ & ( (\S0|Mux4~1_combout\ & 
-- (\B1|Equal8~1_combout\ & (\B1|Equal8~9_combout\ & \RESETN~input_o\))) ) ) ) # ( \B1|FLAG~q\ & ( !\B1|Equal8~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Mux4~1_combout\,
	datab => \B1|ALT_INV_Equal8~1_combout\,
	datac => \B1|ALT_INV_Equal8~9_combout\,
	datad => \ALT_INV_RESETN~input_o\,
	datae => \B1|ALT_INV_FLAG~q\,
	dataf => \B1|ALT_INV_Equal8~4_combout\,
	combout => \B1|FLAG~0_combout\);

-- Location: FF_X41_Y42_N44
\B1|FLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|FLAG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|FLAG~q\);

-- Location: LABCELL_X41_Y42_N36
\B1|BEEPOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|BEEPOUT~0_combout\ = ( \B1|FLAG~q\ & ( (\B1|BEEPOUT~q\ & ((!\B1|LessThan0~14_combout\) # (!\S0|Mux4~1_combout\))) ) ) # ( !\B1|FLAG~q\ & ( ((\B1|LessThan0~14_combout\ & \S0|Mux4~1_combout\)) # (\B1|BEEPOUT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_LessThan0~14_combout\,
	datac => \S0|ALT_INV_Mux4~1_combout\,
	datad => \B1|ALT_INV_BEEPOUT~q\,
	dataf => \B1|ALT_INV_FLAG~q\,
	combout => \B1|BEEPOUT~0_combout\);

-- Location: FF_X41_Y42_N37
\B1|BEEPOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|BEEPOUT~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|BEEPOUT~q\);

-- Location: LABCELL_X5_Y23_N3
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


