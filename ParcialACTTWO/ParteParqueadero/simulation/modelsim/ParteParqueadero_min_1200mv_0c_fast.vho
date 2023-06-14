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

-- DATE "06/13/2023 17:43:42"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ParteParqueadero IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	FRONT_SENSOR : IN std_logic;
	BACK_SENSOR : IN std_logic;
	Enter : IN std_logic;
	SacaCarro : IN std_logic;
	Aumento : IN std_logic;
	VolverA0 : IN std_logic;
	Contra4bits : IN std_logic_vector(3 DOWNTO 0);
	LED_R : BUFFER std_logic;
	LED_V : BUFFER std_logic;
	DefAbrirPuerta : BUFFER std_logic;
	DefCerrarPuerta : BUFFER std_logic;
	SaliMuestra : BUFFER std_logic_vector(2 DOWNTO 0);
	SaliEspacios : BUFFER std_logic_vector(6 DOWNTO 0);
	SaliSegUni : BUFFER std_logic_vector(6 DOWNTO 0);
	SaliSegDec : BUFFER std_logic_vector(6 DOWNTO 0);
	SaliSegCent : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ParteParqueadero;

-- Design Ports Information
-- LED_R	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_V	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DefAbrirPuerta	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DefCerrarPuerta	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliMuestra[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliMuestra[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliMuestra[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliEspacios[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliEspacios[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliEspacios[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliEspacios[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliEspacios[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliEspacios[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliEspacios[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegUni[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegUni[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegUni[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegUni[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegUni[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegUni[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegUni[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegDec[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegDec[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegDec[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegDec[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegDec[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegDec[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegDec[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegCent[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegCent[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegCent[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegCent[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegCent[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegCent[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaliSegCent[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FRONT_SENSOR	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BACK_SENSOR	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Contra4bits[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Contra4bits[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Contra4bits[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Contra4bits[2]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enter	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aumento	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VolverA0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SacaCarro	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ParteParqueadero IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_FRONT_SENSOR : std_logic;
SIGNAL ww_BACK_SENSOR : std_logic;
SIGNAL ww_Enter : std_logic;
SIGNAL ww_SacaCarro : std_logic;
SIGNAL ww_Aumento : std_logic;
SIGNAL ww_VolverA0 : std_logic;
SIGNAL ww_Contra4bits : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LED_R : std_logic;
SIGNAL ww_LED_V : std_logic;
SIGNAL ww_DefAbrirPuerta : std_logic;
SIGNAL ww_DefCerrarPuerta : std_logic;
SIGNAL ww_SaliMuestra : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SaliEspacios : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SaliSegUni : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SaliSegDec : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SaliSegCent : std_logic_vector(6 DOWNTO 0);
SIGNAL \Espacios[3]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ant_state.inicio~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED_R~output_o\ : std_logic;
SIGNAL \LED_V~output_o\ : std_logic;
SIGNAL \DefAbrirPuerta~output_o\ : std_logic;
SIGNAL \DefCerrarPuerta~output_o\ : std_logic;
SIGNAL \SaliMuestra[0]~output_o\ : std_logic;
SIGNAL \SaliMuestra[1]~output_o\ : std_logic;
SIGNAL \SaliMuestra[2]~output_o\ : std_logic;
SIGNAL \SaliEspacios[0]~output_o\ : std_logic;
SIGNAL \SaliEspacios[1]~output_o\ : std_logic;
SIGNAL \SaliEspacios[2]~output_o\ : std_logic;
SIGNAL \SaliEspacios[3]~output_o\ : std_logic;
SIGNAL \SaliEspacios[4]~output_o\ : std_logic;
SIGNAL \SaliEspacios[5]~output_o\ : std_logic;
SIGNAL \SaliEspacios[6]~output_o\ : std_logic;
SIGNAL \SaliSegUni[0]~output_o\ : std_logic;
SIGNAL \SaliSegUni[1]~output_o\ : std_logic;
SIGNAL \SaliSegUni[2]~output_o\ : std_logic;
SIGNAL \SaliSegUni[3]~output_o\ : std_logic;
SIGNAL \SaliSegUni[4]~output_o\ : std_logic;
SIGNAL \SaliSegUni[5]~output_o\ : std_logic;
SIGNAL \SaliSegUni[6]~output_o\ : std_logic;
SIGNAL \SaliSegDec[0]~output_o\ : std_logic;
SIGNAL \SaliSegDec[1]~output_o\ : std_logic;
SIGNAL \SaliSegDec[2]~output_o\ : std_logic;
SIGNAL \SaliSegDec[3]~output_o\ : std_logic;
SIGNAL \SaliSegDec[4]~output_o\ : std_logic;
SIGNAL \SaliSegDec[5]~output_o\ : std_logic;
SIGNAL \SaliSegDec[6]~output_o\ : std_logic;
SIGNAL \SaliSegCent[0]~output_o\ : std_logic;
SIGNAL \SaliSegCent[1]~output_o\ : std_logic;
SIGNAL \SaliSegCent[2]~output_o\ : std_logic;
SIGNAL \SaliSegCent[3]~output_o\ : std_logic;
SIGNAL \SaliSegCent[4]~output_o\ : std_logic;
SIGNAL \SaliSegCent[5]~output_o\ : std_logic;
SIGNAL \SaliSegCent[6]~output_o\ : std_logic;
SIGNAL \BACK_SENSOR~input_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \FRONT_SENSOR~input_o\ : std_logic;
SIGNAL \Selector6~5_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Contra4bits[2]~input_o\ : std_logic;
SIGNAL \Contra4bits[3]~input_o\ : std_logic;
SIGNAL \Contra4bits[1]~input_o\ : std_logic;
SIGNAL \Contra4bits[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Enter~input_o\ : std_logic;
SIGNAL \salida~0_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \BeginContarPuerta~combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[16]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~0_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[0]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~1\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~2_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[1]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~3\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~4_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[2]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~5\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~6_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[3]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~7\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~8_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[4]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~9\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~10_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[5]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~11\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~12_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~5_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[6]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~13\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~14_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[7]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~15\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~16_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[8]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~17\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~18_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[9]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~19\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~20_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[10]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~21\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~22_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~4_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[11]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~23\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~24_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~3_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[12]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~25\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~26_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~2_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[13]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~27\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~28_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~1_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[14]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~29\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~30_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[15]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~31\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~32_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[17]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~33\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~34_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~6_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[18]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~35\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~36_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~7_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[19]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~37\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~38_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Equal0~0_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Equal0~1_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Equal0~2_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Equal0~3_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Equal0~4_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Equal0~5_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~10_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[21]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~39\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~40_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~11_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[20]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~41\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~42_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~9_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[22]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~43\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~44_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[23]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~45\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~46_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Equal0~8_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|count2~8_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[24]~q\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~47\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Add0~48_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Equal0~6_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Equal0~7_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Contador[0]~0_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Contador[1]~1_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Contador2[0]~0_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Contador[2]~2_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \ant_state.ingreso~q\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \secuencial2~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \ant_state.aprovado~q\ : std_logic;
SIGNAL \secuencial2~1_combout\ : std_logic;
SIGNAL \ant_state.inicio~clkctrl_outclk\ : std_logic;
SIGNAL \MomentoContra~combout\ : std_logic;
SIGNAL \secuencial2~2_combout\ : std_logic;
SIGNAL \EstadoAnte.Primero~q\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \EstadoAnte.Segundo~q\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \EstadoAnte.Tercero~q\ : std_logic;
SIGNAL \EstadoAnte.Fallido~0_combout\ : std_logic;
SIGNAL \EstadoAnte.Fallido~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \ant_state.Contrasena~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \ant_state.inicio~q\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \Selector6~6_combout\ : std_logic;
SIGNAL \ant_state.Desaprovado~0_combout\ : std_logic;
SIGNAL \ant_state.Desaprovado~q\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \AbrirPuerta~combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \CerrarPuerta~combout\ : std_logic;
SIGNAL \Aumento~input_o\ : std_logic;
SIGNAL \Muestra[0]~2_combout\ : std_logic;
SIGNAL \VolverA0~input_o\ : std_logic;
SIGNAL \Muestra[1]~0_combout\ : std_logic;
SIGNAL \Muestra[2]~1_combout\ : std_logic;
SIGNAL \SacaCarro~input_o\ : std_logic;
SIGNAL \Espacios[3]~2_combout\ : std_logic;
SIGNAL \Espacios[3]~2clkctrl_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Espacios[0]~0_combout\ : std_logic;
SIGNAL \Espacios[1]~1_combout\ : std_logic;
SIGNAL \Espacios[2]~3_combout\ : std_logic;
SIGNAL \Espacios[3]~4_combout\ : std_logic;
SIGNAL \Espacios[3]~5_combout\ : std_logic;
SIGNAL \SieteSegmentosEspacios|Mux6~0_combout\ : std_logic;
SIGNAL \SieteSegmentosEspacios|Mux5~0_combout\ : std_logic;
SIGNAL \SieteSegmentosEspacios|Mux4~0_combout\ : std_logic;
SIGNAL \SieteSegmentosEspacios|Mux3~0_combout\ : std_logic;
SIGNAL \SieteSegmentosEspacios|Mux2~0_combout\ : std_logic;
SIGNAL \SieteSegmentosEspacios|Mux1~0_combout\ : std_logic;
SIGNAL \SieteSegmentosEspacios|Mux0~0_combout\ : std_logic;
SIGNAL \PuertaAbiertaCiertoTiempo|Contador2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PuertaAbiertaCiertoTiempo|Contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL Espacios : std_logic_vector(3 DOWNTO 0);
SIGNAL Muestra : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_VolverA0~input_o\ : std_logic;
SIGNAL \ALT_INV_secuencial2~2_combout\ : std_logic;
SIGNAL \SieteSegmentosEspacios|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~4_combout\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_FRONT_SENSOR <= FRONT_SENSOR;
ww_BACK_SENSOR <= BACK_SENSOR;
ww_Enter <= Enter;
ww_SacaCarro <= SacaCarro;
ww_Aumento <= Aumento;
ww_VolverA0 <= VolverA0;
ww_Contra4bits <= Contra4bits;
LED_R <= ww_LED_R;
LED_V <= ww_LED_V;
DefAbrirPuerta <= ww_DefAbrirPuerta;
DefCerrarPuerta <= ww_DefCerrarPuerta;
SaliMuestra <= ww_SaliMuestra;
SaliEspacios <= ww_SaliEspacios;
SaliSegUni <= ww_SaliSegUni;
SaliSegDec <= ww_SaliSegDec;
SaliSegCent <= ww_SaliSegCent;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Espacios[3]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Espacios[3]~2_combout\);

\ant_state.inicio~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ant_state.inicio~q\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_VolverA0~input_o\ <= NOT \VolverA0~input_o\;
\ALT_INV_secuencial2~2_combout\ <= NOT \secuencial2~2_combout\;
\SieteSegmentosEspacios|ALT_INV_Mux6~0_combout\ <= NOT \SieteSegmentosEspacios|Mux6~0_combout\;
\ALT_INV_Selector6~4_combout\ <= NOT \Selector6~4_combout\;

-- Location: IOOBUF_X0_Y20_N9
\LED_R~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector6~6_combout\,
	devoe => ww_devoe,
	o => \LED_R~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LED_V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector6~4_combout\,
	devoe => ww_devoe,
	o => \LED_V~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\DefAbrirPuerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AbrirPuerta~combout\,
	devoe => ww_devoe,
	o => \DefAbrirPuerta~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\DefCerrarPuerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CerrarPuerta~combout\,
	devoe => ww_devoe,
	o => \DefCerrarPuerta~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\SaliMuestra[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Muestra(0),
	devoe => ww_devoe,
	o => \SaliMuestra[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\SaliMuestra[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Muestra(1),
	devoe => ww_devoe,
	o => \SaliMuestra[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\SaliMuestra[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Muestra(2),
	devoe => ww_devoe,
	o => \SaliMuestra[2]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\SaliEspacios[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SieteSegmentosEspacios|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SaliEspacios[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\SaliEspacios[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SieteSegmentosEspacios|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SaliEspacios[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\SaliEspacios[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SieteSegmentosEspacios|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SaliEspacios[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\SaliEspacios[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SieteSegmentosEspacios|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SaliEspacios[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\SaliEspacios[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SieteSegmentosEspacios|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SaliEspacios[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\SaliEspacios[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SieteSegmentosEspacios|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SaliEspacios[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\SaliEspacios[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SieteSegmentosEspacios|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SaliEspacios[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\SaliSegUni[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SaliSegUni[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\SaliSegUni[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegUni[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\SaliSegUni[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegUni[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\SaliSegUni[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegUni[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\SaliSegUni[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegUni[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\SaliSegUni[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegUni[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\SaliSegUni[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegUni[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\SaliSegDec[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SaliSegDec[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\SaliSegDec[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegDec[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\SaliSegDec[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegDec[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\SaliSegDec[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegDec[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\SaliSegDec[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegDec[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\SaliSegDec[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegDec[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\SaliSegDec[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegDec[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\SaliSegCent[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SaliSegCent[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\SaliSegCent[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegCent[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\SaliSegCent[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegCent[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\SaliSegCent[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegCent[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\SaliSegCent[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegCent[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\SaliSegCent[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegCent[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\SaliSegCent[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SaliSegCent[6]~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\BACK_SENSOR~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BACK_SENSOR,
	o => \BACK_SENSOR~input_o\);

-- Location: IOIBUF_X19_Y29_N8
\Clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G12
\Clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N1
\FRONT_SENSOR~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FRONT_SENSOR,
	o => \FRONT_SENSOR~input_o\);

-- Location: LCCOMB_X11_Y21_N30
\Selector6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~5_combout\ = (!\ant_state.inicio~q\ & ((\BACK_SENSOR~input_o\) # (!\FRONT_SENSOR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BACK_SENSOR~input_o\,
	datac => \ant_state.inicio~q\,
	datad => \FRONT_SENSOR~input_o\,
	combout => \Selector6~5_combout\);

-- Location: LCCOMB_X11_Y21_N6
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\ant_state.Contrasena~q\ & \FRONT_SENSOR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ant_state.Contrasena~q\,
	datad => \FRONT_SENSOR~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X11_Y21_N26
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\BACK_SENSOR~input_o\) # ((\ant_state.inicio~q\) # (!\FRONT_SENSOR~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BACK_SENSOR~input_o\,
	datac => \ant_state.inicio~q\,
	datad => \FRONT_SENSOR~input_o\,
	combout => \Selector7~0_combout\);

-- Location: IOIBUF_X0_Y25_N15
\Contra4bits[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Contra4bits(2),
	o => \Contra4bits[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\Contra4bits[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Contra4bits(3),
	o => \Contra4bits[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\Contra4bits[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Contra4bits(1),
	o => \Contra4bits[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\Contra4bits[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Contra4bits(0),
	o => \Contra4bits[0]~input_o\);

-- Location: LCCOMB_X1_Y25_N12
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ((\Contra4bits[3]~input_o\) # ((\Contra4bits[1]~input_o\) # (!\Contra4bits[0]~input_o\))) # (!\Contra4bits[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contra4bits[2]~input_o\,
	datab => \Contra4bits[3]~input_o\,
	datac => \Contra4bits[1]~input_o\,
	datad => \Contra4bits[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\Enter~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enter,
	o => \Enter~input_o\);

-- Location: LCCOMB_X11_Y21_N4
\salida~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida~0_combout\ = (!\BACK_SENSOR~input_o\ & \FRONT_SENSOR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BACK_SENSOR~input_o\,
	datad => \FRONT_SENSOR~input_o\,
	combout => \salida~0_combout\);

-- Location: LCCOMB_X9_Y20_N2
\PuertaAbiertaCiertoTiempo|count2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~0_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~32_combout\ & !\PuertaAbiertaCiertoTiempo|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Add0~32_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~0_combout\);

-- Location: LCCOMB_X10_Y21_N0
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\ant_state.inicio~q\ & (((\BACK_SENSOR~input_o\ & \ant_state.aprovado~q\)))) # (!\ant_state.inicio~q\ & (((\BACK_SENSOR~input_o\)) # (!\FRONT_SENSOR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FRONT_SENSOR~input_o\,
	datab => \ant_state.inicio~q\,
	datac => \BACK_SENSOR~input_o\,
	datad => \ant_state.aprovado~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X10_Y21_N12
BeginContarPuerta : cycloneiii_lcell_comb
-- Equation(s):
-- \BeginContarPuerta~combout\ = (\Selector12~0_combout\ & ((\ant_state.aprovado~q\))) # (!\Selector12~0_combout\ & (\BeginContarPuerta~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BeginContarPuerta~combout\,
	datac => \Selector12~0_combout\,
	datad => \ant_state.aprovado~q\,
	combout => \BeginContarPuerta~combout\);

-- Location: FF_X9_Y20_N3
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~0_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[16]~q\);

-- Location: LCCOMB_X8_Y21_N8
\PuertaAbiertaCiertoTiempo|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~0_combout\ = \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[0]~q\ $ (VCC)
-- \PuertaAbiertaCiertoTiempo|Add0~1\ = CARRY(\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[0]~q\,
	datad => VCC,
	combout => \PuertaAbiertaCiertoTiempo|Add0~0_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~1\);

-- Location: FF_X8_Y21_N9
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~0_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[0]~q\);

-- Location: LCCOMB_X8_Y21_N10
\PuertaAbiertaCiertoTiempo|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~2_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[1]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~1\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[1]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~1\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~3\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~1\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[1]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~1\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~2_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~3\);

-- Location: FF_X8_Y21_N11
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~2_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[1]~q\);

-- Location: LCCOMB_X8_Y21_N12
\PuertaAbiertaCiertoTiempo|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~4_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[2]~q\ & (\PuertaAbiertaCiertoTiempo|Add0~3\ $ (GND))) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[2]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~3\ & VCC))
-- \PuertaAbiertaCiertoTiempo|Add0~5\ = CARRY((\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[2]~q\ & !\PuertaAbiertaCiertoTiempo|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[2]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~3\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~4_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~5\);

-- Location: FF_X8_Y21_N13
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~4_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[2]~q\);

-- Location: LCCOMB_X8_Y21_N14
\PuertaAbiertaCiertoTiempo|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~6_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[3]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~5\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[3]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~5\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~7\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~5\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[3]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~5\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~6_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~7\);

-- Location: FF_X8_Y21_N15
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~6_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[3]~q\);

-- Location: LCCOMB_X8_Y21_N16
\PuertaAbiertaCiertoTiempo|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~8_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[4]~q\ & (\PuertaAbiertaCiertoTiempo|Add0~7\ $ (GND))) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[4]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~7\ & VCC))
-- \PuertaAbiertaCiertoTiempo|Add0~9\ = CARRY((\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[4]~q\ & !\PuertaAbiertaCiertoTiempo|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[4]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~7\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~8_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~9\);

-- Location: FF_X8_Y21_N17
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~8_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[4]~q\);

-- Location: LCCOMB_X8_Y21_N18
\PuertaAbiertaCiertoTiempo|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~10_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[5]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~9\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[5]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~9\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~11\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~9\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[5]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~9\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~10_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~11\);

-- Location: FF_X8_Y21_N19
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~10_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[5]~q\);

-- Location: LCCOMB_X8_Y21_N20
\PuertaAbiertaCiertoTiempo|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~12_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[6]~q\ & (\PuertaAbiertaCiertoTiempo|Add0~11\ $ (GND))) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[6]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~11\ & VCC))
-- \PuertaAbiertaCiertoTiempo|Add0~13\ = CARRY((\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[6]~q\ & !\PuertaAbiertaCiertoTiempo|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[6]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~11\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~12_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~13\);

-- Location: LCCOMB_X8_Y21_N2
\PuertaAbiertaCiertoTiempo|count2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~5_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~12_combout\ & !\PuertaAbiertaCiertoTiempo|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|Add0~12_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~5_combout\);

-- Location: FF_X8_Y21_N3
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~5_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[6]~q\);

-- Location: LCCOMB_X8_Y21_N22
\PuertaAbiertaCiertoTiempo|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~14_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[7]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~13\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[7]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~13\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~15\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~13\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[7]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~13\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~14_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~15\);

-- Location: FF_X8_Y21_N23
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~14_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[7]~q\);

-- Location: LCCOMB_X8_Y21_N24
\PuertaAbiertaCiertoTiempo|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~16_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[8]~q\ & (\PuertaAbiertaCiertoTiempo|Add0~15\ $ (GND))) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[8]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~15\ & VCC))
-- \PuertaAbiertaCiertoTiempo|Add0~17\ = CARRY((\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[8]~q\ & !\PuertaAbiertaCiertoTiempo|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[8]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~15\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~16_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~17\);

-- Location: FF_X8_Y21_N25
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~16_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[8]~q\);

-- Location: LCCOMB_X8_Y21_N26
\PuertaAbiertaCiertoTiempo|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~18_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[9]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~17\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[9]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~17\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~19\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~17\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[9]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~17\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~18_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~19\);

-- Location: FF_X8_Y21_N27
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~18_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[9]~q\);

-- Location: LCCOMB_X8_Y21_N28
\PuertaAbiertaCiertoTiempo|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~20_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[10]~q\ & (\PuertaAbiertaCiertoTiempo|Add0~19\ $ (GND))) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[10]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~19\ & VCC))
-- \PuertaAbiertaCiertoTiempo|Add0~21\ = CARRY((\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[10]~q\ & !\PuertaAbiertaCiertoTiempo|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[10]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~19\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~20_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~21\);

-- Location: FF_X8_Y21_N29
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~20_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[10]~q\);

-- Location: LCCOMB_X8_Y21_N30
\PuertaAbiertaCiertoTiempo|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~22_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[11]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~21\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[11]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~21\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~23\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~21\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[11]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~21\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~22_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~23\);

-- Location: LCCOMB_X8_Y21_N0
\PuertaAbiertaCiertoTiempo|count2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~4_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~22_combout\ & !\PuertaAbiertaCiertoTiempo|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|Add0~22_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~4_combout\);

-- Location: FF_X8_Y21_N1
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~4_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[11]~q\);

-- Location: LCCOMB_X8_Y20_N0
\PuertaAbiertaCiertoTiempo|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~24_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[12]~q\ & (\PuertaAbiertaCiertoTiempo|Add0~23\ $ (GND))) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[12]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~23\ & VCC))
-- \PuertaAbiertaCiertoTiempo|Add0~25\ = CARRY((\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[12]~q\ & !\PuertaAbiertaCiertoTiempo|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[12]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~23\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~24_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~25\);

-- Location: LCCOMB_X8_Y20_N26
\PuertaAbiertaCiertoTiempo|count2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~3_combout\ = (!\PuertaAbiertaCiertoTiempo|Equal0~7_combout\ & \PuertaAbiertaCiertoTiempo|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Add0~24_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~3_combout\);

-- Location: FF_X8_Y20_N27
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~3_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[12]~q\);

-- Location: LCCOMB_X8_Y20_N2
\PuertaAbiertaCiertoTiempo|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~26_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[13]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~25\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[13]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~25\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~27\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~25\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[13]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~25\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~26_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~27\);

-- Location: LCCOMB_X8_Y20_N28
\PuertaAbiertaCiertoTiempo|count2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~2_combout\ = (!\PuertaAbiertaCiertoTiempo|Equal0~7_combout\ & \PuertaAbiertaCiertoTiempo|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Add0~26_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~2_combout\);

-- Location: FF_X8_Y20_N29
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~2_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[13]~q\);

-- Location: LCCOMB_X8_Y20_N4
\PuertaAbiertaCiertoTiempo|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~28_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[14]~q\ & (\PuertaAbiertaCiertoTiempo|Add0~27\ $ (GND))) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[14]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~27\ & VCC))
-- \PuertaAbiertaCiertoTiempo|Add0~29\ = CARRY((\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[14]~q\ & !\PuertaAbiertaCiertoTiempo|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[14]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~27\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~28_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~29\);

-- Location: LCCOMB_X8_Y20_N30
\PuertaAbiertaCiertoTiempo|count2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~1_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~28_combout\ & !\PuertaAbiertaCiertoTiempo|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|Add0~28_combout\,
	datac => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~1_combout\);

-- Location: FF_X8_Y20_N31
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~1_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[14]~q\);

-- Location: LCCOMB_X8_Y20_N6
\PuertaAbiertaCiertoTiempo|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~30_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[15]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~29\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[15]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~29\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~31\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~29\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[15]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~29\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~30_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~31\);

-- Location: FF_X8_Y20_N7
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~30_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[15]~q\);

-- Location: LCCOMB_X8_Y20_N8
\PuertaAbiertaCiertoTiempo|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~32_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[16]~q\ & (\PuertaAbiertaCiertoTiempo|Add0~31\ $ (GND))) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[16]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~31\ & VCC))
-- \PuertaAbiertaCiertoTiempo|Add0~33\ = CARRY((\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[16]~q\ & !\PuertaAbiertaCiertoTiempo|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[16]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~31\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~32_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~33\);

-- Location: FF_X8_Y20_N11
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~34_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[17]~q\);

-- Location: LCCOMB_X8_Y20_N10
\PuertaAbiertaCiertoTiempo|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~34_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[17]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~33\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[17]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~33\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~35\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~33\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[17]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~33\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~34_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~35\);

-- Location: LCCOMB_X9_Y20_N28
\PuertaAbiertaCiertoTiempo|count2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~6_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~36_combout\ & !\PuertaAbiertaCiertoTiempo|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PuertaAbiertaCiertoTiempo|Add0~36_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~6_combout\);

-- Location: FF_X9_Y20_N29
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~6_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[18]~q\);

-- Location: LCCOMB_X8_Y20_N12
\PuertaAbiertaCiertoTiempo|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~36_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[18]~q\ & (\PuertaAbiertaCiertoTiempo|Add0~35\ $ (GND))) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[18]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~35\ & VCC))
-- \PuertaAbiertaCiertoTiempo|Add0~37\ = CARRY((\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[18]~q\ & !\PuertaAbiertaCiertoTiempo|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[18]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~35\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~36_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~37\);

-- Location: LCCOMB_X9_Y20_N22
\PuertaAbiertaCiertoTiempo|count2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~7_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~38_combout\ & !\PuertaAbiertaCiertoTiempo|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Add0~38_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~7_combout\);

-- Location: FF_X9_Y20_N23
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~7_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[19]~q\);

-- Location: LCCOMB_X8_Y20_N14
\PuertaAbiertaCiertoTiempo|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~38_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[19]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~37\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[19]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~37\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~39\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~37\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[19]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~37\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~38_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~39\);

-- Location: LCCOMB_X9_Y20_N12
\PuertaAbiertaCiertoTiempo|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Equal0~0_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~32_combout\ & (!\PuertaAbiertaCiertoTiempo|Add0~34_combout\ & (\PuertaAbiertaCiertoTiempo|Add0~36_combout\ & \PuertaAbiertaCiertoTiempo|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Add0~32_combout\,
	datab => \PuertaAbiertaCiertoTiempo|Add0~34_combout\,
	datac => \PuertaAbiertaCiertoTiempo|Add0~36_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Add0~38_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y21_N4
\PuertaAbiertaCiertoTiempo|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Equal0~1_combout\ = (!\PuertaAbiertaCiertoTiempo|Add0~0_combout\ & (!\PuertaAbiertaCiertoTiempo|Add0~2_combout\ & (!\PuertaAbiertaCiertoTiempo|Add0~4_combout\ & !\PuertaAbiertaCiertoTiempo|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Add0~0_combout\,
	datab => \PuertaAbiertaCiertoTiempo|Add0~2_combout\,
	datac => \PuertaAbiertaCiertoTiempo|Add0~4_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Add0~6_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y20_N14
\PuertaAbiertaCiertoTiempo|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Equal0~2_combout\ = (!\PuertaAbiertaCiertoTiempo|Add0~10_combout\ & (!\PuertaAbiertaCiertoTiempo|Add0~8_combout\ & (\PuertaAbiertaCiertoTiempo|Add0~12_combout\ & !\PuertaAbiertaCiertoTiempo|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Add0~10_combout\,
	datab => \PuertaAbiertaCiertoTiempo|Add0~8_combout\,
	datac => \PuertaAbiertaCiertoTiempo|Add0~12_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Add0~14_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y21_N6
\PuertaAbiertaCiertoTiempo|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Equal0~3_combout\ = (!\PuertaAbiertaCiertoTiempo|Add0~18_combout\ & (!\PuertaAbiertaCiertoTiempo|Add0~16_combout\ & (\PuertaAbiertaCiertoTiempo|Add0~22_combout\ & !\PuertaAbiertaCiertoTiempo|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Add0~18_combout\,
	datab => \PuertaAbiertaCiertoTiempo|Add0~16_combout\,
	datac => \PuertaAbiertaCiertoTiempo|Add0~22_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Add0~20_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Equal0~3_combout\);

-- Location: LCCOMB_X9_Y20_N20
\PuertaAbiertaCiertoTiempo|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Equal0~4_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~24_combout\ & (\PuertaAbiertaCiertoTiempo|Add0~28_combout\ & (!\PuertaAbiertaCiertoTiempo|Add0~30_combout\ & \PuertaAbiertaCiertoTiempo|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Add0~24_combout\,
	datab => \PuertaAbiertaCiertoTiempo|Add0~28_combout\,
	datac => \PuertaAbiertaCiertoTiempo|Add0~30_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Add0~26_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Equal0~4_combout\);

-- Location: LCCOMB_X9_Y20_N18
\PuertaAbiertaCiertoTiempo|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Equal0~5_combout\ = (\PuertaAbiertaCiertoTiempo|Equal0~1_combout\ & (\PuertaAbiertaCiertoTiempo|Equal0~2_combout\ & (\PuertaAbiertaCiertoTiempo|Equal0~3_combout\ & \PuertaAbiertaCiertoTiempo|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Equal0~1_combout\,
	datab => \PuertaAbiertaCiertoTiempo|Equal0~2_combout\,
	datac => \PuertaAbiertaCiertoTiempo|Equal0~3_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~4_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Equal0~5_combout\);

-- Location: LCCOMB_X9_Y20_N30
\PuertaAbiertaCiertoTiempo|count2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~10_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~42_combout\ & !\PuertaAbiertaCiertoTiempo|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|Add0~42_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~10_combout\);

-- Location: FF_X9_Y20_N31
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~10_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[21]~q\);

-- Location: LCCOMB_X8_Y20_N16
\PuertaAbiertaCiertoTiempo|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~40_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[20]~q\ & (\PuertaAbiertaCiertoTiempo|Add0~39\ $ (GND))) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[20]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~39\ & VCC))
-- \PuertaAbiertaCiertoTiempo|Add0~41\ = CARRY((\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[20]~q\ & !\PuertaAbiertaCiertoTiempo|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[20]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~39\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~40_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~41\);

-- Location: LCCOMB_X9_Y20_N4
\PuertaAbiertaCiertoTiempo|count2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~11_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~40_combout\ & !\PuertaAbiertaCiertoTiempo|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PuertaAbiertaCiertoTiempo|Add0~40_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~11_combout\);

-- Location: FF_X9_Y20_N5
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~11_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[20]~q\);

-- Location: LCCOMB_X8_Y20_N18
\PuertaAbiertaCiertoTiempo|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~42_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[21]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~41\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[21]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~41\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~43\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~41\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[21]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~41\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~42_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~43\);

-- Location: LCCOMB_X9_Y20_N8
\PuertaAbiertaCiertoTiempo|count2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~9_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~44_combout\ & !\PuertaAbiertaCiertoTiempo|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|Add0~44_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~9_combout\);

-- Location: FF_X9_Y20_N9
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~9_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[22]~q\);

-- Location: LCCOMB_X8_Y20_N20
\PuertaAbiertaCiertoTiempo|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~44_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[22]~q\ & (\PuertaAbiertaCiertoTiempo|Add0~43\ $ (GND))) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[22]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~43\ & VCC))
-- \PuertaAbiertaCiertoTiempo|Add0~45\ = CARRY((\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[22]~q\ & !\PuertaAbiertaCiertoTiempo|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[22]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~43\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~44_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~45\);

-- Location: FF_X8_Y20_N23
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Add0~46_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[23]~q\);

-- Location: LCCOMB_X8_Y20_N22
\PuertaAbiertaCiertoTiempo|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~46_combout\ = (\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[23]~q\ & (!\PuertaAbiertaCiertoTiempo|Add0~45\)) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[23]~q\ & ((\PuertaAbiertaCiertoTiempo|Add0~45\) # (GND)))
-- \PuertaAbiertaCiertoTiempo|Add0~47\ = CARRY((!\PuertaAbiertaCiertoTiempo|Add0~45\) # (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[23]~q\,
	datad => VCC,
	cin => \PuertaAbiertaCiertoTiempo|Add0~45\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~46_combout\,
	cout => \PuertaAbiertaCiertoTiempo|Add0~47\);

-- Location: LCCOMB_X7_Y20_N16
\PuertaAbiertaCiertoTiempo|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Equal0~8_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~42_combout\ & (\PuertaAbiertaCiertoTiempo|Add0~40_combout\ & (\PuertaAbiertaCiertoTiempo|Add0~44_combout\ & !\PuertaAbiertaCiertoTiempo|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Add0~42_combout\,
	datab => \PuertaAbiertaCiertoTiempo|Add0~40_combout\,
	datac => \PuertaAbiertaCiertoTiempo|Add0~44_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Add0~46_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Equal0~8_combout\);

-- Location: LCCOMB_X9_Y20_N6
\PuertaAbiertaCiertoTiempo|count2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|count2~8_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~48_combout\ & (((!\PuertaAbiertaCiertoTiempo|Equal0~8_combout\) # (!\PuertaAbiertaCiertoTiempo|Equal0~5_combout\)) # (!\PuertaAbiertaCiertoTiempo|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Equal0~0_combout\,
	datab => \PuertaAbiertaCiertoTiempo|Equal0~5_combout\,
	datac => \PuertaAbiertaCiertoTiempo|Equal0~8_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Add0~48_combout\,
	combout => \PuertaAbiertaCiertoTiempo|count2~8_combout\);

-- Location: FF_X9_Y20_N7
\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|count2~8_combout\,
	ena => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[24]~q\);

-- Location: LCCOMB_X8_Y20_N24
\PuertaAbiertaCiertoTiempo|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Add0~48_combout\ = \PuertaAbiertaCiertoTiempo|Add0~47\ $ (!\PuertaAbiertaCiertoTiempo|ContadorSeg:count2[24]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PuertaAbiertaCiertoTiempo|ContadorSeg:count2[24]~q\,
	cin => \PuertaAbiertaCiertoTiempo|Add0~47\,
	combout => \PuertaAbiertaCiertoTiempo|Add0~48_combout\);

-- Location: LCCOMB_X9_Y20_N16
\PuertaAbiertaCiertoTiempo|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Equal0~6_combout\ = (\PuertaAbiertaCiertoTiempo|Add0~40_combout\ & (\PuertaAbiertaCiertoTiempo|Add0~42_combout\ & (\PuertaAbiertaCiertoTiempo|Add0~44_combout\ & \PuertaAbiertaCiertoTiempo|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Add0~40_combout\,
	datab => \PuertaAbiertaCiertoTiempo|Add0~42_combout\,
	datac => \PuertaAbiertaCiertoTiempo|Add0~44_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~5_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Equal0~6_combout\);

-- Location: LCCOMB_X9_Y20_N10
\PuertaAbiertaCiertoTiempo|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Equal0~7_combout\ = (\PuertaAbiertaCiertoTiempo|Equal0~0_combout\ & (\PuertaAbiertaCiertoTiempo|Add0~48_combout\ & (!\PuertaAbiertaCiertoTiempo|Add0~46_combout\ & \PuertaAbiertaCiertoTiempo|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Equal0~0_combout\,
	datab => \PuertaAbiertaCiertoTiempo|Add0~48_combout\,
	datac => \PuertaAbiertaCiertoTiempo|Add0~46_combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~6_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\);

-- Location: LCCOMB_X9_Y20_N0
\PuertaAbiertaCiertoTiempo|Contador[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Contador[0]~0_combout\ = \PuertaAbiertaCiertoTiempo|Contador\(0) $ (\PuertaAbiertaCiertoTiempo|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PuertaAbiertaCiertoTiempo|Contador\(0),
	datad => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Contador[0]~0_combout\);

-- Location: FF_X9_Y20_N1
\PuertaAbiertaCiertoTiempo|Contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Contador[0]~0_combout\,
	clrn => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|Contador\(0));

-- Location: LCCOMB_X9_Y20_N24
\PuertaAbiertaCiertoTiempo|Contador[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Contador[1]~1_combout\ = \PuertaAbiertaCiertoTiempo|Contador\(1) $ (((\PuertaAbiertaCiertoTiempo|Contador\(0) & \PuertaAbiertaCiertoTiempo|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|Contador\(0),
	datac => \PuertaAbiertaCiertoTiempo|Contador\(1),
	datad => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Contador[1]~1_combout\);

-- Location: FF_X9_Y20_N25
\PuertaAbiertaCiertoTiempo|Contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Contador[1]~1_combout\,
	clrn => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|Contador\(1));

-- Location: LCCOMB_X9_Y21_N8
\PuertaAbiertaCiertoTiempo|Contador2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Contador2[0]~0_combout\ = (\BeginContarPuerta~combout\ & \PuertaAbiertaCiertoTiempo|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BeginContarPuerta~combout\,
	datad => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	combout => \PuertaAbiertaCiertoTiempo|Contador2[0]~0_combout\);

-- Location: FF_X9_Y21_N31
\PuertaAbiertaCiertoTiempo|Contador2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \PuertaAbiertaCiertoTiempo|Contador\(1),
	sload => VCC,
	ena => \PuertaAbiertaCiertoTiempo|Contador2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|Contador2\(1));

-- Location: FF_X9_Y21_N21
\PuertaAbiertaCiertoTiempo|Contador2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \PuertaAbiertaCiertoTiempo|Contador\(0),
	sload => VCC,
	ena => \PuertaAbiertaCiertoTiempo|Contador2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|Contador2\(0));

-- Location: LCCOMB_X9_Y20_N26
\PuertaAbiertaCiertoTiempo|Contador[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PuertaAbiertaCiertoTiempo|Contador[2]~2_combout\ = \PuertaAbiertaCiertoTiempo|Contador\(2) $ (((\PuertaAbiertaCiertoTiempo|Equal0~7_combout\ & (\PuertaAbiertaCiertoTiempo|Contador\(0) & \PuertaAbiertaCiertoTiempo|Contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Equal0~7_combout\,
	datab => \PuertaAbiertaCiertoTiempo|Contador\(0),
	datac => \PuertaAbiertaCiertoTiempo|Contador\(2),
	datad => \PuertaAbiertaCiertoTiempo|Contador\(1),
	combout => \PuertaAbiertaCiertoTiempo|Contador[2]~2_combout\);

-- Location: FF_X9_Y20_N27
\PuertaAbiertaCiertoTiempo|Contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PuertaAbiertaCiertoTiempo|Contador[2]~2_combout\,
	clrn => \BeginContarPuerta~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|Contador\(2));

-- Location: FF_X9_Y21_N3
\PuertaAbiertaCiertoTiempo|Contador2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \PuertaAbiertaCiertoTiempo|Contador\(2),
	sload => VCC,
	ena => \PuertaAbiertaCiertoTiempo|Contador2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PuertaAbiertaCiertoTiempo|Contador2\(2));

-- Location: LCCOMB_X9_Y21_N18
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\ant_state.ingreso~q\ & (!\PuertaAbiertaCiertoTiempo|Contador2\(2) & ((!\PuertaAbiertaCiertoTiempo|Contador2\(0)) # (!\PuertaAbiertaCiertoTiempo|Contador2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PuertaAbiertaCiertoTiempo|Contador2\(1),
	datab => \PuertaAbiertaCiertoTiempo|Contador2\(0),
	datac => \ant_state.ingreso~q\,
	datad => \PuertaAbiertaCiertoTiempo|Contador2\(2),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X9_Y21_N22
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\BACK_SENSOR~input_o\ & (((!\FRONT_SENSOR~input_o\ & \Selector4~0_combout\)) # (!\Selector16~2_combout\))) # (!\BACK_SENSOR~input_o\ & (!\FRONT_SENSOR~input_o\ & ((\Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BACK_SENSOR~input_o\,
	datab => \FRONT_SENSOR~input_o\,
	datac => \Selector16~2_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X9_Y21_N23
\ant_state.ingreso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ant_state.ingreso~q\);

-- Location: LCCOMB_X11_Y21_N18
\Selector16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (!\ant_state.ingreso~q\ & !\ant_state.aprovado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ant_state.ingreso~q\,
	datac => \ant_state.aprovado~q\,
	combout => \Selector16~2_combout\);

-- Location: LCCOMB_X10_Y21_N6
\secuencial2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secuencial2~0_combout\ = (\FRONT_SENSOR~input_o\ & (!\Equal0~0_combout\ & !\EstadoAnte.Fallido~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FRONT_SENSOR~input_o\,
	datab => \Equal0~0_combout\,
	datad => \EstadoAnte.Fallido~q\,
	combout => \secuencial2~0_combout\);

-- Location: LCCOMB_X10_Y21_N18
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\ant_state.Contrasena~q\ & ((\secuencial2~0_combout\) # ((\salida~0_combout\ & !\Selector16~2_combout\)))) # (!\ant_state.Contrasena~q\ & (\salida~0_combout\ & (!\Selector16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ant_state.Contrasena~q\,
	datab => \salida~0_combout\,
	datac => \Selector16~2_combout\,
	datad => \secuencial2~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X10_Y21_N19
\ant_state.aprovado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ant_state.aprovado~q\);

-- Location: LCCOMB_X10_Y21_N30
\secuencial2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secuencial2~1_combout\ = (\BACK_SENSOR~input_o\ & (((!\ant_state.aprovado~q\)))) # (!\BACK_SENSOR~input_o\ & (((\ant_state.inicio~q\ & !\ant_state.aprovado~q\)) # (!\FRONT_SENSOR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FRONT_SENSOR~input_o\,
	datab => \ant_state.inicio~q\,
	datac => \BACK_SENSOR~input_o\,
	datad => \ant_state.aprovado~q\,
	combout => \secuencial2~1_combout\);

-- Location: CLKCTRL_G13
\ant_state.inicio~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ant_state.inicio~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ant_state.inicio~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y21_N22
MomentoContra : cycloneiii_lcell_comb
-- Equation(s):
-- \MomentoContra~combout\ = (GLOBAL(\ant_state.inicio~clkctrl_outclk\) & ((\MomentoContra~combout\))) # (!GLOBAL(\ant_state.inicio~clkctrl_outclk\) & (\salida~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida~0_combout\,
	datac => \MomentoContra~combout\,
	datad => \ant_state.inicio~clkctrl_outclk\,
	combout => \MomentoContra~combout\);

-- Location: LCCOMB_X10_Y21_N16
\secuencial2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \secuencial2~2_combout\ = ((\secuencial2~1_combout\ & ((\secuencial2~0_combout\) # (!\ant_state.Contrasena~q\)))) # (!\MomentoContra~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuencial2~1_combout\,
	datab => \ant_state.Contrasena~q\,
	datac => \MomentoContra~combout\,
	datad => \secuencial2~0_combout\,
	combout => \secuencial2~2_combout\);

-- Location: FF_X10_Y21_N11
\EstadoAnte.Primero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~input_o\,
	asdata => \Selector8~0_combout\,
	clrn => \ALT_INV_secuencial2~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EstadoAnte.Primero~q\);

-- Location: LCCOMB_X10_Y21_N8
\Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Equal0~0_combout\ & !\EstadoAnte.Primero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datad => \EstadoAnte.Primero~q\,
	combout => \Selector11~1_combout\);

-- Location: FF_X10_Y21_N9
\EstadoAnte.Segundo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~input_o\,
	d => \Selector11~1_combout\,
	clrn => \ALT_INV_secuencial2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EstadoAnte.Segundo~q\);

-- Location: LCCOMB_X10_Y21_N26
\Selector11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\Equal0~0_combout\ & \EstadoAnte.Segundo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \EstadoAnte.Segundo~q\,
	combout => \Selector11~2_combout\);

-- Location: FF_X10_Y21_N27
\EstadoAnte.Tercero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~input_o\,
	d => \Selector11~2_combout\,
	clrn => \ALT_INV_secuencial2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EstadoAnte.Tercero~q\);

-- Location: LCCOMB_X10_Y21_N20
\EstadoAnte.Fallido~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EstadoAnte.Fallido~0_combout\ = (\EstadoAnte.Fallido~q\) # ((\Equal0~0_combout\ & \EstadoAnte.Tercero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \EstadoAnte.Fallido~q\,
	datad => \EstadoAnte.Tercero~q\,
	combout => \EstadoAnte.Fallido~0_combout\);

-- Location: FF_X10_Y21_N21
\EstadoAnte.Fallido\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Enter~input_o\,
	d => \EstadoAnte.Fallido~0_combout\,
	clrn => \ALT_INV_secuencial2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EstadoAnte.Fallido~q\);

-- Location: LCCOMB_X10_Y21_N4
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Equal0~0_combout\) # (\EstadoAnte.Fallido~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datad => \EstadoAnte.Fallido~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X10_Y21_N24
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\EstadoAnte.Fallido~q\) # ((\Equal0~0_combout\ & ((\EstadoAnte.Segundo~q\) # (!\EstadoAnte.Primero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \EstadoAnte.Fallido~q\,
	datac => \EstadoAnte.Segundo~q\,
	datad => \EstadoAnte.Primero~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X11_Y21_N22
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((\Selector3~0_combout\ & (\Selector8~0_combout\ & !\Selector11~0_combout\))) # (!\Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector7~0_combout\,
	datac => \Selector8~0_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X11_Y21_N23
\ant_state.Contrasena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ant_state.Contrasena~q\);

-- Location: LCCOMB_X9_Y21_N10
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\PuertaAbiertaCiertoTiempo|Contador2\(2) & ((!\PuertaAbiertaCiertoTiempo|Contador2\(0)) # (!\PuertaAbiertaCiertoTiempo|Contador2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PuertaAbiertaCiertoTiempo|Contador2\(2),
	datac => \PuertaAbiertaCiertoTiempo|Contador2\(1),
	datad => \PuertaAbiertaCiertoTiempo|Contador2\(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y21_N2
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\BACK_SENSOR~input_o\ & ((\ant_state.aprovado~q\) # ((\ant_state.ingreso~q\ & !\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BACK_SENSOR~input_o\,
	datab => \ant_state.ingreso~q\,
	datac => \ant_state.aprovado~q\,
	datad => \LessThan0~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X11_Y21_N28
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector6~5_combout\ & ((\FRONT_SENSOR~input_o\) # ((!\ant_state.Contrasena~q\ & !\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~5_combout\,
	datab => \ant_state.Contrasena~q\,
	datac => \FRONT_SENSOR~input_o\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X11_Y21_N29
\ant_state.inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ant_state.inicio~q\);

-- Location: LCCOMB_X11_Y21_N10
\Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = ((!\BACK_SENSOR~input_o\ & !\FRONT_SENSOR~input_o\)) # (!\ant_state.aprovado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ant_state.aprovado~q\,
	datac => \BACK_SENSOR~input_o\,
	datad => \FRONT_SENSOR~input_o\,
	combout => \Selector6~3_combout\);

-- Location: LCCOMB_X11_Y21_N24
\Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = ((!\BACK_SENSOR~input_o\ & (!\LessThan0~0_combout\ & !\FRONT_SENSOR~input_o\))) # (!\ant_state.ingreso~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BACK_SENSOR~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \FRONT_SENSOR~input_o\,
	datad => \ant_state.ingreso~q\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X11_Y21_N8
\Selector6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = (\Selector6~3_combout\ & (\Selector6~2_combout\ & ((!\secuencial2~0_combout\) # (!\ant_state.Contrasena~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~3_combout\,
	datab => \ant_state.Contrasena~q\,
	datac => \secuencial2~0_combout\,
	datad => \Selector6~2_combout\,
	combout => \Selector6~4_combout\);

-- Location: LCCOMB_X11_Y21_N12
\Selector6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~6_combout\ = (\Selector6~4_combout\ & ((\ant_state.inicio~q\) # ((!\BACK_SENSOR~input_o\ & \FRONT_SENSOR~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BACK_SENSOR~input_o\,
	datab => \ant_state.inicio~q\,
	datac => \Selector6~4_combout\,
	datad => \FRONT_SENSOR~input_o\,
	combout => \Selector6~6_combout\);

-- Location: LCCOMB_X11_Y21_N20
\ant_state.Desaprovado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ant_state.Desaprovado~0_combout\ = (\ant_state.Desaprovado~q\) # ((\Selector3~0_combout\ & (\Selector8~0_combout\ & \Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector8~0_combout\,
	datac => \ant_state.Desaprovado~q\,
	datad => \Selector11~0_combout\,
	combout => \ant_state.Desaprovado~0_combout\);

-- Location: FF_X11_Y21_N21
\ant_state.Desaprovado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ant_state.Desaprovado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ant_state.Desaprovado~q\);

-- Location: LCCOMB_X10_Y21_N14
\Selector15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\FRONT_SENSOR~input_o\) # ((\BACK_SENSOR~input_o\) # (\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FRONT_SENSOR~input_o\,
	datac => \BACK_SENSOR~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X10_Y21_N2
\Selector15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = (\ant_state.aprovado~q\ & ((\BACK_SENSOR~input_o\) # ((\FRONT_SENSOR~input_o\)))) # (!\ant_state.aprovado~q\ & (((\secuencial2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BACK_SENSOR~input_o\,
	datab => \ant_state.aprovado~q\,
	datac => \FRONT_SENSOR~input_o\,
	datad => \secuencial2~0_combout\,
	combout => \Selector15~4_combout\);

-- Location: LCCOMB_X10_Y21_N28
\Selector15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (!\ant_state.Desaprovado~q\ & ((\ant_state.ingreso~q\ & (\Selector15~2_combout\)) # (!\ant_state.ingreso~q\ & ((\Selector15~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ant_state.ingreso~q\,
	datab => \ant_state.Desaprovado~q\,
	datac => \Selector15~2_combout\,
	datad => \Selector15~4_combout\,
	combout => \Selector15~3_combout\);

-- Location: LCCOMB_X10_Y21_N10
AbrirPuerta : cycloneiii_lcell_comb
-- Equation(s):
-- \AbrirPuerta~combout\ = (GLOBAL(\ant_state.inicio~clkctrl_outclk\) & ((\Selector15~3_combout\))) # (!GLOBAL(\ant_state.inicio~clkctrl_outclk\) & (\AbrirPuerta~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ant_state.inicio~clkctrl_outclk\,
	datab => \AbrirPuerta~combout\,
	datad => \Selector15~3_combout\,
	combout => \AbrirPuerta~combout\);

-- Location: LCCOMB_X9_Y21_N16
\Selector16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = (\ant_state.Desaprovado~q\) # ((!\BACK_SENSOR~input_o\ & (!\FRONT_SENSOR~input_o\ & !\Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BACK_SENSOR~input_o\,
	datab => \FRONT_SENSOR~input_o\,
	datac => \ant_state.Desaprovado~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector16~3_combout\);

-- Location: LCCOMB_X9_Y21_N28
\Selector16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = (\Selector16~3_combout\) # ((!\ant_state.aprovado~q\ & (!\ant_state.ingreso~q\ & !\secuencial2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ant_state.aprovado~q\,
	datab => \Selector16~3_combout\,
	datac => \ant_state.ingreso~q\,
	datad => \secuencial2~0_combout\,
	combout => \Selector16~4_combout\);

-- Location: LCCOMB_X9_Y21_N20
CerrarPuerta : cycloneiii_lcell_comb
-- Equation(s):
-- \CerrarPuerta~combout\ = (GLOBAL(\ant_state.inicio~clkctrl_outclk\) & ((\Selector16~4_combout\))) # (!GLOBAL(\ant_state.inicio~clkctrl_outclk\) & (\CerrarPuerta~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ant_state.inicio~clkctrl_outclk\,
	datab => \CerrarPuerta~combout\,
	datad => \Selector16~4_combout\,
	combout => \CerrarPuerta~combout\);

-- Location: IOIBUF_X0_Y23_N1
\Aumento~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Aumento,
	o => \Aumento~input_o\);

-- Location: LCCOMB_X1_Y23_N28
\Muestra[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Muestra[0]~2_combout\ = !Muestra(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Muestra(0),
	combout => \Muestra[0]~2_combout\);

-- Location: IOIBUF_X0_Y24_N1
\VolverA0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VolverA0,
	o => \VolverA0~input_o\);

-- Location: FF_X1_Y23_N29
\Muestra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aumento~input_o\,
	d => \Muestra[0]~2_combout\,
	clrn => \ALT_INV_VolverA0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Muestra(0));

-- Location: LCCOMB_X1_Y23_N18
\Muestra[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Muestra[1]~0_combout\ = Muestra(1) $ (Muestra(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Muestra(1),
	datad => Muestra(0),
	combout => \Muestra[1]~0_combout\);

-- Location: FF_X1_Y23_N19
\Muestra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aumento~input_o\,
	d => \Muestra[1]~0_combout\,
	clrn => \ALT_INV_VolverA0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Muestra(1));

-- Location: LCCOMB_X1_Y23_N4
\Muestra[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Muestra[2]~1_combout\ = Muestra(2) $ (((Muestra(0) & Muestra(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Muestra(0),
	datac => Muestra(2),
	datad => Muestra(1),
	combout => \Muestra[2]~1_combout\);

-- Location: FF_X1_Y23_N5
\Muestra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Aumento~input_o\,
	d => \Muestra[2]~1_combout\,
	clrn => \ALT_INV_VolverA0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Muestra(2));

-- Location: IOIBUF_X0_Y21_N8
\SacaCarro~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SacaCarro,
	o => \SacaCarro~input_o\);

-- Location: LCCOMB_X9_Y21_N30
\Espacios[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Espacios[3]~2_combout\ = (\SacaCarro~input_o\) # ((\PuertaAbiertaCiertoTiempo|Contador2\(2)) # ((\PuertaAbiertaCiertoTiempo|Contador2\(1) & \PuertaAbiertaCiertoTiempo|Contador2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SacaCarro~input_o\,
	datab => \PuertaAbiertaCiertoTiempo|Contador2\(2),
	datac => \PuertaAbiertaCiertoTiempo|Contador2\(1),
	datad => \PuertaAbiertaCiertoTiempo|Contador2\(0),
	combout => \Espacios[3]~2_combout\);

-- Location: CLKCTRL_G4
\Espacios[3]~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Espacios[3]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Espacios[3]~2clkctrl_outclk\);

-- Location: IOIBUF_X0_Y27_N1
\Reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: LCCOMB_X9_Y21_N4
\Espacios[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Espacios[0]~0_combout\ = (!\Reset~input_o\ & (\Espacios[0]~0_combout\ $ (((\SacaCarro~input_o\) # (!\LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Espacios[0]~0_combout\,
	datab => \Reset~input_o\,
	datac => \SacaCarro~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \Espacios[0]~0_combout\);

-- Location: LCCOMB_X9_Y21_N2
\Espacios[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Espacios[1]~1_combout\ = \Espacios[0]~0_combout\ $ (\LessThan0~0_combout\ $ (Espacios(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Espacios[0]~0_combout\,
	datab => \LessThan0~0_combout\,
	datad => Espacios(1),
	combout => \Espacios[1]~1_combout\);

-- Location: LCCOMB_X9_Y21_N14
\Espacios[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- Espacios(1) = (!\Reset~input_o\ & ((GLOBAL(\Espacios[3]~2clkctrl_outclk\) & ((\Espacios[1]~1_combout\))) # (!GLOBAL(\Espacios[3]~2clkctrl_outclk\) & (Espacios(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Espacios(1),
	datab => \Espacios[3]~2clkctrl_outclk\,
	datac => \Espacios[1]~1_combout\,
	datad => \Reset~input_o\,
	combout => Espacios(1));

-- Location: LCCOMB_X9_Y21_N26
\Espacios[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Espacios[2]~3_combout\ = Espacios(2) $ (((\LessThan0~0_combout\ & (!Espacios(1) & !\Espacios[0]~0_combout\)) # (!\LessThan0~0_combout\ & (Espacios(1) & \Espacios[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Espacios(2),
	datab => \LessThan0~0_combout\,
	datac => Espacios(1),
	datad => \Espacios[0]~0_combout\,
	combout => \Espacios[2]~3_combout\);

-- Location: LCCOMB_X9_Y21_N6
\Espacios[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- Espacios(2) = (!\Reset~input_o\ & ((GLOBAL(\Espacios[3]~2clkctrl_outclk\) & (\Espacios[2]~3_combout\)) # (!GLOBAL(\Espacios[3]~2clkctrl_outclk\) & ((Espacios(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Espacios[2]~3_combout\,
	datab => \Reset~input_o\,
	datac => \Espacios[3]~2clkctrl_outclk\,
	datad => Espacios(2),
	combout => Espacios(2));

-- Location: LCCOMB_X9_Y21_N0
\Espacios[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Espacios[3]~4_combout\ = (\LessThan0~0_combout\ & (!Espacios(1) & (!\Espacios[0]~0_combout\ & !Espacios(2)))) # (!\LessThan0~0_combout\ & (Espacios(1) & (\Espacios[0]~0_combout\ & Espacios(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => Espacios(1),
	datac => \Espacios[0]~0_combout\,
	datad => Espacios(2),
	combout => \Espacios[3]~4_combout\);

-- Location: LCCOMB_X9_Y21_N24
\Espacios[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Espacios[3]~5_combout\ = Espacios(3) $ (\Espacios[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Espacios(3),
	datad => \Espacios[3]~4_combout\,
	combout => \Espacios[3]~5_combout\);

-- Location: LCCOMB_X9_Y21_N12
\Espacios[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- Espacios(3) = (!\Reset~input_o\ & ((GLOBAL(\Espacios[3]~2clkctrl_outclk\) & ((\Espacios[3]~5_combout\))) # (!GLOBAL(\Espacios[3]~2clkctrl_outclk\) & (Espacios(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => Espacios(3),
	datac => \Espacios[3]~2clkctrl_outclk\,
	datad => \Espacios[3]~5_combout\,
	combout => Espacios(3));

-- Location: LCCOMB_X33_Y28_N12
\SieteSegmentosEspacios|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SieteSegmentosEspacios|Mux6~0_combout\ = (Espacios(2) & (!Espacios(3) & ((!\Espacios[0]~0_combout\) # (!Espacios(1))))) # (!Espacios(2) & (Espacios(1) $ (((Espacios(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Espacios(2),
	datab => Espacios(1),
	datac => \Espacios[0]~0_combout\,
	datad => Espacios(3),
	combout => \SieteSegmentosEspacios|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y28_N10
\SieteSegmentosEspacios|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SieteSegmentosEspacios|Mux5~0_combout\ = (Espacios(2) & ((Espacios(3)) # ((Espacios(1) & \Espacios[0]~0_combout\)))) # (!Espacios(2) & ((Espacios(1)) # ((\Espacios[0]~0_combout\ & !Espacios(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Espacios(2),
	datab => Espacios(1),
	datac => \Espacios[0]~0_combout\,
	datad => Espacios(3),
	combout => \SieteSegmentosEspacios|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y28_N4
\SieteSegmentosEspacios|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SieteSegmentosEspacios|Mux4~0_combout\ = (\Espacios[0]~0_combout\) # ((Espacios(1) & ((Espacios(3)))) # (!Espacios(1) & (Espacios(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Espacios(2),
	datab => Espacios(1),
	datac => \Espacios[0]~0_combout\,
	datad => Espacios(3),
	combout => \SieteSegmentosEspacios|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y28_N2
\SieteSegmentosEspacios|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SieteSegmentosEspacios|Mux3~0_combout\ = (Espacios(2) & ((Espacios(3)) # (Espacios(1) $ (!\Espacios[0]~0_combout\)))) # (!Espacios(2) & ((Espacios(1) & ((Espacios(3)))) # (!Espacios(1) & (\Espacios[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Espacios(2),
	datab => Espacios(1),
	datac => \Espacios[0]~0_combout\,
	datad => Espacios(3),
	combout => \SieteSegmentosEspacios|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y28_N16
\SieteSegmentosEspacios|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SieteSegmentosEspacios|Mux2~0_combout\ = (Espacios(2) & (((Espacios(3))))) # (!Espacios(2) & (Espacios(1) & ((Espacios(3)) # (!\Espacios[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Espacios(2),
	datab => Espacios(1),
	datac => \Espacios[0]~0_combout\,
	datad => Espacios(3),
	combout => \SieteSegmentosEspacios|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y28_N26
\SieteSegmentosEspacios|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SieteSegmentosEspacios|Mux1~0_combout\ = (Espacios(2) & ((Espacios(3)) # (Espacios(1) $ (\Espacios[0]~0_combout\)))) # (!Espacios(2) & (Espacios(1) & ((Espacios(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Espacios(2),
	datab => Espacios(1),
	datac => \Espacios[0]~0_combout\,
	datad => Espacios(3),
	combout => \SieteSegmentosEspacios|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y28_N0
\SieteSegmentosEspacios|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SieteSegmentosEspacios|Mux0~0_combout\ = (Espacios(1) & (((Espacios(3))))) # (!Espacios(1) & (Espacios(2) $ (((\Espacios[0]~0_combout\ & !Espacios(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Espacios(2),
	datab => Espacios(1),
	datac => \Espacios[0]~0_combout\,
	datad => Espacios(3),
	combout => \SieteSegmentosEspacios|Mux0~0_combout\);

ww_LED_R <= \LED_R~output_o\;

ww_LED_V <= \LED_V~output_o\;

ww_DefAbrirPuerta <= \DefAbrirPuerta~output_o\;

ww_DefCerrarPuerta <= \DefCerrarPuerta~output_o\;

ww_SaliMuestra(0) <= \SaliMuestra[0]~output_o\;

ww_SaliMuestra(1) <= \SaliMuestra[1]~output_o\;

ww_SaliMuestra(2) <= \SaliMuestra[2]~output_o\;

ww_SaliEspacios(0) <= \SaliEspacios[0]~output_o\;

ww_SaliEspacios(1) <= \SaliEspacios[1]~output_o\;

ww_SaliEspacios(2) <= \SaliEspacios[2]~output_o\;

ww_SaliEspacios(3) <= \SaliEspacios[3]~output_o\;

ww_SaliEspacios(4) <= \SaliEspacios[4]~output_o\;

ww_SaliEspacios(5) <= \SaliEspacios[5]~output_o\;

ww_SaliEspacios(6) <= \SaliEspacios[6]~output_o\;

ww_SaliSegUni(0) <= \SaliSegUni[0]~output_o\;

ww_SaliSegUni(1) <= \SaliSegUni[1]~output_o\;

ww_SaliSegUni(2) <= \SaliSegUni[2]~output_o\;

ww_SaliSegUni(3) <= \SaliSegUni[3]~output_o\;

ww_SaliSegUni(4) <= \SaliSegUni[4]~output_o\;

ww_SaliSegUni(5) <= \SaliSegUni[5]~output_o\;

ww_SaliSegUni(6) <= \SaliSegUni[6]~output_o\;

ww_SaliSegDec(0) <= \SaliSegDec[0]~output_o\;

ww_SaliSegDec(1) <= \SaliSegDec[1]~output_o\;

ww_SaliSegDec(2) <= \SaliSegDec[2]~output_o\;

ww_SaliSegDec(3) <= \SaliSegDec[3]~output_o\;

ww_SaliSegDec(4) <= \SaliSegDec[4]~output_o\;

ww_SaliSegDec(5) <= \SaliSegDec[5]~output_o\;

ww_SaliSegDec(6) <= \SaliSegDec[6]~output_o\;

ww_SaliSegCent(0) <= \SaliSegCent[0]~output_o\;

ww_SaliSegCent(1) <= \SaliSegCent[1]~output_o\;

ww_SaliSegCent(2) <= \SaliSegCent[2]~output_o\;

ww_SaliSegCent(3) <= \SaliSegCent[3]~output_o\;

ww_SaliSegCent(4) <= \SaliSegCent[4]~output_o\;

ww_SaliSegCent(5) <= \SaliSegCent[5]~output_o\;

ww_SaliSegCent(6) <= \SaliSegCent[6]~output_o\;
END structure;


