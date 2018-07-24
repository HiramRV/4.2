*Libreria de compuertas
*------------------------------------------------------------------
*------------------Subcircutio para compuerta Not------------------
.SUBCKT NotG In Out vdd size = 1
	M1 Out In vdd vdd pmos W='size*UNIT_W' L=UNIT_L
	M2 Out In 0 0 nmos W='size*UNIT_W' L=UNIT_L
.ENDS
*------------------------------------------------------------------
*-------------SUBCIRCUITO PARA COMPUERTA NAND DE 2 ENTRADAS--------
.SUBCKT Nand2G in1 in2 out vdd size = 1
	M1 out in1 vdd vdd pmos W='size*UNIT_W' L=UNIT_L
	M2 out in2 vdd vdd pmos W='size*UNIT_W' L=UNIT_L
	M3 out in1 nodo1 0 nmos W='size*UNIT_W' L=UNIT_L
	M4 nodo1 in2 0 0 nmos W='size*UNIT_W' L=UNIT_L
.ENDS	
*------------------------------------------------------------------
*-------------SUBCIRCUITO PARA COMPUERTA NAND DE 2 ENTRADAS--------
.SUBCKT NorG in1 in2 out vdd size = 1
	M1 nodo1 in1 vdd vdd pmos W='size*UNIT_W' L=UNIT_L
	M2 out in2 nodo1 vdd pmos W='size*UNIT_W' L=UNIT_L
	M3 out in1 0 nmos W='size*UNIT_W' L=UNIT_L
	M4 out in2		0 nmos W='size*UNIT_W' L=UNIT_L
.ENDS
*------------------------------------------------------------------
*----------------Subcircutio para compuerta XOR--------------------
