; Simple Assembly Program to Print Introduction
; Prints: Full Name, SAP ID, Batch, Program + Semester
; Data: Rabiah zainab, 68791, 2025-2028, Bs-SE 3rd Semester

.MODEL SMALL
.STACK 100H

.DATA
    ; Each line is stored as a string ending with '$'
    nameMsg  DB 'Full Name: Rabiah zainab$'
    sapMsg   DB 'SAP Id: 68791$'
    batchMsg DB 'Batch: 2025-2028$'
    progMsg  DB 'Program + Semester: Bs-SE 3rd Semester$'

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX

    ; ----- Print Full Name -----
    LEA DX, nameMsg          ; Load address of nameMsg
    MOV AH, 9                 ; DOS function to print string
    INT 21H                   ; Call DOS

    ; Print new line (carriage return + line feed)
    MOV DL, 0DH               ; Carriage return
    MOV AH, 2                 ; DOS function to print character
    INT 21H
    MOV DL, 0AH               ; Line feed
    INT 21H

    ; ----- Print SAP ID -----
    LEA DX, sapMsg
    MOV AH, 9
    INT 21H

    ; New line
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    INT 21H

    ; ----- Print Batch -----
    LEA DX, batchMsg
    MOV AH, 9
    INT 21H

    ; New line
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    INT 21H

    ; ----- Print Program + Semester -----
    LEA DX, progMsg
    MOV AH, 9
    INT 21H

    ; Optional final new line
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    INT 21H

    ; Exit program
    MOV AH, 4CH               ; DOS function to terminate
    INT 21H
MAIN ENDP
END MAIN