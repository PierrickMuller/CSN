-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : mss.vhd
--
-- Description  : Bloc représentant la machine d'etat de notre systeme
--
-- Auteur       : Pierrick Muller et Tommy Gerardi
-- Date         : 07.12.2019
-- Version      : 0.1
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mss is
   port(reset_i     : in  std_logic; -- entrée reset asynchrone
        clk_i       : in  std_logic; -- entrée clock
        capt_a_i    : in  std_logic; -- entree capteur a
        capt_b_i    : in  std_logic; -- entree capteur b
        sens_o      : out std_logic; -- sortie qui donne le sens de rotation
        compt_en_o  : out std_logic; -- sortie qui determine s'il faut compter ou non
        err_o       : out std_logic  -- sortie qui donne s'il y a eu une erreur ou non
       );
end mss;

architecture M_Etat of mss is
-- Pas de composants externes

-- Signaux internes

-- Nous avons 17 etats, il faut donc 5 bits -> 32 etats max
signal Etat_Present_s, Etat_Futur_s : std_logic_vector(4 downto 0);
-- Signal qui contiendra l'etat des capteurs dans le process
signal captors : std_logic_vector(1 downto 0);

-- Constantes pour fixer le codage
constant Etat_Initial : std_logic_vector(4 downto 0) := "00000";
constant Etat_Erreur  : std_logic_vector(4 downto 0) := "00001";
constant Etat_H_1     : std_logic_vector(4 downto 0) := "00010";
constant Etat_H_1_W   : std_logic_vector(4 downto 0) := "00011";
constant Etat_H_2     : std_logic_vector(4 downto 0) := "00100";
constant Etat_H_2_W   : std_logic_vector(4 downto 0) := "00101";
constant Etat_H_3     : std_logic_vector(4 downto 0) := "00110";
constant Etat_H_3_W   : std_logic_vector(4 downto 0) := "00111";
constant Etat_H_4     : std_logic_vector(4 downto 0) := "01000";
constant Etat_A_1     : std_logic_vector(4 downto 0) := "01001";
constant Etat_A_1_W   : std_logic_vector(4 downto 0) := "01010";
constant Etat_A_2     : std_logic_vector(4 downto 0) := "01011";
constant Etat_A_2_W   : std_logic_vector(4 downto 0) := "01100";
constant Etat_A_3     : std_logic_vector(4 downto 0) := "01101";
constant Etat_A_3_W   : std_logic_vector(4 downto 0) := "01110";
constant Etat_A_4     : std_logic_vector(4 downto 0) := "01111";
constant Etat_W_4     : std_logic_vector(4 downto 0) := "10000";

-- Constantes pour les capteurs (n -> not)
constant nAnB         : std_logic_vector(1 downto 0) := "00";
constant nAB          : std_logic_vector(1 downto 0) := "01";
constant AnB          : std_logic_vector(1 downto 0) := "10";
constant AB           : std_logic_vector(1 downto 0) := "11";

begin
  Fut : process(capt_a_i, capt_b_i, Etat_Present_s)
  begin
    Etat_Futur_s <= Etat_Initial; -- valeur pas defaut
    compt_en_o <= '0'; sens_o <= '0'; err_o <= '0'; -- valeurs par defaut
    captors <= capt_a_i & capt_b_i;
    case Etat_Present_s is
      when Etat_Initial =>
        compt_en_o <= '0'; sens_o <= '0'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_W_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_A_1_W;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_H_1_W;
        else
          Etat_Futur_s <= Etat_H_2_W;
        end if;
      when Etat_Erreur =>
        compt_en_o <= '0'; sens_o <= '0'; err_o <= '1';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_W_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_A_1_W;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_H_1_W;
        else
          Etat_Futur_s <= Etat_H_2_W;
        end if;
      when Etat_H_1 =>
        compt_en_o <= '1'; sens_o <= '0'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_A_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_Erreur;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_H_1_W;
        else
          Etat_Futur_s <= Etat_H_2;
        end if;
      when Etat_H_1_W =>
        compt_en_o <= '0'; sens_o <= '0'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_A_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_Erreur;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_H_1_W;
        else
          Etat_Futur_s <= Etat_H_2;
        end if;
      when Etat_H_2 =>
        compt_en_o <= '1'; sens_o <= '0'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_Erreur;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_H_3;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_A_3;
        else
          Etat_Futur_s <= Etat_H_2_W;
        end if;
      when Etat_H_2_W =>
        compt_en_o <= '0'; sens_o <= '0'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_Erreur;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_H_3;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_A_3;
        else
          Etat_Futur_s <= Etat_H_2_W;
        end if;
      when Etat_H_3 =>
        compt_en_o <= '1'; sens_o <= '0'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_H_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_H_3_W;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_Erreur;
        else
          Etat_Futur_s <= Etat_A_2;
        end if;
      when Etat_H_3_W =>
        compt_en_o <= '0'; sens_o <= '0'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_H_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_H_3_W;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_Erreur;
        else
          Etat_Futur_s <= Etat_A_2;
        end if;
      when Etat_H_4 =>
        compt_en_o <= '1'; sens_o <= '0'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_W_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_A_1;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_H_1;
        else
          Etat_Futur_s <= Etat_Erreur;
        end if;
      when Etat_W_4 =>
        compt_en_o <= '0'; sens_o <= '0'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_W_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_A_1;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_H_1;
        else
          Etat_Futur_s <= Etat_Erreur;
        end if;
      when Etat_A_1 =>
        compt_en_o <= '1'; sens_o <= '1'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_H_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_A_1_W;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_Erreur;
        else
          Etat_Futur_s <= Etat_A_2;
        end if;
      when Etat_A_1_W =>
        compt_en_o <= '0'; sens_o <= '1'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_H_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_A_1_W;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_Erreur;
        else
          Etat_Futur_s <= Etat_A_2;
        end if;
      when Etat_A_2 =>
        compt_en_o <= '1'; sens_o <= '1'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_Erreur;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_H_3;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_A_3;
        else
          Etat_Futur_s <= Etat_A_2_W;
        end if;
      when Etat_A_2_W =>
        compt_en_o <= '0'; sens_o <= '1'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_Erreur;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_H_3;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_A_3;
        else
          Etat_Futur_s <= Etat_A_2_W;
        end if;
      when Etat_A_3 =>
        compt_en_o <= '1'; sens_o <= '1'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_A_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_Erreur;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_A_3_W;
        else
          Etat_Futur_s <= Etat_H_2;
        end if;
      when Etat_A_3_W =>
        compt_en_o <= '0'; sens_o <= '1'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_A_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_Erreur;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_A_3_W;
        else
          Etat_Futur_s <= Etat_H_2;
        end if;
      when Etat_A_4 =>
        compt_en_o <= '1'; sens_o <= '1'; err_o <= '0';
        if (captors = nAnB) then
          Etat_Futur_s <= Etat_W_4;
        elsif (captors = nAB) then
          Etat_Futur_s <= Etat_A_1;
        elsif (captors = AnB) then
          Etat_Futur_s <= Etat_H_1;
        else
          Etat_Futur_s <= Etat_Erreur;
        end if;
      when others =>
        compt_en_o <= '0'; sens_o <= '0'; err_o <= '0';
    end case;
  end process;

  Mem : process (clk_i, reset_i)
  begin
    if(reset_i = '1') then
      Etat_Present_s <= Etat_Initial;
    elsif rising_Edge(clk_i) then
      Etat_Present_s <= Etat_Futur_s;
    end if;
  end process;
end M_Etat;
