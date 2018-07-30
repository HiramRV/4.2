*Librerias
.include 'Comp.sp'
.include 'Params.sp'
.include 'Sources.sp'
.include '32nm.sp'


X1 A B Y1 vdd Nand2G  size = 1
X2 B Y2 vdd NotG size = 1
X3 A B Y3 vdd NorG size = 1
X4 A B Y4 vdd XorG  size = 1

.TRAN 0.1e-12 5e-6

.END
