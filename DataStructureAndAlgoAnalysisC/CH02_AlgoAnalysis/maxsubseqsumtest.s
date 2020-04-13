	.file	"maxsubseqsumtest.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"result1=%d\n"
.LC1:
	.string	"result2=%d\n"
.LC2:
	.string	"result3=%d\n"
.LC3:
	.string	"result4=%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$-2, (%rsp)
	movl	$11, 4(%rsp)
	movl	$-4, 8(%rsp)
	movl	$13, 12(%rsp)
	movl	$-5, 16(%rsp)
	movl	$-2, 20(%rsp)
	movl	$6, %esi
	movq	%rsp, %rdi
	call	max_sub_seq_sum1
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$6, %esi
	movq	%rsp, %rdi
	call	max_sub_seq_sum2
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$6, %esi
	movq	%rsp, %rdi
	call	max_sub_seq_sum3
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$6, %esi
	movq	%rsp, %rdi
	call	max_sub_seq_sum4
	movl	%eax, %esi
	movl	$.LC3, %edi
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
