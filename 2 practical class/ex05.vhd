LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ex05 IS
	PORT (
	a,b,c,d: in std_logic;
	sel1, sel2: in std_logic;
	y: out std_logic
	);
end ex05;

architecture arq_ex05 of ex05 is
begin
	y <= (not(sel1) and not(sel2) and a) or ((not(sel1) and sel2 and b) or (sel1 and not(sel2) and c) or (sel1 and sel2 and d));
end arq_ex05;