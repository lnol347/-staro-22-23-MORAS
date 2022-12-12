@R0
D = M
@R5
M = D // RAM5 na trenutni maksimum

@R1
D = M - D // D = RAM1 - RAM0

@STEP2
D; JLE 

@R1
D = M 

@R5
M = D //RAM5 = RAM1

@STEP2DALJE
0; JMP


(STEP2)
@R5
D = M
(STEP2DALJE)
@R2
D = M - D
@STEP3
D; JLE
@R2
D = M
@R5
M = D
@STEP3DALJE
0; JMP

(STEP3)
@R5
D = M
(STEP3DALJE)
@R3
D = M - D
@STEP4
D; JLE
@R3
D = M
@R5
M = D
@STEP4DALJE
0; JMP

(STEP4)
@R5
D = M
(STEP4DALJE)
@R4
D = M - D
@END
D; JLE
@R4
D = M
@R5
M = D

(END)
@END
0;JMP