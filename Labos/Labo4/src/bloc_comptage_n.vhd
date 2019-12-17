-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : bloc_comptage_n.vhd
--
-- Description  : Bloc représentant un compteur N bits avec logique
--
-- Auteur       : Pierrick Muller et Tommy Gerardi
-- Date         : 07.12.2019
-- Version      : 0.1
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bloc_comptage_n is
   generic(N_BITS : positive range 1 to 32 := 16);
   port(reset_i     : in  std_logic; -- entrée reset asynchrone
        clk_i       : in  std_logic; -- entrée clock
        sens_i      : in  std_logic; -- entree determinant le sens de rotation (operation +/-)
        compt_en_i  : in  std_logic; -- entree qui enable ou non le comptage (+/- 1/0)
        init_pos_i  : in  std_logic; -- entree qui dicte si on doit reinitialiser pos ou non
        pos_o       : out std_logic_vector(N_BITS-1 downto 0) -- sortie valeur du compteur
       );
end bloc_comptage_n;

architecture comport of bloc_comptage_n is

-- Pas de composants externes

-- Signaux internes
signal pos_fut_s  : unsigned(N_BITS-1 downto 0);  -- signal representant la prochaine position
signal pos_pres_s : unsigned(N_BITS-1 downto 0);  -- signal representant la position actuelle du systeme

begin
  -- Calcul de la position future par ordre de priorite
  pos_fut_s <=  (others => '0') when init_pos_i = '1' else  -- mise a 0 si init
                pos_pres_s when compt_en_i = '0' else       -- rien si on ne bouge pas
                pos_pres_s + 1 when sens_i = '1' else       -- autrement on incremente / decremente suivant le sens
                pos_pres_s - 1;

  process(reset_i, clk_i) -- Process pour reset / mettre la valeur de la position a jour a chaque coup de clock
  begin
    if(reset_i = '1') then
      pos_pres_s <= (others => '0');
    elsif rising_Edge(clk_i) then
        pos_pres_s <= pos_fut_s;
    end if;
  end process;

  pos_o <= std_logic_vector(pos_pres_s);  -- Affectatin de la sortie position
end comport;
