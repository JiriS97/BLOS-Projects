----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    21:04:17 12/08/2017 
-- Design Name: 
-- Module Name:    UKOL1 - Behavioral 
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

entity UKOL1 is
	Port (clk100MHz 	: in  STD_LOGIC;
			button	 	: in  STD_LOGIC;
			led	 		: out STD_LOGIC_VECTOR (7 downto 0));
end UKOL1;

architecture Behavioral of UKOL1 is
	signal clk100Hz : STD_LOGIC;
	signal debouncerCeOut : STD_LOGIC;
	
	component clk_divider
    generic(DIVIDER : positive); 
	 port(CLK_IN  : in std_logic;
		    --       
         CLK_OUT : out std_logic; 
         PULSE   : out std_logic);
	end component;
	
	component Debouncer
     port(input 			: in  STD_LOGIC;
          clk	 			: in  STD_LOGIC;
          clkEn 			: in  STD_LOGIC;
			 output	 		: out STD_LOGIC;
          outputClkEn	: out STD_LOGIC);
	end component;

	component Counter
		Port(clk 			: in STD_LOGIC;
			  clkEn			: in STD_LOGIC;
			  q				: out STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
begin
	unit1: clk_divider
		generic map(DIVIDER => 1000000) --100Hz
		port map(CLK_IN=>clk100MHz, PULSE=>clk100Hz, CLK_OUT=>open);
	unit2: Debouncer
		port map(input=>button, clk=>clk100MHz, clkEn=>clk100Hz, outputClkEn=>debouncerCeOut, output=>open);
	unit3: Counter
		port map(clk=>clk100MHz, clkEn=>debouncerCeOut, q=>led);
		

end Behavioral;

