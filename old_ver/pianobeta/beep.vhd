library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity BEEP is
  port(
    CLK      : in std_logic;
    RESETN   : in std_logic;
    SCALE_IN : in std_logic_vector(4 downto 0);
    ENABLE   : in std_logic;
    BEEPOUT  : out std_logic );
end BEEP;

architecture RTL of BEEP is
  signal FLAG : std_logic
				  := '0';

  signal COUNT        : std_logic_vector(25 downto 0);

  constant ZEROCOUNT  : std_logic_vector(25 downto 0)
                      := "00000000000000000000000000";

-- #SET SCALE CODE #
							 
  constant F_TH   : std_logic_vector(25 downto 0)
                      := "00000000100011000100111110";
							 
  constant F_THS   : std_logic_vector(25 downto 0)
                      := "00000000100001001010111101";

  constant G_TH   : std_logic_vector(25 downto 0)
                      := "00000000011111010011001101";
							 
  constant G_THS   : std_logic_vector(25 downto 0)
                      := "00000000011101011111000100";
							 
  constant A_TH   : std_logic_vector(25 downto 0)
                      := "00000000011011101111100100";

  constant A_THS   : std_logic_vector(25 downto 0)
                      := "00000000011010001100100000";
  
  constant B_TH   : std_logic_vector(25 downto 0)
                      := "00000000011000110011111010";
							 
  constant C_FO   : std_logic_vector(25 downto 0)
                      := "00000000010111011000101001";

  constant C_FOS   : std_logic_vector(25 downto 0)
                      := "00000000010110000010001100";
							 
  constant D_FO   : std_logic_vector(25 downto 0)
                      := "00000000010100110101001100";
							 
  constant D_FOS   : std_logic_vector(25 downto 0)
                      := "00000000010011101000000001";

  constant E_FO   : std_logic_vector(25 downto 0)
                      := "00000000010010100011010011";
							 
  constant F_FO   : std_logic_vector(25 downto 0)
                      := "00000000010001011111010001";
							 
  constant F_FOS   : std_logic_vector(25 downto 0)
                      := "00000000010000100010100110";

  constant G_FO   : std_logic_vector(25 downto 0)
                      := "00000000001111100111000010";

  constant G_FOS   : std_logic_vector(25 downto 0)
                      := "00000000001110101101010000";
							 
  constant A_FO   : std_logic_vector(25 downto 0)
                      := "00000000001101110111110010";

  constant A_FOS   : std_logic_vector(25 downto 0)
                      := "00000000001101000110010000";
  
  constant B_FO   : std_logic_vector(25 downto 0)
                      := "00000000001100011000010101";
							 
  constant C_FI   : std_logic_vector(25 downto 0)
                      := "00000000001011101010111001";

  constant C_FIS   : std_logic_vector(25 downto 0)
                      := "00000000001011000001000110";
							 
  constant D_FI   : std_logic_vector(25 downto 0)
                      := "00000000001010011001011101";
							 
  constant D_FIS   : std_logic_vector(25 downto 0)
                      := "00000000001001110100000000";

  constant E_FI   : std_logic_vector(25 downto 0)
                      := "00000000001001010000110000";

  signal SCALE_BOUT  : std_logic_vector(25 downto 0)
							 := "00000000000000000000000000";

  begin
    process (ENABLE,SCALE_IN,CLK, RESETN) begin
		case SCALE_IN is
		  when "00000" => SCALE_BOUT <= ZEROCOUNT;  --NON
		  when "00001" => SCALE_BOUT <= F_TH;
		  when "00010" => SCALE_BOUT <= F_THS;
		  when "00011" => SCALE_BOUT <= G_TH;
		  when "00100" => SCALE_BOUT <= G_THS;
		  when "00101" => SCALE_BOUT <= A_TH;
		  when "00110" => SCALE_BOUT <= A_THS;
		  when "00111" => SCALE_BOUT <= B_TH;
		  when "01000" => SCALE_BOUT <= C_FO;
		  when "01001" => SCALE_BOUT <= C_FOS;
		  when "01010" => SCALE_BOUT <= D_FO;
		  when "01011" => SCALE_BOUT <= D_FOS;
		  when "01100" => SCALE_BOUT <= E_FO;
		  when "01101" => SCALE_BOUT <= F_FO;
		  when "01110" => SCALE_BOUT <= F_FOS;
		  when "01111" => SCALE_BOUT <= G_FO;
		  when "10000" => SCALE_BOUT <= G_FOS;
		  when "10001" => SCALE_BOUT <= A_FO;
		  when "10010" => SCALE_BOUT <= A_FOS;
		  when "10011" => SCALE_BOUT <= B_FO;
		  when "10100" => SCALE_BOUT <= C_FI;
		  when "10101" => SCALE_BOUT <= C_FIS;
		  when "10110" => SCALE_BOUT <= D_FI;
		  when "10111" => SCALE_BOUT <= D_FIS;
		  when "11000" => SCALE_BOUT <= E_FI;
		  when others  => SCALE_BOUT <= ZEROCOUNT;
      end case;

      if (RESETN='0') then
        COUNT <= ZEROCOUNT;
        BEEPOUT <= '0';
      elsif (CLK'event and CLK = '1') then
        if (ENABLE = '1') then

          if (COUNT < SCALE_BOUT) then
            COUNT <= COUNT + 1;
				if(FLAG ='0') then
				  BEEPOUT <= '1';
				else
				  BEEPOUT <= '0';
				end if;
			 end if;
			 
			 if (COUNT = SCALE_BOUT) then
			   COUNT <= ZEROCOUNT;
				if(FLAG = '0') then
				  FLAG <= '1';
				elsif(FLAG = '1') then
				  FLAG <= '0';
				else
				  FLAG <= '1';
				end if;
			 end if;
		  end if;
      end if;
    end process;

end RTL;
