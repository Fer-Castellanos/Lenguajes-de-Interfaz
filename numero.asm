.model small
.stack
.data
.valor db ?
.code
.startup

   mov ah,01h
   int 21h
   sub al,30h
   mov valor,al
   mov ah,01h
   int 21h
   sub al,30h
   add al,valor
   mov dl,al
   add dl,30h
   mov ah,02h
   int 21h
    .exit
     end