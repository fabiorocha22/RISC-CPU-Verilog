library verilog;
use verilog.vl_types.all;
entity pc is
    generic(
        DATA_ADRESS     : integer := 10
    );
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        dataOut         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_ADRESS : constant is 1;
end pc;
