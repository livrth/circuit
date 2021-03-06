LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY and_gate IS
	PORT(a,b:IN std_logic;
			x:OUT std_logic);
END and_gate;

ARCHITECTURE rtl OF and_gate IS
	BEGIN
	x <= '0' WHEN a='0' AND b = '0' ELSE
	'0' WHEN a = '0' AND b ='1' ELSE
	'0' WHEN a = '1' AND b = '0' ELSE
	'1';
END rtl;