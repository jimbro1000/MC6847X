library verilog;
use verilog.vl_types.all;
entity MC6847X is
    port(
        NTSCClk         : in     vl_logic;
        PALClk          : in     vl_logic;
        RequestFormat   : in     vl_logic;
        DA0             : out    vl_logic;
        FSn             : out    vl_logic;
        HSn             : out    vl_logic;
        FormatClk       : out    vl_logic;
        Format          : out    vl_logic
    );
end MC6847X;
