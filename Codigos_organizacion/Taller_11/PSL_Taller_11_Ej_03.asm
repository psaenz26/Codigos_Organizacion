;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 11, Ejercicio: 3.
;15/11/24.

;direccion completa

section .data
    calle db "Avenida Diamante", 0
    numero db "123", 0
    colonia db "Hidalgo", 0

section .text
    global _start

_start:
    ; Acceder a la dirección completa
    lea esi, [calle]
    lea edi, [numero]
    lea ebx, [colonia]
    




    
