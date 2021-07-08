.MODEL SMALL
.STACK 64
.DATA
BUFFER  DB 22,?,22 DUP (?)
DATAREA DB CR,LF,22 DUP (?),'$'

CR EQU 0DH
LF EQU 0AH

;---------------------
        .CODE
MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX    
        CALL CLEAR
        CALL CURSOR
        CALL GETDATA
        CALL CONVERT
        CALL DISPLAY
                  
        HLT
MAIN    ENDP

;--------------------
CLEAR PROC
      MOV AX,0600H
      MOV BH,07
      MOV CX,0000
      MOV DX,184FH
      INT 10H
      RET
CLEAR ENDP
;-------------------
CURSOR PROC       
       MOV AH,02
       MOV BH,00
       MOV DL,01 ;SUTUN
       MOV DH,03 ;SATIR
       INT 10H
       RET
CURSOR ENDP
;-------------------
DISPLAY PROC
        MOV AH,09  ;DISPLAY STRING
        MOV DX,OFFSET DATAREA
        INT 21H
        RET
DISPLAY ENDP
;--------------------
GETDATA PROC
        MOV AH,0AH  ;INPUT STRING
        MOV DX,OFFSET BUFFER
        INT 21H
        RET
GETDATA ENDP
;--------------------
CONVERT PROC    ;KUCUK HARFI BUYUGE CEVIRME
        MOV BX,OFFSET BUFFER
        MOV CL,[BX]+1
        SUB CH,CH
        MOV DI,CX
        MOV BYTE PTR[BX+DI]+2,20H
        MOV SI,OFFSET DATAREA+2
DONGU:  MOV AL,[BX]+2
        CMP AL,61H
        JB SONRAKI
        CMP AL,7AH
        JA SONRAKI
        AND AL,11011111B
SONRAKI:MOV [SI],AL
        INC SI
        INC BX
        LOOP DONGU
        RET
CONVERT ENDP
;-------------------
        END MAIN
        