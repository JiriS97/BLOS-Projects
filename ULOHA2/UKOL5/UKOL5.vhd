----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    16:16:39 10/11/2017 
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

entity UKOL5 is
	port (a : in STD_LOGIC; -- vstup a
		b : in STD_LOGIC; -- vstup b
		c : in STD_LOGIC; -- vstup c
		d : in STD_LOGIC; -- vstup d
		s : in STD_LOGIC_VECTOR (1 downto 0); -- vyberovy vstup s
		y : out STD_LOGIC); -- vystup y
end UKOL5;

architecture Behavioral of UKOL5 is
begin
	y <= a when s="00" else -- kombinace S1=0 a S0=0, pak y=a
		  b when s="01" else -- kombinace S1=0 a S0=1, pak y=b
		  c when s="10" else -- kombinace S1=1 a S0=0, pak y=c
	     d; 						-- kombinace S1=1 a S0=1, pak y=d
end Behavioral;

