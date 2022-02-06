section .data
	text db "Hello World!",10

section .text 
	global _start

_start:
	call _helloworld
	call _exit

_helloworld:
	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, 14
	syscall
	ret

_exit:
	mov rax, 60
	mov rdi, 0
	syscall
	ret


