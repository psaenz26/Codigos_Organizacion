;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 8, Ejercicio: c.
;11/11/24.

section .data
    msg db 'Resultado: ', 0
    newline db 0xA

section .bss
    res resb 4 

section .text
    global _start

_start: 
    ;instruccion shl
    mov eax, 0b00001111   ;eax = 00001111
    shl eax, 2            ;desplazar 2 bits a la izquierda (eax = 00111100)

    ;guardar el resultado en la seccion .bss
    mov [res], eax

    ;llamar a la rutina para imprimir el resultado 
    mov eax, 4            ;syscall para escribir 
    mov ebx, 1            ;usar la salida estandar (pantalla)
    mov ecx, msg          ;direccion del mensaje a imprimir
    mov edx, 11           ;longitud del mensaje
    int 0x80              ;interrupcion para imprimir el mensaje

    ;imprimir el numero (resultado almacenado en 'res')
    mov eax, [res]        ;cargar el resultado en eax
    add eax, '0'          ;convertir el numero a caracter ascii
    mov [res], eax        ;almacenar el caracter convertido
    mov eax, 4            ;syscall para escribir 
    mov ebx, 1            ;usar la salida estandar 
    mov ecx, res          ;direccion del resultado 
    mov edx, 1            ;longitud de un caracter
    int 0x80              ;interrupcion para limpiar el numero

    ;imprimir nueva linea
    mov eax, 4            ;syscall para escribir 
    mov ebx, 1            ;usar la salida estandar 
    mov ecx, newline      ;direccion de la nueva linea
    mov edx, 1            ;longitud de un caracter 
    int 0x80              ;interrupcion para imprimir una nueva linea

    ;terminar el programa 
    mov eax, 1            ;syscall para salir
    xor ebx, ebx          ;codigo de salida 0
    int 0x80              ;interrupcion para terminar el programa
  