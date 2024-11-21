;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 6, Ejercicio: 1.
;11/11/24.

section .data 
    mensaje db 'Hola mundo!', 0 

section .text 
    global _start

_start:
    ;codigo para imprimir el mensaje
    mov eax, 4          ;syscall: write 
    mov ebx, 1         ;file descriptor: stdout
    mov ecx, mensaje    ;mensaje a imprimir
    mov edx, 13         ;longitud del mensaje 
    int 0x80            ;llamada al sistema 

    ;salir del programa
    mov eax, 1          ;syscall: exit 
    xor ebx, ebx        ;estado de salida 0
    int 0x80            ;llamada al sistema