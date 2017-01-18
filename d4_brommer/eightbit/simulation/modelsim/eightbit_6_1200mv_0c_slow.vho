-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/17/2017 15:07:17"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eightbit IS
    PORT (
	inputa : IN std_logic_vector(3 DOWNTO 0);
	inputb : IN std_logic_vector(3 DOWNTO 0);
	carryin : IN std_logic;
	carryout : OUT std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END eightbit;

-- Design Ports Information
-- carryout	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputa[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputb[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputa[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputb[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputa[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputb[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputb[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryin	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputa[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eightbit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inputa : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inputb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_carryin : std_logic;
SIGNAL ww_carryout : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \carryout~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \inputb[3]~input_o\ : std_logic;
SIGNAL \inputa[3]~input_o\ : std_logic;
SIGNAL \inputa[2]~input_o\ : std_logic;
SIGNAL \inputb[1]~input_o\ : std_logic;
SIGNAL \inputa[0]~input_o\ : std_logic;
SIGNAL \carryin~input_o\ : std_logic;
SIGNAL \c0|carryout~0_combout\ : std_logic;
SIGNAL \GEN_REG:1:ck|carryout~0_combout\ : std_logic;
SIGNAL \GEN_REG:2:ck|carryout~0_combout\ : std_logic;
SIGNAL \GEN_REG:3:ck|carryout~0_combout\ : std_logic;
SIGNAL \inputa[1]~input_o\ : std_logic;
SIGNAL \c2|hex[0]~0_combout\ : std_logic;
SIGNAL \c2|hex[1]~1_combout\ : std_logic;
SIGNAL \c2|hex[2]~2_combout\ : std_logic;
SIGNAL \c2|hex[3]~3_combout\ : std_logic;
SIGNAL \c2|hex[4]~4_combout\ : std_logic;
SIGNAL \c2|hex[5]~5_combout\ : std_logic;
SIGNAL \c2|hex[6]~6_combout\ : std_logic;
SIGNAL \inputb[0]~input_o\ : std_logic;
SIGNAL \inputb[2]~input_o\ : std_logic;
SIGNAL \c3|hex[0]~0_combout\ : std_logic;
SIGNAL \c3|hex[1]~1_combout\ : std_logic;
SIGNAL \c3|hex[2]~2_combout\ : std_logic;
SIGNAL \c3|hex[3]~3_combout\ : std_logic;
SIGNAL \c3|hex[4]~4_combout\ : std_logic;
SIGNAL \c3|hex[5]~5_combout\ : std_logic;
SIGNAL \c3|hex[6]~6_combout\ : std_logic;
SIGNAL \GEN_REG:1:ck|output~combout\ : std_logic;
SIGNAL \GEN_REG:3:ck|output~0_combout\ : std_logic;
SIGNAL \GEN_REG:3:ck|output~combout\ : std_logic;
SIGNAL \GEN_REG:2:ck|output~combout\ : std_logic;
SIGNAL \c0|output~0_combout\ : std_logic;
SIGNAL \c4|hex[0]~0_combout\ : std_logic;
SIGNAL \c4|hex[1]~1_combout\ : std_logic;
SIGNAL \c4|hex[2]~2_combout\ : std_logic;
SIGNAL \c4|hex[3]~3_combout\ : std_logic;
SIGNAL \c4|hex[4]~4_combout\ : std_logic;
SIGNAL \c4|hex[5]~5_combout\ : std_logic;
SIGNAL \c4|hex[6]~6_combout\ : std_logic;
SIGNAL \c4|ALT_INV_hex[6]~6_combout\ : std_logic;
SIGNAL \c3|ALT_INV_hex[6]~6_combout\ : std_logic;
SIGNAL \c3|ALT_INV_hex[2]~2_combout\ : std_logic;
SIGNAL \c2|ALT_INV_hex[6]~6_combout\ : std_logic;
SIGNAL \c2|ALT_INV_hex[2]~2_combout\ : std_logic;

BEGIN

ww_inputa <= inputa;
ww_inputb <= inputb;
ww_carryin <= carryin;
carryout <= ww_carryout;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\c4|ALT_INV_hex[6]~6_combout\ <= NOT \c4|hex[6]~6_combout\;
\c3|ALT_INV_hex[6]~6_combout\ <= NOT \c3|hex[6]~6_combout\;
\c3|ALT_INV_hex[2]~2_combout\ <= NOT \c3|hex[2]~2_combout\;
\c2|ALT_INV_hex[6]~6_combout\ <= NOT \c2|hex[6]~6_combout\;
\c2|ALT_INV_hex[2]~2_combout\ <= NOT \c2|hex[2]~2_combout\;

-- Location: IOOBUF_X33_Y14_N9
\carryout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:3:ck|carryout~0_combout\,
	devoe => ww_devoe,
	o => \carryout~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\hex0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c2|hex[0]~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\hex0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c2|hex[1]~1_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\hex0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c2|ALT_INV_hex[2]~2_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\hex0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c2|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\hex0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c2|hex[4]~4_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\hex0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c2|hex[5]~5_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\hex0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c2|ALT_INV_hex[6]~6_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\hex1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|hex[0]~0_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\hex1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|hex[1]~1_combout\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\hex1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|ALT_INV_hex[2]~2_combout\,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\hex1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\hex1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|hex[4]~4_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\hex1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|hex[5]~5_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\hex1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|ALT_INV_hex[6]~6_combout\,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\hex2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c4|hex[0]~0_combout\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\hex2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c4|hex[1]~1_combout\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\hex2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c4|hex[2]~2_combout\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\hex2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c4|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\hex2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c4|hex[4]~4_combout\,
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\hex2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c4|hex[5]~5_combout\,
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\hex2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c4|ALT_INV_hex[6]~6_combout\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N1
\inputb[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputb(3),
	o => \inputb[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\inputa[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputa(3),
	o => \inputa[3]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\inputa[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputa(2),
	o => \inputa[2]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\inputb[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputb(1),
	o => \inputb[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\inputa[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputa(0),
	o => \inputa[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\carryin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carryin,
	o => \carryin~input_o\);

-- Location: LCCOMB_X26_Y11_N0
\c0|carryout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|carryout~0_combout\ = (\inputb[0]~input_o\ & ((\inputa[0]~input_o\) # (\carryin~input_o\))) # (!\inputb[0]~input_o\ & (\inputa[0]~input_o\ & \carryin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[0]~input_o\,
	datac => \inputa[0]~input_o\,
	datad => \carryin~input_o\,
	combout => \c0|carryout~0_combout\);

-- Location: LCCOMB_X26_Y11_N10
\GEN_REG:1:ck|carryout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \GEN_REG:1:ck|carryout~0_combout\ = (\inputa[1]~input_o\ & ((\inputb[1]~input_o\) # (\c0|carryout~0_combout\))) # (!\inputa[1]~input_o\ & (\inputb[1]~input_o\ & \c0|carryout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa[1]~input_o\,
	datab => \inputb[1]~input_o\,
	datad => \c0|carryout~0_combout\,
	combout => \GEN_REG:1:ck|carryout~0_combout\);

-- Location: LCCOMB_X26_Y11_N12
\GEN_REG:2:ck|carryout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \GEN_REG:2:ck|carryout~0_combout\ = (\inputb[2]~input_o\ & ((\inputa[2]~input_o\) # (\GEN_REG:1:ck|carryout~0_combout\))) # (!\inputb[2]~input_o\ & (\inputa[2]~input_o\ & \GEN_REG:1:ck|carryout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[2]~input_o\,
	datac => \inputa[2]~input_o\,
	datad => \GEN_REG:1:ck|carryout~0_combout\,
	combout => \GEN_REG:2:ck|carryout~0_combout\);

-- Location: LCCOMB_X26_Y11_N6
\GEN_REG:3:ck|carryout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \GEN_REG:3:ck|carryout~0_combout\ = (\inputb[3]~input_o\ & ((\inputa[3]~input_o\) # (\GEN_REG:2:ck|carryout~0_combout\))) # (!\inputb[3]~input_o\ & (\inputa[3]~input_o\ & \GEN_REG:2:ck|carryout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[3]~input_o\,
	datab => \inputa[3]~input_o\,
	datad => \GEN_REG:2:ck|carryout~0_combout\,
	combout => \GEN_REG:3:ck|carryout~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\inputa[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputa(1),
	o => \inputa[1]~input_o\);

-- Location: LCCOMB_X26_Y11_N8
\c2|hex[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c2|hex[0]~0_combout\ = (\inputa[3]~input_o\ & (\inputa[0]~input_o\ & (\inputa[2]~input_o\ $ (\inputa[1]~input_o\)))) # (!\inputa[3]~input_o\ & (!\inputa[1]~input_o\ & (\inputa[0]~input_o\ $ (\inputa[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa[0]~input_o\,
	datab => \inputa[3]~input_o\,
	datac => \inputa[2]~input_o\,
	datad => \inputa[1]~input_o\,
	combout => \c2|hex[0]~0_combout\);

-- Location: LCCOMB_X26_Y11_N26
\c2|hex[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c2|hex[1]~1_combout\ = (\inputa[3]~input_o\ & ((\inputa[0]~input_o\ & ((\inputa[1]~input_o\))) # (!\inputa[0]~input_o\ & (\inputa[2]~input_o\)))) # (!\inputa[3]~input_o\ & (\inputa[2]~input_o\ & (\inputa[0]~input_o\ $ (\inputa[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa[0]~input_o\,
	datab => \inputa[3]~input_o\,
	datac => \inputa[2]~input_o\,
	datad => \inputa[1]~input_o\,
	combout => \c2|hex[1]~1_combout\);

-- Location: LCCOMB_X26_Y11_N20
\c2|hex[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c2|hex[2]~2_combout\ = (\inputa[3]~input_o\ & (((\inputa[0]~input_o\ & !\inputa[1]~input_o\)) # (!\inputa[2]~input_o\))) # (!\inputa[3]~input_o\ & ((\inputa[0]~input_o\) # ((\inputa[2]~input_o\) # (!\inputa[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa[0]~input_o\,
	datab => \inputa[3]~input_o\,
	datac => \inputa[2]~input_o\,
	datad => \inputa[1]~input_o\,
	combout => \c2|hex[2]~2_combout\);

-- Location: LCCOMB_X26_Y11_N22
\c2|hex[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c2|hex[3]~3_combout\ = (\inputa[1]~input_o\ & ((\inputa[0]~input_o\ & ((\inputa[2]~input_o\))) # (!\inputa[0]~input_o\ & (\inputa[3]~input_o\ & !\inputa[2]~input_o\)))) # (!\inputa[1]~input_o\ & (!\inputa[3]~input_o\ & (\inputa[0]~input_o\ $ 
-- (\inputa[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa[0]~input_o\,
	datab => \inputa[3]~input_o\,
	datac => \inputa[2]~input_o\,
	datad => \inputa[1]~input_o\,
	combout => \c2|hex[3]~3_combout\);

-- Location: LCCOMB_X26_Y11_N24
\c2|hex[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c2|hex[4]~4_combout\ = (\inputa[1]~input_o\ & (\inputa[0]~input_o\ & (!\inputa[3]~input_o\))) # (!\inputa[1]~input_o\ & ((\inputa[2]~input_o\ & ((!\inputa[3]~input_o\))) # (!\inputa[2]~input_o\ & (\inputa[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa[0]~input_o\,
	datab => \inputa[3]~input_o\,
	datac => \inputa[2]~input_o\,
	datad => \inputa[1]~input_o\,
	combout => \c2|hex[4]~4_combout\);

-- Location: LCCOMB_X26_Y11_N18
\c2|hex[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c2|hex[5]~5_combout\ = (\inputa[0]~input_o\ & (\inputa[3]~input_o\ $ (((\inputa[1]~input_o\) # (!\inputa[2]~input_o\))))) # (!\inputa[0]~input_o\ & (!\inputa[3]~input_o\ & (!\inputa[2]~input_o\ & \inputa[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa[0]~input_o\,
	datab => \inputa[3]~input_o\,
	datac => \inputa[2]~input_o\,
	datad => \inputa[1]~input_o\,
	combout => \c2|hex[5]~5_combout\);

-- Location: LCCOMB_X26_Y11_N28
\c2|hex[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c2|hex[6]~6_combout\ = (\inputa[0]~input_o\ & ((\inputa[3]~input_o\) # (\inputa[2]~input_o\ $ (\inputa[1]~input_o\)))) # (!\inputa[0]~input_o\ & ((\inputa[1]~input_o\) # (\inputa[3]~input_o\ $ (\inputa[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa[0]~input_o\,
	datab => \inputa[3]~input_o\,
	datac => \inputa[2]~input_o\,
	datad => \inputa[1]~input_o\,
	combout => \c2|hex[6]~6_combout\);

-- Location: IOIBUF_X12_Y0_N1
\inputb[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputb(0),
	o => \inputb[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\inputb[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputb(2),
	o => \inputb[2]~input_o\);

-- Location: LCCOMB_X16_Y1_N0
\c3|hex[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[0]~0_combout\ = (\inputb[3]~input_o\ & (\inputb[0]~input_o\ & (\inputb[1]~input_o\ $ (\inputb[2]~input_o\)))) # (!\inputb[3]~input_o\ & (!\inputb[1]~input_o\ & (\inputb[0]~input_o\ $ (\inputb[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[1]~input_o\,
	datab => \inputb[3]~input_o\,
	datac => \inputb[0]~input_o\,
	datad => \inputb[2]~input_o\,
	combout => \c3|hex[0]~0_combout\);

-- Location: LCCOMB_X16_Y1_N2
\c3|hex[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[1]~1_combout\ = (\inputb[1]~input_o\ & ((\inputb[0]~input_o\ & (\inputb[3]~input_o\)) # (!\inputb[0]~input_o\ & ((\inputb[2]~input_o\))))) # (!\inputb[1]~input_o\ & (\inputb[2]~input_o\ & (\inputb[3]~input_o\ $ (\inputb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[1]~input_o\,
	datab => \inputb[3]~input_o\,
	datac => \inputb[0]~input_o\,
	datad => \inputb[2]~input_o\,
	combout => \c3|hex[1]~1_combout\);

-- Location: LCCOMB_X16_Y1_N12
\c3|hex[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[2]~2_combout\ = (\inputb[3]~input_o\ & (((!\inputb[1]~input_o\ & \inputb[0]~input_o\)) # (!\inputb[2]~input_o\))) # (!\inputb[3]~input_o\ & (((\inputb[0]~input_o\) # (\inputb[2]~input_o\)) # (!\inputb[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[1]~input_o\,
	datab => \inputb[3]~input_o\,
	datac => \inputb[0]~input_o\,
	datad => \inputb[2]~input_o\,
	combout => \c3|hex[2]~2_combout\);

-- Location: LCCOMB_X16_Y1_N14
\c3|hex[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[3]~3_combout\ = (\inputb[1]~input_o\ & ((\inputb[0]~input_o\ & ((\inputb[2]~input_o\))) # (!\inputb[0]~input_o\ & (\inputb[3]~input_o\ & !\inputb[2]~input_o\)))) # (!\inputb[1]~input_o\ & (!\inputb[3]~input_o\ & (\inputb[0]~input_o\ $ 
-- (\inputb[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[1]~input_o\,
	datab => \inputb[3]~input_o\,
	datac => \inputb[0]~input_o\,
	datad => \inputb[2]~input_o\,
	combout => \c3|hex[3]~3_combout\);

-- Location: LCCOMB_X16_Y1_N24
\c3|hex[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[4]~4_combout\ = (\inputb[1]~input_o\ & (!\inputb[3]~input_o\ & (\inputb[0]~input_o\))) # (!\inputb[1]~input_o\ & ((\inputb[2]~input_o\ & (!\inputb[3]~input_o\)) # (!\inputb[2]~input_o\ & ((\inputb[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[1]~input_o\,
	datab => \inputb[3]~input_o\,
	datac => \inputb[0]~input_o\,
	datad => \inputb[2]~input_o\,
	combout => \c3|hex[4]~4_combout\);

-- Location: LCCOMB_X16_Y1_N26
\c3|hex[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[5]~5_combout\ = (\inputb[1]~input_o\ & (!\inputb[3]~input_o\ & ((\inputb[0]~input_o\) # (!\inputb[2]~input_o\)))) # (!\inputb[1]~input_o\ & (\inputb[0]~input_o\ & (\inputb[3]~input_o\ $ (!\inputb[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[1]~input_o\,
	datab => \inputb[3]~input_o\,
	datac => \inputb[0]~input_o\,
	datad => \inputb[2]~input_o\,
	combout => \c3|hex[5]~5_combout\);

-- Location: LCCOMB_X16_Y1_N20
\c3|hex[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[6]~6_combout\ = (\inputb[0]~input_o\ & ((\inputb[3]~input_o\) # (\inputb[1]~input_o\ $ (\inputb[2]~input_o\)))) # (!\inputb[0]~input_o\ & ((\inputb[1]~input_o\) # (\inputb[3]~input_o\ $ (\inputb[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[1]~input_o\,
	datab => \inputb[3]~input_o\,
	datac => \inputb[0]~input_o\,
	datad => \inputb[2]~input_o\,
	combout => \c3|hex[6]~6_combout\);

-- Location: LCCOMB_X26_Y11_N14
\GEN_REG:1:ck|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \GEN_REG:1:ck|output~combout\ = \inputa[1]~input_o\ $ (\inputb[1]~input_o\ $ (\c0|carryout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa[1]~input_o\,
	datab => \inputb[1]~input_o\,
	datad => \c0|carryout~0_combout\,
	combout => \GEN_REG:1:ck|output~combout\);

-- Location: LCCOMB_X26_Y11_N16
\GEN_REG:3:ck|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \GEN_REG:3:ck|output~0_combout\ = \inputb[3]~input_o\ $ (\inputa[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[3]~input_o\,
	datad => \inputa[3]~input_o\,
	combout => \GEN_REG:3:ck|output~0_combout\);

-- Location: LCCOMB_X26_Y11_N2
\GEN_REG:3:ck|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \GEN_REG:3:ck|output~combout\ = \GEN_REG:3:ck|output~0_combout\ $ (((\inputb[2]~input_o\ & ((\inputa[2]~input_o\) # (\GEN_REG:1:ck|carryout~0_combout\))) # (!\inputb[2]~input_o\ & (\inputa[2]~input_o\ & \GEN_REG:1:ck|carryout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[2]~input_o\,
	datab => \GEN_REG:3:ck|output~0_combout\,
	datac => \inputa[2]~input_o\,
	datad => \GEN_REG:1:ck|carryout~0_combout\,
	combout => \GEN_REG:3:ck|output~combout\);

-- Location: LCCOMB_X26_Y11_N4
\GEN_REG:2:ck|output\ : cycloneiv_lcell_comb
-- Equation(s):
-- \GEN_REG:2:ck|output~combout\ = \inputb[2]~input_o\ $ (\inputa[2]~input_o\ $ (\GEN_REG:1:ck|carryout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[2]~input_o\,
	datac => \inputa[2]~input_o\,
	datad => \GEN_REG:1:ck|carryout~0_combout\,
	combout => \GEN_REG:2:ck|output~combout\);

-- Location: LCCOMB_X26_Y11_N30
\c0|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|output~0_combout\ = \inputb[0]~input_o\ $ (\inputa[0]~input_o\ $ (\carryin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb[0]~input_o\,
	datac => \inputa[0]~input_o\,
	datad => \carryin~input_o\,
	combout => \c0|output~0_combout\);

-- Location: LCCOMB_X32_Y28_N8
\c4|hex[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c4|hex[0]~0_combout\ = (\GEN_REG:3:ck|output~combout\ & (\c0|output~0_combout\ & (\GEN_REG:1:ck|output~combout\ $ (\GEN_REG:2:ck|output~combout\)))) # (!\GEN_REG:3:ck|output~combout\ & (!\GEN_REG:1:ck|output~combout\ & (\GEN_REG:2:ck|output~combout\ $ 
-- (\c0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_REG:1:ck|output~combout\,
	datab => \GEN_REG:3:ck|output~combout\,
	datac => \GEN_REG:2:ck|output~combout\,
	datad => \c0|output~0_combout\,
	combout => \c4|hex[0]~0_combout\);

-- Location: LCCOMB_X32_Y28_N26
\c4|hex[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c4|hex[1]~1_combout\ = (\GEN_REG:1:ck|output~combout\ & ((\c0|output~0_combout\ & (\GEN_REG:3:ck|output~combout\)) # (!\c0|output~0_combout\ & ((\GEN_REG:2:ck|output~combout\))))) # (!\GEN_REG:1:ck|output~combout\ & (\GEN_REG:2:ck|output~combout\ & 
-- (\GEN_REG:3:ck|output~combout\ $ (\c0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_REG:1:ck|output~combout\,
	datab => \GEN_REG:3:ck|output~combout\,
	datac => \GEN_REG:2:ck|output~combout\,
	datad => \c0|output~0_combout\,
	combout => \c4|hex[1]~1_combout\);

-- Location: LCCOMB_X32_Y28_N4
\c4|hex[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c4|hex[2]~2_combout\ = (\GEN_REG:3:ck|output~combout\ & (\GEN_REG:2:ck|output~combout\ & ((\GEN_REG:1:ck|output~combout\) # (!\c0|output~0_combout\)))) # (!\GEN_REG:3:ck|output~combout\ & (\GEN_REG:1:ck|output~combout\ & (!\GEN_REG:2:ck|output~combout\ & 
-- !\c0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_REG:1:ck|output~combout\,
	datab => \GEN_REG:3:ck|output~combout\,
	datac => \GEN_REG:2:ck|output~combout\,
	datad => \c0|output~0_combout\,
	combout => \c4|hex[2]~2_combout\);

-- Location: LCCOMB_X32_Y28_N30
\c4|hex[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c4|hex[3]~3_combout\ = (\GEN_REG:1:ck|output~combout\ & ((\GEN_REG:2:ck|output~combout\ & ((\c0|output~0_combout\))) # (!\GEN_REG:2:ck|output~combout\ & (\GEN_REG:3:ck|output~combout\ & !\c0|output~0_combout\)))) # (!\GEN_REG:1:ck|output~combout\ & 
-- (!\GEN_REG:3:ck|output~combout\ & (\GEN_REG:2:ck|output~combout\ $ (\c0|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_REG:1:ck|output~combout\,
	datab => \GEN_REG:3:ck|output~combout\,
	datac => \GEN_REG:2:ck|output~combout\,
	datad => \c0|output~0_combout\,
	combout => \c4|hex[3]~3_combout\);

-- Location: LCCOMB_X32_Y28_N24
\c4|hex[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c4|hex[4]~4_combout\ = (\GEN_REG:1:ck|output~combout\ & (!\GEN_REG:3:ck|output~combout\ & ((\c0|output~0_combout\)))) # (!\GEN_REG:1:ck|output~combout\ & ((\GEN_REG:2:ck|output~combout\ & (!\GEN_REG:3:ck|output~combout\)) # 
-- (!\GEN_REG:2:ck|output~combout\ & ((\c0|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_REG:1:ck|output~combout\,
	datab => \GEN_REG:3:ck|output~combout\,
	datac => \GEN_REG:2:ck|output~combout\,
	datad => \c0|output~0_combout\,
	combout => \c4|hex[4]~4_combout\);

-- Location: LCCOMB_X32_Y28_N10
\c4|hex[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c4|hex[5]~5_combout\ = (\GEN_REG:1:ck|output~combout\ & (!\GEN_REG:3:ck|output~combout\ & ((\c0|output~0_combout\) # (!\GEN_REG:2:ck|output~combout\)))) # (!\GEN_REG:1:ck|output~combout\ & (\c0|output~0_combout\ & (\GEN_REG:3:ck|output~combout\ $ 
-- (!\GEN_REG:2:ck|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_REG:1:ck|output~combout\,
	datab => \GEN_REG:3:ck|output~combout\,
	datac => \GEN_REG:2:ck|output~combout\,
	datad => \c0|output~0_combout\,
	combout => \c4|hex[5]~5_combout\);

-- Location: LCCOMB_X32_Y28_N28
\c4|hex[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c4|hex[6]~6_combout\ = (\c0|output~0_combout\ & ((\GEN_REG:3:ck|output~combout\) # (\GEN_REG:1:ck|output~combout\ $ (\GEN_REG:2:ck|output~combout\)))) # (!\c0|output~0_combout\ & ((\GEN_REG:1:ck|output~combout\) # (\GEN_REG:3:ck|output~combout\ $ 
-- (\GEN_REG:2:ck|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_REG:1:ck|output~combout\,
	datab => \GEN_REG:3:ck|output~combout\,
	datac => \GEN_REG:2:ck|output~combout\,
	datad => \c0|output~0_combout\,
	combout => \c4|hex[6]~6_combout\);

ww_carryout <= \carryout~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;
END structure;


