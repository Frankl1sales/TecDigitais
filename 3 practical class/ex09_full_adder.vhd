library IEEE;
use IEEE.std_logic_1164.all;

entity ex09_full_adder is
	port(
		x, y, c_in, c_in1,c_in2 : in std_logic;
		s, c_out	: out std_logic
	);
end ex09_full_adder;

architecture arch_ex09_full_adder of ex09_full_adder is
signal tempS,tempS1, tempS2, tempC, tempC2: std_logic;

component ex10_inaccurate_half_adder
	port(
		a,b	: in std_logic;
		sum: out std_logic
	);
end component;

component ex08_half_adder
	port(
		a,b	: in std_logic;
		sum, carry: out std_logic
	);
end component;

begin
	half1: ex10_inaccurate_half_adder
		port map (a => x, b =>y, sum => tempS);
	half2: ex10_inaccurate_half_adder	
		port map (a => tempS, b => c_in, sum => tempS1);
	half3: ex08_half_adder
		port map (a => tempS1, b => c_in1, sum => tempS2, carry => tempC);
	half4: ex08_half_adder	
		port map (a => tempS2, b => c_in2, sum => s, carry => tempC2);
	c_out <= tempC or tempC2;
end arch_ex09_full_adder;
