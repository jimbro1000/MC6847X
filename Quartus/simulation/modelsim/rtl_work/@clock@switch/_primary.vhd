library verilog;
use verilog.vl_types.all;
entity ClockSwitch is
    port(
        Format          : in     vl_logic;
        Clk1            : in     vl_logic;
        Clk2            : in     vl_logic;
        Clk             : out    vl_logic
    );
end ClockSwitch;
