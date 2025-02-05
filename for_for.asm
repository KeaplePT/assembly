
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx, 4

volta:
    cmp cx, 0
    je fim

mov bx, 2

volta1:
    cmp bx, 0
    je fim1
    
    mov ah, 2
    mov dl, '*'
    int 21h
    
    dec bx
    jmp volta1

fim1:
    mov ah, 2
    mov dl, 10
    int 21h 
    mov dl, 13
    int 21h

 
    dec cx
    jmp volta  
    
fim:
    mov ah, 4ch  
    mov al, 0
    int 21h

ret




