
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
  

#make_com#

org 100h  


    .data
msg db "Boa Noite, meus senhores",'$'

    .code
mov ah, 9 ; escrever frase
lea dx, msg ; (load effective address), o dx fica com endereco de msg
int 21h  
                               
; terminar o programa

mov al, 0 ; nao houve erros   
mov ah, 4ch ; fecha se existirem ficheiros abertos e termina o codigo
int 21h                             
  
ret




