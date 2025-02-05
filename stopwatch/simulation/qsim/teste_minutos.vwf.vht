-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/16/2024 20:27:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CRONOMETRO
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CRONOMETRO_vhd_vec_tst IS
END CRONOMETRO_vhd_vec_tst;
ARCHITECTURE CRONOMETRO_arch OF CRONOMETRO_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL carry_out_min : STD_LOGIC;
SIGNAL HEX00 : STD_LOGIC;
SIGNAL HEX01 : STD_LOGIC;
SIGNAL HEX02 : STD_LOGIC;
SIGNAL HEX03 : STD_LOGIC;
SIGNAL HEX04 : STD_LOGIC;
SIGNAL HEX05 : STD_LOGIC;
SIGNAL HEX06 : STD_LOGIC;
SIGNAL HEX10 : STD_LOGIC;
SIGNAL HEX11 : STD_LOGIC;
SIGNAL HEX12 : STD_LOGIC;
SIGNAL HEX13 : STD_LOGIC;
SIGNAL HEX14 : STD_LOGIC;
SIGNAL HEX15 : STD_LOGIC;
SIGNAL HEX16 : STD_LOGIC;
SIGNAL HEX20 : STD_LOGIC;
SIGNAL HEX21 : STD_LOGIC;
SIGNAL HEX22 : STD_LOGIC;
SIGNAL HEX23 : STD_LOGIC;
SIGNAL HEX24 : STD_LOGIC;
SIGNAL HEX25 : STD_LOGIC;
SIGNAL HEX26 : STD_LOGIC;
SIGNAL HEX30 : STD_LOGIC;
SIGNAL HEX31 : STD_LOGIC;
SIGNAL HEX32 : STD_LOGIC;
SIGNAL HEX33 : STD_LOGIC;
SIGNAL HEX34 : STD_LOGIC;
SIGNAL HEX35 : STD_LOGIC;
SIGNAL HEX36 : STD_LOGIC;
SIGNAL HEX40 : STD_LOGIC;
SIGNAL HEX41 : STD_LOGIC;
SIGNAL HEX42 : STD_LOGIC;
SIGNAL HEX43 : STD_LOGIC;
SIGNAL HEX44 : STD_LOGIC;
SIGNAL HEX45 : STD_LOGIC;
SIGNAL HEX46 : STD_LOGIC;
SIGNAL HEX50 : STD_LOGIC;
SIGNAL HEX51 : STD_LOGIC;
SIGNAL HEX52 : STD_LOGIC;
SIGNAL HEX53 : STD_LOGIC;
SIGNAL HEX54 : STD_LOGIC;
SIGNAL HEX55 : STD_LOGIC;
SIGNAL HEX56 : STD_LOGIC;
SIGNAL key_0 : STD_LOGIC;
SIGNAL key_1 : STD_LOGIC;
SIGNAL P11 : STD_LOGIC;
COMPONENT CRONOMETRO
	PORT (
	carry_out_min : OUT STD_LOGIC;
	HEX00 : OUT STD_LOGIC;
	HEX01 : OUT STD_LOGIC;
	HEX02 : OUT STD_LOGIC;
	HEX03 : OUT STD_LOGIC;
	HEX04 : OUT STD_LOGIC;
	HEX05 : OUT STD_LOGIC;
	HEX06 : OUT STD_LOGIC;
	HEX10 : OUT STD_LOGIC;
	HEX11 : OUT STD_LOGIC;
	HEX12 : OUT STD_LOGIC;
	HEX13 : OUT STD_LOGIC;
	HEX14 : OUT STD_LOGIC;
	HEX15 : OUT STD_LOGIC;
	HEX16 : OUT STD_LOGIC;
	HEX20 : OUT STD_LOGIC;
	HEX21 : OUT STD_LOGIC;
	HEX22 : OUT STD_LOGIC;
	HEX23 : OUT STD_LOGIC;
	HEX24 : OUT STD_LOGIC;
	HEX25 : OUT STD_LOGIC;
	HEX26 : OUT STD_LOGIC;
	HEX30 : OUT STD_LOGIC;
	HEX31 : OUT STD_LOGIC;
	HEX32 : OUT STD_LOGIC;
	HEX33 : OUT STD_LOGIC;
	HEX34 : OUT STD_LOGIC;
	HEX35 : OUT STD_LOGIC;
	HEX36 : OUT STD_LOGIC;
	HEX40 : OUT STD_LOGIC;
	HEX41 : OUT STD_LOGIC;
	HEX42 : OUT STD_LOGIC;
	HEX43 : OUT STD_LOGIC;
	HEX44 : OUT STD_LOGIC;
	HEX45 : OUT STD_LOGIC;
	HEX46 : OUT STD_LOGIC;
	HEX50 : OUT STD_LOGIC;
	HEX51 : OUT STD_LOGIC;
	HEX52 : OUT STD_LOGIC;
	HEX53 : OUT STD_LOGIC;
	HEX54 : OUT STD_LOGIC;
	HEX55 : OUT STD_LOGIC;
	HEX56 : OUT STD_LOGIC;
	key_0 : IN STD_LOGIC;
	key_1 : IN STD_LOGIC;
	P11 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CRONOMETRO
	PORT MAP (
-- list connections between master ports and signals
	carry_out_min => carry_out_min,
	HEX00 => HEX00,
	HEX01 => HEX01,
	HEX02 => HEX02,
	HEX03 => HEX03,
	HEX04 => HEX04,
	HEX05 => HEX05,
	HEX06 => HEX06,
	HEX10 => HEX10,
	HEX11 => HEX11,
	HEX12 => HEX12,
	HEX13 => HEX13,
	HEX14 => HEX14,
	HEX15 => HEX15,
	HEX16 => HEX16,
	HEX20 => HEX20,
	HEX21 => HEX21,
	HEX22 => HEX22,
	HEX23 => HEX23,
	HEX24 => HEX24,
	HEX25 => HEX25,
	HEX26 => HEX26,
	HEX30 => HEX30,
	HEX31 => HEX31,
	HEX32 => HEX32,
	HEX33 => HEX33,
	HEX34 => HEX34,
	HEX35 => HEX35,
	HEX36 => HEX36,
	HEX40 => HEX40,
	HEX41 => HEX41,
	HEX42 => HEX42,
	HEX43 => HEX43,
	HEX44 => HEX44,
	HEX45 => HEX45,
	HEX46 => HEX46,
	HEX50 => HEX50,
	HEX51 => HEX51,
	HEX52 => HEX52,
	HEX53 => HEX53,
	HEX54 => HEX54,
	HEX55 => HEX55,
	HEX56 => HEX56,
	key_0 => key_0,
	key_1 => key_1,
	P11 => P11
	);
END CRONOMETRO_arch;
