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

-- DATE "01/17/2017 19:07:55"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	debouncer IS
    PORT (
	start : IN std_logic;
	clock : IN std_logic;
	output : OUT std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END debouncer;

-- Design Ports Information
-- start	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF debouncer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_output : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c0|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \c0|auto_generated|counter_comb_bita18~0_combout\ : std_logic;
SIGNAL \c2~q\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \c2~clkctrl_outclk\ : std_logic;
SIGNAL \c0|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \output~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \c1|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \c1|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \c1|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \c1|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \c1|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \c1|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \c1|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \c3|hex[0]~0_combout\ : std_logic;
SIGNAL \c3|hex[1]~1_combout\ : std_logic;
SIGNAL \c3|hex[2]~2_combout\ : std_logic;
SIGNAL \c3|hex[3]~3_combout\ : std_logic;
SIGNAL \c3|hex[4]~4_combout\ : std_logic;
SIGNAL \c3|hex[5]~5_combout\ : std_logic;
SIGNAL \c3|hex[6]~6_combout\ : std_logic;
SIGNAL \c1|auto_generated|counter_reg_bit\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \c0|auto_generated|counter_reg_bit\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \c3|ALT_INV_hex[6]~6_combout\ : std_logic;
SIGNAL \c3|ALT_INV_hex[2]~2_combout\ : std_logic;

BEGIN

ww_start <= start;
ww_clock <= clock;
output <= ww_output;
hex0 <= ww_hex0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\c2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \c2~q\);
\c3|ALT_INV_hex[6]~6_combout\ <= NOT \c3|hex[6]~6_combout\;
\c3|ALT_INV_hex[2]~2_combout\ <= NOT \c3|hex[2]~2_combout\;

