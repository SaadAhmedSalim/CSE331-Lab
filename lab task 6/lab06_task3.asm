org 100h

.MODEL SMALL

.DATA
     STR1 DB "MADAM$"
     STR2 DB 5 DUP (?),'$' 
     
     MSG1 DB "Palindrome$"
MSG2 DB "Not palindrome$"
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
     
    LEA SI,STR2
    LEA DI,STR1
    ADD DI,4
    
    MOV CX,5
REVERSE:
    MOV AL,[DI]
    
    MOV [SI],AL
    INC SI
    DEC DI
    LOOP REVERSE 
        
   CLD
   LEA SI, STR1
   LEA DI, STR2
   MOV CX, 5
   COMPARE:
   REPE CMPSB
   JNE PRINT_N
   PRINT:
   MOV AH, 9
   LEA DX, MSG1
   INT 21H
   JMP EXIT
   PRINT_N:
   MOV AH, 9
   LEA DX, MSG2
   INT 21H
  JMP EXIT
  EXIT:
  MOV AH, 4CH
  INT 21H






