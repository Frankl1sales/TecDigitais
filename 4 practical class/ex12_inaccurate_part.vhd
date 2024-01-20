library IEEE;
use IEEE.std_logic_1164.all;

entity ex12_inaccurate_part is
	port(
		x0, x1, x2, x3, x4, x5, x6, x7	: in std_logic;	
		y0, y1, y2, y3, y4, y5, y6, y7	: in std_logic;
		s0, s1, s2, s3 : out std_logic;
		s4, s5, s6, s7	: out std_logic;
		s, c_out	: out std_logic
	);
end ex12_inaccurate_part;

architecture arch_ex12_inaccurate_part of ex12_inaccurate_part is
signal tempS, tempS1, tempS2, tempS3	: std_logic;
signal tempC, tempC1, tempC2, tempC3, tempC4	: std_logic;

component ex11_inaccurate_adder
	port(
		a,b	: in std_logic;
		sum: out std_logic
	);
end component;

component ex13_inaccurate_final_adder
	port(
		a,b	: in std_logic;
		sum, c_in: out std_logic
	);
end component;

component ex14_accurate_half_adder
	port(
		a,b	: in std_logic;
		sum, carry: out std_logic
	);
end component;
begin

--	parte imprecisa
	half0: ex11_inaccurate_adder
		port map (a => x0, b =>y0, sum => s0);
	half1: ex11_inaccurate_adder	
		port map (a => x1, b =>y1, sum => s1);
	half2: ex11_inaccurate_adder
		port map (a => x2, b =>y2, sum => s2);
	half3: ex13_inaccurate_final_adder	
		port map (a => x3, b =>y3, sum => s3, c_in => tempC); -- c_in é o carry inicial que 
																				-- é transmitido para a parte precisa
--	parte precisa
	half4:ex14_accurate_half_adder
		port map (a => x4, b =>y4, sum => tempS, carry => tempC1);
	s4 <= tempS xor tempC;
	
	half5:ex14_accurate_half_adder
		port map (a => x5, b =>y5, sum => tempS1, carry => tempC2);
	s5 <= tempS1 xor tempC1;
	
	half6:ex14_accurate_half_adder
		port map (a => x6, b =>y6, sum => tempS2, carry => tempC3);
	s6 <= tempS2 xor tempC2;
	
	half7:ex14_accurate_half_adder
		port map (a => x7, b =>y7, sum => tempS3, carry => tempC4);
	s7 <= tempS3 xor tempC3;
	
	c_out <= tempC4;
end arch_ex12_inaccurate_part;
