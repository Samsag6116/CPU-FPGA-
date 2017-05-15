----------------------------------------------------------------------------------------------------------------------------------
--	Copyright <2017> EECE8020 Reconfigurable system Principles. All rights reserved.																	
																																												
--	Summary				:  Lab 6 VHDL code - CPU
--                                  	   In this code We merge all above ALU, Shifter and Regfile and try to make CPU that
--					   works on microcode instruction that we have written in micro code file as like a real
--					   CPU and display the output on 7 segment decoder according the which instruction fetched.
								
--	Programmer			:  SAGAR PATEL and EMILY ADAMS
								
--	Revision History	        :  03/24/2017 <spatel1652> Rev. <1.0 Initial Creation>
--					   03/30/2017 <spatel1652> Rev. <2.0 Commenting the code>

----------------------------------------------------------------------------------------------------------------------------------								

-------------------- Library --------------------

library IEEE;
use IEEE.std_logic_1164.All;
use ieee.numeric_std.all;

-------------------- I/O declaration(entity) --------------------

entity CPU is 
port (
		  DATA_I  : in unsigned(7 downto 0); -- Input Data
		  DATA_O  : out unsigned(7 downto 0); -- output data
		
		  CLK     : in std_logic;
		  CLK1	 :	in std_logic;
		 -- for 7 segment display
		  SEGM_A    : out std_logic_vector(6 downto 0);
		  SEGM_B    : out std_logic_vector(6 downto 0);
		  SEGM_ALU  : out std_logic_vector(6 downto 0);
--		  SEGM_SSEL : out std_logic_vector(6 downto 0);
--		  SEGM_HSEL : out std_logic_vector(6 downto 0);
		  SEGM_CAR  : out std_logic_vector(6 downto 0);
		  
		  CPU_DATA_OUT : inout std_logic_vector(31 downto 0);
		  
		  ALU_OUT : inout std_logic_vector(7 downto 0);
		  
		  COUNT : inout std_logic;
		  -- status bits
		  ZERO              : inout std_logic;
		  SIGN              : inout std_logic;
		  CARRY             : inout std_logic;
		  CARRY_OUT_SHIFTER : inout std_logic;
		  OVERFLOW          : inout std_logic;
		  
		  A_BUS_VALUE : inout unsigned (7 downto 0);
		  B_BUS_VALUE : inout unsigned (7 downto 0);
		  
		  ASEL_R_VALUE : inout std_logic_vector(6 downto 0);
		  BSEL_R_VALUE : inout std_logic_vector(6 downto 0);
		  DSEL_R_VALUE : inout std_logic_vector(6 downto 0);
		  
		  SEG_ASEL_VALUE : inout std_logic_vector(6 downto 0);
  		  SEG_BSEL_VALUE : inout std_logic_vector(6 downto 0);
  		  SEG_DSEL_VALUE : inout std_logic_vector(6 downto 0);
		  
	  -- microcode
	ASEL : inout std_logic_vector( 2 downto 0); -- 3bit
        BSEL : inout std_logic_vector( 2 downto 0); -- 3bit
	DSEL : inout std_logic_vector( 2 downto 0); -- 3bit
        SSEL : inout std_logic_vector( 3 downto 0); -- 4bit
        HSEL : inout std_logic_vector( 2 downto 0); -- 3bit
        MUX1 : inout std_logic;
        MUX2 : inout std_logic_vector( 2 downto 0); -- 3bit
        ADRS : inout unsigned( 7 downto 0); -- 8bit
        MISC : inout std_logic_vector( 3 downto 0); -- 4bit
		  
		  CAR : inout unsigned(7 downto 0) := "00000000"

			);
end CPU;
-------------------------------- Architecture ---------------------------------------
Architecture RTL of CPU is

 signal SHIFTER_O : unsigned(7 downto 0);

