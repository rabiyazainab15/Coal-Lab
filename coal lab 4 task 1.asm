.MODEL SMALL
.STACK 100H
.DATA
    NUM1 DB 25H        ; First 8-bit number
    NUM2 DB 15H        ; Second 8-bit number
    RESULT DB ?        ; To store result

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, NUM1       ; store first number into AL
    ADD AL, NUM2       ; Add second number
    MOV RESULT, AL     ; Store result

    MOV AH, 4CH       
    INT 21H
MAIN ENDP
END MAIN