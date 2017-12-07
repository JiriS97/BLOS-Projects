----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    16:46:05 10/25/2017 
-- Design Name: 
-- Module Name:    BONUS - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BONUS is
	port ( A : in std_logic_vector (1 downto 0); -- vstupy A
			 B : in std_logic_vector (1 downto 0); -- vstupy B
			an : out std_logic_vector (3 downto 0); -- vystupy - anody
		 leds : out std_logic_vector (6 downto 0); -- vystupy - katody
		  set : in std_logic; -- 0 -> + ;  1 -> -
		  Nminus : out std_logic); -- signalizace minusu - 0 je minus
end BONUS;

architecture Behavioral of BONUS is
-- komponenty
	component bit_scitacka
		Port ( cislo1, cislo2, carry_in : in std_logic;
				 vysledek, carry_out : out std_logic);
	end component;
-- signaly
	signal carry : std_logic;
	signal cisloB : std_logic_vector(1 downto 0);
	signal sum : std_logic_vector(2 downto 0);
	signal sumMezikrok1 : std_logic_vector(2 downto 0);
	signal sumZobraz : std_logic_vector(2 downto 0);
	
begin
	unit1: bit_scitacka
	port map(cislo1=>a(0), cislo2=>cisloB(0), carry_in=>set, vysledek=>sum(0), carry_out=>carry);
	
	unit2: bit_scitacka
	port map(cislo1=>a(1), cislo2=>cisloB(1), carry_in=>carry, vysledek=>sum(1), carry_out=>sum(2));
	
	-- kdyz odecitam invertuju cislo B a pricitam k nemu jednicku pomoci Cin prvni scitacky
	-- tim ho prevedu na dvojkovy doplnek
	cisloB <= NOT B when set='1' else
				 B;
	
	-- vysledek uz mam v "sum", dal si s nim hraju jen pro spravne zobrazeni
	-- kdyz odecitam musim prohodit 001->011 a 011->001
	sumMezikrok1 <= "011" when (sum="001") AND (set='1') else
			 "001" when (sum="011") AND (set='1') else
			 sum;
			 
	-- kdyz odecitam, mam nejvyssi byt jako znamenko, tak ho nastavim
	Nminus <= sumMezikrok1(2) when set='1' else
				 '1'; -- neodecitam, natvrdo zhasnuto
	
	-- kdyz odecitam, nemam nejvyssi bit jako hodnotu ale jako znamenko
	sumZobraz <= sumMezikrok1 AND "011" when set='1' else
			 sumMezikrok1;
			 
	with sumZobraz select -- "abcdefg"
		leds <= "0000001" when "000", -- cislice 0
				  "1001111" when "001", -- cislice 1
				  "0010010" when "010", -- cislice 2
				  "0000110" when "011", -- cislice 3
			     "1001100" when "100", -- cislice 4
				  "0100100" when "101", -- cislice 5
				  "0100000" when "110", -- cislice 6
				  "0001111" when "111", -- cislice 7
				  "1111111" when others; -- nic nebude svitit
	an <= "1110"; -- bude svitit jen 7-segmentovy displej

end Behavioral;

