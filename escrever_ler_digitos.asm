
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
  
org 100h  
   
.data

    msg db "Escreva uma frase e termine com um ponto final", 10, 13, '$'
    frase db 40 dup(?)
   

.code

    mov ah, 9 ;escrever frase
    lea dx, msg   
    int 21h
    
    mov ah, 1 ;ler tecla
    lea di, frase
    
repete:
    
    int 21h
    cmp al,'.' 
    je fim_ler 
    xor al, 7
    mov [di], al
    inc di
    jmp repete
    
fim_ler:
    
    mov [di], '$'
    mov ah, 9
    lea dx, frase
    int 21h

terminar_isto:

    mov ah, 4ch
    mov al, 0
    int 21h    

ret




