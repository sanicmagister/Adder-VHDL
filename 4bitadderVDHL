--4bitVHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Fulladd4Bit is
	generic (N: INTEGER:= 4);
	port 	(x4, y4 : in std_logic_vector (N-1 downto 0);
         s4     : out std_logic_vector (N-1 downto 0);
		cout4   : out std_logic);
end Fulladd4Bit;

architecture structure of Fulladd4Bit is
	component Fulladd
		port	( cin, x, y : in std_logic;
			s, cout	    : out std_logic);
	end component;

	signal c: std_logic_vector (N downto 0);

begin

  c(0) <= '0'; 
	cout4 <= c(N);

	gi: for i in 0 to N-1 generate
    fi: Fulladd port map (cin => c(i), x => x4(i), y => y4(i), s => s4(i), cout => c(i+1));
	end generate;

end structure;
