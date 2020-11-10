
org 100h

.MODEL SMALL

.DATA
     STR1 DB "Hello world$"
     STR2 DB 20 DUP (?),'$'
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    MOV ES,AX
     
    LEA SI,STR2
    LEA DI,STR1
    ADD DI,10
    
    MOV CX,11
REVERSE:
    MOV AL,[DI]
    
    MOV [SI],AL
    INC SI
    DEC DI
    LOOP REVERSE
    
    
        
    MOV AH,9
    LEA DX,STR2
    INT 21H
    
    
EXIT:
    MOV AH,4CH
    INT 21H





