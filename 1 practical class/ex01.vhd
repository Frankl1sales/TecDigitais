LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex01 IS
	PORT (
	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
	s: out std_logic
	);
end ex01;

architecture arq_ex01 of ex01 is
begin
	s<= not (a and b) or (not c);
end arq_ex01;
