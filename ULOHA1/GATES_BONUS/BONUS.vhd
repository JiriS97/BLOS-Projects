----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    16:43:23 10/04/2017 
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
    Port ( SA : in  STD_LOGIC;
           SS : in  STD_LOGIC;
           SB : in  STD_LOGIC;
           OUT_Y : out  STD_LOGIC);
end BONUS;

architecture Behavioral of BONUS is

begin
	OUT_Y <= (SA AND NOT SS) OR (SB AND SS);
end Behavioral;

