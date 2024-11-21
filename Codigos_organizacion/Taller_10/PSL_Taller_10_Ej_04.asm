;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 10, Ejercicio: 4.
;11/11/24.

section .data
    result_even db "Es par", 0        ; Mensaje para número par
    result_odd db "Es impar", 0       ; Mensaje para número impar
    num db 7                          ; Número a comprobar (puedes cambiarlo)

section .bss
    result resb 10                    ; Espacio para el resultado

section .text
    global _start

_start:
    ; Cargar el valor de num
    mov al, [num]                     ; Cargar num en AL

    ; Usar TEST para verificar el bit menos significativo (LSB)
    test al, 1                        ; Verifica si el bit menos significativo es 1 (impar) o 0 (par)

    ; Si el bit menos significativo es 0 (par), saltar a result_even
    jz even                           ; Si es 0, es par (salta a "even")

    ; Si es impar, saltar a result_odd
    jmp odd

even:
    ; Almacenar "Es par" en result
    mov eax, 4                        ; Código de sistema para escribir (sys_write)
    mov ebx, 1                        ; Escribir en stdout
    mov ecx, result_even              ; Dirección del mensaje "Es par"
    mov edx, 8                        ; Longitud del mensaje
    int 0x80                          ; Llamada al sistema

    jmp end_program                   ; Saltar al final del programa

odd:
    ; Almacenar "Es impar" en result
    mov eax, 4                        ; Código de sistema para escribir (sys_write)
    mov ebx, 1                        ; Escribir en stdout
    mov ecx, result_odd               ; Dirección del mensaje "Es impar"
    mov edx, 9                        ; Longitud del mensaje
    int 0x80                          ; Llamada al sistema

end_program:
    ; Salir del programa
    mov eax, 1                        ; Código de sistema para "exit"
    xor ebx, ebx                      ; Código de salida 0
    int 0x80                          ; Llamada al sistema
