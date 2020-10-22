	.file	"recursive_fib.c"
	.intel_syntax noprefix
	.text
	.globl	fib
	.type	fib, @function
fib:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	DWORD PTR [rbp-12], edx
	cmp	DWORD PTR [rbp-12], 0
	jne	.L2
	mov	eax, DWORD PTR [rbp-4]
	jmp	.L3
.L2:
	mov	eax, DWORD PTR [rbp-12]
	lea	edx, [rax-1]
	mov	ecx, DWORD PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-8]
	add	ecx, eax
	mov	eax, DWORD PTR [rbp-4]
	mov	esi, eax
	mov	edi, ecx
	call	fib
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fib, .-fib
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edx, 10
	mov	esi, 0
	mov	edi, 1
	call	fib
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.1 20200723 (Red Hat 10.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
