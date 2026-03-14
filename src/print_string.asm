SECTION .text
global print_string

; ---------------------------------
; print_string
; Entrada:
;   EAX = direccion de cadena
;   cadena terminada en 0
; ---------------------------------

print_string:

    ; Prólogo
    push ebp
    mov ebp, esp

    ; Guardamos la dirección inicial de la cadena y encontramos su longitud.
    mov ecx, eax
    xor edx, edx

; Revisa si llegamos al final, si no avanza al siguiente caracter y aumenta la longitud.
contar:
    cmp byte [ecx], 0
    je imprimir
    inc ecx
    inc edx
    jmp  contar

; Preparamos los registros para usar write e imprimir la cadena.
imprimir
    mov ecx, ax,
    mov eax, 4
    moc ebx, 1
    int 0x80

    ; Epílogo
    mov esp, ebp
    pop ebp
    ret
