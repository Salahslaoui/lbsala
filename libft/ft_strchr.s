	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_ft_strchr              ## -- Begin function ft_strchr
	.p2align	4, 0x90
_ft_strchr:                             ## @ft_strchr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -20(%rbp)
	movl	-12(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -13(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movsbl	(%rcx,%rdx), %esi
	cmpl	$0, %esi
	movb	%al, -33(%rbp)          ## 1-byte Spill
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movsbl	-13(%rbp), %esi
	cmpl	%esi, %edx
	setne	%dil
	movb	%dil, -33(%rbp)         ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-33(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_4
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB0_1
LBB0_5:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
