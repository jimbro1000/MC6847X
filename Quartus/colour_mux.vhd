library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity colourMux is
   Port (
		data : std_logic_vector(3 downto 0);
      RGB : out std_logic_vector(8 downto 0)
	);
end colourMux;

architecture rtl of colourMux is
begin
	process(data)
	begin
		case data is
			when "0000" => RGB <= B"000111000";
			when "0001" => RGB <= B"111111000";
			when "0010" => RGB <= B"001000101";
			when "0011" => RGB <= B"101000001";
			when "0100" => RGB <= B"111111111";
			when "0101" => RGB <= B"000110100";
			when "0110" => RGB <= B"111000111";
			when "0111" => RGB <= B"111010000";
			when "1001" => RGB <= B"000010000";
			when "1010" => RGB <= B"010001000";
			when "1011" => RGB <= B"111101010";
			when others => RGB <= B"000000000";
		end case;
	end process;
end rtl;

/*
Tested working in simulation
*/