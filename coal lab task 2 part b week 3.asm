.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    

    MOV AL, 7
    MOV BL, 1
    ADD AL, BL       ; register code

    ADD AL, 30H
    MOV DL, AL
    MOV AH, 02H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
