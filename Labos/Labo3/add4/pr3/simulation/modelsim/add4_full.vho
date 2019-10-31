-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Standard Edition"

-- DATE "10/21/2019 10:51:17"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	add4_full IS
    PORT (
	nbr_a_i : IN std_logic_vector(3 DOWNTO 0);
	nbr_b_i : IN std_logic_vector(3 DOWNTO 0);
	cin_i : IN std_logic;
	somme_o : OUT std_logic_vector(3 DOWNTO 0);
	cout_o : OUT std_logic;
	ovr_o : OUT std_logic
	);
END add4_full;

-- Design Ports Information
-- somme_o[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- somme_o[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- somme_o[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- somme_o[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout_o	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ovr_o	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin_i	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nbr_a_i[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nbr_b_i[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nbr_b_i[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nbr_a_i[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nbr_b_i[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nbr_a_i[2]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nbr_b_i[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nbr_a_i[3]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF add4_full IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nbr_a_i : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_nbr_b_i : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cin_i : std_logic;
SIGNAL ww_somme_o : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout_o : std_logic;
SIGNAL ww_ovr_o : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \somme_o[0]~output_o\ : std_logic;
SIGNAL \somme_o[1]~output_o\ : std_logic;
SIGNAL \somme_o[2]~output_o\ : std_logic;
SIGNAL \somme_o[3]~output_o\ : std_logic;
SIGNAL \cout_o~output_o\ : std_logic;
SIGNAL \ovr_o~output_o\ : std_logic;
SIGNAL \nbr_b_i[0]~input_o\ : std_logic;
SIGNAL \cin_i~input_o\ : std_logic;
SIGNAL \nbr_a_i[0]~input_o\ : std_logic;
SIGNAL \ADD1|Add1~0_combout\ : std_logic;
SIGNAL \nbr_b_i[1]~input_o\ : std_logic;
SIGNAL \nbr_a_i[1]~input_o\ : std_logic;
SIGNAL \ADD1|Add0~0_combout\ : std_logic;
SIGNAL \ADD1|Add1~1_combout\ : std_logic;
SIGNAL \ADD2|Add0~1_cout\ : std_logic;
SIGNAL \ADD2|Add0~2_combout\ : std_logic;
SIGNAL \nbr_b_i[2]~input_o\ : std_logic;
SIGNAL \nbr_a_i[2]~input_o\ : std_logic;
SIGNAL \ADD2|Add0~3\ : std_logic;
SIGNAL \ADD2|Add0~4_combout\ : std_logic;
SIGNAL \nbr_b_i[3]~input_o\ : std_logic;
SIGNAL \nbr_a_i[3]~input_o\ : std_logic;
SIGNAL \ADD2|Add0~5\ : std_logic;
SIGNAL \ADD2|Add0~6_combout\ : std_logic;
SIGNAL \ADD2|Add0~7\ : std_logic;
SIGNAL \ADD2|Add0~8_combout\ : std_logic;
SIGNAL \ovr_o~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_nbr_a_i <= nbr_a_i;
ww_nbr_b_i <= nbr_b_i;
ww_cin_i <= cin_i;
somme_o <= ww_somme_o;
cout_o <= ww_cout_o;
ovr_o <= ww_ovr_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y22_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y3_N9
\somme_o[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADD1|Add1~0_combout\,
	devoe => ww_devoe,
	o => \somme_o[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\somme_o[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADD2|Add0~2_combout\,
	devoe => ww_devoe,
	o => \somme_o[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\somme_o[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADD2|Add0~4_combout\,
	devoe => ww_devoe,
	o => \somme_o[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\somme_o[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADD2|Add0~6_combout\,
	devoe => ww_devoe,
	o => \somme_o[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\cout_o~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADD2|Add0~8_combout\,
	devoe => ww_devoe,
	o => \cout_o~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\ovr_o~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ovr_o~4_combout\,
	devoe => ww_devoe,
	o => \ovr_o~output_o\);

-- Location: IOIBUF_X0_Y4_N15
\nbr_b_i[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nbr_b_i(0),
	o => \nbr_b_i[0]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\cin_i~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin_i,
	o => \cin_i~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\nbr_a_i[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nbr_a_i(0),
	o => \nbr_a_i[0]~input_o\);

-- Location: LCCOMB_X2_Y4_N24
\ADD1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD1|Add1~0_combout\ = \nbr_b_i[0]~input_o\ $ (\cin_i~input_o\ $ (\nbr_a_i[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nbr_b_i[0]~input_o\,
	datac => \cin_i~input_o\,
	datad => \nbr_a_i[0]~input_o\,
	combout => \ADD1|Add1~0_combout\);

-- Location: IOIBUF_X0_Y6_N8
\nbr_b_i[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nbr_b_i(1),
	o => \nbr_b_i[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\nbr_a_i[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nbr_a_i(1),
	o => \nbr_a_i[1]~input_o\);

-- Location: LCCOMB_X2_Y4_N2
\ADD1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD1|Add0~0_combout\ = (\nbr_b_i[0]~input_o\ & \nbr_a_i[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nbr_b_i[0]~input_o\,
	datad => \nbr_a_i[0]~input_o\,
	combout => \ADD1|Add0~0_combout\);

-- Location: LCCOMB_X2_Y4_N12
\ADD1|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD1|Add1~1_combout\ = (\cin_i~input_o\ & (\nbr_b_i[0]~input_o\ $ (\nbr_a_i[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nbr_b_i[0]~input_o\,
	datac => \cin_i~input_o\,
	datad => \nbr_a_i[0]~input_o\,
	combout => \ADD1|Add1~1_combout\);

-- Location: LCCOMB_X3_Y4_N16
\ADD2|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD2|Add0~1_cout\ = CARRY((\ADD1|Add0~0_combout\) # (\ADD1|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD1|Add0~0_combout\,
	datab => \ADD1|Add1~1_combout\,
	datad => VCC,
	cout => \ADD2|Add0~1_cout\);

-- Location: LCCOMB_X3_Y4_N18
\ADD2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD2|Add0~2_combout\ = (\nbr_b_i[1]~input_o\ & ((\nbr_a_i[1]~input_o\ & (\ADD2|Add0~1_cout\ & VCC)) # (!\nbr_a_i[1]~input_o\ & (!\ADD2|Add0~1_cout\)))) # (!\nbr_b_i[1]~input_o\ & ((\nbr_a_i[1]~input_o\ & (!\ADD2|Add0~1_cout\)) # (!\nbr_a_i[1]~input_o\ & 
-- ((\ADD2|Add0~1_cout\) # (GND)))))
-- \ADD2|Add0~3\ = CARRY((\nbr_b_i[1]~input_o\ & (!\nbr_a_i[1]~input_o\ & !\ADD2|Add0~1_cout\)) # (!\nbr_b_i[1]~input_o\ & ((!\ADD2|Add0~1_cout\) # (!\nbr_a_i[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \nbr_b_i[1]~input_o\,
	datab => \nbr_a_i[1]~input_o\,
	datad => VCC,
	cin => \ADD2|Add0~1_cout\,
	combout => \ADD2|Add0~2_combout\,
	cout => \ADD2|Add0~3\);

-- Location: IOIBUF_X0_Y8_N1
\nbr_b_i[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nbr_b_i(2),
	o => \nbr_b_i[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\nbr_a_i[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nbr_a_i(2),
	o => \nbr_a_i[2]~input_o\);

-- Location: LCCOMB_X3_Y4_N20
\ADD2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD2|Add0~4_combout\ = ((\nbr_b_i[2]~input_o\ $ (\nbr_a_i[2]~input_o\ $ (!\ADD2|Add0~3\)))) # (GND)
-- \ADD2|Add0~5\ = CARRY((\nbr_b_i[2]~input_o\ & ((\nbr_a_i[2]~input_o\) # (!\ADD2|Add0~3\))) # (!\nbr_b_i[2]~input_o\ & (\nbr_a_i[2]~input_o\ & !\ADD2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \nbr_b_i[2]~input_o\,
	datab => \nbr_a_i[2]~input_o\,
	datad => VCC,
	cin => \ADD2|Add0~3\,
	combout => \ADD2|Add0~4_combout\,
	cout => \ADD2|Add0~5\);

-- Location: IOIBUF_X0_Y5_N22
\nbr_b_i[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nbr_b_i(3),
	o => \nbr_b_i[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\nbr_a_i[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nbr_a_i(3),
	o => \nbr_a_i[3]~input_o\);

-- Location: LCCOMB_X3_Y4_N22
\ADD2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD2|Add0~6_combout\ = (\nbr_b_i[3]~input_o\ & ((\nbr_a_i[3]~input_o\ & (\ADD2|Add0~5\ & VCC)) # (!\nbr_a_i[3]~input_o\ & (!\ADD2|Add0~5\)))) # (!\nbr_b_i[3]~input_o\ & ((\nbr_a_i[3]~input_o\ & (!\ADD2|Add0~5\)) # (!\nbr_a_i[3]~input_o\ & 
-- ((\ADD2|Add0~5\) # (GND)))))
-- \ADD2|Add0~7\ = CARRY((\nbr_b_i[3]~input_o\ & (!\nbr_a_i[3]~input_o\ & !\ADD2|Add0~5\)) # (!\nbr_b_i[3]~input_o\ & ((!\ADD2|Add0~5\) # (!\nbr_a_i[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \nbr_b_i[3]~input_o\,
	datab => \nbr_a_i[3]~input_o\,
	datad => VCC,
	cin => \ADD2|Add0~5\,
	combout => \ADD2|Add0~6_combout\,
	cout => \ADD2|Add0~7\);

-- Location: LCCOMB_X3_Y4_N24
\ADD2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ADD2|Add0~8_combout\ = !\ADD2|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ADD2|Add0~7\,
	combout => \ADD2|Add0~8_combout\);

-- Location: LCCOMB_X2_Y4_N14
\ovr_o~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ovr_o~4_combout\ = \ADD2|Add0~8_combout\ $ (((\nbr_b_i[0]~input_o\ & ((\cin_i~input_o\) # (\nbr_a_i[0]~input_o\))) # (!\nbr_b_i[0]~input_o\ & (\cin_i~input_o\ & \nbr_a_i[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD2|Add0~8_combout\,
	datab => \nbr_b_i[0]~input_o\,
	datac => \cin_i~input_o\,
	datad => \nbr_a_i[0]~input_o\,
	combout => \ovr_o~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_somme_o(0) <= \somme_o[0]~output_o\;

ww_somme_o(1) <= \somme_o[1]~output_o\;

ww_somme_o(2) <= \somme_o[2]~output_o\;

ww_somme_o(3) <= \somme_o[3]~output_o\;

ww_cout_o <= \cout_o~output_o\;

ww_ovr_o <= \ovr_o~output_o\;
END structure;


