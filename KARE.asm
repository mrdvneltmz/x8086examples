.MODEL SMALL
.STACK 64
.DATA
.CODE
MAIN    PROC FAR
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
YATAY1:MOV AH,0CH
     MOV AL,02  ;cizgi rengi
     INT 10H
     INC CX
     CMP CX,200 ;cizginin siniri
     JNZ YATAY1
     MOV CX,200
     
DIKEY1:MOV AH,0CH
     MOV AL,02
     INT 10H
     INC DX
     CMP DX,150
     JNZ DIKEY1 
     MOV CX,200
YATAY2:MOV AH,0CH
     MOV AL,02
     INT 10H
     DEC CX
     CMP CX,100
     JNZ YATAY2
DIKEY2:MOV AH,0CH
     MOV AL,02
     INT 10H
     DEC DX
     CMP DX,50
     JNZ DIKEY2           
MAIN ENDP
     END MAIN