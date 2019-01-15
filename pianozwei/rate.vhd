library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity RATE is
  port(
    CLK      : in std_logic;
    RESETN   : in std_logic;
    SWIN     : in std_logic;
    ENABLE   : out std_logic );
  end RATE;

architecture RTL of RATE is
  signal COUNT        : std_logic_vector(25 downto 0);
  constant MAXCOUNT   : std_logic_vector(25 downto 0)
                      --:= "00001011111010111100001000"; -- 16Hz (3125000)
							 --:= "00010111110101111000010000"; --8 Hz(6250000)
							 := "00101111101011110000100000"; --4 Hz
							 --:= "01011111010111100001000000"; --2 Hz
							 --:= "10111110101111000010000000";
  constant ZEROCOUNT  : std_logic_vector(25 downto 0)
                      := "00000000000000000000000000";
  begin
    process (CLK, RESETN) begin
		if(RESETN = '0') then
		  COUNT <= MAXCOUNT;
		  ENABLE <= '0';
		elsif(CLK'event and CLK = '1') then
		  if(SWIN = '1') then
		    if(COUNT = ZEROCOUNT) then
				COUNT <= MAXCOUNT;
				ENABLE <= '1';			 
			 else
			   COUNT <= COUNT - 1;
			   ENABLE <= '0';
		    end if;
		  end if;
		end if;
    end process;
end RTL;