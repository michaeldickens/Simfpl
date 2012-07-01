	.section	__TEXT,__text,regular,pure_instructions
	.globl	_make_smpFixint
	.align	4, 0x90
_make_smpFixint:                        ## @make_smpFixint
	.cfi_startproc
## BB#0:
	movl	%esi, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
Leh_func_end0:

	.globl	_smpFixint_to_value
	.align	4, 0x90
_smpFixint_to_value:                    ## @smpFixint_to_value
	.cfi_startproc
## BB#0:
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
Leh_func_end1:

	.globl	_value_to_smpFixint
	.align	4, 0x90
_value_to_smpFixint:                    ## @value_to_smpFixint
	.cfi_startproc
## BB#0:
	movq	(%rsi), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
Leh_func_end2:

	.globl	_smpFixint_add_internal
	.align	4, 0x90
_smpFixint_add_internal:                ## @smpFixint_add_internal
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%rbx
Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%rax
Ltmp5:
	.cfi_def_cfa_offset 32
Ltmp6:
	.cfi_offset %rbx, -24
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	(%rdi), %ebp
	leaq	L_.int_printer(%rip), %rdi
	movl	%ebp, %esi
	xorb	%al, %al
	callq	_printf
	addl	(%rbx), %ebp
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.cfi_endproc
Leh_func_end3:

	.globl	_smpFixint_add
	.align	4, 0x90
_smpFixint_add:                         ## @smpFixint_add
	.cfi_startproc
## BB#0:
	pushq	%r15
Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rbx
Ltmp14:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
Ltmp15:
	.cfi_def_cfa_offset 48
Ltmp16:
	.cfi_offset %rbx, -32
Ltmp17:
	.cfi_offset %r14, -24
Ltmp18:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	8(%rsp), %r15
	movq	%r15, %rdi
	movq	%rdx, %rsi
	callq	_value_to_smpFixint
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_smpFixint_add_internal
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_make_smpFixint
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpFixint_to_value
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
	.cfi_endproc
Leh_func_end4:

	.globl	_test_smpFixint_add
	.align	4, 0x90
_test_smpFixint_add:                    ## @test_smpFixint_add
	.cfi_startproc
## BB#0:
	pushq	%r15
Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r14
Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rbx
Ltmp25:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
Ltmp26:
	.cfi_def_cfa_offset 80
Ltmp27:
	.cfi_offset %rbx, -32
Ltmp28:
	.cfi_offset %r14, -24
Ltmp29:
	.cfi_offset %r15, -16
	leaq	40(%rsp), %r14
	movq	%r14, %rdi
	movl	$12, %esi
	callq	_make_smpFixint
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	movl	$8, %esi
	callq	_make_smpFixint
	leaq	24(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_smpFixint_to_value
	leaq	16(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_smpFixint_add
	leaq	8(%rsp), %rdi
	movq	%rbx, %rsi
	callq	_value_to_smpFixint
	leaq	L_.int_printer(%rip), %rdi
	movl	8(%rsp), %esi
	xorb	%al, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
	.cfi_endproc
Leh_func_end5:

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp31:
	.cfi_def_cfa_offset 16
	callq	_test_smpFixint_add
	xorl	%eax, %eax
	popq	%rdx
	ret
	.cfi_endproc
Leh_func_end6:

	.section	__TEXT,__cstring,cstring_literals
L_.int_printer:                         ## @.int_printer
	.asciz	 "%d\n"


.subsections_via_symbols
