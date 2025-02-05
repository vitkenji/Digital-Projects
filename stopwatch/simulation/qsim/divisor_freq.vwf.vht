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
-- Generated on "12/15/2024 14:45:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          divisor_frequencia
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY divisor_frequencia_vhd_vec_tst IS
END divisor_frequencia_vhd_vec_tst;
ARCHITECTURE divisor_frequencia_arch OF divisor_frequencia_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50MHz : STD_LOGIC;
SIGNAL clk_out : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT divisor_frequencia
	PORT (
	clk_50MHz : IN STD_LOGIC;
	clk_out : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : divisor_frequencia
	PORT MAP (
-- list connections between master ports and signals
	clk_50MHz => clk_50MHz,
	clk_out => clk_out,
	reset => reset
	);

-- clk_50MHz
t_prcs_clk_50MHz: PROCESS
BEGIN
LOOP
	clk_50MHz <= '0';
	WAIT FOR 20000 ps;
	clk_50MHz <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_50MHz;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END divisor_frequencia_arch;
