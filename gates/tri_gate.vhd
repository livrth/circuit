library ieee;
use ieee.std_logic_1164.all;

entity tri_gate is
	port(din, en : in std_logic;
			dout : out std_logic);
end tri_gate;

architecture behave_arc of tri_gate is
begin
	process(din, en)
	begin
		if(en = '1') then
			dout <= din;
		else
			dout <= 'Z';
		end if;
	end process;
end behave_arc;

