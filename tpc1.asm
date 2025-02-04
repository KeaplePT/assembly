
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
   
cmp ax, 3
jna fi

mov bx, 4
cmp ax, 5   

jna else
inc bx
jmp fi

else:
    dec bx
fi:
    mov dx, 6

