*Librerias de compuertas
***Subcircutio para compuerta Not***
.SUBCKT NotG In Out vdd size = 1

	M1 Out In vdd vdd pmos W='size*UNIT_W' L=UNIT_L
	M2 Out In 0 0 nmos W='size*UNIT_W' L=UNIT_L
.ENDS

***Subcircutio para compuerta XOR***
