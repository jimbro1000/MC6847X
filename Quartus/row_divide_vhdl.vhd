library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity rowDivide is
   Port (
		AnG : std_logic;
		GM : std_logic_vector(2 downto 0);
      div2 : out std_logic;
		div3 : out std_logic;
		div12 : out std_logic
	);
end rowDivide;

architecture rtl of rowDivide is
begin
	process(AnG,GM)
		variable mode : std_logic_vector(3 downto 0);
	begin
		mode := AnG & GM;
		case mode is
			when "1000" => div3 <= '1';
			when "1001" => div3 <= '1';
			when "1010" => div3 <= '1';
			when others => div3 <= '0';
		end case;
		case mode is
			when "1011" => div2 <= '1';
			when "1100" => div2 <= '1';
			when others => div2 <= '0';
		end case;
		case AnG is
			when '0' => div12 <= '1';
			when others => div12 <= '0';
		end case;
	end process;
end rtl;
