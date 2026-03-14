extern print_char
global newline

SECTION .text

newline:

; Prólogo
    push ebp
    mov ebp, esp 

; Imprime un salto de linea.
    mov al, 10

; Llama la función que imprime el caracter.
    call print_char

; Epílogo
    mov esp, ebp
    pop ebp
    ret
