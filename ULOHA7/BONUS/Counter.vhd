----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    17:09:48 11/22/2017 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter is
	Port(clk 			: in STD_LOGIC;
		  q				: out STD_LOGIC_VECTOR (3 downto 0);
		  nullDetect   : out STD_LOGIC);
end Counter;

architecture Behavioral of Counter is
	signal dint	: STD_LOGIC_VECTOR (3 downto 0) :="0000";
begin
	q <= dint;
				
	process(clk)
	begin
		if(clk'event and clk='1') then
			if(dint = "0000") then
				nullDetect <= '1';
			else
				nullDetect <= '0';
			end if;
			if(dint = "1110") then
				dint<="0000";
			else
				dint <= dint + 1;
			end if;
		end if;
	end process;
end Behavioral;

