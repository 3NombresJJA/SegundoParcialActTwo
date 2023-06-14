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

-- DATE "06/13/2023 10:21:44"

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

ENTITY 	DivFreq IS
    PORT (
	Clk : IN std_logic;
	Enable : IN std_logic;
	Contador2 : OUT STD.STANDARD.integer range 0 TO 12
	);
END DivFreq;

-- Design Ports Information
-- Contador2[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Contador2[1]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Contador2[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Contador2[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DivFreq IS
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
SIGNAL ww_Contador2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Enable~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Contador2[0]~output_o\ : std_logic;
SIGNAL \Contador2[1]~output_o\ : std_logic;
SIGNAL \Contador2[2]~output_o\ : std_logic;
SIGNAL \Contador2[3]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \ContadorSeg:count2[17]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count2~12_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[9]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \count2~11_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[11]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \count2~10_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \count2~9_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[13]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count2~8_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[15]~q\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \count2~7_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[16]~q\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \count2~6_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[18]~q\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \count2~5_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[19]~q\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \count2~4_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[20]~q\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \count2~3_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[21]~q\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[23]~q\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \count2~2_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[24]~q\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \count2~13_combout\ : std_logic;
SIGNAL \ContadorSeg:count2[22]~q\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Contador[0]~0_combout\ : std_logic;
SIGNAL \Enable~inputclkctrl_outclk\ : std_logic;
SIGNAL \Contador2[0]~0_combout\ : std_logic;
SIGNAL \Contador2[0]~reg0_q\ : std_logic;
SIGNAL \Contador[1]~1_combout\ : std_logic;
SIGNAL \Contador2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \Contador2[1]~reg0_q\ : std_logic;
SIGNAL \Contador[2]~2_combout\ : std_logic;
SIGNAL \Contador2[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Contador2[2]~reg0_q\ : std_logic;
SIGNAL \Contador[3]~3_combout\ : std_logic;
SIGNAL \Contador[3]~4_combout\ : std_logic;
SIGNAL \Contador2[3]~reg0_q\ : std_logic;
SIGNAL Contador : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_Clk <= Clk;
ww_Enable <= Enable;
Contador2 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_Contador2));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

\Enable~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Enable~input_o\);

-- Location: IOOBUF_X7_Y29_N9
\Contador2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Contador2[0]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\Contador2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Contador2[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\Contador2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Contador2[2]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\Contador2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Contador2[3]~output_o\);

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

-- Location: FF_X6_Y25_N11
\ContadorSeg:count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[17]~q\);

-- Location: LCCOMB_X6_Y26_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \ContadorSeg:count2[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\ContadorSeg:count2[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X6_Y26_N9
\ContadorSeg:count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[0]~q\);

-- Location: LCCOMB_X6_Y26_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\ContadorSeg:count2[1]~q\ & (!\Add0~1\)) # (!\ContadorSeg:count2[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\ContadorSeg:count2[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X6_Y26_N11
\ContadorSeg:count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[1]~q\);

-- Location: LCCOMB_X6_Y26_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\ContadorSeg:count2[2]~q\ & (\Add0~3\ $ (GND))) # (!\ContadorSeg:count2[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\ContadorSeg:count2[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X6_Y26_N13
\ContadorSeg:count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[2]~q\);

-- Location: LCCOMB_X6_Y26_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\ContadorSeg:count2[3]~q\ & (!\Add0~5\)) # (!\ContadorSeg:count2[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\ContadorSeg:count2[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X6_Y26_N15
\ContadorSeg:count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[3]~q\);

-- Location: LCCOMB_X6_Y26_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\ContadorSeg:count2[4]~q\ & (\Add0~7\ $ (GND))) # (!\ContadorSeg:count2[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\ContadorSeg:count2[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X6_Y26_N17
\ContadorSeg:count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[4]~q\);

-- Location: LCCOMB_X6_Y26_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\ContadorSeg:count2[5]~q\ & (!\Add0~9\)) # (!\ContadorSeg:count2[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\ContadorSeg:count2[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X6_Y26_N19
\ContadorSeg:count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[5]~q\);