begin

	MICROCODE_ROM_FILE : entity work.microcode_rom port map( ADDR_IN => std_logic_vector(CAR), DATA_OUT => CPU_DATA_OUT);

                 ASEL <= CPU_DATA_OUT(31 downto 29);   -- bit size: 3
                 BSEL <= CPU_DATA_OUT(28 downto 26);   -- bit size: 3
                 DSEL <= CPU_DATA_OUT(25 downto 23);   -- bit size: 3
                 SSEL <= CPU_DATA_OUT(22 downto 19);   -- bit size: 4
                 HSEL <= CPU_DATA_OUT(18 downto 16);   -- bit size: 3
                 MUX1 <= CPU_DATA_OUT(15);             -- bit size: 1
                 MUX2 <= CPU_DATA_OUT(14 downto 12);   -- bit size: 3
                 ADRS <= unsigned(CPU_DATA_OUT(11 downto  4));   -- bit size: 8
                 MISC <= CPU_DATA_OUT( 3 downto  0);   -- bit size: 4 
					  
	REGISTER_FILE : entity work.REGFILE port map( DSEL => unsigned(DSEL), ASEL => unsigned(ASEL), BSEL => unsigned(BSEL), DIN => DATA_I, RIN => unsigned(SHIFTER_O), CLK => CLK, A => A_BUS_VALUE, B => B_BUS_VALUE );
   
	ALU_FILE : entity work.ALU port map( A => unsigned(A_BUS_VALUE), B => unsigned(B_BUS_VALUE), std_logic_vector(F) => ALU_OUT, SSEL => unsigned(SSEL), z => ZERO, s => SIGN, c => CARRY, v => OVERFLOW );
	
	SHIFTER_FILE : entity work.SHIFTER port map( input_bus => unsigned(ALU_OUT), carry_in => CARRY, fun_select => unsigned(HSEL), std_logic_vector(shifter_output) => SHIFTER_O, std_logic(carry_out) => CARRY_OUT_SHIFTER );
	
	SEGMENT_CAR_FILE : entity work.decoder port map( binary => std_logic_vector(CAR(3 downto 0)), segment7 => SEGM_CAR );
	
	SEGMENT_ALU_FILE : entity work.decoder port map( binary => std_logic_vector(ALU_OUT(3 downto 0)), segment7 => SEG_DSEL_VALUE );
	
--	SEGMENT_SSEL_FILE : entity work.decoder port map( binary => SSEL, segment7 => SEGM_SSEL );
	
--	SEGMENT_HSEL_FILE : entity work.decoder port map( binary => ("0" & HSEL), segment7 => SEGM_HSEL );

	SEGMENT_A_FILE : entity work.decoder port map( binary => std_logic_vector(A_BUS_VALUE(3 downto 0)), segment7 => SEG_ASEL_VALUE);
	SEGEMENT_A_FILE_1 : entity work.decoder port map( binary => std_logic_vector("0" & ASEL), segment7 => ASEL_R_VALUE);
	
	SEGMENT_B_FILE : entity work.decoder port map( binary => std_logic_vector(B_BUS_VALUE(3 downto 0)), segment7 => SEG_BSEL_VALUE);
	SEGEMENT_B_FILE_1 : entity work.decoder port map( binary => std_logic_vector("0" & BSEL), segment7 => BSEL_R_VALUE);
	
	SEGEMENT_D_FILE_1 : entity work.decoder port map( binary => std_logic_vector("0" & DSEL), segment7 => DSEL_R_VALUE);
	
	
	process(SHIFTER_O) is
	begin
	 DATA_O <= SHIFTER_O;
	end process;
	
	process(CLK1) is
	begin
		if(rising_edge(CLK1)) then
			case(COUNT) is
			when '0' => SEGM_A <= SEG_ASEL_VALUE;
							SEGM_B <= SEG_BSEL_VALUE;
							SEGM_ALU <= SEG_DSEL_VALUE;
							COUNT <= '1';
			
			when '1' => SEGM_A <= ASEL_R_VALUE;
							SEGM_B <= BSEL_R_VALUE;
							SEGM_ALU <= DSEL_R_VALUE;
							COUNT <= '0';
			end case;
		end if;
	end process;
	
	process(CLK) is
	begin
		if(rising_edge(CLK)) then
			case(MUX2) is
			
			when "000" => 
								CAR <= (CAR + 1);
			when "001" => 
								CAR <= ADRS;
			when "010" => 
								if (CARRY = '1') then
									CAR <= ADRS;
								else
									CAR <= (CAR + 1);
								end if;
			when "011" => 
								if (CARRY = '0') then
									CAR <= ADRS;
								else
									CAR <= (CAR + 1);
								end if;
			when "100" => 
								if (ZERO = '1') then
									CAR <= ADRS;
								else
									CAR <= (CAR + 1);
								end if;
			when "101" => 
								if (ZERO = '0') then
									CAR <= ADRS;
								else
									CAR <= (CAR + 1);
								end if;
			when "110" => 
								if (SIGN = '1') then
									CAR <= ADRS;
								else
									CAR <= (CAR + 1);
								end if;
			when "111" => 
								if (OVERFLOW = '1') then
									CAR <= ADRS;
								else
									CAR <= (CAR + 1);
								end if;
		end case;
		end if;
	end process;

end RTL;
