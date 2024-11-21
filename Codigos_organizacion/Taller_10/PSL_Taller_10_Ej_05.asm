;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 10, Ejercicio: 5.
;11/11/24.

section .data
    ; Definimos el formato de salida (mensaje) si es necesario
    msg db "Número: ", 0    ; Mensaje para imprimir antes del número

section .bss
    ; Aquí no es necesario usar variables en la sección .bss ya que no vamos a almacenar datos

section .text
    global _start

_start:
    ; Inicializamos la variable count en 10
    mov ecx, 10    ; ECX = 10, que es nuestro contador (count)

for_loop:
    ; Comparamos el valor de ECX (count) con 1
    cmp ecx, 1    ; Compara si ECX >= 1
    jl end_loop    ; Si ECX es menor que 1, salimos del bucle

    ; Imprimimos el valor de ECX
    ; Convierte el número (ECX) a carácter y luego lo imprime
    add ecx, '0'    ; Convertimos el valor a su carácter ASCII
    mov [msg+9], ecx    ; Guardamos el valor convertido en la dirección de msg
    mov eax, 4    ; Llamada al sistema para imprimir
    mov ebx, 1    ; Escribir en stdout
    mov ecx, msg    ; Dirección del mensaje
    mov edx, 2    ; Longitud del mensaje
    int 0x80    ; Llamada al sistema

    ; Decrementamos ECX (count) en cada iteración
    sub ecx, 1    ; Decrementamos el valor de ECX (count)

    ; Volver al principio del bucle
    jmp for_loop

end_loop:
    ; Salir del programa
    mov eax, 1    ; Código de sistema para "exit"
    xor ebx, ebx    ; Código de salida 0
    int 0x80    ; Llamada al sistema
