-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : flipflop_rs.vhd
-- Auteur       : Etienne Messerli,  20.04.2017
-- Description  : Flip-flop RS
--
--
-- Utilise      : Exos description d'elements memoire en VHDL synthetisable
--| Modifications |------------------------------------------------------------
-- Vers.  Qui   Date         Description
--
-------------------------------------------------------------------------------

--   Table de fonctionnement synchrone
--   du flip-flop RS
--
--    R  S |   Q+
--   ------+-------
--    0  0 |   Q
--    0  1 |   1
--    1  0 |   0
--    1  1 | interdit




library ieee;
  use ieee.std_logic_1164.all;

entity flipflop_rs is
   port(clk_i    : in     std_logic;
        reset_i  : in     std_logic;
        R_i      : in     std_logic;
        S_i      : in     std_logic;
        Q_o      : out    std_logic
   );
end flipflop_rs ;


architecture comport of flipflop_rs is
  signal Qfut_s : std_logic;
  signal Q_s : std_logic;
begin
  --Adaptation polarite


  Qfut_s <= not R_i and (S_i or Q_s);

  process(reset_i, clk_i)
  begin
    if reset_i = '1' then
      Q_s <= '0';
    elsif Rising_Edge(clk_i) then
      Q_s <= Qfut_s;
    end if;
  end process;

  Q_o <= Q_s;


end comport;
