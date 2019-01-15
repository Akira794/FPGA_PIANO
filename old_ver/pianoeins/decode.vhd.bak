library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity SCALE is
  port(
    PSW   : in std_logic_vector(23 downto 0);
    SCALE_OUT : out std_logic_vector(4 downto 0);
    ENABLE: out std_logic );
end SCALE;

architecture RTL of SCALE is

    begin
      process (PSW) begin
        case PSW is
          when "000000000000000000000000" => SCALE_OUT <= "00000"; ENABLE <= '0'; --NON
          when "000000000000000000000001" => SCALE_OUT <= "00001"; ENABLE <= '1'; --F3
          when "000000000000000000000010" => SCALE_OUT <= "00010"; ENABLE <= '1'; --F3#
          when "000000000000000000000100" => SCALE_OUT <= "00011"; ENABLE <= '1'; --G3
          when "000000000000000000001000" => SCALE_OUT <= "00100"; ENABLE <= '1'; --G3#
          when "000000000000000000010000" => SCALE_OUT <= "00101"; ENABLE <= '1'; --A3
          when "000000000000000000100000" => SCALE_OUT <= "00110"; ENABLE <= '1'; --A3#
          when "000000000000000001000000" => SCALE_OUT <= "00111"; ENABLE <= '1'; --B3
			 when "000000000000000010000000" => SCALE_OUT <= "01000"; ENABLE <= '1'; --C4
			 when "000000000000000100000000" => SCALE_OUT <= "01001"; ENABLE <= '1'; --C4#
			 when "000000000000001000000000" => SCALE_OUT <= "01010"; ENABLE <= '1'; --D4
			 when "000000000000010000000000" => SCALE_OUT <= "01011"; ENABLE <= '1'; --D4#
			 when "000000000000100000000000" => SCALE_OUT <= "01100"; ENABLE <= '1'; --E4
			 when "000000000001000000000000" => SCALE_OUT <= "01101"; ENABLE <= '1'; --F4
			 when "000000000010000000000000" => SCALE_OUT <= "01110"; ENABLE <= '1'; --F4#
			 when "000000000100000000000000" => SCALE_OUT <= "01111"; ENABLE <= '1'; --G4
			 when "000000001000000000000000" => SCALE_OUT <= "10000"; ENABLE <= '1'; --G4#
			 when "000000010000000000000000" => SCALE_OUT <= "10001"; ENABLE <= '1'; --A4
			 when "000000100000000000000000" => SCALE_OUT <= "10010"; ENABLE <= '1'; --A4#
			 when "000001000000000000000000" => SCALE_OUT <= "10011"; ENABLE <= '1'; --B4
			 when "000010000000000000000000" => SCALE_OUT <= "10100"; ENABLE <= '1'; --C5
			 when "000100000000000000000000" => SCALE_OUT <= "10101"; ENABLE <= '1'; --C5#
			 when "001000000000000000000000" => SCALE_OUT <= "10110"; ENABLE <= '1'; --D5
			 when "010000000000000000000000" => SCALE_OUT <= "10111"; ENABLE <= '1'; --D5#
			 when "100000000000000000000000" => SCALE_OUT <= "11000"; ENABLE <= '1'; --E5	
          when others     						=> SCALE_OUT <= "11001"; ENABLE <= '0';--ERROR
          end case;
      end process;

  end RTL;
