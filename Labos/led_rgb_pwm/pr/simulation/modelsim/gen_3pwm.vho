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

-- DATE "11/25/2019 09:50:00"

-- 
-- Device: Altera 5M570ZF256C5 Package FBGA256
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	maxv_top IS
    PORT (
	Clk_Gen_i : IN std_logic;
	Clk_Main_i : IN std_logic;
	Con_25p_io : BUFFER std_logic_vector(25 DOWNTO 1);
	Con_80p_io : BUFFER std_logic_vector(79 DOWNTO 2);
	Mezzanine_io : BUFFER std_logic_vector(20 DOWNTO 5);
	Encoder_A_i : IN std_logic;
	Encoder_B_i : IN std_logic;
	nButton_i : IN std_logic_vector(8 DOWNTO 1);
	nReset_i : IN std_logic;
	Switch_i : IN std_logic_vector(7 DOWNTO 0);
	nLed_o : BUFFER std_logic_vector(7 DOWNTO 0);
	Led_RGB_o : BUFFER std_logic_vector(2 DOWNTO 0);
	nSeven_Seg_o : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END maxv_top;

-- Design Ports Information


ARCHITECTURE structure OF maxv_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk_Gen_i : std_logic;
SIGNAL ww_Clk_Main_i : std_logic;
SIGNAL ww_Con_25p_io : std_logic_vector(25 DOWNTO 1);
SIGNAL ww_Con_80p_io : std_logic_vector(79 DOWNTO 2);
SIGNAL ww_Mezzanine_io : std_logic_vector(20 DOWNTO 5);
SIGNAL ww_Encoder_A_i : std_logic;
SIGNAL ww_Encoder_B_i : std_logic;
SIGNAL ww_nButton_i : std_logic_vector(8 DOWNTO 1);
SIGNAL ww_nReset_i : std_logic;
SIGNAL ww_Switch_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_nLed_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Led_RGB_o : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_nSeven_Seg_o : std_logic_vector(7 DOWNTO 0);
SIGNAL \cpt_s[10]~27_cout\ : std_logic;
SIGNAL \cpt_s[10]~32_cout\ : std_logic;
SIGNAL \cpt_s[10]~37_cout\ : std_logic;
SIGNAL \cpt_s[10]~42_cout\ : std_logic;
SIGNAL \cpt_s[10]~52_cout\ : std_logic;
SIGNAL \cpt_s[10]~57_cout\ : std_logic;
SIGNAL \cpt_s[10]~62_cout\ : std_logic;
SIGNAL \Con_25p_io[9]~24\ : std_logic;
SIGNAL \Con_25p_io[10]~25\ : std_logic;
SIGNAL \Con_25p_io[11]~26\ : std_logic;
SIGNAL \Con_25p_io[13]~28\ : std_logic;
SIGNAL \Con_25p_io[14]~29\ : std_logic;
SIGNAL \Con_25p_io[15]~27\ : std_logic;
SIGNAL \Clk_Main_i~combout\ : std_logic;
SIGNAL \nReset_i~combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[1]~1\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[1]~1COUT1_19\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[2]~3\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[2]~3COUT1_20\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[3]~5\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[3]~5COUT1_21\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[4]~7\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[4]~7COUT1_22\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11COUT1_23\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13COUT1_24\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[8]~15\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s[8]~15COUT1_25\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|CPT|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~6_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~11_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~10_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~12_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~8_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~7_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~9_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~13_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~4_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~3_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~5_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~2_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~14_combout\ : std_logic;
SIGNAL \U1|Bloc_converter|ton_r_o[6]~1_combout\ : std_logic;
SIGNAL \U1|Bloc_converter|ton_r_o[6]~0_combout\ : std_logic;
SIGNAL \U1|Bloc_converter|ton_r_o[6]~2_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan0~15_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan1~1_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan1~2_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan1~3_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~10_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~11_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~1_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~2_combout\ : std_logic;
SIGNAL \U1|Bloc_converter|ton_b_o[5]~0_combout\ : std_logic;
SIGNAL \U1|Bloc_converter|ton_b_o[5]~1_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~3_combout\ : std_logic;
SIGNAL \U1|Bloc_converter|ton_b_o[6]~2_combout\ : std_logic;
SIGNAL \U1|Bloc_converter|ton_b_o[6]~3_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~8_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~9_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~5_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~4_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~6_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~7_combout\ : std_logic;
SIGNAL \U1|Bloc_pwm|LessThan2~12_combout\ : std_logic;
SIGNAL \cpt_s[10]~62COUT0_68\ : std_logic;
SIGNAL \cpt_s[10]~62COUT1_69\ : std_logic;
SIGNAL \cpt_s[10]~57COUT0_71\ : std_logic;
SIGNAL \cpt_s[10]~57COUT1_72\ : std_logic;
SIGNAL \cpt_s[10]~52COUT0_74\ : std_logic;
SIGNAL \cpt_s[10]~52COUT1_75\ : std_logic;
SIGNAL \cpt_s[10]~47_cout\ : std_logic;
SIGNAL \cpt_s[10]~42COUT0_77\ : std_logic;
SIGNAL \cpt_s[10]~42COUT1_78\ : std_logic;
SIGNAL \cpt_s[10]~37COUT0_80\ : std_logic;
SIGNAL \cpt_s[10]~37COUT1_81\ : std_logic;
SIGNAL \cpt_s[10]~32COUT0_83\ : std_logic;
SIGNAL \cpt_s[10]~32COUT1_84\ : std_logic;
SIGNAL \cpt_s[10]~27COUT0_86\ : std_logic;
SIGNAL \cpt_s[10]~27COUT1_87\ : std_logic;
SIGNAL \cpt_s[10]~22_cout\ : std_logic;
SIGNAL \cpt_s[10]~19\ : std_logic;
SIGNAL \cpt_s[10]~19COUT1_88\ : std_logic;
SIGNAL \cpt_s[11]~17\ : std_logic;
SIGNAL \cpt_s[11]~17COUT1_89\ : std_logic;
SIGNAL \cpt_s[12]~15\ : std_logic;
SIGNAL \cpt_s[12]~15COUT1_90\ : std_logic;
SIGNAL \cpt_s[13]~13\ : std_logic;
SIGNAL \cpt_s[13]~13COUT1_91\ : std_logic;
SIGNAL \cpt_s[14]~11\ : std_logic;
SIGNAL \cpt_s[15]~9\ : std_logic;
SIGNAL \cpt_s[15]~9COUT1_92\ : std_logic;
SIGNAL \cpt_s[16]~7\ : std_logic;
SIGNAL \cpt_s[16]~7COUT1_93\ : std_logic;
SIGNAL \cpt_s[17]~5\ : std_logic;
SIGNAL \cpt_s[17]~5COUT1_94\ : std_logic;
SIGNAL \cpt_s[18]~3\ : std_logic;
SIGNAL \cpt_s[18]~3COUT1_95\ : std_logic;
SIGNAL \Switch_i~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \nButton_i~combout\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \U1|Bloc_pwm|CPT|val_cnt_pres_s\ : std_logic_vector(9 DOWNTO 0);
SIGNAL cpt_s : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_nReset_i~combout\ : std_logic;
SIGNAL ALT_INV_cpt_s : std_logic_vector(19 DOWNTO 19);
SIGNAL \U1|Bloc_pwm|CPT|ALT_INV_Equal0~2_combout\ : std_logic;

BEGIN

ww_Clk_Gen_i <= Clk_Gen_i;
ww_Clk_Main_i <= Clk_Main_i;
Con_25p_io <= ww_Con_25p_io;
Con_80p_io <= ww_Con_80p_io;
Mezzanine_io <= ww_Mezzanine_io;
ww_Encoder_A_i <= Encoder_A_i;
ww_Encoder_B_i <= Encoder_B_i;
ww_nButton_i <= nButton_i;
ww_nReset_i <= nReset_i;
ww_Switch_i <= Switch_i;
nLed_o <= ww_nLed_o;
Led_RGB_o <= ww_Led_RGB_o;
nSeven_Seg_o <= ww_nSeven_Seg_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_nReset_i~combout\ <= NOT \nReset_i~combout\;
ALT_INV_cpt_s(19) <= NOT cpt_s(19);
\U1|Bloc_pwm|CPT|ALT_INV_Equal0~2_combout\ <= NOT \U1|Bloc_pwm|CPT|Equal0~2_combout\;

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(9),
	combout => \Con_25p_io[9]~24\);

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(10),
	combout => \Con_25p_io[10]~25\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(11),
	combout => \Con_25p_io[11]~26\);

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(13),
	combout => \Con_25p_io[13]~28\);

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(14),
	combout => \Con_25p_io[14]~29\);

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(15),
	combout => \Con_25p_io[15]~27\);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk_Main_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk_Main_i,
	combout => \Clk_Main_i~combout\);

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nReset_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nReset_i,
	combout => \nReset_i~combout\);

