library verilog;
use verilog.vl_types.all;
entity mux4 is
    port(
        d0              : in     vl_logic;
        d1              : in     vl_logic;
        d2              : in     vl_logic;
        d3              : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        q               : out    vl_logic
    );
end mux4;
