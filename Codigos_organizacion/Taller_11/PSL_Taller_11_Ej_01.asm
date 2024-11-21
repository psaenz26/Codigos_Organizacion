;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 11, Ejercicio: 1.
;15/11/24.

;fecha (dd/mm/yyyy)

section .data
    fecha db 25, 12, 1990    ; Día, mes, año

section .text
    global _start

_start:
    ; Acceder a la fecha
    mov al, [fecha]          ; Día
    mov bl, [fecha + 1]      ; Mes
    mov cl, [fecha + 2]      ; Año
    
