library verilog;
use verilog.vl_types.all;
entity reg_a is
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        c0              : in     vl_logic;
        c2              : in     vl_logic;
        c4              : in     vl_logic;
        c5              : in     vl_logic;
        sum             : in     vl_logic_vector(7 downto 0);
        a_lsb           : out    vl_logic;
        obus            : out    vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(7 downto 0)
    );
end reg_a;
