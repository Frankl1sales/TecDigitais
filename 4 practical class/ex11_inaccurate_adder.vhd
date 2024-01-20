library IEEE;
use IEEE.std_logic_1164.all;

Entity ex11_inaccurate_adder is
	port(
		a, b : in std_logic;
		sum : out std_logic
	);
end ex11_inaccurate_adder;

architecture arch_ex11_inaccurate_adder of ex11_inaccurate_adder is 
begin
	sum <= a or b;
end arch_ex11_inaccurate_adder; 