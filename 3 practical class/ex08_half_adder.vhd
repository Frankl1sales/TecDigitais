library IEEE;
use IEEE.std_logic_1164.all;

Entity ex08_half_adder is
	port(
		a, b : in std_logic;
		sum, carry : out std_logic
	);
end ex08_half_adder;

architecture arch_ex08_half_adder of ex08_half_adder is 
begin
	sum <= a xor b;
	carry <= a and b;
end arch_ex08_half_adder;
	