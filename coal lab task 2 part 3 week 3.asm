.MODEL SMALL
.STACK 100H
.DATA
NUM1 DB 3
NUM2 DB 6

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, NUM1     ; direct memory
    ADD AL, NUM2

    ADD AL, 30H
    MOV DL, AL
    MOV AH, 02H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
