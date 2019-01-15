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

-- DATE "12/27/2018 16:32:30"

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

ENTITY 	PIANOBETA IS
    PORT (
	CLK : IN std_logic;
	PSWITCH : IN std_logic_vector(23 DOWNTO 0);
	RESETN : IN std_logic;
	SPKR : BUFFER std_logic
	);
END PIANOBETA;

-- Design Ports Information
-- SPKR	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[17]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[18]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[16]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[20]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[19]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[21]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[22]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[23]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[10]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[12]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[15]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[14]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESETN	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PIANOBETA IS
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
SIGNAL ww_SPKR : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PSWITCH[9]~input_o\ : std_logic;
SIGNAL \PSWITCH[13]~input_o\ : std_logic;
SIGNAL \PSWITCH[12]~input_o\ : std_logic;
SIGNAL \PSWITCH[6]~input_o\ : std_logic;
SIGNAL \PSWITCH[5]~input_o\ : std_logic;
SIGNAL \PSWITCH[4]~input_o\ : std_logic;
SIGNAL \PSWITCH[3]~input_o\ : std_logic;
SIGNAL \PSWITCH[2]~input_o\ : std_logic;
SIGNAL \S0|Equal8~0_combout\ : std_logic;
SIGNAL \PSWITCH[22]~input_o\ : std_logic;
SIGNAL \PSWITCH[23]~input_o\ : std_logic;
SIGNAL \PSWITCH[21]~input_o\ : std_logic;
SIGNAL \PSWITCH[20]~input_o\ : std_logic;
SIGNAL \PSWITCH[18]~input_o\ : std_logic;
SIGNAL \PSWITCH[17]~input_o\ : std_logic;
SIGNAL \PSWITCH[19]~input_o\ : std_logic;
SIGNAL \PSWITCH[16]~input_o\ : std_logic;
SIGNAL \S0|Equal0~4_combout\ : std_logic;
SIGNAL \PSWITCH[1]~input_o\ : std_logic;
SIGNAL \PSWITCH[8]~input_o\ : std_logic;
SIGNAL \PSWITCH[7]~input_o\ : std_logic;
SIGNAL \S0|Equal0~1_combout\ : std_logic;
SIGNAL \PSWITCH[15]~input_o\ : std_logic;
SIGNAL \PSWITCH[14]~input_o\ : std_logic;
SIGNAL \PSWITCH[0]~input_o\ : std_logic;
SIGNAL \S0|Equal0~2_combout\ : std_logic;
SIGNAL \S0|Equal12~0_combout\ : std_logic;
SIGNAL \PSWITCH[11]~input_o\ : std_logic;
SIGNAL \PSWITCH[10]~input_o\ : std_logic;
SIGNAL \S0|Equal12~1_combout\ : std_logic;
SIGNAL \S0|Equal4~0_combout\ : std_logic;
SIGNAL \S0|Equal1~0_combout\ : std_logic;
SIGNAL \S0|Equal5~0_combout\ : std_logic;
SIGNAL \S0|Equal24~0_combout\ : std_logic;
SIGNAL \S0|WideNor0~0_combout\ : std_logic;
SIGNAL \S0|Equal0~0_combout\ : std_logic;
SIGNAL \S0|Equal0~3_combout\ : std_logic;
SIGNAL \S0|Equal20~0_combout\ : std_logic;
SIGNAL \S0|Equal9~0_combout\ : std_logic;
SIGNAL \S0|Equal8~1_combout\ : std_logic;
SIGNAL \S0|Equal1~1_combout\ : std_logic;
SIGNAL \S0|Equal16~0_combout\ : std_logic;
SIGNAL \S0|WideNor0~1_combout\ : std_logic;
SIGNAL \S0|Equal24~1_combout\ : std_logic;
SIGNAL \S0|Equal6~0_combout\ : std_logic;
SIGNAL \S0|Equal14~0_combout\ : std_logic;
SIGNAL \S0|Equal2~0_combout\ : std_logic;
SIGNAL \S0|Equal10~0_combout\ : std_logic;
SIGNAL \S0|Equal19~0_combout\ : std_logic;
SIGNAL \S0|Equal18~0_combout\ : std_logic;
SIGNAL \S0|Equal22~0_combout\ : std_logic;
SIGNAL \S0|WideOr3~0_combout\ : std_logic;
SIGNAL \S0|Equal7~0_combout\ : std_logic;
SIGNAL \S0|Equal0~5_combout\ : std_logic;
SIGNAL \S0|Equal23~0_combout\ : std_logic;
SIGNAL \S0|Equal3~0_combout\ : std_logic;
SIGNAL \S0|Equal15~0_combout\ : std_logic;
SIGNAL \S0|Equal11~0_combout\ : std_logic;
SIGNAL \S0|Equal19~1_combout\ : std_logic;
SIGNAL \S0|WideNor0~3_combout\ : std_logic;
SIGNAL \S0|Equal21~0_combout\ : std_logic;
SIGNAL \S0|Equal13~0_combout\ : std_logic;
SIGNAL \S0|Equal9~1_combout\ : std_logic;
SIGNAL \S0|Equal1~2_combout\ : std_logic;
SIGNAL \S0|Equal5~1_combout\ : std_logic;
SIGNAL \S0|Equal17~0_combout\ : std_logic;
SIGNAL \S0|WideNor0~4_combout\ : std_logic;
SIGNAL \S0|WideOr1~0_combout\ : std_logic;
SIGNAL \S0|WideOr1~1_combout\ : std_logic;
SIGNAL \S0|WideOr1~combout\ : std_logic;
SIGNAL \S0|WideOr3~combout\ : std_logic;
SIGNAL \S0|WideOr0~0_combout\ : std_logic;
SIGNAL \S0|WideOr0~1_combout\ : std_logic;
SIGNAL \S0|WideOr0~combout\ : std_logic;
SIGNAL \S0|WideNor0~2_combout\ : std_logic;
SIGNAL \S0|WideOr2~0_combout\ : std_logic;
SIGNAL \S0|WideOr2~combout\ : std_logic;
SIGNAL \B1|Ram0~11_combout\ : std_logic;
SIGNAL \B1|Ram0~10_combout\ : std_logic;
SIGNAL \B1|Add0~53_sumout\ : std_logic;
SIGNAL \RESETN~input_o\ : std_logic;
SIGNAL \B1|LessThan0~17_combout\ : std_logic;
SIGNAL \B1|LessThan0~19_combout\ : std_logic;
SIGNAL \B1|Equal0~10_combout\ : std_logic;
SIGNAL \B1|Add0~42\ : std_logic;
SIGNAL \B1|Add0~37_sumout\ : std_logic;
SIGNAL \B1|FLAG~0_combout\ : std_logic;
SIGNAL \B1|COUNT[0]~0_combout\ : std_logic;
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
SIGNAL \B1|Add0~101_sumout\ : std_logic;
SIGNAL \B1|Add0~102\ : std_logic;
SIGNAL \B1|Add0~97_sumout\ : std_logic;
SIGNAL \B1|Equal0~7_combout\ : std_logic;
SIGNAL \B1|LessThan0~18_combout\ : std_logic;
SIGNAL \B1|Add0~98\ : std_logic;
SIGNAL \B1|Add0~93_sumout\ : std_logic;
SIGNAL \B1|Add0~94\ : std_logic;
SIGNAL \B1|Add0~89_sumout\ : std_logic;
SIGNAL \B1|Add0~90\ : std_logic;
SIGNAL \B1|Add0~85_sumout\ : std_logic;
SIGNAL \B1|Add0~86\ : std_logic;
SIGNAL \B1|Add0~81_sumout\ : std_logic;
SIGNAL \B1|Add0~82\ : std_logic;
SIGNAL \B1|Add0~77_sumout\ : std_logic;
SIGNAL \B1|Add0~78\ : std_logic;
SIGNAL \B1|Add0~73_sumout\ : std_logic;
SIGNAL \B1|Equal0~6_combout\ : std_logic;
SIGNAL \B1|Equal0~11_combout\ : std_logic;
SIGNAL \B1|Ram0~17_combout\ : std_logic;
SIGNAL \B1|Ram0~16_combout\ : std_logic;
SIGNAL \B1|Equal0~3_combout\ : std_logic;
SIGNAL \B1|Ram0~8_combout\ : std_logic;
SIGNAL \B1|Ram0~9_combout\ : std_logic;
SIGNAL \B1|LessThan0~4_combout\ : std_logic;
SIGNAL \B1|Equal0~9_combout\ : std_logic;
SIGNAL \B1|Ram0~7_combout\ : std_logic;
SIGNAL \B1|Ram0~6_combout\ : std_logic;
SIGNAL \B1|Equal0~0_combout\ : std_logic;
SIGNAL \B1|Ram0~2_combout\ : std_logic;
SIGNAL \B1|Ram0~3_combout\ : std_logic;
SIGNAL \B1|LessThan0~1_combout\ : std_logic;
SIGNAL \B1|Ram0~5_combout\ : std_logic;
SIGNAL \B1|Ram0~4_combout\ : std_logic;
SIGNAL \B1|Equal0~4_combout\ : std_logic;
SIGNAL \B1|Ram0~0_combout\ : std_logic;
SIGNAL \B1|Ram0~1_combout\ : std_logic;
SIGNAL \B1|LessThan0~0_combout\ : std_logic;
SIGNAL \B1|Equal0~5_combout\ : std_logic;
SIGNAL \B1|Equal0~12_combout\ : std_logic;
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
SIGNAL \B1|Equal0~1_combout\ : std_logic;
SIGNAL \B1|Ram0~12_combout\ : std_logic;
SIGNAL \B1|Ram0~13_combout\ : std_logic;
SIGNAL \B1|LessThan0~5_combout\ : std_logic;
SIGNAL \B1|Ram0~15_combout\ : std_logic;
SIGNAL \B1|Ram0~14_combout\ : std_logic;
SIGNAL \B1|LessThan0~6_combout\ : std_logic;
SIGNAL \B1|Equal0~2_combout\ : std_logic;
SIGNAL \B1|LessThan0~7_combout\ : std_logic;
SIGNAL \B1|LessThan0~10_combout\ : std_logic;
SIGNAL \B1|LessThan0~9_combout\ : std_logic;
SIGNAL \B1|LessThan0~8_combout\ : std_logic;
SIGNAL \B1|LessThan0~11_combout\ : std_logic;
SIGNAL \B1|LessThan0~12_combout\ : std_logic;
SIGNAL \B1|LessThan0~14_combout\ : std_logic;
SIGNAL \B1|LessThan0~13_combout\ : std_logic;
SIGNAL \B1|LessThan0~15_combout\ : std_logic;
SIGNAL \B1|Equal0~8_combout\ : std_logic;
SIGNAL \B1|LessThan0~2_combout\ : std_logic;
SIGNAL \B1|LessThan0~3_combout\ : std_logic;
SIGNAL \B1|LessThan0~16_combout\ : std_logic;
SIGNAL \B1|FLAG~1_combout\ : std_logic;
SIGNAL \B1|FLAG~q\ : std_logic;
SIGNAL \B1|BEEPOUT~0_combout\ : std_logic;
SIGNAL \B1|BEEPOUT~q\ : std_logic;
SIGNAL \B1|COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_RESETN~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[17]~input_o\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \B1|ALT_INV_FLAG~0_combout\ : std_logic;
SIGNAL \B1|ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Equal0~8_combout\ : std_logic;
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
SIGNAL \S0|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~4_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal17~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal21~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal24~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~3_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal23~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal19~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal16~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal24~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal12~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal20~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal18~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal19~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal14~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal22~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \B1|ALT_INV_FLAG~q\ : std_logic;
SIGNAL \B1|ALT_INV_BEEPOUT~q\ : std_logic;
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
\ALT_INV_PSWITCH[14]~input_o\ <= NOT \PSWITCH[14]~input_o\;
\ALT_INV_PSWITCH[15]~input_o\ <= NOT \PSWITCH[15]~input_o\;
\ALT_INV_PSWITCH[0]~input_o\ <= NOT \PSWITCH[0]~input_o\;
\ALT_INV_PSWITCH[13]~input_o\ <= NOT \PSWITCH[13]~input_o\;
\ALT_INV_PSWITCH[11]~input_o\ <= NOT \PSWITCH[11]~input_o\;
\ALT_INV_PSWITCH[12]~input_o\ <= NOT \PSWITCH[12]~input_o\;
\ALT_INV_PSWITCH[9]~input_o\ <= NOT \PSWITCH[9]~input_o\;
\ALT_INV_PSWITCH[10]~input_o\ <= NOT \PSWITCH[10]~input_o\;
\ALT_INV_PSWITCH[8]~input_o\ <= NOT \PSWITCH[8]~input_o\;
\ALT_INV_PSWITCH[1]~input_o\ <= NOT \PSWITCH[1]~input_o\;
\ALT_INV_PSWITCH[7]~input_o\ <= NOT \PSWITCH[7]~input_o\;
\ALT_INV_PSWITCH[6]~input_o\ <= NOT \PSWITCH[6]~input_o\;
\ALT_INV_PSWITCH[4]~input_o\ <= NOT \PSWITCH[4]~input_o\;
\ALT_INV_PSWITCH[5]~input_o\ <= NOT \PSWITCH[5]~input_o\;
\ALT_INV_PSWITCH[2]~input_o\ <= NOT \PSWITCH[2]~input_o\;
\ALT_INV_PSWITCH[3]~input_o\ <= NOT \PSWITCH[3]~input_o\;
\ALT_INV_PSWITCH[23]~input_o\ <= NOT \PSWITCH[23]~input_o\;
\ALT_INV_PSWITCH[22]~input_o\ <= NOT \PSWITCH[22]~input_o\;
\ALT_INV_PSWITCH[21]~input_o\ <= NOT \PSWITCH[21]~input_o\;
\ALT_INV_PSWITCH[19]~input_o\ <= NOT \PSWITCH[19]~input_o\;
\ALT_INV_PSWITCH[20]~input_o\ <= NOT \PSWITCH[20]~input_o\;
\ALT_INV_PSWITCH[16]~input_o\ <= NOT \PSWITCH[16]~input_o\;
\ALT_INV_PSWITCH[18]~input_o\ <= NOT \PSWITCH[18]~input_o\;
\ALT_INV_PSWITCH[17]~input_o\ <= NOT \PSWITCH[17]~input_o\;
\B1|ALT_INV_Equal0~12_combout\ <= NOT \B1|Equal0~12_combout\;
\B1|ALT_INV_Equal0~11_combout\ <= NOT \B1|Equal0~11_combout\;
\B1|ALT_INV_Equal0~10_combout\ <= NOT \B1|Equal0~10_combout\;
\B1|ALT_INV_LessThan0~19_combout\ <= NOT \B1|LessThan0~19_combout\;
\B1|ALT_INV_LessThan0~18_combout\ <= NOT \B1|LessThan0~18_combout\;
\B1|ALT_INV_LessThan0~17_combout\ <= NOT \B1|LessThan0~17_combout\;
\B1|ALT_INV_Equal0~9_combout\ <= NOT \B1|Equal0~9_combout\;
\B1|ALT_INV_FLAG~0_combout\ <= NOT \B1|FLAG~0_combout\;
\B1|ALT_INV_LessThan0~16_combout\ <= NOT \B1|LessThan0~16_combout\;
\B1|ALT_INV_Equal0~8_combout\ <= NOT \B1|Equal0~8_combout\;
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
\S0|ALT_INV_WideOr0~combout\ <= NOT \S0|WideOr0~combout\;
\S0|ALT_INV_WideOr0~1_combout\ <= NOT \S0|WideOr0~1_combout\;
\B1|ALT_INV_Ram0~0_combout\ <= NOT \B1|Ram0~0_combout\;
\S0|ALT_INV_WideOr1~combout\ <= NOT \S0|WideOr1~combout\;
\S0|ALT_INV_WideOr1~1_combout\ <= NOT \S0|WideOr1~1_combout\;
\S0|ALT_INV_WideNor0~4_combout\ <= NOT \S0|WideNor0~4_combout\;
\S0|ALT_INV_Equal1~2_combout\ <= NOT \S0|Equal1~2_combout\;
\S0|ALT_INV_Equal17~0_combout\ <= NOT \S0|Equal17~0_combout\;
\S0|ALT_INV_Equal21~0_combout\ <= NOT \S0|Equal21~0_combout\;
\S0|ALT_INV_Equal13~0_combout\ <= NOT \S0|Equal13~0_combout\;
\S0|ALT_INV_Equal9~1_combout\ <= NOT \S0|Equal9~1_combout\;
\S0|ALT_INV_Equal5~1_combout\ <= NOT \S0|Equal5~1_combout\;
\S0|ALT_INV_Equal24~1_combout\ <= NOT \S0|Equal24~1_combout\;
\S0|ALT_INV_WideOr2~combout\ <= NOT \S0|WideOr2~combout\;
\S0|ALT_INV_WideOr2~0_combout\ <= NOT \S0|WideOr2~0_combout\;
\S0|ALT_INV_WideOr1~0_combout\ <= NOT \S0|WideOr1~0_combout\;
\S0|ALT_INV_WideOr0~0_combout\ <= NOT \S0|WideOr0~0_combout\;
\S0|ALT_INV_WideOr3~combout\ <= NOT \S0|WideOr3~combout\;
\S0|ALT_INV_WideNor0~3_combout\ <= NOT \S0|WideNor0~3_combout\;
\S0|ALT_INV_Equal15~0_combout\ <= NOT \S0|Equal15~0_combout\;
\S0|ALT_INV_Equal11~0_combout\ <= NOT \S0|Equal11~0_combout\;
\S0|ALT_INV_Equal3~0_combout\ <= NOT \S0|Equal3~0_combout\;
\S0|ALT_INV_Equal23~0_combout\ <= NOT \S0|Equal23~0_combout\;
\S0|ALT_INV_Equal0~5_combout\ <= NOT \S0|Equal0~5_combout\;
\S0|ALT_INV_Equal19~1_combout\ <= NOT \S0|Equal19~1_combout\;
\S0|ALT_INV_Equal7~0_combout\ <= NOT \S0|Equal7~0_combout\;
\S0|ALT_INV_WideNor0~2_combout\ <= NOT \S0|WideNor0~2_combout\;
\S0|ALT_INV_WideNor0~1_combout\ <= NOT \S0|WideNor0~1_combout\;
\S0|ALT_INV_Equal8~1_combout\ <= NOT \S0|Equal8~1_combout\;
\S0|ALT_INV_Equal16~0_combout\ <= NOT \S0|Equal16~0_combout\;
\S0|ALT_INV_Equal1~1_combout\ <= NOT \S0|Equal1~1_combout\;
\S0|ALT_INV_WideNor0~0_combout\ <= NOT \S0|WideNor0~0_combout\;
\S0|ALT_INV_Equal4~0_combout\ <= NOT \S0|Equal4~0_combout\;
\S0|ALT_INV_Equal24~0_combout\ <= NOT \S0|Equal24~0_combout\;
\S0|ALT_INV_Equal12~1_combout\ <= NOT \S0|Equal12~1_combout\;
\S0|ALT_INV_Equal20~0_combout\ <= NOT \S0|Equal20~0_combout\;
\S0|ALT_INV_WideOr3~0_combout\ <= NOT \S0|WideOr3~0_combout\;
\S0|ALT_INV_Equal10~0_combout\ <= NOT \S0|Equal10~0_combout\;
\S0|ALT_INV_Equal2~0_combout\ <= NOT \S0|Equal2~0_combout\;
\S0|ALT_INV_Equal9~0_combout\ <= NOT \S0|Equal9~0_combout\;
\S0|ALT_INV_Equal18~0_combout\ <= NOT \S0|Equal18~0_combout\;
\S0|ALT_INV_Equal19~0_combout\ <= NOT \S0|Equal19~0_combout\;
\S0|ALT_INV_Equal6~0_combout\ <= NOT \S0|Equal6~0_combout\;
\S0|ALT_INV_Equal5~0_combout\ <= NOT \S0|Equal5~0_combout\;
\S0|ALT_INV_Equal14~0_combout\ <= NOT \S0|Equal14~0_combout\;
\S0|ALT_INV_Equal12~0_combout\ <= NOT \S0|Equal12~0_combout\;
\S0|ALT_INV_Equal0~4_combout\ <= NOT \S0|Equal0~4_combout\;
\S0|ALT_INV_Equal22~0_combout\ <= NOT \S0|Equal22~0_combout\;
\S0|ALT_INV_Equal0~3_combout\ <= NOT \S0|Equal0~3_combout\;
\S0|ALT_INV_Equal0~2_combout\ <= NOT \S0|Equal0~2_combout\;
\S0|ALT_INV_Equal1~0_combout\ <= NOT \S0|Equal1~0_combout\;
\S0|ALT_INV_Equal0~1_combout\ <= NOT \S0|Equal0~1_combout\;
\S0|ALT_INV_Equal8~0_combout\ <= NOT \S0|Equal8~0_combout\;
\S0|ALT_INV_Equal0~0_combout\ <= NOT \S0|Equal0~0_combout\;
\B1|ALT_INV_FLAG~q\ <= NOT \B1|FLAG~q\;
\B1|ALT_INV_BEEPOUT~q\ <= NOT \B1|BEEPOUT~q\;
\B1|ALT_INV_COUNT\(18) <= NOT \B1|COUNT\(18);
\B1|ALT_INV_COUNT\(19) <= NOT \B1|COUNT\(19);
\B1|ALT_INV_COUNT\(20) <= NOT \B1|COUNT\(20);
\B1|ALT_INV_COUNT\(21) <= NOT \B1|COUNT\(21);
\B1|ALT_INV_COUNT\(22) <= NOT \B1|COUNT\(22);
\B1|ALT_INV_COUNT\(23) <= NOT \B1|COUNT\(23);
\B1|ALT_INV_COUNT\(24) <= NOT \B1|COUNT\(24);
\B1|ALT_INV_COUNT\(25) <= NOT \B1|COUNT\(25);
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

