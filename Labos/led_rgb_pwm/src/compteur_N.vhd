-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : compteur_N.vhd
--
-- Description  : Bloc représentant un compteur N bits
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

entity compteur_N is
   generic(N_CNT : positive range 1 to 16 := 10);
   port(reset_i     : in  std_logic; -- entrée reset asynchrone
        clk_i       : in  std_logic; -- entrée clock
        val_cnt_o   : out  std_logic_vector(N_CNT-1 downto 0); -- sortie valeur du compteur
        fin_periode_o  : out std_logic -- Sortie fin d'une période de compteur (Atteint valeur max)
       );
end compteur_N;

architecture comport of compteur_N is

  -- components declaration
  -- Pas de composants externes

 -- declaration internal signals
 -- Comme on souhaite créer un compteur générique, la taille des vecteurs signaux
 -- correspondant à l'état présent et à l'état futur correspond à la taille
 -- de la sortie val_cnt_o qui est détérminée en fonction du générique N_CNT
 signal val_cnt_pres_s : std_logic_vector((val_cnt_o'length - 1) downto 0);
 signal val_cnt_fut_s : std_logic_vector((val_cnt_o'length - 1) downto 0);
begin

-- Décodeur d'état futur
-- On se contente d'ajouter 1 à la valeur actuelle du compteur, ce bloc sera
-- transformé en additionneur, comme on peut le voir dans la vue RTL
val_cnt_fut_s <= std_logic_vector(unsigned(val_cnt_pres_s) + 1);

-- Ce process correspond à notre registre. La gestion du reset asynchrone est
-- directement inclut dedans, pour ce qui est du reste on s'occupe juste de
-- stocker la valeur du compteur futur à la place de la valeur du compteur
-- présent à chaque tick d'horloge
mem: process (clk_i,reset_i)
begin
  if(reset_i = '1') then
    val_cnt_pres_s <= (others => '0');
  elsif rising_Edge(clk_i) then
    val_cnt_pres_s <= val_cnt_fut_s;
  end if;
end process;

-- Décodeur de sortie
-- On gère la sortie détérminant la fin de la periode et donc la fréquence de
-- notre compteur en définissant la sortie avec la valeur 1 si la valeur du
-- compteur est égal à la valeur max que le compteur peut prendre
  fin_periode_o <= '1' when unsigned(val_cnt_pres_s) = (2**(val_cnt_o'length)) - 1 else   --(2**N)-1
                   '0';

  -- On assigne la valeur du signal représentant la valeur du compteur présent
  -- à la sortie de notre bloc compteur.
  val_cnt_o <= val_cnt_pres_s;



end comport;
