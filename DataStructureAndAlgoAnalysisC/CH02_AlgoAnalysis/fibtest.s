	.file	"fibtest.c"
	.text
	.globl	fib_recur
	.type	fib_recur, @function
fib_recur:
.LFB12:
	.cfi_startproc
	cmpl	$2, %edi
	jg	.L8
	movl	$1, %eax
	ret
.L8:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, %ebx
	leal	-1(%rdi), %edi
	call	fib_recur
	movq	%rax, %rbp
	leal	-2(%rbx), %edi
	call	fib_recur
	addq	%rbp, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	fib_recur, .-fib_recur
	.globl	fib_iter
	.type	fib_iter, @function
fib_iter:
.LFB13:
	.cfi_startproc
	cmpl	$2, %edi
	jle	.L13
	movl	$1, %edx
	movl	$0, %eax
	movl	$1, %ecx
	movl	$1, %r8d
.L11:
	leal	-1(%rdi), %esi
	cmpl	%edx, %esi
	jle	.L14
	leal	(%r8,%rcx), %eax
	addl	$1, %edx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	jmp	.L11
.L14:
	cltq
	ret
.L13:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE13:
	.size	fib_iter, .-fib_iter
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$10, %edi
	call	fib_recur
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$10, %edi
	call	fib_iter
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
