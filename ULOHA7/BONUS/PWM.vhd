----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    15:31:44 11/29/2017 
-- Design Name: 
-- Module Name:    PWM - Behavioral 
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

entity PWM is
Port (clk100MHz 	: in  STD_LOGIC;
		led	 		: out  STD_LOGIC);
end PWM;

architecture Behavioral of PWM is
	signal clk32HzPulse		: STD_LOGIC;
	signal enableSampling	: STD_LOGIC;
	signal comparatorOutput : STD_LOGIC;
	signal samplerInput	   : STD_LOGIC_VECTOR (3 downto 0);
	signal sampledData	   : STD_LOGIC_VECTOR (3 downto 0);
	signal counterOutput		: STD_LOGIC_VECTOR (3 downto 0);
	
	component clk_divider is
   generic (DIVIDER : positive); 
   Port(CLK_IN  : in STD_LOGIC;     
        CLK_OUT : out STD_LOGIC; 
        PULSE   : out STD_LOGIC);
	end component;

	component CounterUpDown is
	Port(clk 		: in STD_LOGIC;
		  ce 				: in STD_LOGIC;
		  q			: out STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component Sampler
	Port(clk 		: in STD_LOGIC;
		  ce 			: in STD_LOGIC;
		  input		: in STD_LOGIC_VECTOR (3 downto 0);
		  output		: out STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component Counter 
	Port(clk 			: in STD_LOGIC;
		  q				: out STD_LOGIC_VECTOR (3 downto 0);
		  nullDetect   : out STD_LOGIC);
	end component;
	
	component Comparator
	Port(output : out STD_LOGIC;
		  inA		: in STD_LOGIC_VECTOR (3 downto 0);
		  inB		: in STD_LOGIC_VECTOR (3 downto 0));
	end component;

	component FFD
	Port(clk  : in STD_LOGIC;
		  d	 : in STD_LOGIC;
		  q	 : out STD_LOGIC);
	end component;
	
begin
	unitA: clk_divider
		generic map(DIVIDER => 3125000) --100MHz -> 32Hz (2x16 steps)
		port map(CLK_IN=>clk100MHz, PULSE=>clk32HzPulse, CLK_OUT=>open);
		
	unitB: CounterUpDown
		port map(clk=>clk100MHz, ce=>clk32HzPulse, q=>samplerInput);
		
	unit1: Sampler
		port map(clk=>clk100MHz, ce=>enableSampling, input=>samplerInput, output=>sampledData);
	
	unit2: Counter
		port map(clk=>clk100MHz, q=>counterOutput, nullDetect=>enableSampling);
	
	unit3: Comparator
		port map(output=>comparatorOutput, inA=>sampledData, inB=>counterOutput);
		
	unit4: FFD
		port map(clk=>clk100MHz, d=>comparatorOutput, q=>led);

end Behavioral;

