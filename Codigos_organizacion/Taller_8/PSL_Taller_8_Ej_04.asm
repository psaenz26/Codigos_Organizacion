;Patricia Saenz Lopez: 1290667.
;Organizacion de computadoras.
;Taller No. 8, Ejercicio: d.
;11/11/24.

section .data
    msg db 'Resultado: ', 0       ;mensaje inicial
    newline db 0xA                ;nueva linea
    char_l db 'l'                 ;caracter 'l'
    char_D db 'D'                 ;caracter 'D'
    char_B db 'B'                 ;caracter 'B'
    char_4 db '4'                 ;caracter 'B'
    char_2 db '2'                 ;caracter '2'

section .bss            
    res resb 4                    ;espacio para el resultado 

section .text 
    global _start 
_start:

    ;imprimir el mensaje 'Resultado:
    mov eax, 4                    ;syscall para escribir 
    mov ebx, 1                    ;usar la salida estandar (pantalla)
    mov ecx, msg                  ;direccion del mensaje 
    mov edx, 11                   ;longitud del mensaje
    int 0x80                      ;interrupcion para limpiarn el mensaje 

    ;imprimir el caracter l
    mov eax, 4                    ;syscall para escribir 
    mov ebx, 1                    ;usar la salida estandar (pantalla)
    mov ecx, char_l               ;direccion del caracter l
    mov edx, 1                    ;longitud de 1 byte
    int 0x80                      ;interrupcion para imprimir
    
    ;instruccion aritmetica: sumar 1 a eax
    ;simula la manipulacion de valor numerico
      mov eax, 4                  ;syscall para escribir
      mov ebx, 1                  ;usar la salida estandar
      mov ecx, char_D             ;direccion del caracter D
      mov edx, 1                  ;longitud de 1 byte
      int 0x80                    ;imprimir el caracter D
  
    ;imprimir el caracter B
    mov eax, 4                    ;syscall para escribir 
    mov ebx, 1                    ;usar la salida estandar (pantalla)
    mov ecx, char_B               ;direccion del caracter B 
    mov edx, 1                    ;longitud de un byte
    int 0x80                      ;interrupcion para imprimir B 

    ;imprimir el caracter 4 
    mov eax, 4                    ;syscall para escribir
    mov ebx, 1                    ;usar la direccion estandar (pantalla)
    mov ecx, char_4               ;direccion del caracter 4 
    mov edx, 1                    ;longitud de un byte
    int 0x80                      ;interrupcion para imprimir 4 
  
    ;imprimir el caracter 2 
    mov eax, 4                    ;syscall para escribir
    mov ebx, 1                    ;usar la salida estandar (pantalla)
    mov ecx, char_2               ;direccion del caracter 2 
    mov edx, 1                    ;longitud de 1 byte 
    int 0x80                      ;interrupcion para imprimir 2 
  
    ;imprimir nueva linea
    mov eax, 4                    ;syscall para escribir
    mov ebx, 1                    ;usar la salida estandar (pantalla)
    mov ecx, newline              ;direccion de la nueva linea
    mov edx, 1                    ;longitud de 1 byte
    int 0x80                      ;interrupcion para imprimir nueva linea 

    ;terminar el programa 
    mov eax, 1                    ;syscall para salir 
    xor ebx, ebx                  ;codigo de salida 0 
    int 0x80                      ;interrupcion para salir