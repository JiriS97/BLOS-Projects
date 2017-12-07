----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    16:22:43 11/22/2017 
-- Design Name: 
-- Module Name:    DEL_1HZ - Behavioral 
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

entity DEL_1HZ is
	Port ( clk100MHz : in  STD_LOGIC;
			led 		  : out STD_LOGIC);
end DEL_1HZ;

architecture Behavioral of DEL_1HZ is
	signal q : STD_LOGIC_VECTOR (26 downto 0);
begin
	process(clk100MHz)
		begin
			if(clk100MHz'event and clk100MHz = '1') then
				q<=q+1;
			end if;
	end process;
		
	led<= q(26);
end Behavioral;

