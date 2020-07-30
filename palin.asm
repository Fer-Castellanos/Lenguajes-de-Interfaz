.model small
.stack
.data 
 p DB 10 dup(?)
 p1 DB 10 dup(?)
 n DB ?
 m DB '  "programa para determinar si una palabra es palindroma" $'
 m3 DB 13,10,'introduce el tama?o de la palabra: $'
 m0 DB 13,10,'introduce la palabra: $'
 m1 DB 13,10,'la palabra es palindroma $'
 m2 DB 13,10,'la palabra no es palindroma $'
 m4 DB 13,10,' para realizar otra operacion marque "s" para salir cualquier tecla: ','$'
 m5 DB 13,10,'la tecla precionada no es numero $'
 r1 dw 0
 r2 dw 0
.code
main:
;limpiar pantalla
    mov ah,00h
    mov al,03h
    int 10h
;mensaje del programa
    mov ax,@data 
    mov ds,ax
    lea dx,m
    mov ah,09
    int 21h
    ;mensaje 3 para introducir tama?o de la palabra
   lea dx,m3
   mov ah,09
   int 21h
   ;introducir tama?o de la palabra
   mov ah,01h
   int 21h
;verificar si el numero se encuentra en el rango 0 a 9
        cmp al,030h   
        js s
        cmp al,03ah   
        jns s
;ajustando el valor de al para almacenarlo en n
   sub al,30h
   mov n,al
;mensaje 1 para introducir palabra
   lea dx,m0
   mov ah,09
   int 21h
;ciclo para introducir la palabra
   mov cl,n
   mov al,n
   
;     mov al,n
 ;  mov bl,2
 ; div bl
 ; mov cl,al
 ; mov ah,02h
 ; mov dl,cl
 ; int 21h
   
   mov si,0
r:
   mov ah,01h
   int 21h
   mov p[si],al
   mov p1[si],al
   inc si
loop r
jmp ri
ma:                    ;**
jmp main               ;**
ri:
; segundo ciclo para checar si la palabra es palindroma
   mov cl,n
   mov si,0
;limpiabdo contenido de ax
    xor ax,ax
;moviendo registro n a al
    mov al,n
    ;mov r1,0
    mov r2,ax
    dec r2
   
   palabra:

   mov bx,r1
   mov si,bx
   mov al,p[si]
  
   mov bx,r1
   mov si,bx
   mov dl,p[si]
   inc r1
   dec r2   
   cmp al,dl
   jne imp  
   loop palabra

   siga:
;mensaje 1 en pantalla
   lea dx,m1
   mov ah,09
   int 21h
   jmp salir

imp:    
;mensaje 2 en pantalla
   lea dx,m2
   mov ah,09
   int 21h
   jmp salir
s:
;mensaje para realizar otra operacion
        lea dx,m5
        mov ah,09h
        int 21h
salir:
;mensaje para realizar otra operacion
        lea dx,m4
        mov ah,09h
        int 21h
;ingresar las desicion
       mov ah,01h
       int 21h
       cmp al,'s'
       jz ma
   mov ah,4ch
   int 21h
end main
