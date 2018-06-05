	.cstring
LC1:
	.ascii "%02hhx\0"
LC2:
	.ascii " %24.12Le\12\0"
	.text
.globl _main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -8(%rbp)
	jmp	L2
L3:
	movl	-8(%rbp), %eax
	cltq
	movb	$-86, -32(%rbp,%rax)
	incl	-8(%rbp)
L2:
	cmpl	$15, -8(%rbp)
	jle	L3
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	L5
L6:
	movl	$0, -4(%rbp)
	jmp	L7
L8:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %eax
	movsbl	%al,%esi
	leaq	LC1(%rip), %rdi
	movl	$0, %eax
	call	_printf
	incl	-4(%rbp)
L7:
	cmpl	$15, -4(%rbp)
	jle	L8
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	leaq	LC2(%rip), %rdi
	movl	$0, %eax
	call	_printf
	fldt	-32(%rbp)
	fldt	LC3(%rip)
	fdivrp	%st, %st(1)
	fstpt	-32(%rbp)
	fldt	-32(%rbp)
	fld1
	faddp	%st, %st(1)
	fstpt	-32(%rbp)
	incl	-8(%rbp)
L5:
	cmpl	$9, -8(%rbp)
	jle	L6
	movl	$0, %eax
	leave
	ret
	.literal16
	.align 4
LC3:
	.long	0
	.long	2684354560
	.long	16386
	.long	0
	.subsections_via_symbols
