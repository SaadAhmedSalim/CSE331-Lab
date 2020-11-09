.MODEL SMALL
.STACK 100H
.DATA
   
    M1 DB 'ENTER A HEX DIGIT "0"..."9"  OR "A".."F": $'
    M2 DB 0AH,0DH,'OUTPUT: $'
    
.CODE
MAIN PROC
 
    MOV AX,@DATA
    MOV DS,AX
 
    TOP:
        MOV AH,9
        LEA DX,M1
        INT 21H
     
        MOV AH,1
        INT 21H
        MOV BL,AL
     
        CMP BL,30H
        JL  END
     
        CMP BL,46H
        JG  END
     
        CMP BL,39H
        JLE PRINT
     
        MOV AH,9
        LEA DX,M2
        INT 21H
     
        SUB BL,11H
     
        MOV AH,2
        MOV DL,31H
        INT 21H
        MOV DL,BL
        INT 21H
        JMP END      
   
   PRINT:
        MOV AH,9
        LEA DX,M2
        INT 21H
     
        MOV AH,2
        MOV DL,BL
        INT 21H
     
       
    END:
 
    MOV AH,4CH
    INT 21H
     
    MAIN ENDP
END MAIN