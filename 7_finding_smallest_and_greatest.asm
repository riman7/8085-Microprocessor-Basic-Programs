;Write a program in 8085 to find the largest and smallest bytes from the ;list of 20 bytes
;stored starting from memory location C050H. Store the largest byte and ;smallest byte
;in C070H and C071H respectively.

LXI H,C050H
MVI C, 19
MOV A,M
MOV D,A;Lowest
MOV E,A;Highest
LOOP:
	INX H
	MOV A,M
	CMP D
	JNC SKIP1
	MOV D,A
SKIP1:
	CMP E
	JC SKIP2
	MOV E,A
SKIP2:
	DCR C
	JNZ LOOP
MOV A,E
STA C070H
MOV A,D
STA C071H
HLT