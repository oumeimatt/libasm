section		.text
global		_ft_strcpy
_ft_strcpy:

    xor rcx, rcx
    cmp byte [rsi + rcx], byte 0
    je _ret
    jne _strcpy_loop

_strcpy_loop:

    mov dl, byte[rsi + rcx]
    mov byte[rdi + rcx], dl
    cmp byte [rsi + rcx], byte 0
    je _exit
    inc rcx
    jmp _strcpy_loop

_exit:
    mov rax, rdi
    jmp _ret

_ret:
    mov byte[rdi + rcx], 0
    mov rax, rdi
    ret
	