----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    17:08:14 11/29/2017 
-- Design Name: 
-- Module Name:    Sampler - Behavioral 
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

entity Sampler is
	Port(clk 	: in STD_LOGIC;
		  ce 		: in STD_LOGIC;
		  input	: in STD_LOGIC_VECTOR (3 downto 0);
		  output	: out STD_LOGIC_VECTOR (3 downto 0));
end Sampler;

architecture Behavioral of Sampler is
begin
	process(clk)
	begin
		if(clk'event and clk='1') then
			if(ce='1') then
				output <= input;
			end if;
		end if;
	end process;
end Behavioral;

