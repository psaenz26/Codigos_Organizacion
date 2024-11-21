;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 7, Ejercicio: 3.
;11/11/24.

section .data
    msg db 'Resultado: ', 0
    char db '@', 0

section .bss
    buffer resb 4

section .text
    global _start
_start:
    ; Imprimir el mensaje "Resultado: "
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 11
    int 0x80

    ; Imprimir el carácter '@' usando direccionamiento inmediato
    mov eax, 4
    mov ebx, 1
    mov ecx, char
    mov edx, 1
    int 0x80

    ; Salir del programa
    mov eax, 1
    xor ebx, ebx
    int 0x80
