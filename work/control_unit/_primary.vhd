library verilog;
use verilog.vl_types.all;
entity control_unit is
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        bgn             : in     vl_logic;
        q_1             : in     vl_logic;
        q0              : in     vl_logic;
        count7          : in     vl_logic;
        c0              : out    vl_logic;
        c1              : out    vl_logic;
        c2              : out    vl_logic;
        c3              : out    vl_logic;
        c4              : out    vl_logic;
        c5              : out    vl_logic;
        c6              : out    vl_logic;
        stop            : out    vl_logic
    );
end control_unit;
