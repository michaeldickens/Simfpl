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
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	_scope_push
	movq	%r15, -48(%rbp)
	movq	%r14, -40(%rbp)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	leaq	L_.smp_str6(%rip), %rbx
	movq	%rbx, %rdi
	callq	_scope_add
	leaq	L_.smp_str3(%rip), %rdi
	callq	_smpInteger_init_str
	movq	%rax, %r14
	movq	%rdx, %r15
	movq	%rbx, %rdi
	callq	_scope_get
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	%rbx, -56(%rbp)
	movq	%r12, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	_smp_should_returnp_c
	testl	%eax, %eax
	je	LBB0_3
## BB#1:
	movq	%r12, %rax
	movq	%rbx, %rdx
LBB0_2:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB0_3:
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%rbx, -8(%rax)
	movq	%r12, -16(%rax)
	leaq	L_.smp_str7(%rip), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	%r15, -8(%rax)
	movq	%r14, -16(%rax)
	movq	-16(%rax), %rdi
	movq	-8(%rax), %rsi
	movl	$1, %ecx
	callq	_smpObject_funcall
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	%r14, -8(%rax)
	movq	%rbx, -16(%rax)
	movq	-16(%rax), %rdi
	movq	-8(%rax), %rsi
	callq	_smp_should_returnp_c
	testl	%eax, %eax
	je	LBB0_5
LBB0_4:
	movq	%rbx, %rax
	movq	%r14, %rdx
	jmp	LBB0_2
LBB0_5:
	callq	_scope_pop
	jmp	LBB0_4
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
	leaq	L_.smp_str1(%rip), %rdi
	callq	_scope_get
	movq	%rax, %r14
	movq	%rdx, %rbx
	movq	%rbx, -48(%rbp)
	movq	%r14, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	_smp_should_returnp_c
	testl	%eax, %eax
	je	LBB1_4
LBB1_1:
	movq	%r14, %rax
LBB1_2:
	movq	%rbx, %rdx
LBB1_3:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB1_4:
	movq	%rbx, -72(%rbp)         ## 8-byte Spill
	movq	%r14, -64(%rbp)         ## 8-byte Spill
	leaq	L_.smp_str1(%rip), %rdi
	callq	_scope_get
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	%rbx, -8(%rax)
	movq	%r12, -16(%rax)
	movq	-16(%rax), %rdi
	movq	-8(%rax), %rsi
	callq	_smp_should_returnp_c
	testl	%eax, %eax
	je	LBB1_6
## BB#5:
	movq	%r12, %rax
	jmp	LBB1_2
LBB1_6:
	leaq	L_.smp_str2(%rip), %rdi
	callq	_smpInteger_init_str
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	movq	%rdx, %r13
	leaq	L_.smp_str3(%rip), %rdi
	callq	_smpInteger_init_str
	movq	%rax, %r15
	movq	%rdx, %r14
	leaq	L_.smp_str4(%rip), %rdi
	callq	_smpInteger_init_str
	movq	%rdx, %rcx
	leaq	L_.smp_str5(%rip), %rdx
	movq	%rsp, %rsi
	leaq	-48(%rsi), %r8
	movq	%r8, %rsp
	movq	%rcx, -8(%rsi)
	movq	%rax, -16(%rsi)
	movq	%r14, -24(%rsi)
	movq	%r15, -32(%rsi)
	movq	%r13, -40(%rsi)
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -48(%rsi)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	%rbx, -8(%rax)
	movq	%r12, -16(%rax)
	movq	-16(%rax), %rdi
	movq	-8(%rax), %rsi
	movl	$3, %ecx
	callq	_smpObject_funcall
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	%r13, -8(%rax)
	movq	%r12, -16(%rax)
	movq	-16(%rax), %rdi
	movq	-8(%rax), %rsi
	callq	_smp_should_returnp_c
	testl	%eax, %eax
	je	LBB1_8
## BB#7:
	movq	%r12, %rax
	movq	%r13, %rdx
	jmp	LBB1_3
