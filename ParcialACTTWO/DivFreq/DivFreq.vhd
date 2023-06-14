  library IEEE;
use IEEE.std_logic_1164.all;

entity DivFreq is
	port
	(
		Clk	: in  std_logic;
		Enable : in std_logic;
		Contador2 : out integer range 0 to 12);
end DivFreq;

architecture Parque of DivFreq is

signal Contador: integer range 0 to 12;

begin
ContadorSeg: process(clk)
variable count2 : integer range 0 to 25000000;
begin
	if(Enable='1')then
		if (clk'event and clk='1') then
			count2 := count2 +1;
			if (count2 = 25000000) then 
				count2 := 0;
				Contador <= Contador+1;
				contador2<= contador;
			end if;
		end if;
	else
		contador<=0;
	end if;
end process;


end Parque;