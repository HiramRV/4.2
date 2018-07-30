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
	M3 out in1 0 0 nmos W='size*UNIT_W' L=UNIT_L
	M4 out in2 0 0 nmos W='size*UNIT_W' L=UNIT_L
.ENDS
*------------------------------------------------------------------
*----------------Subcircutio para compuerta XOR--------------------
.SUBCKT XorG In1 In2 out vdd size = 1

	M11 AN In1 vdd vdd pmos W='size*UNIT_W' L=UNIT_L
	M12 AN In1 0 0 nmos W='size*UNIT_W' L=UNIT_L
	M13 BN In2 vdd vdd pmos W='size*UNIT_W' L=UNIT_L
	M14 BN In2 0 0 nmos W='size*UNIT_W' L=UNIT_L

	M1 Y1 In1 PD1 0 nmos W='size*UNIT_W' L=UNIT_L
	M2 PD1 BN 0 0 nmos W='size*UNIT_W' L=UNIT_L
	M3 Y1 In2 PD2 0 nmos W='size*UNIT_W' L=UNIT_L
	M4 PD2 AN 0 0 nmos W='size*UNIT_W' L=UNIT_L

	M5 PU1 AN vdd vdd pmos W='size*UNIT_W' L=UNIT_L
	M6 PU1 In2 vdd vdd pmos W='size*UNIT_W' L=UNIT_L
	M7 Y1 In1 PU1 vdd pmos W='size*UNIT_W' L=UNIT_L
	M8 Y1 BN PU1 vdd pmos W='size*UNIT_W' L=UNIT_L

	M9 out Y1 vdd vdd pmos W='size*UNIT_W' L=UNIT_L
	M10 out Y1 0 0 nmos W='size*UNIT_W' L=UNIT_L
		
.ENDS
