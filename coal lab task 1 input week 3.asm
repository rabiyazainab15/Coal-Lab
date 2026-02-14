.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
     ;Print H
    MOV AH, 02H
    MOV DL, 'H'
    INT 21H

    ;Print E
    MOV DL, 'E'
    INT 21H

    ;Print  L
    MOV DL, 'L'
    INT 21H

    ;rint L
    MOV DL, 'L'
    INT 21H
     ;Print O
    MOV DL, 'O'
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
