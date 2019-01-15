library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity BEEP440 is
  port(
    CLK      : in std_logic;
    RESETN   : in std_logic;
    SWN      : in std_logic;
    BEEPOUT   : out std_logic );
  end BEEP440;

architecture RTL of BEEP440 is
  signal COUNT        : std_logic_vector(25 downto 0);
  constant MAXCOUNT   : std_logic_vector(25 downto 0)
                      := "10111110101111000010000000";
                --    := "00000000000000000000000010";

  constant C_COUNT   : std_logic_vector(25 downto 0)
                      := "00000000011011101111100100";

  constant C_BEEPOUT : std_logic_vector(25 downto 0)
                      := "00000000001101110111110010";

  constant ZEROCOUNT  : std_logic_vector(25 downto 0)
                      := "00000000000000000000000000";

  signal FLAG : std_logic
					 := '0';
  begin
    process (CLK, RESETN) begin
      if (RESETN='0') then
        COUNT <= ZEROCOUNT;
        BEEPOUT <= '0';
      elsif (CLK'event and CLK = '1') then
        if (SWN = '1') then

			 if(COUNT < C_BEEPOUT) then
			   COUNT <= COUNT + 1;
				if(FLAG = '0') then
				  BEEPOUT <= '1';
				else
				  BEEPOUT <= '0';
				end if;
			 end if;
			 
			 if(COUNT = C_BEEPOUT) then
				COUNT <= ZEROCOUNT;
				if(FLAG ='0') then
					FLAG <= '1';
				elsif(FLAG = '1') then
					FLAG <= '0';
				else
					flag <= '1';
				end if;
			 end if;
			 
--          if (COUNT = C_COUNT) then
--            COUNT <= ZEROCOUNT;

--          elsif (COUNT < C_BEEPOUT) then
--            COUNT <= COUNT + 1;
--            BEEPOUT <= '1';

--          else
--            COUNT <= COUNT + 1;
--            BEEPOUT <= '0';

--          end if;
        end if;
      end if;
    end process;



end RTL;
