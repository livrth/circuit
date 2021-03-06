library ieee;
use ieee.std_logic_1164.all;

entity mux4if is
	port(d0: in std_logic_vector(3 downto 0);
			d1: in std_logic_vector(3 downto 0);
			d2: in std_logic_vector(3 downto 0);
			d3 : in std_logic_vector(3 downto 0);
			sel : in std_logic_vector(1 downto 0);
			q: out std_logic_vector(3 downto 0));
end mux4if;

ARCHITECTURE rtl of mux4if is
begin
	process(d0, d1, d2, d3, sel)
	begin
		if(sel = "00") then
			q <= d0;
		elsif (sel = "01") then
			q <= d1;
		elsif (sel = "10") then
			q <= d2;
		else
			q <= d3;
		end if;
	end process;
end rtl;