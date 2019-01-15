library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PIANOEINS is
  port (
    CLK    : in std_logic;
    PSWITCH : in std_logic_vector(23 downto 0);
    RESETN : in std_logic;
	 LED_S  : out std_logic_vector(6 downto 0);
	 LED_N  : out std_logic_vector(6 downto 0);
	 LED_K  : out std_logic_vector(6 downto 0);
    SPKR   : out std_logic );
end PIANOEINS;

architecture RTL of PIANOEINS is

  component SCALE port(
      PSW   : in std_logic_vector(23 downto 0);
      SCALE_OUT : out std_logic_vector(4 downto 0);
      ENABLE: out std_logic );
  end component;

  component BEEP port (
    CLK      : in std_logic;
    RESETN   : in std_logic;
    SCALE_IN : in std_logic_vector(4 downto 0);
    ENABLE   : in std_logic;
    BEEPOUT  : out std_logic );
  end component;

  component LEDDEC port(
	 DATA       : in std_logic_vector(4 downto 0);
	 S_LEDOUT   : out std_logic_vector(6 downto 0);
	 N_LEDOUT   : out std_logic_vector(6 downto 0);
	 K_LEDOUT   : out std_logic_vector(6 downto 0) );
  end component;
  
  signal W_SCALE : std_logic_vector(4 downto 0);
  signal W_ENABLE: std_logic;
  
  begin
    S0  : SCALE  port map(PSW=>PSWITCH, SCALE_OUT=>W_SCALE , ENABLE=>W_ENABLE );
    B1  : BEEP   port map(CLK=>CLK, RESETN=>RESETN, SCALE_IN=>W_SCALE, ENABLE=>W_ENABLE, BEEPOUT=>SPKR);
	 L1  : LEDDEC port map(DATA=>W_SCALE, S_LEDOUT=>LED_S, N_LEDOUT=>LED_N, K_LEDOUT=>LED_K );
  end RTL;
