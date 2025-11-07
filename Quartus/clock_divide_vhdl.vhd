library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity clockDivide is
   Port (
		AnG : std_logic;
		GM : std_logic_vector(2 downto 0);
      div2 : out std_logic
	);
end clockDivide;

architecture rtl of clockDivide is
begin
	process(AnG,GM)
		variable mode : std_logic_vector(3 downto 0);
	begin
		mode := AnG & GM;
		case mode is
			when "1000" => div2 <= '1';
			when "1001" => div2 <= '1';
			when "1011" => div2 <= '1';
			when "1101" => div2 <= '1';
			when others => div2 <= '0';
		end case;
	end process;
end rtl;