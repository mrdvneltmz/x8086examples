        .MODEL SMALL
        .STACK 64
;-----------------------
        .DATA
    
VERI    DB 9,22
SONUC   DB ?
VERI2   DW 1234H
VERI3   DW 500H
VERI4   DB 6BH
VERI5   DW 12C3H
SONUC2  DW 2 DUP(?)
SONUC3  DW 2 DUP(?)
;-----------------
    .CODE

MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX
;------BYTE X BYTE---------        
        MOV SI,OFFSET VERI
        MOV AL,[SI]
        INC SI
        MOV BL,[SI]
        MUL BL
        MOV SONUC,AX
;------WORD X WORD---------
        MOV AX,VERI2
        MUL VERI3
        MOV SONUC2,AX
        MOV SONUC2+2,DX
;------WORD X BYTE---------
        MOV AL,VERI4
        SUB AH,AH
        MUL VERI5
        MOV BX,OFFSET SONUC3
        MOV [BX],AX
        MOV [BX]+2,DX
;--------------------------                        
        
        