-- Location: LC_X3_Y6_N0
\cpt_s[0]\ : maxv_lcell
-- Equation(s):
-- cpt_s(0) = DFFEAS((((!cpt_s(0)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => cpt_s(0),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(0));

-- Location: LC_X2_Y6_N0
\U1|Bloc_pwm|CPT|val_cnt_pres_s[1]\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s\(1) = DFFEAS(cpt_s(0) $ ((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(1))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[1]~1\ = CARRY((cpt_s(0) & (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(1))))
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[1]~1COUT1_19\ = CARRY((cpt_s(0) & (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(0),
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(1),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(1),
	cout0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[1]~1\,
	cout1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[1]~1COUT1_19\);

-- Location: LC_X2_Y6_N1
\U1|Bloc_pwm|CPT|val_cnt_pres_s[2]\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s\(2) = DFFEAS((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(2) $ ((\U1|Bloc_pwm|CPT|val_cnt_pres_s[1]~1\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[2]~3\ = CARRY(((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[1]~1\) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(2))))
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[2]~3COUT1_20\ = CARRY(((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[1]~1COUT1_19\) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(2),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[1]~1\,
	cin1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[1]~1COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(2),
	cout0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[2]~3\,
	cout1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[2]~3COUT1_20\);

-- Location: LC_X2_Y6_N2
\U1|Bloc_pwm|CPT|val_cnt_pres_s[3]\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s\(3) = DFFEAS((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(3) $ ((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[2]~3\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[3]~5\ = CARRY(((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(3) & !\U1|Bloc_pwm|CPT|val_cnt_pres_s[2]~3\)))
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[3]~5COUT1_21\ = CARRY(((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(3) & !\U1|Bloc_pwm|CPT|val_cnt_pres_s[2]~3COUT1_20\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(3),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[2]~3\,
	cin1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[2]~3COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(3),
	cout0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[3]~5\,
	cout1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[3]~5COUT1_21\);

-- Location: LC_X2_Y6_N9
\U1|Bloc_pwm|CPT|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|Equal0~0_combout\ = (cpt_s(0) & (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(3) & (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(1) & \U1|Bloc_pwm|CPT|val_cnt_pres_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cpt_s(0),
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(3),
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(1),
	datad => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|CPT|Equal0~0_combout\);

-- Location: LC_X2_Y6_N3
\U1|Bloc_pwm|CPT|val_cnt_pres_s[4]\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s\(4) = DFFEAS(\U1|Bloc_pwm|CPT|val_cnt_pres_s\(4) $ ((((\U1|Bloc_pwm|CPT|val_cnt_pres_s[3]~5\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[4]~7\ = CARRY(((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[3]~5\)) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(4)))
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[4]~7COUT1_22\ = CARRY(((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[3]~5COUT1_21\)) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(4),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[3]~5\,
	cin1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[3]~5COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(4),
	cout0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[4]~7\,
	cout1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[4]~7COUT1_22\);

-- Location: LC_X2_Y6_N4
\U1|Bloc_pwm|CPT|val_cnt_pres_s[5]\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s\(5) = DFFEAS(\U1|Bloc_pwm|CPT|val_cnt_pres_s\(5) $ ((((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[4]~7\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\ = CARRY((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(5) & ((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[4]~7COUT1_22\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(5),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[4]~7\,
	cin1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[4]~7COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(5),
	cout => \U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\);

-- Location: LC_X2_Y6_N5
\U1|Bloc_pwm|CPT|val_cnt_pres_s[6]\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s\(6) = DFFEAS(\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6) $ ((((\U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11\ = CARRY(((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\)) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6)))
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11COUT1_23\ = CARRY(((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\)) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(6),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(6),
	cout0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11\,
	cout1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11COUT1_23\);

-- Location: LC_X2_Y6_N6
\U1|Bloc_pwm|CPT|val_cnt_pres_s[7]\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) = DFFEAS(\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) $ ((((!(!\U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\ & \U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11\) # (\U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\ & 
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11COUT1_23\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13\ = CARRY((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) & ((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11\))))
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13COUT1_24\ = CARRY((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) & ((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11COUT1_23\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\,
	cin0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11\,
	cin1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[6]~11COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7),
	cout0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13\,
	cout1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13COUT1_24\);

-- Location: LC_X2_Y6_N7
\U1|Bloc_pwm|CPT|val_cnt_pres_s[8]\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s\(8) = DFFEAS((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8) $ (((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\ & \U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13\) # (\U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\ & 
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13COUT1_24\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[8]~15\ = CARRY(((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13\) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8))))
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s[8]~15COUT1_25\ = CARRY(((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13COUT1_24\) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(8),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\,
	cin0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13\,
	cin1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[7]~13COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(8),
	cout0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[8]~15\,
	cout1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[8]~15COUT1_25\);

-- Location: LC_X2_Y6_N8
\U1|Bloc_pwm|CPT|val_cnt_pres_s[9]\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|val_cnt_pres_s\(9) = DFFEAS((((!\U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\ & \U1|Bloc_pwm|CPT|val_cnt_pres_s[8]~15\) # (\U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\ & \U1|Bloc_pwm|CPT|val_cnt_pres_s[8]~15COUT1_25\) $ 
-- (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(9)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(9),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \U1|Bloc_pwm|CPT|val_cnt_pres_s[5]~9\,
	cin0 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[8]~15\,
	cin1 => \U1|Bloc_pwm|CPT|val_cnt_pres_s[8]~15COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(9));

-- Location: LC_X3_Y5_N3
\U1|Bloc_pwm|CPT|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|Equal0~1_combout\ = (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(4) & (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(5) & (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) & \U1|Bloc_pwm|CPT|val_cnt_pres_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(4),
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(5),
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7),
	datad => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|CPT|Equal0~1_combout\);

-- Location: LC_X3_Y5_N7
\U1|Bloc_pwm|CPT|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|CPT|Equal0~2_combout\ = (\U1|Bloc_pwm|CPT|Equal0~0_combout\ & (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8) & (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(9) & \U1|Bloc_pwm|CPT|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|CPT|Equal0~0_combout\,
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(8),
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(9),
	datad => \U1|Bloc_pwm|CPT|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|CPT|Equal0~2_combout\);

-- Location: LC_X3_Y5_N2
\U1|Bloc_pwm|LessThan0~6\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~6_combout\ = (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(5) & (((!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(3) & !\U1|Bloc_pwm|CPT|val_cnt_pres_s\(2))) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0133",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(3),
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(5),
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(2),
	datad => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~6_combout\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(0),
	combout => \Switch_i~combout\(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(1),
	combout => \Switch_i~combout\(1));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(2),
	combout => \Switch_i~combout\(2));

-- Location: LC_X3_Y4_N4
\U1|Bloc_pwm|LessThan0~11\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~11_combout\ = (!\Switch_i~combout\(0) & ((\Switch_i~combout\(1)) # ((\Switch_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5454",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~11_combout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(1),
	combout => \nButton_i~combout\(1));

-- Location: LC_X3_Y4_N2
\U1|Bloc_pwm|LessThan0~10\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~10_combout\ = (!\Con_25p_io[9]~24\ & (((\Con_25p_io[11]~26\) # (\Con_25p_io[10]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_25p_io[9]~24\,
	datac => \Con_25p_io[11]~26\,
	datad => \Con_25p_io[10]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~10_combout\);

-- Location: LC_X3_Y4_N5
\U1|Bloc_pwm|LessThan0~12\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~12_combout\ = (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6) & ((\nButton_i~combout\(1) & (\U1|Bloc_pwm|LessThan0~11_combout\)) # (!\nButton_i~combout\(1) & ((\U1|Bloc_pwm|LessThan0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|LessThan0~11_combout\,
	datab => \nButton_i~combout\(1),
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(6),
	datad => \U1|Bloc_pwm|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~12_combout\);

-- Location: LC_X3_Y4_N6
\U1|Bloc_pwm|LessThan0~8\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~8_combout\ = (\nButton_i~combout\(1) & (((\Switch_i~combout\(1)) # (\Switch_i~combout\(2))))) # (!\nButton_i~combout\(1) & (\Con_25p_io[9]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_25p_io[9]~24\,
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \nButton_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~8_combout\);

-- Location: LC_X3_Y4_N9
\U1|Bloc_pwm|LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~7_combout\ = (\nButton_i~combout\(1) & (((\Switch_i~combout\(0))))) # (!\nButton_i~combout\(1) & ((\Con_25p_io[11]~26\) # ((\Con_25p_io[10]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_25p_io[11]~26\,
	datab => \nButton_i~combout\(1),
	datac => \Switch_i~combout\(0),
	datad => \Con_25p_io[10]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~7_combout\);

-- Location: LC_X3_Y4_N1
\U1|Bloc_pwm|LessThan0~9\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~9_combout\ = (\U1|Bloc_pwm|LessThan0~8_combout\ & (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6) $ (((\U1|Bloc_pwm|LessThan0~7_combout\) # (!\nButton_i~combout\(1)))))) # (!\U1|Bloc_pwm|LessThan0~8_combout\ & 
-- (\U1|Bloc_pwm|LessThan0~7_combout\ & (\nButton_i~combout\(1) $ (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|LessThan0~8_combout\,
	datab => \nButton_i~combout\(1),
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(6),
	datad => \U1|Bloc_pwm|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~9_combout\);

-- Location: LC_X3_Y4_N3
\U1|Bloc_pwm|LessThan0~13\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~13_combout\ = ((\U1|Bloc_pwm|LessThan0~12_combout\) # ((\U1|Bloc_pwm|LessThan0~6_combout\ & \U1|Bloc_pwm|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Bloc_pwm|LessThan0~6_combout\,
	datac => \U1|Bloc_pwm|LessThan0~12_combout\,
	datad => \U1|Bloc_pwm|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~13_combout\);

-- Location: LC_X3_Y4_N0
\U1|Bloc_pwm|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~4_combout\ = (\Switch_i~combout\(0) & (\Switch_i~combout\(1))) # (!\Switch_i~combout\(0) & (!\Switch_i~combout\(1) & (\Switch_i~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9898",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~4_combout\);

-- Location: LC_X3_Y5_N5
\U1|Bloc_pwm|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~3_combout\ = ((\Con_25p_io[10]~25\ & ((\Con_25p_io[9]~24\))) # (!\Con_25p_io[10]~25\ & (\Con_25p_io[11]~26\ & !\Con_25p_io[9]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_25p_io[11]~26\,
	datac => \Con_25p_io[10]~25\,
	datad => \Con_25p_io[9]~24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~3_combout\);

-- Location: LC_X3_Y5_N6
\U1|Bloc_pwm|LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~5_combout\ = (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) & ((\nButton_i~combout\(1) & (\U1|Bloc_pwm|LessThan0~4_combout\)) # (!\nButton_i~combout\(1) & ((\U1|Bloc_pwm|LessThan0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|LessThan0~4_combout\,
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7),
	datac => \U1|Bloc_pwm|LessThan0~3_combout\,
	datad => \nButton_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~5_combout\);

-- Location: LC_X3_Y4_N8
\U1|Bloc_pwm|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~1_combout\ = (\Switch_i~combout\(0) & (\Switch_i~combout\(1))) # (!\Switch_i~combout\(0) & (!\Switch_i~combout\(1) & (\Switch_i~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9898",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~1_combout\);

-- Location: LC_X3_Y5_N0
\U1|Bloc_pwm|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~0_combout\ = ((\Con_25p_io[10]~25\ & ((\Con_25p_io[9]~24\))) # (!\Con_25p_io[10]~25\ & (\Con_25p_io[11]~26\ & !\Con_25p_io[9]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_25p_io[11]~26\,
	datac => \Con_25p_io[10]~25\,
	datad => \Con_25p_io[9]~24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~0_combout\);

-- Location: LC_X3_Y5_N1
\U1|Bloc_pwm|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~2_combout\ = \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) $ (((\nButton_i~combout\(1) & (\U1|Bloc_pwm|LessThan0~1_combout\)) # (!\nButton_i~combout\(1) & ((\U1|Bloc_pwm|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4b78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|LessThan0~1_combout\,
	datab => \nButton_i~combout\(1),
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7),
	datad => \U1|Bloc_pwm|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~2_combout\);

-- Location: LC_X3_Y5_N8
\U1|Bloc_pwm|LessThan0~14\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~14_combout\ = ((\U1|Bloc_pwm|LessThan0~5_combout\) # ((\U1|Bloc_pwm|LessThan0~13_combout\ & !\U1|Bloc_pwm|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Bloc_pwm|LessThan0~13_combout\,
	datac => \U1|Bloc_pwm|LessThan0~5_combout\,
	datad => \U1|Bloc_pwm|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~14_combout\);

-- Location: LC_X3_Y4_N7
\U1|Bloc_converter|ton_r_o[6]~1\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_converter|ton_r_o[6]~1_combout\ = (\Switch_i~combout\(2) & ((\Switch_i~combout\(0)) # ((\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_converter|ton_r_o[6]~1_combout\);

-- Location: LC_X4_Y5_N1
\U1|Bloc_converter|ton_r_o[6]~0\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_converter|ton_r_o[6]~0_combout\ = ((\Con_25p_io[11]~26\ & ((\Con_25p_io[9]~24\) # (\Con_25p_io[10]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_25p_io[9]~24\,
	datac => \Con_25p_io[11]~26\,
	datad => \Con_25p_io[10]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_converter|ton_r_o[6]~0_combout\);

-- Location: LC_X3_Y5_N9
\U1|Bloc_converter|ton_r_o[6]~2\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_converter|ton_r_o[6]~2_combout\ = ((\nButton_i~combout\(1) & (!\U1|Bloc_converter|ton_r_o[6]~1_combout\)) # (!\nButton_i~combout\(1) & ((!\U1|Bloc_converter|ton_r_o[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nButton_i~combout\(1),
	datac => \U1|Bloc_converter|ton_r_o[6]~1_combout\,
	datad => \U1|Bloc_converter|ton_r_o[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_converter|ton_r_o[6]~2_combout\);

-- Location: LC_X3_Y5_N4
\U1|Bloc_pwm|LessThan0~15\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan0~15_combout\ = (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(9) & ((\U1|Bloc_pwm|LessThan0~14_combout\ & ((!\U1|Bloc_converter|ton_r_o[6]~2_combout\) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8)))) # (!\U1|Bloc_pwm|LessThan0~14_combout\ & 
-- (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8) & !\U1|Bloc_converter|ton_r_o[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "020b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|LessThan0~14_combout\,
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(8),
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(9),
	datad => \U1|Bloc_converter|ton_r_o[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan0~15_combout\);

-- Location: LC_X4_Y5_N6
\U1|Bloc_pwm|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan1~0_combout\ = (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8) & (\Con_25p_io[11]~26\ & (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) & \Con_25p_io[10]~25\))) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8) & ((\Con_25p_io[11]~26\) # 
-- ((!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) & \Con_25p_io[10]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4d44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(8),
	datab => \Con_25p_io[11]~26\,
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7),
	datad => \Con_25p_io[10]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan1~0_combout\);

-- Location: LC_X4_Y5_N0
\U1|Bloc_pwm|LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan1~1_combout\ = (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8) & (((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) & !\Con_25p_io[10]~25\)) # (!\Con_25p_io[11]~26\))) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8) & (\Con_25p_io[11]~26\ $ 
-- (((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) & !\Con_25p_io[10]~25\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66b6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(8),
	datab => \Con_25p_io[11]~26\,
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7),
	datad => \Con_25p_io[10]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan1~1_combout\);

-- Location: LC_X4_Y5_N7
\U1|Bloc_pwm|LessThan1~2\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan1~2_combout\ = (!\U1|Bloc_pwm|LessThan1~1_combout\ & ((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6) & (\U1|Bloc_pwm|LessThan1~0_combout\ & !\U1|Bloc_pwm|LessThan0~6_combout\)) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6) & 
-- (!\U1|Bloc_pwm|LessThan1~0_combout\ & \U1|Bloc_pwm|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(6),
	datab => \U1|Bloc_pwm|LessThan1~1_combout\,
	datac => \U1|Bloc_pwm|LessThan1~0_combout\,
	datad => \U1|Bloc_pwm|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan1~2_combout\);

-- Location: LC_X4_Y5_N8
\U1|Bloc_pwm|LessThan1~3\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan1~3_combout\ = (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(9) & ((\U1|Bloc_pwm|LessThan1~2_combout\ & ((\Con_25p_io[9]~24\))) # (!\U1|Bloc_pwm|LessThan1~2_combout\ & (\U1|Bloc_pwm|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|LessThan1~0_combout\,
	datab => \U1|Bloc_pwm|LessThan1~2_combout\,
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(9),
	datad => \Con_25p_io[9]~24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan1~3_combout\);

-- Location: LC_X4_Y4_N2
\U1|Bloc_pwm|LessThan2~10\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~10_combout\ = ((!\Con_25p_io[13]~28\ & ((\Con_25p_io[15]~27\) # (\Con_25p_io[14]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_25p_io[15]~27\,
	datac => \Con_25p_io[13]~28\,
	datad => \Con_25p_io[14]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~10_combout\);

-- Location: LC_X4_Y4_N3
\U1|Bloc_pwm|LessThan2~11\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~11_combout\ = (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6) & ((\nButton_i~combout\(1) & ((\U1|Bloc_pwm|LessThan2~10_combout\))) # (!\nButton_i~combout\(1) & (\U1|Bloc_pwm|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nButton_i~combout\(1),
	datab => \U1|Bloc_pwm|LessThan0~10_combout\,
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(6),
	datad => \U1|Bloc_pwm|LessThan2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~11_combout\);

-- Location: LC_X4_Y4_N9
\U1|Bloc_pwm|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~1_combout\ = ((\Con_25p_io[15]~27\ & ((\Con_25p_io[13]~28\) # (\Con_25p_io[14]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_25p_io[15]~27\,
	datac => \Con_25p_io[13]~28\,
	datad => \Con_25p_io[14]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~1_combout\);

-- Location: LC_X4_Y4_N4
\U1|Bloc_pwm|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~0_combout\ = ((\Con_25p_io[11]~26\ & ((\Con_25p_io[9]~24\) # (\Con_25p_io[10]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_25p_io[11]~26\,
	datac => \Con_25p_io[9]~24\,
	datad => \Con_25p_io[10]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~0_combout\);

-- Location: LC_X4_Y4_N5
\U1|Bloc_pwm|LessThan2~2\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~2_combout\ = \U1|Bloc_pwm|CPT|val_cnt_pres_s\(8) $ (((\nButton_i~combout\(1) & (!\U1|Bloc_pwm|LessThan2~1_combout\)) # (!\nButton_i~combout\(1) & ((!\U1|Bloc_pwm|LessThan2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d287",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nButton_i~combout\(1),
	datab => \U1|Bloc_pwm|LessThan2~1_combout\,
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(8),
	datad => \U1|Bloc_pwm|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~2_combout\);

-- Location: LC_X4_Y4_N0
\U1|Bloc_converter|ton_b_o[5]~0\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_converter|ton_b_o[5]~0_combout\ = ((\Con_25p_io[13]~28\ & ((\Con_25p_io[14]~29\))) # (!\Con_25p_io[13]~28\ & (\Con_25p_io[15]~27\ & !\Con_25p_io[14]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_25p_io[15]~27\,
	datac => \Con_25p_io[13]~28\,
	datad => \Con_25p_io[14]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_converter|ton_b_o[5]~0_combout\);

-- Location: LC_X5_Y5_N1
\U1|Bloc_converter|ton_b_o[5]~1\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_converter|ton_b_o[5]~1_combout\ = ((\nButton_i~combout\(1) & ((\U1|Bloc_converter|ton_b_o[5]~0_combout\))) # (!\nButton_i~combout\(1) & (\U1|Bloc_pwm|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Bloc_pwm|LessThan0~3_combout\,
	datac => \nButton_i~combout\(1),
	datad => \U1|Bloc_converter|ton_b_o[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_converter|ton_b_o[5]~1_combout\);

-- Location: LC_X4_Y5_N2
\U1|Bloc_pwm|LessThan2~3\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~3_combout\ = (\U1|Bloc_pwm|LessThan2~2_combout\ & (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(9) & (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) $ (!\U1|Bloc_converter|ton_b_o[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0802",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|LessThan2~2_combout\,
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7),
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(9),
	datad => \U1|Bloc_converter|ton_b_o[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~3_combout\);

-- Location: LC_X4_Y4_N6
\U1|Bloc_converter|ton_b_o[6]~2\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_converter|ton_b_o[6]~2_combout\ = ((\Con_25p_io[15]~27\ & ((\Con_25p_io[13]~28\) # (\Con_25p_io[14]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_25p_io[15]~27\,
	datac => \Con_25p_io[13]~28\,
	datad => \Con_25p_io[14]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_converter|ton_b_o[6]~2_combout\);

-- Location: LC_X4_Y5_N9
\U1|Bloc_converter|ton_b_o[6]~3\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_converter|ton_b_o[6]~3_combout\ = ((\nButton_i~combout\(1) & (!\U1|Bloc_converter|ton_b_o[6]~2_combout\)) # (!\nButton_i~combout\(1) & ((!\U1|Bloc_converter|ton_r_o[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nButton_i~combout\(1),
	datac => \U1|Bloc_converter|ton_b_o[6]~2_combout\,
	datad => \U1|Bloc_converter|ton_r_o[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_converter|ton_b_o[6]~3_combout\);

-- Location: LC_X5_Y5_N8
\U1|Bloc_pwm|LessThan2~8\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~8_combout\ = (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) & ((\nButton_i~combout\(1) & ((\U1|Bloc_converter|ton_b_o[5]~0_combout\))) # (!\nButton_i~combout\(1) & (\U1|Bloc_pwm|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nButton_i~combout\(1),
	datab => \U1|Bloc_pwm|LessThan0~3_combout\,
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7),
	datad => \U1|Bloc_converter|ton_b_o[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~8_combout\);

-- Location: LC_X4_Y5_N5
\U1|Bloc_pwm|LessThan2~9\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~9_combout\ = (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(9) & ((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8) & (!\U1|Bloc_converter|ton_b_o[6]~3_combout\ & \U1|Bloc_pwm|LessThan2~8_combout\)) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8) & 
-- ((\U1|Bloc_pwm|LessThan2~8_combout\) # (!\U1|Bloc_converter|ton_b_o[6]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0701",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(8),
	datab => \U1|Bloc_converter|ton_b_o[6]~3_combout\,
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(9),
	datad => \U1|Bloc_pwm|LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~9_combout\);

-- Location: LC_X4_Y4_N1
\U1|Bloc_pwm|LessThan2~5\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~5_combout\ = (\nButton_i~combout\(1) & ((\Con_25p_io[15]~27\) # ((\Con_25p_io[14]~29\)))) # (!\nButton_i~combout\(1) & (((\Con_25p_io[9]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nButton_i~combout\(1),
	datab => \Con_25p_io[15]~27\,
	datac => \Con_25p_io[9]~24\,
	datad => \Con_25p_io[14]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~5_combout\);

-- Location: LC_X4_Y4_N8
\U1|Bloc_pwm|LessThan2~4\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~4_combout\ = (\nButton_i~combout\(1) & (((\Con_25p_io[13]~28\)))) # (!\nButton_i~combout\(1) & ((\Con_25p_io[11]~26\) # ((\Con_25p_io[10]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nButton_i~combout\(1),
	datab => \Con_25p_io[11]~26\,
	datac => \Con_25p_io[13]~28\,
	datad => \Con_25p_io[10]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~4_combout\);

-- Location: LC_X4_Y4_N7
\U1|Bloc_pwm|LessThan2~6\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~6_combout\ = (\U1|Bloc_pwm|LessThan2~5_combout\ & (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6) $ (((\U1|Bloc_pwm|LessThan2~4_combout\) # (!\nButton_i~combout\(1)))))) # (!\U1|Bloc_pwm|LessThan2~5_combout\ & 
-- (\U1|Bloc_pwm|LessThan2~4_combout\ & (\nButton_i~combout\(1) $ (\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e84",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nButton_i~combout\(1),
	datab => \U1|Bloc_pwm|LessThan2~5_combout\,
	datac => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(6),
	datad => \U1|Bloc_pwm|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~6_combout\);

-- Location: LC_X4_Y5_N3
\U1|Bloc_pwm|LessThan2~7\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~7_combout\ = (\U1|Bloc_pwm|LessThan2~6_combout\ & (\U1|Bloc_pwm|LessThan0~6_combout\ & ((\U1|Bloc_pwm|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|LessThan2~6_combout\,
	datab => \U1|Bloc_pwm|LessThan0~6_combout\,
	datad => \U1|Bloc_pwm|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~7_combout\);

-- Location: LC_X4_Y5_N4
\U1|Bloc_pwm|LessThan2~12\ : maxv_lcell
-- Equation(s):
-- \U1|Bloc_pwm|LessThan2~12_combout\ = (\U1|Bloc_pwm|LessThan2~9_combout\) # ((\U1|Bloc_pwm|LessThan2~7_combout\) # ((\U1|Bloc_pwm|LessThan2~11_combout\ & \U1|Bloc_pwm|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|LessThan2~11_combout\,
	datab => \U1|Bloc_pwm|LessThan2~3_combout\,
	datac => \U1|Bloc_pwm|LessThan2~9_combout\,
	datad => \U1|Bloc_pwm|LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Bloc_pwm|LessThan2~12_combout\);

-- Location: LC_X3_Y6_N1
\cpt_s[10]~62\ : maxv_lcell
-- Equation(s):
-- \cpt_s[10]~62COUT0_68\ = CARRY((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(1) & (cpt_s(0))))
-- \cpt_s[10]~62COUT1_69\ = CARRY((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(1) & (cpt_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(1),
	datab => cpt_s(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \cpt_s[10]~62_cout\,
	cout0 => \cpt_s[10]~62COUT0_68\,
	cout1 => \cpt_s[10]~62COUT1_69\);

-- Location: LC_X3_Y6_N2
\cpt_s[10]~57\ : maxv_lcell
-- Equation(s):
-- \cpt_s[10]~57COUT0_71\ = CARRY(((!\cpt_s[10]~62COUT0_68\)) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(2)))
-- \cpt_s[10]~57COUT1_72\ = CARRY(((!\cpt_s[10]~62COUT1_69\)) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "005f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(2),
	cin0 => \cpt_s[10]~62COUT0_68\,
	cin1 => \cpt_s[10]~62COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \cpt_s[10]~57_cout\,
	cout0 => \cpt_s[10]~57COUT0_71\,
	cout1 => \cpt_s[10]~57COUT1_72\);

-- Location: LC_X3_Y6_N3
\cpt_s[10]~52\ : maxv_lcell
-- Equation(s):
-- \cpt_s[10]~52COUT0_74\ = CARRY(((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(3) & !\cpt_s[10]~57COUT0_71\)))
-- \cpt_s[10]~52COUT1_75\ = CARRY(((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(3) & !\cpt_s[10]~57COUT1_72\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "000c",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(3),
	cin0 => \cpt_s[10]~57COUT0_71\,
	cin1 => \cpt_s[10]~57COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \cpt_s[10]~52_cout\,
	cout0 => \cpt_s[10]~52COUT0_74\,
	cout1 => \cpt_s[10]~52COUT1_75\);

-- Location: LC_X3_Y6_N4
\cpt_s[10]~47\ : maxv_lcell
-- Equation(s):
-- \cpt_s[10]~47_cout\ = CARRY(((!\cpt_s[10]~52COUT1_75\) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "003f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(4),
	cin0 => \cpt_s[10]~52COUT0_74\,
	cin1 => \cpt_s[10]~52COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \cpt_s[10]~47_cout\);

-- Location: LC_X3_Y6_N5
\cpt_s[10]~42\ : maxv_lcell
-- Equation(s):
-- \cpt_s[10]~42COUT0_77\ = CARRY(((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(5) & !\cpt_s[10]~47_cout\)))
-- \cpt_s[10]~42COUT1_78\ = CARRY(((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(5) & !\cpt_s[10]~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "000c",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(5),
	cin => \cpt_s[10]~47_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \cpt_s[10]~42_cout\,
	cout0 => \cpt_s[10]~42COUT0_77\,
	cout1 => \cpt_s[10]~42COUT1_78\);

-- Location: LC_X3_Y6_N6
\cpt_s[10]~37\ : maxv_lcell
-- Equation(s):
-- \cpt_s[10]~37COUT0_80\ = CARRY(((!\cpt_s[10]~42COUT0_77\)) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6)))
-- \cpt_s[10]~37COUT1_81\ = CARRY(((!\cpt_s[10]~42COUT1_78\)) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(6)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "005f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(6),
	cin => \cpt_s[10]~47_cout\,
	cin0 => \cpt_s[10]~42COUT0_77\,
	cin1 => \cpt_s[10]~42COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \cpt_s[10]~37_cout\,
	cout0 => \cpt_s[10]~37COUT0_80\,
	cout1 => \cpt_s[10]~37COUT1_81\);

-- Location: LC_X3_Y6_N7
\cpt_s[10]~32\ : maxv_lcell
-- Equation(s):
-- \cpt_s[10]~32COUT0_83\ = CARRY(((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) & !\cpt_s[10]~37COUT0_80\)))
-- \cpt_s[10]~32COUT1_84\ = CARRY(((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(7) & !\cpt_s[10]~37COUT1_81\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "000c",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(7),
	cin => \cpt_s[10]~47_cout\,
	cin0 => \cpt_s[10]~37COUT0_80\,
	cin1 => \cpt_s[10]~37COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \cpt_s[10]~32_cout\,
	cout0 => \cpt_s[10]~32COUT0_83\,
	cout1 => \cpt_s[10]~32COUT1_84\);

-- Location: LC_X3_Y6_N8
\cpt_s[10]~27\ : maxv_lcell
-- Equation(s):
-- \cpt_s[10]~27COUT0_86\ = CARRY(((!\cpt_s[10]~32COUT0_83\) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8))))
-- \cpt_s[10]~27COUT1_87\ = CARRY(((!\cpt_s[10]~32COUT1_84\) # (!\U1|Bloc_pwm|CPT|val_cnt_pres_s\(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "003f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(8),
	cin => \cpt_s[10]~47_cout\,
	cin0 => \cpt_s[10]~32COUT0_83\,
	cin1 => \cpt_s[10]~32COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \cpt_s[10]~27_cout\,
	cout0 => \cpt_s[10]~27COUT0_86\,
	cout1 => \cpt_s[10]~27COUT1_87\);

-- Location: LC_X3_Y6_N9
\cpt_s[10]~22\ : maxv_lcell
-- Equation(s):
-- \cpt_s[10]~22_cout\ = CARRY((\U1|Bloc_pwm|CPT|val_cnt_pres_s\(9) & ((!\cpt_s[10]~27COUT1_87\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "000a",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Bloc_pwm|CPT|val_cnt_pres_s\(9),
	cin => \cpt_s[10]~47_cout\,
	cin0 => \cpt_s[10]~27COUT0_86\,
	cin1 => \cpt_s[10]~27COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \cpt_s[10]~22_cout\);

-- Location: LC_X4_Y6_N0
\cpt_s[10]\ : maxv_lcell
-- Equation(s):
-- cpt_s(10) = DFFEAS((cpt_s(10) $ ((\cpt_s[10]~22_cout\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[10]~19\ = CARRY(((!\cpt_s[10]~22_cout\) # (!cpt_s(10))))
-- \cpt_s[10]~19COUT1_88\ = CARRY(((!\cpt_s[10]~22_cout\) # (!cpt_s(10))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(10),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[10]~22_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(10),
	cout0 => \cpt_s[10]~19\,
	cout1 => \cpt_s[10]~19COUT1_88\);

-- Location: LC_X4_Y6_N1
\cpt_s[11]\ : maxv_lcell
-- Equation(s):
-- cpt_s(11) = DFFEAS((cpt_s(11) $ ((!(!\cpt_s[10]~22_cout\ & \cpt_s[10]~19\) # (\cpt_s[10]~22_cout\ & \cpt_s[10]~19COUT1_88\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[11]~17\ = CARRY(((cpt_s(11) & !\cpt_s[10]~19\)))
-- \cpt_s[11]~17COUT1_89\ = CARRY(((cpt_s(11) & !\cpt_s[10]~19COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(11),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[10]~22_cout\,
	cin0 => \cpt_s[10]~19\,
	cin1 => \cpt_s[10]~19COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(11),
	cout0 => \cpt_s[11]~17\,
	cout1 => \cpt_s[11]~17COUT1_89\);

-- Location: LC_X4_Y6_N2
\cpt_s[12]\ : maxv_lcell
-- Equation(s):
-- cpt_s(12) = DFFEAS((cpt_s(12) $ (((!\cpt_s[10]~22_cout\ & \cpt_s[11]~17\) # (\cpt_s[10]~22_cout\ & \cpt_s[11]~17COUT1_89\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[12]~15\ = CARRY(((!\cpt_s[11]~17\) # (!cpt_s(12))))
-- \cpt_s[12]~15COUT1_90\ = CARRY(((!\cpt_s[11]~17COUT1_89\) # (!cpt_s(12))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(12),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[10]~22_cout\,
	cin0 => \cpt_s[11]~17\,
	cin1 => \cpt_s[11]~17COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(12),
	cout0 => \cpt_s[12]~15\,
	cout1 => \cpt_s[12]~15COUT1_90\);

-- Location: LC_X4_Y6_N3
\cpt_s[13]\ : maxv_lcell
-- Equation(s):
-- cpt_s(13) = DFFEAS(cpt_s(13) $ ((((!(!\cpt_s[10]~22_cout\ & \cpt_s[12]~15\) # (\cpt_s[10]~22_cout\ & \cpt_s[12]~15COUT1_90\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[13]~13\ = CARRY((cpt_s(13) & ((!\cpt_s[12]~15\))))
-- \cpt_s[13]~13COUT1_91\ = CARRY((cpt_s(13) & ((!\cpt_s[12]~15COUT1_90\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(13),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[10]~22_cout\,
	cin0 => \cpt_s[12]~15\,
	cin1 => \cpt_s[12]~15COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(13),
	cout0 => \cpt_s[13]~13\,
	cout1 => \cpt_s[13]~13COUT1_91\);

-- Location: LC_X4_Y6_N4
\cpt_s[14]\ : maxv_lcell
-- Equation(s):
-- cpt_s(14) = DFFEAS(cpt_s(14) $ (((((!\cpt_s[10]~22_cout\ & \cpt_s[13]~13\) # (\cpt_s[10]~22_cout\ & \cpt_s[13]~13COUT1_91\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[14]~11\ = CARRY(((!\cpt_s[13]~13COUT1_91\)) # (!cpt_s(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(14),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[10]~22_cout\,
	cin0 => \cpt_s[13]~13\,
	cin1 => \cpt_s[13]~13COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(14),
	cout => \cpt_s[14]~11\);

-- Location: LC_X4_Y6_N5
\cpt_s[15]\ : maxv_lcell
-- Equation(s):
-- cpt_s(15) = DFFEAS(cpt_s(15) $ ((((!\cpt_s[14]~11\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[15]~9\ = CARRY((cpt_s(15) & ((!\cpt_s[14]~11\))))
-- \cpt_s[15]~9COUT1_92\ = CARRY((cpt_s(15) & ((!\cpt_s[14]~11\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(15),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(15),
	cout0 => \cpt_s[15]~9\,
	cout1 => \cpt_s[15]~9COUT1_92\);

-- Location: LC_X4_Y6_N6
\cpt_s[16]\ : maxv_lcell
-- Equation(s):
-- cpt_s(16) = DFFEAS(cpt_s(16) $ (((((!\cpt_s[14]~11\ & \cpt_s[15]~9\) # (\cpt_s[14]~11\ & \cpt_s[15]~9COUT1_92\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[16]~7\ = CARRY(((!\cpt_s[15]~9\)) # (!cpt_s(16)))
-- \cpt_s[16]~7COUT1_93\ = CARRY(((!\cpt_s[15]~9COUT1_92\)) # (!cpt_s(16)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(16),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~11\,
	cin0 => \cpt_s[15]~9\,
	cin1 => \cpt_s[15]~9COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(16),
	cout0 => \cpt_s[16]~7\,
	cout1 => \cpt_s[16]~7COUT1_93\);

-- Location: LC_X4_Y6_N7
\cpt_s[17]\ : maxv_lcell
-- Equation(s):
-- cpt_s(17) = DFFEAS((cpt_s(17) $ ((!(!\cpt_s[14]~11\ & \cpt_s[16]~7\) # (\cpt_s[14]~11\ & \cpt_s[16]~7COUT1_93\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[17]~5\ = CARRY(((cpt_s(17) & !\cpt_s[16]~7\)))
-- \cpt_s[17]~5COUT1_94\ = CARRY(((cpt_s(17) & !\cpt_s[16]~7COUT1_93\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(17),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~11\,
	cin0 => \cpt_s[16]~7\,
	cin1 => \cpt_s[16]~7COUT1_93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(17),
	cout0 => \cpt_s[17]~5\,
	cout1 => \cpt_s[17]~5COUT1_94\);

-- Location: LC_X4_Y6_N8
\cpt_s[18]\ : maxv_lcell
-- Equation(s):
-- cpt_s(18) = DFFEAS(cpt_s(18) $ (((((!\cpt_s[14]~11\ & \cpt_s[17]~5\) # (\cpt_s[14]~11\ & \cpt_s[17]~5COUT1_94\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[18]~3\ = CARRY(((!\cpt_s[17]~5\)) # (!cpt_s(18)))
-- \cpt_s[18]~3COUT1_95\ = CARRY(((!\cpt_s[17]~5COUT1_94\)) # (!cpt_s(18)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(18),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~11\,
	cin0 => \cpt_s[17]~5\,
	cin1 => \cpt_s[17]~5COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(18),
	cout0 => \cpt_s[18]~3\,
	cout1 => \cpt_s[18]~3COUT1_95\);

-- Location: LC_X4_Y6_N9
\cpt_s[19]\ : maxv_lcell
-- Equation(s):
-- cpt_s(19) = DFFEAS((((!\cpt_s[14]~11\ & \cpt_s[18]~3\) # (\cpt_s[14]~11\ & \cpt_s[18]~3COUT1_95\) $ (!cpt_s(19)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => cpt_s(19),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~11\,
	cin0 => \cpt_s[18]~3\,
	cin1 => \cpt_s[18]~3COUT1_95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(19));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk_Gen_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk_Gen_i);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Encoder_A_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Encoder_A_i);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Encoder_B_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Encoder_B_i);

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(2));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(3));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(4));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(5));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(7));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(8));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(3));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(4));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(5));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(6));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(7));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|Bloc_pwm|CPT|ALT_INV_Equal0~2_combout\,
	oe => VCC,
	padio => ww_nLed_o(0));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(4));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(5));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(6));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(7));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|Bloc_pwm|LessThan0~15_combout\,
	oe => VCC,
	padio => ww_Led_RGB_o(0));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|Bloc_pwm|LessThan1~3_combout\,
	oe => VCC,
	padio => ww_Led_RGB_o(1));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|Bloc_pwm|LessThan2~12_combout\,
	oe => VCC,
	padio => ww_Led_RGB_o(2));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(0));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(1));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(2));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(3));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(4));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(5));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(6));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_cpt_s(19),
	oe => VCC,
	padio => ww_nSeven_Seg_o(7));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(5));

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(6));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(7));

-- Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(8));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(9));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(10));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(11));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(12));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(13));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(14));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(15));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(16));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(17));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(18));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(19));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(20));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(1));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(2));

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(3));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(4));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(5));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(6));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(7));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(8));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(12));

-- Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(16));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(17));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(18));

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(19));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(20));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(21));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(22));

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(23));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(24));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(25));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|Bloc_pwm|CPT|Equal0~2_combout\,
	oe => VCC,
	padio => ww_Con_80p_io(2));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(3));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(4));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(5));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(6));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(7));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(8));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(9));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(10));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(11));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(12));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(13));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(14));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(15));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(16));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(17));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(18));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(19));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(20));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(21));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(22));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(23));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(24));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(25));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(26));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(27));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(28));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(29));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(30));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(31));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(32));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(33));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[34]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(34));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[35]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(35));

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[36]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(36));

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[37]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(37));

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[38]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(38));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[39]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(39));

-- Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[40]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(40));

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[41]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(41));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[42]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(42));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[43]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(43));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[44]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(44));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[45]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(45));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[46]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(46));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[47]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(47));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[48]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(48));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[49]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(49));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[50]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(50));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[51]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(51));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[52]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(52));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[53]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(53));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[54]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(54));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[55]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(55));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[56]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(56));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[57]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(57));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[58]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(58));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[59]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(59));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[60]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(60));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[61]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(61));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[62]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(62));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[63]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(63));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[64]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(64));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[65]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(65));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[66]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(66));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[67]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(67));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[68]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(68));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[69]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(69));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[70]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(70));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[71]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(71));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[72]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(72));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[73]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(73));

-- Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[74]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(74));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[75]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(75));

-- Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[76]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(76));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[77]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(77));

-- Location: PIN_M13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[78]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(78));

-- Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[79]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(79));
END structure;


