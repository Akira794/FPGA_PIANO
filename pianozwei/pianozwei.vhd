library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PIANOZWEI is
  port (
    CLK    : in std_logic;
    PSWITCH : in std_logic_vector(23 downto 0);
	 STARTN : in std_logic;
    RESETN : in std_logic;
	 LED_S  : out std_logic_vector(6 downto 0);
	 LED_N  : out std_logic_vector(6 downto 0);
	 LED_K  : out std_logic_vector(6 downto 0);
	 R_CHECK  : out std_logic;
	 S_CHECK  : out std_logic;
	 SPKR   : out std_logic );
end PIANOZWEI;

architecture RTL of PIANOZWEI is

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

  component MUSIC port(
	 CLK        : in std_logic;
	 RESETN     : in std_logic;
	 SWIN       : in std_logic;
	 ENABLE     : in std_logic;
	 C_LED      : out std_logic;
    SCALE_MOUT : out std_logic_vector(4 downto 0);
	 ENABLE_OUT : out std_logic );
  end component;
  
  component SCALESWITCH port(
	 SCALE_IN  : in std_logic_vector(4 downto 0);
	 MUSIC_IN  : in std_logic_vector(4 downto 0);
	 ENABLE_S  : in std_logic;
	 ENABLE_M  : in std_logic;
	 SWIN  : in std_logic;
	 SCALE_SWOUT : out std_logic_vector(4 downto 0);
	 ENABLE    : out std_logic );
  end component;
  
  signal W_SCALE : std_logic_vector(4 downto 0);
  signal W_ENABLE: std_logic;
  signal TW_START : std_logic;
  signal TW_SW: std_logic
				  := '0';
  signal SW_ENABLE : std_logic;
  signal TW_ENABLE : std_logic;
  signal TW_SCALE: std_logic_vector(4 downto 0);
  signal BIN_SCALE : std_logic_vector(4 downto 0);
  signal BIN_ENABLE: std_logic;
  
  begin
  S_CHECK <= TW_SW;
	 
    S0  : SCALE   port map(PSW=>PSWITCH, SCALE_OUT=>W_SCALE , ENABLE=>W_ENABLE );
    
	 U0  : ONESHOT port map(CLK=>CLK, RESETN=>RESETN, SWN=>STARTN, SWONEN=>TW_START );
	 U1  : SWITCH  port map(CLK=>CLK, RESETN=>RESETN, STARTN=>TW_START, SWOUT=>TW_SW );
 	 U2  : RATE    port map(CLK=>CLK, RESETN=>RESETN, SWIN=>TW_SW, ENABLE=>SW_ENABLE );
	
 	 U3  : MUSIC   port map(CLK=>CLK, RESETN=>RESETN, SWIN=>TW_SW, ENABLE=>SW_ENABLE, C_LED=>R_CHECK, SCALE_MOUT=>TW_SCALE, ENABLE_OUT=>TW_ENABLE);
	 
 	 C0  : SCALESWITCH port map(SCALE_IN=>W_SCALE, MUSIC_IN=>TW_SCALE, ENABLE_S=>W_ENABLE, ENABLE_M=>TW_ENABLE, SWIN=>TW_SW, SCALE_SWOUT=>BIN_SCALE, ENABLE=> BIN_ENABLE );
	 
 	 B1  : BEEP    port map(CLK=>CLK, RESETN=>RESETN, SCALE_IN=>BIN_SCALE, ENABLE=>BIN_ENABLE, BEEPOUT=>SPKR);
 	 L1  : LEDDEC  port map(DATA=>BIN_SCALE, S_LEDOUT=>LED_S, N_LEDOUT=>LED_N, K_LEDOUT=>LED_K );
	 
  end RTL;
