library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity graphicModeToPalette is
   Port (
		data : in std_logic_vector(1 downto 0);
		CS: in std_logic;
		palette: out std_logic_vector(3 downto 0)
	);
end graphicModeToPalette;

architecture rtl of graphicModeToPalette is
begin
	process (data,CS)
	begin
		palette <= '0' & CS & data;
	end process;
end rtl;

-- Tested working in simulation
