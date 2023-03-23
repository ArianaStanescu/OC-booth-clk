library verilog;
use verilog.vl_types.all;
entity parallel_adder is
    generic(
        k               : integer := 8
    );
    port(
        x               : in     vl_logic_vector;
        y               : in     vl_logic_vector;
        c3              : in     vl_logic;
        \out\           : out    vl_logic_vector
    );
end parallel_adder;
