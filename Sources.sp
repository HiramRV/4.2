* Fuentes de Voltaje para el sistema. 

V1 vdd 0 Vdd1			* Fuente V1

V2 A 0 PWL 0p 0 1.0u 0 1.001u Vdd1	*V2 = 0-0-1-1
V3 B 0 PWL 0p 0 0.5u 0 0.501u Vdd1 1.0u Vdd1 1.001u 0 1.5u 0 1.501u Vdd1 *V3 = 0-1-0-1


**PWL( T1 V1 T2 V2 T3 V3 ...