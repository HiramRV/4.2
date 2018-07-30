*Librerias

.include 'Comp.sp'
.include 'Params.sp'


X1 A B Y vdd XorG  size = 1
*XNAND A B Y2 vdd Nand2G  size = 1
*X2 A B Y2 vdd 

.TRAN 1e-12 2e-6

.END
