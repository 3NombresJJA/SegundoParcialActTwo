library verilog;
use verilog.vl_types.all;
entity ParqueaderoUnitario is
    port(
        senalReloj      : in     vl_logic;
        Entrada         : in     vl_logic;
        SegUni          : out    vl_logic_vector(3 downto 0);
        SegDec          : out    vl_logic_vector(2 downto 0);
        MinUni          : out    vl_logic_vector(3 downto 0);
        Felicitacion    : out    vl_logic
    );
end ParqueaderoUnitario;
