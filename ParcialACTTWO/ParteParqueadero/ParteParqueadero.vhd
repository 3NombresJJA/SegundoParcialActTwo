library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
entity ParteParqueadero is
	port(
--Clock y reset.... solamente eso
		Clock, Reset: in std_logic;
--Sensores y para enviar la contraseÃƒÂ±a
		FRONT_SENSOR, BACK_SENSOR, Enter: in std_logic;
--Para Sacar el ultimo carro que entro
		SacaCarro : in std_logic;
--Para Mostrar los carros en los displays
	Aumento, VolverA0 : in std_logic;
--Para ingresar la contraseÃƒÂ±a
		Contra4bits : in std_logic_vector(3 downto 0);
-- Salidad el led Rojo, Led Verde, Abrir y cerrar la puerta
		LED_R, LED_V, DefAbrirPuerta, DefCerrarPuerta: out std_logic;
--Salida que mostrar que carro se esta viendo 
		SaliMuestra : out std_logic_vector(2 downto 0);
--Salida que va a mostrar cuantos espacios hay libres 
		SaliEspacios : out std_logic_vector(6 downto 0);
--Salidas de los 7 segmentos
		SaliSegUni : out Std_logic_vector(6 downto 0);
		SaliSegDec : out Std_logic_vector(6 downto 0);
		SaliSegCent : out Std_logic_vector(6 downto 0));
end ParteParqueadero;

architecture arq of ParteParqueadero is
--Estados de la primera maquina
	type estados is (inicio, Contrasena, aprovado, Desaprovado, ingreso);
--Estados de la segunda maquina (Intentos de contraseÃƒÂ±a)
	type estados2 is (Primero, Segundo, Tercero, Fallido);
	signal ant_state, next_state : estados;
	signal EstadoAnte, EstadoSigui : estados2;
--SeÃƒÂ±ales para el proceso de anidar maquina, conteo para regresar al inicio
	signal MomentoContra, Correcta, incorrecta, ConteoFalla, conteoPuerta, AbrirPuerta, CerrarPuerta : std_logic;
--Reseteo para la segunda maquina de estados Y SeÃƒÂ±ales de inico 
	signal Reset2, BeginContarFallo, BeginContarPuerta : std_logic;
--SeÃƒÂ±al que almacena el conteo para cerrar la puerta
	Signal ContadorPuerta3Seg : integer range 0 to 4;
	--SeÃƒÂ±al que almacena el conteo para la contraseÃƒÂ±a
	Signal ContadorContrasena10seg : integer range 0 to 12;
