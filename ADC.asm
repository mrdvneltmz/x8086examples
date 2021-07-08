.MODEL SMALL
.STACK 64

.DATA
    
DATA1	DW	4578H, 9842H, 0A284H, 6136H, 0F259H
RESULT	DD	?

.CODE    

anaprg PROC 
    
        MOV AX,@DATA
        MOV DS,AX
		
		MOV SI,OFFSET DATA1
		MOV CX,5
		MOV AX,0
		MOV BX,0
		CLC
		
	BACK: 
		ADD AX,[SI]
		ADC BX,0
		INC SI
		INC SI
		LOOP BACK
		
		MOV RESULT,AX
		MOV RESULT+2,BX
        
        HLT
END anaprg