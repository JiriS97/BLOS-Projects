----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    18:24:27 10/17/2017 
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
    Port ( x3 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           x1 : in  STD_LOGIC;
           x0 : in  STD_LOGIC;
           y : out STD_LOGIC_VECTOR (1 downto 0); --vystupy y0-1
           z : out  STD_LOGIC);
end BONUS;

architecture Behavioral of BONUS is

begin
-- old version
--	y <= "01" when x1 = '1' else -- x="--1-"
--		  "10" when ((x1 = '0') AND (x2 = '1')) else -- x="-10-"
--		  "00" when ((x0 = '1') AND (x1 = '0') AND (x2 = '0')) else -- x="-001"
--		  "11" when ((x0 = '0') AND (x1 = '0') AND (x2 = '0') AND (x3 = '1')) else -- x="1000"
--		  "00";
--		  
--	z <= '0' when ((x0 = '0') AND (x1 = '0') AND (x2 = '0') AND (x3 = '0')) else -- vse je 0, tak z je taky 0
--		  '1';
	y <= "01" when x1 = '1' else -- x="--1-"
		  "10" when x2 = '1' else -- x="-10-"
		  "00" when x0 = '1' else -- x="-001"
		  "11" when x3 = '1' else -- x="1000"
		  "00";
		  
	z <= x0 OR x1 OR x2 OR x3;
end Behavioral;

