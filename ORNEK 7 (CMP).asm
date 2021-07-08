        .MODEL SMALL
        .STACK 64 
;----------------------------------
        .DATA
DEGERLER DB 10H, 2H, 5H, 23H, 5H
SONUC    DB ?
;----------------
        .CODE                            
MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX              
        MOV BX, OFFSET DEGERLER
        SUB AX,AX
        MOV AL, [BX]
        MOV CX, 4
DONGU:  INC BX
        CMP AL,[BX]
        JC DEGISTIR
        DEC CX
        JNZ DONGU
        JZ EXIT
        DEGISTIR:MOV AL,[BX]
        DEC CX
        JNZ DON
EXIT:
MAIN    ENDP
        END MAIN