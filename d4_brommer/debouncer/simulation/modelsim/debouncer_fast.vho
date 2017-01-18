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

-- DATE "01/18/2017 17:13:03"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	debouncer IS
    PORT (
	start : IN std_logic;
	clock : IN std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	ledr : OUT std_logic
	);
END debouncer;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- start	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledr : std_logic;
SIGNAL \debounce_flip_flip~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \start~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounce_flip_flip~regout\ : std_logic;
SIGNAL \toggle_ff_2~regout\ : std_logic;
SIGNAL \toggle_ff_1~regout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \debounce_flip_flip~clkctrl_outclk\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \start~clkctrl_outclk\ : std_logic;
SIGNAL \debounce_flip_flip~feeder_combout\ : std_logic;
SIGNAL \toggle_ff_2~feeder_combout\ : std_logic;
SIGNAL \toggle_ff_1~feeder_combout\ : std_logic;
SIGNAL \test_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \test_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \test_counter|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \test_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \test_counter|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \test_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \test_counter|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \hex_0|hex[0]~0_combout\ : std_logic;
SIGNAL \hex_0|hex[1]~1_combout\ : std_logic;
SIGNAL \hex_0|hex[2]~2_combout\ : std_logic;
SIGNAL \hex_0|hex[3]~3_combout\ : std_logic;
SIGNAL \hex_0|hex[4]~4_combout\ : std_logic;
SIGNAL \hex_0|hex[5]~5_combout\ : std_logic;
SIGNAL \hex_0|hex[6]~6_combout\ : std_logic;
SIGNAL \test_counter_unbounced|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \test_counter_unbounced|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \test_counter_unbounced|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \test_counter_unbounced|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \test_counter_unbounced|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \test_counter_unbounced|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \test_counter_unbounced|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \hex_1|hex[0]~0_combout\ : std_logic;
SIGNAL \hex_1|hex[1]~1_combout\ : std_logic;
SIGNAL \hex_1|hex[2]~2_combout\ : std_logic;
SIGNAL \hex_1|hex[3]~3_combout\ : std_logic;
SIGNAL \hex_1|hex[4]~4_combout\ : std_logic;
SIGNAL \hex_1|hex[5]~5_combout\ : std_logic;
SIGNAL \hex_1|hex[6]~6_combout\ : std_logic;
SIGNAL \test_counter_unbounced|auto_generated|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \test_counter|auto_generated|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hex_1|ALT_INV_hex[6]~6_combout\ : std_logic;
SIGNAL \hex_1|ALT_INV_hex[2]~2_combout\ : std_logic;
SIGNAL \hex_0|ALT_INV_hex[6]~6_combout\ : std_logic;
SIGNAL \hex_0|ALT_INV_hex[2]~2_combout\ : std_logic;

BEGIN

ww_start <= start;
ww_clock <= clock;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\debounce_flip_flip~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \debounce_flip_flip~regout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\start~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \start~combout\);
\hex_1|ALT_INV_hex[6]~6_combout\ <= NOT \hex_1|hex[6]~6_combout\;
\hex_1|ALT_INV_hex[2]~2_combout\ <= NOT \hex_1|hex[2]~2_combout\;
\hex_0|ALT_INV_hex[6]~6_combout\ <= NOT \hex_0|hex[6]~6_combout\;
\hex_0|ALT_INV_hex[2]~2_combout\ <= NOT \hex_0|hex[2]~2_combout\;

-- Location: LCFF_X49_Y14_N7
debounce_flip_flip : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \debounce_flip_flip~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_flip_flip~regout\);

-- Location: LCFF_X49_Y14_N19
toggle_ff_2 : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \toggle_ff_2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \toggle_ff_2~regout\);

-- Location: LCFF_X49_Y14_N1
toggle_ff_1 : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \toggle_ff_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \toggle_ff_1~regout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G5
\debounce_flip_flip~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \debounce_flip_flip~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \debounce_flip_flip~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: CLKCTRL_G6
\start~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \start~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \start~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y14_N6
\debounce_flip_flip~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_flip_flip~feeder_combout\ = \toggle_ff_2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \toggle_ff_2~regout\,
	combout => \debounce_flip_flip~feeder_combout\);

