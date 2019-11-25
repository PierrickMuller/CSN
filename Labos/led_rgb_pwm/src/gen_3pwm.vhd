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
   port(reset_i     : in  std_logic; -- entrée reset asynchrone
        clk_i       : in  std_logic; -- entrée clock
        -- vecteurs représentant les différents levels des couleurs (R,G,B),
        -- de taille N_PWM
        level0_i    : in  std_logic_vector(N_PWM-1 downto 0);
        level1_i    : in  std_logic_vector(N_PWM-1 downto 0);
        level2_i    : in  std_logic_vector(N_PWM-1 downto 0);
        -- Sortie représentant le level en fonction de la durée durant laquelle
        -- ils sont activés (principe pwm)
        pwm_out0_o  : out std_logic;
        pwm_out1_o  : out std_logic;
        pwm_out2_o  : out std_logic;
        -- Sortie représentant la fin d'un cycle de compteur
        -- (Utilisé pour la fréquence)
        cycle_pwm_o : out std_logic
       );
end gen_3pwm;

architecture struct of gen_3pwm is

  --components declaration
  -- Déclaration d'un compteur N bits
  component compteur_N
  generic(N_CNT : Positive range 1 to 16);
  port (reset_i     : in  std_logic; -- entrée reset asynchrone
       clk_i       : in  std_logic; -- entrée clock
       val_cnt_o   : out  std_logic_vector(N_CNT-1 downto 0); -- sortie valeur du compteur
       fin_periode_o  : out std_logic -- Sortie fin d'une période de compteur (Atteint valeur max)
       );

  end component;

  for all : compteur_N use entity work.compteur_N(comport);

 --declaration internal signals
  -- Comme on ne peut pas utilisé la valeur N_CNT du compteur pour savoir
  -- combien de bits sont nécéssaires pour stocker la valeur du compteur,
  -- on se base sur N_PWM pour définir la taille de ce vecteur. En effet,
  -- en restant sur une utilisation simple, on part du principe que le
  -- rapport entre la taille du compteur et la taille des levels en entrée
  -- sera toujours de deux, afin de garantir un bon fonctionnement du programme.
  signal val_cnt_s :  std_logic_vector((N_PWM + 2) - 1 downto 0);
  -- Signaux stockant les valeurs internes et les valeurs qui seront assignée
  -- aux sorties de notre block gen_3pwm.
  signal fin_periode_s     : std_logic;
  signal pwm_out0_s  :  std_logic;
  signal pwm_out1_s  :  std_logic;
  signal pwm_out2_s  :  std_logic;
  -- Signal permettant de stocker la valeur du compteur divisé par deux afin d
  -- pouvoir la comparer aux valeurs des levels tout en profitant de tous le
  -- spectre de valeurs de notre compteur.
  signal val_cnt_div2_s  : std_logic_vector((N_PWM + 2) - 3 downto 0);
begin

 CPT : compteur_N
 -- Comme expliqué dans le commentaire au dessus de val_cnt_s, la taille en
 -- nombre de bits du compteur est égal à la taille des levels en entrée + 2
 -- (dans notre utilisation, cette taille de compteur est de 10)
 generic map (N_CNT => N_PWM + 2)
 port map (
       -- assignation des I/O du compteur aux différents signaux
       reset_i  => reset_i,
       clk_i  => clk_i,
       val_cnt_o => val_cnt_s,
       fin_periode_o => fin_periode_s
 );

 -- On divise par deux la valeur du compteur afin de faire les comparaisons
 -- avec les valeurs des levels par la suite
 val_cnt_div2_s <= val_cnt_s((val_cnt_s'length - 1) downto 2);
 -- Comme dans le schéma, on effectue une comparaison par level avec la valeur
 -- du compteur. On assigne la valeur 0 au signal si la valeur contenue dans
 -- le level est plus petite ou egale à la valeur du compteur, sinon, le signal
 -- pwm correspondant doit rester à 1.
 pwm_out0_s <=  '0' when unsigned(level0_i) <= unsigned(val_cnt_div2_s) else
                '1';
 pwm_out1_s <=  '0' when unsigned(level1_i) <= unsigned(val_cnt_div2_s) else
                '1';
 pwm_out2_s <=  '0' when unsigned(level2_i) <= unsigned(val_cnt_div2_s) else
                '1';

 -- On assigne les signaux aux differentes sorties de notre bloc
 cycle_pwm_o <= fin_periode_s;
 pwm_out0_o <= pwm_out0_s;
 pwm_out1_o <= pwm_out1_s;
 pwm_out2_o <= pwm_out2_s;


end struct;
