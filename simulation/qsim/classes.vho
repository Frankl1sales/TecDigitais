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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "12/28/2023 22:07:20"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ex05 IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	sel1 : IN std_logic;
	sel2 : IN std_logic;
	y : OUT std_logic
	);
END ex05;

-- Design Ports Information
-- y	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel2	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex05 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_sel1 : std_logic;
SIGNAL ww_sel2 : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \sel2~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \sel1~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \ALT_INV_d~input_o\ : std_logic;
SIGNAL \ALT_INV_c~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_sel2~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;
SIGNAL \ALT_INV_sel1~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_sel1 <= sel1;
ww_sel2 <= sel2;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d~input_o\ <= NOT \d~input_o\;
\ALT_INV_c~input_o\ <= NOT \c~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_sel2~input_o\ <= NOT \sel2~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;
\ALT_INV_sel1~input_o\ <= NOT \sel1~input_o\;

-- Location: IOOBUF_X89_Y37_N39
\y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~0_combout\,
	devoe => ww_devoe,
	o => ww_y);

-- Location: IOIBUF_X89_Y35_N61
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\sel2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel2,
	o => \sel2~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\d~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\sel1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel1,
	o => \sel1~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LABCELL_X88_Y35_N0
\y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~0_combout\ = ( \sel1~input_o\ & ( \a~input_o\ & ( (!\sel2~input_o\ & (\c~input_o\)) # (\sel2~input_o\ & ((\d~input_o\))) ) ) ) # ( !\sel1~input_o\ & ( \a~input_o\ & ( (!\sel2~input_o\) # (\b~input_o\) ) ) ) # ( \sel1~input_o\ & ( !\a~input_o\ & ( 
-- (!\sel2~input_o\ & (\c~input_o\)) # (\sel2~input_o\ & ((\d~input_o\))) ) ) ) # ( !\sel1~input_o\ & ( !\a~input_o\ & ( (\b~input_o\ & \sel2~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b~input_o\,
	datab => \ALT_INV_sel2~input_o\,
	datac => \ALT_INV_c~input_o\,
	datad => \ALT_INV_d~input_o\,
	datae => \ALT_INV_sel1~input_o\,
	dataf => \ALT_INV_a~input_o\,
	combout => \y~0_combout\);

-- Location: MLABCELL_X28_Y4_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


