	.section	__TEXT,__text,regular,pure_instructions
	.globl	_smpGlobal_main
	.align	4, 0x90
_smpGlobal_main:                        ## @smpGlobal_main
Ltmp3:
## BB#0:
	pushq	%r14
Ltmp4:
	pushq	%rbx
Ltmp5:
	subq	$56, %rsp
Ltmp6:
Ltmp7:
Ltmp8:
	leaq	L_.smp_str1(%rip), %rdi
	callq	_smpInteger_init_str
	movq	%rax, %r14
	movq	%rdx, %rbx
	leaq	L_.smp_str2(%rip), %rdi
	callq	_smpInteger_init_str
	movq	%rdx, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r14, 24(%rsp)
	leaq	L_.smp_str3(%rip), %rdx
	leaq	40(%rsp), %r8
	movq	24(%rsp), %rdi
	movq	32(%rsp), %rsi
	movl	$1, %ecx
	callq	_smpObject_funcall
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	%r14, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	_smp_should_returnp_c
	testl	%eax, %eax
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	ret
Ltmp9:
Leh_func_end0:

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
	.asciz	 "3"

L_.smp_str2:                            ## @.smp_str2
	.asciz	 "4"

L_.smp_str3:                            ## @.smp_str3
	.asciz	 "adsf"


.subsections_via_symbols
	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
Ltmp10:
EH_frame0:
Ltmp12 = (Ltmp11-EH_frame0)-4           ## CIE Length
	.long	Ltmp12
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
Ltmp11:
	.globl	_smpGlobal_main.eh
_smpGlobal_main.eh:
Ltmp15 = (Ltmp14-Ltmp13)-0              ## FDE Length
	.long	Ltmp15
Ltmp13:
Ltmp16 = (Ltmp13-EH_frame0)-0           ## FDE CIE Offset
	.long	Ltmp16
Ltmp17:
Ltmp18 = Ltmp3-Ltmp17                   ## FDE initial location
	.quad	Ltmp18
Ltmp19 = (Ltmp9-Ltmp3)-0                ## FDE address range
	.quad	Ltmp19
	.byte	0                       ## Augmentation size
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp20 = Ltmp4-Ltmp3
	.long	Ltmp20
	.byte	14                      ## DW_CFA_def_cfa_offset
	.byte	16                      ## Offset 16
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp21 = Ltmp5-Ltmp4
	.long	Ltmp21
	.byte	14                      ## DW_CFA_def_cfa_offset
	.byte	24                      ## Offset 24
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp22 = Ltmp6-Ltmp5
	.long	Ltmp22
	.byte	14                      ## DW_CFA_def_cfa_offset
	.byte	80                      ## Offset 80
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp23 = Ltmp7-Ltmp6
	.long	Ltmp23
	.byte	131                     ## DW_CFA_offset + Reg(3)
	.byte	3                       ## Offset 3
	.byte	4                       ## DW_CFA_advance_loc4
Ltmp24 = Ltmp8-Ltmp7
	.long	Ltmp24
	.byte	142                     ## DW_CFA_offset + Reg(14)
	.byte	2                       ## Offset 2
	.align	3
	.align	3
Ltmp14:
