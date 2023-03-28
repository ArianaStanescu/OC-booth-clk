library verilog;
use verilog.vl_types.all;
entity booth is
    port(
        clk             : in     vl_logic;
        bgn             : in     vl_logic;
        rst_b           : in     vl_logic;
        ibus            : in     vl_logic_vector(7 downto 0);
        stop            : out    vl_logic;
        obus            : out    vl_logic_vector(7 downto 0)
    );
end booth;
