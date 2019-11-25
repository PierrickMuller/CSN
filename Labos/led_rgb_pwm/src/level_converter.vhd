-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : level_converter.vhd
--
-- Description  : Conversion d'un niveau d'une LED en temps on (T on)
--
-- Auteur       : Gaetan Matthey
-- Date         : 27.03.2017
-- Version      : 1.0
--
-- Utilise      :
--
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
-- 1.1       EMI    23.09.2019      Supprime generic
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity level_converter is
   -- Generique sont supprime car ne compile pas dans Questasim ! EMI 23.09.2019
   --generic(N_LEVEL  : positive range 1 to 16 := 3;
   --        N_PWM : positive range 1 to 16 := 8);
   port(
        -- Entrée représentant les niveaux de bleu, vert et rouge
        niv_r_i   : in  std_logic_vector(2 downto 0);
        niv_g_i   : in  std_logic_vector(2 downto 0);
        niv_b_i   : in  std_logic_vector(2 downto 0);
        -- Sortie après conversion en level de bleu, vert et rouge
        ton_r_o   : out std_logic_vector(7 downto 0);
        ton_g_o   : out std_logic_vector(7 downto 0);
        ton_b_o   : out std_logic_vector(7 downto 0)
       );
end level_converter;

architecture flot_don of level_converter is

  -- Signaux représentant les sorties après conversion en level de bleu, vert et rouge
  signal ton_r_s : std_logic_vector(6 downto 0);
  signal ton_g_s : std_logic_vector(6 downto 0);
  signal ton_b_s : std_logic_vector(6 downto 0);

begin

  -- Assignation du level de rouge à l'aide de when else
  ton_r_s <= "0000000" when niv_r_i = "000" else
	     "0000101" when niv_r_i = "001" else
	     "0010101" when niv_r_i = "010" else
	     "0100101" when niv_r_i = "011" else
	     "0110101" when niv_r_i = "100" else
	     "1000101" when niv_r_i = "101" else
	     "1010101" when niv_r_i = "110" else
	     "1100101" when niv_r_i = "111" else
	     "-------";
  -- Assignation du level de vert à l'aide de when else
  ton_g_s <= "0000000" when niv_g_i = "000" else
	     "0000101" when niv_g_i = "001" else
	     "0010101" when niv_g_i = "010" else
	     "0100101" when niv_g_i = "011" else
	     "0110101" when niv_g_i = "100" else
	     "1000101" when niv_g_i = "101" else
	     "1010101" when niv_g_i = "110" else
	     "1100101" when niv_g_i = "111" else
	     "-------";
  -- Assignation du level de bleu à l'aide de when else
  ton_b_s <= "0000000" when niv_b_i = "000" else
	     "0000101" when niv_b_i = "001" else
	     "0010101" when niv_b_i = "010" else
	     "0100101" when niv_b_i = "011" else
	     "0110101" when niv_b_i = "100" else
	     "1000101" when niv_b_i = "101" else
	     "1010101" when niv_b_i = "110" else
	     "1100101" when niv_b_i = "111" else
	     "-------";

  -- Assignation des sorties et ajout d'un 0 au début (optimisation)
  ton_r_o <= '0' & ton_r_s;
  ton_g_o <= '0' & ton_g_s;
  ton_b_o <= '0' & ton_b_s;


end flot_don;
