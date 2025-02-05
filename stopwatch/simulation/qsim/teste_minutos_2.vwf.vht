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
-- Generated on "12/16/2024 20:58:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador_minutos_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_minutos_2_vhd_vec_tst IS
END contador_minutos_2_vhd_vec_tst;
ARCHITECTURE contador_minutos_2_arch OF contador_minutos_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL carry_in : STD_LOGIC;
SIGNAL carry_out : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL count_min : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pause_signal : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT contador_minutos_2
	PORT (
	carry_in : IN STD_LOGIC;
	carry_out : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	count_min : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	pause_signal : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contador_minutos_2
	PORT MAP (
-- list connections between master ports and signals
	carry_in => carry_in,
	carry_out => carry_out,
	clk => clk,
	count_min => count_min,
	pause_signal => pause_signal,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- carry_in
t_prcs_carry_in: PROCESS
BEGIN
LOOP
	carry_in <= '0';
	WAIT FOR 5000000 ps;
	carry_in <= '1';
	WAIT FOR 5000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_carry_in;

-- pause_signal
t_prcs_pause_signal: PROCESS
BEGIN
	pause_signal <= '0';
WAIT;
END PROCESS t_prcs_pause_signal;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END contador_minutos_2_arch;
