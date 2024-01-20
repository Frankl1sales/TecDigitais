library IEEE;
use IEEE.std_logic_1164.all;

Entity ex10_inaccurate_half_adder is
	port(
		a, b : in std_logic;
		sum : out std_logic
	);
end ex10_inaccurate_half_adder;

architecture arch_ex10_inaccurate_half_adder of ex10_inaccurate_half_adder is 
begin
	sum <= a or b;
end arch_ex10_inaccurate_half_adder;