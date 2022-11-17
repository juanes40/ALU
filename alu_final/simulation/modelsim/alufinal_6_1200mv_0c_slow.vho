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

-- DATE "11/15/2022 12:29:25"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alufinal IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(0 TO 6);
	HEX1 : BUFFER std_logic_vector(0 TO 6);
	NZVC : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END alufinal;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alufinal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL \Alutest|Equal0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \Alutest|Equal0~1_combout\ : std_logic;
SIGNAL \Alutest|Equal0~1clkctrl_outclk\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \Alutest|Equal0~0_combout\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|_~3_combout\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \salida0|Mux6~0_combout\ : std_logic;
SIGNAL \salida0|Mux5~0_combout\ : std_logic;
SIGNAL \salida0|Mux4~0_combout\ : std_logic;
SIGNAL \salida0|Mux3~0_combout\ : std_logic;
SIGNAL \salida0|Mux2~0_combout\ : std_logic;
SIGNAL \salida0|Mux1~0_combout\ : std_logic;
SIGNAL \salida0|Mux0~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|_~5_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|_~4_combout\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|_~7_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|_~6_combout\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \salida1|Mux6~0_combout\ : std_logic;
SIGNAL \salida1|Mux5~0_combout\ : std_logic;
SIGNAL \salida1|Mux4~0_combout\ : std_logic;
SIGNAL \salida1|Mux3~0_combout\ : std_logic;
SIGNAL \salida1|Mux2~0_combout\ : std_logic;
SIGNAL \salida1|Mux1~0_combout\ : std_logic;
SIGNAL \salida1|Mux0~0_combout\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \Alutest|Add0|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \Alutest|Add1~1\ : std_logic;
SIGNAL \Alutest|Add1~3\ : std_logic;
SIGNAL \Alutest|Add1~5\ : std_logic;
SIGNAL \Alutest|Add1~7\ : std_logic;
SIGNAL \Alutest|Add1~9\ : std_logic;
SIGNAL \Alutest|Add1~11\ : std_logic;
SIGNAL \Alutest|Add1~13\ : std_logic;
SIGNAL \Alutest|Add1~14_combout\ : std_logic;
SIGNAL \Alutest|LessThan0~1_cout\ : std_logic;
SIGNAL \Alutest|LessThan0~3_cout\ : std_logic;
SIGNAL \Alutest|LessThan0~5_cout\ : std_logic;
SIGNAL \Alutest|LessThan0~7_cout\ : std_logic;
SIGNAL \Alutest|LessThan0~9_cout\ : std_logic;
SIGNAL \Alutest|LessThan0~11_cout\ : std_logic;
SIGNAL \Alutest|LessThan0~13_cout\ : std_logic;
SIGNAL \Alutest|LessThan0~14_combout\ : std_logic;
SIGNAL \Alutest|NZVC[1]~1_combout\ : std_logic;
SIGNAL \Alutest|NZVC[1]~2_combout\ : std_logic;
SIGNAL \Alutest|Add0~1\ : std_logic;
SIGNAL \Alutest|Add0~3\ : std_logic;
SIGNAL \Alutest|Add0~5\ : std_logic;
SIGNAL \Alutest|Add0~7\ : std_logic;
SIGNAL \Alutest|Add0~9\ : std_logic;
SIGNAL \Alutest|Add0~11\ : std_logic;
SIGNAL \Alutest|Add0~13\ : std_logic;
SIGNAL \Alutest|Add0~14_combout\ : std_logic;
SIGNAL \Alutest|NZVC[1]~0_combout\ : std_logic;
SIGNAL \Alutest|Add1~10_combout\ : std_logic;
SIGNAL \Alutest|Add1~6_combout\ : std_logic;
SIGNAL \Alutest|Add1~4_combout\ : std_logic;
SIGNAL \Alutest|Add1~8_combout\ : std_logic;
SIGNAL \Alutest|NZVC[2]~7_combout\ : std_logic;
SIGNAL \Alutest|Add1~2_combout\ : std_logic;
SIGNAL \Alutest|Add1~0_combout\ : std_logic;
SIGNAL \Alutest|NZVC[2]~6_combout\ : std_logic;
SIGNAL \Alutest|Add1~12_combout\ : std_logic;
SIGNAL \Alutest|Add0~0_combout\ : std_logic;
SIGNAL \Alutest|Add0~2_combout\ : std_logic;
SIGNAL \Alutest|NZVC[2]~3_combout\ : std_logic;
SIGNAL \Alutest|Add0~12_combout\ : std_logic;
SIGNAL \Alutest|Add0~8_combout\ : std_logic;
SIGNAL \Alutest|Add0~6_combout\ : std_logic;
SIGNAL \Alutest|Add0~10_combout\ : std_logic;
SIGNAL \Alutest|Add0~4_combout\ : std_logic;
SIGNAL \Alutest|NZVC[2]~4_combout\ : std_logic;
SIGNAL \Alutest|NZVC[2]~5_combout\ : std_logic;
SIGNAL \Alutest|NZVC[2]~8_combout\ : std_logic;
SIGNAL \Alutest|NZVC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Alutest|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \salida1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \salida0|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
NZVC <= ww_NZVC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Alutest|Equal0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Alutest|Equal0~1_combout\);
\salida1|ALT_INV_Mux6~0_combout\ <= NOT \salida1|Mux6~0_combout\;
\salida0|ALT_INV_Mux6~0_combout\ <= NOT \salida0|Mux6~0_combout\;

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salida1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Alutest|NZVC\(0),
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Alutest|NZVC\(1),
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Alutest|NZVC\(2),
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Alutest|Result\(7),
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOIBUF_X1_Y29_N29
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: LCCOMB_X1_Y26_N30
\Alutest|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Equal0~1_combout\ = (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Alutest|Equal0~1_combout\);

