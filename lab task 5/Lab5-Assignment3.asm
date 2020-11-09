ORG 100H
.MODEL SMALL

.DATA 

SPACE DW 11
STAR DW 1
SPCL DW 5
STARL DW 13          
          
.CODE

 MAIN PROC 
    
    MOV CX,7
    
            ROW:
                
            MOV BX,CX
            MOV CX,SPACE
    
    
    
    INSPACE: 
    
        MOV DL,32
        MOV AH,2
        INT 21H
    
    
        LOOP INSPACE
        
        DEC SPACE 
        
        MOV CX,STAR  
    
    
    
            INNSTR: 
    
                MOV DL,'*'
                MOV AH,2
                INT 21H
    
                    LOOP INNSTR
                    INC STAR
                    INC STAR
    
    
                    MOV DL,0AH
                    MOV AH,2
                    INT 21H
                    MOV DL,0DH
                    MOV AH,2
                    INT 21H 
                    
                    MOV CX,BX 
                    
                    LOOP ROW
              
                    MOV CX,7
    
    
    
         ROWL:
            
            MOV BX,CX
            MOV CX,SPCL
    
    
    
        INNERSPACE: 
            MOV DL,32
            MOV AH,2
            INT 21H
    
    
                LOOP INNERSPACE
                
                INC SPCL  
                
                MOV CX,STARL  
    
    
    
        INNSERSTRl: 
            
            MOV DL,'*'
            MOV AH,2
            INT 21H
    
                LOOP INNSERSTRl
                DEC STARL
                DEC STARL
    
            MOV DL,0AH
            MOV AH,2
            INT 21H
            MOV DL,0DH
            MOV AH,2
            INT 21H
    
            MOV CX,BX
    
            LOOP ROWL          
              
 END MAIN
 ENDP