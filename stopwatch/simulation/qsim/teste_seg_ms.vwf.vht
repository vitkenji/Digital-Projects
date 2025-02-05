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
-- Generated on "12/16/2024 01:47:42"
                                                             
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
SIGNAL btn_pause : STD_LOGIC;
SIGNAL carry_out_min : STD_LOGIC;
SIGNAL clock_in : STD_LOGIC;
SIGNAL PUSH_BTN_1 : STD_LOGIC;
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
SIGNAL s12 : STD_LOGIC;
SIGNAL s13 : STD_LOGIC;
SIGNAL s14 : STD_LOGIC;
SIGNAL s15 : STD_LOGIC;
SIGNAL s16 : STD_LOGIC;
SIGNAL s17 : STD_LOGIC;
SIGNAL s18 : STD_LOGIC;
SIGNAL s19 : STD_LOGIC;
SIGNAL s20 : STD_LOGIC;
SIGNAL s21 : STD_LOGIC;
SIGNAL s22 : STD_LOGIC;
SIGNAL s23 : STD_LOGIC;
COMPONENT CRONOMETRO
	PORT (
	btn_pause : IN STD_LOGIC;
	carry_out_min : OUT STD_LOGIC;
	clock_in : IN STD_LOGIC;
	PUSH_BTN_1 : IN STD_LOGIC;
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
	s11 : OUT STD_LOGIC;
	s12 : OUT STD_LOGIC;
	s13 : OUT STD_LOGIC;
	s14 : OUT STD_LOGIC;
	s15 : OUT STD_LOGIC;
	s16 : OUT STD_LOGIC;
	s17 : OUT STD_LOGIC;
	s18 : OUT STD_LOGIC;
	s19 : OUT STD_LOGIC;
	s20 : OUT STD_LOGIC;
	s21 : OUT STD_LOGIC;
	s22 : OUT STD_LOGIC;
	s23 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CRONOMETRO
	PORT MAP (
-- list connections between master ports and signals
	btn_pause => btn_pause,
	carry_out_min => carry_out_min,
	clock_in => clock_in,
	PUSH_BTN_1 => PUSH_BTN_1,
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
	s11 => s11,
	s12 => s12,
	s13 => s13,
	s14 => s14,
	s15 => s15,
	s16 => s16,
	s17 => s17,
	s18 => s18,
	s19 => s19,
	s20 => s20,
	s21 => s21,
	s22 => s22,
	s23 => s23
	);

-- clock_in
t_prcs_clock_in: PROCESS
BEGIN
LOOP
	clock_in <= '0';
	WAIT FOR 5000 ps;
	clock_in <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_in;

-- btn_pause
t_prcs_btn_pause: PROCESS
BEGIN
LOOP
	btn_pause <= '0';
	WAIT FOR 5000000 ps;
	btn_pause <= '1';
	WAIT FOR 5000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_btn_pause;

-- PUSH_BTN_1
t_prcs_PUSH_BTN_1: PROCESS
BEGIN
	PUSH_BTN_1 <= '0';
WAIT;
END PROCESS t_prcs_PUSH_BTN_1;
END CRONOMETRO_arch;
