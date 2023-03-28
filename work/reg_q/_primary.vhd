library verilog;
use verilog.vl_types.all;
entity reg_q is
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        c1              : in     vl_logic;
        c4              : in     vl_logic;
        c6              : in     vl_logic;
        ibus            : in     vl_logic_vector(7 downto 0);
        a_lsb           : in     vl_logic;
        q_lsb           : out    vl_logic;
        obus            : out    vl_logic_vector(7 downto 0)
    );
end reg_q;
