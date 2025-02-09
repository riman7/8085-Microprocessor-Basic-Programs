;Program:     .There are two tables holding twenty data whose starting ;	.address is 9000H and 9020H respectively. WAP to add the ;	.content of the first table .with the content of the second ; ;	.table having the same array index. Store.sum and carry into ;	.the third and fourth table indexing from 9040H and 9060H ;	.respectively.

LXI B, 9000H; Table 1
LXI H, 9020H; Table 2
LXI D, 9040H; Sum Table
LOOP: 
	LDAX B
	ADD M
	STAX D
	PUSH H
	PUSH D
	JNC NO_CARRY
	MVI E, 01H
	JMP NEXT
NO_CARRY:  
	MVI E, 00H
NEXT: 
	LXI H, 9060H
	MOV A,L
	ADD C
	MOV L,A
	MOV M,E
	POP D
	POP H
	INX B
	INX D
	INX H
	MOV A,C
	CPI 14H
	JNZ LOOP
HLT