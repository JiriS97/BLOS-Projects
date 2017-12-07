library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.OCT_to_7SEG.all;

entity disp is  
    Port ( LCD      : out std_logic_vector(7 downto 0);
		     jednotky : in  std_logic_vector(2 downto 0));
end disp;
architecture Behavioral of disp is
begin
  LCD<=(OCT_to_7SEG(jednotky));
end Behavioral;

