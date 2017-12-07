----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    17:13:34 11/22/2017 
-- Design Name: 
-- Module Name:    dekoder - Behavioral 
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

entity dekoder is
	Port(inBCD			: in std_logic_vector (3 downto 0);
		 outSegments	: out std_logic_vector (6 downto 0));
end dekoder;

architecture Behavioral of dekoder is
begin
	outSegments <= "0000001" when inBCD="0000" else -- 0
				   "1001111" when inBCD="0001" else -- 1
				   "0010010" when inBCD="0010" else -- 2
				   "0000110" when inBCD="0011" else -- 3
				   "1001100" when inBCD="0100" else -- 4
				   "0100100" when inBCD="0101" else -- 5
				   "0100000" when inBCD="0110" else -- 6
				   "0001111" when inBCD="0111" else -- 7
				   "0000000" when inBCD="1000" else -- 8
				   "0001100" when inBCD="1001" else -- 9
			       "1111111"; -- nic
end Behavioral;

