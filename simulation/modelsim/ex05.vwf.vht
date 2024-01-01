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
-- Generated on "12/28/2023 21:35:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ex05
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex05_vhd_vec_tst IS
END ex05_vhd_vec_tst;
ARCHITECTURE ex05_arch OF ex05_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL sel1 : STD_LOGIC;
SIGNAL sel2 : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT ex05
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	c : IN STD_LOGIC;
	d : IN STD_LOGIC;
	sel1 : IN STD_LOGIC;
	sel2 : IN STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ex05
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	sel1 => sel1,
	sel2 => sel2,
	y => y
	);

-- a
t_prcs_a: PROCESS
BEGIN
LOOP
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		b <= '0';
		WAIT FOR 30000 ps;
		b <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	b <= '0';
	WAIT FOR 30000 ps;
	b <= '1';
WAIT;
END PROCESS t_prcs_b;

-- c
t_prcs_c: PROCESS
BEGIN
	c <= '1';
WAIT;
END PROCESS t_prcs_c;

-- d
t_prcs_d: PROCESS
BEGIN
	d <= '0';
WAIT;
END PROCESS t_prcs_d;

-- sel1
t_prcs_sel1: PROCESS
BEGIN
	sel1 <= '0';
WAIT;
END PROCESS t_prcs_sel1;

-- sel2
t_prcs_sel2: PROCESS
BEGIN
	sel2 <= '0';
WAIT;
END PROCESS t_prcs_sel2;
END ex05_arch;
