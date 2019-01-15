library ieee;
use ieee.std_logic_1164.all;

entity BEEP_TB is
end BEEP_TB;

architecture TESTBENCH of BEEP_TB is
  component BEEP is
    port (
      CLK    : in std_logic;
      SWITCH : in std_logic;
      RESETN : in std_logic;
      SPKR   : out std_logic );
    end component;

    signal TBCLK, TBSW, TBRESETN :std_logic;
    signal TBSP : std_logic;

  begin
    U1: BEEP port map ( CLK=>TBCLK, SWITCH=>TBSW, RESETN=>TBRESETN, SPKR=>TBSP);

    process begin
      TBCLK <='1'; wait for 10 ns;
      TBCLK <='0'; wait for 10 ns;
    end process;

    process begin
      TBRESETN <= '0'; wait for 100 ns;
      TBRESETN <= '1'; wait;
    end process;

    process begin
      TBSW <= '0'; wait for 1000 ns;
      TBSW <= '1'; wait;
    end process;


    stop_simulation :process
    begin
      wait for 6000000 ns;
      assert false
        report "simulation ended"
        severity failure;
    end process;
end TESTBENCH;

configuration CFG_BEEP_TB of BEEP_TB is
  for TESTBENCH
    for U1: BEEP
    end for;
  end for;
end;
