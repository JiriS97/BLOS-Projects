----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    15:22:08 10/25/2017 
-- Design Name: 
-- Module Name:    UKOL4 - Behavioral 
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

entity UKOL4 is
	port ( A : in std_logic_vector (3 downto 0); -- vstupy A
			 B : in std_logic_vector (3 downto 0); -- vstupy B
			an : out std_logic_vector (3 downto 0); -- vystupy - anody
		 leds : out std_logic_vector (6 downto 0)); -- vystupy - katody
end UKOL4;

architecture Behavioral of UKOL4 is
begin
	an <= "1110"; -- bude svitit jen 7-segmentovy displej uplne vpravo
	leds <= "0110111" when A=B else -- rovnaji se
			  "0001000" when A>B else -- A je vetsi
			  "1100000"; -- B je vetsi
end Behavioral;