--SeÃƒÂ±al que cuenta cuantos carros hay
Signal Espacios : integer range 0 to 8;
--SeÃƒÂ±al Que avisa si el parqueadero esta lleno:
signal Lleno : std_logic;
--SeÃƒÂ±al Para restar
Signal EspacioResta: integer range 0 to 8;
--SeÃƒÂ±al Que va a rotar entre los 8 espacios
Signal Muestra : integer range 0 to 7;
--SeÃƒÂ±al Para contar los espacios libres y no libres 
Signal EspaciosOcupados : std_logic_vector(7 downto 0);
--SeÃƒÂ±ales para almacenar el tiempo de cada vehiculo
Signal RTCsegUni1:  integer range 0 to 9;
Signal RTCsegDec1:  integer range 0 to 5;
Signal ClkPa1 :  std_logic;
Signal RTCsegUni2:  integer range 0 to 9;
Signal RTCsegDec2:  integer range 0 to 5;
Signal ClkPa2 :  std_logic;
Signal RTCsegUni3:  integer range 0 to 9;
Signal RTCsegDec3:  integer range 0 to 5;
Signal ClkPa3 :  std_logic;
Signal RTCsegUni4:  integer range 0 to 9;
Signal RTCsegDec4:  integer range 0 to 5;
Signal ClkPa4 :  std_logic;
Signal RTCsegUni5:  integer range 0 to 9;
Signal RTCsegDec5:  integer range 0 to 5;
Signal ClkPa5 : std_logic;
Signal RTCsegUni6: integer range 0 to 9;
Signal RTCsegDec6:  integer range 0 to 5;
Signal ClkPa6 : std_logic;
Signal RTCsegUni7:  integer range 0 to 9;
Signal RTCsegDec7:  integer range 0 to 5;
Signal ClkPa7 :  std_logic;
Signal RTCsegUni8:  integer range 0 to 9;
Signal RTCsegDec8:  integer range 0 to 5;
Signal ClkPa8 :  std_logic;
--SeÃƒÂ±ales para los costos
Signal Costo1 : integer range 0 to 600;
Signal Costo2 : integer range 0 to 600;
Signal Costo3 : integer range 0 to 600;
Signal Costo4 : integer range 0 to 600;
Signal Costo5 : integer range 0 to 600;
Signal Costo6 : integer range 0 to 600;
Signal Costo7 : integer range 0 to 600;
Signal Costo8 : integer range 0 to 600;
--SeÃƒÂ±ales que se van a convertir en la que define que se muestra a la salidaS
Signal DefNumEspacios : std_logic_vector(3 downto 0);
signal SegUni1  : integer range 0 to 9;
Signal SegDec1  : integer range 0 to 9;
Signal SegCent1 : integer range 0 to 9;
signal SegUni2 : integer range 0 to 9;
Signal SegDec2  : integer range 0 to 9;
Signal SegCent2 : integer range 0 to 9;
signal SegUni3  : integer range 0 to 9;
Signal SegDec3  : integer range 0 to 9;
Signal SegCent3 : integer range 0 to 9;
signal SegUni4  : integer range 0 to 9;
Signal SegDec4  : integer range 0 to 9;
Signal SegCent4 : integer range 0 to 9;
signal SegUni5  : integer range 0 to 9;
Signal SegDec5  : integer range 0 to 9;
Signal SegCent5 : integer range 0 to 9;
signal SegUni6  : integer range 0 to 9;
Signal SegDec6  : integer range 0 to 9;
Signal SegCent6 : integer range 0 to 9;
signal SegUni7  : integer range 0 to 9;
Signal SegDec7  : integer range 0 to 9;
Signal SegCent7 : integer range 0 to 9;
signal SegUni8  : integer range 0 to 9;
Signal SegDec8  : integer range 0 to 9;
Signal SegCent8 : integer range 0 to 9;
Signal SegUniDef : integer range 0 to 9;
Signal SegDecDef : integer range 0 to 9;
Signal SegCentDef : integer range 0 to 9;
--Componente Para contar el tiempo de la puerta abierta y el fallo
component DivFreq
	port
	(
		Clk	: in  std_logic;
		Enable : in std_logic;
		Contador2 : out integer range 0 to 12);
end component;

--Componente que va a contar el tiempo que esta cada vehiculo
component Parqueadero 
	port
	(
		Clk	: in  std_logic;
		Sigue : in std_logic;
		RTCsegUni: out integer range 0 to 9;
		RTCsegDec: out integer range 0 to 5;
		out2 : buffer std_logic);
end component;

--Componente que suma 32 Cada 5 minutos 
Component Contador5minutos 
	port
	(
		Clk	: in  std_logic;
		Enable : in std_logic;
		DefUni  : out integer range 0 to 9;
		DefDec  : out integer range 0 to 9;
		DefCent : out integer range 0 to 9; 
		Costo : out integer range 0 to 600);
end component;

--Componente para mostrar en paneles 7 segmentos
Component BCD7seg 
port(
		ABCD	: in  std_logic_vector(3 downto 0);
		F	: out std_logic_vector(6 downto 0)
	);

end component;

begin
--Proceso de reseteo
secuencial : process (Reset, Clock)
	begin
		if Reset = '1' and Lleno ='0' then
			ant_state <= inicio;
--Asigna el siguiente estado al actual
		elsif rising_edge(Clock) then 
			ant_state <= next_state;
			
		end if;
	end process secuencial;
--Maquina de estados principal
combinacional : process (ant_state, FRONT_SENSOR, BACK_SENSOR, Correcta, Incorrecta, ConteoFalla, ConteoPuerta)
begin	
	case (ant_state) is 
	
--Primer estado, si el sensor frontal detecta algo pasara al siguiente
	when inicio =>
		if (FRONT_SENSOR = '1') and (BACK_SENSOR = '0') then 
			next_state <= Contrasena;
		else
			next_state <= inicio;
		end if;
	
