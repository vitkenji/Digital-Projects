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
-- Generated on "12/16/2024 13:59:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          reset_global
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reset_global_vhd_vec_tst IS
END reset_global_vhd_vec_tst;
ARCHITECTURE reset_global_arch OF reset_global_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL count_min : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL count_ms : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL count_sec : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL reset_btn : STD_LOGIC;
SIGNAL reset_out : STD_LOGIC;
COMPONENT reset_global
	PORT (
	clk : IN STD_LOGIC;
	count_min : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	count_ms : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	count_sec : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	reset_btn : IN STD_LOGIC;
	reset_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : reset_global
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	count_min => count_min,
	count_ms => count_ms,
	count_sec => count_sec,
	reset_btn => reset_btn,
	reset_out => reset_out
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000000 ps;
	clk <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- count_ms[9]
t_prcs_count_ms_9: PROCESS
BEGIN
	count_ms(9) <= '1';
WAIT;
END PROCESS t_prcs_count_ms_9;

-- count_ms[8]
t_prcs_count_ms_8: PROCESS
BEGIN
	count_ms(8) <= '1';
WAIT;
END PROCESS t_prcs_count_ms_8;

-- count_ms[7]
t_prcs_count_ms_7: PROCESS
BEGIN
	count_ms(7) <= '1';
WAIT;
END PROCESS t_prcs_count_ms_7;

-- count_ms[6]
t_prcs_count_ms_6: PROCESS
BEGIN
	count_ms(6) <= '1';
WAIT;
END PROCESS t_prcs_count_ms_6;

-- count_ms[5]
t_prcs_count_ms_5: PROCESS
BEGIN
	count_ms(5) <= '0';
WAIT;
END PROCESS t_prcs_count_ms_5;

-- count_ms[4]
t_prcs_count_ms_4: PROCESS
BEGIN
	count_ms(4) <= '1';
WAIT;
END PROCESS t_prcs_count_ms_4;

-- count_ms[3]
t_prcs_count_ms_3: PROCESS
BEGIN
	count_ms(3) <= '1';
WAIT;
END PROCESS t_prcs_count_ms_3;

-- count_ms[2]
t_prcs_count_ms_2: PROCESS
BEGIN
	count_ms(2) <= '1';
WAIT;
END PROCESS t_prcs_count_ms_2;

-- count_ms[1]
t_prcs_count_ms_1: PROCESS
BEGIN
	count_ms(1) <= '1';
WAIT;
END PROCESS t_prcs_count_ms_1;

-- count_ms[0]
t_prcs_count_ms_0: PROCESS
BEGIN
	count_ms(0) <= '1';
WAIT;
END PROCESS t_prcs_count_ms_0;

-- count_sec[5]
t_prcs_count_sec_5: PROCESS
BEGIN
	count_sec(5) <= '1';
WAIT;
END PROCESS t_prcs_count_sec_5;

-- count_sec[4]
t_prcs_count_sec_4: PROCESS
BEGIN
	count_sec(4) <= '1';
WAIT;
END PROCESS t_prcs_count_sec_4;

-- count_sec[3]
t_prcs_count_sec_3: PROCESS
BEGIN
	count_sec(3) <= '1';
WAIT;
END PROCESS t_prcs_count_sec_3;

-- count_sec[2]
t_prcs_count_sec_2: PROCESS
BEGIN
	count_sec(2) <= '0';
WAIT;
END PROCESS t_prcs_count_sec_2;

-- count_sec[1]
t_prcs_count_sec_1: PROCESS
BEGIN
	count_sec(1) <= '1';
WAIT;
END PROCESS t_prcs_count_sec_1;

-- count_sec[0]
t_prcs_count_sec_0: PROCESS
BEGIN
	count_sec(0) <= '1';
WAIT;
END PROCESS t_prcs_count_sec_0;
-- count_min[3]
t_prcs_count_min_3: PROCESS
BEGIN
	count_min(3) <= '0';
	WAIT FOR 40000000 ps;
	count_min(3) <= '1';
	WAIT FOR 40000000 ps;
	count_min(3) <= '0';
WAIT;
END PROCESS t_prcs_count_min_3;
-- count_min[2]
t_prcs_count_min_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		count_min(2) <= '0';
		WAIT FOR 20000000 ps;
		count_min(2) <= '1';
		WAIT FOR 20000000 ps;
	END LOOP;
	count_min(2) <= '0';
WAIT;
END PROCESS t_prcs_count_min_2;
-- count_min[1]
t_prcs_count_min_1: PROCESS
BEGIN
LOOP
	count_min(1) <= '0';
	WAIT FOR 10000000 ps;
	count_min(1) <= '1';
	WAIT FOR 10000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_count_min_1;
-- count_min[0]
t_prcs_count_min_0: PROCESS
BEGIN
LOOP
	count_min(0) <= '0';
	WAIT FOR 5000000 ps;
	count_min(0) <= '1';
	WAIT FOR 5000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_count_min_0;
END reset_global_arch;
