library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CLOCK is
  port (
    CLK    : in std_logic;
	 STARTN : in std_logic;
    RESETN : in std_logic;
	 S_CHECK  : out std_logic;
	 R_CHECK  : out std_logic );
end CLOCK;

architecture RTL of CLOCK is

  component RATE port(
	 CLK      : in std_logic;
	 RESETN   : in std_logic;
	 SWIN : in std_logic;
	 ENABLE   : out std_logic );
  end component;
  
  component ONESHOT port(
    CLK   : in std_logic;
    RESETN: in std_logic;
    SWN   : in std_logic;
    SWONEN: out std_logic );
  end component;
  
  component SWITCH port(
	 CLK      : in std_logic;
	 RESETN   : in std_logic;
	 STARTN   : in std_logic;
	 SWOUT : out std_logic );
  end component;
  
  signal TW_START : std_logic;
  signal TW_SW: std_logic;
  signal SW_ENABLE : std_logic;
  
  begin
--  R_CHECK <= SW_ENABLE;
	 

	 U0  : ONESHOT port map(CLK=>CLK, RESETN=>RESETN, SWN=>STARTN, SWONEN=>TW_START );
	 U1  : SWITCH  port map(CLK=>CLK, RESETN=>RESETN, STARTN=>TW_START, SWOUT=>TW_SW );
	 S_CHECK <= TW_SW;
 	 U2  : RATE    port map(CLK=>CLK, RESETN=>RESETN, SWIN=>TW_SW, ENABLE=>R_CHECK );

  end RTL;