-- Location: LCCOMB_X49_Y14_N18
\toggle_ff_2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \toggle_ff_2~feeder_combout\ = \toggle_ff_1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \toggle_ff_1~regout\,
	combout => \toggle_ff_2~feeder_combout\);

-- Location: LCCOMB_X49_Y14_N0
\toggle_ff_1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \toggle_ff_1~feeder_combout\ = \start~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start~combout\,
	combout => \toggle_ff_1~feeder_combout\);

-- Location: LCCOMB_X1_Y20_N8
\test_counter|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_counter|auto_generated|counter_comb_bita0~combout\ = \test_counter|auto_generated|safe_q\(0) $ (VCC)
-- \test_counter|auto_generated|counter_comb_bita0~COUT\ = CARRY(\test_counter|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_counter|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \test_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \test_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCFF_X1_Y20_N9
\test_counter|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounce_flip_flip~clkctrl_outclk\,
	datain => \test_counter|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \test_counter|auto_generated|safe_q\(0));

-- Location: LCCOMB_X1_Y20_N10
\test_counter|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_counter|auto_generated|counter_comb_bita1~combout\ = (\test_counter|auto_generated|safe_q\(1) & (!\test_counter|auto_generated|counter_comb_bita0~COUT\)) # (!\test_counter|auto_generated|safe_q\(1) & 
-- ((\test_counter|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \test_counter|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\test_counter|auto_generated|counter_comb_bita0~COUT\) # (!\test_counter|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \test_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \test_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \test_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X1_Y20_N11
\test_counter|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounce_flip_flip~clkctrl_outclk\,
	datain => \test_counter|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \test_counter|auto_generated|safe_q\(1));

