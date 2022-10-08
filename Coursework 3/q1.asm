@0
M = 0                 //RAM[0] = 0
@1
D = M                 //D = RAM[1]
@0
M = D                 //RAM[0] = RAM[1]
@2
A = M                 //A = RAM[2]
D = M                 //D = RAM[2]

@0
M = M & D             //RAM[0] = RAM[0] & RAM[0]
M =! M                //RAM[0] = RAM[0] ! RAM[0]
@1                  
D = D | M             //RAM[2] = RAM[2] | RAM[1]
@0
M = M & D             //RAM[0] = RAM[1] & RAM[2]
@17
0 ; JMP