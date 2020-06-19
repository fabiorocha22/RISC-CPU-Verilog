library verilog;
use verilog.vl_types.all;
entity datamemory is
    generic(
        DATA_WIDTH      : integer := 32;
        ADDR_WIDTH      : integer := 10
    );
    port(
        address         : in     vl_logic_vector;
        dataIn          : in     vl_logic_vector;
        dataOut         : out    vl_logic_vector;
        clk             : in     vl_logic;
        we              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
end datamemory;
