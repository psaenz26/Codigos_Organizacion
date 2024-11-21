;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 7, Ejercicio: 2.
;11/11/24.

section .data
    num1 db 5                  ; Definir el primer número como 5
    num2 db 11                 ; Definir el segundo número como 11
    result db 0                ; Variable para almacenar el resultado
    msg db 'Resultado: ', 0    ; Mensaje a imprimir
    chars db 'A\', '$&1', 0    ; Agregar los caracteres deseados

section .bss
    buffer resb 4              ; Reservar 4 bytes para el buffer

section .text
    global _start
_start:
    ; Imprimir el mensaje "Resultado: "
    mov eax, 4                 ; Llamada al sistema para escribir
    mov ebx, 1                 ; File descriptor 1 (stdout)
    mov ecx, msg               ; Dirección del mensaje
    mov edx, 11                ; Longitud del mensaje
    int 0x80                   ; Interrupción para llamar al sistema

    ; Imprimir los caracteres deseados
    mov eax, 4                 ; Llamada al sistema para escribir
    mov ebx, 1                 ; File descriptor 1 (stdout)
    mov ecx, chars             ; Dirección de los caracteres
    mov edx, 4                 ; Longitud de los caracteres
    int 0x80                   ; Interrupción para llamar al sistema

    ; Salir del programa
    mov eax, 1                 ; Llamada al sistema para salir
    xor ebx, ebx               ; Código de salida 0
    int 0x80                   ; Interrupción para llamar al sistema
