.MODEL SMALL
.STACK 64
.DATA
DATA1 DB 12,25,88,103
DATA2 DB 4 DUP (?)
.CODE
;---------------------

MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX    
        
        MOV CX,04
        MOV SI,OFFSET DATA1
        MOV DI,OFFSET DATA2
        
        ADD SI,3
DONGU:  MOV AL,[SI]
        MOV [DI],AL
        INC DI
        DEC SI
        DEC CX
        JNZ DONGU
        HLT
MAIN    ENDP
        END MAIN