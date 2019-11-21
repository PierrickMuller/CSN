-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : compteur_10.vhd
--
-- Description  : Bloc représentant un compteur 10 bits (0 à 1023 en décimal)
--
-- Auteur       : Pierrick Muller
-- Date         : 21.11.2019
-- Version      : 0.1
--
-- Utilise      : gen_3pwm.vhd
--
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
-- 0.1       PMR    21.11.2019         Création de la logique vdhl
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur_10 is
   -- generic(N_PWM : positive range 1 to 16 := 10);
   port(reset_i     : in  std_logic;
        clk_i       : in  std_logic;
        --level0_i    : in  std_logic_vector(N_PWM-1 downto 0);
        --level1_i    : in  std_logic_vector(N_PWM-1 downto 0);
        --level2_i    : in  std_logic_vector(N_PWM-1 downto 0);
        valeur_compteur_o   : out  std_logic_vector(9 downto 0);
        fin_periode_o  : out std_logic
       );
end compteur_10;

architecture comport of compteur_10 is

  --components declaration


 --declaration internal signals
 signal valeur_compteur_pres_s : std_logic_vector(9 downto 0);
 signal valeur_compteur_fut_s : std_logic_vector(9 downto 0);
begin

-- Décodeur d'état futur
valeur_compteur_fut_s <= std_logic_vector(unsigned(valeur_compteur_pres_s) + 1);

mem: process (clk_i,reset_i)
begin
  if(reset_i = '1') then
    valeur_compteur_pres_s <= (others => '0');
  elsif rising_Edge(clk_i) then
    valeur_compteur_pres_s <= valeur_compteur_fut_s;
  end if;
end process;

-- Décodeur de sortie
  fin_periode_o <= '1' when unsigned(valeur_compteur_pres_s) = 1023 else   --(2**N)-1
                   '0';

  valeur_compteur_o <= valeur_compteur_pres_s;



end comport;
