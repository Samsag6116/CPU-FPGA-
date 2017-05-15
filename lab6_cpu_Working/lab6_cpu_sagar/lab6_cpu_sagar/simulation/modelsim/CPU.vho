-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "04/03/2017 13:29:51"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	DATA_I : IN std_logic_vector(7 DOWNTO 0);
	DATA_O : BUFFER std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	CLK1 : IN std_logic;
	SEGM_A : BUFFER std_logic_vector(6 DOWNTO 0);
	SEGM_B : BUFFER std_logic_vector(6 DOWNTO 0);
	SEGM_ALU : BUFFER std_logic_vector(6 DOWNTO 0);
	SEGM_CAR : BUFFER std_logic_vector(6 DOWNTO 0);
	CPU_DATA_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	ALU_OUT : BUFFER std_logic_vector(7 DOWNTO 0);
	COUNT : BUFFER std_logic;
	ZERO : BUFFER std_logic;
	SIGN : BUFFER std_logic;
	CARRY : BUFFER std_logic;
	CARRY_OUT_SHIFTER : BUFFER std_logic;
	OVERFLOW : BUFFER std_logic;
	A_BUS_VALUE : BUFFER std_logic_vector(7 DOWNTO 0);
	B_BUS_VALUE : BUFFER std_logic_vector(7 DOWNTO 0);
	ASEL_R_VALUE : BUFFER std_logic_vector(6 DOWNTO 0);
	BSEL_R_VALUE : BUFFER std_logic_vector(6 DOWNTO 0);
	DSEL_R_VALUE : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG_ASEL_VALUE : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG_BSEL_VALUE : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG_DSEL_VALUE : BUFFER std_logic_vector(6 DOWNTO 0);
	ASEL : BUFFER std_logic_vector(2 DOWNTO 0);
	BSEL : BUFFER std_logic_vector(2 DOWNTO 0);
	DSEL : BUFFER std_logic_vector(2 DOWNTO 0);
	SSEL : BUFFER std_logic_vector(3 DOWNTO 0);
	HSEL : BUFFER std_logic_vector(2 DOWNTO 0);
	MUX1 : BUFFER std_logic;
	MUX2 : BUFFER std_logic_vector(2 DOWNTO 0);
	ADRS : BUFFER std_logic_vector(7 DOWNTO 0);
	MISC : BUFFER std_logic_vector(3 DOWNTO 0);
	CAR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- DATA_O[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_O[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_O[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_O[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_O[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_O[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_O[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_O[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_A[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_A[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_A[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_A[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_A[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_A[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_A[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_B[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_B[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_B[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_B[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_B[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_B[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_B[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_ALU[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_ALU[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_ALU[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_ALU[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_ALU[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_ALU[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_ALU[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_CAR[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_CAR[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_CAR[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_CAR[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_CAR[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_CAR[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGM_CAR[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[5]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[6]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[7]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[8]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[9]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[10]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[11]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[12]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[13]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[14]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[15]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[16]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[17]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[18]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[19]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[20]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[21]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[22]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[23]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[24]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[25]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[26]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[27]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[28]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[29]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[30]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_DATA_OUT[31]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OUT[0]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OUT[1]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OUT[2]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OUT[3]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OUT[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OUT[5]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OUT[6]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OUT[7]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZERO	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CARRY	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CARRY_OUT_SHIFTER	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVERFLOW	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_BUS_VALUE[0]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_BUS_VALUE[1]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_BUS_VALUE[2]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_BUS_VALUE[3]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_BUS_VALUE[4]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_BUS_VALUE[5]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_BUS_VALUE[6]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_BUS_VALUE[7]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_BUS_VALUE[0]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_BUS_VALUE[1]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_BUS_VALUE[2]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_BUS_VALUE[3]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_BUS_VALUE[4]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_BUS_VALUE[5]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_BUS_VALUE[6]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_BUS_VALUE[7]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASEL_R_VALUE[0]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASEL_R_VALUE[1]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASEL_R_VALUE[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASEL_R_VALUE[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASEL_R_VALUE[4]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASEL_R_VALUE[5]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASEL_R_VALUE[6]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL_R_VALUE[0]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL_R_VALUE[1]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL_R_VALUE[2]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL_R_VALUE[3]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL_R_VALUE[4]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL_R_VALUE[5]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL_R_VALUE[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DSEL_R_VALUE[0]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DSEL_R_VALUE[1]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DSEL_R_VALUE[2]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DSEL_R_VALUE[3]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DSEL_R_VALUE[4]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DSEL_R_VALUE[5]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DSEL_R_VALUE[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_ASEL_VALUE[0]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_ASEL_VALUE[1]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_ASEL_VALUE[2]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_ASEL_VALUE[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_ASEL_VALUE[4]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_ASEL_VALUE[5]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_ASEL_VALUE[6]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_BSEL_VALUE[0]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_BSEL_VALUE[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_BSEL_VALUE[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_BSEL_VALUE[3]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_BSEL_VALUE[4]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_BSEL_VALUE[5]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_BSEL_VALUE[6]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_DSEL_VALUE[0]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_DSEL_VALUE[1]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_DSEL_VALUE[2]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_DSEL_VALUE[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_DSEL_VALUE[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_DSEL_VALUE[5]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_DSEL_VALUE[6]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASEL[0]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASEL[1]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASEL[2]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL[0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL[1]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BSEL[2]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DSEL[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DSEL[1]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DSEL[2]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEL[0]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEL[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEL[2]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSEL[3]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSEL[0]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSEL[1]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSEL[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX1	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX2[0]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX2[1]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX2[2]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRS[0]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRS[1]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRS[2]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRS[3]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRS[4]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRS[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRS[6]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADRS[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISC[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISC[1]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISC[2]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISC[3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR[3]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR[4]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR[5]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR[6]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAR[7]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_I[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_I[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_I[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_I[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_I[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_I[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_I[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_I[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK1	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DATA_I : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DATA_O : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLK1 : std_logic;
SIGNAL ww_SEGM_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEGM_B : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEGM_ALU : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEGM_CAR : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CPU_DATA_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALU_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_COUNT : std_logic;
SIGNAL ww_ZERO : std_logic;
SIGNAL ww_SIGN : std_logic;
SIGNAL ww_CARRY : std_logic;
SIGNAL ww_CARRY_OUT_SHIFTER : std_logic;
SIGNAL ww_OVERFLOW : std_logic;
SIGNAL ww_A_BUS_VALUE : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B_BUS_VALUE : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ASEL_R_VALUE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BSEL_R_VALUE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DSEL_R_VALUE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG_ASEL_VALUE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG_BSEL_VALUE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG_DSEL_VALUE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ASEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_BSEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DSEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SSEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HSEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_MUX1 : std_logic;
SIGNAL ww_MUX2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ADRS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MISC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CAR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU_DATA_OUT[0]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[1]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[2]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[3]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[4]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[5]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[6]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[7]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[8]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[9]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[10]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[11]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[12]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[13]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[14]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[15]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[16]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[17]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[18]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[19]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[20]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[21]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[22]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[23]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[24]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[25]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[26]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[27]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[28]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[29]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[30]~input_o\ : std_logic;
SIGNAL \CPU_DATA_OUT[31]~input_o\ : std_logic;
SIGNAL \ALU_OUT[0]~input_o\ : std_logic;
SIGNAL \ALU_OUT[1]~input_o\ : std_logic;
SIGNAL \ALU_OUT[2]~input_o\ : std_logic;
SIGNAL \ALU_OUT[3]~input_o\ : std_logic;
SIGNAL \ALU_OUT[4]~input_o\ : std_logic;
SIGNAL \ALU_OUT[5]~input_o\ : std_logic;
SIGNAL \ALU_OUT[6]~input_o\ : std_logic;
SIGNAL \ALU_OUT[7]~input_o\ : std_logic;
SIGNAL \COUNT~input_o\ : std_logic;
SIGNAL \ZERO~input_o\ : std_logic;
SIGNAL \SIGN~input_o\ : std_logic;
SIGNAL \CARRY~input_o\ : std_logic;
SIGNAL \CARRY_OUT_SHIFTER~input_o\ : std_logic;
SIGNAL \OVERFLOW~input_o\ : std_logic;
SIGNAL \A_BUS_VALUE[0]~input_o\ : std_logic;
SIGNAL \A_BUS_VALUE[1]~input_o\ : std_logic;
SIGNAL \A_BUS_VALUE[2]~input_o\ : std_logic;
SIGNAL \A_BUS_VALUE[3]~input_o\ : std_logic;
SIGNAL \A_BUS_VALUE[4]~input_o\ : std_logic;
SIGNAL \A_BUS_VALUE[5]~input_o\ : std_logic;
SIGNAL \A_BUS_VALUE[6]~input_o\ : std_logic;
SIGNAL \A_BUS_VALUE[7]~input_o\ : std_logic;
SIGNAL \B_BUS_VALUE[0]~input_o\ : std_logic;
SIGNAL \B_BUS_VALUE[1]~input_o\ : std_logic;
SIGNAL \B_BUS_VALUE[2]~input_o\ : std_logic;
SIGNAL \B_BUS_VALUE[3]~input_o\ : std_logic;
SIGNAL \B_BUS_VALUE[4]~input_o\ : std_logic;
SIGNAL \B_BUS_VALUE[5]~input_o\ : std_logic;
SIGNAL \B_BUS_VALUE[6]~input_o\ : std_logic;
SIGNAL \B_BUS_VALUE[7]~input_o\ : std_logic;
SIGNAL \ASEL_R_VALUE[0]~input_o\ : std_logic;
SIGNAL \ASEL_R_VALUE[1]~input_o\ : std_logic;
SIGNAL \ASEL_R_VALUE[2]~input_o\ : std_logic;
SIGNAL \ASEL_R_VALUE[3]~input_o\ : std_logic;
SIGNAL \ASEL_R_VALUE[4]~input_o\ : std_logic;
SIGNAL \ASEL_R_VALUE[5]~input_o\ : std_logic;
SIGNAL \ASEL_R_VALUE[6]~input_o\ : std_logic;
SIGNAL \BSEL_R_VALUE[0]~input_o\ : std_logic;
SIGNAL \BSEL_R_VALUE[1]~input_o\ : std_logic;
SIGNAL \BSEL_R_VALUE[2]~input_o\ : std_logic;
SIGNAL \BSEL_R_VALUE[3]~input_o\ : std_logic;
SIGNAL \BSEL_R_VALUE[4]~input_o\ : std_logic;
SIGNAL \BSEL_R_VALUE[5]~input_o\ : std_logic;
SIGNAL \BSEL_R_VALUE[6]~input_o\ : std_logic;
SIGNAL \DSEL_R_VALUE[0]~input_o\ : std_logic;
SIGNAL \DSEL_R_VALUE[1]~input_o\ : std_logic;
SIGNAL \DSEL_R_VALUE[2]~input_o\ : std_logic;
SIGNAL \DSEL_R_VALUE[3]~input_o\ : std_logic;
SIGNAL \DSEL_R_VALUE[4]~input_o\ : std_logic;
SIGNAL \DSEL_R_VALUE[5]~input_o\ : std_logic;
SIGNAL \DSEL_R_VALUE[6]~input_o\ : std_logic;
SIGNAL \SEG_ASEL_VALUE[0]~input_o\ : std_logic;
SIGNAL \SEG_ASEL_VALUE[1]~input_o\ : std_logic;
SIGNAL \SEG_ASEL_VALUE[2]~input_o\ : std_logic;
SIGNAL \SEG_ASEL_VALUE[3]~input_o\ : std_logic;
SIGNAL \SEG_ASEL_VALUE[4]~input_o\ : std_logic;
SIGNAL \SEG_ASEL_VALUE[5]~input_o\ : std_logic;
SIGNAL \SEG_ASEL_VALUE[6]~input_o\ : std_logic;
SIGNAL \SEG_BSEL_VALUE[0]~input_o\ : std_logic;
SIGNAL \SEG_BSEL_VALUE[1]~input_o\ : std_logic;
SIGNAL \SEG_BSEL_VALUE[2]~input_o\ : std_logic;
SIGNAL \SEG_BSEL_VALUE[3]~input_o\ : std_logic;
SIGNAL \SEG_BSEL_VALUE[4]~input_o\ : std_logic;
SIGNAL \SEG_BSEL_VALUE[5]~input_o\ : std_logic;
SIGNAL \SEG_BSEL_VALUE[6]~input_o\ : std_logic;
SIGNAL \SEG_DSEL_VALUE[0]~input_o\ : std_logic;
SIGNAL \SEG_DSEL_VALUE[1]~input_o\ : std_logic;
SIGNAL \SEG_DSEL_VALUE[2]~input_o\ : std_logic;
SIGNAL \SEG_DSEL_VALUE[3]~input_o\ : std_logic;
SIGNAL \SEG_DSEL_VALUE[4]~input_o\ : std_logic;
SIGNAL \SEG_DSEL_VALUE[5]~input_o\ : std_logic;
SIGNAL \SEG_DSEL_VALUE[6]~input_o\ : std_logic;
SIGNAL \ASEL[0]~input_o\ : std_logic;
SIGNAL \ASEL[1]~input_o\ : std_logic;
SIGNAL \ASEL[2]~input_o\ : std_logic;
SIGNAL \BSEL[0]~input_o\ : std_logic;
SIGNAL \BSEL[1]~input_o\ : std_logic;
SIGNAL \BSEL[2]~input_o\ : std_logic;
SIGNAL \DSEL[0]~input_o\ : std_logic;
SIGNAL \DSEL[1]~input_o\ : std_logic;
SIGNAL \DSEL[2]~input_o\ : std_logic;
SIGNAL \SSEL[0]~input_o\ : std_logic;
SIGNAL \SSEL[1]~input_o\ : std_logic;
SIGNAL \SSEL[2]~input_o\ : std_logic;
SIGNAL \SSEL[3]~input_o\ : std_logic;
SIGNAL \HSEL[0]~input_o\ : std_logic;
SIGNAL \HSEL[1]~input_o\ : std_logic;
SIGNAL \HSEL[2]~input_o\ : std_logic;
SIGNAL \MUX1~input_o\ : std_logic;
SIGNAL \MUX2[0]~input_o\ : std_logic;
SIGNAL \MUX2[1]~input_o\ : std_logic;
SIGNAL \MUX2[2]~input_o\ : std_logic;
SIGNAL \ADRS[0]~input_o\ : std_logic;
SIGNAL \ADRS[1]~input_o\ : std_logic;
SIGNAL \ADRS[2]~input_o\ : std_logic;
SIGNAL \ADRS[3]~input_o\ : std_logic;
SIGNAL \ADRS[4]~input_o\ : std_logic;
SIGNAL \ADRS[5]~input_o\ : std_logic;
SIGNAL \ADRS[6]~input_o\ : std_logic;
SIGNAL \ADRS[7]~input_o\ : std_logic;
SIGNAL \MISC[0]~input_o\ : std_logic;
SIGNAL \MISC[1]~input_o\ : std_logic;
SIGNAL \MISC[2]~input_o\ : std_logic;
SIGNAL \MISC[3]~input_o\ : std_logic;
SIGNAL \CAR[0]~input_o\ : std_logic;
SIGNAL \CAR[1]~input_o\ : std_logic;
SIGNAL \CAR[2]~input_o\ : std_logic;
SIGNAL \CAR[3]~input_o\ : std_logic;
SIGNAL \CAR[4]~input_o\ : std_logic;
SIGNAL \CAR[5]~input_o\ : std_logic;
SIGNAL \CAR[6]~input_o\ : std_logic;
SIGNAL \CAR[7]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \CAR[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CAR[4]~reg0_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \CAR[5]~reg0_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \CAR[6]~reg0_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \CAR[7]~reg0_q\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux12~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux19~0_combout\ : std_logic;
SIGNAL \CAR[3]~reg0_q\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux21~0_combout\ : std_logic;
SIGNAL \CAR[1]~reg0_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux14~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux20~0_combout\ : std_logic;
SIGNAL \CAR[2]~reg0_q\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux9~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux9~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux12~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux12~2_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux10~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux10~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux11~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux11~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux3~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux5~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux4~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux67~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux8~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux8~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux13~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux2~3_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux2~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux1~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux2~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux7~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux7~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux67~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux1~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux6~0_combout\ : std_logic;
SIGNAL \SEGEMENT_D_FILE_1|Mux3~1_combout\ : std_logic;
SIGNAL \SEGEMENT_D_FILE_1|Mux4~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|R7[1]~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|R5[6]~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux6~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux25~0_combout\ : std_logic;
SIGNAL \SEGEMENT_D_FILE_1|Mux1~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|R6[6]~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux4~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux5~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux65~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux65~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux15~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux9~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux2~2_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux23~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux0~0_combout\ : std_logic;
SIGNAL \DATA_I[4]~input_o\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux15~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux13~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux22~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|R3[7]~0_combout\ : std_logic;
SIGNAL \DATA_I[1]~input_o\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux1~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux1~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux6~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux2~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux2~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux62~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux62~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux62~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux7~0_combout\ : std_logic;
SIGNAL \DATA_I[0]~input_o\ : std_logic;
SIGNAL \REGISTER_FILE|Mux23~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux63~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux31~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux63~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux63~2_combout\ : std_logic;
SIGNAL \ALU_FILE|Add0~34_cout\ : std_logic;
SIGNAL \ALU_FILE|Add0~6\ : std_logic;
SIGNAL \ALU_FILE|Add0~1_sumout\ : std_logic;
SIGNAL \ALU_FILE|Mux24~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux9~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux7~2_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux7~3_combout\ : std_logic;
SIGNAL \ALU_FILE|Add0~5_sumout\ : std_logic;
SIGNAL \ALU_FILE|Mux22~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux7~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux16~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux24~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux56~0_combout\ : std_logic;
SIGNAL \DATA_I[7]~input_o\ : std_logic;
SIGNAL \REGISTER_FILE|R2[7]~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux56~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux56~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux18~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux26~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux58~0_combout\ : std_logic;
SIGNAL \DATA_I[5]~input_o\ : std_logic;
SIGNAL \REGISTER_FILE|Mux58~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux58~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux3~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux27~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux67~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux67~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux4~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux28~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux68~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux68~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux37~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux29~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux45~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux69~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux5~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux69~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Add0~2\ : std_logic;
SIGNAL \ALU_FILE|Add0~10\ : std_logic;
SIGNAL \ALU_FILE|Add0~14\ : std_logic;
SIGNAL \ALU_FILE|Add0~18\ : std_logic;
SIGNAL \ALU_FILE|Add0~22\ : std_logic;
SIGNAL \ALU_FILE|Add0~26\ : std_logic;
SIGNAL \ALU_FILE|Add0~30\ : std_logic;
SIGNAL \ALU_FILE|Add0~37_sumout\ : std_logic;
SIGNAL \ALU_FILE|Mux31~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux17~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux18~0_combout\ : std_logic;
SIGNAL \ALU_FILE|c~combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux7~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux47~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux71~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux71~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux8~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux11~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux6~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux30~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux70~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux70~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux10~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux7~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux12~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux5~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux21~0_combout\ : std_logic;
SIGNAL \DATA_I[2]~input_o\ : std_logic;
SIGNAL \REGISTER_FILE|Mux61~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux61~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux61~2_combout\ : std_logic;
SIGNAL \ALU_FILE|Add0~9_sumout\ : std_logic;
SIGNAL \ALU_FILE|Mux25~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux11~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux6~1_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux13~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux4~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux20~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux60~0_combout\ : std_logic;
SIGNAL \DATA_I[3]~input_o\ : std_logic;
SIGNAL \REGISTER_FILE|Mux60~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux60~2_combout\ : std_logic;
SIGNAL \ALU_FILE|Add0~13_sumout\ : std_logic;
SIGNAL \ALU_FILE|Mux26~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux12~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux5~1_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux14~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux3~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux19~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux59~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux59~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux59~2_combout\ : std_logic;
SIGNAL \ALU_FILE|Add0~17_sumout\ : std_logic;
SIGNAL \ALU_FILE|Mux27~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux13~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux4~1_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux15~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux2~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux2~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux66~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux66~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux14~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Add0~21_sumout\ : std_logic;
SIGNAL \ALU_FILE|Mux28~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux3~1_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux16~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux1~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux17~0_combout\ : std_logic;
SIGNAL \DATA_I[6]~input_o\ : std_logic;
SIGNAL \REGISTER_FILE|Mux57~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux57~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux57~2_combout\ : std_logic;
SIGNAL \ALU_FILE|Add0~25_sumout\ : std_logic;
SIGNAL \ALU_FILE|Mux29~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux17~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux1~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux0~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux16~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux0~2_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux7~1_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux0~3_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux0~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux0~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux64~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|Mux64~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Add0~29_sumout\ : std_logic;
SIGNAL \ALU_FILE|Mux30~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux1~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux20~0_combout\ : std_logic;
SIGNAL \ALU_FILE|s~combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux18~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux17~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux16~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux19~4_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux19~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux19~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux19~3_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux19~2_combout\ : std_logic;
SIGNAL \ALU_FILE|z~combout\ : std_logic;
SIGNAL \CAR[2]~8_combout\ : std_logic;
SIGNAL \CAR[0]~reg0_q\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux22~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|Mux3~1_combout\ : std_logic;
SIGNAL \CLK1~input_o\ : std_logic;
SIGNAL \CLK1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \COUNT~2_combout\ : std_logic;
SIGNAL \COUNT~reg0_q\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux8~0_combout\ : std_logic;
SIGNAL \SEGEMENT_A_FILE_1|Mux6~0_combout\ : std_logic;
SIGNAL \SEGEMENT_A_FILE_1|Mux5~0_combout\ : std_logic;
SIGNAL \SEGEMENT_A_FILE_1|Mux4~0_combout\ : std_logic;
SIGNAL \SEGEMENT_A_FILE_1|Mux3~0_combout\ : std_logic;
SIGNAL \SEGEMENT_A_FILE_1|Mux2~0_combout\ : std_logic;
SIGNAL \SEGEMENT_A_FILE_1|Mux1~0_combout\ : std_logic;
SIGNAL \SEGEMENT_A_FILE_1|Mux0~0_combout\ : std_logic;
SIGNAL \SEGEMENT_B_FILE_1|Mux6~0_combout\ : std_logic;
SIGNAL \SEGEMENT_B_FILE_1|Mux5~0_combout\ : std_logic;
SIGNAL \SEGEMENT_B_FILE_1|Mux4~0_combout\ : std_logic;
SIGNAL \SEGEMENT_B_FILE_1|Mux3~0_combout\ : std_logic;
SIGNAL \SEGEMENT_B_FILE_1|Mux2~0_combout\ : std_logic;
SIGNAL \SEGEMENT_B_FILE_1|Mux1~0_combout\ : std_logic;
SIGNAL \SEGEMENT_B_FILE_1|Mux0~0_combout\ : std_logic;
SIGNAL \SEGEMENT_D_FILE_1|Mux6~0_combout\ : std_logic;
SIGNAL \SEGEMENT_D_FILE_1|Mux5~0_combout\ : std_logic;
SIGNAL \SEGEMENT_D_FILE_1|Mux4~1_combout\ : std_logic;
SIGNAL \SEGEMENT_D_FILE_1|Mux3~0_combout\ : std_logic;
SIGNAL \SEGEMENT_D_FILE_1|Mux2~0_combout\ : std_logic;
SIGNAL \SEGEMENT_D_FILE_1|Mux1~0_combout\ : std_logic;
SIGNAL \SEGEMENT_D_FILE_1|Mux0~0_combout\ : std_logic;
SIGNAL \SEGMENT_A_FILE|Mux6~0_combout\ : std_logic;
SIGNAL \SEGMENT_A_FILE|Mux5~0_combout\ : std_logic;
SIGNAL \SEGMENT_A_FILE|Mux4~0_combout\ : std_logic;
SIGNAL \SEGMENT_A_FILE|Mux3~0_combout\ : std_logic;
SIGNAL \SEGMENT_A_FILE|Mux2~0_combout\ : std_logic;
SIGNAL \SEGMENT_A_FILE|Mux1~0_combout\ : std_logic;
SIGNAL \SEGMENT_A_FILE|Mux0~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|Mux6~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|Mux5~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|Mux4~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|Mux3~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|Mux2~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|Mux1~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|Mux0~0_combout\ : std_logic;
SIGNAL \SEGMENT_ALU_FILE|Mux6~0_combout\ : std_logic;
SIGNAL \SEGMENT_ALU_FILE|Mux5~0_combout\ : std_logic;
SIGNAL \SEGMENT_ALU_FILE|Mux4~0_combout\ : std_logic;
SIGNAL \SEGMENT_ALU_FILE|Mux3~0_combout\ : std_logic;
SIGNAL \SEGMENT_ALU_FILE|Mux2~0_combout\ : std_logic;
SIGNAL \SEGMENT_ALU_FILE|Mux1~0_combout\ : std_logic;
SIGNAL \SEGMENT_ALU_FILE|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux6~0_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux7~1_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux6~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux5~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux5~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux4~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux4~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux3~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux3~1_combout\ : std_logic;
SIGNAL \ALU_FILE|Mux2~1_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux2~2_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|Mux1~2_combout\ : std_logic;
SIGNAL \SEGM_A[0]~reg0_q\ : std_logic;
SIGNAL \SEGM_A[1]~reg0_q\ : std_logic;
SIGNAL \SEGM_A[2]~reg0_q\ : std_logic;
SIGNAL \SEGM_A[3]~reg0_q\ : std_logic;
SIGNAL \SEGM_A[4]~reg0_q\ : std_logic;
SIGNAL \SEGM_A[5]~reg0_q\ : std_logic;
SIGNAL \SEGM_A[6]~reg0_q\ : std_logic;
SIGNAL \SEGM_B[0]~reg0feeder_combout\ : std_logic;
SIGNAL \SEGM_B[0]~reg0_q\ : std_logic;
SIGNAL \SEGM_B[1]~reg0feeder_combout\ : std_logic;
SIGNAL \SEGM_B[1]~reg0_q\ : std_logic;
SIGNAL \SEGM_B[2]~reg0feeder_combout\ : std_logic;
SIGNAL \SEGM_B[2]~reg0_q\ : std_logic;
SIGNAL \SEGM_B[3]~reg0feeder_combout\ : std_logic;
SIGNAL \SEGM_B[3]~reg0_q\ : std_logic;
SIGNAL \SEGM_B[4]~reg0feeder_combout\ : std_logic;
SIGNAL \SEGM_B[4]~reg0_q\ : std_logic;
SIGNAL \SEGM_B[5]~reg0feeder_combout\ : std_logic;
SIGNAL \SEGM_B[5]~reg0_q\ : std_logic;
SIGNAL \SEGM_B[6]~reg0feeder_combout\ : std_logic;
SIGNAL \SEGM_B[6]~reg0_q\ : std_logic;
SIGNAL \SEGM_ALU[0]~reg0_q\ : std_logic;
SIGNAL \SEGM_ALU[1]~reg0_q\ : std_logic;
SIGNAL \SEGM_ALU[2]~reg0_q\ : std_logic;
SIGNAL \SEGM_ALU[3]~reg0_q\ : std_logic;
SIGNAL \SEGM_ALU[4]~reg0_q\ : std_logic;
SIGNAL \SEGM_ALU[5]~reg0_q\ : std_logic;
SIGNAL \SEGM_ALU[6]~reg0_q\ : std_logic;
SIGNAL \SEGMENT_CAR_FILE|Mux6~0_combout\ : std_logic;
SIGNAL \SEGMENT_CAR_FILE|Mux5~0_combout\ : std_logic;
SIGNAL \SEGMENT_CAR_FILE|Mux4~0_combout\ : std_logic;
SIGNAL \SEGMENT_CAR_FILE|Mux3~0_combout\ : std_logic;
SIGNAL \SEGMENT_CAR_FILE|Mux2~0_combout\ : std_logic;
SIGNAL \SEGMENT_CAR_FILE|Mux1~0_combout\ : std_logic;
SIGNAL \SEGMENT_CAR_FILE|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_FILE|F_log\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|R4\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|R5\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|R6\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|R7\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SHIFTER_FILE|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|R1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|R2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|R3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU_FILE|F_int\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_DATA_I[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_I[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_I[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_I[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_I[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_I[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_I[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DATA_I[1]~input_o\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_F_int\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALU_FILE|ALT_INV_s~combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_z~combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU_FILE|ALT_INV_F_log\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU_FILE|ALT_INV_c~combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux19~4_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \SEGEMENT_D_FILE_1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \SEGMENT_B_FILE|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_COUNT~reg0_q\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux56~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux56~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux56~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux64~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_R3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|ALT_INV_R2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|ALT_INV_R1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|ALT_INV_Mux64~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_R7\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|ALT_INV_R6\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|ALT_INV_R5\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGISTER_FILE|ALT_INV_R4\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SHIFTER_FILE|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux57~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux57~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux57~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux65~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux65~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux58~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux58~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux58~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux66~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux66~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux59~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux59~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux59~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux67~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux67~2_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux60~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux60~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux60~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux68~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux68~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux61~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux61~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux61~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux69~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux69~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux63~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux63~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux63~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux71~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux71~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux62~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux62~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux62~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux70~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux67~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux67~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|ALT_INV_Mux70~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \SEGMENT_CAR_FILE|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \SHIFTER_FILE|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALU_FILE|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_CAR[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_CAR[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_CAR[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_CAR[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_CAR[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_CAR[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_CAR[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_CAR[1]~reg0_q\ : std_logic;

BEGIN

ww_DATA_I <= DATA_I;
DATA_O <= ww_DATA_O;
ww_CLK <= CLK;
ww_CLK1 <= CLK1;
SEGM_A <= ww_SEGM_A;
SEGM_B <= ww_SEGM_B;
SEGM_ALU <= ww_SEGM_ALU;
SEGM_CAR <= ww_SEGM_CAR;
CPU_DATA_OUT <= ww_CPU_DATA_OUT;
ALU_OUT <= ww_ALU_OUT;
COUNT <= ww_COUNT;
ZERO <= ww_ZERO;
SIGN <= ww_SIGN;
CARRY <= ww_CARRY;
CARRY_OUT_SHIFTER <= ww_CARRY_OUT_SHIFTER;
OVERFLOW <= ww_OVERFLOW;
A_BUS_VALUE <= ww_A_BUS_VALUE;
B_BUS_VALUE <= ww_B_BUS_VALUE;
ASEL_R_VALUE <= ww_ASEL_R_VALUE;
BSEL_R_VALUE <= ww_BSEL_R_VALUE;
DSEL_R_VALUE <= ww_DSEL_R_VALUE;
SEG_ASEL_VALUE <= ww_SEG_ASEL_VALUE;
SEG_BSEL_VALUE <= ww_SEG_BSEL_VALUE;
SEG_DSEL_VALUE <= ww_SEG_DSEL_VALUE;
ASEL <= ww_ASEL;
BSEL <= ww_BSEL;
DSEL <= ww_DSEL;
SSEL <= ww_SSEL;
HSEL <= ww_HSEL;
MUX1 <= ww_MUX1;
MUX2 <= ww_MUX2;
ADRS <= ww_ADRS;
MISC <= ww_MISC;
CAR <= ww_CAR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_DATA_I[7]~input_o\ <= NOT \DATA_I[7]~input_o\;
\ALT_INV_DATA_I[6]~input_o\ <= NOT \DATA_I[6]~input_o\;
\ALT_INV_DATA_I[5]~input_o\ <= NOT \DATA_I[5]~input_o\;
\ALT_INV_DATA_I[4]~input_o\ <= NOT \DATA_I[4]~input_o\;
\ALT_INV_DATA_I[3]~input_o\ <= NOT \DATA_I[3]~input_o\;
\ALT_INV_DATA_I[2]~input_o\ <= NOT \DATA_I[2]~input_o\;
\ALT_INV_DATA_I[0]~input_o\ <= NOT \DATA_I[0]~input_o\;
\ALT_INV_DATA_I[1]~input_o\ <= NOT \DATA_I[1]~input_o\;
\ALU_FILE|ALT_INV_F_int\(8) <= NOT \ALU_FILE|F_int\(8);
\ALU_FILE|ALT_INV_s~combout\ <= NOT \ALU_FILE|s~combout\;
\ALU_FILE|ALT_INV_z~combout\ <= NOT \ALU_FILE|z~combout\;
\SHIFTER_FILE|ALT_INV_temp\(7) <= NOT \SHIFTER_FILE|temp\(7);
\ALU_FILE|ALT_INV_F_int\(7) <= NOT \ALU_FILE|F_int\(7);
\ALU_FILE|ALT_INV_F_log\(7) <= NOT \ALU_FILE|F_log\(7);
\SHIFTER_FILE|ALT_INV_temp\(6) <= NOT \SHIFTER_FILE|temp\(6);
\ALU_FILE|ALT_INV_F_int\(6) <= NOT \ALU_FILE|F_int\(6);
\ALU_FILE|ALT_INV_F_log\(6) <= NOT \ALU_FILE|F_log\(6);
\SHIFTER_FILE|ALT_INV_temp\(5) <= NOT \SHIFTER_FILE|temp\(5);
\ALU_FILE|ALT_INV_F_int\(5) <= NOT \ALU_FILE|F_int\(5);
\ALU_FILE|ALT_INV_F_log\(5) <= NOT \ALU_FILE|F_log\(5);
\SHIFTER_FILE|ALT_INV_temp\(4) <= NOT \SHIFTER_FILE|temp\(4);
\ALU_FILE|ALT_INV_F_int\(4) <= NOT \ALU_FILE|F_int\(4);
\ALU_FILE|ALT_INV_F_log\(4) <= NOT \ALU_FILE|F_log\(4);
\SHIFTER_FILE|ALT_INV_temp\(3) <= NOT \SHIFTER_FILE|temp\(3);
\ALU_FILE|ALT_INV_F_int\(3) <= NOT \ALU_FILE|F_int\(3);
\ALU_FILE|ALT_INV_F_log\(3) <= NOT \ALU_FILE|F_log\(3);
\SHIFTER_FILE|ALT_INV_temp\(2) <= NOT \SHIFTER_FILE|temp\(2);
\ALU_FILE|ALT_INV_F_int\(2) <= NOT \ALU_FILE|F_int\(2);
\ALU_FILE|ALT_INV_F_log\(2) <= NOT \ALU_FILE|F_log\(2);
\SHIFTER_FILE|ALT_INV_temp\(1) <= NOT \SHIFTER_FILE|temp\(1);
\ALU_FILE|ALT_INV_c~combout\ <= NOT \ALU_FILE|c~combout\;
\ALU_FILE|ALT_INV_F_int\(0) <= NOT \ALU_FILE|F_int\(0);
\ALU_FILE|ALT_INV_F_log\(0) <= NOT \ALU_FILE|F_log\(0);
\ALU_FILE|ALT_INV_F_int\(1) <= NOT \ALU_FILE|F_int\(1);
\ALU_FILE|ALT_INV_F_log\(1) <= NOT \ALU_FILE|F_log\(1);
\SHIFTER_FILE|ALT_INV_temp\(0) <= NOT \SHIFTER_FILE|temp\(0);
\SHIFTER_FILE|ALT_INV_Mux7~4_combout\ <= NOT \SHIFTER_FILE|Mux7~4_combout\;
\SHIFTER_FILE|ALT_INV_Mux7~3_combout\ <= NOT \SHIFTER_FILE|Mux7~3_combout\;
\SHIFTER_FILE|ALT_INV_Mux7~2_combout\ <= NOT \SHIFTER_FILE|Mux7~2_combout\;
\ALU_FILE|ALT_INV_Mux19~4_combout\ <= NOT \ALU_FILE|Mux19~4_combout\;
\ALU_FILE|ALT_INV_Mux19~3_combout\ <= NOT \ALU_FILE|Mux19~3_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux1~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux1~1_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux2~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux2~1_combout\;
\SHIFTER_FILE|ALT_INV_Mux0~3_combout\ <= NOT \SHIFTER_FILE|Mux0~3_combout\;
\SHIFTER_FILE|ALT_INV_Mux0~2_combout\ <= NOT \SHIFTER_FILE|Mux0~2_combout\;
\SHIFTER_FILE|ALT_INV_Mux0~1_combout\ <= NOT \SHIFTER_FILE|Mux0~1_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux15~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux15~0_combout\;
\REGISTER_FILE|ALT_INV_Mux16~0_combout\ <= NOT \REGISTER_FILE|Mux16~0_combout\;
\ALU_FILE|ALT_INV_Mux31~0_combout\ <= NOT \ALU_FILE|Mux31~0_combout\;
\ALU_FILE|ALT_INV_Mux20~0_combout\ <= NOT \ALU_FILE|Mux20~0_combout\;
\ALU_FILE|ALT_INV_Mux19~2_combout\ <= NOT \ALU_FILE|Mux19~2_combout\;
\ALU_FILE|ALT_INV_Mux19~1_combout\ <= NOT \ALU_FILE|Mux19~1_combout\;
\ALU_FILE|ALT_INV_Mux19~0_combout\ <= NOT \ALU_FILE|Mux19~0_combout\;
\SEGEMENT_D_FILE_1|ALT_INV_Mux4~0_combout\ <= NOT \SEGEMENT_D_FILE_1|Mux4~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux6~1_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux6~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux6~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux8~1_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux8~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux8~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux7~1_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux7~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux7~0_combout\;
\SEGMENT_B_FILE|ALT_INV_Mux0~0_combout\ <= NOT \SEGMENT_B_FILE|Mux0~0_combout\;
\SEGMENT_B_FILE|ALT_INV_Mux1~0_combout\ <= NOT \SEGMENT_B_FILE|Mux1~0_combout\;
\SEGMENT_B_FILE|ALT_INV_Mux2~0_combout\ <= NOT \SEGMENT_B_FILE|Mux2~0_combout\;
\SEGMENT_B_FILE|ALT_INV_Mux3~0_combout\ <= NOT \SEGMENT_B_FILE|Mux3~0_combout\;
\SEGMENT_B_FILE|ALT_INV_Mux4~0_combout\ <= NOT \SEGMENT_B_FILE|Mux4~0_combout\;
\SEGMENT_B_FILE|ALT_INV_Mux5~0_combout\ <= NOT \SEGMENT_B_FILE|Mux5~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux3~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux3~1_combout\;
\SEGMENT_B_FILE|ALT_INV_Mux6~0_combout\ <= NOT \SEGMENT_B_FILE|Mux6~0_combout\;
\ALT_INV_COUNT~reg0_q\ <= NOT \COUNT~reg0_q\;
\SHIFTER_FILE|ALT_INV_Mux17~0_combout\ <= NOT \SHIFTER_FILE|Mux17~0_combout\;
\ALU_FILE|ALT_INV_Mux30~0_combout\ <= NOT \ALU_FILE|Mux30~0_combout\;
\ALU_FILE|ALT_INV_Mux16~0_combout\ <= NOT \ALU_FILE|Mux16~0_combout\;
\REGISTER_FILE|ALT_INV_Mux56~2_combout\ <= NOT \REGISTER_FILE|Mux56~2_combout\;
\REGISTER_FILE|ALT_INV_Mux56~1_combout\ <= NOT \REGISTER_FILE|Mux56~1_combout\;
\REGISTER_FILE|ALT_INV_Mux56~0_combout\ <= NOT \REGISTER_FILE|Mux56~0_combout\;
\REGISTER_FILE|ALT_INV_Mux64~1_combout\ <= NOT \REGISTER_FILE|Mux64~1_combout\;
\REGISTER_FILE|ALT_INV_R3\(7) <= NOT \REGISTER_FILE|R3\(7);
\REGISTER_FILE|ALT_INV_R2\(7) <= NOT \REGISTER_FILE|R2\(7);
\REGISTER_FILE|ALT_INV_R1\(7) <= NOT \REGISTER_FILE|R1\(7);
\REGISTER_FILE|ALT_INV_Mux64~0_combout\ <= NOT \REGISTER_FILE|Mux64~0_combout\;
\REGISTER_FILE|ALT_INV_R7\(7) <= NOT \REGISTER_FILE|R7\(7);
\REGISTER_FILE|ALT_INV_R6\(7) <= NOT \REGISTER_FILE|R6\(7);
\REGISTER_FILE|ALT_INV_R5\(7) <= NOT \REGISTER_FILE|R5\(7);
\REGISTER_FILE|ALT_INV_R4\(7) <= NOT \REGISTER_FILE|R4\(7);
\SHIFTER_FILE|ALT_INV_Mux16~0_combout\ <= NOT \SHIFTER_FILE|Mux16~0_combout\;
\ALU_FILE|ALT_INV_Mux29~0_combout\ <= NOT \ALU_FILE|Mux29~0_combout\;
\ALU_FILE|ALT_INV_Mux15~0_combout\ <= NOT \ALU_FILE|Mux15~0_combout\;
\REGISTER_FILE|ALT_INV_Mux57~2_combout\ <= NOT \REGISTER_FILE|Mux57~2_combout\;
\REGISTER_FILE|ALT_INV_Mux57~1_combout\ <= NOT \REGISTER_FILE|Mux57~1_combout\;
\REGISTER_FILE|ALT_INV_Mux57~0_combout\ <= NOT \REGISTER_FILE|Mux57~0_combout\;
\REGISTER_FILE|ALT_INV_Mux65~1_combout\ <= NOT \REGISTER_FILE|Mux65~1_combout\;
\REGISTER_FILE|ALT_INV_R3\(6) <= NOT \REGISTER_FILE|R3\(6);
\REGISTER_FILE|ALT_INV_R2\(6) <= NOT \REGISTER_FILE|R2\(6);
\REGISTER_FILE|ALT_INV_R1\(6) <= NOT \REGISTER_FILE|R1\(6);
\REGISTER_FILE|ALT_INV_Mux65~0_combout\ <= NOT \REGISTER_FILE|Mux65~0_combout\;
\REGISTER_FILE|ALT_INV_R7\(6) <= NOT \REGISTER_FILE|R7\(6);
\REGISTER_FILE|ALT_INV_R6\(6) <= NOT \REGISTER_FILE|R6\(6);
\REGISTER_FILE|ALT_INV_R5\(6) <= NOT \REGISTER_FILE|R5\(6);
\REGISTER_FILE|ALT_INV_R4\(6) <= NOT \REGISTER_FILE|R4\(6);
\SHIFTER_FILE|ALT_INV_Mux15~0_combout\ <= NOT \SHIFTER_FILE|Mux15~0_combout\;
\ALU_FILE|ALT_INV_Mux28~0_combout\ <= NOT \ALU_FILE|Mux28~0_combout\;
\ALU_FILE|ALT_INV_Mux14~0_combout\ <= NOT \ALU_FILE|Mux14~0_combout\;
\REGISTER_FILE|ALT_INV_Mux58~2_combout\ <= NOT \REGISTER_FILE|Mux58~2_combout\;
\REGISTER_FILE|ALT_INV_Mux58~1_combout\ <= NOT \REGISTER_FILE|Mux58~1_combout\;
\REGISTER_FILE|ALT_INV_Mux58~0_combout\ <= NOT \REGISTER_FILE|Mux58~0_combout\;
\REGISTER_FILE|ALT_INV_Mux66~1_combout\ <= NOT \REGISTER_FILE|Mux66~1_combout\;
\REGISTER_FILE|ALT_INV_R3\(5) <= NOT \REGISTER_FILE|R3\(5);
\REGISTER_FILE|ALT_INV_R2\(5) <= NOT \REGISTER_FILE|R2\(5);
\REGISTER_FILE|ALT_INV_R1\(5) <= NOT \REGISTER_FILE|R1\(5);
\REGISTER_FILE|ALT_INV_Mux66~0_combout\ <= NOT \REGISTER_FILE|Mux66~0_combout\;
\REGISTER_FILE|ALT_INV_R7\(5) <= NOT \REGISTER_FILE|R7\(5);
\REGISTER_FILE|ALT_INV_R6\(5) <= NOT \REGISTER_FILE|R6\(5);
\REGISTER_FILE|ALT_INV_R5\(5) <= NOT \REGISTER_FILE|R5\(5);
\REGISTER_FILE|ALT_INV_R4\(5) <= NOT \REGISTER_FILE|R4\(5);
\SHIFTER_FILE|ALT_INV_Mux14~0_combout\ <= NOT \SHIFTER_FILE|Mux14~0_combout\;
\ALU_FILE|ALT_INV_Mux3~1_combout\ <= NOT \ALU_FILE|Mux3~1_combout\;
\ALU_FILE|ALT_INV_Mux27~0_combout\ <= NOT \ALU_FILE|Mux27~0_combout\;
\ALU_FILE|ALT_INV_Mux13~0_combout\ <= NOT \ALU_FILE|Mux13~0_combout\;
\REGISTER_FILE|ALT_INV_Mux59~2_combout\ <= NOT \REGISTER_FILE|Mux59~2_combout\;
\REGISTER_FILE|ALT_INV_Mux59~1_combout\ <= NOT \REGISTER_FILE|Mux59~1_combout\;
\REGISTER_FILE|ALT_INV_Mux59~0_combout\ <= NOT \REGISTER_FILE|Mux59~0_combout\;
\REGISTER_FILE|ALT_INV_Mux67~3_combout\ <= NOT \REGISTER_FILE|Mux67~3_combout\;
\REGISTER_FILE|ALT_INV_R3\(4) <= NOT \REGISTER_FILE|R3\(4);
\REGISTER_FILE|ALT_INV_R2\(4) <= NOT \REGISTER_FILE|R2\(4);
\REGISTER_FILE|ALT_INV_R1\(4) <= NOT \REGISTER_FILE|R1\(4);
\REGISTER_FILE|ALT_INV_Mux67~2_combout\ <= NOT \REGISTER_FILE|Mux67~2_combout\;
\REGISTER_FILE|ALT_INV_R7\(4) <= NOT \REGISTER_FILE|R7\(4);
\REGISTER_FILE|ALT_INV_R6\(4) <= NOT \REGISTER_FILE|R6\(4);
\REGISTER_FILE|ALT_INV_R5\(4) <= NOT \REGISTER_FILE|R5\(4);
\REGISTER_FILE|ALT_INV_R4\(4) <= NOT \REGISTER_FILE|R4\(4);
\SHIFTER_FILE|ALT_INV_Mux13~0_combout\ <= NOT \SHIFTER_FILE|Mux13~0_combout\;
\ALU_FILE|ALT_INV_Mux4~1_combout\ <= NOT \ALU_FILE|Mux4~1_combout\;
\ALU_FILE|ALT_INV_Mux26~0_combout\ <= NOT \ALU_FILE|Mux26~0_combout\;
\ALU_FILE|ALT_INV_Mux12~0_combout\ <= NOT \ALU_FILE|Mux12~0_combout\;
\REGISTER_FILE|ALT_INV_Mux60~2_combout\ <= NOT \REGISTER_FILE|Mux60~2_combout\;
\REGISTER_FILE|ALT_INV_Mux60~1_combout\ <= NOT \REGISTER_FILE|Mux60~1_combout\;
\REGISTER_FILE|ALT_INV_Mux60~0_combout\ <= NOT \REGISTER_FILE|Mux60~0_combout\;
\REGISTER_FILE|ALT_INV_Mux68~1_combout\ <= NOT \REGISTER_FILE|Mux68~1_combout\;
\REGISTER_FILE|ALT_INV_R3\(3) <= NOT \REGISTER_FILE|R3\(3);
\REGISTER_FILE|ALT_INV_R2\(3) <= NOT \REGISTER_FILE|R2\(3);
\REGISTER_FILE|ALT_INV_R1\(3) <= NOT \REGISTER_FILE|R1\(3);
\REGISTER_FILE|ALT_INV_Mux68~0_combout\ <= NOT \REGISTER_FILE|Mux68~0_combout\;
\REGISTER_FILE|ALT_INV_R7\(3) <= NOT \REGISTER_FILE|R7\(3);
\REGISTER_FILE|ALT_INV_R6\(3) <= NOT \REGISTER_FILE|R6\(3);
\REGISTER_FILE|ALT_INV_R5\(3) <= NOT \REGISTER_FILE|R5\(3);
\REGISTER_FILE|ALT_INV_R4\(3) <= NOT \REGISTER_FILE|R4\(3);
\SHIFTER_FILE|ALT_INV_Mux12~0_combout\ <= NOT \SHIFTER_FILE|Mux12~0_combout\;
\ALU_FILE|ALT_INV_Mux5~1_combout\ <= NOT \ALU_FILE|Mux5~1_combout\;
\ALU_FILE|ALT_INV_Mux25~0_combout\ <= NOT \ALU_FILE|Mux25~0_combout\;
\ALU_FILE|ALT_INV_Mux11~0_combout\ <= NOT \ALU_FILE|Mux11~0_combout\;
\REGISTER_FILE|ALT_INV_Mux61~2_combout\ <= NOT \REGISTER_FILE|Mux61~2_combout\;
\REGISTER_FILE|ALT_INV_Mux61~1_combout\ <= NOT \REGISTER_FILE|Mux61~1_combout\;
\REGISTER_FILE|ALT_INV_Mux61~0_combout\ <= NOT \REGISTER_FILE|Mux61~0_combout\;
\REGISTER_FILE|ALT_INV_Mux69~1_combout\ <= NOT \REGISTER_FILE|Mux69~1_combout\;
\REGISTER_FILE|ALT_INV_R3\(2) <= NOT \REGISTER_FILE|R3\(2);
\REGISTER_FILE|ALT_INV_R2\(2) <= NOT \REGISTER_FILE|R2\(2);
\REGISTER_FILE|ALT_INV_R1\(2) <= NOT \REGISTER_FILE|R1\(2);
\REGISTER_FILE|ALT_INV_Mux69~0_combout\ <= NOT \REGISTER_FILE|Mux69~0_combout\;
\REGISTER_FILE|ALT_INV_R7\(2) <= NOT \REGISTER_FILE|R7\(2);
\REGISTER_FILE|ALT_INV_R6\(2) <= NOT \REGISTER_FILE|R6\(2);
\REGISTER_FILE|ALT_INV_R5\(2) <= NOT \REGISTER_FILE|R5\(2);
\REGISTER_FILE|ALT_INV_R4\(2) <= NOT \REGISTER_FILE|R4\(2);
\SHIFTER_FILE|ALT_INV_Mux11~0_combout\ <= NOT \SHIFTER_FILE|Mux11~0_combout\;
\ALU_FILE|ALT_INV_Mux6~1_combout\ <= NOT \ALU_FILE|Mux6~1_combout\;
\ALU_FILE|ALT_INV_Mux8~0_combout\ <= NOT \ALU_FILE|Mux8~0_combout\;
\ALU_FILE|ALT_INV_Mux18~0_combout\ <= NOT \ALU_FILE|Mux18~0_combout\;
\ALU_FILE|ALT_INV_Mux17~0_combout\ <= NOT \ALU_FILE|Mux17~0_combout\;
\ALU_FILE|ALT_INV_Mux22~0_combout\ <= NOT \ALU_FILE|Mux22~0_combout\;
\ALU_FILE|ALT_INV_Mux0~0_combout\ <= NOT \ALU_FILE|Mux0~0_combout\;
\REGISTER_FILE|ALT_INV_Mux63~2_combout\ <= NOT \REGISTER_FILE|Mux63~2_combout\;
\REGISTER_FILE|ALT_INV_Mux63~1_combout\ <= NOT \REGISTER_FILE|Mux63~1_combout\;
\REGISTER_FILE|ALT_INV_Mux63~0_combout\ <= NOT \REGISTER_FILE|Mux63~0_combout\;
\REGISTER_FILE|ALT_INV_Mux71~1_combout\ <= NOT \REGISTER_FILE|Mux71~1_combout\;
\REGISTER_FILE|ALT_INV_R3\(0) <= NOT \REGISTER_FILE|R3\(0);
\REGISTER_FILE|ALT_INV_R2\(0) <= NOT \REGISTER_FILE|R2\(0);
\REGISTER_FILE|ALT_INV_R1\(0) <= NOT \REGISTER_FILE|R1\(0);
\REGISTER_FILE|ALT_INV_Mux71~0_combout\ <= NOT \REGISTER_FILE|Mux71~0_combout\;
\REGISTER_FILE|ALT_INV_R7\(0) <= NOT \REGISTER_FILE|R7\(0);
\REGISTER_FILE|ALT_INV_R6\(0) <= NOT \REGISTER_FILE|R6\(0);
\REGISTER_FILE|ALT_INV_R5\(0) <= NOT \REGISTER_FILE|R5\(0);
\REGISTER_FILE|ALT_INV_R4\(0) <= NOT \REGISTER_FILE|R4\(0);
\ALU_FILE|ALT_INV_Mux23~0_combout\ <= NOT \ALU_FILE|Mux23~0_combout\;
\ALU_FILE|ALT_INV_Mux24~0_combout\ <= NOT \ALU_FILE|Mux24~0_combout\;
\ALU_FILE|ALT_INV_Mux10~0_combout\ <= NOT \ALU_FILE|Mux10~0_combout\;
\REGISTER_FILE|ALT_INV_Mux62~2_combout\ <= NOT \REGISTER_FILE|Mux62~2_combout\;
\REGISTER_FILE|ALT_INV_Mux62~1_combout\ <= NOT \REGISTER_FILE|Mux62~1_combout\;
\REGISTER_FILE|ALT_INV_Mux62~0_combout\ <= NOT \REGISTER_FILE|Mux62~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux1~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux2~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux0~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux11~1_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux10~1_combout\;
\REGISTER_FILE|ALT_INV_Mux70~1_combout\ <= NOT \REGISTER_FILE|Mux70~1_combout\;
\REGISTER_FILE|ALT_INV_Mux67~1_combout\ <= NOT \REGISTER_FILE|Mux67~1_combout\;
\REGISTER_FILE|ALT_INV_Mux67~0_combout\ <= NOT \REGISTER_FILE|Mux67~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux3~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux3~0_combout\;
\REGISTER_FILE|ALT_INV_R3\(1) <= NOT \REGISTER_FILE|R3\(1);
\REGISTER_FILE|ALT_INV_R2\(1) <= NOT \REGISTER_FILE|R2\(1);
\REGISTER_FILE|ALT_INV_R1\(1) <= NOT \REGISTER_FILE|R1\(1);
\REGISTER_FILE|ALT_INV_Mux70~0_combout\ <= NOT \REGISTER_FILE|Mux70~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux4~1_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux4~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux4~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux5~1_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux5~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux5~0_combout\;
\REGISTER_FILE|ALT_INV_R7\(1) <= NOT \REGISTER_FILE|R7\(1);
\REGISTER_FILE|ALT_INV_R6\(1) <= NOT \REGISTER_FILE|R6\(1);
\REGISTER_FILE|ALT_INV_R5\(1) <= NOT \REGISTER_FILE|R5\(1);
\REGISTER_FILE|ALT_INV_R4\(1) <= NOT \REGISTER_FILE|R4\(1);
\SHIFTER_FILE|ALT_INV_Mux2~3_combout\ <= NOT \SHIFTER_FILE|Mux2~3_combout\;
\SHIFTER_FILE|ALT_INV_Mux9~0_combout\ <= NOT \SHIFTER_FILE|Mux9~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux17~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux17~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux16~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux16~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux18~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux18~0_combout\;
\SEGMENT_CAR_FILE|ALT_INV_Mux0~0_combout\ <= NOT \SEGMENT_CAR_FILE|Mux0~0_combout\;
\SHIFTER_FILE|ALT_INV_Mux0~0_combout\ <= NOT \SHIFTER_FILE|Mux0~0_combout\;
\ALU_FILE|ALT_INV_Mux9~0_combout\ <= NOT \ALU_FILE|Mux9~0_combout\;
\SHIFTER_FILE|ALT_INV_Mux7~1_combout\ <= NOT \SHIFTER_FILE|Mux7~1_combout\;
\ALU_FILE|ALT_INV_Mux1~1_combout\ <= NOT \ALU_FILE|Mux1~1_combout\;
\ALU_FILE|ALT_INV_Mux1~0_combout\ <= NOT \ALU_FILE|Mux1~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\ <= NOT \MICROCODE_ROM_FILE|Mux12~2_combout\;
\SHIFTER_FILE|ALT_INV_Mux1~1_combout\ <= NOT \SHIFTER_FILE|Mux1~1_combout\;
\ALU_FILE|ALT_INV_Mux2~2_combout\ <= NOT \ALU_FILE|Mux2~2_combout\;
\ALU_FILE|ALT_INV_Mux2~1_combout\ <= NOT \ALU_FILE|Mux2~1_combout\;
\SHIFTER_FILE|ALT_INV_Mux2~1_combout\ <= NOT \SHIFTER_FILE|Mux2~1_combout\;
\ALU_FILE|ALT_INV_Mux3~0_combout\ <= NOT \ALU_FILE|Mux3~0_combout\;
\SHIFTER_FILE|ALT_INV_Mux3~0_combout\ <= NOT \SHIFTER_FILE|Mux3~0_combout\;
\ALU_FILE|ALT_INV_Mux4~0_combout\ <= NOT \ALU_FILE|Mux4~0_combout\;
\SHIFTER_FILE|ALT_INV_Mux4~0_combout\ <= NOT \SHIFTER_FILE|Mux4~0_combout\;
\ALU_FILE|ALT_INV_Mux5~0_combout\ <= NOT \ALU_FILE|Mux5~0_combout\;
\SHIFTER_FILE|ALT_INV_Mux5~0_combout\ <= NOT \SHIFTER_FILE|Mux5~0_combout\;
\SHIFTER_FILE|ALT_INV_Mux1~0_combout\ <= NOT \SHIFTER_FILE|Mux1~0_combout\;
\ALU_FILE|ALT_INV_Mux6~0_combout\ <= NOT \ALU_FILE|Mux6~0_combout\;
\SHIFTER_FILE|ALT_INV_Mux2~0_combout\ <= NOT \SHIFTER_FILE|Mux2~0_combout\;
\SHIFTER_FILE|ALT_INV_Mux6~0_combout\ <= NOT \SHIFTER_FILE|Mux6~0_combout\;
\ALU_FILE|ALT_INV_Mux7~1_combout\ <= NOT \ALU_FILE|Mux7~1_combout\;
\SHIFTER_FILE|ALT_INV_Mux7~0_combout\ <= NOT \SHIFTER_FILE|Mux7~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux13~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux13~1_combout\;
\ALU_FILE|ALT_INV_Mux7~0_combout\ <= NOT \ALU_FILE|Mux7~0_combout\;
\ALU_FILE|ALT_INV_Mux2~0_combout\ <= NOT \ALU_FILE|Mux2~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux10~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux10~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux11~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux11~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux12~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux12~1_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\ <= NOT \MICROCODE_ROM_FILE|Mux9~1_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux9~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux13~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux12~0_combout\;
\MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\ <= NOT \MICROCODE_ROM_FILE|Mux14~0_combout\;
\ALU_FILE|ALT_INV_Add0~37_sumout\ <= NOT \ALU_FILE|Add0~37_sumout\;
\ALU_FILE|ALT_INV_Add0~29_sumout\ <= NOT \ALU_FILE|Add0~29_sumout\;
\ALU_FILE|ALT_INV_Add0~25_sumout\ <= NOT \ALU_FILE|Add0~25_sumout\;
\ALU_FILE|ALT_INV_Add0~21_sumout\ <= NOT \ALU_FILE|Add0~21_sumout\;
\ALU_FILE|ALT_INV_Add0~17_sumout\ <= NOT \ALU_FILE|Add0~17_sumout\;
\ALU_FILE|ALT_INV_Add0~13_sumout\ <= NOT \ALU_FILE|Add0~13_sumout\;
\ALU_FILE|ALT_INV_Add0~9_sumout\ <= NOT \ALU_FILE|Add0~9_sumout\;
\ALU_FILE|ALT_INV_Add0~5_sumout\ <= NOT \ALU_FILE|Add0~5_sumout\;
\ALU_FILE|ALT_INV_Add0~1_sumout\ <= NOT \ALU_FILE|Add0~1_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_CAR[2]~reg0_q\ <= NOT \CAR[2]~reg0_q\;
\ALT_INV_CAR[6]~reg0_q\ <= NOT \CAR[6]~reg0_q\;
\ALT_INV_CAR[5]~reg0_q\ <= NOT \CAR[5]~reg0_q\;
\ALT_INV_CAR[4]~reg0_q\ <= NOT \CAR[4]~reg0_q\;
\ALT_INV_CAR[7]~reg0_q\ <= NOT \CAR[7]~reg0_q\;
\ALT_INV_CAR[3]~reg0_q\ <= NOT \CAR[3]~reg0_q\;
\ALT_INV_CAR[0]~reg0_q\ <= NOT \CAR[0]~reg0_q\;
\ALT_INV_CAR[1]~reg0_q\ <= NOT \CAR[1]~reg0_q\;

-- Location: IOOBUF_X52_Y0_N2
\DATA_O[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFTER_FILE|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_DATA_O(0));

-- Location: IOOBUF_X52_Y0_N19
\DATA_O[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFTER_FILE|Mux6~1_combout\,
	devoe => ww_devoe,
	o => ww_DATA_O(1));

-- Location: IOOBUF_X60_Y0_N2
\DATA_O[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFTER_FILE|Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_DATA_O(2));

-- Location: IOOBUF_X80_Y0_N2
\DATA_O[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFTER_FILE|Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_DATA_O(3));

-- Location: IOOBUF_X60_Y0_N19
\DATA_O[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFTER_FILE|Mux3~1_combout\,
	devoe => ww_devoe,
	o => ww_DATA_O(4));

-- Location: IOOBUF_X80_Y0_N19
\DATA_O[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFTER_FILE|Mux2~2_combout\,
	devoe => ww_devoe,
	o => ww_DATA_O(5));

-- Location: IOOBUF_X84_Y0_N2
\DATA_O[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFTER_FILE|Mux1~2_combout\,
	devoe => ww_devoe,
	o => ww_DATA_O(6));

-- Location: IOOBUF_X89_Y6_N5
\DATA_O[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFTER_FILE|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_DATA_O(7));

-- Location: IOOBUF_X89_Y8_N39
\SEGM_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_A[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_A(0));

-- Location: IOOBUF_X89_Y11_N79
\SEGM_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_A[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_A(1));

-- Location: IOOBUF_X89_Y11_N96
\SEGM_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_A[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_A(2));

-- Location: IOOBUF_X89_Y4_N79
\SEGM_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_A[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_A(3));

-- Location: IOOBUF_X89_Y13_N56
\SEGM_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_A[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_A(4));

-- Location: IOOBUF_X89_Y13_N39
\SEGM_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_A[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_A(5));

-- Location: IOOBUF_X89_Y4_N96
\SEGM_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_A[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_A(6));

-- Location: IOOBUF_X89_Y6_N39
\SEGM_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_B[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_B(0));

-- Location: IOOBUF_X89_Y6_N56
\SEGM_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_B[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_B(1));

-- Location: IOOBUF_X89_Y16_N39
\SEGM_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_B[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_B(2));

-- Location: IOOBUF_X89_Y16_N56
\SEGM_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_B[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_B(3));

-- Location: IOOBUF_X89_Y15_N39
\SEGM_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_B[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_B(4));

-- Location: IOOBUF_X89_Y15_N56
\SEGM_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_B[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_B(5));

-- Location: IOOBUF_X89_Y8_N56
\SEGM_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_B[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_B(6));

-- Location: IOOBUF_X89_Y9_N22
\SEGM_ALU[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_ALU[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_ALU(0));

-- Location: IOOBUF_X89_Y23_N39
\SEGM_ALU[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_ALU[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_ALU(1));

-- Location: IOOBUF_X89_Y23_N56
\SEGM_ALU[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_ALU[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_ALU(2));

-- Location: IOOBUF_X89_Y20_N79
\SEGM_ALU[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_ALU[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_ALU(3));

-- Location: IOOBUF_X89_Y25_N39
\SEGM_ALU[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_ALU[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_ALU(4));

-- Location: IOOBUF_X89_Y20_N96
\SEGM_ALU[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_ALU[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_ALU(5));

-- Location: IOOBUF_X89_Y25_N56
\SEGM_ALU[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGM_ALU[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_SEGM_ALU(6));

-- Location: IOOBUF_X89_Y20_N62
\SEGM_CAR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_CAR_FILE|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_SEGM_CAR(0));

-- Location: IOOBUF_X89_Y21_N56
\SEGM_CAR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_CAR_FILE|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_SEGM_CAR(1));

-- Location: IOOBUF_X89_Y25_N22
\SEGM_CAR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_CAR_FILE|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_SEGM_CAR(2));

-- Location: IOOBUF_X89_Y23_N22
\SEGM_CAR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_CAR_FILE|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_SEGM_CAR(3));

-- Location: IOOBUF_X89_Y9_N56
\SEGM_CAR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_CAR_FILE|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_SEGM_CAR(4));

-- Location: IOOBUF_X89_Y23_N5
\SEGM_CAR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_CAR_FILE|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_SEGM_CAR(5));

-- Location: IOOBUF_X89_Y9_N39
\SEGM_CAR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_CAR_FILE|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SEGM_CAR(6));

-- Location: IOOBUF_X22_Y81_N36
\CPU_DATA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(0));

-- Location: IOOBUF_X4_Y81_N2
\CPU_DATA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(1));

-- Location: IOOBUF_X2_Y81_N59
\CPU_DATA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(2));

-- Location: IOOBUF_X32_Y81_N19
\CPU_DATA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(3));

-- Location: IOOBUF_X12_Y0_N2
\CPU_DATA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux22~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(4));

-- Location: IOOBUF_X28_Y0_N19
\CPU_DATA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux21~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(5));

-- Location: IOOBUF_X14_Y0_N2
\CPU_DATA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux20~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(6));

-- Location: IOOBUF_X82_Y0_N93
\CPU_DATA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux19~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(7));

-- Location: IOOBUF_X8_Y0_N2
\CPU_DATA_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(8));

-- Location: IOOBUF_X14_Y81_N36
\CPU_DATA_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(9));

-- Location: IOOBUF_X22_Y0_N36
\CPU_DATA_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(10));

-- Location: IOOBUF_X6_Y0_N36
\CPU_DATA_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(11));

-- Location: IOOBUF_X16_Y0_N36
\CPU_DATA_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux18~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(12));

-- Location: IOOBUF_X10_Y0_N42
\CPU_DATA_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux17~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(13));

-- Location: IOOBUF_X12_Y0_N53
\CPU_DATA_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux16~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(14));

-- Location: IOOBUF_X86_Y0_N19
\CPU_DATA_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(15));

-- Location: IOOBUF_X4_Y0_N19
\CPU_DATA_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux15~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(16));

-- Location: IOOBUF_X58_Y0_N76
\CPU_DATA_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux14~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(17));

-- Location: IOOBUF_X32_Y0_N36
\CPU_DATA_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux13~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(18));

-- Location: IOOBUF_X58_Y0_N42
\CPU_DATA_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux12~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(19));

-- Location: IOOBUF_X28_Y0_N36
\CPU_DATA_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux11~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(20));

-- Location: IOOBUF_X62_Y0_N53
\CPU_DATA_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux10~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(21));

-- Location: IOOBUF_X28_Y0_N53
\CPU_DATA_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux9~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(22));

-- Location: IOOBUF_X68_Y0_N19
\CPU_DATA_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux8~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(23));

-- Location: IOOBUF_X30_Y0_N19
\CPU_DATA_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux7~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(24));

-- Location: IOOBUF_X32_Y0_N53
\CPU_DATA_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux6~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(25));

-- Location: IOOBUF_X34_Y0_N93
\CPU_DATA_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux5~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(26));

-- Location: IOOBUF_X38_Y0_N36
\CPU_DATA_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux4~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(27));

-- Location: IOOBUF_X18_Y0_N93
\CPU_DATA_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux3~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(28));

-- Location: IOOBUF_X50_Y0_N59
\CPU_DATA_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(29));

-- Location: IOOBUF_X84_Y0_N19
\CPU_DATA_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(30));

-- Location: IOOBUF_X10_Y0_N93
\CPU_DATA_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CPU_DATA_OUT(31));

-- Location: IOOBUF_X68_Y0_N53
\ALU_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|Mux8~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ALU_OUT(0));

-- Location: IOOBUF_X66_Y0_N59
\ALU_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|Mux7~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ALU_OUT(1));

-- Location: IOOBUF_X64_Y0_N36
\ALU_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|Mux6~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ALU_OUT(2));

-- Location: IOOBUF_X70_Y0_N2
\ALU_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|Mux5~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ALU_OUT(3));

-- Location: IOOBUF_X72_Y0_N19
\ALU_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|Mux4~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ALU_OUT(4));

-- Location: IOOBUF_X70_Y0_N36
\ALU_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|Mux3~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ALU_OUT(5));

-- Location: IOOBUF_X70_Y0_N19
\ALU_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|Mux2~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ALU_OUT(6));

-- Location: IOOBUF_X70_Y0_N53
\ALU_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|Mux1~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ALU_OUT(7));

-- Location: IOOBUF_X72_Y0_N53
\COUNT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_COUNT);

-- Location: IOOBUF_X34_Y0_N42
\ZERO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|z~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ZERO);

-- Location: IOOBUF_X36_Y0_N53
\SIGN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|s~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SIGN);

-- Location: IOOBUF_X24_Y0_N19
\CARRY~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|c~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CARRY);

-- Location: IOOBUF_X38_Y0_N19
\CARRY_OUT_SHIFTER~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFTER_FILE|Mux8~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CARRY_OUT_SHIFTER);

-- Location: IOOBUF_X24_Y0_N36
\OVERFLOW~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_FILE|c~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_OVERFLOW);

-- Location: IOOBUF_X74_Y0_N42
\A_BUS_VALUE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux63~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_A_BUS_VALUE(0));

-- Location: IOOBUF_X24_Y0_N2
\A_BUS_VALUE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux62~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_A_BUS_VALUE(1));

-- Location: IOOBUF_X72_Y0_N2
\A_BUS_VALUE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux61~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_A_BUS_VALUE(2));

-- Location: IOOBUF_X24_Y0_N53
\A_BUS_VALUE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux60~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_A_BUS_VALUE(3));

-- Location: IOOBUF_X82_Y0_N76
\A_BUS_VALUE[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux59~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_A_BUS_VALUE(4));

-- Location: IOOBUF_X74_Y0_N59
\A_BUS_VALUE[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux58~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_A_BUS_VALUE(5));

-- Location: IOOBUF_X64_Y0_N19
\A_BUS_VALUE[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux57~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_A_BUS_VALUE(6));

-- Location: IOOBUF_X30_Y0_N53
\A_BUS_VALUE[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux56~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_A_BUS_VALUE(7));

-- Location: IOOBUF_X22_Y0_N53
\B_BUS_VALUE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux71~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_B_BUS_VALUE(0));

-- Location: IOOBUF_X68_Y0_N36
\B_BUS_VALUE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux70~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_B_BUS_VALUE(1));

-- Location: IOOBUF_X22_Y0_N2
\B_BUS_VALUE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux69~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_B_BUS_VALUE(2));

-- Location: IOOBUF_X72_Y0_N36
\B_BUS_VALUE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux68~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_B_BUS_VALUE(3));

-- Location: IOOBUF_X34_Y0_N76
\B_BUS_VALUE[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux67~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_B_BUS_VALUE(4));

-- Location: IOOBUF_X78_Y0_N53
\B_BUS_VALUE[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux66~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_B_BUS_VALUE(5));

-- Location: IOOBUF_X54_Y0_N2
\B_BUS_VALUE[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux65~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_B_BUS_VALUE(6));

-- Location: IOOBUF_X82_Y0_N59
\B_BUS_VALUE[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGISTER_FILE|Mux64~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_B_BUS_VALUE(7));

-- Location: IOOBUF_X76_Y0_N2
\ASEL_R_VALUE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_A_FILE_1|Mux6~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ASEL_R_VALUE(0));

-- Location: IOOBUF_X38_Y0_N2
\ASEL_R_VALUE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_A_FILE_1|Mux5~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ASEL_R_VALUE(1));

-- Location: IOOBUF_X66_Y0_N76
\ASEL_R_VALUE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_A_FILE_1|Mux4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ASEL_R_VALUE(2));

-- Location: IOOBUF_X56_Y0_N2
\ASEL_R_VALUE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_A_FILE_1|Mux3~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ASEL_R_VALUE(3));

-- Location: IOOBUF_X66_Y0_N42
\ASEL_R_VALUE[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_A_FILE_1|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ASEL_R_VALUE(4));

-- Location: IOOBUF_X56_Y0_N36
\ASEL_R_VALUE[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_A_FILE_1|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ASEL_R_VALUE(5));

-- Location: IOOBUF_X76_Y0_N36
\ASEL_R_VALUE[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_A_FILE_1|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ASEL_R_VALUE(6));

-- Location: IOOBUF_X34_Y0_N59
\BSEL_R_VALUE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_B_FILE_1|Mux6~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_BSEL_R_VALUE(0));

-- Location: IOOBUF_X86_Y0_N53
\BSEL_R_VALUE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_B_FILE_1|Mux5~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_BSEL_R_VALUE(1));

-- Location: IOOBUF_X74_Y0_N93
\BSEL_R_VALUE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_B_FILE_1|Mux4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_BSEL_R_VALUE(2));

-- Location: IOOBUF_X78_Y0_N2
\BSEL_R_VALUE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_B_FILE_1|Mux3~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_BSEL_R_VALUE(3));

-- Location: IOOBUF_X80_Y0_N36
\BSEL_R_VALUE[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_B_FILE_1|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_BSEL_R_VALUE(4));

-- Location: IOOBUF_X80_Y0_N53
\BSEL_R_VALUE[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_B_FILE_1|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_BSEL_R_VALUE(5));

-- Location: IOOBUF_X56_Y0_N53
\BSEL_R_VALUE[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_B_FILE_1|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_BSEL_R_VALUE(6));

-- Location: IOOBUF_X36_Y0_N36
\DSEL_R_VALUE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_D_FILE_1|Mux6~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_DSEL_R_VALUE(0));

-- Location: IOOBUF_X64_Y0_N53
\DSEL_R_VALUE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_D_FILE_1|Mux5~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_DSEL_R_VALUE(1));

-- Location: IOOBUF_X58_Y0_N93
\DSEL_R_VALUE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_D_FILE_1|Mux4~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_DSEL_R_VALUE(2));

-- Location: IOOBUF_X78_Y0_N36
\DSEL_R_VALUE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_D_FILE_1|Mux3~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_DSEL_R_VALUE(3));

-- Location: IOOBUF_X26_Y0_N59
\DSEL_R_VALUE[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_D_FILE_1|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_DSEL_R_VALUE(4));

-- Location: IOOBUF_X52_Y0_N53
\DSEL_R_VALUE[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_D_FILE_1|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_DSEL_R_VALUE(5));

-- Location: IOOBUF_X56_Y0_N19
\DSEL_R_VALUE[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGEMENT_D_FILE_1|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_DSEL_R_VALUE(6));

-- Location: IOOBUF_X40_Y0_N36
\SEG_ASEL_VALUE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_A_FILE|Mux6~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_ASEL_VALUE(0));

-- Location: IOOBUF_X66_Y0_N93
\SEG_ASEL_VALUE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_A_FILE|Mux5~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_ASEL_VALUE(1));

-- Location: IOOBUF_X54_Y0_N19
\SEG_ASEL_VALUE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_A_FILE|Mux4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_ASEL_VALUE(2));

-- Location: IOOBUF_X89_Y4_N62
\SEG_ASEL_VALUE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_A_FILE|Mux3~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_ASEL_VALUE(3));

-- Location: IOOBUF_X52_Y0_N36
\SEG_ASEL_VALUE[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_A_FILE|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_ASEL_VALUE(4));

-- Location: IOOBUF_X40_Y0_N53
\SEG_ASEL_VALUE[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_A_FILE|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_ASEL_VALUE(5));

-- Location: IOOBUF_X60_Y0_N53
\SEG_ASEL_VALUE[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_A_FILE|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_ASEL_VALUE(6));

-- Location: IOOBUF_X20_Y0_N36
\SEG_BSEL_VALUE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_B_FILE|Mux6~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_BSEL_VALUE(0));

-- Location: IOOBUF_X50_Y0_N42
\SEG_BSEL_VALUE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_B_FILE|Mux5~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_BSEL_VALUE(1));

-- Location: IOOBUF_X76_Y0_N19
\SEG_BSEL_VALUE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_B_FILE|Mux4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_BSEL_VALUE(2));

-- Location: IOOBUF_X86_Y0_N2
\SEG_BSEL_VALUE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_B_FILE|Mux3~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_BSEL_VALUE(3));

-- Location: IOOBUF_X74_Y0_N76
\SEG_BSEL_VALUE[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_B_FILE|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_BSEL_VALUE(4));

-- Location: IOOBUF_X76_Y0_N53
\SEG_BSEL_VALUE[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_B_FILE|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_BSEL_VALUE(5));

-- Location: IOOBUF_X84_Y0_N53
\SEG_BSEL_VALUE[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_B_FILE|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_BSEL_VALUE(6));

-- Location: IOOBUF_X50_Y0_N93
\SEG_DSEL_VALUE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_ALU_FILE|Mux6~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_DSEL_VALUE(0));

-- Location: IOOBUF_X26_Y0_N76
\SEG_DSEL_VALUE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_ALU_FILE|Mux5~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_DSEL_VALUE(1));

-- Location: IOOBUF_X54_Y0_N36
\SEG_DSEL_VALUE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_ALU_FILE|Mux4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_DSEL_VALUE(2));

-- Location: IOOBUF_X40_Y0_N19
\SEG_DSEL_VALUE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_ALU_FILE|Mux3~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_DSEL_VALUE(3));

-- Location: IOOBUF_X20_Y0_N2
\SEG_DSEL_VALUE[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_ALU_FILE|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_DSEL_VALUE(4));

-- Location: IOOBUF_X40_Y0_N2
\SEG_DSEL_VALUE[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_ALU_FILE|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_DSEL_VALUE(5));

-- Location: IOOBUF_X78_Y0_N19
\SEG_DSEL_VALUE[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SEGMENT_ALU_FILE|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SEG_DSEL_VALUE(6));

-- Location: IOOBUF_X50_Y0_N76
\ASEL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ASEL(0));

-- Location: IOOBUF_X84_Y0_N36
\ASEL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ASEL(1));

-- Location: IOOBUF_X10_Y0_N59
\ASEL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ASEL(2));

-- Location: IOOBUF_X32_Y0_N19
\BSEL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux5~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_BSEL(0));

-- Location: IOOBUF_X38_Y0_N53
\BSEL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux4~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_BSEL(1));

-- Location: IOOBUF_X20_Y0_N53
\BSEL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux3~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_BSEL(2));

-- Location: IOOBUF_X68_Y0_N2
\DSEL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux8~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_DSEL(0));

-- Location: IOOBUF_X30_Y0_N2
\DSEL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux7~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_DSEL(1));

-- Location: IOOBUF_X30_Y0_N36
\DSEL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux6~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_DSEL(2));

-- Location: IOOBUF_X58_Y0_N59
\SSEL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux12~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SSEL(0));

-- Location: IOOBUF_X28_Y0_N2
\SSEL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux11~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SSEL(1));

-- Location: IOOBUF_X62_Y0_N2
\SSEL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux10~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SSEL(2));

-- Location: IOOBUF_X26_Y0_N42
\SSEL[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux9~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_SSEL(3));

-- Location: IOOBUF_X8_Y0_N53
\HSEL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux15~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_HSEL(0));

-- Location: IOOBUF_X60_Y0_N36
\HSEL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux14~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_HSEL(1));

-- Location: IOOBUF_X32_Y0_N2
\HSEL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux13~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_HSEL(2));

-- Location: IOOBUF_X34_Y81_N42
\MUX1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MUX1);

-- Location: IOOBUF_X18_Y0_N76
\MUX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux18~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_MUX2(0));

-- Location: IOOBUF_X14_Y0_N36
\MUX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux17~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_MUX2(1));

-- Location: IOOBUF_X18_Y0_N59
\MUX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux16~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_MUX2(2));

-- Location: IOOBUF_X18_Y0_N42
\ADRS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux22~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ADRS(0));

-- Location: IOOBUF_X26_Y0_N93
\ADRS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux21~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ADRS(1));

-- Location: IOOBUF_X14_Y0_N53
\ADRS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux20~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ADRS(2));

-- Location: IOOBUF_X82_Y0_N42
\ADRS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MICROCODE_ROM_FILE|Mux19~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ADRS(3));

-- Location: IOOBUF_X6_Y0_N19
\ADRS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ADRS(4));

-- Location: IOOBUF_X14_Y81_N2
\ADRS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ADRS(5));

-- Location: IOOBUF_X2_Y0_N59
\ADRS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ADRS(6));

-- Location: IOOBUF_X38_Y81_N19
\ADRS[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ADRS(7));

-- Location: IOOBUF_X6_Y81_N19
\MISC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MISC(0));

-- Location: IOOBUF_X16_Y0_N53
\MISC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MISC(1));

-- Location: IOOBUF_X12_Y0_N36
\MISC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MISC(2));

-- Location: IOOBUF_X22_Y0_N19
\MISC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MISC(3));

-- Location: IOOBUF_X89_Y8_N22
\CAR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CAR[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CAR(0));

-- Location: IOOBUF_X89_Y8_N5
\CAR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CAR[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CAR(1));

-- Location: IOOBUF_X89_Y6_N22
\CAR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CAR[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CAR(2));

-- Location: IOOBUF_X86_Y0_N36
\CAR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CAR[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CAR(3));

-- Location: IOOBUF_X62_Y0_N19
\CAR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CAR[4]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CAR(4));

-- Location: IOOBUF_X54_Y0_N53
\CAR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CAR[5]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CAR(5));

-- Location: IOOBUF_X62_Y0_N36
\CAR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CAR[6]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CAR(6));

-- Location: IOOBUF_X64_Y0_N2
\CAR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CAR[7]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_CAR(7));

-- Location: IOIBUF_X36_Y0_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G7
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: LABCELL_X71_Y2_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \CAR[0]~reg0_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~6\ = CARRY(( \CAR[0]~reg0_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[0]~reg0_q\,
	cin => GND,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X71_Y2_N15
\CAR[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CAR[0]~reg0feeder_combout\ = ( \Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \CAR[0]~reg0feeder_combout\);

-- Location: LABCELL_X71_Y2_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \CAR[1]~reg0_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( \CAR[1]~reg0_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CAR[1]~reg0_q\,
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X71_Y2_N36
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \CAR[2]~reg0_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~30\ = CARRY(( \CAR[2]~reg0_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CAR[2]~reg0_q\,
	cin => \Add0~2\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X71_Y2_N39
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \CAR[3]~reg0_q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~10\ = CARRY(( \CAR[3]~reg0_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CAR[3]~reg0_q\,
	cin => \Add0~30\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X71_Y2_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \CAR[4]~reg0_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~18\ = CARRY(( \CAR[4]~reg0_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CAR[4]~reg0_q\,
	cin => \Add0~10\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X77_Y2_N0
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X71_Y2_N44
\CAR[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CAR[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAR[4]~reg0_q\);

-- Location: LABCELL_X71_Y2_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \CAR[5]~reg0_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \CAR[5]~reg0_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CAR[5]~reg0_q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X71_Y2_N47
\CAR[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \CAR[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAR[5]~reg0_q\);

-- Location: LABCELL_X71_Y2_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \CAR[6]~reg0_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \CAR[6]~reg0_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CAR[6]~reg0_q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X71_Y2_N50
\CAR[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CAR[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAR[6]~reg0_q\);

-- Location: LABCELL_X71_Y2_N51
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \CAR[7]~reg0_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CAR[7]~reg0_q\,
	cin => \Add0~26\,
	sumout => \Add0~13_sumout\);

-- Location: FF_X71_Y2_N53
\CAR[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CAR[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAR[7]~reg0_q\);

-- Location: LABCELL_X71_Y2_N57
\MICROCODE_ROM_FILE|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux12~0_combout\ = ( !\CAR[6]~reg0_q\ & ( (!\CAR[7]~reg0_q\ & (!\CAR[4]~reg0_q\ & !\CAR[5]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[7]~reg0_q\,
	datac => \ALT_INV_CAR[4]~reg0_q\,
	datad => \ALT_INV_CAR[5]~reg0_q\,
	dataf => \ALT_INV_CAR[6]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux12~0_combout\);

-- Location: MLABCELL_X72_Y1_N27
\MICROCODE_ROM_FILE|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux19~0_combout\ = ( \CAR[0]~reg0_q\ & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & ((!\CAR[2]~reg0_q\ & (\CAR[3]~reg0_q\ & !\CAR[1]~reg0_q\)) # (\CAR[2]~reg0_q\ & (!\CAR[3]~reg0_q\ & \CAR[1]~reg0_q\)))) ) ) # ( !\CAR[0]~reg0_q\ & ( 
-- (!\CAR[2]~reg0_q\ & (\MICROCODE_ROM_FILE|Mux12~0_combout\ & (\CAR[3]~reg0_q\ & !\CAR[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000100000000001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[2]~reg0_q\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_CAR[3]~reg0_q\,
	datad => \ALT_INV_CAR[1]~reg0_q\,
	dataf => \ALT_INV_CAR[0]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux19~0_combout\);

-- Location: FF_X71_Y2_N41
\CAR[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	asdata => \MICROCODE_ROM_FILE|Mux19~0_combout\,
	sload => \CAR[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAR[3]~reg0_q\);

-- Location: MLABCELL_X72_Y1_N45
\MICROCODE_ROM_FILE|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux21~0_combout\ = ( \MICROCODE_ROM_FILE|Mux12~0_combout\ & ( (!\CAR[0]~reg0_q\ & (!\CAR[1]~reg0_q\ & (!\CAR[2]~reg0_q\ $ (!\CAR[3]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[2]~reg0_q\,
	datab => \ALT_INV_CAR[0]~reg0_q\,
	datac => \ALT_INV_CAR[3]~reg0_q\,
	datad => \ALT_INV_CAR[1]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux21~0_combout\);

-- Location: FF_X71_Y2_N35
\CAR[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	asdata => \MICROCODE_ROM_FILE|Mux21~0_combout\,
	sload => \CAR[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAR[1]~reg0_q\);

-- Location: LABCELL_X71_Y2_N9
\MICROCODE_ROM_FILE|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux14~0_combout\ = ( !\CAR[0]~reg0_q\ & ( !\CAR[7]~reg0_q\ & ( (!\CAR[5]~reg0_q\ & (!\CAR[3]~reg0_q\ & (!\CAR[4]~reg0_q\ & !\CAR[6]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[5]~reg0_q\,
	datab => \ALT_INV_CAR[3]~reg0_q\,
	datac => \ALT_INV_CAR[4]~reg0_q\,
	datad => \ALT_INV_CAR[6]~reg0_q\,
	datae => \ALT_INV_CAR[0]~reg0_q\,
	dataf => \ALT_INV_CAR[7]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux14~0_combout\);

-- Location: LABCELL_X70_Y2_N51
\MICROCODE_ROM_FILE|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux20~0_combout\ = ( \MICROCODE_ROM_FILE|Mux14~0_combout\ & ( (!\CAR[1]~reg0_q\ & \CAR[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[1]~reg0_q\,
	datac => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux20~0_combout\);

-- Location: FF_X71_Y2_N38
\CAR[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	asdata => \MICROCODE_ROM_FILE|Mux20~0_combout\,
	sload => \CAR[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAR[2]~reg0_q\);

-- Location: LABCELL_X71_Y3_N24
\MICROCODE_ROM_FILE|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux9~0_combout\ = ( !\CAR[3]~reg0_q\ & ( (!\CAR[1]~reg0_q\ & ((\CAR[0]~reg0_q\) # (\CAR[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[2]~reg0_q\,
	datac => \ALT_INV_CAR[0]~reg0_q\,
	datad => \ALT_INV_CAR[1]~reg0_q\,
	dataf => \ALT_INV_CAR[3]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux9~0_combout\);

-- Location: LABCELL_X71_Y3_N15
\MICROCODE_ROM_FILE|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux9~1_combout\ = ( \MICROCODE_ROM_FILE|Mux12~0_combout\ & ( \MICROCODE_ROM_FILE|Mux9~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux9~1_combout\);

-- Location: LABCELL_X71_Y2_N0
\MICROCODE_ROM_FILE|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux12~1_combout\ = ( !\CAR[5]~reg0_q\ & ( !\CAR[6]~reg0_q\ & ( (\CAR[1]~reg0_q\ & (!\CAR[3]~reg0_q\ & (!\CAR[7]~reg0_q\ & !\CAR[4]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[1]~reg0_q\,
	datab => \ALT_INV_CAR[3]~reg0_q\,
	datac => \ALT_INV_CAR[7]~reg0_q\,
	datad => \ALT_INV_CAR[4]~reg0_q\,
	datae => \ALT_INV_CAR[5]~reg0_q\,
	dataf => \ALT_INV_CAR[6]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux12~1_combout\);

-- Location: LABCELL_X74_Y3_N12
\MICROCODE_ROM_FILE|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux12~2_combout\ = ( \MICROCODE_ROM_FILE|Mux12~1_combout\ & ( !\CAR[2]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~1_combout\,
	combout => \MICROCODE_ROM_FILE|Mux12~2_combout\);

-- Location: LABCELL_X71_Y3_N51
\MICROCODE_ROM_FILE|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux10~0_combout\ = ( \CAR[3]~reg0_q\ & ( (!\CAR[1]~reg0_q\ & (!\CAR[2]~reg0_q\ & \CAR[0]~reg0_q\)) ) ) # ( !\CAR[3]~reg0_q\ & ( (!\CAR[1]~reg0_q\ & ((\CAR[0]~reg0_q\))) # (\CAR[1]~reg0_q\ & (!\CAR[2]~reg0_q\ & !\CAR[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001100001100001100110000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[1]~reg0_q\,
	datac => \ALT_INV_CAR[2]~reg0_q\,
	datad => \ALT_INV_CAR[0]~reg0_q\,
	dataf => \ALT_INV_CAR[3]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux10~0_combout\);

-- Location: MLABCELL_X72_Y4_N3
\MICROCODE_ROM_FILE|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux10~1_combout\ = (\MICROCODE_ROM_FILE|Mux10~0_combout\ & \MICROCODE_ROM_FILE|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux10~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux10~1_combout\);

-- Location: LABCELL_X71_Y2_N21
\MICROCODE_ROM_FILE|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux11~0_combout\ = ( \CAR[1]~reg0_q\ & ( (!\CAR[3]~reg0_q\ & \CAR[2]~reg0_q\) ) ) # ( !\CAR[1]~reg0_q\ & ( (!\CAR[3]~reg0_q\ & (\CAR[0]~reg0_q\ & \CAR[2]~reg0_q\)) # (\CAR[3]~reg0_q\ & ((!\CAR[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001100001100110000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[3]~reg0_q\,
	datac => \ALT_INV_CAR[0]~reg0_q\,
	datad => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \ALT_INV_CAR[1]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux11~0_combout\);

-- Location: LABCELL_X70_Y2_N48
\MICROCODE_ROM_FILE|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux11~1_combout\ = ( \MICROCODE_ROM_FILE|Mux12~0_combout\ & ( \MICROCODE_ROM_FILE|Mux11~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux11~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux11~1_combout\);

-- Location: LABCELL_X71_Y2_N12
\MICROCODE_ROM_FILE|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux3~0_combout\ = ( \CAR[0]~reg0_q\ & ( (!\CAR[3]~reg0_q\ & (\CAR[1]~reg0_q\ & \CAR[2]~reg0_q\)) ) ) # ( !\CAR[0]~reg0_q\ & ( !\CAR[3]~reg0_q\ $ (((!\CAR[1]~reg0_q\ & !\CAR[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[3]~reg0_q\,
	datac => \ALT_INV_CAR[1]~reg0_q\,
	datad => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \ALT_INV_CAR[0]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux3~0_combout\);

-- Location: MLABCELL_X72_Y2_N27
\MICROCODE_ROM_FILE|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux5~0_combout\ = ( \CAR[3]~reg0_q\ & ( (!\CAR[0]~reg0_q\ & (!\CAR[1]~reg0_q\ & !\CAR[2]~reg0_q\)) ) ) # ( !\CAR[3]~reg0_q\ & ( (!\CAR[1]~reg0_q\ & (\CAR[0]~reg0_q\ & !\CAR[2]~reg0_q\)) # (\CAR[1]~reg0_q\ & ((\CAR[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[0]~reg0_q\,
	datac => \ALT_INV_CAR[1]~reg0_q\,
	datad => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \ALT_INV_CAR[3]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux5~0_combout\);

-- Location: MLABCELL_X72_Y2_N18
\MICROCODE_ROM_FILE|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux4~0_combout\ = ( \CAR[3]~reg0_q\ & ( (!\CAR[0]~reg0_q\ & (!\CAR[1]~reg0_q\ & !\CAR[2]~reg0_q\)) ) ) # ( !\CAR[3]~reg0_q\ & ( (!\CAR[1]~reg0_q\ & (!\CAR[0]~reg0_q\ $ (!\CAR[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[0]~reg0_q\,
	datac => \ALT_INV_CAR[1]~reg0_q\,
	datad => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \ALT_INV_CAR[3]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux4~0_combout\);

-- Location: MLABCELL_X72_Y2_N24
\REGISTER_FILE|Mux67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux67~0_combout\ = ( \MICROCODE_ROM_FILE|Mux4~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux5~0_combout\) # (\MICROCODE_ROM_FILE|Mux3~0_combout\))) ) ) # ( !\MICROCODE_ROM_FILE|Mux4~0_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux12~0_combout\ & \MICROCODE_ROM_FILE|Mux3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux3~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux5~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux4~0_combout\,
	combout => \REGISTER_FILE|Mux67~0_combout\);

-- Location: LABCELL_X75_Y2_N30
\MICROCODE_ROM_FILE|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux8~0_combout\ = ( !\CAR[1]~reg0_q\ & ( \CAR[3]~reg0_q\ & ( (!\CAR[2]~reg0_q\ & !\CAR[0]~reg0_q\) ) ) ) # ( \CAR[1]~reg0_q\ & ( !\CAR[3]~reg0_q\ & ( (!\CAR[0]~reg0_q\) # (\CAR[2]~reg0_q\) ) ) ) # ( !\CAR[1]~reg0_q\ & ( 
-- !\CAR[3]~reg0_q\ & ( (\CAR[0]~reg0_q\) # (\CAR[2]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111111111110000111111110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CAR[2]~reg0_q\,
	datad => \ALT_INV_CAR[0]~reg0_q\,
	datae => \ALT_INV_CAR[1]~reg0_q\,
	dataf => \ALT_INV_CAR[3]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux8~0_combout\);

-- Location: MLABCELL_X72_Y1_N33
\MICROCODE_ROM_FILE|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux8~1_combout\ = ( \MICROCODE_ROM_FILE|Mux8~0_combout\ & ( \MICROCODE_ROM_FILE|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux8~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux8~1_combout\);

-- Location: LABCELL_X70_Y4_N30
\MICROCODE_ROM_FILE|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux13~0_combout\ = ( \CAR[2]~reg0_q\ & ( (!\CAR[3]~reg0_q\ & (!\CAR[0]~reg0_q\ & \CAR[1]~reg0_q\)) ) ) # ( !\CAR[2]~reg0_q\ & ( (!\CAR[0]~reg0_q\ & (!\CAR[3]~reg0_q\ $ (!\CAR[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[3]~reg0_q\,
	datac => \ALT_INV_CAR[0]~reg0_q\,
	datad => \ALT_INV_CAR[1]~reg0_q\,
	dataf => \ALT_INV_CAR[2]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux13~0_combout\);

-- Location: LABCELL_X71_Y4_N48
\SHIFTER_FILE|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux2~3_combout\ = ( \MICROCODE_ROM_FILE|Mux12~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux13~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux14~0_combout\) # (!\CAR[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datad => \ALT_INV_CAR[1]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	combout => \SHIFTER_FILE|Mux2~3_combout\);

-- Location: LABCELL_X71_Y3_N45
\ALU_FILE|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux2~0_combout\ = ( \MICROCODE_ROM_FILE|Mux11~0_combout\ & ( \MICROCODE_ROM_FILE|Mux9~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & (!\CAR[2]~reg0_q\ & \MICROCODE_ROM_FILE|Mux12~1_combout\)) ) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux11~0_combout\ & ( \MICROCODE_ROM_FILE|Mux9~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & (!\CAR[2]~reg0_q\ & \MICROCODE_ROM_FILE|Mux12~1_combout\)) ) ) ) # ( \MICROCODE_ROM_FILE|Mux11~0_combout\ & ( 
-- !\MICROCODE_ROM_FILE|Mux9~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & (!\CAR[2]~reg0_q\ & (\MICROCODE_ROM_FILE|Mux12~1_combout\ & !\MICROCODE_ROM_FILE|Mux10~0_combout\))) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux11~0_combout\ & ( 
-- !\MICROCODE_ROM_FILE|Mux9~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & (\MICROCODE_ROM_FILE|Mux10~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux12~1_combout\) # (\CAR[2]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010001000001000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datab => \ALT_INV_CAR[2]~reg0_q\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux10~0_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux11~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\,
	combout => \ALU_FILE|Mux2~0_combout\);

-- Location: LABCELL_X70_Y2_N6
\SHIFTER_FILE|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux1~0_combout\ = ( \MICROCODE_ROM_FILE|Mux13~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\ & ((\MICROCODE_ROM_FILE|Mux12~0_combout\))) # (\MICROCODE_ROM_FILE|Mux14~0_combout\ & (!\CAR[1]~reg0_q\)) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux13~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux14~0_combout\ & !\CAR[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000111111000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datac => \ALT_INV_CAR[1]~reg0_q\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	combout => \SHIFTER_FILE|Mux1~0_combout\);

-- Location: LABCELL_X71_Y3_N39
\SHIFTER_FILE|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux2~0_combout\ = ( \MICROCODE_ROM_FILE|Mux14~0_combout\ & ( ((\MICROCODE_ROM_FILE|Mux12~0_combout\ & \MICROCODE_ROM_FILE|Mux13~0_combout\)) # (\CAR[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[1]~reg0_q\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	combout => \SHIFTER_FILE|Mux2~0_combout\);

-- Location: LABCELL_X75_Y2_N39
\MICROCODE_ROM_FILE|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux7~0_combout\ = ( \CAR[1]~reg0_q\ & ( \CAR[0]~reg0_q\ & ( (\CAR[2]~reg0_q\ & !\CAR[3]~reg0_q\) ) ) ) # ( !\CAR[1]~reg0_q\ & ( \CAR[0]~reg0_q\ & ( !\CAR[3]~reg0_q\ ) ) ) # ( \CAR[1]~reg0_q\ & ( !\CAR[0]~reg0_q\ & ( (\CAR[2]~reg0_q\ & 
-- !\CAR[3]~reg0_q\) ) ) ) # ( !\CAR[1]~reg0_q\ & ( !\CAR[0]~reg0_q\ & ( (!\CAR[2]~reg0_q\ & \CAR[3]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011110000000011111111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CAR[2]~reg0_q\,
	datad => \ALT_INV_CAR[3]~reg0_q\,
	datae => \ALT_INV_CAR[1]~reg0_q\,
	dataf => \ALT_INV_CAR[0]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux7~0_combout\);

-- Location: LABCELL_X75_Y2_N6
\MICROCODE_ROM_FILE|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux7~1_combout\ = ( \MICROCODE_ROM_FILE|Mux7~0_combout\ & ( \MICROCODE_ROM_FILE|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux7~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux7~1_combout\);

-- Location: MLABCELL_X72_Y2_N36
\REGISTER_FILE|Mux67~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux67~1_combout\ = ( \MICROCODE_ROM_FILE|Mux4~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & !\MICROCODE_ROM_FILE|Mux3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux3~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux4~0_combout\,
	combout => \REGISTER_FILE|Mux67~1_combout\);

-- Location: LABCELL_X70_Y2_N39
\REGISTER_FILE|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux1~0_combout\ = ( \SHIFTER_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & \SHIFTER_FILE|Mux1~1_combout\) ) ) ) # ( !\SHIFTER_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux8~1_combout\ & \SHIFTER_FILE|Mux1~1_combout\) ) ) ) # ( \SHIFTER_FILE|Mux2~0_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & ((\SHIFTER_FILE|Mux1~1_combout\) # (\ALU_FILE|Mux1~1_combout\))) ) 
-- ) ) # ( !\SHIFTER_FILE|Mux2~0_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & ((\ALU_FILE|Mux2~2_combout\) # (\SHIFTER_FILE|Mux1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000101010001010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux1~1_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux1~1_combout\,
	datad => \ALU_FILE|ALT_INV_Mux2~2_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux1~0_combout\);

-- Location: LABCELL_X75_Y2_N51
\MICROCODE_ROM_FILE|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux6~0_combout\ = ( \CAR[3]~reg0_q\ & ( ((\CAR[0]~reg0_q\ & \CAR[1]~reg0_q\)) # (\CAR[2]~reg0_q\) ) ) # ( !\CAR[3]~reg0_q\ & ( (!\CAR[1]~reg0_q\ & (!\CAR[0]~reg0_q\ $ (\CAR[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[0]~reg0_q\,
	datac => \ALT_INV_CAR[2]~reg0_q\,
	datad => \ALT_INV_CAR[1]~reg0_q\,
	dataf => \ALT_INV_CAR[3]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux6~0_combout\);

-- Location: LABCELL_X75_Y2_N45
\SEGEMENT_D_FILE_1|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_D_FILE_1|Mux3~1_combout\ = ( \MICROCODE_ROM_FILE|Mux7~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux12~0_combout\ ) ) # ( !\MICROCODE_ROM_FILE|Mux7~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~0_combout\) # (\MICROCODE_ROM_FILE|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux6~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux7~0_combout\,
	combout => \SEGEMENT_D_FILE_1|Mux3~1_combout\);

-- Location: FF_X70_Y2_N38
\REGISTER_FILE|R1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux1~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R1\(6));

-- Location: LABCELL_X75_Y2_N27
\SEGEMENT_D_FILE_1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_D_FILE_1|Mux4~0_combout\ = ( \MICROCODE_ROM_FILE|Mux6~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~0_combout\) # (!\MICROCODE_ROM_FILE|Mux8~0_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux6~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux8~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux6~0_combout\,
	combout => \SEGEMENT_D_FILE_1|Mux4~0_combout\);

-- Location: FF_X73_Y2_N59
\REGISTER_FILE|R2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux17~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R2\(6));

-- Location: LABCELL_X75_Y3_N51
\REGISTER_FILE|R7[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|R7[1]~0_combout\ = ( \MICROCODE_ROM_FILE|Mux6~0_combout\ & ( \MICROCODE_ROM_FILE|Mux7~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux12~0_combout\ ) ) ) # ( !\MICROCODE_ROM_FILE|Mux6~0_combout\ & ( \MICROCODE_ROM_FILE|Mux7~0_combout\ & ( 
-- (!\MICROCODE_ROM_FILE|Mux12~0_combout\) # (\MICROCODE_ROM_FILE|Mux8~0_combout\) ) ) ) # ( \MICROCODE_ROM_FILE|Mux6~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux7~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux8~0_combout\) # (!\MICROCODE_ROM_FILE|Mux12~0_combout\) ) ) 
-- ) # ( !\MICROCODE_ROM_FILE|Mux6~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux7~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux12~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111000011111111000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux8~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux6~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux7~0_combout\,
	combout => \REGISTER_FILE|R7[1]~0_combout\);

-- Location: FF_X73_Y3_N41
\REGISTER_FILE|R7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux17~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R7[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R7\(6));

-- Location: LABCELL_X73_Y2_N15
\REGISTER_FILE|R5[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|R5[6]~0_combout\ = ( \MICROCODE_ROM_FILE|Mux7~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux12~0_combout\ ) ) # ( !\MICROCODE_ROM_FILE|Mux7~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~0_combout\) # (!\MICROCODE_ROM_FILE|Mux8~0_combout\ $ 
-- (!\MICROCODE_ROM_FILE|Mux6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111010111101011111101011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux8~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux6~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux7~0_combout\,
	combout => \REGISTER_FILE|R5[6]~0_combout\);

-- Location: FF_X70_Y2_N32
\REGISTER_FILE|R5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux1~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R5[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R5\(6));

-- Location: LABCELL_X75_Y2_N42
\MICROCODE_ROM_FILE|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux6~1_combout\ = ( !\MICROCODE_ROM_FILE|Mux6~0_combout\ & ( \MICROCODE_ROM_FILE|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux6~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux6~1_combout\);

-- Location: LABCELL_X70_Y2_N15
\REGISTER_FILE|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux25~0_combout\ = ( \SHIFTER_FILE|Mux1~1_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( \MICROCODE_ROM_FILE|Mux6~1_combout\ ) ) ) # ( \SHIFTER_FILE|Mux1~1_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( \MICROCODE_ROM_FILE|Mux6~1_combout\ 
-- ) ) ) # ( !\SHIFTER_FILE|Mux1~1_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux6~1_combout\ & ((!\SHIFTER_FILE|Mux2~0_combout\ & ((\ALU_FILE|Mux2~2_combout\))) # (\SHIFTER_FILE|Mux2~0_combout\ & (\ALU_FILE|Mux1~1_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux1~1_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux2~2_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux1~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux25~0_combout\);

-- Location: LABCELL_X75_Y2_N9
\SEGEMENT_D_FILE_1|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_D_FILE_1|Mux1~1_combout\ = ( \MICROCODE_ROM_FILE|Mux8~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux12~0_combout\ ) ) # ( !\MICROCODE_ROM_FILE|Mux8~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux7~0_combout\) # (!\MICROCODE_ROM_FILE|Mux12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux7~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux8~0_combout\,
	combout => \SEGEMENT_D_FILE_1|Mux1~1_combout\);

-- Location: FF_X70_Y2_N17
\REGISTER_FILE|R4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \REGISTER_FILE|Mux25~0_combout\,
	ena => \SEGEMENT_D_FILE_1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R4\(6));

-- Location: LABCELL_X75_Y2_N57
\REGISTER_FILE|R6[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|R6[6]~0_combout\ = ( \MICROCODE_ROM_FILE|Mux7~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~0_combout\) # ((!\MICROCODE_ROM_FILE|Mux8~0_combout\ & !\MICROCODE_ROM_FILE|Mux6~0_combout\)) ) ) # ( !\MICROCODE_ROM_FILE|Mux7~0_combout\ & ( 
-- (!\MICROCODE_ROM_FILE|Mux12~0_combout\) # ((!\MICROCODE_ROM_FILE|Mux8~0_combout\ & \MICROCODE_ROM_FILE|Mux6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111100110011001111110011111100110011001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux8~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux6~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux7~0_combout\,
	combout => \REGISTER_FILE|R6[6]~0_combout\);

-- Location: FF_X73_Y2_N47
\REGISTER_FILE|R6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux17~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R6[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R6\(6));

-- Location: MLABCELL_X72_Y2_N39
\MICROCODE_ROM_FILE|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux4~1_combout\ = ( \MICROCODE_ROM_FILE|Mux4~0_combout\ & ( \MICROCODE_ROM_FILE|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux4~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux4~1_combout\);

-- Location: MLABCELL_X72_Y2_N57
\MICROCODE_ROM_FILE|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux5~1_combout\ = ( \MICROCODE_ROM_FILE|Mux5~0_combout\ & ( \MICROCODE_ROM_FILE|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux5~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux5~1_combout\);

-- Location: LABCELL_X70_Y2_N33
\REGISTER_FILE|Mux65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux65~0_combout\ = ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R7\(6) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R5\(6) ) ) 
-- ) # ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R6\(6) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R4\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R7\(6),
	datab => \REGISTER_FILE|ALT_INV_R5\(6),
	datac => \REGISTER_FILE|ALT_INV_R4\(6),
	datad => \REGISTER_FILE|ALT_INV_R6\(6),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	combout => \REGISTER_FILE|Mux65~0_combout\);

-- Location: LABCELL_X70_Y2_N18
\REGISTER_FILE|Mux65~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux65~1_combout\ = ( \REGISTER_FILE|R2\(6) & ( \REGISTER_FILE|Mux65~0_combout\ & ( ((!\REGISTER_FILE|Mux67~1_combout\ & (\REGISTER_FILE|R1\(6))) # (\REGISTER_FILE|Mux67~1_combout\ & ((\REGISTER_FILE|R3\(6))))) # 
-- (\REGISTER_FILE|Mux67~0_combout\) ) ) ) # ( !\REGISTER_FILE|R2\(6) & ( \REGISTER_FILE|Mux65~0_combout\ & ( (!\REGISTER_FILE|Mux67~1_combout\ & (((\REGISTER_FILE|R1\(6))) # (\REGISTER_FILE|Mux67~0_combout\))) # (\REGISTER_FILE|Mux67~1_combout\ & 
-- (!\REGISTER_FILE|Mux67~0_combout\ & ((\REGISTER_FILE|R3\(6))))) ) ) ) # ( \REGISTER_FILE|R2\(6) & ( !\REGISTER_FILE|Mux65~0_combout\ & ( (!\REGISTER_FILE|Mux67~1_combout\ & (!\REGISTER_FILE|Mux67~0_combout\ & (\REGISTER_FILE|R1\(6)))) # 
-- (\REGISTER_FILE|Mux67~1_combout\ & (((\REGISTER_FILE|R3\(6))) # (\REGISTER_FILE|Mux67~0_combout\))) ) ) ) # ( !\REGISTER_FILE|R2\(6) & ( !\REGISTER_FILE|Mux65~0_combout\ & ( (!\REGISTER_FILE|Mux67~0_combout\ & ((!\REGISTER_FILE|Mux67~1_combout\ & 
-- (\REGISTER_FILE|R1\(6))) # (\REGISTER_FILE|Mux67~1_combout\ & ((\REGISTER_FILE|R3\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux67~1_combout\,
	datab => \REGISTER_FILE|ALT_INV_Mux67~0_combout\,
	datac => \REGISTER_FILE|ALT_INV_R1\(6),
	datad => \REGISTER_FILE|ALT_INV_R3\(6),
	datae => \REGISTER_FILE|ALT_INV_R2\(6),
	dataf => \REGISTER_FILE|ALT_INV_Mux65~0_combout\,
	combout => \REGISTER_FILE|Mux65~1_combout\);

-- Location: LABCELL_X70_Y2_N24
\ALU_FILE|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux15~0_combout\ = ( \REGISTER_FILE|Mux57~2_combout\ & ( \MICROCODE_ROM_FILE|Mux11~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux10~1_combout\ ) ) ) # ( !\REGISTER_FILE|Mux57~2_combout\ & ( \MICROCODE_ROM_FILE|Mux11~1_combout\ & ( 
-- (\REGISTER_FILE|Mux65~1_combout\) # (\MICROCODE_ROM_FILE|Mux10~1_combout\) ) ) ) # ( \REGISTER_FILE|Mux57~2_combout\ & ( !\MICROCODE_ROM_FILE|Mux11~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux10~1_combout\ $ (!\REGISTER_FILE|Mux65~1_combout\) ) ) ) # ( 
-- !\REGISTER_FILE|Mux57~2_combout\ & ( !\MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux10~1_combout\ & \REGISTER_FILE|Mux65~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010110100101101001011111010111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux65~1_combout\,
	datae => \REGISTER_FILE|ALT_INV_Mux57~2_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	combout => \ALU_FILE|Mux15~0_combout\);

-- Location: LABCELL_X74_Y2_N57
\ALU_FILE|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux9~0_combout\ = ( \MICROCODE_ROM_FILE|Mux9~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux12~1_combout\) # (\CAR[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux12~1_combout\,
	datac => \ALT_INV_CAR[2]~reg0_q\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\,
	combout => \ALU_FILE|Mux9~0_combout\);

-- Location: LABCELL_X70_Y2_N45
\ALU_FILE|F_log[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_log\(6) = ( \ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|Mux15~0_combout\ ) ) # ( !\ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|F_log\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FILE|ALT_INV_Mux15~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_log\(6),
	dataf => \ALU_FILE|ALT_INV_Mux9~0_combout\,
	combout => \ALU_FILE|F_log\(6));

-- Location: LABCELL_X71_Y4_N21
\ALU_FILE|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux2~2_combout\ = ( \ALU_FILE|F_int\(6) & ( (!\ALU_FILE|Mux2~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux9~1_combout\) # (\ALU_FILE|F_log\(6)))) ) ) # ( !\ALU_FILE|F_int\(6) & ( (\ALU_FILE|F_log\(6) & (\MICROCODE_ROM_FILE|Mux9~1_combout\ & 
-- !\ALU_FILE|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_F_log\(6),
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	datad => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(6),
	combout => \ALU_FILE|Mux2~2_combout\);

-- Location: LABCELL_X74_Y4_N21
\ALU_FILE|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux23~0_combout\ = ( \MICROCODE_ROM_FILE|Mux10~1_combout\ & ( ((!\MICROCODE_ROM_FILE|Mux11~1_combout\ & !\MICROCODE_ROM_FILE|Mux12~2_combout\)) # (\MICROCODE_ROM_FILE|Mux9~1_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux10~1_combout\ & ( 
-- ((\MICROCODE_ROM_FILE|Mux11~1_combout\ & \MICROCODE_ROM_FILE|Mux12~2_combout\)) # (\MICROCODE_ROM_FILE|Mux9~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	combout => \ALU_FILE|Mux23~0_combout\);

-- Location: MLABCELL_X72_Y1_N54
\MICROCODE_ROM_FILE|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux0~0_combout\ = ( \MICROCODE_ROM_FILE|Mux12~0_combout\ & ( (!\CAR[3]~reg0_q\ & (((!\CAR[0]~reg0_q\ & \CAR[2]~reg0_q\)) # (\CAR[1]~reg0_q\))) # (\CAR[3]~reg0_q\ & (!\CAR[2]~reg0_q\ & ((!\CAR[1]~reg0_q\) # (!\CAR[0]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011101111000000101110111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[1]~reg0_q\,
	datab => \ALT_INV_CAR[0]~reg0_q\,
	datac => \ALT_INV_CAR[2]~reg0_q\,
	datad => \ALT_INV_CAR[3]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux0~0_combout\);

-- Location: IOIBUF_X2_Y0_N41
\DATA_I[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_I(4),
	o => \DATA_I[4]~input_o\);

-- Location: LABCELL_X70_Y3_N30
\MICROCODE_ROM_FILE|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux15~0_combout\ = ( \MICROCODE_ROM_FILE|Mux14~0_combout\ & ( !\CAR[1]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_CAR[1]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux15~0_combout\);

-- Location: LABCELL_X70_Y3_N54
\MICROCODE_ROM_FILE|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux13~1_combout\ = ( \MICROCODE_ROM_FILE|Mux13~0_combout\ & ( \MICROCODE_ROM_FILE|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux13~1_combout\);

-- Location: MLABCELL_X72_Y3_N9
\REGISTER_FILE|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux22~0_combout\ = ( \MICROCODE_ROM_FILE|Mux7~1_combout\ & ( \SHIFTER_FILE|Mux2~0_combout\ & ( ((!\SHIFTER_FILE|Mux1~0_combout\ & \ALU_FILE|Mux6~1_combout\)) # (\SHIFTER_FILE|Mux6~0_combout\) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux7~1_combout\ & 
-- ( \SHIFTER_FILE|Mux2~0_combout\ ) ) # ( \MICROCODE_ROM_FILE|Mux7~1_combout\ & ( !\SHIFTER_FILE|Mux2~0_combout\ & ( ((!\SHIFTER_FILE|Mux1~0_combout\ & \ALU_FILE|Mux7~0_combout\)) # (\SHIFTER_FILE|Mux6~0_combout\) ) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux7~1_combout\ & ( !\SHIFTER_FILE|Mux2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101011101110111111111111111110101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux6~0_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	datad => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	combout => \REGISTER_FILE|Mux22~0_combout\);

-- Location: LABCELL_X73_Y2_N9
\REGISTER_FILE|R3[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|R3[7]~0_combout\ = ( \MICROCODE_ROM_FILE|Mux7~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~0_combout\) # ((\MICROCODE_ROM_FILE|Mux8~0_combout\ & \MICROCODE_ROM_FILE|Mux6~0_combout\)) ) ) # ( !\MICROCODE_ROM_FILE|Mux7~0_combout\ & ( 
-- (!\MICROCODE_ROM_FILE|Mux12~0_combout\) # ((!\MICROCODE_ROM_FILE|Mux8~0_combout\ & \MICROCODE_ROM_FILE|Mux6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111010111100001111101011110000111101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux8~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux6~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux7~0_combout\,
	combout => \REGISTER_FILE|R3[7]~0_combout\);

-- Location: FF_X72_Y3_N8
\REGISTER_FILE|R3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux22~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R3\(1));

-- Location: IOIBUF_X16_Y0_N1
\DATA_I[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_I(1),
	o => \DATA_I[1]~input_o\);

-- Location: FF_X73_Y2_N5
\REGISTER_FILE|R2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux22~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R2\(1));

-- Location: LABCELL_X71_Y2_N18
\MICROCODE_ROM_FILE|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux1~1_combout\ = ( \CAR[0]~reg0_q\ & ( (!\CAR[3]~reg0_q\ & ((!\CAR[1]~reg0_q\) # (\CAR[2]~reg0_q\))) ) ) # ( !\CAR[0]~reg0_q\ & ( (!\CAR[3]~reg0_q\ & (\CAR[1]~reg0_q\)) # (\CAR[3]~reg0_q\ & (!\CAR[1]~reg0_q\ & !\CAR[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001100001111000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[3]~reg0_q\,
	datac => \ALT_INV_CAR[1]~reg0_q\,
	datad => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \ALT_INV_CAR[0]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux1~1_combout\);

-- Location: LABCELL_X71_Y2_N27
\MICROCODE_ROM_FILE|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux1~0_combout\ = ( \MICROCODE_ROM_FILE|Mux1~1_combout\ & ( (!\CAR[7]~reg0_q\ & (!\CAR[4]~reg0_q\ & (!\CAR[6]~reg0_q\ & !\CAR[5]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[7]~reg0_q\,
	datab => \ALT_INV_CAR[4]~reg0_q\,
	datac => \ALT_INV_CAR[6]~reg0_q\,
	datad => \ALT_INV_CAR[5]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~1_combout\,
	combout => \MICROCODE_ROM_FILE|Mux1~0_combout\);

-- Location: LABCELL_X71_Y3_N54
\REGISTER_FILE|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux6~0_combout\ = ( \ALU_FILE|Mux7~0_combout\ & ( \ALU_FILE|Mux6~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & ((!\SHIFTER_FILE|Mux1~0_combout\) # (\SHIFTER_FILE|Mux6~0_combout\))) ) ) ) # ( !\ALU_FILE|Mux7~0_combout\ & ( 
-- \ALU_FILE|Mux6~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & (((!\SHIFTER_FILE|Mux1~0_combout\ & \SHIFTER_FILE|Mux2~0_combout\)) # (\SHIFTER_FILE|Mux6~0_combout\))) ) ) ) # ( \ALU_FILE|Mux7~0_combout\ & ( !\ALU_FILE|Mux6~1_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux8~1_combout\ & (((!\SHIFTER_FILE|Mux1~0_combout\ & !\SHIFTER_FILE|Mux2~0_combout\)) # (\SHIFTER_FILE|Mux6~0_combout\))) ) ) ) # ( !\ALU_FILE|Mux7~0_combout\ & ( !\ALU_FILE|Mux6~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & 
-- \SHIFTER_FILE|Mux6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010001010000010100000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux6~0_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datae => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	combout => \REGISTER_FILE|Mux6~0_combout\);

-- Location: FF_X71_Y3_N44
\REGISTER_FILE|R1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux6~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R1\(1));

-- Location: LABCELL_X71_Y2_N54
\MICROCODE_ROM_FILE|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux2~1_combout\ = ( \CAR[1]~reg0_q\ & ( (!\CAR[3]~reg0_q\ & \CAR[2]~reg0_q\) ) ) # ( !\CAR[1]~reg0_q\ & ( (!\CAR[3]~reg0_q\ & (\CAR[2]~reg0_q\)) # (\CAR[3]~reg0_q\ & (!\CAR[2]~reg0_q\ & !\CAR[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001100001111000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[3]~reg0_q\,
	datac => \ALT_INV_CAR[2]~reg0_q\,
	datad => \ALT_INV_CAR[0]~reg0_q\,
	dataf => \ALT_INV_CAR[1]~reg0_q\,
	combout => \MICROCODE_ROM_FILE|Mux2~1_combout\);

-- Location: LABCELL_X71_Y2_N24
\MICROCODE_ROM_FILE|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux2~0_combout\ = ( \MICROCODE_ROM_FILE|Mux2~1_combout\ & ( (!\CAR[7]~reg0_q\ & (!\CAR[4]~reg0_q\ & (!\CAR[6]~reg0_q\ & !\CAR[5]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[7]~reg0_q\,
	datab => \ALT_INV_CAR[4]~reg0_q\,
	datac => \ALT_INV_CAR[6]~reg0_q\,
	datad => \ALT_INV_CAR[5]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux2~1_combout\,
	combout => \MICROCODE_ROM_FILE|Mux2~0_combout\);

-- Location: MLABCELL_X72_Y2_N12
\REGISTER_FILE|Mux62~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux62~1_combout\ = ( \REGISTER_FILE|R1\(1) & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\) # (\REGISTER_FILE|R3\(1)) ) ) ) # ( !\REGISTER_FILE|R1\(1) & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( 
-- (\REGISTER_FILE|R3\(1) & \MICROCODE_ROM_FILE|Mux1~0_combout\) ) ) ) # ( \REGISTER_FILE|R1\(1) & ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & (\DATA_I[1]~input_o\)) # (\MICROCODE_ROM_FILE|Mux1~0_combout\ & 
-- ((\REGISTER_FILE|R2\(1)))) ) ) ) # ( !\REGISTER_FILE|R1\(1) & ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & (\DATA_I[1]~input_o\)) # (\MICROCODE_ROM_FILE|Mux1~0_combout\ & ((\REGISTER_FILE|R2\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R3\(1),
	datab => \ALT_INV_DATA_I[1]~input_o\,
	datac => \REGISTER_FILE|ALT_INV_R2\(1),
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	datae => \REGISTER_FILE|ALT_INV_R1\(1),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	combout => \REGISTER_FILE|Mux62~1_combout\);

-- Location: FF_X73_Y2_N41
\REGISTER_FILE|R6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux22~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R6[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R6\(1));

-- Location: FF_X74_Y2_N2
\REGISTER_FILE|R7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux22~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R7[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R7\(1));

-- Location: FF_X70_Y3_N11
\REGISTER_FILE|R5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux6~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R5[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R5\(1));

-- Location: MLABCELL_X72_Y2_N9
\REGISTER_FILE|Mux62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux62~0_combout\ = ( \REGISTER_FILE|R5\(1) & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\) # (\REGISTER_FILE|R7\(1)) ) ) ) # ( !\REGISTER_FILE|R5\(1) & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux1~0_combout\ & \REGISTER_FILE|R7\(1)) ) ) ) # ( \REGISTER_FILE|R5\(1) & ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & ((\REGISTER_FILE|R4\(1)))) # (\MICROCODE_ROM_FILE|Mux1~0_combout\ & 
-- (\REGISTER_FILE|R6\(1))) ) ) ) # ( !\REGISTER_FILE|R5\(1) & ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & ((\REGISTER_FILE|R4\(1)))) # (\MICROCODE_ROM_FILE|Mux1~0_combout\ & (\REGISTER_FILE|R6\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R6\(1),
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	datac => \REGISTER_FILE|ALT_INV_R4\(1),
	datad => \REGISTER_FILE|ALT_INV_R7\(1),
	datae => \REGISTER_FILE|ALT_INV_R5\(1),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	combout => \REGISTER_FILE|Mux62~0_combout\);

-- Location: MLABCELL_X72_Y2_N42
\REGISTER_FILE|Mux62~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux62~2_combout\ = ( \REGISTER_FILE|Mux62~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux0~0_combout\) # (\REGISTER_FILE|Mux62~1_combout\) ) ) # ( !\REGISTER_FILE|Mux62~0_combout\ & ( (\REGISTER_FILE|Mux62~1_combout\ & 
-- !\MICROCODE_ROM_FILE|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux62~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux62~0_combout\,
	combout => \REGISTER_FILE|Mux62~2_combout\);

-- Location: LABCELL_X73_Y1_N0
\REGISTER_FILE|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux7~0_combout\ = (!\MICROCODE_ROM_FILE|Mux8~1_combout\) # (\SHIFTER_FILE|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \SHIFTER_FILE|ALT_INV_Mux7~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	combout => \REGISTER_FILE|Mux7~0_combout\);

-- Location: FF_X73_Y1_N5
\REGISTER_FILE|R1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux7~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R1\(0));

-- Location: IOIBUF_X12_Y0_N18
\DATA_I[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_I(0),
	o => \DATA_I[0]~input_o\);

-- Location: LABCELL_X73_Y3_N12
\REGISTER_FILE|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux23~0_combout\ = ( \SHIFTER_FILE|Mux7~0_combout\ ) # ( !\SHIFTER_FILE|Mux7~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux7~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux7~0_combout\,
	combout => \REGISTER_FILE|Mux23~0_combout\);

-- Location: FF_X73_Y3_N29
\REGISTER_FILE|R3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux23~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R3\(0));

-- Location: LABCELL_X73_Y1_N42
\REGISTER_FILE|Mux63~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux63~1_combout\ = ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R3\(0) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R2\(0) ) ) 
-- ) # ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R1\(0) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \DATA_I[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R1\(0),
	datab => \REGISTER_FILE|ALT_INV_R2\(0),
	datac => \ALT_INV_DATA_I[0]~input_o\,
	datad => \REGISTER_FILE|ALT_INV_R3\(0),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux63~1_combout\);

-- Location: FF_X73_Y1_N26
\REGISTER_FILE|R5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux7~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R5[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R5\(0));

-- Location: MLABCELL_X72_Y3_N48
\REGISTER_FILE|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux31~0_combout\ = ( \SHIFTER_FILE|Mux7~0_combout\ & ( \MICROCODE_ROM_FILE|Mux6~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux7~0_combout\,
	combout => \REGISTER_FILE|Mux31~0_combout\);

-- Location: FF_X72_Y3_N50
\REGISTER_FILE|R4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \REGISTER_FILE|Mux31~0_combout\,
	ena => \SEGEMENT_D_FILE_1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R4\(0));

-- Location: FF_X73_Y3_N2
\REGISTER_FILE|R7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux23~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R7[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R7\(0));

-- Location: FF_X71_Y3_N5
\REGISTER_FILE|R6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux47~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R6[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R6\(0));

-- Location: LABCELL_X73_Y1_N27
\REGISTER_FILE|Mux63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux63~0_combout\ = ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R7\(0) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R6\(0) ) ) 
-- ) # ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R5\(0) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R4\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R5\(0),
	datab => \REGISTER_FILE|ALT_INV_R4\(0),
	datac => \REGISTER_FILE|ALT_INV_R7\(0),
	datad => \REGISTER_FILE|ALT_INV_R6\(0),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux63~0_combout\);

-- Location: LABCELL_X73_Y1_N39
\REGISTER_FILE|Mux63~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux63~2_combout\ = ( \REGISTER_FILE|Mux63~0_combout\ & ( \MICROCODE_ROM_FILE|Mux0~0_combout\ ) ) # ( \REGISTER_FILE|Mux63~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux0~0_combout\ & ( \REGISTER_FILE|Mux63~1_combout\ ) ) ) # ( 
-- !\REGISTER_FILE|Mux63~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux0~0_combout\ & ( \REGISTER_FILE|Mux63~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux63~1_combout\,
	datae => \REGISTER_FILE|ALT_INV_Mux63~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	combout => \REGISTER_FILE|Mux63~2_combout\);

-- Location: LABCELL_X73_Y4_N0
\ALU_FILE|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Add0~34_cout\ = CARRY(( (\MICROCODE_ROM_FILE|Mux10~1_combout\ & \MICROCODE_ROM_FILE|Mux12~2_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	cin => GND,
	cout => \ALU_FILE|Add0~34_cout\);

-- Location: LABCELL_X73_Y4_N3
\ALU_FILE|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Add0~5_sumout\ = SUM(( \REGISTER_FILE|Mux63~2_combout\ ) + ( (!\MICROCODE_ROM_FILE|Mux11~1_combout\ & ((!\MICROCODE_ROM_FILE|Mux10~1_combout\) # (!\REGISTER_FILE|Mux71~1_combout\))) # (\MICROCODE_ROM_FILE|Mux11~1_combout\ & 
-- ((\REGISTER_FILE|Mux71~1_combout\) # (\MICROCODE_ROM_FILE|Mux10~1_combout\))) ) + ( \ALU_FILE|Add0~34_cout\ ))
-- \ALU_FILE|Add0~6\ = CARRY(( \REGISTER_FILE|Mux63~2_combout\ ) + ( (!\MICROCODE_ROM_FILE|Mux11~1_combout\ & ((!\MICROCODE_ROM_FILE|Mux10~1_combout\) # (!\REGISTER_FILE|Mux71~1_combout\))) # (\MICROCODE_ROM_FILE|Mux11~1_combout\ & 
-- ((\REGISTER_FILE|Mux71~1_combout\) # (\MICROCODE_ROM_FILE|Mux10~1_combout\))) ) + ( \ALU_FILE|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000100100001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux71~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux63~2_combout\,
	cin => \ALU_FILE|Add0~34_cout\,
	sumout => \ALU_FILE|Add0~5_sumout\,
	cout => \ALU_FILE|Add0~6\);

-- Location: LABCELL_X73_Y4_N6
\ALU_FILE|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Add0~1_sumout\ = SUM(( (!\REGISTER_FILE|Mux70~1_combout\ & ((\MICROCODE_ROM_FILE|Mux10~1_combout\))) # (\REGISTER_FILE|Mux70~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\)) ) + ( \REGISTER_FILE|Mux62~2_combout\ ) + ( \ALU_FILE|Add0~6\ ))
-- \ALU_FILE|Add0~2\ = CARRY(( (!\REGISTER_FILE|Mux70~1_combout\ & ((\MICROCODE_ROM_FILE|Mux10~1_combout\))) # (\REGISTER_FILE|Mux70~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\)) ) + ( \REGISTER_FILE|Mux62~2_combout\ ) + ( \ALU_FILE|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux62~2_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux70~1_combout\,
	cin => \ALU_FILE|Add0~6\,
	sumout => \ALU_FILE|Add0~1_sumout\,
	cout => \ALU_FILE|Add0~2\);

-- Location: MLABCELL_X72_Y4_N33
\ALU_FILE|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux24~0_combout\ = ( \MICROCODE_ROM_FILE|Mux12~2_combout\ & ( \MICROCODE_ROM_FILE|Mux11~1_combout\ & ( \REGISTER_FILE|Mux62~2_combout\ ) ) ) # ( !\MICROCODE_ROM_FILE|Mux12~2_combout\ & ( \MICROCODE_ROM_FILE|Mux11~1_combout\ & ( 
-- \ALU_FILE|Add0~1_sumout\ ) ) ) # ( \MICROCODE_ROM_FILE|Mux12~2_combout\ & ( !\MICROCODE_ROM_FILE|Mux11~1_combout\ & ( \ALU_FILE|Add0~1_sumout\ ) ) ) # ( !\MICROCODE_ROM_FILE|Mux12~2_combout\ & ( !\MICROCODE_ROM_FILE|Mux11~1_combout\ & ( 
-- \REGISTER_FILE|Mux62~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Add0~1_sumout\,
	datad => \REGISTER_FILE|ALT_INV_Mux62~2_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	combout => \ALU_FILE|Mux24~0_combout\);

-- Location: LABCELL_X71_Y3_N6
\ALU_FILE|F_int[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_int\(1) = ( \ALU_FILE|F_int\(1) & ( (\ALU_FILE|Mux23~0_combout\) # (\ALU_FILE|Mux24~0_combout\) ) ) # ( !\ALU_FILE|F_int\(1) & ( (\ALU_FILE|Mux24~0_combout\ & !\ALU_FILE|Mux23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FILE|ALT_INV_Mux24~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux23~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(1),
	combout => \ALU_FILE|F_int\(1));

-- Location: LABCELL_X70_Y4_N12
\SHIFTER_FILE|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux9~0_combout\ = ( \MICROCODE_ROM_FILE|Mux9~1_combout\ & ( \ALU_FILE|F_int\(1) & ( (!\ALU_FILE|Mux2~0_combout\ & (\MICROCODE_ROM_FILE|Mux15~0_combout\ & (\ALU_FILE|F_log\(1) & \MICROCODE_ROM_FILE|Mux13~1_combout\))) ) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux9~1_combout\ & ( \ALU_FILE|F_int\(1) & ( (!\ALU_FILE|Mux2~0_combout\ & (\MICROCODE_ROM_FILE|Mux15~0_combout\ & \MICROCODE_ROM_FILE|Mux13~1_combout\)) ) ) ) # ( \MICROCODE_ROM_FILE|Mux9~1_combout\ & ( !\ALU_FILE|F_int\(1) & ( 
-- (!\ALU_FILE|Mux2~0_combout\ & (\MICROCODE_ROM_FILE|Mux15~0_combout\ & (\ALU_FILE|F_log\(1) & \MICROCODE_ROM_FILE|Mux13~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000001000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux15~0_combout\,
	datac => \ALU_FILE|ALT_INV_F_log\(1),
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux13~1_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(1),
	combout => \SHIFTER_FILE|Mux9~0_combout\);

-- Location: LABCELL_X70_Y4_N45
\SHIFTER_FILE|temp[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|temp\(0) = ( \SHIFTER_FILE|temp\(0) & ( \SHIFTER_FILE|Mux9~0_combout\ ) ) # ( !\SHIFTER_FILE|temp\(0) & ( \SHIFTER_FILE|Mux9~0_combout\ & ( \SHIFTER_FILE|Mux2~3_combout\ ) ) ) # ( \SHIFTER_FILE|temp\(0) & ( !\SHIFTER_FILE|Mux9~0_combout\ & ( 
-- !\SHIFTER_FILE|Mux2~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \SHIFTER_FILE|ALT_INV_Mux2~3_combout\,
	datae => \SHIFTER_FILE|ALT_INV_temp\(0),
	dataf => \SHIFTER_FILE|ALT_INV_Mux9~0_combout\,
	combout => \SHIFTER_FILE|temp\(0));

-- Location: LABCELL_X71_Y3_N48
\SHIFTER_FILE|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux7~2_combout\ = ( \MICROCODE_ROM_FILE|Mux9~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\ & ((\MICROCODE_ROM_FILE|Mux12~0_combout\))) # (\MICROCODE_ROM_FILE|Mux14~0_combout\ & (!\CAR[1]~reg0_q\)) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux9~0_combout\ & ( (!\CAR[1]~reg0_q\ & \MICROCODE_ROM_FILE|Mux14~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[1]~reg0_q\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\,
	combout => \SHIFTER_FILE|Mux7~2_combout\);

-- Location: LABCELL_X71_Y3_N0
\SHIFTER_FILE|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux7~3_combout\ = ( \MICROCODE_ROM_FILE|Mux13~0_combout\ & ( \MICROCODE_ROM_FILE|Mux14~0_combout\ & ( (!\SHIFTER_FILE|Mux7~2_combout\) # (\MICROCODE_ROM_FILE|Mux12~0_combout\) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux13~0_combout\ & ( 
-- \MICROCODE_ROM_FILE|Mux14~0_combout\ & ( !\SHIFTER_FILE|Mux7~2_combout\ ) ) ) # ( \MICROCODE_ROM_FILE|Mux13~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux14~0_combout\ & ( (!\ALU_FILE|Mux2~0_combout\ & ((!\SHIFTER_FILE|Mux7~2_combout\) # (\ALU_FILE|F_log\(0)))) 
-- ) ) ) # ( !\MICROCODE_ROM_FILE|Mux13~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux14~0_combout\ & ( (!\ALU_FILE|Mux2~0_combout\ & ((!\SHIFTER_FILE|Mux7~2_combout\) # (\ALU_FILE|F_log\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001100100010001100110010101010101010101010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux7~2_combout\,
	datab => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_log\(0),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	combout => \SHIFTER_FILE|Mux7~3_combout\);

-- Location: LABCELL_X74_Y3_N18
\ALU_FILE|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux22~0_combout\ = ( \ALU_FILE|Add0~5_sumout\ & ( (!\MICROCODE_ROM_FILE|Mux12~2_combout\ $ (!\MICROCODE_ROM_FILE|Mux11~1_combout\)) # (\REGISTER_FILE|Mux63~2_combout\) ) ) # ( !\ALU_FILE|Add0~5_sumout\ & ( (\REGISTER_FILE|Mux63~2_combout\ & 
-- (!\MICROCODE_ROM_FILE|Mux12~2_combout\ $ (\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001100111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux63~2_combout\,
	dataf => \ALU_FILE|ALT_INV_Add0~5_sumout\,
	combout => \ALU_FILE|Mux22~0_combout\);

-- Location: LABCELL_X74_Y3_N24
\ALU_FILE|F_int[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_int\(0) = ( \ALU_FILE|F_int\(0) & ( (\ALU_FILE|Mux23~0_combout\) # (\ALU_FILE|Mux22~0_combout\) ) ) # ( !\ALU_FILE|F_int\(0) & ( (\ALU_FILE|Mux22~0_combout\ & !\ALU_FILE|Mux23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Mux22~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux23~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(0),
	combout => \ALU_FILE|F_int\(0));

-- Location: LABCELL_X71_Y3_N30
\SHIFTER_FILE|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux7~4_combout\ = ( \SHIFTER_FILE|Mux7~2_combout\ & ( \SHIFTER_FILE|Mux7~3_combout\ ) ) # ( !\SHIFTER_FILE|Mux7~2_combout\ & ( (\SHIFTER_FILE|Mux7~3_combout\ & ((!\MICROCODE_ROM_FILE|Mux14~0_combout\ & ((\ALU_FILE|F_int\(0)))) # 
-- (\MICROCODE_ROM_FILE|Mux14~0_combout\ & (\ALU_FILE|Mux7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000000010101000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux7~3_combout\,
	datab => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_int\(0),
	dataf => \SHIFTER_FILE|ALT_INV_Mux7~2_combout\,
	combout => \SHIFTER_FILE|Mux7~4_combout\);

-- Location: FF_X73_Y2_N50
\REGISTER_FILE|R5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux0~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R5[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R5\(7));

-- Location: LABCELL_X74_Y3_N3
\REGISTER_FILE|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux16~0_combout\ = ( \SHIFTER_FILE|Mux0~0_combout\ & ( \MICROCODE_ROM_FILE|Mux7~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux0~0_combout\,
	combout => \REGISTER_FILE|Mux16~0_combout\);

-- Location: FF_X73_Y3_N47
\REGISTER_FILE|R7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux16~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R7[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R7\(7));

-- Location: LABCELL_X74_Y3_N36
\REGISTER_FILE|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux24~0_combout\ = ( \SHIFTER_FILE|Mux0~0_combout\ & ( \MICROCODE_ROM_FILE|Mux6~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux0~0_combout\,
	combout => \REGISTER_FILE|Mux24~0_combout\);

-- Location: FF_X74_Y3_N38
\REGISTER_FILE|R4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \REGISTER_FILE|Mux24~0_combout\,
	ena => \SEGEMENT_D_FILE_1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R4\(7));

-- Location: FF_X73_Y2_N43
\REGISTER_FILE|R6[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux16~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R6[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R6\(7));

-- Location: LABCELL_X73_Y2_N42
\REGISTER_FILE|Mux56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux56~0_combout\ = ( \REGISTER_FILE|R6\(7) & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux2~0_combout\) # (\REGISTER_FILE|R7\(7)) ) ) ) # ( !\REGISTER_FILE|R6\(7) & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( 
-- (\REGISTER_FILE|R7\(7) & \MICROCODE_ROM_FILE|Mux2~0_combout\) ) ) ) # ( \REGISTER_FILE|R6\(7) & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux2~0_combout\ & ((\REGISTER_FILE|R4\(7)))) # (\MICROCODE_ROM_FILE|Mux2~0_combout\ & 
-- (\REGISTER_FILE|R5\(7))) ) ) ) # ( !\REGISTER_FILE|R6\(7) & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux2~0_combout\ & ((\REGISTER_FILE|R4\(7)))) # (\MICROCODE_ROM_FILE|Mux2~0_combout\ & (\REGISTER_FILE|R5\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R5\(7),
	datab => \REGISTER_FILE|ALT_INV_R7\(7),
	datac => \REGISTER_FILE|ALT_INV_R4\(7),
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	datae => \REGISTER_FILE|ALT_INV_R6\(7),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux56~0_combout\);

-- Location: IOIBUF_X4_Y0_N1
\DATA_I[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_I(7),
	o => \DATA_I[7]~input_o\);

-- Location: LABCELL_X75_Y3_N24
\REGISTER_FILE|R2[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|R2[7]~feeder_combout\ = ( \REGISTER_FILE|Mux16~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGISTER_FILE|ALT_INV_Mux16~0_combout\,
	combout => \REGISTER_FILE|R2[7]~feeder_combout\);

-- Location: FF_X75_Y3_N26
\REGISTER_FILE|R2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \REGISTER_FILE|R2[7]~feeder_combout\,
	ena => \SEGEMENT_D_FILE_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R2\(7));

-- Location: FF_X74_Y3_N47
\REGISTER_FILE|R3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux16~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R3\(7));

-- Location: LABCELL_X73_Y2_N54
\REGISTER_FILE|Mux56~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux56~1_combout\ = ( \REGISTER_FILE|R1\(7) & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux2~0_combout\ & (\REGISTER_FILE|R2\(7))) # (\MICROCODE_ROM_FILE|Mux2~0_combout\ & ((\REGISTER_FILE|R3\(7)))) ) ) ) # ( 
-- !\REGISTER_FILE|R1\(7) & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux2~0_combout\ & (\REGISTER_FILE|R2\(7))) # (\MICROCODE_ROM_FILE|Mux2~0_combout\ & ((\REGISTER_FILE|R3\(7)))) ) ) ) # ( \REGISTER_FILE|R1\(7) & ( 
-- !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux2~0_combout\) # (\DATA_I[7]~input_o\) ) ) ) # ( !\REGISTER_FILE|R1\(7) & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (\DATA_I[7]~input_o\ & !\MICROCODE_ROM_FILE|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_I[7]~input_o\,
	datab => \REGISTER_FILE|ALT_INV_R2\(7),
	datac => \REGISTER_FILE|ALT_INV_R3\(7),
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	datae => \REGISTER_FILE|ALT_INV_R1\(7),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux56~1_combout\);

-- Location: LABCELL_X73_Y2_N18
\REGISTER_FILE|Mux56~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux56~2_combout\ = ( \MICROCODE_ROM_FILE|Mux0~0_combout\ & ( \REGISTER_FILE|Mux56~0_combout\ ) ) # ( !\MICROCODE_ROM_FILE|Mux0~0_combout\ & ( \REGISTER_FILE|Mux56~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGISTER_FILE|ALT_INV_Mux56~0_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux56~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	combout => \REGISTER_FILE|Mux56~2_combout\);

-- Location: FF_X72_Y2_N8
\REGISTER_FILE|R5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux2~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R5[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R5\(5));

-- Location: LABCELL_X71_Y4_N9
\REGISTER_FILE|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux18~0_combout\ = ( \ALU_FILE|Mux2~2_combout\ & ( \ALU_FILE|Mux3~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux7~1_combout\ & ((!\SHIFTER_FILE|Mux1~0_combout\) # (\SHIFTER_FILE|Mux2~1_combout\))) ) ) ) # ( !\ALU_FILE|Mux2~2_combout\ & ( 
-- \ALU_FILE|Mux3~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux7~1_combout\ & (((!\SHIFTER_FILE|Mux2~0_combout\ & !\SHIFTER_FILE|Mux1~0_combout\)) # (\SHIFTER_FILE|Mux2~1_combout\))) ) ) ) # ( \ALU_FILE|Mux2~2_combout\ & ( !\ALU_FILE|Mux3~1_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux7~1_combout\ & (((\SHIFTER_FILE|Mux2~0_combout\ & !\SHIFTER_FILE|Mux1~0_combout\)) # (\SHIFTER_FILE|Mux2~1_combout\))) ) ) ) # ( !\ALU_FILE|Mux2~2_combout\ & ( !\ALU_FILE|Mux3~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux7~1_combout\ & 
-- \SHIFTER_FILE|Mux2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000100000101010101000000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux2~1_combout\,
	datae => \ALU_FILE|ALT_INV_Mux2~2_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux3~1_combout\,
	combout => \REGISTER_FILE|Mux18~0_combout\);

-- Location: FF_X72_Y4_N17
\REGISTER_FILE|R7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux18~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R7[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R7\(5));

-- Location: LABCELL_X75_Y4_N39
\REGISTER_FILE|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux26~0_combout\ = ( \SHIFTER_FILE|Mux2~1_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( \MICROCODE_ROM_FILE|Mux6~1_combout\ ) ) ) # ( \SHIFTER_FILE|Mux2~1_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( \MICROCODE_ROM_FILE|Mux6~1_combout\ 
-- ) ) ) # ( !\SHIFTER_FILE|Mux2~1_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux6~1_combout\ & ((!\SHIFTER_FILE|Mux2~0_combout\ & ((\ALU_FILE|Mux3~1_combout\))) # (\SHIFTER_FILE|Mux2~0_combout\ & (\ALU_FILE|Mux2~2_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux2~2_combout\,
	datab => \ALU_FILE|ALT_INV_Mux3~1_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux2~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux26~0_combout\);

-- Location: FF_X75_Y4_N41
\REGISTER_FILE|R4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \REGISTER_FILE|Mux26~0_combout\,
	ena => \SEGEMENT_D_FILE_1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R4\(5));

-- Location: FF_X72_Y4_N2
\REGISTER_FILE|R6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux18~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R6[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R6\(5));

-- Location: LABCELL_X73_Y2_N36
\REGISTER_FILE|Mux58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux58~0_combout\ = ( \REGISTER_FILE|R6\(5) & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & (\REGISTER_FILE|R5\(5))) # (\MICROCODE_ROM_FILE|Mux1~0_combout\ & ((\REGISTER_FILE|R7\(5)))) ) ) ) # ( 
-- !\REGISTER_FILE|R6\(5) & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & (\REGISTER_FILE|R5\(5))) # (\MICROCODE_ROM_FILE|Mux1~0_combout\ & ((\REGISTER_FILE|R7\(5)))) ) ) ) # ( \REGISTER_FILE|R6\(5) & ( 
-- !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux1~0_combout\) # (\REGISTER_FILE|R4\(5)) ) ) ) # ( !\REGISTER_FILE|R6\(5) & ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (\REGISTER_FILE|R4\(5) & !\MICROCODE_ROM_FILE|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R5\(5),
	datab => \REGISTER_FILE|ALT_INV_R7\(5),
	datac => \REGISTER_FILE|ALT_INV_R4\(5),
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	datae => \REGISTER_FILE|ALT_INV_R6\(5),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	combout => \REGISTER_FILE|Mux58~0_combout\);

-- Location: IOIBUF_X16_Y0_N18
\DATA_I[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_I(5),
	o => \DATA_I[5]~input_o\);

-- Location: FF_X71_Y4_N8
\REGISTER_FILE|R3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux18~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R3\(5));

-- Location: FF_X73_Y2_N29
\REGISTER_FILE|R2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux18~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R2\(5));

-- Location: LABCELL_X73_Y2_N0
\REGISTER_FILE|Mux58~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux58~1_combout\ = ( \REGISTER_FILE|R2\(5) & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & (\REGISTER_FILE|R1\(5))) # (\MICROCODE_ROM_FILE|Mux1~0_combout\ & ((\REGISTER_FILE|R3\(5)))) ) ) ) # ( 
-- !\REGISTER_FILE|R2\(5) & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & (\REGISTER_FILE|R1\(5))) # (\MICROCODE_ROM_FILE|Mux1~0_combout\ & ((\REGISTER_FILE|R3\(5)))) ) ) ) # ( \REGISTER_FILE|R2\(5) & ( 
-- !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (\DATA_I[5]~input_o\) # (\MICROCODE_ROM_FILE|Mux1~0_combout\) ) ) ) # ( !\REGISTER_FILE|R2\(5) & ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & \DATA_I[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_DATA_I[5]~input_o\,
	datac => \REGISTER_FILE|ALT_INV_R1\(5),
	datad => \REGISTER_FILE|ALT_INV_R3\(5),
	datae => \REGISTER_FILE|ALT_INV_R2\(5),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	combout => \REGISTER_FILE|Mux58~1_combout\);

-- Location: LABCELL_X73_Y2_N6
\REGISTER_FILE|Mux58~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux58~2_combout\ = ( \MICROCODE_ROM_FILE|Mux0~0_combout\ & ( \REGISTER_FILE|Mux58~0_combout\ ) ) # ( !\MICROCODE_ROM_FILE|Mux0~0_combout\ & ( \REGISTER_FILE|Mux58~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REGISTER_FILE|ALT_INV_Mux58~0_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux58~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	combout => \REGISTER_FILE|Mux58~2_combout\);

-- Location: LABCELL_X71_Y1_N24
\REGISTER_FILE|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux3~0_combout\ = ( \SHIFTER_FILE|Mux1~0_combout\ & ( \SHIFTER_FILE|Mux2~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & \SHIFTER_FILE|Mux3~0_combout\) ) ) ) # ( !\SHIFTER_FILE|Mux1~0_combout\ & ( \SHIFTER_FILE|Mux2~0_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux8~1_combout\ & ((\ALU_FILE|Mux3~1_combout\) # (\SHIFTER_FILE|Mux3~0_combout\))) ) ) ) # ( \SHIFTER_FILE|Mux1~0_combout\ & ( !\SHIFTER_FILE|Mux2~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & \SHIFTER_FILE|Mux3~0_combout\) ) 
-- ) ) # ( !\SHIFTER_FILE|Mux1~0_combout\ & ( !\SHIFTER_FILE|Mux2~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & ((\ALU_FILE|Mux4~1_combout\) # (\SHIFTER_FILE|Mux3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010001000100010101000101010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux3~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux3~1_combout\,
	datad => \ALU_FILE|ALT_INV_Mux4~1_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	combout => \REGISTER_FILE|Mux3~0_combout\);

-- Location: FF_X71_Y1_N50
\REGISTER_FILE|R1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux3~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R1\(4));

-- Location: FF_X71_Y4_N2
\REGISTER_FILE|R3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux19~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R3\(4));

-- Location: FF_X71_Y4_N47
\REGISTER_FILE|R7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux19~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R7[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R7\(4));

-- Location: FF_X72_Y1_N47
\REGISTER_FILE|R5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux3~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R5[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R5\(4));

-- Location: FF_X72_Y1_N2
\REGISTER_FILE|R6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux19~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R6[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R6\(4));

-- Location: MLABCELL_X72_Y1_N6
\REGISTER_FILE|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux27~0_combout\ = ( \SHIFTER_FILE|Mux2~0_combout\ & ( \ALU_FILE|Mux4~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux6~1_combout\ & (((\ALU_FILE|Mux3~1_combout\ & !\SHIFTER_FILE|Mux1~0_combout\)) # (\SHIFTER_FILE|Mux3~0_combout\))) ) ) ) # ( 
-- !\SHIFTER_FILE|Mux2~0_combout\ & ( \ALU_FILE|Mux4~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux6~1_combout\ & ((!\SHIFTER_FILE|Mux1~0_combout\) # (\SHIFTER_FILE|Mux3~0_combout\))) ) ) ) # ( \SHIFTER_FILE|Mux2~0_combout\ & ( !\ALU_FILE|Mux4~1_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux6~1_combout\ & (((\ALU_FILE|Mux3~1_combout\ & !\SHIFTER_FILE|Mux1~0_combout\)) # (\SHIFTER_FILE|Mux3~0_combout\))) ) ) ) # ( !\SHIFTER_FILE|Mux2~0_combout\ & ( !\ALU_FILE|Mux4~1_combout\ & ( (\SHIFTER_FILE|Mux3~0_combout\ & 
-- \MICROCODE_ROM_FILE|Mux6~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000100111100000000110011110000000001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux3~1_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux3~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux4~1_combout\,
	combout => \REGISTER_FILE|Mux27~0_combout\);

-- Location: FF_X72_Y1_N8
\REGISTER_FILE|R4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \REGISTER_FILE|Mux27~0_combout\,
	ena => \SEGEMENT_D_FILE_1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R4\(4));

-- Location: MLABCELL_X72_Y1_N18
\REGISTER_FILE|Mux67~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux67~2_combout\ = ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R7\(4) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R5\(4) ) ) 
-- ) # ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R6\(4) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R4\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R7\(4),
	datab => \REGISTER_FILE|ALT_INV_R5\(4),
	datac => \REGISTER_FILE|ALT_INV_R6\(4),
	datad => \REGISTER_FILE|ALT_INV_R4\(4),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	combout => \REGISTER_FILE|Mux67~2_combout\);

-- Location: MLABCELL_X72_Y1_N12
\REGISTER_FILE|Mux67~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux67~3_combout\ = ( \REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|Mux67~2_combout\ & ( (!\REGISTER_FILE|Mux67~0_combout\ & ((\REGISTER_FILE|R3\(4)))) # (\REGISTER_FILE|Mux67~0_combout\ & (\REGISTER_FILE|R2\(4))) ) ) ) # ( 
-- !\REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|Mux67~2_combout\ & ( (\REGISTER_FILE|R1\(4)) # (\REGISTER_FILE|Mux67~0_combout\) ) ) ) # ( \REGISTER_FILE|Mux67~1_combout\ & ( !\REGISTER_FILE|Mux67~2_combout\ & ( (!\REGISTER_FILE|Mux67~0_combout\ & 
-- ((\REGISTER_FILE|R3\(4)))) # (\REGISTER_FILE|Mux67~0_combout\ & (\REGISTER_FILE|R2\(4))) ) ) ) # ( !\REGISTER_FILE|Mux67~1_combout\ & ( !\REGISTER_FILE|Mux67~2_combout\ & ( (!\REGISTER_FILE|Mux67~0_combout\ & \REGISTER_FILE|R1\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux67~0_combout\,
	datab => \REGISTER_FILE|ALT_INV_R2\(4),
	datac => \REGISTER_FILE|ALT_INV_R1\(4),
	datad => \REGISTER_FILE|ALT_INV_R3\(4),
	datae => \REGISTER_FILE|ALT_INV_Mux67~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux67~2_combout\,
	combout => \REGISTER_FILE|Mux67~3_combout\);

-- Location: LABCELL_X71_Y4_N57
\REGISTER_FILE|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux4~0_combout\ = ( \SHIFTER_FILE|Mux1~0_combout\ & ( \SHIFTER_FILE|Mux2~0_combout\ & ( (\SHIFTER_FILE|Mux4~0_combout\ & \MICROCODE_ROM_FILE|Mux8~1_combout\) ) ) ) # ( !\SHIFTER_FILE|Mux1~0_combout\ & ( \SHIFTER_FILE|Mux2~0_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux8~1_combout\ & ((\ALU_FILE|Mux4~1_combout\) # (\SHIFTER_FILE|Mux4~0_combout\))) ) ) ) # ( \SHIFTER_FILE|Mux1~0_combout\ & ( !\SHIFTER_FILE|Mux2~0_combout\ & ( (\SHIFTER_FILE|Mux4~0_combout\ & \MICROCODE_ROM_FILE|Mux8~1_combout\) ) 
-- ) ) # ( !\SHIFTER_FILE|Mux1~0_combout\ & ( !\SHIFTER_FILE|Mux2~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & ((\ALU_FILE|Mux5~1_combout\) # (\SHIFTER_FILE|Mux4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010001000100010011000100110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux4~0_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	datac => \ALU_FILE|ALT_INV_Mux4~1_combout\,
	datad => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	combout => \REGISTER_FILE|Mux4~0_combout\);

-- Location: FF_X71_Y4_N56
\REGISTER_FILE|R1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux4~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R1\(3));

-- Location: FF_X71_Y3_N35
\REGISTER_FILE|R6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux20~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R6[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R6\(3));

-- Location: MLABCELL_X72_Y4_N48
\REGISTER_FILE|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux28~0_combout\ = ( \SHIFTER_FILE|Mux2~0_combout\ & ( \ALU_FILE|Mux4~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux6~1_combout\ & ((!\SHIFTER_FILE|Mux1~0_combout\) # (\SHIFTER_FILE|Mux4~0_combout\))) ) ) ) # ( !\SHIFTER_FILE|Mux2~0_combout\ & ( 
-- \ALU_FILE|Mux4~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux6~1_combout\ & (((\ALU_FILE|Mux5~1_combout\ & !\SHIFTER_FILE|Mux1~0_combout\)) # (\SHIFTER_FILE|Mux4~0_combout\))) ) ) ) # ( \SHIFTER_FILE|Mux2~0_combout\ & ( !\ALU_FILE|Mux4~1_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux6~1_combout\ & \SHIFTER_FILE|Mux4~0_combout\) ) ) ) # ( !\SHIFTER_FILE|Mux2~0_combout\ & ( !\ALU_FILE|Mux4~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux6~1_combout\ & (((\ALU_FILE|Mux5~1_combout\ & !\SHIFTER_FILE|Mux1~0_combout\)) # 
-- (\SHIFTER_FILE|Mux4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000101000001010000010100010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux4~0_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux4~1_combout\,
	combout => \REGISTER_FILE|Mux28~0_combout\);

-- Location: FF_X72_Y4_N50
\REGISTER_FILE|R4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \REGISTER_FILE|Mux28~0_combout\,
	ena => \SEGEMENT_D_FILE_1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R4\(3));

-- Location: FF_X73_Y4_N43
\REGISTER_FILE|R5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux4~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R5[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R5\(3));

-- Location: MLABCELL_X72_Y4_N45
\REGISTER_FILE|Mux68~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux68~0_combout\ = ( \REGISTER_FILE|R5\(3) & ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux5~1_combout\ & (\REGISTER_FILE|R6\(3))) # (\MICROCODE_ROM_FILE|Mux5~1_combout\ & ((\REGISTER_FILE|R7\(3)))) ) ) ) # ( 
-- !\REGISTER_FILE|R5\(3) & ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux5~1_combout\ & (\REGISTER_FILE|R6\(3))) # (\MICROCODE_ROM_FILE|Mux5~1_combout\ & ((\REGISTER_FILE|R7\(3)))) ) ) ) # ( \REGISTER_FILE|R5\(3) & ( 
-- !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (\REGISTER_FILE|R4\(3)) # (\MICROCODE_ROM_FILE|Mux5~1_combout\) ) ) ) # ( !\REGISTER_FILE|R5\(3) & ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux5~1_combout\ & \REGISTER_FILE|R4\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R6\(3),
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_R7\(3),
	datad => \REGISTER_FILE|ALT_INV_R4\(3),
	datae => \REGISTER_FILE|ALT_INV_R5\(3),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	combout => \REGISTER_FILE|Mux68~0_combout\);

-- Location: FF_X73_Y4_N56
\REGISTER_FILE|R2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux20~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R2\(3));

-- Location: FF_X72_Y3_N14
\REGISTER_FILE|R3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux20~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R3\(3));

-- Location: LABCELL_X73_Y4_N30
\REGISTER_FILE|Mux68~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux68~1_combout\ = ( \REGISTER_FILE|Mux67~0_combout\ & ( \REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|R2\(3) ) ) ) # ( !\REGISTER_FILE|Mux67~0_combout\ & ( \REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|R3\(3) ) ) ) # ( 
-- \REGISTER_FILE|Mux67~0_combout\ & ( !\REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|Mux68~0_combout\ ) ) ) # ( !\REGISTER_FILE|Mux67~0_combout\ & ( !\REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|R1\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R1\(3),
	datab => \REGISTER_FILE|ALT_INV_Mux68~0_combout\,
	datac => \REGISTER_FILE|ALT_INV_R2\(3),
	datad => \REGISTER_FILE|ALT_INV_R3\(3),
	datae => \REGISTER_FILE|ALT_INV_Mux67~0_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux67~1_combout\,
	combout => \REGISTER_FILE|Mux68~1_combout\);

-- Location: FF_X71_Y1_N56
\REGISTER_FILE|R2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux21~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R2\(2));

-- Location: LABCELL_X70_Y3_N36
\REGISTER_FILE|Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux37~0_combout\ = ( \SHIFTER_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux8~1_combout\) # (\SHIFTER_FILE|Mux5~0_combout\) ) ) ) # ( !\SHIFTER_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( 
-- (!\MICROCODE_ROM_FILE|Mux8~1_combout\) # (\SHIFTER_FILE|Mux5~0_combout\) ) ) ) # ( \SHIFTER_FILE|Mux2~0_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( ((!\MICROCODE_ROM_FILE|Mux8~1_combout\) # (\SHIFTER_FILE|Mux5~0_combout\)) # 
-- (\ALU_FILE|Mux5~1_combout\) ) ) ) # ( !\SHIFTER_FILE|Mux2~0_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux8~1_combout\) # ((\SHIFTER_FILE|Mux5~0_combout\) # (\ALU_FILE|Mux6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111110111011111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	datac => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux5~0_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux37~0_combout\);

-- Location: FF_X70_Y3_N38
\REGISTER_FILE|R5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \REGISTER_FILE|Mux37~0_combout\,
	ena => \REGISTER_FILE|R5[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R5\(2));

-- Location: MLABCELL_X72_Y4_N54
\REGISTER_FILE|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux29~0_combout\ = ( \SHIFTER_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux5~0_combout\ ) ) # ( !\SHIFTER_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux5~0_combout\ ) ) # ( \SHIFTER_FILE|Mux2~0_combout\ & ( !\SHIFTER_FILE|Mux5~0_combout\ & ( 
-- (!\MICROCODE_ROM_FILE|Mux6~1_combout\) # ((\ALU_FILE|Mux5~1_combout\ & !\SHIFTER_FILE|Mux1~0_combout\)) ) ) ) # ( !\SHIFTER_FILE|Mux2~0_combout\ & ( !\SHIFTER_FILE|Mux5~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux6~1_combout\) # ((\ALU_FILE|Mux6~1_combout\ & 
-- !\SHIFTER_FILE|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101010101110111010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datac => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux5~0_combout\,
	combout => \REGISTER_FILE|Mux29~0_combout\);

-- Location: FF_X72_Y4_N56
\REGISTER_FILE|R4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \REGISTER_FILE|Mux29~0_combout\,
	ena => \SEGEMENT_D_FILE_1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R4\(2));

-- Location: MLABCELL_X72_Y4_N27
\REGISTER_FILE|Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux45~0_combout\ = ( \SHIFTER_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux5~0_combout\ ) ) # ( !\SHIFTER_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux5~0_combout\ ) ) # ( \SHIFTER_FILE|Mux2~0_combout\ & ( !\SHIFTER_FILE|Mux5~0_combout\ & ( 
-- (!\MICROCODE_ROM_FILE|Mux7~1_combout\) # ((!\SHIFTER_FILE|Mux1~0_combout\ & \ALU_FILE|Mux5~1_combout\)) ) ) ) # ( !\SHIFTER_FILE|Mux2~0_combout\ & ( !\SHIFTER_FILE|Mux5~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux7~1_combout\) # ((\ALU_FILE|Mux6~1_combout\ & 
-- !\SHIFTER_FILE|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101000100111111110000110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux5~0_combout\,
	combout => \REGISTER_FILE|Mux45~0_combout\);

-- Location: FF_X72_Y4_N38
\REGISTER_FILE|R6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux45~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R6[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R6\(2));

-- Location: FF_X72_Y4_N26
\REGISTER_FILE|R7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux45~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R7[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R7\(2));

-- Location: LABCELL_X73_Y3_N42
\REGISTER_FILE|Mux69~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux69~0_combout\ = ( \REGISTER_FILE|R7\(2) & ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (\REGISTER_FILE|R6\(2)) # (\MICROCODE_ROM_FILE|Mux5~1_combout\) ) ) ) # ( !\REGISTER_FILE|R7\(2) & ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( 
-- (!\MICROCODE_ROM_FILE|Mux5~1_combout\ & \REGISTER_FILE|R6\(2)) ) ) ) # ( \REGISTER_FILE|R7\(2) & ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux5~1_combout\ & ((\REGISTER_FILE|R4\(2)))) # (\MICROCODE_ROM_FILE|Mux5~1_combout\ & 
-- (\REGISTER_FILE|R5\(2))) ) ) ) # ( !\REGISTER_FILE|R7\(2) & ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux5~1_combout\ & ((\REGISTER_FILE|R4\(2)))) # (\MICROCODE_ROM_FILE|Mux5~1_combout\ & (\REGISTER_FILE|R5\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R5\(2),
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_R4\(2),
	datad => \REGISTER_FILE|ALT_INV_R6\(2),
	datae => \REGISTER_FILE|ALT_INV_R7\(2),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	combout => \REGISTER_FILE|Mux69~0_combout\);

-- Location: LABCELL_X71_Y1_N42
\REGISTER_FILE|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux5~0_combout\ = ( \ALU_FILE|Mux6~1_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & \SHIFTER_FILE|Mux5~0_combout\) ) ) ) # ( !\ALU_FILE|Mux6~1_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux8~1_combout\ & \SHIFTER_FILE|Mux5~0_combout\) ) ) ) # ( \ALU_FILE|Mux6~1_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & (((!\SHIFTER_FILE|Mux2~0_combout\) # (\SHIFTER_FILE|Mux5~0_combout\)) # 
-- (\ALU_FILE|Mux5~1_combout\))) ) ) ) # ( !\ALU_FILE|Mux6~1_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & (((\ALU_FILE|Mux5~1_combout\ & \SHIFTER_FILE|Mux2~0_combout\)) # (\SHIFTER_FILE|Mux5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101010100010101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux5~0_combout\,
	datae => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux5~0_combout\);

-- Location: FF_X71_Y1_N44
\REGISTER_FILE|R1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \REGISTER_FILE|Mux5~0_combout\,
	ena => \SEGEMENT_D_FILE_1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R1\(2));

-- Location: LABCELL_X73_Y3_N48
\REGISTER_FILE|Mux69~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux69~1_combout\ = ( \REGISTER_FILE|Mux67~0_combout\ & ( \REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|R2\(2) ) ) ) # ( !\REGISTER_FILE|Mux67~0_combout\ & ( \REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|R3\(2) ) ) ) # ( 
-- \REGISTER_FILE|Mux67~0_combout\ & ( !\REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|Mux69~0_combout\ ) ) ) # ( !\REGISTER_FILE|Mux67~0_combout\ & ( !\REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|R1\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R2\(2),
	datab => \REGISTER_FILE|ALT_INV_Mux69~0_combout\,
	datac => \REGISTER_FILE|ALT_INV_R1\(2),
	datad => \REGISTER_FILE|ALT_INV_R3\(2),
	datae => \REGISTER_FILE|ALT_INV_Mux67~0_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux67~1_combout\,
	combout => \REGISTER_FILE|Mux69~1_combout\);

-- Location: LABCELL_X73_Y4_N9
\ALU_FILE|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Add0~9_sumout\ = SUM(( \REGISTER_FILE|Mux61~2_combout\ ) + ( (!\REGISTER_FILE|Mux69~1_combout\ & ((\MICROCODE_ROM_FILE|Mux10~1_combout\))) # (\REGISTER_FILE|Mux69~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\)) ) + ( \ALU_FILE|Add0~2\ ))
-- \ALU_FILE|Add0~10\ = CARRY(( \REGISTER_FILE|Mux61~2_combout\ ) + ( (!\REGISTER_FILE|Mux69~1_combout\ & ((\MICROCODE_ROM_FILE|Mux10~1_combout\))) # (\REGISTER_FILE|Mux69~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\)) ) + ( \ALU_FILE|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010101100101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux69~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux61~2_combout\,
	cin => \ALU_FILE|Add0~2\,
	sumout => \ALU_FILE|Add0~9_sumout\,
	cout => \ALU_FILE|Add0~10\);

-- Location: LABCELL_X73_Y4_N12
\ALU_FILE|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Add0~13_sumout\ = SUM(( \REGISTER_FILE|Mux60~2_combout\ ) + ( (!\REGISTER_FILE|Mux68~1_combout\ & (\MICROCODE_ROM_FILE|Mux10~1_combout\)) # (\REGISTER_FILE|Mux68~1_combout\ & ((\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) + ( \ALU_FILE|Add0~10\ ))
-- \ALU_FILE|Add0~14\ = CARRY(( \REGISTER_FILE|Mux60~2_combout\ ) + ( (!\REGISTER_FILE|Mux68~1_combout\ & (\MICROCODE_ROM_FILE|Mux10~1_combout\)) # (\REGISTER_FILE|Mux68~1_combout\ & ((\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) + ( \ALU_FILE|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux60~2_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux68~1_combout\,
	cin => \ALU_FILE|Add0~10\,
	sumout => \ALU_FILE|Add0~13_sumout\,
	cout => \ALU_FILE|Add0~14\);

-- Location: LABCELL_X73_Y4_N15
\ALU_FILE|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Add0~17_sumout\ = SUM(( (!\REGISTER_FILE|Mux67~3_combout\ & ((\MICROCODE_ROM_FILE|Mux10~1_combout\))) # (\REGISTER_FILE|Mux67~3_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\)) ) + ( \REGISTER_FILE|Mux59~2_combout\ ) + ( \ALU_FILE|Add0~14\ ))
-- \ALU_FILE|Add0~18\ = CARRY(( (!\REGISTER_FILE|Mux67~3_combout\ & ((\MICROCODE_ROM_FILE|Mux10~1_combout\))) # (\REGISTER_FILE|Mux67~3_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\)) ) + ( \REGISTER_FILE|Mux59~2_combout\ ) + ( \ALU_FILE|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux59~2_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux67~3_combout\,
	cin => \ALU_FILE|Add0~14\,
	sumout => \ALU_FILE|Add0~17_sumout\,
	cout => \ALU_FILE|Add0~18\);

-- Location: LABCELL_X73_Y4_N18
\ALU_FILE|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Add0~21_sumout\ = SUM(( (!\REGISTER_FILE|Mux66~1_combout\ & ((\MICROCODE_ROM_FILE|Mux10~1_combout\))) # (\REGISTER_FILE|Mux66~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\)) ) + ( \REGISTER_FILE|Mux58~2_combout\ ) + ( \ALU_FILE|Add0~18\ ))
-- \ALU_FILE|Add0~22\ = CARRY(( (!\REGISTER_FILE|Mux66~1_combout\ & ((\MICROCODE_ROM_FILE|Mux10~1_combout\))) # (\REGISTER_FILE|Mux66~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\)) ) + ( \REGISTER_FILE|Mux58~2_combout\ ) + ( \ALU_FILE|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux58~2_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux66~1_combout\,
	cin => \ALU_FILE|Add0~18\,
	sumout => \ALU_FILE|Add0~21_sumout\,
	cout => \ALU_FILE|Add0~22\);

-- Location: LABCELL_X73_Y4_N21
\ALU_FILE|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Add0~25_sumout\ = SUM(( \REGISTER_FILE|Mux57~2_combout\ ) + ( (!\REGISTER_FILE|Mux65~1_combout\ & ((\MICROCODE_ROM_FILE|Mux10~1_combout\))) # (\REGISTER_FILE|Mux65~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\)) ) + ( \ALU_FILE|Add0~22\ ))
-- \ALU_FILE|Add0~26\ = CARRY(( \REGISTER_FILE|Mux57~2_combout\ ) + ( (!\REGISTER_FILE|Mux65~1_combout\ & ((\MICROCODE_ROM_FILE|Mux10~1_combout\))) # (\REGISTER_FILE|Mux65~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\)) ) + ( \ALU_FILE|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux57~2_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux65~1_combout\,
	cin => \ALU_FILE|Add0~22\,
	sumout => \ALU_FILE|Add0~25_sumout\,
	cout => \ALU_FILE|Add0~26\);

-- Location: LABCELL_X73_Y4_N24
\ALU_FILE|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Add0~29_sumout\ = SUM(( (!\REGISTER_FILE|Mux64~1_combout\ & (\MICROCODE_ROM_FILE|Mux10~1_combout\)) # (\REGISTER_FILE|Mux64~1_combout\ & ((\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) + ( \REGISTER_FILE|Mux56~2_combout\ ) + ( \ALU_FILE|Add0~26\ ))
-- \ALU_FILE|Add0~30\ = CARRY(( (!\REGISTER_FILE|Mux64~1_combout\ & (\MICROCODE_ROM_FILE|Mux10~1_combout\)) # (\REGISTER_FILE|Mux64~1_combout\ & ((\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) + ( \REGISTER_FILE|Mux56~2_combout\ ) + ( \ALU_FILE|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux64~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux56~2_combout\,
	cin => \ALU_FILE|Add0~26\,
	sumout => \ALU_FILE|Add0~29_sumout\,
	cout => \ALU_FILE|Add0~30\);

-- Location: LABCELL_X73_Y4_N27
\ALU_FILE|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Add0~37_sumout\ = SUM(( (!\MICROCODE_ROM_FILE|Mux12~2_combout\ & \MICROCODE_ROM_FILE|Mux10~1_combout\) ) + ( (\MICROCODE_ROM_FILE|Mux12~2_combout\ & \MICROCODE_ROM_FILE|Mux10~1_combout\) ) + ( \ALU_FILE|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011101110111000000000000000000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	cin => \ALU_FILE|Add0~30\,
	sumout => \ALU_FILE|Add0~37_sumout\);

-- Location: LABCELL_X74_Y4_N48
\ALU_FILE|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux31~0_combout\ = ( \MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~2_combout\ & \ALU_FILE|Add0~37_sumout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux12~2_combout\ & 
-- \ALU_FILE|Add0~37_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datac => \ALU_FILE|ALT_INV_Add0~37_sumout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	combout => \ALU_FILE|Mux31~0_combout\);

-- Location: LABCELL_X74_Y4_N51
\ALU_FILE|F_int[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_int\(8) = ( \ALU_FILE|F_int\(8) & ( (\ALU_FILE|Mux23~0_combout\) # (\ALU_FILE|Mux31~0_combout\) ) ) # ( !\ALU_FILE|F_int\(8) & ( (\ALU_FILE|Mux31~0_combout\ & !\ALU_FILE|Mux23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux31~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux23~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(8),
	combout => \ALU_FILE|F_int\(8));

-- Location: LABCELL_X74_Y4_N12
\ALU_FILE|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux17~0_combout\ = ( \MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (\ALU_FILE|F_int\(8) & (!\MICROCODE_ROM_FILE|Mux9~1_combout\ & !\MICROCODE_ROM_FILE|Mux12~2_combout\)) ) ) # ( !\MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (\ALU_FILE|F_int\(8) & 
-- (!\MICROCODE_ROM_FILE|Mux9~1_combout\ & \MICROCODE_ROM_FILE|Mux12~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_F_int\(8),
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	combout => \ALU_FILE|Mux17~0_combout\);

-- Location: LABCELL_X71_Y3_N18
\ALU_FILE|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux18~0_combout\ = ( \MICROCODE_ROM_FILE|Mux10~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux9~1_combout\ & ((!\MICROCODE_ROM_FILE|Mux11~1_combout\))) # (\MICROCODE_ROM_FILE|Mux9~1_combout\ & (\MICROCODE_ROM_FILE|Mux12~2_combout\)) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux10~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux9~1_combout\ & ((\MICROCODE_ROM_FILE|Mux11~1_combout\))) # (\MICROCODE_ROM_FILE|Mux9~1_combout\ & (\MICROCODE_ROM_FILE|Mux12~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	combout => \ALU_FILE|Mux18~0_combout\);

-- Location: LABCELL_X73_Y3_N15
\ALU_FILE|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|c~combout\ = ( \ALU_FILE|c~combout\ & ( (!\ALU_FILE|Mux18~0_combout\) # (\ALU_FILE|Mux17~0_combout\) ) ) # ( !\ALU_FILE|c~combout\ & ( (\ALU_FILE|Mux17~0_combout\ & \ALU_FILE|Mux18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux17~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux18~0_combout\,
	dataf => \ALU_FILE|ALT_INV_c~combout\,
	combout => \ALU_FILE|c~combout\);

-- Location: LABCELL_X73_Y3_N24
\SHIFTER_FILE|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux7~0_combout\ = ( \MICROCODE_ROM_FILE|Mux13~1_combout\ & ( \ALU_FILE|c~combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\) # ((\SHIFTER_FILE|Mux7~4_combout\ & ((!\SHIFTER_FILE|Mux7~2_combout\) # (\SHIFTER_FILE|temp\(0))))) ) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux13~1_combout\ & ( \ALU_FILE|c~combout\ & ( (\SHIFTER_FILE|Mux7~4_combout\ & (((!\SHIFTER_FILE|Mux7~2_combout\) # (!\MICROCODE_ROM_FILE|Mux14~0_combout\)) # (\SHIFTER_FILE|temp\(0)))) ) ) ) # ( \MICROCODE_ROM_FILE|Mux13~1_combout\ & 
-- ( !\ALU_FILE|c~combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\ & (\SHIFTER_FILE|temp\(0))) # (\MICROCODE_ROM_FILE|Mux14~0_combout\ & (\SHIFTER_FILE|Mux7~4_combout\ & ((!\SHIFTER_FILE|Mux7~2_combout\) # (\SHIFTER_FILE|temp\(0))))) ) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux13~1_combout\ & ( !\ALU_FILE|c~combout\ & ( (\SHIFTER_FILE|Mux7~4_combout\ & (((!\SHIFTER_FILE|Mux7~2_combout\) # (!\MICROCODE_ROM_FILE|Mux14~0_combout\)) # (\SHIFTER_FILE|temp\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001101010101010000110100001111000011011111111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_temp\(0),
	datab => \SHIFTER_FILE|ALT_INV_Mux7~2_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux7~4_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux13~1_combout\,
	dataf => \ALU_FILE|ALT_INV_c~combout\,
	combout => \SHIFTER_FILE|Mux7~0_combout\);

-- Location: LABCELL_X71_Y3_N21
\REGISTER_FILE|Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux47~0_combout\ = ( \SHIFTER_FILE|Mux7~0_combout\ & ( \MICROCODE_ROM_FILE|Mux7~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux7~0_combout\,
	combout => \REGISTER_FILE|Mux47~0_combout\);

-- Location: FF_X71_Y3_N59
\REGISTER_FILE|R2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux47~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R2\(0));

-- Location: LABCELL_X73_Y3_N3
\REGISTER_FILE|Mux71~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux71~0_combout\ = ( \REGISTER_FILE|R5\(0) & ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux5~1_combout\ & ((\REGISTER_FILE|R6\(0)))) # (\MICROCODE_ROM_FILE|Mux5~1_combout\ & (\REGISTER_FILE|R7\(0))) ) ) ) # ( 
-- !\REGISTER_FILE|R5\(0) & ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux5~1_combout\ & ((\REGISTER_FILE|R6\(0)))) # (\MICROCODE_ROM_FILE|Mux5~1_combout\ & (\REGISTER_FILE|R7\(0))) ) ) ) # ( \REGISTER_FILE|R5\(0) & ( 
-- !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (\REGISTER_FILE|R4\(0)) # (\MICROCODE_ROM_FILE|Mux5~1_combout\) ) ) ) # ( !\REGISTER_FILE|R5\(0) & ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux5~1_combout\ & \REGISTER_FILE|R4\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R7\(0),
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_R4\(0),
	datad => \REGISTER_FILE|ALT_INV_R6\(0),
	datae => \REGISTER_FILE|ALT_INV_R5\(0),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	combout => \REGISTER_FILE|Mux71~0_combout\);

-- Location: LABCELL_X73_Y3_N36
\REGISTER_FILE|Mux71~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux71~1_combout\ = ( \REGISTER_FILE|Mux67~0_combout\ & ( \REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|R2\(0) ) ) ) # ( !\REGISTER_FILE|Mux67~0_combout\ & ( \REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|R3\(0) ) ) ) # ( 
-- \REGISTER_FILE|Mux67~0_combout\ & ( !\REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|Mux71~0_combout\ ) ) ) # ( !\REGISTER_FILE|Mux67~0_combout\ & ( !\REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|R1\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R2\(0),
	datab => \REGISTER_FILE|ALT_INV_Mux71~0_combout\,
	datac => \REGISTER_FILE|ALT_INV_R3\(0),
	datad => \REGISTER_FILE|ALT_INV_R1\(0),
	datae => \REGISTER_FILE|ALT_INV_Mux67~0_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux67~1_combout\,
	combout => \REGISTER_FILE|Mux71~1_combout\);

-- Location: LABCELL_X73_Y3_N21
\ALU_FILE|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux0~0_combout\ = ( \REGISTER_FILE|Mux63~2_combout\ & ( !\MICROCODE_ROM_FILE|Mux10~1_combout\ $ (((!\MICROCODE_ROM_FILE|Mux11~1_combout\ & !\REGISTER_FILE|Mux71~1_combout\))) ) ) # ( !\REGISTER_FILE|Mux63~2_combout\ & ( 
-- (!\MICROCODE_ROM_FILE|Mux10~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\ & \REGISTER_FILE|Mux71~1_combout\)) # (\MICROCODE_ROM_FILE|Mux10~1_combout\ & ((\REGISTER_FILE|Mux71~1_combout\) # (\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111100110011000011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux71~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux63~2_combout\,
	combout => \ALU_FILE|Mux0~0_combout\);

-- Location: LABCELL_X74_Y3_N27
\ALU_FILE|F_log[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_log\(0) = ( \ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|Mux0~0_combout\ ) ) # ( !\ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|F_log\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux0~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_log\(0),
	dataf => \ALU_FILE|ALT_INV_Mux9~0_combout\,
	combout => \ALU_FILE|F_log\(0));

-- Location: LABCELL_X74_Y3_N21
\ALU_FILE|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux8~0_combout\ = ( \ALU_FILE|F_int\(0) & ( (!\ALU_FILE|Mux2~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux9~1_combout\) # (\ALU_FILE|F_log\(0)))) ) ) # ( !\ALU_FILE|F_int\(0) & ( (!\ALU_FILE|Mux2~0_combout\ & (\MICROCODE_ROM_FILE|Mux9~1_combout\ & 
-- \ALU_FILE|F_log\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	datad => \ALU_FILE|ALT_INV_F_log\(0),
	dataf => \ALU_FILE|ALT_INV_F_int\(0),
	combout => \ALU_FILE|Mux8~0_combout\);

-- Location: MLABCELL_X72_Y4_N21
\SHIFTER_FILE|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux11~0_combout\ = ( \ALU_FILE|Mux8~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\) # (\ALU_FILE|Mux6~1_combout\) ) ) # ( !\ALU_FILE|Mux8~0_combout\ & ( (\ALU_FILE|Mux6~1_combout\ & \MICROCODE_ROM_FILE|Mux14~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux8~0_combout\,
	combout => \SHIFTER_FILE|Mux11~0_combout\);

-- Location: MLABCELL_X72_Y4_N12
\SHIFTER_FILE|temp[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|temp\(1) = ( \SHIFTER_FILE|temp\(1) & ( (!\SHIFTER_FILE|Mux2~3_combout\) # (\SHIFTER_FILE|Mux11~0_combout\) ) ) # ( !\SHIFTER_FILE|temp\(1) & ( (\SHIFTER_FILE|Mux11~0_combout\ & \SHIFTER_FILE|Mux2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux11~0_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux2~3_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_temp\(1),
	combout => \SHIFTER_FILE|temp\(1));

-- Location: LABCELL_X71_Y4_N30
\SHIFTER_FILE|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux6~0_combout\ = ( \MICROCODE_ROM_FILE|Mux13~0_combout\ & ( (\SHIFTER_FILE|temp\(1) & (\MICROCODE_ROM_FILE|Mux12~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux14~0_combout\) # (!\CAR[1]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100000001000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_temp\(1),
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datad => \ALT_INV_CAR[1]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	combout => \SHIFTER_FILE|Mux6~0_combout\);

-- Location: MLABCELL_X72_Y3_N36
\REGISTER_FILE|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux30~0_combout\ = ( \SHIFTER_FILE|Mux6~0_combout\ & ( \ALU_FILE|Mux7~0_combout\ & ( \MICROCODE_ROM_FILE|Mux6~1_combout\ ) ) ) # ( !\SHIFTER_FILE|Mux6~0_combout\ & ( \ALU_FILE|Mux7~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux6~1_combout\ & 
-- (!\SHIFTER_FILE|Mux1~0_combout\ & ((!\SHIFTER_FILE|Mux2~0_combout\) # (\ALU_FILE|Mux6~1_combout\)))) ) ) ) # ( \SHIFTER_FILE|Mux6~0_combout\ & ( !\ALU_FILE|Mux7~0_combout\ & ( \MICROCODE_ROM_FILE|Mux6~1_combout\ ) ) ) # ( !\SHIFTER_FILE|Mux6~0_combout\ & 
-- ( !\ALU_FILE|Mux7~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux6~1_combout\ & (!\SHIFTER_FILE|Mux1~0_combout\ & (\SHIFTER_FILE|Mux2~0_combout\ & \ALU_FILE|Mux6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100010101010101010101000000010001000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux6~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	combout => \REGISTER_FILE|Mux30~0_combout\);

-- Location: FF_X72_Y3_N38
\REGISTER_FILE|R4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \REGISTER_FILE|Mux30~0_combout\,
	ena => \SEGEMENT_D_FILE_1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R4\(1));

-- Location: LABCELL_X74_Y2_N3
\REGISTER_FILE|Mux70~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux70~0_combout\ = ( \REGISTER_FILE|R5\(1) & ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux5~1_combout\ & (\REGISTER_FILE|R6\(1))) # (\MICROCODE_ROM_FILE|Mux5~1_combout\ & ((\REGISTER_FILE|R7\(1)))) ) ) ) # ( 
-- !\REGISTER_FILE|R5\(1) & ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux5~1_combout\ & (\REGISTER_FILE|R6\(1))) # (\MICROCODE_ROM_FILE|Mux5~1_combout\ & ((\REGISTER_FILE|R7\(1)))) ) ) ) # ( \REGISTER_FILE|R5\(1) & ( 
-- !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux5~1_combout\) # (\REGISTER_FILE|R4\(1)) ) ) ) # ( !\REGISTER_FILE|R5\(1) & ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( (\REGISTER_FILE|R4\(1) & !\MICROCODE_ROM_FILE|Mux5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R4\(1),
	datab => \REGISTER_FILE|ALT_INV_R6\(1),
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_R7\(1),
	datae => \REGISTER_FILE|ALT_INV_R5\(1),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	combout => \REGISTER_FILE|Mux70~0_combout\);

-- Location: LABCELL_X74_Y2_N48
\REGISTER_FILE|Mux70~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux70~1_combout\ = ( \REGISTER_FILE|R2\(1) & ( \REGISTER_FILE|Mux67~1_combout\ & ( (\REGISTER_FILE|R3\(1)) # (\REGISTER_FILE|Mux67~0_combout\) ) ) ) # ( !\REGISTER_FILE|R2\(1) & ( \REGISTER_FILE|Mux67~1_combout\ & ( 
-- (!\REGISTER_FILE|Mux67~0_combout\ & \REGISTER_FILE|R3\(1)) ) ) ) # ( \REGISTER_FILE|R2\(1) & ( !\REGISTER_FILE|Mux67~1_combout\ & ( (!\REGISTER_FILE|Mux67~0_combout\ & ((\REGISTER_FILE|R1\(1)))) # (\REGISTER_FILE|Mux67~0_combout\ & 
-- (\REGISTER_FILE|Mux70~0_combout\)) ) ) ) # ( !\REGISTER_FILE|R2\(1) & ( !\REGISTER_FILE|Mux67~1_combout\ & ( (!\REGISTER_FILE|Mux67~0_combout\ & ((\REGISTER_FILE|R1\(1)))) # (\REGISTER_FILE|Mux67~0_combout\ & (\REGISTER_FILE|Mux70~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux67~0_combout\,
	datab => \REGISTER_FILE|ALT_INV_Mux70~0_combout\,
	datac => \REGISTER_FILE|ALT_INV_R1\(1),
	datad => \REGISTER_FILE|ALT_INV_R3\(1),
	datae => \REGISTER_FILE|ALT_INV_R2\(1),
	dataf => \REGISTER_FILE|ALT_INV_Mux67~1_combout\,
	combout => \REGISTER_FILE|Mux70~1_combout\);

-- Location: LABCELL_X70_Y2_N9
\ALU_FILE|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux10~0_combout\ = ( \MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux10~1_combout\ & ((\REGISTER_FILE|Mux62~2_combout\) # (\REGISTER_FILE|Mux70~1_combout\))) # (\MICROCODE_ROM_FILE|Mux10~1_combout\ & 
-- ((!\REGISTER_FILE|Mux62~2_combout\))) ) ) # ( !\MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux10~1_combout\ & (\REGISTER_FILE|Mux70~1_combout\ & \REGISTER_FILE|Mux62~2_combout\)) # (\MICROCODE_ROM_FILE|Mux10~1_combout\ & 
-- (!\REGISTER_FILE|Mux70~1_combout\ $ (!\REGISTER_FILE|Mux62~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011010000001010101101001011111101010100101111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux70~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux62~2_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	combout => \ALU_FILE|Mux10~0_combout\);

-- Location: LABCELL_X70_Y2_N3
\ALU_FILE|F_log[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_log\(1) = ( \ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|Mux10~0_combout\ ) ) # ( !\ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|F_log\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Mux10~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_log\(1),
	dataf => \ALU_FILE|ALT_INV_Mux9~0_combout\,
	combout => \ALU_FILE|F_log\(1));

-- Location: LABCELL_X71_Y3_N36
\ALU_FILE|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux7~0_combout\ = ( \ALU_FILE|F_int\(1) & ( (!\ALU_FILE|Mux2~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux9~1_combout\) # (\ALU_FILE|F_log\(1)))) ) ) # ( !\ALU_FILE|F_int\(1) & ( (\MICROCODE_ROM_FILE|Mux9~1_combout\ & (\ALU_FILE|F_log\(1) & 
-- !\ALU_FILE|Mux2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	datac => \ALU_FILE|ALT_INV_F_log\(1),
	datad => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(1),
	combout => \ALU_FILE|Mux7~0_combout\);

-- Location: LABCELL_X71_Y4_N36
\SHIFTER_FILE|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux12~0_combout\ = ( \ALU_FILE|Mux5~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux14~0_combout\) # (\ALU_FILE|Mux7~0_combout\) ) ) # ( !\ALU_FILE|Mux5~1_combout\ & ( (\ALU_FILE|Mux7~0_combout\ & !\MICROCODE_ROM_FILE|Mux14~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	combout => \SHIFTER_FILE|Mux12~0_combout\);

-- Location: LABCELL_X71_Y4_N39
\SHIFTER_FILE|temp[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|temp\(2) = ( \SHIFTER_FILE|temp\(2) & ( (!\SHIFTER_FILE|Mux2~3_combout\) # (\SHIFTER_FILE|Mux12~0_combout\) ) ) # ( !\SHIFTER_FILE|temp\(2) & ( (\SHIFTER_FILE|Mux12~0_combout\ & \SHIFTER_FILE|Mux2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux12~0_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux2~3_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_temp\(2),
	combout => \SHIFTER_FILE|temp\(2));

-- Location: MLABCELL_X72_Y4_N18
\SHIFTER_FILE|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux5~0_combout\ = ( \MICROCODE_ROM_FILE|Mux13~0_combout\ & ( (\SHIFTER_FILE|temp\(2) & (\MICROCODE_ROM_FILE|Mux12~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux14~0_combout\) # (!\CAR[1]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011100000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datab => \ALT_INV_CAR[1]~reg0_q\,
	datac => \SHIFTER_FILE|ALT_INV_temp\(2),
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	combout => \SHIFTER_FILE|Mux5~0_combout\);

-- Location: LABCELL_X71_Y1_N18
\REGISTER_FILE|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux21~0_combout\ = ( \ALU_FILE|Mux6~1_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux7~1_combout\ & \SHIFTER_FILE|Mux5~0_combout\) ) ) ) # ( !\ALU_FILE|Mux6~1_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux7~1_combout\ & \SHIFTER_FILE|Mux5~0_combout\) ) ) ) # ( \ALU_FILE|Mux6~1_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux7~1_combout\ & ((!\SHIFTER_FILE|Mux2~0_combout\) # ((\SHIFTER_FILE|Mux5~0_combout\) # 
-- (\ALU_FILE|Mux5~1_combout\)))) ) ) ) # ( !\ALU_FILE|Mux6~1_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux7~1_combout\ & (((\SHIFTER_FILE|Mux2~0_combout\ & \ALU_FILE|Mux5~1_combout\)) # (\SHIFTER_FILE|Mux5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101010001010101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux5~0_combout\,
	datae => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux21~0_combout\);

-- Location: FF_X71_Y1_N38
\REGISTER_FILE|R3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux21~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R3\(2));

-- Location: IOIBUF_X8_Y0_N35
\DATA_I[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_I(2),
	o => \DATA_I[2]~input_o\);

-- Location: LABCELL_X71_Y1_N30
\REGISTER_FILE|Mux61~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux61~1_combout\ = ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R3\(2) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R2\(2) ) ) 
-- ) # ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R1\(2) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \DATA_I[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R3\(2),
	datab => \REGISTER_FILE|ALT_INV_R1\(2),
	datac => \REGISTER_FILE|ALT_INV_R2\(2),
	datad => \ALT_INV_DATA_I[2]~input_o\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux61~1_combout\);

-- Location: MLABCELL_X72_Y4_N39
\REGISTER_FILE|Mux61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux61~0_combout\ = ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R7\(2) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R6\(2) ) ) 
-- ) # ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R5\(2) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R4\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R4\(2),
	datab => \REGISTER_FILE|ALT_INV_R5\(2),
	datac => \REGISTER_FILE|ALT_INV_R7\(2),
	datad => \REGISTER_FILE|ALT_INV_R6\(2),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux61~0_combout\);

-- Location: MLABCELL_X72_Y2_N30
\REGISTER_FILE|Mux61~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux61~2_combout\ = ( \REGISTER_FILE|Mux61~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux0~0_combout\) # (\REGISTER_FILE|Mux61~1_combout\) ) ) # ( !\REGISTER_FILE|Mux61~0_combout\ & ( (\REGISTER_FILE|Mux61~1_combout\ & 
-- !\MICROCODE_ROM_FILE|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REGISTER_FILE|ALT_INV_Mux61~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux61~0_combout\,
	combout => \REGISTER_FILE|Mux61~2_combout\);

-- Location: MLABCELL_X72_Y3_N57
\ALU_FILE|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux25~0_combout\ = ( \ALU_FILE|Add0~9_sumout\ & ( (!\MICROCODE_ROM_FILE|Mux12~2_combout\ $ (!\MICROCODE_ROM_FILE|Mux11~1_combout\)) # (\REGISTER_FILE|Mux61~2_combout\) ) ) # ( !\ALU_FILE|Add0~9_sumout\ & ( (\REGISTER_FILE|Mux61~2_combout\ & 
-- (!\MICROCODE_ROM_FILE|Mux12~2_combout\ $ (\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010101011111111101010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux61~2_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	dataf => \ALU_FILE|ALT_INV_Add0~9_sumout\,
	combout => \ALU_FILE|Mux25~0_combout\);

-- Location: MLABCELL_X72_Y3_N51
\ALU_FILE|F_int[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_int\(2) = ( \ALU_FILE|F_int\(2) & ( (\ALU_FILE|Mux23~0_combout\) # (\ALU_FILE|Mux25~0_combout\) ) ) # ( !\ALU_FILE|F_int\(2) & ( (\ALU_FILE|Mux25~0_combout\ & !\ALU_FILE|Mux23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Mux25~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux23~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(2),
	combout => \ALU_FILE|F_int\(2));

-- Location: LABCELL_X73_Y3_N18
\ALU_FILE|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux11~0_combout\ = ( \MICROCODE_ROM_FILE|Mux10~1_combout\ & ( !\REGISTER_FILE|Mux61~2_combout\ $ (((!\REGISTER_FILE|Mux69~1_combout\ & !\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) ) # ( !\MICROCODE_ROM_FILE|Mux10~1_combout\ & ( 
-- (!\REGISTER_FILE|Mux69~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\ & \REGISTER_FILE|Mux61~2_combout\)) # (\REGISTER_FILE|Mux69~1_combout\ & ((\REGISTER_FILE|Mux61~2_combout\) # (\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux69~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux61~2_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	combout => \ALU_FILE|Mux11~0_combout\);

-- Location: LABCELL_X73_Y3_N9
\ALU_FILE|F_log[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_log\(2) = ( \ALU_FILE|F_log\(2) & ( (!\ALU_FILE|Mux9~0_combout\) # (\ALU_FILE|Mux11~0_combout\) ) ) # ( !\ALU_FILE|F_log\(2) & ( (\ALU_FILE|Mux11~0_combout\ & \ALU_FILE|Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FILE|ALT_INV_Mux11~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux9~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_log\(2),
	combout => \ALU_FILE|F_log\(2));

-- Location: MLABCELL_X72_Y3_N30
\ALU_FILE|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux6~1_combout\ = ( \MICROCODE_ROM_FILE|Mux9~1_combout\ & ( (!\ALU_FILE|Mux2~0_combout\ & \ALU_FILE|F_log\(2)) ) ) # ( !\MICROCODE_ROM_FILE|Mux9~1_combout\ & ( (\ALU_FILE|F_int\(2) & !\ALU_FILE|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_F_int\(2),
	datac => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_log\(2),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	combout => \ALU_FILE|Mux6~1_combout\);

-- Location: LABCELL_X71_Y3_N12
\SHIFTER_FILE|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux13~0_combout\ = ( \ALU_FILE|Mux4~1_combout\ & ( (\ALU_FILE|Mux6~1_combout\) # (\MICROCODE_ROM_FILE|Mux14~0_combout\) ) ) # ( !\ALU_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\ & \ALU_FILE|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux4~1_combout\,
	combout => \SHIFTER_FILE|Mux13~0_combout\);

-- Location: MLABCELL_X72_Y3_N33
\SHIFTER_FILE|temp[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|temp\(3) = ( \SHIFTER_FILE|temp\(3) & ( (!\SHIFTER_FILE|Mux2~3_combout\) # (\SHIFTER_FILE|Mux13~0_combout\) ) ) # ( !\SHIFTER_FILE|temp\(3) & ( (\SHIFTER_FILE|Mux13~0_combout\ & \SHIFTER_FILE|Mux2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux13~0_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux2~3_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_temp\(3),
	combout => \SHIFTER_FILE|temp\(3));

-- Location: LABCELL_X71_Y3_N9
\SHIFTER_FILE|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux4~0_combout\ = ( \MICROCODE_ROM_FILE|Mux14~0_combout\ & ( (\SHIFTER_FILE|temp\(3) & (\MICROCODE_ROM_FILE|Mux12~0_combout\ & (!\CAR[1]~reg0_q\ & \MICROCODE_ROM_FILE|Mux13~0_combout\))) ) ) # ( !\MICROCODE_ROM_FILE|Mux14~0_combout\ & ( 
-- (\SHIFTER_FILE|temp\(3) & (\MICROCODE_ROM_FILE|Mux12~0_combout\ & \MICROCODE_ROM_FILE|Mux13~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_temp\(3),
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_CAR[1]~reg0_q\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	combout => \SHIFTER_FILE|Mux4~0_combout\);

-- Location: MLABCELL_X72_Y3_N15
\REGISTER_FILE|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux20~0_combout\ = ( \ALU_FILE|Mux5~1_combout\ & ( \SHIFTER_FILE|Mux4~0_combout\ & ( \MICROCODE_ROM_FILE|Mux7~1_combout\ ) ) ) # ( !\ALU_FILE|Mux5~1_combout\ & ( \SHIFTER_FILE|Mux4~0_combout\ & ( \MICROCODE_ROM_FILE|Mux7~1_combout\ ) ) ) # 
-- ( \ALU_FILE|Mux5~1_combout\ & ( !\SHIFTER_FILE|Mux4~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux7~1_combout\ & (!\SHIFTER_FILE|Mux1~0_combout\ & ((!\SHIFTER_FILE|Mux2~0_combout\) # (\ALU_FILE|Mux4~1_combout\)))) ) ) ) # ( !\ALU_FILE|Mux5~1_combout\ & ( 
-- !\SHIFTER_FILE|Mux4~0_combout\ & ( (\ALU_FILE|Mux4~1_combout\ & (\MICROCODE_ROM_FILE|Mux7~1_combout\ & (!\SHIFTER_FILE|Mux1~0_combout\ & \SHIFTER_FILE|Mux2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000001100000001000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux4~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datae => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux4~0_combout\,
	combout => \REGISTER_FILE|Mux20~0_combout\);

-- Location: FF_X72_Y4_N44
\REGISTER_FILE|R7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux20~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R7[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R7\(3));

-- Location: LABCELL_X73_Y4_N42
\REGISTER_FILE|Mux60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux60~0_combout\ = ( \REGISTER_FILE|R5\(3) & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux2~0_combout\ & ((\REGISTER_FILE|R6\(3)))) # (\MICROCODE_ROM_FILE|Mux2~0_combout\ & (\REGISTER_FILE|R7\(3))) ) ) ) # ( 
-- !\REGISTER_FILE|R5\(3) & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux2~0_combout\ & ((\REGISTER_FILE|R6\(3)))) # (\MICROCODE_ROM_FILE|Mux2~0_combout\ & (\REGISTER_FILE|R7\(3))) ) ) ) # ( \REGISTER_FILE|R5\(3) & ( 
-- !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux2~0_combout\) # (\REGISTER_FILE|R4\(3)) ) ) ) # ( !\REGISTER_FILE|R5\(3) & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (\REGISTER_FILE|R4\(3) & !\MICROCODE_ROM_FILE|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R7\(3),
	datab => \REGISTER_FILE|ALT_INV_R4\(3),
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	datad => \REGISTER_FILE|ALT_INV_R6\(3),
	datae => \REGISTER_FILE|ALT_INV_R5\(3),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux60~0_combout\);

-- Location: IOIBUF_X4_Y0_N52
\DATA_I[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_I(3),
	o => \DATA_I[3]~input_o\);

-- Location: LABCELL_X73_Y4_N57
\REGISTER_FILE|Mux60~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux60~1_combout\ = ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R3\(3) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R2\(3) ) ) 
-- ) # ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R1\(3) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \DATA_I[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R1\(3),
	datab => \ALT_INV_DATA_I[3]~input_o\,
	datac => \REGISTER_FILE|ALT_INV_R3\(3),
	datad => \REGISTER_FILE|ALT_INV_R2\(3),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux60~1_combout\);

-- Location: LABCELL_X73_Y4_N39
\REGISTER_FILE|Mux60~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux60~2_combout\ = ( \REGISTER_FILE|Mux60~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux0~0_combout\) # (\REGISTER_FILE|Mux60~0_combout\) ) ) # ( !\REGISTER_FILE|Mux60~1_combout\ & ( (\REGISTER_FILE|Mux60~0_combout\ & 
-- \MICROCODE_ROM_FILE|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REGISTER_FILE|ALT_INV_Mux60~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux60~1_combout\,
	combout => \REGISTER_FILE|Mux60~2_combout\);

-- Location: LABCELL_X73_Y4_N36
\ALU_FILE|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux26~0_combout\ = ( \ALU_FILE|Add0~13_sumout\ & ( (!\MICROCODE_ROM_FILE|Mux11~1_combout\ $ (!\MICROCODE_ROM_FILE|Mux12~2_combout\)) # (\REGISTER_FILE|Mux60~2_combout\) ) ) # ( !\ALU_FILE|Add0~13_sumout\ & ( (\REGISTER_FILE|Mux60~2_combout\ & 
-- (!\MICROCODE_ROM_FILE|Mux11~1_combout\ $ (\MICROCODE_ROM_FILE|Mux12~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001100111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGISTER_FILE|ALT_INV_Mux60~2_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	dataf => \ALU_FILE|ALT_INV_Add0~13_sumout\,
	combout => \ALU_FILE|Mux26~0_combout\);

-- Location: LABCELL_X73_Y4_N51
\ALU_FILE|F_int[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_int\(3) = (!\ALU_FILE|Mux23~0_combout\ & (\ALU_FILE|Mux26~0_combout\)) # (\ALU_FILE|Mux23~0_combout\ & ((\ALU_FILE|F_int\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Mux26~0_combout\,
	datac => \ALU_FILE|ALT_INV_F_int\(3),
	datad => \ALU_FILE|ALT_INV_Mux23~0_combout\,
	combout => \ALU_FILE|F_int\(3));

-- Location: MLABCELL_X72_Y2_N21
\ALU_FILE|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux12~0_combout\ = ( \REGISTER_FILE|Mux68~1_combout\ & ( (!\REGISTER_FILE|Mux60~2_combout\ & ((\MICROCODE_ROM_FILE|Mux11~1_combout\) # (\MICROCODE_ROM_FILE|Mux10~1_combout\))) # (\REGISTER_FILE|Mux60~2_combout\ & 
-- (!\MICROCODE_ROM_FILE|Mux10~1_combout\)) ) ) # ( !\REGISTER_FILE|Mux68~1_combout\ & ( (!\REGISTER_FILE|Mux60~2_combout\ & (\MICROCODE_ROM_FILE|Mux10~1_combout\ & \MICROCODE_ROM_FILE|Mux11~1_combout\)) # (\REGISTER_FILE|Mux60~2_combout\ & 
-- (!\MICROCODE_ROM_FILE|Mux10~1_combout\ $ (!\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011010000001010101101001011010111110100101101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux60~2_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux68~1_combout\,
	combout => \ALU_FILE|Mux12~0_combout\);

-- Location: MLABCELL_X72_Y2_N45
\ALU_FILE|F_log[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_log\(3) = ( \ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|Mux12~0_combout\ ) ) # ( !\ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|F_log\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FILE|ALT_INV_Mux12~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_log\(3),
	dataf => \ALU_FILE|ALT_INV_Mux9~0_combout\,
	combout => \ALU_FILE|F_log\(3));

-- Location: MLABCELL_X72_Y3_N54
\ALU_FILE|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux5~1_combout\ = ( \MICROCODE_ROM_FILE|Mux9~1_combout\ & ( (!\ALU_FILE|Mux2~0_combout\ & \ALU_FILE|F_log\(3)) ) ) # ( !\MICROCODE_ROM_FILE|Mux9~1_combout\ & ( (\ALU_FILE|F_int\(3) & !\ALU_FILE|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_F_int\(3),
	datac => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_log\(3),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	combout => \ALU_FILE|Mux5~1_combout\);

-- Location: LABCELL_X71_Y4_N51
\SHIFTER_FILE|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux14~0_combout\ = ( \ALU_FILE|Mux5~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\) # (\ALU_FILE|Mux3~1_combout\) ) ) # ( !\ALU_FILE|Mux5~1_combout\ & ( (\ALU_FILE|Mux3~1_combout\ & \MICROCODE_ROM_FILE|Mux14~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FILE|ALT_INV_Mux3~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	combout => \SHIFTER_FILE|Mux14~0_combout\);

-- Location: LABCELL_X71_Y4_N33
\SHIFTER_FILE|temp[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|temp\(4) = ( \SHIFTER_FILE|Mux2~3_combout\ & ( \SHIFTER_FILE|Mux14~0_combout\ ) ) # ( !\SHIFTER_FILE|Mux2~3_combout\ & ( \SHIFTER_FILE|temp\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \SHIFTER_FILE|ALT_INV_Mux14~0_combout\,
	datad => \SHIFTER_FILE|ALT_INV_temp\(4),
	dataf => \SHIFTER_FILE|ALT_INV_Mux2~3_combout\,
	combout => \SHIFTER_FILE|temp\(4));

-- Location: LABCELL_X71_Y4_N24
\SHIFTER_FILE|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux3~0_combout\ = ( \MICROCODE_ROM_FILE|Mux13~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & (\SHIFTER_FILE|temp\(4) & ((!\MICROCODE_ROM_FILE|Mux14~0_combout\) # (!\CAR[1]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000100000001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \SHIFTER_FILE|ALT_INV_temp\(4),
	datad => \ALT_INV_CAR[1]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	combout => \SHIFTER_FILE|Mux3~0_combout\);

-- Location: LABCELL_X71_Y4_N3
\REGISTER_FILE|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux19~0_combout\ = ( \SHIFTER_FILE|Mux1~0_combout\ & ( \SHIFTER_FILE|Mux3~0_combout\ & ( \MICROCODE_ROM_FILE|Mux7~1_combout\ ) ) ) # ( !\SHIFTER_FILE|Mux1~0_combout\ & ( \SHIFTER_FILE|Mux3~0_combout\ & ( \MICROCODE_ROM_FILE|Mux7~1_combout\ 
-- ) ) ) # ( !\SHIFTER_FILE|Mux1~0_combout\ & ( !\SHIFTER_FILE|Mux3~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux7~1_combout\ & ((!\SHIFTER_FILE|Mux2~0_combout\ & ((\ALU_FILE|Mux4~1_combout\))) # (\SHIFTER_FILE|Mux2~0_combout\ & (\ALU_FILE|Mux3~1_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux3~1_combout\,
	datac => \ALU_FILE|ALT_INV_Mux4~1_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux3~0_combout\,
	combout => \REGISTER_FILE|Mux19~0_combout\);

-- Location: FF_X73_Y1_N14
\REGISTER_FILE|R2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux19~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R2\(4));

-- Location: LABCELL_X73_Y1_N15
\REGISTER_FILE|Mux59~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux59~1_combout\ = ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R3\(4) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R2\(4) ) ) 
-- ) # ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \REGISTER_FILE|R1\(4) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \DATA_I[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_I[4]~input_o\,
	datab => \REGISTER_FILE|ALT_INV_R2\(4),
	datac => \REGISTER_FILE|ALT_INV_R3\(4),
	datad => \REGISTER_FILE|ALT_INV_R1\(4),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux59~1_combout\);

-- Location: MLABCELL_X72_Y1_N3
\REGISTER_FILE|Mux59~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux59~0_combout\ = ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \REGISTER_FILE|R7\(4) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \REGISTER_FILE|R5\(4) ) ) 
-- ) # ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \REGISTER_FILE|R6\(4) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( \REGISTER_FILE|R4\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R7\(4),
	datab => \REGISTER_FILE|ALT_INV_R5\(4),
	datac => \REGISTER_FILE|ALT_INV_R4\(4),
	datad => \REGISTER_FILE|ALT_INV_R6\(4),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	combout => \REGISTER_FILE|Mux59~0_combout\);

-- Location: LABCELL_X73_Y1_N57
\REGISTER_FILE|Mux59~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux59~2_combout\ = ( \REGISTER_FILE|Mux59~0_combout\ & ( (\REGISTER_FILE|Mux59~1_combout\) # (\MICROCODE_ROM_FILE|Mux0~0_combout\) ) ) # ( !\REGISTER_FILE|Mux59~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux0~0_combout\ & 
-- \REGISTER_FILE|Mux59~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux59~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux59~0_combout\,
	combout => \REGISTER_FILE|Mux59~2_combout\);

-- Location: LABCELL_X74_Y4_N39
\ALU_FILE|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux27~0_combout\ = ( \MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~2_combout\ & (\ALU_FILE|Add0~17_sumout\)) # (\MICROCODE_ROM_FILE|Mux12~2_combout\ & ((\REGISTER_FILE|Mux59~2_combout\))) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~2_combout\ & ((\REGISTER_FILE|Mux59~2_combout\))) # (\MICROCODE_ROM_FILE|Mux12~2_combout\ & (\ALU_FILE|Add0~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Add0~17_sumout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux59~2_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	combout => \ALU_FILE|Mux27~0_combout\);

-- Location: LABCELL_X74_Y4_N33
\ALU_FILE|F_int[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_int\(4) = ( \ALU_FILE|Mux27~0_combout\ & ( (!\ALU_FILE|Mux23~0_combout\) # (\ALU_FILE|F_int\(4)) ) ) # ( !\ALU_FILE|Mux27~0_combout\ & ( (\ALU_FILE|F_int\(4) & \ALU_FILE|Mux23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FILE|ALT_INV_F_int\(4),
	datad => \ALU_FILE|ALT_INV_Mux23~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux27~0_combout\,
	combout => \ALU_FILE|F_int\(4));

-- Location: LABCELL_X73_Y1_N48
\ALU_FILE|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux13~0_combout\ = ( \REGISTER_FILE|Mux59~2_combout\ & ( !\MICROCODE_ROM_FILE|Mux10~1_combout\ $ (((!\MICROCODE_ROM_FILE|Mux11~1_combout\ & !\REGISTER_FILE|Mux67~3_combout\))) ) ) # ( !\REGISTER_FILE|Mux59~2_combout\ & ( 
-- (!\MICROCODE_ROM_FILE|Mux10~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~1_combout\ & \REGISTER_FILE|Mux67~3_combout\)) # (\MICROCODE_ROM_FILE|Mux10~1_combout\ & ((\REGISTER_FILE|Mux67~3_combout\) # (\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011010101010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux67~3_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux59~2_combout\,
	combout => \ALU_FILE|Mux13~0_combout\);

-- Location: LABCELL_X73_Y1_N51
\ALU_FILE|F_log[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_log\(4) = ( \ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|Mux13~0_combout\ ) ) # ( !\ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|F_log\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Mux13~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_log\(4),
	dataf => \ALU_FILE|ALT_INV_Mux9~0_combout\,
	combout => \ALU_FILE|F_log\(4));

-- Location: MLABCELL_X72_Y4_N9
\ALU_FILE|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux4~1_combout\ = ( \MICROCODE_ROM_FILE|Mux9~1_combout\ & ( !\ALU_FILE|Mux2~0_combout\ & ( \ALU_FILE|F_log\(4) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux9~1_combout\ & ( !\ALU_FILE|Mux2~0_combout\ & ( \ALU_FILE|F_int\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FILE|ALT_INV_F_int\(4),
	datad => \ALU_FILE|ALT_INV_F_log\(4),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	combout => \ALU_FILE|Mux4~1_combout\);

-- Location: LABCELL_X71_Y4_N27
\SHIFTER_FILE|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux15~0_combout\ = ( \ALU_FILE|Mux4~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\) # (\ALU_FILE|Mux2~2_combout\) ) ) # ( !\ALU_FILE|Mux4~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux14~0_combout\ & \ALU_FILE|Mux2~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux2~2_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux4~1_combout\,
	combout => \SHIFTER_FILE|Mux15~0_combout\);

-- Location: LABCELL_X71_Y4_N18
\SHIFTER_FILE|temp[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|temp\(5) = ( \SHIFTER_FILE|temp\(5) & ( (!\SHIFTER_FILE|Mux2~3_combout\) # (\SHIFTER_FILE|Mux15~0_combout\) ) ) # ( !\SHIFTER_FILE|temp\(5) & ( (\SHIFTER_FILE|Mux15~0_combout\ & \SHIFTER_FILE|Mux2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SHIFTER_FILE|ALT_INV_Mux15~0_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux2~3_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_temp\(5),
	combout => \SHIFTER_FILE|temp\(5));

-- Location: LABCELL_X70_Y4_N51
\SHIFTER_FILE|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux2~1_combout\ = ( \MICROCODE_ROM_FILE|Mux14~0_combout\ & ( \MICROCODE_ROM_FILE|Mux13~0_combout\ & ( (\SHIFTER_FILE|temp\(5) & (\MICROCODE_ROM_FILE|Mux12~0_combout\ & !\CAR[1]~reg0_q\)) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux14~0_combout\ & ( 
-- \MICROCODE_ROM_FILE|Mux13~0_combout\ & ( (\SHIFTER_FILE|temp\(5) & \MICROCODE_ROM_FILE|Mux12~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_temp\(5),
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_CAR[1]~reg0_q\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	combout => \SHIFTER_FILE|Mux2~1_combout\);

-- Location: LABCELL_X71_Y4_N15
\REGISTER_FILE|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux2~0_combout\ = ( \ALU_FILE|Mux2~2_combout\ & ( \ALU_FILE|Mux3~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & ((!\SHIFTER_FILE|Mux1~0_combout\) # (\SHIFTER_FILE|Mux2~1_combout\))) ) ) ) # ( !\ALU_FILE|Mux2~2_combout\ & ( 
-- \ALU_FILE|Mux3~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & (((!\SHIFTER_FILE|Mux2~0_combout\ & !\SHIFTER_FILE|Mux1~0_combout\)) # (\SHIFTER_FILE|Mux2~1_combout\))) ) ) ) # ( \ALU_FILE|Mux2~2_combout\ & ( !\ALU_FILE|Mux3~1_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux8~1_combout\ & (((\SHIFTER_FILE|Mux2~0_combout\ & !\SHIFTER_FILE|Mux1~0_combout\)) # (\SHIFTER_FILE|Mux2~1_combout\))) ) ) ) # ( !\ALU_FILE|Mux2~2_combout\ & ( !\ALU_FILE|Mux3~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux8~1_combout\ & 
-- \SHIFTER_FILE|Mux2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000100000011001100100000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux2~1_combout\,
	datae => \ALU_FILE|ALT_INV_Mux2~2_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux3~1_combout\,
	combout => \REGISTER_FILE|Mux2~0_combout\);

-- Location: FF_X71_Y4_N14
\REGISTER_FILE|R1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux2~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R1\(5));

-- Location: LABCELL_X75_Y2_N15
\REGISTER_FILE|Mux66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux66~0_combout\ = ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R7\(5) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R5\(5) ) ) 
-- ) # ( \MICROCODE_ROM_FILE|Mux4~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R6\(5) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R4\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R5\(5),
	datab => \REGISTER_FILE|ALT_INV_R4\(5),
	datac => \REGISTER_FILE|ALT_INV_R6\(5),
	datad => \REGISTER_FILE|ALT_INV_R7\(5),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	combout => \REGISTER_FILE|Mux66~0_combout\);

-- Location: LABCELL_X75_Y2_N18
\REGISTER_FILE|Mux66~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux66~1_combout\ = ( \REGISTER_FILE|R2\(5) & ( \REGISTER_FILE|Mux66~0_combout\ & ( ((!\REGISTER_FILE|Mux67~1_combout\ & (\REGISTER_FILE|R1\(5))) # (\REGISTER_FILE|Mux67~1_combout\ & ((\REGISTER_FILE|R3\(5))))) # 
-- (\REGISTER_FILE|Mux67~0_combout\) ) ) ) # ( !\REGISTER_FILE|R2\(5) & ( \REGISTER_FILE|Mux66~0_combout\ & ( (!\REGISTER_FILE|Mux67~0_combout\ & ((!\REGISTER_FILE|Mux67~1_combout\ & (\REGISTER_FILE|R1\(5))) # (\REGISTER_FILE|Mux67~1_combout\ & 
-- ((\REGISTER_FILE|R3\(5)))))) # (\REGISTER_FILE|Mux67~0_combout\ & (((!\REGISTER_FILE|Mux67~1_combout\)))) ) ) ) # ( \REGISTER_FILE|R2\(5) & ( !\REGISTER_FILE|Mux66~0_combout\ & ( (!\REGISTER_FILE|Mux67~0_combout\ & ((!\REGISTER_FILE|Mux67~1_combout\ & 
-- (\REGISTER_FILE|R1\(5))) # (\REGISTER_FILE|Mux67~1_combout\ & ((\REGISTER_FILE|R3\(5)))))) # (\REGISTER_FILE|Mux67~0_combout\ & (((\REGISTER_FILE|Mux67~1_combout\)))) ) ) ) # ( !\REGISTER_FILE|R2\(5) & ( !\REGISTER_FILE|Mux66~0_combout\ & ( 
-- (!\REGISTER_FILE|Mux67~0_combout\ & ((!\REGISTER_FILE|Mux67~1_combout\ & (\REGISTER_FILE|R1\(5))) # (\REGISTER_FILE|Mux67~1_combout\ & ((\REGISTER_FILE|R3\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux67~0_combout\,
	datab => \REGISTER_FILE|ALT_INV_R1\(5),
	datac => \REGISTER_FILE|ALT_INV_Mux67~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_R3\(5),
	datae => \REGISTER_FILE|ALT_INV_R2\(5),
	dataf => \REGISTER_FILE|ALT_INV_Mux66~0_combout\,
	combout => \REGISTER_FILE|Mux66~1_combout\);

-- Location: LABCELL_X75_Y2_N24
\ALU_FILE|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux14~0_combout\ = ( \REGISTER_FILE|Mux58~2_combout\ & ( !\MICROCODE_ROM_FILE|Mux10~1_combout\ $ (((!\REGISTER_FILE|Mux66~1_combout\ & !\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) ) # ( !\REGISTER_FILE|Mux58~2_combout\ & ( 
-- (!\MICROCODE_ROM_FILE|Mux10~1_combout\ & (\REGISTER_FILE|Mux66~1_combout\ & \MICROCODE_ROM_FILE|Mux11~1_combout\)) # (\MICROCODE_ROM_FILE|Mux10~1_combout\ & ((\MICROCODE_ROM_FILE|Mux11~1_combout\) # (\REGISTER_FILE|Mux66~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111100110011000011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux66~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux58~2_combout\,
	combout => \ALU_FILE|Mux14~0_combout\);

-- Location: LABCELL_X75_Y2_N3
\ALU_FILE|F_log[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_log\(5) = ( \ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|F_log\(5) & ( \ALU_FILE|Mux14~0_combout\ ) ) ) # ( !\ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|F_log\(5) ) ) # ( \ALU_FILE|Mux9~0_combout\ & ( !\ALU_FILE|F_log\(5) & ( \ALU_FILE|Mux14~0_combout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux14~0_combout\,
	datae => \ALU_FILE|ALT_INV_Mux9~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_log\(5),
	combout => \ALU_FILE|F_log\(5));

-- Location: LABCELL_X74_Y4_N18
\ALU_FILE|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux28~0_combout\ = ( \ALU_FILE|Add0~21_sumout\ & ( (!\MICROCODE_ROM_FILE|Mux11~1_combout\ $ (!\MICROCODE_ROM_FILE|Mux12~2_combout\)) # (\REGISTER_FILE|Mux58~2_combout\) ) ) # ( !\ALU_FILE|Add0~21_sumout\ & ( (\REGISTER_FILE|Mux58~2_combout\ & 
-- (!\MICROCODE_ROM_FILE|Mux11~1_combout\ $ (\MICROCODE_ROM_FILE|Mux12~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100101100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux58~2_combout\,
	dataf => \ALU_FILE|ALT_INV_Add0~21_sumout\,
	combout => \ALU_FILE|Mux28~0_combout\);

-- Location: LABCELL_X74_Y4_N15
\ALU_FILE|F_int[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_int\(5) = ( \ALU_FILE|F_int\(5) & ( (\ALU_FILE|Mux23~0_combout\) # (\ALU_FILE|Mux28~0_combout\) ) ) # ( !\ALU_FILE|F_int\(5) & ( (\ALU_FILE|Mux28~0_combout\ & !\ALU_FILE|Mux23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Mux28~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux23~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(5),
	combout => \ALU_FILE|F_int\(5));

-- Location: LABCELL_X71_Y4_N42
\ALU_FILE|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux3~1_combout\ = ( \MICROCODE_ROM_FILE|Mux9~1_combout\ & ( (!\ALU_FILE|Mux2~0_combout\ & \ALU_FILE|F_log\(5)) ) ) # ( !\MICROCODE_ROM_FILE|Mux9~1_combout\ & ( (!\ALU_FILE|Mux2~0_combout\ & \ALU_FILE|F_int\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	datac => \ALU_FILE|ALT_INV_F_log\(5),
	datad => \ALU_FILE|ALT_INV_F_int\(5),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	combout => \ALU_FILE|Mux3~1_combout\);

-- Location: LABCELL_X70_Y3_N42
\SHIFTER_FILE|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux16~0_combout\ = ( \MICROCODE_ROM_FILE|Mux14~0_combout\ & ( \ALU_FILE|Mux3~1_combout\ & ( \ALU_FILE|Mux1~1_combout\ ) ) ) # ( !\MICROCODE_ROM_FILE|Mux14~0_combout\ & ( \ALU_FILE|Mux3~1_combout\ ) ) # ( \MICROCODE_ROM_FILE|Mux14~0_combout\ 
-- & ( !\ALU_FILE|Mux3~1_combout\ & ( \ALU_FILE|Mux1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FILE|ALT_INV_Mux1~1_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux3~1_combout\,
	combout => \SHIFTER_FILE|Mux16~0_combout\);

-- Location: LABCELL_X70_Y3_N15
\SHIFTER_FILE|temp[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|temp\(6) = ( \SHIFTER_FILE|temp\(6) & ( (!\SHIFTER_FILE|Mux2~3_combout\) # (\SHIFTER_FILE|Mux16~0_combout\) ) ) # ( !\SHIFTER_FILE|temp\(6) & ( (\SHIFTER_FILE|Mux2~3_combout\ & \SHIFTER_FILE|Mux16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux2~3_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux16~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_temp\(6),
	combout => \SHIFTER_FILE|temp\(6));

-- Location: LABCELL_X70_Y3_N51
\SHIFTER_FILE|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux1~1_combout\ = ( \MICROCODE_ROM_FILE|Mux14~0_combout\ & ( \SHIFTER_FILE|temp\(6) & ( (\MICROCODE_ROM_FILE|Mux13~0_combout\ & (\MICROCODE_ROM_FILE|Mux12~0_combout\ & !\CAR[1]~reg0_q\)) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux14~0_combout\ & ( 
-- \SHIFTER_FILE|temp\(6) & ( (\MICROCODE_ROM_FILE|Mux13~0_combout\ & \MICROCODE_ROM_FILE|Mux12~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_CAR[1]~reg0_q\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_temp\(6),
	combout => \SHIFTER_FILE|Mux1~1_combout\);

-- Location: LABCELL_X74_Y3_N9
\REGISTER_FILE|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux17~0_combout\ = ( \SHIFTER_FILE|Mux1~1_combout\ & ( \ALU_FILE|Mux2~2_combout\ & ( \MICROCODE_ROM_FILE|Mux7~1_combout\ ) ) ) # ( !\SHIFTER_FILE|Mux1~1_combout\ & ( \ALU_FILE|Mux2~2_combout\ & ( (!\SHIFTER_FILE|Mux1~0_combout\ & 
-- (\MICROCODE_ROM_FILE|Mux7~1_combout\ & ((!\SHIFTER_FILE|Mux2~0_combout\) # (\ALU_FILE|Mux1~1_combout\)))) ) ) ) # ( \SHIFTER_FILE|Mux1~1_combout\ & ( !\ALU_FILE|Mux2~2_combout\ & ( \MICROCODE_ROM_FILE|Mux7~1_combout\ ) ) ) # ( 
-- !\SHIFTER_FILE|Mux1~1_combout\ & ( !\ALU_FILE|Mux2~2_combout\ & ( (!\SHIFTER_FILE|Mux1~0_combout\ & (\SHIFTER_FILE|Mux2~0_combout\ & (\ALU_FILE|Mux1~1_combout\ & \MICROCODE_ROM_FILE|Mux7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000001111111100000000100010100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux1~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux1~1_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux2~2_combout\,
	combout => \REGISTER_FILE|Mux17~0_combout\);

-- Location: FF_X74_Y3_N8
\REGISTER_FILE|R3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux17~0_combout\,
	sload => VCC,
	ena => \REGISTER_FILE|R3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R3\(6));

-- Location: IOIBUF_X4_Y0_N35
\DATA_I[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_I(6),
	o => \DATA_I[6]~input_o\);

-- Location: LABCELL_X73_Y2_N24
\REGISTER_FILE|Mux57~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux57~1_combout\ = ( \DATA_I[6]~input_o\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux2~0_combout\ & ((\REGISTER_FILE|R2\(6)))) # (\MICROCODE_ROM_FILE|Mux2~0_combout\ & (\REGISTER_FILE|R3\(6))) ) ) ) # ( 
-- !\DATA_I[6]~input_o\ & ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux2~0_combout\ & ((\REGISTER_FILE|R2\(6)))) # (\MICROCODE_ROM_FILE|Mux2~0_combout\ & (\REGISTER_FILE|R3\(6))) ) ) ) # ( \DATA_I[6]~input_o\ & ( 
-- !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux2~0_combout\) # (\REGISTER_FILE|R1\(6)) ) ) ) # ( !\DATA_I[6]~input_o\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux2~0_combout\ & \REGISTER_FILE|R1\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R3\(6),
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	datac => \REGISTER_FILE|ALT_INV_R1\(6),
	datad => \REGISTER_FILE|ALT_INV_R2\(6),
	datae => \ALT_INV_DATA_I[6]~input_o\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \REGISTER_FILE|Mux57~1_combout\);

-- Location: LABCELL_X70_Y2_N54
\REGISTER_FILE|Mux57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux57~0_combout\ = ( \REGISTER_FILE|R7\(6) & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux1~0_combout\) # (\REGISTER_FILE|R5\(6)) ) ) ) # ( !\REGISTER_FILE|R7\(6) & ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( 
-- (\REGISTER_FILE|R5\(6) & !\MICROCODE_ROM_FILE|Mux1~0_combout\) ) ) ) # ( \REGISTER_FILE|R7\(6) & ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & ((\REGISTER_FILE|R4\(6)))) # (\MICROCODE_ROM_FILE|Mux1~0_combout\ & 
-- (\REGISTER_FILE|R6\(6))) ) ) ) # ( !\REGISTER_FILE|R7\(6) & ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & ((\REGISTER_FILE|R4\(6)))) # (\MICROCODE_ROM_FILE|Mux1~0_combout\ & (\REGISTER_FILE|R6\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R6\(6),
	datab => \REGISTER_FILE|ALT_INV_R5\(6),
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	datad => \REGISTER_FILE|ALT_INV_R4\(6),
	datae => \REGISTER_FILE|ALT_INV_R7\(6),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	combout => \REGISTER_FILE|Mux57~0_combout\);

-- Location: LABCELL_X73_Y2_N12
\REGISTER_FILE|Mux57~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux57~2_combout\ = ( \MICROCODE_ROM_FILE|Mux0~0_combout\ & ( \REGISTER_FILE|Mux57~0_combout\ ) ) # ( !\MICROCODE_ROM_FILE|Mux0~0_combout\ & ( \REGISTER_FILE|Mux57~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REGISTER_FILE|ALT_INV_Mux57~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux57~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	combout => \REGISTER_FILE|Mux57~2_combout\);

-- Location: LABCELL_X71_Y1_N12
\ALU_FILE|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux29~0_combout\ = ( \MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~2_combout\ & (\ALU_FILE|Add0~25_sumout\)) # (\MICROCODE_ROM_FILE|Mux12~2_combout\ & ((\REGISTER_FILE|Mux57~2_combout\))) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~2_combout\ & ((\REGISTER_FILE|Mux57~2_combout\))) # (\MICROCODE_ROM_FILE|Mux12~2_combout\ & (\ALU_FILE|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Add0~25_sumout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux57~2_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	combout => \ALU_FILE|Mux29~0_combout\);

-- Location: LABCELL_X71_Y1_N15
\ALU_FILE|F_int[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_int\(6) = ( \ALU_FILE|F_int\(6) & ( (\ALU_FILE|Mux23~0_combout\) # (\ALU_FILE|Mux29~0_combout\) ) ) # ( !\ALU_FILE|F_int\(6) & ( (\ALU_FILE|Mux29~0_combout\ & !\ALU_FILE|Mux23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Mux29~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux23~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(6),
	combout => \ALU_FILE|F_int\(6));

-- Location: LABCELL_X70_Y4_N18
\SHIFTER_FILE|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux17~0_combout\ = ( \MICROCODE_ROM_FILE|Mux9~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux14~0_combout\ & ( (!\ALU_FILE|Mux2~0_combout\ & (\ALU_FILE|F_log\(6) & \MICROCODE_ROM_FILE|Mux13~1_combout\)) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux9~1_combout\ 
-- & ( !\MICROCODE_ROM_FILE|Mux14~0_combout\ & ( (!\ALU_FILE|Mux2~0_combout\ & (\ALU_FILE|F_int\(6) & \MICROCODE_ROM_FILE|Mux13~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	datab => \ALU_FILE|ALT_INV_F_int\(6),
	datac => \ALU_FILE|ALT_INV_F_log\(6),
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux13~1_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	combout => \SHIFTER_FILE|Mux17~0_combout\);

-- Location: LABCELL_X70_Y4_N0
\SHIFTER_FILE|temp[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|temp\(7) = ( \SHIFTER_FILE|Mux17~0_combout\ & ( (\SHIFTER_FILE|temp\(7)) # (\SHIFTER_FILE|Mux2~3_combout\) ) ) # ( !\SHIFTER_FILE|Mux17~0_combout\ & ( (!\SHIFTER_FILE|Mux2~3_combout\ & \SHIFTER_FILE|temp\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SHIFTER_FILE|ALT_INV_Mux2~3_combout\,
	datad => \SHIFTER_FILE|ALT_INV_temp\(7),
	dataf => \SHIFTER_FILE|ALT_INV_Mux17~0_combout\,
	combout => \SHIFTER_FILE|temp\(7));

-- Location: LABCELL_X74_Y3_N0
\ALU_FILE|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux1~0_combout\ = ( \MICROCODE_ROM_FILE|Mux10~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux11~0_combout\ & (\MICROCODE_ROM_FILE|Mux12~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux12~1_combout\) # (\CAR[2]~reg0_q\)))) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux10~0_combout\ & ( (!\CAR[2]~reg0_q\ & (\MICROCODE_ROM_FILE|Mux12~1_combout\ & (\MICROCODE_ROM_FILE|Mux11~0_combout\ & \MICROCODE_ROM_FILE|Mux12~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000110100000000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[2]~reg0_q\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux11~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux10~0_combout\,
	combout => \ALU_FILE|Mux1~0_combout\);

-- Location: LABCELL_X74_Y3_N54
\SHIFTER_FILE|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux0~1_combout\ = ( \ALU_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux14~0_combout\ & \CAR[1]~reg0_q\) ) ) # ( !\ALU_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\ & (((!\MICROCODE_ROM_FILE|Mux9~0_combout\) # 
-- (!\MICROCODE_ROM_FILE|Mux12~0_combout\)))) # (\MICROCODE_ROM_FILE|Mux14~0_combout\ & (\CAR[1]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110110001101110111011000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datab => \ALT_INV_CAR[1]~reg0_q\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux1~0_combout\,
	combout => \SHIFTER_FILE|Mux0~1_combout\);

-- Location: LABCELL_X73_Y2_N21
\ALU_FILE|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux16~0_combout\ = ( \MICROCODE_ROM_FILE|Mux10~1_combout\ & ( !\REGISTER_FILE|Mux56~2_combout\ $ (((!\REGISTER_FILE|Mux64~1_combout\ & !\MICROCODE_ROM_FILE|Mux11~1_combout\))) ) ) # ( !\MICROCODE_ROM_FILE|Mux10~1_combout\ & ( 
-- (!\REGISTER_FILE|Mux56~2_combout\ & (\REGISTER_FILE|Mux64~1_combout\ & \MICROCODE_ROM_FILE|Mux11~1_combout\)) # (\REGISTER_FILE|Mux56~2_combout\ & ((\MICROCODE_ROM_FILE|Mux11~1_combout\) # (\REGISTER_FILE|Mux64~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011010101010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux56~2_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux64~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	combout => \ALU_FILE|Mux16~0_combout\);

-- Location: LABCELL_X74_Y3_N33
\ALU_FILE|F_log[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_log\(7) = ( \ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|Mux16~0_combout\ ) ) # ( !\ALU_FILE|Mux9~0_combout\ & ( \ALU_FILE|F_log\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALU_FILE|ALT_INV_Mux16~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_log\(7),
	dataf => \ALU_FILE|ALT_INV_Mux9~0_combout\,
	combout => \ALU_FILE|F_log\(7));

-- Location: LABCELL_X74_Y3_N48
\SHIFTER_FILE|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux0~2_combout\ = ( \MICROCODE_ROM_FILE|Mux12~0_combout\ & ( \ALU_FILE|Mux9~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\ & (((\ALU_FILE|F_log\(7))))) # (\MICROCODE_ROM_FILE|Mux14~0_combout\ & 
-- (((\MICROCODE_ROM_FILE|Mux13~0_combout\)) # (\SHIFTER_FILE|Mux0~1_combout\))) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux12~0_combout\ & ( \ALU_FILE|Mux9~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\ & ((\ALU_FILE|F_log\(7)))) # 
-- (\MICROCODE_ROM_FILE|Mux14~0_combout\ & (\SHIFTER_FILE|Mux0~1_combout\)) ) ) ) # ( \MICROCODE_ROM_FILE|Mux12~0_combout\ & ( !\ALU_FILE|Mux9~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux14~0_combout\ & ((\MICROCODE_ROM_FILE|Mux13~0_combout\) # 
-- (\SHIFTER_FILE|Mux0~1_combout\))) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux12~0_combout\ & ( !\ALU_FILE|Mux9~0_combout\ & ( (\SHIFTER_FILE|Mux0~1_combout\ & \MICROCODE_ROM_FILE|Mux14~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000111100110101001101010011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux0~1_combout\,
	datab => \ALU_FILE|ALT_INV_F_log\(7),
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux13~0_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux9~0_combout\,
	combout => \SHIFTER_FILE|Mux0~2_combout\);

-- Location: LABCELL_X74_Y3_N15
\SHIFTER_FILE|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux7~1_combout\ = ( \ALU_FILE|F_int\(0) & ( (\MICROCODE_ROM_FILE|Mux13~1_combout\ & (!\ALU_FILE|Mux2~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux9~1_combout\) # (\ALU_FILE|F_log\(0))))) ) ) # ( !\ALU_FILE|F_int\(0) & ( (\ALU_FILE|F_log\(0) & 
-- (\MICROCODE_ROM_FILE|Mux9~1_combout\ & (\MICROCODE_ROM_FILE|Mux13~1_combout\ & !\ALU_FILE|Mux2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000001101000000000000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_F_log\(0),
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux13~1_combout\,
	datad => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(0),
	combout => \SHIFTER_FILE|Mux7~1_combout\);

-- Location: LABCELL_X74_Y3_N39
\SHIFTER_FILE|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux0~3_combout\ = ( \SHIFTER_FILE|Mux7~1_combout\ & ( ((!\MICROCODE_ROM_FILE|Mux14~0_combout\ & (\ALU_FILE|F_int\(7) & \SHIFTER_FILE|Mux0~1_combout\))) # (\SHIFTER_FILE|Mux0~2_combout\) ) ) # ( !\SHIFTER_FILE|Mux7~1_combout\ & ( 
-- (!\SHIFTER_FILE|Mux0~1_combout\ & (((\SHIFTER_FILE|Mux0~2_combout\)))) # (\SHIFTER_FILE|Mux0~1_combout\ & (!\MICROCODE_ROM_FILE|Mux14~0_combout\ & ((\ALU_FILE|F_int\(7)) # (\SHIFTER_FILE|Mux0~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100101010001100110010101000110011001110110011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux0~2_combout\,
	datac => \ALU_FILE|ALT_INV_F_int\(7),
	datad => \SHIFTER_FILE|ALT_INV_Mux0~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux7~1_combout\,
	combout => \SHIFTER_FILE|Mux0~3_combout\);

-- Location: LABCELL_X74_Y3_N42
\SHIFTER_FILE|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux0~0_combout\ = ( \SHIFTER_FILE|Mux0~1_combout\ & ( \SHIFTER_FILE|Mux0~3_combout\ & ( ((!\MICROCODE_ROM_FILE|Mux13~1_combout\) # (\MICROCODE_ROM_FILE|Mux14~0_combout\)) # (\SHIFTER_FILE|temp\(7)) ) ) ) # ( !\SHIFTER_FILE|Mux0~1_combout\ & 
-- ( \SHIFTER_FILE|Mux0~3_combout\ & ( ((!\MICROCODE_ROM_FILE|Mux14~0_combout\ & (!\MICROCODE_ROM_FILE|Mux13~1_combout\)) # (\MICROCODE_ROM_FILE|Mux14~0_combout\ & ((\ALU_FILE|c~combout\)))) # (\SHIFTER_FILE|temp\(7)) ) ) ) # ( \SHIFTER_FILE|Mux0~1_combout\ 
-- & ( !\SHIFTER_FILE|Mux0~3_combout\ & ( (\SHIFTER_FILE|temp\(7) & (\MICROCODE_ROM_FILE|Mux13~1_combout\ & !\MICROCODE_ROM_FILE|Mux14~0_combout\)) ) ) ) # ( !\SHIFTER_FILE|Mux0~1_combout\ & ( !\SHIFTER_FILE|Mux0~3_combout\ & ( (\SHIFTER_FILE|temp\(7) & 
-- (\MICROCODE_ROM_FILE|Mux13~1_combout\ & !\MICROCODE_ROM_FILE|Mux14~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000011010101110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_temp\(7),
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux13~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datad => \ALU_FILE|ALT_INV_c~combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux0~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux0~3_combout\,
	combout => \SHIFTER_FILE|Mux0~0_combout\);

-- Location: LABCELL_X74_Y3_N57
\REGISTER_FILE|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux0~0_combout\ = ( \SHIFTER_FILE|Mux0~0_combout\ & ( \MICROCODE_ROM_FILE|Mux8~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux0~0_combout\,
	combout => \REGISTER_FILE|Mux0~0_combout\);

-- Location: FF_X74_Y3_N53
\REGISTER_FILE|R1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \REGISTER_FILE|Mux0~0_combout\,
	sload => VCC,
	ena => \SEGEMENT_D_FILE_1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|R1\(7));

-- Location: LABCELL_X73_Y2_N51
\REGISTER_FILE|Mux64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux64~0_combout\ = ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R6\(7) & ( (!\MICROCODE_ROM_FILE|Mux4~1_combout\ & ((\REGISTER_FILE|R5\(7)))) # (\MICROCODE_ROM_FILE|Mux4~1_combout\ & (\REGISTER_FILE|R7\(7))) ) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( \REGISTER_FILE|R6\(7) & ( (\MICROCODE_ROM_FILE|Mux4~1_combout\) # (\REGISTER_FILE|R4\(7)) ) ) ) # ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( !\REGISTER_FILE|R6\(7) & ( (!\MICROCODE_ROM_FILE|Mux4~1_combout\ & 
-- ((\REGISTER_FILE|R5\(7)))) # (\MICROCODE_ROM_FILE|Mux4~1_combout\ & (\REGISTER_FILE|R7\(7))) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( !\REGISTER_FILE|R6\(7) & ( (\REGISTER_FILE|R4\(7) & !\MICROCODE_ROM_FILE|Mux4~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_R4\(7),
	datab => \REGISTER_FILE|ALT_INV_R7\(7),
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_R5\(7),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_R6\(7),
	combout => \REGISTER_FILE|Mux64~0_combout\);

-- Location: LABCELL_X73_Y2_N30
\REGISTER_FILE|Mux64~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|Mux64~1_combout\ = ( \REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|Mux64~0_combout\ & ( (!\REGISTER_FILE|Mux67~0_combout\ & (\REGISTER_FILE|R3\(7))) # (\REGISTER_FILE|Mux67~0_combout\ & ((\REGISTER_FILE|R2\(7)))) ) ) ) # ( 
-- !\REGISTER_FILE|Mux67~1_combout\ & ( \REGISTER_FILE|Mux64~0_combout\ & ( (\REGISTER_FILE|R1\(7)) # (\REGISTER_FILE|Mux67~0_combout\) ) ) ) # ( \REGISTER_FILE|Mux67~1_combout\ & ( !\REGISTER_FILE|Mux64~0_combout\ & ( (!\REGISTER_FILE|Mux67~0_combout\ & 
-- (\REGISTER_FILE|R3\(7))) # (\REGISTER_FILE|Mux67~0_combout\ & ((\REGISTER_FILE|R2\(7)))) ) ) ) # ( !\REGISTER_FILE|Mux67~1_combout\ & ( !\REGISTER_FILE|Mux64~0_combout\ & ( (!\REGISTER_FILE|Mux67~0_combout\ & \REGISTER_FILE|R1\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux67~0_combout\,
	datab => \REGISTER_FILE|ALT_INV_R1\(7),
	datac => \REGISTER_FILE|ALT_INV_R3\(7),
	datad => \REGISTER_FILE|ALT_INV_R2\(7),
	datae => \REGISTER_FILE|ALT_INV_Mux67~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux64~0_combout\,
	combout => \REGISTER_FILE|Mux64~1_combout\);

-- Location: LABCELL_X74_Y4_N57
\ALU_FILE|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux30~0_combout\ = ( \MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~2_combout\ & (\ALU_FILE|Add0~29_sumout\)) # (\MICROCODE_ROM_FILE|Mux12~2_combout\ & ((\REGISTER_FILE|Mux56~2_combout\))) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux11~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~2_combout\ & ((\REGISTER_FILE|Mux56~2_combout\))) # (\MICROCODE_ROM_FILE|Mux12~2_combout\ & (\ALU_FILE|Add0~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Add0~29_sumout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux56~2_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	combout => \ALU_FILE|Mux30~0_combout\);

-- Location: LABCELL_X74_Y4_N54
\ALU_FILE|F_int[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|F_int\(7) = (!\ALU_FILE|Mux23~0_combout\ & (\ALU_FILE|Mux30~0_combout\)) # (\ALU_FILE|Mux23~0_combout\ & ((\ALU_FILE|F_int\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Mux30~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux23~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_int\(7),
	combout => \ALU_FILE|F_int\(7));

-- Location: LABCELL_X74_Y3_N30
\ALU_FILE|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux1~1_combout\ = ( \ALU_FILE|F_log\(7) & ( (!\MICROCODE_ROM_FILE|Mux9~1_combout\ & (((\ALU_FILE|F_int\(7) & !\ALU_FILE|Mux1~0_combout\)))) # (\MICROCODE_ROM_FILE|Mux9~1_combout\ & (!\MICROCODE_ROM_FILE|Mux12~2_combout\)) ) ) # ( 
-- !\ALU_FILE|F_log\(7) & ( (!\MICROCODE_ROM_FILE|Mux9~1_combout\ & (\ALU_FILE|F_int\(7) & !\ALU_FILE|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001001110010001000100111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datac => \ALU_FILE|ALT_INV_F_int\(7),
	datad => \ALU_FILE|ALT_INV_Mux1~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_log\(7),
	combout => \ALU_FILE|Mux1~1_combout\);

-- Location: LABCELL_X74_Y4_N45
\ALU_FILE|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux20~0_combout\ = ( !\MICROCODE_ROM_FILE|Mux10~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux11~1_combout\ & (!\MICROCODE_ROM_FILE|Mux12~2_combout\ & !\MICROCODE_ROM_FILE|Mux9~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	combout => \ALU_FILE|Mux20~0_combout\);

-- Location: LABCELL_X74_Y4_N24
\ALU_FILE|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|s~combout\ = ( \ALU_FILE|Mux20~0_combout\ & ( \ALU_FILE|s~combout\ ) ) # ( !\ALU_FILE|Mux20~0_combout\ & ( \ALU_FILE|s~combout\ & ( \ALU_FILE|Mux1~1_combout\ ) ) ) # ( !\ALU_FILE|Mux20~0_combout\ & ( !\ALU_FILE|s~combout\ & ( 
-- \ALU_FILE|Mux1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux1~1_combout\,
	datae => \ALU_FILE|ALT_INV_Mux20~0_combout\,
	dataf => \ALU_FILE|ALT_INV_s~combout\,
	combout => \ALU_FILE|s~combout\);

-- Location: LABCELL_X73_Y1_N33
\MICROCODE_ROM_FILE|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux18~0_combout\ = ( \MICROCODE_ROM_FILE|Mux12~0_combout\ & ( (!\CAR[2]~reg0_q\ & (\CAR[3]~reg0_q\ & (!\CAR[0]~reg0_q\ $ (!\CAR[1]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[0]~reg0_q\,
	datab => \ALT_INV_CAR[2]~reg0_q\,
	datac => \ALT_INV_CAR[1]~reg0_q\,
	datad => \ALT_INV_CAR[3]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux18~0_combout\);

-- Location: LABCELL_X73_Y1_N21
\MICROCODE_ROM_FILE|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux17~0_combout\ = ( \MICROCODE_ROM_FILE|Mux12~0_combout\ & ( (!\CAR[0]~reg0_q\ & (!\CAR[2]~reg0_q\ & (!\CAR[1]~reg0_q\ & \CAR[3]~reg0_q\))) # (\CAR[0]~reg0_q\ & (\CAR[2]~reg0_q\ & (\CAR[1]~reg0_q\ & !\CAR[3]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001100000000000000110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[0]~reg0_q\,
	datab => \ALT_INV_CAR[2]~reg0_q\,
	datac => \ALT_INV_CAR[1]~reg0_q\,
	datad => \ALT_INV_CAR[3]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux17~0_combout\);

-- Location: MLABCELL_X72_Y1_N39
\MICROCODE_ROM_FILE|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux16~0_combout\ = ( \CAR[2]~reg0_q\ & ( \MICROCODE_ROM_FILE|Mux12~0_combout\ & ( (!\CAR[3]~reg0_q\ & (!\CAR[0]~reg0_q\ $ (\CAR[1]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[0]~reg0_q\,
	datac => \ALT_INV_CAR[3]~reg0_q\,
	datad => \ALT_INV_CAR[1]~reg0_q\,
	datae => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux16~0_combout\);

-- Location: LABCELL_X74_Y4_N30
\ALU_FILE|Mux19~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux19~4_combout\ = ( !\ALU_FILE|F_int\(3) & ( (!\ALU_FILE|F_int\(4) & (!\ALU_FILE|F_int\(8) & (!\ALU_FILE|F_int\(1) & !\ALU_FILE|F_int\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_F_int\(4),
	datab => \ALU_FILE|ALT_INV_F_int\(8),
	datac => \ALU_FILE|ALT_INV_F_int\(1),
	datad => \ALU_FILE|ALT_INV_F_int\(2),
	dataf => \ALU_FILE|ALT_INV_F_int\(3),
	combout => \ALU_FILE|Mux19~4_combout\);

-- Location: LABCELL_X70_Y4_N57
\ALU_FILE|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux19~0_combout\ = ( !\ALU_FILE|F_log\(1) & ( (!\ALU_FILE|F_log\(0) & (!\ALU_FILE|F_log\(3) & !\ALU_FILE|F_log\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_F_log\(0),
	datac => \ALU_FILE|ALT_INV_F_log\(3),
	datad => \ALU_FILE|ALT_INV_F_log\(2),
	dataf => \ALU_FILE|ALT_INV_F_log\(1),
	combout => \ALU_FILE|Mux19~0_combout\);

-- Location: LABCELL_X70_Y4_N6
\ALU_FILE|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux19~1_combout\ = ( \ALU_FILE|Mux19~0_combout\ & ( !\ALU_FILE|F_log\(4) & ( (!\ALU_FILE|F_log\(5) & (!\ALU_FILE|F_log\(6) & !\ALU_FILE|F_log\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_F_log\(5),
	datac => \ALU_FILE|ALT_INV_F_log\(6),
	datad => \ALU_FILE|ALT_INV_F_log\(7),
	datae => \ALU_FILE|ALT_INV_Mux19~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_log\(4),
	combout => \ALU_FILE|Mux19~1_combout\);

-- Location: LABCELL_X74_Y4_N6
\ALU_FILE|Mux19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux19~3_combout\ = ( !\MICROCODE_ROM_FILE|Mux9~1_combout\ & ( \MICROCODE_ROM_FILE|Mux12~2_combout\ & ( (!\ALU_FILE|F_int\(0) & ((!\MICROCODE_ROM_FILE|Mux11~1_combout\) # (\MICROCODE_ROM_FILE|Mux10~1_combout\))) ) ) ) # ( 
-- \MICROCODE_ROM_FILE|Mux9~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux12~2_combout\ & ( \ALU_FILE|Mux19~1_combout\ ) ) ) # ( !\MICROCODE_ROM_FILE|Mux9~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux12~2_combout\ & ( (\MICROCODE_ROM_FILE|Mux11~1_combout\ & 
-- !\ALU_FILE|F_int\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000001111111110110000101100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux11~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux10~1_combout\,
	datac => \ALU_FILE|ALT_INV_F_int\(0),
	datad => \ALU_FILE|ALT_INV_Mux19~1_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~2_combout\,
	combout => \ALU_FILE|Mux19~3_combout\);

-- Location: LABCELL_X75_Y4_N6
\ALU_FILE|Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux19~2_combout\ = ( \ALU_FILE|F_int\(6) & ( \ALU_FILE|F_int\(5) & ( (\ALU_FILE|Mux19~3_combout\ & \MICROCODE_ROM_FILE|Mux9~1_combout\) ) ) ) # ( !\ALU_FILE|F_int\(6) & ( \ALU_FILE|F_int\(5) & ( (\ALU_FILE|Mux19~3_combout\ & 
-- \MICROCODE_ROM_FILE|Mux9~1_combout\) ) ) ) # ( \ALU_FILE|F_int\(6) & ( !\ALU_FILE|F_int\(5) & ( (\ALU_FILE|Mux19~3_combout\ & \MICROCODE_ROM_FILE|Mux9~1_combout\) ) ) ) # ( !\ALU_FILE|F_int\(6) & ( !\ALU_FILE|F_int\(5) & ( (\ALU_FILE|Mux19~3_combout\ & 
-- (((\ALU_FILE|Mux19~4_combout\ & !\ALU_FILE|F_int\(7))) # (\MICROCODE_ROM_FILE|Mux9~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux19~4_combout\,
	datab => \ALU_FILE|ALT_INV_Mux19~3_combout\,
	datac => \ALU_FILE|ALT_INV_F_int\(7),
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux9~1_combout\,
	datae => \ALU_FILE|ALT_INV_F_int\(6),
	dataf => \ALU_FILE|ALT_INV_F_int\(5),
	combout => \ALU_FILE|Mux19~2_combout\);

-- Location: LABCELL_X74_Y4_N42
\ALU_FILE|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|z~combout\ = ( \ALU_FILE|Mux20~0_combout\ & ( \ALU_FILE|z~combout\ ) ) # ( !\ALU_FILE|Mux20~0_combout\ & ( \ALU_FILE|Mux19~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Mux19~2_combout\,
	datad => \ALU_FILE|ALT_INV_z~combout\,
	dataf => \ALU_FILE|ALT_INV_Mux20~0_combout\,
	combout => \ALU_FILE|z~combout\);

-- Location: LABCELL_X74_Y4_N0
\CAR[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CAR[2]~8_combout\ = ( \ALU_FILE|c~combout\ & ( \ALU_FILE|z~combout\ & ( (!\MICROCODE_ROM_FILE|Mux18~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux17~0_combout\ & ((\MICROCODE_ROM_FILE|Mux16~0_combout\))) # (\MICROCODE_ROM_FILE|Mux17~0_combout\ & 
-- ((!\MICROCODE_ROM_FILE|Mux16~0_combout\) # (\ALU_FILE|s~combout\))))) # (\MICROCODE_ROM_FILE|Mux18~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux17~0_combout\ $ (\MICROCODE_ROM_FILE|Mux16~0_combout\)))) ) ) ) # ( !\ALU_FILE|c~combout\ & ( \ALU_FILE|z~combout\ & 
-- ( (!\MICROCODE_ROM_FILE|Mux18~0_combout\ & (\MICROCODE_ROM_FILE|Mux16~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux17~0_combout\) # (\ALU_FILE|s~combout\)))) # (\MICROCODE_ROM_FILE|Mux18~0_combout\ & (((!\MICROCODE_ROM_FILE|Mux16~0_combout\)))) ) ) ) # ( 
-- \ALU_FILE|c~combout\ & ( !\ALU_FILE|z~combout\ & ( (!\MICROCODE_ROM_FILE|Mux18~0_combout\ & (\MICROCODE_ROM_FILE|Mux17~0_combout\ & ((!\MICROCODE_ROM_FILE|Mux16~0_combout\) # (\ALU_FILE|s~combout\)))) # (\MICROCODE_ROM_FILE|Mux18~0_combout\ & 
-- (((!\MICROCODE_ROM_FILE|Mux17~0_combout\) # (\MICROCODE_ROM_FILE|Mux16~0_combout\)))) ) ) ) # ( !\ALU_FILE|c~combout\ & ( !\ALU_FILE|z~combout\ & ( (!\MICROCODE_ROM_FILE|Mux18~0_combout\ & (\ALU_FILE|s~combout\ & (\MICROCODE_ROM_FILE|Mux17~0_combout\ & 
-- \MICROCODE_ROM_FILE|Mux16~0_combout\))) # (\MICROCODE_ROM_FILE|Mux18~0_combout\ & (((!\MICROCODE_ROM_FILE|Mux17~0_combout\) # (!\MICROCODE_ROM_FILE|Mux16~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110100001111000011011100110011110001000011110011000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_s~combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux18~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux17~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux16~0_combout\,
	datae => \ALU_FILE|ALT_INV_c~combout\,
	dataf => \ALU_FILE|ALT_INV_z~combout\,
	combout => \CAR[2]~8_combout\);

-- Location: FF_X71_Y2_N17
\CAR[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \CAR[0]~reg0feeder_combout\,
	asdata => \MICROCODE_ROM_FILE|Mux22~0_combout\,
	sload => \CAR[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAR[0]~reg0_q\);

-- Location: LABCELL_X71_Y3_N27
\MICROCODE_ROM_FILE|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux22~0_combout\ = ( \MICROCODE_ROM_FILE|Mux12~1_combout\ & ( (\CAR[0]~reg0_q\ & \CAR[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[0]~reg0_q\,
	datab => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~1_combout\,
	combout => \MICROCODE_ROM_FILE|Mux22~0_combout\);

-- Location: LABCELL_X70_Y2_N0
\MICROCODE_ROM_FILE|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MICROCODE_ROM_FILE|Mux3~1_combout\ = ( \MICROCODE_ROM_FILE|Mux3~0_combout\ & ( \MICROCODE_ROM_FILE|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux3~0_combout\,
	combout => \MICROCODE_ROM_FILE|Mux3~1_combout\);

-- Location: IOIBUF_X36_Y0_N18
\CLK1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK1,
	o => \CLK1~input_o\);

-- Location: CLKCTRL_G6
\CLK1~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK1~input_o\,
	outclk => \CLK1~inputCLKENA0_outclk\);

-- Location: LABCELL_X73_Y3_N6
\COUNT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \COUNT~2_combout\ = !\COUNT~reg0_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_COUNT~reg0_q\,
	combout => \COUNT~2_combout\);

-- Location: FF_X73_Y3_N8
\COUNT~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \COUNT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT~reg0_q\);

-- Location: LABCELL_X71_Y1_N0
\SHIFTER_FILE|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux8~0_combout\ = ( \MICROCODE_ROM_FILE|Mux13~1_combout\ & ( \ALU_FILE|Mux1~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux14~0_combout\) # ((!\CAR[1]~reg0_q\ & (\ALU_FILE|Mux8~0_combout\)) # (\CAR[1]~reg0_q\ & ((\ALU_FILE|c~combout\)))) ) ) ) # ( 
-- !\MICROCODE_ROM_FILE|Mux13~1_combout\ & ( \ALU_FILE|Mux1~1_combout\ & ( (\ALU_FILE|c~combout\ & ((!\MICROCODE_ROM_FILE|Mux14~0_combout\) # (\CAR[1]~reg0_q\))) ) ) ) # ( \MICROCODE_ROM_FILE|Mux13~1_combout\ & ( !\ALU_FILE|Mux1~1_combout\ & ( 
-- (\MICROCODE_ROM_FILE|Mux14~0_combout\ & ((!\CAR[1]~reg0_q\ & (\ALU_FILE|Mux8~0_combout\)) # (\CAR[1]~reg0_q\ & ((\ALU_FILE|c~combout\))))) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux13~1_combout\ & ( !\ALU_FILE|Mux1~1_combout\ & ( (\ALU_FILE|c~combout\ & 
-- ((!\MICROCODE_ROM_FILE|Mux14~0_combout\) # (\CAR[1]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000100000001010100000000101011111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux14~0_combout\,
	datab => \ALU_FILE|ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_CAR[1]~reg0_q\,
	datad => \ALU_FILE|ALT_INV_c~combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux13~1_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux1~1_combout\,
	combout => \SHIFTER_FILE|Mux8~0_combout\);

-- Location: LABCELL_X73_Y1_N6
\SEGEMENT_A_FILE_1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_A_FILE_1|Mux6~0_combout\ = ( \MICROCODE_ROM_FILE|Mux0~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & !\MICROCODE_ROM_FILE|Mux2~0_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux0~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & 
-- \MICROCODE_ROM_FILE|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	combout => \SEGEMENT_A_FILE_1|Mux6~0_combout\);

-- Location: LABCELL_X70_Y2_N42
\SEGEMENT_A_FILE_1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_A_FILE_1|Mux5~0_combout\ = ( \MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux0~0_combout\ & !\MICROCODE_ROM_FILE|Mux1~0_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux0~0_combout\ & 
-- \MICROCODE_ROM_FILE|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	combout => \SEGEMENT_A_FILE_1|Mux5~0_combout\);

-- Location: MLABCELL_X72_Y1_N48
\SEGEMENT_A_FILE_1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_A_FILE_1|Mux4~0_combout\ = ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux2~0_combout\ & !\MICROCODE_ROM_FILE|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \SEGEMENT_A_FILE_1|Mux4~0_combout\);

-- Location: LABCELL_X70_Y4_N54
\SEGEMENT_A_FILE_1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_A_FILE_1|Mux3~0_combout\ = ( \MICROCODE_ROM_FILE|Mux0~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ $ (\MICROCODE_ROM_FILE|Mux2~0_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux0~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & 
-- \MICROCODE_ROM_FILE|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	combout => \SEGEMENT_A_FILE_1|Mux3~0_combout\);

-- Location: MLABCELL_X72_Y1_N57
\SEGEMENT_A_FILE_1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_A_FILE_1|Mux2~0_combout\ = ( \MICROCODE_ROM_FILE|Mux2~0_combout\ ) # ( !\MICROCODE_ROM_FILE|Mux2~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux1~0_combout\ & \MICROCODE_ROM_FILE|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	combout => \SEGEMENT_A_FILE_1|Mux2~0_combout\);

-- Location: MLABCELL_X72_Y1_N51
\SEGEMENT_A_FILE_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_A_FILE_1|Mux1~0_combout\ = ( \MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux0~0_combout\) # (\MICROCODE_ROM_FILE|Mux2~0_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux2~0_combout\ & 
-- !\MICROCODE_ROM_FILE|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	combout => \SEGEMENT_A_FILE_1|Mux1~0_combout\);

-- Location: LABCELL_X73_Y1_N54
\SEGEMENT_A_FILE_1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_A_FILE_1|Mux0~0_combout\ = ( \MICROCODE_ROM_FILE|Mux0~0_combout\ & ( (\MICROCODE_ROM_FILE|Mux1~0_combout\ & \MICROCODE_ROM_FILE|Mux2~0_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux0~0_combout\ & ( !\MICROCODE_ROM_FILE|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux1~0_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux0~0_combout\,
	combout => \SEGEMENT_A_FILE_1|Mux0~0_combout\);

-- Location: LABCELL_X75_Y3_N9
\SEGEMENT_B_FILE_1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_B_FILE_1|Mux6~0_combout\ = ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux3~1_combout\ ) ) ) # ( !\MICROCODE_ROM_FILE|Mux4~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( 
-- \MICROCODE_ROM_FILE|Mux3~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux3~1_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	combout => \SEGEMENT_B_FILE_1|Mux6~0_combout\);

-- Location: LABCELL_X74_Y2_N27
\SEGEMENT_B_FILE_1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_B_FILE_1|Mux5~0_combout\ = ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux4~1_combout\ & \MICROCODE_ROM_FILE|Mux3~1_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux4~1_combout\ & 
-- \MICROCODE_ROM_FILE|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux3~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	combout => \SEGEMENT_B_FILE_1|Mux5~0_combout\);

-- Location: LABCELL_X74_Y2_N36
\SEGEMENT_B_FILE_1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_B_FILE_1|Mux4~0_combout\ = ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux3~1_combout\ & \MICROCODE_ROM_FILE|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux3~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	combout => \SEGEMENT_B_FILE_1|Mux4~0_combout\);

-- Location: LABCELL_X74_Y2_N42
\SEGEMENT_B_FILE_1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_B_FILE_1|Mux3~0_combout\ = ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux3~1_combout\ $ (\MICROCODE_ROM_FILE|Mux4~1_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux3~1_combout\ & 
-- !\MICROCODE_ROM_FILE|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux3~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	combout => \SEGEMENT_B_FILE_1|Mux3~0_combout\);

-- Location: LABCELL_X74_Y2_N54
\SEGEMENT_B_FILE_1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_B_FILE_1|Mux2~0_combout\ = ( \MICROCODE_ROM_FILE|Mux5~1_combout\ ) # ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux3~1_combout\ & !\MICROCODE_ROM_FILE|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux3~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	combout => \SEGEMENT_B_FILE_1|Mux2~0_combout\);

-- Location: LABCELL_X74_Y2_N39
\SEGEMENT_B_FILE_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_B_FILE_1|Mux1~0_combout\ = ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux3~1_combout\) # (\MICROCODE_ROM_FILE|Mux4~1_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux4~1_combout\ & 
-- !\MICROCODE_ROM_FILE|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux3~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	combout => \SEGEMENT_B_FILE_1|Mux1~0_combout\);

-- Location: LABCELL_X75_Y2_N48
\SEGEMENT_B_FILE_1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_B_FILE_1|Mux0~0_combout\ = ( \MICROCODE_ROM_FILE|Mux5~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux3~1_combout\ $ (\MICROCODE_ROM_FILE|Mux4~1_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux5~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux3~1_combout\ & 
-- !\MICROCODE_ROM_FILE|Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux3~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux4~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux5~1_combout\,
	combout => \SEGEMENT_B_FILE_1|Mux0~0_combout\);

-- Location: LABCELL_X73_Y1_N30
\SEGEMENT_D_FILE_1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_D_FILE_1|Mux6~0_combout\ = ( \MICROCODE_ROM_FILE|Mux8~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux7~1_combout\ & !\MICROCODE_ROM_FILE|Mux6~1_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux8~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux7~1_combout\ & 
-- \MICROCODE_ROM_FILE|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	combout => \SEGEMENT_D_FILE_1|Mux6~0_combout\);

-- Location: LABCELL_X73_Y1_N18
\SEGEMENT_D_FILE_1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_D_FILE_1|Mux5~0_combout\ = ( \MICROCODE_ROM_FILE|Mux8~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux7~1_combout\ & \MICROCODE_ROM_FILE|Mux6~1_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux8~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux7~1_combout\ & 
-- \MICROCODE_ROM_FILE|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	combout => \SEGEMENT_D_FILE_1|Mux5~0_combout\);

-- Location: LABCELL_X75_Y2_N54
\SEGEMENT_D_FILE_1|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_D_FILE_1|Mux4~1_combout\ = ( \MICROCODE_ROM_FILE|Mux7~1_combout\ & ( \SEGEMENT_D_FILE_1|Mux4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEGEMENT_D_FILE_1|ALT_INV_Mux4~0_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	combout => \SEGEMENT_D_FILE_1|Mux4~1_combout\);

-- Location: LABCELL_X75_Y3_N12
\SEGEMENT_D_FILE_1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_D_FILE_1|Mux3~0_combout\ = ( \MICROCODE_ROM_FILE|Mux6~1_combout\ & ( \MICROCODE_ROM_FILE|Mux8~1_combout\ & ( \MICROCODE_ROM_FILE|Mux7~1_combout\ ) ) ) # ( !\MICROCODE_ROM_FILE|Mux6~1_combout\ & ( \MICROCODE_ROM_FILE|Mux8~1_combout\ & ( 
-- !\MICROCODE_ROM_FILE|Mux7~1_combout\ ) ) ) # ( \MICROCODE_ROM_FILE|Mux6~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux8~1_combout\ & ( !\MICROCODE_ROM_FILE|Mux7~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	combout => \SEGEMENT_D_FILE_1|Mux3~0_combout\);

-- Location: MLABCELL_X72_Y3_N3
\SEGEMENT_D_FILE_1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_D_FILE_1|Mux2~0_combout\ = ((\MICROCODE_ROM_FILE|Mux6~1_combout\ & !\MICROCODE_ROM_FILE|Mux7~1_combout\)) # (\MICROCODE_ROM_FILE|Mux8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	combout => \SEGEMENT_D_FILE_1|Mux2~0_combout\);

-- Location: MLABCELL_X72_Y1_N24
\SEGEMENT_D_FILE_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_D_FILE_1|Mux1~0_combout\ = ( \MICROCODE_ROM_FILE|Mux8~1_combout\ & ( (!\MICROCODE_ROM_FILE|Mux6~1_combout\) # (\MICROCODE_ROM_FILE|Mux7~1_combout\) ) ) # ( !\MICROCODE_ROM_FILE|Mux8~1_combout\ & ( (\MICROCODE_ROM_FILE|Mux7~1_combout\ & 
-- !\MICROCODE_ROM_FILE|Mux6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	combout => \SEGEMENT_D_FILE_1|Mux1~0_combout\);

-- Location: LABCELL_X73_Y1_N9
\SEGEMENT_D_FILE_1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGEMENT_D_FILE_1|Mux0~0_combout\ = (!\MICROCODE_ROM_FILE|Mux7~1_combout\ & ((!\MICROCODE_ROM_FILE|Mux6~1_combout\))) # (\MICROCODE_ROM_FILE|Mux7~1_combout\ & (\MICROCODE_ROM_FILE|Mux8~1_combout\ & \MICROCODE_ROM_FILE|Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000101101010100000010110101010000001011010101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux7~1_combout\,
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux8~1_combout\,
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux6~1_combout\,
	combout => \SEGEMENT_D_FILE_1|Mux0~0_combout\);

-- Location: MLABCELL_X72_Y2_N0
\SEGMENT_A_FILE|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_A_FILE|Mux6~0_combout\ = ( \REGISTER_FILE|Mux62~2_combout\ & ( (\REGISTER_FILE|Mux60~2_combout\ & (\REGISTER_FILE|Mux63~2_combout\ & !\REGISTER_FILE|Mux61~2_combout\)) ) ) # ( !\REGISTER_FILE|Mux62~2_combout\ & ( (!\REGISTER_FILE|Mux60~2_combout\ 
-- & (!\REGISTER_FILE|Mux63~2_combout\ $ (!\REGISTER_FILE|Mux61~2_combout\))) # (\REGISTER_FILE|Mux60~2_combout\ & (\REGISTER_FILE|Mux63~2_combout\ & \REGISTER_FILE|Mux61~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux60~2_combout\,
	datab => \REGISTER_FILE|ALT_INV_Mux63~2_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux61~2_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux62~2_combout\,
	combout => \SEGMENT_A_FILE|Mux6~0_combout\);

-- Location: MLABCELL_X72_Y2_N48
\SEGMENT_A_FILE|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_A_FILE|Mux5~0_combout\ = ( \REGISTER_FILE|Mux62~2_combout\ & ( (!\REGISTER_FILE|Mux63~2_combout\ & ((\REGISTER_FILE|Mux61~2_combout\))) # (\REGISTER_FILE|Mux63~2_combout\ & (\REGISTER_FILE|Mux60~2_combout\)) ) ) # ( 
-- !\REGISTER_FILE|Mux62~2_combout\ & ( (\REGISTER_FILE|Mux61~2_combout\ & (!\REGISTER_FILE|Mux60~2_combout\ $ (!\REGISTER_FILE|Mux63~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux60~2_combout\,
	datab => \REGISTER_FILE|ALT_INV_Mux63~2_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux61~2_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux62~2_combout\,
	combout => \SEGMENT_A_FILE|Mux5~0_combout\);

-- Location: MLABCELL_X72_Y2_N3
\SEGMENT_A_FILE|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_A_FILE|Mux4~0_combout\ = ( \REGISTER_FILE|Mux61~2_combout\ & ( (\REGISTER_FILE|Mux60~2_combout\ & ((!\REGISTER_FILE|Mux63~2_combout\) # (\REGISTER_FILE|Mux62~2_combout\))) ) ) # ( !\REGISTER_FILE|Mux61~2_combout\ & ( 
-- (!\REGISTER_FILE|Mux60~2_combout\ & (!\REGISTER_FILE|Mux63~2_combout\ & \REGISTER_FILE|Mux62~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux60~2_combout\,
	datab => \REGISTER_FILE|ALT_INV_Mux63~2_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux62~2_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux61~2_combout\,
	combout => \SEGMENT_A_FILE|Mux4~0_combout\);

-- Location: LABCELL_X73_Y4_N48
\SEGMENT_A_FILE|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_A_FILE|Mux3~0_combout\ = ( \REGISTER_FILE|Mux60~2_combout\ & ( (!\REGISTER_FILE|Mux61~2_combout\ & (!\REGISTER_FILE|Mux62~2_combout\ $ (!\REGISTER_FILE|Mux63~2_combout\))) # (\REGISTER_FILE|Mux61~2_combout\ & (\REGISTER_FILE|Mux62~2_combout\ & 
-- \REGISTER_FILE|Mux63~2_combout\)) ) ) # ( !\REGISTER_FILE|Mux60~2_combout\ & ( (!\REGISTER_FILE|Mux61~2_combout\ & (!\REGISTER_FILE|Mux62~2_combout\ & \REGISTER_FILE|Mux63~2_combout\)) # (\REGISTER_FILE|Mux61~2_combout\ & (!\REGISTER_FILE|Mux62~2_combout\ 
-- $ (\REGISTER_FILE|Mux63~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux61~2_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux62~2_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux63~2_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux60~2_combout\,
	combout => \SEGMENT_A_FILE|Mux3~0_combout\);

-- Location: MLABCELL_X72_Y2_N33
\SEGMENT_A_FILE|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_A_FILE|Mux2~0_combout\ = ( \REGISTER_FILE|Mux61~2_combout\ & ( (!\REGISTER_FILE|Mux60~2_combout\ & ((!\REGISTER_FILE|Mux62~2_combout\) # (\REGISTER_FILE|Mux63~2_combout\))) ) ) # ( !\REGISTER_FILE|Mux61~2_combout\ & ( 
-- (\REGISTER_FILE|Mux63~2_combout\ & ((!\REGISTER_FILE|Mux60~2_combout\) # (!\REGISTER_FILE|Mux62~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux60~2_combout\,
	datab => \REGISTER_FILE|ALT_INV_Mux63~2_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux62~2_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux61~2_combout\,
	combout => \SEGMENT_A_FILE|Mux2~0_combout\);

-- Location: MLABCELL_X72_Y2_N51
\SEGMENT_A_FILE|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_A_FILE|Mux1~0_combout\ = ( \REGISTER_FILE|Mux61~2_combout\ & ( (\REGISTER_FILE|Mux63~2_combout\ & (!\REGISTER_FILE|Mux60~2_combout\ $ (!\REGISTER_FILE|Mux62~2_combout\))) ) ) # ( !\REGISTER_FILE|Mux61~2_combout\ & ( 
-- (!\REGISTER_FILE|Mux60~2_combout\ & ((\REGISTER_FILE|Mux62~2_combout\) # (\REGISTER_FILE|Mux63~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux60~2_combout\,
	datab => \REGISTER_FILE|ALT_INV_Mux63~2_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux62~2_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux61~2_combout\,
	combout => \SEGMENT_A_FILE|Mux1~0_combout\);

-- Location: MLABCELL_X72_Y2_N54
\SEGMENT_A_FILE|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_A_FILE|Mux0~0_combout\ = ( \REGISTER_FILE|Mux62~2_combout\ & ( (!\REGISTER_FILE|Mux60~2_combout\ & (\REGISTER_FILE|Mux61~2_combout\ & \REGISTER_FILE|Mux63~2_combout\)) ) ) # ( !\REGISTER_FILE|Mux62~2_combout\ & ( (!\REGISTER_FILE|Mux60~2_combout\ 
-- & (!\REGISTER_FILE|Mux61~2_combout\)) # (\REGISTER_FILE|Mux60~2_combout\ & (\REGISTER_FILE|Mux61~2_combout\ & !\REGISTER_FILE|Mux63~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100010011000100110001001100000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux60~2_combout\,
	datab => \REGISTER_FILE|ALT_INV_Mux61~2_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux63~2_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux62~2_combout\,
	combout => \SEGMENT_A_FILE|Mux0~0_combout\);

-- Location: LABCELL_X73_Y3_N57
\SEGMENT_B_FILE|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_B_FILE|Mux6~0_combout\ = ( \REGISTER_FILE|Mux69~1_combout\ & ( (!\REGISTER_FILE|Mux70~1_combout\ & (!\REGISTER_FILE|Mux71~1_combout\ $ (\REGISTER_FILE|Mux68~1_combout\))) ) ) # ( !\REGISTER_FILE|Mux69~1_combout\ & ( 
-- (\REGISTER_FILE|Mux71~1_combout\ & (!\REGISTER_FILE|Mux70~1_combout\ $ (\REGISTER_FILE|Mux68~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGISTER_FILE|ALT_INV_Mux71~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux70~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux68~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux69~1_combout\,
	combout => \SEGMENT_B_FILE|Mux6~0_combout\);

-- Location: LABCELL_X73_Y3_N30
\SEGMENT_B_FILE|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_B_FILE|Mux5~0_combout\ = ( \REGISTER_FILE|Mux69~1_combout\ & ( (!\REGISTER_FILE|Mux70~1_combout\ & (!\REGISTER_FILE|Mux71~1_combout\ $ (!\REGISTER_FILE|Mux68~1_combout\))) # (\REGISTER_FILE|Mux70~1_combout\ & ((!\REGISTER_FILE|Mux71~1_combout\) # 
-- (\REGISTER_FILE|Mux68~1_combout\))) ) ) # ( !\REGISTER_FILE|Mux69~1_combout\ & ( (\REGISTER_FILE|Mux70~1_combout\ & (\REGISTER_FILE|Mux71~1_combout\ & \REGISTER_FILE|Mux68~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGISTER_FILE|ALT_INV_Mux70~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux71~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux68~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux69~1_combout\,
	combout => \SEGMENT_B_FILE|Mux5~0_combout\);

-- Location: LABCELL_X74_Y2_N45
\SEGMENT_B_FILE|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_B_FILE|Mux4~0_combout\ = ( \REGISTER_FILE|Mux70~1_combout\ & ( (!\REGISTER_FILE|Mux69~1_combout\ & (!\REGISTER_FILE|Mux71~1_combout\ & !\REGISTER_FILE|Mux68~1_combout\)) # (\REGISTER_FILE|Mux69~1_combout\ & ((\REGISTER_FILE|Mux68~1_combout\))) ) 
-- ) # ( !\REGISTER_FILE|Mux70~1_combout\ & ( (\REGISTER_FILE|Mux69~1_combout\ & (!\REGISTER_FILE|Mux71~1_combout\ & \REGISTER_FILE|Mux68~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux69~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux71~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux68~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux70~1_combout\,
	combout => \SEGMENT_B_FILE|Mux4~0_combout\);

-- Location: LABCELL_X74_Y2_N15
\SEGMENT_B_FILE|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_B_FILE|Mux3~0_combout\ = ( \REGISTER_FILE|Mux70~1_combout\ & ( (!\REGISTER_FILE|Mux69~1_combout\ & (!\REGISTER_FILE|Mux71~1_combout\ & \REGISTER_FILE|Mux68~1_combout\)) # (\REGISTER_FILE|Mux69~1_combout\ & (\REGISTER_FILE|Mux71~1_combout\)) ) ) # 
-- ( !\REGISTER_FILE|Mux70~1_combout\ & ( (!\REGISTER_FILE|Mux69~1_combout\ & (\REGISTER_FILE|Mux71~1_combout\)) # (\REGISTER_FILE|Mux69~1_combout\ & (!\REGISTER_FILE|Mux71~1_combout\ & !\REGISTER_FILE|Mux68~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000001010010110100000101000000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux69~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux71~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux68~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux70~1_combout\,
	combout => \SEGMENT_B_FILE|Mux3~0_combout\);

-- Location: LABCELL_X74_Y2_N33
\SEGMENT_B_FILE|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_B_FILE|Mux2~0_combout\ = ( \REGISTER_FILE|Mux70~1_combout\ & ( (\REGISTER_FILE|Mux71~1_combout\ & !\REGISTER_FILE|Mux68~1_combout\) ) ) # ( !\REGISTER_FILE|Mux70~1_combout\ & ( (!\REGISTER_FILE|Mux69~1_combout\ & 
-- (\REGISTER_FILE|Mux71~1_combout\)) # (\REGISTER_FILE|Mux69~1_combout\ & ((!\REGISTER_FILE|Mux68~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100001111110000110000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGISTER_FILE|ALT_INV_Mux69~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux71~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux68~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux70~1_combout\,
	combout => \SEGMENT_B_FILE|Mux2~0_combout\);

-- Location: LABCELL_X74_Y2_N21
\SEGMENT_B_FILE|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_B_FILE|Mux1~0_combout\ = ( \REGISTER_FILE|Mux70~1_combout\ & ( (!\REGISTER_FILE|Mux68~1_combout\ & ((!\REGISTER_FILE|Mux69~1_combout\) # (\REGISTER_FILE|Mux71~1_combout\))) ) ) # ( !\REGISTER_FILE|Mux70~1_combout\ & ( 
-- (\REGISTER_FILE|Mux71~1_combout\ & (!\REGISTER_FILE|Mux69~1_combout\ $ (\REGISTER_FILE|Mux68~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010110101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux69~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux71~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux68~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux70~1_combout\,
	combout => \SEGMENT_B_FILE|Mux1~0_combout\);

-- Location: LABCELL_X74_Y2_N9
\SEGMENT_B_FILE|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_B_FILE|Mux0~0_combout\ = ( \REGISTER_FILE|Mux70~1_combout\ & ( (\REGISTER_FILE|Mux69~1_combout\ & (\REGISTER_FILE|Mux71~1_combout\ & !\REGISTER_FILE|Mux68~1_combout\)) ) ) # ( !\REGISTER_FILE|Mux70~1_combout\ & ( (!\REGISTER_FILE|Mux69~1_combout\ 
-- & ((!\REGISTER_FILE|Mux68~1_combout\))) # (\REGISTER_FILE|Mux69~1_combout\ & (!\REGISTER_FILE|Mux71~1_combout\ & \REGISTER_FILE|Mux68~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010000101010100101000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|ALT_INV_Mux69~1_combout\,
	datac => \REGISTER_FILE|ALT_INV_Mux71~1_combout\,
	datad => \REGISTER_FILE|ALT_INV_Mux68~1_combout\,
	dataf => \REGISTER_FILE|ALT_INV_Mux70~1_combout\,
	combout => \SEGMENT_B_FILE|Mux0~0_combout\);

-- Location: MLABCELL_X72_Y3_N0
\SEGMENT_ALU_FILE|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_ALU_FILE|Mux6~0_combout\ = ( \ALU_FILE|Mux6~1_combout\ & ( (!\ALU_FILE|Mux7~0_combout\ & (!\ALU_FILE|Mux8~0_combout\ $ (\ALU_FILE|Mux5~1_combout\))) ) ) # ( !\ALU_FILE|Mux6~1_combout\ & ( (\ALU_FILE|Mux8~0_combout\ & (!\ALU_FILE|Mux7~0_combout\ $ 
-- (\ALU_FILE|Mux5~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU_FILE|ALT_INV_Mux8~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	combout => \SEGMENT_ALU_FILE|Mux6~0_combout\);

-- Location: MLABCELL_X72_Y3_N27
\SEGMENT_ALU_FILE|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_ALU_FILE|Mux5~0_combout\ = ( \ALU_FILE|Mux7~0_combout\ & ( (!\ALU_FILE|Mux8~0_combout\ & ((\ALU_FILE|Mux6~1_combout\))) # (\ALU_FILE|Mux8~0_combout\ & (\ALU_FILE|Mux5~1_combout\)) ) ) # ( !\ALU_FILE|Mux7~0_combout\ & ( (\ALU_FILE|Mux6~1_combout\ 
-- & (!\ALU_FILE|Mux5~1_combout\ $ (!\ALU_FILE|Mux8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux8~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	combout => \SEGMENT_ALU_FILE|Mux5~0_combout\);

-- Location: MLABCELL_X72_Y3_N24
\SEGMENT_ALU_FILE|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_ALU_FILE|Mux4~0_combout\ = ( \ALU_FILE|Mux6~1_combout\ & ( (\ALU_FILE|Mux5~1_combout\ & ((!\ALU_FILE|Mux8~0_combout\) # (\ALU_FILE|Mux7~0_combout\))) ) ) # ( !\ALU_FILE|Mux6~1_combout\ & ( (!\ALU_FILE|Mux5~1_combout\ & (!\ALU_FILE|Mux8~0_combout\ 
-- & \ALU_FILE|Mux7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux8~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	combout => \SEGMENT_ALU_FILE|Mux4~0_combout\);

-- Location: MLABCELL_X72_Y3_N42
\SEGMENT_ALU_FILE|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_ALU_FILE|Mux3~0_combout\ = ( \ALU_FILE|Mux6~1_combout\ & ( (!\ALU_FILE|Mux8~0_combout\ & (!\ALU_FILE|Mux5~1_combout\ & !\ALU_FILE|Mux7~0_combout\)) # (\ALU_FILE|Mux8~0_combout\ & ((\ALU_FILE|Mux7~0_combout\))) ) ) # ( !\ALU_FILE|Mux6~1_combout\ & 
-- ( (!\ALU_FILE|Mux8~0_combout\ & (\ALU_FILE|Mux5~1_combout\ & \ALU_FILE|Mux7~0_combout\)) # (\ALU_FILE|Mux8~0_combout\ & ((!\ALU_FILE|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010000110100001101000011010010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux8~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	combout => \SEGMENT_ALU_FILE|Mux3~0_combout\);

-- Location: MLABCELL_X72_Y3_N21
\SEGMENT_ALU_FILE|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_ALU_FILE|Mux2~0_combout\ = ( \ALU_FILE|Mux7~0_combout\ & ( (!\ALU_FILE|Mux5~1_combout\ & \ALU_FILE|Mux8~0_combout\) ) ) # ( !\ALU_FILE|Mux7~0_combout\ & ( (!\ALU_FILE|Mux6~1_combout\ & ((\ALU_FILE|Mux8~0_combout\))) # (\ALU_FILE|Mux6~1_combout\ & 
-- (!\ALU_FILE|Mux5~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux8~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	combout => \SEGMENT_ALU_FILE|Mux2~0_combout\);

-- Location: MLABCELL_X72_Y3_N45
\SEGMENT_ALU_FILE|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_ALU_FILE|Mux1~0_combout\ = ( \ALU_FILE|Mux7~0_combout\ & ( (!\ALU_FILE|Mux5~1_combout\ & ((!\ALU_FILE|Mux6~1_combout\) # (\ALU_FILE|Mux8~0_combout\))) ) ) # ( !\ALU_FILE|Mux7~0_combout\ & ( (\ALU_FILE|Mux8~0_combout\ & (!\ALU_FILE|Mux5~1_combout\ 
-- $ (\ALU_FILE|Mux6~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux8~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	combout => \SEGMENT_ALU_FILE|Mux1~0_combout\);

-- Location: MLABCELL_X72_Y3_N18
\SEGMENT_ALU_FILE|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_ALU_FILE|Mux0~0_combout\ = ( \ALU_FILE|Mux6~1_combout\ & ( (!\ALU_FILE|Mux5~1_combout\ & (\ALU_FILE|Mux8~0_combout\ & \ALU_FILE|Mux7~0_combout\)) # (\ALU_FILE|Mux5~1_combout\ & (!\ALU_FILE|Mux8~0_combout\ & !\ALU_FILE|Mux7~0_combout\)) ) ) # ( 
-- !\ALU_FILE|Mux6~1_combout\ & ( (!\ALU_FILE|Mux5~1_combout\ & !\ALU_FILE|Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000001000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux5~1_combout\,
	datab => \ALU_FILE|ALT_INV_Mux8~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux7~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux6~1_combout\,
	combout => \SEGMENT_ALU_FILE|Mux0~0_combout\);

-- Location: LABCELL_X70_Y4_N24
\ALU_FILE|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux6~0_combout\ = ( \MICROCODE_ROM_FILE|Mux9~0_combout\ & ( \ALU_FILE|F_int\(2) & ( (!\MICROCODE_ROM_FILE|Mux12~0_combout\) # (\ALU_FILE|F_log\(2)) ) ) ) # ( !\MICROCODE_ROM_FILE|Mux9~0_combout\ & ( \ALU_FILE|F_int\(2) ) ) # ( 
-- \MICROCODE_ROM_FILE|Mux9~0_combout\ & ( !\ALU_FILE|F_int\(2) & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & \ALU_FILE|F_log\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001111111111111111111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \ALU_FILE|ALT_INV_F_log\(2),
	datae => \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(2),
	combout => \ALU_FILE|Mux6~0_combout\);

-- Location: MLABCELL_X72_Y4_N0
\ALU_FILE|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux7~1_combout\ = ( \ALU_FILE|F_int\(1) & ( (!\MICROCODE_ROM_FILE|Mux12~0_combout\) # ((!\MICROCODE_ROM_FILE|Mux9~0_combout\) # (\ALU_FILE|F_log\(1))) ) ) # ( !\ALU_FILE|F_int\(1) & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & (\ALU_FILE|F_log\(1) 
-- & \MICROCODE_ROM_FILE|Mux9~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datab => \ALU_FILE|ALT_INV_F_log\(1),
	datac => \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(1),
	combout => \ALU_FILE|Mux7~1_combout\);

-- Location: LABCELL_X71_Y1_N36
\SHIFTER_FILE|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux6~1_combout\ = ( \ALU_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux6~0_combout\ ) ) # ( !\ALU_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux6~0_combout\ ) ) # ( !\ALU_FILE|Mux2~0_combout\ & ( !\SHIFTER_FILE|Mux6~0_combout\ & ( 
-- (!\SHIFTER_FILE|Mux1~0_combout\ & ((!\SHIFTER_FILE|Mux2~0_combout\ & ((\ALU_FILE|Mux7~1_combout\))) # (\SHIFTER_FILE|Mux2~0_combout\ & (\ALU_FILE|Mux6~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux6~0_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datad => \ALU_FILE|ALT_INV_Mux7~1_combout\,
	datae => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux6~0_combout\,
	combout => \SHIFTER_FILE|Mux6~1_combout\);

-- Location: LABCELL_X70_Y4_N33
\ALU_FILE|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux5~0_combout\ = ( \ALU_FILE|F_int\(3) & ( (!\MICROCODE_ROM_FILE|Mux12~0_combout\) # ((!\MICROCODE_ROM_FILE|Mux9~0_combout\) # (\ALU_FILE|F_log\(3))) ) ) # ( !\ALU_FILE|F_int\(3) & ( (\MICROCODE_ROM_FILE|Mux12~0_combout\ & (\ALU_FILE|F_log\(3) 
-- & \MICROCODE_ROM_FILE|Mux9~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \ALU_FILE|ALT_INV_F_log\(3),
	datad => \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\,
	dataf => \ALU_FILE|ALT_INV_F_int\(3),
	combout => \ALU_FILE|Mux5~0_combout\);

-- Location: LABCELL_X71_Y1_N48
\SHIFTER_FILE|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux5~1_combout\ = ( \SHIFTER_FILE|Mux1~0_combout\ & ( \ALU_FILE|Mux6~0_combout\ & ( \SHIFTER_FILE|Mux5~0_combout\ ) ) ) # ( !\SHIFTER_FILE|Mux1~0_combout\ & ( \ALU_FILE|Mux6~0_combout\ & ( ((!\ALU_FILE|Mux2~0_combout\ & 
-- ((!\SHIFTER_FILE|Mux2~0_combout\) # (\ALU_FILE|Mux5~0_combout\)))) # (\SHIFTER_FILE|Mux5~0_combout\) ) ) ) # ( \SHIFTER_FILE|Mux1~0_combout\ & ( !\ALU_FILE|Mux6~0_combout\ & ( \SHIFTER_FILE|Mux5~0_combout\ ) ) ) # ( !\SHIFTER_FILE|Mux1~0_combout\ & ( 
-- !\ALU_FILE|Mux6~0_combout\ & ( ((\ALU_FILE|Mux5~0_combout\ & (!\ALU_FILE|Mux2~0_combout\ & \SHIFTER_FILE|Mux2~0_combout\))) # (\SHIFTER_FILE|Mux5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000000001111111111000100111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux5~0_combout\,
	datab => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux5~0_combout\,
	datae => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux6~0_combout\,
	combout => \SHIFTER_FILE|Mux5~1_combout\);

-- Location: LABCELL_X70_Y4_N36
\ALU_FILE|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux4~0_combout\ = ( \ALU_FILE|F_int\(4) & ( (!\MICROCODE_ROM_FILE|Mux9~0_combout\) # ((!\MICROCODE_ROM_FILE|Mux12~0_combout\) # (\ALU_FILE|F_log\(4))) ) ) # ( !\ALU_FILE|F_int\(4) & ( (\MICROCODE_ROM_FILE|Mux9~0_combout\ & 
-- (\MICROCODE_ROM_FILE|Mux12~0_combout\ & \ALU_FILE|F_log\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\,
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datac => \ALU_FILE|ALT_INV_F_log\(4),
	dataf => \ALU_FILE|ALT_INV_F_int\(4),
	combout => \ALU_FILE|Mux4~0_combout\);

-- Location: LABCELL_X71_Y1_N54
\SHIFTER_FILE|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux4~1_combout\ = ( \ALU_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux4~0_combout\ ) ) ) # ( !\ALU_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux2~0_combout\ & ( ((\ALU_FILE|Mux4~0_combout\ & 
-- !\SHIFTER_FILE|Mux1~0_combout\)) # (\SHIFTER_FILE|Mux4~0_combout\) ) ) ) # ( \ALU_FILE|Mux2~0_combout\ & ( !\SHIFTER_FILE|Mux2~0_combout\ & ( \SHIFTER_FILE|Mux4~0_combout\ ) ) ) # ( !\ALU_FILE|Mux2~0_combout\ & ( !\SHIFTER_FILE|Mux2~0_combout\ & ( 
-- ((!\SHIFTER_FILE|Mux1~0_combout\ & \ALU_FILE|Mux5~0_combout\)) # (\SHIFTER_FILE|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000000001111111101000100111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux4~0_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux5~0_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux4~0_combout\,
	datae => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	combout => \SHIFTER_FILE|Mux4~1_combout\);

-- Location: LABCELL_X70_Y4_N3
\ALU_FILE|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux3~0_combout\ = ( \MICROCODE_ROM_FILE|Mux12~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux9~0_combout\ & ((\ALU_FILE|F_int\(5)))) # (\MICROCODE_ROM_FILE|Mux9~0_combout\ & (\ALU_FILE|F_log\(5))) ) ) # ( !\MICROCODE_ROM_FILE|Mux12~0_combout\ & ( 
-- \ALU_FILE|F_int\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\,
	datac => \ALU_FILE|ALT_INV_F_log\(5),
	datad => \ALU_FILE|ALT_INV_F_int\(5),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	combout => \ALU_FILE|Mux3~0_combout\);

-- Location: LABCELL_X71_Y1_N6
\SHIFTER_FILE|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux3~1_combout\ = ( \ALU_FILE|Mux2~0_combout\ & ( \ALU_FILE|Mux4~0_combout\ & ( \SHIFTER_FILE|Mux3~0_combout\ ) ) ) # ( !\ALU_FILE|Mux2~0_combout\ & ( \ALU_FILE|Mux4~0_combout\ & ( ((!\SHIFTER_FILE|Mux1~0_combout\ & 
-- ((!\SHIFTER_FILE|Mux2~0_combout\) # (\ALU_FILE|Mux3~0_combout\)))) # (\SHIFTER_FILE|Mux3~0_combout\) ) ) ) # ( \ALU_FILE|Mux2~0_combout\ & ( !\ALU_FILE|Mux4~0_combout\ & ( \SHIFTER_FILE|Mux3~0_combout\ ) ) ) # ( !\ALU_FILE|Mux2~0_combout\ & ( 
-- !\ALU_FILE|Mux4~0_combout\ & ( ((\SHIFTER_FILE|Mux2~0_combout\ & (!\SHIFTER_FILE|Mux1~0_combout\ & \ALU_FILE|Mux3~0_combout\))) # (\SHIFTER_FILE|Mux3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000000001111111110001100111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux3~0_combout\,
	datad => \SHIFTER_FILE|ALT_INV_Mux3~0_combout\,
	datae => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	dataf => \ALU_FILE|ALT_INV_Mux4~0_combout\,
	combout => \SHIFTER_FILE|Mux3~1_combout\);

-- Location: LABCELL_X70_Y3_N21
\ALU_FILE|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_FILE|Mux2~1_combout\ = ( \MICROCODE_ROM_FILE|Mux9~0_combout\ & ( (!\MICROCODE_ROM_FILE|Mux12~0_combout\ & (\ALU_FILE|F_int\(6))) # (\MICROCODE_ROM_FILE|Mux12~0_combout\ & ((\ALU_FILE|F_log\(6)))) ) ) # ( !\MICROCODE_ROM_FILE|Mux9~0_combout\ & ( 
-- \ALU_FILE|F_int\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_F_int\(6),
	datab => \MICROCODE_ROM_FILE|ALT_INV_Mux12~0_combout\,
	datad => \ALU_FILE|ALT_INV_F_log\(6),
	dataf => \MICROCODE_ROM_FILE|ALT_INV_Mux9~0_combout\,
	combout => \ALU_FILE|Mux2~1_combout\);

-- Location: LABCELL_X77_Y3_N36
\SHIFTER_FILE|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux2~2_combout\ = ( \ALU_FILE|Mux3~0_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( \SHIFTER_FILE|Mux2~1_combout\ ) ) ) # ( !\ALU_FILE|Mux3~0_combout\ & ( \SHIFTER_FILE|Mux1~0_combout\ & ( \SHIFTER_FILE|Mux2~1_combout\ ) ) ) # ( 
-- \ALU_FILE|Mux3~0_combout\ & ( !\SHIFTER_FILE|Mux1~0_combout\ & ( ((!\ALU_FILE|Mux2~0_combout\ & ((!\SHIFTER_FILE|Mux2~0_combout\) # (\ALU_FILE|Mux2~1_combout\)))) # (\SHIFTER_FILE|Mux2~1_combout\) ) ) ) # ( !\ALU_FILE|Mux3~0_combout\ & ( 
-- !\SHIFTER_FILE|Mux1~0_combout\ & ( ((\SHIFTER_FILE|Mux2~0_combout\ & (\ALU_FILE|Mux2~1_combout\ & !\ALU_FILE|Mux2~0_combout\))) # (\SHIFTER_FILE|Mux2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010101110111110101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHIFTER_FILE|ALT_INV_Mux2~1_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datac => \ALU_FILE|ALT_INV_Mux2~1_combout\,
	datad => \ALU_FILE|ALT_INV_Mux2~0_combout\,
	datae => \ALU_FILE|ALT_INV_Mux3~0_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	combout => \SHIFTER_FILE|Mux2~2_combout\);

-- Location: LABCELL_X73_Y1_N3
\SHIFTER_FILE|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SHIFTER_FILE|Mux1~2_combout\ = ( \SHIFTER_FILE|Mux1~0_combout\ & ( \SHIFTER_FILE|Mux1~1_combout\ ) ) # ( !\SHIFTER_FILE|Mux1~0_combout\ & ( ((!\SHIFTER_FILE|Mux2~0_combout\ & (\ALU_FILE|Mux2~2_combout\)) # (\SHIFTER_FILE|Mux2~0_combout\ & 
-- ((\ALU_FILE|Mux1~1_combout\)))) # (\SHIFTER_FILE|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101111111010011110111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_FILE|ALT_INV_Mux2~2_combout\,
	datab => \SHIFTER_FILE|ALT_INV_Mux2~0_combout\,
	datac => \SHIFTER_FILE|ALT_INV_Mux1~1_combout\,
	datad => \ALU_FILE|ALT_INV_Mux1~1_combout\,
	dataf => \SHIFTER_FILE|ALT_INV_Mux1~0_combout\,
	combout => \SHIFTER_FILE|Mux1~2_combout\);

-- Location: FF_X72_Y2_N1
\SEGM_A[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_A_FILE|Mux6~0_combout\,
	asdata => \SEGEMENT_A_FILE_1|Mux6~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_A[0]~reg0_q\);

-- Location: FF_X72_Y2_N49
\SEGM_A[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_A_FILE|Mux5~0_combout\,
	asdata => \SEGEMENT_A_FILE_1|Mux5~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_A[1]~reg0_q\);

-- Location: FF_X72_Y2_N4
\SEGM_A[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_A_FILE|Mux4~0_combout\,
	asdata => \SEGEMENT_A_FILE_1|Mux4~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_A[2]~reg0_q\);

-- Location: FF_X73_Y4_N49
\SEGM_A[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_A_FILE|Mux3~0_combout\,
	asdata => \SEGEMENT_A_FILE_1|Mux3~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_A[3]~reg0_q\);

-- Location: FF_X72_Y2_N34
\SEGM_A[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_A_FILE|Mux2~0_combout\,
	asdata => \SEGEMENT_A_FILE_1|Mux2~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_A[4]~reg0_q\);

-- Location: FF_X72_Y2_N52
\SEGM_A[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_A_FILE|Mux1~0_combout\,
	asdata => \SEGEMENT_A_FILE_1|Mux1~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_A[5]~reg0_q\);

-- Location: FF_X72_Y2_N55
\SEGM_A[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_A_FILE|Mux0~0_combout\,
	asdata => \SEGEMENT_A_FILE_1|Mux0~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_A[6]~reg0_q\);

-- Location: LABCELL_X73_Y3_N54
\SEGM_B[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGM_B[0]~reg0feeder_combout\ = ( \SEGMENT_B_FILE|Mux6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SEGMENT_B_FILE|ALT_INV_Mux6~0_combout\,
	combout => \SEGM_B[0]~reg0feeder_combout\);

-- Location: FF_X73_Y3_N55
\SEGM_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGM_B[0]~reg0feeder_combout\,
	asdata => \SEGEMENT_B_FILE_1|Mux6~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_B[0]~reg0_q\);

-- Location: LABCELL_X73_Y3_N33
\SEGM_B[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGM_B[1]~reg0feeder_combout\ = ( \SEGMENT_B_FILE|Mux5~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SEGMENT_B_FILE|ALT_INV_Mux5~0_combout\,
	combout => \SEGM_B[1]~reg0feeder_combout\);

-- Location: FF_X73_Y3_N34
\SEGM_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGM_B[1]~reg0feeder_combout\,
	asdata => \SEGEMENT_B_FILE_1|Mux5~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_B[1]~reg0_q\);

-- Location: LABCELL_X74_Y2_N12
\SEGM_B[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGM_B[2]~reg0feeder_combout\ = ( \SEGMENT_B_FILE|Mux4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SEGMENT_B_FILE|ALT_INV_Mux4~0_combout\,
	combout => \SEGM_B[2]~reg0feeder_combout\);

-- Location: FF_X74_Y2_N13
\SEGM_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGM_B[2]~reg0feeder_combout\,
	asdata => \SEGEMENT_B_FILE_1|Mux4~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_B[2]~reg0_q\);

-- Location: LABCELL_X74_Y2_N18
\SEGM_B[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGM_B[3]~reg0feeder_combout\ = \SEGMENT_B_FILE|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \SEGMENT_B_FILE|ALT_INV_Mux3~0_combout\,
	combout => \SEGM_B[3]~reg0feeder_combout\);

-- Location: FF_X74_Y2_N19
\SEGM_B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGM_B[3]~reg0feeder_combout\,
	asdata => \SEGEMENT_B_FILE_1|Mux3~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_B[3]~reg0_q\);

-- Location: LABCELL_X74_Y2_N24
\SEGM_B[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGM_B[4]~reg0feeder_combout\ = ( \SEGMENT_B_FILE|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SEGMENT_B_FILE|ALT_INV_Mux2~0_combout\,
	combout => \SEGM_B[4]~reg0feeder_combout\);

-- Location: FF_X74_Y2_N25
\SEGM_B[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGM_B[4]~reg0feeder_combout\,
	asdata => \SEGEMENT_B_FILE_1|Mux2~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_B[4]~reg0_q\);

-- Location: LABCELL_X74_Y2_N6
\SEGM_B[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGM_B[5]~reg0feeder_combout\ = ( \SEGMENT_B_FILE|Mux1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SEGMENT_B_FILE|ALT_INV_Mux1~0_combout\,
	combout => \SEGM_B[5]~reg0feeder_combout\);

-- Location: FF_X74_Y2_N7
\SEGM_B[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGM_B[5]~reg0feeder_combout\,
	asdata => \SEGEMENT_B_FILE_1|Mux1~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_B[5]~reg0_q\);

-- Location: LABCELL_X74_Y2_N30
\SEGM_B[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGM_B[6]~reg0feeder_combout\ = ( \SEGMENT_B_FILE|Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \SEGMENT_B_FILE|ALT_INV_Mux0~0_combout\,
	combout => \SEGM_B[6]~reg0feeder_combout\);

-- Location: FF_X74_Y2_N31
\SEGM_B[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGM_B[6]~reg0feeder_combout\,
	asdata => \SEGEMENT_B_FILE_1|Mux0~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_B[6]~reg0_q\);

-- Location: FF_X72_Y3_N1
\SEGM_ALU[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_ALU_FILE|Mux6~0_combout\,
	asdata => \SEGEMENT_D_FILE_1|Mux6~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_ALU[0]~reg0_q\);

-- Location: FF_X72_Y3_N28
\SEGM_ALU[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_ALU_FILE|Mux5~0_combout\,
	asdata => \SEGEMENT_D_FILE_1|Mux5~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_ALU[1]~reg0_q\);

-- Location: FF_X72_Y3_N25
\SEGM_ALU[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_ALU_FILE|Mux4~0_combout\,
	asdata => \SEGEMENT_D_FILE_1|Mux4~1_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_ALU[2]~reg0_q\);

-- Location: FF_X72_Y3_N44
\SEGM_ALU[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_ALU_FILE|Mux3~0_combout\,
	asdata => \SEGEMENT_D_FILE_1|Mux3~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_ALU[3]~reg0_q\);

-- Location: FF_X72_Y3_N22
\SEGM_ALU[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_ALU_FILE|Mux2~0_combout\,
	asdata => \SEGEMENT_D_FILE_1|Mux2~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_ALU[4]~reg0_q\);

-- Location: FF_X72_Y3_N46
\SEGM_ALU[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_ALU_FILE|Mux1~0_combout\,
	asdata => \SEGEMENT_D_FILE_1|Mux1~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_ALU[5]~reg0_q\);

-- Location: FF_X72_Y3_N19
\SEGM_ALU[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1~inputCLKENA0_outclk\,
	d => \SEGMENT_ALU_FILE|Mux0~0_combout\,
	asdata => \SEGEMENT_D_FILE_1|Mux0~0_combout\,
	sload => \COUNT~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGM_ALU[6]~reg0_q\);

-- Location: LABCELL_X88_Y9_N15
\SEGMENT_CAR_FILE|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_CAR_FILE|Mux6~0_combout\ = ( !\CAR[2]~reg0_q\ & ( \CAR[1]~reg0_q\ & ( (\CAR[0]~reg0_q\ & \CAR[3]~reg0_q\) ) ) ) # ( \CAR[2]~reg0_q\ & ( !\CAR[1]~reg0_q\ & ( !\CAR[0]~reg0_q\ $ (\CAR[3]~reg0_q\) ) ) ) # ( !\CAR[2]~reg0_q\ & ( !\CAR[1]~reg0_q\ & ( 
-- (\CAR[0]~reg0_q\ & !\CAR[3]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100100110011001100100010001000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[0]~reg0_q\,
	datab => \ALT_INV_CAR[3]~reg0_q\,
	datae => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \ALT_INV_CAR[1]~reg0_q\,
	combout => \SEGMENT_CAR_FILE|Mux6~0_combout\);

-- Location: LABCELL_X88_Y9_N30
\SEGMENT_CAR_FILE|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_CAR_FILE|Mux5~0_combout\ = ( \CAR[1]~reg0_q\ & ( (!\CAR[0]~reg0_q\ & (\CAR[2]~reg0_q\)) # (\CAR[0]~reg0_q\ & ((\CAR[3]~reg0_q\))) ) ) # ( !\CAR[1]~reg0_q\ & ( (\CAR[2]~reg0_q\ & (!\CAR[0]~reg0_q\ $ (!\CAR[3]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[2]~reg0_q\,
	datac => \ALT_INV_CAR[0]~reg0_q\,
	datad => \ALT_INV_CAR[3]~reg0_q\,
	dataf => \ALT_INV_CAR[1]~reg0_q\,
	combout => \SEGMENT_CAR_FILE|Mux5~0_combout\);

-- Location: LABCELL_X88_Y9_N39
\SEGMENT_CAR_FILE|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_CAR_FILE|Mux4~0_combout\ = ( \CAR[2]~reg0_q\ & ( \CAR[1]~reg0_q\ & ( \CAR[3]~reg0_q\ ) ) ) # ( !\CAR[2]~reg0_q\ & ( \CAR[1]~reg0_q\ & ( (!\CAR[0]~reg0_q\ & !\CAR[3]~reg0_q\) ) ) ) # ( \CAR[2]~reg0_q\ & ( !\CAR[1]~reg0_q\ & ( (!\CAR[0]~reg0_q\ & 
-- \CAR[3]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001010001000100010000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[0]~reg0_q\,
	datab => \ALT_INV_CAR[3]~reg0_q\,
	datae => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \ALT_INV_CAR[1]~reg0_q\,
	combout => \SEGMENT_CAR_FILE|Mux4~0_combout\);

-- Location: LABCELL_X88_Y9_N18
\SEGMENT_CAR_FILE|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_CAR_FILE|Mux3~0_combout\ = ( \CAR[1]~reg0_q\ & ( (!\CAR[2]~reg0_q\ & (!\CAR[0]~reg0_q\ & \CAR[3]~reg0_q\)) # (\CAR[2]~reg0_q\ & (\CAR[0]~reg0_q\)) ) ) # ( !\CAR[1]~reg0_q\ & ( (!\CAR[2]~reg0_q\ & (\CAR[0]~reg0_q\)) # (\CAR[2]~reg0_q\ & 
-- (!\CAR[0]~reg0_q\ & !\CAR[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001100001111000000110000000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[2]~reg0_q\,
	datac => \ALT_INV_CAR[0]~reg0_q\,
	datad => \ALT_INV_CAR[3]~reg0_q\,
	dataf => \ALT_INV_CAR[1]~reg0_q\,
	combout => \SEGMENT_CAR_FILE|Mux3~0_combout\);

-- Location: LABCELL_X88_Y9_N51
\SEGMENT_CAR_FILE|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_CAR_FILE|Mux2~0_combout\ = ( \CAR[2]~reg0_q\ & ( \CAR[1]~reg0_q\ & ( (\CAR[0]~reg0_q\ & !\CAR[3]~reg0_q\) ) ) ) # ( !\CAR[2]~reg0_q\ & ( \CAR[1]~reg0_q\ & ( (\CAR[0]~reg0_q\ & !\CAR[3]~reg0_q\) ) ) ) # ( \CAR[2]~reg0_q\ & ( !\CAR[1]~reg0_q\ & ( 
-- !\CAR[3]~reg0_q\ ) ) ) # ( !\CAR[2]~reg0_q\ & ( !\CAR[1]~reg0_q\ & ( \CAR[0]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CAR[0]~reg0_q\,
	datab => \ALT_INV_CAR[3]~reg0_q\,
	datae => \ALT_INV_CAR[2]~reg0_q\,
	dataf => \ALT_INV_CAR[1]~reg0_q\,
	combout => \SEGMENT_CAR_FILE|Mux2~0_combout\);

-- Location: LABCELL_X88_Y9_N42
\SEGMENT_CAR_FILE|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_CAR_FILE|Mux1~0_combout\ = ( \CAR[1]~reg0_q\ & ( (!\CAR[3]~reg0_q\ & ((!\CAR[2]~reg0_q\) # (\CAR[0]~reg0_q\))) ) ) # ( !\CAR[1]~reg0_q\ & ( (\CAR[0]~reg0_q\ & (!\CAR[2]~reg0_q\ $ (\CAR[3]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[2]~reg0_q\,
	datac => \ALT_INV_CAR[0]~reg0_q\,
	datad => \ALT_INV_CAR[3]~reg0_q\,
	dataf => \ALT_INV_CAR[1]~reg0_q\,
	combout => \SEGMENT_CAR_FILE|Mux1~0_combout\);

-- Location: LABCELL_X88_Y9_N0
\SEGMENT_CAR_FILE|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGMENT_CAR_FILE|Mux0~0_combout\ = ( \CAR[1]~reg0_q\ & ( (!\CAR[2]~reg0_q\) # ((!\CAR[0]~reg0_q\) # (\CAR[3]~reg0_q\)) ) ) # ( !\CAR[1]~reg0_q\ & ( (!\CAR[2]~reg0_q\ & ((\CAR[3]~reg0_q\))) # (\CAR[2]~reg0_q\ & ((!\CAR[3]~reg0_q\) # (\CAR[0]~reg0_q\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001111001100111100111111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CAR[2]~reg0_q\,
	datac => \ALT_INV_CAR[0]~reg0_q\,
	datad => \ALT_INV_CAR[3]~reg0_q\,
	dataf => \ALT_INV_CAR[1]~reg0_q\,
	combout => \SEGMENT_CAR_FILE|Mux0~0_combout\);

-- Location: IOIBUF_X22_Y81_N35
\CPU_DATA_OUT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(0),
	o => \CPU_DATA_OUT[0]~input_o\);

-- Location: IOIBUF_X4_Y81_N1
\CPU_DATA_OUT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(1),
	o => \CPU_DATA_OUT[1]~input_o\);

-- Location: IOIBUF_X2_Y81_N58
\CPU_DATA_OUT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(2),
	o => \CPU_DATA_OUT[2]~input_o\);

-- Location: IOIBUF_X32_Y81_N18
\CPU_DATA_OUT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(3),
	o => \CPU_DATA_OUT[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\CPU_DATA_OUT[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(4),
	o => \CPU_DATA_OUT[4]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\CPU_DATA_OUT[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(5),
	o => \CPU_DATA_OUT[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\CPU_DATA_OUT[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(6),
	o => \CPU_DATA_OUT[6]~input_o\);

-- Location: IOIBUF_X82_Y0_N92
\CPU_DATA_OUT[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(7),
	o => \CPU_DATA_OUT[7]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\CPU_DATA_OUT[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(8),
	o => \CPU_DATA_OUT[8]~input_o\);

-- Location: IOIBUF_X14_Y81_N35
\CPU_DATA_OUT[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(9),
	o => \CPU_DATA_OUT[9]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\CPU_DATA_OUT[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(10),
	o => \CPU_DATA_OUT[10]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\CPU_DATA_OUT[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(11),
	o => \CPU_DATA_OUT[11]~input_o\);

-- Location: IOIBUF_X16_Y0_N35
\CPU_DATA_OUT[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(12),
	o => \CPU_DATA_OUT[12]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\CPU_DATA_OUT[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(13),
	o => \CPU_DATA_OUT[13]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\CPU_DATA_OUT[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(14),
	o => \CPU_DATA_OUT[14]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\CPU_DATA_OUT[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(15),
	o => \CPU_DATA_OUT[15]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\CPU_DATA_OUT[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(16),
	o => \CPU_DATA_OUT[16]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\CPU_DATA_OUT[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(17),
	o => \CPU_DATA_OUT[17]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\CPU_DATA_OUT[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(18),
	o => \CPU_DATA_OUT[18]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\CPU_DATA_OUT[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(19),
	o => \CPU_DATA_OUT[19]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\CPU_DATA_OUT[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(20),
	o => \CPU_DATA_OUT[20]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\CPU_DATA_OUT[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(21),
	o => \CPU_DATA_OUT[21]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\CPU_DATA_OUT[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(22),
	o => \CPU_DATA_OUT[22]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\CPU_DATA_OUT[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(23),
	o => \CPU_DATA_OUT[23]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\CPU_DATA_OUT[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(24),
	o => \CPU_DATA_OUT[24]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\CPU_DATA_OUT[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(25),
	o => \CPU_DATA_OUT[25]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\CPU_DATA_OUT[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(26),
	o => \CPU_DATA_OUT[26]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\CPU_DATA_OUT[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(27),
	o => \CPU_DATA_OUT[27]~input_o\);

-- Location: IOIBUF_X18_Y0_N92
\CPU_DATA_OUT[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(28),
	o => \CPU_DATA_OUT[28]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\CPU_DATA_OUT[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(29),
	o => \CPU_DATA_OUT[29]~input_o\);

-- Location: IOIBUF_X84_Y0_N18
\CPU_DATA_OUT[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(30),
	o => \CPU_DATA_OUT[30]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\CPU_DATA_OUT[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_DATA_OUT(31),
	o => \CPU_DATA_OUT[31]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\ALU_OUT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_OUT(0),
	o => \ALU_OUT[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\ALU_OUT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_OUT(1),
	o => \ALU_OUT[1]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\ALU_OUT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_OUT(2),
	o => \ALU_OUT[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\ALU_OUT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_OUT(3),
	o => \ALU_OUT[3]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\ALU_OUT[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_OUT(4),
	o => \ALU_OUT[4]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\ALU_OUT[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_OUT(5),
	o => \ALU_OUT[5]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\ALU_OUT[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_OUT(6),
	o => \ALU_OUT[6]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\ALU_OUT[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_OUT(7),
	o => \ALU_OUT[7]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\COUNT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_COUNT,
	o => \COUNT~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\ZERO~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ZERO,
	o => \ZERO~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SIGN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN,
	o => \SIGN~input_o\);

-- Location: IOIBUF_X24_Y0_N18
\CARRY~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CARRY,
	o => \CARRY~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\CARRY_OUT_SHIFTER~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CARRY_OUT_SHIFTER,
	o => \CARRY_OUT_SHIFTER~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\OVERFLOW~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OVERFLOW,
	o => \OVERFLOW~input_o\);

-- Location: IOIBUF_X74_Y0_N41
\A_BUS_VALUE[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_BUS_VALUE(0),
	o => \A_BUS_VALUE[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\A_BUS_VALUE[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_BUS_VALUE(1),
	o => \A_BUS_VALUE[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\A_BUS_VALUE[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_BUS_VALUE(2),
	o => \A_BUS_VALUE[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\A_BUS_VALUE[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_BUS_VALUE(3),
	o => \A_BUS_VALUE[3]~input_o\);

-- Location: IOIBUF_X82_Y0_N75
\A_BUS_VALUE[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_BUS_VALUE(4),
	o => \A_BUS_VALUE[4]~input_o\);

-- Location: IOIBUF_X74_Y0_N58
\A_BUS_VALUE[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_BUS_VALUE(5),
	o => \A_BUS_VALUE[5]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\A_BUS_VALUE[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_BUS_VALUE(6),
	o => \A_BUS_VALUE[6]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\A_BUS_VALUE[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_BUS_VALUE(7),
	o => \A_BUS_VALUE[7]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\B_BUS_VALUE[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_BUS_VALUE(0),
	o => \B_BUS_VALUE[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\B_BUS_VALUE[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_BUS_VALUE(1),
	o => \B_BUS_VALUE[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\B_BUS_VALUE[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_BUS_VALUE(2),
	o => \B_BUS_VALUE[2]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\B_BUS_VALUE[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_BUS_VALUE(3),
	o => \B_BUS_VALUE[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\B_BUS_VALUE[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_BUS_VALUE(4),
	o => \B_BUS_VALUE[4]~input_o\);

-- Location: IOIBUF_X78_Y0_N52
\B_BUS_VALUE[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_BUS_VALUE(5),
	o => \B_BUS_VALUE[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B_BUS_VALUE[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_BUS_VALUE(6),
	o => \B_BUS_VALUE[6]~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\B_BUS_VALUE[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_BUS_VALUE(7),
	o => \B_BUS_VALUE[7]~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\ASEL_R_VALUE[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASEL_R_VALUE(0),
	o => \ASEL_R_VALUE[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\ASEL_R_VALUE[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASEL_R_VALUE(1),
	o => \ASEL_R_VALUE[1]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\ASEL_R_VALUE[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASEL_R_VALUE(2),
	o => \ASEL_R_VALUE[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\ASEL_R_VALUE[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASEL_R_VALUE(3),
	o => \ASEL_R_VALUE[3]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\ASEL_R_VALUE[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASEL_R_VALUE(4),
	o => \ASEL_R_VALUE[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\ASEL_R_VALUE[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASEL_R_VALUE(5),
	o => \ASEL_R_VALUE[5]~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\ASEL_R_VALUE[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASEL_R_VALUE(6),
	o => \ASEL_R_VALUE[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\BSEL_R_VALUE[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL_R_VALUE(0),
	o => \BSEL_R_VALUE[0]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\BSEL_R_VALUE[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL_R_VALUE(1),
	o => \BSEL_R_VALUE[1]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\BSEL_R_VALUE[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL_R_VALUE(2),
	o => \BSEL_R_VALUE[2]~input_o\);

-- Location: IOIBUF_X78_Y0_N1
\BSEL_R_VALUE[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL_R_VALUE(3),
	o => \BSEL_R_VALUE[3]~input_o\);

-- Location: IOIBUF_X80_Y0_N35
\BSEL_R_VALUE[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL_R_VALUE(4),
	o => \BSEL_R_VALUE[4]~input_o\);

-- Location: IOIBUF_X80_Y0_N52
\BSEL_R_VALUE[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL_R_VALUE(5),
	o => \BSEL_R_VALUE[5]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\BSEL_R_VALUE[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL_R_VALUE(6),
	o => \BSEL_R_VALUE[6]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\DSEL_R_VALUE[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DSEL_R_VALUE(0),
	o => \DSEL_R_VALUE[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\DSEL_R_VALUE[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DSEL_R_VALUE(1),
	o => \DSEL_R_VALUE[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\DSEL_R_VALUE[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DSEL_R_VALUE(2),
	o => \DSEL_R_VALUE[2]~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\DSEL_R_VALUE[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DSEL_R_VALUE(3),
	o => \DSEL_R_VALUE[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\DSEL_R_VALUE[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DSEL_R_VALUE(4),
	o => \DSEL_R_VALUE[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\DSEL_R_VALUE[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DSEL_R_VALUE(5),
	o => \DSEL_R_VALUE[5]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\DSEL_R_VALUE[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DSEL_R_VALUE(6),
	o => \DSEL_R_VALUE[6]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\SEG_ASEL_VALUE[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_ASEL_VALUE(0),
	o => \SEG_ASEL_VALUE[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\SEG_ASEL_VALUE[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_ASEL_VALUE(1),
	o => \SEG_ASEL_VALUE[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\SEG_ASEL_VALUE[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_ASEL_VALUE(2),
	o => \SEG_ASEL_VALUE[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\SEG_ASEL_VALUE[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_ASEL_VALUE(3),
	o => \SEG_ASEL_VALUE[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\SEG_ASEL_VALUE[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_ASEL_VALUE(4),
	o => \SEG_ASEL_VALUE[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\SEG_ASEL_VALUE[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_ASEL_VALUE(5),
	o => \SEG_ASEL_VALUE[5]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\SEG_ASEL_VALUE[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_ASEL_VALUE(6),
	o => \SEG_ASEL_VALUE[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N35
\SEG_BSEL_VALUE[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_BSEL_VALUE(0),
	o => \SEG_BSEL_VALUE[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\SEG_BSEL_VALUE[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_BSEL_VALUE(1),
	o => \SEG_BSEL_VALUE[1]~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\SEG_BSEL_VALUE[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_BSEL_VALUE(2),
	o => \SEG_BSEL_VALUE[2]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\SEG_BSEL_VALUE[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_BSEL_VALUE(3),
	o => \SEG_BSEL_VALUE[3]~input_o\);

-- Location: IOIBUF_X74_Y0_N75
\SEG_BSEL_VALUE[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_BSEL_VALUE(4),
	o => \SEG_BSEL_VALUE[4]~input_o\);

-- Location: IOIBUF_X76_Y0_N52
\SEG_BSEL_VALUE[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_BSEL_VALUE(5),
	o => \SEG_BSEL_VALUE[5]~input_o\);

-- Location: IOIBUF_X84_Y0_N52
\SEG_BSEL_VALUE[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_BSEL_VALUE(6),
	o => \SEG_BSEL_VALUE[6]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\SEG_DSEL_VALUE[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_DSEL_VALUE(0),
	o => \SEG_DSEL_VALUE[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\SEG_DSEL_VALUE[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_DSEL_VALUE(1),
	o => \SEG_DSEL_VALUE[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\SEG_DSEL_VALUE[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_DSEL_VALUE(2),
	o => \SEG_DSEL_VALUE[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\SEG_DSEL_VALUE[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_DSEL_VALUE(3),
	o => \SEG_DSEL_VALUE[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\SEG_DSEL_VALUE[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_DSEL_VALUE(4),
	o => \SEG_DSEL_VALUE[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\SEG_DSEL_VALUE[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_DSEL_VALUE(5),
	o => \SEG_DSEL_VALUE[5]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\SEG_DSEL_VALUE[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEG_DSEL_VALUE(6),
	o => \SEG_DSEL_VALUE[6]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\ASEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASEL(0),
	o => \ASEL[0]~input_o\);

-- Location: IOIBUF_X84_Y0_N35
\ASEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASEL(1),
	o => \ASEL[1]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\ASEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ASEL(2),
	o => \ASEL[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\BSEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL(0),
	o => \BSEL[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\BSEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL(1),
	o => \BSEL[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\BSEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BSEL(2),
	o => \BSEL[2]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\DSEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DSEL(0),
	o => \DSEL[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\DSEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DSEL(1),
	o => \DSEL[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\DSEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DSEL(2),
	o => \DSEL[2]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\SSEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSEL(0),
	o => \SSEL[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\SSEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSEL(1),
	o => \SSEL[1]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\SSEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSEL(2),
	o => \SSEL[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\SSEL[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSEL(3),
	o => \SSEL[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\HSEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSEL(0),
	o => \HSEL[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\HSEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSEL(1),
	o => \HSEL[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\HSEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSEL(2),
	o => \HSEL[2]~input_o\);

-- Location: IOIBUF_X34_Y81_N41
\MUX1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX1,
	o => \MUX1~input_o\);

-- Location: IOIBUF_X18_Y0_N75
\MUX2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX2(0),
	o => \MUX2[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\MUX2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX2(1),
	o => \MUX2[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N58
\MUX2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX2(2),
	o => \MUX2[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N41
\ADRS[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADRS(0),
	o => \ADRS[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\ADRS[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADRS(1),
	o => \ADRS[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\ADRS[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADRS(2),
	o => \ADRS[2]~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\ADRS[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADRS(3),
	o => \ADRS[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\ADRS[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADRS(4),
	o => \ADRS[4]~input_o\);

-- Location: IOIBUF_X14_Y81_N1
\ADRS[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADRS(5),
	o => \ADRS[5]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\ADRS[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADRS(6),
	o => \ADRS[6]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\ADRS[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADRS(7),
	o => \ADRS[7]~input_o\);

-- Location: IOIBUF_X6_Y81_N18
\MISC[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MISC(0),
	o => \MISC[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\MISC[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MISC(1),
	o => \MISC[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\MISC[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MISC(2),
	o => \MISC[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\MISC[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MISC(3),
	o => \MISC[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\CAR[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CAR(0),
	o => \CAR[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\CAR[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CAR(1),
	o => \CAR[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\CAR[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CAR(2),
	o => \CAR[2]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\CAR[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CAR(3),
	o => \CAR[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\CAR[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CAR(4),
	o => \CAR[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\CAR[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CAR(5),
	o => \CAR[5]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\CAR[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CAR(6),
	o => \CAR[6]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\CAR[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CAR(7),
	o => \CAR[7]~input_o\);
END structure;


