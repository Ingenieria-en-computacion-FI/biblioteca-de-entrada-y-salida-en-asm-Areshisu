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

    mov ecx, eax
    xor edx, edx

contar:
    cmp byte [ecx], 0
    je imprimir
    inc ecx
    inc edx
    jmp  contar

imprimir
    mov ecx, ax,
    mov eax, 4
    moc ebx, 1
    int 0x80

    ; Epílogo
    mov esp, ebp
    pop ebp
    ret
