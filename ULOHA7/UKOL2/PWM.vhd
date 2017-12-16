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
		input 		: in  STD_LOGIC_VECTOR (3 downto 0);
		led	 		: out  STD_LOGIC);
end PWM;

architecture Behavioral of PWM is
	signal enableSampling	: STD_LOGIC;
	signal comparatorOutput : STD_LOGIC;
	signal sampledData	   : STD_LOGIC_VECTOR (3 downto 0);
	signal counterOutput		: STD_LOGIC_VECTOR (3 downto 0);
	
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
	unit1: Sampler
		port map(clk=>clk100MHz, ce=>enableSampling, input=>input, output=>sampledData);
	
	unit2: Counter
		port map(clk=>clk100MHz, q=>counterOutput, nullDetect=>enableSampling);
	
	unit3: Comparator
		port map(output=>comparatorOutput, inA=>sampledData, inB=>counterOutput);
		
	unit4: FFD
		port map(clk=>clk100MHz, d=>comparatorOutput, q=>led);

end Behavioral;

