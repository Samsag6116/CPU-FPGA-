----------------------------------------------------------------------------------------------------------------------------------
--	Copyright <2017> EECE8020 Reconfigurable system Principles. All rights reserved.																	
																																												
--	Summary				:  Lab 4 VHDL code - ALU
--								In this code We use 2 input buses and one function select as a inputs in which function select  
--							   gives what type of operation We want to do on the input(arithmetic or logical) and produce the
--								output and according to that set the status flags(zero, overflow,sign and carry out flags).
								
--	Programmer			:  SAGAR PATEL and EMILY ADAMS
								
--	Revision History	:	01/30/2017 <spatel1652> Rev. <1.0 Initial Creation>
--								02/09/2017 <spatel1652> Rev. <2.0 Commenting the code>

----------------------------------------------------------------------------------------------------------------------------------								

-------------------- Library --------------------

library IEEE;
use IEEE.std_logic_1164.All;
use IEEE.numeric_std.ALL;

-------------------- I/O declaration(entity) --------------------

entity ALU is
port (
			A : in unsigned(7 downto 0); 	 -- input bus
			B : in unsigned(7 downto 0); 	 -- input bus
			F : out unsigned(7 downto 0);  -- function output
			SSEL : in unsigned(3 downto 0);-- function select input
			z : out std_logic; 				 -- zero flag
			s : out std_logic; 				 -- sign flag
			c : out std_logic; 				 -- carry out flag
			v : out std_logic 			    -- overflow flag
	  );
end ALU;

-------------------------------- Architecture ---------------------------------------
Architecture behaviour of ALU is

signal F_int : unsigned(8 downto 0);   -- 5 bit variable that stores the result with carry
signal F_log : unsigned(7 downto 0);   -- 4 bit variable to store the result temporary

begin
 
process(A,B,SSEL)

begin
	case SSEL is 
------------------------------- Arithmetic ----------------------------------
		when "0000" => F_int  <= ("0" & A);
		F <= F_int(7 downto 0);              -- convert the result in 4 bit 
-------------------------------------------------------------			
		when "0001" => F_int <= (("0" & A) + ("00001"));
		-- increment A by 1
			if(F_int(7) = '1') then s <= '1';    -- check the condition and set Sign flag 
			else
			s <= '0';
			end if;
			
			if(F_int = "00000000") then z <= '1';    -- check the condition and set zero flag
			else
			z <= '0';
			end if;
						
			F <= F_int(7 downto 0);
--------------------------------------------------------------			
		when "0010" => F_int <= (("0" & A) + ("0" & B)); 
		-- Addition of A and B
			if(F_int(7) = '1') then s <= '1';
			else
			s <= '0';
			end if;
			
			if(F_int = "00000000") then z <= '1';
			else
			z <= '0';
			end if;
			
			if(F_int(8) = '1') then c <= '1';
			else
			c <= '0';
			end if;
			
			if(F_int(8) = '1') then v <= '1';
			else
			v <= '0';
			end if;
			
			F <= F_int(7 downto 0);
------------------------------------------------------------			
		when "0101" => F_int <=(("0" & A) - ("0" & B));
		-- substracion of A and B
		   if(F_int(7) = '1') then s <= '1';
			else
			s <= '0';
			end if;
			
			if(F_int = "00000000") then z <= '1';
			else
			z <= '0';
			end if;
			
			if(F_int(8) = '1') then c <= '1';
			else
			c <= '0';
			end if;
			
			if(F_int(8) = '1') then v <= '1';
			else
			v <= '0';
			end if;
			
			F <= F_int(7 downto 0);
-----------------------------------------------------------			
		when "0110" => F_int <= (("0" & A) - ("00001"));
		-- Decrement A by 1
			if(F_int(7) = '1') then s <= '1';
			else
			s <= '0';
			end if;
			
			if(F_int = "00000000") then z <= '1';
			else
			z <= '0';
			end if;
						
			F <= F_int(7 downto 0);
--------------------------------------------------------			
		when "0111" => F_int <= ("0" & A);
		-- transfer A with carry 0
			if(F_int(7) = '1') then s <= '1';
			else
			s <= '0';
			end if;
			
			if(F_int = "00000000") then z <= '1';
			else
			z <= '0';
			end if;
			F <= F_int(7 downto 0);
----------------------------------------------------------------			

-------------------------- Logic ---------------------------------------		
		when "1000" => F_log <= A AND B;
		-- AND gate between A and B
			if(F_log(7) = '1') then s <= '1';     -- check the condition and set Sign flag
			else
			s <= '0';
			end if;
			
			if(F_log = "00000000") then z <= '1';    -- check the condition and set zero flag
			else
			z <= '0';
			end if;
			F <= F_log;
--------------------------------------------------------------------------			
		when "1010" => F_log <= A OR B;
		-- OR gate between A and B
			if(F_log(7) = '1') then s <= '1';
			else
			s <= '0';
			end if;
			
			if(F_log = "00000000") then z <= '1';
			else
			z <= '0';
			end if;
			F <= F_log;
---------------------------------------------------------------------------			
		when "1100" => F_log <= A XOR B;
		-- XOR gate between A and B
			if(F_log(7) = '1') then s <= '1';
			else
			s <= '0';
			end if;
			
			if(F_log = "00000000") then z <= '1';
			else
			z <= '0';
			end if;
			F <= F_log;
---------------------------------------------------------------------------			
		when "1110" => F_log <= NOT A; 
		-- complement A
			if(F_log(7) = '1') then s <= '1';
			else
			s <= '0';
			end if;
			
			if(F_log = "00000000") then z <= '1';
			else
			z <= '0';
			end if;
			F <= F_log;
---------------------------------------------------------------------------		
		when others => F <= "00000000";
							z <= '0';
							s <= '0';
							c <= '0';
							v <= '0';
------------------------------------------------------------------------------------------						
	end case;
	
end process;
end behaviour;
----------------------------------------------- END --------------------------------------------------