LBB1_8:
	leaq	L_.smp_str1(%rip), %rdi
	callq	_scope_get
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	%r14, -8(%rax)
	movq	%rbx, -16(%rax)
	movq	-16(%rax), %rdi
	movq	-8(%rax), %rsi
	callq	_smp_should_returnp_c
	testl	%eax, %eax
	je	LBB1_10
LBB1_9:
	movq	%rbx, %rax
	movq	%r14, %rdx
	jmp	LBB1_3
LBB1_10:
	leaq	_smpGlobal_1(%rip), %rdi
	leaq	L_.smp_str8(%rip), %rcx
	movl	$2, %esi
	movq	%rcx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	leaq	L_.smp_str2(%rip), %rcx
	movq	%r14, -8(%rsi)
	movq	%rbx, -16(%rsi)
	movq	-16(%rsi), %rdi
	movq	-8(%rsi), %rsi
	movq	%rsp, %r9
	leaq	-16(%r9), %rbx
	movq	%rbx, %rsp
	movq	%rdx, -8(%r9)
	movq	%rax, -16(%r9)
	movq	-16(%r9), %r8
	movq	-8(%r9), %r9
	movl	$1, %edx
	callq	_smpType_def
	movq	%rdx, %rcx
	leaq	L_.smp_str9(%rip), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %r8
	movq	%r8, %rsp
	movq	%rcx, -8(%rsi)
	movq	%rax, -16(%rsi)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	%r13, -8(%rax)
	movq	%r12, -16(%rax)
	movq	-16(%rax), %rdi
	movq	-8(%rax), %rsi
	movl	$1, %ecx
	callq	_smpObject_funcall
	movq	%rax, %r14
	movq	%rdx, %rbx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	%rbx, -8(%rax)
	movq	%r14, -16(%rax)
	movq	-16(%rax), %rdi
	movq	-8(%rax), %rsi
	callq	_smp_should_returnp_c
	testl	%eax, %eax
	jne	LBB1_1
## BB#11:
	movq	%rsp, %rax
	leaq	-16(%rax), %r8
	movq	%r8, %rsp
	movq	%rbx, -8(%rax)
	movq	%r14, -16(%rax)
	leaq	L_.smp_str10(%rip), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -8(%rax)
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -16(%rax)
	movq	-16(%rax), %rdi
	movq	-8(%rax), %rsi
	movl	$1, %ecx
	callq	_smpObject_funcall
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movq	%r14, -8(%rax)
	movq	%rbx, -16(%rax)
	movq	-16(%rax), %rdi
	movq	-8(%rax), %rsi
	callq	_smp_should_returnp_c
	testl	%eax, %eax
	jmp	LBB1_9
Ltmp24:
Leh_func_end1:

	.comm	_smp_nil,16,3           ## @smp_nil
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
	.comm	_smp_true,16,3          ## @smp_true
	.comm	_smp_global,16,3        ## @smp_global
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
	.comm	_gc_stack,16384,4       ## @gc_stack
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
	.comm	_smpInteger_zero,16,3   ## @smpInteger_zero
	.comm	_smpInteger_one,16,3    ## @smpInteger_one
	.comm	_smp_mpfr_rnd,4,2       ## @smp_mpfr_rnd
	.comm	_smp_mpfr_default_prec,8,3 ## @smp_mpfr_default_prec
	.comm	_smptest_print_successesp,4,2 ## @smptest_print_successesp
	.section	__TEXT,__const
L_.smp_str1:                            ## @.smp_str1
	.asciz	 "Global"

L_.smp_str2:                            ## @.smp_str2
	.asciz	 "1"

L_.smp_str3:                            ## @.smp_str3
	.asciz	 "2"

L_.smp_str4:                            ## @.smp_str4
	.asciz	 "3"

L_.smp_str5:                            ## @.smp_str5
	.asciz	 "array"

L_.smp_str6:                            ## @.smp_str6
	.asciz	 "x"

L_.smp_str7:                            ## @.smp_str7
	.asciz	 "*"

L_.smp_str8:                            ## @.smp_str8
	.asciz	 "Object"

L_.smp_str9:                            ## @.smp_str9
	.asciz	 "map"

L_.smp_str10:                           ## @.smp_str10
	.asciz	 "println"


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
