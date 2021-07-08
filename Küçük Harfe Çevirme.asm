TITLE PROGRAM3_3 BUYUK_YAP
        .MODEL SMALL
        .STACK 64   
;------------------------        
        .DATA
DATA1   DB 'mY NAMe is jOe'
DATA2   DB 14 DUP(?)
;------------------------
        .CODE
MAIN    PROC FAR     
        MOV AX,@DATA
        MOV DS,AX
        MOV SI, OFFSET DATA1
        MOV BX, OFFSET DATA2
        MOV CX,14
        

BACK:   MOV AL,[SI]
        CMP AL,41h   ;Buyuk A
        JB OVER
        CMP AL, 5Ah ; Buyuk Z
        JA OVER
        OR AL,00100000b
OVER:   MOV [BX],AL
        INC SI
        INC BX
        LOOP BACK
        
        MOV AH,4ch
        INT 21h 
MAIN    ENDP
        END MAIN
