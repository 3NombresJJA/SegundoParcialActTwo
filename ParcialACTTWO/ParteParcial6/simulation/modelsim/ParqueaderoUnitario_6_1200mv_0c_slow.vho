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

-- DATE "04/24/2023 22:37:36"

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

ENTITY 	ParqueaderoUnitario IS
    PORT (
	senalReloj : IN std_logic;
	Entrada : IN std_logic;
	SegUni : OUT std_logic_vector(3 DOWNTO 0);
	SegDec : OUT std_logic_vector(2 DOWNTO 0);
	MinUni : OUT std_logic_vector(3 DOWNTO 0);
	ContRTC : OUT STD.STANDARD.integer range 0 TO 600;
	Felicitacion : OUT std_logic
	);
END ParqueaderoUnitario;

-- Design Ports Information
-- SegUni[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegUni[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegUni[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegUni[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDec[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDec[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegDec[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinUni[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinUni[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinUni[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MinUni[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ContRTC[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ContRTC[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ContRTC[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ContRTC[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ContRTC[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ContRTC[5]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ContRTC[6]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ContRTC[7]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ContRTC[8]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ContRTC[9]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Felicitacion	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senalReloj	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ParqueaderoUnitario IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_senalReloj : std_logic;
SIGNAL ww_Entrada : std_logic;
SIGNAL ww_SegUni : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SegDec : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_MinUni : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ContRTC : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Felicitacion : std_logic;
SIGNAL \senalReloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Paso1|RTCsegUni[3]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SegUni[0]~output_o\ : std_logic;
SIGNAL \SegUni[1]~output_o\ : std_logic;
SIGNAL \SegUni[2]~output_o\ : std_logic;
SIGNAL \SegUni[3]~output_o\ : std_logic;
SIGNAL \SegDec[0]~output_o\ : std_logic;
SIGNAL \SegDec[1]~output_o\ : std_logic;
SIGNAL \SegDec[2]~output_o\ : std_logic;
SIGNAL \MinUni[0]~output_o\ : std_logic;
SIGNAL \MinUni[1]~output_o\ : std_logic;
SIGNAL \MinUni[2]~output_o\ : std_logic;
SIGNAL \MinUni[3]~output_o\ : std_logic;
SIGNAL \ContRTC[0]~output_o\ : std_logic;
SIGNAL \ContRTC[1]~output_o\ : std_logic;
SIGNAL \ContRTC[2]~output_o\ : std_logic;
SIGNAL \ContRTC[3]~output_o\ : std_logic;
SIGNAL \ContRTC[4]~output_o\ : std_logic;
SIGNAL \ContRTC[5]~output_o\ : std_logic;
SIGNAL \ContRTC[6]~output_o\ : std_logic;
SIGNAL \ContRTC[7]~output_o\ : std_logic;
SIGNAL \ContRTC[8]~output_o\ : std_logic;
SIGNAL \ContRTC[9]~output_o\ : std_logic;
SIGNAL \Felicitacion~output_o\ : std_logic;
SIGNAL \senalReloj~input_o\ : std_logic;
SIGNAL \senalReloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \Paso1|SegUni[0]~2_combout\ : std_logic;
SIGNAL \Entrada~input_o\ : std_logic;
SIGNAL \Paso1|Add1~3\ : std_logic;
SIGNAL \Paso1|Add1~4_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[23]~q\ : std_logic;
SIGNAL \Paso1|Equal0~6_combout\ : std_logic;
SIGNAL \Paso1|Add0~0_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[24]~q\ : std_logic;
SIGNAL \Paso1|Add0~47\ : std_logic;
SIGNAL \Paso1|Add0~48_combout\ : std_logic;
SIGNAL \Paso1|Equal0~0_combout\ : std_logic;
SIGNAL \Paso1|Equal0~9_combout\ : std_logic;
SIGNAL \Paso1|Equal0~1_combout\ : std_logic;
SIGNAL \Paso1|Equal0~3_combout\ : std_logic;
SIGNAL \Paso1|Equal0~2_combout\ : std_logic;
SIGNAL \Paso1|Equal0~4_combout\ : std_logic;
SIGNAL \Paso1|Equal0~5_combout\ : std_logic;
SIGNAL \Paso1|count2~0_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[0]~q\ : std_logic;
SIGNAL \Paso1|Add0~1\ : std_logic;
SIGNAL \Paso1|Add0~2_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[1]~q\ : std_logic;
SIGNAL \Paso1|Add0~3\ : std_logic;
SIGNAL \Paso1|Add0~4_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[2]~q\ : std_logic;
SIGNAL \Paso1|Add0~5\ : std_logic;
SIGNAL \Paso1|Add0~6_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[3]~q\ : std_logic;
SIGNAL \Paso1|Add0~7\ : std_logic;
SIGNAL \Paso1|Add0~8_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[4]~q\ : std_logic;
SIGNAL \Paso1|Add0~9\ : std_logic;
SIGNAL \Paso1|Add0~10_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[5]~q\ : std_logic;
SIGNAL \Paso1|Add0~11\ : std_logic;
SIGNAL \Paso1|Add0~12_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[6]~q\ : std_logic;
SIGNAL \Paso1|Add0~13\ : std_logic;
SIGNAL \Paso1|Add0~14_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[7]~q\ : std_logic;
SIGNAL \Paso1|Add0~15\ : std_logic;
SIGNAL \Paso1|Add0~16_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[8]~q\ : std_logic;
SIGNAL \Paso1|Add0~17\ : std_logic;
SIGNAL \Paso1|Add0~18_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[9]~q\ : std_logic;
SIGNAL \Paso1|Add0~19\ : std_logic;
SIGNAL \Paso1|Add0~20_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[10]~q\ : std_logic;
SIGNAL \Paso1|Add0~21\ : std_logic;
SIGNAL \Paso1|Add0~22_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[11]~q\ : std_logic;
SIGNAL \Paso1|Add0~23\ : std_logic;
SIGNAL \Paso1|Add0~24_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[12]~q\ : std_logic;
SIGNAL \Paso1|Add0~25\ : std_logic;
SIGNAL \Paso1|Add0~26_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[13]~q\ : std_logic;
SIGNAL \Paso1|Add0~27\ : std_logic;
SIGNAL \Paso1|Add0~28_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[14]~q\ : std_logic;
SIGNAL \Paso1|Add0~29\ : std_logic;
SIGNAL \Paso1|Add0~30_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[15]~q\ : std_logic;
SIGNAL \Paso1|Add0~31\ : std_logic;
SIGNAL \Paso1|Add0~32_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[16]~q\ : std_logic;
SIGNAL \Paso1|Add0~33\ : std_logic;
SIGNAL \Paso1|Add0~34_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[17]~q\ : std_logic;
SIGNAL \Paso1|Add0~35\ : std_logic;
SIGNAL \Paso1|Add0~36_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[18]~q\ : std_logic;
SIGNAL \Paso1|Add0~37\ : std_logic;
SIGNAL \Paso1|Add0~38_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[19]~q\ : std_logic;
SIGNAL \Paso1|Add0~39\ : std_logic;
SIGNAL \Paso1|Add0~40_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[20]~q\ : std_logic;
SIGNAL \Paso1|Add0~41\ : std_logic;
SIGNAL \Paso1|Add0~42_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[21]~q\ : std_logic;
SIGNAL \Paso1|Add0~43\ : std_logic;
SIGNAL \Paso1|Add0~44_combout\ : std_logic;
SIGNAL \Paso1|contar_tiempo:count2[22]~q\ : std_logic;
SIGNAL \Paso1|Add0~45\ : std_logic;
SIGNAL \Paso1|Add0~46_combout\ : std_logic;
SIGNAL \Paso1|contador[5]~2_combout\ : std_logic;
SIGNAL \Paso1|contador[5]~3_combout\ : std_logic;
SIGNAL \Paso1|Add1~5\ : std_logic;
SIGNAL \Paso1|Add1~6_combout\ : std_logic;
SIGNAL \Paso1|Add1~7\ : std_logic;
SIGNAL \Paso1|Add1~8_combout\ : std_logic;
SIGNAL \Paso1|Add1~9\ : std_logic;
SIGNAL \Paso1|Add1~10_combout\ : std_logic;
SIGNAL \Paso1|contador[5]~5_combout\ : std_logic;
SIGNAL \Paso1|LessThan1~0_combout\ : std_logic;
SIGNAL \Paso1|Equal0~7_combout\ : std_logic;
SIGNAL \Paso1|Equal0~8_combout\ : std_logic;
SIGNAL \Paso1|contador[0]~4_combout\ : std_logic;
SIGNAL \Paso1|Add1~1_cout\ : std_logic;
SIGNAL \Paso1|Add1~2_combout\ : std_logic;
SIGNAL \Paso1|contador[1]~6_combout\ : std_logic;
SIGNAL \Paso1|LessThan1~1_combout\ : std_logic;
SIGNAL \Paso1|RTCsegUni[3]~0_combout\ : std_logic;
SIGNAL \Paso1|RTCsegUni[3]~0clkctrl_outclk\ : std_logic;
SIGNAL \Paso1|alarma_activa~0_combout\ : std_logic;
SIGNAL \Paso1|alarma_activa~q\ : std_logic;
SIGNAL \Paso1|Felicitacion~combout\ : std_logic;
SIGNAL \Paso2|SegUni[0]~3_combout\ : std_logic;
SIGNAL \Paso2|RTCsegUni[0]~0_combout\ : std_logic;
SIGNAL \RealsegUni~0_combout\ : std_logic;
SIGNAL \Paso2|SegUni[2]~1_combout\ : std_logic;
SIGNAL \Paso2|SegUni~2_combout\ : std_logic;
SIGNAL \Paso2|SegUni~0_combout\ : std_logic;
SIGNAL \Paso1|SegUni~1_combout\ : std_logic;
SIGNAL \Paso1|Add2~0_combout\ : std_logic;
SIGNAL \Paso1|SegUni~0_combout\ : std_logic;
SIGNAL \RealsegUni~1_combout\ : std_logic;
SIGNAL \RealsegUni~2_combout\ : std_logic;
SIGNAL \RealsegUni~3_combout\ : std_logic;
SIGNAL \Paso2|SegDec[0]~2_combout\ : std_logic;
SIGNAL \Paso2|Equal1~0_combout\ : std_logic;
SIGNAL \Paso1|SegDec[0]~2_combout\ : std_logic;
SIGNAL \Paso1|SegDec[0]~0_combout\ : std_logic;
SIGNAL \Paso1|SegDec[0]~1_combout\ : std_logic;
SIGNAL \RealSegDec~0_combout\ : std_logic;
SIGNAL \Paso2|SegDec~1_combout\ : std_logic;
SIGNAL \Paso2|SegDec~0_combout\ : std_logic;
SIGNAL \Paso1|Add3~0_combout\ : std_logic;
SIGNAL \RealSegDec~1_combout\ : std_logic;
SIGNAL \Paso1|Add3~1_combout\ : std_logic;
SIGNAL \RealSegDec~2_combout\ : std_logic;
SIGNAL \Paso2|MinUni[0]~5_combout\ : std_logic;
SIGNAL \Paso2|MinUni[3]~0_combout\ : std_logic;
SIGNAL \Paso2|MinUni[3]~1_combout\ : std_logic;
SIGNAL \Ultimisima~0_combout\ : std_logic;
SIGNAL \Paso2|MinUni[2]~3_combout\ : std_logic;
SIGNAL \Paso2|MinUni~4_combout\ : std_logic;
SIGNAL \Paso2|MinUni~2_combout\ : std_logic;
SIGNAL \Ultimisima~1_combout\ : std_logic;
SIGNAL \Ultimisima~2_combout\ : std_logic;
SIGNAL \Ultimisima~3_combout\ : std_logic;
SIGNAL \Paso1|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Paso1|SegUni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Paso1|SegDec\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Paso1|RTCsegUni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Paso1|RTCsegDec\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Paso2|SegUni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Paso2|SegDec\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Paso2|RTCsegUni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Paso2|RTCsegDec\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Paso2|RTCMin\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Paso2|MinUni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Paso1|ALT_INV_Felicitacion~combout\ : std_logic;

BEGIN

ww_senalReloj <= senalReloj;
ww_Entrada <= Entrada;
SegUni <= ww_SegUni;
SegDec <= ww_SegDec;
MinUni <= ww_MinUni;
ContRTC <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_ContRTC));
Felicitacion <= ww_Felicitacion;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\senalReloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \senalReloj~input_o\);

\Paso1|RTCsegUni[3]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Paso1|RTCsegUni[3]~0_combout\);
\Paso1|ALT_INV_Felicitacion~combout\ <= NOT \Paso1|Felicitacion~combout\;

-- Location: IOOBUF_X28_Y29_N9
\SegUni[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RealsegUni~0_combout\,
	devoe => ww_devoe,
	o => \SegUni[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\SegUni[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RealsegUni~1_combout\,
	devoe => ww_devoe,
	o => \SegUni[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\SegUni[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RealsegUni~2_combout\,
	devoe => ww_devoe,
	o => \SegUni[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\SegUni[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RealsegUni~3_combout\,
	devoe => ww_devoe,
	o => \SegUni[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\SegDec[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RealSegDec~0_combout\,
	devoe => ww_devoe,
	o => \SegDec[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\SegDec[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RealSegDec~1_combout\,
	devoe => ww_devoe,
	o => \SegDec[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\SegDec[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RealSegDec~2_combout\,
	devoe => ww_devoe,
	o => \SegDec[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\MinUni[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ultimisima~0_combout\,
	devoe => ww_devoe,
	o => \MinUni[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\MinUni[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ultimisima~1_combout\,
	devoe => ww_devoe,
	o => \MinUni[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\MinUni[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ultimisima~2_combout\,
	devoe => ww_devoe,
	o => \MinUni[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\MinUni[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ultimisima~3_combout\,
	devoe => ww_devoe,
	o => \MinUni[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\ContRTC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ContRTC[0]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\ContRTC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ContRTC[1]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\ContRTC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ContRTC[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\ContRTC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ContRTC[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\ContRTC[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ContRTC[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\ContRTC[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ContRTC[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N9
\ContRTC[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ContRTC[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\ContRTC[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ContRTC[7]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\ContRTC[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ContRTC[8]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\ContRTC[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ContRTC[9]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\Felicitacion~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Paso1|Felicitacion~combout\,
	devoe => ww_devoe,
	o => \Felicitacion~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\senalReloj~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senalReloj,
	o => \senalReloj~input_o\);

-- Location: CLKCTRL_G4
\senalReloj~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \senalReloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \senalReloj~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y28_N24
\Paso1|SegUni[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|SegUni[0]~2_combout\ = !\Paso1|SegUni\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Paso1|SegUni\(0),
	combout => \Paso1|SegUni[0]~2_combout\);

-- Location: IOIBUF_X30_Y29_N15
\Entrada~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entrada,
	o => \Entrada~input_o\);

-- Location: LCCOMB_X30_Y27_N16
\Paso1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add1~2_combout\ = (\Paso1|contador\(1) & (!\Paso1|Add1~1_cout\)) # (!\Paso1|contador\(1) & (\Paso1|Add1~1_cout\ & VCC))
-- \Paso1|Add1~3\ = CARRY((\Paso1|contador\(1) & !\Paso1|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contador\(1),
	datad => VCC,
	cin => \Paso1|Add1~1_cout\,
	combout => \Paso1|Add1~2_combout\,
	cout => \Paso1|Add1~3\);

-- Location: LCCOMB_X30_Y27_N18
\Paso1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add1~4_combout\ = (\Paso1|contador\(2) & ((GND) # (!\Paso1|Add1~3\))) # (!\Paso1|contador\(2) & (\Paso1|Add1~3\ $ (GND)))
-- \Paso1|Add1~5\ = CARRY((\Paso1|contador\(2)) # (!\Paso1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contador\(2),
	datad => VCC,
	cin => \Paso1|Add1~3\,
	combout => \Paso1|Add1~4_combout\,
	cout => \Paso1|Add1~5\);

-- Location: FF_X31_Y27_N23
\Paso1|contar_tiempo:count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~46_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[23]~q\);

-- Location: LCCOMB_X30_Y27_N8
\Paso1|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Equal0~6_combout\ = (!\Paso1|Add0~32_combout\ & (!\Paso1|Add0~36_combout\ & (!\Paso1|Add0~38_combout\ & !\Paso1|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Add0~32_combout\,
	datab => \Paso1|Add0~36_combout\,
	datac => \Paso1|Add0~38_combout\,
	datad => \Paso1|Add0~34_combout\,
	combout => \Paso1|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y28_N8
\Paso1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~0_combout\ = \Paso1|contar_tiempo:count2[0]~q\ $ (VCC)
-- \Paso1|Add0~1\ = CARRY(\Paso1|contar_tiempo:count2[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contar_tiempo:count2[0]~q\,
	datad => VCC,
	combout => \Paso1|Add0~0_combout\,
	cout => \Paso1|Add0~1\);

-- Location: FF_X31_Y27_N25
\Paso1|contar_tiempo:count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~48_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[24]~q\);

-- Location: LCCOMB_X31_Y27_N22
\Paso1|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~46_combout\ = (\Paso1|contar_tiempo:count2[23]~q\ & (!\Paso1|Add0~45\)) # (!\Paso1|contar_tiempo:count2[23]~q\ & ((\Paso1|Add0~45\) # (GND)))
-- \Paso1|Add0~47\ = CARRY((!\Paso1|Add0~45\) # (!\Paso1|contar_tiempo:count2[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contar_tiempo:count2[23]~q\,
	datad => VCC,
	cin => \Paso1|Add0~45\,
	combout => \Paso1|Add0~46_combout\,
	cout => \Paso1|Add0~47\);

-- Location: LCCOMB_X31_Y27_N24
\Paso1|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~48_combout\ = \Paso1|Add0~47\ $ (!\Paso1|contar_tiempo:count2[24]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Paso1|contar_tiempo:count2[24]~q\,
	cin => \Paso1|Add0~47\,
	combout => \Paso1|Add0~48_combout\);

-- Location: LCCOMB_X31_Y27_N30
\Paso1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Equal0~0_combout\ = (!\Paso1|Add0~40_combout\ & !\Paso1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|Add0~40_combout\,
	datad => \Paso1|Add0~42_combout\,
	combout => \Paso1|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y27_N8
\Paso1|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Equal0~9_combout\ = (!\Paso1|Add0~44_combout\ & (!\Paso1|Add0~46_combout\ & (!\Paso1|Add0~48_combout\ & \Paso1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Add0~44_combout\,
	datab => \Paso1|Add0~46_combout\,
	datac => \Paso1|Add0~48_combout\,
	datad => \Paso1|Equal0~0_combout\,
	combout => \Paso1|Equal0~9_combout\);

-- Location: LCCOMB_X31_Y28_N6
\Paso1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Equal0~1_combout\ = (\Paso1|Add0~0_combout\ & (!\Paso1|Add0~2_combout\ & (!\Paso1|Add0~4_combout\ & !\Paso1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Add0~0_combout\,
	datab => \Paso1|Add0~2_combout\,
	datac => \Paso1|Add0~4_combout\,
	datad => \Paso1|Add0~6_combout\,
	combout => \Paso1|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y28_N2
\Paso1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Equal0~3_combout\ = (!\Paso1|Add0~18_combout\ & (!\Paso1|Add0~16_combout\ & (!\Paso1|Add0~22_combout\ & !\Paso1|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Add0~18_combout\,
	datab => \Paso1|Add0~16_combout\,
	datac => \Paso1|Add0~22_combout\,
	datad => \Paso1|Add0~20_combout\,
	combout => \Paso1|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y28_N0
\Paso1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Equal0~2_combout\ = (!\Paso1|Add0~14_combout\ & (!\Paso1|Add0~10_combout\ & (!\Paso1|Add0~8_combout\ & !\Paso1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Add0~14_combout\,
	datab => \Paso1|Add0~10_combout\,
	datac => \Paso1|Add0~8_combout\,
	datad => \Paso1|Add0~12_combout\,
	combout => \Paso1|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y27_N28
\Paso1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Equal0~4_combout\ = (!\Paso1|Add0~30_combout\ & (!\Paso1|Add0~24_combout\ & (!\Paso1|Add0~28_combout\ & !\Paso1|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Add0~30_combout\,
	datab => \Paso1|Add0~24_combout\,
	datac => \Paso1|Add0~28_combout\,
	datad => \Paso1|Add0~26_combout\,
	combout => \Paso1|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y27_N10
\Paso1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Equal0~5_combout\ = (\Paso1|Equal0~1_combout\ & (\Paso1|Equal0~3_combout\ & (\Paso1|Equal0~2_combout\ & \Paso1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Equal0~1_combout\,
	datab => \Paso1|Equal0~3_combout\,
	datac => \Paso1|Equal0~2_combout\,
	datad => \Paso1|Equal0~4_combout\,
	combout => \Paso1|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y28_N4
\Paso1|count2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|count2~0_combout\ = (\Paso1|Add0~0_combout\ & (((!\Paso1|Equal0~5_combout\) # (!\Paso1|Equal0~9_combout\)) # (!\Paso1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Equal0~6_combout\,
	datab => \Paso1|Add0~0_combout\,
	datac => \Paso1|Equal0~9_combout\,
	datad => \Paso1|Equal0~5_combout\,
	combout => \Paso1|count2~0_combout\);

-- Location: FF_X31_Y28_N5
\Paso1|contar_tiempo:count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|count2~0_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[0]~q\);

-- Location: LCCOMB_X31_Y28_N10
\Paso1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~2_combout\ = (\Paso1|contar_tiempo:count2[1]~q\ & (!\Paso1|Add0~1\)) # (!\Paso1|contar_tiempo:count2[1]~q\ & ((\Paso1|Add0~1\) # (GND)))
-- \Paso1|Add0~3\ = CARRY((!\Paso1|Add0~1\) # (!\Paso1|contar_tiempo:count2[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[1]~q\,
	datad => VCC,
	cin => \Paso1|Add0~1\,
	combout => \Paso1|Add0~2_combout\,
	cout => \Paso1|Add0~3\);

-- Location: FF_X31_Y28_N11
\Paso1|contar_tiempo:count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~2_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[1]~q\);

-- Location: LCCOMB_X31_Y28_N12
\Paso1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~4_combout\ = (\Paso1|contar_tiempo:count2[2]~q\ & (\Paso1|Add0~3\ $ (GND))) # (!\Paso1|contar_tiempo:count2[2]~q\ & (!\Paso1|Add0~3\ & VCC))
-- \Paso1|Add0~5\ = CARRY((\Paso1|contar_tiempo:count2[2]~q\ & !\Paso1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[2]~q\,
	datad => VCC,
	cin => \Paso1|Add0~3\,
	combout => \Paso1|Add0~4_combout\,
	cout => \Paso1|Add0~5\);

-- Location: FF_X31_Y28_N13
\Paso1|contar_tiempo:count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~4_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[2]~q\);

-- Location: LCCOMB_X31_Y28_N14
\Paso1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~6_combout\ = (\Paso1|contar_tiempo:count2[3]~q\ & (!\Paso1|Add0~5\)) # (!\Paso1|contar_tiempo:count2[3]~q\ & ((\Paso1|Add0~5\) # (GND)))
-- \Paso1|Add0~7\ = CARRY((!\Paso1|Add0~5\) # (!\Paso1|contar_tiempo:count2[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contar_tiempo:count2[3]~q\,
	datad => VCC,
	cin => \Paso1|Add0~5\,
	combout => \Paso1|Add0~6_combout\,
	cout => \Paso1|Add0~7\);

-- Location: FF_X31_Y28_N15
\Paso1|contar_tiempo:count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~6_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[3]~q\);

-- Location: LCCOMB_X31_Y28_N16
\Paso1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~8_combout\ = (\Paso1|contar_tiempo:count2[4]~q\ & (\Paso1|Add0~7\ $ (GND))) # (!\Paso1|contar_tiempo:count2[4]~q\ & (!\Paso1|Add0~7\ & VCC))
-- \Paso1|Add0~9\ = CARRY((\Paso1|contar_tiempo:count2[4]~q\ & !\Paso1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contar_tiempo:count2[4]~q\,
	datad => VCC,
	cin => \Paso1|Add0~7\,
	combout => \Paso1|Add0~8_combout\,
	cout => \Paso1|Add0~9\);

-- Location: FF_X31_Y28_N17
\Paso1|contar_tiempo:count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~8_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[4]~q\);

-- Location: LCCOMB_X31_Y28_N18
\Paso1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~10_combout\ = (\Paso1|contar_tiempo:count2[5]~q\ & (!\Paso1|Add0~9\)) # (!\Paso1|contar_tiempo:count2[5]~q\ & ((\Paso1|Add0~9\) # (GND)))
-- \Paso1|Add0~11\ = CARRY((!\Paso1|Add0~9\) # (!\Paso1|contar_tiempo:count2[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[5]~q\,
	datad => VCC,
	cin => \Paso1|Add0~9\,
	combout => \Paso1|Add0~10_combout\,
	cout => \Paso1|Add0~11\);

-- Location: FF_X31_Y28_N19
\Paso1|contar_tiempo:count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~10_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[5]~q\);

-- Location: LCCOMB_X31_Y28_N20
\Paso1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~12_combout\ = (\Paso1|contar_tiempo:count2[6]~q\ & (\Paso1|Add0~11\ $ (GND))) # (!\Paso1|contar_tiempo:count2[6]~q\ & (!\Paso1|Add0~11\ & VCC))
-- \Paso1|Add0~13\ = CARRY((\Paso1|contar_tiempo:count2[6]~q\ & !\Paso1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[6]~q\,
	datad => VCC,
	cin => \Paso1|Add0~11\,
	combout => \Paso1|Add0~12_combout\,
	cout => \Paso1|Add0~13\);

-- Location: FF_X31_Y28_N21
\Paso1|contar_tiempo:count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~12_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[6]~q\);

-- Location: LCCOMB_X31_Y28_N22
\Paso1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~14_combout\ = (\Paso1|contar_tiempo:count2[7]~q\ & (!\Paso1|Add0~13\)) # (!\Paso1|contar_tiempo:count2[7]~q\ & ((\Paso1|Add0~13\) # (GND)))
-- \Paso1|Add0~15\ = CARRY((!\Paso1|Add0~13\) # (!\Paso1|contar_tiempo:count2[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contar_tiempo:count2[7]~q\,
	datad => VCC,
	cin => \Paso1|Add0~13\,
	combout => \Paso1|Add0~14_combout\,
	cout => \Paso1|Add0~15\);

-- Location: FF_X31_Y28_N23
\Paso1|contar_tiempo:count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~14_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[7]~q\);

-- Location: LCCOMB_X31_Y28_N24
\Paso1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~16_combout\ = (\Paso1|contar_tiempo:count2[8]~q\ & (\Paso1|Add0~15\ $ (GND))) # (!\Paso1|contar_tiempo:count2[8]~q\ & (!\Paso1|Add0~15\ & VCC))
-- \Paso1|Add0~17\ = CARRY((\Paso1|contar_tiempo:count2[8]~q\ & !\Paso1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[8]~q\,
	datad => VCC,
	cin => \Paso1|Add0~15\,
	combout => \Paso1|Add0~16_combout\,
	cout => \Paso1|Add0~17\);

-- Location: FF_X31_Y28_N25
\Paso1|contar_tiempo:count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~16_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[8]~q\);

-- Location: LCCOMB_X31_Y28_N26
\Paso1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~18_combout\ = (\Paso1|contar_tiempo:count2[9]~q\ & (!\Paso1|Add0~17\)) # (!\Paso1|contar_tiempo:count2[9]~q\ & ((\Paso1|Add0~17\) # (GND)))
-- \Paso1|Add0~19\ = CARRY((!\Paso1|Add0~17\) # (!\Paso1|contar_tiempo:count2[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contar_tiempo:count2[9]~q\,
	datad => VCC,
	cin => \Paso1|Add0~17\,
	combout => \Paso1|Add0~18_combout\,
	cout => \Paso1|Add0~19\);

-- Location: FF_X31_Y28_N27
\Paso1|contar_tiempo:count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~18_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[9]~q\);

-- Location: LCCOMB_X31_Y28_N28
\Paso1|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~20_combout\ = (\Paso1|contar_tiempo:count2[10]~q\ & (\Paso1|Add0~19\ $ (GND))) # (!\Paso1|contar_tiempo:count2[10]~q\ & (!\Paso1|Add0~19\ & VCC))
-- \Paso1|Add0~21\ = CARRY((\Paso1|contar_tiempo:count2[10]~q\ & !\Paso1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[10]~q\,
	datad => VCC,
	cin => \Paso1|Add0~19\,
	combout => \Paso1|Add0~20_combout\,
	cout => \Paso1|Add0~21\);

-- Location: FF_X31_Y28_N29
\Paso1|contar_tiempo:count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~20_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[10]~q\);

-- Location: LCCOMB_X31_Y28_N30
\Paso1|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~22_combout\ = (\Paso1|contar_tiempo:count2[11]~q\ & (!\Paso1|Add0~21\)) # (!\Paso1|contar_tiempo:count2[11]~q\ & ((\Paso1|Add0~21\) # (GND)))
-- \Paso1|Add0~23\ = CARRY((!\Paso1|Add0~21\) # (!\Paso1|contar_tiempo:count2[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contar_tiempo:count2[11]~q\,
	datad => VCC,
	cin => \Paso1|Add0~21\,
	combout => \Paso1|Add0~22_combout\,
	cout => \Paso1|Add0~23\);

-- Location: FF_X31_Y28_N31
\Paso1|contar_tiempo:count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~22_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[11]~q\);

-- Location: LCCOMB_X31_Y27_N0
\Paso1|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~24_combout\ = (\Paso1|contar_tiempo:count2[12]~q\ & (\Paso1|Add0~23\ $ (GND))) # (!\Paso1|contar_tiempo:count2[12]~q\ & (!\Paso1|Add0~23\ & VCC))
-- \Paso1|Add0~25\ = CARRY((\Paso1|contar_tiempo:count2[12]~q\ & !\Paso1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[12]~q\,
	datad => VCC,
	cin => \Paso1|Add0~23\,
	combout => \Paso1|Add0~24_combout\,
	cout => \Paso1|Add0~25\);

-- Location: FF_X31_Y27_N1
\Paso1|contar_tiempo:count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~24_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[12]~q\);

-- Location: LCCOMB_X31_Y27_N2
\Paso1|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~26_combout\ = (\Paso1|contar_tiempo:count2[13]~q\ & (!\Paso1|Add0~25\)) # (!\Paso1|contar_tiempo:count2[13]~q\ & ((\Paso1|Add0~25\) # (GND)))
-- \Paso1|Add0~27\ = CARRY((!\Paso1|Add0~25\) # (!\Paso1|contar_tiempo:count2[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contar_tiempo:count2[13]~q\,
	datad => VCC,
	cin => \Paso1|Add0~25\,
	combout => \Paso1|Add0~26_combout\,
	cout => \Paso1|Add0~27\);

-- Location: FF_X31_Y27_N3
\Paso1|contar_tiempo:count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~26_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[13]~q\);

-- Location: LCCOMB_X31_Y27_N4
\Paso1|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~28_combout\ = (\Paso1|contar_tiempo:count2[14]~q\ & (\Paso1|Add0~27\ $ (GND))) # (!\Paso1|contar_tiempo:count2[14]~q\ & (!\Paso1|Add0~27\ & VCC))
-- \Paso1|Add0~29\ = CARRY((\Paso1|contar_tiempo:count2[14]~q\ & !\Paso1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[14]~q\,
	datad => VCC,
	cin => \Paso1|Add0~27\,
	combout => \Paso1|Add0~28_combout\,
	cout => \Paso1|Add0~29\);

-- Location: FF_X31_Y27_N5
\Paso1|contar_tiempo:count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~28_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[14]~q\);

-- Location: LCCOMB_X31_Y27_N6
\Paso1|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~30_combout\ = (\Paso1|contar_tiempo:count2[15]~q\ & (!\Paso1|Add0~29\)) # (!\Paso1|contar_tiempo:count2[15]~q\ & ((\Paso1|Add0~29\) # (GND)))
-- \Paso1|Add0~31\ = CARRY((!\Paso1|Add0~29\) # (!\Paso1|contar_tiempo:count2[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contar_tiempo:count2[15]~q\,
	datad => VCC,
	cin => \Paso1|Add0~29\,
	combout => \Paso1|Add0~30_combout\,
	cout => \Paso1|Add0~31\);

-- Location: FF_X31_Y27_N7
\Paso1|contar_tiempo:count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~30_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[15]~q\);

-- Location: LCCOMB_X31_Y27_N8
\Paso1|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~32_combout\ = (\Paso1|contar_tiempo:count2[16]~q\ & (\Paso1|Add0~31\ $ (GND))) # (!\Paso1|contar_tiempo:count2[16]~q\ & (!\Paso1|Add0~31\ & VCC))
-- \Paso1|Add0~33\ = CARRY((\Paso1|contar_tiempo:count2[16]~q\ & !\Paso1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contar_tiempo:count2[16]~q\,
	datad => VCC,
	cin => \Paso1|Add0~31\,
	combout => \Paso1|Add0~32_combout\,
	cout => \Paso1|Add0~33\);

-- Location: FF_X31_Y27_N9
\Paso1|contar_tiempo:count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~32_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[16]~q\);

-- Location: LCCOMB_X31_Y27_N10
\Paso1|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~34_combout\ = (\Paso1|contar_tiempo:count2[17]~q\ & (!\Paso1|Add0~33\)) # (!\Paso1|contar_tiempo:count2[17]~q\ & ((\Paso1|Add0~33\) # (GND)))
-- \Paso1|Add0~35\ = CARRY((!\Paso1|Add0~33\) # (!\Paso1|contar_tiempo:count2[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[17]~q\,
	datad => VCC,
	cin => \Paso1|Add0~33\,
	combout => \Paso1|Add0~34_combout\,
	cout => \Paso1|Add0~35\);

-- Location: FF_X31_Y27_N11
\Paso1|contar_tiempo:count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~34_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[17]~q\);

-- Location: LCCOMB_X31_Y27_N12
\Paso1|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~36_combout\ = (\Paso1|contar_tiempo:count2[18]~q\ & (\Paso1|Add0~35\ $ (GND))) # (!\Paso1|contar_tiempo:count2[18]~q\ & (!\Paso1|Add0~35\ & VCC))
-- \Paso1|Add0~37\ = CARRY((\Paso1|contar_tiempo:count2[18]~q\ & !\Paso1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[18]~q\,
	datad => VCC,
	cin => \Paso1|Add0~35\,
	combout => \Paso1|Add0~36_combout\,
	cout => \Paso1|Add0~37\);

-- Location: FF_X31_Y27_N13
\Paso1|contar_tiempo:count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~36_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[18]~q\);

-- Location: LCCOMB_X31_Y27_N14
\Paso1|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~38_combout\ = (\Paso1|contar_tiempo:count2[19]~q\ & (!\Paso1|Add0~37\)) # (!\Paso1|contar_tiempo:count2[19]~q\ & ((\Paso1|Add0~37\) # (GND)))
-- \Paso1|Add0~39\ = CARRY((!\Paso1|Add0~37\) # (!\Paso1|contar_tiempo:count2[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contar_tiempo:count2[19]~q\,
	datad => VCC,
	cin => \Paso1|Add0~37\,
	combout => \Paso1|Add0~38_combout\,
	cout => \Paso1|Add0~39\);

-- Location: FF_X31_Y27_N15
\Paso1|contar_tiempo:count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~38_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[19]~q\);

-- Location: LCCOMB_X31_Y27_N16
\Paso1|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~40_combout\ = (\Paso1|contar_tiempo:count2[20]~q\ & (\Paso1|Add0~39\ $ (GND))) # (!\Paso1|contar_tiempo:count2[20]~q\ & (!\Paso1|Add0~39\ & VCC))
-- \Paso1|Add0~41\ = CARRY((\Paso1|contar_tiempo:count2[20]~q\ & !\Paso1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[20]~q\,
	datad => VCC,
	cin => \Paso1|Add0~39\,
	combout => \Paso1|Add0~40_combout\,
	cout => \Paso1|Add0~41\);

-- Location: FF_X31_Y27_N17
\Paso1|contar_tiempo:count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~40_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[20]~q\);

-- Location: LCCOMB_X31_Y27_N18
\Paso1|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~42_combout\ = (\Paso1|contar_tiempo:count2[21]~q\ & (!\Paso1|Add0~41\)) # (!\Paso1|contar_tiempo:count2[21]~q\ & ((\Paso1|Add0~41\) # (GND)))
-- \Paso1|Add0~43\ = CARRY((!\Paso1|Add0~41\) # (!\Paso1|contar_tiempo:count2[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[21]~q\,
	datad => VCC,
	cin => \Paso1|Add0~41\,
	combout => \Paso1|Add0~42_combout\,
	cout => \Paso1|Add0~43\);

-- Location: FF_X31_Y27_N19
\Paso1|contar_tiempo:count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~42_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[21]~q\);

-- Location: LCCOMB_X31_Y27_N20
\Paso1|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add0~44_combout\ = (\Paso1|contar_tiempo:count2[22]~q\ & (\Paso1|Add0~43\ $ (GND))) # (!\Paso1|contar_tiempo:count2[22]~q\ & (!\Paso1|Add0~43\ & VCC))
-- \Paso1|Add0~45\ = CARRY((\Paso1|contar_tiempo:count2[22]~q\ & !\Paso1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contar_tiempo:count2[22]~q\,
	datad => VCC,
	cin => \Paso1|Add0~43\,
	combout => \Paso1|Add0~44_combout\,
	cout => \Paso1|Add0~45\);

-- Location: FF_X31_Y27_N21
\Paso1|contar_tiempo:count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add0~44_combout\,
	ena => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contar_tiempo:count2[22]~q\);

-- Location: LCCOMB_X30_Y27_N28
\Paso1|contador[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|contador[5]~2_combout\ = (\Paso1|LessThan1~1_combout\ & (!\Paso1|Add0~44_combout\ & (\Paso1|Equal0~6_combout\ & \Paso1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|LessThan1~1_combout\,
	datab => \Paso1|Add0~44_combout\,
	datac => \Paso1|Equal0~6_combout\,
	datad => \Paso1|Equal0~5_combout\,
	combout => \Paso1|contador[5]~2_combout\);

-- Location: LCCOMB_X30_Y27_N6
\Paso1|contador[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|contador[5]~3_combout\ = (!\Paso1|Add0~46_combout\ & (!\Paso1|Add0~48_combout\ & (\Paso1|Equal0~0_combout\ & \Paso1|contador[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Add0~46_combout\,
	datab => \Paso1|Add0~48_combout\,
	datac => \Paso1|Equal0~0_combout\,
	datad => \Paso1|contador[5]~2_combout\,
	combout => \Paso1|contador[5]~3_combout\);

-- Location: FF_X30_Y27_N19
\Paso1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~input_o\,
	d => \Paso1|Add1~4_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|contador[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contador\(2));

-- Location: LCCOMB_X30_Y27_N20
\Paso1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add1~6_combout\ = (\Paso1|contador\(3) & (\Paso1|Add1~5\ & VCC)) # (!\Paso1|contador\(3) & (!\Paso1|Add1~5\))
-- \Paso1|Add1~7\ = CARRY((!\Paso1|contador\(3) & !\Paso1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contador\(3),
	datad => VCC,
	cin => \Paso1|Add1~5\,
	combout => \Paso1|Add1~6_combout\,
	cout => \Paso1|Add1~7\);

-- Location: FF_X30_Y27_N21
\Paso1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~input_o\,
	d => \Paso1|Add1~6_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|contador[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contador\(3));

-- Location: LCCOMB_X30_Y27_N22
\Paso1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add1~8_combout\ = (\Paso1|contador\(4) & ((GND) # (!\Paso1|Add1~7\))) # (!\Paso1|contador\(4) & (\Paso1|Add1~7\ $ (GND)))
-- \Paso1|Add1~9\ = CARRY((\Paso1|contador\(4)) # (!\Paso1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contador\(4),
	datad => VCC,
	cin => \Paso1|Add1~7\,
	combout => \Paso1|Add1~8_combout\,
	cout => \Paso1|Add1~9\);

-- Location: FF_X30_Y27_N23
\Paso1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~input_o\,
	d => \Paso1|Add1~8_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|contador[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contador\(4));

-- Location: LCCOMB_X30_Y27_N24
\Paso1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add1~10_combout\ = \Paso1|contador\(5) $ (\Paso1|Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contador\(5),
	cin => \Paso1|Add1~9\,
	combout => \Paso1|Add1~10_combout\);

-- Location: LCCOMB_X30_Y27_N26
\Paso1|contador[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|contador[5]~5_combout\ = !\Paso1|Add1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Paso1|Add1~10_combout\,
	combout => \Paso1|contador[5]~5_combout\);

-- Location: FF_X30_Y27_N27
\Paso1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~input_o\,
	d => \Paso1|contador[5]~5_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|contador[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contador\(5));

-- Location: LCCOMB_X30_Y27_N2
\Paso1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|LessThan1~0_combout\ = (\Paso1|contador\(4)) # ((\Paso1|contador\(3)) # ((\Paso1|contador\(2)) # (!\Paso1|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contador\(4),
	datab => \Paso1|contador\(3),
	datac => \Paso1|contador\(5),
	datad => \Paso1|contador\(2),
	combout => \Paso1|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y27_N26
\Paso1|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Equal0~7_combout\ = (!\Paso1|Add0~40_combout\ & (!\Paso1|Add0~42_combout\ & (!\Paso1|Add0~46_combout\ & !\Paso1|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Add0~40_combout\,
	datab => \Paso1|Add0~42_combout\,
	datac => \Paso1|Add0~46_combout\,
	datad => \Paso1|Add0~44_combout\,
	combout => \Paso1|Equal0~7_combout\);

-- Location: LCCOMB_X29_Y27_N28
\Paso1|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Equal0~8_combout\ = (!\Paso1|Add0~48_combout\ & (\Paso1|Equal0~6_combout\ & (\Paso1|Equal0~5_combout\ & \Paso1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Add0~48_combout\,
	datab => \Paso1|Equal0~6_combout\,
	datac => \Paso1|Equal0~5_combout\,
	datad => \Paso1|Equal0~7_combout\,
	combout => \Paso1|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y27_N6
\Paso1|contador[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|contador[0]~4_combout\ = (\Paso1|contador\(0) & (((!\Paso1|LessThan1~0_combout\ & \Paso1|contador\(1))) # (!\Paso1|Equal0~8_combout\))) # (!\Paso1|contador\(0) & (((\Paso1|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|LessThan1~0_combout\,
	datab => \Paso1|contador\(1),
	datac => \Paso1|contador\(0),
	datad => \Paso1|Equal0~8_combout\,
	combout => \Paso1|contador[0]~4_combout\);

-- Location: FF_X29_Y27_N7
\Paso1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~input_o\,
	d => \Paso1|contador[0]~4_combout\,
	clrn => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contador\(0));

-- Location: LCCOMB_X30_Y27_N14
\Paso1|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add1~1_cout\ = CARRY(!\Paso1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|contador\(0),
	datad => VCC,
	cout => \Paso1|Add1~1_cout\);

-- Location: LCCOMB_X30_Y27_N12
\Paso1|contador[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|contador[1]~6_combout\ = !\Paso1|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Paso1|Add1~2_combout\,
	combout => \Paso1|contador[1]~6_combout\);

-- Location: FF_X30_Y27_N13
\Paso1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~input_o\,
	d => \Paso1|contador[1]~6_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|contador[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|contador\(1));

-- Location: LCCOMB_X30_Y27_N4
\Paso1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|LessThan1~1_combout\ = ((\Paso1|LessThan1~0_combout\) # (!\Paso1|contador\(0))) # (!\Paso1|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contador\(1),
	datab => \Paso1|contador\(0),
	datad => \Paso1|LessThan1~0_combout\,
	combout => \Paso1|LessThan1~1_combout\);

-- Location: FF_X30_Y28_N25
\Paso1|SegUni[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|SegUni[0]~2_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|SegUni\(0));

-- Location: LCCOMB_X30_Y27_N30
\Paso1|RTCsegUni[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|RTCsegUni[3]~0_combout\ = (\Entrada~input_o\ & (((\Paso1|LessThan1~0_combout\) # (!\Paso1|contador\(0))) # (!\Paso1|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contador\(1),
	datab => \Paso1|contador\(0),
	datac => \Entrada~input_o\,
	datad => \Paso1|LessThan1~0_combout\,
	combout => \Paso1|RTCsegUni[3]~0_combout\);

-- Location: CLKCTRL_G13
\Paso1|RTCsegUni[3]~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Paso1|RTCsegUni[3]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Paso1|RTCsegUni[3]~0clkctrl_outclk\);

-- Location: LCCOMB_X29_Y28_N10
\Paso1|RTCsegUni[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|RTCsegUni\(0) = (GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & ((!\Paso1|SegUni\(0)))) # (!GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & (\Paso1|RTCsegUni\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|RTCsegUni\(0),
	datac => \Paso1|SegUni\(0),
	datad => \Paso1|RTCsegUni[3]~0clkctrl_outclk\,
	combout => \Paso1|RTCsegUni\(0));

-- Location: LCCOMB_X29_Y27_N0
\Paso1|alarma_activa~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|alarma_activa~0_combout\ = (\Paso1|alarma_activa~q\) # ((!\Paso1|LessThan1~1_combout\ & \Paso1|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|LessThan1~1_combout\,
	datac => \Paso1|alarma_activa~q\,
	datad => \Paso1|Equal0~8_combout\,
	combout => \Paso1|alarma_activa~0_combout\);

-- Location: FF_X29_Y27_N1
\Paso1|alarma_activa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|alarma_activa~0_combout\,
	clrn => \Entrada~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|alarma_activa~q\);

-- Location: LCCOMB_X28_Y28_N6
\Paso1|Felicitacion\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Felicitacion~combout\ = (\Entrada~input_o\ & ((!\Paso1|alarma_activa~q\))) # (!\Entrada~input_o\ & (\Paso1|Felicitacion~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Entrada~input_o\,
	datab => \Paso1|Felicitacion~combout\,
	datad => \Paso1|alarma_activa~q\,
	combout => \Paso1|Felicitacion~combout\);

-- Location: LCCOMB_X27_Y28_N22
\Paso2|SegUni[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|SegUni[0]~3_combout\ = !\Paso2|SegUni\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Paso2|SegUni\(0),
	combout => \Paso2|SegUni[0]~3_combout\);

-- Location: FF_X27_Y28_N23
\Paso2|SegUni[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|SegUni[0]~3_combout\,
	clrn => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|SegUni\(0));

-- Location: LCCOMB_X28_Y28_N10
\Paso2|RTCsegUni[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|RTCsegUni[0]~0_combout\ = !\Paso2|SegUni\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Paso2|SegUni\(0),
	combout => \Paso2|RTCsegUni[0]~0_combout\);

-- Location: FF_X28_Y28_N11
\Paso2|RTCsegUni[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|RTCsegUni[0]~0_combout\,
	ena => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|RTCsegUni\(0));

-- Location: LCCOMB_X28_Y28_N28
\RealsegUni~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RealsegUni~0_combout\ = (\Paso1|Felicitacion~combout\ & (\Paso1|RTCsegUni\(0))) # (!\Paso1|Felicitacion~combout\ & ((\Paso2|RTCsegUni\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|RTCsegUni\(0),
	datac => \Paso1|Felicitacion~combout\,
	datad => \Paso2|RTCsegUni\(0),
	combout => \RealsegUni~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\Paso2|SegUni[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|SegUni[2]~1_combout\ = \Paso2|SegUni\(2) $ (((!\Paso2|SegUni\(0) & \Paso2|SegUni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso2|SegUni\(0),
	datac => \Paso2|SegUni\(2),
	datad => \Paso2|SegUni\(1),
	combout => \Paso2|SegUni[2]~1_combout\);

-- Location: FF_X27_Y28_N27
\Paso2|SegUni[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|SegUni[2]~1_combout\,
	clrn => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|SegUni\(2));

-- Location: LCCOMB_X27_Y28_N28
\Paso2|SegUni~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|SegUni~2_combout\ = (\Paso2|SegUni\(0) & (((\Paso2|SegUni\(3))))) # (!\Paso2|SegUni\(0) & ((\Paso2|SegUni\(2) & (\Paso2|SegUni\(3) $ (\Paso2|SegUni\(1)))) # (!\Paso2|SegUni\(2) & (\Paso2|SegUni\(3) & \Paso2|SegUni\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso2|SegUni\(0),
	datab => \Paso2|SegUni\(2),
	datac => \Paso2|SegUni\(3),
	datad => \Paso2|SegUni\(1),
	combout => \Paso2|SegUni~2_combout\);

-- Location: FF_X27_Y28_N29
\Paso2|SegUni[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|SegUni~2_combout\,
	clrn => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|SegUni\(3));

-- Location: LCCOMB_X27_Y28_N24
\Paso2|SegUni~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|SegUni~0_combout\ = (\Paso2|SegUni\(0) & (((\Paso2|SegUni\(1))))) # (!\Paso2|SegUni\(0) & (!\Paso2|SegUni\(1) & ((\Paso2|SegUni\(2)) # (!\Paso2|SegUni\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso2|SegUni\(3),
	datab => \Paso2|SegUni\(0),
	datac => \Paso2|SegUni\(1),
	datad => \Paso2|SegUni\(2),
	combout => \Paso2|SegUni~0_combout\);

-- Location: FF_X27_Y28_N25
\Paso2|SegUni[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|SegUni~0_combout\,
	clrn => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|SegUni\(1));

-- Location: FF_X28_Y28_N5
\Paso2|RTCsegUni[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	asdata => \Paso2|SegUni\(1),
	sload => VCC,
	ena => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|RTCsegUni\(1));

-- Location: LCCOMB_X30_Y28_N20
\Paso1|SegUni~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|SegUni~1_combout\ = (\Paso1|SegUni\(1) & (((\Paso1|SegUni\(2))))) # (!\Paso1|SegUni\(1) & ((\Paso1|SegUni\(2) & ((!\Paso1|SegUni\(0)) # (!\Paso1|SegUni\(3)))) # (!\Paso1|SegUni\(2) & ((\Paso1|SegUni\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|SegUni\(3),
	datab => \Paso1|SegUni\(1),
	datac => \Paso1|SegUni\(2),
	datad => \Paso1|SegUni\(0),
	combout => \Paso1|SegUni~1_combout\);

-- Location: FF_X30_Y28_N21
\Paso1|SegUni[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|SegUni~1_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|SegUni\(2));

-- Location: LCCOMB_X30_Y28_N30
\Paso1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add2~0_combout\ = \Paso1|SegUni\(3) $ (((!\Paso1|SegUni\(1) & (\Paso1|SegUni\(2) & \Paso1|SegUni\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|SegUni\(1),
	datab => \Paso1|SegUni\(2),
	datac => \Paso1|SegUni\(3),
	datad => \Paso1|SegUni\(0),
	combout => \Paso1|Add2~0_combout\);

-- Location: FF_X30_Y28_N31
\Paso1|SegUni[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add2~0_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|SegUni\(3));

-- Location: LCCOMB_X30_Y28_N22
\Paso1|SegUni~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|SegUni~0_combout\ = (\Paso1|SegUni\(1) & (((!\Paso1|SegUni\(0))))) # (!\Paso1|SegUni\(1) & (\Paso1|SegUni\(0) & ((\Paso1|SegUni\(3)) # (!\Paso1|SegUni\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|SegUni\(3),
	datab => \Paso1|SegUni\(2),
	datac => \Paso1|SegUni\(1),
	datad => \Paso1|SegUni\(0),
	combout => \Paso1|SegUni~0_combout\);

-- Location: FF_X30_Y28_N23
\Paso1|SegUni[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|SegUni~0_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|SegUni\(1));

-- Location: LCCOMB_X29_Y28_N8
\Paso1|RTCsegUni[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|RTCsegUni\(1) = (GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & ((\Paso1|SegUni\(1)))) # (!GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & (\Paso1|RTCsegUni\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|RTCsegUni\(1),
	datac => \Paso1|SegUni\(1),
	datad => \Paso1|RTCsegUni[3]~0clkctrl_outclk\,
	combout => \Paso1|RTCsegUni\(1));

-- Location: LCCOMB_X28_Y28_N4
\RealsegUni~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RealsegUni~1_combout\ = (\Paso1|Felicitacion~combout\ & ((\Paso1|RTCsegUni\(1)))) # (!\Paso1|Felicitacion~combout\ & (\Paso2|RTCsegUni\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|Felicitacion~combout\,
	datac => \Paso2|RTCsegUni\(1),
	datad => \Paso1|RTCsegUni\(1),
	combout => \RealsegUni~1_combout\);

-- Location: FF_X28_Y28_N3
\Paso2|RTCsegUni[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	asdata => \Paso2|SegUni\(2),
	sload => VCC,
	ena => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|RTCsegUni\(2));

-- Location: LCCOMB_X30_Y28_N14
\Paso1|RTCsegUni[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|RTCsegUni\(2) = (GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & (!\Paso1|SegUni\(2))) # (!GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & ((\Paso1|RTCsegUni\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|SegUni\(2),
	datac => \Paso1|RTCsegUni\(2),
	datad => \Paso1|RTCsegUni[3]~0clkctrl_outclk\,
	combout => \Paso1|RTCsegUni\(2));

-- Location: LCCOMB_X28_Y28_N2
\RealsegUni~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RealsegUni~2_combout\ = (\Paso1|Felicitacion~combout\ & ((\Paso1|RTCsegUni\(2)))) # (!\Paso1|Felicitacion~combout\ & (\Paso2|RTCsegUni\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|Felicitacion~combout\,
	datac => \Paso2|RTCsegUni\(2),
	datad => \Paso1|RTCsegUni\(2),
	combout => \RealsegUni~2_combout\);

-- Location: LCCOMB_X29_Y28_N30
\Paso1|RTCsegUni[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|RTCsegUni\(3) = (GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & ((\Paso1|SegUni\(3)))) # (!GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & (\Paso1|RTCsegUni\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|RTCsegUni\(3),
	datac => \Paso1|RTCsegUni[3]~0clkctrl_outclk\,
	datad => \Paso1|SegUni\(3),
	combout => \Paso1|RTCsegUni\(3));

-- Location: FF_X28_Y28_N21
\Paso2|RTCsegUni[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	asdata => \Paso2|SegUni\(3),
	sload => VCC,
	ena => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|RTCsegUni\(3));

-- Location: LCCOMB_X28_Y28_N20
\RealsegUni~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RealsegUni~3_combout\ = (\Paso1|Felicitacion~combout\ & (\Paso1|RTCsegUni\(3))) # (!\Paso1|Felicitacion~combout\ & ((\Paso2|RTCsegUni\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|RTCsegUni\(3),
	datab => \Paso1|Felicitacion~combout\,
	datac => \Paso2|RTCsegUni\(3),
	combout => \RealsegUni~3_combout\);

-- Location: LCCOMB_X27_Y28_N30
\Paso2|SegDec[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|SegDec[0]~2_combout\ = !\Paso2|SegDec\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Paso2|SegDec\(0),
	combout => \Paso2|SegDec[0]~2_combout\);

-- Location: LCCOMB_X27_Y28_N14
\Paso2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|Equal1~0_combout\ = (\Paso2|SegUni\(3) & (!\Paso2|SegUni\(0) & (!\Paso2|SegUni\(2) & !\Paso2|SegUni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso2|SegUni\(3),
	datab => \Paso2|SegUni\(0),
	datac => \Paso2|SegUni\(2),
	datad => \Paso2|SegUni\(1),
	combout => \Paso2|Equal1~0_combout\);

-- Location: FF_X27_Y28_N31
\Paso2|SegDec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|SegDec[0]~2_combout\,
	clrn => \Paso1|ALT_INV_Felicitacion~combout\,
	ena => \Paso2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|SegDec\(0));

-- Location: FF_X28_Y28_N13
\Paso2|RTCsegDec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	asdata => \Paso2|SegDec\(0),
	sload => VCC,
	ena => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|RTCsegDec\(0));

-- Location: LCCOMB_X29_Y28_N4
\Paso1|SegDec[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|SegDec[0]~2_combout\ = !\Paso1|SegDec\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Paso1|SegDec\(0),
	combout => \Paso1|SegDec[0]~2_combout\);

-- Location: LCCOMB_X30_Y28_N28
\Paso1|SegDec[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|SegDec[0]~0_combout\ = (!\Paso1|SegUni\(1) & (\Paso1|SegUni\(2) & (!\Paso1|SegUni\(3) & \Paso1|SegUni\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|SegUni\(1),
	datab => \Paso1|SegUni\(2),
	datac => \Paso1|SegUni\(3),
	datad => \Paso1|SegUni\(0),
	combout => \Paso1|SegDec[0]~0_combout\);

-- Location: LCCOMB_X30_Y27_N0
\Paso1|SegDec[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|SegDec[0]~1_combout\ = (\Paso1|SegDec[0]~0_combout\ & (((\Paso1|LessThan1~0_combout\) # (!\Paso1|contador\(0))) # (!\Paso1|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|contador\(1),
	datab => \Paso1|contador\(0),
	datac => \Paso1|LessThan1~0_combout\,
	datad => \Paso1|SegDec[0]~0_combout\,
	combout => \Paso1|SegDec[0]~1_combout\);

-- Location: FF_X29_Y28_N5
\Paso1|SegDec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|SegDec[0]~2_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|SegDec[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|SegDec\(0));

-- Location: LCCOMB_X29_Y28_N24
\Paso1|RTCsegDec[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|RTCsegDec\(0) = (GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & (!\Paso1|SegDec\(0))) # (!GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & ((\Paso1|RTCsegDec\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|SegDec\(0),
	datab => \Paso1|RTCsegDec\(0),
	datad => \Paso1|RTCsegUni[3]~0clkctrl_outclk\,
	combout => \Paso1|RTCsegDec\(0));

-- Location: LCCOMB_X28_Y28_N12
\RealSegDec~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RealSegDec~0_combout\ = (\Paso1|Felicitacion~combout\ & ((\Paso1|RTCsegDec\(0)))) # (!\Paso1|Felicitacion~combout\ & (\Paso2|RTCsegDec\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Felicitacion~combout\,
	datac => \Paso2|RTCsegDec\(0),
	datad => \Paso1|RTCsegDec\(0),
	combout => \RealSegDec~0_combout\);

-- Location: LCCOMB_X27_Y28_N18
\Paso2|SegDec~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|SegDec~1_combout\ = (\Paso2|SegDec\(0) & (!\Paso2|SegDec\(2) & \Paso2|SegDec\(1))) # (!\Paso2|SegDec\(0) & (\Paso2|SegDec\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso2|SegDec\(0),
	datac => \Paso2|SegDec\(2),
	datad => \Paso2|SegDec\(1),
	combout => \Paso2|SegDec~1_combout\);

-- Location: FF_X27_Y28_N19
\Paso2|SegDec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|SegDec~1_combout\,
	clrn => \Paso1|ALT_INV_Felicitacion~combout\,
	ena => \Paso2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|SegDec\(2));

-- Location: LCCOMB_X27_Y28_N4
\Paso2|SegDec~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|SegDec~0_combout\ = (\Paso2|SegDec\(0) & (!\Paso2|SegDec\(2) & !\Paso2|SegDec\(1))) # (!\Paso2|SegDec\(0) & ((\Paso2|SegDec\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso2|SegDec\(2),
	datab => \Paso2|SegDec\(0),
	datac => \Paso2|SegDec\(1),
	combout => \Paso2|SegDec~0_combout\);

-- Location: FF_X27_Y28_N5
\Paso2|SegDec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|SegDec~0_combout\,
	clrn => \Paso1|ALT_INV_Felicitacion~combout\,
	ena => \Paso2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|SegDec\(1));

-- Location: FF_X28_Y28_N1
\Paso2|RTCsegDec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	asdata => \Paso2|SegDec\(1),
	sload => VCC,
	ena => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|RTCsegDec\(1));

-- Location: LCCOMB_X29_Y28_N6
\Paso1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add3~0_combout\ = \Paso1|SegDec\(0) $ (\Paso1|SegDec\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|SegDec\(0),
	datac => \Paso1|SegDec\(1),
	combout => \Paso1|Add3~0_combout\);

-- Location: FF_X29_Y28_N7
\Paso1|SegDec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add3~0_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|SegDec[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|SegDec\(1));

-- Location: LCCOMB_X29_Y28_N14
\Paso1|RTCsegDec[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|RTCsegDec\(1) = (GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & (!\Paso1|SegDec\(1))) # (!GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & ((\Paso1|RTCsegDec\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|SegDec\(1),
	datac => \Paso1|RTCsegDec\(1),
	datad => \Paso1|RTCsegUni[3]~0clkctrl_outclk\,
	combout => \Paso1|RTCsegDec\(1));

-- Location: LCCOMB_X28_Y28_N0
\RealSegDec~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RealSegDec~1_combout\ = (\Paso1|Felicitacion~combout\ & ((\Paso1|RTCsegDec\(1)))) # (!\Paso1|Felicitacion~combout\ & (\Paso2|RTCsegDec\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|Felicitacion~combout\,
	datac => \Paso2|RTCsegDec\(1),
	datad => \Paso1|RTCsegDec\(1),
	combout => \RealSegDec~1_combout\);

-- Location: FF_X28_Y28_N17
\Paso2|RTCsegDec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	asdata => \Paso2|SegDec\(2),
	sload => VCC,
	ena => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|RTCsegDec\(2));

-- Location: LCCOMB_X29_Y28_N12
\Paso1|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|Add3~1_combout\ = \Paso1|SegDec\(2) $ (((\Paso1|SegDec\(0) & \Paso1|SegDec\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|SegDec\(0),
	datac => \Paso1|SegDec\(2),
	datad => \Paso1|SegDec\(1),
	combout => \Paso1|Add3~1_combout\);

-- Location: FF_X29_Y28_N13
\Paso1|SegDec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso1|Add3~1_combout\,
	clrn => \Entrada~input_o\,
	ena => \Paso1|SegDec[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso1|SegDec\(2));

-- Location: LCCOMB_X29_Y28_N20
\Paso1|RTCsegDec[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso1|RTCsegDec\(2) = (GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & ((\Paso1|SegDec\(2)))) # (!GLOBAL(\Paso1|RTCsegUni[3]~0clkctrl_outclk\) & (\Paso1|RTCsegDec\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|RTCsegDec\(2),
	datac => \Paso1|SegDec\(2),
	datad => \Paso1|RTCsegUni[3]~0clkctrl_outclk\,
	combout => \Paso1|RTCsegDec\(2));

-- Location: LCCOMB_X28_Y28_N16
\RealSegDec~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RealSegDec~2_combout\ = (\Paso1|Felicitacion~combout\ & ((\Paso1|RTCsegDec\(2)))) # (!\Paso1|Felicitacion~combout\ & (\Paso2|RTCsegDec\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|Felicitacion~combout\,
	datac => \Paso2|RTCsegDec\(2),
	datad => \Paso1|RTCsegDec\(2),
	combout => \RealSegDec~2_combout\);

-- Location: LCCOMB_X28_Y28_N30
\Paso2|MinUni[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|MinUni[0]~5_combout\ = !\Paso2|MinUni\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Paso2|MinUni\(0),
	combout => \Paso2|MinUni[0]~5_combout\);

-- Location: LCCOMB_X27_Y28_N16
\Paso2|MinUni[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|MinUni[3]~0_combout\ = (\Paso2|SegUni\(3) & (!\Paso2|SegDec\(1) & (\Paso2|SegDec\(0) & \Paso2|SegDec\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso2|SegUni\(3),
	datab => \Paso2|SegDec\(1),
	datac => \Paso2|SegDec\(0),
	datad => \Paso2|SegDec\(2),
	combout => \Paso2|MinUni[3]~0_combout\);

-- Location: LCCOMB_X27_Y28_N6
\Paso2|MinUni[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|MinUni[3]~1_combout\ = (!\Paso2|SegUni\(0) & (!\Paso2|SegUni\(1) & (!\Paso2|SegUni\(2) & \Paso2|MinUni[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso2|SegUni\(0),
	datab => \Paso2|SegUni\(1),
	datac => \Paso2|SegUni\(2),
	datad => \Paso2|MinUni[3]~0_combout\,
	combout => \Paso2|MinUni[3]~1_combout\);

-- Location: FF_X28_Y28_N31
\Paso2|MinUni[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|MinUni[0]~5_combout\,
	clrn => \Paso1|ALT_INV_Felicitacion~combout\,
	ena => \Paso2|MinUni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|MinUni\(0));

-- Location: FF_X28_Y28_N7
\Paso2|RTCMin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	asdata => \Paso2|MinUni\(0),
	sload => VCC,
	ena => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|RTCMin\(0));

-- Location: LCCOMB_X27_Y28_N8
\Ultimisima~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ultimisima~0_combout\ = (!\Paso1|Felicitacion~combout\ & \Paso2|RTCMin\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso1|Felicitacion~combout\,
	datad => \Paso2|RTCMin\(0),
	combout => \Ultimisima~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\Paso2|MinUni[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|MinUni[2]~3_combout\ = \Paso2|MinUni\(2) $ (((\Paso2|MinUni\(0) & (\Paso2|MinUni\(1) & \Paso2|MinUni[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso2|MinUni\(0),
	datab => \Paso2|MinUni\(1),
	datac => \Paso2|MinUni\(2),
	datad => \Paso2|MinUni[3]~1_combout\,
	combout => \Paso2|MinUni[2]~3_combout\);

-- Location: FF_X27_Y28_N1
\Paso2|MinUni[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|MinUni[2]~3_combout\,
	clrn => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|MinUni\(2));

-- Location: LCCOMB_X28_Y28_N26
\Paso2|MinUni~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|MinUni~4_combout\ = (\Paso2|MinUni\(2) & (\Paso2|MinUni\(3) $ (((\Paso2|MinUni\(0) & \Paso2|MinUni\(1)))))) # (!\Paso2|MinUni\(2) & (\Paso2|MinUni\(3) & ((\Paso2|MinUni\(1)) # (!\Paso2|MinUni\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso2|MinUni\(2),
	datab => \Paso2|MinUni\(0),
	datac => \Paso2|MinUni\(3),
	datad => \Paso2|MinUni\(1),
	combout => \Paso2|MinUni~4_combout\);

-- Location: FF_X28_Y28_N27
\Paso2|MinUni[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|MinUni~4_combout\,
	clrn => \Paso1|ALT_INV_Felicitacion~combout\,
	ena => \Paso2|MinUni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|MinUni\(3));

-- Location: LCCOMB_X28_Y28_N18
\Paso2|MinUni~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso2|MinUni~2_combout\ = (\Paso2|MinUni\(1) & (((!\Paso2|MinUni\(0))))) # (!\Paso2|MinUni\(1) & (\Paso2|MinUni\(0) & ((\Paso2|MinUni\(2)) # (!\Paso2|MinUni\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Paso2|MinUni\(3),
	datab => \Paso2|MinUni\(2),
	datac => \Paso2|MinUni\(1),
	datad => \Paso2|MinUni\(0),
	combout => \Paso2|MinUni~2_combout\);

-- Location: FF_X28_Y28_N19
\Paso2|MinUni[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	d => \Paso2|MinUni~2_combout\,
	clrn => \Paso1|ALT_INV_Felicitacion~combout\,
	ena => \Paso2|MinUni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|MinUni\(1));

-- Location: FF_X28_Y28_N15
\Paso2|RTCMin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	asdata => \Paso2|MinUni\(1),
	sload => VCC,
	ena => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|RTCMin\(1));

-- Location: LCCOMB_X28_Y28_N14
\Ultimisima~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ultimisima~1_combout\ = (!\Paso1|Felicitacion~combout\ & \Paso2|RTCMin\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|Felicitacion~combout\,
	datac => \Paso2|RTCMin\(1),
	combout => \Ultimisima~1_combout\);

-- Location: FF_X28_Y28_N25
\Paso2|RTCMin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	asdata => \Paso2|MinUni\(2),
	sload => VCC,
	ena => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|RTCMin\(2));

-- Location: LCCOMB_X28_Y28_N24
\Ultimisima~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ultimisima~2_combout\ = (!\Paso1|Felicitacion~combout\ & \Paso2|RTCMin\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|Felicitacion~combout\,
	datac => \Paso2|RTCMin\(2),
	combout => \Ultimisima~2_combout\);

-- Location: FF_X28_Y28_N23
\Paso2|RTCMin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \senalReloj~inputclkctrl_outclk\,
	asdata => \Paso2|MinUni\(3),
	sload => VCC,
	ena => \Paso1|ALT_INV_Felicitacion~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Paso2|RTCMin\(3));

-- Location: LCCOMB_X28_Y28_N22
\Ultimisima~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ultimisima~3_combout\ = (!\Paso1|Felicitacion~combout\ & \Paso2|RTCMin\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Paso1|Felicitacion~combout\,
	datac => \Paso2|RTCMin\(3),
	combout => \Ultimisima~3_combout\);

ww_SegUni(0) <= \SegUni[0]~output_o\;

ww_SegUni(1) <= \SegUni[1]~output_o\;

ww_SegUni(2) <= \SegUni[2]~output_o\;

ww_SegUni(3) <= \SegUni[3]~output_o\;

ww_SegDec(0) <= \SegDec[0]~output_o\;

ww_SegDec(1) <= \SegDec[1]~output_o\;

ww_SegDec(2) <= \SegDec[2]~output_o\;

ww_MinUni(0) <= \MinUni[0]~output_o\;

ww_MinUni(1) <= \MinUni[1]~output_o\;

ww_MinUni(2) <= \MinUni[2]~output_o\;

ww_MinUni(3) <= \MinUni[3]~output_o\;

ww_ContRTC(0) <= \ContRTC[0]~output_o\;

ww_ContRTC(1) <= \ContRTC[1]~output_o\;

ww_ContRTC(2) <= \ContRTC[2]~output_o\;

ww_ContRTC(3) <= \ContRTC[3]~output_o\;

ww_ContRTC(4) <= \ContRTC[4]~output_o\;

ww_ContRTC(5) <= \ContRTC[5]~output_o\;

ww_ContRTC(6) <= \ContRTC[6]~output_o\;

ww_ContRTC(7) <= \ContRTC[7]~output_o\;

ww_ContRTC(8) <= \ContRTC[8]~output_o\;

ww_ContRTC(9) <= \ContRTC[9]~output_o\;

ww_Felicitacion <= \Felicitacion~output_o\;
END structure;


