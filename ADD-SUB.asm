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
        MOV BX,125DH
        MOV DX,8B18H
        MOV CX,0403H
        MOV AX,20DFH
        STC
        ROL BX,CL
        RCL DL,1
        SHL DH,1
        AND AH,0FH
        SBB AL,BL
        MUL BH
        ADC AH,BH
        HLT
MAIN    ENDP
        END MAIN
        