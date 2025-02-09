;------------------------------------------------------------------
; Program: There are 40 8-bit numbers in a table with address starting ;from 9090H, Write a
;program in 8085 to transfer these numbers to another table with ;address from A010H
;if lower nibble of a number is greater than higher nibble, Otherwise ;transfer by setting
;bit D2 and resetting bit D6.
;------------------------------------------------------------------


	LXI H,9090H; SOURCE
	LXI D,A010H; DESTINATION
	MVI C, 40; COUNTER

LOOP:
	MOV A,M
	ANI 0FH
	MOV B,A; LOWER NIBBLE
	MOV A,M
	ANI F0H
	RRC
	RRC
	RRC
	RRC
 	;UPPER NIBBLE
	CMP B
	JC SKIP_SET_RESET
	MOV A,M
	ANI 10111111B
	ORI 00000100B
	STAX D
	JMP NEXT

SKIP_SET_RESET:
	MOV A,M
	STAX D
NEXT: 
	INX H
	INX D
	DCR C
	JNZ LOOP
HLT
	