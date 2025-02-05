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
-- Generated on "12/16/2024 19:28:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pause_global
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pause_global_vhd_vec_tst IS
END pause_global_vhd_vec_tst;
ARCHITECTURE pause_global_arch OF pause_global_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL p_count_min : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL p_count_ms : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL p_count_sec : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pause_btn : STD_LOGIC;
SIGNAL pause_out : STD_LOGIC;
COMPONENT pause_global
	PORT (
	p_count_min : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	p_count_ms : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	p_count_sec : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pause_btn : IN STD_LOGIC;
	pause_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pause_global
	PORT MAP (
-- list connections between master ports and signals
	p_count_min => p_count_min,
	p_count_ms => p_count_ms,
	p_count_sec => p_count_sec,
	pause_btn => pause_btn,
	pause_out => pause_out
	);

-- pause_btn
t_prcs_pause_btn: PROCESS
BEGIN
LOOP
	pause_btn <= '0';
	WAIT FOR 10000000 ps;
	pause_btn <= '1';
	WAIT FOR 10000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pause_btn;
-- p_count_ms[11]
t_prcs_p_count_ms_11: PROCESS
BEGIN
	p_count_ms(11) <= '0';
WAIT;
END PROCESS t_prcs_p_count_ms_11;
-- p_count_ms[10]
t_prcs_p_count_ms_10: PROCESS
BEGIN
	p_count_ms(10) <= '0';
WAIT;
END PROCESS t_prcs_p_count_ms_10;
-- p_count_ms[9]
t_prcs_p_count_ms_9: PROCESS
BEGIN
	p_count_ms(9) <= '1';
WAIT;
END PROCESS t_prcs_p_count_ms_9;
-- p_count_ms[8]
t_prcs_p_count_ms_8: PROCESS
BEGIN
	p_count_ms(8) <= '0';
WAIT;
END PROCESS t_prcs_p_count_ms_8;
-- p_count_ms[7]
t_prcs_p_count_ms_7: PROCESS
BEGIN
	p_count_ms(7) <= '1';
WAIT;
END PROCESS t_prcs_p_count_ms_7;
-- p_count_ms[6]
t_prcs_p_count_ms_6: PROCESS
BEGIN
	p_count_ms(6) <= '1';
WAIT;
END PROCESS t_prcs_p_count_ms_6;
-- p_count_ms[5]
t_prcs_p_count_ms_5: PROCESS
BEGIN
	p_count_ms(5) <= '0';
WAIT;
END PROCESS t_prcs_p_count_ms_5;
-- p_count_ms[4]
t_prcs_p_count_ms_4: PROCESS
BEGIN
	p_count_ms(4) <= '1';
WAIT;
END PROCESS t_prcs_p_count_ms_4;
-- p_count_ms[3]
t_prcs_p_count_ms_3: PROCESS
BEGIN
	p_count_ms(3) <= '0';
WAIT;
END PROCESS t_prcs_p_count_ms_3;
-- p_count_ms[2]
t_prcs_p_count_ms_2: PROCESS
BEGIN
	p_count_ms(2) <= '0';
WAIT;
END PROCESS t_prcs_p_count_ms_2;
-- p_count_ms[1]
t_prcs_p_count_ms_1: PROCESS
BEGIN
	p_count_ms(1) <= '1';
WAIT;
END PROCESS t_prcs_p_count_ms_1;
-- p_count_ms[0]
t_prcs_p_count_ms_0: PROCESS
BEGIN
	p_count_ms(0) <= '1';
WAIT;
END PROCESS t_prcs_p_count_ms_0;
-- p_count_sec[7]
t_prcs_p_count_sec_7: PROCESS
BEGIN
	p_count_sec(7) <= '0';
WAIT;
END PROCESS t_prcs_p_count_sec_7;
-- p_count_sec[6]
t_prcs_p_count_sec_6: PROCESS
BEGIN
	p_count_sec(6) <= '1';
WAIT;
END PROCESS t_prcs_p_count_sec_6;
-- p_count_sec[5]
t_prcs_p_count_sec_5: PROCESS
BEGIN
	p_count_sec(5) <= '0';
WAIT;
END PROCESS t_prcs_p_count_sec_5;
-- p_count_sec[4]
t_prcs_p_count_sec_4: PROCESS
BEGIN
	p_count_sec(4) <= '0';
WAIT;
END PROCESS t_prcs_p_count_sec_4;
-- p_count_sec[3]
t_prcs_p_count_sec_3: PROCESS
BEGIN
	p_count_sec(3) <= '0';
WAIT;
END PROCESS t_prcs_p_count_sec_3;
-- p_count_sec[2]
t_prcs_p_count_sec_2: PROCESS
BEGIN
	p_count_sec(2) <= '1';
WAIT;
END PROCESS t_prcs_p_count_sec_2;
-- p_count_sec[1]
t_prcs_p_count_sec_1: PROCESS
BEGIN
	p_count_sec(1) <= '0';
WAIT;
END PROCESS t_prcs_p_count_sec_1;
-- p_count_sec[0]
t_prcs_p_count_sec_0: PROCESS
BEGIN
	p_count_sec(0) <= '1';
WAIT;
END PROCESS t_prcs_p_count_sec_0;
-- p_count_min[3]
t_prcs_p_count_min_3: PROCESS
BEGIN
	p_count_min(3) <= '0';
	WAIT FOR 40000000 ps;
	p_count_min(3) <= '1';
	WAIT FOR 40000000 ps;
	p_count_min(3) <= '0';
WAIT;
END PROCESS t_prcs_p_count_min_3;
-- p_count_min[2]
t_prcs_p_count_min_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		p_count_min(2) <= '0';
		WAIT FOR 20000000 ps;
		p_count_min(2) <= '1';
		WAIT FOR 20000000 ps;
	END LOOP;
	p_count_min(2) <= '0';
WAIT;
END PROCESS t_prcs_p_count_min_2;
-- p_count_min[1]
t_prcs_p_count_min_1: PROCESS
BEGIN
LOOP
	p_count_min(1) <= '0';
	WAIT FOR 10000000 ps;
	p_count_min(1) <= '1';
	WAIT FOR 10000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_p_count_min_1;
-- p_count_min[0]
t_prcs_p_count_min_0: PROCESS
BEGIN
LOOP
	p_count_min(0) <= '0';
	WAIT FOR 5000000 ps;
	p_count_min(0) <= '1';
	WAIT FOR 5000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_p_count_min_0;
END pause_global_arch;
