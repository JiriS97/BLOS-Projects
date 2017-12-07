------------------------------------------------------------
-- ** Clock Divider component **
--
-- Project:          
--
-- File name:        clk_divider.vhd
-- Creation date:    Sep 22, 2013
--
-- Description:      A VHDL component dividing a clock signal
--                   according to the DIVIDER constant (1:1)
--                   and generating a pulse after the number of
--                   the DIVIDER rising edges of the clock
---
-- Version:          1.0
-- Changes:          
-- Author:           Martin Stava
-- Organisation:     Department of Control and Instrumentation
--                   Faculty of Electrical Engineering and Communication
--                   Brno University of Technology
--
-- Literature:
--
------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity clk_divider is
    generic (DIVIDER : positive); 
   port (
          CLK_IN  : in std_logic;
		    --       
          CLK_OUT : out std_logic; 
          PULSE   : out std_logic
         );

end clk_divider;

architecture clk_divider_arch of clk_divider is
 
  signal counter     : natural range 0 to DIVIDER := 0;
  signal clk_reg     : std_logic := '0';
  signal counter_max : boolean;

begin
  
  counter_max <= counter = DIVIDER;
  
  RegCounter: process (CLK_IN)
  
    begin
    if CLK_IN'event and (CLK_IN = '1') then      
               if counter_max then
        counter <= 0;      
               else
        counter <= counter + 1;     
               end if;   
             end if;
    end process; 

CLK_Reg_Inst: process (CLK_IN)

  begin
    if CLK_IN'event and (CLK_IN = '1') then
      if counter = DIVIDER / 2 then
        clk_reg <= '1';
      elsif counter_max then
        clk_reg <= '0';
      end if;
    end if;
  end process;

  CLK_OUT <= clk_reg;
  PULSE   <= '1' when counter_max else
             '0';
  
end clk_divider_arch;
