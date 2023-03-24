library verilog;
use verilog.vl_types.all;
entity parallel_adder is
    port(
        x               : in     vl_logic_vector(7 downto 0);
        y               : in     vl_logic_vector(7 downto 0);
        c3              : in     vl_logic;
        \out\           : out    vl_logic_vector(8 downto 0)
    );
end parallel_adder;
