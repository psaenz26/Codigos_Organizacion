;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 11, Ejercicio: 2.
;15/11/24.

;correo electronico

section .data
    usuario db "usuario123", 0
    dominio db "dominio.com", 0

section .text
    global _start

_start:
    ; Acceder al correo electrónico
    lea esi, [usuario]
    lea edi, [dominio]
    



    
