SECTION .text
global print_char

; ---------------------------------
; print_char
; Entrada:
;   AL = caracter a imprimir
; ---------------------------------

print_char:

    ; Prólogo
    push ebp
    mov ebp, esp

    ; Guardamos el caracter que viene de AL.
    mov [char_buffer], al

    ; Preparamos para imprimir el caracter.
    mov eax, 4
    mov ebx, 1
    mov ecx, char_buffer
    mov edx, 1

    int 0x80

    ; Epílogo
    mov esp, ebp
    pop ebp
    ret
