library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity MUSIC is
  port(
	 CLK        : in std_logic;
	 RESETN     : in std_logic;
	 SWIN       : in std_logic;
	 ENABLE     : in std_logic;
	 C_LED      : out std_logic;
	 SCALE_MOUT : out std_logic_vector(4 downto 0);
	 ENABLE_OUT : out std_logic );
  end MUSIC;

architecture RTL of MUSIC is
	 
	 constant EIGHT3 : std_logic_vector(2 downto 0) := "111";
	 constant ZERO3  : std_logic_vector(2 downto 0) := "000";
	 
	 signal VAL_C : std_logic_vector(2 downto 0);
	 signal C_FLAG : std_logic := '0';
	 signal COUNTER : std_logic := '0';

	 --music--	 
	 signal ZERO5  : std_logic_vector(4 downto 0):= "00000";
	 signal SCALE   : std_logic_vector(4 downto 0);
	 signal S_FLAG  : std_logic;
	 signal NUM   : std_logic_vector( 4 downto 0) := "00000";
	 signal FLAG    : std_logic := '0';
	 signal i      : integer := 0;
	 
	 subtype DATA is std_logic_vector( 4 downto 0);
	 
	
	 type SCORE is array ( 0 to 63 ) of DATA; --63 --23
	 constant SCORE_T : SCORE := (
--	 "01101", "10001", "01111", "01000", "00000", "00000", "01101", "01111", 
--	 "10001", "01101", "00000", "00000", "10001", "01101", "01111", "01000", 
--	 "00000", "00000", "01000", "01111", "10001", "01101", "00000", "00000"
	 
	 "00000", "00000", "00000", "00000", "00000", "00000", "00000", "00000",
	 "01000", "01000", "01111", "01111", "10001", "10001", "01111", "00000",
	 "01101", "01101", "01100", "01100", "01010", "01010", "01000", "00000",
	 "01111", "00000", "01101", "00000", "01100", "00000", "01010", "00000",
	 "01111", "00000", "01101", "00000", "01100", "00000", "01010", "00000",	 
	 "01000", "01000", "01111", "01111", "10001", "10001", "01111", "00000",
	 "01101", "01101", "01100", "01100", "01010", "01010", "01000", "00000",
	 "00000", "01111", "00000", "01101", "00000", "01100", "00000", "00000"
	 );
	 
	 begin
	   C_LED <= COUNTER;
		ENABLE_OUT <= S_FLAG;
		SCALE_MOUT <= SCALE;

		--counter--
      process (CLK, RESETN) begin
		  if (RESETN = '0') then
		    VAL_C  <= ZERO3;
		    C_FLAG <= '0';

        elsif (CLK'event and CLK = '1') then
          if (ENABLE = '1' and SWIN = '1') then

            if (VAL_C = EIGHT3) then
              VAL_C <= ZERO3;
				  if(C_FLAG <= '0') then
					 COUNTER <= '1';
					 C_FLAG <= '1';
				  elsif(C_FLAG <= '1') then
					 COUNTER <= '0';
					 C_FLAG <= '0';
				  end if;
				  
            else
              VAL_C <= VAL_C + 1;
				  if(C_FLAG <= '0') then
					 COUNTER <= '1';
					 C_FLAG <= '1';
				  elsif(C_FLAG <= '1') then
					 COUNTER <= '0';
					 C_FLAG <= '0';
					  
				  end if;
            end if;
          end if;
		  end if;
      end process;
		
		process (CLK, RESETN) begin
		  if(RESETN = '0') then
		    SCALE <= ZERO5;
			 S_FLAG <= '0';
			 i <= 0;
		  
		  elsif(CLK'event and CLK = '1') then 
		    if(    COUNTER = '1') then
			   SCALE <= NUM;
				S_FLAG <= '1';
			 elsif( COUNTER = '0' and SWIN = '1') then
			   NUM <= SCORE_T(i);
				i <= i + 1;
		      SCALE <= ZERO5;
				S_FLAG <= '0';
			 else
			   SCALE <= ZERO5;
			   S_FLAG <= '0';
			   i <= 0;
			 end if;
		  end if;
      end process;
		
  end RTL;
