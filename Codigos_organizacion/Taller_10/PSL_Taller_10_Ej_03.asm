;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 10, Ejercicio: 3.
;11/11/24.

section .data
    product db 1          ; Inicializa product a 1
    i db 1                ; Inicializa i a 1

section .text
    global _start

_start:
    ; Bucle for simulado: i <= 5
for_loop:
    ; Compara i con 5
    mov al, [i]           ; Cargar i en AL
    cmp al, 5             ; Comparar i con 5
    jg end_for            ; Si i > 5, salir del bucle

    ; Multiplicar product por i
    mov al, [product]     ; Cargar product en AL
    mov bl, [i]           ; Cargar i en BL
    mul bl                ; AL = AL * BL (product = product * i)
    mov [product], al     ; Guardar el resultado en product

    ; Incrementar i
    inc byte [i]          ; i++

    ; Repetir el ciclo
    jmp for_loop          ; Volver al inicio del bucle

end_for:
    ; Fin del programa
    mov eax, 1            ; Código de salida para "exit"
    xor ebx, ebx          ; Código de salida 0
    int 0x80              ; Llamada al sistema para salir

