----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    21:24:28 12/08/2017 
-- Design Name: 
-- Module Name:    UKOL2 - Behavioral 
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

entity UKOL2 is
	Port (clk100MHz 	: in  STD_LOGIC;
			button	 	: in  STD_LOGIC;
			led	 		: out STD_LOGIC_VECTOR (7 downto 0));
end UKOL2;

architecture Behavioral of UKOL2 is
	signal clk100HzPulse : STD_LOGIC;
	signal clk10HzPulse : STD_LOGIC;
	signal debouncerCeOut : STD_LOGIC;
	signal debouncerOut : STD_LOGIC;
	signal andGateOut : STD_LOGIC;
	
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

	component AndGate
		Port(inA 		: in  STD_LOGIC;
           inB 		: in  STD_LOGIC;
           output 	: out  STD_LOGIC);
	end component;
	
	component Counter
		Port(clk 			: in STD_LOGIC;
			  clkEn			: in STD_LOGIC;
			  clr 			: in STD_LOGIC;
			  q				: out STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
begin
	unit1: clk_divider
		generic map(DIVIDER => 1000000) --100MHz -> 100Hz - 10ms
		port map(CLK_IN=>clk100MHz, PULSE=>clk100HzPulse, CLK_OUT=>open);
	unit2: clk_divider
		generic map(DIVIDER => 10000000) --100MHz -> 10Hz - 100ms
		port map(CLK_IN=>clk100MHz, PULSE=>clk10HzPulse, CLK_OUT=>open);
	unit3: Debouncer
		port map(input=>button, clk=>clk100MHz, clkEn=>clk100HzPulse, outputClkEn=>debouncerCeOut, output=>debouncerOut);
	unit4: AndGate
		port map(inA=>debouncerOut, inB=>clk10HzPulse, output=>andGateOut); 
	unit5: Counter
		port map(clk=>clk100MHz, clkEn=>andGateOut, clr=>debouncerCeOut, q=>led);
		
end Behavioral;

