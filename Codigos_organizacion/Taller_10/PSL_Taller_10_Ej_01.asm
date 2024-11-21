;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 10, Ejercicio: 1.
;11/11/24.

section .data
    sum db 0                ; Variable para almacenar la suma total (inicializada en 0)

section .bss
    count resb 1            ; Variable para el contador (sin valor inicial)

section .text
    global _start

_start:
    ; Inicialización de variables
    mov byte [sum], 0       ; Inicializa sum a 0
    mov byte [count], 1     ; Inicializa count a 1

while_loop:
    ; Comparar count con 10
    mov al, [count]         ; Cargar el valor de count en el registro AL
    cmp al, 10              ; Comparar AL con 10
    jg end_while            ; Si count > 10, salir del bucle

    ; Sumar count a sum
    add [sum], al           ; sum = sum + count

    ; Incrementar count
    inc byte [count]        ; count = count + 1

    ; Repetir el ciclo
    jmp while_loop          ; Volver al inicio del bucle while

end_while:
    ; Salida del programa
    mov eax, 1              ; Código del sistema para "exit"
    int 0x80                ; Llamada al sistema para salir del programa

