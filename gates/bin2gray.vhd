library ieee;
use ieee.std_logic_1164.all;

entity BIN2GRAY is
	port(data_in : in std_logic_vector(3 downto 0);
		en : in std_logic;
		data_out : out std_logic_vector(3 downto 0));
end entity;

architecture bin2gray_arch of BIN2GRAY is
begin
	data_out(0) <= (data_in(0) xor data_in(1)) and en;
	data_out(1) <= (data_in(1) xor data_in(2)) and en;
	data_out(2) <= (data_in(2) xor data_in(3)) and en;
	data_out(3) <= (data_in(3)) and en;
end architecture;