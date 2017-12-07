----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    15:43:14 10/25/2017 
-- Design Name: 
-- Module Name:    UKOL5 - Behavioral 
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

entity UKOL5 is
	port ( A : in std_logic_vector (1 downto 0); -- vstupy A
			 B : in std_logic_vector (1 downto 0); -- vstupy B
			an : out std_logic_vector (3 downto 0); -- vystupy - anody
		 leds : out std_logic_vector (6 downto 0); -- vystupy - katody
		  cin : in std_logic); -- carry in
end UKOL5;

architecture Behavioral of UKOL5 is
-- komponenty
	component bit_scitacka
		Port ( cislo1, cislo2, carry_in : in std_logic;
				 vysledek, carry_out : out std_logic);
	end component;
-- signaly
	signal carry : std_logic;
	signal sum : std_logic_vector(2 downto 0);
	
begin
	unit1: bit_scitacka
	port map(cislo1=>a(0), cislo2=>b(0), carry_in=>cin, vysledek=>sum(0), carry_out=>carry);
	
	unit2: bit_scitacka
	port map(cislo1=>a(1), cislo2=>b(1), carry_in=>carry, vysledek=>sum(1), carry_out=>sum(2));
	
	with sum select -- "abcdefg"
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