--SEGUNDO ESTADO, ingresar la contraseÃƒÂ±a 
	when Contrasena =>
	
-- si la segunda maquina devuelve correcta se va al estado aprovado
		if (FRONT_SENSOR = '1') and (Correcta = '1') and (Incorrecta='0') then
			next_state <= Aprovado;

-- Si la segunda maquina devuelve un incorrecta se va al estado desaprovado
		elsif (FRONT_SENSOR = '1') and (Correcta = '0') and (Incorrecta='1') then
			next_state <= Desaprovado;
		
--Por si el carro se va sin completar los 3 intenttos
		elsif (FRONT_SENSOR = '0') then
			next_state <= Inicio;

--Regresa a si mismo para esperar una orden
		else 
			next_state <= Contrasena;
		end if;
	
-- TERCER ESTADO, Si ingreso la contraseÃƒÂ±a correctamente
	when aprovado =>
	
-- El carro desaparecio, regresa al estado inicio
		if (BACK_SENSOR = '0') and (FRONT_SENSOR = '0') then 
			next_state <= Inicio;
		
-- El carro no ha avanzado
		elsif  (FroNT_SENSOR = '1') and (BacK_SENSOR= '0') then
			next_state <= Aprovado;
		
-- El carro avanzo
		else 
			next_state <= Ingreso;
		end if;
	
-- CUARTO ESTADO, este estado sera para asegurarse de que el ya paso por completo y paso un tiempo
		when ingreso =>
	
--Este por si ya no detecta nada
		if (FRONT_SENSOR = '0') and (BACK_SENSOR = '0') and (ConteoPuerta ='1') then
			next_state <= inicio;
	
--Esto significa que por alguna razon el carro hecho reversa)? se regresa al estado anterior
		elsif (FroNT_SENSOR ='1') and (BACK_SENSOR = '0') then
			next_state <= Aprovado;
		
--El carro esta parado en medio de los dos sensores o solo en bacK_SENSOR
		else 
			next_state <= Ingreso;
		end if;
		
--QUINTO ESTADO, cuando fallo en la contraseÃƒÂ±a	
	when Desaprovado =>
		
--Conteo de tiempo para regresar a inicio
		if (ConteoFalla ='1') then
			next_state <= Inicio;
		else
			next_state <= Desaprovado;
		end if;
		
--Por si pasa algo que no deberia regresa al inicio
		when others => next_state <= inicio;
	
	end case;
end process;

--Logica para las salidas
salida : process (ant_state, FRONT_SENSOR, BACK_SENSOR)
begin 
	case (ant_state) is
	
	--Primer estado, si el sensor frontal detecta algo pasara al siguiente	
	when inicio =>
		if (FRONT_SENSOR = '1') and (BACK_SENSOR = '0') then 
			LED_V <= '0'; LED_R <= '1'; momentoContra <= '1' ; Reset2 <= '0';
		else
			LED_V <= '0'; LED_R <= '0'; MomentoContra<='0'; Reset2<='1'; BeginContarPuerta <= '0';
		end if;
	
-- SEGUNDO ESTADO, Cuando llega ingresa contraseÃƒÂ±a
	when Contrasena =>
	
-- si la segunda maquina devuelve correcta se va al estado aprovado
		if (FRONT_SENSOR = '1') and (Correcta = '1') and (Incorrecta='0') then
			LED_V <= '1'; LED_R <= '0'; AbrirPuerta <= '1'; CerrarPuerta <= '0'; Reset2 <='1';
			
-- Todas las demas combinaciones dan esas salidas 
		else 
			LED_V <= '0'; LED_R <= '1'; AbrirPuerta <= '0'; CerrarPuerta <= '1'; Reset2<='0';
		end if;		
		
-- TERCER ESTADO, Si ingreso la contraseÃƒÂ±a correctamente
	when aprovado =>
	
-- El carro desaparecio, regresa al estado inicio
		if(FRONT_SENSOR = '0') and (BACK_SENSOR = '0') then 
			LED_V <= '0'; LED_R <= '1'; AbrirPuerta <= '0'; CerrarPuerta <= '1';Reset2<='1';
		
