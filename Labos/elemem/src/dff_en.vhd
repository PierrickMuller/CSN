-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : dff_en_ok_a.vhd
--
-- Description  : 
-- 
-- Auteur       : Etienne Messerli
-- Date         : 22.10.2014
-- Version      : 0.0
-- 
-- Utilise      : Exercice de description d'elements memoire
--                en VHDL synthetisable
-- 
--| Modifications |------------------------------------------------------------
-- Vers.  Qui   Date         Description
-- 
-- 
-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity dff_en is
   port( 
      clk_i    : in     std_logic;
      D_i      : in     std_logic;
      en_i     : in     std_logic;
      nReset_i : in     std_logic;
      Q_o      : out    std_logic
   );
end dff_en ;


architecture comport of dff_en is
  
  signal Q_s : std_logic;
  signal Qfut_s : std_logic;
begin

  --Adaptation polarite
  
  Qfut_s <= D_i when en_i = '1' else
			   Q_s;
				
  process(nReset_i, clk_i)
  begin
    if nReset_i = '0' then
      Q_s <= '0';
    elsif Rising_Edge(clk_i) then
      Q_s <= Qfut_s;
    end if;
  end process;

  
	Q_o <= Q_s;


end comport;
