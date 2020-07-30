.model small
.stack
.data
valor db ?
valor1 db 
.code
.startup


   mov ah,01h  
   int 21h       
   sub al,30h    
   mov valor,al  
   
   mov al,2Ah
   mov dl,al
   mov ah,02h
   int 21h
   mov ah,01h     
   int 21h
   sub al,30h 
   mov valor1,al
   
   
   mov al,3Dh
   mov dl,al
   mov ah,02h    
   int 21h
   
   mov al,valor
   mov dl,valor1    
   mul dl
   mov dl,al
   
   add dl,30h
   mov ah,02h     
   int 21h
   
   .exit
       end