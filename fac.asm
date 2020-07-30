.model small
.stack
.data
   res db 1
.code
mov dx,seg @daa
mov ds,dx
mov cx,3

ciclo
 mov al,res
 mov bl,cl
 mul bl
 mov res,al
 loop ciclo
 
 mov al,res
 AAM
 mov bx,ax
 mov ah,02h
 mov dl,bh
 add dl,30h
 int 21h
 
 mov ah,02h
 mov dl,bl
 add dl,20h
 int 21h
 .exit
end 
 