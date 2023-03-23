library verilog;
use verilog.vl_types.all;
entity reg_q is
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        c1              : in     vl_logic;
        c4              : in     vl_logic;
        c7              : in     vl_logic;
        ibus            : in     vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(7 downto 0)
    );
end reg_q;