-- El carro no ha avanzado
		elsif  (FroNT_SENSOR = '1') and (BacK_SENSOR= '0') then
			LED_V <= '1'; LED_R <= '0'; AbrirPuerta <= '1'; CerrarPuerta <= '0';Reset2<='0';
-- El carro avanzo
		else 
			LED_V <= '1'; LED_R <= '0'; AbrirPuerta <= '1'; CerrarPuerta <= '0';Reset2<='0';BeginContarPuerta <= '1';
		end if;

-- CUARTO ESTADO, este estado sera para asegurarse de que el ya paso por completo y paso un tiempo
	when ingreso =>
	
--Este por si ya no detecta nada
		if (FRONT_SENSOR = '0') and (BACK_SENSOR = '0') and (ConteoPuerta ='1') then
			LED_V <= '0'; LED_R <= '1';  AbrirPuerta <= '0'; CerrarPuerta <= '1';Reset2<='1';
			
--Esto significa que por alguna razon el carro hecho reversa)? se regresa al estado anterior
		elsif (FroNT_SENSOR ='1') and (BACK_SENSOR = '0') then
			LED_V <= '1'; LED_R <= '0'; AbrirPuerta <= '1'; CerrarPuerta <= '0';Reset2<='1';
			
--El carro esta parado en medio de los dos sensores o solo en bacK_SENSOR
		else 
			LED_V <= '1'; LED_R <= '0'; AbrirPuerta <= '1'; CerrarPuerta <= '0';Reset2<='1';
		end if;
		
--QUINTO ESTADO, cuando fallo en la contraseÃƒÂ±a	
	when Desaprovado =>
		
--Conteo de tiempo para regresar a inicio
		if (ConteoFalla ='1') then
			LED_V <= '0'; LED_R <= '1'; AbrirPuerta <= '0'; CerrarPuerta <= '1';Reset2<='1';
		else
			LED_V <= '0'; LED_R <= '1'; AbrirPuerta <= '0'; CerrarPuerta <= '1';Reset2<='1';
		end if;
	when others => LED_V <= '0'; LED_R <= '1'; AbrirPuerta <= '1'; CerrarPuerta <= '0';Reset2<='1';
	end case;
end process;

--Proceso de reseteo2
secuencial2 : process (Reset2, Enter)
	begin
		if Reset2 = '1' or (momentoContra ='0') then
			EstadoAnte <= Primero;
--Asigna el siguiente estado al actual
		elsif rising_edge(Enter) then 
			EstadoAnte <= EstadoSigui; 
		end if;
	end process secuencial2;

combinacional2 : process (EstadoAnte, Contra4bits)
begin	
	case (EstadoAnte) is 
--Primer intento de la contraseÃƒÂ±a
		when primero =>
			
			if ( Contra4bits = "0101") then
				EstadoSigui <= Primero;
			else
				EstadoSigui <= Segundo;
			end if;
--Segundo intento de la contraseÃƒÂ±a
		when Segundo =>
			if ( Contra4bits = "0101" ) then
				EstadoSigui <= Primero;
			else
				EstadoSigui <= Tercero;
			end if;
--Tercero intento de la contraseÃƒÂ±a
		when Tercero =>
			if ( Contra4bits = "0101" ) then
				EstadoSigui <= Primero;
			else
				EstadoSigui <= Fallido;
			end if;
--FalloEpicamente
		when Fallido =>
			if (ConteoFalla = '1') then
				Estadosigui <= Primero;
			else 
				EstadoSigui <= Fallido;
			end if;
		when others => EstadoSigui <= Segundo;
	end case;			
end process;
--Logica para las salidas2
salidas2 : process (EstadoAnte, Contra4bits)
begin 
	case (EstadoAnte) is
	
	--Primer intento de contraseÃƒÂ±a
	
	when Primero =>
	BeginContarFallo<='0';
		if ( Contra4bits = "0101" ) then
				Correcta <= '1'; Incorrecta <='0'; 
			else
				Correcta <= '0'; Incorrecta <='1';
			end if;
--Segundo intento de la contraseÃƒÂ±a
		when Segundo =>
			if ( Contra4bits = "0101" ) then
				Correcta <= '1'; Incorrecta <='0';
			else
				Correcta <= '0'; Incorrecta <='1';
			end if;
