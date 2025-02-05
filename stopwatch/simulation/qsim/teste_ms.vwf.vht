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
-- Generated on "12/16/2024 01:33:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador_ms_ajustado
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_ms_ajustado_vhd_vec_tst IS
END contador_ms_ajustado_vhd_vec_tst;
ARCHITECTURE contador_ms_ajustado_arch OF contador_ms_ajustado_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL carry_out_ms : STD_LOGIC;
SIGNAL clk_1kHz : STD_LOGIC;
SIGNAL count_ms : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL pause_signal : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT contador_ms_ajustado
	PORT (
	carry_out_ms : OUT STD_LOGIC;
	clk_1kHz : IN STD_LOGIC;
	count_ms : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	pause_signal : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contador_ms_ajustado
	PORT MAP (
-- list connections between master ports and signals
	carry_out_ms => carry_out_ms,
	clk_1kHz => clk_1kHz,
	count_ms => count_ms,
	pause_signal => pause_signal,
	reset => reset
	);

-- clk_1kHz
t_prcs_clk_1kHz: PROCESS
BEGIN
LOOP
	clk_1kHz <= '0';
	WAIT FOR 5000 ps;
	clk_1kHz <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_1kHz;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- pause_signal
t_prcs_pause_signal: PROCESS
BEGIN
LOOP
	pause_signal <= '0';
	WAIT FOR 100000 ps;
	pause_signal <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pause_signal;
END contador_ms_ajustado_arch;
