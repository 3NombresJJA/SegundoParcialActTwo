  library IEEE;
use IEEE.std_logic_1164.all;

entity Contador5minutos is
	port
	(
		Clk : in std_logic;
		Enable : in std_logic;
		Costo : out integer range 0 to 600;
		DefUni  : out integer range 0 to 9;
		DefDec  : out integer range 0 to 9;
		DefCent : out integer range 0 to 9); 
end Contador5minutos;

architecture Parque of Contador5minutos is
signal SegUni  : integer range 0 to 9;
Signal SegDec  : integer range 0 to 9;
Signal SegCent : integer range 0 to 9;
signal Contador: integer range 0 to 600;

begin
ContadorSeg: process(clk)
variable count2 : integer range 0 to 5;
begin
	if(Enable='1')then
		if (clk'event and clk='1') then
			count2 := count2 +1;
			if (count2 = 5) then 
				count2 := 0;
				Contador <= Contador+32;
				Costo<= contador;
			end if;
		end if;
	else
		contador<=0;
	end if;
end process;
Tiempo2 : process(Contador)

begin
if (Enable='1') then
	if contador = 0 then
		Seguni <= 0;
		SegDec <= 0;
		SegCent <=0;
	elsif Contador = 32 then
		Seguni <= 2;
		SegDec <= 3;
		SegCent <=0;
	elsif Contador = 64 then
		Seguni <= 4;
		SegDec <= 6;
		SegCent <=0;
	elsif Contador = 96 then
		Seguni <= 6;
		SegDec <= 9;
		SegCent <=0;
	elsif Contador = 128 then
		Seguni <= 8;
		SegDec <= 2;
		SegCent <=1;
	elsif Contador = 160 then
		Seguni <= 0;
		SegDec <= 6;
		SegCent <=1;
	elsif Contador = 192 then
		Seguni <= 2;
		SegDec <= 9;
		SegCent <=1;
	elsif Contador = 224 then
		Seguni <= 4;
		SegDec <= 2;
		SegCent <=2;
	elsif Contador = 256 then
		Seguni <= 6;
		SegDec <= 5;
		SegCent <=2;
	ELSif Contador = 288 then
		Seguni <= 8;
		SegDec <= 8;
		SegCent <=2;
	elsif Contador = 320 then
		Seguni <= 0;
		SegDec <= 2;
		SegCent <=3;
	else Seguni <= 0;
		SegDec <= 0;
		SegCent <=0;
	end if;
else 
	SegDec<=0 after 50ns;
		SegUni<=0 after 50ns;
		SegCent<=0 after 50ns;
end if;
end process;


end Parque;