library IEEE;
use IEEE.std_logic_1164.all;

entity ex06 is
    port (
        a: in std_logic_vector(2 downto 0);
        s: out std_logic_vector(7 downto 0)
    );
end ex06;

architecture arq_ex06 of ex06 is
begin 
    s(0) <= not(a(2)) and not(a(1)) and not(a(0));
    s(1) <= not(a(2)) and not(a(1)) and (a(0));
    s(2) <= not(a(2)) and (a(1)) and not(a(0));
    s(3) <= not(a(2)) and (a(1)) and (a(0));
    s(4) <= (a(2)) and not(a(1)) and not(a(0));
    s(5) <= (a(2)) and not(a(1)) and (a(0));
    s(6) <= (a(2)) and (a(1)) and not(a(0));
    s(7) <= (a(2)) and (a(1)) and (a(0));
end arq_ex06;
