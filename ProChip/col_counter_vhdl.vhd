library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity col_counter_vhdl is
   Port (
		clk : in std_logic;
      count: out std_logic_vector(8 downto 0);
		carry: out std_logic
	);
end col_counter_vhdl;

architecture rtl of col_counter_vhdl is
	signal col_count : std_logic_vector(8 downto 0);
	signal reset : std_logic;
	constant rowCols: std_logic_vector(8 downto 0) := B"111001001";
	
begin
	col_counter : entity work.ext_counter_vhdl
		port map (
			reset => reset,
			clk => clk,
			count => col_count
		);

	process (col_count)
	begin
		if col_count(8 downto 1) = rowCols(8 downto 1) then
			reset <= '1';
		else
			reset <= '0';
		end if;
	end process;
	
	count <= col_count;
	carry <= reset;
end rtl;

