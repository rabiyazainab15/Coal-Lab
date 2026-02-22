.MODEL SMALL
.STACK 100H

.DATA
NAME DB 'Rabiah Zainab',0DH,0AH,'$'
SAP  DB 'SAP ID: 68791','$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Print Name
    LEA DX, NAME
    MOV AH, 09H
    INT 21H

    ; Print SAP ID
    LEA DX, SAP
    MOV AH, 09H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN    task 2