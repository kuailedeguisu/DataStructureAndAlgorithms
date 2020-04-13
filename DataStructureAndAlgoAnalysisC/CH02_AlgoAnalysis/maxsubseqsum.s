	.file	"maxsubseqsum.c"
	.text
	.globl	max_sub_seq_sum1
	.type	max_sub_seq_sum1, @function
max_sub_seq_sum1:
.LFB0:
	.cfi_startproc
	movl	$0, %r10d
	movl	$0, %eax
	jmp	.L2
.L11:
	cmpl	%eax, %ecx
	jle	.L4
	movl	%ecx, %eax
.L4:
	addl	$1, %r9d
.L6:
	cmpl	%esi, %r9d
	jge	.L10
	movl	%r10d, %edx
	movl	$0, %ecx
.L5:
	cmpl	%edx, %r9d
	jl	.L11
	movslq	%edx, %r8
	addl	(%rdi,%r8,4), %ecx
	addl	$1, %edx
	jmp	.L5
.L10:
	addl	$1, %r10d
.L2:
	cmpl	%esi, %r10d
	jge	.L12
	movl	%r10d, %r9d
	jmp	.L6
.L12:
	ret
	.cfi_endproc
.LFE0:
	.size	max_sub_seq_sum1, .-max_sub_seq_sum1
	.globl	max_sub_seq_sum2
	.type	max_sub_seq_sum2, @function
max_sub_seq_sum2:
.LFB1:
	.cfi_startproc
	movl	$0, %r9d
	movl	$0, %eax
	jmp	.L14
.L15:
	addl	$1, %edx
.L17:
	cmpl	%esi, %edx
	jge	.L20
	movslq	%edx, %r8
	addl	(%rdi,%r8,4), %ecx
	cmpl	%ecx, %eax
	jge	.L15
	movl	%ecx, %eax
	jmp	.L15
.L20:
	addl	$1, %r9d
.L14:
	cmpl	%esi, %r9d
	jge	.L21
	movl	%r9d, %edx
	movl	$0, %ecx
	jmp	.L17
.L21:
	ret
	.cfi_endproc
.LFE1:
	.size	max_sub_seq_sum2, .-max_sub_seq_sum2
	.globl	max3
	.type	max3, @function
max3:
.LFB3:
	.cfi_startproc
	cmpl	%edi, %esi
	cmovl	%edi, %esi
	cmpl	%edx, %esi
	movl	%edx, %eax
	cmovge	%esi, %eax
	ret
	.cfi_endproc
.LFE3:
	.size	max3, .-max3
	.type	max_sub_sum, @function
max_sub_sum:
.LFB2:
	.cfi_startproc
	cmpl	%edx, %esi
	jne	.L24
	movslq	%esi, %rsi
	movl	(%rdi,%rsi,4), %eax
	testl	%eax, %eax
	jle	.L38
	ret
.L24:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movl	%edx, %r13d
	movl	%esi, %r15d
	movq	%rdi, %r12
	leal	(%rsi,%rdx), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movl	%ebx, %ebp
	movl	%ebx, %edx
	call	max_sub_sum
	movl	%eax, %r14d
	addl	$1, %ebx
	movl	%r13d, %edx
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	max_sub_sum
	movl	$0, %ecx
	movl	$0, %edx
	jmp	.L26
.L27:
	subl	$1, %ebp
.L26:
	cmpl	%r15d, %ebp
	jl	.L39
	movslq	%ebp, %rdi
	addl	(%r12,%rdi,4), %ecx
	cmpl	%ecx, %edx
	jge	.L27
	movl	%ecx, %edx
	jmp	.L27
.L39:
	movl	$0, %ecx
	movl	$0, %r8d
	jmp	.L29
.L30:
	addl	$1, %ebx
.L29:
	cmpl	%r13d, %ebx
	jg	.L40
	movslq	%ebx, %rdi
	addl	(%r12,%rdi,4), %ecx
	cmpl	%ecx, %r8d
	jge	.L30
	movl	%ecx, %r8d
	jmp	.L30
.L40:
	addl	%r8d, %edx
	movl	%eax, %esi
	movl	%r14d, %edi
	call	max3
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L38:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	max_sub_sum, .-max_sub_sum
	.globl	max_sub_seq_sum3
	.type	max_sub_seq_sum3, @function
max_sub_seq_sum3:
.LFB4:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leal	-1(%rsi), %edx
	movl	$0, %esi
	call	max_sub_sum
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4:
	.size	max_sub_seq_sum3, .-max_sub_seq_sum3
	.globl	max_sub_seq_sum4
	.type	max_sub_seq_sum4, @function
max_sub_seq_sum4:
.LFB5:
	.cfi_startproc
	movl	$0, %ecx
	movl	$0, %eax
	movl	$0, %edx
	jmp	.L44
.L47:
	movl	%edx, %eax
.L45:
	addl	$1, %ecx
.L44:
	cmpl	%esi, %ecx
	jge	.L49
	movslq	%ecx, %r8
	addl	(%rdi,%r8,4), %edx
	cmpl	%edx, %eax
	jl	.L47
	testl	%edx, %edx
	jns	.L45
	movl	$0, %edx
	jmp	.L45
.L49:
	ret
	.cfi_endproc
.LFE5:
	.size	max_sub_seq_sum4, .-max_sub_seq_sum4
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
