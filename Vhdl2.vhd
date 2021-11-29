LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mux4 IS
	PORT (d0, d1, d2, d3 : IN std_logic;
	sel: IN std_logic_vector(1 downto 0);
	q : OUT std_logic);
END mux4;

ARCHITECTURE rtl of mux4 IS
	BEGIN
	WITH sel SELECT 
	q <= d0  WHEN "00",
		  d1  WHEN "01",
		  d2  WHEN "10",
		  d3  WHEN OTHERS;
END rtl;