//Write an assembly language program for 8085 to find the square of ten //8-bit numbers which are less than or equals to 0FH, stored from memory //location C090H, Store the
//result from the end of the source table.

                        LXI H, C090H
                        LXI D, C09AH

LOOP:             
	MOV A,M
	CPI 0FH
	JC SKIP
                        CALL SQR
SKIP:   
	STAX D       
	INX H           ; Increment HL to point to the next source number
	INX D
	MOV A,L
	CPI 9AH
	JNZ LOOP        ; Repeat the loop if B is not zero
	HLT             ; Halt program


SQR:       
	MOV B,A
	MOV C,A
	MVI A, 00h
	SQR_LOOP:
		ADD B
		DCR C
		JNZ SQR_LOOP
	RET