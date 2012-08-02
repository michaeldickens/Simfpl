	.section	__TEXT,__text,regular,pure_instructions
	.globl	_smpGlobal_1
	.align	4, 0x90
_smpGlobal_1:                           ## @smpGlobal_1
Ltmp3:
## BB#0:
	pushq	%rbp
Ltmp4:
Ltmp5:
	movq	%rsp, %rbp
Ltmp6:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
Ltmp7:
Ltmp8:
Ltmp9:
Ltmp10:
	movq	%rdx, %rbx
	movq	%rdi, %r14
	callq	_scope_push
	subq	$32, %rsp
	movq	24(%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	L_.smp_str5(%rip), %rdi
	callq	_scope_add
	addq	$32, %rsp
	leaq	-64(%rbp), %rdi
	leaq	L_.smp_str1(%rip), %rsi
	callq	_scope_get
	subq	$32, %rsp
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	je	LBB0_4
## BB#1:
	movq	-64(%rbp), %rax
	movb	-56(%rbp), %cl
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
LBB0_2:
	movq	%rsi, 24(%r14)
	movq	%rdx, 16(%r14)
	movb	%cl, 8(%r14)
	movq	%rax, (%r14)
LBB0_3:
	movq	%r14, %rax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB0_4:
	leaq	-32(%rsp), %r15
	movq	%r15, %rsp
	movq	%r15, %rdi
	movl	$20, %esi
	callq	_smpInteger_init_clong
	leaq	L_.smp_str4(%rip), %rsi
	movq	%rsp, %r12
	leaq	-32(%r12), %rbx
	movq	%rbx, %rsp
	subq	$32, %rsp
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movl	$1, %edx
	movq	%r15, %rcx
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
	je	LBB0_6
## BB#5:
	movq	(%rbx), %rax
	movb	8(%rbx), %cl
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rsi
	jmp	LBB0_2
LBB0_6:
	movq	(%rbx), %rax
	movb	8(%rbx), %cl
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rsi
	movq	%rsi, 24(%r14)
	movq	%rdx, 16(%r14)
	movb	%cl, 8(%r14)
	movq	%rax, (%r14)
	callq	_scope_pop
	jmp	LBB0_3
Ltmp11:
Leh_func_end0:

	.globl	_smpGlobal_main
	.align	4, 0x90
_smpGlobal_main:                        ## @smpGlobal_main
Ltmp15:
## BB#0:
	pushq	%rbp
Ltmp16:
Ltmp17:
	movq	%rsp, %rbp
Ltmp18:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp19:
Ltmp20:
Ltmp21:
Ltmp22:
Ltmp23:
	movq	%rdi, %r13
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
	je	LBB1_3
## BB#1:
	movq	-72(%rbp), %rax
	movb	-64(%rbp), %cl
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
LBB1_2:
	movq	%rsi, 24(%r13)
	movq	%rdx, 16(%r13)
	movb	%cl, 8(%r13)
	movq	%rax, (%r13)
	movq	%r13, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB1_3:
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
	je	LBB1_5
LBB1_4:
	movq	(%rbx), %rax
	movb	8(%rbx), %cl
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rsi
	jmp	LBB1_2
LBB1_5:
	movq	%rbx, -80(%rbp)         ## 8-byte Spill
	leaq	-32(%rsp), %r12
	movq	%r12, %rsp
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	_smpInteger_init_clong
	leaq	-32(%rsp), %r14
	movq	%r14, %rsp
	movq	%r14, %rdi
	movl	$32, %esi
	callq	_smpInteger_init_clong
	leaq	L_.smp_str2(%rip), %rsi
	movq	%rsp, %r15
	leaq	-32(%r15), %rbx
	movq	%rbx, %rsp
	movq	%rbx, %rdi
	callq	_smpString_init
	subq	$32, %rsp
	movq	-8(%r15), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%r15), %rax
	movq	-24(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	jne	LBB1_4
## BB#6:
	movq	%rsp, %rax
	leaq	-64(%rax), %rcx
	movq	%rcx, %rsp
	movq	(%rbx), %rsi
	movb	8(%rbx), %dl
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbx
	movq	%rbx, -8(%rax)
	movq	%rdi, -16(%rax)
	movb	%dl, -24(%rax)
	movq	%rsi, -32(%rax)
	leaq	L_.smp_str3(%rip), %rsi
	movq	(%r14), %r8
	movb	8(%r14), %bl
	movq	16(%r14), %rdi
	movq	24(%r14), %rdx
	movq	%rdx, -40(%rax)
	movq	%rdi, -48(%rax)
	movb	%bl, -56(%rax)
	movq	%r8, -64(%rax)
	movq	%rsp, %rbx
	leaq	-32(%rbx), %r15
	movq	%r15, %rsp
	subq	$32, %rsp
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	(%r12), %rax
	movq	8(%r12), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r15, %rdi
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
	je	LBB1_8
## BB#7:
	movq	(%r15), %rax
	movb	8(%r15), %cl
	movq	16(%r15), %rdx
	movq	24(%r15), %rsi
	jmp	LBB1_2
LBB1_8:
	movq	%rsp, %rbx
	leaq	-32(%rbx), %r14
	movq	%r14, %rsp
	leaq	L_.smp_str1(%rip), %rsi
	movq	%r14, %rdi
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
	je	LBB1_10
LBB1_9:
	movq	(%r14), %rax
	movb	8(%r14), %cl
	movq	16(%r14), %rdx
	movq	24(%r14), %rsi
	jmp	LBB1_2
LBB1_10:
	movq	%rsp, %r12
	leaq	-32(%r12), %rdi
	movq	%rdi, %rsp
	leaq	_smpGlobal_1(%rip), %rsi
	leaq	L_.smp_str6(%rip), %r8
	leaq	-32(%rsp), %rax
	movq	%rax, %rsp
	movq	%rax, %rbx
	movl	$2, %edx
	movq	%r8, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	leaq	L_.smp_str7(%rip), %rdx
	subq	$64, %rsp
	movq	-32(%r12), %rax
	movq	-24(%r12), %rcx
	movq	-16(%r12), %rsi
	movq	-8(%r12), %rdi
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	24(%r14), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %r14
	movq	%r14, %rdi
	movl	$1, %esi
	callq	_smpType_def
	addq	$64, %rsp
	leaq	L_.smp_str8(%rip), %rsi
	movq	%rsp, %rbx
	leaq	-32(%rbx), %r12
	movq	%r12, %rsp
	subq	$32, %rsp
	movq	24(%r15), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	(%r15), %rax
	movq	8(%r15), %rcx
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
	je	LBB1_12
## BB#11:
	movq	(%r12), %rax
	movb	8(%r12), %cl
	movq	16(%r12), %rdx
	movq	24(%r12), %rsi
	jmp	LBB1_2
LBB1_12:
	movq	%rsp, %r14
	leaq	-32(%r14), %rbx
	movq	%rbx, %rsp
	subq	$32, %rsp
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	movq	24(%rcx), %rax
	leaq	L_.smp_str9(%rip), %rsi
	movq	%rax, 24(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movl	$1, %edx
	movq	%r12, %rcx
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
	jne	LBB1_4
## BB#13:
	movq	%rsp, %r15
	leaq	-32(%r15), %r14
	movq	%r14, %rsp
	subq	$32, %rsp
	movq	24(%rbx), %rax
	leaq	L_.smp_str10(%rip), %rsi
	movq	%rax, 24(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpObject_funcall
	addq	$32, %rsp
	subq	$32, %rsp
	movq	-8(%r15), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%r15), %rax
	movq	-24(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	jne	LBB1_9
## BB#14:
	movq	%rsp, %r15
	leaq	-32(%r15), %rbx
	movq	%rbx, %rsp
	subq	$32, %rsp
	movq	-48(%rbp), %rax
	leaq	L_.smp_str9(%rip), %rsi
	movq	%rax, 24(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	_smpObject_funcall
	addq	$32, %rsp
	subq	$32, %rsp
	movq	-8(%r15), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	-32(%r15), %rax
	movq	-24(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smp_should_returnp_c
	addq	$32, %rsp
	testl	%eax, %eax
	jmp	LBB1_4
Ltmp24:
Leh_func_end1:

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
	.asciz	 "Array"

L_.smp_str3:                            ## @.smp_str3
	.asciz	 "range"

L_.smp_str4:                            ## @.smp_str4
	.asciz	 "rand"

L_.smp_str5:                            ## @.smp_str5
	.asciz	 "x"

L_.smp_str6:                            ## @.smp_str6
	.asciz	 "Object"

L_.smp_str7:                            ## @.smp_str7
	.asciz	 "1"

L_.smp_str8:                            ## @.smp_str8
	.asciz	 "map"

L_.smp_str9:                            ## @.smp_str9
	.asciz	 "println"

L_.smp_str10:                           ## @.smp_str10
	.asciz	 "sort"


.subsections_via_symbols
	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
Ltmp25:
EH_frame0:
Ltmp27 = (Ltmp26-EH_frame0)-4           ## CIE Length
	.long	Ltmp27
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
Ltmp26:
	.globl	_smpGlobal_1.eh
_smpGlobal_1.eh:
Ltmp30 = (Ltmp29-Ltmp28)-0              ## FDE Length
	.long	Ltmp30
Ltmp28:
Ltmp31 = (Ltmp28-EH_frame0)-0           ## FDE CIE Offset
	.long	Ltmp31
Ltmp32:
Ltmp33 = Ltmp3-Ltmp32                   ## FDE initial location
	.quad	Ltmp33
Ltmp34 = (Ltmp11-Ltmp3)-0               ## FDE address range
	.quad	Ltmp34
	.byte	0                       ## Augmentation size
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp35 = Ltmp4-Ltmp3
	.long	Ltmp35
	.byte	14                      ## DW_CFA_def_cfa_offset
	.byte	16                      ## Offset 16
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp36 = Ltmp5-Ltmp4
	.long	Ltmp36
	.byte	134                     ## DW_CFA_offset + Reg(6)
	.byte	2                       ## Offset 2
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp37 = Ltmp6-Ltmp5
	.long	Ltmp37
	.byte	13                      ## DW_CFA_def_cfa_register
	.byte	6                       ## Reg 6
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp38 = Ltmp7-Ltmp6
	.long	Ltmp38
	.byte	131                     ## DW_CFA_offset + Reg(3)
	.byte	6                       ## Offset 6
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp39 = Ltmp8-Ltmp7
	.long	Ltmp39
	.byte	140                     ## DW_CFA_offset + Reg(12)
	.byte	5                       ## Offset 5
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp40 = Ltmp9-Ltmp8
	.long	Ltmp40
	.byte	142                     ## DW_CFA_offset + Reg(14)
	.byte	4                       ## Offset 4
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp41 = Ltmp10-Ltmp9
	.long	Ltmp41
	.byte	143                     ## DW_CFA_offset + Reg(15)
	.byte	3                       ## Offset 3
	.align	3
Ltmp29:
	.globl	_smpGlobal_main.eh
_smpGlobal_main.eh:
Ltmp44 = (Ltmp43-Ltmp42)-0              ## FDE Length
	.long	Ltmp44
Ltmp42:
Ltmp45 = (Ltmp42-EH_frame0)-0           ## FDE CIE Offset
	.long	Ltmp45
Ltmp46:
Ltmp47 = Ltmp15-Ltmp46                  ## FDE initial location
	.quad	Ltmp47
Ltmp48 = (Ltmp24-Ltmp15)-0              ## FDE address range
	.quad	Ltmp48
	.byte	0                       ## Augmentation size
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp49 = Ltmp16-Ltmp15
	.long	Ltmp49
	.byte	14                      ## DW_CFA_def_cfa_offset
	.byte	16                      ## Offset 16
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp50 = Ltmp17-Ltmp16
	.long	Ltmp50
	.byte	134                     ## DW_CFA_offset + Reg(6)
	.byte	2                       ## Offset 2
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp51 = Ltmp18-Ltmp17
	.long	Ltmp51
	.byte	13                      ## DW_CFA_def_cfa_register
	.byte	6                       ## Reg 6
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp52 = Ltmp19-Ltmp18
	.long	Ltmp52
	.byte	131                     ## DW_CFA_offset + Reg(3)
	.byte	7                       ## Offset 7
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp53 = Ltmp20-Ltmp19
	.long	Ltmp53
	.byte	140                     ## DW_CFA_offset + Reg(12)
	.byte	6                       ## Offset 6
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp54 = Ltmp21-Ltmp20
	.long	Ltmp54
	.byte	141                     ## DW_CFA_offset + Reg(13)
	.byte	5                       ## Offset 5
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp55 = Ltmp22-Ltmp21
	.long	Ltmp55
	.byte	142                     ## DW_CFA_offset + Reg(14)
	.byte	4                       ## Offset 4
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp56 = Ltmp23-Ltmp22
	.long	Ltmp56
	.byte	143                     ## DW_CFA_offset + Reg(15)
	.byte	3                       ## Offset 3
	.align	3
	.align	3
Ltmp43:
