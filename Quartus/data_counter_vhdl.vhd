library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity data_counter_vhdl is
   Port (
		reset,clk,hsn,rp : in std_logic;
		div2,div3,div12,wide : in std_logic;
      count: out std_logic_vector(12 downto 0)
	);
end data_counter_vhdl;

architecture rtl of data_counter_vhdl is
   signal counter : std_logic_vector(12 downto 0);
	constant fullReset : std_logic_vector(12 downto 0)   := B"0000000000000";
	constant wideReset : std_logic_vector(12 downto 0)   := B"1111111100000";
	constant narrowReset : std_logic_vector(12 downto 0) := B"1111111110000";
begin
	process(reset,clk,hsn)
	begin
		if (reset = '1') then -- on vertical sync (or other reset)
			counter <= fullReset; -- restart counter
		elsif (hsn = '0') then -- on horizontal sync
			if (div2 = '1' or div3 = '1') then
				if (wide = '1') then -- pick between 32 and 16 byte wide viewport
					counter <= counter and wideReset; -- reset counter bits 4->0
				else
					counter <= counter and narrowReset; -- reset counter bits 5->0
				end if;
			elsif (div12 = '1' and rp = '1') then -- text mode row count is handled elsewhere
				counter <= counter and wideReset; -- reset counter bits 5->0 only when row reset is not active
			end if;
		elsif (clk'event and clk = '1') then 
			counter <= counter + 1;
		end if;
	end process;
	count <= counter;
end rtl;