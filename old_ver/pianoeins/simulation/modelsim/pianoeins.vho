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

-- DATE "12/28/2018 19:36:25"

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

ENTITY 	PIANOEINS IS
    PORT (
	CLK : IN std_logic;
	PSWITCH : IN std_logic_vector(23 DOWNTO 0);
	RESETN : IN std_logic;
	LED_S : BUFFER std_logic_vector(6 DOWNTO 0);
	LED_N : BUFFER std_logic_vector(6 DOWNTO 0);
	LED_K : BUFFER std_logic_vector(6 DOWNTO 0);
	SPKR : BUFFER std_logic
	);
END PIANOEINS;

-- Design Ports Information
-- LED_S[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_S[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_S[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_S[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_S[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_S[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_S[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_N[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_N[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_N[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_N[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_N[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_N[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_N[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_K[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_K[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_K[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_K[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_K[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_K[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_K[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPKR	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[17]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[18]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[16]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[20]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[19]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[21]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[23]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[22]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[10]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[12]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[14]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[15]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESETN	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PIANOEINS IS
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
SIGNAL ww_PSWITCH : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_RESETN : std_logic;
SIGNAL ww_LED_S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED_N : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED_K : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SPKR : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \PSWITCH[23]~input_o\ : std_logic;
SIGNAL \PSWITCH[18]~input_o\ : std_logic;
SIGNAL \PSWITCH[17]~input_o\ : std_logic;
SIGNAL \PSWITCH[20]~input_o\ : std_logic;
SIGNAL \PSWITCH[21]~input_o\ : std_logic;
SIGNAL \PSWITCH[19]~input_o\ : std_logic;
SIGNAL \PSWITCH[16]~input_o\ : std_logic;
SIGNAL \S0|Equal0~0_combout\ : std_logic;
SIGNAL \PSWITCH[22]~input_o\ : std_logic;
SIGNAL \PSWITCH[10]~input_o\ : std_logic;
SIGNAL \PSWITCH[13]~input_o\ : std_logic;
SIGNAL \PSWITCH[11]~input_o\ : std_logic;
SIGNAL \PSWITCH[9]~input_o\ : std_logic;
SIGNAL \PSWITCH[12]~input_o\ : std_logic;
SIGNAL \S0|Equal1~0_combout\ : std_logic;
SIGNAL \PSWITCH[6]~input_o\ : std_logic;
SIGNAL \PSWITCH[4]~input_o\ : std_logic;
SIGNAL \PSWITCH[5]~input_o\ : std_logic;
SIGNAL \PSWITCH[2]~input_o\ : std_logic;
SIGNAL \PSWITCH[3]~input_o\ : std_logic;
SIGNAL \S0|Equal8~0_combout\ : std_logic;
SIGNAL \PSWITCH[14]~input_o\ : std_logic;
SIGNAL \PSWITCH[15]~input_o\ : std_logic;
SIGNAL \PSWITCH[0]~input_o\ : std_logic;
SIGNAL \S0|Equal0~1_combout\ : std_logic;
SIGNAL \PSWITCH[1]~input_o\ : std_logic;
SIGNAL \PSWITCH[8]~input_o\ : std_logic;
SIGNAL \PSWITCH[7]~input_o\ : std_logic;
SIGNAL \S0|Equal0~2_combout\ : std_logic;
SIGNAL \S0|Equal0~3_combout\ : std_logic;
SIGNAL \S0|Equal24~0_combout\ : std_logic;
SIGNAL \S0|Equal9~0_combout\ : std_logic;
SIGNAL \S0|Equal8~1_combout\ : std_logic;
SIGNAL \S0|WideOr1~0_combout\ : std_logic;
SIGNAL \S0|Equal12~0_combout\ : std_logic;
SIGNAL \S0|Equal11~0_combout\ : std_logic;
SIGNAL \S0|Equal9~1_combout\ : std_logic;
SIGNAL \S0|Equal10~0_combout\ : std_logic;
SIGNAL \S0|Equal1~1_combout\ : std_logic;
SIGNAL \S0|Equal15~0_combout\ : std_logic;
SIGNAL \S0|WideOr2~0_combout\ : std_logic;
SIGNAL \S0|WideOr1~1_combout\ : std_logic;
SIGNAL \S0|Equal0~5_combout\ : std_logic;
SIGNAL \S0|Equal0~6_combout\ : std_logic;
SIGNAL \S0|Equal2~0_combout\ : std_logic;
SIGNAL \S0|Equal5~0_combout\ : std_logic;
SIGNAL \S0|Equal3~0_combout\ : std_logic;
SIGNAL \S0|Equal1~2_combout\ : std_logic;
SIGNAL \S0|WideNor0~1_combout\ : std_logic;
SIGNAL \S0|WideNor0~2_combout\ : std_logic;
SIGNAL \S0|Equal17~0_combout\ : std_logic;
SIGNAL \S0|Equal16~0_combout\ : std_logic;
SIGNAL \S0|WideNor0~0_combout\ : std_logic;
SIGNAL \S0|Equal23~0_combout\ : std_logic;
SIGNAL \S0|Equal0~4_combout\ : std_logic;
SIGNAL \S0|WideOr2~1_combout\ : std_logic;
SIGNAL \S0|WideOr2~2_combout\ : std_logic;
SIGNAL \S0|WideOr0~0_combout\ : std_logic;
SIGNAL \S0|Equal6~0_combout\ : std_logic;
SIGNAL \S0|Equal18~0_combout\ : std_logic;
SIGNAL \S0|Equal22~0_combout\ : std_logic;
SIGNAL \S0|Equal14~0_combout\ : std_logic;
SIGNAL \S0|WideOr4~0_combout\ : std_logic;
SIGNAL \S0|Equal20~0_combout\ : std_logic;
SIGNAL \S0|Equal12~1_combout\ : std_logic;
SIGNAL \S0|Equal4~0_combout\ : std_logic;
SIGNAL \S0|WideOr4~1_combout\ : std_logic;
SIGNAL \S0|WideOr4~combout\ : std_logic;
SIGNAL \S0|WideOr2~combout\ : std_logic;
SIGNAL \S0|WideOr1~combout\ : std_logic;
SIGNAL \S0|Equal19~0_combout\ : std_logic;
SIGNAL \S0|WideOr3~0_combout\ : std_logic;
SIGNAL \S0|Equal5~1_combout\ : std_logic;
SIGNAL \S0|WideOr3~combout\ : std_logic;
SIGNAL \L1|Mux6~0_combout\ : std_logic;
SIGNAL \L1|Mux5~0_combout\ : std_logic;
SIGNAL \L1|Mux4~0_combout\ : std_logic;
SIGNAL \L1|Mux3~0_combout\ : std_logic;
SIGNAL \L1|Mux2~0_combout\ : std_logic;
SIGNAL \L1|Mux1~0_combout\ : std_logic;
SIGNAL \L1|Mux0~0_combout\ : std_logic;
SIGNAL \L1|Mux13~0_combout\ : std_logic;
SIGNAL \L1|Mux12~0_combout\ : std_logic;
SIGNAL \L1|Mux11~0_combout\ : std_logic;
SIGNAL \L1|Mux10~0_combout\ : std_logic;
SIGNAL \L1|Mux9~0_combout\ : std_logic;
SIGNAL \L1|Mux9~1_combout\ : std_logic;
SIGNAL \L1|Mux8~0_combout\ : std_logic;
SIGNAL \L1|Mux19~0_combout\ : std_logic;
SIGNAL \L1|Mux18~0_combout\ : std_logic;
SIGNAL \L1|Mux17~0_combout\ : std_logic;
SIGNAL \L1|Mux16~0_combout\ : std_logic;
SIGNAL \L1|Mux14~0_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \B1|Add0~53_sumout\ : std_logic;
SIGNAL \RESETN~input_o\ : std_logic;
SIGNAL \S0|WideNor0~combout\ : std_logic;
SIGNAL \B1|BEEPOUT~1_combout\ : std_logic;
SIGNAL \B1|Ram0~13_combout\ : std_logic;
SIGNAL \B1|Ram0~5_combout\ : std_logic;
SIGNAL \B1|Ram0~4_combout\ : std_logic;
SIGNAL \B1|Equal0~4_combout\ : std_logic;
SIGNAL \B1|Ram0~2_combout\ : std_logic;
SIGNAL \B1|Ram0~3_combout\ : std_logic;
SIGNAL \B1|LessThan0~1_combout\ : std_logic;
SIGNAL \B1|Ram0~0_combout\ : std_logic;
SIGNAL \B1|Ram0~1_combout\ : std_logic;
SIGNAL \B1|LessThan0~0_combout\ : std_logic;
SIGNAL \B1|Ram0~7_combout\ : std_logic;
SIGNAL \B1|Ram0~6_combout\ : std_logic;
SIGNAL \B1|Equal0~0_combout\ : std_logic;
SIGNAL \B1|Equal0~5_combout\ : std_logic;
SIGNAL \B1|Ram0~14_combout\ : std_logic;
SIGNAL \B1|Ram0~15_combout\ : std_logic;
SIGNAL \B1|Equal0~2_combout\ : std_logic;
SIGNAL \B1|Ram0~12_combout\ : std_logic;
SIGNAL \B1|Add0~74\ : std_logic;
SIGNAL \B1|Add0~101_sumout\ : std_logic;
SIGNAL \B1|Add0~102\ : std_logic;
SIGNAL \B1|Add0~97_sumout\ : std_logic;
SIGNAL \B1|Add0~98\ : std_logic;
SIGNAL \B1|Add0~93_sumout\ : std_logic;
SIGNAL \B1|Add0~94\ : std_logic;
SIGNAL \B1|Add0~89_sumout\ : std_logic;
SIGNAL \B1|Add0~90\ : std_logic;
SIGNAL \B1|Add0~85_sumout\ : std_logic;
SIGNAL \B1|Equal0~6_combout\ : std_logic;
SIGNAL \B1|Equal0~9_combout\ : std_logic;
SIGNAL \B1|Ram0~10_combout\ : std_logic;
SIGNAL \B1|Ram0~11_combout\ : std_logic;
SIGNAL \B1|Equal0~1_combout\ : std_logic;
SIGNAL \B1|Ram0~9_combout\ : std_logic;
SIGNAL \B1|Ram0~8_combout\ : std_logic;
SIGNAL \B1|LessThan0~4_combout\ : std_logic;
SIGNAL \B1|Ram0~16_combout\ : std_logic;
SIGNAL \B1|Ram0~17_combout\ : std_logic;
SIGNAL \B1|Equal0~3_combout\ : std_logic;
SIGNAL \B1|Equal0~8_combout\ : std_logic;
SIGNAL \B1|Equal0~10_combout\ : std_logic;
SIGNAL \B1|COUNT[25]~0_combout\ : std_logic;
SIGNAL \B1|Add0~54\ : std_logic;
SIGNAL \B1|Add0~49_sumout\ : std_logic;
SIGNAL \B1|Add0~50\ : std_logic;
SIGNAL \B1|Add0~61_sumout\ : std_logic;
SIGNAL \B1|Add0~62\ : std_logic;
SIGNAL \B1|Add0~57_sumout\ : std_logic;
SIGNAL \B1|Add0~58\ : std_logic;
SIGNAL \B1|Add0~69_sumout\ : std_logic;
SIGNAL \B1|Add0~70\ : std_logic;
SIGNAL \B1|Add0~65_sumout\ : std_logic;
SIGNAL \B1|Add0~66\ : std_logic;
SIGNAL \B1|Add0~45_sumout\ : std_logic;
SIGNAL \B1|Add0~46\ : std_logic;
SIGNAL \B1|Add0~41_sumout\ : std_logic;
SIGNAL \B1|Add0~42\ : std_logic;
SIGNAL \B1|Add0~37_sumout\ : std_logic;
SIGNAL \B1|Add0~38\ : std_logic;
SIGNAL \B1|Add0~33_sumout\ : std_logic;
SIGNAL \B1|Add0~34\ : std_logic;
SIGNAL \B1|Add0~21_sumout\ : std_logic;
SIGNAL \B1|Add0~22\ : std_logic;
SIGNAL \B1|Add0~17_sumout\ : std_logic;
SIGNAL \B1|Add0~18\ : std_logic;
SIGNAL \B1|Add0~29_sumout\ : std_logic;
SIGNAL \B1|Add0~30\ : std_logic;
SIGNAL \B1|Add0~25_sumout\ : std_logic;
SIGNAL \B1|Add0~26\ : std_logic;
SIGNAL \B1|Add0~13_sumout\ : std_logic;
SIGNAL \B1|Add0~14\ : std_logic;
SIGNAL \B1|Add0~9_sumout\ : std_logic;
SIGNAL \B1|Add0~10\ : std_logic;
SIGNAL \B1|Add0~5_sumout\ : std_logic;
SIGNAL \B1|Add0~6\ : std_logic;
SIGNAL \B1|Add0~1_sumout\ : std_logic;
SIGNAL \B1|Add0~2\ : std_logic;
SIGNAL \B1|Add0~81_sumout\ : std_logic;
SIGNAL \B1|Add0~82\ : std_logic;
SIGNAL \B1|Add0~77_sumout\ : std_logic;
SIGNAL \B1|Add0~78\ : std_logic;
SIGNAL \B1|Add0~73_sumout\ : std_logic;
SIGNAL \B1|Equal0~7_combout\ : std_logic;
SIGNAL \B1|LessThan0~2_combout\ : std_logic;
SIGNAL \B1|LessThan0~3_combout\ : std_logic;
SIGNAL \B1|LessThan0~13_combout\ : std_logic;
SIGNAL \B1|LessThan0~12_combout\ : std_logic;
SIGNAL \B1|LessThan0~14_combout\ : std_logic;
SIGNAL \B1|LessThan0~15_combout\ : std_logic;
SIGNAL \B1|LessThan0~8_combout\ : std_logic;
SIGNAL \B1|LessThan0~9_combout\ : std_logic;
SIGNAL \B1|LessThan0~10_combout\ : std_logic;
SIGNAL \B1|LessThan0~11_combout\ : std_logic;
SIGNAL \B1|LessThan0~6_combout\ : std_logic;
SIGNAL \B1|LessThan0~5_combout\ : std_logic;
SIGNAL \B1|LessThan0~7_combout\ : std_logic;
SIGNAL \B1|LessThan0~16_combout\ : std_logic;
SIGNAL \B1|FLAG~0_combout\ : std_logic;
SIGNAL \B1|FLAG~q\ : std_logic;
SIGNAL \B1|BEEPOUT~0_combout\ : std_logic;
SIGNAL \B1|BEEPOUT~q\ : std_logic;
SIGNAL \B1|COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_RESETN~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[17]~input_o\ : std_logic;
SIGNAL \B1|ALT_INV_FLAG~q\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~17_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~16_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~15_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~14_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~13_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~12_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~11_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~10_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~9_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~8_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~7_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~6_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~5_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~4_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~3_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~2_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~1_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~combout\ : std_logic;
SIGNAL \B1|ALT_INV_BEEPOUT~q\ : std_logic;
SIGNAL \L1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \L1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \L1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr4~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal20~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal12~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal19~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal18~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal22~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal14~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal24~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal16~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal17~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr2~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal23~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \B1|ALT_INV_COUNT\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_PSWITCH <= PSWITCH;
ww_RESETN <= RESETN;
LED_S <= ww_LED_S;
LED_N <= ww_LED_N;
LED_K <= ww_LED_K;
SPKR <= ww_SPKR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RESETN~input_o\ <= NOT \RESETN~input_o\;
\ALT_INV_PSWITCH[8]~input_o\ <= NOT \PSWITCH[8]~input_o\;
\ALT_INV_PSWITCH[1]~input_o\ <= NOT \PSWITCH[1]~input_o\;
\ALT_INV_PSWITCH[7]~input_o\ <= NOT \PSWITCH[7]~input_o\;
\ALT_INV_PSWITCH[6]~input_o\ <= NOT \PSWITCH[6]~input_o\;
\ALT_INV_PSWITCH[4]~input_o\ <= NOT \PSWITCH[4]~input_o\;
\ALT_INV_PSWITCH[5]~input_o\ <= NOT \PSWITCH[5]~input_o\;
\ALT_INV_PSWITCH[2]~input_o\ <= NOT \PSWITCH[2]~input_o\;
\ALT_INV_PSWITCH[3]~input_o\ <= NOT \PSWITCH[3]~input_o\;
\ALT_INV_PSWITCH[15]~input_o\ <= NOT \PSWITCH[15]~input_o\;
\ALT_INV_PSWITCH[0]~input_o\ <= NOT \PSWITCH[0]~input_o\;
\ALT_INV_PSWITCH[14]~input_o\ <= NOT \PSWITCH[14]~input_o\;
\ALT_INV_PSWITCH[13]~input_o\ <= NOT \PSWITCH[13]~input_o\;
\ALT_INV_PSWITCH[11]~input_o\ <= NOT \PSWITCH[11]~input_o\;
\ALT_INV_PSWITCH[12]~input_o\ <= NOT \PSWITCH[12]~input_o\;
\ALT_INV_PSWITCH[9]~input_o\ <= NOT \PSWITCH[9]~input_o\;
\ALT_INV_PSWITCH[10]~input_o\ <= NOT \PSWITCH[10]~input_o\;
\ALT_INV_PSWITCH[22]~input_o\ <= NOT \PSWITCH[22]~input_o\;
\ALT_INV_PSWITCH[23]~input_o\ <= NOT \PSWITCH[23]~input_o\;
\ALT_INV_PSWITCH[21]~input_o\ <= NOT \PSWITCH[21]~input_o\;
\ALT_INV_PSWITCH[19]~input_o\ <= NOT \PSWITCH[19]~input_o\;
\ALT_INV_PSWITCH[20]~input_o\ <= NOT \PSWITCH[20]~input_o\;
\ALT_INV_PSWITCH[16]~input_o\ <= NOT \PSWITCH[16]~input_o\;
\ALT_INV_PSWITCH[18]~input_o\ <= NOT \PSWITCH[18]~input_o\;
\ALT_INV_PSWITCH[17]~input_o\ <= NOT \PSWITCH[17]~input_o\;
\B1|ALT_INV_FLAG~q\ <= NOT \B1|FLAG~q\;
\B1|ALT_INV_Equal0~10_combout\ <= NOT \B1|Equal0~10_combout\;
\B1|ALT_INV_Equal0~9_combout\ <= NOT \B1|Equal0~9_combout\;
\B1|ALT_INV_Equal0~8_combout\ <= NOT \B1|Equal0~8_combout\;
\B1|ALT_INV_LessThan0~16_combout\ <= NOT \B1|LessThan0~16_combout\;
\B1|ALT_INV_Equal0~7_combout\ <= NOT \B1|Equal0~7_combout\;
\B1|ALT_INV_Equal0~6_combout\ <= NOT \B1|Equal0~6_combout\;
\B1|ALT_INV_LessThan0~15_combout\ <= NOT \B1|LessThan0~15_combout\;
\B1|ALT_INV_LessThan0~14_combout\ <= NOT \B1|LessThan0~14_combout\;
\B1|ALT_INV_LessThan0~13_combout\ <= NOT \B1|LessThan0~13_combout\;
\B1|ALT_INV_LessThan0~12_combout\ <= NOT \B1|LessThan0~12_combout\;
\B1|ALT_INV_Equal0~5_combout\ <= NOT \B1|Equal0~5_combout\;
\B1|ALT_INV_Equal0~4_combout\ <= NOT \B1|Equal0~4_combout\;
\B1|ALT_INV_LessThan0~11_combout\ <= NOT \B1|LessThan0~11_combout\;
\B1|ALT_INV_LessThan0~10_combout\ <= NOT \B1|LessThan0~10_combout\;
\B1|ALT_INV_LessThan0~9_combout\ <= NOT \B1|LessThan0~9_combout\;
\B1|ALT_INV_LessThan0~8_combout\ <= NOT \B1|LessThan0~8_combout\;
\B1|ALT_INV_LessThan0~7_combout\ <= NOT \B1|LessThan0~7_combout\;
\B1|ALT_INV_Equal0~3_combout\ <= NOT \B1|Equal0~3_combout\;
\B1|ALT_INV_Ram0~17_combout\ <= NOT \B1|Ram0~17_combout\;
\B1|ALT_INV_Ram0~16_combout\ <= NOT \B1|Ram0~16_combout\;
\B1|ALT_INV_LessThan0~6_combout\ <= NOT \B1|LessThan0~6_combout\;
\B1|ALT_INV_Equal0~2_combout\ <= NOT \B1|Equal0~2_combout\;
\B1|ALT_INV_Ram0~15_combout\ <= NOT \B1|Ram0~15_combout\;
\B1|ALT_INV_Ram0~14_combout\ <= NOT \B1|Ram0~14_combout\;
\B1|ALT_INV_LessThan0~5_combout\ <= NOT \B1|LessThan0~5_combout\;
\B1|ALT_INV_Ram0~13_combout\ <= NOT \B1|Ram0~13_combout\;
\B1|ALT_INV_Ram0~12_combout\ <= NOT \B1|Ram0~12_combout\;
\B1|ALT_INV_Equal0~1_combout\ <= NOT \B1|Equal0~1_combout\;
\B1|ALT_INV_Ram0~11_combout\ <= NOT \B1|Ram0~11_combout\;
\B1|ALT_INV_Ram0~10_combout\ <= NOT \B1|Ram0~10_combout\;
\B1|ALT_INV_LessThan0~4_combout\ <= NOT \B1|LessThan0~4_combout\;
\B1|ALT_INV_Ram0~9_combout\ <= NOT \B1|Ram0~9_combout\;
\B1|ALT_INV_Ram0~8_combout\ <= NOT \B1|Ram0~8_combout\;
\B1|ALT_INV_LessThan0~3_combout\ <= NOT \B1|LessThan0~3_combout\;
\B1|ALT_INV_Equal0~0_combout\ <= NOT \B1|Equal0~0_combout\;
\B1|ALT_INV_Ram0~7_combout\ <= NOT \B1|Ram0~7_combout\;
\B1|ALT_INV_Ram0~6_combout\ <= NOT \B1|Ram0~6_combout\;
\B1|ALT_INV_LessThan0~2_combout\ <= NOT \B1|LessThan0~2_combout\;
\B1|ALT_INV_Ram0~5_combout\ <= NOT \B1|Ram0~5_combout\;
\B1|ALT_INV_Ram0~4_combout\ <= NOT \B1|Ram0~4_combout\;
\B1|ALT_INV_LessThan0~1_combout\ <= NOT \B1|LessThan0~1_combout\;
\B1|ALT_INV_Ram0~3_combout\ <= NOT \B1|Ram0~3_combout\;
\B1|ALT_INV_Ram0~2_combout\ <= NOT \B1|Ram0~2_combout\;
\B1|ALT_INV_LessThan0~0_combout\ <= NOT \B1|LessThan0~0_combout\;
\B1|ALT_INV_Ram0~1_combout\ <= NOT \B1|Ram0~1_combout\;
\B1|ALT_INV_Ram0~0_combout\ <= NOT \B1|Ram0~0_combout\;
\S0|ALT_INV_WideNor0~combout\ <= NOT \S0|WideNor0~combout\;
\B1|ALT_INV_BEEPOUT~q\ <= NOT \B1|BEEPOUT~q\;
\L1|ALT_INV_Mux8~0_combout\ <= NOT \L1|Mux8~0_combout\;
\L1|ALT_INV_Mux9~0_combout\ <= NOT \L1|Mux9~0_combout\;
\L1|ALT_INV_Mux11~0_combout\ <= NOT \L1|Mux11~0_combout\;
\S0|ALT_INV_WideOr4~combout\ <= NOT \S0|WideOr4~combout\;
\S0|ALT_INV_WideOr4~1_combout\ <= NOT \S0|WideOr4~1_combout\;
\S0|ALT_INV_Equal4~0_combout\ <= NOT \S0|Equal4~0_combout\;
\S0|ALT_INV_Equal20~0_combout\ <= NOT \S0|Equal20~0_combout\;
\S0|ALT_INV_Equal12~1_combout\ <= NOT \S0|Equal12~1_combout\;
\S0|ALT_INV_WideOr3~combout\ <= NOT \S0|WideOr3~combout\;
\S0|ALT_INV_WideOr3~0_combout\ <= NOT \S0|WideOr3~0_combout\;
\S0|ALT_INV_Equal19~0_combout\ <= NOT \S0|Equal19~0_combout\;
\S0|ALT_INV_WideOr4~0_combout\ <= NOT \S0|WideOr4~0_combout\;
\S0|ALT_INV_Equal6~0_combout\ <= NOT \S0|Equal6~0_combout\;
\S0|ALT_INV_Equal18~0_combout\ <= NOT \S0|Equal18~0_combout\;
\S0|ALT_INV_Equal22~0_combout\ <= NOT \S0|Equal22~0_combout\;
\S0|ALT_INV_Equal14~0_combout\ <= NOT \S0|Equal14~0_combout\;
\S0|ALT_INV_Equal5~1_combout\ <= NOT \S0|Equal5~1_combout\;
\S0|ALT_INV_WideOr0~0_combout\ <= NOT \S0|WideOr0~0_combout\;
\S0|ALT_INV_Equal24~0_combout\ <= NOT \S0|Equal24~0_combout\;
\S0|ALT_INV_WideOr2~combout\ <= NOT \S0|WideOr2~combout\;
\S0|ALT_INV_WideOr1~combout\ <= NOT \S0|WideOr1~combout\;
\S0|ALT_INV_WideNor0~2_combout\ <= NOT \S0|WideNor0~2_combout\;
\S0|ALT_INV_Equal3~0_combout\ <= NOT \S0|Equal3~0_combout\;
\S0|ALT_INV_WideNor0~1_combout\ <= NOT \S0|WideNor0~1_combout\;
\S0|ALT_INV_Equal5~0_combout\ <= NOT \S0|Equal5~0_combout\;
\S0|ALT_INV_Equal2~0_combout\ <= NOT \S0|Equal2~0_combout\;
\S0|ALT_INV_Equal1~2_combout\ <= NOT \S0|Equal1~2_combout\;
\S0|ALT_INV_Equal0~6_combout\ <= NOT \S0|Equal0~6_combout\;
\S0|ALT_INV_WideNor0~0_combout\ <= NOT \S0|WideNor0~0_combout\;
\S0|ALT_INV_Equal16~0_combout\ <= NOT \S0|Equal16~0_combout\;
\S0|ALT_INV_Equal17~0_combout\ <= NOT \S0|Equal17~0_combout\;
\S0|ALT_INV_WideOr2~2_combout\ <= NOT \S0|WideOr2~2_combout\;
\S0|ALT_INV_WideOr2~1_combout\ <= NOT \S0|WideOr2~1_combout\;
\S0|ALT_INV_Equal0~5_combout\ <= NOT \S0|Equal0~5_combout\;
\S0|ALT_INV_Equal0~4_combout\ <= NOT \S0|Equal0~4_combout\;
\S0|ALT_INV_Equal23~0_combout\ <= NOT \S0|Equal23~0_combout\;
\S0|ALT_INV_WideOr1~1_combout\ <= NOT \S0|WideOr1~1_combout\;
\S0|ALT_INV_Equal11~0_combout\ <= NOT \S0|Equal11~0_combout\;
\S0|ALT_INV_Equal9~1_combout\ <= NOT \S0|Equal9~1_combout\;
\S0|ALT_INV_Equal10~0_combout\ <= NOT \S0|Equal10~0_combout\;
\S0|ALT_INV_WideOr2~0_combout\ <= NOT \S0|WideOr2~0_combout\;
\S0|ALT_INV_Equal12~0_combout\ <= NOT \S0|Equal12~0_combout\;
\S0|ALT_INV_Equal15~0_combout\ <= NOT \S0|Equal15~0_combout\;
\S0|ALT_INV_Equal1~1_combout\ <= NOT \S0|Equal1~1_combout\;
\S0|ALT_INV_WideOr1~0_combout\ <= NOT \S0|WideOr1~0_combout\;
\S0|ALT_INV_Equal8~1_combout\ <= NOT \S0|Equal8~1_combout\;
\S0|ALT_INV_Equal9~0_combout\ <= NOT \S0|Equal9~0_combout\;
\S0|ALT_INV_Equal0~3_combout\ <= NOT \S0|Equal0~3_combout\;
\S0|ALT_INV_Equal0~2_combout\ <= NOT \S0|Equal0~2_combout\;
\S0|ALT_INV_Equal8~0_combout\ <= NOT \S0|Equal8~0_combout\;
\S0|ALT_INV_Equal0~1_combout\ <= NOT \S0|Equal0~1_combout\;
\S0|ALT_INV_Equal1~0_combout\ <= NOT \S0|Equal1~0_combout\;
\S0|ALT_INV_Equal0~0_combout\ <= NOT \S0|Equal0~0_combout\;
\B1|ALT_INV_COUNT\(21) <= NOT \B1|COUNT\(21);
\B1|ALT_INV_COUNT\(22) <= NOT \B1|COUNT\(22);
\B1|ALT_INV_COUNT\(23) <= NOT \B1|COUNT\(23);
\B1|ALT_INV_COUNT\(24) <= NOT \B1|COUNT\(24);
\B1|ALT_INV_COUNT\(25) <= NOT \B1|COUNT\(25);
\B1|ALT_INV_COUNT\(18) <= NOT \B1|COUNT\(18);
\B1|ALT_INV_COUNT\(19) <= NOT \B1|COUNT\(19);
\B1|ALT_INV_COUNT\(20) <= NOT \B1|COUNT\(20);
\B1|ALT_INV_COUNT\(4) <= NOT \B1|COUNT\(4);
\B1|ALT_INV_COUNT\(5) <= NOT \B1|COUNT\(5);
\B1|ALT_INV_COUNT\(2) <= NOT \B1|COUNT\(2);
\B1|ALT_INV_COUNT\(3) <= NOT \B1|COUNT\(3);
\B1|ALT_INV_COUNT\(0) <= NOT \B1|COUNT\(0);
\B1|ALT_INV_COUNT\(1) <= NOT \B1|COUNT\(1);
\B1|ALT_INV_COUNT\(6) <= NOT \B1|COUNT\(6);
\B1|ALT_INV_COUNT\(7) <= NOT \B1|COUNT\(7);
\B1|ALT_INV_COUNT\(8) <= NOT \B1|COUNT\(8);
\B1|ALT_INV_COUNT\(9) <= NOT \B1|COUNT\(9);
\B1|ALT_INV_COUNT\(12) <= NOT \B1|COUNT\(12);
\B1|ALT_INV_COUNT\(13) <= NOT \B1|COUNT\(13);
\B1|ALT_INV_COUNT\(10) <= NOT \B1|COUNT\(10);
\B1|ALT_INV_COUNT\(11) <= NOT \B1|COUNT\(11);
\B1|ALT_INV_COUNT\(14) <= NOT \B1|COUNT\(14);
\B1|ALT_INV_COUNT\(15) <= NOT \B1|COUNT\(15);
\B1|ALT_INV_COUNT\(16) <= NOT \B1|COUNT\(16);
\B1|ALT_INV_COUNT\(17) <= NOT \B1|COUNT\(17);

-- Location: IOOBUF_X44_Y0_N36
\LED_S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_S(0));

-- Location: IOOBUF_X40_Y0_N93
\LED_S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_S(1));

-- Location: IOOBUF_X44_Y0_N53
\LED_S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_S(2));

-- Location: IOOBUF_X43_Y0_N36
\LED_S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_S(3));

-- Location: IOOBUF_X38_Y0_N36
\LED_S[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_S(4));

-- Location: IOOBUF_X43_Y0_N53
\LED_S[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_S(5));

-- Location: IOOBUF_X51_Y0_N53
\LED_S[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_S(6));

-- Location: IOOBUF_X52_Y0_N53
\LED_N[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_N(0));

-- Location: IOOBUF_X51_Y0_N36
\LED_N[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_N(1));

-- Location: IOOBUF_X48_Y0_N76
\LED_N[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|ALT_INV_Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_N(2));

-- Location: IOOBUF_X50_Y0_N36
\LED_N[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_N(3));

-- Location: IOOBUF_X48_Y0_N93
\LED_N[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux9~1_combout\,
	devoe => ww_devoe,
	o => ww_LED_N(4));

-- Location: IOOBUF_X50_Y0_N53
\LED_N[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_N(5));

-- Location: IOOBUF_X46_Y0_N36
\LED_N[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|ALT_INV_Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_N(6));

-- Location: IOOBUF_X40_Y0_N59
\LED_K[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_K(0));

-- Location: IOOBUF_X46_Y0_N2
\LED_K[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LED_K(1));

-- Location: IOOBUF_X40_Y0_N42
\LED_K[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_K(2));

-- Location: IOOBUF_X46_Y0_N19
\LED_K[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_K(3));

-- Location: IOOBUF_X52_Y0_N2
\LED_K[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_K(4));

-- Location: IOOBUF_X51_Y0_N2
\LED_K[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_K(5));

-- Location: IOOBUF_X51_Y0_N19
\LED_K[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_LED_K(6));

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

-- Location: IOIBUF_X40_Y45_N92
\PSWITCH[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(23),
	o => \PSWITCH[23]~input_o\);

-- Location: IOIBUF_X38_Y45_N35
\PSWITCH[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(18),
	o => \PSWITCH[18]~input_o\);

-- Location: IOIBUF_X40_Y45_N75
\PSWITCH[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(17),
	o => \PSWITCH[17]~input_o\);

-- Location: IOIBUF_X46_Y45_N92
\PSWITCH[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(20),
	o => \PSWITCH[20]~input_o\);

-- Location: IOIBUF_X42_Y45_N18
\PSWITCH[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(21),
	o => \PSWITCH[21]~input_o\);

-- Location: IOIBUF_X48_Y45_N52
\PSWITCH[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(19),
	o => \PSWITCH[19]~input_o\);

-- Location: IOIBUF_X46_Y45_N75
\PSWITCH[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(16),
	o => \PSWITCH[16]~input_o\);

-- Location: LABCELL_X44_Y41_N0
\S0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~0_combout\ = ( !\PSWITCH[19]~input_o\ & ( !\PSWITCH[16]~input_o\ & ( (!\PSWITCH[18]~input_o\ & (!\PSWITCH[17]~input_o\ & (!\PSWITCH[20]~input_o\ & !\PSWITCH[21]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[18]~input_o\,
	datab => \ALT_INV_PSWITCH[17]~input_o\,
	datac => \ALT_INV_PSWITCH[20]~input_o\,
	datad => \ALT_INV_PSWITCH[21]~input_o\,
	datae => \ALT_INV_PSWITCH[19]~input_o\,
	dataf => \ALT_INV_PSWITCH[16]~input_o\,
	combout => \S0|Equal0~0_combout\);

-- Location: IOIBUF_X42_Y45_N1
\PSWITCH[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(22),
	o => \PSWITCH[22]~input_o\);

-- Location: IOIBUF_X38_Y45_N52
\PSWITCH[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(10),
	o => \PSWITCH[10]~input_o\);

-- Location: IOIBUF_X40_Y45_N41
\PSWITCH[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(13),
	o => \PSWITCH[13]~input_o\);

-- Location: IOIBUF_X46_Y45_N58
\PSWITCH[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(11),
	o => \PSWITCH[11]~input_o\);

-- Location: IOIBUF_X43_Y45_N35
\PSWITCH[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(9),
	o => \PSWITCH[9]~input_o\);

-- Location: IOIBUF_X50_Y45_N18
\PSWITCH[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(12),
	o => \PSWITCH[12]~input_o\);

-- Location: LABCELL_X43_Y41_N24
\S0|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal1~0_combout\ = ( !\PSWITCH[12]~input_o\ & ( (!\PSWITCH[10]~input_o\ & (!\PSWITCH[13]~input_o\ & (!\PSWITCH[11]~input_o\ & !\PSWITCH[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[10]~input_o\,
	datab => \ALT_INV_PSWITCH[13]~input_o\,
	datac => \ALT_INV_PSWITCH[11]~input_o\,
	datad => \ALT_INV_PSWITCH[9]~input_o\,
	dataf => \ALT_INV_PSWITCH[12]~input_o\,
	combout => \S0|Equal1~0_combout\);

-- Location: IOIBUF_X43_Y45_N1
\PSWITCH[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(6),
	o => \PSWITCH[6]~input_o\);

-- Location: IOIBUF_X43_Y45_N52
\PSWITCH[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(4),
	o => \PSWITCH[4]~input_o\);

-- Location: IOIBUF_X46_Y45_N41
\PSWITCH[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(5),
	o => \PSWITCH[5]~input_o\);

-- Location: IOIBUF_X50_Y45_N52
\PSWITCH[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(2),
	o => \PSWITCH[2]~input_o\);

-- Location: IOIBUF_X40_Y45_N58
\PSWITCH[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(3),
	o => \PSWITCH[3]~input_o\);

-- Location: LABCELL_X43_Y41_N21
\S0|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal8~0_combout\ = ( !\PSWITCH[3]~input_o\ & ( (!\PSWITCH[6]~input_o\ & (!\PSWITCH[4]~input_o\ & (!\PSWITCH[5]~input_o\ & !\PSWITCH[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[6]~input_o\,
	datab => \ALT_INV_PSWITCH[4]~input_o\,
	datac => \ALT_INV_PSWITCH[5]~input_o\,
	datad => \ALT_INV_PSWITCH[2]~input_o\,
	dataf => \ALT_INV_PSWITCH[3]~input_o\,
	combout => \S0|Equal8~0_combout\);

-- Location: IOIBUF_X43_Y45_N18
\PSWITCH[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(14),
	o => \PSWITCH[14]~input_o\);

-- Location: IOIBUF_X34_Y45_N35
\PSWITCH[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(15),
	o => \PSWITCH[15]~input_o\);

-- Location: IOIBUF_X44_Y45_N35
\PSWITCH[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(0),
	o => \PSWITCH[0]~input_o\);

-- Location: LABCELL_X44_Y41_N57
\S0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~1_combout\ = ( !\PSWITCH[0]~input_o\ & ( (!\PSWITCH[14]~input_o\ & !\PSWITCH[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PSWITCH[14]~input_o\,
	datad => \ALT_INV_PSWITCH[15]~input_o\,
	dataf => \ALT_INV_PSWITCH[0]~input_o\,
	combout => \S0|Equal0~1_combout\);

-- Location: IOIBUF_X38_Y45_N18
\PSWITCH[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(1),
	o => \PSWITCH[1]~input_o\);

-- Location: IOIBUF_X34_Y45_N18
\PSWITCH[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(8),
	o => \PSWITCH[8]~input_o\);

-- Location: IOIBUF_X44_Y45_N52
\PSWITCH[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PSWITCH(7),
	o => \PSWITCH[7]~input_o\);

-- Location: MLABCELL_X42_Y41_N39
\S0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~2_combout\ = ( !\PSWITCH[7]~input_o\ & ( (!\PSWITCH[1]~input_o\ & !\PSWITCH[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[1]~input_o\,
	datac => \ALT_INV_PSWITCH[8]~input_o\,
	datae => \ALT_INV_PSWITCH[7]~input_o\,
	combout => \S0|Equal0~2_combout\);

-- Location: MLABCELL_X42_Y41_N30
\S0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~3_combout\ = ( \S0|Equal0~2_combout\ & ( (\S0|Equal1~0_combout\ & (\S0|Equal8~0_combout\ & \S0|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \S0|ALT_INV_Equal1~0_combout\,
	datac => \S0|ALT_INV_Equal8~0_combout\,
	datad => \S0|ALT_INV_Equal0~1_combout\,
	dataf => \S0|ALT_INV_Equal0~2_combout\,
	combout => \S0|Equal0~3_combout\);

-- Location: MLABCELL_X42_Y41_N9
\S0|Equal24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal24~0_combout\ = ( !\PSWITCH[22]~input_o\ & ( \S0|Equal0~3_combout\ & ( (\PSWITCH[23]~input_o\ & \S0|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[23]~input_o\,
	datac => \S0|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_PSWITCH[22]~input_o\,
	dataf => \S0|ALT_INV_Equal0~3_combout\,
	combout => \S0|Equal24~0_combout\);

-- Location: MLABCELL_X42_Y41_N48
\S0|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal9~0_combout\ = ( \S0|Equal8~0_combout\ & ( \S0|Equal1~0_combout\ & ( (!\PSWITCH[22]~input_o\ & (\S0|Equal0~1_combout\ & (!\PSWITCH[23]~input_o\ & \S0|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[22]~input_o\,
	datab => \S0|ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_PSWITCH[23]~input_o\,
	datad => \S0|ALT_INV_Equal0~0_combout\,
	datae => \S0|ALT_INV_Equal8~0_combout\,
	dataf => \S0|ALT_INV_Equal1~0_combout\,
	combout => \S0|Equal9~0_combout\);

-- Location: MLABCELL_X42_Y41_N42
\S0|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal8~1_combout\ = ( !\PSWITCH[8]~input_o\ & ( (!\PSWITCH[1]~input_o\ & \PSWITCH[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[1]~input_o\,
	datac => \ALT_INV_PSWITCH[7]~input_o\,
	dataf => \ALT_INV_PSWITCH[8]~input_o\,
	combout => \S0|Equal8~1_combout\);

-- Location: MLABCELL_X42_Y41_N12
\S0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr1~0_combout\ = ( \PSWITCH[22]~input_o\ & ( \S0|Equal8~1_combout\ & ( \S0|Equal9~0_combout\ ) ) ) # ( !\PSWITCH[22]~input_o\ & ( \S0|Equal8~1_combout\ & ( ((\S0|Equal0~0_combout\ & (\S0|Equal0~3_combout\ & \PSWITCH[23]~input_o\))) # 
-- (\S0|Equal9~0_combout\) ) ) ) # ( !\PSWITCH[22]~input_o\ & ( !\S0|Equal8~1_combout\ & ( (\S0|Equal0~0_combout\ & (\S0|Equal0~3_combout\ & \PSWITCH[23]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000000000000001111000111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~0_combout\,
	datab => \S0|ALT_INV_Equal0~3_combout\,
	datac => \S0|ALT_INV_Equal9~0_combout\,
	datad => \ALT_INV_PSWITCH[23]~input_o\,
	datae => \ALT_INV_PSWITCH[22]~input_o\,
	dataf => \S0|ALT_INV_Equal8~1_combout\,
	combout => \S0|WideOr1~0_combout\);

-- Location: MLABCELL_X42_Y41_N51
\S0|Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal12~0_combout\ = ( \S0|Equal8~0_combout\ & ( \S0|Equal0~2_combout\ & ( (!\PSWITCH[22]~input_o\ & (\S0|Equal0~1_combout\ & (\S0|Equal0~0_combout\ & !\PSWITCH[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[22]~input_o\,
	datab => \S0|ALT_INV_Equal0~1_combout\,
	datac => \S0|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_PSWITCH[23]~input_o\,
	datae => \S0|ALT_INV_Equal8~0_combout\,
	dataf => \S0|ALT_INV_Equal0~2_combout\,
	combout => \S0|Equal12~0_combout\);

-- Location: LABCELL_X43_Y41_N9
\S0|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal11~0_combout\ = ( !\PSWITCH[9]~input_o\ & ( \PSWITCH[10]~input_o\ & ( (\S0|Equal12~0_combout\ & (!\PSWITCH[11]~input_o\ & (!\PSWITCH[13]~input_o\ & !\PSWITCH[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal12~0_combout\,
	datab => \ALT_INV_PSWITCH[11]~input_o\,
	datac => \ALT_INV_PSWITCH[13]~input_o\,
	datad => \ALT_INV_PSWITCH[12]~input_o\,
	datae => \ALT_INV_PSWITCH[9]~input_o\,
	dataf => \ALT_INV_PSWITCH[10]~input_o\,
	combout => \S0|Equal11~0_combout\);

-- Location: MLABCELL_X42_Y41_N45
\S0|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal9~1_combout\ = ( \S0|Equal9~0_combout\ & ( (!\PSWITCH[1]~input_o\ & (\PSWITCH[8]~input_o\ & !\PSWITCH[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[1]~input_o\,
	datac => \ALT_INV_PSWITCH[8]~input_o\,
	datad => \ALT_INV_PSWITCH[7]~input_o\,
	dataf => \S0|ALT_INV_Equal9~0_combout\,
	combout => \S0|Equal9~1_combout\);

-- Location: LABCELL_X43_Y41_N6
\S0|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal10~0_combout\ = ( !\PSWITCH[10]~input_o\ & ( \PSWITCH[9]~input_o\ & ( (\S0|Equal12~0_combout\ & (!\PSWITCH[11]~input_o\ & (!\PSWITCH[12]~input_o\ & !\PSWITCH[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal12~0_combout\,
	datab => \ALT_INV_PSWITCH[11]~input_o\,
	datac => \ALT_INV_PSWITCH[12]~input_o\,
	datad => \ALT_INV_PSWITCH[13]~input_o\,
	datae => \ALT_INV_PSWITCH[10]~input_o\,
	dataf => \ALT_INV_PSWITCH[9]~input_o\,
	combout => \S0|Equal10~0_combout\);

-- Location: MLABCELL_X42_Y41_N57
\S0|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal1~1_combout\ = ( \S0|Equal0~2_combout\ & ( (!\PSWITCH[22]~input_o\ & (\S0|Equal0~0_combout\ & (!\PSWITCH[23]~input_o\ & \S0|Equal8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[22]~input_o\,
	datab => \S0|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_PSWITCH[23]~input_o\,
	datad => \S0|ALT_INV_Equal8~0_combout\,
	dataf => \S0|ALT_INV_Equal0~2_combout\,
	combout => \S0|Equal1~1_combout\);

-- Location: LABCELL_X44_Y41_N15
\S0|Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal15~0_combout\ = ( !\PSWITCH[0]~input_o\ & ( (\S0|Equal1~1_combout\ & (\PSWITCH[14]~input_o\ & (\S0|Equal1~0_combout\ & !\PSWITCH[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_PSWITCH[14]~input_o\,
	datac => \S0|ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_PSWITCH[15]~input_o\,
	dataf => \ALT_INV_PSWITCH[0]~input_o\,
	combout => \S0|Equal15~0_combout\);

-- Location: LABCELL_X43_Y41_N48
\S0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr2~0_combout\ = ( !\PSWITCH[10]~input_o\ & ( \PSWITCH[12]~input_o\ & ( (!\PSWITCH[11]~input_o\ & (!\PSWITCH[9]~input_o\ & (\S0|Equal12~0_combout\ & !\PSWITCH[13]~input_o\))) ) ) ) # ( !\PSWITCH[10]~input_o\ & ( !\PSWITCH[12]~input_o\ & ( 
-- (!\PSWITCH[9]~input_o\ & (\S0|Equal12~0_combout\ & (!\PSWITCH[11]~input_o\ $ (!\PSWITCH[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[11]~input_o\,
	datab => \ALT_INV_PSWITCH[9]~input_o\,
	datac => \S0|ALT_INV_Equal12~0_combout\,
	datad => \ALT_INV_PSWITCH[13]~input_o\,
	datae => \ALT_INV_PSWITCH[10]~input_o\,
	dataf => \ALT_INV_PSWITCH[12]~input_o\,
	combout => \S0|WideOr2~0_combout\);

-- Location: LABCELL_X43_Y41_N0
\S0|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr1~1_combout\ = ( !\S0|Equal15~0_combout\ & ( !\S0|WideOr2~0_combout\ & ( (!\S0|WideOr1~0_combout\ & (!\S0|Equal11~0_combout\ & (!\S0|Equal9~1_combout\ & !\S0|Equal10~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~0_combout\,
	datab => \S0|ALT_INV_Equal11~0_combout\,
	datac => \S0|ALT_INV_Equal9~1_combout\,
	datad => \S0|ALT_INV_Equal10~0_combout\,
	datae => \S0|ALT_INV_Equal15~0_combout\,
	dataf => \S0|ALT_INV_WideOr2~0_combout\,
	combout => \S0|WideOr1~1_combout\);

-- Location: MLABCELL_X42_Y41_N3
\S0|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~5_combout\ = ( \S0|Equal8~0_combout\ & ( \S0|Equal0~2_combout\ & ( (!\PSWITCH[22]~input_o\ & (\S0|Equal1~0_combout\ & (\S0|Equal0~1_combout\ & !\PSWITCH[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[22]~input_o\,
	datab => \S0|ALT_INV_Equal1~0_combout\,
	datac => \S0|ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_PSWITCH[23]~input_o\,
	datae => \S0|ALT_INV_Equal8~0_combout\,
	dataf => \S0|ALT_INV_Equal0~2_combout\,
	combout => \S0|Equal0~5_combout\);

-- Location: MLABCELL_X42_Y41_N33
\S0|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~6_combout\ = (\S0|Equal0~5_combout\ & \S0|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~5_combout\,
	datac => \S0|ALT_INV_Equal0~0_combout\,
	combout => \S0|Equal0~6_combout\);

-- Location: MLABCELL_X42_Y41_N18
\S0|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal2~0_combout\ = ( !\PSWITCH[7]~input_o\ & ( \S0|Equal9~0_combout\ & ( (!\PSWITCH[8]~input_o\ & \PSWITCH[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PSWITCH[8]~input_o\,
	datac => \ALT_INV_PSWITCH[1]~input_o\,
	datae => \ALT_INV_PSWITCH[7]~input_o\,
	dataf => \S0|ALT_INV_Equal9~0_combout\,
	combout => \S0|Equal2~0_combout\);

-- Location: MLABCELL_X42_Y41_N0
\S0|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal5~0_combout\ = ( \S0|Equal0~0_combout\ & ( \S0|Equal0~2_combout\ & ( (!\PSWITCH[22]~input_o\ & (\S0|Equal1~0_combout\ & (!\PSWITCH[23]~input_o\ & \S0|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[22]~input_o\,
	datab => \S0|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_PSWITCH[23]~input_o\,
	datad => \S0|ALT_INV_Equal0~1_combout\,
	datae => \S0|ALT_INV_Equal0~0_combout\,
	dataf => \S0|ALT_INV_Equal0~2_combout\,
	combout => \S0|Equal5~0_combout\);

-- Location: LABCELL_X43_Y41_N15
\S0|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal3~0_combout\ = ( !\PSWITCH[5]~input_o\ & ( \PSWITCH[2]~input_o\ & ( (!\PSWITCH[6]~input_o\ & (\S0|Equal5~0_combout\ & (!\PSWITCH[4]~input_o\ & !\PSWITCH[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[6]~input_o\,
	datab => \S0|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_PSWITCH[4]~input_o\,
	datad => \ALT_INV_PSWITCH[3]~input_o\,
	datae => \ALT_INV_PSWITCH[5]~input_o\,
	dataf => \ALT_INV_PSWITCH[2]~input_o\,
	combout => \S0|Equal3~0_combout\);

-- Location: LABCELL_X44_Y41_N6
\S0|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal1~2_combout\ = ( \S0|Equal1~0_combout\ & ( \PSWITCH[0]~input_o\ & ( (\S0|Equal1~1_combout\ & (!\PSWITCH[14]~input_o\ & !\PSWITCH[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_PSWITCH[14]~input_o\,
	datac => \ALT_INV_PSWITCH[15]~input_o\,
	datae => \S0|ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_PSWITCH[0]~input_o\,
	combout => \S0|Equal1~2_combout\);

-- Location: LABCELL_X43_Y41_N30
\S0|WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~1_combout\ = ( !\PSWITCH[2]~input_o\ & ( \PSWITCH[3]~input_o\ & ( (!\PSWITCH[6]~input_o\ & (\S0|Equal5~0_combout\ & (!\PSWITCH[4]~input_o\ & !\PSWITCH[5]~input_o\))) ) ) ) # ( !\PSWITCH[2]~input_o\ & ( !\PSWITCH[3]~input_o\ & ( 
-- (\S0|Equal5~0_combout\ & ((!\PSWITCH[6]~input_o\ & (!\PSWITCH[4]~input_o\ $ (!\PSWITCH[5]~input_o\))) # (\PSWITCH[6]~input_o\ & (!\PSWITCH[4]~input_o\ & !\PSWITCH[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[6]~input_o\,
	datab => \S0|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_PSWITCH[4]~input_o\,
	datad => \ALT_INV_PSWITCH[5]~input_o\,
	datae => \ALT_INV_PSWITCH[2]~input_o\,
	dataf => \ALT_INV_PSWITCH[3]~input_o\,
	combout => \S0|WideNor0~1_combout\);

-- Location: MLABCELL_X42_Y41_N24
\S0|WideNor0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~2_combout\ = ( !\S0|WideNor0~1_combout\ & ( (!\S0|Equal0~6_combout\ & (!\S0|Equal2~0_combout\ & (!\S0|Equal3~0_combout\ & !\S0|Equal1~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~6_combout\,
	datab => \S0|ALT_INV_Equal2~0_combout\,
	datac => \S0|ALT_INV_Equal3~0_combout\,
	datad => \S0|ALT_INV_Equal1~2_combout\,
	dataf => \S0|ALT_INV_WideNor0~1_combout\,
	combout => \S0|WideNor0~2_combout\);

-- Location: LABCELL_X44_Y41_N33
\S0|Equal17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal17~0_combout\ = ( !\PSWITCH[19]~input_o\ & ( (!\PSWITCH[21]~input_o\ & !\PSWITCH[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PSWITCH[21]~input_o\,
	datad => \ALT_INV_PSWITCH[20]~input_o\,
	dataf => \ALT_INV_PSWITCH[19]~input_o\,
	combout => \S0|Equal17~0_combout\);

-- Location: LABCELL_X44_Y41_N12
\S0|Equal16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal16~0_combout\ = ( !\PSWITCH[0]~input_o\ & ( (\S0|Equal1~1_combout\ & (!\PSWITCH[14]~input_o\ & (\PSWITCH[15]~input_o\ & \S0|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_PSWITCH[14]~input_o\,
	datac => \ALT_INV_PSWITCH[15]~input_o\,
	datad => \S0|ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_PSWITCH[0]~input_o\,
	combout => \S0|Equal16~0_combout\);

-- Location: LABCELL_X44_Y41_N48
\S0|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~0_combout\ = ( \S0|Equal0~5_combout\ & ( \PSWITCH[16]~input_o\ & ( (!\S0|Equal16~0_combout\ & ((!\S0|Equal17~0_combout\) # ((\PSWITCH[18]~input_o\) # (\PSWITCH[17]~input_o\)))) ) ) ) # ( !\S0|Equal0~5_combout\ & ( \PSWITCH[16]~input_o\ & ( 
-- !\S0|Equal16~0_combout\ ) ) ) # ( \S0|Equal0~5_combout\ & ( !\PSWITCH[16]~input_o\ & ( (!\S0|Equal16~0_combout\ & ((!\S0|Equal17~0_combout\) # (!\PSWITCH[17]~input_o\ $ (\PSWITCH[18]~input_o\)))) ) ) ) # ( !\S0|Equal0~5_combout\ & ( !\PSWITCH[16]~input_o\ 
-- & ( !\S0|Equal16~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111010110000000011111111000000001011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal17~0_combout\,
	datab => \ALT_INV_PSWITCH[17]~input_o\,
	datac => \ALT_INV_PSWITCH[18]~input_o\,
	datad => \S0|ALT_INV_Equal16~0_combout\,
	datae => \S0|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_PSWITCH[16]~input_o\,
	combout => \S0|WideNor0~0_combout\);

-- Location: MLABCELL_X42_Y41_N54
\S0|Equal23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal23~0_combout\ = ( \S0|Equal0~3_combout\ & ( (\S0|Equal0~0_combout\ & (\PSWITCH[22]~input_o\ & !\PSWITCH[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \S0|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_PSWITCH[22]~input_o\,
	datad => \ALT_INV_PSWITCH[23]~input_o\,
	dataf => \S0|ALT_INV_Equal0~3_combout\,
	combout => \S0|Equal23~0_combout\);

-- Location: LABCELL_X44_Y41_N42
\S0|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~4_combout\ = (!\PSWITCH[18]~input_o\ & !\PSWITCH[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[18]~input_o\,
	datab => \ALT_INV_PSWITCH[17]~input_o\,
	combout => \S0|Equal0~4_combout\);

-- Location: LABCELL_X44_Y41_N24
\S0|WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr2~1_combout\ = ( \PSWITCH[20]~input_o\ & ( !\PSWITCH[16]~input_o\ & ( (!\PSWITCH[19]~input_o\ & (\S0|Equal0~4_combout\ & (\S0|Equal0~5_combout\ & !\PSWITCH[21]~input_o\))) ) ) ) # ( !\PSWITCH[20]~input_o\ & ( !\PSWITCH[16]~input_o\ & ( 
-- (\S0|Equal0~4_combout\ & (\S0|Equal0~5_combout\ & (!\PSWITCH[19]~input_o\ $ (!\PSWITCH[21]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[19]~input_o\,
	datab => \S0|ALT_INV_Equal0~4_combout\,
	datac => \S0|ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_PSWITCH[21]~input_o\,
	datae => \ALT_INV_PSWITCH[20]~input_o\,
	dataf => \ALT_INV_PSWITCH[16]~input_o\,
	combout => \S0|WideOr2~1_combout\);

-- Location: LABCELL_X43_Y41_N27
\S0|WideOr2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr2~2_combout\ = ( !\S0|WideOr2~1_combout\ & ( !\S0|Equal23~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \S0|ALT_INV_Equal23~0_combout\,
	dataf => \S0|ALT_INV_WideOr2~1_combout\,
	combout => \S0|WideOr2~2_combout\);

-- Location: LABCELL_X44_Y32_N6
\S0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr0~0_combout\ = ( \S0|WideNor0~0_combout\ & ( \S0|WideOr2~2_combout\ & ( (!\S0|Equal24~0_combout\ & ((!\S0|WideOr1~1_combout\) # (!\S0|WideNor0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal24~0_combout\,
	datab => \S0|ALT_INV_WideOr1~1_combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	datae => \S0|ALT_INV_WideNor0~0_combout\,
	dataf => \S0|ALT_INV_WideOr2~2_combout\,
	combout => \S0|WideOr0~0_combout\);

-- Location: LABCELL_X43_Y41_N12
\S0|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal6~0_combout\ = ( !\PSWITCH[2]~input_o\ & ( \PSWITCH[5]~input_o\ & ( (!\PSWITCH[6]~input_o\ & (\S0|Equal5~0_combout\ & (!\PSWITCH[3]~input_o\ & !\PSWITCH[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[6]~input_o\,
	datab => \S0|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_PSWITCH[3]~input_o\,
	datad => \ALT_INV_PSWITCH[4]~input_o\,
	datae => \ALT_INV_PSWITCH[2]~input_o\,
	dataf => \ALT_INV_PSWITCH[5]~input_o\,
	combout => \S0|Equal6~0_combout\);

-- Location: LABCELL_X44_Y41_N45
\S0|Equal18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal18~0_combout\ = ( \S0|Equal17~0_combout\ & ( (!\PSWITCH[18]~input_o\ & (\PSWITCH[17]~input_o\ & (!\PSWITCH[16]~input_o\ & \S0|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[18]~input_o\,
	datab => \ALT_INV_PSWITCH[17]~input_o\,
	datac => \ALT_INV_PSWITCH[16]~input_o\,
	datad => \S0|ALT_INV_Equal0~5_combout\,
	dataf => \S0|ALT_INV_Equal17~0_combout\,
	combout => \S0|Equal18~0_combout\);

-- Location: LABCELL_X44_Y41_N36
\S0|Equal22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal22~0_combout\ = ( !\PSWITCH[19]~input_o\ & ( \PSWITCH[21]~input_o\ & ( (!\PSWITCH[20]~input_o\ & (!\PSWITCH[16]~input_o\ & (\S0|Equal0~5_combout\ & \S0|Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[20]~input_o\,
	datab => \ALT_INV_PSWITCH[16]~input_o\,
	datac => \S0|ALT_INV_Equal0~5_combout\,
	datad => \S0|ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_PSWITCH[19]~input_o\,
	dataf => \ALT_INV_PSWITCH[21]~input_o\,
	combout => \S0|Equal22~0_combout\);

-- Location: LABCELL_X43_Y41_N42
\S0|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal14~0_combout\ = ( !\PSWITCH[11]~input_o\ & ( \PSWITCH[13]~input_o\ & ( (\S0|Equal12~0_combout\ & (!\PSWITCH[9]~input_o\ & (!\PSWITCH[12]~input_o\ & !\PSWITCH[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal12~0_combout\,
	datab => \ALT_INV_PSWITCH[9]~input_o\,
	datac => \ALT_INV_PSWITCH[12]~input_o\,
	datad => \ALT_INV_PSWITCH[10]~input_o\,
	datae => \ALT_INV_PSWITCH[11]~input_o\,
	dataf => \ALT_INV_PSWITCH[13]~input_o\,
	combout => \S0|Equal14~0_combout\);

-- Location: LABCELL_X44_Y41_N18
\S0|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr4~0_combout\ = ( !\S0|Equal10~0_combout\ & ( !\S0|Equal14~0_combout\ & ( (!\S0|Equal6~0_combout\ & (!\S0|Equal18~0_combout\ & (!\S0|Equal22~0_combout\ & !\S0|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal6~0_combout\,
	datab => \S0|ALT_INV_Equal18~0_combout\,
	datac => \S0|ALT_INV_Equal22~0_combout\,
	datad => \S0|ALT_INV_Equal2~0_combout\,
	datae => \S0|ALT_INV_Equal10~0_combout\,
	dataf => \S0|ALT_INV_Equal14~0_combout\,
	combout => \S0|WideOr4~0_combout\);

-- Location: LABCELL_X44_Y41_N39
\S0|Equal20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal20~0_combout\ = ( !\PSWITCH[21]~input_o\ & ( \PSWITCH[19]~input_o\ & ( (!\PSWITCH[20]~input_o\ & (!\PSWITCH[16]~input_o\ & (\S0|Equal0~4_combout\ & \S0|Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[20]~input_o\,
	datab => \ALT_INV_PSWITCH[16]~input_o\,
	datac => \S0|ALT_INV_Equal0~4_combout\,
	datad => \S0|ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_PSWITCH[21]~input_o\,
	dataf => \ALT_INV_PSWITCH[19]~input_o\,
	combout => \S0|Equal20~0_combout\);

-- Location: LABCELL_X43_Y41_N45
\S0|Equal12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal12~1_combout\ = ( !\PSWITCH[13]~input_o\ & ( \PSWITCH[11]~input_o\ & ( (\S0|Equal12~0_combout\ & (!\PSWITCH[9]~input_o\ & (!\PSWITCH[10]~input_o\ & !\PSWITCH[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal12~0_combout\,
	datab => \ALT_INV_PSWITCH[9]~input_o\,
	datac => \ALT_INV_PSWITCH[10]~input_o\,
	datad => \ALT_INV_PSWITCH[12]~input_o\,
	datae => \ALT_INV_PSWITCH[13]~input_o\,
	dataf => \ALT_INV_PSWITCH[11]~input_o\,
	combout => \S0|Equal12~1_combout\);

-- Location: LABCELL_X43_Y41_N39
\S0|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal4~0_combout\ = ( !\PSWITCH[6]~input_o\ & ( (\PSWITCH[3]~input_o\ & (!\PSWITCH[5]~input_o\ & (!\PSWITCH[2]~input_o\ & !\PSWITCH[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[3]~input_o\,
	datab => \ALT_INV_PSWITCH[5]~input_o\,
	datac => \ALT_INV_PSWITCH[2]~input_o\,
	datad => \ALT_INV_PSWITCH[4]~input_o\,
	dataf => \ALT_INV_PSWITCH[6]~input_o\,
	combout => \S0|Equal4~0_combout\);

-- Location: MLABCELL_X42_Y41_N27
\S0|WideOr4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr4~1_combout\ = ( \S0|Equal4~0_combout\ & ( (!\S0|Equal0~6_combout\ & (!\S0|WideOr1~0_combout\ & !\S0|Equal5~0_combout\)) ) ) # ( !\S0|Equal4~0_combout\ & ( (!\S0|Equal0~6_combout\ & !\S0|WideOr1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~6_combout\,
	datac => \S0|ALT_INV_WideOr1~0_combout\,
	datad => \S0|ALT_INV_Equal5~0_combout\,
	dataf => \S0|ALT_INV_Equal4~0_combout\,
	combout => \S0|WideOr4~1_combout\);

-- Location: LABCELL_X44_Y41_N54
\S0|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr4~combout\ = ( !\S0|Equal16~0_combout\ & ( (\S0|WideOr4~0_combout\ & (!\S0|Equal20~0_combout\ & (!\S0|Equal12~1_combout\ & \S0|WideOr4~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr4~0_combout\,
	datab => \S0|ALT_INV_Equal20~0_combout\,
	datac => \S0|ALT_INV_Equal12~1_combout\,
	datad => \S0|ALT_INV_WideOr4~1_combout\,
	dataf => \S0|ALT_INV_Equal16~0_combout\,
	combout => \S0|WideOr4~combout\);

-- Location: LABCELL_X43_Y41_N57
\S0|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr2~combout\ = ( !\S0|WideOr2~0_combout\ & ( (!\S0|Equal15~0_combout\ & (!\S0|Equal23~0_combout\ & (!\S0|WideOr2~1_combout\ & !\S0|WideNor0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal15~0_combout\,
	datab => \S0|ALT_INV_Equal23~0_combout\,
	datac => \S0|ALT_INV_WideOr2~1_combout\,
	datad => \S0|ALT_INV_WideNor0~1_combout\,
	dataf => \S0|ALT_INV_WideOr2~0_combout\,
	combout => \S0|WideOr2~combout\);

-- Location: LABCELL_X44_Y32_N24
\S0|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr1~combout\ = ( \S0|WideNor0~0_combout\ & ( \S0|WideOr2~2_combout\ & ( (\S0|WideOr1~1_combout\ & !\S0|WideNor0~2_combout\) ) ) ) # ( !\S0|WideNor0~0_combout\ & ( \S0|WideOr2~2_combout\ & ( \S0|WideOr1~1_combout\ ) ) ) # ( \S0|WideNor0~0_combout\ 
-- & ( !\S0|WideOr2~2_combout\ & ( \S0|WideOr1~1_combout\ ) ) ) # ( !\S0|WideNor0~0_combout\ & ( !\S0|WideOr2~2_combout\ & ( \S0|WideOr1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \S0|ALT_INV_WideOr1~1_combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	datae => \S0|ALT_INV_WideNor0~0_combout\,
	dataf => \S0|ALT_INV_WideOr2~2_combout\,
	combout => \S0|WideOr1~combout\);

-- Location: LABCELL_X44_Y41_N30
\S0|Equal19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal19~0_combout\ = ( !\PSWITCH[16]~input_o\ & ( (\PSWITCH[18]~input_o\ & (!\PSWITCH[17]~input_o\ & (\S0|Equal17~0_combout\ & \S0|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[18]~input_o\,
	datab => \ALT_INV_PSWITCH[17]~input_o\,
	datac => \S0|ALT_INV_Equal17~0_combout\,
	datad => \S0|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_PSWITCH[16]~input_o\,
	combout => \S0|Equal19~0_combout\);

-- Location: LABCELL_X43_Y41_N54
\S0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr3~0_combout\ = ( !\S0|Equal3~0_combout\ & ( (!\S0|Equal15~0_combout\ & (!\S0|Equal23~0_combout\ & (!\S0|Equal19~0_combout\ & !\S0|Equal11~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal15~0_combout\,
	datab => \S0|ALT_INV_Equal23~0_combout\,
	datac => \S0|ALT_INV_Equal19~0_combout\,
	datad => \S0|ALT_INV_Equal11~0_combout\,
	dataf => \S0|ALT_INV_Equal3~0_combout\,
	combout => \S0|WideOr3~0_combout\);

-- Location: LABCELL_X43_Y41_N36
\S0|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal5~1_combout\ = ( \S0|Equal5~0_combout\ & ( (!\PSWITCH[5]~input_o\ & (!\PSWITCH[3]~input_o\ & !\PSWITCH[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PSWITCH[5]~input_o\,
	datac => \ALT_INV_PSWITCH[3]~input_o\,
	datad => \ALT_INV_PSWITCH[2]~input_o\,
	dataf => \S0|ALT_INV_Equal5~0_combout\,
	combout => \S0|Equal5~1_combout\);

-- Location: LABCELL_X43_Y41_N18
\S0|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr3~combout\ = ( \S0|WideOr4~0_combout\ & ( (\S0|WideOr3~0_combout\ & ((!\PSWITCH[6]~input_o\) # ((!\S0|Equal5~1_combout\) # (\PSWITCH[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000010110000111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[6]~input_o\,
	datab => \ALT_INV_PSWITCH[4]~input_o\,
	datac => \S0|ALT_INV_WideOr3~0_combout\,
	datad => \S0|ALT_INV_Equal5~1_combout\,
	dataf => \S0|ALT_INV_WideOr4~0_combout\,
	combout => \S0|WideOr3~combout\);

-- Location: MLABCELL_X45_Y4_N24
\L1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux6~0_combout\ = ( \S0|WideOr3~combout\ & ( (\S0|WideOr0~0_combout\ & (!\S0|WideOr4~combout\ & (\S0|WideOr2~combout\ & \S0|WideOr1~combout\))) ) ) # ( !\S0|WideOr3~combout\ & ( !\S0|WideOr1~combout\ $ (((!\S0|WideOr0~0_combout\) # 
-- (!\S0|WideOr2~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr1~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux6~0_combout\);

-- Location: MLABCELL_X45_Y4_N21
\L1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux5~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr4~combout\) # ((!\S0|WideOr1~combout\) # (!\S0|WideOr2~combout\ $ (\S0|WideOr0~0_combout\))) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr2~combout\ & ((!\S0|WideOr1~combout\) # 
-- (\S0|WideOr0~0_combout\))) # (\S0|WideOr2~combout\ & ((!\S0|WideOr0~0_combout\) # (\S0|WideOr1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010110101111111101011010111111111110111111011111111011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr2~combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr0~0_combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux5~0_combout\);

-- Location: MLABCELL_X45_Y4_N3
\L1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux4~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr1~combout\) # (!\S0|WideOr0~0_combout\ $ (\S0|WideOr2~combout\)) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & (((!\S0|WideOr1~combout\)))) # (\S0|WideOr0~0_combout\ & 
-- (!\S0|WideOr4~combout\ & (!\S0|WideOr1~combout\ $ (\S0|WideOr2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000010100100111000001010010011111010111101011111101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux4~0_combout\);

-- Location: MLABCELL_X45_Y4_N33
\L1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux3~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & ((!\S0|WideOr2~combout\ & ((!\S0|WideOr1~combout\))) # (\S0|WideOr2~combout\ & (\S0|WideOr4~combout\)))) # (\S0|WideOr0~0_combout\ & ((!\S0|WideOr2~combout\ & 
-- (\S0|WideOr4~combout\)) # (\S0|WideOr2~combout\ & ((\S0|WideOr1~combout\))))) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & (((!\S0|WideOr1~combout\)))) # (\S0|WideOr0~0_combout\ & (!\S0|WideOr4~combout\ & (!\S0|WideOr1~combout\ $ 
-- (\S0|WideOr2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000010100100111000001010010010110001001001111011000100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux3~0_combout\);

-- Location: MLABCELL_X42_Y5_N39
\L1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux2~0_combout\ = ( \S0|WideOr0~0_combout\ & ( (\S0|WideOr3~combout\ & (\S0|WideOr1~combout\ & !\S0|WideOr4~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr3~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr4~combout\,
	dataf => \S0|ALT_INV_WideOr0~0_combout\,
	combout => \L1|Mux2~0_combout\);

-- Location: MLABCELL_X45_Y4_N27
\L1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux1~0_combout\ = ( \S0|WideOr3~combout\ & ( (\S0|WideOr0~0_combout\ & (!\S0|WideOr4~combout\ & (\S0|WideOr1~combout\ & \S0|WideOr2~combout\))) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & (\S0|WideOr1~combout\ & 
-- !\S0|WideOr2~combout\)) # (\S0|WideOr0~0_combout\ & (!\S0|WideOr1~combout\ & \S0|WideOr2~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux1~0_combout\);

-- Location: MLABCELL_X45_Y4_N51
\L1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux0~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & ((!\S0|WideOr2~combout\) # (!\S0|WideOr4~combout\ $ (!\S0|WideOr1~combout\)))) # (\S0|WideOr0~0_combout\ & ((!\S0|WideOr1~combout\ & ((\S0|WideOr2~combout\))) # 
-- (\S0|WideOr1~combout\ & (!\S0|WideOr4~combout\)))) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & (((!\S0|WideOr1~combout\)))) # (\S0|WideOr0~0_combout\ & (\S0|WideOr4~combout\ & (!\S0|WideOr1~combout\ $ (\S0|WideOr2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010100001101100001010000110101110011111001010111001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux0~0_combout\);

-- Location: MLABCELL_X45_Y4_N42
\L1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux13~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr1~combout\ & (\S0|WideOr0~0_combout\)) # (\S0|WideOr1~combout\ & (\S0|WideOr2~combout\ & ((!\S0|WideOr0~0_combout\) # (!\S0|WideOr4~combout\)))) ) ) # ( !\S0|WideOr3~combout\ & ( 
-- (!\S0|WideOr0~0_combout\ & (\S0|WideOr2~combout\ & \S0|WideOr1~combout\)) # (\S0|WideOr0~0_combout\ & ((!\S0|WideOr1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001010010101010000101001010101000011100101010100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr1~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux13~0_combout\);

-- Location: MLABCELL_X45_Y4_N45
\L1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux12~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & (((!\S0|WideOr1~combout\) # (!\S0|WideOr2~combout\)))) # (\S0|WideOr0~0_combout\ & (!\S0|WideOr4~combout\ & (\S0|WideOr1~combout\ & \S0|WideOr2~combout\))) ) ) # ( 
-- !\S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & ((!\S0|WideOr1~combout\) # (!\S0|WideOr2~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010101010101001001010101010100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux12~0_combout\);

-- Location: MLABCELL_X45_Y4_N36
\L1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux11~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & (((!\S0|WideOr4~combout\ & \S0|WideOr2~combout\)) # (\S0|WideOr1~combout\))) # (\S0|WideOr0~0_combout\ & (((!\S0|WideOr2~combout\) # (!\S0|WideOr1~combout\)) # 
-- (\S0|WideOr4~combout\))) ) ) # ( !\S0|WideOr3~combout\ & ( (\S0|WideOr1~combout\) # (\S0|WideOr0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101011101111110110101110111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr1~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux11~0_combout\);

-- Location: MLABCELL_X45_Y4_N39
\L1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux10~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr1~combout\ & (((!\S0|WideOr2~combout\) # (\S0|WideOr4~combout\)) # (\S0|WideOr0~0_combout\))) # (\S0|WideOr1~combout\ & (\S0|WideOr2~combout\ & ((!\S0|WideOr0~0_combout\) # 
-- (!\S0|WideOr4~combout\)))) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr1~combout\) # ((!\S0|WideOr0~0_combout\ & \S0|WideOr2~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111010111100001111101011110000011111101111000001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux10~0_combout\);

-- Location: MLABCELL_X45_Y4_N18
\L1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux9~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr1~combout\ & ((!\S0|WideOr2~combout\) # (\S0|WideOr4~combout\))) ) ) # ( !\S0|WideOr3~combout\ & ( !\S0|WideOr1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr2~combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datad => \S0|ALT_INV_WideOr1~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux9~0_combout\);

-- Location: LABCELL_X41_Y4_N51
\L1|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux9~1_combout\ = ( \L1|Mux9~0_combout\ & ( \S0|WideOr0~0_combout\ ) ) # ( !\L1|Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \S0|ALT_INV_WideOr0~0_combout\,
	dataf => \L1|ALT_INV_Mux9~0_combout\,
	combout => \L1|Mux9~1_combout\);

-- Location: LABCELL_X44_Y32_N0
\L1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux8~0_combout\ = ( \S0|WideNor0~0_combout\ & ( \S0|WideOr2~2_combout\ & ( (!\S0|WideOr1~1_combout\) # (\S0|WideNor0~2_combout\) ) ) ) # ( !\S0|WideNor0~0_combout\ & ( \S0|WideOr2~2_combout\ ) ) # ( \S0|WideNor0~0_combout\ & ( !\S0|WideOr2~2_combout\ 
-- ) ) # ( !\S0|WideNor0~0_combout\ & ( !\S0|WideOr2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \S0|ALT_INV_WideOr1~1_combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	datae => \S0|ALT_INV_WideNor0~0_combout\,
	dataf => \S0|ALT_INV_WideOr2~2_combout\,
	combout => \L1|Mux8~0_combout\);

-- Location: MLABCELL_X45_Y4_N48
\L1|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux19~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr2~combout\ & (!\S0|WideOr0~0_combout\ $ (((!\S0|WideOr1~combout\) # (\S0|WideOr4~combout\))))) # (\S0|WideOr2~combout\ & ((!\S0|WideOr4~combout\ & ((!\S0|WideOr1~combout\) # 
-- (\S0|WideOr0~0_combout\))) # (\S0|WideOr4~combout\ & ((\S0|WideOr1~combout\))))) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & (\S0|WideOr1~combout\ & (!\S0|WideOr4~combout\ $ (\S0|WideOr2~combout\)))) # (\S0|WideOr0~0_combout\ & 
-- (!\S0|WideOr4~combout\ $ (((!\S0|WideOr2~combout\) # (\S0|WideOr1~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010010011000101001001001101011100100101110101110010010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr1~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux19~0_combout\);

-- Location: MLABCELL_X45_Y4_N0
\L1|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux18~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & ((!\S0|WideOr1~combout\) # (!\S0|WideOr4~combout\ $ (\S0|WideOr2~combout\)))) # (\S0|WideOr0~0_combout\ & ((!\S0|WideOr4~combout\ & ((!\S0|WideOr1~combout\) # 
-- (\S0|WideOr2~combout\))) # (\S0|WideOr4~combout\ & ((!\S0|WideOr2~combout\) # (\S0|WideOr1~combout\))))) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & ((!\S0|WideOr4~combout\) # ((!\S0|WideOr1~combout\) # (\S0|WideOr2~combout\)))) # 
-- (\S0|WideOr0~0_combout\ & ((!\S0|WideOr4~combout\ & (!\S0|WideOr2~combout\ $ (!\S0|WideOr1~combout\))) # (\S0|WideOr4~combout\ & ((!\S0|WideOr2~combout\) # (\S0|WideOr1~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111011011011101111101101101111111110100101111111111010010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr1~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux18~0_combout\);

-- Location: MLABCELL_X45_Y4_N54
\L1|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux17~0_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr2~combout\ & (!\S0|WideOr0~0_combout\ $ (((!\S0|WideOr1~combout\) # (\S0|WideOr4~combout\))))) # (\S0|WideOr2~combout\ & ((!\S0|WideOr4~combout\ & ((!\S0|WideOr1~combout\) # 
-- (\S0|WideOr0~0_combout\))) # (\S0|WideOr4~combout\ & ((\S0|WideOr1~combout\))))) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr4~combout\ & (!\S0|WideOr1~combout\ $ (((!\S0|WideOr0~0_combout\) # (!\S0|WideOr2~combout\))))) # (\S0|WideOr4~combout\ & 
-- ((!\S0|WideOr2~combout\ & (\S0|WideOr0~0_combout\)) # (\S0|WideOr2~combout\ & ((\S0|WideOr1~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010011011011000101001101101101011100100101110101110010010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr1~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux17~0_combout\);

-- Location: MLABCELL_X45_Y4_N12
\L1|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux16~0_combout\ = ( \S0|WideOr3~combout\ & ( (((!\S0|WideOr4~combout\ & \S0|WideOr2~combout\)) # (\S0|WideOr1~combout\)) # (\S0|WideOr0~0_combout\) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr1~combout\ & (\S0|WideOr0~0_combout\)) # 
-- (\S0|WideOr1~combout\ & ((!\S0|WideOr0~0_combout\ $ (\S0|WideOr2~combout\)) # (\S0|WideOr4~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110110111010101011011011101011101111111110101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr1~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux16~0_combout\);

-- Location: MLABCELL_X45_Y4_N15
\L1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux14~0_combout\ = ( \S0|WideOr3~combout\ & ( (\S0|WideOr0~0_combout\ & (!\S0|WideOr4~combout\ & (\S0|WideOr1~combout\ & \S0|WideOr2~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \L1|Mux14~0_combout\);

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

-- Location: LABCELL_X41_Y5_N30
\B1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~53_sumout\ = SUM(( \B1|COUNT\(0) ) + ( VCC ) + ( !VCC ))
-- \B1|Add0~54\ = CARRY(( \B1|COUNT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(0),
	cin => GND,
	sumout => \B1|Add0~53_sumout\,
	cout => \B1|Add0~54\);

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

-- Location: LABCELL_X44_Y32_N21
\S0|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~combout\ = ( \S0|WideNor0~0_combout\ & ( \S0|WideOr2~2_combout\ & ( (\S0|WideNor0~2_combout\ & \S0|WideOr1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \S0|ALT_INV_WideNor0~2_combout\,
	datac => \S0|ALT_INV_WideOr1~1_combout\,
	datae => \S0|ALT_INV_WideNor0~0_combout\,
	dataf => \S0|ALT_INV_WideOr2~2_combout\,
	combout => \S0|WideNor0~combout\);

-- Location: MLABCELL_X42_Y4_N51
\B1|BEEPOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|BEEPOUT~1_combout\ = ( \B1|LessThan0~16_combout\ & ( (\S0|WideNor0~combout\) # (\S0|Equal0~6_combout\) ) ) # ( !\B1|LessThan0~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~6_combout\,
	datac => \S0|ALT_INV_WideNor0~combout\,
	dataf => \B1|ALT_INV_LessThan0~16_combout\,
	combout => \B1|BEEPOUT~1_combout\);

-- Location: MLABCELL_X45_Y4_N9
\B1|Ram0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~13_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & (!\S0|WideOr4~combout\ & (\S0|WideOr1~combout\ & !\S0|WideOr2~combout\))) # (\S0|WideOr0~0_combout\ & (!\S0|WideOr1~combout\ & ((!\S0|WideOr4~combout\) # 
-- (!\S0|WideOr2~combout\)))) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & (\S0|WideOr1~combout\ & (!\S0|WideOr4~combout\ $ (\S0|WideOr2~combout\)))) # (\S0|WideOr0~0_combout\ & (\S0|WideOr2~combout\ & ((\S0|WideOr1~combout\) # 
-- (\S0|WideOr4~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000010111000010000001011101011000010000000101100001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \B1|Ram0~13_combout\);

-- Location: MLABCELL_X42_Y5_N51
\B1|Ram0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~5_combout\ = ( \S0|WideOr1~combout\ & ( (!\S0|WideOr4~combout\ & (!\S0|WideOr2~combout\ & (!\S0|WideOr0~0_combout\ $ (\S0|WideOr3~combout\)))) # (\S0|WideOr4~combout\ & ((!\S0|WideOr3~combout\) # ((\S0|WideOr2~combout\ & 
-- !\S0|WideOr0~0_combout\)))) ) ) # ( !\S0|WideOr1~combout\ & ( (!\S0|WideOr4~combout\ & (\S0|WideOr2~combout\ & ((\S0|WideOr3~combout\) # (\S0|WideOr0~0_combout\)))) # (\S0|WideOr4~combout\ & (!\S0|WideOr2~combout\ & (\S0|WideOr0~0_combout\ & 
-- \S0|WideOr3~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100110000000100010011011010101000110001101010100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr4~combout\,
	datab => \S0|ALT_INV_WideOr2~combout\,
	datac => \S0|ALT_INV_WideOr0~0_combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr1~combout\,
	combout => \B1|Ram0~5_combout\);

-- Location: MLABCELL_X45_Y4_N57
\B1|Ram0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~4_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr0~0_combout\ & (\S0|WideOr1~combout\ & ((!\S0|WideOr4~combout\) # (\S0|WideOr2~combout\)))) # (\S0|WideOr0~0_combout\ & (!\S0|WideOr2~combout\ & (!\S0|WideOr4~combout\ $ 
-- (\S0|WideOr1~combout\)))) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr1~combout\ & (\S0|WideOr0~0_combout\)) # (\S0|WideOr1~combout\ & (((\S0|WideOr4~combout\ & !\S0|WideOr2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010000010100110101000001001001000010100100100100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \B1|Ram0~4_combout\);

-- Location: MLABCELL_X42_Y4_N36
\B1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~4_combout\ = ( \B1|COUNT\(10) & ( (\B1|Ram0~5_combout\ & (!\B1|Ram0~4_combout\ $ (\B1|COUNT\(11)))) ) ) # ( !\B1|COUNT\(10) & ( (!\B1|Ram0~5_combout\ & (!\B1|Ram0~4_combout\ $ (\B1|COUNT\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~5_combout\,
	datac => \B1|ALT_INV_Ram0~4_combout\,
	datad => \B1|ALT_INV_COUNT\(11),
	dataf => \B1|ALT_INV_COUNT\(10),
	combout => \B1|Equal0~4_combout\);

-- Location: MLABCELL_X45_Y4_N30
\B1|Ram0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~2_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr2~combout\ & (((\S0|WideOr1~combout\)))) # (\S0|WideOr2~combout\ & (!\S0|WideOr0~0_combout\ & ((!\S0|WideOr4~combout\) # (\S0|WideOr1~combout\)))) ) ) # ( !\S0|WideOr3~combout\ & ( 
-- (!\S0|WideOr0~0_combout\ & (((\S0|WideOr1~combout\)))) # (\S0|WideOr0~0_combout\ & ((!\S0|WideOr4~combout\ & (!\S0|WideOr2~combout\ & \S0|WideOr1~combout\)) # (\S0|WideOr4~combout\ & ((!\S0|WideOr2~combout\) # (\S0|WideOr1~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111011000100001111101100001000111110100000100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr1~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \B1|Ram0~2_combout\);

-- Location: MLABCELL_X42_Y5_N33
\B1|Ram0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~3_combout\ = ( \S0|WideOr0~0_combout\ & ( (!\S0|WideOr1~combout\ & (!\S0|WideOr2~combout\ $ (((!\S0|WideOr4~combout\) # (\S0|WideOr3~combout\))))) # (\S0|WideOr1~combout\ & ((!\S0|WideOr2~combout\ & (!\S0|WideOr4~combout\ & \S0|WideOr3~combout\)) 
-- # (\S0|WideOr2~combout\ & (\S0|WideOr4~combout\ & !\S0|WideOr3~combout\)))) ) ) # ( !\S0|WideOr0~0_combout\ & ( (\S0|WideOr1~combout\ & \S0|WideOr2~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100101001011000100010100101100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr2~combout\,
	datac => \S0|ALT_INV_WideOr4~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr0~0_combout\,
	combout => \B1|Ram0~3_combout\);

-- Location: MLABCELL_X42_Y4_N18
\B1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~1_combout\ = ( \B1|COUNT\(15) & ( (\B1|Ram0~2_combout\ & (!\B1|Ram0~3_combout\ $ (\B1|COUNT\(14)))) ) ) # ( !\B1|COUNT\(15) & ( (!\B1|Ram0~2_combout\ & (!\B1|Ram0~3_combout\ $ (\B1|COUNT\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~2_combout\,
	datac => \B1|ALT_INV_Ram0~3_combout\,
	datad => \B1|ALT_INV_COUNT\(14),
	dataf => \B1|ALT_INV_COUNT\(15),
	combout => \B1|LessThan0~1_combout\);

-- Location: MLABCELL_X42_Y5_N57
\B1|Ram0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~0_combout\ = ( \S0|WideOr1~combout\ & ( (\S0|WideOr2~combout\ & (!\S0|WideOr4~combout\ $ (\S0|WideOr3~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr1~combout\,
	combout => \B1|Ram0~0_combout\);

-- Location: MLABCELL_X42_Y5_N48
\B1|Ram0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~1_combout\ = ( \S0|WideOr1~combout\ & ( (\S0|WideOr2~combout\ & ((!\S0|WideOr4~combout\) # (\S0|WideOr3~combout\))) ) ) # ( !\S0|WideOr1~combout\ & ( (!\S0|WideOr2~combout\ & (\S0|WideOr4~combout\ & !\S0|WideOr3~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \S0|ALT_INV_WideOr2~combout\,
	datac => \S0|ALT_INV_WideOr4~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr1~combout\,
	combout => \B1|Ram0~1_combout\);

-- Location: LABCELL_X41_Y4_N54
\B1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~0_combout\ = ( \B1|COUNT\(16) & ( (!\B1|Ram0~1_combout\ & (\S0|WideOr0~0_combout\ & (!\B1|Ram0~0_combout\ $ (\B1|COUNT\(17))))) ) ) # ( !\B1|COUNT\(16) & ( (!\S0|WideOr0~0_combout\ & (((!\B1|COUNT\(17))))) # (\S0|WideOr0~0_combout\ & 
-- (\B1|Ram0~1_combout\ & (!\B1|Ram0~0_combout\ $ (\B1|COUNT\(17))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001000000001111100100000000100001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~0_combout\,
	datab => \B1|ALT_INV_Ram0~1_combout\,
	datac => \S0|ALT_INV_WideOr0~0_combout\,
	datad => \B1|ALT_INV_COUNT\(17),
	dataf => \B1|ALT_INV_COUNT\(16),
	combout => \B1|LessThan0~0_combout\);

-- Location: MLABCELL_X42_Y5_N0
\B1|Ram0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~7_combout\ = ( \S0|WideOr0~0_combout\ & ( (!\S0|WideOr1~combout\ & (!\S0|WideOr4~combout\ $ (((!\S0|WideOr3~combout\) # (!\S0|WideOr2~combout\))))) # (\S0|WideOr1~combout\ & ((!\S0|WideOr3~combout\ & ((\S0|WideOr2~combout\))) # 
-- (\S0|WideOr3~combout\ & ((!\S0|WideOr2~combout\) # (\S0|WideOr4~combout\))))) ) ) # ( !\S0|WideOr0~0_combout\ & ( (!\S0|WideOr3~combout\ & (\S0|WideOr1~combout\ & (!\S0|WideOr4~combout\ $ (!\S0|WideOr2~combout\)))) # (\S0|WideOr3~combout\ & 
-- (!\S0|WideOr1~combout\ $ (((!\S0|WideOr2~combout\) # (\S0|WideOr4~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001101100001000100110110000100011101011010110001110101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr3~combout\,
	datab => \S0|ALT_INV_WideOr1~combout\,
	datac => \S0|ALT_INV_WideOr4~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr0~0_combout\,
	combout => \B1|Ram0~7_combout\);

-- Location: MLABCELL_X45_Y4_N6
\B1|Ram0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~6_combout\ = ( \S0|WideOr3~combout\ & ( (!\S0|WideOr4~combout\ & (!\S0|WideOr0~0_combout\ $ (((!\S0|WideOr1~combout\))))) # (\S0|WideOr4~combout\ & ((!\S0|WideOr2~combout\ & ((\S0|WideOr1~combout\))) # (\S0|WideOr2~combout\ & 
-- (\S0|WideOr0~0_combout\)))) ) ) # ( !\S0|WideOr3~combout\ & ( (!\S0|WideOr4~combout\ & (((!\S0|WideOr2~combout\ & \S0|WideOr1~combout\)))) # (\S0|WideOr4~combout\ & (\S0|WideOr0~0_combout\ & ((!\S0|WideOr1~combout\) # (\S0|WideOr2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111000001000100011100000101000101101110010100010110111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr4~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr1~combout\,
	dataf => \S0|ALT_INV_WideOr3~combout\,
	combout => \B1|Ram0~6_combout\);

-- Location: MLABCELL_X42_Y4_N39
\B1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~0_combout\ = ( \B1|COUNT\(12) & ( (\B1|Ram0~7_combout\ & (!\B1|Ram0~6_combout\ $ (\B1|COUNT\(13)))) ) ) # ( !\B1|COUNT\(12) & ( (!\B1|Ram0~7_combout\ & (!\B1|Ram0~6_combout\ $ (\B1|COUNT\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~7_combout\,
	datac => \B1|ALT_INV_Ram0~6_combout\,
	datad => \B1|ALT_INV_COUNT\(13),
	dataf => \B1|ALT_INV_COUNT\(12),
	combout => \B1|Equal0~0_combout\);

-- Location: MLABCELL_X42_Y4_N12
\B1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~5_combout\ = ( \B1|Equal0~0_combout\ & ( (\B1|Equal0~4_combout\ & (\B1|LessThan0~1_combout\ & \B1|LessThan0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Equal0~4_combout\,
	datac => \B1|ALT_INV_LessThan0~1_combout\,
	datad => \B1|ALT_INV_LessThan0~0_combout\,
	dataf => \B1|ALT_INV_Equal0~0_combout\,
	combout => \B1|Equal0~5_combout\);

-- Location: LABCELL_X41_Y5_N12
\B1|Ram0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~14_combout\ = ( \S0|WideOr4~combout\ & ( (\S0|WideOr0~0_combout\ & ((!\S0|WideOr3~combout\ & (\S0|WideOr1~combout\)) # (\S0|WideOr3~combout\ & ((\S0|WideOr2~combout\))))) ) ) # ( !\S0|WideOr4~combout\ & ( (!\S0|WideOr0~0_combout\ & 
-- (\S0|WideOr1~combout\ & ((!\S0|WideOr2~combout\)))) # (\S0|WideOr0~0_combout\ & (\S0|WideOr2~combout\ & ((!\S0|WideOr1~combout\) # (!\S0|WideOr3~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110010010001000011001000010000000100110001000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr0~0_combout\,
	datac => \S0|ALT_INV_WideOr3~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr4~combout\,
	combout => \B1|Ram0~14_combout\);

-- Location: LABCELL_X41_Y5_N15
\B1|Ram0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~15_combout\ = ( \S0|WideOr4~combout\ & ( (!\S0|WideOr2~combout\ & (\S0|WideOr1~combout\ & ((\S0|WideOr3~combout\)))) # (\S0|WideOr2~combout\ & ((!\S0|WideOr3~combout\ & (\S0|WideOr1~combout\)) # (\S0|WideOr3~combout\ & 
-- ((\S0|WideOr0~0_combout\))))) ) ) # ( !\S0|WideOr4~combout\ & ( (!\S0|WideOr0~0_combout\ & (\S0|WideOr1~combout\ & (!\S0|WideOr2~combout\ & !\S0|WideOr3~combout\))) # (\S0|WideOr0~0_combout\ & (!\S0|WideOr3~combout\ $ (((\S0|WideOr1~combout\ & 
-- !\S0|WideOr2~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001100010000011000110001000000000101010100110000010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr0~0_combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr4~combout\,
	combout => \B1|Ram0~15_combout\);

-- Location: LABCELL_X41_Y5_N0
\B1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~2_combout\ = ( \B1|COUNT\(3) & ( (\B1|Ram0~14_combout\ & (!\B1|Ram0~15_combout\ $ (\B1|COUNT\(2)))) ) ) # ( !\B1|COUNT\(3) & ( (!\B1|Ram0~14_combout\ & (!\B1|Ram0~15_combout\ $ (\B1|COUNT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~14_combout\,
	datac => \B1|ALT_INV_Ram0~15_combout\,
	datad => \B1|ALT_INV_COUNT\(2),
	dataf => \B1|ALT_INV_COUNT\(3),
	combout => \B1|Equal0~2_combout\);

-- Location: MLABCELL_X42_Y5_N30
\B1|Ram0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~12_combout\ = ( \S0|WideOr0~0_combout\ & ( (!\S0|WideOr1~combout\ & (!\S0|WideOr2~combout\ & ((!\S0|WideOr4~combout\) # (!\S0|WideOr3~combout\)))) # (\S0|WideOr1~combout\ & (\S0|WideOr4~combout\ & (!\S0|WideOr2~combout\ $ 
-- (\S0|WideOr3~combout\)))) ) ) # ( !\S0|WideOr0~0_combout\ & ( (\S0|WideOr1~combout\ & (\S0|WideOr4~combout\ & \S0|WideOr3~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010110001100100000011000110010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr2~combout\,
	datac => \S0|ALT_INV_WideOr4~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr0~0_combout\,
	combout => \B1|Ram0~12_combout\);

-- Location: LABCELL_X41_Y4_N30
\B1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~73_sumout\ = SUM(( \B1|COUNT\(20) ) + ( GND ) + ( \B1|Add0~78\ ))
-- \B1|Add0~74\ = CARRY(( \B1|COUNT\(20) ) + ( GND ) + ( \B1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(20),
	cin => \B1|Add0~78\,
	sumout => \B1|Add0~73_sumout\,
	cout => \B1|Add0~74\);

-- Location: LABCELL_X41_Y4_N33
\B1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~101_sumout\ = SUM(( \B1|COUNT\(21) ) + ( GND ) + ( \B1|Add0~74\ ))
-- \B1|Add0~102\ = CARRY(( \B1|COUNT\(21) ) + ( GND ) + ( \B1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(21),
	cin => \B1|Add0~74\,
	sumout => \B1|Add0~101_sumout\,
	cout => \B1|Add0~102\);

-- Location: FF_X41_Y4_N35
\B1|COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~101_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(21));

-- Location: LABCELL_X41_Y4_N36
\B1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~97_sumout\ = SUM(( \B1|COUNT\(22) ) + ( GND ) + ( \B1|Add0~102\ ))
-- \B1|Add0~98\ = CARRY(( \B1|COUNT\(22) ) + ( GND ) + ( \B1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(22),
	cin => \B1|Add0~102\,
	sumout => \B1|Add0~97_sumout\,
	cout => \B1|Add0~98\);

-- Location: FF_X41_Y4_N38
\B1|COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~97_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(22));

-- Location: LABCELL_X41_Y4_N39
\B1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~93_sumout\ = SUM(( \B1|COUNT\(23) ) + ( GND ) + ( \B1|Add0~98\ ))
-- \B1|Add0~94\ = CARRY(( \B1|COUNT\(23) ) + ( GND ) + ( \B1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(23),
	cin => \B1|Add0~98\,
	sumout => \B1|Add0~93_sumout\,
	cout => \B1|Add0~94\);

-- Location: FF_X41_Y4_N41
\B1|COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~93_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(23));

-- Location: LABCELL_X41_Y4_N42
\B1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~89_sumout\ = SUM(( \B1|COUNT\(24) ) + ( GND ) + ( \B1|Add0~94\ ))
-- \B1|Add0~90\ = CARRY(( \B1|COUNT\(24) ) + ( GND ) + ( \B1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(24),
	cin => \B1|Add0~94\,
	sumout => \B1|Add0~89_sumout\,
	cout => \B1|Add0~90\);

-- Location: FF_X41_Y4_N44
\B1|COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~89_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(24));

-- Location: LABCELL_X41_Y4_N45
\B1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~85_sumout\ = SUM(( \B1|COUNT\(25) ) + ( GND ) + ( \B1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(25),
	cin => \B1|Add0~90\,
	sumout => \B1|Add0~85_sumout\);

-- Location: FF_X41_Y4_N47
\B1|COUNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~85_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(25));

-- Location: LABCELL_X41_Y4_N48
\B1|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~6_combout\ = ( !\B1|COUNT\(23) & ( (!\B1|COUNT\(22) & (!\B1|COUNT\(24) & (!\B1|COUNT\(21) & !\B1|COUNT\(25)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(22),
	datab => \B1|ALT_INV_COUNT\(24),
	datac => \B1|ALT_INV_COUNT\(21),
	datad => \B1|ALT_INV_COUNT\(25),
	dataf => \B1|ALT_INV_COUNT\(23),
	combout => \B1|Equal0~6_combout\);

-- Location: MLABCELL_X42_Y4_N54
\B1|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~9_combout\ = ( \B1|COUNT\(1) & ( \B1|Equal0~6_combout\ & ( (\B1|Ram0~12_combout\ & (!\B1|COUNT\(19) & (!\B1|COUNT\(20) & !\B1|COUNT\(18)))) ) ) ) # ( !\B1|COUNT\(1) & ( \B1|Equal0~6_combout\ & ( (!\B1|Ram0~12_combout\ & (!\B1|COUNT\(19) & 
-- (!\B1|COUNT\(20) & !\B1|COUNT\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~12_combout\,
	datab => \B1|ALT_INV_COUNT\(19),
	datac => \B1|ALT_INV_COUNT\(20),
	datad => \B1|ALT_INV_COUNT\(18),
	datae => \B1|ALT_INV_COUNT\(1),
	dataf => \B1|ALT_INV_Equal0~6_combout\,
	combout => \B1|Equal0~9_combout\);

-- Location: MLABCELL_X42_Y5_N6
\B1|Ram0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~10_combout\ = ( \S0|WideOr0~0_combout\ & ( (!\S0|WideOr4~combout\ & (!\S0|WideOr2~combout\ $ (((\S0|WideOr1~combout\ & !\S0|WideOr3~combout\))))) # (\S0|WideOr4~combout\ & ((!\S0|WideOr2~combout\) # (!\S0|WideOr1~combout\ $ 
-- (!\S0|WideOr3~combout\)))) ) ) # ( !\S0|WideOr0~0_combout\ & ( (\S0|WideOr1~combout\ & ((!\S0|WideOr2~combout\ & (!\S0|WideOr4~combout\ & \S0|WideOr3~combout\)) # (\S0|WideOr2~combout\ & (!\S0|WideOr4~combout\ $ (\S0|WideOr3~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000001000100000100000110011101110011101001110111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr2~combout\,
	datac => \S0|ALT_INV_WideOr4~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr0~0_combout\,
	combout => \B1|Ram0~10_combout\);

-- Location: MLABCELL_X42_Y5_N9
\B1|Ram0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~11_combout\ = ( \S0|WideOr0~0_combout\ & ( (!\S0|WideOr3~combout\ & (!\S0|WideOr4~combout\ $ (((!\S0|WideOr2~combout\) # (\S0|WideOr1~combout\))))) # (\S0|WideOr3~combout\ & (((!\S0|WideOr2~combout\)))) ) ) # ( !\S0|WideOr0~0_combout\ & ( 
-- (\S0|WideOr1~combout\ & (!\S0|WideOr3~combout\ $ (((\S0|WideOr4~combout\) # (\S0|WideOr2~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010100101101110011000010110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr2~combout\,
	datac => \S0|ALT_INV_WideOr4~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr0~0_combout\,
	combout => \B1|Ram0~11_combout\);

-- Location: LABCELL_X41_Y5_N3
\B1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~1_combout\ = ( \B1|COUNT\(7) & ( (\B1|Ram0~10_combout\ & (!\B1|COUNT\(6) $ (\B1|Ram0~11_combout\))) ) ) # ( !\B1|COUNT\(7) & ( (!\B1|Ram0~10_combout\ & (!\B1|COUNT\(6) $ (\B1|Ram0~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(6),
	datac => \B1|ALT_INV_Ram0~10_combout\,
	datad => \B1|ALT_INV_Ram0~11_combout\,
	dataf => \B1|ALT_INV_COUNT\(7),
	combout => \B1|Equal0~1_combout\);

-- Location: MLABCELL_X42_Y5_N24
\B1|Ram0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~9_combout\ = ( \S0|WideOr0~0_combout\ & ( (!\S0|WideOr4~combout\ & ((!\S0|WideOr2~combout\ & (\S0|WideOr1~combout\)) # (\S0|WideOr2~combout\ & (!\S0|WideOr1~combout\ & !\S0|WideOr3~combout\)))) # (\S0|WideOr4~combout\ & ((!\S0|WideOr1~combout\ & 
-- (!\S0|WideOr2~combout\)) # (\S0|WideOr1~combout\ & ((\S0|WideOr3~combout\))))) ) ) # ( !\S0|WideOr0~0_combout\ & ( (\S0|WideOr1~combout\ & (!\S0|WideOr2~combout\ $ (((!\S0|WideOr4~combout\) # (\S0|WideOr3~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000011000001100000001101101000010011010110100001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr4~combout\,
	datab => \S0|ALT_INV_WideOr2~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr0~0_combout\,
	combout => \B1|Ram0~9_combout\);

-- Location: MLABCELL_X42_Y5_N27
\B1|Ram0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~8_combout\ = ( \S0|WideOr0~0_combout\ & ( (!\S0|WideOr4~combout\ & (!\S0|WideOr1~combout\ $ (((!\S0|WideOr2~combout\) # (!\S0|WideOr3~combout\))))) # (\S0|WideOr4~combout\ & ((!\S0|WideOr2~combout\ & ((\S0|WideOr3~combout\))) # 
-- (\S0|WideOr2~combout\ & (!\S0|WideOr1~combout\ & !\S0|WideOr3~combout\)))) ) ) # ( !\S0|WideOr0~0_combout\ & ( (\S0|WideOr1~combout\ & (!\S0|WideOr4~combout\ $ (((\S0|WideOr2~combout\ & !\S0|WideOr3~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001010000010010000101000011010011011000001101001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr4~combout\,
	datab => \S0|ALT_INV_WideOr2~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr0~0_combout\,
	combout => \B1|Ram0~8_combout\);

-- Location: LABCELL_X41_Y5_N6
\B1|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~4_combout\ = ( \B1|COUNT\(9) & ( (\B1|Ram0~8_combout\ & (!\B1|Ram0~9_combout\ $ (\B1|COUNT\(8)))) ) ) # ( !\B1|COUNT\(9) & ( (!\B1|Ram0~8_combout\ & (!\B1|Ram0~9_combout\ $ (\B1|COUNT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~9_combout\,
	datac => \B1|ALT_INV_Ram0~8_combout\,
	datad => \B1|ALT_INV_COUNT\(8),
	dataf => \B1|ALT_INV_COUNT\(9),
	combout => \B1|LessThan0~4_combout\);

-- Location: MLABCELL_X42_Y5_N42
\B1|Ram0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~16_combout\ = ( \S0|WideOr0~0_combout\ & ( (!\S0|WideOr4~combout\ & (!\S0|WideOr3~combout\ $ (((!\S0|WideOr1~combout\ & \S0|WideOr2~combout\))))) # (\S0|WideOr4~combout\ & (\S0|WideOr1~combout\ & ((!\S0|WideOr2~combout\) # 
-- (\S0|WideOr3~combout\)))) ) ) # ( !\S0|WideOr0~0_combout\ & ( (\S0|WideOr3~combout\ & ((!\S0|WideOr1~combout\ & (!\S0|WideOr4~combout\ & \S0|WideOr2~combout\)) # (\S0|WideOr1~combout\ & (!\S0|WideOr4~combout\ $ (\S0|WideOr2~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000001000100000100000110100011011000011010001101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr3~combout\,
	datab => \S0|ALT_INV_WideOr1~combout\,
	datac => \S0|ALT_INV_WideOr4~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr0~0_combout\,
	combout => \B1|Ram0~16_combout\);

-- Location: MLABCELL_X42_Y5_N45
\B1|Ram0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~17_combout\ = ( \S0|WideOr0~0_combout\ & ( (!\S0|WideOr3~combout\ & (\S0|WideOr1~combout\ & (!\S0|WideOr4~combout\ $ (!\S0|WideOr2~combout\)))) # (\S0|WideOr3~combout\ & ((!\S0|WideOr1~combout\ & ((!\S0|WideOr2~combout\))) # (\S0|WideOr1~combout\ 
-- & (\S0|WideOr4~combout\ & \S0|WideOr2~combout\)))) ) ) # ( !\S0|WideOr0~0_combout\ & ( (!\S0|WideOr1~combout\ & (\S0|WideOr3~combout\ & (!\S0|WideOr4~combout\ & \S0|WideOr2~combout\))) # (\S0|WideOr1~combout\ & (((!\S0|WideOr4~combout\) # 
-- (\S0|WideOr2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110011001100000111001101000110001000010100011000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr3~combout\,
	datab => \S0|ALT_INV_WideOr1~combout\,
	datac => \S0|ALT_INV_WideOr4~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	dataf => \S0|ALT_INV_WideOr0~0_combout\,
	combout => \B1|Ram0~17_combout\);

-- Location: LABCELL_X41_Y5_N24
\B1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~3_combout\ = ( \B1|COUNT\(4) & ( (\B1|Ram0~17_combout\ & (!\B1|Ram0~16_combout\ $ (\B1|COUNT\(5)))) ) ) # ( !\B1|COUNT\(4) & ( (!\B1|Ram0~17_combout\ & (!\B1|Ram0~16_combout\ $ (\B1|COUNT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~16_combout\,
	datac => \B1|ALT_INV_Ram0~17_combout\,
	datad => \B1|ALT_INV_COUNT\(5),
	dataf => \B1|ALT_INV_COUNT\(4),
	combout => \B1|Equal0~3_combout\);

-- Location: MLABCELL_X42_Y5_N3
\B1|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~8_combout\ = ( \B1|Equal0~3_combout\ & ( (\B1|Equal0~1_combout\ & \B1|LessThan0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_Equal0~1_combout\,
	datad => \B1|ALT_INV_LessThan0~4_combout\,
	dataf => \B1|ALT_INV_Equal0~3_combout\,
	combout => \B1|Equal0~8_combout\);

-- Location: MLABCELL_X42_Y4_N42
\B1|Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~10_combout\ = ( \B1|Equal0~9_combout\ & ( \B1|Equal0~8_combout\ & ( (\B1|Equal0~5_combout\ & (\B1|Equal0~2_combout\ & (!\B1|Ram0~13_combout\ $ (\B1|COUNT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~13_combout\,
	datab => \B1|ALT_INV_Equal0~5_combout\,
	datac => \B1|ALT_INV_COUNT\(0),
	datad => \B1|ALT_INV_Equal0~2_combout\,
	datae => \B1|ALT_INV_Equal0~9_combout\,
	dataf => \B1|ALT_INV_Equal0~8_combout\,
	combout => \B1|Equal0~10_combout\);

-- Location: MLABCELL_X42_Y4_N48
\B1|COUNT[25]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|COUNT[25]~0_combout\ = ( \B1|LessThan0~16_combout\ ) # ( !\B1|LessThan0~16_combout\ & ( ((\S0|WideNor0~combout\) # (\B1|Equal0~10_combout\)) # (\S0|Equal0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~6_combout\,
	datab => \B1|ALT_INV_Equal0~10_combout\,
	datad => \S0|ALT_INV_WideNor0~combout\,
	dataf => \B1|ALT_INV_LessThan0~16_combout\,
	combout => \B1|COUNT[25]~0_combout\);

-- Location: FF_X41_Y5_N32
\B1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~53_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(0));

-- Location: LABCELL_X41_Y5_N33
\B1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~49_sumout\ = SUM(( \B1|COUNT\(1) ) + ( GND ) + ( \B1|Add0~54\ ))
-- \B1|Add0~50\ = CARRY(( \B1|COUNT\(1) ) + ( GND ) + ( \B1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(1),
	cin => \B1|Add0~54\,
	sumout => \B1|Add0~49_sumout\,
	cout => \B1|Add0~50\);

-- Location: FF_X41_Y5_N35
\B1|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~49_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(1));

-- Location: LABCELL_X41_Y5_N36
\B1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~61_sumout\ = SUM(( \B1|COUNT\(2) ) + ( GND ) + ( \B1|Add0~50\ ))
-- \B1|Add0~62\ = CARRY(( \B1|COUNT\(2) ) + ( GND ) + ( \B1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(2),
	cin => \B1|Add0~50\,
	sumout => \B1|Add0~61_sumout\,
	cout => \B1|Add0~62\);

-- Location: FF_X41_Y5_N38
\B1|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~61_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(2));

-- Location: LABCELL_X41_Y5_N39
\B1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~57_sumout\ = SUM(( \B1|COUNT\(3) ) + ( GND ) + ( \B1|Add0~62\ ))
-- \B1|Add0~58\ = CARRY(( \B1|COUNT\(3) ) + ( GND ) + ( \B1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(3),
	cin => \B1|Add0~62\,
	sumout => \B1|Add0~57_sumout\,
	cout => \B1|Add0~58\);

-- Location: FF_X41_Y5_N41
\B1|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~57_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(3));

-- Location: LABCELL_X41_Y5_N42
\B1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~69_sumout\ = SUM(( \B1|COUNT\(4) ) + ( GND ) + ( \B1|Add0~58\ ))
-- \B1|Add0~70\ = CARRY(( \B1|COUNT\(4) ) + ( GND ) + ( \B1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(4),
	cin => \B1|Add0~58\,
	sumout => \B1|Add0~69_sumout\,
	cout => \B1|Add0~70\);

-- Location: FF_X41_Y5_N44
\B1|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~69_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(4));

-- Location: LABCELL_X41_Y5_N45
\B1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~65_sumout\ = SUM(( \B1|COUNT\(5) ) + ( GND ) + ( \B1|Add0~70\ ))
-- \B1|Add0~66\ = CARRY(( \B1|COUNT\(5) ) + ( GND ) + ( \B1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(5),
	cin => \B1|Add0~70\,
	sumout => \B1|Add0~65_sumout\,
	cout => \B1|Add0~66\);

-- Location: FF_X41_Y5_N47
\B1|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~65_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(5));

-- Location: LABCELL_X41_Y5_N48
\B1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~45_sumout\ = SUM(( \B1|COUNT\(6) ) + ( GND ) + ( \B1|Add0~66\ ))
-- \B1|Add0~46\ = CARRY(( \B1|COUNT\(6) ) + ( GND ) + ( \B1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(6),
	cin => \B1|Add0~66\,
	sumout => \B1|Add0~45_sumout\,
	cout => \B1|Add0~46\);

-- Location: FF_X41_Y5_N50
\B1|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~45_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(6));

-- Location: LABCELL_X41_Y5_N51
\B1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~41_sumout\ = SUM(( \B1|COUNT\(7) ) + ( GND ) + ( \B1|Add0~46\ ))
-- \B1|Add0~42\ = CARRY(( \B1|COUNT\(7) ) + ( GND ) + ( \B1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(7),
	cin => \B1|Add0~46\,
	sumout => \B1|Add0~41_sumout\,
	cout => \B1|Add0~42\);

-- Location: FF_X41_Y5_N53
\B1|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~41_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(7));

-- Location: LABCELL_X41_Y5_N54
\B1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~37_sumout\ = SUM(( \B1|COUNT\(8) ) + ( GND ) + ( \B1|Add0~42\ ))
-- \B1|Add0~38\ = CARRY(( \B1|COUNT\(8) ) + ( GND ) + ( \B1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(8),
	cin => \B1|Add0~42\,
	sumout => \B1|Add0~37_sumout\,
	cout => \B1|Add0~38\);

-- Location: FF_X41_Y5_N56
\B1|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~37_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(8));

-- Location: LABCELL_X41_Y5_N57
\B1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~33_sumout\ = SUM(( \B1|COUNT\(9) ) + ( GND ) + ( \B1|Add0~38\ ))
-- \B1|Add0~34\ = CARRY(( \B1|COUNT\(9) ) + ( GND ) + ( \B1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(9),
	cin => \B1|Add0~38\,
	sumout => \B1|Add0~33_sumout\,
	cout => \B1|Add0~34\);

-- Location: FF_X41_Y5_N59
\B1|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~33_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(9));

-- Location: LABCELL_X41_Y4_N0
\B1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~21_sumout\ = SUM(( \B1|COUNT\(10) ) + ( GND ) + ( \B1|Add0~34\ ))
-- \B1|Add0~22\ = CARRY(( \B1|COUNT\(10) ) + ( GND ) + ( \B1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(10),
	cin => \B1|Add0~34\,
	sumout => \B1|Add0~21_sumout\,
	cout => \B1|Add0~22\);

-- Location: FF_X41_Y4_N2
\B1|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~21_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(10));

-- Location: LABCELL_X41_Y4_N3
\B1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~17_sumout\ = SUM(( \B1|COUNT\(11) ) + ( GND ) + ( \B1|Add0~22\ ))
-- \B1|Add0~18\ = CARRY(( \B1|COUNT\(11) ) + ( GND ) + ( \B1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(11),
	cin => \B1|Add0~22\,
	sumout => \B1|Add0~17_sumout\,
	cout => \B1|Add0~18\);

-- Location: FF_X41_Y4_N5
\B1|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~17_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(11));

-- Location: LABCELL_X41_Y4_N6
\B1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~29_sumout\ = SUM(( \B1|COUNT\(12) ) + ( GND ) + ( \B1|Add0~18\ ))
-- \B1|Add0~30\ = CARRY(( \B1|COUNT\(12) ) + ( GND ) + ( \B1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(12),
	cin => \B1|Add0~18\,
	sumout => \B1|Add0~29_sumout\,
	cout => \B1|Add0~30\);

-- Location: FF_X41_Y4_N8
\B1|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~29_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(12));

-- Location: LABCELL_X41_Y4_N9
\B1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~25_sumout\ = SUM(( \B1|COUNT\(13) ) + ( GND ) + ( \B1|Add0~30\ ))
-- \B1|Add0~26\ = CARRY(( \B1|COUNT\(13) ) + ( GND ) + ( \B1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(13),
	cin => \B1|Add0~30\,
	sumout => \B1|Add0~25_sumout\,
	cout => \B1|Add0~26\);

-- Location: FF_X41_Y4_N11
\B1|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~25_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(13));

-- Location: LABCELL_X41_Y4_N12
\B1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~13_sumout\ = SUM(( \B1|COUNT\(14) ) + ( GND ) + ( \B1|Add0~26\ ))
-- \B1|Add0~14\ = CARRY(( \B1|COUNT\(14) ) + ( GND ) + ( \B1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(14),
	cin => \B1|Add0~26\,
	sumout => \B1|Add0~13_sumout\,
	cout => \B1|Add0~14\);

-- Location: FF_X41_Y4_N14
\B1|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~13_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(14));

-- Location: LABCELL_X41_Y4_N15
\B1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~9_sumout\ = SUM(( \B1|COUNT\(15) ) + ( GND ) + ( \B1|Add0~14\ ))
-- \B1|Add0~10\ = CARRY(( \B1|COUNT\(15) ) + ( GND ) + ( \B1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(15),
	cin => \B1|Add0~14\,
	sumout => \B1|Add0~9_sumout\,
	cout => \B1|Add0~10\);

-- Location: FF_X42_Y4_N26
\B1|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~9_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	sload => VCC,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(15));

-- Location: LABCELL_X41_Y4_N18
\B1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~5_sumout\ = SUM(( \B1|COUNT\(16) ) + ( GND ) + ( \B1|Add0~10\ ))
-- \B1|Add0~6\ = CARRY(( \B1|COUNT\(16) ) + ( GND ) + ( \B1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(16),
	cin => \B1|Add0~10\,
	sumout => \B1|Add0~5_sumout\,
	cout => \B1|Add0~6\);

-- Location: FF_X41_Y4_N20
\B1|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~5_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(16));

-- Location: LABCELL_X41_Y4_N21
\B1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~1_sumout\ = SUM(( \B1|COUNT\(17) ) + ( GND ) + ( \B1|Add0~6\ ))
-- \B1|Add0~2\ = CARRY(( \B1|COUNT\(17) ) + ( GND ) + ( \B1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(17),
	cin => \B1|Add0~6\,
	sumout => \B1|Add0~1_sumout\,
	cout => \B1|Add0~2\);

-- Location: FF_X41_Y4_N23
\B1|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~1_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(17));

-- Location: LABCELL_X41_Y4_N24
\B1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~81_sumout\ = SUM(( \B1|COUNT\(18) ) + ( GND ) + ( \B1|Add0~2\ ))
-- \B1|Add0~82\ = CARRY(( \B1|COUNT\(18) ) + ( GND ) + ( \B1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(18),
	cin => \B1|Add0~2\,
	sumout => \B1|Add0~81_sumout\,
	cout => \B1|Add0~82\);

-- Location: FF_X41_Y4_N26
\B1|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~81_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(18));

-- Location: LABCELL_X41_Y4_N27
\B1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~77_sumout\ = SUM(( \B1|COUNT\(19) ) + ( GND ) + ( \B1|Add0~82\ ))
-- \B1|Add0~78\ = CARRY(( \B1|COUNT\(19) ) + ( GND ) + ( \B1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(19),
	cin => \B1|Add0~82\,
	sumout => \B1|Add0~77_sumout\,
	cout => \B1|Add0~78\);

-- Location: FF_X41_Y4_N29
\B1|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~77_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(19));

-- Location: FF_X41_Y4_N32
\B1|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~73_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(20));

-- Location: MLABCELL_X42_Y4_N33
\B1|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~7_combout\ = ( \B1|Equal0~6_combout\ & ( (!\B1|COUNT\(20) & (!\B1|COUNT\(18) & !\B1|COUNT\(19))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(20),
	datac => \B1|ALT_INV_COUNT\(18),
	datad => \B1|ALT_INV_COUNT\(19),
	dataf => \B1|ALT_INV_Equal0~6_combout\,
	combout => \B1|Equal0~7_combout\);

-- Location: MLABCELL_X42_Y4_N27
\B1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~2_combout\ = ( !\B1|COUNT\(11) & ( \B1|COUNT\(10) & ( \B1|Ram0~4_combout\ ) ) ) # ( \B1|COUNT\(11) & ( !\B1|COUNT\(10) & ( (\B1|Ram0~4_combout\ & \B1|Ram0~5_combout\) ) ) ) # ( !\B1|COUNT\(11) & ( !\B1|COUNT\(10) & ( (\B1|Ram0~5_combout\) # 
-- (\B1|Ram0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000001010000010101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~4_combout\,
	datac => \B1|ALT_INV_Ram0~5_combout\,
	datae => \B1|ALT_INV_COUNT\(11),
	dataf => \B1|ALT_INV_COUNT\(10),
	combout => \B1|LessThan0~2_combout\);

-- Location: MLABCELL_X42_Y4_N21
\B1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~3_combout\ = ( \B1|Equal0~0_combout\ & ( (\B1|LessThan0~1_combout\ & (\B1|LessThan0~2_combout\ & \B1|LessThan0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_LessThan0~1_combout\,
	datac => \B1|ALT_INV_LessThan0~2_combout\,
	datad => \B1|ALT_INV_LessThan0~0_combout\,
	dataf => \B1|ALT_INV_Equal0~0_combout\,
	combout => \B1|LessThan0~3_combout\);

-- Location: MLABCELL_X42_Y4_N15
\B1|LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~13_combout\ = ( \B1|COUNT\(12) & ( (\B1|Ram0~6_combout\ & !\B1|COUNT\(13)) ) ) # ( !\B1|COUNT\(12) & ( (!\B1|Ram0~7_combout\ & (\B1|Ram0~6_combout\ & !\B1|COUNT\(13))) # (\B1|Ram0~7_combout\ & ((!\B1|COUNT\(13)) # (\B1|Ram0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~7_combout\,
	datac => \B1|ALT_INV_Ram0~6_combout\,
	datad => \B1|ALT_INV_COUNT\(13),
	dataf => \B1|ALT_INV_COUNT\(12),
	combout => \B1|LessThan0~13_combout\);

-- Location: MLABCELL_X42_Y4_N30
\B1|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~12_combout\ = ( \B1|COUNT\(15) & ( (\B1|Ram0~2_combout\ & (\B1|Ram0~3_combout\ & !\B1|COUNT\(14))) ) ) # ( !\B1|COUNT\(15) & ( ((\B1|Ram0~3_combout\ & !\B1|COUNT\(14))) # (\B1|Ram0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~2_combout\,
	datac => \B1|ALT_INV_Ram0~3_combout\,
	datad => \B1|ALT_INV_COUNT\(14),
	dataf => \B1|ALT_INV_COUNT\(15),
	combout => \B1|LessThan0~12_combout\);

-- Location: LABCELL_X41_Y4_N57
\B1|LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~14_combout\ = ( \B1|COUNT\(16) & ( (\B1|Ram0~0_combout\ & (\S0|WideOr0~0_combout\ & !\B1|COUNT\(17))) ) ) # ( !\B1|COUNT\(16) & ( (\S0|WideOr0~0_combout\ & ((!\B1|Ram0~0_combout\ & (!\B1|Ram0~1_combout\ & !\B1|COUNT\(17))) # 
-- (\B1|Ram0~0_combout\ & ((!\B1|Ram0~1_combout\) # (!\B1|COUNT\(17)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000100000011010000010000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~0_combout\,
	datab => \B1|ALT_INV_Ram0~1_combout\,
	datac => \S0|ALT_INV_WideOr0~0_combout\,
	datad => \B1|ALT_INV_COUNT\(17),
	dataf => \B1|ALT_INV_COUNT\(16),
	combout => \B1|LessThan0~14_combout\);

-- Location: MLABCELL_X42_Y4_N0
\B1|LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~15_combout\ = ( \B1|LessThan0~0_combout\ & ( !\B1|LessThan0~14_combout\ & ( (!\B1|LessThan0~12_combout\ & ((!\B1|LessThan0~13_combout\) # (!\B1|LessThan0~1_combout\))) ) ) ) # ( !\B1|LessThan0~0_combout\ & ( !\B1|LessThan0~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_LessThan0~13_combout\,
	datac => \B1|ALT_INV_LessThan0~1_combout\,
	datad => \B1|ALT_INV_LessThan0~12_combout\,
	datae => \B1|ALT_INV_LessThan0~0_combout\,
	dataf => \B1|ALT_INV_LessThan0~14_combout\,
	combout => \B1|LessThan0~15_combout\);

-- Location: MLABCELL_X42_Y5_N36
\B1|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~8_combout\ = ( \B1|COUNT\(7) & ( (\B1|Ram0~10_combout\ & (\B1|Ram0~11_combout\ & !\B1|COUNT\(6))) ) ) # ( !\B1|COUNT\(7) & ( ((\B1|Ram0~11_combout\ & !\B1|COUNT\(6))) # (\B1|Ram0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~10_combout\,
	datac => \B1|ALT_INV_Ram0~11_combout\,
	datad => \B1|ALT_INV_COUNT\(6),
	dataf => \B1|ALT_INV_COUNT\(7),
	combout => \B1|LessThan0~8_combout\);

-- Location: MLABCELL_X42_Y5_N15
\B1|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~9_combout\ = ( !\B1|COUNT\(4) & ( \B1|COUNT\(5) & ( (\B1|Ram0~16_combout\ & \B1|Ram0~17_combout\) ) ) ) # ( \B1|COUNT\(4) & ( !\B1|COUNT\(5) & ( \B1|Ram0~16_combout\ ) ) ) # ( !\B1|COUNT\(4) & ( !\B1|COUNT\(5) & ( (\B1|Ram0~17_combout\) # 
-- (\B1|Ram0~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001100110011001100000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~16_combout\,
	datac => \B1|ALT_INV_Ram0~17_combout\,
	datae => \B1|ALT_INV_COUNT\(4),
	dataf => \B1|ALT_INV_COUNT\(5),
	combout => \B1|LessThan0~9_combout\);

-- Location: MLABCELL_X42_Y5_N54
\B1|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~10_combout\ = ( \B1|COUNT\(9) & ( (\B1|Ram0~9_combout\ & (\B1|Ram0~8_combout\ & !\B1|COUNT\(8))) ) ) # ( !\B1|COUNT\(9) & ( ((\B1|Ram0~9_combout\ & !\B1|COUNT\(8))) # (\B1|Ram0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111001111110000111100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~9_combout\,
	datac => \B1|ALT_INV_Ram0~8_combout\,
	datad => \B1|ALT_INV_COUNT\(8),
	dataf => \B1|ALT_INV_COUNT\(9),
	combout => \B1|LessThan0~10_combout\);

-- Location: MLABCELL_X42_Y5_N18
\B1|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~11_combout\ = ( !\B1|LessThan0~10_combout\ & ( \B1|LessThan0~4_combout\ & ( (!\B1|LessThan0~8_combout\ & ((!\B1|Equal0~1_combout\) # (!\B1|LessThan0~9_combout\))) ) ) ) # ( !\B1|LessThan0~10_combout\ & ( !\B1|LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Equal0~1_combout\,
	datac => \B1|ALT_INV_LessThan0~8_combout\,
	datad => \B1|ALT_INV_LessThan0~9_combout\,
	datae => \B1|ALT_INV_LessThan0~10_combout\,
	dataf => \B1|ALT_INV_LessThan0~4_combout\,
	combout => \B1|LessThan0~11_combout\);

-- Location: LABCELL_X41_Y5_N27
\B1|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~6_combout\ = ( \B1|COUNT\(3) & ( (\B1|Ram0~15_combout\ & (\B1|Ram0~14_combout\ & !\B1|COUNT\(2))) ) ) # ( !\B1|COUNT\(3) & ( ((\B1|Ram0~15_combout\ & !\B1|COUNT\(2))) # (\B1|Ram0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~15_combout\,
	datac => \B1|ALT_INV_Ram0~14_combout\,
	datad => \B1|ALT_INV_COUNT\(2),
	dataf => \B1|ALT_INV_COUNT\(3),
	combout => \B1|LessThan0~6_combout\);

-- Location: LABCELL_X41_Y5_N9
\B1|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~5_combout\ = ( \B1|COUNT\(0) & ( (!\B1|COUNT\(1) & \B1|Ram0~12_combout\) ) ) # ( !\B1|COUNT\(0) & ( (!\B1|COUNT\(1) & ((\B1|Ram0~12_combout\) # (\B1|Ram0~13_combout\))) # (\B1|COUNT\(1) & (\B1|Ram0~13_combout\ & \B1|Ram0~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(1),
	datac => \B1|ALT_INV_Ram0~13_combout\,
	datad => \B1|ALT_INV_Ram0~12_combout\,
	dataf => \B1|ALT_INV_COUNT\(0),
	combout => \B1|LessThan0~5_combout\);

-- Location: LABCELL_X41_Y5_N18
\B1|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~7_combout\ = ( \B1|LessThan0~6_combout\ & ( \B1|LessThan0~5_combout\ & ( (\B1|Equal0~1_combout\ & (\B1|LessThan0~4_combout\ & \B1|Equal0~3_combout\)) ) ) ) # ( !\B1|LessThan0~6_combout\ & ( \B1|LessThan0~5_combout\ & ( (\B1|Equal0~1_combout\ 
-- & (\B1|LessThan0~4_combout\ & (\B1|Equal0~2_combout\ & \B1|Equal0~3_combout\))) ) ) ) # ( \B1|LessThan0~6_combout\ & ( !\B1|LessThan0~5_combout\ & ( (\B1|Equal0~1_combout\ & (\B1|LessThan0~4_combout\ & \B1|Equal0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000000000010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Equal0~1_combout\,
	datab => \B1|ALT_INV_LessThan0~4_combout\,
	datac => \B1|ALT_INV_Equal0~2_combout\,
	datad => \B1|ALT_INV_Equal0~3_combout\,
	datae => \B1|ALT_INV_LessThan0~6_combout\,
	dataf => \B1|ALT_INV_LessThan0~5_combout\,
	combout => \B1|LessThan0~7_combout\);

-- Location: MLABCELL_X42_Y4_N9
\B1|LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~16_combout\ = ( \B1|LessThan0~11_combout\ & ( \B1|LessThan0~7_combout\ & ( (\B1|Equal0~7_combout\ & (((!\B1|LessThan0~15_combout\) # (\B1|Equal0~5_combout\)) # (\B1|LessThan0~3_combout\))) ) ) ) # ( !\B1|LessThan0~11_combout\ & ( 
-- \B1|LessThan0~7_combout\ & ( (\B1|Equal0~7_combout\ & (((!\B1|LessThan0~15_combout\) # (\B1|Equal0~5_combout\)) # (\B1|LessThan0~3_combout\))) ) ) ) # ( \B1|LessThan0~11_combout\ & ( !\B1|LessThan0~7_combout\ & ( (\B1|Equal0~7_combout\ & 
-- ((!\B1|LessThan0~15_combout\) # (\B1|LessThan0~3_combout\))) ) ) ) # ( !\B1|LessThan0~11_combout\ & ( !\B1|LessThan0~7_combout\ & ( (\B1|Equal0~7_combout\ & (((!\B1|LessThan0~15_combout\) # (\B1|Equal0~5_combout\)) # (\B1|LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101010101010001000101010101000101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Equal0~7_combout\,
	datab => \B1|ALT_INV_LessThan0~3_combout\,
	datac => \B1|ALT_INV_Equal0~5_combout\,
	datad => \B1|ALT_INV_LessThan0~15_combout\,
	datae => \B1|ALT_INV_LessThan0~11_combout\,
	dataf => \B1|ALT_INV_LessThan0~7_combout\,
	combout => \B1|LessThan0~16_combout\);

-- Location: LABCELL_X43_Y4_N42
\B1|FLAG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|FLAG~0_combout\ = ( \B1|FLAG~q\ & ( \B1|LessThan0~16_combout\ & ( (!\RESETN~input_o\) # ((!\S0|Equal0~6_combout\ & !\S0|WideNor0~combout\)) ) ) ) # ( \B1|FLAG~q\ & ( !\B1|LessThan0~16_combout\ & ( (!\RESETN~input_o\) # ((!\S0|Equal0~6_combout\ & 
-- (!\S0|WideNor0~combout\ & !\B1|Equal0~10_combout\))) ) ) ) # ( !\B1|FLAG~q\ & ( !\B1|LessThan0~16_combout\ & ( (!\S0|Equal0~6_combout\ & (!\S0|WideNor0~combout\ & (\RESETN~input_o\ & \B1|Equal0~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000111110001111000000000000000000001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~6_combout\,
	datab => \S0|ALT_INV_WideNor0~combout\,
	datac => \ALT_INV_RESETN~input_o\,
	datad => \B1|ALT_INV_Equal0~10_combout\,
	datae => \B1|ALT_INV_FLAG~q\,
	dataf => \B1|ALT_INV_LessThan0~16_combout\,
	combout => \B1|FLAG~0_combout\);

-- Location: FF_X43_Y4_N43
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

-- Location: LABCELL_X43_Y4_N12
\B1|BEEPOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|BEEPOUT~0_combout\ = ( \B1|BEEPOUT~q\ & ( \B1|Equal0~10_combout\ & ( (((\B1|LessThan0~16_combout\ & !\B1|FLAG~q\)) # (\S0|WideNor0~combout\)) # (\S0|Equal0~6_combout\) ) ) ) # ( !\B1|BEEPOUT~q\ & ( \B1|Equal0~10_combout\ & ( (!\S0|Equal0~6_combout\ & 
-- (\B1|LessThan0~16_combout\ & (!\B1|FLAG~q\ & !\S0|WideNor0~combout\))) ) ) ) # ( \B1|BEEPOUT~q\ & ( !\B1|Equal0~10_combout\ & ( ((!\B1|LessThan0~16_combout\) # ((!\B1|FLAG~q\) # (\S0|WideNor0~combout\))) # (\S0|Equal0~6_combout\) ) ) ) # ( !\B1|BEEPOUT~q\ 
-- & ( !\B1|Equal0~10_combout\ & ( (!\S0|Equal0~6_combout\ & (\B1|LessThan0~16_combout\ & (!\B1|FLAG~q\ & !\S0|WideNor0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000111111011111111100100000000000000111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~6_combout\,
	datab => \B1|ALT_INV_LessThan0~16_combout\,
	datac => \B1|ALT_INV_FLAG~q\,
	datad => \S0|ALT_INV_WideNor0~combout\,
	datae => \B1|ALT_INV_BEEPOUT~q\,
	dataf => \B1|ALT_INV_Equal0~10_combout\,
	combout => \B1|BEEPOUT~0_combout\);

-- Location: FF_X43_Y4_N13
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

-- Location: LABCELL_X47_Y40_N3
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


