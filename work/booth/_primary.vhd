library verilog;
use verilog.vl_types.all;
entity booth is
    port(
        clk             : in     vl_logic;
        bgn             : in     vl_logic;
        rst_b           : in     vl_logic;
        ibus            : in     vl_logic_vector(7 downto 0);
        stop            : out    vl_logic;
        obus            : out    vl_logic_vector(7 downto 0);
        m               : out    vl_logic_vector(7 downto 0);
        a               : out    vl_logic_vector(7 downto 0);
        out_parallel    : out    vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(7 downto 0)
    );
end booth;
