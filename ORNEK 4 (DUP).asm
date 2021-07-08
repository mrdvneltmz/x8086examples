        .MODEL SMALL
        .STACK 64
        .DATA
;----------------------        
        
DATA_IN DB 25H,4FH,54H,1FH,2BH,0FFH
        
COPY    DB  6 DUP(?)
;----------------------
        .CODE
MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX
        MOV SI,OFFSET DATA_IN
        MOV DI,OFFSET COPY
        MOV CX,06H
DONGU:  MOV AL,[SI]
        MOV [DI],AL
        INC SI
        INC DI
        DEC CX
        JNZ DONGU
        HLT
MAIN    ENDP
        END MAIN