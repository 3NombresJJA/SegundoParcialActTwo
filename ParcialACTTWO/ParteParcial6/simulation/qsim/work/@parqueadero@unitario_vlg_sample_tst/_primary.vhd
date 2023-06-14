library verilog;
use verilog.vl_types.all;
entity ParqueaderoUnitario_vlg_sample_tst is
    port(
        Entrada         : in     vl_logic;
        senalReloj      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ParqueaderoUnitario_vlg_sample_tst;
