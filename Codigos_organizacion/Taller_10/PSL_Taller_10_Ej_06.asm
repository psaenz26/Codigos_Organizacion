;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 10, Ejercicio: 6.
;11/11/24.

section .data
    msg db 'Resultado: ', 0
    char db '@', 0
    zeroMsg db 'Esto es un cero', 10  ; Mensaje si el resultado es 0
    num1 db '3'    ; Primer número como carácter ASCII ('3')
    num2 db '4'    ; Segundo número como carácter ASCII ('4')
    result db '0'  ; Espacio para almacenar el resultado de la suma

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

    ; Imprimir el carácter '@' usando direccionamiento indirecto
    lea esi, [char]
    mov eax, 4
    mov ebx, 1
    mov ecx, [esi]
    mov edx, 1
    int 0x80

    ; Cargar los números en los registros
    mov al, [num1]    ; Cargar el primer número (en formato ASCII)
    sub al, '0'       ; Convertir de ASCII a valor numérico (restar '0')

    mov bl, [num2]    ; Cargar el segundo número (en formato ASCII)
    sub bl, '0'       ; Convertir de ASCII a valor numérico (restar '0')

    ; Sumar los dos números
    add al, bl

    ; Verificar si el resultado es 0
    cmp al, 0
    je print_zero     ; Si el resultado es 0, ir a print_zero

    ; Si el resultado no es 0, convertir a ASCII y almacenar en result
    add al, '0'       ; Convertir de valor numérico a ASCII
    mov [result], al  ; Almacenar el resultado en result

    ; Imprimir el resultado (almacenado en result)
    mov eax, 4        ; Syscall para escribir
    mov ebx, 1        ; Salida estándar (stdout)
    mov ecx, result   ; Dirección del resultado
    mov edx, 1        ; Longitud del resultado
    int 0x80          ; Llamada al sistema

print_zero:
    ; Imprimir mensaje "Esto es un cero"
    mov eax, 4        ; Syscall para escribir
    mov ebx, 1        ; Salida estándar (stdout)
    mov ecx, zeroMsg  ; Dirección del mensaje "Esto es un cero"
    mov edx, 16       ; Longitud del mensaje
    int 0x80          ; Llamada al sistema

    ; Salida del programa
exit_program:
    mov eax, 1        ; Código de sistema para "exit"
    xor ebx, ebx      ; Código de salida 0
    int 0x80          ; Llamada al sistema
