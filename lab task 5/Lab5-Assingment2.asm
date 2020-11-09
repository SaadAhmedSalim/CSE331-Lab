ORG 100H
.DATA 

   MSG DB "**********$" 
   
.CODE

 MOV AX, @DATA
 MOV DS, AX
           
   MOV CX,10
   
        COUNT:
   
        MOV AH,9
        LEA DX, MSG
        INT 21H  
        MOV AH, 2
        MOV DL, 10
        INT 21H
        MOV DL, 13
        INT 21H
        LOOP COUNT
   
        JMP END
   
 END:
 MOV AH, 4CH
 INT 21H
