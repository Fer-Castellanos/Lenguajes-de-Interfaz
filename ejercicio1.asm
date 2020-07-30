 .model small
 .stack
 .data
    msg db "Hola mundo!!!" , "$"

 .code

 main proc
   mov ax,seg saludo
   mov ds,ax

   mov ax,09
   lea dx ,saludo
   int 21h

  ;mensaje en pantalla

   mov ax ,4c00h
   int 21h

  main endp
  end main