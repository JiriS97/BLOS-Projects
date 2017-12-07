----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    09:50:29 11/21/2017 
-- Design Name: 
-- Module Name:    KOSTKA2 - Behavioral 
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

entity KOSTKA2 is
	Port(
		clr 			: in  STD_LOGIC;
      ce 			: in  STD_LOGIC;
      clk100MHz 	: in  STD_LOGIC;
		an 			: out  STD_LOGIC_VECTOR (3 downto 0);
		DISP_OUT		: out std_logic_vector(7 downto 0));
end KOSTKA2;

architecture Behavioral of KOSTKA2 is
	signal clk100Hz	: std_logic; --100Hz z delicky
	signal output		: std_logic_vector(2 downto 0); --vystup pro dekoder
	
	component clk_divider
		generic (DIVIDER : positive);
		Port(CLK_IN		: in std_logic;
			  CLK_OUT 	: out std_logic);
	end component;
		
	component counter is
		Port( clk : in STD_LOGIC;
				clr : in STD_LOGIC;
				ce	 : in STD_LOGIC;
			   q 	 : inout STD_LOGIC_VECTOR(2 downto 0));
	end component;
		
	component disp
		Port ( LCD      : out std_logic_vector(7 downto 0);
				 jednotky : in  std_logic_vector(2 downto 0));
	end component;
	
begin
	unit1 : clk_divider
		generic map(DIVIDER => 1000000)
		port map(CLK_IN=>clk100MHz,CLK_OUT=>clk100Hz);
	unit2 : counter
		port map(clk=>clk100Hz,clr=>clr, ce=>ce, q=>output);
	unit3: disp
		port map(jednotky=>output, LCD=>DISP_OUT);

	an <= "1110"; --sviti jen jedna 7seg
end Behavioral;

