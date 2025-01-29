
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 'j'
mov bx, 5 ; chave de encriptacao

mov cx, ax 
xor cx, bx ; encriptar a letra  

mov dx, cx
xor dx, bx ; desencriptar o encriptado

ret




