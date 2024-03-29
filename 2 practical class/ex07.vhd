library IEEE;
use IEEE.std_logic_1164.all;

entity ex07 is
    port (
        a: in std_logic_vector(2 downto 0);
        s: out std_logic_vector(7 downto 0)
    );
end ex07;

architecture arq_ex07 of ex07 is
begin 
	with a select
	
	s <= "00000001" when "000",
		  "00000010" when "001",
		  "00000100" when "010",
		  "00001000" when "011",
		  "00010000" when "100",
		  "00100000" when "101",
		  "01000000" when "110",
		  "10000000" when "111",
		  "00000000" when others;
end arq_ex07;
