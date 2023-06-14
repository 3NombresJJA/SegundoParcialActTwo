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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/13/2023 11:51:19"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	Contador5minutos IS
    PORT (
	Clk : IN std_logic;
	Enable : IN std_logic;
	Costo : OUT STD.STANDARD.integer range 0 TO 600
	);
END Contador5minutos;

-- Design Ports Information
-- Costo[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Costo[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Costo[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Costo[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Costo[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Costo[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Costo[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Costo[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Costo[8]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Costo[9]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador5minutos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Costo : std_logic_vector(9 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Enable~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Costo[0]~output_o\ : std_logic;
SIGNAL \Costo[1]~output_o\ : std_logic;
SIGNAL \Costo[2]~output_o\ : std_logic;
SIGNAL \Costo[3]~output_o\ : std_logic;
SIGNAL \Costo[4]~output_o\ : std_logic;
SIGNAL \Costo[5]~output_o\ : std_logic;
SIGNAL \Costo[6]~output_o\ : std_logic;
SIGNAL \Costo[7]~output_o\ : std_logic;
SIGNAL \Costo[8]~output_o\ : std_logic;
SIGNAL \Costo[9]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \ContadorSeg:count2[1]~0_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[1]~q\ : std_logic;
SIGNAL \count2~0_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[2]~q\ : std_logic;
SIGNAL \count2~1_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[0]~q\ : std_logic;
SIGNAL \Contador[5]~4_combout\ : std_logic;
SIGNAL \Enable~inputclkctrl_outclk\ : std_logic;
SIGNAL \Costo[5]~reg0feeder_combout\ : std_logic;
SIGNAL \Costo[9]~0_combout\ : std_logic;
SIGNAL \Costo[5]~reg0_q\ : std_logic;
SIGNAL \Contador[6]~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Costo[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Costo[6]~reg0_q\ : std_logic;
SIGNAL \Contador[6]~6\ : std_logic;
SIGNAL \Contador[7]~7_combout\ : std_logic;
SIGNAL \Costo[7]~reg0feeder_combout\ : std_logic;
SIGNAL \Costo[7]~reg0_q\ : std_logic;
SIGNAL \Contador[7]~8\ : std_logic;
SIGNAL \Contador[8]~9_combout\ : std_logic;
SIGNAL \Costo[8]~reg0feeder_combout\ : std_logic;
SIGNAL \Costo[8]~reg0_q\ : std_logic;
SIGNAL \Contador[8]~10\ : std_logic;
SIGNAL \Contador[9]~11_combout\ : std_logic;
SIGNAL \Costo[9]~reg0feeder_combout\ : std_logic;
SIGNAL \Costo[9]~reg0_q\ : std_logic;
SIGNAL Contador : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_Clk <= Clk;
ww_Enable <= Enable;
Costo <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_Costo));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

\Enable~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Enable~input_o\);

-- Location: IOOBUF_X26_Y0_N2
\Costo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Costo[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\Costo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Costo[1]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\Costo[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Costo[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\Costo[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Costo[3]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\Costo[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Costo[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\Costo[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Costo[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Costo[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\Costo[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Costo[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Costo[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\Costo[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Costo[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Costo[7]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\Costo[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Costo[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Costo[8]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\Costo[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Costo[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Costo[9]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\Clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G4
\Clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y14_N8
\Enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: LCCOMB_X32_Y25_N6
\ContadorSeg:count2[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ContadorSeg:count2[1]~0_combout\ = \ContadorSeg:count2[1]~q\ $ (((\Enable~input_o\ & \ContadorSeg:count2[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~input_o\,
	datac => \ContadorSeg:count2[1]~q\,
	datad => \ContadorSeg:count2[0]~q\,
	combout => \ContadorSeg:count2[1]~0_combout\);

-- Location: FF_X32_Y25_N7
\ContadorSeg:count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \ContadorSeg:count2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[1]~q\);

-- Location: LCCOMB_X32_Y25_N8
\count2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~0_combout\ = (\ContadorSeg:count2[1]~q\ & (\ContadorSeg:count2[2]~q\ $ (\ContadorSeg:count2[0]~q\))) # (!\ContadorSeg:count2[1]~q\ & (\ContadorSeg:count2[2]~q\ & \ContadorSeg:count2[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[1]~q\,
	datac => \ContadorSeg:count2[2]~q\,
	datad => \ContadorSeg:count2[0]~q\,
	combout => \count2~0_combout\);

-- Location: FF_X32_Y25_N9
\ContadorSeg:count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~0_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[2]~q\);

-- Location: LCCOMB_X32_Y25_N0
\count2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~1_combout\ = (!\ContadorSeg:count2[0]~q\ & ((\ContadorSeg:count2[1]~q\) # (!\ContadorSeg:count2[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[1]~q\,
	datac => \ContadorSeg:count2[0]~q\,
	datad => \ContadorSeg:count2[2]~q\,
	combout => \count2~1_combout\);

-- Location: FF_X32_Y25_N1
\ContadorSeg:count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~1_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[0]~q\);

-- Location: LCCOMB_X33_Y25_N12
\Contador[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador[5]~4_combout\ = Contador(5) $ (((!\ContadorSeg:count2[0]~q\ & (!\ContadorSeg:count2[1]~q\ & \ContadorSeg:count2[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[0]~q\,
	datab => \ContadorSeg:count2[1]~q\,
	datac => Contador(5),
	datad => \ContadorSeg:count2[2]~q\,
	combout => \Contador[5]~4_combout\);

-- Location: CLKCTRL_G2
\Enable~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Enable~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Enable~inputclkctrl_outclk\);

-- Location: FF_X33_Y25_N13
\Contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Contador[5]~4_combout\,
	clrn => \Enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(5));

-- Location: LCCOMB_X31_Y25_N12
\Costo[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Costo[5]~reg0feeder_combout\ = Contador(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Contador(5),
	combout => \Costo[5]~reg0feeder_combout\);

-- Location: LCCOMB_X32_Y25_N18
\Costo[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Costo[9]~0_combout\ = (!\ContadorSeg:count2[1]~q\ & (\Enable~input_o\ & (\ContadorSeg:count2[2]~q\ & !\ContadorSeg:count2[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[1]~q\,
	datab => \Enable~input_o\,
	datac => \ContadorSeg:count2[2]~q\,
	datad => \ContadorSeg:count2[0]~q\,
	combout => \Costo[9]~0_combout\);

-- Location: FF_X31_Y25_N13
\Costo[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Costo[5]~reg0feeder_combout\,
	ena => \Costo[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Costo[5]~reg0_q\);

-- Location: LCCOMB_X33_Y25_N16
\Contador[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador[6]~5_combout\ = (Contador(5) & (Contador(6) $ (VCC))) # (!Contador(5) & (Contador(6) & VCC))
-- \Contador[6]~6\ = CARRY((Contador(5) & Contador(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Contador(5),
	datab => Contador(6),
	datad => VCC,
	combout => \Contador[6]~5_combout\,
	cout => \Contador[6]~6\);

-- Location: LCCOMB_X33_Y25_N14
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ContadorSeg:count2[1]~q\ & (!\ContadorSeg:count2[0]~q\ & \ContadorSeg:count2[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[1]~q\,
	datac => \ContadorSeg:count2[0]~q\,
	datad => \ContadorSeg:count2[2]~q\,
	combout => \Equal0~0_combout\);

-- Location: FF_X33_Y25_N17
\Contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Contador[6]~5_combout\,
	clrn => \Enable~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(6));

-- Location: LCCOMB_X31_Y25_N2
\Costo[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Costo[6]~reg0feeder_combout\ = Contador(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Contador(6),
	combout => \Costo[6]~reg0feeder_combout\);

-- Location: FF_X31_Y25_N3
\Costo[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Costo[6]~reg0feeder_combout\,
	ena => \Costo[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Costo[6]~reg0_q\);

-- Location: LCCOMB_X33_Y25_N18
\Contador[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador[7]~7_combout\ = (Contador(7) & (!\Contador[6]~6\)) # (!Contador(7) & ((\Contador[6]~6\) # (GND)))
-- \Contador[7]~8\ = CARRY((!\Contador[6]~6\) # (!Contador(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Contador(7),
	datad => VCC,
	cin => \Contador[6]~6\,
	combout => \Contador[7]~7_combout\,
	cout => \Contador[7]~8\);

-- Location: FF_X33_Y25_N19
\Contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Contador[7]~7_combout\,
	clrn => \Enable~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(7));

-- Location: LCCOMB_X31_Y25_N0
\Costo[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Costo[7]~reg0feeder_combout\ = Contador(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Contador(7),
	combout => \Costo[7]~reg0feeder_combout\);

-- Location: FF_X31_Y25_N1
\Costo[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Costo[7]~reg0feeder_combout\,
	ena => \Costo[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Costo[7]~reg0_q\);

-- Location: LCCOMB_X33_Y25_N20
\Contador[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador[8]~9_combout\ = (Contador(8) & (\Contador[7]~8\ $ (GND))) # (!Contador(8) & (!\Contador[7]~8\ & VCC))
-- \Contador[8]~10\ = CARRY((Contador(8) & !\Contador[7]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Contador(8),
	datad => VCC,
	cin => \Contador[7]~8\,
	combout => \Contador[8]~9_combout\,
	cout => \Contador[8]~10\);

-- Location: FF_X33_Y25_N21
\Contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Contador[8]~9_combout\,
	clrn => \Enable~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(8));

-- Location: LCCOMB_X31_Y25_N22
\Costo[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Costo[8]~reg0feeder_combout\ = Contador(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Contador(8),
	combout => \Costo[8]~reg0feeder_combout\);

-- Location: FF_X31_Y25_N23
\Costo[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Costo[8]~reg0feeder_combout\,
	ena => \Costo[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Costo[8]~reg0_q\);

-- Location: LCCOMB_X33_Y25_N22
\Contador[9]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador[9]~11_combout\ = Contador(9) $ (\Contador[8]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Contador(9),
	cin => \Contador[8]~10\,
	combout => \Contador[9]~11_combout\);

-- Location: FF_X33_Y25_N23
\Contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Contador[9]~11_combout\,
	clrn => \Enable~inputclkctrl_outclk\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(9));

-- Location: LCCOMB_X31_Y25_N4
\Costo[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Costo[9]~reg0feeder_combout\ = Contador(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Contador(9),
	combout => \Costo[9]~reg0feeder_combout\);

-- Location: FF_X31_Y25_N5
\Costo[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Costo[9]~reg0feeder_combout\,
	ena => \Costo[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Costo[9]~reg0_q\);

ww_Costo(0) <= \Costo[0]~output_o\;

ww_Costo(1) <= \Costo[1]~output_o\;

ww_Costo(2) <= \Costo[2]~output_o\;

ww_Costo(3) <= \Costo[3]~output_o\;

ww_Costo(4) <= \Costo[4]~output_o\;

ww_Costo(5) <= \Costo[5]~output_o\;

ww_Costo(6) <= \Costo[6]~output_o\;

ww_Costo(7) <= \Costo[7]~output_o\;

ww_Costo(8) <= \Costo[8]~output_o\;

ww_Costo(9) <= \Costo[9]~output_o\;
END structure;


