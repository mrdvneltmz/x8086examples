        .MODEL SMALL
        .STACK 64
        .DATA
        .CODE
        
MAIN    PROC
        MOV AL,9AH
        
        SHR AL,1
        SHR AL,1
        SHR AL,1
        
        MOV CL,3
        SHR AL,CL
        
MAIN    ENDP
        END MAIN