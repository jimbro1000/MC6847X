library verilog;
use verilog.vl_types.all;
entity FormatSwitch is
    port(
        RequestFormat   : in     vl_logic;
        Sync            : in     vl_logic;
        FormatOut       : out    vl_logic
    );
end FormatSwitch;
