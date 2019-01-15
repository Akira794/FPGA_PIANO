library ieee;
use ieee.std_logic_1164.all;

entity SCALESWITCH is
  port(
	 SCALE_IN  : in std_logic_vector(4 downto 0);
	 MUSIC_IN  : in std_logic_vector(4 downto 0);
	 ENABLE_S  : in std_logic;
	 ENABLE_M  : in std_logic;
	 SWIN      : in std_logic;
	 SCALE_SWOUT : out std_logic_vector(4 downto 0);
	 ENABLE    : out std_logic );
  end SCALESWITCH;


architecture RTL of SCALESWITCH is
  signal SCALE_ZERO : std_logic_vector(4 downto 0)
						  := "00000";
  
  signal SCALE_TEST : std_logic_vector(4 downto 0)
						  := "01000";

  begin
    process(SWIN, ENABLE_S, ENABLE_M, SCALE_IN, MUSIC_IN) begin
		if (SWIN = '1') then SCALE_SWOUT <= MUSIC_IN; ENABLE <= ENABLE_M;
		elsif(SWIN = '0') then SCALE_SWOUT <= SCALE_IN; ENABLE <= ENABLE_S;
	   else  SCALE_SWOUT<= SCALE_ZERO; ENABLE<= '0';

	   end if;
	 end process;
end RTL;
