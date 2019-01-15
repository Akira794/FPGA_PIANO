library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity COUNTER is
  port (
    CLK: in std_logic;
    RESETN : in std_logic;
    ENABLE : in std_logic;
    COUNTING: in std_logic;
    COUNTL : out std_logic_vector(3 downto 0); -- 1/10[s]
    COUNTH : out std_logic_vector(3 downto 0); -- 1/1[s]
	 C_LED  : out std_logic
  );
end COUNTER;

architecture RTL of COUNTER is

  constant NINE4 : std_logic_vector(3 downto 0) := "1001";
  constant FIVE4 : std_logic_vector(3 downto 0) := "0101";
  constant ZERO4 : std_logic_vector(3 downto 0) := "0000";
  constant ZERO  : std_logic := '0';

  signal  VAL_L   : std_logic_vector(3 downto 0);
  signal  VAL_H   : std_logic_vector(3 downto 0);
  signal  FLAG : std_logic;
  signal  COUNTER : std_logic := '1';
  signal  C_FLAG : std_logic;

  begin
    COUNTL <= VAL_L;
    COUNTH <= VAL_H;
	 C_LED <= COUNTER;
	 
    process (CLK, RESETN) begin
      if (RESETN = '0') then
        VAL_L <= ZERO4;
        FLAG <= '0';
		  C_FLAG <= '0';

      elsif (CLK'event and CLK = '1') then
        if (ENABLE = '1' and COUNTING = '1') then
          if (VAL_L = NINE4) then
            VAL_L <= ZERO4;
            FLAG <= '1';
				C_FLAG <= '1';

          else
            VAL_L <= VAL_L + 1;
				if(C_FLAG <= '0') then
					COUNTER <= '0';
					C_FLAG <= '1';
				elsif(C_FLAG <= '1') then
					COUNTER <= '1';
					C_FLAG <= '0';
				end if;
				
            FLAG <= '0';
				

          end if;
        else
          FLAG <= '0';

        end if;
      end if;
    end process;

    process (CLK, RESETN) begin
      if (RESETN = '0') then
        VAL_H <= ZERO4;
      elsif (CLK'event and CLK = '1') then
        if ( FLAG = '1') then
          if (VAL_H = FIVE4) then
            VAL_H <= ZERO4;
          else
            VAL_H <= VAL_H + 1;
          end if;
        end if;
      end if;
    end process;
end RTL;