--Tercero intento de la contraseÃƒÂ±a
		when Tercero =>
			if ( Contra4bits = "0101" ) then
				Correcta <= '1'; Incorrecta <='0';
			else
				Correcta <= '0'; Incorrecta <='0'; BeginContarFallo<= '1';
			end if;
--FalloEpicamente
		when Fallido =>
			if (ConteoFalla = '1') then
				Correcta <= '0'; Incorrecta <='0'; 
			else 
				Correcta <= '0'; Incorrecta <='1'; 
			end if;
		when others =>
			Correcta <= '1'; Incorrecta <='0';
		end case;
	end process;
--ConteoDePuertaAbierta
PuertaAbiertaCiertoTiempo : DivFreq Port map (Clock, BeginContarPuerta, ContadorPuerta3Seg);
TresSegundosDePuerta : process ( ContadorPuerta3Seg)
begin 
	if (ContadorPuerta3Seg < 3  ) then
		ConteoPuerta <= '0';
	else 
		ConteoPuerta <= '1';
	end if;
end process;

--ConteoDe Teimpo de espera de contraseÃƒÂ±a fallida
ContrasenaFallida : DivFreq Port map (Clock, BeginContarFallo, ContadorContrasena10seg);
DiezSegundoContrasena : process ( Contadorcontrasena10seg)
begin 
	if (ContadorPuerta3Seg < 10  ) then
		ConteoFalla <= '0';
	else 
		ConteoFalla <= '1';
	end if;
	end process;
--Asignamiento de las seÃƒÂ±ales a su salida definitiva
DefAbrirPuerta<= AbrirPuerta;
DefCerrarPuerta<= CerrarPuerta;
	
--Proceso Para contar cuantos carros han entrado
ConteoDeCarros : process (ConteoPuerta, SacaCarro)

Begin
--Resetea el numero de carros	
	If reset = '1' then
		Espacios<=0;
--Para Aumentar cuando ya va a cerrar la puerta
	elsif ConteoPuerta='1' then 
			Espacios <= Espacios+1 after 50ns;
--Para Disminuir el numero de espacios
	elsif SacaCarro='1' then 
			Espacios <= Espacios-1;
	end if;
		
