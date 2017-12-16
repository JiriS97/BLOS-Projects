--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:53:02 12/04/2017
-- Design Name:   
-- Module Name:   P:/BLOS/ULOHA7/UKOL2/TestBench.vhd
-- Project Name:  UKOL2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PWM
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- jinak nejde pricitat k vektorum

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestBench IS
END TestBench;
 
ARCHITECTURE behavior OF TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PWM
    PORT(
         clk100MHz : IN  std_logic;
         input : IN  std_logic_vector(3 downto 0);
         led : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk100MHz : std_logic := '0';
   signal input : std_logic_vector(3 downto 0) := "0000";

 	--Outputs
   signal led : std_logic;

   -- Clock period definitions
   constant clk100MHz_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PWM PORT MAP (
          clk100MHz => clk100MHz,
          input => input,
          led => led
        );

   -- Clock process definitions
   clk100MHz_process :process
   begin
		clk100MHz <= '0';
		wait for clk100MHz_period/2;
		clk100MHz <= '1';
		wait for clk100MHz_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk100MHz_period*10;

      -- insert stimulus here 
		wait for 1 us;
		L : while input < "1111" loop
			input <= input + 1;
			wait for 1 us;
		end loop;
		
		input <= "0000";
		wait for 1 us;
		input <= "1111";
		wait for 1 us;
		input <= "0000";
		wait for 1 us;
		input <= "1111";
		wait for 1 us;
		input <= "0000";		

      wait;
   end process;

END;
