library verilog;
use verilog.vl_types.all;
entity instructionmemory is
    port(
        clk             : in     vl_logic;
        pc              : in     vl_logic_vector(9 downto 0);
        instructionOut  : out    vl_logic_vector(31 downto 0)
    );
end instructionmemory;
