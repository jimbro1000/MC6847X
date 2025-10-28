library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity modeMux is
   Port (
		AnG : in std_logic;
		AnS : in std_logic;
		GM : in std_logic_vector(2 downto 0);
		alphaData: in std_logic_vector(3 downto 0);
		semiData: in std_logic_vector(3 downto 0);
		graphData: in std_logic_vector(3 downto 0);
		resData: in std_logic_vector(3 downto 0);
		palette: out std_logic_vector(3 downto 0)
	);
end modeMux;

architecture rtl of modeMux is
begin
	process (AnG,AnS,GM,alphaData,semiData,graphData,resData)
	begin
		if AnG = '1' then
			case GM is
				when "000" | "010" | "100" | "110" => palette <= graphData;
				when others => palette <= resData;
			end case;
		elsif AnS = '1' then
			palette <= semiData;
		else
			palette <= alphaData;
		end if;
	end process;
end rtl;

