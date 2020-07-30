.MODEL SMALL
.STACK
.DATA

    M0 DB 10,13,"$"        

.CODE
MAIN:

mov  ax,seg M0   ;hmm ?seg?
mov  ds,ax       ;ds = ax = saludo


mov dl, 'Z' 
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h
mov ah, 09h ;09h es para mostrar algun mensaje que esta en dx  
lea dx, M0  ;M0 es la variable donde esta el salto de linea 
int 21h

mov dl, 88
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 87
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 86
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 85 
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 84
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 83 
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 82 
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 81
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 80
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h  

mov dl, 79
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 78
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 77
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h  

mov dl, 76
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 76
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h

mov dl, 75
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h  

mov dl, 74
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 73
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h   

mov ah,08h 
int 21h

mov dl, 72
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 71
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 70
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 69
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h   

mov dl, 68
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 67
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h

mov dl, 66
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h 

mov dl, 'A'
mov ah, 02h ;10,11 en conjunto muestran dl 
int 21h 
mov ah, 09h
lea dx, M0
int 21h  
      
    MOV AH, 4cH             ; SERVICIO DE FINALIZACION
    INT 21H
    
END MAIN