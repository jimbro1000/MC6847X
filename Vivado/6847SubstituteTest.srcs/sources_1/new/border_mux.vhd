library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity borderMux is
   Port (
		CS,AnG : in std_logic;
		mode : in std_logic_vector(2 downto 0);
      RGB: out std_logic_vector(8 downto 0)
	);
end borderMux;

architecture rtl of borderMux is
	signal data : std_logic_vector(3 downto 0);
begin
	col_mux : entity work.colourMux
		port map (
			data => data,
			RGB => RGB
		);

	process(CS, AnG, mode)
	begin
		if AnG = '1' then
			if CS = '1' then
				data <= "0100";
			else
				data <= "0000";
			end if;
		else
			data <= "1000";
		end if;
	end process;
end rtl;
