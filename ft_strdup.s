section     .text
extern	_malloc
extern	_ft_strlen
extern	_ft_strcpy
extern	___error
global	_ft_strdup

_ft_strdup:
	push rdi
	call  	_ft_strlen
	inc		rax
	mov		rdi, rax
	call	_malloc
	cmp		rax, 0
	je		_failed
	pop		rdi
	mov		rsi, rdi
	mov		rdi, rax
	call	_ft_strcpy
	ret

_failed:
	push	rax
	call	___error
	mov		rdi, 12
	mov		[rax], rdi
	mov		rax, 0
	ret