library ieee;
use ieee.std_logic_1164.all;

entity MUX41 is
	port(a,b,c,d : in std_logic;
			s : in std_logic_vector(1 downto 0);
			y : out std_logic);
end MUX41;

architecture rtl of MUX41 is
begin
	y <= a when s = "00" else
			b when s = "01" else
			c when s = "10" else
			d when s = "11" else
			'X';
end rtl;