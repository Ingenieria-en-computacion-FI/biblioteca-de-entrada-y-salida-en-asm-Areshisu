SECTION .text
global scan_string

; ---------------------------------
; scan_string
; Entrada:
;   EAX = buffer destino
;   EBX = tamaño máximo
; ---------------------------------

scan_string:

    ; Prólogo
    push ebp
    mov ebp, esp

    ; Guardamos la dirección del buffer.
    mov edi,eax

    ; Preparamos registros para usar read y leer.
    mov eax, 3
    mov ecx, edi
    mov edx, ebx
    mov ebx, 0
    int 0x80

    ; Devuelve la cantidad de bytes y con ese valor poner el terminar en 0 al final.
    mov esi, aex
    mov byte [edi + esi], 0

    ; Epílogo
    mov esp, ebp
    pop ebp
    ret
