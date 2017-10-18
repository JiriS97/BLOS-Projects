----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    16:23:39 10/04/2017 
-- Design Name: 
-- Module Name:    GATES - Behavioral 
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

entity GATES is
    Port ( SA : in  STD_LOGIC;
           SB : in  STD_LOGIC;
           OUT_AND, OUT_NAND, OUT_OR, OUT_NOR,
			  OUT_XOR, OUT_XNOR, OUT_INV: out  STD_LOGIC);
end GATES;

architecture Behavioral of GATES is

begin
	OUT_AND 	<= SA AND SB;	-- logicky soucin signalu A a B
	OUT_NAND <= SA NAND SB;	-- negace logickeho soucinu signalu A a B
	OUT_OR 	<= SA OR SB;	-- logicky soucet signalu A a B
	OUT_NOR 	<= SA NOR SB;	-- negace logickeho souctu signalu A a B
	OUT_XOR 	<= SA XOR SB;	-- exklusivni logicky soucet signalu A a B
	OUT_XNOR <= SA XNOR SB; -- negace exklusivniho log. souctu signalu A a B
	OUT_INV 	<= NOT SA;		-- negace signalu A

end Behavioral;

