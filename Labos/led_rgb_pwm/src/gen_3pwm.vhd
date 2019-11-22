-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : gen_3pwm.vhd
--
-- Description  : Bloc comprenant 3 generateurs PWM
--                clk_sys = 1 MHz, Fpwm =976 Hz, soit periode 1.024 ms
--
-- Auteur       : Etienne Messerli
-- Date         : 10.04.2017
-- Version      : 0.0
--
-- Utilise      : Manipulation Commande d'une led RGB, cours CSN
--
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
-- 0.1       PMR    14.11.2019         Ajout de la logique vhdl
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gen_3pwm is
   generic(N_PWM : positive range 1 to 16 := 8);
   port(reset_i     : in  std_logic;
        clk_i       : in  std_logic;
        level0_i    : in  std_logic_vector(N_PWM-1 downto 0);
        level1_i    : in  std_logic_vector(N_PWM-1 downto 0);
        level2_i    : in  std_logic_vector(N_PWM-1 downto 0);
        pwm_out0_o  : out std_logic;
        pwm_out1_o  : out std_logic;
        pwm_out2_o  : out std_logic;
        cycle_pwm_o : out std_logic
       );
end gen_3pwm;

architecture struct of gen_3pwm is

  --components declaration
  component compteur_N
  generic(N_CNT : Positive range 1 to 16);
  port (reset_i     : in  std_logic;
       clk_i       : in  std_logic;
       val_cnt_o   : out  std_logic_vector(N_CNT-1 downto 0);
       fin_periode_o  : out std_logic
       );

  end component;

  for all : compteur_N use entity work.compteur_N(comport);

 --declaration internal signals
  signal val_cnt_s :  std_logic_vector((N_PWM + 2) - 1 downto 0);
  signal fin_periode_s     : std_logic;
  signal pwm_out0_s  :  std_logic;
  signal pwm_out1_s  :  std_logic;
  signal pwm_out2_s  :  std_logic;
  signal val_cnt_div2_s  : std_logic_vector((N_PWM + 2) - 3 downto 0);
begin

 CPT : compteur_N
 generic map (N_CNT => N_PWM + 2)
 port map (
       reset_i  => reset_i,
       clk_i  => clk_i,
       val_cnt_o => val_cnt_s,
       fin_periode_o => fin_periode_s
 );

 val_cnt_div2_s <= val_cnt_s((val_cnt_s'length - 1) downto 2);
 pwm_out0_s <=  '0' when unsigned(level0_i) <= unsigned(val_cnt_div2_s) else
                '1';
 pwm_out1_s <=  '0' when unsigned(level1_i) <= unsigned(val_cnt_div2_s) else
                '1';
 pwm_out2_s <=  '0' when unsigned(level2_i) <= unsigned(val_cnt_div2_s) else
                '1';

 cycle_pwm_o <= fin_periode_s;

 pwm_out0_o <= pwm_out0_s;
 pwm_out1_o <= pwm_out1_s;
 pwm_out2_o <= pwm_out2_s;


end struct;
