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

-- DATE "12/29/2018 22:07:51"

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

ENTITY 	KADAI2 IS
    PORT (
	CLK : IN std_logic;
	STARTN : IN std_logic;
	RESETN : IN std_logic;
	LEDL : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDH : BUFFER std_logic_vector(6 DOWNTO 0);
	LED_C : BUFFER std_logic
	);
END KADAI2;

-- Design Ports Information
-- LEDL[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_C	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESETN	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STARTN	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KADAI2 IS
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
SIGNAL ww_LEDL : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDH : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED_C : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \RESETN~input_o\ : std_logic;
SIGNAL \STARTN~input_o\ : std_logic;
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
SIGNAL \U0|Equal0~2_combout\ : std_logic;
SIGNAL \U0|Add0~2\ : std_logic;
SIGNAL \U0|Add0~49_sumout\ : std_logic;
SIGNAL \U0|Add0~50\ : std_logic;
SIGNAL \U0|Add0~45_sumout\ : std_logic;
SIGNAL \U0|Add0~46\ : std_logic;
SIGNAL \U0|Add0~41_sumout\ : std_logic;
SIGNAL \U0|Add0~42\ : std_logic;
SIGNAL \U0|Add0~37_sumout\ : std_logic;
SIGNAL \U0|Add0~38\ : std_logic;
SIGNAL \U0|Add0~33_sumout\ : std_logic;
SIGNAL \U0|Equal0~1_combout\ : std_logic;
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
SIGNAL \U0|Equal0~3_combout\ : std_logic;
SIGNAL \U0|ENABLE~q\ : std_logic;
SIGNAL \U0|SWBEFOREN~0_combout\ : std_logic;
SIGNAL \U0|SWBEFOREN~q\ : std_logic;
SIGNAL \U0|SWONEN~0_combout\ : std_logic;
SIGNAL \U0|SWONEN~q\ : std_logic;
SIGNAL \U1|COUNTING_FF~0_combout\ : std_logic;
SIGNAL \U1|COUNTING_FF~q\ : std_logic;
SIGNAL \U2|COUNT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~85_sumout\ : std_logic;
SIGNAL \U2|Add0~86\ : std_logic;
SIGNAL \U2|Add0~81_sumout\ : std_logic;
SIGNAL \U2|COUNT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~82\ : std_logic;
SIGNAL \U2|Add0~77_sumout\ : std_logic;
SIGNAL \U2|Add0~78\ : std_logic;
SIGNAL \U2|Add0~73_sumout\ : std_logic;
SIGNAL \U2|COUNT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~74\ : std_logic;
SIGNAL \U2|Add0~69_sumout\ : std_logic;
SIGNAL \U2|Add0~70\ : std_logic;
SIGNAL \U2|Add0~61_sumout\ : std_logic;
SIGNAL \U2|Add0~62\ : std_logic;
SIGNAL \U2|Add0~57_sumout\ : std_logic;
SIGNAL \U2|Add0~58\ : std_logic;
SIGNAL \U2|Add0~53_sumout\ : std_logic;
SIGNAL \U2|COUNT[7]~11_combout\ : std_logic;
SIGNAL \U2|Add0~54\ : std_logic;
SIGNAL \U2|Add0~5_sumout\ : std_logic;
SIGNAL \U2|COUNT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~6\ : std_logic;
SIGNAL \U2|Add0~1_sumout\ : std_logic;
SIGNAL \U2|Add0~2\ : std_logic;
SIGNAL \U2|Add0~101_sumout\ : std_logic;
SIGNAL \U2|Add0~102\ : std_logic;
SIGNAL \U2|Add0~97_sumout\ : std_logic;
SIGNAL \U2|COUNT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~98\ : std_logic;
SIGNAL \U2|Add0~49_sumout\ : std_logic;
SIGNAL \U2|COUNT[12]~10_combout\ : std_logic;
SIGNAL \U2|Add0~50\ : std_logic;
SIGNAL \U2|Add0~45_sumout\ : std_logic;
SIGNAL \U2|COUNT[13]~9_combout\ : std_logic;
SIGNAL \U2|Add0~46\ : std_logic;
SIGNAL \U2|Add0~41_sumout\ : std_logic;
SIGNAL \U2|COUNT[14]~8_combout\ : std_logic;
SIGNAL \U2|Add0~42\ : std_logic;
SIGNAL \U2|Add0~37_sumout\ : std_logic;
SIGNAL \U2|COUNT[15]~7_combout\ : std_logic;
SIGNAL \U2|COUNT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~38\ : std_logic;
SIGNAL \U2|Add0~93_sumout\ : std_logic;
SIGNAL \U2|COUNT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~94\ : std_logic;
SIGNAL \U2|Add0~33_sumout\ : std_logic;
SIGNAL \U2|COUNT[17]~6_combout\ : std_logic;
SIGNAL \U2|COUNT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~34\ : std_logic;
SIGNAL \U2|Add0~89_sumout\ : std_logic;
SIGNAL \U2|Add0~90\ : std_logic;
SIGNAL \U2|Add0~29_sumout\ : std_logic;
SIGNAL \U2|COUNT[19]~5_combout\ : std_logic;
SIGNAL \U2|Add0~30\ : std_logic;
SIGNAL \U2|Add0~25_sumout\ : std_logic;
SIGNAL \U2|COUNT[20]~4_combout\ : std_logic;
SIGNAL \U2|Add0~26\ : std_logic;
SIGNAL \U2|Add0~21_sumout\ : std_logic;
SIGNAL \U2|COUNT[21]~3_combout\ : std_logic;
SIGNAL \U2|Add0~22\ : std_logic;
SIGNAL \U2|Add0~17_sumout\ : std_logic;
SIGNAL \U2|COUNT[22]~2_combout\ : std_logic;
SIGNAL \U2|COUNT[22]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Add0~18\ : std_logic;
SIGNAL \U2|Add0~13_sumout\ : std_logic;
SIGNAL \U2|COUNT[23]~1_combout\ : std_logic;
SIGNAL \U2|Add0~14\ : std_logic;
SIGNAL \U2|Add0~65_sumout\ : std_logic;
SIGNAL \U2|Add0~66\ : std_logic;
SIGNAL \U2|Add0~9_sumout\ : std_logic;
SIGNAL \U2|COUNT[25]~0_combout\ : std_logic;
SIGNAL \U2|COUNT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \U2|COUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Equal0~3_combout\ : std_logic;
SIGNAL \U2|COUNT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|COUNT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Equal0~2_combout\ : std_logic;
SIGNAL \U2|COUNT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|Equal0~1_combout\ : std_logic;
SIGNAL \U2|Equal0~4_combout\ : std_logic;
SIGNAL \U2|ENABLE~q\ : std_logic;
SIGNAL \U3|process_0~0_combout\ : std_logic;
SIGNAL \U3|VAL_L[0]~3_combout\ : std_logic;
SIGNAL \U3|VAL_L[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|VAL_L[2]~1_combout\ : std_logic;
SIGNAL \U3|VAL_L[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|VAL_L~2_combout\ : std_logic;
SIGNAL \U3|VAL_L~0_combout\ : std_logic;
SIGNAL \U3|VAL_L[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U4|Mux6~0_combout\ : std_logic;
SIGNAL \U4|Mux5~0_combout\ : std_logic;
SIGNAL \U4|Mux4~0_combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux2~0_combout\ : std_logic;
SIGNAL \U4|Mux1~0_combout\ : std_logic;
SIGNAL \U4|Mux0~0_combout\ : std_logic;
SIGNAL \U3|VAL_H[0]~3_combout\ : std_logic;
SIGNAL \U3|FLAG~0_combout\ : std_logic;
SIGNAL \U3|FLAG~q\ : std_logic;
SIGNAL \U3|VAL_H~0_combout\ : std_logic;
SIGNAL \U3|VAL_H[3]~2_combout\ : std_logic;
SIGNAL \U3|VAL_H~1_combout\ : std_logic;
SIGNAL \U5|Mux6~0_combout\ : std_logic;
SIGNAL \U5|Mux5~0_combout\ : std_logic;
SIGNAL \U5|Mux4~0_combout\ : std_logic;
SIGNAL \U5|Mux3~0_combout\ : std_logic;
SIGNAL \U5|Mux2~0_combout\ : std_logic;
SIGNAL \U5|Mux1~0_combout\ : std_logic;
SIGNAL \U5|Mux0~0_combout\ : std_logic;
SIGNAL \U3|C_FLAG~0_combout\ : std_logic;
SIGNAL \U3|C_FLAG~q\ : std_logic;
SIGNAL \U3|Equal0~0_combout\ : std_logic;
SIGNAL \U3|COUNTER~0_combout\ : std_logic;
SIGNAL \U3|COUNTER~q\ : std_logic;
SIGNAL \U2|COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U3|VAL_L\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|VAL_H\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|DIVCOUNT\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U0|ALT_INV_DIVCOUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[22]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_VAL_L[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_STARTN~input_o\ : std_logic;
SIGNAL \ALT_INV_RESETN~input_o\ : std_logic;
SIGNAL \U0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U0|ALT_INV_DIVCOUNT\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U0|ALT_INV_ENABLE~q\ : std_logic;
SIGNAL \U0|ALT_INV_SWBEFOREN~q\ : std_logic;
SIGNAL \U2|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U0|ALT_INV_SWONEN~q\ : std_logic;
SIGNAL \U3|ALT_INV_C_FLAG~q\ : std_logic;
SIGNAL \U3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_FLAG~q\ : std_logic;
SIGNAL \U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_ENABLE~q\ : std_logic;
SIGNAL \U1|ALT_INV_COUNTING_FF~q\ : std_logic;
SIGNAL \U3|ALT_INV_COUNTER~q\ : std_logic;
SIGNAL \U5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_VAL_H\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_VAL_L\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \U2|ALT_INV_Add0~9_sumout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_STARTN <= STARTN;
ww_RESETN <= RESETN;
LEDL <= ww_LEDL;
LEDH <= ww_LEDH;
LED_C <= ww_LED_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U0|ALT_INV_DIVCOUNT[0]~DUPLICATE_q\ <= NOT \U0|DIVCOUNT[0]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[7]~DUPLICATE_q\ <= NOT \U2|COUNT[7]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[15]~DUPLICATE_q\ <= NOT \U2|COUNT[15]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[17]~DUPLICATE_q\ <= NOT \U2|COUNT[17]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[20]~DUPLICATE_q\ <= NOT \U2|COUNT[20]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[22]~DUPLICATE_q\ <= NOT \U2|COUNT[22]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[25]~DUPLICATE_q\ <= NOT \U2|COUNT[25]~DUPLICATE_q\;
\U3|ALT_INV_VAL_L[2]~DUPLICATE_q\ <= NOT \U3|VAL_L[2]~DUPLICATE_q\;
\U3|ALT_INV_VAL_L[1]~DUPLICATE_q\ <= NOT \U3|VAL_L[1]~DUPLICATE_q\;
\U3|ALT_INV_VAL_L[0]~DUPLICATE_q\ <= NOT \U3|VAL_L[0]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[11]~DUPLICATE_q\ <= NOT \U2|COUNT[11]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[16]~DUPLICATE_q\ <= NOT \U2|COUNT[16]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[0]~DUPLICATE_q\ <= NOT \U2|COUNT[0]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[1]~DUPLICATE_q\ <= NOT \U2|COUNT[1]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[3]~DUPLICATE_q\ <= NOT \U2|COUNT[3]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[4]~DUPLICATE_q\ <= NOT \U2|COUNT[4]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[24]~DUPLICATE_q\ <= NOT \U2|COUNT[24]~DUPLICATE_q\;
\U2|ALT_INV_COUNT[8]~DUPLICATE_q\ <= NOT \U2|COUNT[8]~DUPLICATE_q\;
\ALT_INV_STARTN~input_o\ <= NOT \STARTN~input_o\;
\ALT_INV_RESETN~input_o\ <= NOT \RESETN~input_o\;
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
\U0|ALT_INV_ENABLE~q\ <= NOT \U0|ENABLE~q\;
\U0|ALT_INV_SWBEFOREN~q\ <= NOT \U0|SWBEFOREN~q\;
\U2|ALT_INV_Equal0~3_combout\ <= NOT \U2|Equal0~3_combout\;
\U2|ALT_INV_Equal0~2_combout\ <= NOT \U2|Equal0~2_combout\;
\U2|ALT_INV_Equal0~1_combout\ <= NOT \U2|Equal0~1_combout\;
\U2|ALT_INV_COUNT\(7) <= NOT \U2|COUNT\(7);
\U2|ALT_INV_COUNT\(12) <= NOT \U2|COUNT\(12);
\U2|ALT_INV_COUNT\(13) <= NOT \U2|COUNT\(13);
\U2|ALT_INV_COUNT\(14) <= NOT \U2|COUNT\(14);
\U2|ALT_INV_COUNT\(15) <= NOT \U2|COUNT\(15);
\U2|ALT_INV_COUNT\(17) <= NOT \U2|COUNT\(17);
\U2|ALT_INV_Equal0~0_combout\ <= NOT \U2|Equal0~0_combout\;
\U2|ALT_INV_COUNT\(19) <= NOT \U2|COUNT\(19);
\U2|ALT_INV_COUNT\(20) <= NOT \U2|COUNT\(20);
\U2|ALT_INV_COUNT\(21) <= NOT \U2|COUNT\(21);
\U2|ALT_INV_COUNT\(22) <= NOT \U2|COUNT\(22);
\U2|ALT_INV_COUNT\(23) <= NOT \U2|COUNT\(23);
\U2|ALT_INV_COUNT\(25) <= NOT \U2|COUNT\(25);
\U0|ALT_INV_SWONEN~q\ <= NOT \U0|SWONEN~q\;
\U3|ALT_INV_C_FLAG~q\ <= NOT \U3|C_FLAG~q\;
\U3|ALT_INV_Equal0~0_combout\ <= NOT \U3|Equal0~0_combout\;
\U3|ALT_INV_FLAG~q\ <= NOT \U3|FLAG~q\;
\U3|ALT_INV_process_0~0_combout\ <= NOT \U3|process_0~0_combout\;
\U2|ALT_INV_ENABLE~q\ <= NOT \U2|ENABLE~q\;
\U1|ALT_INV_COUNTING_FF~q\ <= NOT \U1|COUNTING_FF~q\;
\U3|ALT_INV_COUNTER~q\ <= NOT \U3|COUNTER~q\;
\U5|ALT_INV_Mux0~0_combout\ <= NOT \U5|Mux0~0_combout\;
\U3|ALT_INV_VAL_H\(3) <= NOT \U3|VAL_H\(3);
\U3|ALT_INV_VAL_H\(2) <= NOT \U3|VAL_H\(2);
\U3|ALT_INV_VAL_H\(1) <= NOT \U3|VAL_H\(1);
\U3|ALT_INV_VAL_H\(0) <= NOT \U3|VAL_H\(0);
\U4|ALT_INV_Mux0~0_combout\ <= NOT \U4|Mux0~0_combout\;
\U3|ALT_INV_VAL_L\(3) <= NOT \U3|VAL_L\(3);
\U3|ALT_INV_VAL_L\(2) <= NOT \U3|VAL_L\(2);
\U3|ALT_INV_VAL_L\(1) <= NOT \U3|VAL_L\(1);
\U3|ALT_INV_VAL_L\(0) <= NOT \U3|VAL_L\(0);
\U2|ALT_INV_Add0~53_sumout\ <= NOT \U2|Add0~53_sumout\;
\U2|ALT_INV_Add0~49_sumout\ <= NOT \U2|Add0~49_sumout\;
\U2|ALT_INV_Add0~45_sumout\ <= NOT \U2|Add0~45_sumout\;
\U2|ALT_INV_Add0~41_sumout\ <= NOT \U2|Add0~41_sumout\;
\U2|ALT_INV_Add0~37_sumout\ <= NOT \U2|Add0~37_sumout\;
\U2|ALT_INV_Add0~33_sumout\ <= NOT \U2|Add0~33_sumout\;
\U2|ALT_INV_Add0~29_sumout\ <= NOT \U2|Add0~29_sumout\;
\U2|ALT_INV_Add0~25_sumout\ <= NOT \U2|Add0~25_sumout\;
\U2|ALT_INV_Add0~21_sumout\ <= NOT \U2|Add0~21_sumout\;
\U2|ALT_INV_Add0~17_sumout\ <= NOT \U2|Add0~17_sumout\;
\U2|ALT_INV_Add0~13_sumout\ <= NOT \U2|Add0~13_sumout\;
\U2|ALT_INV_Add0~9_sumout\ <= NOT \U2|Add0~9_sumout\;
\U2|ALT_INV_COUNT\(10) <= NOT \U2|COUNT\(10);
\U2|ALT_INV_COUNT\(11) <= NOT \U2|COUNT\(11);
\U2|ALT_INV_COUNT\(16) <= NOT \U2|COUNT\(16);
\U2|ALT_INV_COUNT\(18) <= NOT \U2|COUNT\(18);
\U2|ALT_INV_COUNT\(0) <= NOT \U2|COUNT\(0);
\U2|ALT_INV_COUNT\(1) <= NOT \U2|COUNT\(1);
\U2|ALT_INV_COUNT\(2) <= NOT \U2|COUNT\(2);
\U2|ALT_INV_COUNT\(3) <= NOT \U2|COUNT\(3);
\U2|ALT_INV_COUNT\(4) <= NOT \U2|COUNT\(4);
\U2|ALT_INV_COUNT\(24) <= NOT \U2|COUNT\(24);
\U2|ALT_INV_COUNT\(5) <= NOT \U2|COUNT\(5);
\U2|ALT_INV_COUNT\(6) <= NOT \U2|COUNT\(6);
\U2|ALT_INV_COUNT\(8) <= NOT \U2|COUNT\(8);
\U2|ALT_INV_COUNT\(9) <= NOT \U2|COUNT\(9);

-- Location: IOOBUF_X52_Y0_N53
\LEDL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(0));

-- Location: IOOBUF_X51_Y0_N36
\LEDL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(1));

-- Location: IOOBUF_X48_Y0_N76
\LEDL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(2));

-- Location: IOOBUF_X50_Y0_N36
\LEDL[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(3));

-- Location: IOOBUF_X48_Y0_N93
\LEDL[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(4));

-- Location: IOOBUF_X50_Y0_N53
\LEDL[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(5));

-- Location: IOOBUF_X46_Y0_N36
\LEDL[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(6));

-- Location: IOOBUF_X44_Y0_N36
\LEDH[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(0));

-- Location: IOOBUF_X40_Y0_N93
\LEDH[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(1));

-- Location: IOOBUF_X44_Y0_N53
\LEDH[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(2));

-- Location: IOOBUF_X43_Y0_N36
\LEDH[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(3));

-- Location: IOOBUF_X38_Y0_N36
\LEDH[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(4));

-- Location: IOOBUF_X43_Y0_N53
\LEDH[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(5));

-- Location: IOOBUF_X51_Y0_N53
\LEDH[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(6));

-- Location: IOOBUF_X0_Y20_N56
\LED_C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|COUNTER~q\,
	devoe => ww_devoe,
	o => ww_LED_C);

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

-- Location: FF_X16_Y3_N38
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

-- Location: LABCELL_X16_Y3_N36
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

-- Location: FF_X16_Y3_N37
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

-- Location: LABCELL_X17_Y3_N0
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

-- Location: FF_X17_Y3_N2
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

-- Location: LABCELL_X17_Y3_N3
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

-- Location: FF_X17_Y3_N5
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

-- Location: LABCELL_X17_Y3_N6
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

-- Location: FF_X17_Y3_N7
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

-- Location: LABCELL_X17_Y3_N9
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

-- Location: FF_X17_Y3_N11
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

-- Location: LABCELL_X17_Y3_N12
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

-- Location: FF_X17_Y3_N14
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

-- Location: LABCELL_X17_Y3_N15
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

-- Location: FF_X17_Y3_N17
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

-- Location: LABCELL_X17_Y3_N18
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

-- Location: FF_X17_Y3_N20
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

-- Location: LABCELL_X17_Y3_N21
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

-- Location: FF_X17_Y3_N23
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

-- Location: LABCELL_X16_Y3_N6
\U0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~2_combout\ = ( !\U0|DIVCOUNT\(6) & ( !\U0|DIVCOUNT\(3) & ( (!\U0|DIVCOUNT\(4) & (!\U0|DIVCOUNT\(7) & (!\U0|DIVCOUNT\(2) & !\U0|DIVCOUNT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(4),
	datab => \U0|ALT_INV_DIVCOUNT\(7),
	datac => \U0|ALT_INV_DIVCOUNT\(2),
	datad => \U0|ALT_INV_DIVCOUNT\(5),
	datae => \U0|ALT_INV_DIVCOUNT\(6),
	dataf => \U0|ALT_INV_DIVCOUNT\(3),
	combout => \U0|Equal0~2_combout\);

-- Location: LABCELL_X17_Y3_N24
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

-- Location: FF_X17_Y3_N26
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

-- Location: LABCELL_X17_Y3_N27
\U0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~45_sumout\ = SUM(( \U0|DIVCOUNT\(10) ) + ( GND ) + ( \U0|Add0~50\ ))
-- \U0|Add0~46\ = CARRY(( \U0|DIVCOUNT\(10) ) + ( GND ) + ( \U0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U0|ALT_INV_DIVCOUNT\(10),
	cin => \U0|Add0~50\,
	sumout => \U0|Add0~45_sumout\,
	cout => \U0|Add0~46\);

-- Location: FF_X17_Y3_N29
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

-- Location: LABCELL_X17_Y3_N30
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

-- Location: FF_X17_Y3_N31
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

-- Location: LABCELL_X17_Y3_N33
\U0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~37_sumout\ = SUM(( \U0|DIVCOUNT\(12) ) + ( GND ) + ( \U0|Add0~42\ ))
-- \U0|Add0~38\ = CARRY(( \U0|DIVCOUNT\(12) ) + ( GND ) + ( \U0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(12),
	cin => \U0|Add0~42\,
	sumout => \U0|Add0~37_sumout\,
	cout => \U0|Add0~38\);

-- Location: FF_X17_Y3_N35
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

-- Location: LABCELL_X17_Y3_N36
\U0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~33_sumout\ = SUM(( \U0|DIVCOUNT\(13) ) + ( GND ) + ( \U0|Add0~38\ ))
-- \U0|Add0~34\ = CARRY(( \U0|DIVCOUNT\(13) ) + ( GND ) + ( \U0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|ALT_INV_DIVCOUNT\(13),
	cin => \U0|Add0~38\,
	sumout => \U0|Add0~33_sumout\,
	cout => \U0|Add0~34\);

-- Location: FF_X17_Y3_N38
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

-- Location: LABCELL_X16_Y3_N27
\U0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~1_combout\ = ( !\U0|DIVCOUNT\(10) & ( !\U0|DIVCOUNT\(9) & ( (!\U0|DIVCOUNT\(12) & (!\U0|DIVCOUNT\(13) & !\U0|DIVCOUNT\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(12),
	datac => \U0|ALT_INV_DIVCOUNT\(13),
	datad => \U0|ALT_INV_DIVCOUNT\(11),
	datae => \U0|ALT_INV_DIVCOUNT\(10),
	dataf => \U0|ALT_INV_DIVCOUNT\(9),
	combout => \U0|Equal0~1_combout\);

-- Location: LABCELL_X17_Y3_N39
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

-- Location: FF_X17_Y3_N41
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

-- Location: LABCELL_X17_Y3_N42
\U0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Add0~25_sumout\ = SUM(( \U0|DIVCOUNT\(15) ) + ( GND ) + ( \U0|Add0~30\ ))
-- \U0|Add0~26\ = CARRY(( \U0|DIVCOUNT\(15) ) + ( GND ) + ( \U0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|ALT_INV_DIVCOUNT\(15),
	cin => \U0|Add0~30\,
	sumout => \U0|Add0~25_sumout\,
	cout => \U0|Add0~26\);

-- Location: FF_X17_Y3_N44
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

-- Location: LABCELL_X17_Y3_N45
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

-- Location: FF_X17_Y3_N47
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

-- Location: LABCELL_X17_Y3_N48
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

-- Location: FF_X17_Y3_N50
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

-- Location: LABCELL_X17_Y3_N51
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

-- Location: FF_X17_Y3_N52
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

-- Location: LABCELL_X17_Y3_N54
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

-- Location: FF_X17_Y3_N56
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

-- Location: LABCELL_X16_Y3_N30
\U0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~0_combout\ = ( !\U0|DIVCOUNT\(19) & ( !\U0|DIVCOUNT\(14) & ( (!\U0|DIVCOUNT\(15) & (!\U0|DIVCOUNT\(18) & (!\U0|DIVCOUNT\(16) & !\U0|DIVCOUNT\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(15),
	datab => \U0|ALT_INV_DIVCOUNT\(18),
	datac => \U0|ALT_INV_DIVCOUNT\(16),
	datad => \U0|ALT_INV_DIVCOUNT\(17),
	datae => \U0|ALT_INV_DIVCOUNT\(19),
	dataf => \U0|ALT_INV_DIVCOUNT\(14),
	combout => \U0|Equal0~0_combout\);

-- Location: LABCELL_X16_Y3_N54
\U0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Equal0~3_combout\ = ( \U0|Equal0~1_combout\ & ( \U0|Equal0~0_combout\ & ( (!\U0|DIVCOUNT\(8) & (\U0|Equal0~2_combout\ & (!\U0|DIVCOUNT\(0) & !\U0|DIVCOUNT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|ALT_INV_DIVCOUNT\(8),
	datab => \U0|ALT_INV_Equal0~2_combout\,
	datac => \U0|ALT_INV_DIVCOUNT\(0),
	datad => \U0|ALT_INV_DIVCOUNT\(1),
	datae => \U0|ALT_INV_Equal0~1_combout\,
	dataf => \U0|ALT_INV_Equal0~0_combout\,
	combout => \U0|Equal0~3_combout\);

-- Location: FF_X16_Y3_N55
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

-- Location: LABCELL_X16_Y3_N48
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

-- Location: FF_X16_Y3_N50
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

-- Location: LABCELL_X16_Y3_N51
\U0|SWONEN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|SWONEN~0_combout\ = ( !\U0|SWBEFOREN~q\ & ( (!\STARTN~input_o\ & \U0|ENABLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STARTN~input_o\,
	datad => \U0|ALT_INV_ENABLE~q\,
	dataf => \U0|ALT_INV_SWBEFOREN~q\,
	combout => \U0|SWONEN~0_combout\);

-- Location: FF_X16_Y3_N52
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

-- Location: LABCELL_X41_Y5_N39
\U1|COUNTING_FF~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|COUNTING_FF~0_combout\ = ( !\U1|COUNTING_FF~q\ & ( \U0|SWONEN~q\ ) ) # ( \U1|COUNTING_FF~q\ & ( !\U0|SWONEN~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U1|ALT_INV_COUNTING_FF~q\,
	dataf => \U0|ALT_INV_SWONEN~q\,
	combout => \U1|COUNTING_FF~0_combout\);

-- Location: FF_X41_Y5_N41
\U1|COUNTING_FF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|COUNTING_FF~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNTING_FF~q\);

-- Location: FF_X41_Y9_N55
\U2|COUNT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~5_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[8]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y9_N30
\U2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~85_sumout\ = SUM(( \U2|COUNT\(0) ) + ( VCC ) + ( !VCC ))
-- \U2|Add0~86\ = CARRY(( \U2|COUNT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(0),
	cin => GND,
	sumout => \U2|Add0~85_sumout\,
	cout => \U2|Add0~86\);

-- Location: FF_X41_Y9_N31
\U2|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~85_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(0));

-- Location: LABCELL_X41_Y9_N33
\U2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~81_sumout\ = SUM(( \U2|COUNT[1]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~86\ ))
-- \U2|Add0~82\ = CARRY(( \U2|COUNT[1]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT[1]~DUPLICATE_q\,
	cin => \U2|Add0~86\,
	sumout => \U2|Add0~81_sumout\,
	cout => \U2|Add0~82\);

-- Location: FF_X41_Y9_N35
\U2|COUNT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~81_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[1]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y9_N36
\U2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~77_sumout\ = SUM(( \U2|COUNT\(2) ) + ( VCC ) + ( \U2|Add0~82\ ))
-- \U2|Add0~78\ = CARRY(( \U2|COUNT\(2) ) + ( VCC ) + ( \U2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(2),
	cin => \U2|Add0~82\,
	sumout => \U2|Add0~77_sumout\,
	cout => \U2|Add0~78\);

-- Location: FF_X41_Y9_N38
\U2|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~77_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(2));

-- Location: LABCELL_X41_Y9_N39
\U2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~73_sumout\ = SUM(( \U2|COUNT[3]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~78\ ))
-- \U2|Add0~74\ = CARRY(( \U2|COUNT[3]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT[3]~DUPLICATE_q\,
	cin => \U2|Add0~78\,
	sumout => \U2|Add0~73_sumout\,
	cout => \U2|Add0~74\);

-- Location: FF_X41_Y9_N41
\U2|COUNT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~73_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[3]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y9_N42
\U2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~69_sumout\ = SUM(( \U2|COUNT\(4) ) + ( VCC ) + ( \U2|Add0~74\ ))
-- \U2|Add0~70\ = CARRY(( \U2|COUNT\(4) ) + ( VCC ) + ( \U2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(4),
	cin => \U2|Add0~74\,
	sumout => \U2|Add0~69_sumout\,
	cout => \U2|Add0~70\);

-- Location: FF_X41_Y9_N43
\U2|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~69_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(4));

-- Location: LABCELL_X41_Y9_N45
\U2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~61_sumout\ = SUM(( \U2|COUNT\(5) ) + ( VCC ) + ( \U2|Add0~70\ ))
-- \U2|Add0~62\ = CARRY(( \U2|COUNT\(5) ) + ( VCC ) + ( \U2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(5),
	cin => \U2|Add0~70\,
	sumout => \U2|Add0~61_sumout\,
	cout => \U2|Add0~62\);

-- Location: FF_X41_Y9_N47
\U2|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~61_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(5));

-- Location: LABCELL_X41_Y9_N48
\U2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~57_sumout\ = SUM(( \U2|COUNT\(6) ) + ( VCC ) + ( \U2|Add0~62\ ))
-- \U2|Add0~58\ = CARRY(( \U2|COUNT\(6) ) + ( VCC ) + ( \U2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(6),
	cin => \U2|Add0~62\,
	sumout => \U2|Add0~57_sumout\,
	cout => \U2|Add0~58\);

-- Location: FF_X41_Y9_N50
\U2|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~57_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(6));

-- Location: LABCELL_X41_Y9_N51
\U2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~53_sumout\ = SUM(( !\U2|COUNT\(7) ) + ( VCC ) + ( \U2|Add0~58\ ))
-- \U2|Add0~54\ = CARRY(( !\U2|COUNT\(7) ) + ( VCC ) + ( \U2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(7),
	cin => \U2|Add0~58\,
	sumout => \U2|Add0~53_sumout\,
	cout => \U2|Add0~54\);

-- Location: LABCELL_X41_Y9_N21
\U2|COUNT[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[7]~11_combout\ = ( !\U2|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~53_sumout\,
	combout => \U2|COUNT[7]~11_combout\);

-- Location: FF_X41_Y9_N23
\U2|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[7]~11_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(7));

-- Location: LABCELL_X41_Y9_N54
\U2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~5_sumout\ = SUM(( \U2|COUNT[8]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~54\ ))
-- \U2|Add0~6\ = CARRY(( \U2|COUNT[8]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT[8]~DUPLICATE_q\,
	cin => \U2|Add0~54\,
	sumout => \U2|Add0~5_sumout\,
	cout => \U2|Add0~6\);

-- Location: FF_X41_Y9_N56
\U2|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~5_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(8));

-- Location: FF_X41_Y8_N56
\U2|COUNT[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[20]~4_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[20]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y9_N57
\U2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~1_sumout\ = SUM(( \U2|COUNT\(9) ) + ( VCC ) + ( \U2|Add0~6\ ))
-- \U2|Add0~2\ = CARRY(( \U2|COUNT\(9) ) + ( VCC ) + ( \U2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(9),
	cin => \U2|Add0~6\,
	sumout => \U2|Add0~1_sumout\,
	cout => \U2|Add0~2\);

-- Location: FF_X41_Y9_N59
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
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(9));

-- Location: LABCELL_X41_Y8_N0
\U2|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~101_sumout\ = SUM(( \U2|COUNT\(10) ) + ( VCC ) + ( \U2|Add0~2\ ))
-- \U2|Add0~102\ = CARRY(( \U2|COUNT\(10) ) + ( VCC ) + ( \U2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(10),
	cin => \U2|Add0~2\,
	sumout => \U2|Add0~101_sumout\,
	cout => \U2|Add0~102\);

-- Location: FF_X41_Y8_N2
\U2|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~101_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(10));

-- Location: LABCELL_X41_Y8_N3
\U2|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~97_sumout\ = SUM(( \U2|COUNT[11]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~102\ ))
-- \U2|Add0~98\ = CARRY(( \U2|COUNT[11]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT[11]~DUPLICATE_q\,
	cin => \U2|Add0~102\,
	sumout => \U2|Add0~97_sumout\,
	cout => \U2|Add0~98\);

-- Location: FF_X41_Y8_N5
\U2|COUNT[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~97_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[11]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y8_N6
\U2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~49_sumout\ = SUM(( !\U2|COUNT\(12) ) + ( VCC ) + ( \U2|Add0~98\ ))
-- \U2|Add0~50\ = CARRY(( !\U2|COUNT\(12) ) + ( VCC ) + ( \U2|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(12),
	cin => \U2|Add0~98\,
	sumout => \U2|Add0~49_sumout\,
	cout => \U2|Add0~50\);

-- Location: MLABCELL_X42_Y8_N54
\U2|COUNT[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[12]~10_combout\ = ( !\U2|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U2|ALT_INV_Add0~49_sumout\,
	combout => \U2|COUNT[12]~10_combout\);

-- Location: FF_X42_Y8_N56
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
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(12));

-- Location: LABCELL_X41_Y8_N9
\U2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~45_sumout\ = SUM(( !\U2|COUNT\(13) ) + ( VCC ) + ( \U2|Add0~50\ ))
-- \U2|Add0~46\ = CARRY(( !\U2|COUNT\(13) ) + ( VCC ) + ( \U2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(13),
	cin => \U2|Add0~50\,
	sumout => \U2|Add0~45_sumout\,
	cout => \U2|Add0~46\);

-- Location: MLABCELL_X42_Y8_N9
\U2|COUNT[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[13]~9_combout\ = ( !\U2|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~45_sumout\,
	combout => \U2|COUNT[13]~9_combout\);

-- Location: FF_X42_Y8_N10
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
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(13));

-- Location: LABCELL_X41_Y8_N12
\U2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~41_sumout\ = SUM(( !\U2|COUNT\(14) ) + ( VCC ) + ( \U2|Add0~46\ ))
-- \U2|Add0~42\ = CARRY(( !\U2|COUNT\(14) ) + ( VCC ) + ( \U2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(14),
	cin => \U2|Add0~46\,
	sumout => \U2|Add0~41_sumout\,
	cout => \U2|Add0~42\);

-- Location: MLABCELL_X42_Y8_N0
\U2|COUNT[14]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[14]~8_combout\ = !\U2|Add0~41_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_Add0~41_sumout\,
	combout => \U2|COUNT[14]~8_combout\);

-- Location: FF_X42_Y8_N2
\U2|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[14]~8_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(14));

-- Location: LABCELL_X41_Y8_N15
\U2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~37_sumout\ = SUM(( !\U2|COUNT[15]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~42\ ))
-- \U2|Add0~38\ = CARRY(( !\U2|COUNT[15]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT[15]~DUPLICATE_q\,
	cin => \U2|Add0~42\,
	sumout => \U2|Add0~37_sumout\,
	cout => \U2|Add0~38\);

-- Location: MLABCELL_X42_Y8_N3
\U2|COUNT[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[15]~7_combout\ = ( !\U2|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~37_sumout\,
	combout => \U2|COUNT[15]~7_combout\);

-- Location: FF_X42_Y8_N5
\U2|COUNT[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[15]~7_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[15]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y8_N18
\U2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~93_sumout\ = SUM(( \U2|COUNT[16]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~38\ ))
-- \U2|Add0~94\ = CARRY(( \U2|COUNT[16]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT[16]~DUPLICATE_q\,
	cin => \U2|Add0~38\,
	sumout => \U2|Add0~93_sumout\,
	cout => \U2|Add0~94\);

-- Location: FF_X41_Y8_N20
\U2|COUNT[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~93_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[16]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y8_N21
\U2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~33_sumout\ = SUM(( !\U2|COUNT[17]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~94\ ))
-- \U2|Add0~34\ = CARRY(( !\U2|COUNT[17]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT[17]~DUPLICATE_q\,
	cin => \U2|Add0~94\,
	sumout => \U2|Add0~33_sumout\,
	cout => \U2|Add0~34\);

-- Location: LABCELL_X41_Y9_N18
\U2|COUNT[17]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[17]~6_combout\ = ( !\U2|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~33_sumout\,
	combout => \U2|COUNT[17]~6_combout\);

-- Location: FF_X41_Y9_N19
\U2|COUNT[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[17]~6_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[17]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y8_N24
\U2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~89_sumout\ = SUM(( \U2|COUNT\(18) ) + ( VCC ) + ( \U2|Add0~34\ ))
-- \U2|Add0~90\ = CARRY(( \U2|COUNT\(18) ) + ( VCC ) + ( \U2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT\(18),
	cin => \U2|Add0~34\,
	sumout => \U2|Add0~89_sumout\,
	cout => \U2|Add0~90\);

-- Location: FF_X41_Y8_N26
\U2|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~89_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(18));

-- Location: LABCELL_X41_Y8_N27
\U2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~29_sumout\ = SUM(( !\U2|COUNT\(19) ) + ( VCC ) + ( \U2|Add0~90\ ))
-- \U2|Add0~30\ = CARRY(( !\U2|COUNT\(19) ) + ( VCC ) + ( \U2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(19),
	cin => \U2|Add0~90\,
	sumout => \U2|Add0~29_sumout\,
	cout => \U2|Add0~30\);

-- Location: MLABCELL_X42_Y8_N27
\U2|COUNT[19]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[19]~5_combout\ = ( !\U2|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U2|ALT_INV_Add0~29_sumout\,
	combout => \U2|COUNT[19]~5_combout\);

-- Location: FF_X42_Y8_N29
\U2|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[19]~5_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(19));

-- Location: LABCELL_X41_Y8_N30
\U2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~25_sumout\ = SUM(( !\U2|COUNT[20]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~30\ ))
-- \U2|Add0~26\ = CARRY(( !\U2|COUNT[20]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT[20]~DUPLICATE_q\,
	cin => \U2|Add0~30\,
	sumout => \U2|Add0~25_sumout\,
	cout => \U2|Add0~26\);

-- Location: LABCELL_X41_Y8_N54
\U2|COUNT[20]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[20]~4_combout\ = ( !\U2|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~25_sumout\,
	combout => \U2|COUNT[20]~4_combout\);

-- Location: FF_X41_Y8_N55
\U2|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[20]~4_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(20));

-- Location: FF_X41_Y8_N50
\U2|COUNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[25]~0_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(25));

-- Location: LABCELL_X41_Y8_N33
\U2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~21_sumout\ = SUM(( !\U2|COUNT\(21) ) + ( VCC ) + ( \U2|Add0~26\ ))
-- \U2|Add0~22\ = CARRY(( !\U2|COUNT\(21) ) + ( VCC ) + ( \U2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT\(21),
	cin => \U2|Add0~26\,
	sumout => \U2|Add0~21_sumout\,
	cout => \U2|Add0~22\);

-- Location: MLABCELL_X42_Y8_N6
\U2|COUNT[21]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[21]~3_combout\ = ( !\U2|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~21_sumout\,
	combout => \U2|COUNT[21]~3_combout\);

-- Location: FF_X42_Y8_N8
\U2|COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[21]~3_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(21));

-- Location: LABCELL_X41_Y8_N36
\U2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~17_sumout\ = SUM(( !\U2|COUNT[22]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~22\ ))
-- \U2|Add0~18\ = CARRY(( !\U2|COUNT[22]~DUPLICATE_q\ ) + ( VCC ) + ( \U2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|ALT_INV_COUNT[22]~DUPLICATE_q\,
	cin => \U2|Add0~22\,
	sumout => \U2|Add0~17_sumout\,
	cout => \U2|Add0~18\);

-- Location: LABCELL_X41_Y8_N51
\U2|COUNT[22]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[22]~2_combout\ = !\U2|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_Add0~17_sumout\,
	combout => \U2|COUNT[22]~2_combout\);

-- Location: FF_X41_Y8_N53
\U2|COUNT[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[22]~2_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[22]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y8_N39
\U2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~13_sumout\ = SUM(( !\U2|COUNT\(23) ) + ( VCC ) + ( \U2|Add0~18\ ))
-- \U2|Add0~14\ = CARRY(( !\U2|COUNT\(23) ) + ( VCC ) + ( \U2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(23),
	cin => \U2|Add0~18\,
	sumout => \U2|Add0~13_sumout\,
	cout => \U2|Add0~14\);

-- Location: LABCELL_X41_Y8_N57
\U2|COUNT[23]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[23]~1_combout\ = ( !\U2|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~13_sumout\,
	combout => \U2|COUNT[23]~1_combout\);

-- Location: FF_X41_Y8_N58
\U2|COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[23]~1_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(23));

-- Location: LABCELL_X41_Y8_N42
\U2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~65_sumout\ = SUM(( \U2|COUNT\(24) ) + ( VCC ) + ( \U2|Add0~14\ ))
-- \U2|Add0~66\ = CARRY(( \U2|COUNT\(24) ) + ( VCC ) + ( \U2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_COUNT\(24),
	cin => \U2|Add0~14\,
	sumout => \U2|Add0~65_sumout\,
	cout => \U2|Add0~66\);

-- Location: FF_X41_Y8_N44
\U2|COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~65_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(24));

-- Location: LABCELL_X41_Y8_N45
\U2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Add0~9_sumout\ = SUM(( !\U2|COUNT\(25) ) + ( VCC ) + ( \U2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(25),
	cin => \U2|Add0~66\,
	sumout => \U2|Add0~9_sumout\);

-- Location: LABCELL_X41_Y8_N48
\U2|COUNT[25]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT[25]~0_combout\ = ( !\U2|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U2|ALT_INV_Add0~9_sumout\,
	combout => \U2|COUNT[25]~0_combout\);

-- Location: FF_X41_Y8_N49
\U2|COUNT[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[25]~0_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[25]~DUPLICATE_q\);

-- Location: FF_X41_Y8_N52
\U2|COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[22]~2_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(22));

-- Location: MLABCELL_X42_Y8_N42
\U2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = ( \U2|COUNT\(23) & ( \U2|COUNT\(22) & ( (\U2|COUNT\(20) & (\U2|COUNT[25]~DUPLICATE_q\ & (\U2|COUNT\(19) & \U2|COUNT\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(20),
	datab => \U2|ALT_INV_COUNT[25]~DUPLICATE_q\,
	datac => \U2|ALT_INV_COUNT\(19),
	datad => \U2|ALT_INV_COUNT\(21),
	datae => \U2|ALT_INV_COUNT\(23),
	dataf => \U2|ALT_INV_COUNT\(22),
	combout => \U2|Equal0~0_combout\);

-- Location: FF_X41_Y9_N34
\U2|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~81_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(1));

-- Location: FF_X41_Y8_N4
\U2|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~97_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(11));

-- Location: FF_X41_Y8_N19
\U2|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~93_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(16));

-- Location: FF_X41_Y9_N32
\U2|COUNT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~85_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[0]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y9_N0
\U2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~3_combout\ = ( !\U2|COUNT\(18) & ( !\U2|COUNT\(10) & ( (!\U2|COUNT\(1) & (!\U2|COUNT\(11) & (!\U2|COUNT\(16) & !\U2|COUNT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(1),
	datab => \U2|ALT_INV_COUNT\(11),
	datac => \U2|ALT_INV_COUNT\(16),
	datad => \U2|ALT_INV_COUNT[0]~DUPLICATE_q\,
	datae => \U2|ALT_INV_COUNT\(18),
	dataf => \U2|ALT_INV_COUNT\(10),
	combout => \U2|Equal0~3_combout\);

-- Location: FF_X41_Y9_N40
\U2|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~73_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(3));

-- Location: FF_X41_Y9_N44
\U2|COUNT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~69_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[4]~DUPLICATE_q\);

-- Location: FF_X41_Y8_N43
\U2|COUNT[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Add0~65_sumout\,
	clrn => \RESETN~input_o\,
	sclr => \U2|Equal0~4_combout\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[24]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y9_N6
\U2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~2_combout\ = ( !\U2|COUNT\(5) & ( !\U2|COUNT[24]~DUPLICATE_q\ & ( (!\U2|COUNT\(6) & (!\U2|COUNT\(3) & (!\U2|COUNT\(2) & !\U2|COUNT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(6),
	datab => \U2|ALT_INV_COUNT\(3),
	datac => \U2|ALT_INV_COUNT\(2),
	datad => \U2|ALT_INV_COUNT[4]~DUPLICATE_q\,
	datae => \U2|ALT_INV_COUNT\(5),
	dataf => \U2|ALT_INV_COUNT[24]~DUPLICATE_q\,
	combout => \U2|Equal0~2_combout\);

-- Location: FF_X42_Y8_N4
\U2|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[15]~7_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(15));

-- Location: FF_X41_Y9_N22
\U2|COUNT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[7]~11_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT[7]~DUPLICATE_q\);

-- Location: FF_X41_Y9_N20
\U2|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT[17]~6_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT\(17));

-- Location: LABCELL_X41_Y9_N12
\U2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~1_combout\ = ( \U2|COUNT\(14) & ( \U2|COUNT\(17) & ( (\U2|COUNT\(13) & (\U2|COUNT\(15) & (\U2|COUNT\(12) & \U2|COUNT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(13),
	datab => \U2|ALT_INV_COUNT\(15),
	datac => \U2|ALT_INV_COUNT\(12),
	datad => \U2|ALT_INV_COUNT[7]~DUPLICATE_q\,
	datae => \U2|ALT_INV_COUNT\(14),
	dataf => \U2|ALT_INV_COUNT\(17),
	combout => \U2|Equal0~1_combout\);

-- Location: LABCELL_X41_Y9_N24
\U2|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~4_combout\ = ( \U2|Equal0~2_combout\ & ( \U2|Equal0~1_combout\ & ( (!\U2|COUNT\(8) & (\U2|Equal0~0_combout\ & (\U2|Equal0~3_combout\ & !\U2|COUNT\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT\(8),
	datab => \U2|ALT_INV_Equal0~0_combout\,
	datac => \U2|ALT_INV_Equal0~3_combout\,
	datad => \U2|ALT_INV_COUNT\(9),
	datae => \U2|ALT_INV_Equal0~2_combout\,
	dataf => \U2|ALT_INV_Equal0~1_combout\,
	combout => \U2|Equal0~4_combout\);

-- Location: FF_X41_Y9_N26
\U2|ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|Equal0~4_combout\,
	clrn => \RESETN~input_o\,
	ena => \U1|COUNTING_FF~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|ENABLE~q\);

-- Location: MLABCELL_X42_Y8_N33
\U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|process_0~0_combout\ = (\U1|COUNTING_FF~q\ & \U2|ENABLE~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNTING_FF~q\,
	datad => \U2|ALT_INV_ENABLE~q\,
	combout => \U3|process_0~0_combout\);

-- Location: FF_X42_Y8_N37
\U3|VAL_L[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|VAL_L[0]~3_combout\,
	clrn => \RESETN~input_o\,
	ena => \U3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|VAL_L\(0));

-- Location: MLABCELL_X42_Y8_N36
\U3|VAL_L[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|VAL_L[0]~3_combout\ = ( !\U3|VAL_L\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U3|ALT_INV_VAL_L\(0),
	combout => \U3|VAL_L[0]~3_combout\);

-- Location: FF_X42_Y8_N38
\U3|VAL_L[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|VAL_L[0]~3_combout\,
	clrn => \RESETN~input_o\,
	ena => \U3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|VAL_L[0]~DUPLICATE_q\);

-- Location: FF_X42_Y8_N20
\U3|VAL_L[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|VAL_L~0_combout\,
	clrn => \RESETN~input_o\,
	ena => \U3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|VAL_L\(1));

-- Location: MLABCELL_X42_Y8_N51
\U3|VAL_L[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|VAL_L[2]~1_combout\ = ( \U3|VAL_L\(2) & ( \U3|VAL_L\(0) & ( (!\U1|COUNTING_FF~q\) # ((!\U2|ENABLE~q\) # (!\U3|VAL_L\(1))) ) ) ) # ( !\U3|VAL_L\(2) & ( \U3|VAL_L\(0) & ( (\U1|COUNTING_FF~q\ & (\U2|ENABLE~q\ & \U3|VAL_L\(1))) ) ) ) # ( \U3|VAL_L\(2) & ( 
-- !\U3|VAL_L\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_COUNTING_FF~q\,
	datac => \U2|ALT_INV_ENABLE~q\,
	datad => \U3|ALT_INV_VAL_L\(1),
	datae => \U3|ALT_INV_VAL_L\(2),
	dataf => \U3|ALT_INV_VAL_L\(0),
	combout => \U3|VAL_L[2]~1_combout\);

-- Location: FF_X42_Y8_N53
\U3|VAL_L[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|VAL_L[2]~1_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|VAL_L\(2));

-- Location: FF_X42_Y8_N52
\U3|VAL_L[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|VAL_L[2]~1_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|VAL_L[2]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y8_N21
\U3|VAL_L~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|VAL_L~2_combout\ = ( \U3|VAL_L\(1) & ( !\U3|VAL_L\(3) $ (((!\U3|VAL_L[0]~DUPLICATE_q\) # (!\U3|VAL_L[2]~DUPLICATE_q\))) ) ) # ( !\U3|VAL_L\(1) & ( (\U3|VAL_L\(3) & ((!\U3|VAL_L[0]~DUPLICATE_q\) # (\U3|VAL_L[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	datac => \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\,
	datad => \U3|ALT_INV_VAL_L\(3),
	dataf => \U3|ALT_INV_VAL_L\(1),
	combout => \U3|VAL_L~2_combout\);

-- Location: FF_X42_Y8_N22
\U3|VAL_L[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|VAL_L~2_combout\,
	clrn => \RESETN~input_o\,
	ena => \U3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|VAL_L\(3));

-- Location: MLABCELL_X42_Y8_N18
\U3|VAL_L~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|VAL_L~0_combout\ = ( \U3|VAL_L\(3) & ( (!\U3|VAL_L[0]~DUPLICATE_q\ & ((\U3|VAL_L\(1)))) # (\U3|VAL_L[0]~DUPLICATE_q\ & (\U3|VAL_L\(2) & !\U3|VAL_L\(1))) ) ) # ( !\U3|VAL_L\(3) & ( !\U3|VAL_L[0]~DUPLICATE_q\ $ (!\U3|VAL_L\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000000101101010100000010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	datac => \U3|ALT_INV_VAL_L\(2),
	datad => \U3|ALT_INV_VAL_L\(1),
	dataf => \U3|ALT_INV_VAL_L\(3),
	combout => \U3|VAL_L~0_combout\);

-- Location: FF_X42_Y8_N19
\U3|VAL_L[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|VAL_L~0_combout\,
	clrn => \RESETN~input_o\,
	ena => \U3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|VAL_L[1]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N3
\U4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux6~0_combout\ = ( !\U3|VAL_L\(3) & ( (!\U3|VAL_L[1]~DUPLICATE_q\ & (!\U3|VAL_L[0]~DUPLICATE_q\ $ (!\U3|VAL_L[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	datac => \U3|ALT_INV_VAL_L[1]~DUPLICATE_q\,
	datad => \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\,
	dataf => \U3|ALT_INV_VAL_L\(3),
	combout => \U4|Mux6~0_combout\);

-- Location: MLABCELL_X42_Y4_N42
\U4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux5~0_combout\ = ( \U3|VAL_L\(3) & ( (\U3|VAL_L[2]~DUPLICATE_q\) # (\U3|VAL_L[1]~DUPLICATE_q\) ) ) # ( !\U3|VAL_L\(3) & ( (\U3|VAL_L[2]~DUPLICATE_q\ & (!\U3|VAL_L[1]~DUPLICATE_q\ $ (!\U3|VAL_L[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_VAL_L[1]~DUPLICATE_q\,
	datac => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	datad => \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\,
	dataf => \U3|ALT_INV_VAL_L\(3),
	combout => \U4|Mux5~0_combout\);

-- Location: MLABCELL_X42_Y4_N45
\U4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux4~0_combout\ = ( \U3|VAL_L\(3) & ( (\U3|VAL_L[2]~DUPLICATE_q\) # (\U3|VAL_L[1]~DUPLICATE_q\) ) ) # ( !\U3|VAL_L\(3) & ( (!\U3|VAL_L[0]~DUPLICATE_q\ & (\U3|VAL_L[1]~DUPLICATE_q\ & !\U3|VAL_L[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	datac => \U3|ALT_INV_VAL_L[1]~DUPLICATE_q\,
	datad => \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\,
	dataf => \U3|ALT_INV_VAL_L\(3),
	combout => \U4|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y4_N36
\U4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = ( !\U3|VAL_L\(3) & ( (!\U3|VAL_L[0]~DUPLICATE_q\ & (!\U3|VAL_L[1]~DUPLICATE_q\ & \U3|VAL_L[2]~DUPLICATE_q\)) # (\U3|VAL_L[0]~DUPLICATE_q\ & (!\U3|VAL_L[1]~DUPLICATE_q\ $ (\U3|VAL_L[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	datab => \U3|ALT_INV_VAL_L[1]~DUPLICATE_q\,
	datad => \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\,
	dataf => \U3|ALT_INV_VAL_L\(3),
	combout => \U4|Mux3~0_combout\);

-- Location: MLABCELL_X42_Y4_N39
\U4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux2~0_combout\ = ( \U3|VAL_L\(3) & ( ((\U3|VAL_L[2]~DUPLICATE_q\) # (\U3|VAL_L[1]~DUPLICATE_q\)) # (\U3|VAL_L[0]~DUPLICATE_q\) ) ) # ( !\U3|VAL_L\(3) & ( ((!\U3|VAL_L[1]~DUPLICATE_q\ & \U3|VAL_L[2]~DUPLICATE_q\)) # (\U3|VAL_L[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	datab => \U3|ALT_INV_VAL_L[1]~DUPLICATE_q\,
	datac => \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\,
	dataf => \U3|ALT_INV_VAL_L\(3),
	combout => \U4|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y4_N21
\U4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux1~0_combout\ = ( \U3|VAL_L\(3) & ( (\U3|VAL_L[2]~DUPLICATE_q\) # (\U3|VAL_L[1]~DUPLICATE_q\) ) ) # ( !\U3|VAL_L\(3) & ( (!\U3|VAL_L[2]~DUPLICATE_q\ & ((\U3|VAL_L[1]~DUPLICATE_q\) # (\U3|VAL_L[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	datac => \U3|ALT_INV_VAL_L[1]~DUPLICATE_q\,
	datad => \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\,
	dataf => \U3|ALT_INV_VAL_L\(3),
	combout => \U4|Mux1~0_combout\);

-- Location: MLABCELL_X42_Y4_N18
\U4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux0~0_combout\ = ( \U3|VAL_L\(3) ) # ( !\U3|VAL_L\(3) & ( (!\U3|VAL_L[1]~DUPLICATE_q\ & ((\U3|VAL_L[2]~DUPLICATE_q\))) # (\U3|VAL_L[1]~DUPLICATE_q\ & ((!\U3|VAL_L[0]~DUPLICATE_q\) # (!\U3|VAL_L[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111101110001100111110111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	datab => \U3|ALT_INV_VAL_L[1]~DUPLICATE_q\,
	datad => \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\,
	dataf => \U3|ALT_INV_VAL_L\(3),
	combout => \U4|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y4_N48
\U3|VAL_H[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|VAL_H[0]~3_combout\ = !\U3|VAL_H\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U3|ALT_INV_VAL_H\(0),
	combout => \U3|VAL_H[0]~3_combout\);

-- Location: MLABCELL_X42_Y4_N54
\U3|FLAG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|FLAG~0_combout\ = ( \U2|ENABLE~q\ & ( \U3|VAL_L\(3) & ( (\U3|VAL_L[0]~DUPLICATE_q\ & (!\U3|VAL_L[1]~DUPLICATE_q\ & (\U1|COUNTING_FF~q\ & !\U3|VAL_L[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	datab => \U3|ALT_INV_VAL_L[1]~DUPLICATE_q\,
	datac => \U1|ALT_INV_COUNTING_FF~q\,
	datad => \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\,
	datae => \U2|ALT_INV_ENABLE~q\,
	dataf => \U3|ALT_INV_VAL_L\(3),
	combout => \U3|FLAG~0_combout\);

-- Location: FF_X42_Y4_N56
\U3|FLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|FLAG~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|FLAG~q\);

-- Location: FF_X42_Y4_N50
\U3|VAL_H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|VAL_H[0]~3_combout\,
	clrn => \RESETN~input_o\,
	ena => \U3|FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|VAL_H\(0));

-- Location: MLABCELL_X42_Y4_N6
\U3|VAL_H~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|VAL_H~0_combout\ = ( \U3|VAL_H\(2) & ( (!\U3|VAL_H\(0) & ((\U3|VAL_H\(1)))) # (\U3|VAL_H\(0) & (\U3|VAL_H\(3) & !\U3|VAL_H\(1))) ) ) # ( !\U3|VAL_H\(2) & ( !\U3|VAL_H\(0) $ (!\U3|VAL_H\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000011111100000000001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_VAL_H\(3),
	datac => \U3|ALT_INV_VAL_H\(0),
	datad => \U3|ALT_INV_VAL_H\(1),
	dataf => \U3|ALT_INV_VAL_H\(2),
	combout => \U3|VAL_H~0_combout\);

-- Location: FF_X42_Y4_N7
\U3|VAL_H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|VAL_H~0_combout\,
	clrn => \RESETN~input_o\,
	ena => \U3|FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|VAL_H\(1));

-- Location: MLABCELL_X42_Y4_N12
\U3|VAL_H[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|VAL_H[3]~2_combout\ = ( \U3|VAL_H\(1) & ( !\U3|VAL_H\(3) $ (((!\U3|VAL_H\(0)) # ((!\U3|VAL_H\(2)) # (!\U3|FLAG~q\)))) ) ) # ( !\U3|VAL_H\(1) & ( \U3|VAL_H\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_H\(0),
	datab => \U3|ALT_INV_VAL_H\(2),
	datac => \U3|ALT_INV_FLAG~q\,
	datad => \U3|ALT_INV_VAL_H\(3),
	dataf => \U3|ALT_INV_VAL_H\(1),
	combout => \U3|VAL_H[3]~2_combout\);

-- Location: FF_X42_Y4_N14
\U3|VAL_H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|VAL_H[3]~2_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|VAL_H\(3));

-- Location: MLABCELL_X42_Y4_N9
\U3|VAL_H~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|VAL_H~1_combout\ = ( \U3|VAL_H\(1) & ( !\U3|VAL_H\(0) $ (!\U3|VAL_H\(2)) ) ) # ( !\U3|VAL_H\(1) & ( (\U3|VAL_H\(2) & ((!\U3|VAL_H\(0)) # (\U3|VAL_H\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_H\(0),
	datac => \U3|ALT_INV_VAL_H\(3),
	datad => \U3|ALT_INV_VAL_H\(2),
	dataf => \U3|ALT_INV_VAL_H\(1),
	combout => \U3|VAL_H~1_combout\);

-- Location: FF_X42_Y4_N11
\U3|VAL_H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|VAL_H~1_combout\,
	clrn => \RESETN~input_o\,
	ena => \U3|FLAG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|VAL_H\(2));

-- Location: MLABCELL_X42_Y4_N15
\U5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux6~0_combout\ = ( !\U3|VAL_H\(1) & ( (!\U3|VAL_H\(3) & (!\U3|VAL_H\(0) $ (!\U3|VAL_H\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_H\(0),
	datab => \U3|ALT_INV_VAL_H\(2),
	datac => \U3|ALT_INV_VAL_H\(3),
	dataf => \U3|ALT_INV_VAL_H\(1),
	combout => \U5|Mux6~0_combout\);

-- Location: MLABCELL_X42_Y4_N30
\U5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux5~0_combout\ = ( \U3|VAL_H\(3) & ( (\U3|VAL_H\(2)) # (\U3|VAL_H\(1)) ) ) # ( !\U3|VAL_H\(3) & ( (\U3|VAL_H\(2) & (!\U3|VAL_H\(1) $ (!\U3|VAL_H\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_H\(1),
	datab => \U3|ALT_INV_VAL_H\(2),
	datac => \U3|ALT_INV_VAL_H\(0),
	dataf => \U3|ALT_INV_VAL_H\(3),
	combout => \U5|Mux5~0_combout\);

-- Location: MLABCELL_X42_Y4_N51
\U5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux4~0_combout\ = ( \U3|VAL_H\(2) & ( \U3|VAL_H\(3) ) ) # ( !\U3|VAL_H\(2) & ( (\U3|VAL_H\(1) & ((!\U3|VAL_H\(0)) # (\U3|VAL_H\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_H\(0),
	datab => \U3|ALT_INV_VAL_H\(1),
	datac => \U3|ALT_INV_VAL_H\(3),
	dataf => \U3|ALT_INV_VAL_H\(2),
	combout => \U5|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y4_N24
\U5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux3~0_combout\ = ( !\U3|VAL_H\(3) & ( (!\U3|VAL_H\(0) & (\U3|VAL_H\(2) & !\U3|VAL_H\(1))) # (\U3|VAL_H\(0) & (!\U3|VAL_H\(2) $ (\U3|VAL_H\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_H\(0),
	datab => \U3|ALT_INV_VAL_H\(2),
	datac => \U3|ALT_INV_VAL_H\(1),
	dataf => \U3|ALT_INV_VAL_H\(3),
	combout => \U5|Mux3~0_combout\);

-- Location: MLABCELL_X42_Y4_N27
\U5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux2~0_combout\ = ( \U3|VAL_H\(3) & ( ((\U3|VAL_H\(1)) # (\U3|VAL_H\(2))) # (\U3|VAL_H\(0)) ) ) # ( !\U3|VAL_H\(3) & ( ((\U3|VAL_H\(2) & !\U3|VAL_H\(1))) # (\U3|VAL_H\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101010101011101110101010101110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_H\(0),
	datab => \U3|ALT_INV_VAL_H\(2),
	datad => \U3|ALT_INV_VAL_H\(1),
	dataf => \U3|ALT_INV_VAL_H\(3),
	combout => \U5|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y4_N33
\U5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux1~0_combout\ = ( \U3|VAL_H\(0) & ( (!\U3|VAL_H\(2) & ((!\U3|VAL_H\(3)) # (\U3|VAL_H\(1)))) # (\U3|VAL_H\(2) & ((\U3|VAL_H\(3)))) ) ) # ( !\U3|VAL_H\(0) & ( (!\U3|VAL_H\(2) & (\U3|VAL_H\(1))) # (\U3|VAL_H\(2) & ((\U3|VAL_H\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011111000111110001111100011111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_H\(1),
	datab => \U3|ALT_INV_VAL_H\(2),
	datac => \U3|ALT_INV_VAL_H\(3),
	dataf => \U3|ALT_INV_VAL_H\(0),
	combout => \U5|Mux1~0_combout\);

-- Location: MLABCELL_X42_Y4_N0
\U5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux0~0_combout\ = ( \U3|VAL_H\(3) ) # ( !\U3|VAL_H\(3) & ( (!\U3|VAL_H\(2) & ((\U3|VAL_H\(1)))) # (\U3|VAL_H\(2) & ((!\U3|VAL_H\(0)) # (!\U3|VAL_H\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111100001100111111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_VAL_H\(2),
	datac => \U3|ALT_INV_VAL_H\(0),
	datad => \U3|ALT_INV_VAL_H\(1),
	dataf => \U3|ALT_INV_VAL_H\(3),
	combout => \U5|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y8_N12
\U3|C_FLAG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|C_FLAG~0_combout\ = ( \U3|VAL_L\(3) & ( (!\U3|C_FLAG~q\) # ((!\U3|VAL_L\(1) & (!\U3|VAL_L[2]~DUPLICATE_q\ & \U3|VAL_L[0]~DUPLICATE_q\))) ) ) # ( !\U3|VAL_L\(3) & ( !\U3|C_FLAG~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000010001111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_VAL_L\(1),
	datab => \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\,
	datac => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	datad => \U3|ALT_INV_C_FLAG~q\,
	dataf => \U3|ALT_INV_VAL_L\(3),
	combout => \U3|C_FLAG~0_combout\);

-- Location: FF_X42_Y8_N14
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
	ena => \U3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|C_FLAG~q\);

-- Location: MLABCELL_X42_Y8_N15
\U3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Equal0~0_combout\ = ( !\U3|VAL_L\(1) & ( (!\U3|VAL_L[2]~DUPLICATE_q\ & (\U3|VAL_L\(3) & \U3|VAL_L[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_VAL_L[2]~DUPLICATE_q\,
	datac => \U3|ALT_INV_VAL_L\(3),
	datad => \U3|ALT_INV_VAL_L[0]~DUPLICATE_q\,
	dataf => \U3|ALT_INV_VAL_L\(1),
	combout => \U3|Equal0~0_combout\);

-- Location: MLABCELL_X42_Y8_N30
\U3|COUNTER~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|COUNTER~0_combout\ = ( \U3|Equal0~0_combout\ & ( \U3|COUNTER~q\ ) ) # ( !\U3|Equal0~0_combout\ & ( (!\U3|process_0~0_combout\ & (((\U3|COUNTER~q\)))) # (\U3|process_0~0_combout\ & ((!\RESETN~input_o\ & ((\U3|COUNTER~q\))) # (\RESETN~input_o\ & 
-- (\U3|C_FLAG~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111011000000011111101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_process_0~0_combout\,
	datab => \U3|ALT_INV_C_FLAG~q\,
	datac => \ALT_INV_RESETN~input_o\,
	datad => \U3|ALT_INV_COUNTER~q\,
	dataf => \U3|ALT_INV_Equal0~0_combout\,
	combout => \U3|COUNTER~0_combout\);

-- Location: FF_X42_Y8_N31
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

-- Location: LABCELL_X5_Y27_N0
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


