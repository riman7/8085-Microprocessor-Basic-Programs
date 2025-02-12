//Write a program in 8085 to sort the 10 data bytes stored in a table in //descending order The data bytes are stored in a table from memory //address 8920H

LXI H, 8920H       ;starting address of the table
MVI C, 09H         ; Load C with the number of passes (10 - 1 = 9)

OUTER_LOOP:
	MOV D,C           ; comparism counter
	LXI H, 8920H       ; Reset HL to the starting address of the table

INNER_LOOP:
	MOV A,M 
	INX H 
	MOV B,M           ; Load the second byte into register B
	CMP B              ; Compare A (first byte) with B (second byte)
	JNC NO_SWAP        ; If A >= B, no swap is needed
	MOV M,A           ;store the first byte in the second position
	DCX H              ; Decrement HL to point back to the first byte
	MOV M,B           ; Store the second byte in the first position
	INX H              ; Increment HL to point to the next byte

NO_SWAP:
	DCR D              ; Decrement the comparison counter
	JNZ INNER_LOOP
	DCR C 
	JNZ OUTER_LOOP
HLT
