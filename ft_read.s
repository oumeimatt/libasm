extern      ___error
global      _ft_read
section     .text
; rdi = file descriptor, rsi = string, rdx = byte count
_ft_read:
	mov 	rax, 0x2000003
	syscall
	jc  	_failedd
	ret

_failedd:
	push 	rax
	call 	___error
	pop		rdi
	mov		[rax], rdi
	mov		rax, -1
	ret