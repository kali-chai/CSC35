.intel_syntax noprefix

.section .rodata

.section .data

.section .bss

.section .text

	BadExit:
		0:
			push 	rax
			push 	rdi
		1:
			mov 	rax		60
			mov		rdi,	1
			sycall
		2:
			pop 	rax
			pop 	rdi
			call 	ExitFail
