
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx, 5
mov dx, 'a'

add cx,cx

inicio:
jz fim

cmp dx, 'a'
je then

mov ah, 2
mov dl, '#'
int 21h

mov dx, 'a'
jmp fi

then:
    mov ah, 2
    mov dl, '*'
    int 21h
    mov dx, 'b'

fi:
    dec cx
    jmp inicio

fim:
    ;mov al, 0
    ;mov ah, 4ch   ; finalizar o codigo pah
    ;int 21h


ret




