library ieee;
use ieee.std_logic_1164.all;

entity comparison is
	port(a : in std_logic;
		b : in std_logic;
		q : out std_logic_vector(2 downto 0));
end comparison;

architecture behave_arc of comparison is
begin
	process (a,b)
	begin
		if(a = b) then
			q <= "001";
		elsif(a > b) then
			q <= "010";
		else 
			q <= "100";
		end if;
	end process;
end behave_arc;
