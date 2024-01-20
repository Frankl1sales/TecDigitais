-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/14/2024 11:44:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ex09_full_adder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex09_full_adder_vhd_vec_tst IS
END ex09_full_adder_vhd_vec_tst;
ARCHITECTURE ex09_full_adder_arch OF ex09_full_adder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c_in : STD_LOGIC;
SIGNAL c_in1 : STD_LOGIC;
SIGNAL c_in2 : STD_LOGIC;
SIGNAL c_out : STD_LOGIC;
SIGNAL s : STD_LOGIC;
SIGNAL x : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT ex09_full_adder
	PORT (
	c_in : IN STD_LOGIC;
	c_in1 : IN STD_LOGIC;
	c_in2 : IN STD_LOGIC;
	c_out : BUFFER STD_LOGIC;
	s : BUFFER STD_LOGIC;
	x : IN STD_LOGIC;
	y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ex09_full_adder
	PORT MAP (
-- list connections between master ports and signals
	c_in => c_in,
	c_in1 => c_in1,
	c_in2 => c_in2,
	c_out => c_out,
	s => s,
	x => x,
	y => y
	);

-- x
t_prcs_x: PROCESS
BEGIN
	x <= '1';
WAIT;
END PROCESS t_prcs_x;

-- y
t_prcs_y: PROCESS
BEGIN
	y <= '0';
WAIT;
END PROCESS t_prcs_y;

-- c_in
t_prcs_c_in: PROCESS
BEGIN
	c_in <= '0';
	WAIT FOR 130000 ps;
	c_in <= '1';
	WAIT FOR 120000 ps;
	c_in <= '0';
WAIT;
END PROCESS t_prcs_c_in;

-- c_in1
t_prcs_c_in1: PROCESS
BEGIN
	c_in1 <= '0';
	WAIT FOR 250000 ps;
	c_in1 <= '1';
	WAIT FOR 190000 ps;
	c_in1 <= '0';
WAIT;
END PROCESS t_prcs_c_in1;

-- c_in2
t_prcs_c_in2: PROCESS
BEGIN
	c_in2 <= '0';
	WAIT FOR 440000 ps;
	c_in2 <= '1';
	WAIT FOR 200000 ps;
	c_in2 <= '0';
WAIT;
END PROCESS t_prcs_c_in2;
END ex09_full_adder_arch;
