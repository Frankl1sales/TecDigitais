LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex03 IS
	PORT (
	a: in std_logic_vector(2 downto 0);
	s: out std_logic
	);
end ex03;

architecture arq_ex03 of ex03 is
signal x: std_logic_vector(2 downto 0);
begin
	x(0) <= a(2) and a(1);
	x(1) <= not x(0);
	x(2) <= not a(0);
	s <= x(1) or x(2);
end arq_ex03;