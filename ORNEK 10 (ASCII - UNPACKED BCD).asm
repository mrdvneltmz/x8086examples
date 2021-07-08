        .MODEL SMALL
        .STACK 64
        .DATA
        
ASCII   DB  '9562481273'
UNPACK  DB  10 DUP(?)

        .CODE
        
MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,5
        MOV BX,OFFSET ASCII
        MOV DI,OFFSET UNPACK
DONGU:  MOV AX,[BX]
        AND AX,0F0FH
        MOV [DI],AX
        ADD DI,2
        ADD BX,2
        LOOP DONGU
        
ENDP
        END MAIN  
;------------------------------        
;FARKLI YOL 1
;
;DONGU: MOV AX, WORD PTR [BX]
;       AND AX,0F0FH
;       MOV WORD PTR [DI],AX
;       ADD DI,2
;       ADD BX,2
;       LOOP DONGU 
;------------------------------
;FARKLI YOL 2
;
;       MOV CX,10
;       SUB BX,BX
;DONGU: MOV AL,ASC[BX]
;       AND AL,0FH
;       MOV UNPACK[BX],AL
;       INC BX
;       LOOP DONGU
;------------------------------       