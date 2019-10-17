
library ieee;
use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;

entity comp_2_val is
   port(
      init_i     : in     std_logic;
      shift_i    : in     std_logic;
      mixe_i     : in     std_logic;
      va_i       : in     std_logic_vector(3 downto 0);
      vc_i       : in     std_logic_vector(3 downto 0);
      pp_o       : out    std_logic;
      eg_o       : out    std_logic;
      vs_o       : out    std_logic_vector(3 downto 0);
   );
end comp_2_val ;

architecture comparator of comp_2_val is
  signal pp_s, eg_s : std_logic
  signal vs_s : std_logic_vector(3 downto 0)
begin
  
  vs_s <= "0000" when init_i = '1' else
	  va_i(2 downto 0) & '0' when shift_i = '1' else
	  va_i(1 downto 0) & va_i(3 downto 2) else
	  va_i;
 
  pp_s <= '1' when va_i < vc_i else
	  '0';
  eg_s <= '1' when va_i = vc_i else
	  '0'

  vs_o <= vs_s;
  pp_o <= pp_s;
  eg_o <= eg_s;

end comparator;
