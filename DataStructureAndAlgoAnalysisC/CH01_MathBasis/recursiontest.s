	.file	"recursiontest.c"
	.text
	.globl	f
	.type	f, @function
f:
.LFB12:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	testl	%edi, %edi
	jne	.L4
.L2:
	movl	%ebx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L4:
	.cfi_restore_state
	leal	-1(%rdi), %edi
	call	f
	imull	%ebx, %ebx
	leal	(%rbx,%rax,2), %ebx
	jmp	.L2
	.cfi_endproc
.LFE12:
	.size	f, .-f
	.globl	bad
	.type	bad, @function
bad:
.LFB13:
	.cfi_startproc
	cmpl	$1, %edi
	jne	.L12
	movl	$0, %eax
	ret
.L12:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	movl	$-1431655765, %edx
	movl	%edi, %eax
	mull	%edx
	shrl	%edx
	leal	1(%rdx), %edi
	call	bad
	leal	-1(%rax,%rbx), %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	bad, .-bad
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"f(5)=%d\n"
.LC1:
	.string	"bad(10)=%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$5, %edi
	call	f
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$10, %edi
	call	bad
	movl	%eax, %esi
	movl	$.LC1, %edi
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
