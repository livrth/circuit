library ieee;
use ieee.std_logic_1164.all;

entity async_rsjkff is
	port(j, k, clk, set, reset : in std_logic;
		q, qb : out std_logic);
end entity;

architecture rtl_arc of async_rsjkff is
	signal q_temp, qb_temp : std_logic;
begin
	process(clk, set, reset)
	begin
		if(set = '0' and reset = '1') then
			q_temp <= '1';
			qb_temp <= '0';
		elsif(set = '1' and reset = '0') then
			q_temp <= '0';
			qb_temp <= '1';
		elsif(clk'event and clk = '1') then
			if(j = '0' and k = '1') then
				q_temp <= '0';
				qb_temp <= '1';
			elsif(j = '1' and k = '0') then
				q_temp <= '1';
				qb_temp <= '0';
			elsif(j = '1' and k = '1') then
				q_temp <= not q_temp;
				qb_temp <= not qb_temp;
			end if;
		end if;
		q <= q_temp;
		qb <= qb_temp;
	end process;
end architecture;