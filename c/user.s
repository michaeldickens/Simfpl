	.section	__TEXT,__text,regular,pure_instructions
	.globl	_smpGlobal_1
	.align	4, 0x90
_smpGlobal_1:                           ## @smpGlobal_1
Ltmp3:
## BB#0:
	pushq	%r14
Ltmp4:
	pushq	%rbx
Ltmp5:
	subq	$104, %rsp
Ltmp6:
Ltmp7:
Ltmp8:
	movq	%rdx, %r14
	movq	%rdi, %rbx
	leaq	72(%rsp), %rdi
	movl	$2, %esi
	callq	_smpInteger_init_clong
	movq	88(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	40(%rsp), %rdi
	leaq	L_.smp_str7(%rip), %rsi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	_smpObject_funcall
	movq	64(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	testl	%eax, %eax
	movq	40(%rsp), %rax
	movb	48(%rsp), %cl
	movq	56(%rsp), %rdx
	movq	64(%rsp), %rsi
	movq	%rsi, 24(%rbx)
	movq	%rdx, 16(%rbx)
	movb	%cl, 8(%rbx)
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	ret
Ltmp9:
Leh_func_end0:

	.globl	_smpGlobal_2
	.align	4, 0x90
_smpGlobal_2:                           ## @smpGlobal_2
Ltmp12:
## BB#0:
	pushq	%rbx
Ltmp13:
	subq	$64, %rsp
Ltmp14:
Ltmp15:
	movq	%rdx, %rax
	movq	%rdi, %rbx
	movq	48(%rax), %rcx
	movq	56(%rax), %rdx
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	leaq	32(%rsp), %rdi
	leaq	L_.smp_str5(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	_smpObject_funcall
	movq	56(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	testl	%eax, %eax
	movq	32(%rsp), %rax
	movb	40(%rsp), %cl
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rsi
	movq	%rsi, 24(%rbx)
	movq	%rdx, 16(%rbx)
	movb	%cl, 8(%rbx)
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	ret
Ltmp16:
Leh_func_end1:

	.globl	_smpGlobal_main
	.align	4, 0x90
_smpGlobal_main:                        ## @smpGlobal_main
Ltmp20:
## BB#0:
	pushq	%rbp
Ltmp21:
Ltmp22:
	movq	%rsp, %rbp
Ltmp23:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp24:
Ltmp25:
Ltmp26:
Ltmp27:
Ltmp28:
	movq	%rdi, %rbx
	leaq	-72(%rbp), %rdi
	leaq	L_.smp_str1(%rip), %rsi
	callq	_scope_get
	subq	$32, %rsp
	movq	-48(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	je	LBB2_2
## BB#1:
	movq	-72(%rbp), %rax
	movb	-64(%rbp), %cl
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rsi, 24(%rbx)
	movq	%rdx, 16(%rbx)
	movb	%cl, 8(%rbx)
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	jmp	LBB2_6
LBB2_2:
	movq	%rbx, -88(%rbp)         ## 8-byte Spill
	leaq	-32(%rsp), %r15
	movq	%r15, %rsp
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	_smpInteger_init_clong
	leaq	L_.smp_str2(%rip), %rsi
	movq	%rsp, %r14
	leaq	-32(%r14), %rbx
	movq	%rbx, %rsp
	subq	$32, %rsp
	movq	-48(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	_smpObject_funcall
	addq	$32, %rsp
	subq	$32, %rsp
	movq	-8(%r14), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%r14), %rax
	movq	-24(%r14), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	je	LBB2_7
LBB2_3:
	movq	(%rbx), %rdi
	movb	8(%rbx), %cl
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rsi
LBB2_4:
	movq	-88(%rbp), %rax         ## 8-byte Reload
LBB2_5:
	movq	%rsi, 24(%rax)
	movq	%rdx, 16(%rax)
	movb	%cl, 8(%rax)
	movq	%rdi, (%rax)
LBB2_6:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB2_7:
	movq	%rsp, %rax
	leaq	-32(%rax), %r13
	movq	%r13, %rsp
	movq	(%rbx), %rcx
	movb	8(%rbx), %dl
	movq	16(%rbx), %rsi
	movq	24(%rbx), %rdi
	movq	%rdi, -8(%rax)
	movq	%rsi, -16(%rax)
	movb	%dl, -24(%rax)
	movq	%rcx, -32(%rax)
	leaq	-32(%rsp), %rax
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	movq	%rax, %rsp
	.align	4, 0x90
LBB2_8:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rsp, %rbx
	leaq	-32(%rbx), %r12
	movq	%r12, %rsp
	subq	$32, %rsp
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r12, %rdi
	leaq	L_.smp_str3(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpObject_funcall
	addq	$32, %rsp
	subq	$32, %rsp
	movq	-8(%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%rbx), %rax
	movq	-24(%rbx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	je	LBB2_10
	jmp	LBB2_9
LBB2_15:                                ##   in Loop: Header=BB2_8 Depth=1
	movq	%rsp, %r12
	leaq	-32(%r12), %rbx
	movq	%rbx, %rsp
	subq	$32, %rsp
	movq	24(%r15), %rax
	leaq	L_.smp_str6(%rip), %rsi
	movq	%rax, 24(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movl	$1, %edx
	movq	%r13, %rcx
	callq	_smpObject_funcall
	addq	$32, %rsp
	subq	$32, %rsp
	movq	-8(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%r12), %rax
	movq	-24(%r12), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	jne	LBB2_3
## BB#16:                               ##   in Loop: Header=BB2_8 Depth=1
	movq	(%rbx), %rax
	movb	8(%rbx), %cl
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rsi
	movq	%rsi, 24(%r13)
	movq	%rdx, 16(%r13)
	movb	%cl, 8(%r13)
	movq	%rax, (%r13)
	movq	(%r13), %rax
	movb	8(%r13), %cl
	movq	16(%r13), %rdx
	movq	24(%r13), %rsi
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	%rdx, 16(%rdi)
	movb	%cl, 8(%rdi)
	movq	%rax, (%rdi)
	subq	$32, %rsp
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_breakp_c
	addq	$32, %rsp
	testl	%eax, %eax
	je	LBB2_8
## BB#17:
	movq	%rsp, %rbx
	leaq	-32(%rbx), %rdi
	movq	%rdi, %rsp
	subq	$32, %rsp
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smpThrown_get_first_value
	addq	$32, %rsp
	movq	-32(%rbx), %rax
	movb	-24(%rbx), %cl
	movq	-16(%rbx), %rdx
	movq	-8(%rbx), %rsi
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	%rdx, 16(%rdi)
	movb	%cl, 8(%rdi)
	movq	%rax, (%rdi)
LBB2_18:
	movq	%rsp, %r14
	leaq	-32(%r14), %rbx
	movq	%rbx, %rsp
	leaq	L_.smp_str1(%rip), %rsi
	movq	%rbx, %rdi
	callq	_scope_get
	subq	$32, %rsp
	movq	-8(%r14), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%r14), %rax
	movq	-24(%r14), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	movq	-88(%rbp), %r15         ## 8-byte Reload
	je	LBB2_21
## BB#19:
	movq	(%rbx), %rax
	movb	8(%rbx), %cl
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rsi
LBB2_20:
	movq	%rsi, 24(%r15)
	movq	%rdx, 16(%r15)
	movb	%cl, 8(%r15)
	movq	%rax, (%r15)
	movq	%r15, %rax
	jmp	LBB2_6
LBB2_10:                                ##   in Loop: Header=BB2_8 Depth=1
	leaq	-32(%rsp), %r15
	movq	%r15, %rsp
	movq	%r15, %rdi
	movl	$20000, %esi            ## imm = 0x4E20
	callq	_smpInteger_init_clong
	leaq	L_.smp_str4(%rip), %rsi
	movq	%rsp, %r14
	leaq	-32(%r14), %rbx
	movq	%rbx, %rsp
	subq	$32, %rsp
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	(%r12), %rax
	movq	8(%r12), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	_smpObject_funcall
	addq	$32, %rsp
	subq	$32, %rsp
	movq	-8(%r14), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%r14), %rax
	movq	-24(%r14), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	jne	LBB2_3
## BB#11:                               ##   in Loop: Header=BB2_8 Depth=1
	subq	$32, %rsp
	movq	24(%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smpObject_truep_c
	addq	$32, %rsp
	testl	%eax, %eax
	je	LBB2_18
## BB#12:                               ##   in Loop: Header=BB2_8 Depth=1
	movq	%rsp, %rbx
	leaq	-32(%rbx), %r12
	movq	%r12, %rsp
	subq	$32, %rsp
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r12, %rdi
	leaq	L_.smp_str3(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpObject_funcall
	addq	$32, %rsp
	subq	$32, %rsp
	movq	-8(%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%rbx), %rax
	movq	-24(%rbx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	jne	LBB2_9
## BB#13:                               ##   in Loop: Header=BB2_8 Depth=1
	leaq	-32(%rsp), %rbx
	movq	%rbx, %rsp
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	_smpInteger_init_clong
	leaq	L_.smp_str5(%rip), %rsi
	movq	%rsp, %r14
	leaq	-32(%r14), %r15
	movq	%r15, %rsp
	subq	$32, %rsp
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	(%r12), %rax
	movq	8(%r12), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	_smpObject_funcall
	addq	$32, %rsp
	subq	$32, %rsp
	movq	-8(%r14), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%r14), %rax
	movq	-24(%r14), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	je	LBB2_15
## BB#14:
	movq	(%r15), %rdi
	movb	8(%r15), %cl
	movq	16(%r15), %rdx
	movq	24(%r15), %rsi
	jmp	LBB2_4
LBB2_9:
	movq	(%r12), %rdi
	movb	8(%r12), %cl
	movq	16(%r12), %rdx
	movq	24(%r12), %rsi
	jmp	LBB2_4
LBB2_21:
	movq	%rbx, -80(%rbp)         ## 8-byte Spill
	movq	%rsp, %rbx
	leaq	-32(%rbx), %r12
	movq	%r12, %rsp
	leaq	L_.smp_str1(%rip), %rsi
	movq	%r12, %rdi
	callq	_scope_get
	subq	$32, %rsp
	movq	-8(%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%rbx), %rax
	movq	-24(%rbx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	je	LBB2_23
LBB2_22:
	movq	(%r12), %rax
	movb	8(%r12), %cl
	movq	16(%r12), %rdx
	movq	24(%r12), %rsi
	jmp	LBB2_20
LBB2_23:
	movq	%rsp, %rbx
	leaq	-32(%rbx), %rdi
	movq	%rdi, %rsp
	leaq	_smpGlobal_1(%rip), %rsi
	leaq	L_.smp_str8(%rip), %r8
	leaq	-32(%rsp), %r14
	movq	%r14, %rsp
	movl	$2, %edx
	movq	%r8, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	leaq	L_.smp_str9(%rip), %rdx
	subq	$64, %rsp
	movq	-32(%rbx), %rax
	movq	-24(%rbx), %rcx
	movq	-16(%rbx), %rsi
	movq	-8(%rbx), %rdi
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	(%r12), %rax
	movq	8(%r12), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	$1, %esi
	callq	_smpType_def
	addq	$64, %rsp
	leaq	L_.smp_str10(%rip), %rsi
	movq	%rsp, %rbx
	leaq	-32(%rbx), %r12
	movq	%r12, %rsp
	subq	$32, %rsp
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r12, %rdi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	_smpObject_funcall
	addq	$32, %rsp
	subq	$32, %rsp
	movq	-8(%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%rbx), %rax
	movq	-24(%rbx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	jne	LBB2_22
## BB#24:
	movq	%rsp, %rbx
	leaq	-32(%rbx), %r13
	movq	%r13, %rsp
	leaq	L_.smp_str1(%rip), %rsi
	movq	%r13, %rdi
	callq	_scope_get
	subq	$32, %rsp
	movq	-8(%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%rbx), %rax
	movq	-24(%rbx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	je	LBB2_26
## BB#25:
	movq	(%r13), %rax
	movb	8(%r13), %cl
	movq	16(%r13), %rdx
	movq	24(%r13), %rsi
	jmp	LBB2_20
LBB2_26:
	movq	%rsp, %r15
	leaq	-32(%r15), %rdi
	movq	%rdi, %rsp
	leaq	_smpGlobal_2(%rip), %rsi
	leaq	L_.smp_str8(%rip), %r9
	movq	%rsp, %r14
	leaq	-32(%r14), %rbx
	movq	%rbx, %rsp
	movl	$3, %edx
	movq	%r9, %rcx
	movq	%r9, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	leaq	L_.smp_str11(%rip), %rdx
	subq	$64, %rsp
	movq	-32(%r15), %rax
	movq	-24(%r15), %rcx
	movq	-16(%r15), %rsi
	movq	-8(%r15), %rdi
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	_smpType_def
	addq	$64, %rsp
	movq	%rsp, %rbx
	leaq	-32(%rbx), %rdi
	movq	%rdi, %rsp
	xorl	%esi, %esi
	callq	_smpInteger_init_clong
	leaq	L_.smp_str12(%rip), %rsi
	movq	%rsp, %rax
	leaq	-64(%rax), %rcx
	movq	%rcx, %rsp
	movq	-32(%rbx), %r8
	movb	-24(%rbx), %dl
	movq	-16(%rbx), %rdi
	movq	-8(%rbx), %rbx
	movq	%rbx, -8(%rax)
	movq	%rdi, -16(%rax)
	movb	%dl, -24(%rax)
	movq	%r8, -32(%rax)
	movq	-32(%r14), %r8
	movb	-24(%r14), %bl
	movq	-16(%r14), %rdi
	movq	-8(%r14), %rdx
	movq	%rdx, -40(%rax)
	movq	%rdi, -48(%rax)
	movb	%bl, -56(%rax)
	movq	%r8, -64(%rax)
	movq	%rsp, %rbx
	leaq	-32(%rbx), %r13
	movq	%r13, %rsp
	subq	$32, %rsp
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	(%r12), %rax
	movq	8(%r12), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r13, %rdi
	movl	$2, %edx
	callq	_smpObject_funcall
	addq	$32, %rsp
	subq	$32, %rsp
	movq	-8(%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%rbx), %rax
	movq	-24(%rbx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	je	LBB2_28
## BB#27:
	movq	(%r13), %rdi
	movb	8(%r13), %cl
	movq	16(%r13), %rdx
	movq	24(%r13), %rsi
	jmp	LBB2_4
LBB2_28:
	movq	%rsp, %r14
	leaq	-32(%r14), %rbx
	movq	%rbx, %rsp
	subq	$32, %rsp
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	movq	24(%rcx), %rax
	leaq	L_.smp_str13(%rip), %rsi
	movq	%rax, 24(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movl	$1, %edx
	movq	%r13, %rcx
	callq	_smpObject_funcall
	addq	$32, %rsp
	subq	$32, %rsp
	movq	-8(%r14), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%r14), %rax
	movq	-24(%r14), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	(%rbx), %rdi
	movb	8(%rbx), %cl
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rsi
	jmp	LBB2_5
Ltmp29:
Leh_func_end2:

	.comm	_smp_nil,32,3           ## @smp_nil
	.comm	_smpType_object,64,3    ## @smpType_object
	.comm	_smpType_id,64,3        ## @smpType_id
	.comm	_smpType_nil,64,3       ## @smpType_nil
	.comm	_smpType_class,64,3     ## @smpType_class
	.comm	_smpType_function,64,3  ## @smpType_function
	.comm	_smpType_global,64,3    ## @smpType_global
	.comm	_smpType_thrown,64,3    ## @smpType_thrown
	.comm	_smpType_exception,64,3 ## @smpType_exception
	.comm	_smpType_string,64,3    ## @smpType_string
	.comm	_smpType_pair,64,3      ## @smpType_pair
	.comm	_smpType_list,64,3      ## @smpType_list
	.comm	_smpType_atom,64,3      ## @smpType_atom
	.comm	_smpType_collection,64,3 ## @smpType_collection
	.comm	_smpType_regmatch,64,3  ## @smpType_regmatch
	.comm	_smp_true,32,3          ## @smp_true
	.comm	_smp_global,32,3        ## @smp_global
	.comm	_smpType_id_nil,4,2     ## @smpType_id_nil
	.comm	_smpType_id_class,4,2   ## @smpType_id_class
	.comm	_smpType_id_int,4,2     ## @smpType_id_int
	.comm	_smpType_id_float,4,2   ## @smpType_id_float
	.comm	_smpType_id_fun,4,2     ## @smpType_id_fun
	.comm	_smpType_id_list,4,2    ## @smpType_id_list
	.comm	_smpType_id_array,4,2   ## @smpType_id_array
	.comm	_smpType_id_hash,4,2    ## @smpType_id_hash
	.comm	_smpType_id_var,4,2     ## @smpType_id_var
	.comm	_smpType_id_thrown,4,2  ## @smpType_id_thrown
	.comm	_gc_stack,32768,4       ## @gc_stack
	.comm	_gc_stack_length,8,3    ## @gc_stack_length
	.comm	_gc_counter,4,2         ## @gc_counter
	.comm	_gc_add_objectsp,4,2    ## @gc_add_objectsp
	.comm	_gc_add_next_objectp,4,2 ## @gc_add_next_objectp
	.comm	_gc_activep,4,2         ## @gc_activep
	.comm	_gc_runningp,4,2        ## @gc_runningp
	.comm	_smpType_next_id,4,2    ## @smpType_next_id
	.comm	_smpType_ids,32,3       ## @smpType_ids
	.comm	_smp_stdin,8,3          ## @smp_stdin
	.comm	_smp_stdout,8,3         ## @smp_stdout
	.comm	_smp_stderr,8,3         ## @smp_stderr
	.comm	_scope_stack,8,3        ## @scope_stack
	.comm	_scope_length,8,3       ## @scope_length
	.comm	_scope_classes,32,3     ## @scope_classes
	.comm	_initialized_classesp,4,2 ## @initialized_classesp
	.comm	_smpType_int,64,3       ## @smpType_int
	.comm	_smpType_float,64,3     ## @smpType_float
	.comm	_smpInteger_zero,32,3   ## @smpInteger_zero
	.comm	_smpInteger_one,32,3    ## @smpInteger_one
	.comm	_smp_mpfr_rnd,4,2       ## @smp_mpfr_rnd
	.comm	_smp_mpfr_default_prec,8,3 ## @smp_mpfr_default_prec
	.comm	_smptest_print_successesp,4,2 ## @smptest_print_successesp
	.section	__TEXT,__const
L_.smp_str1:                            ## @.smp_str1
	.asciz	 "Global"

L_.smp_str2:                            ## @.smp_str2
	.asciz	 "list"

L_.smp_str3:                            ## @.smp_str3
	.asciz	 "car"

L_.smp_str4:                            ## @.smp_str4
	.asciz	 "<"

L_.smp_str5:                            ## @.smp_str5
	.asciz	 "+"

L_.smp_str6:                            ## @.smp_str6
	.asciz	 "cons"

L_.smp_str7:                            ## @.smp_str7
	.asciz	 "**"

L_.smp_str8:                            ## @.smp_str8
	.asciz	 "Object"

L_.smp_str9:                            ## @.smp_str9
	.asciz	 "1"

L_.smp_str10:                           ## @.smp_str10
	.asciz	 "map"

L_.smp_str11:                           ## @.smp_str11
	.asciz	 "2"

L_.smp_str12:                           ## @.smp_str12
	.asciz	 "reduce"

L_.smp_str13:                           ## @.smp_str13
	.asciz	 "println"


.subsections_via_symbols
	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
Ltmp30:
EH_frame0:
Ltmp32 = (Ltmp31-EH_frame0)-4           ## CIE Length
	.long	Ltmp32
	.long	0                       ## CIE ID Tag
	.byte	1                       ## DW_CIE_VERSION
	.ascii	 "zR"                   ## CIE Augmentation
	.byte	0
	.byte	1                       ## CIE Code Alignment Factor
	.byte	120                     ## CIE Data Alignment Factor
	.byte	16                      ## CIE Return Address Column
	.byte	1                       ## Augmentation Size
	.byte	16                      ## FDE Encoding = indirect pcrel sdata8
	.byte	12                      ## DW_CFA_def_cfa
	.byte	7                       ## Reg 7
	.byte	8                       ## Offset 8
	.byte	144                     ## DW_CFA_offset + Reg(16)
	.byte	1                       ## Offset 1
	.align	2
Ltmp31:
	.globl	_smpGlobal_1.eh
_smpGlobal_1.eh:
Ltmp35 = (Ltmp34-Ltmp33)-0              ## FDE Length
	.long	Ltmp35
Ltmp33:
Ltmp36 = (Ltmp33-EH_frame0)-0           ## FDE CIE Offset
	.long	Ltmp36
Ltmp37:
Ltmp38 = Ltmp3-Ltmp37                   ## FDE initial location
	.quad	Ltmp38
Ltmp39 = (Ltmp9-Ltmp3)-0                ## FDE address range
	.quad	Ltmp39
	.byte	0                       ## Augmentation size
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp40 = Ltmp4-Ltmp3
	.long	Ltmp40
	.byte	14                      ## DW_CFA_def_cfa_offset
	.byte	16                      ## Offset 16
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp41 = Ltmp5-Ltmp4
	.long	Ltmp41
	.byte	14                      ## DW_CFA_def_cfa_offset
	.byte	24                      ## Offset 24
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp42 = Ltmp6-Ltmp5
	.long	Ltmp42
	.byte	14                      ## DW_CFA_def_cfa_offset
	.ascii	 "\200\001"             ## Offset 128
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp43 = Ltmp7-Ltmp6
	.long	Ltmp43
	.byte	131                     ## DW_CFA_offset + Reg(3)
	.byte	3                       ## Offset 3
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp44 = Ltmp8-Ltmp7
	.long	Ltmp44
	.byte	142                     ## DW_CFA_offset + Reg(14)
	.byte	2                       ## Offset 2
	.align	3
Ltmp34:
	.globl	_smpGlobal_2.eh
_smpGlobal_2.eh:
Ltmp47 = (Ltmp46-Ltmp45)-0              ## FDE Length
	.long	Ltmp47
Ltmp45:
Ltmp48 = (Ltmp45-EH_frame0)-0           ## FDE CIE Offset
	.long	Ltmp48
Ltmp49:
Ltmp50 = Ltmp12-Ltmp49                  ## FDE initial location
	.quad	Ltmp50
Ltmp51 = (Ltmp16-Ltmp12)-0              ## FDE address range
	.quad	Ltmp51
	.byte	0                       ## Augmentation size
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp52 = Ltmp13-Ltmp12
	.long	Ltmp52
	.byte	14                      ## DW_CFA_def_cfa_offset
	.byte	16                      ## Offset 16
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp53 = Ltmp14-Ltmp13
	.long	Ltmp53
	.byte	14                      ## DW_CFA_def_cfa_offset
	.byte	80                      ## Offset 80
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp54 = Ltmp15-Ltmp14
	.long	Ltmp54
	.byte	131                     ## DW_CFA_offset + Reg(3)
	.byte	2                       ## Offset 2
	.align	3
Ltmp46:
	.globl	_smpGlobal_main.eh
_smpGlobal_main.eh:
Ltmp57 = (Ltmp56-Ltmp55)-0              ## FDE Length
	.long	Ltmp57
Ltmp55:
Ltmp58 = (Ltmp55-EH_frame0)-0           ## FDE CIE Offset
	.long	Ltmp58
Ltmp59:
Ltmp60 = Ltmp20-Ltmp59                  ## FDE initial location
	.quad	Ltmp60
Ltmp61 = (Ltmp29-Ltmp20)-0              ## FDE address range
	.quad	Ltmp61
	.byte	0                       ## Augmentation size
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp62 = Ltmp21-Ltmp20
	.long	Ltmp62
	.byte	14                      ## DW_CFA_def_cfa_offset
	.byte	16                      ## Offset 16
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp63 = Ltmp22-Ltmp21
	.long	Ltmp63
	.byte	134                     ## DW_CFA_offset + Reg(6)
	.byte	2                       ## Offset 2
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp64 = Ltmp23-Ltmp22
	.long	Ltmp64
	.byte	13                      ## DW_CFA_def_cfa_register
	.byte	6                       ## Reg 6
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp65 = Ltmp24-Ltmp23
	.long	Ltmp65
	.byte	131                     ## DW_CFA_offset + Reg(3)
	.byte	7                       ## Offset 7
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp66 = Ltmp25-Ltmp24
	.long	Ltmp66
	.byte	140                     ## DW_CFA_offset + Reg(12)
	.byte	6                       ## Offset 6
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp67 = Ltmp26-Ltmp25
	.long	Ltmp67
	.byte	141                     ## DW_CFA_offset + Reg(13)
	.byte	5                       ## Offset 5
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp68 = Ltmp27-Ltmp26
	.long	Ltmp68
	.byte	142                     ## DW_CFA_offset + Reg(14)
	.byte	4                       ## Offset 4
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp69 = Ltmp28-Ltmp27
	.long	Ltmp69
	.byte	143                     ## DW_CFA_offset + Reg(15)
	.byte	3                       ## Offset 3
	.align	3
	.align	3
Ltmp56:
