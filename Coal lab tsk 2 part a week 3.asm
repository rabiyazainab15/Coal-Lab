 .MODEL SMALL
.STACK 100H
.DATA
RESULT DB ?

.CODE
MAIN PROC
   

    MOV AL, 2        ; immediate
    ADD AL, 5        ; immediate
    MOV RESULT, AL

    ; Convert to ASCII
    ADD AL, 30H
    MOV DL, AL
    MOV AH, 02H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
