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

-- DATE "01/14/2024 11:44:33"

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

ENTITY 	ex09_full_adder IS
    PORT (
	x : IN std_logic;
	y : IN std_logic;
	c_in : IN std_logic;
	c_in1 : IN std_logic;
	c_in2 : IN std_logic;
	s : BUFFER std_logic;
	c_out : BUFFER std_logic
	);
END ex09_full_adder;

-- Design Ports Information
-- s	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_out	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in2	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in1	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex09_full_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_c_in : std_logic;
SIGNAL ww_c_in1 : std_logic;
SIGNAL ww_c_in2 : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_c_out : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \c_in2~input_o\ : std_logic;
SIGNAL \c_in1~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \c_in~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \half4|sum~combout\ : std_logic;
SIGNAL \c_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_c_in~input_o\ : std_logic;
SIGNAL \ALT_INV_y~input_o\ : std_logic;
SIGNAL \ALT_INV_x~input_o\ : std_logic;
SIGNAL \ALT_INV_c_in1~input_o\ : std_logic;
SIGNAL \ALT_INV_c_in2~input_o\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_c_in <= c_in;
ww_c_in1 <= c_in1;
ww_c_in2 <= c_in2;
s <= ww_s;
c_out <= ww_c_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_c_in~input_o\ <= NOT \c_in~input_o\;
\ALT_INV_y~input_o\ <= NOT \y~input_o\;
\ALT_INV_x~input_o\ <= NOT \x~input_o\;
\ALT_INV_c_in1~input_o\ <= NOT \c_in1~input_o\;
\ALT_INV_c_in2~input_o\ <= NOT \c_in2~input_o\;

-- Location: IOOBUF_X4_Y0_N36
\s~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \half4|sum~combout\,
	devoe => ww_devoe,
	o => ww_s);

-- Location: IOOBUF_X4_Y0_N2
\c_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_out~0_combout\,
	devoe => ww_devoe,
	o => ww_c_out);

-- Location: IOIBUF_X2_Y0_N58
\c_in2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in2,
	o => \c_in2~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\c_in1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in1,
	o => \c_in1~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\y~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\c_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in,
	o => \c_in~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: MLABCELL_X3_Y1_N30
\half4|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \half4|sum~combout\ = ( \c_in~input_o\ & ( \x~input_o\ & ( !\c_in2~input_o\ $ (\c_in1~input_o\) ) ) ) # ( !\c_in~input_o\ & ( \x~input_o\ & ( !\c_in2~input_o\ $ (\c_in1~input_o\) ) ) ) # ( \c_in~input_o\ & ( !\x~input_o\ & ( !\c_in2~input_o\ $ 
-- (\c_in1~input_o\) ) ) ) # ( !\c_in~input_o\ & ( !\x~input_o\ & ( !\c_in2~input_o\ $ (!\c_in1~input_o\ $ (\y~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_in2~input_o\,
	datab => \ALT_INV_c_in1~input_o\,
	datac => \ALT_INV_y~input_o\,
	datae => \ALT_INV_c_in~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \half4|sum~combout\);

-- Location: MLABCELL_X3_Y1_N39
\c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_out~0_combout\ = ( \c_in~input_o\ & ( \x~input_o\ & ( (\c_in2~input_o\) # (\c_in1~input_o\) ) ) ) # ( !\c_in~input_o\ & ( \x~input_o\ & ( (\c_in2~input_o\) # (\c_in1~input_o\) ) ) ) # ( \c_in~input_o\ & ( !\x~input_o\ & ( (\c_in2~input_o\) # 
-- (\c_in1~input_o\) ) ) ) # ( !\c_in~input_o\ & ( !\x~input_o\ & ( (!\y~input_o\ & (\c_in1~input_o\ & \c_in2~input_o\)) # (\y~input_o\ & ((\c_in2~input_o\) # (\c_in1~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y~input_o\,
	datac => \ALT_INV_c_in1~input_o\,
	datad => \ALT_INV_c_in2~input_o\,
	datae => \ALT_INV_c_in~input_o\,
	dataf => \ALT_INV_x~input_o\,
	combout => \c_out~0_combout\);

-- Location: LABCELL_X63_Y16_N3
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


