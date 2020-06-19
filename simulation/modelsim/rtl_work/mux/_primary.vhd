library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        selector        : in     vl_logic;
        muxOut          : out    vl_logic_vector(31 downto 0)
    );
end mux;
