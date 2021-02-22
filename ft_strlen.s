global 		_ft_strlen
section 	.text
_ft_strlen:
	xor		rax, rax
	jmp		_ft_strlen_loop

_ft_strlen_loop:

	cmp	byte[rdi + rax], byte 0
	je _ret
	jne	_increm

_increm:

	inc	rax
	jmp	_ft_strlen_loop

_ret:

	ret