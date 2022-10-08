//RAM[0] = 0
@0
M = 0

//D = RAM[2]
@2
D = M

//RAM[3] = RAM[2]
@3
M = D

//RAM[4] = RAM[2]
@4
M = D

//RAM[2] = 255
@255
D = A
A = D

//D = RAM[2] & RAM[4]
//RAM[4] = D
@4
D = D & M
M = D

//RAM[3] = RAM[3] - RAM[2]
@3
M = M - D

//D = RAM[1]
@1
D = M

//RAM[5] = RAM[2]
//RAM[5] = RAM[5] + RAM[2]
@5
M = D
M = M + D

//D = 256
@256
D = A

//D = RAM[5] - D
@5
D = M - D

@30
D;JLE

//RAM[5] = 256
//RAM[5] = RAM[5] + 1
@5
M = D
M = M + 1

//D = RAM[5]
@5
D = M

//RAM[6] = RAM[5]
//RAM[6] = RAM[6] + RAM[5]
@6
M = D
M = M + D

//D = 256
@256
D = A

//D = RAM[6] - D
@6
D = M - D

@44
D;JLE

//RAM[6] = 256
//RAM[6] = RAM[6] + 1
@6
M = D
M = M + 1

//D = RAM[6]
@6
D = M

//RAM[7] = RAM[6]
//RAM[7] = RAM[7] + RAM[6]
@7
M = D
M = M + D

//D = 256
@256
D = A

//RAM[6] = RAM[7] - RAM[6]
@7
D = M - D

@58
D;JLE

//RAM[7] = RAM[6]
//RAM[7] = RAM[7] + 1
@7
M = D
M = M + 1

//D = 256
@256
D = A

//RAMp[10] = 256
@10
M = D

//D = RAM[3]
//RAM[3] = 0
@3
D = M
M = 0

@75
D;JEQ

//RAM[3] = RAM[3] - RAM[10]
@10
D = D - M

//RAM[3] = RAM[3] + 1
@3
M = M + 1

@75
D;JEQ

@67
0;JMP

@4
D =! M

//D = D & RAM[5]
@5
D = D & M

//RAM[10] = D
@10
M = D

@5
D =! M

@4
D = D & M

//RAM[10] = D + RAM[10]
@10
M = D + M

@10
D =! M

//D = D & RAM[6]
@6
D = D & M

//RAM[8] = D
@8
M = D

@6
D =! M

//D = D & RAM[10]
@10
D = D & M

//RAM[8] = D + RAM[8]
@8
M = D + M

@3
D =! M

//D = D & RAM[4]
@4
D = D & M

//RAM[10] = D
@10
M = D

@4
D =! M

//D = D & RAM[3]
@3
D = D & M

//RAM[10] = D + RAM[10]
@10
M = D + M

@1
D =! M

//D = D & RAM[10]
@10
D = D & M

//RAM[11] = D
@11
M = D

@10
D =! M

//D = D & RAM[1]
@1
D = D & M

//RAM[11] = D + RAM[11]
@11
M = D + M

@6
D =! M

//D = D & RAM[11]
@11
D = D & M

//RAM[12] = D
@12
M = D

@11
D =! M

//D = D & RAM[6]
@6
D = D & M

//RAM[12] = D + RAM[12]
@12
M = D + M

@7
D =! M

//D = D & RAM[12]
@12
D = D & M

//RAM[9] = D
@9
M = D

@12
D =! M

//D = D & RAM[7]
@7
D = D & M

//RAM[9] = D + RAM[9]
@9
M = D + M

//D = 8
@8
D=A

//RAM[10] = 8
@10
M = D

//D = RAM[8]
//RAM[8] = RAM[8] + RAM[8]
@8
D = M
M = M + D

//RAM[10] = RAM[10] - 1
//D = RAM[10]
@10
M = M - 1
D = M

@151
D;JGT

//D = RAM[8]
@8
D = M

//RAM[8] = RAM[8] + RAM[9]
@9
D = D + M

//RAM[0] = RAM[8]
@0
M = D

@165
0;JMP
