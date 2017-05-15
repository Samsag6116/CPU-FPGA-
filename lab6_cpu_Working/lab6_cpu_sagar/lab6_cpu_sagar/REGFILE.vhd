----------------------------------------------------------------------------------------------------------------------------------
--	Copyright <2017> EECE8020 Reconfigurable system Principles. All rights reserved.																	
																																												
--	Summary				:  Lab 3 VHDL code - register subsystem
--								In this I use 4 switches as a inputs to generate the output  
--							   from 0 to 9 and A to f that displayed on the 7-segment-LED 
--								on DE1-SoC board.
								
--	Programmer			:  SAGAR PATEL
								
--	Revision History	:	01/24/2017 <spatel1652> Rev. <1.0 Initial Creation>

----------------------------------------------------------------------------------------------------------------------------------								

-------------------- Library --------------------


library IEEE;
use IEEE.std_logic_1164.All;
use IEEE.numeric_std.ALL;

-------------------- I/O declaration(entity) --------------------

entity REGFILE is 
port (
		  DSEL : in unsigned(2 downto 0); -- Destination Select
		  ASEL : in unsigned(2 downto 0); -- Bus Selection
		  BSEL : in unsigned(2 downto 0); -- Bus Selection
		  DIN  : in unsigned(7 downto 0); -- Input Data
		  RIN  : in unsigned(7 downto 0); -- Destination register
		  CLK  : in std_logic;
		  A    : out unsigned(7 downto 0); -- bus outputs
		  B    : out unsigned(7 downto 0)  -- bus outputs
		 	  
			);
end REGFILE;

-------------------------------- Architecture ---------------------------------------
Architecture RTL of REGFILE is

signal		  R1   :  unsigned(7 downto 0);
signal		  R2   :  unsigned(7 downto 0);	  
signal  		  R3   :  unsigned(7 downto 0);		  
signal		  R4   :  unsigned(7 downto 0);
signal		  R5   :  unsigned(7 downto 0);
signal		  R6   :  unsigned(7 downto 0);
signal		  R7   :  unsigned(7 downto 0);
signal 		  R0   :  unsigned(7 downto 0);	

begin

	process(CLK)
	begin
	if (CLK'event and CLK='1') then	
	case DSEL is
		
		--when "000" =>  R0 <= RIN;
		when "001" =>  R1 <= RIN;
		when "010" =>  R2 <= RIN;
		when "011" =>  R3 <= RIN;
		when "100" =>  R4 <= RIN;
		when "101" =>  R5 <= RIN;
		when "110" =>  R6 <= RIN;
		when "111" =>  R7 <= RIN;
		when others => R1 <= "00000001";
							R2 <= "00000010";
							R3 <= "00000011";
							R4 <= "00000100";
							R5 <= "00000101";
							R6 <= "00000110";
							R7 <= "00000111";
		
		end case;
		end if;
	end process;

	process(ASEL)
	begin
		case ASEL is
		
		--when "000" => A <= R0;
		when "001" => A <= R1;
		when "010" => A <= R2;
		when "011" => A <= R3;
		when "100" => A <= R4;
		when "101" => A <= R5;
		when "110" => A <= R6;
		when "111" => A <= R7;
		when others => A <= DIN;
		end case;
	end process;

   process(BSEL)
	begin
		case BSEL is
		
		when "000" => B <= R0;
		when "001" => B <= R1;
		when "010" => B <= R2;
		when "011" => B <= R3;
		when "100" => B <= R4;
		when "101" => B <= R5;
		when "110" => B <= R6;
		when "111" => B <= R7;
		when others => B <= DIN;
		end case;
	end process;
	
end RTL;

 
--------------------------------------------------------------------------------------------
