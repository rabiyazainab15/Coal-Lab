       .MODEL SMALL
.STACK 100H

.DATA
MSG1 DB " Name: Rabiah Zainab ", 13,10, "$"
MSG2 DB " SAP ID: 68791 ", "$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; print name
    MOV DX, OFFSET MSG1
    MOV AH, 09H
    INT 21H

    ; print SAP ID
    MOV DX, OFFSET MSG2
    MOV AH, 09H
    INT 21H

    ; exit
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN