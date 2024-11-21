;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 7, Ejercicio: 1.
;11/11/24.

section .data
    num1 db 5                ; Definir el primer número como 5
    num2 db 11               ; Definir el segundo número como 11
    result db 0              ; Variable para almacenar el resultado
    msg db 'Resultado: ', 0  ; Mensaje a imprimir

section .bss
    buffer resb 4            ; Reservar 4 bytes para el buffer

section .text
    global _start
_start:
    mov al, [num1]           ; Mover el valor de num1 al registro AL
    add al, [num2]           ; Sumar el valor de num2 al registro AL
    mov [result], al         ; Almacenar el resultado en la variable result

    ; Convertir el resultado a ASCII
    movzx eax, byte [result] ; Mover el valor de result a EAX con extensión cero
    add eax, 48              ; Convertir el valor numérico a su correspondiente ASCII ('0' = 48)
    mov [buffer], al         ; Almacenar el carácter ASCII en el buffer

    ; Imprimir el mensaje "Resultado: "
    mov eax, 4               ; Llamada al sistema para escribir
    mov ebx, 1               ; File descriptor 1 (stdout)
    mov ecx, msg             ; Dirección del mensaje
    mov edx, 9               ; Longitud del mensaje
    int 0x80                 ; Interrupción para llamar al sistema

    ; Imprimir el resultado
    mov eax, 4               ; Llamada al sistema para escribir
    mov ebx, 1               ; File descriptor 1 (stdout)
    mov ecx, buffer          ; Dirección del buffer
    mov edx, 1               ; Longitud del carácter
    int 0x80                 ; Interrupción para llamar al sistema

    ; Salir del programa
    mov eax, 1               ; Llamada al sistema para salir
    xor ebx, ebx             ; Código de salida 0
    int 0x80                 ; Interrupción para llamar al sistema
