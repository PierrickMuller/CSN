--------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : acqu_pos_top.vhd
-- Description  : Acquisition de la position de la table tournante
--
-- Auteur       : Etienne Messerli
-- Date         : 07.12.2015
--
-- Utilise      : Labo csn, décembre 2015
--
--------------------------------------------------------------------------
-- Description : Acquisition de la position de la table tournante
--   -mesure de la position de la table, comptage incréments capteurs
--      traitement des signaux A et B de l'encodeur
--   -comptage du nombre d'erreur de l'encodeur
--   -MSS de gestion de l'encodeur de position (capt A-B)
--      sens_hr : actif si sens horaire
--      Inc_up, Inc_dn: impulsion pour comptage position
--      det_err: indique double changement simultane de A et B
--
--| Modifications |-----------------------------------------------------------
-- Ver  Date        Qui   Description
-- 0.1  14.01.2015  EMI   version initiale "mgn_position.vhd"
-- 1.0  07.12.2015  EMI   Adaptation pour le labo de décembre 2015
-- 1.1  17.12.2019  TG PM Remplissage du laboratoire
-----------------------------------------------------------------------

library IEEE;
use IEEE.Std_Logic_1164.all;  -- Defini le type standard logic

entity acqu_pos_top is
  port (clock_i       : in  std_logic;  --Horloge du systeme
        reset_i       : in  std_logic;  --Remise a Zero asychrone
        init_pos_i    : in  std_logic;  --Initialisation a zero, sychrone, des compteurs (pos, idx, err)
        capt_a_i      : in  std_logic;  --Encodeur phase A
        capt_b_i      : in  std_logic;  --Encodeur phase B
        dir_cw_o      : out std_logic;  --Direction: '1' CW (horaire), '0' CCW (anti-horaire)
        position_o    : out std_logic_vector(15 downto 0); --position de la table
        --revol_o       : out std_logic_vector(7 downto 0);  --nbr de tours (revolution) de la table
        det_err_o     : out std_logic;  --Detection d'une erreur (double changement A et B)
        err_o         : out std_logic;  --Il y a eu une erreur de double changement A et B)
        nbr_err_o     : out std_logic_vector(4 downto 0)  --nombre d'erreur detectees
  );
end acqu_pos_top;

architecture struct of acqu_pos_top is
   --| internal signal declarations |-------------------------------------
   signal err_s       : std_logic;  -- signal pour faire passer l'erreur
   signal sens_s      : std_logic;  -- signal pour faire passer le sens
   signal compt_en_s  : std_logic;  -- signal pour enable le comptage
   signal capt_a_s    : std_logic;  -- signal du capteur a
   signal capt_b_s    : std_logic;  -- signal du capteur b

   --| component declaration |--------------------------------------------
   component det_err is
      port(reset_i     : in  std_logic; -- entrée reset asynchrone
           clk_i       : in  std_logic; -- entrée clock
           err_i       : in  std_logic; -- entree determinant s'il y a eu une erreur
           init_pos_i  : in  std_logic; -- entree qui dicte si on doit enlever l'erreur ou non
           det_err_o   : out std_logic  -- sortie suivant s'il y a eu erreur ou non
          );
   end component;
   for all: det_err use entity work.det_err(comport);

   component bloc_comptage_n is
      generic(N_BITS : positive range 1 to 32 := 16);
      port(reset_i     : in  std_logic; -- entrée reset asynchrone
           clk_i       : in  std_logic; -- entrée clock
           sens_i      : in  std_logic; -- entree determinant le sens de rotation (operation +/-)
           compt_en_i  : in  std_logic; -- entree qui enable ou non le comptage (+/- 1/0)
           init_pos_i  : in  std_logic; -- entree qui dicte si on doit reinitialiser pos ou non
           pos_o       : out  std_logic_vector(N_BITS-1 downto 0) -- sortie valeur du compteur
          );
   end component;
   for all: bloc_comptage_n use entity work.bloc_comptage_n(comport);

   component mss is
      port(reset_i     : in  std_logic; -- entrée reset asynchrone
           clk_i       : in  std_logic; -- entrée clock
           capt_a_i    : in  std_logic; -- entree capteur a
           capt_b_i    : in  std_logic; -- entree capteur b
           sens_o      : out std_logic; -- sortie qui donne le sens de rotation
           compt_en_o  : out std_logic; -- sortie qui determine s'il faut compter ou non
           err_o       : out std_logic  -- sortie qui donne s'il y a eu une erreur ou non
          );
   end component;
   for all: mss use entity work.mss(M_Etat);

begin
  --polarity adaptation (none needed here)

  -- Instance port mappings.
  ff_erreur  : det_err
  port map( reset_i => reset_i,
            clk_i => clock_i,
            err_i => err_s,
            init_pos_i => init_pos_i,
            det_err_o => det_err_o
            );

  compteur : bloc_comptage_n
  port map( reset_i => reset_i,
            clk_i => clock_i,
            sens_i => sens_s,
            compt_en_i => compt_en_s,
            init_pos_i => init_pos_i,
            pos_o => position_o
            );

  machine_etat : mss
  port map( reset_i => reset_i,
            clk_i => clock_i,
            capt_a_i => capt_a_s,
            capt_b_i => capt_b_s,
            sens_o => sens_s,
            compt_en_o => compt_en_s,
            err_o => err_s
            );


  --| output assignment |-------------------------------------------------
  nbr_err_o <= "00000"; -- On assigne 0 au nbr d'erreurs, pas demande dans la laboratoire
  dir_cw_o <= sens_s;   -- Assignation de la direction a la sortie
  err_o <= err_s;       -- Assignation de l'erreur a la sortie

  sync_capt : process (clock_i) -- Process pour synchroniser les capteurs, le systeme ne fonctionne autrement pas
  begin
    if(reset_i = '1') then
      capt_a_s <= '0';
      capt_b_s <= '0';
    elsif rising_Edge(clock_i) then
      capt_a_s <= capt_a_i;
      capt_b_s <= capt_b_i;
    end if;
  end process;

end struct;
