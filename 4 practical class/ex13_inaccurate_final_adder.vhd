library IEEE;
use IEEE.std_logic_1164.all;

Entity ex13_inaccurate_final_adder is
	port(
		a, b	:	in std_logic;
		sum	:	out std_logic;
		c_in	:	out std_logic
	);
end ex13_inaccurate_final_adder;

architecture arch_ex13_inaccurate_final_adder of ex13_inaccurate_final_adder is 
begin
	sum <= a or b;
	c_in <= a and b;
end arch_ex13_inaccurate_final_adder; 