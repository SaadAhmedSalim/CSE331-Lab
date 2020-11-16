ORG 100H
.MODEL SMALL
.DATA
    ARR1 DB 31H, 32H, 33H, 34H, 35H, '$'
    ARR2 DB 5 DUP(?), '$' 
    SUM DB 4 DUP(?), '$' 
    
    MSG1 DB "ARRAY 1: $"
    MSG2 DB "ARRAY 2: $"
    MSG3 DB "SUM: $"
     
    NEWL DB 0AH, 0DH, '$'
                 
    
.CODE

MAIN PROC 
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV BL, ARR1[0]
    MOV ARR2[4], BL
    
    MOV BL, ARR1[1]
    MOV ARR2[3], BL
    
    MOV BL, ARR1[2]
    MOV ARR2[2], BL
    
    MOV BL, ARR1[3]
    MOV ARR2[1], BL
    
    MOV BL, ARR1[4]
    MOV ARR2[0], BL 
    
    
    MOV AH, 9
    LEA DX, MSG1
    INT 21H
    
    LEA DX, ARR1
    INT 21H
    
    LEA DX, NEWL
    INT 21H
    
    LEA DX, MSG2
    INT 21H
    
    LEA DX, ARR2
    INT 21H
    
    LEA DX, NEWL
    INT 21H
    
    LEA DX, MSG3
    INT 21H
    
    MOV AH, 2
    
    MOV DL, ARR2[0]
    ADD DL, ARR2[1] 
    SUB DL, 30H
    INT 21H
    
    MOV DL, ARR2[1]
    ADD DL, ARR2[2]
    SUB DL, 30H
    INT 21H
    
    MOV DL, ARR2[2]
    ADD DL, ARR2[3]
    SUB DL, 30H
    INT 21H
    
    MOV DL, ARR2[3]
    ADD DL, ARR2[4]
    SUB DL, 30H
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP

END MAIN