
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah, 2
mov dl,'A'
int 21h

; mudar de linha

mov dl, 13 ; carriage return (CR)
int 21h     
mov dl, 10 ; line feed (LF)  
int 21h

mov dl, 'B'
int 21h
       
ret




