; Program to calculate Area of Rectangle

.model small
.stack 100h

.data
msg db "Area of Rectangle = $"

.code
main proc

mov ax,@data
mov ds,ax

mov al,4        ; length
mov bl,2        ; width

mul bl          ; AL * BL = 8

mov dl,al
add dl,48       ; ASCII conversion

mov bx,dx       ; save result

; print message
mov dx,offset msg
mov ah,9
int 21h

; print result
mov dl,bl
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main