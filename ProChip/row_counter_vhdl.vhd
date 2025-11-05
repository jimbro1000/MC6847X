library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity row_counter_vhdl is
   Port (
		clk : in std_logic;
		limit: in std_logic_vector(8 downto 0);
      count: out std_logic_vector(8 downto 0)
	);
end row_counter_vhdl;

architecture rtl of row_counter_vhdl is
	signal row_count : std_logic_vector(8 downto 0);
	signal reset : std_logic;
	
begin
	row_counter : entity work.reg_counter_vhdl
		port map (
			reset => reset,
			clk => clk,
			count => row_count
		);

	process (row_count, limit)
	begin
		if row_count(8 downto 1) = limit(8 downto 1) then
			reset <= '1';
		else
			reset <= '0';
		end if;
	end process;
	
	count <= row_count;
end rtl;