-- Location: CLKCTRL_G1
\Alutest|Equal0~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Alutest|Equal0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Alutest|Equal0~1clkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X3_Y27_N2
\Alutest|Add0|auto_generated|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|_~2_combout\ = \B[2]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Alutest|Add0|auto_generated|_~2_combout\);

-- Location: IOIBUF_X0_Y27_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y26_N26
\Alutest|Add0|auto_generated|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|_~1_combout\ = \B[1]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Alutest|Add0|auto_generated|_~1_combout\);

-- Location: IOIBUF_X0_Y24_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X3_Y27_N4
\Alutest|Add0|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|_~0_combout\ = \B[0]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Alutest|Add0|auto_generated|_~0_combout\);

-- Location: LCCOMB_X1_Y26_N28
\Alutest|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Equal0~0_combout\ = (!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Alutest|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y27_N4
\Alutest|Add0|auto_generated|result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|result_int[0]~1_cout\ = CARRY(!\Alutest|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Equal0~0_combout\,
	datad => VCC,
	cout => \Alutest|Add0|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X1_Y27_N6
\Alutest|Add0|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|result_int[1]~2_combout\ = (\A[0]~input_o\ & ((\Alutest|Add0|auto_generated|_~0_combout\ & (!\Alutest|Add0|auto_generated|result_int[0]~1_cout\)) # (!\Alutest|Add0|auto_generated|_~0_combout\ & 
-- (\Alutest|Add0|auto_generated|result_int[0]~1_cout\ & VCC)))) # (!\A[0]~input_o\ & ((\Alutest|Add0|auto_generated|_~0_combout\ & ((\Alutest|Add0|auto_generated|result_int[0]~1_cout\) # (GND))) # (!\Alutest|Add0|auto_generated|_~0_combout\ & 
-- (!\Alutest|Add0|auto_generated|result_int[0]~1_cout\))))
-- \Alutest|Add0|auto_generated|result_int[1]~3\ = CARRY((\A[0]~input_o\ & (\Alutest|Add0|auto_generated|_~0_combout\ & !\Alutest|Add0|auto_generated|result_int[0]~1_cout\)) # (!\A[0]~input_o\ & ((\Alutest|Add0|auto_generated|_~0_combout\) # 
-- (!\Alutest|Add0|auto_generated|result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Alutest|Add0|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \Alutest|Add0|auto_generated|result_int[0]~1_cout\,
	combout => \Alutest|Add0|auto_generated|result_int[1]~2_combout\,
	cout => \Alutest|Add0|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X1_Y27_N8
\Alutest|Add0|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|result_int[2]~4_combout\ = ((\A[1]~input_o\ $ (\Alutest|Add0|auto_generated|_~1_combout\ $ (\Alutest|Add0|auto_generated|result_int[1]~3\)))) # (GND)
-- \Alutest|Add0|auto_generated|result_int[2]~5\ = CARRY((\A[1]~input_o\ & ((!\Alutest|Add0|auto_generated|result_int[1]~3\) # (!\Alutest|Add0|auto_generated|_~1_combout\))) # (!\A[1]~input_o\ & (!\Alutest|Add0|auto_generated|_~1_combout\ & 
-- !\Alutest|Add0|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Alutest|Add0|auto_generated|_~1_combout\,
	datad => VCC,
	cin => \Alutest|Add0|auto_generated|result_int[1]~3\,
	combout => \Alutest|Add0|auto_generated|result_int[2]~4_combout\,
	cout => \Alutest|Add0|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X1_Y27_N10
\Alutest|Add0|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|result_int[3]~6_combout\ = (\A[2]~input_o\ & ((\Alutest|Add0|auto_generated|_~2_combout\ & (!\Alutest|Add0|auto_generated|result_int[2]~5\)) # (!\Alutest|Add0|auto_generated|_~2_combout\ & 
-- (\Alutest|Add0|auto_generated|result_int[2]~5\ & VCC)))) # (!\A[2]~input_o\ & ((\Alutest|Add0|auto_generated|_~2_combout\ & ((\Alutest|Add0|auto_generated|result_int[2]~5\) # (GND))) # (!\Alutest|Add0|auto_generated|_~2_combout\ & 
-- (!\Alutest|Add0|auto_generated|result_int[2]~5\))))
-- \Alutest|Add0|auto_generated|result_int[3]~7\ = CARRY((\A[2]~input_o\ & (\Alutest|Add0|auto_generated|_~2_combout\ & !\Alutest|Add0|auto_generated|result_int[2]~5\)) # (!\A[2]~input_o\ & ((\Alutest|Add0|auto_generated|_~2_combout\) # 
-- (!\Alutest|Add0|auto_generated|result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Alutest|Add0|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \Alutest|Add0|auto_generated|result_int[2]~5\,
	combout => \Alutest|Add0|auto_generated|result_int[3]~6_combout\,
	cout => \Alutest|Add0|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X1_Y27_N28
\Alutest|Result[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Result\(2) = (GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & ((\Alutest|Add0|auto_generated|result_int[3]~6_combout\))) # (!GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & (\Alutest|Result\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alutest|Result\(2),
	datac => \Alutest|Equal0~1clkctrl_outclk\,
	datad => \Alutest|Add0|auto_generated|result_int[3]~6_combout\,
	combout => \Alutest|Result\(2));

-- Location: LCCOMB_X2_Y27_N22
\Alutest|Result[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Result\(1) = (GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & ((\Alutest|Add0|auto_generated|result_int[2]~4_combout\))) # (!GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & (\Alutest|Result\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(1),
	datac => \Alutest|Add0|auto_generated|result_int[2]~4_combout\,
	datad => \Alutest|Equal0~1clkctrl_outclk\,
	combout => \Alutest|Result\(1));

-- Location: IOIBUF_X0_Y23_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y26_N22
\Alutest|Add0|auto_generated|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|_~3_combout\ = \B[3]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Alutest|Add0|auto_generated|_~3_combout\);

-- Location: LCCOMB_X1_Y27_N12
\Alutest|Add0|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|result_int[4]~8_combout\ = ((\A[3]~input_o\ $ (\Alutest|Add0|auto_generated|_~3_combout\ $ (\Alutest|Add0|auto_generated|result_int[3]~7\)))) # (GND)
-- \Alutest|Add0|auto_generated|result_int[4]~9\ = CARRY((\A[3]~input_o\ & ((!\Alutest|Add0|auto_generated|result_int[3]~7\) # (!\Alutest|Add0|auto_generated|_~3_combout\))) # (!\A[3]~input_o\ & (!\Alutest|Add0|auto_generated|_~3_combout\ & 
-- !\Alutest|Add0|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Alutest|Add0|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \Alutest|Add0|auto_generated|result_int[3]~7\,
	combout => \Alutest|Add0|auto_generated|result_int[4]~8_combout\,
	cout => \Alutest|Add0|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X1_Y27_N30
\Alutest|Result[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Result\(3) = (GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & (\Alutest|Add0|auto_generated|result_int[4]~8_combout\)) # (!GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & ((\Alutest|Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Add0|auto_generated|result_int[4]~8_combout\,
	datac => \Alutest|Result\(3),
	datad => \Alutest|Equal0~1clkctrl_outclk\,
	combout => \Alutest|Result\(3));

-- Location: LCCOMB_X2_Y27_N8
\Alutest|Result[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Result\(0) = (GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & (\Alutest|Add0|auto_generated|result_int[1]~2_combout\)) # (!GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & ((\Alutest|Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alutest|Add0|auto_generated|result_int[1]~2_combout\,
	datac => \Alutest|Result\(0),
	datad => \Alutest|Equal0~1clkctrl_outclk\,
	combout => \Alutest|Result\(0));

-- Location: LCCOMB_X21_Y27_N24
\salida0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida0|Mux6~0_combout\ = (\Alutest|Result\(0) & ((\Alutest|Result\(3)) # (\Alutest|Result\(2) $ (\Alutest|Result\(1))))) # (!\Alutest|Result\(0) & ((\Alutest|Result\(1)) # (\Alutest|Result\(2) $ (\Alutest|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(2),
	datab => \Alutest|Result\(1),
	datac => \Alutest|Result\(3),
	datad => \Alutest|Result\(0),
	combout => \salida0|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y27_N26
\salida0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida0|Mux5~0_combout\ = (\Alutest|Result\(2) & (\Alutest|Result\(0) & (\Alutest|Result\(1) $ (\Alutest|Result\(3))))) # (!\Alutest|Result\(2) & (!\Alutest|Result\(3) & ((\Alutest|Result\(1)) # (\Alutest|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(2),
	datab => \Alutest|Result\(1),
	datac => \Alutest|Result\(3),
	datad => \Alutest|Result\(0),
	combout => \salida0|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y27_N20
\salida0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida0|Mux4~0_combout\ = (\Alutest|Result\(1) & (((!\Alutest|Result\(3) & \Alutest|Result\(0))))) # (!\Alutest|Result\(1) & ((\Alutest|Result\(2) & (!\Alutest|Result\(3))) # (!\Alutest|Result\(2) & ((\Alutest|Result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(2),
	datab => \Alutest|Result\(1),
	datac => \Alutest|Result\(3),
	datad => \Alutest|Result\(0),
	combout => \salida0|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y27_N10
\salida0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida0|Mux3~0_combout\ = (\Alutest|Result\(1) & ((\Alutest|Result\(2) & ((\Alutest|Result\(0)))) # (!\Alutest|Result\(2) & (\Alutest|Result\(3) & !\Alutest|Result\(0))))) # (!\Alutest|Result\(1) & (!\Alutest|Result\(3) & (\Alutest|Result\(2) $ 
-- (\Alutest|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(2),
	datab => \Alutest|Result\(1),
	datac => \Alutest|Result\(3),
	datad => \Alutest|Result\(0),
	combout => \salida0|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y27_N4
\salida0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida0|Mux2~0_combout\ = (\Alutest|Result\(2) & (\Alutest|Result\(3) & ((\Alutest|Result\(1)) # (!\Alutest|Result\(0))))) # (!\Alutest|Result\(2) & (\Alutest|Result\(1) & (!\Alutest|Result\(3) & !\Alutest|Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(2),
	datab => \Alutest|Result\(1),
	datac => \Alutest|Result\(3),
	datad => \Alutest|Result\(0),
	combout => \salida0|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y27_N2
\salida0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida0|Mux1~0_combout\ = (\Alutest|Result\(1) & ((\Alutest|Result\(0) & ((\Alutest|Result\(3)))) # (!\Alutest|Result\(0) & (\Alutest|Result\(2))))) # (!\Alutest|Result\(1) & (\Alutest|Result\(2) & (\Alutest|Result\(3) $ (\Alutest|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(2),
	datab => \Alutest|Result\(1),
	datac => \Alutest|Result\(3),
	datad => \Alutest|Result\(0),
	combout => \salida0|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y27_N12
\salida0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida0|Mux0~0_combout\ = (\Alutest|Result\(2) & (!\Alutest|Result\(1) & (\Alutest|Result\(3) $ (!\Alutest|Result\(0))))) # (!\Alutest|Result\(2) & (\Alutest|Result\(0) & (\Alutest|Result\(1) $ (!\Alutest|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(2),
	datab => \Alutest|Result\(1),
	datac => \Alutest|Result\(3),
	datad => \Alutest|Result\(0),
	combout => \salida0|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X3_Y27_N26
\Alutest|Add0|auto_generated|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|_~5_combout\ = \B[5]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Alutest|Add0|auto_generated|_~5_combout\);

-- Location: IOIBUF_X0_Y27_N22
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X3_Y27_N28
\Alutest|Add0|auto_generated|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|_~4_combout\ = \B[4]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Alutest|Add0|auto_generated|_~4_combout\);

-- Location: LCCOMB_X1_Y27_N14
\Alutest|Add0|auto_generated|result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|result_int[5]~10_combout\ = (\A[4]~input_o\ & ((\Alutest|Add0|auto_generated|_~4_combout\ & (!\Alutest|Add0|auto_generated|result_int[4]~9\)) # (!\Alutest|Add0|auto_generated|_~4_combout\ & 
-- (\Alutest|Add0|auto_generated|result_int[4]~9\ & VCC)))) # (!\A[4]~input_o\ & ((\Alutest|Add0|auto_generated|_~4_combout\ & ((\Alutest|Add0|auto_generated|result_int[4]~9\) # (GND))) # (!\Alutest|Add0|auto_generated|_~4_combout\ & 
-- (!\Alutest|Add0|auto_generated|result_int[4]~9\))))
-- \Alutest|Add0|auto_generated|result_int[5]~11\ = CARRY((\A[4]~input_o\ & (\Alutest|Add0|auto_generated|_~4_combout\ & !\Alutest|Add0|auto_generated|result_int[4]~9\)) # (!\A[4]~input_o\ & ((\Alutest|Add0|auto_generated|_~4_combout\) # 
-- (!\Alutest|Add0|auto_generated|result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Alutest|Add0|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \Alutest|Add0|auto_generated|result_int[4]~9\,
	combout => \Alutest|Add0|auto_generated|result_int[5]~10_combout\,
	cout => \Alutest|Add0|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X1_Y27_N16
\Alutest|Add0|auto_generated|result_int[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|result_int[6]~12_combout\ = ((\A[5]~input_o\ $ (\Alutest|Add0|auto_generated|_~5_combout\ $ (\Alutest|Add0|auto_generated|result_int[5]~11\)))) # (GND)
-- \Alutest|Add0|auto_generated|result_int[6]~13\ = CARRY((\A[5]~input_o\ & ((!\Alutest|Add0|auto_generated|result_int[5]~11\) # (!\Alutest|Add0|auto_generated|_~5_combout\))) # (!\A[5]~input_o\ & (!\Alutest|Add0|auto_generated|_~5_combout\ & 
-- !\Alutest|Add0|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Alutest|Add0|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \Alutest|Add0|auto_generated|result_int[5]~11\,
	combout => \Alutest|Add0|auto_generated|result_int[6]~12_combout\,
	cout => \Alutest|Add0|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X1_Y27_N0
\Alutest|Result[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Result\(5) = (GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & (\Alutest|Add0|auto_generated|result_int[6]~12_combout\)) # (!GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & ((\Alutest|Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alutest|Add0|auto_generated|result_int[6]~12_combout\,
	datac => \Alutest|Result\(5),
	datad => \Alutest|Equal0~1clkctrl_outclk\,
	combout => \Alutest|Result\(5));

-- Location: IOIBUF_X0_Y26_N8
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X1_Y26_N18
\Alutest|Add0|auto_generated|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|_~7_combout\ = \B[7]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \B[7]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Alutest|Add0|auto_generated|_~7_combout\);

-- Location: IOIBUF_X0_Y25_N15
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X3_Y27_N8
\Alutest|Add0|auto_generated|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|_~6_combout\ = \B[6]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \B[6]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Alutest|Add0|auto_generated|_~6_combout\);

-- Location: LCCOMB_X1_Y27_N18
\Alutest|Add0|auto_generated|result_int[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|result_int[7]~14_combout\ = (\A[6]~input_o\ & ((\Alutest|Add0|auto_generated|_~6_combout\ & (!\Alutest|Add0|auto_generated|result_int[6]~13\)) # (!\Alutest|Add0|auto_generated|_~6_combout\ & 
-- (\Alutest|Add0|auto_generated|result_int[6]~13\ & VCC)))) # (!\A[6]~input_o\ & ((\Alutest|Add0|auto_generated|_~6_combout\ & ((\Alutest|Add0|auto_generated|result_int[6]~13\) # (GND))) # (!\Alutest|Add0|auto_generated|_~6_combout\ & 
-- (!\Alutest|Add0|auto_generated|result_int[6]~13\))))
-- \Alutest|Add0|auto_generated|result_int[7]~15\ = CARRY((\A[6]~input_o\ & (\Alutest|Add0|auto_generated|_~6_combout\ & !\Alutest|Add0|auto_generated|result_int[6]~13\)) # (!\A[6]~input_o\ & ((\Alutest|Add0|auto_generated|_~6_combout\) # 
-- (!\Alutest|Add0|auto_generated|result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Alutest|Add0|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \Alutest|Add0|auto_generated|result_int[6]~13\,
	combout => \Alutest|Add0|auto_generated|result_int[7]~14_combout\,
	cout => \Alutest|Add0|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X1_Y27_N20
\Alutest|Add0|auto_generated|result_int[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|result_int[8]~16_combout\ = ((\A[7]~input_o\ $ (\Alutest|Add0|auto_generated|_~7_combout\ $ (\Alutest|Add0|auto_generated|result_int[7]~15\)))) # (GND)
-- \Alutest|Add0|auto_generated|result_int[8]~17\ = CARRY((\A[7]~input_o\ & ((!\Alutest|Add0|auto_generated|result_int[7]~15\) # (!\Alutest|Add0|auto_generated|_~7_combout\))) # (!\A[7]~input_o\ & (!\Alutest|Add0|auto_generated|_~7_combout\ & 
-- !\Alutest|Add0|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Alutest|Add0|auto_generated|_~7_combout\,
	datad => VCC,
	cin => \Alutest|Add0|auto_generated|result_int[7]~15\,
	combout => \Alutest|Add0|auto_generated|result_int[8]~16_combout\,
	cout => \Alutest|Add0|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X1_Y27_N24
\Alutest|Result[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Result\(7) = (GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & ((\Alutest|Add0|auto_generated|result_int[8]~16_combout\))) # (!GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & (\Alutest|Result\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alutest|Result\(7),
	datac => \Alutest|Equal0~1clkctrl_outclk\,
	datad => \Alutest|Add0|auto_generated|result_int[8]~16_combout\,
	combout => \Alutest|Result\(7));

-- Location: LCCOMB_X2_Y27_N4
\Alutest|Result[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Result\(4) = (GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & ((\Alutest|Add0|auto_generated|result_int[5]~10_combout\))) # (!GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & (\Alutest|Result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alutest|Result\(4),
	datac => \Alutest|Equal0~1clkctrl_outclk\,
	datad => \Alutest|Add0|auto_generated|result_int[5]~10_combout\,
	combout => \Alutest|Result\(4));

-- Location: LCCOMB_X1_Y27_N26
\Alutest|Result[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Result\(6) = (GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & ((\Alutest|Add0|auto_generated|result_int[7]~14_combout\))) # (!GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & (\Alutest|Result\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(6),
	datac => \Alutest|Equal0~1clkctrl_outclk\,
	datad => \Alutest|Add0|auto_generated|result_int[7]~14_combout\,
	combout => \Alutest|Result\(6));

-- Location: LCCOMB_X2_Y27_N0
\salida1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida1|Mux6~0_combout\ = (\Alutest|Result\(4) & ((\Alutest|Result\(7)) # (\Alutest|Result\(5) $ (\Alutest|Result\(6))))) # (!\Alutest|Result\(4) & ((\Alutest|Result\(5)) # (\Alutest|Result\(7) $ (\Alutest|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(5),
	datab => \Alutest|Result\(7),
	datac => \Alutest|Result\(4),
	datad => \Alutest|Result\(6),
	combout => \salida1|Mux6~0_combout\);

-- Location: LCCOMB_X2_Y27_N18
\salida1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida1|Mux5~0_combout\ = (\Alutest|Result\(5) & (!\Alutest|Result\(7) & ((\Alutest|Result\(4)) # (!\Alutest|Result\(6))))) # (!\Alutest|Result\(5) & (\Alutest|Result\(4) & (\Alutest|Result\(7) $ (!\Alutest|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(5),
	datab => \Alutest|Result\(7),
	datac => \Alutest|Result\(4),
	datad => \Alutest|Result\(6),
	combout => \salida1|Mux5~0_combout\);

-- Location: LCCOMB_X2_Y27_N16
\salida1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida1|Mux4~0_combout\ = (\Alutest|Result\(5) & (!\Alutest|Result\(7) & (\Alutest|Result\(4)))) # (!\Alutest|Result\(5) & ((\Alutest|Result\(6) & (!\Alutest|Result\(7))) # (!\Alutest|Result\(6) & ((\Alutest|Result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(5),
	datab => \Alutest|Result\(7),
	datac => \Alutest|Result\(4),
	datad => \Alutest|Result\(6),
	combout => \salida1|Mux4~0_combout\);

-- Location: LCCOMB_X2_Y27_N26
\salida1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida1|Mux3~0_combout\ = (\Alutest|Result\(5) & ((\Alutest|Result\(4) & ((\Alutest|Result\(6)))) # (!\Alutest|Result\(4) & (\Alutest|Result\(7) & !\Alutest|Result\(6))))) # (!\Alutest|Result\(5) & (!\Alutest|Result\(7) & (\Alutest|Result\(4) $ 
-- (\Alutest|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(5),
	datab => \Alutest|Result\(7),
	datac => \Alutest|Result\(4),
	datad => \Alutest|Result\(6),
	combout => \salida1|Mux3~0_combout\);

-- Location: LCCOMB_X2_Y27_N28
\salida1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida1|Mux2~0_combout\ = (\Alutest|Result\(7) & (\Alutest|Result\(6) & ((\Alutest|Result\(5)) # (!\Alutest|Result\(4))))) # (!\Alutest|Result\(7) & (\Alutest|Result\(5) & (!\Alutest|Result\(4) & !\Alutest|Result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(5),
	datab => \Alutest|Result\(7),
	datac => \Alutest|Result\(4),
	datad => \Alutest|Result\(6),
	combout => \salida1|Mux2~0_combout\);

-- Location: LCCOMB_X2_Y27_N30
\salida1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida1|Mux1~0_combout\ = (\Alutest|Result\(5) & ((\Alutest|Result\(4) & (\Alutest|Result\(7))) # (!\Alutest|Result\(4) & ((\Alutest|Result\(6)))))) # (!\Alutest|Result\(5) & (\Alutest|Result\(6) & (\Alutest|Result\(7) $ (\Alutest|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(5),
	datab => \Alutest|Result\(7),
	datac => \Alutest|Result\(4),
	datad => \Alutest|Result\(6),
	combout => \salida1|Mux1~0_combout\);

-- Location: LCCOMB_X2_Y27_N20
\salida1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \salida1|Mux0~0_combout\ = (\Alutest|Result\(7) & (\Alutest|Result\(4) & (\Alutest|Result\(5) $ (\Alutest|Result\(6))))) # (!\Alutest|Result\(7) & (!\Alutest|Result\(5) & (\Alutest|Result\(4) $ (\Alutest|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Result\(5),
	datab => \Alutest|Result\(7),
	datac => \Alutest|Result\(4),
	datad => \Alutest|Result\(6),
	combout => \salida1|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y27_N22
\Alutest|Add0|auto_generated|result_int[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0|auto_generated|result_int[9]~18_combout\ = \Alutest|Equal0~0_combout\ $ (!\Alutest|Add0|auto_generated|result_int[8]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Equal0~0_combout\,
	cin => \Alutest|Add0|auto_generated|result_int[8]~17\,
	combout => \Alutest|Add0|auto_generated|result_int[9]~18_combout\);

-- Location: LCCOMB_X1_Y27_N2
\Alutest|NZVC[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC\(0) = (GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & ((\Alutest|Add0|auto_generated|result_int[9]~18_combout\))) # (!GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & (\Alutest|NZVC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alutest|NZVC\(0),
	datac => \Alutest|Equal0~1clkctrl_outclk\,
	datad => \Alutest|Add0|auto_generated|result_int[9]~18_combout\,
	combout => \Alutest|NZVC\(0));

-- Location: LCCOMB_X3_Y27_N10
\Alutest|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add1~0_combout\ = (\A[0]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \Alutest|Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \Alutest|Add1~0_combout\,
	cout => \Alutest|Add1~1\);

-- Location: LCCOMB_X3_Y27_N12
\Alutest|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add1~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (!\Alutest|Add1~1\)) # (!\B[1]~input_o\ & (\Alutest|Add1~1\ & VCC)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & ((\Alutest|Add1~1\) # (GND))) # (!\B[1]~input_o\ & (!\Alutest|Add1~1\))))
-- \Alutest|Add1~3\ = CARRY((\A[1]~input_o\ & (\B[1]~input_o\ & !\Alutest|Add1~1\)) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # (!\Alutest|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \Alutest|Add1~1\,
	combout => \Alutest|Add1~2_combout\,
	cout => \Alutest|Add1~3\);

-- Location: LCCOMB_X3_Y27_N14
\Alutest|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add1~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (\Alutest|Add1~3\)))) # (GND)
-- \Alutest|Add1~5\ = CARRY((\B[2]~input_o\ & (\A[2]~input_o\ & !\Alutest|Add1~3\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (!\Alutest|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Alutest|Add1~3\,
	combout => \Alutest|Add1~4_combout\,
	cout => \Alutest|Add1~5\);

-- Location: LCCOMB_X3_Y27_N16
\Alutest|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add1~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Alutest|Add1~5\)) # (!\B[3]~input_o\ & (\Alutest|Add1~5\ & VCC)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\Alutest|Add1~5\) # (GND))) # (!\B[3]~input_o\ & (!\Alutest|Add1~5\))))
-- \Alutest|Add1~7\ = CARRY((\A[3]~input_o\ & (\B[3]~input_o\ & !\Alutest|Add1~5\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (!\Alutest|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Alutest|Add1~5\,
	combout => \Alutest|Add1~6_combout\,
	cout => \Alutest|Add1~7\);

-- Location: LCCOMB_X3_Y27_N18
\Alutest|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add1~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (\Alutest|Add1~7\)))) # (GND)
-- \Alutest|Add1~9\ = CARRY((\B[4]~input_o\ & (\A[4]~input_o\ & !\Alutest|Add1~7\)) # (!\B[4]~input_o\ & ((\A[4]~input_o\) # (!\Alutest|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Alutest|Add1~7\,
	combout => \Alutest|Add1~8_combout\,
	cout => \Alutest|Add1~9\);

-- Location: LCCOMB_X3_Y27_N20
\Alutest|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add1~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (!\Alutest|Add1~9\)) # (!\A[5]~input_o\ & ((\Alutest|Add1~9\) # (GND))))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (\Alutest|Add1~9\ & VCC)) # (!\A[5]~input_o\ & (!\Alutest|Add1~9\))))
-- \Alutest|Add1~11\ = CARRY((\B[5]~input_o\ & ((!\Alutest|Add1~9\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & !\Alutest|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Alutest|Add1~9\,
	combout => \Alutest|Add1~10_combout\,
	cout => \Alutest|Add1~11\);

-- Location: LCCOMB_X3_Y27_N22
\Alutest|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add1~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (\Alutest|Add1~11\)))) # (GND)
-- \Alutest|Add1~13\ = CARRY((\B[6]~input_o\ & (\A[6]~input_o\ & !\Alutest|Add1~11\)) # (!\B[6]~input_o\ & ((\A[6]~input_o\) # (!\Alutest|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Alutest|Add1~11\,
	combout => \Alutest|Add1~12_combout\,
	cout => \Alutest|Add1~13\);

-- Location: LCCOMB_X3_Y27_N24
\Alutest|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add1~14_combout\ = \A[7]~input_o\ $ (\Alutest|Add1~13\ $ (!\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \Alutest|Add1~13\,
	combout => \Alutest|Add1~14_combout\);

-- Location: LCCOMB_X4_Y27_N0
\Alutest|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|LessThan0~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \Alutest|LessThan0~1_cout\);

-- Location: LCCOMB_X4_Y27_N2
\Alutest|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|LessThan0~3_cout\ = CARRY((\B[1]~input_o\ & (\A[1]~input_o\ & !\Alutest|LessThan0~1_cout\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # (!\Alutest|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Alutest|LessThan0~1_cout\,
	cout => \Alutest|LessThan0~3_cout\);

-- Location: LCCOMB_X4_Y27_N4
\Alutest|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|LessThan0~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\Alutest|LessThan0~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Alutest|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Alutest|LessThan0~3_cout\,
	cout => \Alutest|LessThan0~5_cout\);

-- Location: LCCOMB_X4_Y27_N6
\Alutest|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\Alutest|LessThan0~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\Alutest|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Alutest|LessThan0~5_cout\,
	cout => \Alutest|LessThan0~7_cout\);

-- Location: LCCOMB_X4_Y27_N8
\Alutest|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|LessThan0~9_cout\ = CARRY((\A[4]~input_o\ & (\B[4]~input_o\ & !\Alutest|LessThan0~7_cout\)) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # (!\Alutest|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \Alutest|LessThan0~7_cout\,
	cout => \Alutest|LessThan0~9_cout\);

-- Location: LCCOMB_X4_Y27_N10
\Alutest|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|LessThan0~11_cout\ = CARRY((\A[5]~input_o\ & ((!\Alutest|LessThan0~9_cout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & !\Alutest|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Alutest|LessThan0~9_cout\,
	cout => \Alutest|LessThan0~11_cout\);

-- Location: LCCOMB_X4_Y27_N12
\Alutest|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|LessThan0~13_cout\ = CARRY((\A[6]~input_o\ & (\B[6]~input_o\ & !\Alutest|LessThan0~11_cout\)) # (!\A[6]~input_o\ & ((\B[6]~input_o\) # (!\Alutest|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Alutest|LessThan0~11_cout\,
	cout => \Alutest|LessThan0~13_cout\);

-- Location: LCCOMB_X4_Y27_N14
\Alutest|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|LessThan0~14_combout\ = (\B[7]~input_o\ & ((\Alutest|LessThan0~13_cout\) # (!\A[7]~input_o\))) # (!\B[7]~input_o\ & (!\A[7]~input_o\ & \Alutest|LessThan0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	cin => \Alutest|LessThan0~13_cout\,
	combout => \Alutest|LessThan0~14_combout\);

-- Location: LCCOMB_X3_Y27_N30
\Alutest|NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC[1]~1_combout\ = (\Alutest|Add1~14_combout\ & (\Alutest|LessThan0~14_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\)))) # (!\Alutest|Add1~14_combout\ & ((\A[7]~input_o\ & ((!\B[7]~input_o\))) # (!\A[7]~input_o\ & 
-- (\Alutest|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Add1~14_combout\,
	datab => \A[7]~input_o\,
	datac => \Alutest|LessThan0~14_combout\,
	datad => \B[7]~input_o\,
	combout => \Alutest|NZVC[1]~1_combout\);

-- Location: LCCOMB_X1_Y26_N14
\Alutest|NZVC[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC[1]~2_combout\ = (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & ((!\Alutest|NZVC[1]~1_combout\) # (!\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \Alutest|NZVC[1]~1_combout\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Alutest|NZVC[1]~2_combout\);

-- Location: LCCOMB_X4_Y27_N16
\Alutest|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & VCC))
-- \Alutest|Add0~1\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \Alutest|Add0~0_combout\,
	cout => \Alutest|Add0~1\);

-- Location: LCCOMB_X4_Y27_N18
\Alutest|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\Alutest|Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\Alutest|Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Alutest|Add0~1\)) # (!\A[1]~input_o\ & ((\Alutest|Add0~1\) # (GND)))))
-- \Alutest|Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Alutest|Add0~1\)) # (!\B[1]~input_o\ & ((!\Alutest|Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Alutest|Add0~1\,
	combout => \Alutest|Add0~2_combout\,
	cout => \Alutest|Add0~3\);

-- Location: LCCOMB_X4_Y27_N20
\Alutest|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\Alutest|Add0~3\)))) # (GND)
-- \Alutest|Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Alutest|Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\Alutest|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Alutest|Add0~3\,
	combout => \Alutest|Add0~4_combout\,
	cout => \Alutest|Add0~5\);

-- Location: LCCOMB_X4_Y27_N22
\Alutest|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (\Alutest|Add0~5\ & VCC)) # (!\A[3]~input_o\ & (!\Alutest|Add0~5\)))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (!\Alutest|Add0~5\)) # (!\A[3]~input_o\ & ((\Alutest|Add0~5\) # (GND)))))
-- \Alutest|Add0~7\ = CARRY((\B[3]~input_o\ & (!\A[3]~input_o\ & !\Alutest|Add0~5\)) # (!\B[3]~input_o\ & ((!\Alutest|Add0~5\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Alutest|Add0~5\,
	combout => \Alutest|Add0~6_combout\,
	cout => \Alutest|Add0~7\);

-- Location: LCCOMB_X4_Y27_N24
\Alutest|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (!\Alutest|Add0~7\)))) # (GND)
-- \Alutest|Add0~9\ = CARRY((\A[4]~input_o\ & ((\B[4]~input_o\) # (!\Alutest|Add0~7\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & !\Alutest|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \Alutest|Add0~7\,
	combout => \Alutest|Add0~8_combout\,
	cout => \Alutest|Add0~9\);

-- Location: LCCOMB_X4_Y27_N26
\Alutest|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (\Alutest|Add0~9\ & VCC)) # (!\B[5]~input_o\ & (!\Alutest|Add0~9\)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & (!\Alutest|Add0~9\)) # (!\B[5]~input_o\ & ((\Alutest|Add0~9\) # (GND)))))
-- \Alutest|Add0~11\ = CARRY((\A[5]~input_o\ & (!\B[5]~input_o\ & !\Alutest|Add0~9\)) # (!\A[5]~input_o\ & ((!\Alutest|Add0~9\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Alutest|Add0~9\,
	combout => \Alutest|Add0~10_combout\,
	cout => \Alutest|Add0~11\);

-- Location: LCCOMB_X4_Y27_N28
\Alutest|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (!\Alutest|Add0~11\)))) # (GND)
-- \Alutest|Add0~13\ = CARRY((\A[6]~input_o\ & ((\B[6]~input_o\) # (!\Alutest|Add0~11\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & !\Alutest|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Alutest|Add0~11\,
	combout => \Alutest|Add0~12_combout\,
	cout => \Alutest|Add0~13\);

-- Location: LCCOMB_X4_Y27_N30
\Alutest|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|Add0~14_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (\Alutest|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	cin => \Alutest|Add0~13\,
	combout => \Alutest|Add0~14_combout\);

-- Location: LCCOMB_X1_Y26_N24
\Alutest|NZVC[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC[1]~0_combout\ = ((\A[7]~input_o\ & ((\Alutest|Add0~14_combout\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & ((\B[7]~input_o\) # (!\Alutest|Add0~14_combout\)))) # (!\Alutest|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Alutest|Add0~14_combout\,
	datac => \B[7]~input_o\,
	datad => \Alutest|Equal0~0_combout\,
	combout => \Alutest|NZVC[1]~0_combout\);

-- Location: LCCOMB_X1_Y26_N20
\Alutest|NZVC[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC\(1) = (\Alutest|NZVC[1]~2_combout\ & ((!\Alutest|NZVC[1]~0_combout\))) # (!\Alutest|NZVC[1]~2_combout\ & (\Alutest|NZVC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alutest|NZVC\(1),
	datac => \Alutest|NZVC[1]~2_combout\,
	datad => \Alutest|NZVC[1]~0_combout\,
	combout => \Alutest|NZVC\(1));

-- Location: LCCOMB_X2_Y27_N14
\Alutest|NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC[2]~7_combout\ = (!\Alutest|Add1~10_combout\ & (!\Alutest|Add1~6_combout\ & (!\Alutest|Add1~4_combout\ & !\Alutest|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Add1~10_combout\,
	datab => \Alutest|Add1~6_combout\,
	datac => \Alutest|Add1~4_combout\,
	datad => \Alutest|Add1~8_combout\,
	combout => \Alutest|NZVC[2]~7_combout\);

-- Location: LCCOMB_X3_Y27_N0
\Alutest|NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC[2]~6_combout\ = (\ALU_Sel[0]~input_o\ & (!\Alutest|Add1~14_combout\ & (!\Alutest|Add1~2_combout\ & !\Alutest|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Alutest|Add1~14_combout\,
	datac => \Alutest|Add1~2_combout\,
	datad => \Alutest|Add1~0_combout\,
	combout => \Alutest|NZVC[2]~6_combout\);

-- Location: LCCOMB_X5_Y27_N12
\Alutest|NZVC[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC[2]~3_combout\ = (!\ALU_Sel[0]~input_o\ & (!\Alutest|Add0~14_combout\ & (!\Alutest|Add0~0_combout\ & !\Alutest|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Alutest|Add0~14_combout\,
	datac => \Alutest|Add0~0_combout\,
	datad => \Alutest|Add0~2_combout\,
	combout => \Alutest|NZVC[2]~3_combout\);

-- Location: LCCOMB_X5_Y27_N10
\Alutest|NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC[2]~4_combout\ = (!\Alutest|Add0~8_combout\ & (!\Alutest|Add0~6_combout\ & (!\Alutest|Add0~10_combout\ & !\Alutest|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|Add0~8_combout\,
	datab => \Alutest|Add0~6_combout\,
	datac => \Alutest|Add0~10_combout\,
	datad => \Alutest|Add0~4_combout\,
	combout => \Alutest|NZVC[2]~4_combout\);

-- Location: LCCOMB_X5_Y27_N8
\Alutest|NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC[2]~5_combout\ = (\Alutest|NZVC[2]~3_combout\ & (!\Alutest|Add0~12_combout\ & \Alutest|NZVC[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|NZVC[2]~3_combout\,
	datac => \Alutest|Add0~12_combout\,
	datad => \Alutest|NZVC[2]~4_combout\,
	combout => \Alutest|NZVC[2]~5_combout\);

-- Location: LCCOMB_X3_Y27_N6
\Alutest|NZVC[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC[2]~8_combout\ = (\Alutest|NZVC[2]~5_combout\) # ((\Alutest|NZVC[2]~7_combout\ & (\Alutest|NZVC[2]~6_combout\ & !\Alutest|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alutest|NZVC[2]~7_combout\,
	datab => \Alutest|NZVC[2]~6_combout\,
	datac => \Alutest|Add1~12_combout\,
	datad => \Alutest|NZVC[2]~5_combout\,
	combout => \Alutest|NZVC[2]~8_combout\);

-- Location: LCCOMB_X5_Y27_N14
\Alutest|NZVC[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alutest|NZVC\(2) = (GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & (\Alutest|NZVC[2]~8_combout\)) # (!GLOBAL(\Alutest|Equal0~1clkctrl_outclk\) & ((\Alutest|NZVC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alutest|NZVC[2]~8_combout\,
	datac => \Alutest|NZVC\(2),
	datad => \Alutest|Equal0~1clkctrl_outclk\,
	combout => \Alutest|NZVC\(2));

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;
END structure;


