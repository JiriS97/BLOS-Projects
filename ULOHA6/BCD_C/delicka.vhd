----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    16:22:43 11/22/2017 
-- Design Name: 
-- Module Name:    delicka - Behavioral 
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

use IEEE.STD_LOGIC_UNSIGNED.ALL; -- jinak nejde pricitat k vektorum

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity delicka is
	Port (clkIn  : in  STD_LOGIC;
		  clkOut : out STD_LOGIC);
end delicka;

architecture Behavioral of delicka is
	signal q : STD_LOGIC_VECTOR (26 downto 0);
begin
	process(clkIn)
		begin
			if(clkIn'event and clkIn = '1') then
				q<=q+1;
			end if;
	end process;
		
		
	clkOut <= q(26);
end Behavioral;

