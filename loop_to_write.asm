
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

    #make_COM#

    org 100h       

    .Code

    mov cl, 3
back:
    cmp cl, 0
    jz fim
    
    mov ah, 2
    mov dl, '*'
    int 21h
    
    dec cl
    jmp back:  
fim:

ret




