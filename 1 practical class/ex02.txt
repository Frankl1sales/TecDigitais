LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex02 IS
	PORT (
	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
	s: out std_logic
	);
end ex02;

architecture arq_ex02 of ex02 is
signal x, y, z: std_logic;
begin
	x <= a and b;
	y <= not x;
	z <= not c;
	s<= z or y;
end arq_ex02;