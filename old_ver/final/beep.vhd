library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity BEEP is
  port (
    CLK    : in std_logic;
    SWITCH : in std_logic;
    RESETN : in std_logic;
    SPKR   : out std_logic );
end BEEP;

architecture RTL of BEEP is

  component BEEP440 port (
    CLK      : in std_logic;
    RESETN   : in std_logic;
    SWN      : in std_logic;
    BEEPOUT  : out std_logic );
  end component;

  
  begin
  
    U0 : BEEP440 port map (CLK=>CLK, RESETN=>RESETN, SWN=>SWITCH, BEEPOUT=>SPKR );

  end RTL;
