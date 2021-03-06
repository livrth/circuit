library ieee;
use ieee.std_logic_1164.all;

entity logic_and is
	port(input: IN std_logic_vector(7 downto 0);
			q : out std_logic);
end logic_and;

architecture behave of logic_and is
begin
	process(input)
	variable tmp : std_logic;
	variable i : integer;
	begin
		tmp := '1';
		i := 0;
		while(i < 8) loop
			tmp := tmp and input(i);
			i := i + 1;
		end loop;
		q <= tmp;
	end process;
end behave;
