        .MODEL SMALL
        .STACK 64
        .DATA
        
ASCII     DB  '9562481273'
UNPACKED  DB  10 DUP (?)
PACKED    DB  5  DUP (?)
        .CODE
        
MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,5
        MOV BX,OFFSET ASCII
        MOV DI,OFFSET UNPACKED
DONGU:  MOV AX,[BX]
        AND AX,0F0FH
        MOV [DI],AX
        ADD DI,2
        ADD BX,2
        LOOP DONGU
        MOV DX,5
        MOV DI,OFFSET UNPACKED
        MOV BX,OFFSET PACKED
PBCD:   MOV AX,[DI]
        XCHG AH,AL
        MOV CL,4
        SHL AH,CL
        OR  AL,AH
        MOV [BX],AL
        ADD DI,2
        INC BX
        DEC DX
        JNZ PBCD           
        
ENDP
        END MAIN