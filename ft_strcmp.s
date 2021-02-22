global      _ft_strcmp
section     .text

_ft_strcmp:
    mov ...
    mov ...
    jmp _ft_strcmp_loop

_ft_strcmp_loop:
    cmp ;byte[arg1], byte 0
    je _ft_strcmp_end_0
    cmp ;byte[arg1], byte[arg2]
    

_ft_strcmp_end_0:
    cmp 