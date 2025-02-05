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
-- Generated on "12/15/2024 13:34:06"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL cou : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL s0 : STD_LOGIC;
SIGNAL s1 : STD_LOGIC;
SIGNAL s2 : STD_LOGIC;
SIGNAL s3 : STD_LOGIC;
SIGNAL s4 : STD_LOGIC;
SIGNAL s5 : STD_LOGIC;
SIGNAL s6 : STD_LOGIC;
SIGNAL s7 : STD_LOGIC;
SIGNAL s8 : STD_LOGIC;
SIGNAL s9 : STD_LOGIC;
SIGNAL s10 : STD_LOGIC;
SIGNAL s11 : STD_LOGIC;
COMPONENT CRONOMETRO
	PORT (
	clk : IN STD_LOGIC;
	cou : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	s0 : OUT STD_LOGIC;
	s1 : OUT STD_LOGIC;
	s2 : OUT STD_LOGIC;
	s3 : OUT STD_LOGIC;
	s4 : OUT STD_LOGIC;
	s5 : OUT STD_LOGIC;
	s6 : OUT STD_LOGIC;
	s7 : OUT STD_LOGIC;
	s8 : OUT STD_LOGIC;
	s9 : OUT STD_LOGIC;
	s10 : OUT STD_LOGIC;
	s11 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CRONOMETRO
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cou => cou,
	reset => reset,
	s0 => s0,
	s1 => s1,
	s2 => s2,
	s3 => s3,
	s4 => s4,
	s5 => s5,
	s6 => s6,
	s7 => s7,
	s8 => s8,
	s9 => s9,
	s10 => s10,
	s11 => s11
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END CRONOMETRO_arch;
