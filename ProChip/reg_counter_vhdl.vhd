library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity reg_counter_vhdl is
   Port (
		reset,clk : in std_logic;
      count: out std_logic_vector(8 downto 0)
	);
end reg_counter_vhdl;

architecture rtl of reg_counter_vhdl is
   signal counter : std_logic_vector(8 downto 0);
begin
	process(reset,clk)
	begin
		if (reset = '1') then 
			counter <= "000000000";
		elsif (clk'event and clk = '1') then 
			counter <= counter + 1;
		end if;
	end process;
	count <= counter;
end rtl;