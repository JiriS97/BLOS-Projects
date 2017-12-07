------------------------------------------------------------------
----- prevod cisla v BCD kodu na kod 7 segmentoveho displeje -----
------------------------------------------------------------------
--
--
--
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package OCT_to_7SEG is 
   function OCT_to_7SEG (signal HEX: in std_logic_vector(2 downto 0)) return std_logic_vector;
end OCT_to_7SEG;

package body OCT_to_7SEG is

  function OCT_to_7SEG (signal HEX: in std_logic_vector(2 downto 0)) return std_logic_vector is
    variable cislo:std_logic_vector(0 to 7);
  begin         
     case HEX is
      	when "000" => cislo := "10011111"; -- 1
			when "001" => cislo := "00100101"; -- 2
			when "011" => cislo := "00001101"; -- 3
			when "111" => cislo := "10011001"; -- 4
			when "110" => cislo := "01001001"; -- 5
			when "100" => cislo := "01000001"; -- 6
      	when others => cislo := "11111110"; -- nic
			-- abcdefgh
    end case;
    return cislo; 
  end OCT_to_7SEG;
end OCT_to_7SEG;
