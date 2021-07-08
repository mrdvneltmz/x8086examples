            .MODEL SMALL
.STACK 64
.DATA
.CODE
;---------------------

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
BACK:MOV AH,0CH
     MOV AL,02
     INT 10H
     INC CX
     ADD DX,2
     CMP CX,150
     JNZ BACK
     MOV CX,100
     MOV DX,50
BACK2:MOV AH,0CH
     MOV AL,02
     INT 10H
     DEC CX
     ADD DX,2
     CMP CX,50
     JNZ BACK2
     MOV DX,125
     MOV CX,60
BACK3:MOV AH,0CH
     MOV AL,02
     INT 10H
     INC CX
     CMP CX,140
     JNZ BACK3     
           
MAIN ENDP
     END MAIN

