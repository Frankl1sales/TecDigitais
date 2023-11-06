LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex04 IS
	PORT (
	a,b,c: in std_logic;
	p: out std_logic
	);
end ex04;

architecture arq_ex04 of ex04 is
begin
	p <= ((not(a) and not(b) and c) or (not(a) and b and not(c)) or (a and not(b) and not (c)) or (a and b and c));
end arq_ex04;