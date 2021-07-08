    .MODEL SMALL
    .STACK 64
;-----------------
    .DATA
    
DATA_IN DB 25H,12H,15H,1FH,2BH
SUM     DB ?

;-----------------
    .CODE

MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX
        MOV CX,05
        MOV BX,OFFSET DATA_IN
        MOV AL,0
DONGU:  ADD AL,[BX]
        INC BX
        DEC CX
        JNZ DONGU
        MOV SUM,AL
        HLT
MAIN    ENDP
        END MAIN