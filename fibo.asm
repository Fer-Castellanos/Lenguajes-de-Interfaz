.model small
.stack
.code
main PROC

incio:

mov eax,00h          ;inicializamos eax con 0
mov ebx,01h          ;inicializamos ebx con 1
mov ecx,10           ;numero de calculos
mov edx,00h          ;auxiliar

ciclo:                         ;empieza el ciclo
mov eax,ebx         ;movemos  valor de ebx a eax
mov ebx,edx         ;funciona como resta ejempo: edx-ebx
add edx,eax          ;suma  edx+eax

call WriteInt      ;imprime el valor

loop ciclo           ;regresa  al ciclo

mov  edx,OFFSET mensaje       ;movemos mensaje a  edx
call WriteString                              ;imprime mensaje


mov ah,4ch                                       ; utiliza la funcion 4c de la interrupcion 21
int 21h                                                       ; finaliza el programa
end