library ieee;
use ieee.std_logic_1164.all;

entity SWITCH is
  port (
      CLK : in std_logic;
      RESETN : in std_logic;
      STARTN : in std_logic;
      SWOUT : out std_logic );
end SWITCH;

architecture RTL of SWITCH is
  signal SW_FF : std_logic;

  begin
    SWOUT <= SW_FF;
    process (CLK,RESETN) begin
      if (RESETN = '0') then
        SW_FF<='0';
      elsif ( CLK'event and CLK = '1') then
        if (STARTN='0') then
          SW_FF <= not SW_FF;
        end if;
      end if;
    end process;
end RTL;