end process;
--Proceso para mostrar el carro		
MuestreoDeVehiculo: process(Aumento, VolverA0)
begin
	if ( VolverA0= '1') then
		Muestra<=0;
	elsif (Aumento'event and Aumento='1' ) then
		muestra <= muestra+1;
	end if;
end process;
--Para Asignar los espacios a cada vehiculo y retirarlo cuando se vayan
AsignamientodeEspacio : process (ConteoPuerta, SacaCarro)
begin 
--Resetea los espacios ocupados	
	If reset = '1' then
		EspaciosOcupados<="00000000";
--Esto es para asignar los carros en orden cada que entre uno nuevo
	elsif (ConteoPuerta='1') then
		If  (espaciosOcupados(7)='0') then
			espaciosOcupados(7)<='1';
		elsif espaciosOcupados(6)='0' then 
			espaciosOcupados(6)<='1';
		elsif espaciosOcupados(5)='0' then
			espaciosOcupados(5)<='1';
		elsif espaciosOcupados(4)='0' then
			espaciosOcupados(4)<='1';
		elsif espaciosOcupados(3)='0' then
			espaciosOcupados(3)<='1';
		elsif espaciosOcupados(2)='0' then
			espaciosOcupados(2)<='1';
		elsif espaciosOcupados(1)='0' then
			espaciosOcupados(1)<='1';
		elsif espaciosOcupados(0)='0' then
			espaciosOcupados(0)<='1';
		end if;
--Esta parte de aqui retira el carro que se este mostrando en los displays
	elsif SacaCarro='1' then
		if EspaciosOcupados(Muestra) = '1' then
			espaciosOcupados(Muestra)<='0';
		end if;
	end if;
end process;

--Teniendo este sistema se implementa el sistema de conteo de tiempo
ConteoEspacio1 : Parqueadero port map (Clock, EspaciosOcupados(7), RtcsegUni1, RtcsegDec1, ClkPa1);
ConteoEspacio2 : Parqueadero port map (Clock, EspaciosOcupados(6), RtcsegUni2, RtcsegDec2, ClkPa2);
ConteoEspacio3 : Parqueadero port map (Clock, EspaciosOcupados(5), RtcsegUni3, RtcsegDec3, ClkPa3);
ConteoEspacio4 : Parqueadero port map (Clock, EspaciosOcupados(4), RtcsegUni4, RtcsegDec4, ClkPa4);
ConteoEspacio5 : Parqueadero port map (Clock, EspaciosOcupados(3), RtcsegUni5, RtcsegDec5, ClkPa5); 
ConteoEspacio6 : Parqueadero port map (Clock, EspaciosOcupados(2), RtcsegUni6, RtcsegDec6, ClkPa6);
ConteoEspacio7 : Parqueadero port map (Clock, EspaciosOcupados(1), RtcsegUni7, RtcsegDec7, ClkPa7);
ConteoEspacio8 : Parqueadero port map (Clock, EspaciosOcupados(0), RtcsegUni8, RtcsegDec8, ClkPa8);

--Ahora Falta Contar Cada 5 minutos 32 pesos, para eso se implementa otro componente similar al Divisorde frecuencia
ConteoCosto1 : Contador5minutos port map (ClkPa1, EspaciosOcupados(7), Costo1,SegUni1, SegDec1, SegCent1);
ConteoCosto2 : Contador5minutos port map (ClkPa2, EspaciosOcupados(6), Costo2,SegUni2, SegDec2, SegCent2);
ConteoCosto3 : Contador5minutos port map (ClkPa3, EspaciosOcupados(5), Costo3,SegUni3, SegDec3, SegCent3);
ConteoCosto4 : Contador5minutos port map (ClkPa4, EspaciosOcupados(4), Costo4,SegUni4, SegDec4, SegCent4);
ConteoCosto5 : Contador5minutos port map (ClkPa5, EspaciosOcupados(3), Costo5,SegUni5, SegDec5, SegCent5);
ConteoCosto6 : Contador5minutos port map (ClkPa6, EspaciosOcupados(2), Costo6,SegUni6, SegDec6, SegCent6);
ConteoCosto7 : Contador5minutos port map (ClkPa7, EspaciosOcupados(1), Costo7,SegUni7, SegDec7, SegCent7);
ConteoCosto8 : Contador5minutos port map (ClkPa8, EspaciosOcupados(0), Costo8,SegUni8, SegDec8, SegCent8);

--Aqui debe de ir el proceso para muestre los valores del parqueadero segun el numero de muestra 
Salimuestra <= Std_logic_vector(to_unsigned(Muestra,3));
DefNumEspacios <= Std_logic_vector(to_unsigned(Espacios,4));
SieteSegmentosEspacios : BCD7seg port map (DefNumEspacios, SaliEspacios);
with Muestra Select
SegCentDef <= SegCent1 when 0,
				SegCent2 when 1,
				SegCent3 when 2,
				SegCent4 when 3,
				SegCent5 when 4,
				SegCent6 when 5,
				SegCent7 when 6,
				SegCent8 when 7;
SieteSegmentosCentenas : BCD7seg port map (Std_logic_vector(to_unsigned(SegCentDef,4)), SaliSegCent);				

with Muestra Select
SegDecDef <= SegDec1 when 0,
				SegDec2 when 1,
				SegDec3 when 2,
				SegDec4 when 3,
				SegDec5 when 4,
				SegDec6 when 5,
				SegDec7 when 6,
				SegDec8 when 7;
SieteSegmentosDecenas : BCD7seg port map (Std_logic_vector(to_unsigned(SegDecDef,4)), SaliSegDec);						
with Muestra Select
SegUniDef <= SegUni1 when 0,
				SegUni2 when 1,
				SegUni3 when 2,
				SegUni4 when 3,
				SegUni5 when 4,
				SegUni6 when 5,
				SegUni7 when 6,
				SegUni8 when 7;
SieteSegmentosUnidades : BCD7seg port map (Std_logic_vector(to_unsigned(SegUniDef,4)), SaliSegUni);		
end arq;