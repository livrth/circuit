library ieee;
use ieee.std_logic_1164.all;

entity mux4case is
	port(d0: in std_logic_vector(3 downto 0);
			d1: in std_logic_vector(3 downto 0);
			d2: in std_logic_vector(3 downto 0);
			d3 : in std_logic_vector(3 downto 0);
			sel : in std_logic_vector(1 downto 0);
			q: out std_logic_vector(3 downto 0));
end mux4case;

architecture rtl of mux4case is
begin
	process(d0, d1, d2, d3, sel)
	begin
		case sel is
			when "00" => q <= d0;
			when "01" => q <= d1;
			when "10" => q <= d2;
			when "11" => q <= d3;
			when others => q <= "ZZZZ";
		end case;
	end process;
end rtl;