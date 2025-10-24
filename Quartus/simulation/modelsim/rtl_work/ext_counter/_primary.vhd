library verilog;
use verilog.vl_types.all;
entity ext_counter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        count           : out    vl_logic_vector(9 downto 0)
    );
end ext_counter;
