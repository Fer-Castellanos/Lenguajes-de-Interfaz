.model small
.stack
.data
valor db ?
valor1 db ?
saludo db "Primer Resultado!!!" , "$"
 saludo1 db "Segundo Resultado!!!" , "$"
 saludo2 db " Resultado!!!" , "$"
.code
.startup

 
   
   mov ax,seg saludo
   mov ds,ax
   mov ax,09
   lea dx ,saludo
   int 21h

   mov ah,01h   ;lee el mensaje caracter ;con el 08h nadamas lo lee no lo muestra en pantalla
   int 21h       ;muestras el mensaje
   sub al,30h    ;restas 30h para convertirlo a numero
   mov valor,al  ;lo guardas en valor
   
   
   
   mov ax,seg saludo1
   mov ds,ax
   mov ax,09
   lea dx ,saludo1
   int 21h
   
   mov al,2Bh
   mov dl,al
   mov ah,02h
   int 21h
   mov ah,01h     ;+
   int 21h 
   mov valor1,al   ;detiene la ejecucion del programa y dice lo que dice ah
   
  
   
   mov ax,seg saludo2
   mov ds,ax
   mov ax,09
   lea dx ,saludo2
   int 21h
   
   mov al,3Dh
   mov dl,al
   mov ah,02h    ;=
   int 21h
   
   mov al,valor1
   sub al,30h    ; para convertirlo de ;sub resta 
   add al,valor
   mov dl,al      ;el valor de al lo muestras en dl para poderlo imprimir en pantalla
   
   add dl,30h   ;add suma
   mov ah,02h    ;muestra dl 
   int 21h
   
   .exit
       end