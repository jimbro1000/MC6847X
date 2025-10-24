library verilog;
use verilog.vl_types.all;
entity FrameTiming is
    generic(
        rowCols         : vl_logic_vector(0 to 9) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0);
        hsyncCols       : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0);
        rows0           : vl_logic_vector(0 to 8) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        rows1           : vl_logic_vector(0 to 8) := (Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi1, Hi1);
        vsyncRows       : vl_logic_vector(0 to 8) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        format          : in     vl_logic;
        hsn             : out    vl_logic;
        fsn             : out    vl_logic;
        preload         : out    vl_logic;
        rowclear        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of rowCols : constant is 1;
    attribute mti_svvh_generic_type of hsyncCols : constant is 1;
    attribute mti_svvh_generic_type of rows0 : constant is 1;
    attribute mti_svvh_generic_type of rows1 : constant is 1;
    attribute mti_svvh_generic_type of vsyncRows : constant is 1;
end FrameTiming;
