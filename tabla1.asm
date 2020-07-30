.model small
.stack
.data
.code
.startup


mov cl,0
repite:
mov ah,02h
mov dl,cl
add dl,30h
int 21h
inc cl
cmp cl,0ah
je siga
jne repite

siga:
   .exit
       end