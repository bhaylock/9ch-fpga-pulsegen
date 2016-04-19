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

-- DATE "04/19/2016 12:00:14"

-- 
-- Device: Altera EP3C25F324C6 Package FBGA324
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

ENTITY 	RAM_Pulse_Gen_ver0_1_top IS
    PORT (
	pulse_out : OUT std_logic_vector(17 DOWNTO 0);
	in_clk : IN std_logic
	);
END RAM_Pulse_Gen_ver0_1_top;

-- Design Ports Information
-- pulse_out[17]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[16]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[15]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[14]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[13]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[12]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[10]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[9]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[8]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[7]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[6]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[5]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_out[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_clk	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_Pulse_Gen_ver0_1_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pulse_out : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_in_clk : std_logic;
SIGNAL \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \in_clk~input_o\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|counter_out[0]~2_combout\ : std_logic;
SIGNAL \inst|counter_out[1]~0_combout\ : std_logic;
SIGNAL \inst|counter_out[2]~1_combout\ : std_logic;
SIGNAL \inst1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|counter_out\ : std_logic_vector(2 DOWNTO 0);

BEGIN

pulse_out <= ww_pulse_out;
ww_in_clk <= in_clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|counter_out\(2) & \inst|counter_out\(1) & \inst|counter_out\(0));

\inst1|altsyncram_component|auto_generated|q_a\(0) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|altsyncram_component|auto_generated|q_a\(1) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|altsyncram_component|auto_generated|q_a\(2) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst1|altsyncram_component|auto_generated|q_a\(3) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst1|altsyncram_component|auto_generated|q_a\(4) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst1|altsyncram_component|auto_generated|q_a\(5) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst1|altsyncram_component|auto_generated|q_a\(6) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst1|altsyncram_component|auto_generated|q_a\(7) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst1|altsyncram_component|auto_generated|q_a\(8) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst1|altsyncram_component|auto_generated|q_a\(9) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst1|altsyncram_component|auto_generated|q_a\(10) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst1|altsyncram_component|auto_generated|q_a\(11) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst1|altsyncram_component|auto_generated|q_a\(12) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst1|altsyncram_component|auto_generated|q_a\(13) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst1|altsyncram_component|auto_generated|q_a\(14) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst1|altsyncram_component|auto_generated|q_a\(15) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst1|altsyncram_component|auto_generated|q_a\(16) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst1|altsyncram_component|auto_generated|q_a\(17) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\inst2|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \in_clk~input_o\);

\inst2|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: IOOBUF_X0_Y8_N16
\pulse_out[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => ww_pulse_out(17));

-- Location: IOOBUF_X0_Y23_N23
\pulse_out[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => ww_pulse_out(16));

-- Location: IOOBUF_X0_Y23_N16
\pulse_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_pulse_out(15));

-- Location: IOOBUF_X0_Y14_N9
\pulse_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_pulse_out(14));

-- Location: IOOBUF_X0_Y14_N2
\pulse_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_pulse_out(13));

-- Location: IOOBUF_X53_Y22_N2
\pulse_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_pulse_out(12));

-- Location: IOOBUF_X53_Y24_N23
\pulse_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_pulse_out(11));

-- Location: IOOBUF_X53_Y5_N23
\pulse_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_pulse_out(10));

-- Location: IOOBUF_X53_Y9_N9
\pulse_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_pulse_out(9));

-- Location: IOOBUF_X0_Y12_N9
\pulse_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_pulse_out(8));

-- Location: IOOBUF_X53_Y6_N23
\pulse_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_pulse_out(7));

-- Location: IOOBUF_X53_Y6_N16
\pulse_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_pulse_out(6));

-- Location: IOOBUF_X0_Y29_N9
\pulse_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_pulse_out(5));

-- Location: IOOBUF_X0_Y29_N2
\pulse_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_pulse_out(4));

-- Location: IOOBUF_X0_Y10_N23
\pulse_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_pulse_out(3));

-- Location: IOOBUF_X0_Y7_N9
\pulse_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_pulse_out(2));

-- Location: IOOBUF_X0_Y28_N9
\pulse_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_pulse_out(1));

-- Location: IOOBUF_X0_Y14_N16
\pulse_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_pulse_out(0));

-- Location: IOIBUF_X27_Y0_N15
\in_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_clk,
	o => \in_clk~input_o\);

-- Location: PLL_4
\inst2|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 1,
	c0_initial => 1,
	c0_low => 1,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 16,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 32,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "source synchronous",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3518,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 390,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst2|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst2|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y10_N28
\inst|counter_out[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|counter_out[0]~2_combout\ = !\inst|counter_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter_out\(0),
	combout => \inst|counter_out[0]~2_combout\);

-- Location: FF_X21_Y10_N29
\inst|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(0));

-- Location: LCCOMB_X21_Y10_N10
\inst|counter_out[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|counter_out[1]~0_combout\ = \inst|counter_out\(1) $ (\inst|counter_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter_out\(1),
	datad => \inst|counter_out\(0),
	combout => \inst|counter_out[1]~0_combout\);

-- Location: FF_X21_Y10_N11
\inst|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(1));

-- Location: LCCOMB_X21_Y10_N8
\inst|counter_out[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|counter_out[2]~1_combout\ = \inst|counter_out\(2) $ (((\inst|counter_out\(1) & \inst|counter_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(1),
	datac => \inst|counter_out\(2),
	datad => \inst|counter_out\(0),
	combout => \inst|counter_out[2]~1_combout\);

-- Location: FF_X21_Y10_N9
\inst|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(2));

-- Location: M9K_X22_Y8_N0
\inst1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000004020000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./Memory_Initialisation_Files/wfm_amptest.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom1port:inst1|altsyncram:altsyncram_component|altsyncram_skc1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 18,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 3,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);
END structure;


