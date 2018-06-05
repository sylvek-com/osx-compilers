	.const
LC1:
	.ascii "%02hhx\0"
LC2:
	.ascii "%24.12Qe\0"
	.text
	.globl _main
_main:
LFB7:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%ebx
LCFI2:
	subl	$1124, %esp
LCFI3:
	call	___i686.get_pc_thunk.bx
L00000000001$pb:
	movl	$0, -12(%ebp)
	jmp	L2
L3:
	leal	-40(%ebp), %eax
	addl	-12(%ebp), %eax
	movb	$-86, (%eax)
	addl	$1, -12(%ebp)
L2:
	cmpl	$15, -12(%ebp)
	jle	L3
	leal	LC0-L00000000001$pb(%ebx), %eax
	movdqa	(%eax), %xmm0
	movdqa	%xmm0, -40(%ebp)
	movl	$0, -12(%ebp)
	jmp	L4
L7:
	movl	$0, -16(%ebp)
	jmp	L5
L6:
	leal	-40(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	LC1-L00000000001$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_printf
	addl	$1, -16(%ebp)
L5:
	cmpl	$15, -16(%ebp)
	jle	L6
	movdqa	-40(%ebp), %xmm0
	movdqa	%xmm0, 16(%esp)
	leal	LC2-L00000000001$pb(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1024, 4(%esp)
	leal	-1064(%ebp), %eax
	movl	%eax, (%esp)
	call	_quadmath_snprintf
	leal	-1064(%ebp), %eax
	movl	%eax, (%esp)
	call	_puts
	movdqa	-40(%ebp), %xmm0
	leal	-1080(%ebp), %eax
	leal	LC3-L00000000001$pb(%ebx), %edx
	movdqa	(%edx), %xmm1
	movdqa	%xmm1, 32(%esp)
	movdqa	%xmm0, 16(%esp)
	movl	%eax, (%esp)
	call	___divtf3
	subl	$4, %esp
	movdqa	-1080(%ebp), %xmm0
	movdqa	%xmm0, -40(%ebp)
	movdqa	-40(%ebp), %xmm0
	leal	-1080(%ebp), %eax
	leal	LC0-L00000000001$pb(%ebx), %edx
	movdqa	(%edx), %xmm1
	movdqa	%xmm1, 32(%esp)
	movdqa	%xmm0, 16(%esp)
	movl	%eax, (%esp)
	call	___addtf3
	subl	$4, %esp
	movdqa	-1080(%ebp), %xmm0
	movdqa	%xmm0, -40(%ebp)
	addl	$1, -12(%ebp)
L4:
	cmpl	$9, -12(%ebp)
	jle	L7
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
LCFI4:
	ret
LFE7:
	.const
	.align 4
LC0:
	.long	0
	.long	0
	.long	0
	.long	1073676288
	.align 4
LC3:
	.long	0
	.long	0
	.long	0
	.long	1073889280
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___i686.get_pc_thunk.bx
	.private_extern	___i686.get_pc_thunk.bx
___i686.get_pc_thunk.bx:
LFB8:
	movl	(%esp), %ebx
	ret
LFE8:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.long	LFB7-.
	.set L$set$2,LFE7-LFB7
	.long L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB7
	.long L$set$3
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$5,LCFI3-LCFI1
	.long L$set$5
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$6,LCFI4-LCFI3
	.long L$set$6
	.byte	0xc4
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.byte	0xc3
	.align 2
LEFDE1:
LSFDE3:
	.set L$set$7,LEFDE3-LASFDE3
	.long L$set$7
LASFDE3:
	.long	LASFDE3-EH_frame1
	.long	LFB8-.
	.set L$set$8,LFE8-LFB8
	.long L$set$8
	.byte	0
	.align 2
LEFDE3:
	.subsections_via_symbols
