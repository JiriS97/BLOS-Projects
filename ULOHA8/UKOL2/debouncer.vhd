----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jiri Sramek
-- 
-- Create Date:    21:06:56 12/08/2017 
-- Design Name: 
-- Module Name:    Debouncer - Behavioral 
-- Project Name: 
-- Target DevioutputClkEns: 
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

entity Debouncer is
    Port (input 			: in  STD_LOGIC;
          clk	 			: in  STD_LOGIC;
          clkEn 			: in  STD_LOGIC;
			 output	 		: out STD_LOGIC;
          outputClkEn	: out STD_LOGIC);
end Debouncer;

architecture Behavioral of Debouncer is

	type StateType is (state0, state1, state2, state3, state4, state5);
	signal currentState, nextState : StateType;

begin				
	process (currentState, clkEn, input)
	begin
		case currentState is
			when state0 => 
				output <= '0';
				outputClkEn <= '0';
					if(input ='1' AND clkEn ='1') then
						nextState <= state1;
					else	
						nextState <= state0;
					end if;
				
			when state1 => 
				output <= '0';
				outputClkEn <= '0';
					if(input ='1' AND clkEn ='1') then
						nextState <= state2;
					elsif (input ='0' AND clkEn ='1') then
						nextState <= state0;
					else	
						nextState <= state1;
					end if;

			when state2 => 
				output <= '0';
				outputClkEn <= '0';
					if(input ='1' AND clkEn ='1') then
						nextState <= state3;
					elsif (input ='0' AND clkEn ='1') then
						nextState <= state0;
					else	
						nextState <= state2;
					end if;													

			when state3 => 
				output <= '0';
				outputClkEn <= '0';
					if(input ='1' AND clkEn ='1') then
						nextState <= state4;
					elsif (input ='0' AND clkEn ='1') then
						nextState <= state0;
					else	
						nextState <= state3;
					end if;
				
			when state4 => 
				output <= '1';
				outputClkEn <= '1';
					if(input ='0') then
						nextState <= state0;
					else	
						nextState <= state5;
					end if;				

			when state5 => 
				output <= '1';
				outputClkEn <= '0';
					if (input ='0' AND clkEn ='1') then
						nextState <= state0;
					else	
						nextState <= state5;
					end if;
		end case;
	end process;	
	
	process (clk)
		begin
			if (clk'event AND clk = '1') then
				currentState <= nextState;
			end if;
	end process; 
end Behavioral;

