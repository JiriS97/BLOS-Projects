----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    11:59:48 12/06/2017 
-- Design Name: 
-- Module Name:    CounterUpDown - Behavioral 
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

entity CounterUpDown is
	Port(clk 			: in STD_LOGIC;
		  ce 				: in STD_LOGIC;
		  q				: out STD_LOGIC_VECTOR (3 downto 0));
end CounterUpDown;

architecture Behavioral of CounterUpDown is
	signal dint			: STD_LOGIC_VECTOR (3 downto 0) :="0000";
	signal countingUp : STD_LOGIC :='1';
begin
	q <= dint;
		
	process(clk)
	begin
		if(clk'event and clk='1') then
			if(ce='1') then
				if(countingUp='1') then
					dint <= dint + 1;
					if(dint=14) then countingUp<='0'; end if;
				else
					dint <= dint - 1;
					if(dint=1) then countingUp<='1'; end if;
				end if;
			end if;
		end if;
	end process;
end Behavioral;

