;Program:     .Write an ALP in 8085 to transfer 20 bytes of data in a table ;	.to another table by interchanging
;	.D1 and D4 bits of each byte

LXI H, 2000H
LXI D, 3000H

LOOP: 
  MOV A,M
  ANI 00000010b
  RLC
  RLC
  RLC
  MOV B,A
  MOV A,M
  ANI 00010000b
  RRC
  RRC
  RRC
  MOV C,A
  MOV A,M
  ANI 11101101b
  ADD C
  ADD B
  STAX D
  INX H
  INX D
  MOV A,L
  CPI 14H
  JNZ LOOP
HLT
  
  