-- Location: FF_X16_Y2_N9
\c0|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|auto_generated|counter_reg_bit[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X16_Y2_N12
\c0|auto_generated|counter_comb_bita0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\c0|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|auto_generated|counter_reg_bit\(0),
	cout => \c0|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X16_Y2_N14
\c0|auto_generated|counter_comb_bita1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita1~COUT\ = CARRY((\c0|auto_generated|counter_reg_bit\(0)) # (!\c0|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita0~COUT\,
	cout => \c0|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X16_Y2_N16
\c0|auto_generated|counter_comb_bita2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\c0|auto_generated|counter_reg_bit\(0) & !\c0|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita1~COUT\,
	cout => \c0|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X16_Y2_N18
\c0|auto_generated|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita3~COUT\ = CARRY((\c0|auto_generated|counter_reg_bit\(0)) # (!\c0|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita2~COUT\,
	cout => \c0|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X16_Y2_N20
\c0|auto_generated|counter_comb_bita4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\c0|auto_generated|counter_reg_bit\(0) & !\c0|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita3~COUT\,
	cout => \c0|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X16_Y2_N22
\c0|auto_generated|counter_comb_bita5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita5~COUT\ = CARRY((\c0|auto_generated|counter_reg_bit\(0)) # (!\c0|auto_generated|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita4~COUT\,
	cout => \c0|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X16_Y2_N24
\c0|auto_generated|counter_comb_bita6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita6~COUT\ = CARRY((!\c0|auto_generated|counter_reg_bit\(0) & !\c0|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita5~COUT\,
	cout => \c0|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X16_Y2_N26
\c0|auto_generated|counter_comb_bita7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita7~COUT\ = CARRY((\c0|auto_generated|counter_reg_bit\(0)) # (!\c0|auto_generated|counter_comb_bita6~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita6~COUT\,
	cout => \c0|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X16_Y2_N28
\c0|auto_generated|counter_comb_bita8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita8~COUT\ = CARRY((!\c0|auto_generated|counter_reg_bit\(0) & !\c0|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita7~COUT\,
	cout => \c0|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X16_Y2_N30
\c0|auto_generated|counter_comb_bita9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita9~COUT\ = CARRY((\c0|auto_generated|counter_reg_bit\(0)) # (!\c0|auto_generated|counter_comb_bita8~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita8~COUT\,
	cout => \c0|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X16_Y1_N0
\c0|auto_generated|counter_comb_bita10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita10~COUT\ = CARRY((!\c0|auto_generated|counter_reg_bit\(0) & !\c0|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita9~COUT\,
	cout => \c0|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X16_Y1_N2
\c0|auto_generated|counter_comb_bita11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita11~COUT\ = CARRY((\c0|auto_generated|counter_reg_bit\(0)) # (!\c0|auto_generated|counter_comb_bita10~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita10~COUT\,
	cout => \c0|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCCOMB_X16_Y1_N4
\c0|auto_generated|counter_comb_bita12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita12~COUT\ = CARRY((!\c0|auto_generated|counter_reg_bit\(0) & !\c0|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita11~COUT\,
	cout => \c0|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X16_Y1_N6
\c0|auto_generated|counter_comb_bita13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita13~COUT\ = CARRY((\c0|auto_generated|counter_reg_bit\(0)) # (!\c0|auto_generated|counter_comb_bita12~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita12~COUT\,
	cout => \c0|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCCOMB_X16_Y1_N8
\c0|auto_generated|counter_comb_bita14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita14~COUT\ = CARRY((!\c0|auto_generated|counter_reg_bit\(0) & !\c0|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita13~COUT\,
	cout => \c0|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X16_Y1_N10
\c0|auto_generated|counter_comb_bita15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita15~COUT\ = CARRY((\c0|auto_generated|counter_reg_bit\(0)) # (!\c0|auto_generated|counter_comb_bita14~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita14~COUT\,
	cout => \c0|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCCOMB_X16_Y1_N12
\c0|auto_generated|counter_comb_bita16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita16~COUT\ = CARRY((!\c0|auto_generated|counter_reg_bit\(0) & !\c0|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita15~COUT\,
	cout => \c0|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X16_Y1_N14
\c0|auto_generated|counter_comb_bita17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita17~COUT\ = CARRY((\c0|auto_generated|counter_reg_bit\(0)) # (!\c0|auto_generated|counter_comb_bita16~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita16~COUT\,
	cout => \c0|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCCOMB_X16_Y1_N16
\c0|auto_generated|counter_comb_bita18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita18~COUT\ = CARRY((!\c0|auto_generated|counter_reg_bit\(0) & !\c0|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cin => \c0|auto_generated|counter_comb_bita17~COUT\,
	cout => \c0|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCCOMB_X16_Y1_N18
\c0|auto_generated|counter_comb_bita18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_comb_bita18~0_combout\ = \c0|auto_generated|counter_comb_bita18~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \c0|auto_generated|counter_comb_bita18~COUT\,
	combout => \c0|auto_generated|counter_comb_bita18~0_combout\);

-- Location: FF_X16_Y1_N19
c2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|auto_generated|counter_comb_bita18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2~q\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: CLKCTRL_G18
\c2~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \c2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \c2~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y2_N8
\c0|auto_generated|counter_reg_bit[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c0|auto_generated|counter_reg_bit[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \c0|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: IOOBUF_X29_Y31_N2
\output~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\hex0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|hex[0]~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\hex0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|hex[1]~1_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\hex0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|ALT_INV_hex[2]~2_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\hex0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\hex0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|hex[4]~4_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\hex0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|hex[5]~5_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\hex0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|ALT_INV_hex[6]~6_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: LCCOMB_X24_Y30_N16
\c1|auto_generated|counter_comb_bita0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c1|auto_generated|counter_comb_bita0~combout\ = !\c1|auto_generated|counter_reg_bit\(0)
-- \c1|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\c1|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c1|auto_generated|counter_reg_bit\(0),
	combout => \c1|auto_generated|counter_comb_bita0~combout\,
	cout => \c1|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X24_Y30_N17
\c1|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c2~clkctrl_outclk\,
	d => \c1|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X24_Y30_N18
\c1|auto_generated|counter_comb_bita1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c1|auto_generated|counter_comb_bita1~combout\ = (\c1|auto_generated|counter_reg_bit\(1) & ((GND) # (!\c1|auto_generated|counter_comb_bita0~COUT\))) # (!\c1|auto_generated|counter_reg_bit\(1) & (\c1|auto_generated|counter_comb_bita0~COUT\ $ (GND)))
-- \c1|auto_generated|counter_comb_bita1~COUT\ = CARRY((\c1|auto_generated|counter_reg_bit\(1)) # (!\c1|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c1|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \c1|auto_generated|counter_comb_bita0~COUT\,
	combout => \c1|auto_generated|counter_comb_bita1~combout\,
	cout => \c1|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X24_Y30_N19
\c1|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c2~clkctrl_outclk\,
	d => \c1|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X24_Y30_N20
\c1|auto_generated|counter_comb_bita2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c1|auto_generated|counter_comb_bita2~combout\ = (\c1|auto_generated|counter_reg_bit\(2) & (\c1|auto_generated|counter_comb_bita1~COUT\ & VCC)) # (!\c1|auto_generated|counter_reg_bit\(2) & (!\c1|auto_generated|counter_comb_bita1~COUT\))
-- \c1|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\c1|auto_generated|counter_reg_bit\(2) & !\c1|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c1|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \c1|auto_generated|counter_comb_bita1~COUT\,
	combout => \c1|auto_generated|counter_comb_bita2~combout\,
	cout => \c1|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X24_Y30_N21
\c1|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c2~clkctrl_outclk\,
	d => \c1|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X24_Y30_N22
\c1|auto_generated|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c1|auto_generated|counter_comb_bita3~combout\ = \c1|auto_generated|counter_reg_bit\(3) $ (\c1|auto_generated|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|auto_generated|counter_reg_bit\(3),
	cin => \c1|auto_generated|counter_comb_bita2~COUT\,
	combout => \c1|auto_generated|counter_comb_bita3~combout\);

-- Location: FF_X24_Y30_N23
\c1|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \c2~clkctrl_outclk\,
	d => \c1|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X24_Y30_N0
\c3|hex[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[0]~0_combout\ = (\c1|auto_generated|counter_reg_bit\(2) & (!\c1|auto_generated|counter_reg_bit\(1) & (\c1|auto_generated|counter_reg_bit\(0) $ (!\c1|auto_generated|counter_reg_bit\(3))))) # (!\c1|auto_generated|counter_reg_bit\(2) & 
-- (\c1|auto_generated|counter_reg_bit\(0) & (\c1|auto_generated|counter_reg_bit\(3) $ (!\c1|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|auto_generated|counter_reg_bit\(2),
	datab => \c1|auto_generated|counter_reg_bit\(0),
	datac => \c1|auto_generated|counter_reg_bit\(3),
	datad => \c1|auto_generated|counter_reg_bit\(1),
	combout => \c3|hex[0]~0_combout\);

-- Location: LCCOMB_X24_Y30_N26
\c3|hex[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[1]~1_combout\ = (\c1|auto_generated|counter_reg_bit\(3) & ((\c1|auto_generated|counter_reg_bit\(0) & ((\c1|auto_generated|counter_reg_bit\(1)))) # (!\c1|auto_generated|counter_reg_bit\(0) & (\c1|auto_generated|counter_reg_bit\(2))))) # 
-- (!\c1|auto_generated|counter_reg_bit\(3) & (\c1|auto_generated|counter_reg_bit\(2) & (\c1|auto_generated|counter_reg_bit\(0) $ (\c1|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|auto_generated|counter_reg_bit\(2),
	datab => \c1|auto_generated|counter_reg_bit\(0),
	datac => \c1|auto_generated|counter_reg_bit\(3),
	datad => \c1|auto_generated|counter_reg_bit\(1),
	combout => \c3|hex[1]~1_combout\);

-- Location: LCCOMB_X24_Y30_N4
\c3|hex[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[2]~2_combout\ = (\c1|auto_generated|counter_reg_bit\(2) & (((\c1|auto_generated|counter_reg_bit\(0) & !\c1|auto_generated|counter_reg_bit\(1))) # (!\c1|auto_generated|counter_reg_bit\(3)))) # (!\c1|auto_generated|counter_reg_bit\(2) & 
-- ((\c1|auto_generated|counter_reg_bit\(0)) # ((\c1|auto_generated|counter_reg_bit\(3)) # (!\c1|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|auto_generated|counter_reg_bit\(2),
	datab => \c1|auto_generated|counter_reg_bit\(0),
	datac => \c1|auto_generated|counter_reg_bit\(3),
	datad => \c1|auto_generated|counter_reg_bit\(1),
	combout => \c3|hex[2]~2_combout\);

-- Location: LCCOMB_X24_Y30_N6
\c3|hex[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[3]~3_combout\ = (\c1|auto_generated|counter_reg_bit\(1) & ((\c1|auto_generated|counter_reg_bit\(2) & (\c1|auto_generated|counter_reg_bit\(0))) # (!\c1|auto_generated|counter_reg_bit\(2) & (!\c1|auto_generated|counter_reg_bit\(0) & 
-- \c1|auto_generated|counter_reg_bit\(3))))) # (!\c1|auto_generated|counter_reg_bit\(1) & (!\c1|auto_generated|counter_reg_bit\(3) & (\c1|auto_generated|counter_reg_bit\(2) $ (\c1|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|auto_generated|counter_reg_bit\(2),
	datab => \c1|auto_generated|counter_reg_bit\(0),
	datac => \c1|auto_generated|counter_reg_bit\(3),
	datad => \c1|auto_generated|counter_reg_bit\(1),
	combout => \c3|hex[3]~3_combout\);

-- Location: LCCOMB_X24_Y30_N24
\c3|hex[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[4]~4_combout\ = (\c1|auto_generated|counter_reg_bit\(1) & (((\c1|auto_generated|counter_reg_bit\(0) & !\c1|auto_generated|counter_reg_bit\(3))))) # (!\c1|auto_generated|counter_reg_bit\(1) & ((\c1|auto_generated|counter_reg_bit\(2) & 
-- ((!\c1|auto_generated|counter_reg_bit\(3)))) # (!\c1|auto_generated|counter_reg_bit\(2) & (\c1|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|auto_generated|counter_reg_bit\(2),
	datab => \c1|auto_generated|counter_reg_bit\(0),
	datac => \c1|auto_generated|counter_reg_bit\(3),
	datad => \c1|auto_generated|counter_reg_bit\(1),
	combout => \c3|hex[4]~4_combout\);

-- Location: LCCOMB_X24_Y30_N10
\c3|hex[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[5]~5_combout\ = (\c1|auto_generated|counter_reg_bit\(2) & (\c1|auto_generated|counter_reg_bit\(0) & (\c1|auto_generated|counter_reg_bit\(3) $ (\c1|auto_generated|counter_reg_bit\(1))))) # (!\c1|auto_generated|counter_reg_bit\(2) & 
-- (!\c1|auto_generated|counter_reg_bit\(3) & ((\c1|auto_generated|counter_reg_bit\(0)) # (\c1|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|auto_generated|counter_reg_bit\(2),
	datab => \c1|auto_generated|counter_reg_bit\(0),
	datac => \c1|auto_generated|counter_reg_bit\(3),
	datad => \c1|auto_generated|counter_reg_bit\(1),
	combout => \c3|hex[5]~5_combout\);

-- Location: LCCOMB_X24_Y30_N12
\c3|hex[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c3|hex[6]~6_combout\ = (\c1|auto_generated|counter_reg_bit\(0) & ((\c1|auto_generated|counter_reg_bit\(3)) # (\c1|auto_generated|counter_reg_bit\(2) $ (\c1|auto_generated|counter_reg_bit\(1))))) # (!\c1|auto_generated|counter_reg_bit\(0) & 
-- ((\c1|auto_generated|counter_reg_bit\(1)) # (\c1|auto_generated|counter_reg_bit\(2) $ (\c1|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|auto_generated|counter_reg_bit\(2),
	datab => \c1|auto_generated|counter_reg_bit\(0),
	datac => \c1|auto_generated|counter_reg_bit\(3),
	datad => \c1|auto_generated|counter_reg_bit\(1),
	combout => \c3|hex[6]~6_combout\);

-- Location: IOIBUF_X14_Y0_N8
\start~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

ww_output <= \output~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;
END structure;


