.model small
.stack
.data
.code

    main proc far
    mov ax, @data
    mov ds, ax
   
    mov ah, 01h
    int 21h
    sub al, 48

    mov cx, 1
    mov ah, 0
    cmp cx, 10
    je salir 
    cmp cx, 10
    je salir ;cuando CX sea 10 sale y deja de imprimir la tabla, 
    
    mov bl, al ;guardamos nuestro numero en otro registro
    mul cl      ;esto multiplica el valor de CL por AL y te da el resultado en AX
                ;ahora lo imprimimos poniendolo en dl
    mov dx, ax
    add dx, 48 ;sumamos 48 para que salga el char ascci y no otro caracter raro
    mov ah, 02h
    int 21h
    
                ;regresamos el numero a al para la siguiente multiplicacion
    mov al, bl
    
                 ;incrementamos CX para obtener el siguiente
    inc cx
    jmp tabla ;esto hace un salto a la etiqueta tabla, osea vuelve a hacer lo de arrib

    siga:
   .exit
     mov ax, 4c00h
    int 21h
    main endp
       