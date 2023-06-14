library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ParqueaderoUnitario is 
port(
	senalReloj		: in std_logic;
	Entrada : in std_logic;
	
	SegUni	: out std_logic_vector(3 downto 0);
	SegDec	: out std_logic_vector(2 downto 0) );
end ParqueaderoUnitario;

architecture Estesi of ParqueaderoUnitario is

Signal ComienzoDelC : std_logic;
signal RsegUni: integer range 0 to 9;
signal RsegUni2: integer range 0 to 9;
signal RsegDec: integer range 0 to 5;
signal RsegDec2: integer range 0 to 5;
signal contd : integer range 0 to 35;
signal Sefue : std_logic;
Signal Cont2 : integer range 0 to 600;
Signal ConteoReal : integer range 0 to 600;
signal RealsegUni: integer range 0 to 9;
signal RM: integer range 0 to 9;
signal Ultimisima: integer range 0 to 9;
signal RealSegDec: integer range 0 to 5;

component ContadorenReversa 
		port ( 
			clk : in std_logic;
			carro_en_pq : in std_logic;
			Felicitacion : out std_logic ;
			RTCsegUni: out integer range 0 to 9;
			RTCsegDec: out integer range 0 to 5;
			cout : out integer range 0 to 35);
	end component;
	component Parqueadero
		port (
		Clk	: in  std_logic;
		Sigue : in std_logic;
		Selargo: out std_logic;
		Contador2 : out integer range 0 to 600;
		RTCsegUni: out integer range 0 to 9;
		RTCsegDec: out integer range 0 to 5;
		RTCMin  : out integer range 0 to 9);
		
	end component;
	begin 
	Paso1 : ContadorenReversa port map (SenalReloj, Entrada, Feliz, RsegUni, RsegDec, contd);
process(feliz)
begin 
	if(Entrada='1') then
	Felicitacion <=feliz;
	ComienzoDelC<= not feliz;
	else
	comienzoDelC<='0';
	end if;
end process;
	
	Paso2	:	Parqueadero port map (SenalReloj, ComienzoDelC, Sefue, Cont2, RsegUni2, RsegDec2, RM  );
	with (feliz) select
	ultimisima<=	0 when '1',
						 Rm when '0';
	MinUni<= std_logic_vector(to_unsigned(ultimisima,4));
	
	with (feliz) select
		RealsegUni <=  RsegUni when '1',
							RsegUni2 when '0';
	SegUni<= std_logic_vector(to_unsigned(RealsegUni,4));
	with (feliz) select
		Realsegdec <=  Rsegdec when '1',
							Rsegdec2 when '0';
	SegDec<= std_logic_vector(to_unsigned(RealsegDec,3));
end estesi;
	