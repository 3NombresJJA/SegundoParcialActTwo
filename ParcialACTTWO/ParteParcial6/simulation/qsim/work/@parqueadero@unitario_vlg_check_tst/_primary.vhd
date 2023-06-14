library verilog;
use verilog.vl_types.all;
entity ParqueaderoUnitario_vlg_check_tst is
    port(
        Felicitacion    : in     vl_logic;
        MinUni          : in     vl_logic_vector(3 downto 0);
        SegDec          : in     vl_logic_vector(2 downto 0);
        SegUni          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end ParqueaderoUnitario_vlg_check_tst;
