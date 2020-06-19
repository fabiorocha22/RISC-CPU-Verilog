library verilog;
use verilog.vl_types.all;
entity control is
    port(
        instruction     : in     vl_logic_vector(31 downto 0);
        controlSignal   : out    vl_logic_vector(31 downto 0)
    );
end control;
