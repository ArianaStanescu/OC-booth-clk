library verilog;
use verilog.vl_types.all;
entity xor_gate is
    port(
        c3              : in     vl_logic;
        m               : in     vl_logic_vector(7 downto 0);
        rez             : out    vl_logic_vector(7 downto 0)
    );
end xor_gate;