-- Location: MLABCELL_X42_Y42_N15
\S0|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal8~0_combout\ = ( !\PSWITCH[2]~input_o\ & ( (!\PSWITCH[6]~input_o\ & (!\PSWITCH[5]~input_o\ & (!\PSWITCH[4]~input_o\ & !\PSWITCH[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[6]~input_o\,
	datab => \ALT_INV_PSWITCH[5]~input_o\,
	datac => \ALT_INV_PSWITCH[4]~input_o\,
	datad => \ALT_INV_PSWITCH[3]~input_o\,
	dataf => \ALT_INV_PSWITCH[2]~input_o\,
	combout => \S0|Equal8~0_combout\);

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

-- Location: LABCELL_X43_Y42_N48
\S0|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~4_combout\ = ( !\PSWITCH[19]~input_o\ & ( !\PSWITCH[16]~input_o\ & ( (!\PSWITCH[21]~input_o\ & (!\PSWITCH[20]~input_o\ & (!\PSWITCH[18]~input_o\ & !\PSWITCH[17]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[21]~input_o\,
	datab => \ALT_INV_PSWITCH[20]~input_o\,
	datac => \ALT_INV_PSWITCH[18]~input_o\,
	datad => \ALT_INV_PSWITCH[17]~input_o\,
	datae => \ALT_INV_PSWITCH[19]~input_o\,
	dataf => \ALT_INV_PSWITCH[16]~input_o\,
	combout => \S0|Equal0~4_combout\);

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

-- Location: LABCELL_X41_Y42_N51
\S0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~1_combout\ = ( !\PSWITCH[7]~input_o\ & ( (!\PSWITCH[1]~input_o\ & !\PSWITCH[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[1]~input_o\,
	datac => \ALT_INV_PSWITCH[8]~input_o\,
	dataf => \ALT_INV_PSWITCH[7]~input_o\,
	combout => \S0|Equal0~1_combout\);

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

-- Location: LABCELL_X41_Y42_N33
\S0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~2_combout\ = ( !\PSWITCH[0]~input_o\ & ( (!\PSWITCH[15]~input_o\ & !\PSWITCH[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[15]~input_o\,
	datac => \ALT_INV_PSWITCH[14]~input_o\,
	dataf => \ALT_INV_PSWITCH[0]~input_o\,
	combout => \S0|Equal0~2_combout\);

-- Location: LABCELL_X41_Y42_N42
\S0|Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal12~0_combout\ = ( \S0|Equal0~1_combout\ & ( \S0|Equal0~2_combout\ & ( (\S0|Equal8~0_combout\ & (!\PSWITCH[22]~input_o\ & (!\PSWITCH[23]~input_o\ & \S0|Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal8~0_combout\,
	datab => \ALT_INV_PSWITCH[22]~input_o\,
	datac => \ALT_INV_PSWITCH[23]~input_o\,
	datad => \S0|ALT_INV_Equal0~4_combout\,
	datae => \S0|ALT_INV_Equal0~1_combout\,
	dataf => \S0|ALT_INV_Equal0~2_combout\,
	combout => \S0|Equal12~0_combout\);

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

-- Location: LABCELL_X43_Y42_N39
\S0|Equal12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal12~1_combout\ = ( \PSWITCH[11]~input_o\ & ( !\PSWITCH[10]~input_o\ & ( (!\PSWITCH[9]~input_o\ & (!\PSWITCH[13]~input_o\ & (!\PSWITCH[12]~input_o\ & \S0|Equal12~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[9]~input_o\,
	datab => \ALT_INV_PSWITCH[13]~input_o\,
	datac => \ALT_INV_PSWITCH[12]~input_o\,
	datad => \S0|ALT_INV_Equal12~0_combout\,
	datae => \ALT_INV_PSWITCH[11]~input_o\,
	dataf => \ALT_INV_PSWITCH[10]~input_o\,
	combout => \S0|Equal12~1_combout\);

-- Location: MLABCELL_X42_Y42_N12
\S0|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal4~0_combout\ = ( !\PSWITCH[2]~input_o\ & ( (!\PSWITCH[6]~input_o\ & (!\PSWITCH[5]~input_o\ & (!\PSWITCH[4]~input_o\ & \PSWITCH[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[6]~input_o\,
	datab => \ALT_INV_PSWITCH[5]~input_o\,
	datac => \ALT_INV_PSWITCH[4]~input_o\,
	datad => \ALT_INV_PSWITCH[3]~input_o\,
	dataf => \ALT_INV_PSWITCH[2]~input_o\,
	combout => \S0|Equal4~0_combout\);

-- Location: LABCELL_X43_Y42_N12
\S0|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal1~0_combout\ = ( !\PSWITCH[12]~input_o\ & ( (!\PSWITCH[10]~input_o\ & (!\PSWITCH[11]~input_o\ & (!\PSWITCH[13]~input_o\ & !\PSWITCH[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[10]~input_o\,
	datab => \ALT_INV_PSWITCH[11]~input_o\,
	datac => \ALT_INV_PSWITCH[13]~input_o\,
	datad => \ALT_INV_PSWITCH[9]~input_o\,
	dataf => \ALT_INV_PSWITCH[12]~input_o\,
	combout => \S0|Equal1~0_combout\);

-- Location: LABCELL_X41_Y42_N36
\S0|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal5~0_combout\ = ( \S0|Equal0~4_combout\ & ( \S0|Equal0~2_combout\ & ( (!\PSWITCH[23]~input_o\ & (!\PSWITCH[22]~input_o\ & (\S0|Equal0~1_combout\ & \S0|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[23]~input_o\,
	datab => \ALT_INV_PSWITCH[22]~input_o\,
	datac => \S0|ALT_INV_Equal0~1_combout\,
	datad => \S0|ALT_INV_Equal1~0_combout\,
	datae => \S0|ALT_INV_Equal0~4_combout\,
	dataf => \S0|ALT_INV_Equal0~2_combout\,
	combout => \S0|Equal5~0_combout\);

-- Location: LABCELL_X41_Y42_N6
\S0|Equal24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal24~0_combout\ = ( \S0|Equal0~1_combout\ & ( (\S0|Equal0~2_combout\ & (\S0|Equal1~0_combout\ & (\S0|Equal8~0_combout\ & !\PSWITCH[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~2_combout\,
	datab => \S0|ALT_INV_Equal1~0_combout\,
	datac => \S0|ALT_INV_Equal8~0_combout\,
	datad => \ALT_INV_PSWITCH[22]~input_o\,
	dataf => \S0|ALT_INV_Equal0~1_combout\,
	combout => \S0|Equal24~0_combout\);

-- Location: LABCELL_X41_Y42_N30
\S0|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~0_combout\ = ( \S0|Equal0~4_combout\ & ( ((\S0|Equal4~0_combout\ & \S0|Equal5~0_combout\)) # (\S0|Equal24~0_combout\) ) ) # ( !\S0|Equal0~4_combout\ & ( (\S0|Equal4~0_combout\ & \S0|Equal5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \S0|ALT_INV_Equal4~0_combout\,
	datac => \S0|ALT_INV_Equal5~0_combout\,
	datad => \S0|ALT_INV_Equal24~0_combout\,
	dataf => \S0|ALT_INV_Equal0~4_combout\,
	combout => \S0|WideNor0~0_combout\);

-- Location: LABCELL_X43_Y42_N15
\S0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~0_combout\ = ( !\PSWITCH[17]~input_o\ & ( !\PSWITCH[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_PSWITCH[18]~input_o\,
	dataf => \ALT_INV_PSWITCH[17]~input_o\,
	combout => \S0|Equal0~0_combout\);

-- Location: LABCELL_X41_Y42_N39
\S0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~3_combout\ = ( \S0|Equal8~0_combout\ & ( \S0|Equal0~2_combout\ & ( (!\PSWITCH[23]~input_o\ & (!\PSWITCH[22]~input_o\ & (\S0|Equal1~0_combout\ & \S0|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[23]~input_o\,
	datab => \ALT_INV_PSWITCH[22]~input_o\,
	datac => \S0|ALT_INV_Equal1~0_combout\,
	datad => \S0|ALT_INV_Equal0~1_combout\,
	datae => \S0|ALT_INV_Equal8~0_combout\,
	dataf => \S0|ALT_INV_Equal0~2_combout\,
	combout => \S0|Equal0~3_combout\);

-- Location: LABCELL_X43_Y42_N33
\S0|Equal20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal20~0_combout\ = ( \PSWITCH[19]~input_o\ & ( !\PSWITCH[16]~input_o\ & ( (!\PSWITCH[21]~input_o\ & (\S0|Equal0~0_combout\ & (!\PSWITCH[20]~input_o\ & \S0|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[21]~input_o\,
	datab => \S0|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_PSWITCH[20]~input_o\,
	datad => \S0|ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_PSWITCH[19]~input_o\,
	dataf => \ALT_INV_PSWITCH[16]~input_o\,
	combout => \S0|Equal20~0_combout\);

-- Location: LABCELL_X41_Y42_N45
\S0|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal9~0_combout\ = ( \S0|Equal1~0_combout\ & ( \S0|Equal0~2_combout\ & ( (\S0|Equal8~0_combout\ & (!\PSWITCH[22]~input_o\ & (\S0|Equal0~4_combout\ & !\PSWITCH[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal8~0_combout\,
	datab => \ALT_INV_PSWITCH[22]~input_o\,
	datac => \S0|ALT_INV_Equal0~4_combout\,
	datad => \ALT_INV_PSWITCH[23]~input_o\,
	datae => \S0|ALT_INV_Equal1~0_combout\,
	dataf => \S0|ALT_INV_Equal0~2_combout\,
	combout => \S0|Equal9~0_combout\);

-- Location: LABCELL_X41_Y42_N0
\S0|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal8~1_combout\ = ( !\PSWITCH[8]~input_o\ & ( (\PSWITCH[7]~input_o\ & (\S0|Equal9~0_combout\ & !\PSWITCH[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[7]~input_o\,
	datab => \S0|ALT_INV_Equal9~0_combout\,
	datac => \ALT_INV_PSWITCH[1]~input_o\,
	dataf => \ALT_INV_PSWITCH[8]~input_o\,
	combout => \S0|Equal8~1_combout\);

-- Location: LABCELL_X41_Y42_N24
\S0|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal1~1_combout\ = ( \S0|Equal0~1_combout\ & ( \S0|Equal0~4_combout\ & ( (!\PSWITCH[23]~input_o\ & (\S0|Equal1~0_combout\ & (\S0|Equal8~0_combout\ & !\PSWITCH[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[23]~input_o\,
	datab => \S0|ALT_INV_Equal1~0_combout\,
	datac => \S0|ALT_INV_Equal8~0_combout\,
	datad => \ALT_INV_PSWITCH[22]~input_o\,
	datae => \S0|ALT_INV_Equal0~1_combout\,
	dataf => \S0|ALT_INV_Equal0~4_combout\,
	combout => \S0|Equal1~1_combout\);

-- Location: LABCELL_X41_Y42_N18
\S0|Equal16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal16~0_combout\ = ( !\PSWITCH[14]~input_o\ & ( (\S0|Equal1~1_combout\ & (!\PSWITCH[0]~input_o\ & \PSWITCH[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_PSWITCH[0]~input_o\,
	datac => \ALT_INV_PSWITCH[15]~input_o\,
	dataf => \ALT_INV_PSWITCH[14]~input_o\,
	combout => \S0|Equal16~0_combout\);

-- Location: LABCELL_X41_Y42_N54
\S0|WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~1_combout\ = ( !\S0|Equal8~1_combout\ & ( !\S0|Equal16~0_combout\ & ( (!\S0|Equal12~1_combout\ & (!\S0|WideNor0~0_combout\ & !\S0|Equal20~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal12~1_combout\,
	datab => \S0|ALT_INV_WideNor0~0_combout\,
	datac => \S0|ALT_INV_Equal20~0_combout\,
	datae => \S0|ALT_INV_Equal8~1_combout\,
	dataf => \S0|ALT_INV_Equal16~0_combout\,
	combout => \S0|WideNor0~1_combout\);

-- Location: LABCELL_X41_Y41_N39
\S0|Equal24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal24~1_combout\ = ( \S0|Equal0~4_combout\ & ( (\PSWITCH[23]~input_o\ & \S0|Equal24~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PSWITCH[23]~input_o\,
	datad => \S0|ALT_INV_Equal24~0_combout\,
	dataf => \S0|ALT_INV_Equal0~4_combout\,
	combout => \S0|Equal24~1_combout\);

-- Location: MLABCELL_X42_Y42_N18
\S0|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal6~0_combout\ = ( \PSWITCH[5]~input_o\ & ( !\PSWITCH[6]~input_o\ & ( (!\PSWITCH[3]~input_o\ & (!\PSWITCH[2]~input_o\ & (\S0|Equal5~0_combout\ & !\PSWITCH[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[3]~input_o\,
	datab => \ALT_INV_PSWITCH[2]~input_o\,
	datac => \S0|ALT_INV_Equal5~0_combout\,
	datad => \ALT_INV_PSWITCH[4]~input_o\,
	datae => \ALT_INV_PSWITCH[5]~input_o\,
	dataf => \ALT_INV_PSWITCH[6]~input_o\,
	combout => \S0|Equal6~0_combout\);

-- Location: LABCELL_X43_Y42_N42
\S0|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal14~0_combout\ = ( !\PSWITCH[9]~input_o\ & ( \PSWITCH[13]~input_o\ & ( (\S0|Equal12~0_combout\ & (!\PSWITCH[11]~input_o\ & (!\PSWITCH[10]~input_o\ & !\PSWITCH[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal12~0_combout\,
	datab => \ALT_INV_PSWITCH[11]~input_o\,
	datac => \ALT_INV_PSWITCH[10]~input_o\,
	datad => \ALT_INV_PSWITCH[12]~input_o\,
	datae => \ALT_INV_PSWITCH[9]~input_o\,
	dataf => \ALT_INV_PSWITCH[13]~input_o\,
	combout => \S0|Equal14~0_combout\);

-- Location: LABCELL_X41_Y42_N12
\S0|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal2~0_combout\ = ( !\PSWITCH[8]~input_o\ & ( (\S0|Equal9~0_combout\ & (!\PSWITCH[7]~input_o\ & \PSWITCH[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \S0|ALT_INV_Equal9~0_combout\,
	datac => \ALT_INV_PSWITCH[7]~input_o\,
	datad => \ALT_INV_PSWITCH[1]~input_o\,
	dataf => \ALT_INV_PSWITCH[8]~input_o\,
	combout => \S0|Equal2~0_combout\);

-- Location: LABCELL_X43_Y42_N45
\S0|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal10~0_combout\ = ( !\PSWITCH[13]~input_o\ & ( \PSWITCH[9]~input_o\ & ( (\S0|Equal12~0_combout\ & (!\PSWITCH[11]~input_o\ & (!\PSWITCH[12]~input_o\ & !\PSWITCH[10]~input_o\))) ) ) )

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
	datad => \ALT_INV_PSWITCH[10]~input_o\,
	datae => \ALT_INV_PSWITCH[13]~input_o\,
	dataf => \ALT_INV_PSWITCH[9]~input_o\,
	combout => \S0|Equal10~0_combout\);

-- Location: LABCELL_X43_Y42_N24
\S0|Equal19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal19~0_combout\ = ( !\PSWITCH[20]~input_o\ & ( (!\PSWITCH[19]~input_o\ & (!\PSWITCH[21]~input_o\ & !\PSWITCH[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PSWITCH[19]~input_o\,
	datac => \ALT_INV_PSWITCH[21]~input_o\,
	datad => \ALT_INV_PSWITCH[16]~input_o\,
	dataf => \ALT_INV_PSWITCH[20]~input_o\,
	combout => \S0|Equal19~0_combout\);

-- Location: LABCELL_X43_Y42_N27
\S0|Equal18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal18~0_combout\ = ( \S0|Equal19~0_combout\ & ( (\S0|Equal0~3_combout\ & (\PSWITCH[17]~input_o\ & !\PSWITCH[18]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_PSWITCH[17]~input_o\,
	datad => \ALT_INV_PSWITCH[18]~input_o\,
	dataf => \S0|ALT_INV_Equal19~0_combout\,
	combout => \S0|Equal18~0_combout\);

-- Location: LABCELL_X43_Y42_N18
\S0|Equal22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal22~0_combout\ = ( !\PSWITCH[20]~input_o\ & ( \PSWITCH[21]~input_o\ & ( (!\PSWITCH[16]~input_o\ & (\S0|Equal0~0_combout\ & (\S0|Equal0~3_combout\ & !\PSWITCH[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[16]~input_o\,
	datab => \S0|ALT_INV_Equal0~0_combout\,
	datac => \S0|ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_PSWITCH[19]~input_o\,
	datae => \ALT_INV_PSWITCH[20]~input_o\,
	dataf => \ALT_INV_PSWITCH[21]~input_o\,
	combout => \S0|Equal22~0_combout\);

-- Location: MLABCELL_X42_Y42_N24
\S0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr3~0_combout\ = ( !\S0|Equal18~0_combout\ & ( !\S0|Equal22~0_combout\ & ( (!\S0|Equal6~0_combout\ & (!\S0|Equal14~0_combout\ & (!\S0|Equal2~0_combout\ & !\S0|Equal10~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal6~0_combout\,
	datab => \S0|ALT_INV_Equal14~0_combout\,
	datac => \S0|ALT_INV_Equal2~0_combout\,
	datad => \S0|ALT_INV_Equal10~0_combout\,
	datae => \S0|ALT_INV_Equal18~0_combout\,
	dataf => \S0|ALT_INV_Equal22~0_combout\,
	combout => \S0|WideOr3~0_combout\);

-- Location: MLABCELL_X42_Y42_N21
\S0|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal7~0_combout\ = ( \PSWITCH[6]~input_o\ & ( !\PSWITCH[5]~input_o\ & ( (!\PSWITCH[3]~input_o\ & (!\PSWITCH[2]~input_o\ & (!\PSWITCH[4]~input_o\ & \S0|Equal5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[3]~input_o\,
	datab => \ALT_INV_PSWITCH[2]~input_o\,
	datac => \ALT_INV_PSWITCH[4]~input_o\,
	datad => \S0|ALT_INV_Equal5~0_combout\,
	datae => \ALT_INV_PSWITCH[6]~input_o\,
	dataf => \ALT_INV_PSWITCH[5]~input_o\,
	combout => \S0|Equal7~0_combout\);

-- Location: LABCELL_X41_Y42_N9
\S0|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~5_combout\ = ( \S0|Equal0~1_combout\ & ( (\S0|Equal0~2_combout\ & (\S0|Equal1~0_combout\ & \S0|Equal8~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~2_combout\,
	datab => \S0|ALT_INV_Equal1~0_combout\,
	datad => \S0|ALT_INV_Equal8~0_combout\,
	dataf => \S0|ALT_INV_Equal0~1_combout\,
	combout => \S0|Equal0~5_combout\);

-- Location: LABCELL_X41_Y42_N15
\S0|Equal23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal23~0_combout\ = ( \S0|Equal0~4_combout\ & ( (!\PSWITCH[23]~input_o\ & (\S0|Equal0~5_combout\ & \PSWITCH[22]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[23]~input_o\,
	datac => \S0|ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_PSWITCH[22]~input_o\,
	dataf => \S0|ALT_INV_Equal0~4_combout\,
	combout => \S0|Equal23~0_combout\);

-- Location: MLABCELL_X42_Y42_N54
\S0|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal3~0_combout\ = ( \PSWITCH[2]~input_o\ & ( !\PSWITCH[4]~input_o\ & ( (\S0|Equal5~0_combout\ & (!\PSWITCH[5]~input_o\ & (!\PSWITCH[3]~input_o\ & !\PSWITCH[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_PSWITCH[5]~input_o\,
	datac => \ALT_INV_PSWITCH[3]~input_o\,
	datad => \ALT_INV_PSWITCH[6]~input_o\,
	datae => \ALT_INV_PSWITCH[2]~input_o\,
	dataf => \ALT_INV_PSWITCH[4]~input_o\,
	combout => \S0|Equal3~0_combout\);

-- Location: LABCELL_X41_Y42_N21
\S0|Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal15~0_combout\ = ( \S0|Equal1~1_combout\ & ( (!\PSWITCH[0]~input_o\ & (\PSWITCH[14]~input_o\ & !\PSWITCH[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PSWITCH[0]~input_o\,
	datac => \ALT_INV_PSWITCH[14]~input_o\,
	datad => \ALT_INV_PSWITCH[15]~input_o\,
	dataf => \S0|ALT_INV_Equal1~1_combout\,
	combout => \S0|Equal15~0_combout\);

-- Location: LABCELL_X43_Y42_N36
\S0|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal11~0_combout\ = ( \PSWITCH[10]~input_o\ & ( !\PSWITCH[11]~input_o\ & ( (!\PSWITCH[9]~input_o\ & (!\PSWITCH[13]~input_o\ & (\S0|Equal12~0_combout\ & !\PSWITCH[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[9]~input_o\,
	datab => \ALT_INV_PSWITCH[13]~input_o\,
	datac => \S0|ALT_INV_Equal12~0_combout\,
	datad => \ALT_INV_PSWITCH[12]~input_o\,
	datae => \ALT_INV_PSWITCH[10]~input_o\,
	dataf => \ALT_INV_PSWITCH[11]~input_o\,
	combout => \S0|Equal11~0_combout\);

-- Location: LABCELL_X40_Y42_N12
\S0|Equal19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal19~1_combout\ = ( !\PSWITCH[17]~input_o\ & ( \S0|Equal19~0_combout\ & ( (\PSWITCH[18]~input_o\ & \S0|Equal0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PSWITCH[18]~input_o\,
	datac => \S0|ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_PSWITCH[17]~input_o\,
	dataf => \S0|ALT_INV_Equal19~0_combout\,
	combout => \S0|Equal19~1_combout\);

-- Location: MLABCELL_X42_Y42_N48
\S0|WideNor0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~3_combout\ = ( !\S0|Equal11~0_combout\ & ( !\S0|Equal19~1_combout\ & ( (!\S0|Equal7~0_combout\ & (!\S0|Equal23~0_combout\ & (!\S0|Equal3~0_combout\ & !\S0|Equal15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal7~0_combout\,
	datab => \S0|ALT_INV_Equal23~0_combout\,
	datac => \S0|ALT_INV_Equal3~0_combout\,
	datad => \S0|ALT_INV_Equal15~0_combout\,
	datae => \S0|ALT_INV_Equal11~0_combout\,
	dataf => \S0|ALT_INV_Equal19~1_combout\,
	combout => \S0|WideNor0~3_combout\);

-- Location: LABCELL_X43_Y42_N21
\S0|Equal21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal21~0_combout\ = ( !\PSWITCH[21]~input_o\ & ( \PSWITCH[20]~input_o\ & ( (!\PSWITCH[16]~input_o\ & (\S0|Equal0~0_combout\ & (!\PSWITCH[19]~input_o\ & \S0|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[16]~input_o\,
	datab => \S0|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_PSWITCH[19]~input_o\,
	datad => \S0|ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_PSWITCH[21]~input_o\,
	dataf => \ALT_INV_PSWITCH[20]~input_o\,
	combout => \S0|Equal21~0_combout\);

-- Location: LABCELL_X43_Y42_N54
\S0|Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal13~0_combout\ = ( !\PSWITCH[9]~input_o\ & ( \PSWITCH[12]~input_o\ & ( (\S0|Equal12~0_combout\ & (!\PSWITCH[11]~input_o\ & (!\PSWITCH[13]~input_o\ & !\PSWITCH[10]~input_o\))) ) ) )

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
	datad => \ALT_INV_PSWITCH[10]~input_o\,
	datae => \ALT_INV_PSWITCH[9]~input_o\,
	dataf => \ALT_INV_PSWITCH[12]~input_o\,
	combout => \S0|Equal13~0_combout\);

-- Location: LABCELL_X41_Y42_N3
\S0|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal9~1_combout\ = ( \PSWITCH[8]~input_o\ & ( (!\PSWITCH[7]~input_o\ & (\S0|Equal9~0_combout\ & !\PSWITCH[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[7]~input_o\,
	datac => \S0|ALT_INV_Equal9~0_combout\,
	datad => \ALT_INV_PSWITCH[1]~input_o\,
	dataf => \ALT_INV_PSWITCH[8]~input_o\,
	combout => \S0|Equal9~1_combout\);

-- Location: LABCELL_X41_Y42_N48
\S0|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal1~2_combout\ = ( \PSWITCH[0]~input_o\ & ( (!\PSWITCH[14]~input_o\ & (\S0|Equal1~1_combout\ & !\PSWITCH[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PSWITCH[14]~input_o\,
	datac => \S0|ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_PSWITCH[15]~input_o\,
	dataf => \ALT_INV_PSWITCH[0]~input_o\,
	combout => \S0|Equal1~2_combout\);

-- Location: MLABCELL_X42_Y42_N57
\S0|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal5~1_combout\ = ( \PSWITCH[4]~input_o\ & ( !\PSWITCH[2]~input_o\ & ( (\S0|Equal5~0_combout\ & (!\PSWITCH[5]~input_o\ & (!\PSWITCH[6]~input_o\ & !\PSWITCH[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_PSWITCH[5]~input_o\,
	datac => \ALT_INV_PSWITCH[6]~input_o\,
	datad => \ALT_INV_PSWITCH[3]~input_o\,
	datae => \ALT_INV_PSWITCH[4]~input_o\,
	dataf => \ALT_INV_PSWITCH[2]~input_o\,
	combout => \S0|Equal5~1_combout\);

-- Location: LABCELL_X43_Y42_N30
\S0|Equal17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal17~0_combout\ = ( \PSWITCH[16]~input_o\ & ( !\PSWITCH[19]~input_o\ & ( (!\PSWITCH[21]~input_o\ & (\S0|Equal0~0_combout\ & (\S0|Equal0~3_combout\ & !\PSWITCH[20]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[21]~input_o\,
	datab => \S0|ALT_INV_Equal0~0_combout\,
	datac => \S0|ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_PSWITCH[20]~input_o\,
	datae => \ALT_INV_PSWITCH[16]~input_o\,
	dataf => \ALT_INV_PSWITCH[19]~input_o\,
	combout => \S0|Equal17~0_combout\);

-- Location: MLABCELL_X42_Y42_N42
\S0|WideNor0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~4_combout\ = ( !\S0|Equal5~1_combout\ & ( !\S0|Equal17~0_combout\ & ( (!\S0|Equal21~0_combout\ & (!\S0|Equal13~0_combout\ & (!\S0|Equal9~1_combout\ & !\S0|Equal1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal21~0_combout\,
	datab => \S0|ALT_INV_Equal13~0_combout\,
	datac => \S0|ALT_INV_Equal9~1_combout\,
	datad => \S0|ALT_INV_Equal1~2_combout\,
	datae => \S0|ALT_INV_Equal5~1_combout\,
	dataf => \S0|ALT_INV_Equal17~0_combout\,
	combout => \S0|WideNor0~4_combout\);

-- Location: LABCELL_X43_Y42_N0
\S0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr1~0_combout\ = ( !\PSWITCH[9]~input_o\ & ( \PSWITCH[12]~input_o\ & ( (\S0|Equal12~0_combout\ & (!\PSWITCH[11]~input_o\ & (!\PSWITCH[13]~input_o\ & !\PSWITCH[10]~input_o\))) ) ) ) # ( !\PSWITCH[9]~input_o\ & ( !\PSWITCH[12]~input_o\ & ( 
-- (\S0|Equal12~0_combout\ & (!\PSWITCH[10]~input_o\ & (!\PSWITCH[11]~input_o\ $ (!\PSWITCH[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal12~0_combout\,
	datab => \ALT_INV_PSWITCH[11]~input_o\,
	datac => \ALT_INV_PSWITCH[13]~input_o\,
	datad => \ALT_INV_PSWITCH[10]~input_o\,
	datae => \ALT_INV_PSWITCH[9]~input_o\,
	dataf => \ALT_INV_PSWITCH[12]~input_o\,
	combout => \S0|WideOr1~0_combout\);

-- Location: MLABCELL_X42_Y42_N0
\S0|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr1~1_combout\ = ( !\S0|Equal11~0_combout\ & ( !\S0|Equal8~1_combout\ & ( (!\S0|Equal9~1_combout\ & (!\S0|Equal15~0_combout\ & (!\S0|WideOr1~0_combout\ & !\S0|Equal10~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal9~1_combout\,
	datab => \S0|ALT_INV_Equal15~0_combout\,
	datac => \S0|ALT_INV_WideOr1~0_combout\,
	datad => \S0|ALT_INV_Equal10~0_combout\,
	datae => \S0|ALT_INV_Equal11~0_combout\,
	dataf => \S0|ALT_INV_Equal8~1_combout\,
	combout => \S0|WideOr1~1_combout\);

-- Location: LABCELL_X41_Y41_N6
\S0|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr1~combout\ = ( \S0|WideNor0~4_combout\ & ( \S0|WideOr1~1_combout\ & ( (!\S0|Equal24~1_combout\ & ((!\S0|WideNor0~1_combout\) # ((!\S0|WideOr3~0_combout\) # (!\S0|WideNor0~3_combout\)))) ) ) ) # ( !\S0|WideNor0~4_combout\ & ( 
-- \S0|WideOr1~1_combout\ & ( !\S0|Equal24~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~1_combout\,
	datab => \S0|ALT_INV_Equal24~1_combout\,
	datac => \S0|ALT_INV_WideOr3~0_combout\,
	datad => \S0|ALT_INV_WideNor0~3_combout\,
	datae => \S0|ALT_INV_WideNor0~4_combout\,
	dataf => \S0|ALT_INV_WideOr1~1_combout\,
	combout => \S0|WideOr1~combout\);

-- Location: LABCELL_X41_Y41_N45
\S0|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr3~combout\ = (\S0|WideNor0~3_combout\ & \S0|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~3_combout\,
	datad => \S0|ALT_INV_WideOr3~0_combout\,
	combout => \S0|WideOr3~combout\);

-- Location: LABCELL_X43_Y42_N6
\S0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr0~0_combout\ = ( \PSWITCH[19]~input_o\ & ( !\PSWITCH[16]~input_o\ & ( (!\PSWITCH[21]~input_o\ & (!\PSWITCH[20]~input_o\ & (\S0|Equal0~3_combout\ & \S0|Equal0~0_combout\))) ) ) ) # ( !\PSWITCH[19]~input_o\ & ( !\PSWITCH[16]~input_o\ & ( 
-- (\S0|Equal0~3_combout\ & (\S0|Equal0~0_combout\ & (!\PSWITCH[21]~input_o\ $ (!\PSWITCH[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[21]~input_o\,
	datab => \ALT_INV_PSWITCH[20]~input_o\,
	datac => \S0|ALT_INV_Equal0~3_combout\,
	datad => \S0|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_PSWITCH[19]~input_o\,
	dataf => \ALT_INV_PSWITCH[16]~input_o\,
	combout => \S0|WideOr0~0_combout\);

-- Location: MLABCELL_X42_Y42_N6
\S0|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr0~1_combout\ = ( !\S0|WideOr0~0_combout\ & ( !\S0|Equal16~0_combout\ & ( (!\S0|Equal17~0_combout\ & (!\S0|Equal23~0_combout\ & (!\S0|Equal18~0_combout\ & !\S0|Equal19~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal17~0_combout\,
	datab => \S0|ALT_INV_Equal23~0_combout\,
	datac => \S0|ALT_INV_Equal18~0_combout\,
	datad => \S0|ALT_INV_Equal19~1_combout\,
	datae => \S0|ALT_INV_WideOr0~0_combout\,
	dataf => \S0|ALT_INV_Equal16~0_combout\,
	combout => \S0|WideOr0~1_combout\);

-- Location: LABCELL_X41_Y41_N9
\S0|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr0~combout\ = ( \S0|WideNor0~4_combout\ & ( \S0|WideOr0~1_combout\ & ( (!\S0|Equal24~1_combout\ & ((!\S0|WideNor0~1_combout\) # ((!\S0|WideNor0~3_combout\) # (!\S0|WideOr3~0_combout\)))) ) ) ) # ( !\S0|WideNor0~4_combout\ & ( 
-- \S0|WideOr0~1_combout\ & ( !\S0|Equal24~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~1_combout\,
	datab => \S0|ALT_INV_Equal24~1_combout\,
	datac => \S0|ALT_INV_WideNor0~3_combout\,
	datad => \S0|ALT_INV_WideOr3~0_combout\,
	datae => \S0|ALT_INV_WideNor0~4_combout\,
	dataf => \S0|ALT_INV_WideOr0~1_combout\,
	combout => \S0|WideOr0~combout\);

-- Location: LABCELL_X41_Y41_N51
\S0|WideNor0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~2_combout\ = ( \S0|WideOr3~0_combout\ & ( \S0|WideNor0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~1_combout\,
	datae => \S0|ALT_INV_WideOr3~0_combout\,
	combout => \S0|WideNor0~2_combout\);

-- Location: MLABCELL_X42_Y42_N30
\S0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr2~0_combout\ = ( \PSWITCH[3]~input_o\ & ( !\PSWITCH[2]~input_o\ & ( (\S0|Equal5~0_combout\ & (!\PSWITCH[4]~input_o\ & (!\PSWITCH[6]~input_o\ & !\PSWITCH[5]~input_o\))) ) ) ) # ( !\PSWITCH[3]~input_o\ & ( !\PSWITCH[2]~input_o\ & ( 
-- (\S0|Equal5~0_combout\ & ((!\PSWITCH[4]~input_o\ & (!\PSWITCH[6]~input_o\ $ (!\PSWITCH[5]~input_o\))) # (\PSWITCH[4]~input_o\ & (!\PSWITCH[6]~input_o\ & !\PSWITCH[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_PSWITCH[4]~input_o\,
	datac => \ALT_INV_PSWITCH[6]~input_o\,
	datad => \ALT_INV_PSWITCH[5]~input_o\,
	datae => \ALT_INV_PSWITCH[3]~input_o\,
	dataf => \ALT_INV_PSWITCH[2]~input_o\,
	combout => \S0|WideOr2~0_combout\);

-- Location: MLABCELL_X42_Y42_N36
\S0|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr2~combout\ = ( !\S0|Equal15~0_combout\ & ( !\S0|WideOr2~0_combout\ & ( (!\S0|WideOr0~0_combout\ & (!\S0|Equal23~0_combout\ & !\S0|WideOr1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_Equal23~0_combout\,
	datac => \S0|ALT_INV_WideOr1~0_combout\,
	datae => \S0|ALT_INV_Equal15~0_combout\,
	dataf => \S0|ALT_INV_WideOr2~0_combout\,
	combout => \S0|WideOr2~combout\);

-- Location: LABCELL_X43_Y41_N15
\B1|Ram0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~11_combout\ = ( \S0|WideOr2~combout\ & ( (!\S0|WideOr3~combout\ & (\S0|WideOr0~combout\ & (!\S0|WideOr1~combout\ $ (\S0|WideNor0~2_combout\)))) # (\S0|WideOr3~combout\ & (\S0|WideOr1~combout\ & (!\S0|WideOr0~combout\))) ) ) # ( 
-- !\S0|WideOr2~combout\ & ( (!\S0|WideOr0~combout\ & (\S0|WideOr1~combout\ & (!\S0|WideOr3~combout\ $ (\S0|WideNor0~2_combout\)))) # (\S0|WideOr0~combout\ & (((\S0|WideNor0~2_combout\) # (\S0|WideOr3~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001100011111010000110001111100011000000101000001100000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr3~combout\,
	datac => \S0|ALT_INV_WideOr0~combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~11_combout\);

-- Location: LABCELL_X41_Y41_N27
\B1|Ram0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~10_combout\ = ( \S0|WideOr2~combout\ & ( (!\S0|WideOr1~combout\ & (\S0|WideNor0~2_combout\ & (\S0|WideOr0~combout\ & \S0|WideOr3~combout\))) # (\S0|WideOr1~combout\ & (!\S0|WideOr3~combout\ $ (((\S0|WideNor0~2_combout\ & 
-- !\S0|WideOr0~combout\))))) ) ) # ( !\S0|WideOr2~combout\ & ( (!\S0|WideNor0~2_combout\ & ((!\S0|WideOr1~combout\ & (\S0|WideOr0~combout\)) # (\S0|WideOr1~combout\ & ((\S0|WideOr3~combout\))))) # (\S0|WideNor0~2_combout\ & (\S0|WideOr0~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100111011001100010011101100001011000101000000101100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~2_combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~10_combout\);

-- Location: MLABCELL_X42_Y41_N0
\B1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~53_sumout\ = SUM(( \B1|COUNT\(0) ) + ( VCC ) + ( !VCC ))
-- \B1|Add0~54\ = CARRY(( \B1|COUNT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(0),
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

-- Location: LABCELL_X43_Y41_N24
\B1|LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~17_combout\ = ( \S0|WideOr1~combout\ & ( \B1|COUNT\(3) & ( (!\S0|WideNor0~2_combout\ & ((!\S0|WideOr0~combout\ & (\S0|WideOr2~combout\)) # (\S0|WideOr0~combout\ & ((!\S0|WideOr2~combout\) # (\S0|WideOr3~combout\))))) # 
-- (\S0|WideNor0~2_combout\ & ((!\S0|WideOr0~combout\) # ((!\S0|WideOr2~combout\ & \S0|WideOr3~combout\)))) ) ) ) # ( !\S0|WideOr1~combout\ & ( \B1|COUNT\(3) & ( (!\S0|WideOr0~combout\) # ((!\S0|WideOr2~combout\) # ((\S0|WideNor0~2_combout\ & 
-- !\S0|WideOr3~combout\))) ) ) ) # ( \S0|WideOr1~combout\ & ( !\B1|COUNT\(3) & ( (!\S0|WideNor0~2_combout\ & ((!\S0|WideOr0~combout\ & (!\S0|WideOr2~combout\)) # (\S0|WideOr0~combout\ & (\S0|WideOr2~combout\ & !\S0|WideOr3~combout\)))) # 
-- (\S0|WideNor0~2_combout\ & (\S0|WideOr0~combout\ & ((!\S0|WideOr3~combout\) # (\S0|WideOr2~combout\)))) ) ) ) # ( !\S0|WideOr1~combout\ & ( !\B1|COUNT\(3) & ( (\S0|WideOr0~combout\ & (\S0|WideOr2~combout\ & ((!\S0|WideNor0~2_combout\) # 
-- (\S0|WideOr3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000011100100111000000111111101111111000110110001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~2_combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	datae => \S0|ALT_INV_WideOr1~combout\,
	dataf => \B1|ALT_INV_COUNT\(3),
	combout => \B1|LessThan0~17_combout\);

-- Location: LABCELL_X43_Y41_N6
\B1|LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~19_combout\ = ( \S0|WideOr1~combout\ & ( \B1|COUNT\(2) & ( (!\S0|WideOr2~combout\ & (!\S0|WideOr3~combout\ $ (((!\S0|WideNor0~2_combout\ & !\S0|WideOr0~combout\))))) # (\S0|WideOr2~combout\ & ((!\S0|WideNor0~2_combout\ & 
-- ((!\S0|WideOr0~combout\) # (\S0|WideOr3~combout\))) # (\S0|WideNor0~2_combout\ & (!\S0|WideOr0~combout\ & \S0|WideOr3~combout\)))) ) ) ) # ( !\S0|WideOr1~combout\ & ( \B1|COUNT\(2) & ( (!\S0|WideOr0~combout\) # ((!\S0|WideNor0~2_combout\ & 
-- ((\S0|WideOr3~combout\))) # (\S0|WideNor0~2_combout\ & ((!\S0|WideOr2~combout\) # (!\S0|WideOr3~combout\)))) ) ) ) # ( \S0|WideOr1~combout\ & ( !\B1|COUNT\(2) & ( (!\S0|WideOr2~combout\ & (!\S0|WideOr3~combout\ $ (((\S0|WideOr0~combout\) # 
-- (\S0|WideNor0~2_combout\))))) # (\S0|WideOr2~combout\ & ((!\S0|WideNor0~2_combout\ & (\S0|WideOr0~combout\ & !\S0|WideOr3~combout\)) # (\S0|WideNor0~2_combout\ & ((!\S0|WideOr3~combout\) # (\S0|WideOr0~combout\))))) ) ) ) # ( !\S0|WideOr1~combout\ & ( 
-- !\B1|COUNT\(2) & ( (\S0|WideOr0~combout\ & ((!\S0|WideNor0~2_combout\ & ((!\S0|WideOr3~combout\))) # (\S0|WideNor0~2_combout\ & (\S0|WideOr2~combout\ & \S0|WideOr3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000001100001110111000111011101111111100111100010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~2_combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	datae => \S0|ALT_INV_WideOr1~combout\,
	dataf => \B1|ALT_INV_COUNT\(2),
	combout => \B1|LessThan0~19_combout\);

-- Location: LABCELL_X43_Y41_N18
\B1|Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~10_combout\ = ( \S0|WideOr1~combout\ & ( \B1|COUNT\(0) & ( (!\S0|WideOr2~combout\ & (((\S0|WideOr0~combout\)) # (\S0|WideNor0~2_combout\))) # (\S0|WideOr2~combout\ & (((!\S0|WideNor0~2_combout\ & !\S0|WideOr0~combout\)) # 
-- (\S0|WideOr3~combout\))) ) ) ) # ( !\S0|WideOr1~combout\ & ( \B1|COUNT\(0) & ( (!\S0|WideOr0~combout\) # (!\S0|WideOr3~combout\ $ (((\S0|WideNor0~2_combout\ & \S0|WideOr2~combout\)))) ) ) ) # ( \S0|WideOr1~combout\ & ( !\B1|COUNT\(0) & ( 
-- (!\S0|WideOr2~combout\ & (!\S0|WideNor0~2_combout\ & (!\S0|WideOr0~combout\))) # (\S0|WideOr2~combout\ & (!\S0|WideOr3~combout\ & ((\S0|WideOr0~combout\) # (\S0|WideNor0~2_combout\)))) ) ) ) # ( !\S0|WideOr1~combout\ & ( !\B1|COUNT\(0) & ( 
-- (\S0|WideOr0~combout\ & (!\S0|WideOr3~combout\ $ (((!\S0|WideNor0~2_combout\) # (!\S0|WideOr2~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110010100001111000000011111110110011010111100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~2_combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	datae => \S0|ALT_INV_WideOr1~combout\,
	dataf => \B1|ALT_INV_COUNT\(0),
	combout => \B1|Equal0~10_combout\);

-- Location: MLABCELL_X42_Y41_N21
\B1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~41_sumout\ = SUM(( \B1|COUNT\(7) ) + ( GND ) + ( \B1|Add0~46\ ))
-- \B1|Add0~42\ = CARRY(( \B1|COUNT\(7) ) + ( GND ) + ( \B1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(7),
	cin => \B1|Add0~46\,
	sumout => \B1|Add0~41_sumout\,
	cout => \B1|Add0~42\);

-- Location: MLABCELL_X42_Y41_N24
\B1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~37_sumout\ = SUM(( \B1|COUNT\(8) ) + ( GND ) + ( \B1|Add0~42\ ))
-- \B1|Add0~38\ = CARRY(( \B1|COUNT\(8) ) + ( GND ) + ( \B1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(8),
	cin => \B1|Add0~42\,
	sumout => \B1|Add0~37_sumout\,
	cout => \B1|Add0~38\);

-- Location: LABCELL_X41_Y41_N30
\B1|FLAG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|FLAG~0_combout\ = ( \S0|Equal0~3_combout\ & ( \S0|WideNor0~2_combout\ & ( ((\S0|WideNor0~3_combout\ & \S0|WideNor0~4_combout\)) # (\S0|Equal0~4_combout\) ) ) ) # ( !\S0|Equal0~3_combout\ & ( \S0|WideNor0~2_combout\ & ( (\S0|WideNor0~3_combout\ & 
-- \S0|WideNor0~4_combout\) ) ) ) # ( \S0|Equal0~3_combout\ & ( !\S0|WideNor0~2_combout\ & ( \S0|Equal0~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000101000001010011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~3_combout\,
	datab => \S0|ALT_INV_Equal0~4_combout\,
	datac => \S0|ALT_INV_WideNor0~4_combout\,
	datae => \S0|ALT_INV_Equal0~3_combout\,
	dataf => \S0|ALT_INV_WideNor0~2_combout\,
	combout => \B1|FLAG~0_combout\);

-- Location: MLABCELL_X42_Y41_N36
\B1|COUNT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|COUNT[0]~0_combout\ = ( \B1|LessThan0~16_combout\ & ( !\B1|FLAG~0_combout\ ) ) # ( !\B1|LessThan0~16_combout\ & ( (!\B1|FLAG~0_combout\ & \B1|Equal0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_FLAG~0_combout\,
	datac => \B1|ALT_INV_Equal0~12_combout\,
	dataf => \B1|ALT_INV_LessThan0~16_combout\,
	combout => \B1|COUNT[0]~0_combout\);

-- Location: FF_X42_Y41_N26
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(8));

-- Location: MLABCELL_X42_Y41_N27
\B1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~33_sumout\ = SUM(( \B1|COUNT\(9) ) + ( GND ) + ( \B1|Add0~38\ ))
-- \B1|Add0~34\ = CARRY(( \B1|COUNT\(9) ) + ( GND ) + ( \B1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(9),
	cin => \B1|Add0~38\,
	sumout => \B1|Add0~33_sumout\,
	cout => \B1|Add0~34\);

-- Location: FF_X42_Y41_N29
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(9));

-- Location: MLABCELL_X42_Y40_N0
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

-- Location: FF_X42_Y40_N2
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(10));

-- Location: MLABCELL_X42_Y40_N3
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

-- Location: FF_X42_Y40_N5
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(11));

-- Location: MLABCELL_X42_Y40_N6
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

-- Location: FF_X42_Y40_N8
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(12));

-- Location: MLABCELL_X42_Y40_N9
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

-- Location: FF_X42_Y40_N11
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(13));

-- Location: MLABCELL_X42_Y40_N12
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

-- Location: FF_X42_Y40_N14
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(14));

-- Location: MLABCELL_X42_Y40_N15
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

-- Location: FF_X42_Y40_N17
\B1|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~9_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(15));

-- Location: MLABCELL_X42_Y40_N18
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

-- Location: FF_X42_Y40_N20
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(16));

-- Location: MLABCELL_X42_Y40_N21
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

-- Location: FF_X42_Y40_N23
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(17));

-- Location: MLABCELL_X42_Y40_N24
\B1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~101_sumout\ = SUM(( \B1|COUNT\(18) ) + ( GND ) + ( \B1|Add0~2\ ))
-- \B1|Add0~102\ = CARRY(( \B1|COUNT\(18) ) + ( GND ) + ( \B1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(18),
	cin => \B1|Add0~2\,
	sumout => \B1|Add0~101_sumout\,
	cout => \B1|Add0~102\);

-- Location: FF_X42_Y40_N26
\B1|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~101_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(18));

-- Location: MLABCELL_X42_Y40_N27
\B1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~97_sumout\ = SUM(( \B1|COUNT\(19) ) + ( GND ) + ( \B1|Add0~102\ ))
-- \B1|Add0~98\ = CARRY(( \B1|COUNT\(19) ) + ( GND ) + ( \B1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(19),
	cin => \B1|Add0~102\,
	sumout => \B1|Add0~97_sumout\,
	cout => \B1|Add0~98\);

-- Location: FF_X42_Y40_N29
\B1|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~97_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(19));

-- Location: MLABCELL_X42_Y40_N57
\B1|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~7_combout\ = ( !\B1|COUNT\(18) & ( !\B1|COUNT\(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(19),
	dataf => \B1|ALT_INV_COUNT\(18),
	combout => \B1|Equal0~7_combout\);

-- Location: LABCELL_X43_Y41_N57
\B1|LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~18_combout\ = ( \S0|WideOr1~combout\ & ( \B1|COUNT\(1) & ( (!\S0|WideNor0~2_combout\) # (!\S0|WideOr3~combout\ $ (((\S0|WideOr0~combout\ & !\S0|WideOr2~combout\)))) ) ) ) # ( !\S0|WideOr1~combout\ & ( \B1|COUNT\(1) & ( 
-- (!\S0|WideOr0~combout\) # (((\S0|WideNor0~2_combout\ & \S0|WideOr3~combout\)) # (\S0|WideOr2~combout\)) ) ) ) # ( \S0|WideOr1~combout\ & ( !\B1|COUNT\(1) & ( (\S0|WideNor0~2_combout\ & (!\S0|WideOr3~combout\ $ (((!\S0|WideOr0~combout\) # 
-- (\S0|WideOr2~combout\))))) ) ) ) # ( !\S0|WideOr1~combout\ & ( !\B1|COUNT\(1) & ( (\S0|WideOr0~combout\ & (!\S0|WideOr2~combout\ & ((!\S0|WideNor0~2_combout\) # (!\S0|WideOr3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000101000001000111110001111111111110101111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~2_combout\,
	datab => \S0|ALT_INV_WideOr3~combout\,
	datac => \S0|ALT_INV_WideOr0~combout\,
	datad => \S0|ALT_INV_WideOr2~combout\,
	datae => \S0|ALT_INV_WideOr1~combout\,
	dataf => \B1|ALT_INV_COUNT\(1),
	combout => \B1|LessThan0~18_combout\);

-- Location: MLABCELL_X42_Y40_N30
\B1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~93_sumout\ = SUM(( \B1|COUNT\(20) ) + ( GND ) + ( \B1|Add0~98\ ))
-- \B1|Add0~94\ = CARRY(( \B1|COUNT\(20) ) + ( GND ) + ( \B1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(20),
	cin => \B1|Add0~98\,
	sumout => \B1|Add0~93_sumout\,
	cout => \B1|Add0~94\);

-- Location: FF_X42_Y40_N32
\B1|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|Add0~93_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(20));

-- Location: MLABCELL_X42_Y40_N33
\B1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~89_sumout\ = SUM(( \B1|COUNT\(21) ) + ( GND ) + ( \B1|Add0~94\ ))
-- \B1|Add0~90\ = CARRY(( \B1|COUNT\(21) ) + ( GND ) + ( \B1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(21),
	cin => \B1|Add0~94\,
	sumout => \B1|Add0~89_sumout\,
	cout => \B1|Add0~90\);

-- Location: FF_X42_Y40_N35
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(21));

-- Location: MLABCELL_X42_Y40_N36
\B1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~85_sumout\ = SUM(( \B1|COUNT\(22) ) + ( GND ) + ( \B1|Add0~90\ ))
-- \B1|Add0~86\ = CARRY(( \B1|COUNT\(22) ) + ( GND ) + ( \B1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(22),
	cin => \B1|Add0~90\,
	sumout => \B1|Add0~85_sumout\,
	cout => \B1|Add0~86\);

-- Location: FF_X42_Y40_N38
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(22));

-- Location: MLABCELL_X42_Y40_N39
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

-- Location: FF_X42_Y40_N41
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(23));

-- Location: MLABCELL_X42_Y40_N42
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

-- Location: FF_X42_Y40_N44
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(24));

-- Location: MLABCELL_X42_Y40_N45
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

-- Location: FF_X42_Y40_N47
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(25));

-- Location: MLABCELL_X42_Y40_N48
\B1|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~6_combout\ = ( !\B1|COUNT\(25) & ( !\B1|COUNT\(21) & ( (!\B1|COUNT\(24) & (!\B1|COUNT\(23) & (!\B1|COUNT\(22) & !\B1|COUNT\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(24),
	datab => \B1|ALT_INV_COUNT\(23),
	datac => \B1|ALT_INV_COUNT\(22),
	datad => \B1|ALT_INV_COUNT\(20),
	datae => \B1|ALT_INV_COUNT\(25),
	dataf => \B1|ALT_INV_COUNT\(21),
	combout => \B1|Equal0~6_combout\);

-- Location: LABCELL_X43_Y41_N48
\B1|Equal0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~11_combout\ = ( !\B1|LessThan0~18_combout\ & ( \B1|Equal0~6_combout\ & ( (!\B1|LessThan0~17_combout\ & (!\B1|LessThan0~19_combout\ & (!\B1|Equal0~10_combout\ & \B1|Equal0~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_LessThan0~17_combout\,
	datab => \B1|ALT_INV_LessThan0~19_combout\,
	datac => \B1|ALT_INV_Equal0~10_combout\,
	datad => \B1|ALT_INV_Equal0~7_combout\,
	datae => \B1|ALT_INV_LessThan0~18_combout\,
	dataf => \B1|ALT_INV_Equal0~6_combout\,
	combout => \B1|Equal0~11_combout\);

-- Location: LABCELL_X41_Y41_N12
\B1|Ram0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~17_combout\ = ( \S0|WideOr0~combout\ & ( (!\S0|WideOr2~combout\ & ((!\S0|WideOr1~combout\ & (\S0|WideOr3~combout\)) # (\S0|WideOr1~combout\ & (!\S0|WideOr3~combout\ & \S0|WideNor0~2_combout\)))) # (\S0|WideOr2~combout\ & (\S0|WideOr1~combout\ & 
-- (!\S0|WideOr3~combout\ $ (\S0|WideNor0~2_combout\)))) ) ) # ( !\S0|WideOr0~combout\ & ( (!\S0|WideOr2~combout\ & (\S0|WideOr1~combout\ & ((!\S0|WideNor0~2_combout\)))) # (\S0|WideOr2~combout\ & (((\S0|WideOr3~combout\ & !\S0|WideNor0~2_combout\)) # 
-- (\S0|WideOr1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100010001001101110001000100011000001010010001100000101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr2~combout\,
	datab => \S0|ALT_INV_WideOr1~combout\,
	datac => \S0|ALT_INV_WideOr3~combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr0~combout\,
	combout => \B1|Ram0~17_combout\);

-- Location: LABCELL_X41_Y41_N24
\B1|Ram0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~16_combout\ = ( \S0|WideOr1~combout\ & ( (!\S0|WideOr3~combout\ & (\S0|WideOr0~combout\ & ((!\S0|WideNor0~2_combout\) # (!\S0|WideOr2~combout\)))) # (\S0|WideOr3~combout\ & (!\S0|WideNor0~2_combout\ $ (((\S0|WideOr2~combout\) # 
-- (\S0|WideOr0~combout\))))) ) ) # ( !\S0|WideOr1~combout\ & ( (!\S0|WideNor0~2_combout\ & ((!\S0|WideOr2~combout\ & (\S0|WideOr0~combout\ & !\S0|WideOr3~combout\)) # (\S0|WideOr2~combout\ & ((\S0|WideOr3~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001010001000000000101000110010100101010011001010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~2_combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr1~combout\,
	combout => \B1|Ram0~16_combout\);

-- Location: MLABCELL_X42_Y41_N48
\B1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~3_combout\ = ( \B1|COUNT\(5) & ( (\B1|Ram0~16_combout\ & (!\B1|COUNT\(4) $ (\B1|Ram0~17_combout\))) ) ) # ( !\B1|COUNT\(5) & ( (!\B1|Ram0~16_combout\ & (!\B1|COUNT\(4) $ (\B1|Ram0~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(4),
	datac => \B1|ALT_INV_Ram0~17_combout\,
	datad => \B1|ALT_INV_Ram0~16_combout\,
	dataf => \B1|ALT_INV_COUNT\(5),
	combout => \B1|Equal0~3_combout\);

-- Location: LABCELL_X43_Y41_N12
\B1|Ram0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~8_combout\ = ( \S0|WideOr0~combout\ & ( (!\S0|WideOr3~combout\ & ((!\S0|WideOr1~combout\ & (\S0|WideOr2~combout\ & \S0|WideNor0~2_combout\)) # (\S0|WideOr1~combout\ & ((!\S0|WideNor0~2_combout\))))) # (\S0|WideOr3~combout\ & 
-- (!\S0|WideOr2~combout\ $ (((!\S0|WideOr1~combout\ & !\S0|WideNor0~2_combout\))))) ) ) # ( !\S0|WideOr0~combout\ & ( (\S0|WideOr1~combout\ & (!\S0|WideNor0~2_combout\ $ (((!\S0|WideOr3~combout\ & \S0|WideOr2~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000100000100010100010000010001010110001110000101011000111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr3~combout\,
	datac => \S0|ALT_INV_WideOr2~combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr0~combout\,
	combout => \B1|Ram0~8_combout\);

-- Location: LABCELL_X41_Y40_N3
\B1|Ram0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~9_combout\ = ( \S0|WideNor0~2_combout\ & ( \S0|WideOr2~combout\ & ( (\S0|WideOr3~combout\ & \S0|WideOr1~combout\) ) ) ) # ( !\S0|WideNor0~2_combout\ & ( \S0|WideOr2~combout\ & ( (!\S0|WideOr0~combout\ & ((\S0|WideOr1~combout\))) # 
-- (\S0|WideOr0~combout\ & (!\S0|WideOr3~combout\ & !\S0|WideOr1~combout\)) ) ) ) # ( \S0|WideNor0~2_combout\ & ( !\S0|WideOr2~combout\ & ( !\S0|WideOr0~combout\ $ (((!\S0|WideOr1~combout\) # (\S0|WideOr3~combout\))) ) ) ) # ( !\S0|WideNor0~2_combout\ & ( 
-- !\S0|WideOr2~combout\ & ( (\S0|WideOr0~combout\ & \S0|WideOr1~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001110010011100100101100001011000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr3~combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datae => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~9_combout\);

-- Location: LABCELL_X43_Y41_N33
\B1|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~4_combout\ = ( \B1|COUNT\(8) & ( (\B1|Ram0~9_combout\ & (!\B1|Ram0~8_combout\ $ (\B1|COUNT\(9)))) ) ) # ( !\B1|COUNT\(8) & ( (!\B1|Ram0~9_combout\ & (!\B1|Ram0~8_combout\ $ (\B1|COUNT\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~8_combout\,
	datac => \B1|ALT_INV_Ram0~9_combout\,
	datad => \B1|ALT_INV_COUNT\(9),
	dataf => \B1|ALT_INV_COUNT\(8),
	combout => \B1|LessThan0~4_combout\);

-- Location: LABCELL_X43_Y41_N0
\B1|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~9_combout\ = ( \B1|LessThan0~4_combout\ & ( (\B1|Equal0~3_combout\ & \B1|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Equal0~3_combout\,
	datad => \B1|ALT_INV_Equal0~1_combout\,
	dataf => \B1|ALT_INV_LessThan0~4_combout\,
	combout => \B1|Equal0~9_combout\);

-- Location: LABCELL_X43_Y40_N18
\B1|Ram0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~7_combout\ = ( \S0|WideOr2~combout\ & ( (!\S0|WideOr3~combout\ & ((!\S0|WideNor0~2_combout\ & (\S0|WideOr1~combout\)) # (\S0|WideNor0~2_combout\ & ((\S0|WideOr0~combout\))))) # (\S0|WideOr3~combout\ & (!\S0|WideOr1~combout\ $ 
-- (((\S0|WideNor0~2_combout\))))) ) ) # ( !\S0|WideOr2~combout\ & ( (!\S0|WideOr1~combout\ & (\S0|WideOr0~combout\ & ((\S0|WideNor0~2_combout\)))) # (\S0|WideOr1~combout\ & (((!\S0|WideOr0~combout\ & \S0|WideNor0~2_combout\)) # (\S0|WideOr3~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101100111000001010110011101011010001101010101101000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr3~combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~7_combout\);

-- Location: LABCELL_X43_Y40_N21
\B1|Ram0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~6_combout\ = ( \S0|WideOr2~combout\ & ( (!\S0|WideNor0~2_combout\ & (\S0|WideOr3~combout\ & (!\S0|WideOr1~combout\ $ (!\S0|WideOr0~combout\)))) # (\S0|WideNor0~2_combout\ & (((\S0|WideOr0~combout\)))) ) ) # ( !\S0|WideOr2~combout\ & ( 
-- (!\S0|WideOr0~combout\ & (\S0|WideOr1~combout\ & ((!\S0|WideNor0~2_combout\) # (\S0|WideOr3~combout\)))) # (\S0|WideOr0~combout\ & (!\S0|WideOr1~combout\ $ (!\S0|WideOr3~combout\ $ (\S0|WideNor0~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011000100101010101100010010100000110001100110000011000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr3~combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~6_combout\);

-- Location: LABCELL_X43_Y40_N42
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

-- Location: LABCELL_X43_Y40_N6
\B1|Ram0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~2_combout\ = ( \S0|WideOr2~combout\ & ( (!\S0|WideOr1~combout\ & (!\S0|WideOr0~combout\ & (\S0|WideOr3~combout\ & !\S0|WideNor0~2_combout\))) # (\S0|WideOr1~combout\ & ((!\S0|WideOr0~combout\) # ((!\S0|WideOr3~combout\ & 
-- \S0|WideNor0~2_combout\)))) ) ) # ( !\S0|WideOr2~combout\ & ( ((\S0|WideOr0~combout\ & (!\S0|WideOr3~combout\ & \S0|WideNor0~2_combout\))) # (\S0|WideOr1~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110101010101010111010101001100010101000100110001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr3~combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~2_combout\);

-- Location: LABCELL_X43_Y40_N9
\B1|Ram0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~3_combout\ = ( \S0|WideOr2~combout\ & ( !\S0|WideOr1~combout\ $ (((!\S0|WideOr0~combout\) # ((!\S0|WideOr3~combout\ & \S0|WideNor0~2_combout\)))) ) ) # ( !\S0|WideOr2~combout\ & ( (\S0|WideOr0~combout\ & ((!\S0|WideOr1~combout\ & 
-- (!\S0|WideOr3~combout\ & \S0|WideNor0~2_combout\)) # (\S0|WideOr1~combout\ & (\S0|WideOr3~combout\ & !\S0|WideNor0~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100000000000010010000001100110010101100110011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr3~combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~3_combout\);

-- Location: LABCELL_X43_Y40_N39
\B1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~1_combout\ = ( \B1|COUNT\(15) & ( (\B1|Ram0~2_combout\ & (!\B1|Ram0~3_combout\ $ (\B1|COUNT\(14)))) ) ) # ( !\B1|COUNT\(15) & ( (!\B1|Ram0~2_combout\ & (!\B1|Ram0~3_combout\ $ (\B1|COUNT\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~2_combout\,
	datac => \B1|ALT_INV_Ram0~3_combout\,
	datad => \B1|ALT_INV_COUNT\(14),
	dataf => \B1|ALT_INV_COUNT\(15),
	combout => \B1|LessThan0~1_combout\);

-- Location: LABCELL_X43_Y40_N15
\B1|Ram0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~5_combout\ = ( \S0|WideOr2~combout\ & ( (!\S0|WideOr1~combout\ & (!\S0|WideNor0~2_combout\ & ((\S0|WideOr3~combout\) # (\S0|WideOr0~combout\)))) # (\S0|WideOr1~combout\ & (\S0|WideNor0~2_combout\ & ((!\S0|WideOr0~combout\) # 
-- (!\S0|WideOr3~combout\)))) ) ) # ( !\S0|WideOr2~combout\ & ( (!\S0|WideOr1~combout\ & (\S0|WideOr0~combout\ & (\S0|WideOr3~combout\ & \S0|WideNor0~2_combout\))) # (\S0|WideOr1~combout\ & (!\S0|WideOr3~combout\ $ (((\S0|WideOr0~combout\ & 
-- !\S0|WideNor0~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101010010010000010101001000101010010101000010101001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr3~combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~5_combout\);

-- Location: LABCELL_X43_Y40_N12
\B1|Ram0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~4_combout\ = ( \S0|WideOr2~combout\ & ( (!\S0|WideOr1~combout\ & (\S0|WideOr0~combout\ & !\S0|WideOr3~combout\)) # (\S0|WideOr1~combout\ & (!\S0|WideOr0~combout\ & \S0|WideOr3~combout\)) ) ) # ( !\S0|WideOr2~combout\ & ( (!\S0|WideOr1~combout\ & 
-- (\S0|WideOr0~combout\ & ((!\S0|WideOr3~combout\) # (!\S0|WideNor0~2_combout\)))) # (\S0|WideOr1~combout\ & (!\S0|WideNor0~2_combout\ $ (((!\S0|WideOr3~combout\) # (\S0|WideOr0~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011001110001001001100111000100100100001001000010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr0~combout\,
	datac => \S0|ALT_INV_WideOr3~combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~4_combout\);

-- Location: LABCELL_X43_Y40_N57
\B1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~4_combout\ = ( \B1|COUNT\(10) & ( (\B1|Ram0~5_combout\ & (!\B1|COUNT\(11) $ (\B1|Ram0~4_combout\))) ) ) # ( !\B1|COUNT\(10) & ( (!\B1|Ram0~5_combout\ & (!\B1|COUNT\(11) $ (\B1|Ram0~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~5_combout\,
	datac => \B1|ALT_INV_COUNT\(11),
	datad => \B1|ALT_INV_Ram0~4_combout\,
	dataf => \B1|ALT_INV_COUNT\(10),
	combout => \B1|Equal0~4_combout\);

-- Location: LABCELL_X43_Y40_N27
\B1|Ram0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~0_combout\ = ( \S0|WideOr2~combout\ & ( (\S0|WideOr1~combout\ & (!\S0|WideOr3~combout\ $ (\S0|WideNor0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr3~combout\,
	datac => \S0|ALT_INV_WideNor0~2_combout\,
	datad => \S0|ALT_INV_WideOr1~combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~0_combout\);

-- Location: LABCELL_X43_Y40_N54
\B1|Ram0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~1_combout\ = ( \S0|WideOr2~combout\ & ( (\S0|WideOr1~combout\ & ((!\S0|WideNor0~2_combout\) # (\S0|WideOr3~combout\))) ) ) # ( !\S0|WideOr2~combout\ & ( (!\S0|WideOr3~combout\ & (!\S0|WideOr1~combout\ & \S0|WideNor0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \S0|ALT_INV_WideOr3~combout\,
	datac => \S0|ALT_INV_WideOr1~combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~1_combout\);

-- Location: LABCELL_X43_Y40_N30
\B1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~0_combout\ = ( \B1|COUNT\(16) & ( (!\B1|Ram0~1_combout\ & (\S0|WideOr0~combout\ & (!\B1|Ram0~0_combout\ $ (\B1|COUNT\(17))))) ) ) # ( !\B1|COUNT\(16) & ( (!\S0|WideOr0~combout\ & (((!\B1|COUNT\(17))))) # (\S0|WideOr0~combout\ & 
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
	datac => \S0|ALT_INV_WideOr0~combout\,
	datad => \B1|ALT_INV_COUNT\(17),
	dataf => \B1|ALT_INV_COUNT\(16),
	combout => \B1|LessThan0~0_combout\);

-- Location: LABCELL_X43_Y40_N24
\B1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~5_combout\ = ( \B1|LessThan0~0_combout\ & ( (\B1|Equal0~0_combout\ & (\B1|LessThan0~1_combout\ & \B1|Equal0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Equal0~0_combout\,
	datac => \B1|ALT_INV_LessThan0~1_combout\,
	datad => \B1|ALT_INV_Equal0~4_combout\,
	dataf => \B1|ALT_INV_LessThan0~0_combout\,
	combout => \B1|Equal0~5_combout\);

-- Location: LABCELL_X43_Y41_N45
\B1|Equal0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~12_combout\ = ( \B1|Equal0~5_combout\ & ( (\B1|Equal0~11_combout\ & \B1|Equal0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Equal0~11_combout\,
	datad => \B1|ALT_INV_Equal0~9_combout\,
	dataf => \B1|ALT_INV_Equal0~5_combout\,
	combout => \B1|Equal0~12_combout\);

-- Location: FF_X42_Y41_N2
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(0));

-- Location: MLABCELL_X42_Y41_N3
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

-- Location: FF_X42_Y41_N5
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(1));

-- Location: MLABCELL_X42_Y41_N6
\B1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~61_sumout\ = SUM(( \B1|COUNT\(2) ) + ( GND ) + ( \B1|Add0~50\ ))
-- \B1|Add0~62\ = CARRY(( \B1|COUNT\(2) ) + ( GND ) + ( \B1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(2),
	cin => \B1|Add0~50\,
	sumout => \B1|Add0~61_sumout\,
	cout => \B1|Add0~62\);

-- Location: FF_X42_Y41_N8
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(2));

-- Location: MLABCELL_X42_Y41_N9
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

-- Location: FF_X42_Y41_N11
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(3));

-- Location: MLABCELL_X42_Y41_N12
\B1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~69_sumout\ = SUM(( \B1|COUNT\(4) ) + ( GND ) + ( \B1|Add0~58\ ))
-- \B1|Add0~70\ = CARRY(( \B1|COUNT\(4) ) + ( GND ) + ( \B1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(4),
	cin => \B1|Add0~58\,
	sumout => \B1|Add0~69_sumout\,
	cout => \B1|Add0~70\);

-- Location: FF_X42_Y41_N14
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(4));

-- Location: MLABCELL_X42_Y41_N15
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

-- Location: FF_X42_Y41_N17
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(5));

-- Location: MLABCELL_X42_Y41_N18
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

-- Location: FF_X42_Y41_N20
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(6));

-- Location: FF_X42_Y41_N23
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
	sclr => \B1|Equal0~12_combout\,
	ena => \B1|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(7));

-- Location: MLABCELL_X42_Y41_N33
\B1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~1_combout\ = ( \B1|COUNT\(6) & ( (\B1|Ram0~11_combout\ & (!\B1|Ram0~10_combout\ $ (\B1|COUNT\(7)))) ) ) # ( !\B1|COUNT\(6) & ( (!\B1|Ram0~11_combout\ & (!\B1|Ram0~10_combout\ $ (\B1|COUNT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~11_combout\,
	datac => \B1|ALT_INV_Ram0~10_combout\,
	datad => \B1|ALT_INV_COUNT\(7),
	dataf => \B1|ALT_INV_COUNT\(6),
	combout => \B1|Equal0~1_combout\);

-- Location: MLABCELL_X42_Y40_N54
\B1|Ram0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~12_combout\ = ( \S0|WideOr2~combout\ & ( (\S0|WideOr1~combout\ & (\S0|WideOr3~combout\ & \S0|WideNor0~2_combout\)) ) ) # ( !\S0|WideOr2~combout\ & ( (!\S0|WideOr1~combout\ & (\S0|WideOr0~combout\ & ((!\S0|WideOr3~combout\) # 
-- (!\S0|WideNor0~2_combout\)))) # (\S0|WideOr1~combout\ & (\S0|WideNor0~2_combout\ & (!\S0|WideOr3~combout\ $ (!\S0|WideOr0~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011100000010100001110000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~combout\,
	datab => \S0|ALT_INV_WideOr3~combout\,
	datac => \S0|ALT_INV_WideOr0~combout\,
	datad => \S0|ALT_INV_WideNor0~2_combout\,
	dataf => \S0|ALT_INV_WideOr2~combout\,
	combout => \B1|Ram0~12_combout\);

-- Location: LABCELL_X41_Y41_N54
\B1|Ram0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~13_combout\ = ( \S0|WideOr0~combout\ & ( (!\S0|WideOr2~combout\ & (!\S0|WideOr1~combout\ & ((\S0|WideOr3~combout\)))) # (\S0|WideOr2~combout\ & (!\S0|WideOr3~combout\ $ (((!\S0|WideOr1~combout\ & !\S0|WideNor0~2_combout\))))) ) ) # ( 
-- !\S0|WideOr0~combout\ & ( (\S0|WideOr1~combout\ & ((!\S0|WideOr2~combout\ & (!\S0|WideNor0~2_combout\)) # (\S0|WideOr2~combout\ & (\S0|WideNor0~2_combout\ & !\S0|WideOr3~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100000001000010010000000010101110010000001010111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr2~combout\,
	datab => \S0|ALT_INV_WideOr1~combout\,
	datac => \S0|ALT_INV_WideNor0~2_combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr0~combout\,
	combout => \B1|Ram0~13_combout\);

-- Location: MLABCELL_X42_Y41_N51
\B1|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~5_combout\ = ( \B1|COUNT\(0) & ( (\B1|Ram0~12_combout\ & !\B1|COUNT\(1)) ) ) # ( !\B1|COUNT\(0) & ( (!\B1|Ram0~12_combout\ & (\B1|Ram0~13_combout\ & !\B1|COUNT\(1))) # (\B1|Ram0~12_combout\ & ((!\B1|COUNT\(1)) # (\B1|Ram0~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~12_combout\,
	datac => \B1|ALT_INV_Ram0~13_combout\,
	datad => \B1|ALT_INV_COUNT\(1),
	dataf => \B1|ALT_INV_COUNT\(0),
	combout => \B1|LessThan0~5_combout\);

-- Location: LABCELL_X41_Y41_N36
\B1|Ram0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~15_combout\ = ( \S0|WideOr0~combout\ & ( (!\S0|WideOr3~combout\ & ((!\S0|WideOr1~combout\ & ((!\S0|WideNor0~2_combout\))) # (\S0|WideOr1~combout\ & (\S0|WideOr2~combout\)))) # (\S0|WideOr3~combout\ & ((!\S0|WideOr2~combout\ & 
-- (\S0|WideOr1~combout\)) # (\S0|WideOr2~combout\ & ((\S0|WideNor0~2_combout\))))) ) ) # ( !\S0|WideOr0~combout\ & ( (\S0|WideOr1~combout\ & ((!\S0|WideOr2~combout\ & (!\S0|WideNor0~2_combout\ $ (\S0|WideOr3~combout\))) # (\S0|WideOr2~combout\ & 
-- (\S0|WideNor0~2_combout\ & !\S0|WideOr3~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000010001000010000001011010001001001111101000100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr2~combout\,
	datab => \S0|ALT_INV_WideOr1~combout\,
	datac => \S0|ALT_INV_WideNor0~2_combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideOr0~combout\,
	combout => \B1|Ram0~15_combout\);

-- Location: LABCELL_X41_Y41_N15
\B1|Ram0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~14_combout\ = ( \S0|WideNor0~2_combout\ & ( (\S0|WideOr0~combout\ & ((!\S0|WideOr3~combout\ & ((\S0|WideOr1~combout\))) # (\S0|WideOr3~combout\ & (\S0|WideOr2~combout\)))) ) ) # ( !\S0|WideNor0~2_combout\ & ( (!\S0|WideOr2~combout\ & 
-- (\S0|WideOr1~combout\ & (!\S0|WideOr0~combout\))) # (\S0|WideOr2~combout\ & (\S0|WideOr0~combout\ & ((!\S0|WideOr1~combout\) # (!\S0|WideOr3~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100100001001010010010000000011000001010000001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr2~combout\,
	datab => \S0|ALT_INV_WideOr1~combout\,
	datac => \S0|ALT_INV_WideOr0~combout\,
	datad => \S0|ALT_INV_WideOr3~combout\,
	dataf => \S0|ALT_INV_WideNor0~2_combout\,
	combout => \B1|Ram0~14_combout\);

-- Location: MLABCELL_X42_Y41_N30
\B1|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~6_combout\ = ( \B1|COUNT\(2) & ( (!\B1|COUNT\(3) & \B1|Ram0~14_combout\) ) ) # ( !\B1|COUNT\(2) & ( (!\B1|COUNT\(3) & ((\B1|Ram0~14_combout\) # (\B1|Ram0~15_combout\))) # (\B1|COUNT\(3) & (\B1|Ram0~15_combout\ & \B1|Ram0~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(3),
	datac => \B1|ALT_INV_Ram0~15_combout\,
	datad => \B1|ALT_INV_Ram0~14_combout\,
	dataf => \B1|ALT_INV_COUNT\(2),
	combout => \B1|LessThan0~6_combout\);

-- Location: LABCELL_X41_Y41_N42
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

-- Location: MLABCELL_X42_Y41_N54
\B1|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~7_combout\ = ( \B1|Equal0~2_combout\ & ( \B1|LessThan0~4_combout\ & ( (\B1|Equal0~1_combout\ & (\B1|Equal0~3_combout\ & ((\B1|LessThan0~6_combout\) # (\B1|LessThan0~5_combout\)))) ) ) ) # ( !\B1|Equal0~2_combout\ & ( \B1|LessThan0~4_combout\ 
-- & ( (\B1|Equal0~1_combout\ & (\B1|Equal0~3_combout\ & \B1|LessThan0~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Equal0~1_combout\,
	datab => \B1|ALT_INV_Equal0~3_combout\,
	datac => \B1|ALT_INV_LessThan0~5_combout\,
	datad => \B1|ALT_INV_LessThan0~6_combout\,
	datae => \B1|ALT_INV_Equal0~2_combout\,
	dataf => \B1|ALT_INV_LessThan0~4_combout\,
	combout => \B1|LessThan0~7_combout\);

-- Location: LABCELL_X43_Y41_N30
\B1|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~10_combout\ = ( \B1|COUNT\(8) & ( (\B1|Ram0~8_combout\ & !\B1|COUNT\(9)) ) ) # ( !\B1|COUNT\(8) & ( (!\B1|Ram0~9_combout\ & (\B1|Ram0~8_combout\ & !\B1|COUNT\(9))) # (\B1|Ram0~9_combout\ & ((!\B1|COUNT\(9)) # (\B1|Ram0~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~9_combout\,
	datab => \B1|ALT_INV_Ram0~8_combout\,
	datad => \B1|ALT_INV_COUNT\(9),
	dataf => \B1|ALT_INV_COUNT\(8),
	combout => \B1|LessThan0~10_combout\);

-- Location: LABCELL_X43_Y41_N42
\B1|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~9_combout\ = ( \B1|COUNT\(5) & ( (\B1|Ram0~16_combout\ & (\B1|Ram0~17_combout\ & !\B1|COUNT\(4))) ) ) # ( !\B1|COUNT\(5) & ( ((\B1|Ram0~17_combout\ & !\B1|COUNT\(4))) # (\B1|Ram0~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~16_combout\,
	datac => \B1|ALT_INV_Ram0~17_combout\,
	datad => \B1|ALT_INV_COUNT\(4),
	dataf => \B1|ALT_INV_COUNT\(5),
	combout => \B1|LessThan0~9_combout\);

-- Location: LABCELL_X43_Y41_N3
\B1|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~8_combout\ = ( \B1|COUNT\(7) & ( (\B1|Ram0~10_combout\ & (\B1|Ram0~11_combout\ & !\B1|COUNT\(6))) ) ) # ( !\B1|COUNT\(7) & ( ((\B1|Ram0~11_combout\ & !\B1|COUNT\(6))) # (\B1|Ram0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~10_combout\,
	datac => \B1|ALT_INV_Ram0~11_combout\,
	datad => \B1|ALT_INV_COUNT\(6),
	dataf => \B1|ALT_INV_COUNT\(7),
	combout => \B1|LessThan0~8_combout\);

-- Location: LABCELL_X43_Y41_N36
\B1|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~11_combout\ = ( \B1|LessThan0~8_combout\ & ( \B1|Equal0~1_combout\ & ( (!\B1|LessThan0~10_combout\ & !\B1|LessThan0~4_combout\) ) ) ) # ( !\B1|LessThan0~8_combout\ & ( \B1|Equal0~1_combout\ & ( (!\B1|LessThan0~10_combout\ & 
-- ((!\B1|LessThan0~4_combout\) # (!\B1|LessThan0~9_combout\))) ) ) ) # ( \B1|LessThan0~8_combout\ & ( !\B1|Equal0~1_combout\ & ( (!\B1|LessThan0~10_combout\ & !\B1|LessThan0~4_combout\) ) ) ) # ( !\B1|LessThan0~8_combout\ & ( !\B1|Equal0~1_combout\ & ( 
-- !\B1|LessThan0~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110000001100000011001100110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_LessThan0~10_combout\,
	datac => \B1|ALT_INV_LessThan0~4_combout\,
	datad => \B1|ALT_INV_LessThan0~9_combout\,
	datae => \B1|ALT_INV_LessThan0~8_combout\,
	dataf => \B1|ALT_INV_Equal0~1_combout\,
	combout => \B1|LessThan0~11_combout\);

-- Location: LABCELL_X43_Y40_N48
\B1|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~12_combout\ = ( \B1|COUNT\(15) & ( (\B1|Ram0~3_combout\ & (\B1|Ram0~2_combout\ & !\B1|COUNT\(14))) ) ) # ( !\B1|COUNT\(15) & ( ((\B1|Ram0~3_combout\ & !\B1|COUNT\(14))) # (\B1|Ram0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~3_combout\,
	datac => \B1|ALT_INV_Ram0~2_combout\,
	datad => \B1|ALT_INV_COUNT\(14),
	dataf => \B1|ALT_INV_COUNT\(15),
	combout => \B1|LessThan0~12_combout\);

-- Location: LABCELL_X43_Y40_N33
\B1|LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~14_combout\ = ( \B1|COUNT\(16) & ( (\B1|Ram0~0_combout\ & (\S0|WideOr0~combout\ & !\B1|COUNT\(17))) ) ) # ( !\B1|COUNT\(16) & ( (\S0|WideOr0~combout\ & ((!\B1|Ram0~0_combout\ & (!\B1|Ram0~1_combout\ & !\B1|COUNT\(17))) # (\B1|Ram0~0_combout\ 
-- & ((!\B1|Ram0~1_combout\) # (!\B1|COUNT\(17)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000100000011010000010000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~0_combout\,
	datab => \B1|ALT_INV_Ram0~1_combout\,
	datac => \S0|ALT_INV_WideOr0~combout\,
	datad => \B1|ALT_INV_COUNT\(17),
	dataf => \B1|ALT_INV_COUNT\(16),
	combout => \B1|LessThan0~14_combout\);

-- Location: LABCELL_X43_Y40_N45
\B1|LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~13_combout\ = ( \B1|COUNT\(13) & ( (\B1|Ram0~7_combout\ & (!\B1|COUNT\(12) & \B1|Ram0~6_combout\)) ) ) # ( !\B1|COUNT\(13) & ( ((\B1|Ram0~7_combout\ & !\B1|COUNT\(12))) # (\B1|Ram0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~7_combout\,
	datac => \B1|ALT_INV_COUNT\(12),
	datad => \B1|ALT_INV_Ram0~6_combout\,
	dataf => \B1|ALT_INV_COUNT\(13),
	combout => \B1|LessThan0~13_combout\);

-- Location: LABCELL_X43_Y40_N0
\B1|LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~15_combout\ = ( \B1|LessThan0~13_combout\ & ( \B1|LessThan0~0_combout\ & ( (!\B1|LessThan0~12_combout\ & (!\B1|LessThan0~14_combout\ & !\B1|LessThan0~1_combout\)) ) ) ) # ( !\B1|LessThan0~13_combout\ & ( \B1|LessThan0~0_combout\ & ( 
-- (!\B1|LessThan0~12_combout\ & !\B1|LessThan0~14_combout\) ) ) ) # ( \B1|LessThan0~13_combout\ & ( !\B1|LessThan0~0_combout\ & ( !\B1|LessThan0~14_combout\ ) ) ) # ( !\B1|LessThan0~13_combout\ & ( !\B1|LessThan0~0_combout\ & ( !\B1|LessThan0~14_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_LessThan0~12_combout\,
	datac => \B1|ALT_INV_LessThan0~14_combout\,
	datad => \B1|ALT_INV_LessThan0~1_combout\,
	datae => \B1|ALT_INV_LessThan0~13_combout\,
	dataf => \B1|ALT_INV_LessThan0~0_combout\,
	combout => \B1|LessThan0~15_combout\);

-- Location: MLABCELL_X42_Y41_N39
\B1|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~8_combout\ = ( \B1|Equal0~7_combout\ & ( \B1|Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_Equal0~6_combout\,
	dataf => \B1|ALT_INV_Equal0~7_combout\,
	combout => \B1|Equal0~8_combout\);

-- Location: LABCELL_X43_Y40_N36
\B1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~2_combout\ = ( \B1|COUNT\(11) & ( (\B1|Ram0~4_combout\ & (\B1|Ram0~5_combout\ & !\B1|COUNT\(10))) ) ) # ( !\B1|COUNT\(11) & ( ((\B1|Ram0~5_combout\ & !\B1|COUNT\(10))) # (\B1|Ram0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~4_combout\,
	datac => \B1|ALT_INV_Ram0~5_combout\,
	datad => \B1|ALT_INV_COUNT\(10),
	dataf => \B1|ALT_INV_COUNT\(11),
	combout => \B1|LessThan0~2_combout\);

-- Location: LABCELL_X43_Y40_N51
\B1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~3_combout\ = ( \B1|LessThan0~0_combout\ & ( (\B1|LessThan0~1_combout\ & (\B1|Equal0~0_combout\ & \B1|LessThan0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_LessThan0~1_combout\,
	datac => \B1|ALT_INV_Equal0~0_combout\,
	datad => \B1|ALT_INV_LessThan0~2_combout\,
	dataf => \B1|ALT_INV_LessThan0~0_combout\,
	combout => \B1|LessThan0~3_combout\);

-- Location: MLABCELL_X42_Y41_N42
\B1|LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~16_combout\ = ( \B1|LessThan0~3_combout\ & ( \B1|Equal0~5_combout\ & ( \B1|Equal0~8_combout\ ) ) ) # ( !\B1|LessThan0~3_combout\ & ( \B1|Equal0~5_combout\ & ( (\B1|Equal0~8_combout\ & (((!\B1|LessThan0~11_combout\) # 
-- (!\B1|LessThan0~15_combout\)) # (\B1|LessThan0~7_combout\))) ) ) ) # ( \B1|LessThan0~3_combout\ & ( !\B1|Equal0~5_combout\ & ( \B1|Equal0~8_combout\ ) ) ) # ( !\B1|LessThan0~3_combout\ & ( !\B1|Equal0~5_combout\ & ( (!\B1|LessThan0~15_combout\ & 
-- \B1|Equal0~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111111100000000111111010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_LessThan0~7_combout\,
	datab => \B1|ALT_INV_LessThan0~11_combout\,
	datac => \B1|ALT_INV_LessThan0~15_combout\,
	datad => \B1|ALT_INV_Equal0~8_combout\,
	datae => \B1|ALT_INV_LessThan0~3_combout\,
	dataf => \B1|ALT_INV_Equal0~5_combout\,
	combout => \B1|LessThan0~16_combout\);

-- Location: LABCELL_X41_Y41_N18
\B1|FLAG~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|FLAG~1_combout\ = ( \B1|FLAG~q\ & ( \B1|Equal0~11_combout\ & ( (!\RESETN~input_o\) # ((!\B1|Equal0~5_combout\) # ((!\B1|Equal0~9_combout\) # (\B1|FLAG~0_combout\))) ) ) ) # ( !\B1|FLAG~q\ & ( \B1|Equal0~11_combout\ & ( (\RESETN~input_o\ & 
-- (\B1|Equal0~5_combout\ & (!\B1|FLAG~0_combout\ & \B1|Equal0~9_combout\))) ) ) ) # ( \B1|FLAG~q\ & ( !\B1|Equal0~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESETN~input_o\,
	datab => \B1|ALT_INV_Equal0~5_combout\,
	datac => \B1|ALT_INV_FLAG~0_combout\,
	datad => \B1|ALT_INV_Equal0~9_combout\,
	datae => \B1|ALT_INV_FLAG~q\,
	dataf => \B1|ALT_INV_Equal0~11_combout\,
	combout => \B1|FLAG~1_combout\);

-- Location: FF_X41_Y41_N19
\B1|FLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \B1|FLAG~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|FLAG~q\);

-- Location: LABCELL_X41_Y41_N0
\B1|BEEPOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|BEEPOUT~0_combout\ = ( \B1|BEEPOUT~q\ & ( \B1|FLAG~q\ & ( (!\B1|LessThan0~16_combout\) # (\B1|FLAG~0_combout\) ) ) ) # ( \B1|BEEPOUT~q\ & ( !\B1|FLAG~q\ ) ) # ( !\B1|BEEPOUT~q\ & ( !\B1|FLAG~q\ & ( (\B1|LessThan0~16_combout\ & !\B1|FLAG~0_combout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111111111111111100000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_LessThan0~16_combout\,
	datac => \B1|ALT_INV_FLAG~0_combout\,
	datae => \B1|ALT_INV_BEEPOUT~q\,
	dataf => \B1|ALT_INV_FLAG~q\,
	combout => \B1|BEEPOUT~0_combout\);

-- Location: FF_X41_Y41_N1
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

-- Location: MLABCELL_X49_Y8_N3
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