-- Location: LCCOMB_X6_Y26_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\ContadorSeg:count2[6]~q\ & (\Add0~11\ $ (GND))) # (!\ContadorSeg:count2[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\ContadorSeg:count2[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X6_Y26_N6
\count2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~12_combout\ = (\Add0~12_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => \Equal0~7_combout\,
	combout => \count2~12_combout\);

-- Location: FF_X6_Y26_N7
\ContadorSeg:count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~12_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[6]~q\);

-- Location: LCCOMB_X6_Y26_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\ContadorSeg:count2[7]~q\ & (!\Add0~13\)) # (!\ContadorSeg:count2[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\ContadorSeg:count2[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X6_Y26_N23
\ContadorSeg:count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[7]~q\);

-- Location: LCCOMB_X6_Y26_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\ContadorSeg:count2[8]~q\ & (\Add0~15\ $ (GND))) # (!\ContadorSeg:count2[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\ContadorSeg:count2[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X6_Y26_N25
\ContadorSeg:count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[8]~q\);

-- Location: LCCOMB_X6_Y26_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\ContadorSeg:count2[9]~q\ & (!\Add0~17\)) # (!\ContadorSeg:count2[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\ContadorSeg:count2[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X6_Y26_N27
\ContadorSeg:count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[9]~q\);

-- Location: LCCOMB_X6_Y26_N28
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\ContadorSeg:count2[10]~q\ & (\Add0~19\ $ (GND))) # (!\ContadorSeg:count2[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\ContadorSeg:count2[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X6_Y26_N29
\ContadorSeg:count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[10]~q\);

-- Location: LCCOMB_X6_Y26_N30
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\ContadorSeg:count2[11]~q\ & (!\Add0~21\)) # (!\ContadorSeg:count2[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\ContadorSeg:count2[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X6_Y26_N0
\count2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~11_combout\ = (!\Equal0~7_combout\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~22_combout\,
	combout => \count2~11_combout\);

-- Location: FF_X6_Y26_N1
\ContadorSeg:count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~11_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[11]~q\);

-- Location: LCCOMB_X6_Y25_N0
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\ContadorSeg:count2[12]~q\ & (\Add0~23\ $ (GND))) # (!\ContadorSeg:count2[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\ContadorSeg:count2[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X7_Y25_N30
\count2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~10_combout\ = (\Add0~24_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datac => \Equal0~7_combout\,
	combout => \count2~10_combout\);

-- Location: FF_X7_Y25_N31
\ContadorSeg:count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~10_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[12]~q\);

-- Location: LCCOMB_X6_Y25_N2
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\ContadorSeg:count2[13]~q\ & (!\Add0~25\)) # (!\ContadorSeg:count2[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\ContadorSeg:count2[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X6_Y25_N26
\count2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~9_combout\ = (\Add0~26_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~26_combout\,
	datac => \Equal0~7_combout\,
	combout => \count2~9_combout\);

-- Location: FF_X6_Y25_N27
\ContadorSeg:count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~9_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[13]~q\);

-- Location: LCCOMB_X6_Y25_N4
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\ContadorSeg:count2[14]~q\ & (\Add0~27\ $ (GND))) # (!\ContadorSeg:count2[14]~q\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\ContadorSeg:count2[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X6_Y25_N28
\count2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~8_combout\ = (\Add0~28_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datac => \Equal0~7_combout\,
	combout => \count2~8_combout\);

-- Location: FF_X6_Y25_N29
\ContadorSeg:count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~8_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[14]~q\);

-- Location: LCCOMB_X6_Y25_N6
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\ContadorSeg:count2[15]~q\ & (!\Add0~29\)) # (!\ContadorSeg:count2[15]~q\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\ContadorSeg:count2[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[15]~q\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X6_Y25_N7
\ContadorSeg:count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[15]~q\);

-- Location: LCCOMB_X6_Y25_N8
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\ContadorSeg:count2[16]~q\ & (\Add0~31\ $ (GND))) # (!\ContadorSeg:count2[16]~q\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\ContadorSeg:count2[16]~q\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[16]~q\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X6_Y25_N30
\count2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~7_combout\ = (\Add0~32_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~32_combout\,
	datac => \Equal0~7_combout\,
	combout => \count2~7_combout\);

-- Location: FF_X6_Y25_N31
\ContadorSeg:count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~7_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[16]~q\);

