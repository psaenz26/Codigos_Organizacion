;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 11, Ejercicio: 5.
;15/11/24.

section .data
    fecha db 25, 12, 1990          ; Día, mes, año
    usuario db "usuario123", 0
    dominio db "dominio.com", 0
    calle db "Avenida Diamante", 0
    numero db "123", 0
    colonia db "Diamante", 0
    curp db "SALP021126MCHNPTA8", 0

section .text
    global _start

_start:
    ; Acceder y manipular la fecha
    mov al, [fecha]          ; Día
    mov bl, [fecha + 1]      ; Mes
    mov cl, [fecha + 2]      ; Año
    ; Aquí podrías realizar operaciones con al, bl, y cl

    ; Acceder y manipular el correo electrónico
    lea esi, [usuario]
    lea edi, [dominio]
    ; Aquí podrías realizar operaciones con esi y edi para manipular el correo

    ; Acceder y manipular la dirección completa
    lea esi, [calle]
    lea edi, [numero]
    lea ebx, [colonia]
    ; Aquí podrías realizar operaciones con esi, edi y ebx para manipular la dirección

    ; Acceder y manipular la CURP
    lea esi, [curp]
    ; Aquí podrías realizar operaciones con esi para manipular la CURP

    ; Terminar el programa
    mov eax, 60              ; Código de salida para "exit"
    xor edi, edi             ; Código de salida 0
    syscall



