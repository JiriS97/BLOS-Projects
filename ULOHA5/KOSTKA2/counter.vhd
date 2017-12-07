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
	-- prirazeni
	q <= d;
				
	-- sekvencni cast
	process(clk, clr)
	begin
		if(clr='1') then
			d <= "000";
		elsif(clk'event and clk='1') then
			if(ce='1') then -- kombinacni logiku resim tady v procesu
				d(1) <= d(0);
				d(2) <= d(1);
				d(0) <= NOT d(2);
			end if;
		end if;
	end process;
end Behavioral;

