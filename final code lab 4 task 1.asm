.MODEL SMALL
.STACK 100H

.DATA
NUM1 DB 5        ; 8-bit number
NUM2 DB 3        ; 8-bit number
RESULT DB ?

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    ;add  8-bit number
    MOV AL, NUM1
    ADD AL, NUM2
    MOV RESULT, AL

    ; Print result 
    MOV DL, RESULT
    ADD DL, 30H      ; convert to ASCII
    MOV AH, 02H
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN