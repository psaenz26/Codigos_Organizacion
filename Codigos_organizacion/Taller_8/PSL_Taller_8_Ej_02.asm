;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 8, Ejercicio: b.
;11/11/24.

section .data
    msg db 'Resultado: ', 0
    newline db 0xA

section .text
    global _start

_start:
    ;instruccion logica and
    mov eax, 0b1100     ;eax = 1100
    and eax, 0b1010     ;eax = eax and 1010 -> eax = 1000 

    ;guaradr el resultado en la seccion .bss
    mov [res], eax

    ;llamar a la rutina para imprimir el resultado
    mov eax, 4          ;syscall para escribir
    mov ebx, 1          ;usar la salida estandar (pantalla)
    mov ecx, msg        ;direccion del mensaje a imprimir
    mov edx, 11         ;longitud del mensaje
    int 0x80            ;interrpcion para imprimir el mensaje

    ;imprimir el numero (resultado almacenado en 'res')
    mov eax, [res]      ;cargar el resultado en eax
    add eax, '0'        ;convertir el numero a caracter ascii
    mov [res], eax      ;alamacenar el caracter convertido 
    mov eax, 4          ;syscall para escribir
    mov ebx, 1          ;usar la salida estandar
    mov ecx, 1          ;direccion del resultado 
    mov edx, 1          ;longitud de 1 caracter
    int 0x80            ;interrupcion para imprimir el numero 

    ;imprimir nueva linea
    mov eax, 4          ;syscall para escribir
    mov ebx, 1          ;usar la salida estandar
    mov ecx, newline    ;direccion de la nueva salida 
    mov edx, 1          ;longitud de 1 caracter
    int 0x80            ;interrupcion para terminar el programa

    ;terminar el programa
    mov eax, 1          ;syscall para salir
    xor ebx, ebx        ;codigo de salida 0
    int 0x80            ;interrupcion para terminar el programa