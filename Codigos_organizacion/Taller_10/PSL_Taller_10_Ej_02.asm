;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 10, Ejercicio: 2.
;11/11/24.

section .data
    lista db 5, 10, 15, -3, 8, 20    ; Lista de números (termina en número negativo)
    sum db 0                        ; Variable para almacenar la suma total

section .bss
    ; No se necesitan variables adicionales en esta sección.

section .text
    global _start

_start:
    ; Inicializar el puntero al inicio de la lista y sum a 0
    mov esi, lista                ; ESI apunta al inicio de la lista
    mov byte [sum], 0             ; Inicializa sum a 0

do_while_loop:
    ; Leer el valor en la posición actual de la lista y añadirlo a sum
    mov al, [esi]                 ; Cargar el valor apuntado por ESI en AL
    add [sum], al                 ; sum = sum + lista[ESI]

    ; Comprobar si el valor leído es negativo
    test al, al                   ; Verificar si AL es negativo
    js end_do_while               ; Si el número es negativo, salir del bucle

    ; Avanzar el puntero al siguiente número en la lista
    inc esi                       ; Mover ESI al siguiente elemento en la lista

    ; Repetir el ciclo
    jmp do_while_loop             ; Volver al inicio del bucle do-while

end_do_while:
    ; Fin del programa - Salida de Linux
    mov eax, 1                    ; Código de sistema para "exit"
    xor ebx, ebx                  ; Código de salida 0
    int 0x80                      ; Llamada de sistema para salir del programa


