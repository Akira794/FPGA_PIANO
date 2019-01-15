library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity LEDDEC is
  port(
	 DATA       : in std_logic_vector(4 downto 0);
	 S_LEDOUT   : out std_logic_vector(6 downto 0);
	 N_LEDOUT   : out std_logic_vector(6 downto 0);
	 K_LEDOUT   : out std_logic_vector(6 downto 0) );
end LEDDEC;


architecture RTL of LEDDEC is

    begin
      process (DATA) begin
        case DATA is
          when "00000" => S_LEDOUT <= "1111111"; N_LEDOUT <= "1111111"; K_LEDOUT <= "1111111"; --NON
          when "00001" => S_LEDOUT <= "0001110"; N_LEDOUT <= "0110000"; K_LEDOUT <= "0111111"; --F3
          when "00010" => S_LEDOUT <= "0001110"; N_LEDOUT <= "0110000"; K_LEDOUT <= "0010010"; --F3#
          when "00011" => S_LEDOUT <= "1000010"; N_LEDOUT <= "0110000"; K_LEDOUT <= "0111111"; --G3
          when "00100" => S_LEDOUT <= "1000010"; N_LEDOUT <= "0110000"; K_LEDOUT <= "0010010"; --G3#
          when "00101" => S_LEDOUT <= "0001000"; N_LEDOUT <= "0110000"; K_LEDOUT <= "0111111"; --A3
          when "00110" => S_LEDOUT <= "0000011"; N_LEDOUT <= "0110000"; K_LEDOUT <= "0001110"; --A3#(B3 b)
          when "00111" => S_LEDOUT <= "0000011"; N_LEDOUT <= "0110000"; K_LEDOUT <= "0111111"; --B3
			 when "01000" => S_LEDOUT <= "1000110"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0111111"; --C4
			 when "01001" => S_LEDOUT <= "1000110"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0010010"; --C4#
			 when "01010" => S_LEDOUT <= "0100001"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0111111"; --D4
			 when "01011" => S_LEDOUT <= "0100001"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0010010"; --D4#
			 when "01100" => S_LEDOUT <= "0000110"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0111111"; --E4
			 when "01101" => S_LEDOUT <= "0001110"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0111111"; --F4
			 when "01110" => S_LEDOUT <= "0001110"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0010010"; --F4#
			 when "01111" => S_LEDOUT <= "1000010"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0111111"; --G4
			 when "10000" => S_LEDOUT <= "1000010"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0010010"; --G4#
			 when "10001" => S_LEDOUT <= "0001000"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0111111"; --A4
			 when "10010" => S_LEDOUT <= "0000011"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0001110"; --A4#(B4 b)
			 when "10011" => S_LEDOUT <= "0000011"; N_LEDOUT <= "0011001"; K_LEDOUT <= "0111111"; --B4
			 when "10100" => S_LEDOUT <= "1000110"; N_LEDOUT <= "0010010"; K_LEDOUT <= "0111111"; --C5
			 when "10101" => S_LEDOUT <= "1000110"; N_LEDOUT <= "0010010"; K_LEDOUT <= "0010010"; --C5#
			 when "10110" => S_LEDOUT <= "0100001"; N_LEDOUT <= "0010010"; K_LEDOUT <= "0111111"; --D5
			 when "10111" => S_LEDOUT <= "0100001"; N_LEDOUT <= "0010010"; K_LEDOUT <= "0010010"; --D5#
			 when "11000" => S_LEDOUT <= "0000110"; N_LEDOUT <= "0010010"; K_LEDOUT <= "0111111"; --E5	
          when others  => S_LEDOUT <= "1001110"; N_LEDOUT <= "1001110"; K_LEDOUT <= "0000110"; --NON
          end case;
		end process;
  end RTL;
