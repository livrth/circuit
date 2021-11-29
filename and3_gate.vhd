library ieee;
use ieee.std_logic_1164.all;

entity and3_gate is
	port(a,b,c: in std_logic;
			y : out std_logic);
end and3_gate;

architecture behave_arc of and3_gate is
begin
	process(a,b,c)
	begin
		y <= a and b and c;
	end process;
end behave_arc;

