	.file	"binarysearchtest.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"len=%d\n"
.LC1:
	.string	"found result=%d\n"
.LC2:
	.string	"not found result=%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$1, (%rsp)
	movl	$3, 4(%rsp)
	movl	$6, 8(%rsp)
	movl	$8, 12(%rsp)
	movl	$10, 16(%rsp)
	movl	$39, 20(%rsp)
	movl	$6, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$6, %edx
	movl	$39, %esi
	movq	%rsp, %rdi
	call	binary_search
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$6, %edx
	movl	$40, %esi
	movq	%rsp, %rdi
	call	binary_search
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
