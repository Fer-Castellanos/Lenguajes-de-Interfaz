.model small
.stack
.data
.code
.startup


mov cl,0Ah
repite:
mov ah,02h
mov dl,cl
add dl,30h
dec dl
int 21h
dec cl
cmp cl,0
je siga
jne repite

siga:
   .exit
       end