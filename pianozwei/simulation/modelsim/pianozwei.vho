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

-- DATE "01/12/2019 13:27:17"

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

ENTITY 	PIANOZWEI IS
    PORT (
	CLK : IN std_logic;
	PSWITCH : IN std_logic_vector(23 DOWNTO 0);
	STARTN : IN std_logic;
	RESETN : IN std_logic;
	LED_S : BUFFER std_logic_vector(6 DOWNTO 0);
	LED_N : BUFFER std_logic_vector(6 DOWNTO 0);
	LED_K : BUFFER std_logic_vector(6 DOWNTO 0);
	R_CHECK : BUFFER std_logic;
	S_CHECK : BUFFER std_logic;
	SPKR : BUFFER std_logic
	);
END PIANOZWEI;

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
-- R_CHECK	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_CHECK	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPKR	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[23]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[17]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[18]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[16]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[20]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[19]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSWITCH[21]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- RESETN	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STARTN	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PIANOZWEI IS
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
SIGNAL ww_STARTN : std_logic;
SIGNAL ww_RESETN : std_logic;
SIGNAL ww_LED_S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED_N : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED_K : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_R_CHECK : std_logic;
SIGNAL ww_S_CHECK : std_logic;
SIGNAL ww_SPKR : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \STARTN~input_o\ : std_logic;
SIGNAL \RESETN~input_o\ : std_logic;
SIGNAL \U0|DIVCOUNT[0]~0_combout\ : std_logic;
SIGNAL \U0|DIVCOUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|Add0~5_sumout\ : std_logic;
SIGNAL \U0|Add0~6\ : std_logic;
SIGNAL \U0|Add0~1_sumout\ : std_logic;
SIGNAL \U0|Add0~2\ : std_logic;
SIGNAL \U0|Add0~25_sumout\ : std_logic;
SIGNAL \U0|Add0~26\ : std_logic;
SIGNAL \U0|Add0~21_sumout\ : std_logic;
SIGNAL \U0|Add0~22\ : std_logic;
SIGNAL \U0|Add0~17_sumout\ : std_logic;
SIGNAL \U0|DIVCOUNT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|Add0~18\ : std_logic;
SIGNAL \U0|Add0~13_sumout\ : std_logic;
SIGNAL \U0|Add0~14\ : std_logic;
SIGNAL \U0|Add0~9_sumout\ : std_logic;
SIGNAL \U0|Add0~10\ : std_logic;
SIGNAL \U0|Add0~37_sumout\ : std_logic;
SIGNAL \U0|Add0~38\ : std_logic;
SIGNAL \U0|Add0~33_sumout\ : std_logic;
SIGNAL \U0|Add0~34\ : std_logic;
SIGNAL \U0|Add0~73_sumout\ : std_logic;
SIGNAL \U0|Add0~74\ : std_logic;
SIGNAL \U0|Add0~69_sumout\ : std_logic;
SIGNAL \U0|Add0~70\ : std_logic;
SIGNAL \U0|Add0~65_sumout\ : std_logic;
SIGNAL \U0|Add0~66\ : std_logic;
SIGNAL \U0|Add0~61_sumout\ : std_logic;
SIGNAL \U0|DIVCOUNT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|Add0~62\ : std_logic;
SIGNAL \U0|Add0~29_sumout\ : std_logic;
SIGNAL \U0|Add0~30\ : std_logic;
SIGNAL \U0|Add0~57_sumout\ : std_logic;
SIGNAL \U0|Add0~58\ : std_logic;
SIGNAL \U0|Add0~53_sumout\ : std_logic;
SIGNAL \U0|Add0~54\ : std_logic;
SIGNAL \U0|Add0~49_sumout\ : std_logic;
SIGNAL \U0|Add0~50\ : std_logic;
SIGNAL \U0|Add0~45_sumout\ : std_logic;
SIGNAL \U0|DIVCOUNT[19]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|Add0~46\ : std_logic;
SIGNAL \U0|Add0~41_sumout\ : std_logic;
SIGNAL \U0|Equal0~1_combout\ : std_logic;
SIGNAL \U0|Equal0~2_combout\ : std_logic;
SIGNAL \U0|Equal0~3_combout\ : std_logic;
SIGNAL \U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|Equal0~4_combout\ : std_logic;
SIGNAL \U0|ENABLE~q\ : std_logic;
SIGNAL \U0|SWBEFOREN~0_combout\ : std_logic;
SIGNAL \U0|SWBEFOREN~q\ : std_logic;
SIGNAL \U0|SWONEN~0_combout\ : std_logic;
SIGNAL \U0|SWONEN~q\ : std_logic;
SIGNAL \U1|SW_FF~0_combout\ : std_logic;
SIGNAL \U1|SW_FF~q\ : std_logic;
SIGNAL \PSWITCH[14]~input_o\ : std_logic;
SIGNAL \PSWITCH[0]~input_o\ : std_logic;
SIGNAL \PSWITCH[15]~input_o\ : std_logic;
SIGNAL \S0|Equal0~1_combout\ : std_logic;
SIGNAL \PSWITCH[11]~input_o\ : std_logic;
SIGNAL \PSWITCH[10]~input_o\ : std_logic;
SIGNAL \PSWITCH[9]~input_o\ : std_logic;
SIGNAL \PSWITCH[12]~input_o\ : std_logic;
SIGNAL \PSWITCH[13]~input_o\ : std_logic;
SIGNAL \S0|Equal1~0_combout\ : std_logic;
SIGNAL \PSWITCH[22]~input_o\ : std_logic;
SIGNAL \PSWITCH[23]~input_o\ : std_logic;
SIGNAL \PSWITCH[1]~input_o\ : std_logic;
SIGNAL \PSWITCH[7]~input_o\ : std_logic;
SIGNAL \PSWITCH[8]~input_o\ : std_logic;
SIGNAL \S0|Equal0~2_combout\ : std_logic;
SIGNAL \PSWITCH[4]~input_o\ : std_logic;
SIGNAL \PSWITCH[5]~input_o\ : std_logic;
SIGNAL \PSWITCH[6]~input_o\ : std_logic;
SIGNAL \PSWITCH[3]~input_o\ : std_logic;
SIGNAL \PSWITCH[2]~input_o\ : std_logic;
SIGNAL \S0|Equal8~0_combout\ : std_logic;
SIGNAL \S0|Equal0~4_combout\ : std_logic;
SIGNAL \PSWITCH[21]~input_o\ : std_logic;
SIGNAL \PSWITCH[16]~input_o\ : std_logic;
SIGNAL \PSWITCH[17]~input_o\ : std_logic;
SIGNAL \PSWITCH[18]~input_o\ : std_logic;
SIGNAL \S0|Equal0~3_combout\ : std_logic;
SIGNAL \PSWITCH[19]~input_o\ : std_logic;
SIGNAL \PSWITCH[20]~input_o\ : std_logic;
SIGNAL \S0|Equal20~0_combout\ : std_logic;
SIGNAL \S0|Equal0~0_combout\ : std_logic;
SIGNAL \S0|Equal9~0_combout\ : std_logic;
SIGNAL \S0|Equal8~1_combout\ : std_logic;
SIGNAL \S0|Equal12~0_combout\ : std_logic;
SIGNAL \S0|Equal12~1_combout\ : std_logic;
SIGNAL \S0|Equal1~1_combout\ : std_logic;
SIGNAL \S0|Equal16~0_combout\ : std_logic;
SIGNAL \S0|Equal24~0_combout\ : std_logic;
SIGNAL \S0|Equal5~0_combout\ : std_logic;
SIGNAL \S0|Equal4~0_combout\ : std_logic;
SIGNAL \C0|SCALE_SWOUT[0]~0_combout\ : std_logic;
SIGNAL \C0|SCALE_SWOUT[0]~1_combout\ : std_logic;
SIGNAL \S0|Equal24~1_combout\ : std_logic;
SIGNAL \S0|Equal5~1_combout\ : std_logic;
SIGNAL \S0|Equal11~0_combout\ : std_logic;
SIGNAL \S0|Equal10~0_combout\ : std_logic;
SIGNAL \S0|Equal14~0_combout\ : std_logic;
SIGNAL \S0|Equal19~0_combout\ : std_logic;
SIGNAL \S0|Equal18~0_combout\ : std_logic;
SIGNAL \S0|Equal2~0_combout\ : std_logic;
SIGNAL \S0|Equal22~0_combout\ : std_logic;
SIGNAL \S0|Equal6~0_combout\ : std_logic;
SIGNAL \S0|WideOr3~0_combout\ : std_logic;
SIGNAL \S0|Equal13~0_combout\ : std_logic;
SIGNAL \S0|Equal9~1_combout\ : std_logic;
SIGNAL \S0|Equal17~0_combout\ : std_logic;
SIGNAL \S0|Equal1~2_combout\ : std_logic;
SIGNAL \S0|Equal21~0_combout\ : std_logic;
SIGNAL \S0|WideNor0~1_combout\ : std_logic;
SIGNAL \S0|Equal19~1_combout\ : std_logic;
SIGNAL \S0|Equal11~1_combout\ : std_logic;
SIGNAL \S0|Equal15~0_combout\ : std_logic;
SIGNAL \S0|Equal0~5_combout\ : std_logic;
SIGNAL \S0|Equal23~0_combout\ : std_logic;
SIGNAL \S0|Equal3~0_combout\ : std_logic;
SIGNAL \S0|Equal7~0_combout\ : std_logic;
SIGNAL \S0|WideNor0~0_combout\ : std_logic;
SIGNAL \S0|WideOr0~0_combout\ : std_logic;
SIGNAL \S0|WideOr0~1_combout\ : std_logic;
SIGNAL \S0|WideOr0~2_combout\ : std_logic;
SIGNAL \U3|Add0~21_sumout\ : std_logic;
SIGNAL \U2|Add0~5_sumout\ : std_logic;
SIGNAL \U2|Add0~6\ : std_logic;
SIGNAL \U2|Add0~53_sumout\ : std_logic;
SIGNAL \U2|Add0~54\ : std_logic;
SIGNAL \U2|Add0~13_sumout\ : std_logic;
SIGNAL \U2|Add0~14\ : std_logic;
SIGNAL \U2|Add0~17_sumout\ : std_logic;
SIGNAL \U2|Add0~18\ : std_logic;
SIGNAL \U2|Add0~21_sumout\ : std_logic;
SIGNAL \U2|Add0~22\ : std_logic;
SIGNAL \U2|Add0~65_sumout\ : std_logic;
SIGNAL \U2|COUNT[5]~2_combout\ : std_logic;
SIGNAL \U2|COUNT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~66\ : std_logic;
SIGNAL \U2|Add0~25_sumout\ : std_logic;
SIGNAL \U2|Add0~26\ : std_logic;
SIGNAL \U2|Add0~29_sumout\ : std_logic;
SIGNAL \U2|Add0~30\ : std_logic;
SIGNAL \U2|Add0~49_sumout\ : std_logic;
SIGNAL \U2|Add0~50\ : std_logic;
SIGNAL \U2|Add0~1_sumout\ : std_logic;
SIGNAL \U2|Add0~2\ : std_logic;
SIGNAL \U2|Add0~61_sumout\ : std_logic;
SIGNAL \U2|COUNT[10]~1_combout\ : std_logic;
SIGNAL \U2|Add0~62\ : std_logic;
SIGNAL \U2|Add0~101_sumout\ : std_logic;
SIGNAL \U2|COUNT[11]~11_combout\ : std_logic;
SIGNAL \U2|Add0~102\ : std_logic;
SIGNAL \U2|Add0~97_sumout\ : std_logic;
SIGNAL \U2|COUNT[12]~10_combout\ : std_logic;
SIGNAL \U2|Add0~98\ : std_logic;
SIGNAL \U2|Add0~93_sumout\ : std_logic;
SIGNAL \U2|COUNT[13]~9_combout\ : std_logic;
SIGNAL \U2|Add0~94\ : std_logic;
SIGNAL \U2|Add0~33_sumout\ : std_logic;
SIGNAL \U2|Add0~34\ : std_logic;
SIGNAL \U2|Add0~89_sumout\ : std_logic;
SIGNAL \U2|COUNT[15]~8_combout\ : std_logic;
SIGNAL \U2|Add0~90\ : std_logic;
SIGNAL \U2|Add0~41_sumout\ : std_logic;
SIGNAL \U2|Add0~42\ : std_logic;
SIGNAL \U2|Add0~57_sumout\ : std_logic;
SIGNAL \U2|COUNT[17]~0_combout\ : std_logic;
SIGNAL \U2|Add0~58\ : std_logic;
SIGNAL \U2|Add0~85_sumout\ : std_logic;
SIGNAL \U2|COUNT[18]~7_combout\ : std_logic;
SIGNAL \U2|Add0~86\ : std_logic;
SIGNAL \U2|Add0~81_sumout\ : std_logic;
SIGNAL \U2|COUNT[19]~6_combout\ : std_logic;
SIGNAL \U2|Add0~82\ : std_logic;
SIGNAL \U2|Add0~77_sumout\ : std_logic;
SIGNAL \U2|COUNT[20]~5_combout\ : std_logic;
SIGNAL \U2|Add0~78\ : std_logic;
SIGNAL \U2|Add0~73_sumout\ : std_logic;
SIGNAL \U2|COUNT[21]~4_combout\ : std_logic;
SIGNAL \U2|Add0~74\ : std_logic;
SIGNAL \U2|Add0~45_sumout\ : std_logic;
SIGNAL \U2|Add0~46\ : std_logic;
SIGNAL \U2|Add0~69_sumout\ : std_logic;
SIGNAL \U2|COUNT[23]~3_combout\ : std_logic;
SIGNAL \U2|Add0~70\ : std_logic;
SIGNAL \U2|Add0~37_sumout\ : std_logic;
SIGNAL \U2|Equal0~1_combout\ : std_logic;
SIGNAL \U2|Add0~38\ : std_logic;
SIGNAL \U2|Add0~9_sumout\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \U2|Equal0~2_combout\ : std_logic;
SIGNAL \U2|Equal0~3_combout\ : std_logic;
SIGNAL \U2|Equal0~4_combout\ : std_logic;
SIGNAL \U2|Equal0~5_combout\ : std_logic;
SIGNAL \U2|ENABLE~q\ : std_logic;
SIGNAL \U3|C_FLAG~0_combout\ : std_logic;
SIGNAL \U3|C_FLAG~q\ : std_logic;
SIGNAL \U3|COUNTER~0_combout\ : std_logic;
SIGNAL \U3|COUNTER~q\ : std_logic;
SIGNAL \U3|process_1~0_combout\ : std_logic;
SIGNAL \U3|Add0~22\ : std_logic;
SIGNAL \U3|Add0~5_sumout\ : std_logic;
SIGNAL \U3|Add0~6\ : std_logic;
SIGNAL \U3|Add0~17_sumout\ : std_logic;
SIGNAL \U3|Add0~18\ : std_logic;
SIGNAL \U3|Add0~13_sumout\ : std_logic;
SIGNAL \U3|i[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|Add0~14\ : std_logic;
SIGNAL \U3|Add0~9_sumout\ : std_logic;
SIGNAL \U3|Mux0~0_combout\ : std_logic;
SIGNAL \U3|NUM[4]~0_combout\ : std_logic;
SIGNAL \U3|SCALE~2_combout\ : std_logic;
SIGNAL \C0|SCALE_SWOUT[4]~4_combout\ : std_logic;
SIGNAL \S0|WideOr1~0_combout\ : std_logic;
SIGNAL \C0|SCALE_SWOUT[2]~7_combout\ : std_logic;
SIGNAL \U3|Add0~10\ : std_logic;
SIGNAL \U3|Add0~1_sumout\ : std_logic;
SIGNAL \U3|Mux2~0_combout\ : std_logic;
SIGNAL \U3|SCALE~3_combout\ : std_logic;
SIGNAL \C0|SCALE_SWOUT[2]~5_combout\ : std_logic;
SIGNAL \U3|Mux3~0_combout\ : std_logic;
SIGNAL \U3|SCALE~1_combout\ : std_logic;
SIGNAL \C0|SCALE_SWOUT[1]~3_combout\ : std_logic;
SIGNAL \S0|WideOr1~1_combout\ : std_logic;
SIGNAL \U3|Mux1~0_combout\ : std_logic;
SIGNAL \U3|SCALE~0_combout\ : std_logic;
SIGNAL \U3|SCALE[3]~DUPLICATE_q\ : std_logic;
SIGNAL \C0|SCALE_SWOUT[3]~2_combout\ : std_logic;
SIGNAL \U3|Mux4~0_combout\ : std_logic;
SIGNAL \U3|SCALE~4_combout\ : std_logic;
SIGNAL \C0|SCALE_SWOUT[0]~6_combout\ : std_logic;
SIGNAL \L1|Mux6~0_combout\ : std_logic;
SIGNAL \L1|Mux5~0_combout\ : std_logic;
SIGNAL \L1|Mux4~0_combout\ : std_logic;
SIGNAL \L1|Mux3~0_combout\ : std_logic;
SIGNAL \U3|SCALE[4]~DUPLICATE_q\ : std_logic;
SIGNAL \L1|Mux2~0_combout\ : std_logic;
SIGNAL \L1|Mux2~1_combout\ : std_logic;
SIGNAL \L1|Mux1~0_combout\ : std_logic;
SIGNAL \L1|Mux0~0_combout\ : std_logic;
SIGNAL \L1|Mux13~0_combout\ : std_logic;
SIGNAL \L1|Mux12~0_combout\ : std_logic;
SIGNAL \L1|Mux11~0_combout\ : std_logic;
SIGNAL \L1|Mux10~0_combout\ : std_logic;
SIGNAL \L1|Mux9~0_combout\ : std_logic;
SIGNAL \L1|Mux19~0_combout\ : std_logic;
SIGNAL \L1|Mux18~0_combout\ : std_logic;
SIGNAL \L1|Mux17~0_combout\ : std_logic;
SIGNAL \L1|Mux16~0_combout\ : std_logic;
SIGNAL \S0|WideNor0~combout\ : std_logic;
SIGNAL \U3|S_FLAG~q\ : std_logic;
SIGNAL \C0|ENABLE~0_combout\ : std_logic;
SIGNAL \B1|Add0~53_sumout\ : std_logic;
SIGNAL \B1|BEEPOUT~2_combout\ : std_logic;
SIGNAL \B1|Ram0~3_combout\ : std_logic;
SIGNAL \B1|Ram0~2_combout\ : std_logic;
SIGNAL \B1|LessThan0~1_combout\ : std_logic;
SIGNAL \B1|Ram0~4_combout\ : std_logic;
SIGNAL \B1|Ram0~5_combout\ : std_logic;
SIGNAL \B1|LessThan0~2_combout\ : std_logic;
SIGNAL \B1|Ram0~7_combout\ : std_logic;
SIGNAL \B1|Ram0~6_combout\ : std_logic;
SIGNAL \B1|Equal0~0_combout\ : std_logic;
SIGNAL \B1|Ram0~18_combout\ : std_logic;
SIGNAL \B1|Ram0~0_combout\ : std_logic;
SIGNAL \B1|Ram0~19_combout\ : std_logic;
SIGNAL \B1|Ram0~1_combout\ : std_logic;
SIGNAL \B1|LessThan0~0_combout\ : std_logic;
SIGNAL \B1|LessThan0~3_combout\ : std_logic;
SIGNAL \B1|Equal0~4_combout\ : std_logic;
SIGNAL \B1|Equal0~5_combout\ : std_logic;
SIGNAL \B1|LessThan0~13_combout\ : std_logic;
SIGNAL \B1|LessThan0~14_combout\ : std_logic;
SIGNAL \B1|LessThan0~12_combout\ : std_logic;
SIGNAL \B1|LessThan0~15_combout\ : std_logic;
SIGNAL \B1|Ram0~9_combout\ : std_logic;
SIGNAL \B1|Ram0~8_combout\ : std_logic;
SIGNAL \B1|LessThan0~10_combout\ : std_logic;
SIGNAL \B1|LessThan0~4_combout\ : std_logic;
SIGNAL \B1|Ram0~17_combout\ : std_logic;
SIGNAL \B1|Ram0~16_combout\ : std_logic;
SIGNAL \B1|LessThan0~9_combout\ : std_logic;
SIGNAL \B1|Ram0~11_combout\ : std_logic;
SIGNAL \B1|Ram0~10_combout\ : std_logic;
SIGNAL \B1|LessThan0~8_combout\ : std_logic;
SIGNAL \B1|Equal0~1_combout\ : std_logic;
SIGNAL \B1|LessThan0~11_combout\ : std_logic;
SIGNAL \B1|Equal0~3_combout\ : std_logic;
SIGNAL \B1|Ram0~14_combout\ : std_logic;
SIGNAL \B1|Ram0~15_combout\ : std_logic;
SIGNAL \B1|LessThan0~6_combout\ : std_logic;
SIGNAL \B1|Equal0~2_combout\ : std_logic;
SIGNAL \B1|Ram0~13_combout\ : std_logic;
SIGNAL \B1|Ram0~12_combout\ : std_logic;
SIGNAL \B1|LessThan0~5_combout\ : std_logic;
SIGNAL \B1|LessThan0~7_combout\ : std_logic;
SIGNAL \B1|BEEPOUT~1_combout\ : std_logic;
SIGNAL \B1|Add0~82\ : std_logic;
SIGNAL \B1|Add0~77_sumout\ : std_logic;
SIGNAL \B1|Equal0~6_combout\ : std_logic;
SIGNAL \B1|Equal0~9_combout\ : std_logic;
SIGNAL \B1|Equal0~8_combout\ : std_logic;
SIGNAL \B1|Equal0~10_combout\ : std_logic;
SIGNAL \B1|COUNT[23]~0_combout\ : std_logic;
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
SIGNAL \B1|Add0~73_sumout\ : std_logic;
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
SIGNAL \B1|Add0~86\ : std_logic;
SIGNAL \B1|Add0~81_sumout\ : std_logic;
SIGNAL \B1|Equal0~7_combout\ : std_logic;
SIGNAL \B1|LessThan0~16_combout\ : std_logic;
SIGNAL \B1|FLAG~0_combout\ : std_logic;
SIGNAL \B1|FLAG~q\ : std_logic;
SIGNAL \B1|BEEPOUT~0_combout\ : std_logic;
SIGNAL \B1|BEEPOUT~q\ : std_logic;
SIGNAL \U3|NUM\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \B1|COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U3|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U2|COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U3|SCALE\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|DIVCOUNT\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \S0|ALT_INV_Equal19~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal14~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal22~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal24~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal24~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_SCALE\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|ALT_INV_SW_FF~q\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U3|ALT_INV_i\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \B1|ALT_INV_COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U0|ALT_INV_DIVCOUNT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|ALT_INV_DIVCOUNT[19]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|ALT_INV_DIVCOUNT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \U0|ALT_INV_DIVCOUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_SCALE[4]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_SCALE[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_i[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_STARTN~input_o\ : std_logic;
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
SIGNAL \ALT_INV_PSWITCH[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_PSWITCH[23]~input_o\ : std_logic;
SIGNAL \B1|ALT_INV_BEEPOUT~2_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~19_combout\ : std_logic;
SIGNAL \B1|ALT_INV_Ram0~18_combout\ : std_logic;
SIGNAL \C0|ALT_INV_SCALE_SWOUT[2]~7_combout\ : std_logic;
SIGNAL \U0|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \U0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U0|ALT_INV_DIVCOUNT\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U0|ALT_INV_ENABLE~q\ : std_logic;
SIGNAL \U0|ALT_INV_SWBEFOREN~q\ : std_logic;
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
SIGNAL \C0|ALT_INV_ENABLE~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_S_FLAG~q\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~combout\ : std_logic;
SIGNAL \U2|ALT_INV_ENABLE~q\ : std_logic;
SIGNAL \U3|ALT_INV_C_FLAG~q\ : std_logic;
SIGNAL \U3|ALT_INV_NUM\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|ALT_INV_SWONEN~q\ : std_logic;
SIGNAL \B1|ALT_INV_BEEPOUT~q\ : std_logic;
SIGNAL \U3|ALT_INV_COUNTER~q\ : std_logic;
SIGNAL \L1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \L1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\ : std_logic;
SIGNAL \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\ : std_logic;
SIGNAL \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr0~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\ : std_logic;
SIGNAL \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal17~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal21~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal23~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal19~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \C0|ALT_INV_SCALE_SWOUT[0]~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal16~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \C0|ALT_INV_SCALE_SWOUT[0]~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal12~1_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal20~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Equal18~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_PSWITCH <= PSWITCH;
ww_STARTN <= STARTN;
ww_RESETN <= RESETN;
LED_S <= ww_LED_S;
LED_N <= ww_LED_N;
LED_K <= ww_LED_K;
R_CHECK <= ww_R_CHECK;
S_CHECK <= ww_S_CHECK;
SPKR <= ww_SPKR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\S0|ALT_INV_Equal19~0_combout\ <= NOT \S0|Equal19~0_combout\;
\S0|ALT_INV_Equal6~0_combout\ <= NOT \S0|Equal6~0_combout\;
\S0|ALT_INV_Equal5~0_combout\ <= NOT \S0|Equal5~0_combout\;
\S0|ALT_INV_Equal14~0_combout\ <= NOT \S0|Equal14~0_combout\;
\S0|ALT_INV_Equal12~0_combout\ <= NOT \S0|Equal12~0_combout\;
\S0|ALT_INV_Equal22~0_combout\ <= NOT \S0|Equal22~0_combout\;
\S0|ALT_INV_Equal0~4_combout\ <= NOT \S0|Equal0~4_combout\;
\S0|ALT_INV_Equal0~3_combout\ <= NOT \S0|Equal0~3_combout\;
\S0|ALT_INV_Equal24~1_combout\ <= NOT \S0|Equal24~1_combout\;
\S0|ALT_INV_Equal24~0_combout\ <= NOT \S0|Equal24~0_combout\;
\S0|ALT_INV_Equal0~2_combout\ <= NOT \S0|Equal0~2_combout\;
\S0|ALT_INV_Equal8~0_combout\ <= NOT \S0|Equal8~0_combout\;
\S0|ALT_INV_Equal0~1_combout\ <= NOT \S0|Equal0~1_combout\;
\S0|ALT_INV_Equal1~0_combout\ <= NOT \S0|Equal1~0_combout\;
\S0|ALT_INV_Equal0~0_combout\ <= NOT \S0|Equal0~0_combout\;
\U3|ALT_INV_SCALE\(3) <= NOT \U3|SCALE\(3);
\U1|ALT_INV_SW_FF~q\ <= NOT \U1|SW_FF~q\;
\U2|ALT_INV_Add0~101_sumout\ <= NOT \U2|Add0~101_sumout\;
\U2|ALT_INV_Add0~97_sumout\ <= NOT \U2|Add0~97_sumout\;
\U2|ALT_INV_Add0~93_sumout\ <= NOT \U2|Add0~93_sumout\;
\U2|ALT_INV_Add0~89_sumout\ <= NOT \U2|Add0~89_sumout\;
\U2|ALT_INV_Add0~85_sumout\ <= NOT \U2|Add0~85_sumout\;
\U2|ALT_INV_Add0~81_sumout\ <= NOT \U2|Add0~81_sumout\;
\U2|ALT_INV_Add0~77_sumout\ <= NOT \U2|Add0~77_sumout\;
\U2|ALT_INV_Add0~73_sumout\ <= NOT \U2|Add0~73_sumout\;
\U2|ALT_INV_Add0~69_sumout\ <= NOT \U2|Add0~69_sumout\;
\U2|ALT_INV_Add0~65_sumout\ <= NOT \U2|Add0~65_sumout\;
\U2|ALT_INV_Add0~61_sumout\ <= NOT \U2|Add0~61_sumout\;
\U2|ALT_INV_Add0~57_sumout\ <= NOT \U2|Add0~57_sumout\;
\U2|ALT_INV_COUNT\(1) <= NOT \U2|COUNT\(1);
\U2|ALT_INV_COUNT\(8) <= NOT \U2|COUNT\(8);
\U2|ALT_INV_COUNT\(22) <= NOT \U2|COUNT\(22);
\U2|ALT_INV_COUNT\(16) <= NOT \U2|COUNT\(16);
\U2|ALT_INV_COUNT\(24) <= NOT \U2|COUNT\(24);
\U2|ALT_INV_COUNT\(14) <= NOT \U2|COUNT\(14);
\U2|ALT_INV_COUNT\(7) <= NOT \U2|COUNT\(7);
\U2|ALT_INV_COUNT\(6) <= NOT \U2|COUNT\(6);
\U2|ALT_INV_COUNT\(4) <= NOT \U2|COUNT\(4);
\U2|ALT_INV_COUNT\(3) <= NOT \U2|COUNT\(3);
\U2|ALT_INV_COUNT\(2) <= NOT \U2|COUNT\(2);
\U2|ALT_INV_COUNT\(25) <= NOT \U2|COUNT\(25);
\U2|ALT_INV_COUNT\(0) <= NOT \U2|COUNT\(0);
\U2|ALT_INV_COUNT\(9) <= NOT \U2|COUNT\(9);
\U3|ALT_INV_i\(0) <= NOT \U3|i\(0);
\U3|ALT_INV_i\(2) <= NOT \U3|i\(2);
\U3|ALT_INV_i\(3) <= NOT \U3|i\(3);
\U3|ALT_INV_i\(4) <= NOT \U3|i\(4);
\U3|ALT_INV_i\(1) <= NOT \U3|i\(1);
\U3|ALT_INV_i\(5) <= NOT \U3|i\(5);
\B1|ALT_INV_COUNT\(19) <= NOT \B1|COUNT\(19);
\B1|ALT_INV_COUNT\(20) <= NOT \B1|COUNT\(20);
\B1|ALT_INV_COUNT\(21) <= NOT \B1|COUNT\(21);
\B1|ALT_INV_COUNT\(22) <= NOT \B1|COUNT\(22);
\B1|ALT_INV_COUNT\(23) <= NOT \B1|COUNT\(23);
\B1|ALT_INV_COUNT\(24) <= NOT \B1|COUNT\(24);
\B1|ALT_INV_COUNT\(25) <= NOT \B1|COUNT\(25);
\B1|ALT_INV_COUNT\(18) <= NOT \B1|COUNT\(18);
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
\U0|ALT_INV_DIVCOUNT[13]~DUPLICATE_q\ <= NOT \U0|DIVCOUNT[13]~DUPLICATE_q\;
\U0|ALT_INV_DIVCOUNT[19]~DUPLICATE_q\ <= NOT \U0|DIVCOUNT[19]~DUPLICATE_q\;
\U0|ALT_INV_DIVCOUNT[5]~DUPLICATE_q\ <= NOT \U0|DIVCOUNT[5]~DUPLICATE_q\;
\U0|ALT_INV_DIVCOUNT[0]~DUPLICATE_q\ <= NOT \U0|DIVCOUNT[0]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[5]~DUPLICATE_q\ <= NOT \U2|COUNT[5]~DUPLICATE_q\;
\U3|ALT_INV_SCALE[4]~DUPLICATE_q\ <= NOT \U3|SCALE[4]~DUPLICATE_q\;
\U3|ALT_INV_SCALE[3]~DUPLICATE_q\ <= NOT \U3|SCALE[3]~DUPLICATE_q\;
\U3|ALT_INV_i[3]~DUPLICATE_q\ <= NOT \U3|i[3]~DUPLICATE_q\;
\ALT_INV_STARTN~input_o\ <= NOT \STARTN~input_o\;
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
\ALT_INV_PSWITCH[21]~input_o\ <= NOT \PSWITCH[21]~input_o\;
\ALT_INV_PSWITCH[19]~input_o\ <= NOT \PSWITCH[19]~input_o\;
\ALT_INV_PSWITCH[20]~input_o\ <= NOT \PSWITCH[20]~input_o\;
\ALT_INV_PSWITCH[16]~input_o\ <= NOT \PSWITCH[16]~input_o\;
\ALT_INV_PSWITCH[18]~input_o\ <= NOT \PSWITCH[18]~input_o\;
\ALT_INV_PSWITCH[17]~input_o\ <= NOT \PSWITCH[17]~input_o\;
\ALT_INV_PSWITCH[23]~input_o\ <= NOT \PSWITCH[23]~input_o\;
\B1|ALT_INV_BEEPOUT~2_combout\ <= NOT \B1|BEEPOUT~2_combout\;
\B1|ALT_INV_Ram0~19_combout\ <= NOT \B1|Ram0~19_combout\;
\B1|ALT_INV_Ram0~18_combout\ <= NOT \B1|Ram0~18_combout\;
\C0|ALT_INV_SCALE_SWOUT[2]~7_combout\ <= NOT \C0|SCALE_SWOUT[2]~7_combout\;
\U0|ALT_INV_Equal0~3_combout\ <= NOT \U0|Equal0~3_combout\;
\U0|ALT_INV_Equal0~2_combout\ <= NOT \U0|Equal0~2_combout\;
\U0|ALT_INV_DIVCOUNT\(10) <= NOT \U0|DIVCOUNT\(10);
\U0|ALT_INV_DIVCOUNT\(11) <= NOT \U0|DIVCOUNT\(11);
\U0|ALT_INV_DIVCOUNT\(12) <= NOT \U0|DIVCOUNT\(12);
\U0|ALT_INV_DIVCOUNT\(13) <= NOT \U0|DIVCOUNT\(13);
\U0|ALT_INV_Equal0~1_combout\ <= NOT \U0|Equal0~1_combout\;
\U0|ALT_INV_DIVCOUNT\(15) <= NOT \U0|DIVCOUNT\(15);
\U0|ALT_INV_DIVCOUNT\(16) <= NOT \U0|DIVCOUNT\(16);
\U0|ALT_INV_DIVCOUNT\(17) <= NOT \U0|DIVCOUNT\(17);
\U0|ALT_INV_DIVCOUNT\(18) <= NOT \U0|DIVCOUNT\(18);
\U0|ALT_INV_DIVCOUNT\(19) <= NOT \U0|DIVCOUNT\(19);
\U0|ALT_INV_DIVCOUNT\(8) <= NOT \U0|DIVCOUNT\(8);
\U0|ALT_INV_DIVCOUNT\(9) <= NOT \U0|DIVCOUNT\(9);
\U0|ALT_INV_DIVCOUNT\(14) <= NOT \U0|DIVCOUNT\(14);
\U0|ALT_INV_Equal0~0_combout\ <= NOT \U0|Equal0~0_combout\;
\U0|ALT_INV_DIVCOUNT\(3) <= NOT \U0|DIVCOUNT\(3);
\U0|ALT_INV_DIVCOUNT\(4) <= NOT \U0|DIVCOUNT\(4);
\U0|ALT_INV_DIVCOUNT\(5) <= NOT \U0|DIVCOUNT\(5);
\U0|ALT_INV_DIVCOUNT\(6) <= NOT \U0|DIVCOUNT\(6);
\U0|ALT_INV_DIVCOUNT\(7) <= NOT \U0|DIVCOUNT\(7);
\U0|ALT_INV_DIVCOUNT\(0) <= NOT \U0|DIVCOUNT\(0);
\U0|ALT_INV_DIVCOUNT\(1) <= NOT \U0|DIVCOUNT\(1);
\U0|ALT_INV_DIVCOUNT\(2) <= NOT \U0|DIVCOUNT\(2);
\U2|ALT_INV_Equal0~4_combout\ <= NOT \U2|Equal0~4_combout\;
\U2|ALT_INV_Equal0~3_combout\ <= NOT \U2|Equal0~3_combout\;
\U2|ALT_INV_COUNT\(11) <= NOT \U2|COUNT\(11);
\U2|ALT_INV_COUNT\(12) <= NOT \U2|COUNT\(12);
\U2|ALT_INV_COUNT\(13) <= NOT \U2|COUNT\(13);
\U2|ALT_INV_COUNT\(15) <= NOT \U2|COUNT\(15);
\U2|ALT_INV_Equal0~2_combout\ <= NOT \U2|Equal0~2_combout\;
\U2|ALT_INV_COUNT\(18) <= NOT \U2|COUNT\(18);
\U2|ALT_INV_COUNT\(19) <= NOT \U2|COUNT\(19);
\U2|ALT_INV_COUNT\(20) <= NOT \U2|COUNT\(20);
\U2|ALT_INV_COUNT\(21) <= NOT \U2|COUNT\(21);
\U2|ALT_INV_COUNT\(23) <= NOT \U2|COUNT\(23);
\U2|ALT_INV_COUNT\(5) <= NOT \U2|COUNT\(5);
\U2|ALT_INV_COUNT\(10) <= NOT \U2|COUNT\(10);
\U2|ALT_INV_COUNT\(17) <= NOT \U2|COUNT\(17);
\U2|ALT_INV_Equal0~1_combout\ <= NOT \U2|Equal0~1_combout\;
\U2|ALT_INV_Equal0~0_combout\ <= NOT \U2|Equal0~0_combout\;
\U0|ALT_INV_ENABLE~q\ <= NOT \U0|ENABLE~q\;
\U0|ALT_INV_SWBEFOREN~q\ <= NOT \U0|SWBEFOREN~q\;
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
\C0|ALT_INV_ENABLE~0_combout\ <= NOT \C0|ENABLE~0_combout\;
\U3|ALT_INV_S_FLAG~q\ <= NOT \U3|S_FLAG~q\;
\S0|ALT_INV_WideNor0~combout\ <= NOT \S0|WideNor0~combout\;
\U2|ALT_INV_ENABLE~q\ <= NOT \U2|ENABLE~q\;
\U3|ALT_INV_C_FLAG~q\ <= NOT \U3|C_FLAG~q\;
\U3|ALT_INV_NUM\(0) <= NOT \U3|NUM\(0);
\U3|ALT_INV_NUM\(2) <= NOT \U3|NUM\(2);
\U3|ALT_INV_NUM\(4) <= NOT \U3|NUM\(4);
\U3|ALT_INV_NUM\(1) <= NOT \U3|NUM\(1);
\U3|ALT_INV_NUM\(3) <= NOT \U3|NUM\(3);
\U0|ALT_INV_SWONEN~q\ <= NOT \U0|SWONEN~q\;
\B1|ALT_INV_BEEPOUT~q\ <= NOT \B1|BEEPOUT~q\;
\U3|ALT_INV_COUNTER~q\ <= NOT \U3|COUNTER~q\;
\L1|ALT_INV_Mux11~0_combout\ <= NOT \L1|Mux11~0_combout\;
\L1|ALT_INV_Mux2~0_combout\ <= NOT \L1|Mux2~0_combout\;
\C0|ALT_INV_SCALE_SWOUT[0]~6_combout\ <= NOT \C0|SCALE_SWOUT[0]~6_combout\;
\U3|ALT_INV_SCALE\(0) <= NOT \U3|SCALE\(0);
\C0|ALT_INV_SCALE_SWOUT[2]~5_combout\ <= NOT \C0|SCALE_SWOUT[2]~5_combout\;
\U3|ALT_INV_SCALE\(2) <= NOT \U3|SCALE\(2);
\C0|ALT_INV_SCALE_SWOUT[4]~4_combout\ <= NOT \C0|SCALE_SWOUT[4]~4_combout\;
\S0|ALT_INV_WideOr0~2_combout\ <= NOT \S0|WideOr0~2_combout\;
\S0|ALT_INV_WideOr0~1_combout\ <= NOT \S0|WideOr0~1_combout\;
\U3|ALT_INV_SCALE\(4) <= NOT \U3|SCALE\(4);
\C0|ALT_INV_SCALE_SWOUT[1]~3_combout\ <= NOT \C0|SCALE_SWOUT[1]~3_combout\;
\U3|ALT_INV_SCALE\(1) <= NOT \U3|SCALE\(1);
\C0|ALT_INV_SCALE_SWOUT[3]~2_combout\ <= NOT \C0|SCALE_SWOUT[3]~2_combout\;
\S0|ALT_INV_WideOr1~1_combout\ <= NOT \S0|WideOr1~1_combout\;
\S0|ALT_INV_WideOr1~0_combout\ <= NOT \S0|WideOr1~0_combout\;
\S0|ALT_INV_WideOr0~0_combout\ <= NOT \S0|WideOr0~0_combout\;
\S0|ALT_INV_WideNor0~1_combout\ <= NOT \S0|WideNor0~1_combout\;
\S0|ALT_INV_Equal17~0_combout\ <= NOT \S0|Equal17~0_combout\;
\S0|ALT_INV_Equal1~2_combout\ <= NOT \S0|Equal1~2_combout\;
\S0|ALT_INV_Equal21~0_combout\ <= NOT \S0|Equal21~0_combout\;
\S0|ALT_INV_Equal13~0_combout\ <= NOT \S0|Equal13~0_combout\;
\S0|ALT_INV_Equal9~1_combout\ <= NOT \S0|Equal9~1_combout\;
\S0|ALT_INV_Equal5~1_combout\ <= NOT \S0|Equal5~1_combout\;
\S0|ALT_INV_WideNor0~0_combout\ <= NOT \S0|WideNor0~0_combout\;
\S0|ALT_INV_Equal15~0_combout\ <= NOT \S0|Equal15~0_combout\;
\S0|ALT_INV_Equal11~1_combout\ <= NOT \S0|Equal11~1_combout\;
\S0|ALT_INV_Equal23~0_combout\ <= NOT \S0|Equal23~0_combout\;
\S0|ALT_INV_Equal0~5_combout\ <= NOT \S0|Equal0~5_combout\;
\S0|ALT_INV_Equal3~0_combout\ <= NOT \S0|Equal3~0_combout\;
\S0|ALT_INV_Equal19~1_combout\ <= NOT \S0|Equal19~1_combout\;
\S0|ALT_INV_Equal7~0_combout\ <= NOT \S0|Equal7~0_combout\;
\C0|ALT_INV_SCALE_SWOUT[0]~1_combout\ <= NOT \C0|SCALE_SWOUT[0]~1_combout\;
\S0|ALT_INV_Equal16~0_combout\ <= NOT \S0|Equal16~0_combout\;
\S0|ALT_INV_Equal1~1_combout\ <= NOT \S0|Equal1~1_combout\;
\S0|ALT_INV_Equal8~1_combout\ <= NOT \S0|Equal8~1_combout\;
\C0|ALT_INV_SCALE_SWOUT[0]~0_combout\ <= NOT \C0|SCALE_SWOUT[0]~0_combout\;
\S0|ALT_INV_Equal4~0_combout\ <= NOT \S0|Equal4~0_combout\;
\S0|ALT_INV_Equal12~1_combout\ <= NOT \S0|Equal12~1_combout\;
\S0|ALT_INV_Equal20~0_combout\ <= NOT \S0|Equal20~0_combout\;
\S0|ALT_INV_WideOr3~0_combout\ <= NOT \S0|WideOr3~0_combout\;
\S0|ALT_INV_Equal2~0_combout\ <= NOT \S0|Equal2~0_combout\;
\S0|ALT_INV_Equal9~0_combout\ <= NOT \S0|Equal9~0_combout\;
\S0|ALT_INV_Equal10~0_combout\ <= NOT \S0|Equal10~0_combout\;
\S0|ALT_INV_Equal11~0_combout\ <= NOT \S0|Equal11~0_combout\;
\S0|ALT_INV_Equal18~0_combout\ <= NOT \S0|Equal18~0_combout\;

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
	i => \L1|Mux2~1_combout\,
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
	i => \L1|Mux9~0_combout\,
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
	i => \L1|Mux2~0_combout\,
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
	i => \L1|Mux2~1_combout\,
	devoe => ww_devoe,
	o => ww_LED_K(6));

-- Location: IOOBUF_X0_Y18_N79
\R_CHECK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|COUNTER~q\,
	devoe => ww_devoe,
	o => ww_R_CHECK);

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOIBUF_X10_Y0_N92
\STARTN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STARTN,
	o => \STARTN~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\RESETN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESETN,
	o => \RESETN~input_o\);

-- Location: FF_X16_Y4_N23
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

-- Location: LABCELL_X16_Y4_N21
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

-- Location: FF_X16_Y4_N22
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

-- Location: LABCELL_X17_Y4_N0
\U0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~5_sumout\ = SUM(( \U0|DIVCOUNT\(1) ) + ( \U0|DIVCOUNT[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \U0|Add0~6\ = CARRY(( \U0|DIVCOUNT\(1) ) + ( \U0|DIVCOUNT[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT[0]~DUPLICATE_q\,
	datad => \U0|ALT_INV_DIVCOUNT\(1),
	cin => GND,
	sumout => \U0|Add0~5_sumout\,
	cout => \U0|Add0~6\);

-- Location: FF_X17_Y4_N2
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

-- Location: LABCELL_X17_Y4_N3
\U0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~1_sumout\ = SUM(( \U0|DIVCOUNT\(2) ) + ( GND ) + ( \U0|Add0~6\ ))
-- \U0|Add0~2\ = CARRY(( \U0|DIVCOUNT\(2) ) + ( GND ) + ( \U0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|ALT_INV_DIVCOUNT\(2),
	cin => \U0|Add0~6\,
	sumout => \U0|Add0~1_sumout\,
	cout => \U0|Add0~2\);

-- Location: FF_X17_Y4_N5
\U0|DIVCOUNT[2]\ : dffeas
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
	q => \U0|DIVCOUNT\(2));

-- Location: LABCELL_X17_Y4_N6
\U0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~25_sumout\ = SUM(( \U0|DIVCOUNT\(3) ) + ( GND ) + ( \U0|Add0~2\ ))
-- \U0|Add0~26\ = CARRY(( \U0|DIVCOUNT\(3) ) + ( GND ) + ( \U0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(3),
	cin => \U0|Add0~2\,
	sumout => \U0|Add0~25_sumout\,
	cout => \U0|Add0~26\);

-- Location: FF_X17_Y4_N7
\U0|DIVCOUNT[3]\ : dffeas
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
	q => \U0|DIVCOUNT\(3));

-- Location: LABCELL_X17_Y4_N9
\U0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~21_sumout\ = SUM(( \U0|DIVCOUNT\(4) ) + ( GND ) + ( \U0|Add0~26\ ))
-- \U0|Add0~22\ = CARRY(( \U0|DIVCOUNT\(4) ) + ( GND ) + ( \U0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(4),
	cin => \U0|Add0~26\,
	sumout => \U0|Add0~21_sumout\,
	cout => \U0|Add0~22\);

-- Location: FF_X17_Y4_N11
\U0|DIVCOUNT[4]\ : dffeas
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
	q => \U0|DIVCOUNT\(4));

-- Location: LABCELL_X17_Y4_N12
\U0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~17_sumout\ = SUM(( \U0|DIVCOUNT[5]~DUPLICATE_q\ ) + ( GND ) + ( \U0|Add0~22\ ))
-- \U0|Add0~18\ = CARRY(( \U0|DIVCOUNT[5]~DUPLICATE_q\ ) + ( GND ) + ( \U0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|ALT_INV_DIVCOUNT[5]~DUPLICATE_q\,
	cin => \U0|Add0~22\,
	sumout => \U0|Add0~17_sumout\,
	cout => \U0|Add0~18\);

-- Location: FF_X17_Y4_N14
\U0|DIVCOUNT[5]~DUPLICATE\ : dffeas
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
	q => \U0|DIVCOUNT[5]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y4_N15
\U0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~13_sumout\ = SUM(( \U0|DIVCOUNT\(6) ) + ( GND ) + ( \U0|Add0~18\ ))
-- \U0|Add0~14\ = CARRY(( \U0|DIVCOUNT\(6) ) + ( GND ) + ( \U0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(6),
	cin => \U0|Add0~18\,
	sumout => \U0|Add0~13_sumout\,
	cout => \U0|Add0~14\);

-- Location: FF_X17_Y4_N17
\U0|DIVCOUNT[6]\ : dffeas
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
	q => \U0|DIVCOUNT\(6));

-- Location: LABCELL_X17_Y4_N18
\U0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~9_sumout\ = SUM(( \U0|DIVCOUNT\(7) ) + ( GND ) + ( \U0|Add0~14\ ))
-- \U0|Add0~10\ = CARRY(( \U0|DIVCOUNT\(7) ) + ( GND ) + ( \U0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(7),
	cin => \U0|Add0~14\,
	sumout => \U0|Add0~9_sumout\,
	cout => \U0|Add0~10\);

-- Location: FF_X17_Y4_N20
\U0|DIVCOUNT[7]\ : dffeas
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
	q => \U0|DIVCOUNT\(7));

-- Location: LABCELL_X17_Y4_N21
\U0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~37_sumout\ = SUM(( \U0|DIVCOUNT\(8) ) + ( GND ) + ( \U0|Add0~10\ ))
-- \U0|Add0~38\ = CARRY(( \U0|DIVCOUNT\(8) ) + ( GND ) + ( \U0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|ALT_INV_DIVCOUNT\(8),
	cin => \U0|Add0~10\,
	sumout => \U0|Add0~37_sumout\,
	cout => \U0|Add0~38\);

-- Location: FF_X17_Y4_N23
\U0|DIVCOUNT[8]\ : dffeas
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
	q => \U0|DIVCOUNT\(8));

-- Location: LABCELL_X17_Y4_N24
\U0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~33_sumout\ = SUM(( \U0|DIVCOUNT\(9) ) + ( GND ) + ( \U0|Add0~38\ ))
-- \U0|Add0~34\ = CARRY(( \U0|DIVCOUNT\(9) ) + ( GND ) + ( \U0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(9),
	cin => \U0|Add0~38\,
	sumout => \U0|Add0~33_sumout\,
	cout => \U0|Add0~34\);

-- Location: FF_X17_Y4_N26
\U0|DIVCOUNT[9]\ : dffeas
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
	q => \U0|DIVCOUNT\(9));

-- Location: LABCELL_X17_Y4_N27
\U0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~73_sumout\ = SUM(( \U0|DIVCOUNT\(10) ) + ( GND ) + ( \U0|Add0~34\ ))
-- \U0|Add0~74\ = CARRY(( \U0|DIVCOUNT\(10) ) + ( GND ) + ( \U0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|ALT_INV_DIVCOUNT\(10),
	cin => \U0|Add0~34\,
	sumout => \U0|Add0~73_sumout\,
	cout => \U0|Add0~74\);

-- Location: FF_X17_Y4_N29
\U0|DIVCOUNT[10]\ : dffeas
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
	q => \U0|DIVCOUNT\(10));

-- Location: LABCELL_X17_Y4_N30
\U0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~69_sumout\ = SUM(( \U0|DIVCOUNT\(11) ) + ( GND ) + ( \U0|Add0~74\ ))
-- \U0|Add0~70\ = CARRY(( \U0|DIVCOUNT\(11) ) + ( GND ) + ( \U0|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(11),
	cin => \U0|Add0~74\,
	sumout => \U0|Add0~69_sumout\,
	cout => \U0|Add0~70\);

-- Location: FF_X17_Y4_N31
\U0|DIVCOUNT[11]\ : dffeas
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
	q => \U0|DIVCOUNT\(11));

-- Location: LABCELL_X17_Y4_N33
\U0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~65_sumout\ = SUM(( \U0|DIVCOUNT\(12) ) + ( GND ) + ( \U0|Add0~70\ ))
-- \U0|Add0~66\ = CARRY(( \U0|DIVCOUNT\(12) ) + ( GND ) + ( \U0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(12),
	cin => \U0|Add0~70\,
	sumout => \U0|Add0~65_sumout\,
	cout => \U0|Add0~66\);

-- Location: FF_X17_Y4_N35
\U0|DIVCOUNT[12]\ : dffeas
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
	q => \U0|DIVCOUNT\(12));

-- Location: LABCELL_X17_Y4_N36
\U0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~61_sumout\ = SUM(( \U0|DIVCOUNT[13]~DUPLICATE_q\ ) + ( GND ) + ( \U0|Add0~66\ ))
-- \U0|Add0~62\ = CARRY(( \U0|DIVCOUNT[13]~DUPLICATE_q\ ) + ( GND ) + ( \U0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT[13]~DUPLICATE_q\,
	cin => \U0|Add0~66\,
	sumout => \U0|Add0~61_sumout\,
	cout => \U0|Add0~62\);

-- Location: FF_X17_Y4_N38
\U0|DIVCOUNT[13]~DUPLICATE\ : dffeas
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
	q => \U0|DIVCOUNT[13]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y4_N39
\U0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~29_sumout\ = SUM(( \U0|DIVCOUNT\(14) ) + ( GND ) + ( \U0|Add0~62\ ))
-- \U0|Add0~30\ = CARRY(( \U0|DIVCOUNT\(14) ) + ( GND ) + ( \U0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(14),
	cin => \U0|Add0~62\,
	sumout => \U0|Add0~29_sumout\,
	cout => \U0|Add0~30\);

-- Location: FF_X17_Y4_N41
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

-- Location: LABCELL_X17_Y4_N42
\U0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~57_sumout\ = SUM(( \U0|DIVCOUNT\(15) ) + ( GND ) + ( \U0|Add0~30\ ))
-- \U0|Add0~58\ = CARRY(( \U0|DIVCOUNT\(15) ) + ( GND ) + ( \U0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|ALT_INV_DIVCOUNT\(15),
	cin => \U0|Add0~30\,
	sumout => \U0|Add0~57_sumout\,
	cout => \U0|Add0~58\);

-- Location: FF_X17_Y4_N44
\U0|DIVCOUNT[15]\ : dffeas
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
	q => \U0|DIVCOUNT\(15));

-- Location: LABCELL_X17_Y4_N45
\U0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~53_sumout\ = SUM(( \U0|DIVCOUNT\(16) ) + ( GND ) + ( \U0|Add0~58\ ))
-- \U0|Add0~54\ = CARRY(( \U0|DIVCOUNT\(16) ) + ( GND ) + ( \U0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(16),
	cin => \U0|Add0~58\,
	sumout => \U0|Add0~53_sumout\,
	cout => \U0|Add0~54\);

-- Location: FF_X17_Y4_N47
\U0|DIVCOUNT[16]\ : dffeas
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
	q => \U0|DIVCOUNT\(16));

-- Location: LABCELL_X17_Y4_N48
\U0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~49_sumout\ = SUM(( \U0|DIVCOUNT\(17) ) + ( GND ) + ( \U0|Add0~54\ ))
-- \U0|Add0~50\ = CARRY(( \U0|DIVCOUNT\(17) ) + ( GND ) + ( \U0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(17),
	cin => \U0|Add0~54\,
	sumout => \U0|Add0~49_sumout\,
	cout => \U0|Add0~50\);

-- Location: FF_X17_Y4_N50
\U0|DIVCOUNT[17]\ : dffeas
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
	q => \U0|DIVCOUNT\(17));

-- Location: LABCELL_X17_Y4_N51
\U0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~45_sumout\ = SUM(( \U0|DIVCOUNT\(18) ) + ( GND ) + ( \U0|Add0~50\ ))
-- \U0|Add0~46\ = CARRY(( \U0|DIVCOUNT\(18) ) + ( GND ) + ( \U0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(18),
	cin => \U0|Add0~50\,
	sumout => \U0|Add0~45_sumout\,
	cout => \U0|Add0~46\);

-- Location: FF_X17_Y4_N52
\U0|DIVCOUNT[18]\ : dffeas
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
	q => \U0|DIVCOUNT\(18));

-- Location: FF_X17_Y4_N56
\U0|DIVCOUNT[19]~DUPLICATE\ : dffeas
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
	q => \U0|DIVCOUNT[19]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y4_N54
\U0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~41_sumout\ = SUM(( \U0|DIVCOUNT[19]~DUPLICATE_q\ ) + ( GND ) + ( \U0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT[19]~DUPLICATE_q\,
	cin => \U0|Add0~46\,
	sumout => \U0|Add0~41_sumout\);

-- Location: FF_X17_Y4_N55
\U0|DIVCOUNT[19]\ : dffeas
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
	q => \U0|DIVCOUNT\(19));

-- Location: LABCELL_X16_Y4_N54
\U0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~1_combout\ = ( !\U0|DIVCOUNT\(17) & ( !\U0|DIVCOUNT\(16) & ( (!\U0|DIVCOUNT\(15) & (!\U0|DIVCOUNT\(18) & !\U0|DIVCOUNT\(19))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(15),
	datab => \U0|ALT_INV_DIVCOUNT\(18),
	datac => \U0|ALT_INV_DIVCOUNT\(19),
	datae => \U0|ALT_INV_DIVCOUNT\(17),
	dataf => \U0|ALT_INV_DIVCOUNT\(16),
	combout => \U0|Equal0~1_combout\);

-- Location: FF_X17_Y4_N37
\U0|DIVCOUNT[13]\ : dffeas
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
	q => \U0|DIVCOUNT\(13));

-- Location: LABCELL_X16_Y4_N24
\U0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~2_combout\ = ( !\U0|DIVCOUNT\(13) & ( (!\U0|DIVCOUNT\(12) & (!\U0|DIVCOUNT\(11) & !\U0|DIVCOUNT\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(12),
	datac => \U0|ALT_INV_DIVCOUNT\(11),
	datad => \U0|ALT_INV_DIVCOUNT\(10),
	dataf => \U0|ALT_INV_DIVCOUNT\(13),
	combout => \U0|Equal0~2_combout\);

-- Location: LABCELL_X16_Y4_N42
\U0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~3_combout\ = ( \U0|Equal0~2_combout\ & ( (\U0|Equal0~1_combout\ & (!\U0|DIVCOUNT\(9) & (!\U0|DIVCOUNT\(14) & !\U0|DIVCOUNT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_Equal0~1_combout\,
	datab => \U0|ALT_INV_DIVCOUNT\(9),
	datac => \U0|ALT_INV_DIVCOUNT\(14),
	datad => \U0|ALT_INV_DIVCOUNT\(8),
	dataf => \U0|ALT_INV_Equal0~2_combout\,
	combout => \U0|Equal0~3_combout\);

-- Location: FF_X17_Y4_N13
\U0|DIVCOUNT[5]\ : dffeas
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
	q => \U0|DIVCOUNT\(5));

-- Location: LABCELL_X16_Y4_N12
\U0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~0_combout\ = ( !\U0|DIVCOUNT\(5) & ( !\U0|DIVCOUNT\(3) & ( (!\U0|DIVCOUNT\(6) & (!\U0|DIVCOUNT\(7) & !\U0|DIVCOUNT\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(6),
	datab => \U0|ALT_INV_DIVCOUNT\(7),
	datac => \U0|ALT_INV_DIVCOUNT\(4),
	datae => \U0|ALT_INV_DIVCOUNT\(5),
	dataf => \U0|ALT_INV_DIVCOUNT\(3),
	combout => \U0|Equal0~0_combout\);

-- Location: LABCELL_X16_Y4_N48
\U0|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~4_combout\ = ( !\U0|DIVCOUNT\(0) & ( \U0|Equal0~0_combout\ & ( (!\U0|DIVCOUNT\(2) & (!\U0|DIVCOUNT\(1) & \U0|Equal0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(2),
	datac => \U0|ALT_INV_DIVCOUNT\(1),
	datad => \U0|ALT_INV_Equal0~3_combout\,
	datae => \U0|ALT_INV_DIVCOUNT\(0),
	dataf => \U0|ALT_INV_Equal0~0_combout\,
	combout => \U0|Equal0~4_combout\);

-- Location: FF_X16_Y4_N50
\U0|ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U0|Equal0~4_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|ENABLE~q\);

-- Location: LABCELL_X16_Y4_N45
\U0|SWBEFOREN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|SWBEFOREN~0_combout\ = ( \U0|ENABLE~q\ & ( !\STARTN~input_o\ ) ) # ( !\U0|ENABLE~q\ & ( \U0|SWBEFOREN~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STARTN~input_o\,
	datad => \U0|ALT_INV_SWBEFOREN~q\,
	dataf => \U0|ALT_INV_ENABLE~q\,
	combout => \U0|SWBEFOREN~0_combout\);

-- Location: FF_X16_Y4_N47
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

-- Location: LABCELL_X16_Y4_N27
\U0|SWONEN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|SWONEN~0_combout\ = ( \U0|ENABLE~q\ & ( (!\STARTN~input_o\ & !\U0|SWBEFOREN~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STARTN~input_o\,
	datac => \U0|ALT_INV_SWBEFOREN~q\,
	dataf => \U0|ALT_INV_ENABLE~q\,
	combout => \U0|SWONEN~0_combout\);

-- Location: FF_X16_Y4_N28
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

-- Location: LABCELL_X43_Y5_N39
\U1|SW_FF~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|SW_FF~0_combout\ = ( \U0|SWONEN~q\ & ( !\U1|SW_FF~q\ ) ) # ( !\U0|SWONEN~q\ & ( \U1|SW_FF~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_SW_FF~q\,
	dataf => \U0|ALT_INV_SWONEN~q\,
	combout => \U1|SW_FF~0_combout\);

-- Location: FF_X44_Y3_N17
\U1|SW_FF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \U1|SW_FF~0_combout\,
	clrn => \RESETN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|SW_FF~q\);

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

-- Location: MLABCELL_X42_Y37_N54
\S0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~1_combout\ = ( !\PSWITCH[15]~input_o\ & ( (!\PSWITCH[14]~input_o\ & !\PSWITCH[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[14]~input_o\,
	datab => \ALT_INV_PSWITCH[0]~input_o\,
	dataf => \ALT_INV_PSWITCH[15]~input_o\,
	combout => \S0|Equal0~1_combout\);

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

-- Location: MLABCELL_X42_Y33_N24
\S0|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal1~0_combout\ = ( !\PSWITCH[12]~input_o\ & ( !\PSWITCH[13]~input_o\ & ( (!\PSWITCH[11]~input_o\ & (!\PSWITCH[10]~input_o\ & !\PSWITCH[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[11]~input_o\,
	datab => \ALT_INV_PSWITCH[10]~input_o\,
	datac => \ALT_INV_PSWITCH[9]~input_o\,
	datae => \ALT_INV_PSWITCH[12]~input_o\,
	dataf => \ALT_INV_PSWITCH[13]~input_o\,
	combout => \S0|Equal1~0_combout\);

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

-- Location: MLABCELL_X42_Y33_N6
\S0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~2_combout\ = ( !\PSWITCH[8]~input_o\ & ( (!\PSWITCH[1]~input_o\ & !\PSWITCH[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[1]~input_o\,
	datab => \ALT_INV_PSWITCH[7]~input_o\,
	dataf => \ALT_INV_PSWITCH[8]~input_o\,
	combout => \S0|Equal0~2_combout\);

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

-- Location: LABCELL_X43_Y33_N12
\S0|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal8~0_combout\ = ( !\PSWITCH[2]~input_o\ & ( (!\PSWITCH[4]~input_o\ & (!\PSWITCH[5]~input_o\ & (!\PSWITCH[6]~input_o\ & !\PSWITCH[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[4]~input_o\,
	datab => \ALT_INV_PSWITCH[5]~input_o\,
	datac => \ALT_INV_PSWITCH[6]~input_o\,
	datad => \ALT_INV_PSWITCH[3]~input_o\,
	dataf => \ALT_INV_PSWITCH[2]~input_o\,
	combout => \S0|Equal8~0_combout\);

-- Location: LABCELL_X43_Y33_N6
\S0|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~4_combout\ = ( \S0|Equal0~2_combout\ & ( \S0|Equal8~0_combout\ & ( (\S0|Equal0~1_combout\ & (\S0|Equal1~0_combout\ & (!\PSWITCH[22]~input_o\ & !\PSWITCH[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~1_combout\,
	datab => \S0|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_PSWITCH[22]~input_o\,
	datad => \ALT_INV_PSWITCH[23]~input_o\,
	datae => \S0|ALT_INV_Equal0~2_combout\,
	dataf => \S0|ALT_INV_Equal8~0_combout\,
	combout => \S0|Equal0~4_combout\);

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

-- Location: MLABCELL_X42_Y37_N27
\S0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~3_combout\ = ( !\PSWITCH[18]~input_o\ & ( !\PSWITCH[17]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_PSWITCH[17]~input_o\,
	dataf => \ALT_INV_PSWITCH[18]~input_o\,
	combout => \S0|Equal0~3_combout\);

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

-- Location: MLABCELL_X42_Y37_N21
\S0|Equal20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal20~0_combout\ = ( \PSWITCH[19]~input_o\ & ( !\PSWITCH[20]~input_o\ & ( (\S0|Equal0~4_combout\ & (!\PSWITCH[21]~input_o\ & (!\PSWITCH[16]~input_o\ & \S0|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_PSWITCH[21]~input_o\,
	datac => \ALT_INV_PSWITCH[16]~input_o\,
	datad => \S0|ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_PSWITCH[19]~input_o\,
	dataf => \ALT_INV_PSWITCH[20]~input_o\,
	combout => \S0|Equal20~0_combout\);

-- Location: MLABCELL_X42_Y37_N0
\S0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~0_combout\ = ( !\PSWITCH[17]~input_o\ & ( !\PSWITCH[20]~input_o\ & ( (!\PSWITCH[19]~input_o\ & (!\PSWITCH[16]~input_o\ & (!\PSWITCH[18]~input_o\ & !\PSWITCH[21]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[19]~input_o\,
	datab => \ALT_INV_PSWITCH[16]~input_o\,
	datac => \ALT_INV_PSWITCH[18]~input_o\,
	datad => \ALT_INV_PSWITCH[21]~input_o\,
	datae => \ALT_INV_PSWITCH[17]~input_o\,
	dataf => \ALT_INV_PSWITCH[20]~input_o\,
	combout => \S0|Equal0~0_combout\);

-- Location: LABCELL_X43_Y33_N9
\S0|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal9~0_combout\ = ( \S0|Equal0~0_combout\ & ( \S0|Equal8~0_combout\ & ( (\S0|Equal0~1_combout\ & (\S0|Equal1~0_combout\ & (!\PSWITCH[23]~input_o\ & !\PSWITCH[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~1_combout\,
	datab => \S0|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_PSWITCH[23]~input_o\,
	datad => \ALT_INV_PSWITCH[22]~input_o\,
	datae => \S0|ALT_INV_Equal0~0_combout\,
	dataf => \S0|ALT_INV_Equal8~0_combout\,
	combout => \S0|Equal9~0_combout\);

-- Location: MLABCELL_X42_Y33_N12
\S0|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal8~1_combout\ = ( !\PSWITCH[8]~input_o\ & ( (\S0|Equal9~0_combout\ & (\PSWITCH[7]~input_o\ & !\PSWITCH[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal9~0_combout\,
	datab => \ALT_INV_PSWITCH[7]~input_o\,
	datac => \ALT_INV_PSWITCH[1]~input_o\,
	dataf => \ALT_INV_PSWITCH[8]~input_o\,
	combout => \S0|Equal8~1_combout\);

-- Location: LABCELL_X43_Y33_N36
\S0|Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal12~0_combout\ = ( \S0|Equal0~0_combout\ & ( !\PSWITCH[22]~input_o\ & ( (\S0|Equal0~1_combout\ & (!\PSWITCH[23]~input_o\ & (\S0|Equal0~2_combout\ & \S0|Equal8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_PSWITCH[23]~input_o\,
	datac => \S0|ALT_INV_Equal0~2_combout\,
	datad => \S0|ALT_INV_Equal8~0_combout\,
	datae => \S0|ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_PSWITCH[22]~input_o\,
	combout => \S0|Equal12~0_combout\);

-- Location: MLABCELL_X42_Y33_N36
\S0|Equal12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal12~1_combout\ = ( \PSWITCH[11]~input_o\ & ( !\PSWITCH[13]~input_o\ & ( (\S0|Equal12~0_combout\ & (!\PSWITCH[9]~input_o\ & (!\PSWITCH[12]~input_o\ & !\PSWITCH[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal12~0_combout\,
	datab => \ALT_INV_PSWITCH[9]~input_o\,
	datac => \ALT_INV_PSWITCH[12]~input_o\,
	datad => \ALT_INV_PSWITCH[10]~input_o\,
	datae => \ALT_INV_PSWITCH[11]~input_o\,
	dataf => \ALT_INV_PSWITCH[13]~input_o\,
	combout => \S0|Equal12~1_combout\);

-- Location: LABCELL_X43_Y33_N42
\S0|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal1~1_combout\ = ( \S0|Equal0~2_combout\ & ( \S0|Equal8~0_combout\ & ( (\S0|Equal0~0_combout\ & (\S0|Equal1~0_combout\ & (!\PSWITCH[22]~input_o\ & !\PSWITCH[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~0_combout\,
	datab => \S0|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_PSWITCH[22]~input_o\,
	datad => \ALT_INV_PSWITCH[23]~input_o\,
	datae => \S0|ALT_INV_Equal0~2_combout\,
	dataf => \S0|ALT_INV_Equal8~0_combout\,
	combout => \S0|Equal1~1_combout\);

-- Location: MLABCELL_X42_Y37_N57
\S0|Equal16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal16~0_combout\ = ( \PSWITCH[15]~input_o\ & ( (!\PSWITCH[14]~input_o\ & (!\PSWITCH[0]~input_o\ & \S0|Equal1~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[14]~input_o\,
	datab => \ALT_INV_PSWITCH[0]~input_o\,
	datac => \S0|ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_PSWITCH[15]~input_o\,
	combout => \S0|Equal16~0_combout\);

-- Location: LABCELL_X43_Y33_N30
\S0|Equal24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal24~0_combout\ = ( !\PSWITCH[22]~input_o\ & ( (\S0|Equal1~0_combout\ & (\S0|Equal8~0_combout\ & (\S0|Equal0~1_combout\ & \S0|Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal1~0_combout\,
	datab => \S0|ALT_INV_Equal8~0_combout\,
	datac => \S0|ALT_INV_Equal0~1_combout\,
	datad => \S0|ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_PSWITCH[22]~input_o\,
	combout => \S0|Equal24~0_combout\);

-- Location: LABCELL_X43_Y33_N45
\S0|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal5~0_combout\ = ( \S0|Equal0~2_combout\ & ( \S0|Equal0~1_combout\ & ( (\S0|Equal0~0_combout\ & (\S0|Equal1~0_combout\ & (!\PSWITCH[23]~input_o\ & !\PSWITCH[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~0_combout\,
	datab => \S0|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_PSWITCH[23]~input_o\,
	datad => \ALT_INV_PSWITCH[22]~input_o\,
	datae => \S0|ALT_INV_Equal0~2_combout\,
	dataf => \S0|ALT_INV_Equal0~1_combout\,
	combout => \S0|Equal5~0_combout\);

-- Location: LABCELL_X43_Y33_N15
\S0|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal4~0_combout\ = ( !\PSWITCH[2]~input_o\ & ( (!\PSWITCH[4]~input_o\ & (!\PSWITCH[5]~input_o\ & (\PSWITCH[3]~input_o\ & !\PSWITCH[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[4]~input_o\,
	datab => \ALT_INV_PSWITCH[5]~input_o\,
	datac => \ALT_INV_PSWITCH[3]~input_o\,
	datad => \ALT_INV_PSWITCH[6]~input_o\,
	dataf => \ALT_INV_PSWITCH[2]~input_o\,
	combout => \S0|Equal4~0_combout\);

-- Location: LABCELL_X43_Y33_N51
\C0|SCALE_SWOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0|SCALE_SWOUT[0]~0_combout\ = ( \S0|Equal4~0_combout\ & ( ((\S0|Equal0~0_combout\ & \S0|Equal24~0_combout\)) # (\S0|Equal5~0_combout\) ) ) # ( !\S0|Equal4~0_combout\ & ( (\S0|Equal0~0_combout\ & \S0|Equal24~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~0_combout\,
	datab => \S0|ALT_INV_Equal24~0_combout\,
	datac => \S0|ALT_INV_Equal5~0_combout\,
	dataf => \S0|ALT_INV_Equal4~0_combout\,
	combout => \C0|SCALE_SWOUT[0]~0_combout\);

-- Location: MLABCELL_X42_Y33_N42
\C0|SCALE_SWOUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0|SCALE_SWOUT[0]~1_combout\ = ( !\C0|SCALE_SWOUT[0]~0_combout\ & ( (!\S0|Equal20~0_combout\ & (!\S0|Equal8~1_combout\ & (!\S0|Equal12~1_combout\ & !\S0|Equal16~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal20~0_combout\,
	datab => \S0|ALT_INV_Equal8~1_combout\,
	datac => \S0|ALT_INV_Equal12~1_combout\,
	datad => \S0|ALT_INV_Equal16~0_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[0]~0_combout\,
	combout => \C0|SCALE_SWOUT[0]~1_combout\);

-- Location: LABCELL_X43_Y33_N48
\S0|Equal24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal24~1_combout\ = ( \PSWITCH[23]~input_o\ & ( (\S0|Equal0~0_combout\ & \S0|Equal24~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~0_combout\,
	datab => \S0|ALT_INV_Equal24~0_combout\,
	dataf => \ALT_INV_PSWITCH[23]~input_o\,
	combout => \S0|Equal24~1_combout\);

-- Location: LABCELL_X43_Y33_N27
\S0|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal5~1_combout\ = ( \PSWITCH[4]~input_o\ & ( !\PSWITCH[5]~input_o\ & ( (!\PSWITCH[6]~input_o\ & (\S0|Equal5~0_combout\ & (!\PSWITCH[3]~input_o\ & !\PSWITCH[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[6]~input_o\,
	datab => \S0|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_PSWITCH[3]~input_o\,
	datad => \ALT_INV_PSWITCH[2]~input_o\,
	datae => \ALT_INV_PSWITCH[4]~input_o\,
	dataf => \ALT_INV_PSWITCH[5]~input_o\,
	combout => \S0|Equal5~1_combout\);

-- Location: MLABCELL_X42_Y33_N45
\S0|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal11~0_combout\ = ( !\PSWITCH[13]~input_o\ & ( (!\PSWITCH[11]~input_o\ & !\PSWITCH[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PSWITCH[11]~input_o\,
	datad => \ALT_INV_PSWITCH[12]~input_o\,
	dataf => \ALT_INV_PSWITCH[13]~input_o\,
	combout => \S0|Equal11~0_combout\);

-- Location: MLABCELL_X42_Y33_N48
\S0|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal10~0_combout\ = ( !\PSWITCH[10]~input_o\ & ( (\S0|Equal12~0_combout\ & (\S0|Equal11~0_combout\ & \PSWITCH[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal12~0_combout\,
	datab => \S0|ALT_INV_Equal11~0_combout\,
	datac => \ALT_INV_PSWITCH[9]~input_o\,
	dataf => \ALT_INV_PSWITCH[10]~input_o\,
	combout => \S0|Equal10~0_combout\);

-- Location: MLABCELL_X42_Y33_N39
\S0|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal14~0_combout\ = ( \PSWITCH[13]~input_o\ & ( !\PSWITCH[11]~input_o\ & ( (\S0|Equal12~0_combout\ & (!\PSWITCH[9]~input_o\ & (!\PSWITCH[10]~input_o\ & !\PSWITCH[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal12~0_combout\,
	datab => \ALT_INV_PSWITCH[9]~input_o\,
	datac => \ALT_INV_PSWITCH[10]~input_o\,
	datad => \ALT_INV_PSWITCH[12]~input_o\,
	datae => \ALT_INV_PSWITCH[13]~input_o\,
	dataf => \ALT_INV_PSWITCH[11]~input_o\,
	combout => \S0|Equal14~0_combout\);

-- Location: MLABCELL_X42_Y37_N36
\S0|Equal19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal19~0_combout\ = ( !\PSWITCH[19]~input_o\ & ( (!\PSWITCH[21]~input_o\ & (!\PSWITCH[20]~input_o\ & !\PSWITCH[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PSWITCH[21]~input_o\,
	datac => \ALT_INV_PSWITCH[20]~input_o\,
	datad => \ALT_INV_PSWITCH[16]~input_o\,
	dataf => \ALT_INV_PSWITCH[19]~input_o\,
	combout => \S0|Equal19~0_combout\);

-- Location: MLABCELL_X42_Y37_N39
\S0|Equal18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal18~0_combout\ = ( !\PSWITCH[18]~input_o\ & ( (\S0|Equal19~0_combout\ & (\PSWITCH[17]~input_o\ & \S0|Equal0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal19~0_combout\,
	datac => \ALT_INV_PSWITCH[17]~input_o\,
	datad => \S0|ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_PSWITCH[18]~input_o\,
	combout => \S0|Equal18~0_combout\);

-- Location: MLABCELL_X42_Y33_N9
\S0|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal2~0_combout\ = ( !\PSWITCH[8]~input_o\ & ( (\PSWITCH[1]~input_o\ & (!\PSWITCH[7]~input_o\ & \S0|Equal9~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[1]~input_o\,
	datab => \ALT_INV_PSWITCH[7]~input_o\,
	datad => \S0|ALT_INV_Equal9~0_combout\,
	dataf => \ALT_INV_PSWITCH[8]~input_o\,
	combout => \S0|Equal2~0_combout\);

-- Location: MLABCELL_X42_Y37_N30
\S0|Equal22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal22~0_combout\ = ( !\PSWITCH[16]~input_o\ & ( \PSWITCH[21]~input_o\ & ( (\S0|Equal0~3_combout\ & (!\PSWITCH[20]~input_o\ & (\S0|Equal0~4_combout\ & !\PSWITCH[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_PSWITCH[20]~input_o\,
	datac => \S0|ALT_INV_Equal0~4_combout\,
	datad => \ALT_INV_PSWITCH[19]~input_o\,
	datae => \ALT_INV_PSWITCH[16]~input_o\,
	dataf => \ALT_INV_PSWITCH[21]~input_o\,
	combout => \S0|Equal22~0_combout\);

-- Location: LABCELL_X43_Y33_N24
\S0|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal6~0_combout\ = ( \PSWITCH[5]~input_o\ & ( !\PSWITCH[4]~input_o\ & ( (!\PSWITCH[6]~input_o\ & (\S0|Equal5~0_combout\ & (!\PSWITCH[2]~input_o\ & !\PSWITCH[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[6]~input_o\,
	datab => \S0|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_PSWITCH[2]~input_o\,
	datad => \ALT_INV_PSWITCH[3]~input_o\,
	datae => \ALT_INV_PSWITCH[5]~input_o\,
	dataf => \ALT_INV_PSWITCH[4]~input_o\,
	combout => \S0|Equal6~0_combout\);

-- Location: MLABCELL_X42_Y33_N18
\S0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr3~0_combout\ = ( !\S0|Equal22~0_combout\ & ( !\S0|Equal6~0_combout\ & ( (!\S0|Equal10~0_combout\ & (!\S0|Equal14~0_combout\ & (!\S0|Equal18~0_combout\ & !\S0|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal10~0_combout\,
	datab => \S0|ALT_INV_Equal14~0_combout\,
	datac => \S0|ALT_INV_Equal18~0_combout\,
	datad => \S0|ALT_INV_Equal2~0_combout\,
	datae => \S0|ALT_INV_Equal22~0_combout\,
	dataf => \S0|ALT_INV_Equal6~0_combout\,
	combout => \S0|WideOr3~0_combout\);

-- Location: MLABCELL_X42_Y33_N33
\S0|Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal13~0_combout\ = ( !\PSWITCH[11]~input_o\ & ( !\PSWITCH[9]~input_o\ & ( (\PSWITCH[12]~input_o\ & (!\PSWITCH[13]~input_o\ & (!\PSWITCH[10]~input_o\ & \S0|Equal12~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[12]~input_o\,
	datab => \ALT_INV_PSWITCH[13]~input_o\,
	datac => \ALT_INV_PSWITCH[10]~input_o\,
	datad => \S0|ALT_INV_Equal12~0_combout\,
	datae => \ALT_INV_PSWITCH[11]~input_o\,
	dataf => \ALT_INV_PSWITCH[9]~input_o\,
	combout => \S0|Equal13~0_combout\);

-- Location: MLABCELL_X42_Y33_N15
\S0|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal9~1_combout\ = ( !\PSWITCH[1]~input_o\ & ( (\S0|Equal9~0_combout\ & (!\PSWITCH[7]~input_o\ & \PSWITCH[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal9~0_combout\,
	datab => \ALT_INV_PSWITCH[7]~input_o\,
	datac => \ALT_INV_PSWITCH[8]~input_o\,
	dataf => \ALT_INV_PSWITCH[1]~input_o\,
	combout => \S0|Equal9~1_combout\);

-- Location: MLABCELL_X42_Y37_N33
\S0|Equal17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal17~0_combout\ = ( !\PSWITCH[21]~input_o\ & ( \PSWITCH[16]~input_o\ & ( (\S0|Equal0~3_combout\ & (!\PSWITCH[20]~input_o\ & (!\PSWITCH[19]~input_o\ & \S0|Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_PSWITCH[20]~input_o\,
	datac => \ALT_INV_PSWITCH[19]~input_o\,
	datad => \S0|ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_PSWITCH[21]~input_o\,
	dataf => \ALT_INV_PSWITCH[16]~input_o\,
	combout => \S0|Equal17~0_combout\);

-- Location: MLABCELL_X42_Y37_N45
\S0|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal1~2_combout\ = ( !\PSWITCH[15]~input_o\ & ( (!\PSWITCH[14]~input_o\ & (\PSWITCH[0]~input_o\ & \S0|Equal1~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[14]~input_o\,
	datab => \ALT_INV_PSWITCH[0]~input_o\,
	datac => \S0|ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_PSWITCH[15]~input_o\,
	combout => \S0|Equal1~2_combout\);

-- Location: MLABCELL_X42_Y37_N18
\S0|Equal21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal21~0_combout\ = ( \PSWITCH[20]~input_o\ & ( !\PSWITCH[19]~input_o\ & ( (\S0|Equal0~4_combout\ & (!\PSWITCH[21]~input_o\ & (\S0|Equal0~3_combout\ & !\PSWITCH[16]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_PSWITCH[21]~input_o\,
	datac => \S0|ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_PSWITCH[16]~input_o\,
	datae => \ALT_INV_PSWITCH[20]~input_o\,
	dataf => \ALT_INV_PSWITCH[19]~input_o\,
	combout => \S0|Equal21~0_combout\);

-- Location: MLABCELL_X42_Y37_N24
\S0|WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~1_combout\ = ( !\S0|Equal21~0_combout\ & ( (!\S0|Equal13~0_combout\ & (!\S0|Equal9~1_combout\ & (!\S0|Equal17~0_combout\ & !\S0|Equal1~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal13~0_combout\,
	datab => \S0|ALT_INV_Equal9~1_combout\,
	datac => \S0|ALT_INV_Equal17~0_combout\,
	datad => \S0|ALT_INV_Equal1~2_combout\,
	dataf => \S0|ALT_INV_Equal21~0_combout\,
	combout => \S0|WideNor0~1_combout\);

-- Location: MLABCELL_X42_Y37_N15
\S0|Equal19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal19~1_combout\ = ( \PSWITCH[18]~input_o\ & ( (\S0|Equal19~0_combout\ & (!\PSWITCH[17]~input_o\ & \S0|Equal0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal19~0_combout\,
	datac => \ALT_INV_PSWITCH[17]~input_o\,
	datad => \S0|ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_PSWITCH[18]~input_o\,
	combout => \S0|Equal19~1_combout\);

-- Location: MLABCELL_X42_Y33_N51
\S0|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal11~1_combout\ = ( !\PSWITCH[9]~input_o\ & ( (\S0|Equal12~0_combout\ & (\S0|Equal11~0_combout\ & \PSWITCH[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal12~0_combout\,
	datab => \S0|ALT_INV_Equal11~0_combout\,
	datac => \ALT_INV_PSWITCH[10]~input_o\,
	dataf => \ALT_INV_PSWITCH[9]~input_o\,
	combout => \S0|Equal11~1_combout\);

-- Location: MLABCELL_X42_Y37_N42
\S0|Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal15~0_combout\ = ( !\PSWITCH[15]~input_o\ & ( (\PSWITCH[14]~input_o\ & (!\PSWITCH[0]~input_o\ & \S0|Equal1~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[14]~input_o\,
	datab => \ALT_INV_PSWITCH[0]~input_o\,
	datad => \S0|ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_PSWITCH[15]~input_o\,
	combout => \S0|Equal15~0_combout\);

-- Location: LABCELL_X43_Y33_N33
\S0|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal0~5_combout\ = ( \S0|Equal0~1_combout\ & ( (\S0|Equal1~0_combout\ & (\S0|Equal8~0_combout\ & \S0|Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal1~0_combout\,
	datab => \S0|ALT_INV_Equal8~0_combout\,
	datad => \S0|ALT_INV_Equal0~2_combout\,
	dataf => \S0|ALT_INV_Equal0~1_combout\,
	combout => \S0|Equal0~5_combout\);

-- Location: MLABCELL_X42_Y37_N12
\S0|Equal23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal23~0_combout\ = ( \S0|Equal0~5_combout\ & ( (\PSWITCH[22]~input_o\ & (\S0|Equal0~0_combout\ & !\PSWITCH[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PSWITCH[22]~input_o\,
	datac => \S0|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_PSWITCH[23]~input_o\,
	dataf => \S0|ALT_INV_Equal0~5_combout\,
	combout => \S0|Equal23~0_combout\);

-- Location: LABCELL_X43_Y33_N21
\S0|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal3~0_combout\ = ( !\PSWITCH[6]~input_o\ & ( \PSWITCH[2]~input_o\ & ( (!\PSWITCH[5]~input_o\ & (!\PSWITCH[3]~input_o\ & (\S0|Equal5~0_combout\ & !\PSWITCH[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[5]~input_o\,
	datab => \ALT_INV_PSWITCH[3]~input_o\,
	datac => \S0|ALT_INV_Equal5~0_combout\,
	datad => \ALT_INV_PSWITCH[4]~input_o\,
	datae => \ALT_INV_PSWITCH[6]~input_o\,
	dataf => \ALT_INV_PSWITCH[2]~input_o\,
	combout => \S0|Equal3~0_combout\);

-- Location: LABCELL_X43_Y33_N18
\S0|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|Equal7~0_combout\ = ( !\PSWITCH[2]~input_o\ & ( \PSWITCH[6]~input_o\ & ( (!\PSWITCH[5]~input_o\ & (!\PSWITCH[3]~input_o\ & (!\PSWITCH[4]~input_o\ & \S0|Equal5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[5]~input_o\,
	datab => \ALT_INV_PSWITCH[3]~input_o\,
	datac => \ALT_INV_PSWITCH[4]~input_o\,
	datad => \S0|ALT_INV_Equal5~0_combout\,
	datae => \ALT_INV_PSWITCH[2]~input_o\,
	dataf => \ALT_INV_PSWITCH[6]~input_o\,
	combout => \S0|Equal7~0_combout\);

-- Location: LABCELL_X43_Y33_N0
\S0|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~0_combout\ = ( !\S0|Equal3~0_combout\ & ( !\S0|Equal7~0_combout\ & ( (!\S0|Equal19~1_combout\ & (!\S0|Equal11~1_combout\ & (!\S0|Equal15~0_combout\ & !\S0|Equal23~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal19~1_combout\,
	datab => \S0|ALT_INV_Equal11~1_combout\,
	datac => \S0|ALT_INV_Equal15~0_combout\,
	datad => \S0|ALT_INV_Equal23~0_combout\,
	datae => \S0|ALT_INV_Equal3~0_combout\,
	dataf => \S0|ALT_INV_Equal7~0_combout\,
	combout => \S0|WideNor0~0_combout\);

-- Location: LABCELL_X43_Y29_N24
\S0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr0~0_combout\ = ( \S0|WideNor0~1_combout\ & ( \S0|WideNor0~0_combout\ & ( (!\S0|Equal24~1_combout\ & ((!\C0|SCALE_SWOUT[0]~1_combout\) # ((!\S0|WideOr3~0_combout\) # (\S0|Equal5~1_combout\)))) ) ) ) # ( !\S0|WideNor0~1_combout\ & ( 
-- \S0|WideNor0~0_combout\ & ( !\S0|Equal24~1_combout\ ) ) ) # ( \S0|WideNor0~1_combout\ & ( !\S0|WideNor0~0_combout\ & ( !\S0|Equal24~1_combout\ ) ) ) # ( !\S0|WideNor0~1_combout\ & ( !\S0|WideNor0~0_combout\ & ( !\S0|Equal24~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[0]~1_combout\,
	datab => \S0|ALT_INV_Equal24~1_combout\,
	datac => \S0|ALT_INV_Equal5~1_combout\,
	datad => \S0|ALT_INV_WideOr3~0_combout\,
	datae => \S0|ALT_INV_WideNor0~1_combout\,
	dataf => \S0|ALT_INV_WideNor0~0_combout\,
	combout => \S0|WideOr0~0_combout\);

-- Location: MLABCELL_X42_Y37_N48
\S0|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr0~1_combout\ = ( !\PSWITCH[19]~input_o\ & ( \PSWITCH[20]~input_o\ & ( (\S0|Equal0~4_combout\ & (!\PSWITCH[16]~input_o\ & (\S0|Equal0~3_combout\ & !\PSWITCH[21]~input_o\))) ) ) ) # ( \PSWITCH[19]~input_o\ & ( !\PSWITCH[20]~input_o\ & ( 
-- (\S0|Equal0~4_combout\ & (!\PSWITCH[16]~input_o\ & (\S0|Equal0~3_combout\ & !\PSWITCH[21]~input_o\))) ) ) ) # ( !\PSWITCH[19]~input_o\ & ( !\PSWITCH[20]~input_o\ & ( (\S0|Equal0~4_combout\ & (!\PSWITCH[16]~input_o\ & (\S0|Equal0~3_combout\ & 
-- \PSWITCH[21]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000001000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_PSWITCH[16]~input_o\,
	datac => \S0|ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_PSWITCH[21]~input_o\,
	datae => \ALT_INV_PSWITCH[19]~input_o\,
	dataf => \ALT_INV_PSWITCH[20]~input_o\,
	combout => \S0|WideOr0~1_combout\);

-- Location: MLABCELL_X42_Y37_N6
\S0|WideOr0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr0~2_combout\ = ( !\S0|Equal16~0_combout\ & ( !\S0|Equal18~0_combout\ & ( (!\S0|WideOr0~1_combout\ & (!\S0|Equal23~0_combout\ & (!\S0|Equal17~0_combout\ & !\S0|Equal19~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~1_combout\,
	datab => \S0|ALT_INV_Equal23~0_combout\,
	datac => \S0|ALT_INV_Equal17~0_combout\,
	datad => \S0|ALT_INV_Equal19~1_combout\,
	datae => \S0|ALT_INV_Equal16~0_combout\,
	dataf => \S0|ALT_INV_Equal18~0_combout\,
	combout => \S0|WideOr0~2_combout\);

-- Location: LABCELL_X43_Y2_N30
\U3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~21_sumout\ = SUM(( \U3|i\(0) ) + ( VCC ) + ( !VCC ))
-- \U3|Add0~22\ = CARRY(( \U3|i\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_i\(0),
	cin => GND,
	sumout => \U3|Add0~21_sumout\,
	cout => \U3|Add0~22\);

-- Location: LABCELL_X36_Y2_N30
\U2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~5_sumout\ = SUM(( \U2|COUNT\(0) ) + ( VCC ) + ( !VCC ))
-- \U2|Add0~6\ = CARRY(( \U2|COUNT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(0),
	cin => GND,
	sumout => \U2|Add0~5_sumout\,
	cout => \U2|Add0~6\);

-- Location: FF_X36_Y2_N31
\U2|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~5_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(0));

-- Location: LABCELL_X36_Y2_N33
\U2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~53_sumout\ = SUM(( \U2|COUNT\(1) ) + ( VCC ) + ( \U2|Add0~6\ ))
-- \U2|Add0~54\ = CARRY(( \U2|COUNT\(1) ) + ( VCC ) + ( \U2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(1),
	cin => \U2|Add0~6\,
	sumout => \U2|Add0~53_sumout\,
	cout => \U2|Add0~54\);

-- Location: FF_X36_Y2_N35
\U2|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~53_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(1));

-- Location: LABCELL_X36_Y2_N36
\U2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~13_sumout\ = SUM(( \U2|COUNT\(2) ) + ( VCC ) + ( \U2|Add0~54\ ))
-- \U2|Add0~14\ = CARRY(( \U2|COUNT\(2) ) + ( VCC ) + ( \U2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(2),
	cin => \U2|Add0~54\,
	sumout => \U2|Add0~13_sumout\,
	cout => \U2|Add0~14\);

-- Location: FF_X36_Y2_N38
\U2|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~13_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(2));

-- Location: LABCELL_X36_Y2_N39
\U2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~17_sumout\ = SUM(( \U2|COUNT\(3) ) + ( VCC ) + ( \U2|Add0~14\ ))
-- \U2|Add0~18\ = CARRY(( \U2|COUNT\(3) ) + ( VCC ) + ( \U2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(3),
	cin => \U2|Add0~14\,
	sumout => \U2|Add0~17_sumout\,
	cout => \U2|Add0~18\);

-- Location: FF_X36_Y2_N41
\U2|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~17_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(3));

-- Location: LABCELL_X36_Y2_N42
\U2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~21_sumout\ = SUM(( \U2|COUNT\(4) ) + ( VCC ) + ( \U2|Add0~18\ ))
-- \U2|Add0~22\ = CARRY(( \U2|COUNT\(4) ) + ( VCC ) + ( \U2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(4),
	cin => \U2|Add0~18\,
	sumout => \U2|Add0~21_sumout\,
	cout => \U2|Add0~22\);

-- Location: FF_X36_Y2_N43
\U2|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~21_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(4));

-- Location: LABCELL_X36_Y2_N45
\U2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~65_sumout\ = SUM(( !\U2|COUNT[5]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~22\ ))
-- \U2|Add0~66\ = CARRY(( !\U2|COUNT[5]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT[5]~DUPLICATE_q\,
	cin => \U2|Add0~22\,
	sumout => \U2|Add0~65_sumout\,
	cout => \U2|Add0~66\);

-- Location: LABCELL_X36_Y2_N21
\U2|COUNT[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[5]~2_combout\ = !\U2|Add0~65_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_Add0~65_sumout\,
	combout => \U2|COUNT[5]~2_combout\);

-- Location: FF_X36_Y2_N23
\U2|COUNT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[5]~2_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[5]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N48
\U2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~25_sumout\ = SUM(( \U2|COUNT\(6) ) + ( VCC ) + ( \U2|Add0~66\ ))
-- \U2|Add0~26\ = CARRY(( \U2|COUNT\(6) ) + ( VCC ) + ( \U2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(6),
	cin => \U2|Add0~66\,
	sumout => \U2|Add0~25_sumout\,
	cout => \U2|Add0~26\);

-- Location: FF_X36_Y2_N50
\U2|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~25_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(6));

-- Location: LABCELL_X36_Y2_N51
\U2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~29_sumout\ = SUM(( \U2|COUNT\(7) ) + ( VCC ) + ( \U2|Add0~26\ ))
-- \U2|Add0~30\ = CARRY(( \U2|COUNT\(7) ) + ( VCC ) + ( \U2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(7),
	cin => \U2|Add0~26\,
	sumout => \U2|Add0~29_sumout\,
	cout => \U2|Add0~30\);

-- Location: FF_X36_Y2_N52
\U2|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~29_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(7));

-- Location: LABCELL_X36_Y2_N54
\U2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~49_sumout\ = SUM(( \U2|COUNT\(8) ) + ( VCC ) + ( \U2|Add0~30\ ))
-- \U2|Add0~50\ = CARRY(( \U2|COUNT\(8) ) + ( VCC ) + ( \U2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(8),
	cin => \U2|Add0~30\,
	sumout => \U2|Add0~49_sumout\,
	cout => \U2|Add0~50\);

-- Location: FF_X36_Y2_N56
\U2|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~49_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(8));

-- Location: LABCELL_X36_Y2_N57
\U2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~1_sumout\ = SUM(( \U2|COUNT\(9) ) + ( VCC ) + ( \U2|Add0~50\ ))
-- \U2|Add0~2\ = CARRY(( \U2|COUNT\(9) ) + ( VCC ) + ( \U2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(9),
	cin => \U2|Add0~50\,
	sumout => \U2|Add0~1_sumout\,
	cout => \U2|Add0~2\);

-- Location: FF_X36_Y2_N59
\U2|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~1_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(9));

-- Location: LABCELL_X36_Y1_N0
\U2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~61_sumout\ = SUM(( !\U2|COUNT\(10) ) + ( VCC ) + ( \U2|Add0~2\ ))
-- \U2|Add0~62\ = CARRY(( !\U2|COUNT\(10) ) + ( VCC ) + ( \U2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(10),
	cin => \U2|Add0~2\,
	sumout => \U2|Add0~61_sumout\,
	cout => \U2|Add0~62\);

-- Location: MLABCELL_X37_Y1_N0
\U2|COUNT[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[10]~1_combout\ = ( !\U2|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~61_sumout\,
	combout => \U2|COUNT[10]~1_combout\);

-- Location: FF_X37_Y1_N2
\U2|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[10]~1_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(10));

-- Location: LABCELL_X36_Y1_N3
\U2|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~101_sumout\ = SUM(( !\U2|COUNT\(11) ) + ( VCC ) + ( \U2|Add0~62\ ))
-- \U2|Add0~102\ = CARRY(( !\U2|COUNT\(11) ) + ( VCC ) + ( \U2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(11),
	cin => \U2|Add0~62\,
	sumout => \U2|Add0~101_sumout\,
	cout => \U2|Add0~102\);

-- Location: MLABCELL_X37_Y1_N48
\U2|COUNT[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[11]~11_combout\ = ( !\U2|Add0~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~101_sumout\,
	combout => \U2|COUNT[11]~11_combout\);

-- Location: FF_X37_Y1_N50
\U2|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[11]~11_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(11));

-- Location: LABCELL_X36_Y1_N6
\U2|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~97_sumout\ = SUM(( !\U2|COUNT\(12) ) + ( VCC ) + ( \U2|Add0~102\ ))
-- \U2|Add0~98\ = CARRY(( !\U2|COUNT\(12) ) + ( VCC ) + ( \U2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(12),
	cin => \U2|Add0~102\,
	sumout => \U2|Add0~97_sumout\,
	cout => \U2|Add0~98\);

-- Location: LABCELL_X36_Y1_N57
\U2|COUNT[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[12]~10_combout\ = ( !\U2|Add0~97_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~97_sumout\,
	combout => \U2|COUNT[12]~10_combout\);

-- Location: FF_X36_Y1_N59
\U2|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[12]~10_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(12));

-- Location: LABCELL_X36_Y1_N9
\U2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~93_sumout\ = SUM(( !\U2|COUNT\(13) ) + ( VCC ) + ( \U2|Add0~98\ ))
-- \U2|Add0~94\ = CARRY(( !\U2|COUNT\(13) ) + ( VCC ) + ( \U2|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(13),
	cin => \U2|Add0~98\,
	sumout => \U2|Add0~93_sumout\,
	cout => \U2|Add0~94\);

-- Location: MLABCELL_X37_Y1_N45
\U2|COUNT[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[13]~9_combout\ = ( !\U2|Add0~93_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~93_sumout\,
	combout => \U2|COUNT[13]~9_combout\);

-- Location: FF_X37_Y1_N47
\U2|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[13]~9_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(13));

-- Location: LABCELL_X36_Y1_N12
\U2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~33_sumout\ = SUM(( \U2|COUNT\(14) ) + ( VCC ) + ( \U2|Add0~94\ ))
-- \U2|Add0~34\ = CARRY(( \U2|COUNT\(14) ) + ( VCC ) + ( \U2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_COUNT\(14),
	cin => \U2|Add0~94\,
	sumout => \U2|Add0~33_sumout\,
	cout => \U2|Add0~34\);

-- Location: FF_X36_Y1_N14
\U2|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~33_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(14));

-- Location: LABCELL_X36_Y1_N15
\U2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~89_sumout\ = SUM(( !\U2|COUNT\(15) ) + ( VCC ) + ( \U2|Add0~34\ ))
-- \U2|Add0~90\ = CARRY(( !\U2|COUNT\(15) ) + ( VCC ) + ( \U2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(15),
	cin => \U2|Add0~34\,
	sumout => \U2|Add0~89_sumout\,
	cout => \U2|Add0~90\);

-- Location: MLABCELL_X37_Y1_N51
\U2|COUNT[15]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[15]~8_combout\ = ( !\U2|Add0~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~89_sumout\,
	combout => \U2|COUNT[15]~8_combout\);

-- Location: FF_X37_Y1_N53
\U2|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[15]~8_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(15));

-- Location: LABCELL_X36_Y1_N18
\U2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~41_sumout\ = SUM(( \U2|COUNT\(16) ) + ( VCC ) + ( \U2|Add0~90\ ))
-- \U2|Add0~42\ = CARRY(( \U2|COUNT\(16) ) + ( VCC ) + ( \U2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(16),
	cin => \U2|Add0~90\,
	sumout => \U2|Add0~41_sumout\,
	cout => \U2|Add0~42\);

-- Location: FF_X36_Y1_N20
\U2|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~41_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(16));

-- Location: LABCELL_X36_Y1_N21
\U2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~57_sumout\ = SUM(( !\U2|COUNT\(17) ) + ( VCC ) + ( \U2|Add0~42\ ))
-- \U2|Add0~58\ = CARRY(( !\U2|COUNT\(17) ) + ( VCC ) + ( \U2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(17),
	cin => \U2|Add0~42\,
	sumout => \U2|Add0~57_sumout\,
	cout => \U2|Add0~58\);

-- Location: LABCELL_X36_Y1_N51
\U2|COUNT[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[17]~0_combout\ = !\U2|Add0~57_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_Add0~57_sumout\,
	combout => \U2|COUNT[17]~0_combout\);

-- Location: FF_X36_Y1_N53
\U2|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[17]~0_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(17));

-- Location: LABCELL_X36_Y1_N24
\U2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~85_sumout\ = SUM(( !\U2|COUNT\(18) ) + ( VCC ) + ( \U2|Add0~58\ ))
-- \U2|Add0~86\ = CARRY(( !\U2|COUNT\(18) ) + ( VCC ) + ( \U2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(18),
	cin => \U2|Add0~58\,
	sumout => \U2|Add0~85_sumout\,
	cout => \U2|Add0~86\);

-- Location: MLABCELL_X37_Y1_N57
\U2|COUNT[18]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[18]~7_combout\ = ( !\U2|Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~85_sumout\,
	combout => \U2|COUNT[18]~7_combout\);

-- Location: FF_X37_Y1_N58
\U2|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[18]~7_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(18));

-- Location: LABCELL_X36_Y1_N27
\U2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~81_sumout\ = SUM(( !\U2|COUNT\(19) ) + ( VCC ) + ( \U2|Add0~86\ ))
-- \U2|Add0~82\ = CARRY(( !\U2|COUNT\(19) ) + ( VCC ) + ( \U2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(19),
	cin => \U2|Add0~86\,
	sumout => \U2|Add0~81_sumout\,
	cout => \U2|Add0~82\);

-- Location: MLABCELL_X37_Y1_N54
\U2|COUNT[19]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[19]~6_combout\ = ( !\U2|Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~81_sumout\,
	combout => \U2|COUNT[19]~6_combout\);

-- Location: FF_X37_Y1_N56
\U2|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[19]~6_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(19));

-- Location: LABCELL_X36_Y1_N30
\U2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~77_sumout\ = SUM(( !\U2|COUNT\(20) ) + ( VCC ) + ( \U2|Add0~82\ ))
-- \U2|Add0~78\ = CARRY(( !\U2|COUNT\(20) ) + ( VCC ) + ( \U2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(20),
	cin => \U2|Add0~82\,
	sumout => \U2|Add0~77_sumout\,
	cout => \U2|Add0~78\);

-- Location: MLABCELL_X37_Y1_N33
\U2|COUNT[20]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[20]~5_combout\ = ( !\U2|Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~77_sumout\,
	combout => \U2|COUNT[20]~5_combout\);

-- Location: FF_X37_Y1_N35
\U2|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[20]~5_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(20));

-- Location: LABCELL_X36_Y1_N33
\U2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~73_sumout\ = SUM(( !\U2|COUNT\(21) ) + ( VCC ) + ( \U2|Add0~78\ ))
-- \U2|Add0~74\ = CARRY(( !\U2|COUNT\(21) ) + ( VCC ) + ( \U2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(21),
	cin => \U2|Add0~78\,
	sumout => \U2|Add0~73_sumout\,
	cout => \U2|Add0~74\);

-- Location: MLABCELL_X37_Y1_N15
\U2|COUNT[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[21]~4_combout\ = !\U2|Add0~73_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_Add0~73_sumout\,
	combout => \U2|COUNT[21]~4_combout\);

-- Location: FF_X37_Y1_N17
\U2|COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[21]~4_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(21));

-- Location: LABCELL_X36_Y1_N36
\U2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~45_sumout\ = SUM(( \U2|COUNT\(22) ) + ( VCC ) + ( \U2|Add0~74\ ))
-- \U2|Add0~46\ = CARRY(( \U2|COUNT\(22) ) + ( VCC ) + ( \U2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(22),
	cin => \U2|Add0~74\,
	sumout => \U2|Add0~45_sumout\,
	cout => \U2|Add0~46\);

-- Location: FF_X36_Y1_N37
\U2|COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~45_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(22));

-- Location: LABCELL_X36_Y1_N39
\U2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~69_sumout\ = SUM(( !\U2|COUNT\(23) ) + ( VCC ) + ( \U2|Add0~46\ ))
-- \U2|Add0~70\ = CARRY(( !\U2|COUNT\(23) ) + ( VCC ) + ( \U2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(23),
	cin => \U2|Add0~46\,
	sumout => \U2|Add0~69_sumout\,
	cout => \U2|Add0~70\);

-- Location: MLABCELL_X37_Y1_N30
\U2|COUNT[23]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[23]~3_combout\ = ( !\U2|Add0~69_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~69_sumout\,
	combout => \U2|COUNT[23]~3_combout\);

-- Location: FF_X37_Y1_N31
\U2|COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[23]~3_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(23));

-- Location: LABCELL_X36_Y1_N42
\U2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~37_sumout\ = SUM(( \U2|COUNT\(24) ) + ( VCC ) + ( \U2|Add0~70\ ))
-- \U2|Add0~38\ = CARRY(( \U2|COUNT\(24) ) + ( VCC ) + ( \U2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_COUNT\(24),
	cin => \U2|Add0~70\,
	sumout => \U2|Add0~37_sumout\,
	cout => \U2|Add0~38\);

-- Location: FF_X36_Y1_N44
\U2|COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~37_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(24));

-- Location: LABCELL_X36_Y2_N12
\U2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~1_combout\ = ( !\U2|COUNT\(8) & ( !\U2|COUNT\(14) & ( (!\U2|COUNT\(1) & (!\U2|COUNT\(22) & (!\U2|COUNT\(16) & !\U2|COUNT\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(1),
	datab => \U2|ALT_INV_COUNT\(22),
	datac => \U2|ALT_INV_COUNT\(16),
	datad => \U2|ALT_INV_COUNT\(24),
	datae => \U2|ALT_INV_COUNT\(8),
	dataf => \U2|ALT_INV_COUNT\(14),
	combout => \U2|Equal0~1_combout\);

-- Location: LABCELL_X36_Y1_N45
\U2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~9_sumout\ = SUM(( \U2|COUNT\(25) ) + ( VCC ) + ( \U2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(25),
	cin => \U2|Add0~38\,
	sumout => \U2|Add0~9_sumout\);

-- Location: FF_X36_Y1_N47
\U2|COUNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~9_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~5_combout\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(25));

-- Location: LABCELL_X36_Y2_N18
\U2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = ( !\U2|COUNT\(3) & ( (!\U2|COUNT\(6) & (!\U2|COUNT\(7) & (!\U2|COUNT\(2) & !\U2|COUNT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(6),
	datab => \U2|ALT_INV_COUNT\(7),
	datac => \U2|ALT_INV_COUNT\(2),
	datad => \U2|ALT_INV_COUNT\(4),
	dataf => \U2|ALT_INV_COUNT\(3),
	combout => \U2|Equal0~0_combout\);

-- Location: MLABCELL_X37_Y1_N12
\U2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~2_combout\ = ( \U2|COUNT\(18) & ( (\U2|COUNT\(20) & (\U2|COUNT\(21) & (\U2|COUNT\(23) & \U2|COUNT\(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(20),
	datab => \U2|ALT_INV_COUNT\(21),
	datac => \U2|ALT_INV_COUNT\(23),
	datad => \U2|ALT_INV_COUNT\(19),
	dataf => \U2|ALT_INV_COUNT\(18),
	combout => \U2|Equal0~2_combout\);

-- Location: FF_X36_Y2_N22
\U2|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[5]~2_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(5));

-- Location: LABCELL_X36_Y1_N48
\U2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~3_combout\ = ( \U2|COUNT\(15) & ( (\U2|COUNT\(11) & (\U2|COUNT\(13) & \U2|COUNT\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_COUNT\(11),
	datac => \U2|ALT_INV_COUNT\(13),
	datad => \U2|ALT_INV_COUNT\(12),
	dataf => \U2|ALT_INV_COUNT\(15),
	combout => \U2|Equal0~3_combout\);

-- Location: LABCELL_X36_Y1_N54
\U2|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~4_combout\ = ( \U2|Equal0~3_combout\ & ( (\U2|COUNT\(10) & (\U2|Equal0~2_combout\ & (\U2|COUNT\(17) & \U2|COUNT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(10),
	datab => \U2|ALT_INV_Equal0~2_combout\,
	datac => \U2|ALT_INV_COUNT\(17),
	datad => \U2|ALT_INV_COUNT\(5),
	dataf => \U2|ALT_INV_Equal0~3_combout\,
	combout => \U2|Equal0~4_combout\);

-- Location: LABCELL_X36_Y2_N9
\U2|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~5_combout\ = ( !\U2|COUNT\(9) & ( \U2|Equal0~4_combout\ & ( (!\U2|COUNT\(0) & (\U2|Equal0~1_combout\ & (!\U2|COUNT\(25) & \U2|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(0),
	datab => \U2|ALT_INV_Equal0~1_combout\,
	datac => \U2|ALT_INV_COUNT\(25),
	datad => \U2|ALT_INV_Equal0~0_combout\,
	datae => \U2|ALT_INV_COUNT\(9),
	dataf => \U2|ALT_INV_Equal0~4_combout\,
	combout => \U2|Equal0~5_combout\);

-- Location: FF_X36_Y2_N26
\U2|ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \U2|Equal0~5_combout\,
	clrn => \RESETN~input_o\,
	sload => VCC,
	ena => \U1|SW_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|ENABLE~q\);

-- Location: MLABCELL_X37_Y2_N30
\U3|C_FLAG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|C_FLAG~0_combout\ = ( \U3|C_FLAG~q\ & ( \U2|ENABLE~q\ & ( !\U1|SW_FF~q\ ) ) ) # ( !\U3|C_FLAG~q\ & ( \U2|ENABLE~q\ & ( \U1|SW_FF~q\ ) ) ) # ( \U3|C_FLAG~q\ & ( !\U2|ENABLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_SW_FF~q\,
	datae => \U3|ALT_INV_C_FLAG~q\,
	dataf => \U2|ALT_INV_ENABLE~q\,
	combout => \U3|C_FLAG~0_combout\);

-- Location: FF_X37_Y2_N31
\U3|C_FLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|C_FLAG~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|C_FLAG~q\);

-- Location: MLABCELL_X37_Y2_N12
\U3|COUNTER~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|COUNTER~0_combout\ = ( \U3|COUNTER~q\ & ( \U3|C_FLAG~q\ & ( (!\RESETN~input_o\) # ((!\U1|SW_FF~q\) # (!\U2|ENABLE~q\)) ) ) ) # ( \U3|COUNTER~q\ & ( !\U3|C_FLAG~q\ ) ) # ( !\U3|COUNTER~q\ & ( !\U3|C_FLAG~q\ & ( (\RESETN~input_o\ & (\U1|SW_FF~q\ & 
-- \U2|ENABLE~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111111100000000000000001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RESETN~input_o\,
	datac => \U1|ALT_INV_SW_FF~q\,
	datad => \U2|ALT_INV_ENABLE~q\,
	datae => \U3|ALT_INV_COUNTER~q\,
	dataf => \U3|ALT_INV_C_FLAG~q\,
	combout => \U3|COUNTER~0_combout\);

-- Location: FF_X37_Y2_N14
\U3|COUNTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|COUNTER~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|COUNTER~q\);

-- Location: LABCELL_X43_Y2_N48
\U3|process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|process_1~0_combout\ = ( \U1|SW_FF~q\ & ( \U3|COUNTER~q\ ) ) # ( !\U1|SW_FF~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_COUNTER~q\,
	dataf => \U1|ALT_INV_SW_FF~q\,
	combout => \U3|process_1~0_combout\);

-- Location: FF_X43_Y2_N31
\U3|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Add0~21_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U3|process_1~0_combout\,
	ena => \U3|ALT_INV_COUNTER~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|i\(0));

-- Location: LABCELL_X43_Y2_N33
\U3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~5_sumout\ = SUM(( \U3|i\(1) ) + ( GND ) + ( \U3|Add0~22\ ))
-- \U3|Add0~6\ = CARRY(( \U3|i\(1) ) + ( GND ) + ( \U3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_i\(1),
	cin => \U3|Add0~22\,
	sumout => \U3|Add0~5_sumout\,
	cout => \U3|Add0~6\);

-- Location: FF_X43_Y2_N35
\U3|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Add0~5_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U3|process_1~0_combout\,
	ena => \U3|ALT_INV_COUNTER~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|i\(1));

-- Location: LABCELL_X43_Y2_N36
\U3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~17_sumout\ = SUM(( \U3|i\(2) ) + ( GND ) + ( \U3|Add0~6\ ))
-- \U3|Add0~18\ = CARRY(( \U3|i\(2) ) + ( GND ) + ( \U3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_i\(2),
	cin => \U3|Add0~6\,
	sumout => \U3|Add0~17_sumout\,
	cout => \U3|Add0~18\);

-- Location: FF_X43_Y2_N38
\U3|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Add0~17_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U3|process_1~0_combout\,
	ena => \U3|ALT_INV_COUNTER~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|i\(2));

-- Location: FF_X43_Y2_N40
\U3|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Add0~13_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U3|process_1~0_combout\,
	ena => \U3|ALT_INV_COUNTER~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|i\(3));

-- Location: LABCELL_X43_Y2_N39
\U3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~13_sumout\ = SUM(( \U3|i\(3) ) + ( GND ) + ( \U3|Add0~18\ ))
-- \U3|Add0~14\ = CARRY(( \U3|i\(3) ) + ( GND ) + ( \U3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_i\(3),
	cin => \U3|Add0~18\,
	sumout => \U3|Add0~13_sumout\,
	cout => \U3|Add0~14\);

-- Location: FF_X43_Y2_N41
\U3|i[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Add0~13_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U3|process_1~0_combout\,
	ena => \U3|ALT_INV_COUNTER~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|i[3]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y2_N42
\U3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~9_sumout\ = SUM(( \U3|i\(4) ) + ( GND ) + ( \U3|Add0~14\ ))
-- \U3|Add0~10\ = CARRY(( \U3|i\(4) ) + ( GND ) + ( \U3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_i\(4),
	cin => \U3|Add0~14\,
	sumout => \U3|Add0~9_sumout\,
	cout => \U3|Add0~10\);

-- Location: FF_X43_Y2_N43
\U3|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Add0~9_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U3|process_1~0_combout\,
	ena => \U3|ALT_INV_COUNTER~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|i\(4));

-- Location: LABCELL_X43_Y2_N0
\U3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux0~0_combout\ = ( !\U3|i\(4) & ( !\U3|i\(1) & ( (\U3|i\(2) & \U3|i[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|ALT_INV_i\(2),
	datad => \U3|ALT_INV_i[3]~DUPLICATE_q\,
	datae => \U3|ALT_INV_i\(4),
	dataf => \U3|ALT_INV_i\(1),
	combout => \U3|Mux0~0_combout\);

-- Location: LABCELL_X43_Y2_N57
\U3|NUM[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|NUM[4]~0_combout\ = ( !\U3|COUNTER~q\ & ( \U1|SW_FF~q\ & ( \RESETN~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RESETN~input_o\,
	datae => \U3|ALT_INV_COUNTER~q\,
	dataf => \U1|ALT_INV_SW_FF~q\,
	combout => \U3|NUM[4]~0_combout\);

-- Location: FF_X43_Y2_N1
\U3|NUM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Mux0~0_combout\,
	ena => \U3|NUM[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|NUM\(4));

-- Location: LABCELL_X44_Y3_N33
\U3|SCALE~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|SCALE~2_combout\ = ( \U3|COUNTER~q\ & ( \U3|NUM\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_NUM\(4),
	dataf => \U3|ALT_INV_COUNTER~q\,
	combout => \U3|SCALE~2_combout\);

-- Location: FF_X44_Y3_N35
\U3|SCALE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|SCALE~2_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|SCALE\(4));

-- Location: LABCELL_X44_Y3_N48
\C0|SCALE_SWOUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0|SCALE_SWOUT[4]~4_combout\ = ( \U3|SCALE\(4) & ( (!\U1|SW_FF~q\ & (\S0|WideOr0~0_combout\ & \S0|WideOr0~2_combout\)) ) ) # ( !\U3|SCALE\(4) & ( ((\S0|WideOr0~0_combout\ & \S0|WideOr0~2_combout\)) # (\U1|SW_FF~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_SW_FF~q\,
	datac => \S0|ALT_INV_WideOr0~0_combout\,
	datad => \S0|ALT_INV_WideOr0~2_combout\,
	dataf => \U3|ALT_INV_SCALE\(4),
	combout => \C0|SCALE_SWOUT[4]~4_combout\);

-- Location: MLABCELL_X42_Y33_N0
\S0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr1~0_combout\ = ( \PSWITCH[11]~input_o\ & ( !\PSWITCH[9]~input_o\ & ( (!\PSWITCH[12]~input_o\ & (!\PSWITCH[13]~input_o\ & (\S0|Equal12~0_combout\ & !\PSWITCH[10]~input_o\))) ) ) ) # ( !\PSWITCH[11]~input_o\ & ( !\PSWITCH[9]~input_o\ & ( 
-- (\S0|Equal12~0_combout\ & (!\PSWITCH[10]~input_o\ & (!\PSWITCH[12]~input_o\ $ (!\PSWITCH[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PSWITCH[12]~input_o\,
	datab => \ALT_INV_PSWITCH[13]~input_o\,
	datac => \S0|ALT_INV_Equal12~0_combout\,
	datad => \ALT_INV_PSWITCH[10]~input_o\,
	datae => \ALT_INV_PSWITCH[11]~input_o\,
	dataf => \ALT_INV_PSWITCH[9]~input_o\,
	combout => \S0|WideOr1~0_combout\);

-- Location: LABCELL_X43_Y33_N54
\C0|SCALE_SWOUT[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0|SCALE_SWOUT[2]~7_combout\ = ( !\S0|Equal5~1_combout\ & ( \S0|Equal4~0_combout\ & ( (!\S0|Equal15~0_combout\ & (!\S0|WideOr1~0_combout\ & (!\S0|Equal7~0_combout\ & !\S0|Equal5~0_combout\))) ) ) ) # ( !\S0|Equal5~1_combout\ & ( !\S0|Equal4~0_combout\ & 
-- ( (!\S0|Equal15~0_combout\ & (!\S0|WideOr1~0_combout\ & !\S0|Equal7~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal15~0_combout\,
	datab => \S0|ALT_INV_WideOr1~0_combout\,
	datac => \S0|ALT_INV_Equal7~0_combout\,
	datad => \S0|ALT_INV_Equal5~0_combout\,
	datae => \S0|ALT_INV_Equal5~1_combout\,
	dataf => \S0|ALT_INV_Equal4~0_combout\,
	combout => \C0|SCALE_SWOUT[2]~7_combout\);

-- Location: LABCELL_X43_Y2_N45
\U3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~1_sumout\ = SUM(( \U3|i\(5) ) + ( GND ) + ( \U3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_i\(5),
	cin => \U3|Add0~10\,
	sumout => \U3|Add0~1_sumout\);

-- Location: FF_X43_Y2_N47
\U3|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Add0~1_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U3|process_1~0_combout\,
	ena => \U3|ALT_INV_COUNTER~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|i\(5));

-- Location: LABCELL_X43_Y2_N21
\U3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux2~0_combout\ = ( \U3|i\(3) & ( \U3|i\(0) & ( (!\U3|i\(4) & (!\U3|i\(2) & ((\U3|i\(1))))) # (\U3|i\(4) & (\U3|i\(5) & ((!\U3|i\(2)) # (!\U3|i\(1))))) ) ) ) # ( !\U3|i\(3) & ( \U3|i\(0) & ( (!\U3|i\(2) & \U3|i\(4)) ) ) ) # ( \U3|i\(3) & ( !\U3|i\(0) 
-- & ( (!\U3|i\(4) & (((\U3|i\(1))))) # (\U3|i\(4) & (!\U3|i\(5) & ((!\U3|i\(2)) # (!\U3|i\(1))))) ) ) ) # ( !\U3|i\(3) & ( !\U3|i\(0) & ( (!\U3|i\(4) & (\U3|i\(5) & ((!\U3|i\(2)) # (!\U3|i\(1))))) # (\U3|i\(4) & (!\U3|i\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000101010000011001111100000001010000010100000001110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_i\(2),
	datab => \U3|ALT_INV_i\(5),
	datac => \U3|ALT_INV_i\(4),
	datad => \U3|ALT_INV_i\(1),
	datae => \U3|ALT_INV_i\(3),
	dataf => \U3|ALT_INV_i\(0),
	combout => \U3|Mux2~0_combout\);

-- Location: FF_X43_Y2_N22
\U3|NUM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Mux2~0_combout\,
	ena => \U3|NUM[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|NUM\(2));

-- Location: LABCELL_X44_Y3_N9
\U3|SCALE~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|SCALE~3_combout\ = ( \U3|COUNTER~q\ & ( \U3|NUM\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|ALT_INV_NUM\(2),
	dataf => \U3|ALT_INV_COUNTER~q\,
	combout => \U3|SCALE~3_combout\);

-- Location: FF_X44_Y3_N10
\U3|SCALE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|SCALE~3_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|SCALE\(2));

-- Location: LABCELL_X44_Y3_N54
\C0|SCALE_SWOUT[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0|SCALE_SWOUT[2]~5_combout\ = ( !\U3|SCALE\(2) & ( \U1|SW_FF~q\ ) ) # ( \U3|SCALE\(2) & ( !\U1|SW_FF~q\ & ( (!\S0|Equal6~0_combout\ & (!\S0|WideOr0~1_combout\ & (\C0|SCALE_SWOUT[2]~7_combout\ & !\S0|Equal23~0_combout\))) ) ) ) # ( !\U3|SCALE\(2) & ( 
-- !\U1|SW_FF~q\ & ( (!\S0|Equal6~0_combout\ & (!\S0|WideOr0~1_combout\ & (\C0|SCALE_SWOUT[2]~7_combout\ & !\S0|Equal23~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal6~0_combout\,
	datab => \S0|ALT_INV_WideOr0~1_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[2]~7_combout\,
	datad => \S0|ALT_INV_Equal23~0_combout\,
	datae => \U3|ALT_INV_SCALE\(2),
	dataf => \U1|ALT_INV_SW_FF~q\,
	combout => \C0|SCALE_SWOUT[2]~5_combout\);

-- Location: LABCELL_X43_Y2_N9
\U3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux3~0_combout\ = ( \U3|i\(4) & ( \U3|i\(1) & ( (\U3|i\(2) & (!\U3|i\(5) & (\U3|i\(3) & !\U3|i\(0)))) ) ) ) # ( !\U3|i\(4) & ( \U3|i\(1) & ( (!\U3|i\(2) & (((\U3|i\(3))))) # (\U3|i\(2) & (!\U3|i\(0) & ((\U3|i\(3)) # (\U3|i\(5))))) ) ) ) # ( \U3|i\(4) 
-- & ( !\U3|i\(1) & ( (!\U3|i\(2) & (\U3|i\(3) & (!\U3|i\(5) $ (\U3|i\(0))))) # (\U3|i\(2) & (((!\U3|i\(3))))) ) ) ) # ( !\U3|i\(4) & ( !\U3|i\(1) & ( (!\U3|i\(2) & (\U3|i\(5) & (!\U3|i\(3) & !\U3|i\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000010110000101001000011111000010100000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_i\(2),
	datab => \U3|ALT_INV_i\(5),
	datac => \U3|ALT_INV_i\(3),
	datad => \U3|ALT_INV_i\(0),
	datae => \U3|ALT_INV_i\(4),
	dataf => \U3|ALT_INV_i\(1),
	combout => \U3|Mux3~0_combout\);

-- Location: FF_X43_Y2_N10
\U3|NUM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Mux3~0_combout\,
	ena => \U3|NUM[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|NUM\(1));

-- Location: LABCELL_X44_Y3_N18
\U3|SCALE~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|SCALE~1_combout\ = ( \U3|COUNTER~q\ & ( \U3|NUM\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|ALT_INV_NUM\(1),
	dataf => \U3|ALT_INV_COUNTER~q\,
	combout => \U3|SCALE~1_combout\);

-- Location: FF_X44_Y3_N20
\U3|SCALE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|SCALE~1_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|SCALE\(1));

-- Location: LABCELL_X44_Y3_N51
\C0|SCALE_SWOUT[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0|SCALE_SWOUT[1]~3_combout\ = ( \U3|SCALE\(1) & ( (\S0|WideNor0~0_combout\ & (!\U1|SW_FF~q\ & \S0|WideOr3~0_combout\)) ) ) # ( !\U3|SCALE\(1) & ( ((\S0|WideNor0~0_combout\ & \S0|WideOr3~0_combout\)) # (\U1|SW_FF~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~0_combout\,
	datac => \U1|ALT_INV_SW_FF~q\,
	datad => \S0|ALT_INV_WideOr3~0_combout\,
	dataf => \U3|ALT_INV_SCALE\(1),
	combout => \C0|SCALE_SWOUT[1]~3_combout\);

-- Location: MLABCELL_X42_Y33_N54
\S0|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideOr1~1_combout\ = ( !\S0|WideOr1~0_combout\ & ( !\S0|Equal15~0_combout\ & ( (!\S0|Equal10~0_combout\ & (!\S0|Equal8~1_combout\ & (!\S0|Equal11~1_combout\ & !\S0|Equal9~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal10~0_combout\,
	datab => \S0|ALT_INV_Equal8~1_combout\,
	datac => \S0|ALT_INV_Equal11~1_combout\,
	datad => \S0|ALT_INV_Equal9~1_combout\,
	datae => \S0|ALT_INV_WideOr1~0_combout\,
	dataf => \S0|ALT_INV_Equal15~0_combout\,
	combout => \S0|WideOr1~1_combout\);

-- Location: LABCELL_X43_Y2_N12
\U3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux1~0_combout\ = ( \U3|i\(4) & ( \U3|i\(1) & ( (!\U3|i\(0) & (((!\U3|i\(5)) # (!\U3|i[3]~DUPLICATE_q\)))) # (\U3|i\(0) & (!\U3|i\(2) & ((!\U3|i[3]~DUPLICATE_q\) # (\U3|i\(5))))) ) ) ) # ( !\U3|i\(4) & ( \U3|i\(1) & ( (!\U3|i\(0) & 
-- (((\U3|i[3]~DUPLICATE_q\) # (\U3|i\(5))))) # (\U3|i\(0) & (!\U3|i\(2) & ((\U3|i[3]~DUPLICATE_q\)))) ) ) ) # ( \U3|i\(4) & ( !\U3|i\(1) & ( (!\U3|i[3]~DUPLICATE_q\) # (!\U3|i\(5) $ (\U3|i\(0))) ) ) ) # ( !\U3|i\(4) & ( !\U3|i\(1) & ( 
-- (!\U3|i[3]~DUPLICATE_q\ & (((\U3|i\(5) & !\U3|i\(0))))) # (\U3|i[3]~DUPLICATE_q\ & (!\U3|i\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010101010111111111100001100110000111110101111101011000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_i\(2),
	datab => \U3|ALT_INV_i\(5),
	datac => \U3|ALT_INV_i\(0),
	datad => \U3|ALT_INV_i[3]~DUPLICATE_q\,
	datae => \U3|ALT_INV_i\(4),
	dataf => \U3|ALT_INV_i\(1),
	combout => \U3|Mux1~0_combout\);

-- Location: FF_X43_Y2_N13
\U3|NUM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Mux1~0_combout\,
	ena => \U3|NUM[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|NUM\(3));

-- Location: LABCELL_X44_Y3_N24
\U3|SCALE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|SCALE~0_combout\ = ( \U3|NUM\(3) & ( \U3|COUNTER~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_COUNTER~q\,
	dataf => \U3|ALT_INV_NUM\(3),
	combout => \U3|SCALE~0_combout\);

-- Location: FF_X44_Y3_N26
\U3|SCALE[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|SCALE~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|SCALE[3]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y3_N36
\C0|SCALE_SWOUT[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0|SCALE_SWOUT[3]~2_combout\ = (!\U1|SW_FF~q\ & (\S0|WideOr0~0_combout\ & (\S0|WideOr1~1_combout\))) # (\U1|SW_FF~q\ & (((!\U3|SCALE[3]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111110000000100011111000000010001111100000001000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr1~1_combout\,
	datac => \U3|ALT_INV_SCALE[3]~DUPLICATE_q\,
	datad => \U1|ALT_INV_SW_FF~q\,
	combout => \C0|SCALE_SWOUT[3]~2_combout\);

-- Location: LABCELL_X43_Y2_N24
\U3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux4~0_combout\ = ( \U3|i\(4) & ( \U3|i\(0) & ( (!\U3|i\(2) & ((!\U3|i\(3) & (!\U3|i\(1))) # (\U3|i\(3) & ((\U3|i\(5)))))) ) ) ) # ( !\U3|i\(4) & ( \U3|i\(0) & ( (\U3|i\(3) & (!\U3|i\(2) $ (!\U3|i\(1)))) ) ) ) # ( \U3|i\(4) & ( !\U3|i\(0) & ( 
-- (!\U3|i\(2) & ((!\U3|i\(3) & (!\U3|i\(1))) # (\U3|i\(3) & ((!\U3|i\(5)))))) ) ) ) # ( !\U3|i\(4) & ( !\U3|i\(0) & ( (!\U3|i\(2) & ((!\U3|i\(3) & ((\U3|i\(5)))) # (\U3|i\(3) & (\U3|i\(1))))) # (\U3|i\(2) & (\U3|i\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001110011011101000101000000000010010000100101000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_i\(2),
	datab => \U3|ALT_INV_i\(3),
	datac => \U3|ALT_INV_i\(1),
	datad => \U3|ALT_INV_i\(5),
	datae => \U3|ALT_INV_i\(4),
	dataf => \U3|ALT_INV_i\(0),
	combout => \U3|Mux4~0_combout\);

-- Location: FF_X43_Y2_N25
\U3|NUM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|Mux4~0_combout\,
	ena => \U3|NUM[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|NUM\(0));

-- Location: LABCELL_X43_Y2_N51
\U3|SCALE~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|SCALE~4_combout\ = ( \U3|NUM\(0) & ( \U3|COUNTER~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_COUNTER~q\,
	dataf => \U3|ALT_INV_NUM\(0),
	combout => \U3|SCALE~4_combout\);

-- Location: FF_X44_Y3_N41
\U3|SCALE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \U3|SCALE~4_combout\,
	clrn => \RESETN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|SCALE\(0));

-- Location: LABCELL_X44_Y3_N27
\C0|SCALE_SWOUT[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0|SCALE_SWOUT[0]~6_combout\ = ( \U1|SW_FF~q\ & ( \U3|SCALE\(0) ) ) # ( !\U1|SW_FF~q\ & ( (\C0|SCALE_SWOUT[0]~1_combout\ & \S0|WideOr3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[0]~1_combout\,
	datac => \U3|ALT_INV_SCALE\(0),
	datad => \S0|ALT_INV_WideOr3~0_combout\,
	dataf => \U1|ALT_INV_SW_FF~q\,
	combout => \C0|SCALE_SWOUT[0]~6_combout\);

-- Location: LABCELL_X44_Y2_N39
\L1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux6~0_combout\ = ( \C0|SCALE_SWOUT[3]~2_combout\ & ( \C0|SCALE_SWOUT[0]~6_combout\ & ( (!\C0|SCALE_SWOUT[1]~3_combout\ & ((!\C0|SCALE_SWOUT[4]~4_combout\) # (!\C0|SCALE_SWOUT[2]~5_combout\))) ) ) ) # ( !\C0|SCALE_SWOUT[3]~2_combout\ & ( 
-- \C0|SCALE_SWOUT[0]~6_combout\ & ( (\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[2]~5_combout\ & !\C0|SCALE_SWOUT[1]~3_combout\)) ) ) ) # ( \C0|SCALE_SWOUT[3]~2_combout\ & ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( !\C0|SCALE_SWOUT[1]~3_combout\ $ 
-- (((\C0|SCALE_SWOUT[4]~4_combout\ & \C0|SCALE_SWOUT[2]~5_combout\))) ) ) ) # ( !\C0|SCALE_SWOUT[3]~2_combout\ & ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( (\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[2]~5_combout\ & !\C0|SCALE_SWOUT[1]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000111000011110000100010000000100001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datae => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	combout => \L1|Mux6~0_combout\);

-- Location: LABCELL_X44_Y1_N33
\L1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux5~0_combout\ = ( \C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\ & (((!\C0|SCALE_SWOUT[4]~4_combout\)) # (\C0|SCALE_SWOUT[1]~3_combout\))) # (\C0|SCALE_SWOUT[3]~2_combout\ & ((!\C0|SCALE_SWOUT[1]~3_combout\) # 
-- ((!\C0|SCALE_SWOUT[0]~6_combout\) # (\C0|SCALE_SWOUT[4]~4_combout\)))) ) ) # ( !\C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\) # ((!\C0|SCALE_SWOUT[1]~3_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\)) # (\C0|SCALE_SWOUT[1]~3_combout\ & 
-- ((!\C0|SCALE_SWOUT[4]~4_combout\) # (!\C0|SCALE_SWOUT[0]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111110101111111011111011110111111001111111011111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	combout => \L1|Mux5~0_combout\);

-- Location: LABCELL_X44_Y1_N48
\L1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux4~0_combout\ = ( \C0|SCALE_SWOUT[4]~4_combout\ & ( (!\C0|SCALE_SWOUT[1]~3_combout\ & (!\C0|SCALE_SWOUT[0]~6_combout\ & (!\C0|SCALE_SWOUT[2]~5_combout\ $ (\C0|SCALE_SWOUT[3]~2_combout\)))) # (\C0|SCALE_SWOUT[1]~3_combout\ & 
-- (((!\C0|SCALE_SWOUT[3]~2_combout\)) # (\C0|SCALE_SWOUT[2]~5_combout\))) ) ) # ( !\C0|SCALE_SWOUT[4]~4_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\) # ((!\C0|SCALE_SWOUT[2]~5_combout\ & \C0|SCALE_SWOUT[1]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100100010111111110010001010110011010100011011001101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	combout => \L1|Mux4~0_combout\);

-- Location: LABCELL_X44_Y1_N24
\L1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux3~0_combout\ = ( \C0|SCALE_SWOUT[4]~4_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\ & (!\C0|SCALE_SWOUT[2]~5_combout\ & (!\C0|SCALE_SWOUT[0]~6_combout\ $ (\C0|SCALE_SWOUT[1]~3_combout\)))) # (\C0|SCALE_SWOUT[3]~2_combout\ & 
-- ((!\C0|SCALE_SWOUT[0]~6_combout\ & (\C0|SCALE_SWOUT[2]~5_combout\)) # (\C0|SCALE_SWOUT[0]~6_combout\ & ((\C0|SCALE_SWOUT[1]~3_combout\))))) ) ) # ( !\C0|SCALE_SWOUT[4]~4_combout\ & ( (!\C0|SCALE_SWOUT[2]~5_combout\ & (((!\C0|SCALE_SWOUT[3]~2_combout\)))) 
-- # (\C0|SCALE_SWOUT[2]~5_combout\ & ((!\C0|SCALE_SWOUT[1]~3_combout\ & ((!\C0|SCALE_SWOUT[3]~2_combout\))) # (\C0|SCALE_SWOUT[1]~3_combout\ & (\C0|SCALE_SWOUT[0]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000101110011001100010110000010010100111000001001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	combout => \L1|Mux3~0_combout\);

-- Location: FF_X44_Y3_N25
\U3|SCALE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|SCALE~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|SCALE\(3));

-- Location: FF_X44_Y3_N34
\U3|SCALE[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|SCALE~2_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|SCALE[4]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y3_N12
\L1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux2~0_combout\ = ( \S0|WideOr1~1_combout\ & ( \S0|WideOr0~0_combout\ & ( (!\U1|SW_FF~q\ & (((\S0|WideOr0~2_combout\)))) # (\U1|SW_FF~q\ & (!\U3|SCALE\(3) & ((!\U3|SCALE[4]~DUPLICATE_q\)))) ) ) ) # ( !\S0|WideOr1~1_combout\ & ( \S0|WideOr0~0_combout\ 
-- & ( (!\U3|SCALE\(3) & (\U1|SW_FF~q\ & !\U3|SCALE[4]~DUPLICATE_q\)) ) ) ) # ( \S0|WideOr1~1_combout\ & ( !\S0|WideOr0~0_combout\ & ( (!\U3|SCALE\(3) & (\U1|SW_FF~q\ & !\U3|SCALE[4]~DUPLICATE_q\)) ) ) ) # ( !\S0|WideOr1~1_combout\ & ( 
-- !\S0|WideOr0~0_combout\ & ( (!\U3|SCALE\(3) & (\U1|SW_FF~q\ & !\U3|SCALE[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000000000011101000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_SCALE\(3),
	datab => \S0|ALT_INV_WideOr0~2_combout\,
	datac => \U1|ALT_INV_SW_FF~q\,
	datad => \U3|ALT_INV_SCALE[4]~DUPLICATE_q\,
	datae => \S0|ALT_INV_WideOr1~1_combout\,
	dataf => \S0|ALT_INV_WideOr0~0_combout\,
	combout => \L1|Mux2~0_combout\);

-- Location: LABCELL_X44_Y1_N42
\L1|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux2~1_combout\ = ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( \L1|Mux2~0_combout\ & ( (\C0|SCALE_SWOUT[2]~5_combout\ & \C0|SCALE_SWOUT[1]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datae => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \L1|ALT_INV_Mux2~0_combout\,
	combout => \L1|Mux2~1_combout\);

-- Location: LABCELL_X44_Y1_N27
\L1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux1~0_combout\ = ( \C0|SCALE_SWOUT[2]~5_combout\ & ( (\C0|SCALE_SWOUT[4]~4_combout\ & ((!\C0|SCALE_SWOUT[3]~2_combout\ & ((!\C0|SCALE_SWOUT[1]~3_combout\))) # (\C0|SCALE_SWOUT[3]~2_combout\ & (!\C0|SCALE_SWOUT[0]~6_combout\ & 
-- \C0|SCALE_SWOUT[1]~3_combout\)))) ) ) # ( !\C0|SCALE_SWOUT[2]~5_combout\ & ( (\C0|SCALE_SWOUT[3]~2_combout\ & (!\C0|SCALE_SWOUT[4]~4_combout\ & !\C0|SCALE_SWOUT[1]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001100000000100000110000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	combout => \L1|Mux1~0_combout\);

-- Location: LABCELL_X44_Y1_N30
\L1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux0~0_combout\ = ( \C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & (!\C0|SCALE_SWOUT[1]~3_combout\ $ (((\C0|SCALE_SWOUT[4]~4_combout\) # (\C0|SCALE_SWOUT[3]~2_combout\))))) # (\C0|SCALE_SWOUT[0]~6_combout\ & 
-- (!\C0|SCALE_SWOUT[3]~2_combout\ $ (((!\C0|SCALE_SWOUT[1]~3_combout\ & \C0|SCALE_SWOUT[4]~4_combout\))))) ) ) # ( !\C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\ & ((!\C0|SCALE_SWOUT[4]~4_combout\) # ((!\C0|SCALE_SWOUT[1]~3_combout\ & 
-- \C0|SCALE_SWOUT[0]~6_combout\)))) # (\C0|SCALE_SWOUT[3]~2_combout\ & (\C0|SCALE_SWOUT[1]~3_combout\ & ((!\C0|SCALE_SWOUT[0]~6_combout\) # (!\C0|SCALE_SWOUT[4]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100011000101110110001100010011010001101101001101000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	combout => \L1|Mux0~0_combout\);

-- Location: LABCELL_X44_Y1_N51
\L1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux13~0_combout\ = ( \C0|SCALE_SWOUT[4]~4_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\) # ((\C0|SCALE_SWOUT[2]~5_combout\ & (\C0|SCALE_SWOUT[1]~3_combout\ & !\C0|SCALE_SWOUT[0]~6_combout\))) ) ) # ( !\C0|SCALE_SWOUT[4]~4_combout\ & ( 
-- (\C0|SCALE_SWOUT[2]~5_combout\ & \C0|SCALE_SWOUT[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110001111100001111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	combout => \L1|Mux13~0_combout\);

-- Location: LABCELL_X44_Y1_N6
\L1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux12~0_combout\ = ( \C0|SCALE_SWOUT[4]~4_combout\ & ( (\C0|SCALE_SWOUT[2]~5_combout\ & (\C0|SCALE_SWOUT[1]~3_combout\ & (!\C0|SCALE_SWOUT[0]~6_combout\ & \C0|SCALE_SWOUT[3]~2_combout\))) ) ) # ( !\C0|SCALE_SWOUT[4]~4_combout\ & ( 
-- (!\C0|SCALE_SWOUT[2]~5_combout\) # (!\C0|SCALE_SWOUT[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	combout => \L1|Mux12~0_combout\);

-- Location: LABCELL_X44_Y1_N9
\L1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux11~0_combout\ = ( \C0|SCALE_SWOUT[4]~4_combout\ & ( (!\C0|SCALE_SWOUT[2]~5_combout\) # ((!\C0|SCALE_SWOUT[1]~3_combout\) # ((!\C0|SCALE_SWOUT[3]~2_combout\) # (\C0|SCALE_SWOUT[0]~6_combout\))) ) ) # ( !\C0|SCALE_SWOUT[4]~4_combout\ & ( 
-- ((\C0|SCALE_SWOUT[2]~5_combout\ & (\C0|SCALE_SWOUT[1]~3_combout\ & !\C0|SCALE_SWOUT[0]~6_combout\))) # (\C0|SCALE_SWOUT[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001111000111110000111111111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	combout => \L1|Mux11~0_combout\);

-- Location: LABCELL_X44_Y1_N36
\L1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux10~0_combout\ = ( \C0|SCALE_SWOUT[4]~4_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\) # ((\C0|SCALE_SWOUT[2]~5_combout\ & (\C0|SCALE_SWOUT[1]~3_combout\ & !\C0|SCALE_SWOUT[0]~6_combout\))) ) ) # ( !\C0|SCALE_SWOUT[4]~4_combout\ & ( 
-- (!\C0|SCALE_SWOUT[2]~5_combout\ & (((!\C0|SCALE_SWOUT[3]~2_combout\)))) # (\C0|SCALE_SWOUT[2]~5_combout\ & ((!\C0|SCALE_SWOUT[1]~3_combout\) # ((\C0|SCALE_SWOUT[0]~6_combout\) # (\C0|SCALE_SWOUT[3]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010111110101111001011111010111110001111100001111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	combout => \L1|Mux10~0_combout\);

-- Location: LABCELL_X44_Y1_N39
\L1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux9~0_combout\ = ( \C0|SCALE_SWOUT[4]~4_combout\ ) # ( !\C0|SCALE_SWOUT[4]~4_combout\ & ( ((\C0|SCALE_SWOUT[2]~5_combout\ & (\C0|SCALE_SWOUT[1]~3_combout\ & !\C0|SCALE_SWOUT[0]~6_combout\))) # (\C0|SCALE_SWOUT[3]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001111000111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	combout => \L1|Mux9~0_combout\);

-- Location: LABCELL_X44_Y1_N57
\L1|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux19~0_combout\ = ( \C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & ((!\C0|SCALE_SWOUT[3]~2_combout\ & ((\C0|SCALE_SWOUT[4]~4_combout\) # (\C0|SCALE_SWOUT[1]~3_combout\))) # (\C0|SCALE_SWOUT[3]~2_combout\ & 
-- (\C0|SCALE_SWOUT[1]~3_combout\ & \C0|SCALE_SWOUT[4]~4_combout\)))) # (\C0|SCALE_SWOUT[0]~6_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\)) ) ) # ( !\C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & ((!\C0|SCALE_SWOUT[3]~2_combout\ & 
-- (\C0|SCALE_SWOUT[1]~3_combout\ & \C0|SCALE_SWOUT[4]~4_combout\)) # (\C0|SCALE_SWOUT[3]~2_combout\ & ((!\C0|SCALE_SWOUT[4]~4_combout\))))) # (\C0|SCALE_SWOUT[0]~6_combout\ & (((\C0|SCALE_SWOUT[4]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001011101001000100101110100011001100110110001100110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	combout => \L1|Mux19~0_combout\);

-- Location: LABCELL_X44_Y1_N54
\L1|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux18~0_combout\ = ( \C0|SCALE_SWOUT[4]~4_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & ((!\C0|SCALE_SWOUT[3]~2_combout\ & ((\C0|SCALE_SWOUT[1]~3_combout\) # (\C0|SCALE_SWOUT[2]~5_combout\))) # (\C0|SCALE_SWOUT[3]~2_combout\ & 
-- (!\C0|SCALE_SWOUT[2]~5_combout\ $ (\C0|SCALE_SWOUT[1]~3_combout\))))) # (\C0|SCALE_SWOUT[0]~6_combout\ & (((!\C0|SCALE_SWOUT[2]~5_combout\)) # (\C0|SCALE_SWOUT[3]~2_combout\))) ) ) # ( !\C0|SCALE_SWOUT[4]~4_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\) # 
-- ((!\C0|SCALE_SWOUT[0]~6_combout\ & ((!\C0|SCALE_SWOUT[2]~5_combout\) # (!\C0|SCALE_SWOUT[1]~3_combout\))) # (\C0|SCALE_SWOUT[0]~6_combout\ & (\C0|SCALE_SWOUT[2]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111101101111011111110110101111001110110110111100111011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	combout => \L1|Mux18~0_combout\);

-- Location: LABCELL_X44_Y1_N12
\L1|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux17~0_combout\ = ( \C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\ & (!\C0|SCALE_SWOUT[0]~6_combout\ & ((\C0|SCALE_SWOUT[4]~4_combout\) # (\C0|SCALE_SWOUT[1]~3_combout\)))) # (\C0|SCALE_SWOUT[3]~2_combout\ & 
-- ((!\C0|SCALE_SWOUT[1]~3_combout\ $ (\C0|SCALE_SWOUT[4]~4_combout\)) # (\C0|SCALE_SWOUT[0]~6_combout\))) ) ) # ( !\C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & (!\C0|SCALE_SWOUT[3]~2_combout\ $ (((!\C0|SCALE_SWOUT[1]~3_combout\) # 
-- (!\C0|SCALE_SWOUT[4]~4_combout\))))) # (\C0|SCALE_SWOUT[0]~6_combout\ & (((\C0|SCALE_SWOUT[4]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011000001111010101100000111101101011010101010110101101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	combout => \L1|Mux17~0_combout\);

-- Location: LABCELL_X44_Y1_N15
\L1|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Mux16~0_combout\ = ( \C0|SCALE_SWOUT[2]~5_combout\ & ( ((!\C0|SCALE_SWOUT[0]~6_combout\ & ((\C0|SCALE_SWOUT[1]~3_combout\))) # (\C0|SCALE_SWOUT[0]~6_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\))) # (\C0|SCALE_SWOUT[4]~4_combout\) ) ) # ( 
-- !\C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\ & (((\C0|SCALE_SWOUT[4]~4_combout\)))) # (\C0|SCALE_SWOUT[3]~2_combout\ & (((!\C0|SCALE_SWOUT[4]~4_combout\) # (\C0|SCALE_SWOUT[0]~6_combout\)) # (\C0|SCALE_SWOUT[1]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101101011111010110110101111100111111010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	combout => \L1|Mux16~0_combout\);

-- Location: LABCELL_X43_Y29_N54
\S0|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S0|WideNor0~combout\ = ( !\S0|Equal5~1_combout\ & ( (\S0|WideNor0~1_combout\ & (\S0|WideOr3~0_combout\ & (\C0|SCALE_SWOUT[0]~1_combout\ & \S0|WideNor0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideNor0~1_combout\,
	datab => \S0|ALT_INV_WideOr3~0_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[0]~1_combout\,
	datad => \S0|ALT_INV_WideNor0~0_combout\,
	dataf => \S0|ALT_INV_Equal5~1_combout\,
	combout => \S0|WideNor0~combout\);

-- Location: FF_X43_Y5_N44
\U3|S_FLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \U3|COUNTER~q\,
	clrn => \RESETN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|S_FLAG~q\);

-- Location: LABCELL_X43_Y5_N42
\C0|ENABLE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C0|ENABLE~0_combout\ = ( \U3|S_FLAG~q\ & ( \U1|SW_FF~q\ ) ) # ( \U3|S_FLAG~q\ & ( !\U1|SW_FF~q\ & ( (!\S0|WideNor0~combout\ & ((!\S0|Equal0~4_combout\) # (!\S0|Equal0~0_combout\))) ) ) ) # ( !\U3|S_FLAG~q\ & ( !\U1|SW_FF~q\ & ( (!\S0|WideNor0~combout\ & 
-- ((!\S0|Equal0~4_combout\) # (!\S0|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_Equal0~4_combout\,
	datab => \S0|ALT_INV_Equal0~0_combout\,
	datac => \S0|ALT_INV_WideNor0~combout\,
	datae => \U3|ALT_INV_S_FLAG~q\,
	dataf => \U1|ALT_INV_SW_FF~q\,
	combout => \C0|ENABLE~0_combout\);

-- Location: MLABCELL_X42_Y3_N0
\B1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~53_sumout\ = SUM(( \B1|COUNT\(0) ) + ( VCC ) + ( !VCC ))
-- \B1|Add0~54\ = CARRY(( \B1|COUNT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(0),
	cin => GND,
	sumout => \B1|Add0~53_sumout\,
	cout => \B1|Add0~54\);

-- Location: MLABCELL_X42_Y3_N57
\B1|BEEPOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|BEEPOUT~2_combout\ = ( \B1|Equal0~7_combout\ & ( \C0|ENABLE~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C0|ALT_INV_ENABLE~0_combout\,
	dataf => \B1|ALT_INV_Equal0~7_combout\,
	combout => \B1|BEEPOUT~2_combout\);

-- Location: LABCELL_X44_Y3_N42
\B1|Ram0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~3_combout\ = ( \C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[2]~5_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\ & !\C0|SCALE_SWOUT[0]~6_combout\))) # (\C0|SCALE_SWOUT[2]~5_combout\ & 
-- (!\C0|SCALE_SWOUT[4]~4_combout\ $ ((!\C0|SCALE_SWOUT[3]~2_combout\)))) ) ) # ( !\C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[2]~5_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\ & (!\C0|SCALE_SWOUT[3]~2_combout\ & \C0|SCALE_SWOUT[0]~6_combout\))) # 
-- (\C0|SCALE_SWOUT[2]~5_combout\ & (!\C0|SCALE_SWOUT[3]~2_combout\ $ (((!\C0|SCALE_SWOUT[4]~4_combout\) # (\C0|SCALE_SWOUT[0]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000100101000101000010010100010110000101000001011000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	combout => \B1|Ram0~3_combout\);

-- Location: LABCELL_X44_Y3_N3
\B1|Ram0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~2_combout\ = ( \C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[2]~5_combout\ & (((\C0|SCALE_SWOUT[3]~2_combout\)))) # (\C0|SCALE_SWOUT[2]~5_combout\ & (!\C0|SCALE_SWOUT[4]~4_combout\ & ((!\C0|SCALE_SWOUT[0]~6_combout\) # 
-- (\C0|SCALE_SWOUT[3]~2_combout\)))) ) ) # ( !\C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\ & ((!\C0|SCALE_SWOUT[2]~5_combout\) # (!\C0|SCALE_SWOUT[4]~4_combout\)))) # (\C0|SCALE_SWOUT[0]~6_combout\ & 
-- (((!\C0|SCALE_SWOUT[2]~5_combout\ & \C0|SCALE_SWOUT[4]~4_combout\)) # (\C0|SCALE_SWOUT[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111101000001001111110100100000111111000010000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	combout => \B1|Ram0~2_combout\);

-- Location: LABCELL_X43_Y3_N30
\B1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~1_combout\ = ( \B1|Ram0~2_combout\ & ( (\B1|COUNT\(15) & (!\B1|COUNT\(14) $ (\B1|Ram0~3_combout\))) ) ) # ( !\B1|Ram0~2_combout\ & ( (!\B1|COUNT\(15) & (!\B1|COUNT\(14) $ (\B1|Ram0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(15),
	datac => \B1|ALT_INV_COUNT\(14),
	datad => \B1|ALT_INV_Ram0~3_combout\,
	dataf => \B1|ALT_INV_Ram0~2_combout\,
	combout => \B1|LessThan0~1_combout\);

-- Location: LABCELL_X44_Y3_N12
\B1|Ram0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~4_combout\ = ( \C0|SCALE_SWOUT[0]~6_combout\ & ( \C0|SCALE_SWOUT[1]~3_combout\ & ( (\C0|SCALE_SWOUT[3]~2_combout\ & (!\C0|SCALE_SWOUT[4]~4_combout\ $ (!\C0|SCALE_SWOUT[2]~5_combout\))) ) ) ) # ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( 
-- \C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\)) # (\C0|SCALE_SWOUT[4]~4_combout\ & (!\C0|SCALE_SWOUT[3]~2_combout\ & !\C0|SCALE_SWOUT[2]~5_combout\)) ) ) ) # ( \C0|SCALE_SWOUT[0]~6_combout\ & ( 
-- !\C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\)) # (\C0|SCALE_SWOUT[3]~2_combout\ & ((!\C0|SCALE_SWOUT[2]~5_combout\))) ) ) ) # ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( !\C0|SCALE_SWOUT[1]~3_combout\ & ( 
-- (\C0|SCALE_SWOUT[4]~4_combout\ & !\C0|SCALE_SWOUT[3]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101000001011010000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datae => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	combout => \B1|Ram0~4_combout\);

-- Location: LABCELL_X44_Y3_N6
\B1|Ram0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~5_combout\ = ( \C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[2]~5_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\ & (!\C0|SCALE_SWOUT[0]~6_combout\ $ (!\C0|SCALE_SWOUT[3]~2_combout\)))) # (\C0|SCALE_SWOUT[2]~5_combout\ & 
-- ((!\C0|SCALE_SWOUT[0]~6_combout\ & ((!\C0|SCALE_SWOUT[3]~2_combout\))) # (\C0|SCALE_SWOUT[0]~6_combout\ & (!\C0|SCALE_SWOUT[4]~4_combout\ & \C0|SCALE_SWOUT[3]~2_combout\)))) ) ) # ( !\C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & 
-- ((!\C0|SCALE_SWOUT[4]~4_combout\ & (!\C0|SCALE_SWOUT[2]~5_combout\ & \C0|SCALE_SWOUT[3]~2_combout\)) # (\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[2]~5_combout\ & !\C0|SCALE_SWOUT[3]~2_combout\)))) # (\C0|SCALE_SWOUT[0]~6_combout\ & 
-- (((\C0|SCALE_SWOUT[3]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010001111000100001000111100110100010000100011010001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	combout => \B1|Ram0~5_combout\);

-- Location: LABCELL_X44_Y3_N30
\B1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~2_combout\ = ( \B1|Ram0~5_combout\ & ( (!\B1|Ram0~4_combout\ & (!\B1|COUNT\(10) & !\B1|COUNT\(11))) # (\B1|Ram0~4_combout\ & ((!\B1|COUNT\(10)) # (!\B1|COUNT\(11)))) ) ) # ( !\B1|Ram0~5_combout\ & ( (\B1|Ram0~4_combout\ & !\B1|COUNT\(11)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011110011001100001111001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_Ram0~4_combout\,
	datac => \B1|ALT_INV_COUNT\(10),
	datad => \B1|ALT_INV_COUNT\(11),
	dataf => \B1|ALT_INV_Ram0~5_combout\,
	combout => \B1|LessThan0~2_combout\);

-- Location: LABCELL_X43_Y3_N36
\B1|Ram0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~7_combout\ = ( \C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[2]~5_combout\ & (((\C0|SCALE_SWOUT[4]~4_combout\ & \C0|SCALE_SWOUT[0]~6_combout\)) # (\C0|SCALE_SWOUT[3]~2_combout\))) # (\C0|SCALE_SWOUT[2]~5_combout\ & 
-- ((!\C0|SCALE_SWOUT[0]~6_combout\ $ (\C0|SCALE_SWOUT[3]~2_combout\)))) ) ) # ( !\C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & (((\C0|SCALE_SWOUT[2]~5_combout\ & \C0|SCALE_SWOUT[3]~2_combout\)))) # (\C0|SCALE_SWOUT[0]~6_combout\ & 
-- (!\C0|SCALE_SWOUT[4]~4_combout\ $ (((!\C0|SCALE_SWOUT[3]~2_combout\) # (\C0|SCALE_SWOUT[2]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100111001000001010011100100110100110011110011010011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	combout => \B1|Ram0~7_combout\);

-- Location: LABCELL_X43_Y3_N39
\B1|Ram0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~6_combout\ = ( \C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & (!\C0|SCALE_SWOUT[4]~4_combout\ $ (((!\C0|SCALE_SWOUT[3]~2_combout\))))) # (\C0|SCALE_SWOUT[0]~6_combout\ & ((!\C0|SCALE_SWOUT[2]~5_combout\ & 
-- ((\C0|SCALE_SWOUT[3]~2_combout\))) # (\C0|SCALE_SWOUT[2]~5_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\)))) ) ) # ( !\C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & (((!\C0|SCALE_SWOUT[2]~5_combout\ & \C0|SCALE_SWOUT[3]~2_combout\)))) # 
-- (\C0|SCALE_SWOUT[0]~6_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\ & ((!\C0|SCALE_SWOUT[3]~2_combout\) # (\C0|SCALE_SWOUT[2]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010001000011000101000101011010000111010101101000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	combout => \B1|Ram0~6_combout\);

-- Location: LABCELL_X43_Y3_N45
\B1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~0_combout\ = ( \B1|Ram0~6_combout\ & ( (\B1|COUNT\(13) & (!\B1|COUNT\(12) $ (\B1|Ram0~7_combout\))) ) ) # ( !\B1|Ram0~6_combout\ & ( (!\B1|COUNT\(13) & (!\B1|COUNT\(12) $ (\B1|Ram0~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(12),
	datac => \B1|ALT_INV_COUNT\(13),
	datad => \B1|ALT_INV_Ram0~7_combout\,
	dataf => \B1|ALT_INV_Ram0~6_combout\,
	combout => \B1|Equal0~0_combout\);

-- Location: LABCELL_X44_Y3_N39
\B1|Ram0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~18_combout\ = ( \S0|WideNor0~0_combout\ & ( (\S0|WideOr0~0_combout\ & (\S0|WideOr1~1_combout\ & ((!\S0|WideOr3~0_combout\) # (\C0|SCALE_SWOUT[0]~1_combout\)))) ) ) # ( !\S0|WideNor0~0_combout\ & ( (\S0|WideOr0~0_combout\ & (\S0|WideOr1~1_combout\ 
-- & ((!\S0|WideOr3~0_combout\) # (!\C0|SCALE_SWOUT[0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000000100010001000000010000000100010001000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr0~0_combout\,
	datab => \S0|ALT_INV_WideOr1~1_combout\,
	datac => \S0|ALT_INV_WideOr3~0_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[0]~1_combout\,
	dataf => \S0|ALT_INV_WideNor0~0_combout\,
	combout => \B1|Ram0~18_combout\);

-- Location: LABCELL_X43_Y3_N0
\B1|Ram0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~0_combout\ = ( \U3|SCALE\(3) & ( \C0|SCALE_SWOUT[2]~5_combout\ & ( (\B1|Ram0~18_combout\ & !\U1|SW_FF~q\) ) ) ) # ( !\U3|SCALE\(3) & ( \C0|SCALE_SWOUT[2]~5_combout\ & ( (!\U1|SW_FF~q\ & (((\B1|Ram0~18_combout\)))) # (\U1|SW_FF~q\ & 
-- (!\U3|SCALE\(0) $ (((!\U3|SCALE\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110101001110100011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_SCALE\(0),
	datab => \B1|ALT_INV_Ram0~18_combout\,
	datac => \U1|ALT_INV_SW_FF~q\,
	datad => \U3|ALT_INV_SCALE\(1),
	datae => \U3|ALT_INV_SCALE\(3),
	dataf => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	combout => \B1|Ram0~0_combout\);

-- Location: LABCELL_X43_Y3_N6
\B1|Ram0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~19_combout\ = ( \C0|SCALE_SWOUT[0]~1_combout\ & ( \C0|SCALE_SWOUT[2]~5_combout\ & ( (\S0|WideOr1~1_combout\ & (\S0|WideOr0~0_combout\ & ((!\S0|WideOr3~0_combout\) # (\S0|WideNor0~0_combout\)))) ) ) ) # ( !\C0|SCALE_SWOUT[0]~1_combout\ & ( 
-- \C0|SCALE_SWOUT[2]~5_combout\ & ( (\S0|WideOr1~1_combout\ & \S0|WideOr0~0_combout\) ) ) ) # ( \C0|SCALE_SWOUT[0]~1_combout\ & ( !\C0|SCALE_SWOUT[2]~5_combout\ & ( (\S0|WideOr3~0_combout\ & (!\S0|WideNor0~0_combout\ & ((!\S0|WideOr1~1_combout\) # 
-- (!\S0|WideOr0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000010000000000000010101010000000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S0|ALT_INV_WideOr1~1_combout\,
	datab => \S0|ALT_INV_WideOr3~0_combout\,
	datac => \S0|ALT_INV_WideNor0~0_combout\,
	datad => \S0|ALT_INV_WideOr0~0_combout\,
	datae => \C0|ALT_INV_SCALE_SWOUT[0]~1_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	combout => \B1|Ram0~19_combout\);

-- Location: LABCELL_X43_Y3_N18
\B1|Ram0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~1_combout\ = ( \U1|SW_FF~q\ & ( \B1|Ram0~19_combout\ & ( (!\U3|SCALE[3]~DUPLICATE_q\ & (\C0|SCALE_SWOUT[2]~5_combout\ & ((!\U3|SCALE\(0)) # (!\U3|SCALE\(1))))) # (\U3|SCALE[3]~DUPLICATE_q\ & (\U3|SCALE\(0) & (\U3|SCALE\(1) & 
-- !\C0|SCALE_SWOUT[2]~5_combout\))) ) ) ) # ( !\U1|SW_FF~q\ & ( \B1|Ram0~19_combout\ ) ) # ( \U1|SW_FF~q\ & ( !\B1|Ram0~19_combout\ & ( (!\U3|SCALE[3]~DUPLICATE_q\ & (\C0|SCALE_SWOUT[2]~5_combout\ & ((!\U3|SCALE\(0)) # (!\U3|SCALE\(1))))) # 
-- (\U3|SCALE[3]~DUPLICATE_q\ & (\U3|SCALE\(0) & (\U3|SCALE\(1) & !\C0|SCALE_SWOUT[2]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011110000011111111111111110000000111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_SCALE\(0),
	datab => \U3|ALT_INV_SCALE\(1),
	datac => \U3|ALT_INV_SCALE[3]~DUPLICATE_q\,
	datad => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datae => \U1|ALT_INV_SW_FF~q\,
	dataf => \B1|ALT_INV_Ram0~19_combout\,
	combout => \B1|Ram0~1_combout\);

-- Location: LABCELL_X43_Y3_N51
\B1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~0_combout\ = ( \B1|Ram0~1_combout\ & ( (!\B1|COUNT\(16) & (!\B1|COUNT\(17) $ (((\C0|SCALE_SWOUT[4]~4_combout\ & \B1|Ram0~0_combout\))))) ) ) # ( !\B1|Ram0~1_combout\ & ( (!\B1|COUNT\(16) & (!\B1|COUNT\(17) & 
-- (!\C0|SCALE_SWOUT[4]~4_combout\))) # (\B1|COUNT\(16) & (\C0|SCALE_SWOUT[4]~4_combout\ & (!\B1|COUNT\(17) $ (\B1|Ram0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000001100000101000000110001000100001001000100010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(17),
	datab => \B1|ALT_INV_COUNT\(16),
	datac => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datad => \B1|ALT_INV_Ram0~0_combout\,
	dataf => \B1|ALT_INV_Ram0~1_combout\,
	combout => \B1|LessThan0~0_combout\);

-- Location: LABCELL_X43_Y3_N42
\B1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~3_combout\ = ( \B1|LessThan0~0_combout\ & ( (\B1|LessThan0~1_combout\ & (\B1|LessThan0~2_combout\ & \B1|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_LessThan0~1_combout\,
	datac => \B1|ALT_INV_LessThan0~2_combout\,
	datad => \B1|ALT_INV_Equal0~0_combout\,
	dataf => \B1|ALT_INV_LessThan0~0_combout\,
	combout => \B1|LessThan0~3_combout\);

-- Location: LABCELL_X44_Y3_N21
\B1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~4_combout\ = ( \B1|Ram0~5_combout\ & ( (\B1|COUNT\(10) & (!\B1|Ram0~4_combout\ $ (\B1|COUNT\(11)))) ) ) # ( !\B1|Ram0~5_combout\ & ( (!\B1|COUNT\(10) & (!\B1|Ram0~4_combout\ $ (\B1|COUNT\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(10),
	datac => \B1|ALT_INV_Ram0~4_combout\,
	datad => \B1|ALT_INV_COUNT\(11),
	dataf => \B1|ALT_INV_Ram0~5_combout\,
	combout => \B1|Equal0~4_combout\);

-- Location: LABCELL_X43_Y3_N24
\B1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~5_combout\ = ( \B1|LessThan0~0_combout\ & ( (\B1|LessThan0~1_combout\ & (\B1|Equal0~4_combout\ & \B1|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_LessThan0~1_combout\,
	datac => \B1|ALT_INV_Equal0~4_combout\,
	datad => \B1|ALT_INV_Equal0~0_combout\,
	dataf => \B1|ALT_INV_LessThan0~0_combout\,
	combout => \B1|Equal0~5_combout\);

-- Location: LABCELL_X43_Y3_N33
\B1|LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~13_combout\ = ( \B1|Ram0~6_combout\ & ( (!\B1|COUNT\(13)) # ((!\B1|COUNT\(12) & \B1|Ram0~7_combout\)) ) ) # ( !\B1|Ram0~6_combout\ & ( (!\B1|COUNT\(12) & (!\B1|COUNT\(13) & \B1|Ram0~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(12),
	datac => \B1|ALT_INV_COUNT\(13),
	datad => \B1|ALT_INV_Ram0~7_combout\,
	dataf => \B1|ALT_INV_Ram0~6_combout\,
	combout => \B1|LessThan0~13_combout\);

-- Location: LABCELL_X43_Y3_N48
\B1|LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~14_combout\ = ( \B1|Ram0~1_combout\ & ( (!\B1|COUNT\(17) & (\B1|Ram0~0_combout\ & \C0|SCALE_SWOUT[4]~4_combout\)) ) ) # ( !\B1|Ram0~1_combout\ & ( (\C0|SCALE_SWOUT[4]~4_combout\ & ((!\B1|COUNT\(17) & ((!\B1|COUNT\(16)) # 
-- (\B1|Ram0~0_combout\))) # (\B1|COUNT\(17) & (!\B1|COUNT\(16) & \B1|Ram0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001110000000001000111000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(17),
	datab => \B1|ALT_INV_COUNT\(16),
	datac => \B1|ALT_INV_Ram0~0_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	dataf => \B1|ALT_INV_Ram0~1_combout\,
	combout => \B1|LessThan0~14_combout\);

-- Location: LABCELL_X43_Y3_N27
\B1|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~12_combout\ = ( \B1|Ram0~2_combout\ & ( (!\B1|COUNT\(15)) # ((!\B1|COUNT\(14) & \B1|Ram0~3_combout\)) ) ) # ( !\B1|Ram0~2_combout\ & ( (!\B1|COUNT\(14) & (!\B1|COUNT\(15) & \B1|Ram0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(14),
	datac => \B1|ALT_INV_COUNT\(15),
	datad => \B1|ALT_INV_Ram0~3_combout\,
	dataf => \B1|ALT_INV_Ram0~2_combout\,
	combout => \B1|LessThan0~12_combout\);

-- Location: LABCELL_X43_Y3_N54
\B1|LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~15_combout\ = ( !\B1|LessThan0~12_combout\ & ( \B1|LessThan0~0_combout\ & ( (!\B1|LessThan0~14_combout\ & ((!\B1|LessThan0~13_combout\) # (!\B1|LessThan0~1_combout\))) ) ) ) # ( \B1|LessThan0~12_combout\ & ( !\B1|LessThan0~0_combout\ & ( 
-- !\B1|LessThan0~14_combout\ ) ) ) # ( !\B1|LessThan0~12_combout\ & ( !\B1|LessThan0~0_combout\ & ( !\B1|LessThan0~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_LessThan0~13_combout\,
	datac => \B1|ALT_INV_LessThan0~14_combout\,
	datad => \B1|ALT_INV_LessThan0~1_combout\,
	datae => \B1|ALT_INV_LessThan0~12_combout\,
	dataf => \B1|ALT_INV_LessThan0~0_combout\,
	combout => \B1|LessThan0~15_combout\);

-- Location: LABCELL_X43_Y1_N9
\B1|Ram0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~9_combout\ = ( \C0|SCALE_SWOUT[3]~2_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & (!\C0|SCALE_SWOUT[4]~4_combout\ $ (((!\C0|SCALE_SWOUT[2]~5_combout\))))) # (\C0|SCALE_SWOUT[0]~6_combout\ & (!\C0|SCALE_SWOUT[1]~3_combout\ $ 
-- (((\C0|SCALE_SWOUT[2]~5_combout\) # (\C0|SCALE_SWOUT[4]~4_combout\))))) ) ) # ( !\C0|SCALE_SWOUT[3]~2_combout\ & ( (\C0|SCALE_SWOUT[4]~4_combout\ & ((!\C0|SCALE_SWOUT[0]~6_combout\ & (!\C0|SCALE_SWOUT[1]~3_combout\ & \C0|SCALE_SWOUT[2]~5_combout\)) # 
-- (\C0|SCALE_SWOUT[0]~6_combout\ & ((!\C0|SCALE_SWOUT[2]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101000000000001010100000001011001101000110101100110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	combout => \B1|Ram0~9_combout\);

-- Location: LABCELL_X43_Y1_N6
\B1|Ram0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~8_combout\ = ( \C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\ & (!\C0|SCALE_SWOUT[1]~3_combout\ $ (!\C0|SCALE_SWOUT[0]~6_combout\)))) # (\C0|SCALE_SWOUT[4]~4_combout\ & 
-- ((!\C0|SCALE_SWOUT[1]~3_combout\ & (!\C0|SCALE_SWOUT[3]~2_combout\ $ (!\C0|SCALE_SWOUT[0]~6_combout\))) # (\C0|SCALE_SWOUT[1]~3_combout\ & (!\C0|SCALE_SWOUT[3]~2_combout\ & !\C0|SCALE_SWOUT[0]~6_combout\)))) ) ) # ( !\C0|SCALE_SWOUT[2]~5_combout\ & ( 
-- (!\C0|SCALE_SWOUT[0]~6_combout\ & (((\C0|SCALE_SWOUT[3]~2_combout\)))) # (\C0|SCALE_SWOUT[0]~6_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[1]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000100010110010010000001011001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	combout => \B1|Ram0~8_combout\);

-- Location: LABCELL_X43_Y1_N39
\B1|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~10_combout\ = ( \B1|Ram0~8_combout\ & ( (!\B1|COUNT\(9)) # ((\B1|Ram0~9_combout\ & !\B1|COUNT\(8))) ) ) # ( !\B1|Ram0~8_combout\ & ( (!\B1|COUNT\(9) & (\B1|Ram0~9_combout\ & !\B1|COUNT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011001111110011001100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(9),
	datac => \B1|ALT_INV_Ram0~9_combout\,
	datad => \B1|ALT_INV_COUNT\(8),
	dataf => \B1|ALT_INV_Ram0~8_combout\,
	combout => \B1|LessThan0~10_combout\);

-- Location: LABCELL_X43_Y1_N33
\B1|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~4_combout\ = ( \B1|Ram0~8_combout\ & ( (\B1|COUNT\(9) & (!\B1|Ram0~9_combout\ $ (\B1|COUNT\(8)))) ) ) # ( !\B1|Ram0~8_combout\ & ( (!\B1|COUNT\(9) & (!\B1|Ram0~9_combout\ $ (\B1|COUNT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(9),
	datac => \B1|ALT_INV_Ram0~9_combout\,
	datad => \B1|ALT_INV_COUNT\(8),
	dataf => \B1|ALT_INV_Ram0~8_combout\,
	combout => \B1|LessThan0~4_combout\);

-- Location: LABCELL_X44_Y1_N0
\B1|Ram0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~17_combout\ = ( \C0|SCALE_SWOUT[0]~6_combout\ & ( \C0|SCALE_SWOUT[2]~5_combout\ & ( (\C0|SCALE_SWOUT[3]~2_combout\ & ((!\C0|SCALE_SWOUT[4]~4_combout\) # (\C0|SCALE_SWOUT[1]~3_combout\))) ) ) ) # ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( 
-- \C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[1]~3_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\)) # (\C0|SCALE_SWOUT[1]~3_combout\ & ((!\C0|SCALE_SWOUT[4]~4_combout\))) ) ) ) # ( \C0|SCALE_SWOUT[0]~6_combout\ & ( !\C0|SCALE_SWOUT[2]~5_combout\ & ( 
-- (\C0|SCALE_SWOUT[4]~4_combout\ & (!\C0|SCALE_SWOUT[1]~3_combout\ $ (!\C0|SCALE_SWOUT[3]~2_combout\))) ) ) ) # ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( !\C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\ & (\C0|SCALE_SWOUT[1]~3_combout\ & 
-- \C0|SCALE_SWOUT[4]~4_combout\)) # (\C0|SCALE_SWOUT[3]~2_combout\ & ((!\C0|SCALE_SWOUT[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010000000000000101101001011111000010100000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datae => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	combout => \B1|Ram0~17_combout\);

-- Location: LABCELL_X43_Y1_N42
\B1|Ram0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~16_combout\ = ( \C0|SCALE_SWOUT[3]~2_combout\ & ( (!\C0|SCALE_SWOUT[1]~3_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\ & ((!\C0|SCALE_SWOUT[2]~5_combout\) # (!\C0|SCALE_SWOUT[0]~6_combout\)))) # (\C0|SCALE_SWOUT[1]~3_combout\ & 
-- (!\C0|SCALE_SWOUT[0]~6_combout\ $ (((\C0|SCALE_SWOUT[4]~4_combout\) # (\C0|SCALE_SWOUT[2]~5_combout\))))) ) ) # ( !\C0|SCALE_SWOUT[3]~2_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & ((!\C0|SCALE_SWOUT[2]~5_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\ & 
-- !\C0|SCALE_SWOUT[1]~3_combout\)) # (\C0|SCALE_SWOUT[2]~5_combout\ & ((\C0|SCALE_SWOUT[1]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000100000010000100010000001110100100110000111010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	combout => \B1|Ram0~16_combout\);

-- Location: LABCELL_X43_Y1_N30
\B1|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~9_combout\ = ( \B1|Ram0~16_combout\ & ( (!\B1|COUNT\(5)) # ((!\B1|COUNT\(4) & \B1|Ram0~17_combout\)) ) ) # ( !\B1|Ram0~16_combout\ & ( (!\B1|COUNT\(4) & (!\B1|COUNT\(5) & \B1|Ram0~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011110000111111001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(4),
	datac => \B1|ALT_INV_COUNT\(5),
	datad => \B1|ALT_INV_Ram0~17_combout\,
	dataf => \B1|ALT_INV_Ram0~16_combout\,
	combout => \B1|LessThan0~9_combout\);

-- Location: LABCELL_X43_Y1_N48
\B1|Ram0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~11_combout\ = ( \C0|SCALE_SWOUT[0]~6_combout\ & ( (!\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[1]~3_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\))) # (\C0|SCALE_SWOUT[4]~4_combout\ & ((!\C0|SCALE_SWOUT[2]~5_combout\) # 
-- ((!\C0|SCALE_SWOUT[1]~3_combout\ & \C0|SCALE_SWOUT[3]~2_combout\)))) ) ) # ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( (!\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\ & (!\C0|SCALE_SWOUT[1]~3_combout\ $ (\C0|SCALE_SWOUT[2]~5_combout\)))) # 
-- (\C0|SCALE_SWOUT[4]~4_combout\ & ((!\C0|SCALE_SWOUT[1]~3_combout\ & (!\C0|SCALE_SWOUT[3]~2_combout\ & \C0|SCALE_SWOUT[2]~5_combout\)) # (\C0|SCALE_SWOUT[1]~3_combout\ & ((!\C0|SCALE_SWOUT[2]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100101000010000110010100001001010111000001100101011100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	combout => \B1|Ram0~11_combout\);

-- Location: LABCELL_X43_Y1_N51
\B1|Ram0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~10_combout\ = ( \C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[1]~3_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\ & ((!\C0|SCALE_SWOUT[0]~6_combout\) # (\C0|SCALE_SWOUT[4]~4_combout\)))) # (\C0|SCALE_SWOUT[1]~3_combout\ & 
-- (\C0|SCALE_SWOUT[0]~6_combout\ & (!\C0|SCALE_SWOUT[4]~4_combout\ $ (!\C0|SCALE_SWOUT[3]~2_combout\)))) ) ) # ( !\C0|SCALE_SWOUT[2]~5_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & ((!\C0|SCALE_SWOUT[3]~2_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\)) # 
-- (\C0|SCALE_SWOUT[3]~2_combout\ & ((\C0|SCALE_SWOUT[1]~3_combout\))))) # (\C0|SCALE_SWOUT[0]~6_combout\ & (\C0|SCALE_SWOUT[4]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110101010101010011010100000001110001100000000111000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	combout => \B1|Ram0~10_combout\);

-- Location: LABCELL_X43_Y1_N36
\B1|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~8_combout\ = ( \B1|Ram0~10_combout\ & ( (!\B1|COUNT\(7)) # ((!\B1|COUNT\(6) & \B1|Ram0~11_combout\)) ) ) # ( !\B1|Ram0~10_combout\ & ( (!\B1|COUNT\(6) & (\B1|Ram0~11_combout\ & !\B1|COUNT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(6),
	datac => \B1|ALT_INV_Ram0~11_combout\,
	datad => \B1|ALT_INV_COUNT\(7),
	dataf => \B1|ALT_INV_Ram0~10_combout\,
	combout => \B1|LessThan0~8_combout\);

-- Location: LABCELL_X43_Y1_N24
\B1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~1_combout\ = ( \B1|Ram0~10_combout\ & ( (\B1|COUNT\(7) & (!\B1|COUNT\(6) $ (\B1|Ram0~11_combout\))) ) ) # ( !\B1|Ram0~10_combout\ & ( (!\B1|COUNT\(7) & (!\B1|COUNT\(6) $ (\B1|Ram0~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(6),
	datac => \B1|ALT_INV_Ram0~11_combout\,
	datad => \B1|ALT_INV_COUNT\(7),
	dataf => \B1|ALT_INV_Ram0~10_combout\,
	combout => \B1|Equal0~1_combout\);

-- Location: LABCELL_X43_Y1_N0
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

-- Location: LABCELL_X43_Y1_N15
\B1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~3_combout\ = ( \B1|Ram0~16_combout\ & ( (\B1|COUNT\(5) & (!\B1|COUNT\(4) $ (\B1|Ram0~17_combout\))) ) ) # ( !\B1|Ram0~16_combout\ & ( (!\B1|COUNT\(5) & (!\B1|COUNT\(4) $ (\B1|Ram0~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(5),
	datac => \B1|ALT_INV_COUNT\(4),
	datad => \B1|ALT_INV_Ram0~17_combout\,
	dataf => \B1|ALT_INV_Ram0~16_combout\,
	combout => \B1|Equal0~3_combout\);

-- Location: LABCELL_X44_Y1_N21
\B1|Ram0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~14_combout\ = ( \C0|SCALE_SWOUT[0]~6_combout\ & ( \C0|SCALE_SWOUT[1]~3_combout\ & ( (\C0|SCALE_SWOUT[4]~4_combout\ & \C0|SCALE_SWOUT[2]~5_combout\) ) ) ) # ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( \C0|SCALE_SWOUT[1]~3_combout\ & ( 
-- (!\C0|SCALE_SWOUT[4]~4_combout\ & (!\C0|SCALE_SWOUT[2]~5_combout\ & \C0|SCALE_SWOUT[3]~2_combout\)) # (\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[2]~5_combout\ & !\C0|SCALE_SWOUT[3]~2_combout\)) ) ) ) # ( \C0|SCALE_SWOUT[0]~6_combout\ & ( 
-- !\C0|SCALE_SWOUT[1]~3_combout\ & ( (\C0|SCALE_SWOUT[4]~4_combout\ & \C0|SCALE_SWOUT[3]~2_combout\) ) ) ) # ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( !\C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[4]~4_combout\ & (!\C0|SCALE_SWOUT[2]~5_combout\ & 
-- \C0|SCALE_SWOUT[3]~2_combout\)) # (\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[2]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000000011001100000011110000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datae => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	combout => \B1|Ram0~14_combout\);

-- Location: LABCELL_X44_Y3_N45
\B1|Ram0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~15_combout\ = ( \C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[2]~5_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\ & ((\C0|SCALE_SWOUT[0]~6_combout\) # (\C0|SCALE_SWOUT[4]~4_combout\)))) # (\C0|SCALE_SWOUT[2]~5_combout\ & 
-- (\C0|SCALE_SWOUT[4]~4_combout\ & (\C0|SCALE_SWOUT[0]~6_combout\))) ) ) # ( !\C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & (!\C0|SCALE_SWOUT[4]~4_combout\ $ (((!\C0|SCALE_SWOUT[3]~2_combout\) # (\C0|SCALE_SWOUT[2]~5_combout\))))) # 
-- (\C0|SCALE_SWOUT[0]~6_combout\ & (\C0|SCALE_SWOUT[2]~5_combout\ & ((\C0|SCALE_SWOUT[3]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010010101001100001001010100000001001010110000000100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	combout => \B1|Ram0~15_combout\);

-- Location: LABCELL_X43_Y1_N27
\B1|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~6_combout\ = ( \B1|Ram0~15_combout\ & ( (!\B1|COUNT\(3) & ((!\B1|COUNT\(2)) # (\B1|Ram0~14_combout\))) # (\B1|COUNT\(3) & (!\B1|COUNT\(2) & \B1|Ram0~14_combout\)) ) ) # ( !\B1|Ram0~15_combout\ & ( (!\B1|COUNT\(3) & \B1|Ram0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010100000111110101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(3),
	datac => \B1|ALT_INV_COUNT\(2),
	datad => \B1|ALT_INV_Ram0~14_combout\,
	dataf => \B1|ALT_INV_Ram0~15_combout\,
	combout => \B1|LessThan0~6_combout\);

-- Location: LABCELL_X43_Y1_N54
\B1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~2_combout\ = ( \B1|Ram0~14_combout\ & ( \B1|Ram0~15_combout\ & ( (\B1|COUNT\(3) & \B1|COUNT\(2)) ) ) ) # ( !\B1|Ram0~14_combout\ & ( \B1|Ram0~15_combout\ & ( (!\B1|COUNT\(3) & \B1|COUNT\(2)) ) ) ) # ( \B1|Ram0~14_combout\ & ( 
-- !\B1|Ram0~15_combout\ & ( (\B1|COUNT\(3) & !\B1|COUNT\(2)) ) ) ) # ( !\B1|Ram0~14_combout\ & ( !\B1|Ram0~15_combout\ & ( (!\B1|COUNT\(3) & !\B1|COUNT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000011110000000000000000111100000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(3),
	datad => \B1|ALT_INV_COUNT\(2),
	datae => \B1|ALT_INV_Ram0~14_combout\,
	dataf => \B1|ALT_INV_Ram0~15_combout\,
	combout => \B1|Equal0~2_combout\);

-- Location: LABCELL_X44_Y3_N0
\B1|Ram0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~13_combout\ = ( \C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[4]~4_combout\ & (!\C0|SCALE_SWOUT[0]~6_combout\ & (!\C0|SCALE_SWOUT[2]~5_combout\ & \C0|SCALE_SWOUT[3]~2_combout\))) # (\C0|SCALE_SWOUT[4]~4_combout\ & 
-- (!\C0|SCALE_SWOUT[3]~2_combout\ & ((!\C0|SCALE_SWOUT[0]~6_combout\) # (!\C0|SCALE_SWOUT[2]~5_combout\)))) ) ) # ( !\C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[0]~6_combout\ & (\C0|SCALE_SWOUT[3]~2_combout\ & (!\C0|SCALE_SWOUT[2]~5_combout\ $ 
-- (\C0|SCALE_SWOUT[4]~4_combout\)))) # (\C0|SCALE_SWOUT[0]~6_combout\ & (\C0|SCALE_SWOUT[2]~5_combout\ & ((\C0|SCALE_SWOUT[3]~2_combout\) # (\C0|SCALE_SWOUT[4]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110010011000000011001001100001110100000000000111010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	datab => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	combout => \B1|Ram0~13_combout\);

-- Location: MLABCELL_X45_Y3_N0
\B1|Ram0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Ram0~12_combout\ = ( \C0|SCALE_SWOUT[0]~6_combout\ & ( \C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[4]~4_combout\) # ((\C0|SCALE_SWOUT[3]~2_combout\ & \C0|SCALE_SWOUT[2]~5_combout\)) ) ) ) # ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( 
-- \C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[3]~2_combout\ & (!\C0|SCALE_SWOUT[2]~5_combout\)) # (\C0|SCALE_SWOUT[3]~2_combout\ & (\C0|SCALE_SWOUT[2]~5_combout\ & \C0|SCALE_SWOUT[4]~4_combout\)) ) ) ) # ( \C0|SCALE_SWOUT[0]~6_combout\ & ( 
-- !\C0|SCALE_SWOUT[1]~3_combout\ & ( (!\C0|SCALE_SWOUT[4]~4_combout\ & (!\C0|SCALE_SWOUT[3]~2_combout\)) # (\C0|SCALE_SWOUT[4]~4_combout\ & ((!\C0|SCALE_SWOUT[2]~5_combout\))) ) ) ) # ( !\C0|SCALE_SWOUT[0]~6_combout\ & ( !\C0|SCALE_SWOUT[1]~3_combout\ & ( 
-- (!\C0|SCALE_SWOUT[3]~2_combout\ & ((!\C0|SCALE_SWOUT[2]~5_combout\) # (!\C0|SCALE_SWOUT[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101111000010100000101001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_SCALE_SWOUT[3]~2_combout\,
	datac => \C0|ALT_INV_SCALE_SWOUT[2]~5_combout\,
	datad => \C0|ALT_INV_SCALE_SWOUT[4]~4_combout\,
	datae => \C0|ALT_INV_SCALE_SWOUT[0]~6_combout\,
	dataf => \C0|ALT_INV_SCALE_SWOUT[1]~3_combout\,
	combout => \B1|Ram0~12_combout\);

-- Location: LABCELL_X43_Y1_N12
\B1|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~5_combout\ = ( \B1|Ram0~12_combout\ & ( (!\B1|COUNT\(1)) # ((!\B1|COUNT\(0) & \B1|Ram0~13_combout\)) ) ) # ( !\B1|Ram0~12_combout\ & ( (!\B1|COUNT\(0) & (!\B1|COUNT\(1) & \B1|Ram0~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011110000111111001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(0),
	datac => \B1|ALT_INV_COUNT\(1),
	datad => \B1|ALT_INV_Ram0~13_combout\,
	dataf => \B1|ALT_INV_Ram0~12_combout\,
	combout => \B1|LessThan0~5_combout\);

-- Location: LABCELL_X43_Y1_N18
\B1|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|LessThan0~7_combout\ = ( \B1|Equal0~2_combout\ & ( \B1|LessThan0~5_combout\ & ( (\B1|Equal0~1_combout\ & (\B1|Equal0~3_combout\ & \B1|LessThan0~4_combout\)) ) ) ) # ( !\B1|Equal0~2_combout\ & ( \B1|LessThan0~5_combout\ & ( (\B1|Equal0~1_combout\ & 
-- (\B1|Equal0~3_combout\ & (\B1|LessThan0~4_combout\ & \B1|LessThan0~6_combout\))) ) ) ) # ( \B1|Equal0~2_combout\ & ( !\B1|LessThan0~5_combout\ & ( (\B1|Equal0~1_combout\ & (\B1|Equal0~3_combout\ & (\B1|LessThan0~4_combout\ & \B1|LessThan0~6_combout\))) ) 
-- ) ) # ( !\B1|Equal0~2_combout\ & ( !\B1|LessThan0~5_combout\ & ( (\B1|Equal0~1_combout\ & (\B1|Equal0~3_combout\ & (\B1|LessThan0~4_combout\ & \B1|LessThan0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Equal0~1_combout\,
	datab => \B1|ALT_INV_Equal0~3_combout\,
	datac => \B1|ALT_INV_LessThan0~4_combout\,
	datad => \B1|ALT_INV_LessThan0~6_combout\,
	datae => \B1|ALT_INV_Equal0~2_combout\,
	dataf => \B1|ALT_INV_LessThan0~5_combout\,
	combout => \B1|LessThan0~7_combout\);

-- Location: MLABCELL_X42_Y3_N48
\B1|BEEPOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|BEEPOUT~1_combout\ = ( \B1|LessThan0~11_combout\ & ( \B1|LessThan0~7_combout\ & ( (!\B1|BEEPOUT~2_combout\) # ((!\B1|LessThan0~3_combout\ & (!\B1|Equal0~5_combout\ & \B1|LessThan0~15_combout\))) ) ) ) # ( !\B1|LessThan0~11_combout\ & ( 
-- \B1|LessThan0~7_combout\ & ( (!\B1|BEEPOUT~2_combout\) # ((!\B1|LessThan0~3_combout\ & (!\B1|Equal0~5_combout\ & \B1|LessThan0~15_combout\))) ) ) ) # ( \B1|LessThan0~11_combout\ & ( !\B1|LessThan0~7_combout\ & ( (!\B1|BEEPOUT~2_combout\) # 
-- ((!\B1|LessThan0~3_combout\ & \B1|LessThan0~15_combout\)) ) ) ) # ( !\B1|LessThan0~11_combout\ & ( !\B1|LessThan0~7_combout\ & ( (!\B1|BEEPOUT~2_combout\) # ((!\B1|LessThan0~3_combout\ & (!\B1|Equal0~5_combout\ & \B1|LessThan0~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011101010101010101110111010101010111010101010101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_BEEPOUT~2_combout\,
	datab => \B1|ALT_INV_LessThan0~3_combout\,
	datac => \B1|ALT_INV_Equal0~5_combout\,
	datad => \B1|ALT_INV_LessThan0~15_combout\,
	datae => \B1|ALT_INV_LessThan0~11_combout\,
	dataf => \B1|ALT_INV_LessThan0~7_combout\,
	combout => \B1|BEEPOUT~1_combout\);

-- Location: MLABCELL_X42_Y2_N42
\B1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~81_sumout\ = SUM(( \B1|COUNT\(24) ) + ( GND ) + ( \B1|Add0~86\ ))
-- \B1|Add0~82\ = CARRY(( \B1|COUNT\(24) ) + ( GND ) + ( \B1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(24),
	cin => \B1|Add0~86\,
	sumout => \B1|Add0~81_sumout\,
	cout => \B1|Add0~82\);

-- Location: MLABCELL_X42_Y2_N45
\B1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~77_sumout\ = SUM(( \B1|COUNT\(25) ) + ( GND ) + ( \B1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(25),
	cin => \B1|Add0~82\,
	sumout => \B1|Add0~77_sumout\);

-- Location: FF_X42_Y2_N47
\B1|COUNT[25]\ : dffeas
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(25));

-- Location: MLABCELL_X42_Y2_N51
\B1|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~6_combout\ = ( !\B1|COUNT\(22) & ( !\B1|COUNT\(21) & ( (!\B1|COUNT\(20) & (!\B1|COUNT\(23) & !\B1|COUNT\(19))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(20),
	datac => \B1|ALT_INV_COUNT\(23),
	datad => \B1|ALT_INV_COUNT\(19),
	datae => \B1|ALT_INV_COUNT\(22),
	dataf => \B1|ALT_INV_COUNT\(21),
	combout => \B1|Equal0~6_combout\);

-- Location: LABCELL_X43_Y3_N12
\B1|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~9_combout\ = ( \B1|Ram0~13_combout\ & ( \B1|Equal0~6_combout\ & ( (\B1|COUNT\(0) & (!\B1|COUNT\(24) & (!\B1|COUNT\(25) & !\B1|COUNT\(18)))) ) ) ) # ( !\B1|Ram0~13_combout\ & ( \B1|Equal0~6_combout\ & ( (!\B1|COUNT\(0) & (!\B1|COUNT\(24) & 
-- (!\B1|COUNT\(25) & !\B1|COUNT\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(0),
	datab => \B1|ALT_INV_COUNT\(24),
	datac => \B1|ALT_INV_COUNT\(25),
	datad => \B1|ALT_INV_COUNT\(18),
	datae => \B1|ALT_INV_Ram0~13_combout\,
	dataf => \B1|ALT_INV_Equal0~6_combout\,
	combout => \B1|Equal0~9_combout\);

-- Location: LABCELL_X43_Y1_N45
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

-- Location: MLABCELL_X42_Y3_N39
\B1|Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~10_combout\ = ( \B1|Equal0~2_combout\ & ( \B1|Equal0~8_combout\ & ( (\B1|Equal0~9_combout\ & (\B1|Equal0~5_combout\ & (!\B1|Ram0~12_combout\ $ (\B1|COUNT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_Ram0~12_combout\,
	datab => \B1|ALT_INV_Equal0~9_combout\,
	datac => \B1|ALT_INV_Equal0~5_combout\,
	datad => \B1|ALT_INV_COUNT\(1),
	datae => \B1|ALT_INV_Equal0~2_combout\,
	dataf => \B1|ALT_INV_Equal0~8_combout\,
	combout => \B1|Equal0~10_combout\);

-- Location: MLABCELL_X42_Y3_N33
\B1|COUNT[23]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|COUNT[23]~0_combout\ = ( \B1|Equal0~10_combout\ ) # ( !\B1|Equal0~10_combout\ & ( (!\C0|ENABLE~0_combout\) # (\B1|LessThan0~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_LessThan0~16_combout\,
	datad => \C0|ALT_INV_ENABLE~0_combout\,
	dataf => \B1|ALT_INV_Equal0~10_combout\,
	combout => \B1|COUNT[23]~0_combout\);

-- Location: FF_X42_Y3_N50
\B1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~53_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	sload => VCC,
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(0));

-- Location: MLABCELL_X42_Y3_N3
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

-- Location: FF_X42_Y3_N5
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(1));

-- Location: MLABCELL_X42_Y3_N6
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

-- Location: FF_X42_Y3_N8
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(2));

-- Location: MLABCELL_X42_Y3_N9
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

-- Location: FF_X42_Y3_N11
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(3));

-- Location: MLABCELL_X42_Y3_N12
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

-- Location: FF_X42_Y3_N14
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(4));

-- Location: MLABCELL_X42_Y3_N15
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

-- Location: FF_X42_Y3_N17
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(5));

-- Location: MLABCELL_X42_Y3_N18
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

-- Location: FF_X42_Y3_N20
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(6));

-- Location: MLABCELL_X42_Y3_N21
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

-- Location: FF_X42_Y3_N23
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(7));

-- Location: MLABCELL_X42_Y3_N24
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

-- Location: FF_X42_Y3_N26
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(8));

-- Location: MLABCELL_X42_Y3_N27
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

-- Location: FF_X42_Y3_N29
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(9));

-- Location: MLABCELL_X42_Y2_N0
\B1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~21_sumout\ = SUM(( \B1|COUNT\(10) ) + ( GND ) + ( \B1|Add0~34\ ))
-- \B1|Add0~22\ = CARRY(( \B1|COUNT\(10) ) + ( GND ) + ( \B1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(10),
	cin => \B1|Add0~34\,
	sumout => \B1|Add0~21_sumout\,
	cout => \B1|Add0~22\);

-- Location: FF_X42_Y3_N47
\B1|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~21_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	sload => VCC,
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(10));

-- Location: MLABCELL_X42_Y2_N3
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

-- Location: FF_X42_Y2_N5
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(11));

-- Location: MLABCELL_X42_Y2_N6
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

-- Location: FF_X42_Y2_N8
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(12));

-- Location: MLABCELL_X42_Y2_N9
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

-- Location: FF_X42_Y2_N11
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(13));

-- Location: MLABCELL_X42_Y2_N12
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

-- Location: FF_X42_Y2_N14
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(14));

-- Location: MLABCELL_X42_Y2_N15
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

-- Location: FF_X42_Y2_N17
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
	sclr => \B1|BEEPOUT~1_combout\,
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(15));

-- Location: MLABCELL_X42_Y2_N18
\B1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~5_sumout\ = SUM(( \B1|COUNT\(16) ) + ( GND ) + ( \B1|Add0~10\ ))
-- \B1|Add0~6\ = CARRY(( \B1|COUNT\(16) ) + ( GND ) + ( \B1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(16),
	cin => \B1|Add0~10\,
	sumout => \B1|Add0~5_sumout\,
	cout => \B1|Add0~6\);

-- Location: FF_X42_Y3_N53
\B1|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~5_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	sload => VCC,
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(16));

-- Location: MLABCELL_X42_Y2_N21
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

-- Location: FF_X42_Y3_N38
\B1|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \B1|Add0~1_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \B1|BEEPOUT~1_combout\,
	sload => VCC,
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(17));

-- Location: MLABCELL_X42_Y2_N24
\B1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~73_sumout\ = SUM(( \B1|COUNT\(18) ) + ( GND ) + ( \B1|Add0~2\ ))
-- \B1|Add0~74\ = CARRY(( \B1|COUNT\(18) ) + ( GND ) + ( \B1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(18),
	cin => \B1|Add0~2\,
	sumout => \B1|Add0~73_sumout\,
	cout => \B1|Add0~74\);

-- Location: FF_X42_Y2_N26
\B1|COUNT[18]\ : dffeas
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(18));

-- Location: MLABCELL_X42_Y2_N27
\B1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~101_sumout\ = SUM(( \B1|COUNT\(19) ) + ( GND ) + ( \B1|Add0~74\ ))
-- \B1|Add0~102\ = CARRY(( \B1|COUNT\(19) ) + ( GND ) + ( \B1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \B1|ALT_INV_COUNT\(19),
	cin => \B1|Add0~74\,
	sumout => \B1|Add0~101_sumout\,
	cout => \B1|Add0~102\);

-- Location: FF_X42_Y2_N29
\B1|COUNT[19]\ : dffeas
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(19));

-- Location: MLABCELL_X42_Y2_N30
\B1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~97_sumout\ = SUM(( \B1|COUNT\(20) ) + ( GND ) + ( \B1|Add0~102\ ))
-- \B1|Add0~98\ = CARRY(( \B1|COUNT\(20) ) + ( GND ) + ( \B1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(20),
	cin => \B1|Add0~102\,
	sumout => \B1|Add0~97_sumout\,
	cout => \B1|Add0~98\);

-- Location: FF_X42_Y2_N32
\B1|COUNT[20]\ : dffeas
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(20));

-- Location: MLABCELL_X42_Y2_N33
\B1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~93_sumout\ = SUM(( \B1|COUNT\(21) ) + ( GND ) + ( \B1|Add0~98\ ))
-- \B1|Add0~94\ = CARRY(( \B1|COUNT\(21) ) + ( GND ) + ( \B1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B1|ALT_INV_COUNT\(21),
	cin => \B1|Add0~98\,
	sumout => \B1|Add0~93_sumout\,
	cout => \B1|Add0~94\);

-- Location: FF_X42_Y2_N35
\B1|COUNT[21]\ : dffeas
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(21));

-- Location: MLABCELL_X42_Y2_N36
\B1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~89_sumout\ = SUM(( \B1|COUNT\(22) ) + ( GND ) + ( \B1|Add0~94\ ))
-- \B1|Add0~90\ = CARRY(( \B1|COUNT\(22) ) + ( GND ) + ( \B1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(22),
	cin => \B1|Add0~94\,
	sumout => \B1|Add0~89_sumout\,
	cout => \B1|Add0~90\);

-- Location: FF_X42_Y2_N38
\B1|COUNT[22]\ : dffeas
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(22));

-- Location: MLABCELL_X42_Y2_N39
\B1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Add0~85_sumout\ = SUM(( \B1|COUNT\(23) ) + ( GND ) + ( \B1|Add0~90\ ))
-- \B1|Add0~86\ = CARRY(( \B1|COUNT\(23) ) + ( GND ) + ( \B1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \B1|ALT_INV_COUNT\(23),
	cin => \B1|Add0~90\,
	sumout => \B1|Add0~85_sumout\,
	cout => \B1|Add0~86\);

-- Location: FF_X42_Y2_N41
\B1|COUNT[23]\ : dffeas
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(23));

-- Location: FF_X42_Y2_N44
\B1|COUNT[24]\ : dffeas
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
	ena => \B1|COUNT[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|COUNT\(24));

-- Location: MLABCELL_X42_Y2_N54
\B1|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|Equal0~7_combout\ = ( !\B1|COUNT\(25) & ( \B1|Equal0~6_combout\ & ( (!\B1|COUNT\(24) & !\B1|COUNT\(18)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \B1|ALT_INV_COUNT\(24),
	datac => \B1|ALT_INV_COUNT\(18),
	datae => \B1|ALT_INV_COUNT\(25),
	dataf => \B1|ALT_INV_Equal0~6_combout\,
	combout => \B1|Equal0~7_combout\);

-- Location: MLABCELL_X42_Y3_N42
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

-- Location: MLABCELL_X42_Y3_N54
\B1|FLAG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|FLAG~0_combout\ = ( \B1|Equal0~10_combout\ & ( (!\RESETN~input_o\ & (((\B1|FLAG~q\)))) # (\RESETN~input_o\ & (\C0|ENABLE~0_combout\ & (!\B1|LessThan0~16_combout\ $ (\B1|FLAG~q\)))) ) ) # ( !\B1|Equal0~10_combout\ & ( (\B1|FLAG~q\ & 
-- ((!\RESETN~input_o\) # (\C0|ENABLE~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100000100111100010000010011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_ENABLE~0_combout\,
	datab => \B1|ALT_INV_LessThan0~16_combout\,
	datac => \ALT_INV_RESETN~input_o\,
	datad => \B1|ALT_INV_FLAG~q\,
	dataf => \B1|ALT_INV_Equal0~10_combout\,
	combout => \B1|FLAG~0_combout\);

-- Location: FF_X42_Y3_N56
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

-- Location: MLABCELL_X42_Y3_N30
\B1|BEEPOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B1|BEEPOUT~0_combout\ = ( \B1|Equal0~10_combout\ & ( (!\C0|ENABLE~0_combout\ & (((\B1|BEEPOUT~q\)))) # (\C0|ENABLE~0_combout\ & (\B1|LessThan0~16_combout\ & (!\B1|FLAG~q\))) ) ) # ( !\B1|Equal0~10_combout\ & ( (!\C0|ENABLE~0_combout\ & 
-- (((\B1|BEEPOUT~q\)))) # (\C0|ENABLE~0_combout\ & ((!\B1|LessThan0~16_combout\ & ((\B1|BEEPOUT~q\))) # (\B1|LessThan0~16_combout\ & (!\B1|FLAG~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111110000100001111111000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|ALT_INV_ENABLE~0_combout\,
	datab => \B1|ALT_INV_LessThan0~16_combout\,
	datac => \B1|ALT_INV_FLAG~q\,
	datad => \B1|ALT_INV_BEEPOUT~q\,
	dataf => \B1|ALT_INV_Equal0~10_combout\,
	combout => \B1|BEEPOUT~0_combout\);

-- Location: FF_X42_Y3_N31
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

-- Location: LABCELL_X52_Y43_N3
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