-- Location: LCCOMB_X1_Y20_N12
\test_counter|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_counter|auto_generated|counter_comb_bita2~combout\ = (\test_counter|auto_generated|safe_q\(2) & (\test_counter|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\test_counter|auto_generated|safe_q\(2) & 
-- (!\test_counter|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \test_counter|auto_generated|counter_comb_bita2~COUT\ = CARRY((\test_counter|auto_generated|safe_q\(2) & !\test_counter|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \test_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \test_counter|auto_generated|counter_comb_bita2~combout\,
	cout => \test_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X1_Y20_N13
\test_counter|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounce_flip_flip~clkctrl_outclk\,
	datain => \test_counter|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \test_counter|auto_generated|safe_q\(2));

-- Location: LCCOMB_X1_Y20_N14
\test_counter|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_counter|auto_generated|counter_comb_bita3~combout\ = \test_counter|auto_generated|safe_q\(3) $ (\test_counter|auto_generated|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_counter|auto_generated|safe_q\(3),
	cin => \test_counter|auto_generated|counter_comb_bita2~COUT\,
	combout => \test_counter|auto_generated|counter_comb_bita3~combout\);

-- Location: LCFF_X1_Y20_N15
\test_counter|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounce_flip_flip~clkctrl_outclk\,
	datain => \test_counter|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \test_counter|auto_generated|safe_q\(3));

-- Location: LCCOMB_X1_Y20_N28
\hex_0|hex[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_0|hex[0]~0_combout\ = (\test_counter|auto_generated|safe_q\(2) & (!\test_counter|auto_generated|safe_q\(1) & (\test_counter|auto_generated|safe_q\(3) $ (!\test_counter|auto_generated|safe_q\(0))))) # (!\test_counter|auto_generated|safe_q\(2) & 
-- (\test_counter|auto_generated|safe_q\(0) & (\test_counter|auto_generated|safe_q\(1) $ (!\test_counter|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter|auto_generated|safe_q\(1),
	datab => \test_counter|auto_generated|safe_q\(2),
	datac => \test_counter|auto_generated|safe_q\(3),
	datad => \test_counter|auto_generated|safe_q\(0),
	combout => \hex_0|hex[0]~0_combout\);

-- Location: LCCOMB_X1_Y20_N2
\hex_0|hex[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_0|hex[1]~1_combout\ = (\test_counter|auto_generated|safe_q\(1) & ((\test_counter|auto_generated|safe_q\(0) & ((\test_counter|auto_generated|safe_q\(3)))) # (!\test_counter|auto_generated|safe_q\(0) & (\test_counter|auto_generated|safe_q\(2))))) # 
-- (!\test_counter|auto_generated|safe_q\(1) & (\test_counter|auto_generated|safe_q\(2) & (\test_counter|auto_generated|safe_q\(3) $ (\test_counter|auto_generated|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter|auto_generated|safe_q\(1),
	datab => \test_counter|auto_generated|safe_q\(2),
	datac => \test_counter|auto_generated|safe_q\(3),
	datad => \test_counter|auto_generated|safe_q\(0),
	combout => \hex_0|hex[1]~1_combout\);

-- Location: LCCOMB_X1_Y20_N16
\hex_0|hex[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_0|hex[2]~2_combout\ = (\test_counter|auto_generated|safe_q\(2) & (((!\test_counter|auto_generated|safe_q\(1) & \test_counter|auto_generated|safe_q\(0))) # (!\test_counter|auto_generated|safe_q\(3)))) # (!\test_counter|auto_generated|safe_q\(2) & 
-- (((\test_counter|auto_generated|safe_q\(3)) # (\test_counter|auto_generated|safe_q\(0))) # (!\test_counter|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter|auto_generated|safe_q\(1),
	datab => \test_counter|auto_generated|safe_q\(2),
	datac => \test_counter|auto_generated|safe_q\(3),
	datad => \test_counter|auto_generated|safe_q\(0),
	combout => \hex_0|hex[2]~2_combout\);

-- Location: LCCOMB_X1_Y20_N26
\hex_0|hex[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_0|hex[3]~3_combout\ = (\test_counter|auto_generated|safe_q\(1) & ((\test_counter|auto_generated|safe_q\(2) & ((\test_counter|auto_generated|safe_q\(0)))) # (!\test_counter|auto_generated|safe_q\(2) & (\test_counter|auto_generated|safe_q\(3) & 
-- !\test_counter|auto_generated|safe_q\(0))))) # (!\test_counter|auto_generated|safe_q\(1) & (!\test_counter|auto_generated|safe_q\(3) & (\test_counter|auto_generated|safe_q\(2) $ (\test_counter|auto_generated|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter|auto_generated|safe_q\(1),
	datab => \test_counter|auto_generated|safe_q\(2),
	datac => \test_counter|auto_generated|safe_q\(3),
	datad => \test_counter|auto_generated|safe_q\(0),
	combout => \hex_0|hex[3]~3_combout\);

-- Location: LCCOMB_X1_Y20_N0
\hex_0|hex[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_0|hex[4]~4_combout\ = (\test_counter|auto_generated|safe_q\(1) & (((!\test_counter|auto_generated|safe_q\(3) & \test_counter|auto_generated|safe_q\(0))))) # (!\test_counter|auto_generated|safe_q\(1) & ((\test_counter|auto_generated|safe_q\(2) & 
-- (!\test_counter|auto_generated|safe_q\(3))) # (!\test_counter|auto_generated|safe_q\(2) & ((\test_counter|auto_generated|safe_q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter|auto_generated|safe_q\(1),
	datab => \test_counter|auto_generated|safe_q\(2),
	datac => \test_counter|auto_generated|safe_q\(3),
	datad => \test_counter|auto_generated|safe_q\(0),
	combout => \hex_0|hex[4]~4_combout\);

-- Location: LCCOMB_X1_Y20_N22
\hex_0|hex[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_0|hex[5]~5_combout\ = (\test_counter|auto_generated|safe_q\(1) & (!\test_counter|auto_generated|safe_q\(3) & ((\test_counter|auto_generated|safe_q\(0)) # (!\test_counter|auto_generated|safe_q\(2))))) # (!\test_counter|auto_generated|safe_q\(1) & 
-- (\test_counter|auto_generated|safe_q\(0) & (\test_counter|auto_generated|safe_q\(2) $ (!\test_counter|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter|auto_generated|safe_q\(1),
	datab => \test_counter|auto_generated|safe_q\(2),
	datac => \test_counter|auto_generated|safe_q\(3),
	datad => \test_counter|auto_generated|safe_q\(0),
	combout => \hex_0|hex[5]~5_combout\);

-- Location: LCCOMB_X1_Y20_N4
\hex_0|hex[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_0|hex[6]~6_combout\ = (\test_counter|auto_generated|safe_q\(0) & ((\test_counter|auto_generated|safe_q\(3)) # (\test_counter|auto_generated|safe_q\(1) $ (\test_counter|auto_generated|safe_q\(2))))) # (!\test_counter|auto_generated|safe_q\(0) & 
-- ((\test_counter|auto_generated|safe_q\(1)) # (\test_counter|auto_generated|safe_q\(2) $ (\test_counter|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter|auto_generated|safe_q\(1),
	datab => \test_counter|auto_generated|safe_q\(2),
	datac => \test_counter|auto_generated|safe_q\(3),
	datad => \test_counter|auto_generated|safe_q\(0),
	combout => \hex_0|hex[6]~6_combout\);

-- Location: LCCOMB_X1_Y21_N0
\test_counter_unbounced|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_counter_unbounced|auto_generated|counter_comb_bita0~combout\ = \test_counter_unbounced|auto_generated|safe_q\(0) $ (VCC)
-- \test_counter_unbounced|auto_generated|counter_comb_bita0~COUT\ = CARRY(\test_counter_unbounced|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_counter_unbounced|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \test_counter_unbounced|auto_generated|counter_comb_bita0~combout\,
	cout => \test_counter_unbounced|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCFF_X1_Y21_N1
\test_counter_unbounced|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \start~clkctrl_outclk\,
	datain => \test_counter_unbounced|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \test_counter_unbounced|auto_generated|safe_q\(0));

-- Location: LCCOMB_X1_Y21_N2
\test_counter_unbounced|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_counter_unbounced|auto_generated|counter_comb_bita1~combout\ = (\test_counter_unbounced|auto_generated|safe_q\(1) & (!\test_counter_unbounced|auto_generated|counter_comb_bita0~COUT\)) # (!\test_counter_unbounced|auto_generated|safe_q\(1) & 
-- ((\test_counter_unbounced|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \test_counter_unbounced|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\test_counter_unbounced|auto_generated|counter_comb_bita0~COUT\) # (!\test_counter_unbounced|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_counter_unbounced|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \test_counter_unbounced|auto_generated|counter_comb_bita0~COUT\,
	combout => \test_counter_unbounced|auto_generated|counter_comb_bita1~combout\,
	cout => \test_counter_unbounced|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X1_Y21_N3
\test_counter_unbounced|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \start~clkctrl_outclk\,
	datain => \test_counter_unbounced|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \test_counter_unbounced|auto_generated|safe_q\(1));

-- Location: LCCOMB_X1_Y21_N4
\test_counter_unbounced|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_counter_unbounced|auto_generated|counter_comb_bita2~combout\ = (\test_counter_unbounced|auto_generated|safe_q\(2) & (\test_counter_unbounced|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\test_counter_unbounced|auto_generated|safe_q\(2) & 
-- (!\test_counter_unbounced|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \test_counter_unbounced|auto_generated|counter_comb_bita2~COUT\ = CARRY((\test_counter_unbounced|auto_generated|safe_q\(2) & !\test_counter_unbounced|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \test_counter_unbounced|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \test_counter_unbounced|auto_generated|counter_comb_bita1~COUT\,
	combout => \test_counter_unbounced|auto_generated|counter_comb_bita2~combout\,
	cout => \test_counter_unbounced|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X1_Y21_N5
\test_counter_unbounced|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \start~clkctrl_outclk\,
	datain => \test_counter_unbounced|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \test_counter_unbounced|auto_generated|safe_q\(2));

-- Location: LCCOMB_X1_Y21_N6
\test_counter_unbounced|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \test_counter_unbounced|auto_generated|counter_comb_bita3~combout\ = \test_counter_unbounced|auto_generated|counter_comb_bita2~COUT\ $ (\test_counter_unbounced|auto_generated|safe_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \test_counter_unbounced|auto_generated|safe_q\(3),
	cin => \test_counter_unbounced|auto_generated|counter_comb_bita2~COUT\,
	combout => \test_counter_unbounced|auto_generated|counter_comb_bita3~combout\);

-- Location: LCFF_X1_Y21_N7
\test_counter_unbounced|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \start~clkctrl_outclk\,
	datain => \test_counter_unbounced|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \test_counter_unbounced|auto_generated|safe_q\(3));

-- Location: LCCOMB_X1_Y21_N8
\hex_1|hex[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_1|hex[0]~0_combout\ = (\test_counter_unbounced|auto_generated|safe_q\(2) & (!\test_counter_unbounced|auto_generated|safe_q\(1) & (\test_counter_unbounced|auto_generated|safe_q\(0) $ (!\test_counter_unbounced|auto_generated|safe_q\(3))))) # 
-- (!\test_counter_unbounced|auto_generated|safe_q\(2) & (\test_counter_unbounced|auto_generated|safe_q\(0) & (\test_counter_unbounced|auto_generated|safe_q\(1) $ (!\test_counter_unbounced|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter_unbounced|auto_generated|safe_q\(0),
	datab => \test_counter_unbounced|auto_generated|safe_q\(1),
	datac => \test_counter_unbounced|auto_generated|safe_q\(2),
	datad => \test_counter_unbounced|auto_generated|safe_q\(3),
	combout => \hex_1|hex[0]~0_combout\);

-- Location: LCCOMB_X1_Y21_N10
\hex_1|hex[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_1|hex[1]~1_combout\ = (\test_counter_unbounced|auto_generated|safe_q\(1) & ((\test_counter_unbounced|auto_generated|safe_q\(0) & ((\test_counter_unbounced|auto_generated|safe_q\(3)))) # (!\test_counter_unbounced|auto_generated|safe_q\(0) & 
-- (\test_counter_unbounced|auto_generated|safe_q\(2))))) # (!\test_counter_unbounced|auto_generated|safe_q\(1) & (\test_counter_unbounced|auto_generated|safe_q\(2) & (\test_counter_unbounced|auto_generated|safe_q\(0) $ 
-- (\test_counter_unbounced|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter_unbounced|auto_generated|safe_q\(0),
	datab => \test_counter_unbounced|auto_generated|safe_q\(1),
	datac => \test_counter_unbounced|auto_generated|safe_q\(2),
	datad => \test_counter_unbounced|auto_generated|safe_q\(3),
	combout => \hex_1|hex[1]~1_combout\);

-- Location: LCCOMB_X1_Y21_N28
\hex_1|hex[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_1|hex[2]~2_combout\ = (\test_counter_unbounced|auto_generated|safe_q\(2) & (((\test_counter_unbounced|auto_generated|safe_q\(0) & !\test_counter_unbounced|auto_generated|safe_q\(1))) # (!\test_counter_unbounced|auto_generated|safe_q\(3)))) # 
-- (!\test_counter_unbounced|auto_generated|safe_q\(2) & ((\test_counter_unbounced|auto_generated|safe_q\(0)) # ((\test_counter_unbounced|auto_generated|safe_q\(3)) # (!\test_counter_unbounced|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter_unbounced|auto_generated|safe_q\(0),
	datab => \test_counter_unbounced|auto_generated|safe_q\(1),
	datac => \test_counter_unbounced|auto_generated|safe_q\(2),
	datad => \test_counter_unbounced|auto_generated|safe_q\(3),
	combout => \hex_1|hex[2]~2_combout\);

-- Location: LCCOMB_X1_Y21_N26
\hex_1|hex[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_1|hex[3]~3_combout\ = (\test_counter_unbounced|auto_generated|safe_q\(1) & ((\test_counter_unbounced|auto_generated|safe_q\(0) & (\test_counter_unbounced|auto_generated|safe_q\(2))) # (!\test_counter_unbounced|auto_generated|safe_q\(0) & 
-- (!\test_counter_unbounced|auto_generated|safe_q\(2) & \test_counter_unbounced|auto_generated|safe_q\(3))))) # (!\test_counter_unbounced|auto_generated|safe_q\(1) & (!\test_counter_unbounced|auto_generated|safe_q\(3) & 
-- (\test_counter_unbounced|auto_generated|safe_q\(0) $ (\test_counter_unbounced|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter_unbounced|auto_generated|safe_q\(0),
	datab => \test_counter_unbounced|auto_generated|safe_q\(1),
	datac => \test_counter_unbounced|auto_generated|safe_q\(2),
	datad => \test_counter_unbounced|auto_generated|safe_q\(3),
	combout => \hex_1|hex[3]~3_combout\);

-- Location: LCCOMB_X1_Y21_N20
\hex_1|hex[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_1|hex[4]~4_combout\ = (\test_counter_unbounced|auto_generated|safe_q\(1) & (\test_counter_unbounced|auto_generated|safe_q\(0) & ((!\test_counter_unbounced|auto_generated|safe_q\(3))))) # (!\test_counter_unbounced|auto_generated|safe_q\(1) & 
-- ((\test_counter_unbounced|auto_generated|safe_q\(2) & ((!\test_counter_unbounced|auto_generated|safe_q\(3)))) # (!\test_counter_unbounced|auto_generated|safe_q\(2) & (\test_counter_unbounced|auto_generated|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter_unbounced|auto_generated|safe_q\(0),
	datab => \test_counter_unbounced|auto_generated|safe_q\(1),
	datac => \test_counter_unbounced|auto_generated|safe_q\(2),
	datad => \test_counter_unbounced|auto_generated|safe_q\(3),
	combout => \hex_1|hex[4]~4_combout\);

-- Location: LCCOMB_X1_Y21_N18
\hex_1|hex[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_1|hex[5]~5_combout\ = (\test_counter_unbounced|auto_generated|safe_q\(0) & (\test_counter_unbounced|auto_generated|safe_q\(3) $ (((\test_counter_unbounced|auto_generated|safe_q\(1)) # (!\test_counter_unbounced|auto_generated|safe_q\(2)))))) # 
-- (!\test_counter_unbounced|auto_generated|safe_q\(0) & (\test_counter_unbounced|auto_generated|safe_q\(1) & (!\test_counter_unbounced|auto_generated|safe_q\(2) & !\test_counter_unbounced|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter_unbounced|auto_generated|safe_q\(0),
	datab => \test_counter_unbounced|auto_generated|safe_q\(1),
	datac => \test_counter_unbounced|auto_generated|safe_q\(2),
	datad => \test_counter_unbounced|auto_generated|safe_q\(3),
	combout => \hex_1|hex[5]~5_combout\);

-- Location: LCCOMB_X1_Y21_N24
\hex_1|hex[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex_1|hex[6]~6_combout\ = (\test_counter_unbounced|auto_generated|safe_q\(0) & ((\test_counter_unbounced|auto_generated|safe_q\(3)) # (\test_counter_unbounced|auto_generated|safe_q\(1) $ (\test_counter_unbounced|auto_generated|safe_q\(2))))) # 
-- (!\test_counter_unbounced|auto_generated|safe_q\(0) & ((\test_counter_unbounced|auto_generated|safe_q\(1)) # (\test_counter_unbounced|auto_generated|safe_q\(2) $ (\test_counter_unbounced|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_counter_unbounced|auto_generated|safe_q\(0),
	datab => \test_counter_unbounced|auto_generated|safe_q\(1),
	datac => \test_counter_unbounced|auto_generated|safe_q\(2),
	datad => \test_counter_unbounced|auto_generated|safe_q\(3),
	combout => \hex_1|hex[6]~6_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_0|hex[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_0|hex[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_0|ALT_INV_hex[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_0|hex[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_0|hex[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_0|hex[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_0|ALT_INV_hex[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_1|hex[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_1|hex[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_1|ALT_INV_hex[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_1|hex[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_1|hex[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_1|hex[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex_1|ALT_INV_hex[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(6));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr);
END structure;