-- Location: LCCOMB_X6_Y25_N10
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\ContadorSeg:count2[17]~q\ & (!\Add0~33\)) # (!\ContadorSeg:count2[17]~q\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\ContadorSeg:count2[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[17]~q\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X7_Y25_N4
\count2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~6_combout\ = (\Add0~36_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datac => \Equal0~7_combout\,
	combout => \count2~6_combout\);

-- Location: FF_X7_Y25_N5
\ContadorSeg:count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~6_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[18]~q\);

-- Location: LCCOMB_X6_Y25_N12
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\ContadorSeg:count2[18]~q\ & (\Add0~35\ $ (GND))) # (!\ContadorSeg:count2[18]~q\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\ContadorSeg:count2[18]~q\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[18]~q\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X7_Y25_N6
\count2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~5_combout\ = (!\Equal0~7_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~38_combout\,
	combout => \count2~5_combout\);

-- Location: FF_X7_Y25_N7
\ContadorSeg:count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~5_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[19]~q\);

-- Location: LCCOMB_X6_Y25_N14
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\ContadorSeg:count2[19]~q\ & (!\Add0~37\)) # (!\ContadorSeg:count2[19]~q\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\ContadorSeg:count2[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[19]~q\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X7_Y25_N26
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~34_combout\ & (\Add0~32_combout\ & (\Add0~36_combout\ & \Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~36_combout\,
	datad => \Add0~38_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X7_Y25_N12
\count2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~4_combout\ = (\Add0~40_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datac => \Equal0~7_combout\,
	combout => \count2~4_combout\);

-- Location: FF_X7_Y25_N13
\ContadorSeg:count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~4_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[20]~q\);

-- Location: LCCOMB_X6_Y25_N16
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\ContadorSeg:count2[20]~q\ & (\Add0~39\ $ (GND))) # (!\ContadorSeg:count2[20]~q\ & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\ContadorSeg:count2[20]~q\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[20]~q\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X7_Y25_N10
\count2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~3_combout\ = (\Add0~42_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~42_combout\,
	datac => \Equal0~7_combout\,
	combout => \count2~3_combout\);

-- Location: FF_X7_Y25_N11
\ContadorSeg:count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~3_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[21]~q\);

-- Location: LCCOMB_X6_Y25_N18
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\ContadorSeg:count2[21]~q\ & (!\Add0~41\)) # (!\ContadorSeg:count2[21]~q\ & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\ContadorSeg:count2[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[21]~q\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X6_Y25_N23
\ContadorSeg:count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[23]~q\);

