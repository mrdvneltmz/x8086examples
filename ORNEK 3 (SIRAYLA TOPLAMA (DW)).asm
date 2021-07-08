    
    .MODEL SMALL
    .STACK 100
;-----------------
    .DATA
    
DATA_IN DW  254DH,1223H,15DDH,1FAFH,2B54H
        
SUM     DW  ?

;-----------------
    .CODE

MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX
        MOV CX,05
        MOV DI,OFFSET DATA_IN
        MOV BX,0
DONGU:  ADD BX,[DI]
        INC DI
        INC DI
       ;ADD DI,2 
        DEC CX
        JNZ DONGU
        MOV SI,OFFSET SUM
        MOV [SI],BX
        HLT
MAIN    ENDP
        END MAIN