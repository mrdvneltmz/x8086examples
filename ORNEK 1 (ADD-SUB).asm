;ORNEK 1
.MODEL SMALL
.STACK 64
.DATA

DATA1    DB 52H
DATA2    DB 29H
TOPLAMA  DB ?
CIKARMA  DB ?

.CODE

MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX
        MOV AL,DATA1
        MOV BL,DATA2
        ADD AL,BL
        MOV TOPLAMA,AL
        MOV AL,DATA1
        SUB AL,BL
        MOV CIKARMA,AL 
        HLT
MAIN    ENDP
        END MAIN
        