global      _ft_strcmp
section     .text


_ft_strcmp:
	xor rcx, rcx
	mov rax, 0
	cmp byte[rdi + rcx], byte 0
	je 	_null
	cmp byte[rsi + rcx], byte 0
	je 	_ft_strcmp_end_2
	jmp _loop

_loop:
	mov dl, byte[rdi + rcx]
	cmp dl, byte 0
	je  _check
	mov dh, byte[rsi + rcx]
	cmp dh, byte 0
	je  _ft_strcmp_end_2
	inc rcx
	cmp	dl, dh
	je  _loop
	jl  _ft_strcmp_end_1
	jg  _ft_strcmp_end_2

_check:
	mov dh, byte[rsi + rcx]
	cmp dh, byte 0
	je  _equal
	jne _ft_strcmp_end_1

_null:
	cmp byte[rsi + rcx], byte 0
	je 	_equal
	jmp _ft_strcmp_end_1

_ft_strcmp_end_1:
	mov rax, -1
	ret
_ft_strcmp_end_2:
	mov rax, 1
	ret
_equal:
	mov rax, 0
	ret