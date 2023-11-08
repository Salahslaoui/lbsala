	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_ft_free                ## -- Begin function ft_free
	.p2align	4, 0x90
_ft_free:                               ## @ft_free
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	LBB0_5
## %bb.1:
	jmp	LBB0_2
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %ecx
	movl	%ecx, %edx
	movq	(%rax,%rdx,8), %rdi
	callq	_free
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -16(%rbp)
	jmp	LBB0_2
LBB0_4:
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_free
LBB0_5:
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_ft_split               ## -- Begin function ft_split
	.p2align	4, 0x90
_ft_split:                              ## @ft_split
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
                                        ## kill: def $sil killed $sil killed $esi
	movq	%rdi, -16(%rbp)
	movb	%sil, -17(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -44(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB1_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB1_31
LBB1_2:
	jmp	LBB1_3
LBB1_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_5 Depth 2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	LBB1_10
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   Parent Loop BB1_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	-17(%rbp), %edx
	cmpl	%edx, %ecx
	jne	LBB1_7
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB1_5
LBB1_7:                                 ##   in Loop: Header=BB1_3 Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	LBB1_9
## %bb.8:                               ##   in Loop: Header=BB1_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
LBB1_9:                                 ##   in Loop: Header=BB1_3 Depth=1
	movq	-32(%rbp), %rdi
	movsbl	-17(%rbp), %esi
	callq	_ft_strchr
	movq	%rax, -32(%rbp)
	jmp	LBB1_3
LBB1_10:
	movl	$0, -48(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	_malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	LBB1_12
## %bb.11:
	movq	$0, -8(%rbp)
	jmp	LBB1_31
LBB1_12:
	jmp	LBB1_13
LBB1_13:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_15 Depth 2
                                        ##     Child Loop BB1_20 Depth 2
                                        ##     Child Loop BB1_25 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jae	LBB1_30
## %bb.14:                              ##   in Loop: Header=BB1_13 Depth=1
	jmp	LBB1_15
LBB1_15:                                ##   Parent Loop BB1_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movl	-48(%rbp), %edx
	movl	%edx, %esi
	movsbl	(%rcx,%rsi), %edx
	cmpl	$0, %edx
	movb	%al, -57(%rbp)          ## 1-byte Spill
	je	LBB1_17
## %bb.16:                              ##   in Loop: Header=BB1_15 Depth=2
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	movsbl	(%rax,%rdx), %ecx
	movsbl	-17(%rbp), %esi
	cmpl	%esi, %ecx
	sete	%dil
	movb	%dil, -57(%rbp)         ## 1-byte Spill
LBB1_17:                                ##   in Loop: Header=BB1_15 Depth=2
	movb	-57(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_18
	jmp	LBB1_19
LBB1_18:                                ##   in Loop: Header=BB1_15 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB1_15
LBB1_19:                                ##   in Loop: Header=BB1_13 Depth=1
	movl	$0, -36(%rbp)
LBB1_20:                                ##   Parent Loop BB1_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movl	-48(%rbp), %edx
	addl	-36(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %esi
	movsbl	(%rcx,%rsi), %edx
	cmpl	$0, %edx
	movb	%al, -58(%rbp)          ## 1-byte Spill
	je	LBB1_22
## %bb.21:                              ##   in Loop: Header=BB1_20 Depth=2
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movsbl	(%rax,%rdx), %ecx
	movsbl	-17(%rbp), %esi
	cmpl	%esi, %ecx
	setne	%dil
	movb	%dil, -58(%rbp)         ## 1-byte Spill
LBB1_22:                                ##   in Loop: Header=BB1_20 Depth=2
	movb	-58(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_23
	jmp	LBB1_24
LBB1_23:                                ##   in Loop: Header=BB1_20 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB1_20
LBB1_24:                                ##   in Loop: Header=BB1_13 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	_malloc
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, (%rcx,%rsi,8)
	movq	-56(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	_ft_free
	movl	$0, -36(%rbp)
LBB1_25:                                ##   Parent Loop BB1_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movl	-48(%rbp), %edx
	addl	-36(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %esi
	movsbl	(%rcx,%rsi), %edx
	cmpl	$0, %edx
	movb	%al, -59(%rbp)          ## 1-byte Spill
	je	LBB1_27
## %bb.26:                              ##   in Loop: Header=BB1_25 Depth=2
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movsbl	(%rax,%rdx), %ecx
	movsbl	-17(%rbp), %esi
	cmpl	%esi, %ecx
	setne	%dil
	movb	%dil, -59(%rbp)         ## 1-byte Spill
LBB1_27:                                ##   in Loop: Header=BB1_25 Depth=2
	movb	-59(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_28
	jmp	LBB1_29
LBB1_28:                                ##   in Loop: Header=BB1_25 Depth=2
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx), %sil
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	movq	(%rax,%rdx,8), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	movb	%sil, (%rax,%rdx)
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	jmp	LBB1_25
LBB1_29:                                ##   in Loop: Header=BB1_13 Depth=1
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	movq	(%rax,%rdx,8), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	movb	$0, (%rax,%rdx)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movl	-36(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	jmp	LBB1_13
LBB1_30:
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	movq	$0, (%rax,%rdx,8)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB1_31:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-64(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	$0, -68(%rbp)
	movq	%rax, %rcx
	movq	%rcx, %rdi
	leaq	L___const.main.input(%rip), %rsi
	movl	$42, %edx
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	callq	_memcpy
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	movl	$32, %esi
	callq	_ft_split
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	LBB2_1
LBB2_4:
	movl	-68(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	jne	LBB2_6
## %bb.5:
	movl	-100(%rbp), %eax        ## 4-byte Reload
	addq	$112, %rsp
	popq	%rbp
	retq
LBB2_6:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
	.p2align	4               ## @__const.main.input
L___const.main.input:
	.asciz	"khalid zerri is a fullstack developer    "

L_.str:                                 ## @.str
	.asciz	"%s\n"

.subsections_via_symbols
