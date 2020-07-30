.model small
.data
   msj db 10,13,'ingrese el mes: ',10,13,'$'
   msj2 db 10,13,'ingrese el dia: ',10,13,'$'
   acuar db 10,13, 'Tu signo es Acuario','$'
   capri db 10,13,'Tu signo es Capricornio','$'
   pici db 10,13,'Tu signo es Picis','$'   
   ari db 10,13,'Tu signo es Aries','$'
   taur db 10,13,'Tu signo es Tauro','$'
   gemin db 10,13,'Tu signo es Geminis','$'
   can db 10,13,'Tu signo es Cancer','$'
   leoo db 10,13,'Tu signo es Leo','$'
   virg db 10,13,'Tu signo es Virgo','$'
   lib db  10,13,'Tu signo es Libra','$'
   esco db 10,13,'Tu signo es Escorpio','$'
   sagit db 10,13,'Tu signo es Sagitario','$'
   cap db 10,13,'Tu signo es Capricornio','$'
   mesD db 0
   mesU db 0
   diaD db 0
   diaU db 0
   n1 db 0
   n2 db 0
.code
.startup 

 mov ah,09h
 lea dx,msj
 int 21h
 
 mov ah,01h
 int 21h
 sub al,30h
 mov mesD,al
 
 mov ah,01h
 int 21h
 sub al,30h
 mov mesU,al

 mov al,mesD
 mov bl,10
 mul bl
 add al,mesU
 mov n1,al
 
 mov al,n1
 AAM
 mov bx,ax

;--------------------------------------------

 mov ah,09h
 lea dx,msj2
 int 21h
 
 mov ah,01h
 int 21h
 sub al,30h
 mov diaD,al
 
 mov ah,01h
 int 21h
 sub al,30h
 mov diaU,al

 mov al,diaD
 mov bl,10
 mul bl
 add al,diaU
 mov n2,al
 
 mov al,n2
 AAM
 mov bx,ax 

 cmp n1,01
 je enero
 jne febrero
 ;-------------------------------------------
enero:
 cmp n2,21
 jl capricornio
 jg acuario
acuario:
 mov ah,09h
 lea dx,acuar
 int 21h
 jmp salir
capricornio:
mov ah,09h
lea dx,capri
int 21h
jmp salir
 
febrero:
 cmp n1,02
 jne marzo
 cmp n2,20
 jl acuario
 jg picis
picis:
mov ah,09h
lea dx,pici
int 21h
jmp salir

aries:
mov ah,09h
lea dx,ari
int 21h 
jmp salir
 
marzo:
 cmp n1,03
 jne abril
 cmp n2,22
 jl picis
 jg aries
tauro:
mov ah,09h
lea dx,taur
int 21h 
jmp salir

geminis:
mov ah,09h
lea dx,gemin
int 21h
jmp salir
abril:
 cmp n1,04
 jne mayo
 cmp n2,21
 jl aries
 jg tauro
 cancer:
mov ah,09h
lea dx,can
int 21h
jmp salir
leo: 
mov ah,09h
lea dx,leoo
int 21h
jmp salir
mayo:
 cmp n1,05
 jne junio
 cmp n2,22
 jl tauro
 jg geminis

junio: 
 cmp n1,06
 jne julio
 cmp n2,22
 jl geminis
 jg cancer
 virgo: 
mov ah,09h
lea dx,virg
int 21h
jmp salir
libra: 
mov ah,09h
lea dx,lib
int 21h
jmp salir
julio:
 cmp n1,07
 jne agosto
 cmp n2,24
 jl cancer
 jg leo

agosto:
 cmp n1,08
 jne septiembre
 cmp n2,24
 jl leo
 jg virgo

septiembre: 
 cmp n1,09
 jne octubre
 cmp n2,24
 jl virgo
 jg libra
octubre: 
 cmp n1,10
 jne noviembre
 cmp n2,23
 jl libra
 jg escorpio

noviembre:
 cmp n1,11
 jne diciembre
 cmp n2,23
 jl escorpio
 jg sagitario
diciembre:
 cmp n1,12
 je salir
cmp n2,23
 jl sagitario
 jmp capricornio
escorpio:
mov ah,09h
lea dx,esco
int 21h
jmp salir

sagitario:
mov ah,09h
lea dx,sagit
int 21h
jmp salir
 salir:
.exit
end