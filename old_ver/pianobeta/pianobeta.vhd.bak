library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PIANOALPHA is
  port (
    CLK    : in std_logic;
    PSWITCH : in std_logic_vector(7 downto 0);
    RESETN : in std_logic;
    SPKR   : out std_logic );
end PIANOALPHA;

architecture RTL of PIANOALPHA is

  component SCALE port(
      PSW   : in std_logic_vector(7 downto 0);
      SCALE_OUT : out std_logic_vector(3 downto 0);
      ENABLE: out std_logic );
  end component;

  component BEEP port (
    CLK      : in std_logic;
    RESETN   : in std_logic;
    SCALE_IN : in std_logic_vector(3 downto 0);
    ENABLE   : in std_logic;
    BEEPOUT  : out std_logic );
  end component;

  signal W_SCALE : std_logic_vector(3 downto 0);
  signal W_ENABLE: std_logic;
  
  begin
    S0  : SCALE port map(PSW=>PSWITCH, SCALE_OUT=>W_SCALE , ENABLE=>W_ENABLE );
    B1  : BEEP  port map(CLK=>CLK, RESETN=>RESETN, SCALE_IN=>W_SCALE, ENABLE=>W_ENABLE, BEEPOUT=>SPKR);

  end RTL;
