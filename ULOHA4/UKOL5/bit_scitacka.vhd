library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bit_scitacka is
    Port ( cislo1 : in std_logic;
           cislo2 : in std_logic;
           carry_in : in std_logic;
           vysledek : out std_logic;
           carry_out : out std_logic);
end bit_scitacka;

architecture Behavioral of bit_scitacka is
-- zde doplnit vyrazy pro uplnou jednobitovou secitacku
begin

	carry_out <= (cislo1 AND cislo2 AND NOT carry_in) OR
					 (cislo1 AND NOT cislo2 AND carry_in) OR
					 (NOT cislo1 AND cislo2 AND carry_in) OR
					 (cislo1 AND cislo2 AND carry_in);
	
	--((cislo1 XOR cislo2) NAND carry_in) NAND (cislo1 NAND cislo2);
	vysledek <=  (cislo1 AND NOT cislo2 AND NOT carry_in) OR
					 (NOT cislo1 AND cislo2 AND NOT carry_in) OR
					 (NOT cislo1 AND NOT cislo2 AND carry_in) OR
					 (cislo1 AND cislo2 AND carry_in);	
	--(cislo1 XOR cislo2) XOR carry_in;

end Behavioral;
