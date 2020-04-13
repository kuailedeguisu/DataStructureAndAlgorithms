	.file	"printouttest.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%u"
	.text
	.globl	print_digit
	.type	print_digit, @function
print_digit:
.LFB13:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	%edi, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	print_digit, .-print_digit
	.globl	print_out
	.type	print_out, @function
print_out:
.LFB12:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	cmpl	$9, %edi
	ja	.L6
.L4:
	movl	$-858993459, %edx
	movl	%ebx, %eax
	mull	%edx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %edx
	leal	(%rdx,%rdx), %eax
	subl	%eax, %ebx
	movl	%ebx, %edi
	call	print_digit
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	movl	$-858993459, %edx
	movl	%edi, %eax
	mull	%edx
	movl	%edx, %edi
	shrl	$3, %edi
	call	print_out
	jmp	.L4
	.cfi_endproc
.LFE12:
	.size	print_out, .-print_out
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$76539, %edi
	call	print_out
	movl	$10, %edi
	call	putchar
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
