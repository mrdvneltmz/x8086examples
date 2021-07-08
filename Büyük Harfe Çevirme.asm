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
        CMP AL,61h   ;Kucuk A
        JB OVER
        CMP AL, 7Ah  ; Kucuk Z
        JA OVER
        AND AL,11011111b
OVER:   MOV [BX],AL
        INC SI
        INC BX
        LOOP BACK
        
        MOV AH,4ch
        INT 21h 
MAIN    ENDP
        END MAIN
