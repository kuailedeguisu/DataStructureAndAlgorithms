	.file	"binarysearch.c"
	.text
	.globl	binary_search
	.type	binary_search, @function
binary_search:
.LFB0:
	.cfi_startproc
	subl	$1, %edx
	movl	$0, %r8d
	jmp	.L2
.L3:
	jle	.L1
	leal	-1(%rcx), %edx
.L2:
	cmpl	%edx, %r8d
	jg	.L7
	leal	(%r8,%rdx), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, %eax
	movslq	%ecx, %r9
	movl	(%rdi,%r9,4), %r9d
	cmpl	%esi, %r9d
	jge	.L3
	leal	1(%rcx), %r8d
	jmp	.L2
.L7:
	movl	$-1, %eax
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	binary_search, .-binary_search
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
