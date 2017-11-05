-- 5 BIT VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Fulladd5Bit is
	generic (N: INTEGER:= 5);
	port	(x5, y5 : in std_logic_vector (N-1 downto 0);
        	s5	: out std_logic_vector (N-1 downto 0);
		cout5	: out std_logic);
end Fulladd5Bit;

architecture structure of Fulladd5Bit is

	component Fulladd
		port( cin, x, y : in std_logic;
			s, cout   : out std_logic);
	end component;

	signal c: std_logic_vector (N downto 0);

begin

    c(0) <= '0';
	  cout5 <= c(N);

    gi: for i in 0 to N-1 generate
      fi: Fulladd port map (cin=>c(i), x=>x5(i), y=>y5(i), s=>s5(i), cout=>c(i+1));
	  end generate;

end structure;
