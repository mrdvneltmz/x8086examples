.MODEL SMALL
.STACK 64
.DATA
.CODE
;---------------------
;YATAY CIZGI
MAIN PROC FAR
     MOV AX,0600H
     MOV BH,07
     MOV CX,0000
     MOV DX,184FH
     INT 10H
     MOV AH,00
     MOV AL,13H
     INT 10H
     MOV CX,100 ;X-ekseni
     MOV DX,50  ;Y-ekseni
BACK:MOV AH,0CH
     MOV AL,02  ;cizgi rengi
     INT 10H
     INC CX
     CMP CX,200 ;cizginin siniri
     JNZ BACK 
MAIN ENDP
     END MAIN
;--------------------
;ASAGI CAPRAZ CIZGI
;BACK:MOV AH,0CH
;     MOV AL,02
;     INT 10H
;     INC CX
;     INC DX
;     CMP CX,200
;     JNZ BACK 
;--------------------
;YUKARI CAPRAZ CIZGI
;BACK:MOV AH,0CH
;     MOV AL,02
;     INT 10H
;     INC CX
;     DEC DX
;     CMP CX,200
;     JNZ BACK
;--------------------
;DIKEY CIZGI
;BACK:MOV AH,0CH
;     MOV AL,02
;     INT 10H
;     INC DX
;     CMP DX,200
;     JNZ BACK 
;--------------------
       