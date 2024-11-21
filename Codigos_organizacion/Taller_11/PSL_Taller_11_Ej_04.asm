;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 11, Ejercicio: 4.
;15/11/24.

;curp

section .data
    curp db "SALP021126MCHNPTA8", 0

section .text
    global _start

_start:
    ; Acceder a la CURP
    lea esi, [curp]
    




