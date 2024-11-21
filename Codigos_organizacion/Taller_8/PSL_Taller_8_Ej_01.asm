;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 8, Ejercicio: a.
;11/11/24.

section .data
msg db 'Resultado: ', 0 ;mensaje a imprimir
newline db 0xA          ;nueva linea

section .bss
res resb 4              ;espacio para el Resultado

section .text
global_start
_start:
    ;instrucciones aritmeticas
    mov eax, 10         ;cargar 10 en eax
    mov ebx, 5          ;cargar 5 en ebx
    add eax, ebx        ; sumar ebx eax (eax = 15)

    ;instruccion logica (and)
    and eax, 0xF        ;and logico entre eax y 0xF (eax = 15 and 15 = 15)

    ;instrucciones de manipulacion de bits
    shl eax, 1          ;desplazar bits de eax a la izquierda (eax = 30)

    ;guardar el resultado en la seccion .bss
    mov [res], eax      ;guardar en eax en res
  
    ;llamar a la rutina para imprimir el resultado
    mov eax, 24         ;syscall para escribir 
    mov ebx, 1          ;usar la salida estandar (pantalla)
    mov ecx, msg        ;direccion del mensaje a imprimir 
    mov edx, 11         ;longitud del mensaje
    int 0x80            ;interrupcion para imprimir el mensaje

    ;imprimir el numero (resultado almacenado en 'res')
    mov eax, [res]      ;cargar el resultado en eax
    add eax, '0'        ;convertir el resultado en caracter ascii
    mov [res], eax      ;almacenar el caracter convertido
    mov eax, 4          ;syscall para escribir 
    mov eax, 1          ; usar la salida estandar
    mov ecx, res        ;direccion del resultado 
    mov edx, 1          ;longitud de 1 caracter
    int 0x80            ;interrupcion para imprimir el numero

    ;imprimir  nueva linea
    mov eax, 4          ;syscall para escribir
    mov ebx, 1          ;usar salida estandar
    mov ecx, newline    ;direccion de la nueva linea
    mov edx, 1          ;longitud de un caracter 
    int 0x80            ;interrupcion para limpiar nueva linea

    ;terminar el programa
    mov eax, 1          ;syscall para salir
    xor ebx, ebx        ;codigo de salida 0 
    int 0x80            ;interrupcion para terminar el programa