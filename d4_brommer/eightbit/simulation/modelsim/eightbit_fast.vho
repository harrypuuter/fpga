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

-- DATE "01/18/2017 12:32:44"

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
-- carryout	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- hex2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- inputa[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputb[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputa[2]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputb[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputa[1]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputb[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputa[0]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inputb[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- carryin	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \c0|carryout~1_combout\ : std_logic;
SIGNAL \c0|carryout~0_combout\ : std_logic;
SIGNAL \GEN_REG:2:ck|carryout~0_combout\ : std_logic;
SIGNAL \GEN_REG:2:ck|carryout~1_combout\ : std_logic;
SIGNAL \GEN_REG:3:ck|carryout~0_combout\ : std_logic;
SIGNAL \c2|hex[0]~0_combout\ : std_logic;
SIGNAL \c2|hex[1]~1_combout\ : std_logic;
SIGNAL \c2|hex[2]~2_combout\ : std_logic;
SIGNAL \c2|hex[3]~3_combout\ : std_logic;
SIGNAL \c2|hex[4]~4_combout\ : std_logic;
SIGNAL \c2|hex[5]~5_combout\ : std_logic;
SIGNAL \c2|hex[6]~6_combout\ : std_logic;
SIGNAL \c3|hex[0]~0_combout\ : std_logic;
SIGNAL \c3|hex[1]~1_combout\ : std_logic;
SIGNAL \c3|hex[2]~2_combout\ : std_logic;
SIGNAL \c3|hex[3]~3_combout\ : std_logic;
SIGNAL \c3|hex[4]~4_combout\ : std_logic;
SIGNAL \c3|hex[5]~5_combout\ : std_logic;
SIGNAL \c3|hex[6]~6_combout\ : std_logic;
SIGNAL \carryin~combout\ : std_logic;
SIGNAL \c0|output~combout\ : std_logic;
SIGNAL \GEN_REG:1:ck|carryout~0_combout\ : std_logic;
SIGNAL \GEN_REG:2:ck|output~0_combout\ : std_logic;
SIGNAL \GEN_REG:3:ck|output~combout\ : std_logic;
SIGNAL \GEN_REG:1:ck|output~combout\ : std_logic;
SIGNAL \c4|hex[0]~0_combout\ : std_logic;
SIGNAL \c4|hex[1]~1_combout\ : std_logic;
SIGNAL \c4|hex[2]~2_combout\ : std_logic;
SIGNAL \c4|hex[3]~3_combout\ : std_logic;
SIGNAL \c4|hex[4]~4_combout\ : std_logic;
SIGNAL \c4|hex[5]~5_combout\ : std_logic;
SIGNAL \c4|hex[6]~6_combout\ : std_logic;
SIGNAL \inputb~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inputa~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c4|ALT_INV_hex[6]~6_combout\ : std_logic;
SIGNAL \c4|ALT_INV_hex[4]~4_combout\ : std_logic;
SIGNAL \c4|ALT_INV_hex[3]~3_combout\ : std_logic;
SIGNAL \c3|ALT_INV_hex[6]~6_combout\ : std_logic;
SIGNAL \c2|ALT_INV_hex[6]~6_combout\ : std_logic;

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
\c4|ALT_INV_hex[4]~4_combout\ <= NOT \c4|hex[4]~4_combout\;
\c4|ALT_INV_hex[3]~3_combout\ <= NOT \c4|hex[3]~3_combout\;
\c3|ALT_INV_hex[6]~6_combout\ <= NOT \c3|hex[6]~6_combout\;
\c2|ALT_INV_hex[6]~6_combout\ <= NOT \c2|hex[6]~6_combout\;

-- Location: LCCOMB_X1_Y18_N10
\c0|carryout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0|carryout~1_combout\ = (!\carryin~combout\ & (\inputa~combout\(0) $ (\inputb~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa~combout\(0),
	datab => \carryin~combout\,
	datad => \inputb~combout\(0),
	combout => \c0|carryout~1_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputb[0]~I\ : cycloneii_io
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
	padio => ww_inputb(0),
	combout => \inputb~combout\(0));

-- Location: LCCOMB_X1_Y18_N0
\c0|carryout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0|carryout~0_combout\ = (\inputa~combout\(0) & \inputb~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa~combout\(0),
	datad => \inputb~combout\(0),
	combout => \c0|carryout~0_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputa[1]~I\ : cycloneii_io
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
	padio => ww_inputa(1),
	combout => \inputa~combout\(1));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputb[1]~I\ : cycloneii_io
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
	padio => ww_inputb(1),
	combout => \inputb~combout\(1));

-- Location: LCCOMB_X1_Y18_N28
\GEN_REG:2:ck|carryout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GEN_REG:2:ck|carryout~0_combout\ = (\inputa~combout\(1) & ((\c0|carryout~1_combout\) # ((\c0|carryout~0_combout\) # (\inputb~combout\(1))))) # (!\inputa~combout\(1) & (\inputb~combout\(1) & ((\c0|carryout~1_combout\) # (\c0|carryout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|carryout~1_combout\,
	datab => \c0|carryout~0_combout\,
	datac => \inputa~combout\(1),
	datad => \inputb~combout\(1),
	combout => \GEN_REG:2:ck|carryout~0_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputa[2]~I\ : cycloneii_io
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
	padio => ww_inputa(2),
	combout => \inputa~combout\(2));

-- Location: LCCOMB_X1_Y18_N6
\GEN_REG:2:ck|carryout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \GEN_REG:2:ck|carryout~1_combout\ = (\inputb~combout\(2) & ((\GEN_REG:2:ck|carryout~0_combout\) # (\inputa~combout\(2)))) # (!\inputb~combout\(2) & (\GEN_REG:2:ck|carryout~0_combout\ & \inputa~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb~combout\(2),
	datab => \GEN_REG:2:ck|carryout~0_combout\,
	datac => \inputa~combout\(2),
	combout => \GEN_REG:2:ck|carryout~1_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputa[3]~I\ : cycloneii_io
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
	padio => ww_inputa(3),
	combout => \inputa~combout\(3));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputb[3]~I\ : cycloneii_io
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
	padio => ww_inputb(3),
	combout => \inputb~combout\(3));

-- Location: LCCOMB_X1_Y21_N8
\GEN_REG:3:ck|carryout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GEN_REG:3:ck|carryout~0_combout\ = (\GEN_REG:2:ck|carryout~1_combout\ & ((\inputa~combout\(3)) # (\inputb~combout\(3)))) # (!\GEN_REG:2:ck|carryout~1_combout\ & (\inputa~combout\(3) & \inputb~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_REG:2:ck|carryout~1_combout\,
	datab => \inputa~combout\(3),
	datad => \inputb~combout\(3),
	combout => \GEN_REG:3:ck|carryout~0_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputa[0]~I\ : cycloneii_io
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
	padio => ww_inputa(0),
	combout => \inputa~combout\(0));

-- Location: LCCOMB_X1_Y18_N16
\c2|hex[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|hex[0]~0_combout\ = (\inputa~combout\(3) & (\inputa~combout\(0) & (\inputa~combout\(1) $ (\inputa~combout\(2))))) # (!\inputa~combout\(3) & (!\inputa~combout\(1) & (\inputa~combout\(2) $ (\inputa~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa~combout\(3),
	datab => \inputa~combout\(1),
	datac => \inputa~combout\(2),
	datad => \inputa~combout\(0),
	combout => \c2|hex[0]~0_combout\);

-- Location: LCCOMB_X1_Y18_N26
\c2|hex[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|hex[1]~1_combout\ = (\inputa~combout\(3) & ((\inputa~combout\(0) & (\inputa~combout\(1))) # (!\inputa~combout\(0) & ((\inputa~combout\(2)))))) # (!\inputa~combout\(3) & (\inputa~combout\(2) & (\inputa~combout\(1) $ (\inputa~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa~combout\(3),
	datab => \inputa~combout\(1),
	datac => \inputa~combout\(2),
	datad => \inputa~combout\(0),
	combout => \c2|hex[1]~1_combout\);

-- Location: LCCOMB_X1_Y18_N20
\c2|hex[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|hex[2]~2_combout\ = (\inputa~combout\(3) & (\inputa~combout\(2) & ((\inputa~combout\(1)) # (!\inputa~combout\(0))))) # (!\inputa~combout\(3) & (\inputa~combout\(1) & (!\inputa~combout\(2) & !\inputa~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa~combout\(3),
	datab => \inputa~combout\(1),
	datac => \inputa~combout\(2),
	datad => \inputa~combout\(0),
	combout => \c2|hex[2]~2_combout\);

-- Location: LCCOMB_X1_Y18_N22
\c2|hex[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|hex[3]~3_combout\ = (\inputa~combout\(1) & ((\inputa~combout\(2) & ((\inputa~combout\(0)))) # (!\inputa~combout\(2) & (\inputa~combout\(3) & !\inputa~combout\(0))))) # (!\inputa~combout\(1) & (!\inputa~combout\(3) & (\inputa~combout\(2) $ 
-- (\inputa~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa~combout\(3),
	datab => \inputa~combout\(1),
	datac => \inputa~combout\(2),
	datad => \inputa~combout\(0),
	combout => \c2|hex[3]~3_combout\);

-- Location: LCCOMB_X1_Y18_N8
\c2|hex[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|hex[4]~4_combout\ = (\inputa~combout\(1) & (!\inputa~combout\(3) & ((\inputa~combout\(0))))) # (!\inputa~combout\(1) & ((\inputa~combout\(2) & (!\inputa~combout\(3))) # (!\inputa~combout\(2) & ((\inputa~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa~combout\(3),
	datab => \inputa~combout\(1),
	datac => \inputa~combout\(2),
	datad => \inputa~combout\(0),
	combout => \c2|hex[4]~4_combout\);

-- Location: LCCOMB_X1_Y18_N18
\c2|hex[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|hex[5]~5_combout\ = (\inputa~combout\(1) & (!\inputa~combout\(3) & ((\inputa~combout\(0)) # (!\inputa~combout\(2))))) # (!\inputa~combout\(1) & (\inputa~combout\(0) & (\inputa~combout\(3) $ (!\inputa~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa~combout\(3),
	datab => \inputa~combout\(1),
	datac => \inputa~combout\(2),
	datad => \inputa~combout\(0),
	combout => \c2|hex[5]~5_combout\);

-- Location: LCCOMB_X1_Y18_N12
\c2|hex[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \c2|hex[6]~6_combout\ = (\inputa~combout\(0) & ((\inputa~combout\(3)) # (\inputa~combout\(1) $ (\inputa~combout\(2))))) # (!\inputa~combout\(0) & ((\inputa~combout\(1)) # (\inputa~combout\(3) $ (\inputa~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa~combout\(3),
	datab => \inputa~combout\(1),
	datac => \inputa~combout\(2),
	datad => \inputa~combout\(0),
	combout => \c2|hex[6]~6_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inputb[2]~I\ : cycloneii_io
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
	padio => ww_inputb(2),
	combout => \inputb~combout\(2));

-- Location: LCCOMB_X1_Y21_N18
\c3|hex[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c3|hex[0]~0_combout\ = (\inputb~combout\(3) & (\inputb~combout\(0) & (\inputb~combout\(1) $ (\inputb~combout\(2))))) # (!\inputb~combout\(3) & (!\inputb~combout\(1) & (\inputb~combout\(0) $ (\inputb~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb~combout\(1),
	datab => \inputb~combout\(3),
	datac => \inputb~combout\(0),
	datad => \inputb~combout\(2),
	combout => \c3|hex[0]~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\c3|hex[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \c3|hex[1]~1_combout\ = (\inputb~combout\(1) & ((\inputb~combout\(0) & (\inputb~combout\(3))) # (!\inputb~combout\(0) & ((\inputb~combout\(2)))))) # (!\inputb~combout\(1) & (\inputb~combout\(2) & (\inputb~combout\(3) $ (\inputb~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb~combout\(1),
	datab => \inputb~combout\(3),
	datac => \inputb~combout\(0),
	datad => \inputb~combout\(2),
	combout => \c3|hex[1]~1_combout\);

-- Location: LCCOMB_X1_Y21_N30
\c3|hex[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \c3|hex[2]~2_combout\ = (\inputb~combout\(3) & (\inputb~combout\(2) & ((\inputb~combout\(1)) # (!\inputb~combout\(0))))) # (!\inputb~combout\(3) & (\inputb~combout\(1) & (!\inputb~combout\(0) & !\inputb~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb~combout\(1),
	datab => \inputb~combout\(3),
	datac => \inputb~combout\(0),
	datad => \inputb~combout\(2),
	combout => \c3|hex[2]~2_combout\);

-- Location: LCCOMB_X1_Y21_N16
\c3|hex[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \c3|hex[3]~3_combout\ = (\inputb~combout\(1) & ((\inputb~combout\(0) & ((\inputb~combout\(2)))) # (!\inputb~combout\(0) & (\inputb~combout\(3) & !\inputb~combout\(2))))) # (!\inputb~combout\(1) & (!\inputb~combout\(3) & (\inputb~combout\(0) $ 
-- (\inputb~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb~combout\(1),
	datab => \inputb~combout\(3),
	datac => \inputb~combout\(0),
	datad => \inputb~combout\(2),
	combout => \c3|hex[3]~3_combout\);

-- Location: LCCOMB_X1_Y21_N10
\c3|hex[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \c3|hex[4]~4_combout\ = (\inputb~combout\(1) & (!\inputb~combout\(3) & (\inputb~combout\(0)))) # (!\inputb~combout\(1) & ((\inputb~combout\(2) & (!\inputb~combout\(3))) # (!\inputb~combout\(2) & ((\inputb~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb~combout\(1),
	datab => \inputb~combout\(3),
	datac => \inputb~combout\(0),
	datad => \inputb~combout\(2),
	combout => \c3|hex[4]~4_combout\);

-- Location: LCCOMB_X1_Y21_N20
\c3|hex[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \c3|hex[5]~5_combout\ = (\inputb~combout\(1) & (!\inputb~combout\(3) & ((\inputb~combout\(0)) # (!\inputb~combout\(2))))) # (!\inputb~combout\(1) & (\inputb~combout\(0) & (\inputb~combout\(3) $ (!\inputb~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb~combout\(1),
	datab => \inputb~combout\(3),
	datac => \inputb~combout\(0),
	datad => \inputb~combout\(2),
	combout => \c3|hex[5]~5_combout\);

-- Location: LCCOMB_X1_Y21_N6
\c3|hex[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \c3|hex[6]~6_combout\ = (\inputb~combout\(0) & ((\inputb~combout\(3)) # (\inputb~combout\(1) $ (\inputb~combout\(2))))) # (!\inputb~combout\(0) & ((\inputb~combout\(1)) # (\inputb~combout\(3) $ (\inputb~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb~combout\(1),
	datab => \inputb~combout\(3),
	datac => \inputb~combout\(0),
	datad => \inputb~combout\(2),
	combout => \c3|hex[6]~6_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\carryin~I\ : cycloneii_io
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
	padio => ww_carryin,
	combout => \carryin~combout\);

-- Location: LCCOMB_X1_Y18_N2
\c0|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0|output~combout\ = \inputa~combout\(0) $ (\carryin~combout\ $ (\inputb~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputa~combout\(0),
	datab => \carryin~combout\,
	datad => \inputb~combout\(0),
	combout => \c0|output~combout\);

-- Location: LCCOMB_X1_Y18_N30
\GEN_REG:1:ck|carryout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GEN_REG:1:ck|carryout~0_combout\ = (\inputa~combout\(1) & ((\c0|carryout~1_combout\) # ((\c0|carryout~0_combout\) # (\inputb~combout\(1))))) # (!\inputa~combout\(1) & (\inputb~combout\(1) & ((\c0|carryout~1_combout\) # (\c0|carryout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|carryout~1_combout\,
	datab => \c0|carryout~0_combout\,
	datac => \inputa~combout\(1),
	datad => \inputb~combout\(1),
	combout => \GEN_REG:1:ck|carryout~0_combout\);

-- Location: LCCOMB_X1_Y18_N24
\GEN_REG:2:ck|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GEN_REG:2:ck|output~0_combout\ = \inputb~combout\(2) $ (\GEN_REG:1:ck|carryout~0_combout\ $ (\inputa~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputb~combout\(2),
	datab => \GEN_REG:1:ck|carryout~0_combout\,
	datac => \inputa~combout\(2),
	combout => \GEN_REG:2:ck|output~0_combout\);

-- Location: LCCOMB_X1_Y21_N24
\GEN_REG:3:ck|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \GEN_REG:3:ck|output~combout\ = \GEN_REG:2:ck|carryout~1_combout\ $ (\inputa~combout\(3) $ (\inputb~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_REG:2:ck|carryout~1_combout\,
	datab => \inputa~combout\(3),
	datad => \inputb~combout\(3),
	combout => \GEN_REG:3:ck|output~combout\);

-- Location: LCCOMB_X1_Y18_N4
\GEN_REG:1:ck|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \GEN_REG:1:ck|output~combout\ = \inputa~combout\(1) $ (\inputb~combout\(1) $ (((\c0|carryout~1_combout\) # (\c0|carryout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|carryout~1_combout\,
	datab => \c0|carryout~0_combout\,
	datac => \inputa~combout\(1),
	datad => \inputb~combout\(1),
	combout => \GEN_REG:1:ck|output~combout\);

-- Location: LCCOMB_X1_Y21_N2
\c4|hex[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c4|hex[0]~0_combout\ = (\GEN_REG:2:ck|output~0_combout\ & (!\GEN_REG:1:ck|output~combout\ & (\c0|output~combout\ $ (\GEN_REG:3:ck|output~combout\)))) # (!\GEN_REG:2:ck|output~0_combout\ & (!\c0|output~combout\ & (\GEN_REG:3:ck|output~combout\ $ 
-- (!\GEN_REG:1:ck|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|output~combout\,
	datab => \GEN_REG:2:ck|output~0_combout\,
	datac => \GEN_REG:3:ck|output~combout\,
	datad => \GEN_REG:1:ck|output~combout\,
	combout => \c4|hex[0]~0_combout\);

-- Location: LCCOMB_X1_Y21_N4
\c4|hex[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \c4|hex[1]~1_combout\ = (\GEN_REG:3:ck|output~combout\ & ((\c0|output~combout\ & (\GEN_REG:2:ck|output~0_combout\)) # (!\c0|output~combout\ & ((\GEN_REG:1:ck|output~combout\))))) # (!\GEN_REG:3:ck|output~combout\ & (\GEN_REG:2:ck|output~0_combout\ & 
-- (\c0|output~combout\ $ (!\GEN_REG:1:ck|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|output~combout\,
	datab => \GEN_REG:2:ck|output~0_combout\,
	datac => \GEN_REG:3:ck|output~combout\,
	datad => \GEN_REG:1:ck|output~combout\,
	combout => \c4|hex[1]~1_combout\);

-- Location: LCCOMB_X1_Y21_N22
\c4|hex[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \c4|hex[2]~2_combout\ = (\GEN_REG:2:ck|output~0_combout\ & (\GEN_REG:3:ck|output~combout\ & ((\c0|output~combout\) # (\GEN_REG:1:ck|output~combout\)))) # (!\GEN_REG:2:ck|output~0_combout\ & (\c0|output~combout\ & (!\GEN_REG:3:ck|output~combout\ & 
-- \GEN_REG:1:ck|output~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|output~combout\,
	datab => \GEN_REG:2:ck|output~0_combout\,
	datac => \GEN_REG:3:ck|output~combout\,
	datad => \GEN_REG:1:ck|output~combout\,
	combout => \c4|hex[2]~2_combout\);

-- Location: LCCOMB_X1_Y21_N0
\c4|hex[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \c4|hex[3]~3_combout\ = (\GEN_REG:1:ck|output~combout\ & ((\c0|output~combout\ & ((\GEN_REG:2:ck|output~0_combout\) # (!\GEN_REG:3:ck|output~combout\))) # (!\c0|output~combout\ & (!\GEN_REG:2:ck|output~0_combout\)))) # (!\GEN_REG:1:ck|output~combout\ & 
-- ((\GEN_REG:3:ck|output~combout\) # (\c0|output~combout\ $ (\GEN_REG:2:ck|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|output~combout\,
	datab => \GEN_REG:2:ck|output~0_combout\,
	datac => \GEN_REG:3:ck|output~combout\,
	datad => \GEN_REG:1:ck|output~combout\,
	combout => \c4|hex[3]~3_combout\);

-- Location: LCCOMB_X1_Y21_N26
\c4|hex[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \c4|hex[4]~4_combout\ = (\GEN_REG:1:ck|output~combout\ & ((\c0|output~combout\) # ((\GEN_REG:3:ck|output~combout\)))) # (!\GEN_REG:1:ck|output~combout\ & ((\GEN_REG:2:ck|output~0_combout\ & ((\GEN_REG:3:ck|output~combout\))) # 
-- (!\GEN_REG:2:ck|output~0_combout\ & (\c0|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|output~combout\,
	datab => \GEN_REG:2:ck|output~0_combout\,
	datac => \GEN_REG:3:ck|output~combout\,
	datad => \GEN_REG:1:ck|output~combout\,
	combout => \c4|hex[4]~4_combout\);

-- Location: LCCOMB_X1_Y21_N12
\c4|hex[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \c4|hex[5]~5_combout\ = (\c0|output~combout\ & (!\GEN_REG:2:ck|output~0_combout\ & (!\GEN_REG:3:ck|output~combout\ & \GEN_REG:1:ck|output~combout\))) # (!\c0|output~combout\ & (\GEN_REG:3:ck|output~combout\ $ (((\GEN_REG:1:ck|output~combout\) # 
-- (!\GEN_REG:2:ck|output~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|output~combout\,
	datab => \GEN_REG:2:ck|output~0_combout\,
	datac => \GEN_REG:3:ck|output~combout\,
	datad => \GEN_REG:1:ck|output~combout\,
	combout => \c4|hex[5]~5_combout\);

-- Location: LCCOMB_X1_Y21_N14
\c4|hex[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \c4|hex[6]~6_combout\ = (\c0|output~combout\ & ((\GEN_REG:1:ck|output~combout\) # (\GEN_REG:2:ck|output~0_combout\ $ (\GEN_REG:3:ck|output~combout\)))) # (!\c0|output~combout\ & ((\GEN_REG:3:ck|output~combout\) # (\GEN_REG:2:ck|output~0_combout\ $ 
-- (\GEN_REG:1:ck|output~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|output~combout\,
	datab => \GEN_REG:2:ck|output~0_combout\,
	datac => \GEN_REG:3:ck|output~combout\,
	datad => \GEN_REG:1:ck|output~combout\,
	combout => \c4|hex[6]~6_combout\);

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\carryout~I\ : cycloneii_io
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
	datain => \GEN_REG:3:ck|carryout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_carryout);

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
	datain => \c2|hex[0]~0_combout\,
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
	datain => \c2|hex[1]~1_combout\,
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
	datain => \c2|hex[2]~2_combout\,
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
	datain => \c2|hex[3]~3_combout\,
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
	datain => \c2|hex[4]~4_combout\,
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
	datain => \c2|hex[5]~5_combout\,
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
	datain => \c2|ALT_INV_hex[6]~6_combout\,
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
	datain => \c3|hex[0]~0_combout\,
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
	datain => \c3|hex[1]~1_combout\,
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
	datain => \c3|hex[2]~2_combout\,
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
	datain => \c3|hex[3]~3_combout\,
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
	datain => \c3|hex[4]~4_combout\,
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
	datain => \c3|hex[5]~5_combout\,
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
	datain => \c3|ALT_INV_hex[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[0]~I\ : cycloneii_io
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
	datain => \c4|hex[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[1]~I\ : cycloneii_io
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
	datain => \c4|hex[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[2]~I\ : cycloneii_io
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
	datain => \c4|hex[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[3]~I\ : cycloneii_io
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
	datain => \c4|ALT_INV_hex[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[4]~I\ : cycloneii_io
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
	datain => \c4|ALT_INV_hex[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[5]~I\ : cycloneii_io
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
	datain => \c4|hex[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[6]~I\ : cycloneii_io
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
	datain => \c4|ALT_INV_hex[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(6));
END structure;


