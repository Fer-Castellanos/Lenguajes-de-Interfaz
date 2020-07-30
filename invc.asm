.model small
.stack
.data
mensaje1 db 10,13,?introduce cadena:$?
cad1 db 16 dup(?$?)
cad2 db 16 dup(?$?)

.code
main PROC

mov ax,@data                                            ;colocamos la direccion de segmento de datos en ax
mov ds,ax

mov ah,09h                                                 ;utiliza la funcion 09 para la interrupcion 21
mov dx,offset mensaje1                         ;llama el mensaje1
int 21h                     ;

;captura de cadena
mov ah,0ah                                                 ;utiliza la funcion 09 para la interrupcion
mov dx, offset cad1                                  ;la cadena se guarada en la variable cv
int 21h                                                            ; guarada la cadena

lea si,cad1
lea di,cad2

ciclo:                                                             ;almacenar la cadena invertida
lodsb                                                              ;Obtener el primer car?cter de Cad1
mov [di],al                                                  ;almacenarlo en la posici?n actual de DI
dec di                                                            ;Disminuir DI
loop ciclo                                                    ;Obtener siguiente car?cter de Cad1

;Imprimir cadena original

lea dx,cad1
mov ah,09h
int 21h

;Imprimir cadena invertida

lea dx,cad2
mov ah,09h
int 21h

mov ah,4ch                                       ; utiliza la funcion 4c de la interrupcion 21
int 21h                                                       ; finaliza el programa
end
