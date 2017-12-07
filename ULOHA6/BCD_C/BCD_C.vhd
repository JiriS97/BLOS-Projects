----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:36:51 11/22/2017 
-- Design Name: 
-- Module Name:    BCD_C - Behavioral 
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

entity BCD_C is
	Port ( clk100MHz 	: in  STD_LOGIC;
          clr 	: in  STD_LOGIC;		
			 ce 	: in  STD_LOGIC;	 
			 an 	: out  STD_LOGIC_VECTOR (3 downto 0);
			 seg 	: out STD_LOGIC_VECTOR (6 downto 0));
end BCD_C;

architecture Behavioral of BCD_C is
	signal clk1Hz: STD_LOGIC; 
	signal numBCD: STD_LOGIC_VECTOR (3 downto 0);
	
	component delicka 
		Port ( clkIn : in  STD_LOGIC;
				 clkOut : out STD_LOGIC);
	end component;

	component bcd 
	Port(clk : in STD_LOGIC;
		  clr : in STD_LOGIC;
		  ce : in STD_LOGIC;
		  q : out STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component dekoder
	Port(inBCD	: in STD_LOGIC_VECTOR (3 downto 0);
		  outSegments	: out STD_LOGIC_VECTOR (6 downto 0));
	end component;
	
begin	
	unit1 : delicka
		port map(clkIn=>clk100MHz,clkOut=>clk1Hz);
		
	citac: bcd
		port map(clk=>clk1Hz,clr=>clr,ce=>ce,q=>numBCD);
		
	dekod: dekoder
		port map(inBCD=>numBCD,outSegments=>seg);

	an <= "1110";
end Behavioral;

