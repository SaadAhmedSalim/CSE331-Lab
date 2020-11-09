ORG 100H
.DATA 

   MSG DB "THIS IS CSE 331 LAB CLASS 5.$" 
   
.CODE

 MOV AX, @DATA
 MOV DS, AX
           
           
   XOR AX,AX
   
   XOR BX,BX
    
   MOV CX,27
          
          
        COMPARE:
                 
        MOV DL,MSG[BX]
        
        CMP DL,'A'
        JL INCREMENT
   
        CMP DL,'Z'
        JG INCREMENT 
        JMP CONVERT
 
   
        CONVERT:
   
        ADD DL,20H     
        MOV MSG[BX],DL 
    
        JMP INCREMENT  
   
            
            
        INCREMENT:
        
        INC BX
        LOOP COMPARE 
   
        MOV AH,9
        LEA DX, MSG
        INT 21H
    
        JMP END
   
        
        
        END:
        
        MOV AH, 4CH
        INT 21H
