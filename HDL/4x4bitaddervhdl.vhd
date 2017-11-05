library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_vhd is
	port	(A, B, C, D : in std_logic_vector (3 downto 0);
         S        	: out std_logic_vector (5 downto 0));
end full_adder_vhd;

architecture structure of full_adder_vhd is

	component Fulladd
			port (cin, x, y : in std_logic;
			      s, cout   : out std_logic);
	end component;

	component Fulladd4Bit
	generic (N: INTEGER:= 4);
			port	(x4, y4 	: in std_logic_vector (N-1 downto 0);
         s    4m		  : out std_logic_vector (N-1 downto 0);
		 	 cout4	: out std_logic);
	end component;

	component Fulladd5Bit
	generic (N: INTEGER:= 5);
	port	(x5, y5	: in std_logic_vector (N-1 downto 0);
        	s5		: out std_logic_vector (N-1 downto 0);
					cout5	: out std_logic);
	end component;

	signal lsbAB 		: std_logic_vector (3 downto 0);
	signal msbAB 		: std_logic;
	signal lsbCD 		: std_logic_vector (3 downto 0);
	signal msbCD 		: std_logic;
	signal AB     	: std_logic_vector (4 downto 0);
	signal CD 			: std_logic_vector (4 downto 0);
	signal lsbABCD 	: std_logic_vector (4 downto 0);
	signal msbABCD	: std_logic;
	signal hasil		: std_logic_vector (5 downto 0);

	begin

	f41: Fulladd4Bit port map (x4 => A, y4 => B, s4 => lsbAB, cout4 => msbAB);
  f42: Fulladd4Bit port map (x4 => C, y4 => D, s4 => lsbCD, cout4 => msbCD);

	AB <= msbAB & lsbAB;
	CD <= msbCD & lsbCD;

	f5: Fulladd5Bit port map (x5 => AB, y5 => CD, s5 => lsbABCD, cout5 => msbABCD);

	hasil <= msbABCD & lsbABCD;
	S <= hasil;

end structure;
