library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity resModeToPalette is
   Port (
		data : in std_logic_vector(1 downto 0);
		clk: in std_logic;
      CS: in std_logic;
		palette: out std_logic_vector(3 downto 0)
	);
end resModeToPalette;

architecture rtl of resModeToPalette is
begin
	process (data,CS,clk)
	begin
		case CS & data & clk is
			when "0000" | "0001" | "0010" | "0101" => palette <= B"1001";
			when "0011" | "0100" | "0110" | "0111" => palette <= B"0000";
			when "1000" | "1001" | "1010" | "1101" => palette <= B"1000";
			when others => palette <= B"0100";
		end case;
	end process;
end rtl;

