library ieee;
use ieee.std_logic_1164.all;

entity basic_dff is
	port(d, clk : in std_logic;
		q, qb : out std_logic);
end entity;

architecture rtl_arc of basic_dff is
begin
	process(clk)
	begin
		if(clk'event and clk = '1') then
			q <= d;
			qb <= not d;
		end if;
	end process;
end architecture;