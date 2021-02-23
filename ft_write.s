extern      ___error
global      _ft_write
section     .text
; rdi = file descriptor, rsi = string, rdx = byte count
_ft_write:
	mov 	rax, 0x2000004
	syscall
	jc  	_failed
	ret

_failed:
	push 	rax
	call 	___error
	pop		rdi
	mov		[rax], rdi
	mov		rax, -1
	ret