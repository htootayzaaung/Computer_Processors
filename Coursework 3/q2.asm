@1
D = M               //D = RAM[1]
@4
M = D               //RAM[4] = RAM[1]
@2
D = M               //RAM[1] = RAM[2]
@3
M = D + 1           //RAM[3] = RAM[1] + 1

@3
M = M - 1           //RAM[3] = RAM[3] - 1
D = M               //RAM[1] = RAM[3]
@22
D ; JEQ
@4
A = M               //A = RAM[4]
D = M               //D = RAM[4]

@0
M = M + D           //RAM[0] = RAM[0] + RAM[4]
@4
M = M + 1           //RAM[4] = RAM[4] + 1
@8
0 ; JMP

@4                  //RAM[4] = 0
M = 0
@24
0 ; JMP
