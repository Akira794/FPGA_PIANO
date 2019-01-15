library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity SCALE is
  port(
    PSW   : in std_logic_vector(7 downto 0);
    SCALE_OUT : out std_logic_vector(3 downto 0);
    ENABLE: out std_logic );
end SCALE;

architecture RTL of SCALE is

    begin
      process (PSW) begin
          case PSW is
            when "00000001" => SCALE_OUT <= "0000"; ENABLE <= '1';--C4
            when "00000010" => SCALE_OUT <= "0001"; ENABLE <= '1';--D4
            when "00000100" => SCALE_OUT <= "0010"; ENABLE <= '1';--E4
            when "00001000" => SCALE_OUT <= "0011"; ENABLE <= '1';--F4
            when "00010000" => SCALE_OUT <= "0100"; ENABLE <= '1';--G4
            when "00100000" => SCALE_OUT <= "0101"; ENABLE <= '1';--A5
            when "01000000" => SCALE_OUT <= "0110"; ENABLE <= '1';--B5
            when "10000000" => SCALE_OUT <= "0111"; ENABLE <= '1';--C5
            when others     => SCALE_OUT <= "1000"; ENABLE <= '0';--ERROR
          end case;
      end process;

  end RTL;
