;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 5, Ejercicio: 1.
;11/11/24.

section .data
    mensaje db 'Imprimir input del teclado: ', 0 
    organizacion db 'organizaci', 0xC3, 0xB3, 'n', 0 

section .text 
    global _start 

_start:
    ;escribir 'imprimir input del teclado: '
    mov eax, 4        ;syscall numero para sys_write
    mov ebx, 1        ;file descriptor 1 - stdout
    mov ecx, mensaje  ;direccion del mensaje
    mov edx, 27       ;longitud del mensaje
    int 0x80          ;invocar a la interrupcion del sistema

    ;escribir 'organizacion'
    mov eax, 4        ;syscall numero de sys_write 
    mov ebx, 1        ;file descriptor 1 - stdout
    mov ecx, organizacion    ;direccion de la cadena 'organizacion'
    mov edx, 14       ;longitud de la cadena 'organizacion'
    int 0x80          ;invoncar la interrupcion del sistma 

    ;terminar el programa 
    mov eax, 1        ;syscall numero para sys_exit
    mov ebx, ebx      ;codigo de salida 0
    int 0x80          ;invocar la interrupcion del sistema 