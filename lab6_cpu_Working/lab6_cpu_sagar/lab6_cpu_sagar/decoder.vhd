
----------------------------------------------------------------------------------------------------------------------------------
--	Copyright <2017> EECE8020 Reconfigurable system Principles. All rights reserved.																	
																																												
--	Summary				:  Lab 2 VHDL code - seven segment decoder.
--								In this I use 4 switches as a inputs to generate the output  
--							   from 0 to 9 and A to f that displayed on the 7-segment-LED 
--								on DE1-SoC board.
								
--	Programmer			:  SAGAR PATEL
								
--	Revision History	:	01/19/2017 <spatel1652> Rev. <1.0 Initial Creation>

----------------------------------------------------------------------------------------------------------------------------------								


-------------------- Library --------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;  
--std_logic_1164 contains definitions of types, subtypes,and functions,which extend the VHDL into a multivalue logic.

-------------------- I/O declaration(entity) --------------------
entity decoder is
port (
        binary : in std_logic_vector(3 downto 0);    -- binary 4 input
        segment7 : out std_logic_vector(6 downto 0)  -- 7 bit decoded output.
    );
end decoder;

-------------------------------- Architecture ---------------------------------------
architecture RTL of decoder is
begin

	process (binary)
	begin
	
		case  binary is

		when "0000" => segment7 <= "1000000";  -- '0'
		when "0001" => segment7 <= "1111001";  -- '1'
		when "0010" => segment7 <= "0100100";  -- '2'
		when "0011" => segment7 <= "0110000";  -- '3'
		when "0100" => segment7 <= "0011001";  -- '4' 
		when "0101" => segment7 <= "0010010";  -- '5'
		when "0110" => segment7 <= "0000010";  -- '6'
		when "0111" => segment7 <= "1111000";  -- '7'
		when "1000" => segment7 <= "0000000";  -- '8'
		when "1001" => segment7 <= "0011000";  -- '9'
		when "1010" => segment7 <= "0001000";  -- "A"
		when "1011" => segment7 <= "0000011";  -- "b"
		when "1100" => segment7 <= "1000110";  -- "C"
		when "1101" => segment7 <= "0100001";  -- "d"
		when "1110" => segment7 <= "0000110";  -- "E"
		when "1111" => segment7 <= "0001110";  -- "f"
		when others => segment7 <= "1111111"; 
		
   -- nothing is displayed when a number more than f is given as input.

		end case;
		
	end process;
	
end RTL;
--------------------------------------------------------------------------------------------