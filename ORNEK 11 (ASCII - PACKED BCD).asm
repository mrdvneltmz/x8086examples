        .MODEL SMALL
        .STACK 64
        .DATA
        
ASCII   DB  '47'
PACKED  DB  ?

        .CODE
        
MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX
        
        MOV  AX,WORD PTR ASCII ;DB yi DW gibi aldik
        AND  AX,0F0FH          
        XCHG AH,AL             ;AH ile AL'nin yerini degistirdik
        MOV  CL,4
        SHL  AH,CL             ;AH 4 kere sol shiflendi
        OR   AL,AH             ;AL ile AH'i OR'ladik birlessinler
        MOV  PACKED,AL
        
        ENDP
        END MAIN  