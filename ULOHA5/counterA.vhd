----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    10:09:23 11/21/2017 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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

entity counter is
	Port( clk : in STD_LOGIC;
			clr : in STD_LOGIC;
			ce	 : in STD_LOGIC;
			q : inout STD_LOGIC_VECTOR(2 downto 0));
end counter;

architecture Behavioral of counter is
	signal d : STD_LOGIC_VECTOR(2 downto 0); --vnitrni signal pro buzeni sekvencni casti
begin
	--kombinacni cast
	d(2) <= (NOT q(2) AND q(1) AND q(0)) OR
				(q(2) AND NOT q(1) AND NOT q(0)) OR
				(q(2) AND NOT q(1) AND q(0)) OR
				(q(2) AND q(1) AND NOT q(0));
	d(1) <= (NOT q(2) AND NOT q(1) AND q(0)) OR
				(NOT q(2) AND q(1) AND NOT q(0)) OR
				(q(2) AND NOT q(1) AND q(0)) OR
				(q(2) AND q(1) AND NOT q(0));
	d(0) <= (NOT q(2) AND NOT q(1) AND NOT q(0)) OR
				(NOT q(2) AND q(1) AND NOT q(0)) OR
				(q(2) AND NOT q(1) AND NOT q(0)) OR
				(q(2) AND q(1) AND NOT q(0));
				
	--sekvencni cast
	process(clk)
	begin
		if(clk'event and clk='1') then
			if(clr='1') then
				q <= "000";
			elsif(ce='1') then
				q <= d;
			end if;
		end if;
	end process;
end Behavioral;

