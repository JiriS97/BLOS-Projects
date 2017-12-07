----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    17:09:48 11/22/2017 
-- Design Name: 
-- Module Name:    bcd - Behavioral 
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

entity bcd is
	Port(clk : in std_logic;
		 clr : in std_logic;
		 ce  : in std_logic;
		 q	 : out std_logic_vector (3 downto 0));
end bcd;

architecture Behavioral of bcd is
	signal dint, qreg: std_logic_vector (3 downto 0) :="0000";
begin
--sekvencni
	process(clk, clr)
		begin
			if(clr='1') then
				qreg <= "0000";
			elsif(clk'event and clk='1') then
				if(ce='1') then
					qreg <= dint;
				end if;
			end if;
	end process;
		
--kombinacni
	process(qreg)
		begin
			if (qreg = "1001") then
				dint <= "0000";
			else
				dint <= qreg+1;
			end if;
	end process;
	
	q<=qreg;
end Behavioral;

