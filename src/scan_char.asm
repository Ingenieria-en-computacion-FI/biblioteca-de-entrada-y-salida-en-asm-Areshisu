SECTION .bss
char_buffer resb 1

SECTION .text
global scan_char

; ---------------------------------
; scan_char
; Salida:
;   AL = caracter leído
; ---------------------------------

scan_char:

    ; Prólogo
    push ebp
    mov ebp, esp

    ; Preparamos registros para usar read y leer.
    mov eax, 3
    mov ebx, 0
    mov ecx, char_buffer
    mov edx, 1
    int 0x80

    ; Movemos el caracter leído al registro AL.
    mov al, [char_buffer]

    ; Epílogo
    mov esp, ebp
    pop ebp
    ret
