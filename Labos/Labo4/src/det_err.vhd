-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : det_err.vhd
--
-- Description  : Bloc permettant la sauvegarde quand une erreur a lieu
--
-- Auteur       : Pierrick Muller et Tommy Gerardi
-- Date         : 07.12.2019
-- Version      : 0.1
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity det_err is
   port(reset_i     : in  std_logic; -- entrée reset asynchrone
        clk_i       : in  std_logic; -- entrée clock
        err_i       : in  std_logic; -- entree determinant s'il y a eu une erreur
        init_pos_i  : in  std_logic; -- entree qui dicte si on doit enlever l'erreur ou non
        det_err_o   : out std_logic  -- sortie suivant s'il y a eu erreur ou non
       );
end det_err;

architecture comport of det_err is

-- Pas de composants externes

-- Signaux internes
signal err_fut_s  : std_logic;  -- signal pour calculer l'etat futur de l'erreur
signal err_pres_s : std_logic;  -- signal donnant l'erreur actuelle

begin
  -- Calcul de s'il y aura erreur par ordre de priorite
  err_fut_s <=  '0' when init_pos_i = '1' else  -- si on init -> 0
                '1' when err_i = '1' else       -- on prend la valeur de l'entree si elle vaut 1
                err_pres_s;                     -- sinon on garde l'etat actuel

  process(reset_i, clk_i) -- Process pour reset / mettre a jour l'erreur au coup de clock
  begin
    if(reset_i = '1') then
      err_pres_s <= '0';
    elsif rising_Edge(clk_i) then
      err_pres_s <= err_fut_s;
    end if;
  end process;

  det_err_o <= err_pres_s;  -- affectation de la sortie
end comport;
