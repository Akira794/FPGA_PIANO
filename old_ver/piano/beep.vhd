library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity BEEP is
  port(
    CLK      : in std_logic;
    RESETN   : in std_logic;
    SCALE_IN : in std_logic_vector(3 downto 0);
    ENABLE   : in std_logic;
    BEEPOUT  : out std_logic );
end BEEP;

architecture RTL of BEEP is
  signal FLAG : std_logic
				  := '0';

  signal COUNT        : std_logic_vector(25 downto 0);

  constant ZEROCOUNT  : std_logic_vector(25 downto 0)
                      := "00000000000000000000000000";

  constant C_BOUT   : std_logic_vector(25 downto 0)
                      := "00000000010111011000101001";

  constant D_BOUT   : std_logic_vector(25 downto 0)
                      := "00000000010100110101001100";

  constant E_BOUT   : std_logic_vector(25 downto 0)
                      := "00000000010010100011010011";

  constant F_BOUT   : std_logic_vector(25 downto 0)
                      := "00000000010001011111010001";

  constant G_BOUT   : std_logic_vector(25 downto 0)
                      := "00000000001111100111000010";

  constant A_BOUT   : std_logic_vector(25 downto 0)
                      := "00000000001101110111110010";

  constant B_BOUT   : std_logic_vector(25 downto 0)
                      := "00000000001100010110101111";

  constant OC_C_BOUT: std_logic_vector(25 downto 0)
                      := "00000000001011101010111001";

							 
							 
							 
  signal SCALE_BOUT  : std_logic_vector(25 downto 0);

  begin
    process (ENABLE,SCALE_IN,CLK, RESETN) begin
      if (SCALE_IN = "0000") then
        SCALE_BOUT  <= C_BOUT;

      elsif (SCALE_IN = "0001") then
        SCALE_BOUT  <= D_BOUT;

      elsif (SCALE_IN = "0010") then
        SCALE_BOUT  <= E_BOUT;

      elsif (SCALE_IN = "0011") then
        SCALE_BOUT  <= F_BOUT;

      elsif (SCALE_IN = "0100") then
        SCALE_BOUT  <= G_BOUT;

      elsif (SCALE_IN = "0101") then
        SCALE_BOUT  <= A_BOUT;

      elsif (SCALE_IN = "0110") then
        SCALE_BOUT  <= B_BOUT;

      elsif (SCALE_IN = "0111") then
        SCALE_BOUT  <= OC_C_BOUT;

      else
        SCALE_BOUT  <= ZEROCOUNT;
		  
		end if;

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
