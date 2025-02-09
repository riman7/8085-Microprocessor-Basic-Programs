;------------------------------------------------------------------
; Program: Count odd and even parity numbers from 150 data bytes
;          stored consecutively starting at memory location C050H
;          Even parity count is stored at D000H and odd parity count 
;          is stored at D001H.
;------------------------------------------------------------------
        LXI H, C050H   ; HL points to the start of data (C050H)
        MVI B, 150d
        MVI D, 00H     ; D = even parity count (initialize to 0)
        MVI E, 00H     ; E = odd parity count (initialize to 0)

LOOP:   MOV A,M       ; Load the current byte into A
        ORA A          ; Set flags (parity flag reflects number of 1s in A)
        JP EVEN        ; Jump to EVEN if parity is even (P flag = 1)
        INR E          ; Increment odd parity count (E)
        JMP NEXT       ; Skip to NEXT

EVEN:   INR D          ; Increment even parity count (D)

NEXT:   INX H          ; Move HL to the nsext byte
        DCR B          ; Decrement counter (B)
        JNZ LOOP       ; Repeat until all 150 bytes are processed

        LXI H, D000H   ; HL points to D000H (even count storage)
        MOV M,D       ; Store even count at D000H
        INX H          ; HL now points to D001H
        MOV M,E       ; Store odd count at D001H
        HLT            ; Halt the program
