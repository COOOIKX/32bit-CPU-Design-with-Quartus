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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "09/26/2023 13:48:08"

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

ENTITY 	CPU IS
    PORT (
	output : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	prn : IN std_logic;
	clrn : IN std_logic;
	input : IN std_logic_vector(7 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- output[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prn	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clrn	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_prn : std_logic;
SIGNAL ww_clrn : std_logic;
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst7~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \clrn~input_o\ : std_logic;
SIGNAL \prn~input_o\ : std_logic;
SIGNAL \inst|inst7~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \inst|inst7~3_combout\ : std_logic;
SIGNAL \inst|inst7~0_combout\ : std_logic;
SIGNAL \inst|inst7~0clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst7~_emulated_q\ : std_logic;
SIGNAL \inst|inst7~2_combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \inst|inst~1_combout\ : std_logic;
SIGNAL \inst|inst~_emulated_q\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \inst|inst2~1_combout\ : std_logic;
SIGNAL \inst|inst2~_emulated_q\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \inst|inst4~1_combout\ : std_logic;
SIGNAL \inst|inst4~_emulated_q\ : std_logic;
SIGNAL \inst|inst4~0_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \inst|inst8~1_combout\ : std_logic;
SIGNAL \inst|inst8~_emulated_q\ : std_logic;
SIGNAL \inst|inst8~0_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \inst|inst1~1_combout\ : std_logic;
SIGNAL \inst|inst1~_emulated_q\ : std_logic;
SIGNAL \inst|inst1~0_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \inst|inst3~1_combout\ : std_logic;
SIGNAL \inst|inst3~_emulated_q\ : std_logic;
SIGNAL \inst|inst3~0_combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \inst|inst5~1_combout\ : std_logic;
SIGNAL \inst|inst5~_emulated_q\ : std_logic;
SIGNAL \inst|inst5~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst7~0clkctrl_outclk\ : std_logic;

BEGIN

output <= ww_output;
ww_clk <= clk;
ww_prn <= prn;
ww_clrn <= clrn;
ww_input <= input;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\inst|inst7~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst7~0_combout\);
\inst|ALT_INV_inst7~0clkctrl_outclk\ <= NOT \inst|inst7~0clkctrl_outclk\;

-- Location: IOOBUF_X24_Y0_N9
\output[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7~2_combout\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\output[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~0_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2~0_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4~0_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst8~0_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~0_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3~0_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOIBUF_X33_Y16_N1
\clrn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clrn,
	o => \clrn~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\prn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_prn,
	o => \prn~input_o\);

-- Location: LCCOMB_X24_Y3_N6
\inst|inst7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst7~1_combout\ = (\clrn~input_o\ & ((\inst|inst7~1_combout\) # (!\prn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clrn~input_o\,
	datac => \prn~input_o\,
	datad => \inst|inst7~1_combout\,
	combout => \inst|inst7~1_combout\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X24_Y0_N1
\input[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: LCCOMB_X24_Y3_N24
\inst|inst7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst7~3_combout\ = \inst|inst7~1_combout\ $ (\input[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~1_combout\,
	datad => \input[7]~input_o\,
	combout => \inst|inst7~3_combout\);

-- Location: LCCOMB_X24_Y3_N20
\inst|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst7~0_combout\ = (!\prn~input_o\) # (!\clrn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clrn~input_o\,
	datac => \prn~input_o\,
	combout => \inst|inst7~0_combout\);

-- Location: CLKCTRL_G16
\inst|inst7~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst7~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst7~0clkctrl_outclk\);

-- Location: FF_X24_Y3_N25
\inst|inst7~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst7~3_combout\,
	clrn => \inst|ALT_INV_inst7~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7~_emulated_q\);

-- Location: LCCOMB_X24_Y3_N10
\inst|inst7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst7~2_combout\ = (\clrn~input_o\ & ((\inst|inst7~1_combout\ $ (\inst|inst7~_emulated_q\)) # (!\prn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~1_combout\,
	datab => \prn~input_o\,
	datac => \clrn~input_o\,
	datad => \inst|inst7~_emulated_q\,
	combout => \inst|inst7~2_combout\);

-- Location: IOIBUF_X33_Y14_N1
\input[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LCCOMB_X24_Y3_N28
\inst|inst~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst~1_combout\ = \inst|inst7~1_combout\ $ (\input[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~1_combout\,
	datad => \input[6]~input_o\,
	combout => \inst|inst~1_combout\);

-- Location: FF_X24_Y3_N29
\inst|inst~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst~1_combout\,
	clrn => \inst|ALT_INV_inst7~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~_emulated_q\);

-- Location: LCCOMB_X24_Y3_N22
\inst|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\clrn~input_o\ & ((\inst|inst7~1_combout\ $ (\inst|inst~_emulated_q\)) # (!\prn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~1_combout\,
	datab => \prn~input_o\,
	datac => \clrn~input_o\,
	datad => \inst|inst~_emulated_q\,
	combout => \inst|inst~0_combout\);

-- Location: IOIBUF_X26_Y31_N8
\input[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: LCCOMB_X23_Y5_N8
\inst|inst2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2~1_combout\ = \inst|inst7~1_combout\ $ (\input[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst7~1_combout\,
	datad => \input[5]~input_o\,
	combout => \inst|inst2~1_combout\);

-- Location: FF_X23_Y5_N9
\inst|inst2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2~1_combout\,
	clrn => \inst|ALT_INV_inst7~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~_emulated_q\);

-- Location: LCCOMB_X24_Y3_N16
\inst|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = (\clrn~input_o\ & ((\inst|inst7~1_combout\ $ (\inst|inst2~_emulated_q\)) # (!\prn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~1_combout\,
	datab => \prn~input_o\,
	datac => \clrn~input_o\,
	datad => \inst|inst2~_emulated_q\,
	combout => \inst|inst2~0_combout\);

-- Location: IOIBUF_X33_Y11_N8
\input[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: LCCOMB_X24_Y3_N26
\inst|inst4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst4~1_combout\ = \input[4]~input_o\ $ (\inst|inst7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[4]~input_o\,
	datad => \inst|inst7~1_combout\,
	combout => \inst|inst4~1_combout\);

-- Location: FF_X24_Y3_N27
\inst|inst4~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst4~1_combout\,
	clrn => \inst|ALT_INV_inst7~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4~_emulated_q\);

-- Location: LCCOMB_X24_Y3_N12
\inst|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst4~0_combout\ = (\clrn~input_o\ & ((\inst|inst4~_emulated_q\ $ (\inst|inst7~1_combout\)) # (!\prn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~_emulated_q\,
	datab => \prn~input_o\,
	datac => \clrn~input_o\,
	datad => \inst|inst7~1_combout\,
	combout => \inst|inst4~0_combout\);

-- Location: IOIBUF_X12_Y0_N8
\input[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X24_Y3_N14
\inst|inst8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst8~1_combout\ = \inst|inst7~1_combout\ $ (\input[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~1_combout\,
	datad => \input[3]~input_o\,
	combout => \inst|inst8~1_combout\);

-- Location: FF_X24_Y3_N15
\inst|inst8~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst8~1_combout\,
	clrn => \inst|ALT_INV_inst7~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst8~_emulated_q\);

-- Location: LCCOMB_X24_Y3_N0
\inst|inst8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst8~0_combout\ = (\clrn~input_o\ & ((\inst|inst8~_emulated_q\ $ (\inst|inst7~1_combout\)) # (!\prn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clrn~input_o\,
	datab => \inst|inst8~_emulated_q\,
	datac => \prn~input_o\,
	datad => \inst|inst7~1_combout\,
	combout => \inst|inst8~0_combout\);

-- Location: IOIBUF_X33_Y10_N8
\input[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X24_Y3_N2
\inst|inst1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1~1_combout\ = \inst|inst7~1_combout\ $ (\input[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~1_combout\,
	datad => \input[2]~input_o\,
	combout => \inst|inst1~1_combout\);

-- Location: FF_X24_Y3_N3
\inst|inst1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst1~1_combout\,
	clrn => \inst|ALT_INV_inst7~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~_emulated_q\);

-- Location: LCCOMB_X24_Y3_N4
\inst|inst1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1~0_combout\ = (\clrn~input_o\ & ((\inst|inst7~1_combout\ $ (\inst|inst1~_emulated_q\)) # (!\prn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~1_combout\,
	datab => \prn~input_o\,
	datac => \clrn~input_o\,
	datad => \inst|inst1~_emulated_q\,
	combout => \inst|inst1~0_combout\);

-- Location: IOIBUF_X22_Y31_N8
\input[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X23_Y5_N18
\inst|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3~1_combout\ = \inst|inst7~1_combout\ $ (\input[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst7~1_combout\,
	datad => \input[1]~input_o\,
	combout => \inst|inst3~1_combout\);

-- Location: FF_X23_Y5_N19
\inst|inst3~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst3~1_combout\,
	clrn => \inst|ALT_INV_inst7~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3~_emulated_q\);

-- Location: LCCOMB_X24_Y3_N30
\inst|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3~0_combout\ = (\clrn~input_o\ & ((\inst|inst7~1_combout\ $ (\inst|inst3~_emulated_q\)) # (!\prn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~1_combout\,
	datab => \prn~input_o\,
	datac => \clrn~input_o\,
	datad => \inst|inst3~_emulated_q\,
	combout => \inst|inst3~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\input[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X24_Y3_N8
\inst|inst5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst5~1_combout\ = \input[0]~input_o\ $ (\inst|inst7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input[0]~input_o\,
	datad => \inst|inst7~1_combout\,
	combout => \inst|inst5~1_combout\);

-- Location: FF_X24_Y3_N9
\inst|inst5~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst5~1_combout\,
	clrn => \inst|ALT_INV_inst7~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5~_emulated_q\);

-- Location: LCCOMB_X24_Y3_N18
\inst|inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst5~0_combout\ = (\clrn~input_o\ & ((\inst|inst5~_emulated_q\ $ (\inst|inst7~1_combout\)) # (!\prn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clrn~input_o\,
	datab => \inst|inst5~_emulated_q\,
	datac => \prn~input_o\,
	datad => \inst|inst7~1_combout\,
	combout => \inst|inst5~0_combout\);

ww_output(7) <= \output[7]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(0) <= \output[0]~output_o\;
END structure;