-- Location: LCCOMB_X6_Y25_N20
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\ContadorSeg:count2[22]~q\ & (\Add0~43\ $ (GND))) # (!\ContadorSeg:count2[22]~q\ & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\ContadorSeg:count2[22]~q\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ContadorSeg:count2[22]~q\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X6_Y25_N22
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\ContadorSeg:count2[23]~q\ & (!\Add0~45\)) # (!\ContadorSeg:count2[23]~q\ & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\ContadorSeg:count2[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ContadorSeg:count2[23]~q\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X5_Y25_N12
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Add0~40_combout\ & (\Add0~42_combout\ & (\Add0~44_combout\ & !\Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add0~42_combout\,
	datac => \Add0~44_combout\,
	datad => \Add0~46_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X6_Y26_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~0_combout\ & (!\Add0~2_combout\ & (!\Add0~4_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X7_Y25_N8
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~10_combout\ & (\Add0~12_combout\ & (!\Add0~8_combout\ & !\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~14_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X7_Y25_N22
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Add0~24_combout\ & (\Add0~28_combout\ & (!\Add0~30_combout\ & \Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~28_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~26_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X6_Y26_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~18_combout\ & (!\Add0~16_combout\ & (\Add0~22_combout\ & !\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~22_combout\,
	datad => \Add0~20_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X7_Y25_N0
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X7_Y25_N18
\count2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~2_combout\ = (\Add0~48_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~8_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Add0~48_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \count2~2_combout\);

-- Location: FF_X7_Y25_N19
\ContadorSeg:count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~2_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[24]~q\);

-- Location: LCCOMB_X6_Y25_N24
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \Add0~47\ $ (!\ContadorSeg:count2[24]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ContadorSeg:count2[24]~q\,
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X7_Y25_N20
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add0~40_combout\ & (\Add0~42_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add0~42_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X7_Y25_N24
\count2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count2~13_combout\ = (\Add0~44_combout\ & (((\Add0~46_combout\) # (!\Equal0~6_combout\)) # (!\Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Add0~48_combout\,
	datac => \Equal0~6_combout\,
	datad => \Add0~46_combout\,
	combout => \count2~13_combout\);

-- Location: FF_X7_Y25_N25
\ContadorSeg:count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count2~13_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadorSeg:count2[22]~q\);

-- Location: LCCOMB_X7_Y25_N14
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Add0~44_combout\ & (!\Add0~46_combout\ & (\Add0~48_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Add0~46_combout\,
	datac => \Add0~48_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X7_Y25_N16
\Contador[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador[0]~0_combout\ = \Equal0~7_combout\ $ (Contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => Contador(0),
	combout => \Contador[0]~0_combout\);

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

-- Location: FF_X7_Y25_N17
\Contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Contador[0]~0_combout\,
	clrn => \Enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(0));

-- Location: LCCOMB_X8_Y25_N12
\Contador2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador2[0]~0_combout\ = (\Enable~input_o\ & \Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datad => \Equal0~7_combout\,
	combout => \Contador2[0]~0_combout\);

-- Location: FF_X8_Y25_N13
\Contador2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => Contador(0),
	sload => VCC,
	ena => \Contador2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador2[0]~reg0_q\);

-- Location: LCCOMB_X7_Y25_N28
\Contador[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador[1]~1_combout\ = Contador(1) $ (((Contador(0) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Contador(0),
	datac => Contador(1),
	datad => \Equal0~7_combout\,
	combout => \Contador[1]~1_combout\);

-- Location: FF_X7_Y25_N29
\Contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Contador[1]~1_combout\,
	clrn => \Enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(1));

-- Location: LCCOMB_X8_Y25_N2
\Contador2[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador2[1]~reg0feeder_combout\ = Contador(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Contador(1),
	combout => \Contador2[1]~reg0feeder_combout\);

-- Location: FF_X8_Y25_N3
\Contador2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Contador2[1]~reg0feeder_combout\,
	ena => \Contador2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador2[1]~reg0_q\);

-- Location: LCCOMB_X7_Y25_N2
\Contador[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador[2]~2_combout\ = Contador(2) $ (((Contador(1) & (Contador(0) & \Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Contador(1),
	datab => Contador(0),
	datac => Contador(2),
	datad => \Equal0~7_combout\,
	combout => \Contador[2]~2_combout\);

-- Location: FF_X7_Y25_N3
\Contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Contador[2]~2_combout\,
	clrn => \Enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(2));

-- Location: LCCOMB_X8_Y25_N0
\Contador2[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador2[2]~reg0feeder_combout\ = Contador(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Contador(2),
	combout => \Contador2[2]~reg0feeder_combout\);

-- Location: FF_X8_Y25_N1
\Contador2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Contador2[2]~reg0feeder_combout\,
	ena => \Contador2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador2[2]~reg0_q\);

-- Location: LCCOMB_X8_Y25_N10
\Contador[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador[3]~3_combout\ = (Contador(2) & (Contador(1) & (Contador(0) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Contador(2),
	datab => Contador(1),
	datac => Contador(0),
	datad => \Equal0~7_combout\,
	combout => \Contador[3]~3_combout\);

-- Location: LCCOMB_X8_Y25_N8
\Contador[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador[3]~4_combout\ = Contador(3) $ (\Contador[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Contador(3),
	datad => \Contador[3]~3_combout\,
	combout => \Contador[3]~4_combout\);

-- Location: FF_X8_Y25_N9
\Contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Contador[3]~4_combout\,
	clrn => \Enable~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Contador(3));

-- Location: FF_X8_Y25_N23
\Contador2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => Contador(3),
	sload => VCC,
	ena => \Contador2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador2[3]~reg0_q\);

ww_Contador2(0) <= \Contador2[0]~output_o\;

ww_Contador2(1) <= \Contador2[1]~output_o\;

ww_Contador2(2) <= \Contador2[2]~output_o\;

ww_Contador2(3) <= \Contador2[3]~output_o\;
END structure;


