; This program accepts an integer as an input, adds 200 to it, and prints the sum

DECI num, d 
ADDa amount, d
ADDa num, d
STa sum, d
STRO 0x0018, d
DECO sum, d
amount: .WORD 200
num: .BLOCK 2
sum: .BLOCK 2
.ASCII "sum = \x00"
STOP
.END
