	.section	__TEXT,__text,regular,pure_instructions
	.globl	_get_idstring
	.align	4, 0x90
_get_idstring:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	leaq	L_.str(%rip), %rax
	popq	%rbp
	ret
Leh_func_end1:

	.align	4, 0x90
_do_recursion:
Leh_func_begin2:
	pushq	%rbp
Ltmp2:
	movq	%rsp, %rbp
Ltmp3:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
Ltmp4:
	movl	(%rsi), %eax
	movl	%eax, %r9d
	shll	$8, %r9d
	xorl	%eax, %r9d
	movl	(%r8), %r10d
	shll	$18, %r10d
	xorl	%r9d, %r10d
	movl	(%rcx), %r9d
	movl	4(%rcx), %r11d
	movl	12(%rcx), %ebx
	shlq	$32, %r11
	addq	%r9, %r11
	movq	%r11, %r9
	shrq	$8, %r9
	xorl	%r10d, %r9d
	movl	(%rdx), %r10d
	shrl	$11, %r10d
	andl	$2097135, %r10d
	xorl	%r9d, %r10d
	movl	4(%rsi), %r9d
	movl	12(%rsi), %r14d
	movl	8(%rsi), %r15d
	movl	8(%rcx), %ecx
	movl	%r10d, (%rdi)
	movq	%r9, %r10
	shlq	$32, %r10
	addq	%rax, %r10
	shrq	$24, %r10
	xorl	4(%rsi), %r10d
	shrdq	$8, %rcx, %r11
	shrq	$32, %r11
	xorl	%r10d, %r11d
	movl	4(%r8), %eax
	shll	$18, %eax
	xorl	%r11d, %eax
	movl	4(%rdx), %r10d
	shrl	$11, %r10d
	andl	$2018175, %r10d
	xorl	%eax, %r10d
	movl	%r10d, 4(%rdi)
	shrdl	$24, %r15d, %r9d
	movq	%rbx, %rax
	shlq	$32, %rax
	addq	%rcx, %rax
	shrq	$8, %rax
	xorl	%r9d, %eax
	xorl	8(%rsi), %eax
	movl	8(%r8), %ecx
	shll	$18, %ecx
	xorl	%eax, %ecx
	movl	8(%rdx), %eax
	shrl	$11, %eax
	andl	$1769471, %eax
	xorl	%ecx, %eax
	movl	%eax, 8(%rdi)
	shlq	$32, %r14
	addq	%r15, %r14
	shrq	$24, %r14
	shrl	$8, %ebx
	xorl	%r14d, %ebx
	xorl	12(%rsi), %ebx
	movl	12(%r8), %eax
	shll	$18, %eax
	xorl	%ebx, %eax
	movl	12(%rdx), %ecx
	shrl	$11, %ecx
	andl	$2097142, %ecx
	xorl	%eax, %ecx
	movl	%ecx, 12(%rdi)
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end2:

	.align	4, 0x90
_gen_rand_array:
Leh_func_begin3:
	pushq	%rbp
Ltmp5:
	movq	%rsp, %rbp
Ltmp6:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
Ltmp7:
	xorl	%eax, %eax
	leaq	_sfmt+2464(%rip), %rcx
	leaq	_sfmt+2480(%rip), %rdx
	xorl	%r8d, %r8d
	movq	%rsi, -72(%rbp)
	leaq	_sfmt(%rip), %rsi
	jmp	LBB3_1
	.align	4, 0x90
LBB3_2:
	movq	%r9, %rcx
LBB3_1:
	movq	%rdx, %r9
	movl	(%r8,%rsi), %edx
	movl	%edx, %r10d
	shll	$8, %r10d
	xorl	%edx, %r10d
	movl	1952(%r8,%rsi), %r11d
	shrl	$11, %r11d
	andl	$2097135, %r11d
	xorl	%r10d, %r11d
	movl	(%r9), %r10d
	shll	$18, %r10d
	xorl	%r11d, %r10d
	movl	(%rcx), %r11d
	movl	4(%rcx), %ebx
	movl	12(%rcx), %r14d
	shlq	$32, %rbx
	addq	%r11, %rbx
	movq	%rbx, %r11
	shrq	$8, %r11
	xorl	%r10d, %r11d
	movl	4(%r8,%rsi), %r10d
	movl	12(%r8,%rsi), %r15d
	movl	8(%r8,%rsi), %r12d
	movl	8(%rcx), %ecx
	movl	%r11d, (%rdi,%r8)
	movq	%r10, %r11
	shlq	$32, %r11
	addq	%rdx, %r11
	shrq	$24, %r11
	xorl	4(%r8,%rsi), %r11d
	movl	1956(%r8,%rsi), %edx
	shrl	$11, %edx
	andl	$2018175, %edx
	xorl	%r11d, %edx
	movl	4(%r9), %r11d
	shll	$18, %r11d
	xorl	%edx, %r11d
	shrdq	$8, %rcx, %rbx
	shrq	$32, %rbx
	xorl	%r11d, %ebx
	movl	%ebx, 4(%rdi,%r8)
	shrdl	$24, %r12d, %r10d
	movq	%r14, %rdx
	shlq	$32, %rdx
	addq	%rcx, %rdx
	shrq	$8, %rdx
	xorl	%r10d, %edx
	xorl	8(%r8,%rsi), %edx
	movl	1960(%r8,%rsi), %ecx
	shrl	$11, %ecx
	andl	$1769471, %ecx
	xorl	%edx, %ecx
	movl	8(%r9), %edx
	shll	$18, %edx
	xorl	%ecx, %edx
	movl	%edx, 8(%rdi,%r8)
	shlq	$32, %r15
	addq	%r12, %r15
	shrq	$24, %r15
	shrl	$8, %r14d
	xorl	%r15d, %r14d
	xorl	12(%r8,%rsi), %r14d
	movl	1964(%r8,%rsi), %ecx
	shrl	$11, %ecx
	andl	$2097142, %ecx
	xorl	%r14d, %ecx
	movl	12(%r9), %edx
	shll	$18, %edx
	xorl	%ecx, %edx
	movl	%edx, 12(%rdi,%r8)
	movslq	%eax, %rax
	movq	%rax, %rdx
	shlq	$4, %rdx
	addq	%rdi, %rdx
	incl	%eax
	addq	$16, %r8
	cmpq	$544, %r8
	jne	LBB3_2
	leaq	528(%rdi), %rax
	xorl	%ecx, %ecx
	leaq	_sfmt(%rip), %rdx
	.align	4, 0x90
LBB3_4:
	movl	544(%rcx,%rdx), %esi
	movl	%esi, %r8d
	shll	$8, %r8d
	xorl	%esi, %r8d
	movl	(%rdi,%rcx), %r10d
	shrl	$11, %r10d
	andl	$2097135, %r10d
	xorl	%r8d, %r10d
	movl	528(%rdi,%rcx), %r8d
	shll	$18, %r8d
	xorl	%r10d, %r8d
	movl	(%r9), %r10d
	movl	4(%r9), %r11d
	movl	12(%r9), %ebx
	shlq	$32, %r11
	addq	%r10, %r11
	movq	%r11, %r10
	shrq	$8, %r10
	xorl	%r8d, %r10d
	movl	548(%rcx,%rdx), %r8d
	movl	556(%rcx,%rdx), %r14d
	movl	552(%rcx,%rdx), %r15d
	movl	8(%r9), %r9d
	movl	%r10d, 544(%rdi,%rcx)
	movq	%r8, %r10
	shlq	$32, %r10
	addq	%rsi, %r10
	shrq	$24, %r10
	xorl	548(%rcx,%rdx), %r10d
	movl	4(%rdi,%rcx), %esi
	shrl	$11, %esi
	andl	$2018175, %esi
	xorl	%r10d, %esi
	movl	532(%rdi,%rcx), %r10d
	shll	$18, %r10d
	xorl	%esi, %r10d
	shrdq	$8, %r9, %r11
	shrq	$32, %r11
	xorl	%r10d, %r11d
	movl	%r11d, 548(%rdi,%rcx)
	shrdl	$24, %r15d, %r8d
	movq	%rbx, %rsi
	shlq	$32, %rsi
	addq	%r9, %rsi
	shrq	$8, %rsi
	xorl	%r8d, %esi
	xorl	552(%rcx,%rdx), %esi
	movl	8(%rdi,%rcx), %r8d
	shrl	$11, %r8d
	andl	$1769471, %r8d
	xorl	%esi, %r8d
	movl	536(%rdi,%rcx), %esi
	shll	$18, %esi
	xorl	%r8d, %esi
	movl	%esi, 552(%rdi,%rcx)
	shlq	$32, %r14
	addq	%r15, %r14
	shrq	$24, %r14
	shrl	$8, %ebx
	xorl	%r14d, %ebx
	xorl	556(%rcx,%rdx), %ebx
	movl	12(%rdi,%rcx), %esi
	shrl	$11, %esi
	andl	$2097142, %esi
	xorl	%ebx, %esi
	movl	540(%rdi,%rcx), %r8d
	shll	$18, %r8d
	xorl	%esi, %r8d
	movl	%r8d, 556(%rdi,%rcx)
	leaq	(%rax,%rcx), %r9
	addq	$16, %rcx
	cmpq	$1952, %rcx
	jne	LBB3_4
	leaq	512(%rdi,%rcx), %rax
	movq	-72(%rbp), %rsi
	leal	-156(%rsi), %ecx
	movq	%rcx, -56(%rbp)
	cmpl	$156, %ecx
	jg	LBB3_7
	leaq	2480(%rdi), %rcx
	movl	$156, %edx
	movq	%rdx, -56(%rbp)
	jmp	LBB3_10
LBB3_7:
	movq	%rsi, %rcx
	leal	-313(%rcx), %ecx
	leaq	1(%rcx), %rdx
	movq	%rdx, -48(%rbp)
	leaq	156(%rcx), %rcx
	movabsq	$523986010112, %rdx
	xorl	%esi, %esi
	movq	%rdi, %r8
	.align	4, 0x90
LBB3_8:
	movq	%rsi, %r9
	sarq	$32, %r9
	shlq	$4, %r9
	movl	(%rdi,%r9), %r10d
	movl	%r10d, %r11d
	shll	$8, %r11d
	xorl	%r10d, %r11d
	movq	%rdx, %rbx
	sarq	$32, %rbx
	shlq	$4, %rbx
	movl	(%rdi,%rbx), %r14d
	shrl	$11, %r14d
	andl	$2097135, %r14d
	xorl	%r11d, %r14d
	movl	2480(%r8), %r11d
	shll	$18, %r11d
	xorl	%r14d, %r11d
	movl	(%rax), %r14d
	movl	4(%rax), %r15d
	movl	12(%rax), %r12d
	shlq	$32, %r15
	addq	%r14, %r15
	movq	%r15, %r14
	shrq	$8, %r14
	xorl	%r11d, %r14d
	movl	4(%rdi,%r9), %r11d
	movl	12(%rdi,%r9), %r13d
	movl	8(%rdi,%r9), %r9d
	movl	8(%rax), %eax
	movl	%r14d, 2496(%r8)
	movq	%r11, %r14
	shlq	$32, %r14
	addq	%r10, %r14
	shrq	$24, %r14
	xorl	%r11d, %r14d
	movl	4(%rdi,%rbx), %r10d
	shrl	$11, %r10d
	andl	$2018175, %r10d
	xorl	%r14d, %r10d
	movl	2484(%r8), %r14d
	shll	$18, %r14d
	xorl	%r10d, %r14d
	shrdq	$8, %rax, %r15
	shrq	$32, %r15
	xorl	%r14d, %r15d
	movl	%r15d, 2500(%r8)
	shrdl	$24, %r9d, %r11d
	movq	%r12, %r10
	shlq	$32, %r10
	addq	%rax, %r10
	shrq	$8, %r10
	xorl	%r11d, %r10d
	xorl	%r9d, %r10d
	movl	8(%rdi,%rbx), %eax
	shrl	$11, %eax
	andl	$1769471, %eax
	xorl	%r10d, %eax
	movl	2488(%r8), %r10d
	shll	$18, %r10d
	xorl	%eax, %r10d
	movl	%r10d, 2504(%r8)
	movq	%r13, %rax
	shlq	$32, %rax
	addq	%r9, %rax
	shrq	$24, %rax
	shrl	$8, %r12d
	xorl	%eax, %r12d
	xorl	%r12d, %r13d
	movl	12(%rdi,%rbx), %eax
	shrl	$11, %eax
	andl	$2097142, %eax
	xorl	%r13d, %eax
	movl	2492(%r8), %r9d
	shll	$18, %r9d
	xorl	%eax, %r9d
	movl	%r9d, 2508(%r8)
	movabsq	$4294967296, %rax
	addq	%rax, %rsi
	addq	%rax, %rdx
	leaq	2480(%r8), %rax
	leaq	16(%r8), %r8
	decq	-48(%rbp)
	jne	LBB3_8
	shlq	$4, %rcx
	addq	%rdi, %rcx
	addq	$2464, %r8
	movq	%r8, %rax
LBB3_10:
	movl	$312, %edx
	movq	-72(%rbp), %rsi
	subl	%esi, %edx
	testl	%edx, %edx
	jg	LBB3_12
	xorl	%edx, %edx
	jmp	LBB3_15
LBB3_12:
	leal	-156(%rsi), %esi
	shlq	$32, %rsi
	leaq	_sfmt+12(%rip), %r8
	movabsq	$4294967296, %r9
	movq	%rdx, %r10
	.align	4, 0x90
LBB3_13:
	movq	%rsi, %r11
	sarq	$32, %r11
	shlq	$4, %r11
	movl	(%rdi,%r11), %ebx
	movl	%ebx, -12(%r8)
	movl	4(%rdi,%r11), %ebx
	movl	%ebx, -8(%r8)
	movl	8(%rdi,%r11), %ebx
	movl	%ebx, -4(%r8)
	movl	12(%rdi,%r11), %r11d
	movl	%r11d, (%r8)
	addq	%r9, %rsi
	addq	$16, %r8
	decq	%r10
	jne	LBB3_13
	movslq	%edx, %rdx
LBB3_15:
	movq	-56(%rbp), %r8
	movq	-72(%rbp), %rsi
	cmpl	%esi, %r8d
	jge	LBB3_18
	shlq	$4, %rdx
	leaq	_sfmt(%rip), %rsi
	leaq	12(%rdx,%rsi), %rdx
	movq	%r8, %rsi
	movslq	%esi, %rsi
	movq	%rsi, %r8
	shlq	$4, %r8
	leaq	12(%rdi,%r8), %r8
	movq	-72(%rbp), %r9
	decl	%r9d
	subl	%esi, %r9d
	incq	%r9
	movq	%r9, -72(%rbp)
	leal	-34(%rsi), %r9d
	shlq	$32, %r9
	movq	%r9, -64(%rbp)
	addl	$-156, %esi
	shlq	$32, %rsi
	.align	4, 0x90
LBB3_17:
	movq	%rcx, -48(%rbp)
	movq	%rsi, %rcx
	sarq	$32, %rcx
	shlq	$4, %rcx
	movl	(%rdi,%rcx), %r9d
	movl	%r9d, %r10d
	shll	$8, %r10d
	xorl	%r9d, %r10d
	movq	-64(%rbp), %r11
	sarq	$32, %r11
	shlq	$4, %r11
	movl	(%rdi,%r11), %ebx
	shrl	$11, %ebx
	andl	$2097135, %ebx
	xorl	%r10d, %ebx
	movq	-48(%rbp), %r10
	movl	(%r10), %r14d
	shll	$18, %r14d
	xorl	%ebx, %r14d
	movl	(%rax), %ebx
	movl	4(%rax), %r15d
	movl	12(%rax), %r12d
	shlq	$32, %r15
	addq	%rbx, %r15
	movq	%r15, %rbx
	shrq	$8, %rbx
	xorl	%r14d, %ebx
	movl	4(%rdi,%rcx), %r14d
	movl	12(%rdi,%rcx), %r13d
	movl	8(%rdi,%rcx), %ecx
	movl	8(%rax), %eax
	movl	%ebx, -12(%r8)
	movq	%r14, %r10
	shlq	$32, %r10
	addq	%r9, %r10
	shrq	$24, %r10
	xorl	%r14d, %r10d
	movl	4(%rdi,%r11), %r9d
	shrl	$11, %r9d
	andl	$2018175, %r9d
	xorl	%r10d, %r9d
	movq	-48(%rbp), %r10
	movl	4(%r10), %r10d
	shll	$18, %r10d
	xorl	%r9d, %r10d
	shrdq	$8, %rax, %r15
	shrq	$32, %r15
	xorl	%r10d, %r15d
	movl	%r15d, -8(%r8)
	shrdl	$24, %ecx, %r14d
	movq	%r12, %r9
	shlq	$32, %r9
	addq	%rax, %r9
	shrq	$8, %r9
	xorl	%r14d, %r9d
	xorl	%ecx, %r9d
	movl	8(%rdi,%r11), %eax
	shrl	$11, %eax
	andl	$1769471, %eax
	xorl	%r9d, %eax
	movq	-48(%rbp), %r10
	movl	8(%r10), %r9d
	shll	$18, %r9d
	xorl	%eax, %r9d
	movl	%r9d, -4(%r8)
	movq	%r13, %rax
	shlq	$32, %rax
	addq	%rcx, %rax
	shrq	$24, %rax
	shrl	$8, %r12d
	xorl	%eax, %r12d
	xorl	%r12d, %r13d
	movl	12(%rdi,%r11), %eax
	shrl	$11, %eax
	andl	$2097142, %eax
	xorl	%r13d, %eax
	movl	12(%r10), %ecx
	shll	$18, %ecx
	xorl	%eax, %ecx
	movl	%ecx, (%r8)
	movl	%ebx, -12(%rdx)
	movl	-8(%r8), %eax
	movl	%eax, -8(%rdx)
	movl	-4(%r8), %eax
	movl	%eax, -4(%rdx)
	movl	(%r8), %eax
	movl	%eax, (%rdx)
	movabsq	$4294967296, %rax
	addq	%rax, -64(%rbp)
	addq	%rax, %rsi
	movq	-56(%rbp), %rax
	movslq	%eax, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	addq	%rdi, %rcx
	incl	%eax
	movq	%rax, -56(%rbp)
	addq	$16, %r8
	addq	$16, %rdx
	decq	-72(%rbp)
	movq	%r10, %rax
	jne	LBB3_17
LBB3_18:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end3:

	.globl	_get_min_array_size32
	.align	4, 0x90
_get_min_array_size32:
Leh_func_begin4:
	pushq	%rbp
Ltmp8:
	movq	%rsp, %rbp
Ltmp9:
	movl	$624, %eax
	popq	%rbp
	ret
Leh_func_end4:

	.globl	_get_min_array_size64
	.align	4, 0x90
_get_min_array_size64:
Leh_func_begin5:
	pushq	%rbp
Ltmp10:
	movq	%rsp, %rbp
Ltmp11:
	movl	$312, %eax
	popq	%rbp
	ret
Leh_func_end5:

	.globl	_init_gen_rand
	.align	4, 0x90
_init_gen_rand:
Leh_func_begin6:
	pushq	%rbp
Ltmp12:
	movq	%rsp, %rbp
Ltmp13:
	movl	%edi, _sfmt(%rip)
	movl	$1, %eax
	leaq	_sfmt(%rip), %rcx
	jmp	LBB6_1
	.align	4, 0x90
LBB6_2:
	incq	%rax
LBB6_1:
	movl	%edi, %edx
	shrl	$30, %edx
	xorl	%edi, %edx
	imull	$1812433253, %edx, %edi
	addl	%eax, %edi
	movl	%edi, (%rcx,%rax,4)
	cmpq	$623, %rax
	jne	LBB6_2
	movl	_sfmt(%rip), %eax
	movl	$624, _idx(%rip)
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	$331998852, %edx
	andl	_sfmt+12(%rip), %edx
	addl	%edx, %ecx
	shrl	$16, %edx
	xorl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$4, %edx
	xorl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$2, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	%ecx, %edx
	testb	$1, %dl
	jne	LBB6_5
	xorl	$1, %eax
	movl	%eax, _sfmt(%rip)
LBB6_5:
	movb	$1, _initialized.b(%rip)
	popq	%rbp
	ret
Leh_func_end6:

	.globl	_minihash_function
	.align	4, 0x90
_minihash_function:
Leh_func_begin7:
	pushq	%rbp
Ltmp14:
	movq	%rsp, %rbp
Ltmp15:
	movb	(%rdi), %cl
	testb	%cl, %cl
	jne	LBB7_3
	movl	$5381, %eax
LBB7_2:
	popq	%rbp
	ret
LBB7_3:
	incq	%rdi
	movl	$177573, %edx
	.align	4, 0x90
LBB7_4:
	movsbl	%cl, %eax
	xorl	%edx, %eax
	movb	(%rdi), %cl
	testb	%cl, %cl
	je	LBB7_2
	incq	%rdi
	imull	$33, %eax, %edx
	jmp	LBB7_4
Leh_func_end7:

	.globl	_minihash_each
	.align	4, 0x90
_minihash_each:
Leh_func_begin8:
	pushq	%rbp
Ltmp16:
	movq	%rsp, %rbp
Ltmp17:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp18:
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	LBB8_3
LBB8_1:
	xorl	%eax, %eax
LBB8_2:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB8_3:
	cmpq	$0, 24(%rbx)
	je	LBB8_1
	movq	%rsi, %r14
	xorl	%r15d, %r15d
	movq	$-1, -56(%rbp)
	jmp	LBB8_10
	.align	4, 0x90
LBB8_7:
	movq	(%rax,%r15), %rax
	movq	(%rax,%rcx), %rdx
	movq	-16(%rax,%rcx), %rdi
	leaq	24(%rcx), %r13
	movq	-8(%rax,%rcx), %rsi
	callq	*%r14
	testl	%eax, %eax
	movq	%r13, %rcx
	jne	LBB8_2
LBB8_8:
	incq	%r12
	movq	(%rbx), %rax
	cmpq	%r12, 8(%rax,%r15)
	ja	LBB8_7
LBB8_9:
	movq	-48(%rbp), %r15
LBB8_10:
	movq	-56(%rbp), %rcx
	incq	%rcx
	movq	%rcx, -56(%rbp)
	cmpq	%rcx, 8(%rbx)
	jbe	LBB8_1
	leaq	16(%r15), %rcx
	movq	%rcx, -48(%rbp)
	cmpq	$0, (%rax,%r15)
	je	LBB8_9
	movl	$16, %ecx
	movq	$-1, %r12
	jmp	LBB8_8
Leh_func_end8:

	.globl	_obj_eq
	.align	4, 0x90
_obj_eq:
Leh_func_begin9:
	pushq	%rbp
Ltmp19:
	movq	%rsp, %rbp
Ltmp20:
	cmpq	%rcx, %rsi
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	_smp_nil@GOTPCREL(%rip), %r8
	movq	%r8, %rax
	cmoveq	%rdx, %rax
	addq	$8, %r8
	addq	$8, %rdx
	cmpq	%rcx, %rsi
	movq	(%rax), %rax
	cmovneq	%r8, %rdx
	movq	(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end9:

	.globl	_smpObject_clear
	.align	4, 0x90
_smpObject_clear:
Leh_func_begin10:
	pushq	%rbp
Ltmp21:
	movq	%rsp, %rbp
Ltmp22:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end10:

	.globl	_smpObject_instancep_c
	.align	4, 0x90
_smpObject_instancep_c:
Leh_func_begin11:
	pushq	%rbp
Ltmp23:
	movq	%rsp, %rbp
Ltmp24:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
Ltmp25:
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	jne	LBB11_3
LBB11_1:
	xorl	%eax, %eax
LBB11_2:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB11_3:
	leaq	16(%rbp), %r14
	movl	8(%r14), %eax
	cmpl	%eax, 8(%rbx)
	jne	LBB11_5
LBB11_4:
	movl	$1, %eax
	jmp	LBB11_2
LBB11_5:
	xorl	%r15d, %r15d
	jmp	LBB11_13
	.align	4, 0x90
LBB11_9:
	movq	16(%r12), %rax
	movq	(%rax,%r13,8), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smpObject_instancep_c
	testl	%eax, %eax
	jne	LBB11_4
	incq	%r13
LBB11_11:
	cmpq	%r13, 24(%r12)
	ja	LBB11_9
LBB11_12:
	incq	%r15
LBB11_13:
	cmpq	%r15, 24(%rbx)
	jbe	LBB11_1
	movq	16(%rbx), %rax
	movq	(%rax,%r15,8), %r12
	movq	56(%r14), %rax
	movq	%rax, -48(%rbp)
	movq	48(%r14), %rax
	movq	%rax, -56(%rbp)
	movq	40(%r14), %rax
	movq	%rax, -64(%rbp)
	movq	32(%r14), %rax
	movq	%rax, -72(%rbp)
	movq	24(%r14), %rax
	movq	%rax, -80(%rbp)
	movq	16(%r14), %rax
	movq	%rax, -88(%rbp)
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -104(%rbp)
	testq	%r12, %r12
	je	LBB11_12
	movl	-96(%rbp), %eax
	cmpl	%eax, 8(%r12)
	je	LBB11_4
	xorl	%r13d, %r13d
	jmp	LBB11_11
Leh_func_end11:

	.globl	_smpObject_instancep_cint
	.align	4, 0x90
_smpObject_instancep_cint:
Leh_func_begin12:
	pushq	%rbp
Ltmp26:
	movq	%rsp, %rbp
Ltmp27:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
Ltmp28:
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	jne	LBB12_3
LBB12_1:
	xorl	%eax, %eax
LBB12_2:
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB12_3:
	movq	8(%rcx), %rax
	movl	8(%rax), %r14d
	cmpl	%r14d, 8(%rbx)
	jne	LBB12_5
LBB12_4:
	movl	$1, %eax
	jmp	LBB12_2
LBB12_5:
	movq	56(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	48(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	40(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	32(%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	24(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -152(%rbp)
	movl	12(%rax), %ecx
	movl	%ecx, -156(%rbp)
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	xorl	%r15d, %r15d
	jmp	LBB12_13
	.align	4, 0x90
LBB12_9:
	movq	16(%r12), %rax
	movq	(%rax,%r13,8), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smpObject_instancep_c
	testl	%eax, %eax
	jne	LBB12_4
	incq	%r13
LBB12_11:
	cmpq	%r13, 24(%r12)
	ja	LBB12_9
LBB12_12:
	incq	%r15
LBB12_13:
	cmpq	%r15, 24(%rbx)
	jbe	LBB12_1
	movq	16(%rbx), %rax
	movq	(%rax,%r15,8), %r12
	movq	-168(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	%r14d, -96(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	testq	%r12, %r12
	je	LBB12_12
	cmpl	%r14d, 8(%r12)
	je	LBB12_4
	xorl	%r13d, %r13d
	jmp	LBB12_11
Leh_func_end12:

	.globl	_test_init
	.align	4, 0x90
_test_init:
Leh_func_begin13:
	pushq	%rbp
Ltmp29:
	movq	%rsp, %rbp
Ltmp30:
	movq	_smptest_print_successesp@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	xorl	%eax, %eax
	popq	%rbp
	ret
Leh_func_end13:

	.globl	_is_power_of_2
	.align	4, 0x90
_is_power_of_2:
Leh_func_begin14:
	pushq	%rbp
Ltmp31:
	movq	%rsp, %rbp
Ltmp32:
	testq	%rdi, %rdi
	je	LBB14_2
	leaq	-1(%rdi), %rax
	testq	%rdi, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
LBB14_2:
	xorl	%eax, %eax
	popq	%rbp
	ret
Leh_func_end14:

	.globl	_next_power_of_2
	.align	4, 0x90
_next_power_of_2:
Leh_func_begin15:
	pushq	%rbp
Ltmp33:
	movq	%rsp, %rbp
Ltmp34:
	movq	%rdi, %rax
	shrq	%rax
	orq	%rdi, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rdx
	shrq	$16, %rdx
	orq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
	orq	%rdx, %rax
	incq	%rax
	popq	%rbp
	ret
Leh_func_end15:

	.globl	_smpArray_reverse_now
	.align	4, 0x90
_smpArray_reverse_now:
Leh_func_begin16:
	pushq	%rbp
Ltmp35:
	movq	%rsp, %rbp
Ltmp36:
	movq	%rdi, %rax
	movq	(%rsi), %rdi
	movq	8(%rsi), %r8
	cmpq	$2, %r8
	jb	LBB16_3
	movq	%r8, %rcx
	shlq	$4, %rcx
	leaq	-8(%rdi,%rcx), %rcx
	shrq	%r8
	addq	$8, %rdi
	xorl	%edx, %edx
	.align	4, 0x90
LBB16_2:
	movq	-8(%rdi), %r9
	movq	(%rdi), %r10
	movq	-8(%rcx), %r11
	movq	%r11, -8(%rdi)
	movq	(%rcx), %r11
	movq	%r11, (%rdi)
	movq	%r9, -8(%rcx)
	movq	%r10, (%rcx)
	addq	$16, %rdi
	addq	$-16, %rcx
	incq	%rdx
	cmpq	%r8, %rdx
	jb	LBB16_2
LBB16_3:
	movq	%rsi, %rdx
	popq	%rbp
	ret
Leh_func_end16:

	.globl	_smpArray_to_a
	.align	4, 0x90
_smpArray_to_a:
Leh_func_begin17:
	pushq	%rbp
Ltmp37:
	movq	%rsp, %rbp
Ltmp38:
	movq	%rdi, %rax
	movq	%rsi, %rdx
	popq	%rbp
	ret
Leh_func_end17:

	.globl	_smpBool_init
	.align	4, 0x90
_smpBool_init:
Leh_func_begin18:
	pushq	%rbp
Ltmp39:
	movq	%rsp, %rbp
Ltmp40:
	testl	%edi, %edi
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	%rdx, %rax
	cmoveq	%rcx, %rax
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%edi, %edi
	movq	(%rax), %rax
	cmovneq	%rdx, %rcx
	movq	(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end18:

	.globl	_smpBool_to_cint
	.align	4, 0x90
_smpBool_to_cint:
Leh_func_begin19:
	pushq	%rbp
Ltmp41:
	movq	%rsp, %rbp
Ltmp42:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	cmpq	%rsi, 8(%rax)
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
Leh_func_end19:

	.globl	_smpObject_truep_c
	.align	4, 0x90
_smpObject_truep_c:
Leh_func_begin20:
	pushq	%rbp
Ltmp43:
	movq	%rsp, %rbp
Ltmp44:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
Leh_func_end20:

	.globl	_smpObject_truep
	.align	4, 0x90
_smpObject_truep:
Leh_func_begin21:
	pushq	%rbp
Ltmp45:
	movq	%rsp, %rbp
Ltmp46:
	movl	8(%rdi), %eax
	movq	_smpType_id_nil@GOTPCREL(%rip), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, %eax
	movq	_smp_true@GOTPCREL(%rip), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %r8
	movq	%r8, %r9
	cmovneq	%rdi, %r9
	addq	$8, %r8
	addq	$8, %rdi
	cmpl	%edx, %eax
	movq	(%r9), %rax
	cmoveq	%r8, %rdi
	movq	(%rdi), %rdx
	popq	%rbp
	ret
Leh_func_end21:

	.globl	_smpBool_and
	.align	4, 0x90
_smpBool_and:
Leh_func_begin22:
	pushq	%rbp
Ltmp47:
	movq	%rsp, %rbp
Ltmp48:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	je	LBB22_3
	movq	(%rcx), %rcx
	cmpl	%eax, 8(%rcx)
	je	LBB22_3
	xorb	%cl, %cl
	jmp	LBB22_4
LBB22_3:
	movb	$1, %cl
LBB22_4:
	andb	$1, %cl
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	_smp_true@GOTPCREL(%rip), %rsi
	movq	%rsi, %rax
	cmovneq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rdx
	addq	$8, %rsi
	testb	%cl, %cl
	cmovneq	%rdx, %rsi
	movq	(%rsi), %rdx
	popq	%rbp
	ret
Leh_func_end22:

	.globl	_smpBool_not
	.align	4, 0x90
_smpBool_not:
Leh_func_begin23:
	pushq	%rbp
Ltmp49:
	movq	%rsp, %rbp
Ltmp50:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rcx
	movl	8(%rcx), %ecx
	cmpl	%eax, %ecx
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	_smp_nil@GOTPCREL(%rip), %r8
	movq	%r8, %r9
	cmoveq	%rdx, %r9
	addq	$8, %r8
	addq	$8, %rdx
	cmpl	%eax, %ecx
	movq	(%r9), %rax
	cmovneq	%r8, %rdx
	movq	(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end23:

	.globl	_smpBool_or
	.align	4, 0x90
_smpBool_or:
Leh_func_begin24:
	pushq	%rbp
Ltmp51:
	movq	%rsp, %rbp
Ltmp52:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	je	LBB24_2
LBB24_1:
	xorb	%cl, %cl
	jmp	LBB24_4
LBB24_2:
	movq	(%rcx), %rcx
	cmpl	%eax, 8(%rcx)
	jne	LBB24_1
	movb	$1, %cl
LBB24_4:
	andb	$1, %cl
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	_smp_true@GOTPCREL(%rip), %rsi
	movq	%rsi, %rax
	cmovneq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rdx
	addq	$8, %rsi
	testb	%cl, %cl
	cmovneq	%rdx, %rsi
	movq	(%rsi), %rdx
	popq	%rbp
	ret
Leh_func_end24:

	.globl	_smpBool_xor
	.align	4, 0x90
_smpBool_xor:
Leh_func_begin25:
	pushq	%rbp
Ltmp53:
	movq	%rsp, %rbp
Ltmp54:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rcx
	cmpl	%eax, 8(%rcx)
	setne	%cl
	cmpl	%eax, 8(%rdi)
	setne	%al
	movb	%al, %dl
	xorb	%cl, %dl
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	_smp_nil@GOTPCREL(%rip), %rdi
	movq	%rdi, %r8
	cmovneq	%rdx, %r8
	addq	$8, %rdi
	addq	$8, %rdx
	xorb	%cl, %al
	movq	(%r8), %rax
	cmoveq	%rdi, %rdx
	movq	(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end25:

	.globl	_smpGlobal_list
	.align	4, 0x90
_smpGlobal_list:
Leh_func_begin26:
	pushq	%rbp
Ltmp55:
	movq	%rsp, %rbp
Ltmp56:
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end26:

	.globl	_smpList_car
	.align	4, 0x90
_smpList_car:
Leh_func_begin27:
	pushq	%rbp
Ltmp57:
	movq	%rsp, %rbp
Ltmp58:
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	popq	%rbp
	ret
Leh_func_end27:

	.globl	_smpList_cdr
	.align	4, 0x90
_smpList_cdr:
Leh_func_begin28:
	pushq	%rbp
Ltmp59:
	movq	%rsp, %rbp
Ltmp60:
	movq	16(%rsi), %rax
	testq	%rax, %rax
	jne	LBB28_2
	movq	_smp_nil@GOTPCREL(%rip), %rax
LBB28_2:
	leaq	8(%rax), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end28:

	.globl	_smpList_emptyp
	.align	4, 0x90
_smpList_emptyp:
Leh_func_begin29:
	pushq	%rbp
Ltmp61:
	movq	%rsp, %rbp
Ltmp62:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end29:

	.globl	_smpList_length_clong
	.align	4, 0x90
_smpList_length_clong:
Leh_func_begin30:
	pushq	%rbp
Ltmp63:
	movq	%rsp, %rbp
Ltmp64:
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	je	LBB30_4
	movl	$1, %eax
	.align	4, 0x90
LBB30_2:
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	LBB30_5
	incq	%rax
	movq	8(%rcx), %rsi
	jmp	LBB30_2
LBB30_4:
	xorl	%eax, %eax
LBB30_5:
	popq	%rbp
	ret
Leh_func_end30:

	.globl	_smpList_reverse_now_attempt
	.align	4, 0x90
_smpList_reverse_now_attempt:
Leh_func_begin31:
	pushq	%rbp
Ltmp65:
	movq	%rsp, %rbp
Ltmp66:
	popq	%rbp
	ret
Leh_func_end31:

	.globl	_smpList_to_list
	.align	4, 0x90
_smpList_to_list:
Leh_func_begin32:
	pushq	%rbp
Ltmp67:
	movq	%rsp, %rbp
Ltmp68:
	movq	%rdi, %rax
	movq	%rsi, %rdx
	popq	%rbp
	ret
Leh_func_end32:

	.globl	_smpListBuffer_to_list
	.align	4, 0x90
_smpListBuffer_to_list:
Leh_func_begin33:
	pushq	%rbp
Ltmp69:
	movq	%rsp, %rbp
Ltmp70:
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	popq	%rbp
	ret
Leh_func_end33:

	.globl	_smpNil_car
	.align	4, 0x90
_smpNil_car:
Leh_func_begin34:
	pushq	%rbp
Ltmp71:
	movq	%rsp, %rbp
Ltmp72:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end34:

	.globl	_smpNil_cdr
	.align	4, 0x90
_smpNil_cdr:
Leh_func_begin35:
	pushq	%rbp
Ltmp73:
	movq	%rsp, %rbp
Ltmp74:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end35:

	.globl	_smpNil_copy
	.align	4, 0x90
_smpNil_copy:
Leh_func_begin36:
	pushq	%rbp
Ltmp75:
	movq	%rsp, %rbp
Ltmp76:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end36:

	.globl	_smpNil_each
	.align	4, 0x90
_smpNil_each:
Leh_func_begin37:
	pushq	%rbp
Ltmp77:
	movq	%rsp, %rbp
Ltmp78:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end37:

	.globl	_smpNil_emptyp
	.align	4, 0x90
_smpNil_emptyp:
Leh_func_begin38:
	pushq	%rbp
Ltmp79:
	movq	%rsp, %rbp
Ltmp80:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end38:

	.globl	_smpNil_equalp
	.align	4, 0x90
_smpNil_equalp:
Leh_func_begin39:
	pushq	%rbp
Ltmp81:
	movq	%rsp, %rbp
Ltmp82:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rcx
	movl	8(%rcx), %ecx
	cmpl	%eax, %ecx
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	_smp_nil@GOTPCREL(%rip), %r8
	movq	%r8, %r9
	cmoveq	%rdx, %r9
	addq	$8, %r8
	addq	$8, %rdx
	cmpl	%eax, %ecx
	movq	(%r9), %rax
	cmovneq	%r8, %rdx
	movq	(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end39:

	.globl	_smpNil_reverse
	.align	4, 0x90
_smpNil_reverse:
Leh_func_begin40:
	pushq	%rbp
Ltmp83:
	movq	%rsp, %rbp
Ltmp84:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end40:

	.globl	_smpNil_length
	.align	4, 0x90
_smpNil_length:
Leh_func_begin41:
	pushq	%rbp
Ltmp85:
	movq	%rsp, %rbp
Ltmp86:
	movq	_smpInteger_zero@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end41:

	.globl	_smpNil_map
	.align	4, 0x90
_smpNil_map:
Leh_func_begin42:
	pushq	%rbp
Ltmp87:
	movq	%rsp, %rbp
Ltmp88:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end42:

	.globl	_smpNil_reduce
	.align	4, 0x90
_smpNil_reduce:
Leh_func_begin43:
	pushq	%rbp
Ltmp89:
	movq	%rsp, %rbp
Ltmp90:
	cmpl	$1, %edx
	jg	LBB43_2
	movq	_smp_nil@GOTPCREL(%rip), %rax
	leaq	8(%rax), %rdx
	jmp	LBB43_3
LBB43_2:
	leaq	24(%rcx), %rdx
	leaq	16(%rcx), %rax
LBB43_3:
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	popq	%rbp
	ret
Leh_func_end43:

	.globl	_smpPair_car
	.align	4, 0x90
_smpPair_car:
Leh_func_begin44:
	pushq	%rbp
Ltmp91:
	movq	%rsp, %rbp
Ltmp92:
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	popq	%rbp
	ret
Leh_func_end44:

	.globl	_smpPair_cdr
	.align	4, 0x90
_smpPair_cdr:
Leh_func_begin45:
	pushq	%rbp
Ltmp93:
	movq	%rsp, %rbp
Ltmp94:
	movq	16(%rsi), %rax
	testq	%rax, %rax
	jne	LBB45_2
	movq	_smp_nil@GOTPCREL(%rip), %rax
LBB45_2:
	leaq	8(%rax), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end45:

	.globl	_smpPair_set_car_now
	.align	4, 0x90
_smpPair_set_car_now:
Leh_func_begin46:
	pushq	%rbp
Ltmp95:
	movq	%rsp, %rbp
Ltmp96:
	movq	(%rcx), %rax
	movq	%rax, (%rsi)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsi)
	movq	%rdi, %rax
	movq	%rsi, %rdx
	popq	%rbp
	ret
Leh_func_end46:

	.globl	_smpString_to_cstr
	.align	4, 0x90
_smpString_to_cstr:
Leh_func_begin47:
	pushq	%rbp
Ltmp97:
	movq	%rsp, %rbp
Ltmp98:
	movq	(%rsi), %rax
	popq	%rbp
	ret
Leh_func_end47:

	.globl	_smpString_to_s
	.align	4, 0x90
_smpString_to_s:
Leh_func_begin48:
	pushq	%rbp
Ltmp99:
	movq	%rsp, %rbp
Ltmp100:
	movq	%rdi, %rax
	movq	%rsi, %rdx
	popq	%rbp
	ret
Leh_func_end48:

	.globl	_smpSymbol_to_cstr
	.align	4, 0x90
_smpSymbol_to_cstr:
Leh_func_begin49:
	pushq	%rbp
Ltmp101:
	movq	%rsp, %rbp
Ltmp102:
	movq	(%rsi), %rax
	popq	%rbp
	ret
Leh_func_end49:

	.globl	_smpThrown_get_first_value
	.align	4, 0x90
_smpThrown_get_first_value:
Leh_func_begin50:
	pushq	%rbp
Ltmp103:
	movq	%rsp, %rbp
Ltmp104:
	cmpq	$0, 16(%rsi)
	jne	LBB50_2
	movq	_smp_nil@GOTPCREL(%rip), %rax
	jmp	LBB50_3
LBB50_2:
	movq	8(%rsi), %rax
LBB50_3:
	leaq	8(%rax), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end50:

	.globl	_smp_should_breakp_c
	.align	4, 0x90
_smp_should_breakp_c:
Leh_func_begin51:
	pushq	%rbp
Ltmp105:
	movq	%rsp, %rbp
Ltmp106:
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
Leh_func_end51:

	.globl	_smp_should_returnp_c
	.align	4, 0x90
_smp_should_returnp_c:
Leh_func_begin52:
	pushq	%rbp
Ltmp107:
	movq	%rsp, %rbp
Ltmp108:
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	jne	LBB52_2
	movb	(%rsi), %al
	andb	$15, %al
	cmpb	$2, %al
	sbbl	%eax, %eax
	andl	$1, %eax
	popq	%rbp
	ret
LBB52_2:
	xorl	%eax, %eax
	popq	%rbp
	ret
Leh_func_end52:

	.globl	_smp_thrown_exceptionp_c
	.align	4, 0x90
_smp_thrown_exceptionp_c:
Leh_func_begin53:
	pushq	%rbp
Ltmp109:
	movq	%rsp, %rbp
Ltmp110:
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	jne	LBB53_2
	testb	$15, (%rsi)
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
LBB53_2:
	xorl	%eax, %eax
	popq	%rbp
	ret
Leh_func_end53:

	.globl	_smpType_relatedp
	.align	4, 0x90
_smpType_relatedp:
Leh_func_begin54:
	pushq	%rbp
Ltmp111:
	movq	%rsp, %rbp
Ltmp112:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
Ltmp113:
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	jne	LBB54_3
LBB54_1:
	movb	$1, %cl
LBB54_2:
	andb	$1, %cl
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	_smp_true@GOTPCREL(%rip), %rsi
	movq	%rsi, %rax
	cmovneq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rdx
	addq	$8, %rsi
	testb	%cl, %cl
	cmovneq	%rdx, %rsi
	movq	(%rsi), %rdx
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB54_3:
	movq	8(%rcx), %rax
	movl	8(%rax), %r14d
	cmpl	%r14d, 8(%rbx)
	jne	LBB54_5
LBB54_4:
	xorb	%cl, %cl
	jmp	LBB54_2
LBB54_5:
	movq	56(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	48(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	40(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	32(%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	24(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -152(%rbp)
	movl	12(%rax), %ecx
	movl	%ecx, -156(%rbp)
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	xorl	%r15d, %r15d
	jmp	LBB54_13
	.align	4, 0x90
LBB54_9:
	movq	16(%r12), %rax
	movq	(%rax,%r13,8), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smpObject_instancep_c
	testl	%eax, %eax
	jne	LBB54_4
	incq	%r13
LBB54_11:
	cmpq	%r13, 24(%r12)
	ja	LBB54_9
LBB54_12:
	incq	%r15
LBB54_13:
	cmpq	%r15, 24(%rbx)
	jbe	LBB54_1
	movq	16(%rbx), %rax
	movq	(%rax,%r15,8), %r12
	movq	-168(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	%r14d, -96(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	testq	%r12, %r12
	je	LBB54_12
	cmpl	%r14d, 8(%r12)
	je	LBB54_4
	xorl	%r13d, %r13d
	jmp	LBB54_11
Leh_func_end54:

	.globl	_smpType_equalp
	.align	4, 0x90
_smpType_equalp:
Leh_func_begin55:
	pushq	%rbp
Ltmp114:
	movq	%rsp, %rbp
Ltmp115:
	pushq	%r14
	pushq	%rbx
Ltmp116:
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	(%rbx), %rax
	movq	(%rax), %rdi
	leaq	L_.str1(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB55_2
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	leaq	8(%rbx), %r14
	jmp	LBB55_3
LBB55_2:
	movl	8(%r14), %eax
	movq	8(%rbx), %rbx
	movl	8(%rbx), %ecx
	cmpl	%ecx, %eax
	movq	_smp_true@GOTPCREL(%rip), %r14
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rbx
	cmoveq	%r14, %rbx
	addq	$8, %rdx
	addq	$8, %r14
	cmpl	%ecx, %eax
	cmovneq	%rdx, %r14
LBB55_3:
	movq	(%rbx), %rax
	movq	(%r14), %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end55:

	.globl	_smpThrown_contains_namep
	.align	4, 0x90
_smpThrown_contains_namep:
Leh_func_begin56:
	pushq	%rbp
Ltmp117:
	movq	%rsp, %rbp
Ltmp118:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp119:
	movq	16(%rsi), %rbx
	xorl	%eax, %eax
	movq	$-1, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	.align	4, 0x90
LBB56_1:
	incq	%r14
	cmpq	%r14, %rbx
	jbe	LBB56_4
	movq	8(%r12), %rcx
	leaq	16(%rax), %r13
	movq	(%rcx,%rax), %rax
	movq	(%rax), %rdi
	movq	%r15, %rsi
	callq	_strcmp
	testl	%eax, %eax
	movq	%r13, %rax
	jne	LBB56_1
	movl	$1, %eax
	jmp	LBB56_5
LBB56_4:
	xorl	%eax, %eax
LBB56_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end56:

	.globl	_smpString_equalp_cstr
	.align	4, 0x90
_smpString_equalp_cstr:
Leh_func_begin57:
	pushq	%rbp
Ltmp120:
	movq	%rsp, %rbp
Ltmp121:
	movq	(%rsi), %rdi
	movq	%rdx, %rsi
	callq	_strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
Leh_func_end57:

	.globl	_smpString_equalp
	.align	4, 0x90
_smpString_equalp:
Leh_func_begin58:
	pushq	%rbp
Ltmp122:
	movq	%rsp, %rbp
Ltmp123:
	pushq	%r14
	pushq	%rbx
Ltmp124:
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	(%rbx), %rax
	movq	(%rax), %rdi
	leaq	L_.str2(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB58_3
	movq	(%r14), %rdi
	movq	8(%rbx), %rax
	movq	(%rax), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB58_3
	movq	_smp_true@GOTPCREL(%rip), %rax
	jmp	LBB58_4
LBB58_3:
	movq	_smp_nil@GOTPCREL(%rip), %rax
LBB58_4:
	leaq	8(%rax), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end58:

	.globl	_smpObject_instancep_cstr
	.align	4, 0x90
_smpObject_instancep_cstr:
Leh_func_begin59:
	pushq	%rbp
Ltmp125:
	movq	%rsp, %rbp
Ltmp126:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp127:
	movq	%rsi, %rbx
	movq	%rdi, -48(%rbp)
	movq	(%rdi), %rdi
	movq	%rbx, %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB59_2
LBB59_1:
	movl	$1, %eax
	jmp	LBB59_11
LBB59_2:
	movq	-48(%rbp), %rdi
	movq	24(%rdi), %rax
	movq	%rax, -56(%rbp)
	xorl	%r14d, %r14d
	jmp	LBB59_9
	.align	4, 0x90
LBB59_3:
	movq	-48(%rbp), %rdi
	movq	16(%rdi), %rax
	movq	(%rax,%r14,8), %r15
	movq	(%r15), %rdi
	movq	%rbx, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB59_1
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB59_7
	.align	4, 0x90
LBB59_5:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB59_1
	incq	%r13
LBB59_7:
	cmpq	%r13, %r12
	ja	LBB59_5
	incq	%r14
LBB59_9:
	cmpq	%r14, -56(%rbp)
	ja	LBB59_3
	xorl	%eax, %eax
LBB59_11:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end59:

	.globl	_obj_types_equalp
	.align	4, 0x90
_obj_types_equalp:
Leh_func_begin60:
	pushq	%rbp
Ltmp128:
	movq	%rsp, %rbp
Ltmp129:
	movq	(%rdi), %rdi
	movq	(%rdx), %rsi
	callq	_strcmp
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmoveq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rax
	cmovneq	%rdx, %rcx
	movq	(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end60:

	.globl	_smpObject_types_equalp
	.align	4, 0x90
_smpObject_types_equalp:
Leh_func_begin61:
	pushq	%rbp
Ltmp130:
	movq	%rsp, %rbp
Ltmp131:
	movq	(%rdi), %rdi
	movq	(%rcx), %rax
	movq	(%rax), %rsi
	callq	_strcmp
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmoveq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rax
	cmovneq	%rdx, %rcx
	movq	(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end61:

	.globl	_minihash_containsp
	.align	4, 0x90
_minihash_containsp:
Leh_func_begin62:
	pushq	%rbp
Ltmp132:
	movq	%rsp, %rbp
Ltmp133:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp134:
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	jne	LBB62_2
LBB62_1:
	xorl	%eax, %eax
	jmp	LBB62_13
LBB62_2:
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	je	LBB62_1
	movsbl	(%rbx), %eax
	testl	%eax, %eax
	jne	LBB62_5
	movl	$5381, %eax
	jmp	LBB62_8
LBB62_5:
	xorl	$177573, %eax
	movb	1(%rbx), %dl
	testb	%dl, %dl
	je	LBB62_8
	leaq	2(%rbx), %rsi
	.align	4, 0x90
LBB62_7:
	movsbl	%dl, %edx
	imull	$33, %eax, %eax
	xorl	%edx, %eax
	movb	(%rsi), %dl
	incq	%rsi
	testb	%dl, %dl
	jne	LBB62_7
LBB62_8:
	movslq	%eax, %rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx, %rax
	shlq	$4, %rax
	movq	(%rcx,%rax), %r14
	testq	%r14, %r14
	je	LBB62_1
	movq	8(%rcx,%rax), %r15
	movq	$-1, %r12
	.align	4, 0x90
LBB62_10:
	incq	%r12
	cmpq	%r12, %r15
	jbe	LBB62_1
	movq	(%r14), %rdi
	leaq	24(%r14), %r14
	movq	%rbx, %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB62_10
	movl	$1, %eax
LBB62_13:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end62:

	.globl	_minihash_get
	.align	4, 0x90
_minihash_get:
Leh_func_begin63:
	pushq	%rbp
Ltmp135:
	movq	%rsp, %rbp
Ltmp136:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp137:
	movq	%rsi, -48(%rbp)
	testq	%rdi, %rdi
	jne	LBB63_3
LBB63_1:
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	leaq	8(%rbx), %r14
LBB63_2:
	movq	(%rbx), %rax
	movq	(%r14), %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB63_3:
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	LBB63_1
	movsbl	(%rsi), %eax
	testl	%eax, %eax
	jne	LBB63_6
	movl	$5381, %eax
	jmp	LBB63_9
LBB63_6:
	xorl	$177573, %eax
	movq	-48(%rbp), %rsi
	movb	1(%rsi), %cl
	testb	%cl, %cl
	je	LBB63_9
	movq	-48(%rbp), %rsi
	leaq	2(%rsi), %r14
	.align	4, 0x90
LBB63_8:
	movsbl	%cl, %ecx
	imull	$33, %eax, %eax
	xorl	%ecx, %eax
	movb	(%r14), %cl
	incq	%r14
	testb	%cl, %cl
	jne	LBB63_8
LBB63_9:
	movslq	%eax, %rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx, %r14
	shlq	$4, %r14
	movq	(%rbx,%r14), %rax
	testq	%rax, %rax
	je	LBB63_1
	movq	8(%rbx,%r14), %rbx
	movq	%rbx, -56(%rbp)
	leaq	8(%rax), %r15
	leaq	16(%rax), %r12
	movq	$-1, %r13
	jmp	LBB63_12
	.align	4, 0x90
LBB63_11:
	leaq	24(%rbx), %r15
	leaq	24(%r14), %r12
	movq	-16(%r14), %rdi
	movq	-48(%rbp), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB63_2
LBB63_12:
	movq	%r15, %rbx
	movq	%r12, %r14
	incq	%r13
	cmpq	%r13, -56(%rbp)
	ja	LBB63_11
	jmp	LBB63_1
Leh_func_end63:

	.globl	_scope_self
	.align	4, 0x90
_scope_self:
Leh_func_begin64:
	pushq	%rbp
Ltmp138:
	movq	%rsp, %rbp
Ltmp139:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp140:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	jne	LBB64_3
LBB64_1:
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	leaq	8(%rbx), %r14
LBB64_2:
	movq	(%rbx), %rax
	movq	(%r14), %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB64_3:
	movq	_scope_stack@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	decq	%rcx
	shlq	$5, %rcx
	movq	%rbx, %r14
	addq	%rcx, %r14
	je	LBB64_1
	movq	(%rbx,%rcx), %r14
	testq	%r14, %r14
	je	LBB64_1
	movl	$2088335225, %eax
	xorl	%edx, %edx
	divq	8(%rbx,%rcx)
	movq	%rdx, %rbx
	shlq	$4, %rbx
	movq	(%r14,%rbx), %rbx
	testq	%rbx, %rbx
	je	LBB64_1
	shlq	$4, %rdx
	movq	8(%r14,%rdx), %r14
	movq	%r14, -48(%rbp)
	leaq	8(%rbx), %r15
	leaq	16(%rbx), %r12
	movq	$-1, %r13
	jmp	LBB64_8
	.align	4, 0x90
LBB64_7:
	leaq	24(%rbx), %r15
	leaq	24(%r14), %r12
	movq	-16(%r14), %rdi
	leaq	L_.str3(%rip), %rax
	movq	%rax, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB64_2
LBB64_8:
	movq	%r15, %rbx
	movq	%r12, %r14
	incq	%r13
	cmpq	%r13, -48(%rbp)
	ja	LBB64_7
	jmp	LBB64_1
Leh_func_end64:

	.globl	_scope_get
	.align	4, 0x90
_scope_get:
Leh_func_begin65:
	pushq	%rbp
Ltmp141:
	movq	%rsp, %rbp
Ltmp142:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	%rdi, %rsi
	jne	LBB65_2
	xorl	%edi, %edi
	jmp	LBB65_3
LBB65_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB65_3:
	callq	_minihash_get
	popq	%rbp
	ret
Leh_func_end65:

	.globl	_smpObject_varcall
	.align	4, 0x90
_smpObject_varcall:
Leh_func_begin66:
	pushq	%rbp
Ltmp143:
	movq	%rsp, %rbp
Ltmp144:
	movq	_smpType_id_class@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	jne	LBB66_2
	movq	56(%rsi), %rsi
LBB66_2:
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	_minihash_get
	popq	%rbp
	ret
Leh_func_end66:

	.globl	_smp_getclass
	.align	4, 0x90
_smp_getclass:
Leh_func_begin67:
	pushq	%rbp
Ltmp145:
	movq	%rsp, %rbp
Ltmp146:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	%rdi, %rsi
	jne	LBB67_2
	xorl	%edi, %edi
	jmp	LBB67_3
LBB67_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB67_3:
	callq	_minihash_get
	popq	%rbp
	ret
Leh_func_end67:

	.globl	_smpCollection_create_class
	.align	4, 0x90
_smpCollection_create_class:
Leh_func_begin68:
	pushq	%rbp
Ltmp147:
	movq	%rsp, %rbp
Ltmp148:
	xorl	%eax, %eax
	popq	%rbp
	ret
Leh_func_end68:

	.globl	_smpObject_type
	.align	4, 0x90
_smpObject_type:
Leh_func_begin69:
	pushq	%rbp
Ltmp149:
	movq	%rsp, %rbp
Ltmp150:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	(%rdi), %r8
	jne	LBB69_2
	xorl	%edi, %edi
	jmp	LBB69_3
LBB69_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB69_3:
	movq	%r8, %rsi
	callq	_minihash_get
	popq	%rbp
	ret
Leh_func_end69:

	.globl	_smpObject_getclass
	.align	4, 0x90
_smpObject_getclass:
Leh_func_begin70:
	pushq	%rbp
Ltmp151:
	movq	%rsp, %rbp
Ltmp152:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	(%rdi), %r8
	jne	LBB70_2
	xorl	%edi, %edi
	jmp	LBB70_3
LBB70_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB70_3:
	movq	%r8, %rsi
	callq	_minihash_get
	popq	%rbp
	ret
Leh_func_end70:

	.globl	_smpPair_set_cdr_now
	.align	4, 0x90
_smpPair_set_cdr_now:
Leh_func_begin71:
	pushq	%rbp
Ltmp153:
	movq	%rsp, %rbp
Ltmp154:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp155:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %r8
	cmpl	%eax, 8(%r8)
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jne	LBB71_2
	movq	$0, 16(%rbx)
	jmp	LBB71_5
LBB71_2:
	movq	%rcx, %r15
	movq	16(%rbx), %rax
	testq	%rax, %rax
	jne	LBB71_4
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, 16(%rbx)
	movq	(%r15), %r8
LBB71_4:
	movq	%r8, (%rax)
	movq	8(%r15), %rcx
	movq	%rcx, 8(%rax)
LBB71_5:
	movq	%r14, %rax
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end71:

	.globl	_smp_malloc_fun
	.align	4, 0x90
_smp_malloc_fun:
Leh_func_begin72:
	pushq	%rbp
Ltmp156:
	movq	%rsp, %rbp
Ltmp157:
	popq	%rbp
	jmp	_GC_malloc  # TAILCALL
Leh_func_end72:

	.globl	_obj_init_str
	.align	4, 0x90
_obj_init_str:
Leh_func_begin73:
	pushq	%rbp
Ltmp158:
	movq	%rsp, %rbp
Ltmp159:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp160:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, 8(%r14)
	movq	%rbx, %rdi
	callq	_strlen
	movq	%rax, %r15
	leaq	1(%r15), %rdi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_strcpy
	movq	8(%r14), %rax
	movq	%r12, (%rax)
	movq	%r15, 8(%rax)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end73:

	.globl	_smpString_clear
	.align	4, 0x90
_smpString_clear:
Leh_func_begin74:
	pushq	%rbp
Ltmp161:
	movq	%rsp, %rbp
Ltmp162:
	pushq	%rbx
	subq	$8, %rsp
Ltmp163:
	movq	%rsi, %rbx
	movq	(%rbx), %rdi
	callq	_GC_free
	movq	$0, 8(%rbx)
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end74:

	.globl	_smpregmatch_clear
	.align	4, 0x90
_smpregmatch_clear:
Leh_func_begin75:
	pushq	%rbp
Ltmp164:
	movq	%rsp, %rbp
Ltmp165:
	movq	(%rsi), %rdi
	callq	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end75:

	.globl	_smpPair_clear
	.align	4, 0x90
_smpPair_clear:
Leh_func_begin76:
	pushq	%rbp
Ltmp166:
	movq	%rsp, %rbp
Ltmp167:
	movq	16(%rsi), %rdi
	callq	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end76:

	.globl	_smpHash_core_clear
	.align	4, 0x90
_smpHash_core_clear:
Leh_func_begin77:
	pushq	%rbp
Ltmp168:
	movq	%rsp, %rbp
Ltmp169:
	movq	(%rdi), %rdi
	callq	_GC_free
	xorl	%eax, %eax
	popq	%rbp
	ret
Leh_func_end77:

	.globl	_smpHash_clear
	.align	4, 0x90
_smpHash_clear:
Leh_func_begin78:
	pushq	%rbp
Ltmp170:
	movq	%rsp, %rbp
Ltmp171:
	movq	(%rsi), %rdi
	callq	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end78:

	.globl	_smpFunction_clear
	.align	4, 0x90
_smpFunction_clear:
Leh_func_begin79:
	pushq	%rbp
Ltmp172:
	movq	%rsp, %rbp
Ltmp173:
	pushq	%rbx
	subq	$8, %rsp
Ltmp174:
	movq	%rsi, %rbx
	movq	8(%rbx), %rdi
	callq	_GC_free
	movq	16(%rbx), %rdi
	callq	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end79:

	.globl	_smpTypeError_clear
	.align	4, 0x90
_smpTypeError_clear:
Leh_func_begin80:
	pushq	%rbp
Ltmp175:
	movq	%rsp, %rbp
Ltmp176:
	movq	(%rsi), %rdi
	callq	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end80:

	.globl	_smpException_clear
	.align	4, 0x90
_smpException_clear:
Leh_func_begin81:
	pushq	%rbp
Ltmp177:
	movq	%rsp, %rbp
Ltmp178:
	movq	(%rsi), %rdi
	callq	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end81:

	.globl	_smpArray_clear
	.align	4, 0x90
_smpArray_clear:
Leh_func_begin82:
	pushq	%rbp
Ltmp179:
	movq	%rsp, %rbp
Ltmp180:
	movq	$0, 8(%rsi)
	movq	(%rsi), %rdi
	callq	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end82:

	.globl	_smp_free_size
	.align	4, 0x90
_smp_free_size:
Leh_func_begin83:
	pushq	%rbp
Ltmp181:
	movq	%rsp, %rbp
Ltmp182:
	popq	%rbp
	jmp	_GC_free  # TAILCALL
Leh_func_end83:

	.globl	_minihash_clear
	.align	4, 0x90
_minihash_clear:
Leh_func_begin84:
	pushq	%rbp
Ltmp183:
	movq	%rsp, %rbp
Ltmp184:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp185:
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	LBB84_12
	cmpq	$0, 8(%rbx)
	je	LBB84_11
	xorl	%r14d, %r14d
	movq	%r14, %r15
	.align	4, 0x90
LBB84_3:
	movq	(%rax,%r14), %rdi
	testq	%rdi, %rdi
	je	LBB84_10
	cmpq	$0, 8(%rax,%r14)
	je	LBB84_9
	xorl	%r12d, %r12d
	movq	%r12, %r13
	.align	4, 0x90
LBB84_6:
	cmpq	$0, (%rdi,%r12)
	je	LBB84_8
	movq	(%rax,%r14), %rax
	movq	(%rax,%r12), %rdi
	callq	_GC_free
LBB84_8:
	incq	%r13
	addq	$24, %r12
	movq	(%rbx), %rax
	cmpq	%r13, 8(%rax,%r14)
	movq	(%rax,%r14), %rdi
	ja	LBB84_6
LBB84_9:
	callq	_GC_free
	movq	(%rbx), %rax
	movq	$0, 8(%rax,%r14)
LBB84_10:
	incq	%r15
	addq	$16, %r14
	cmpq	%r15, 8(%rbx)
	movq	(%rbx), %rax
	ja	LBB84_3
LBB84_11:
	movq	%rax, %rdi
	callq	_GC_free
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 8(%rbx)
LBB84_12:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end84:

	.globl	_smpType_clear
	.align	4, 0x90
_smpType_clear:
Leh_func_begin85:
	pushq	%rbp
Ltmp186:
	movq	%rsp, %rbp
Ltmp187:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp188:
	movq	40(%rsi), %rbx
	movq	32(%rsi), %r14
	movq	(%rsi), %r15
	movq	16(%rsi), %r12
	movq	56(%rsi), %r13
	movq	48(%rsi), %rdi
	callq	_minihash_clear
	movq	%r13, %rdi
	callq	_minihash_clear
	movq	%r15, %rdi
	callq	_GC_free
	movq	%r12, %rdi
	callq	_GC_free
	movq	%r14, %rdi
	callq	_minihash_clear
	movq	%rbx, %rdi
	callq	_minihash_clear
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end85:

	.globl	_scope_clear
	.align	4, 0x90
_scope_clear:
Leh_func_begin86:
	pushq	%rbp
Ltmp189:
	movq	%rsp, %rbp
Ltmp190:
	pushq	%r14
	pushq	%rbx
Ltmp191:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
	callq	_minihash_clear
	movq	(%rbx), %rax
	cmpq	$1, %rax
	jbe	LBB86_3
	movq	_scope_stack@GOTPCREL(%rip), %rbx
	movq	_scope_length@GOTPCREL(%rip), %r14
	.align	4, 0x90
LBB86_2:
	movq	(%rbx), %rcx
	leaq	-1(%rax), %rdx
	movq	%rdx, (%r14)
	shlq	$5, %rax
	leaq	-64(%rax,%rcx), %rdi
	callq	_minihash_clear
	movq	(%r14), %rax
	cmpq	$1, %rax
	ja	LBB86_2
LBB86_3:
	decq	%rax
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end86:

	.globl	_scope_pop
	.align	4, 0x90
_scope_pop:
Leh_func_begin87:
	pushq	%rbp
Ltmp192:
	movq	%rsp, %rbp
Ltmp193:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	decq	%rdi
	movq	%rdi, (%rcx)
	shlq	$5, %rdi
	addq	%rax, %rdi
	callq	_minihash_clear
	xorl	%eax, %eax
	popq	%rbp
	ret
Leh_func_end87:

	.globl	_smpArray_resize
	.align	4, 0x90
_smpArray_resize:
Leh_func_begin88:
	pushq	%rbp
Ltmp194:
	movq	%rsp, %rbp
Ltmp195:
	pushq	%rbx
	subq	$8, %rsp
Ltmp196:
	cmpq	$5, %rsi
	jb	LBB88_3
	leaq	-1(%rsi), %rax
	testq	%rsi, %rax
	jne	LBB88_3
	movq	%rdi, %rbx
	movq	%rsi, %rax
	shrq	%rax
	orq	%rsi, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	orq	%rcx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	incq	%rsi
	movq	(%rbx), %rdi
	callq	_GC_realloc
	movq	%rax, (%rbx)
	movl	$1, %eax
	jmp	LBB88_4
LBB88_3:
	xorl	%eax, %eax
LBB88_4:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end88:

	.globl	_smpArray_add_now
	.align	4, 0x90
_smpArray_add_now:
Leh_func_begin89:
	pushq	%rbp
Ltmp197:
	movq	%rsp, %rbp
Ltmp198:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp199:
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movq	8(%rsi), %r15
	leaq	1(%r15), %rax
	movq	%rax, 8(%rsi)
	movq	%rax, %rcx
	shlq	$4, %rcx
	cmpq	$5, %rcx
	movq	%rsi, %r12
	jb	LBB89_3
	leaq	-1(%rcx), %rdx
	testq	%rcx, %rdx
	jne	LBB89_3
	shlq	$3, %rax
	movabsq	$9223372036854775800, %rdx
	andq	%rax, %rdx
	orq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	orq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$4, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$8, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rsi
	shrq	$32, %rsi
	orq	%rcx, %rsi
	incq	%rsi
	movq	(%r12), %rdi
	callq	_GC_realloc
	movq	%rax, (%r12)
LBB89_3:
	movq	%r14, %rax
	movq	(%rbx), %rcx
	movq	(%r12), %rdx
	shlq	$4, %r15
	movq	%rcx, (%rdx,%r15)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rdx,%r15)
	movq	%r12, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end89:

	.globl	_smp_realloc_size
	.align	4, 0x90
_smp_realloc_size:
Leh_func_begin90:
	pushq	%rbp
Ltmp200:
	movq	%rsp, %rbp
Ltmp201:
	movq	%rdx, %rsi
	popq	%rbp
	jmp	_GC_realloc  # TAILCALL
Leh_func_end90:

	.globl	_miniarray_push
	.align	4, 0x90
_miniarray_push:
Leh_func_begin91:
	pushq	%rbp
Ltmp202:
	movq	%rsp, %rbp
Ltmp203:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp204:
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	movq	%rdi, -48(%rbp)
	je	LBB91_2
	movq	-48(%rbp), %rax
	movq	8(%rax), %r14
	jmp	LBB91_3
LBB91_2:
	movl	$48, %edi
	callq	_GC_malloc
	movq	-48(%rbp), %rbx
	movq	%rax, (%rbx)
	movq	$0, 8(%rbx)
	xorl	%r14d, %r14d
	movq	%rax, %rbx
LBB91_3:
	leaq	16(%rbx), %r15
	movq	$-1, %r12
	.align	4, 0x90
LBB91_4:
	movq	%r15, %r13
	incq	%r12
	cmpq	%r12, %r14
	jbe	LBB91_8
	leaq	24(%r13), %r15
	movq	-16(%r13), %rdi
	leaq	16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB91_4
	leaq	16(%rbp), %rbx
	movq	8(%rbx), %r14
	movq	%r14, -8(%r13)
	movq	16(%rbx), %rbx
	movq	%rbx, (%r13)
LBB91_7:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB91_8:
	cmpq	$-1, %r14
	je	LBB91_12
	movq	%r14, %rax
	incq	%rax
	je	LBB91_12
	testq	%r14, %rax
	jne	LBB91_12
	movq	%rax, %r14
	shrq	%r14
	orq	%rax, %r14
	movq	%r14, %rax
	shrq	$2, %rax
	orq	%r14, %rax
	movq	%rax, %r14
	shrq	$4, %r14
	orq	%rax, %r14
	movq	%r14, %rax
	shrq	$8, %rax
	orq	%r14, %rax
	movq	%rax, %r14
	shrq	$16, %r14
	orq	%rax, %r14
	movq	%r14, %rax
	shrq	$32, %rax
	orq	%r14, %rax
	leaq	(%rax,%rax,2), %r14
	leaq	24(,%r14,8), %rsi
	movq	%rbx, %rdi
	callq	_GC_realloc
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	8(%rdi), %r14
	movq	%rax, %rbx
LBB91_12:
	leaq	16(%rbp), %rax
	movq	(%rax), %rcx
	leaq	(%r14,%r14,2), %rdx
	movq	%rcx, (%rbx,%rdx,8)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rbx,%rdx,8)
	movq	16(%rax), %rax
	movq	%rax, 16(%rbx,%rdx,8)
	incq	%r14
	movq	-48(%rbp), %rdi
	movq	%r14, 8(%rdi)
	jmp	LBB91_7
Leh_func_end91:

	.globl	_smpHash_core_init_capacity
	.align	4, 0x90
_smpHash_core_init_capacity:
Leh_func_begin92:
	pushq	%rbp
Ltmp205:
	movq	%rsp, %rbp
Ltmp206:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp207:
	movq	%rdi, %rbx
	cmpq	$10, %rsi
	movl	$10, %r14d
	cmovaeq	%rsi, %r14
	movq	%r14, %r15
	shlq	$4, %r15
	movq	%r15, %rdi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	___bzero
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%r12, (%rbx)
	movq	%rcx, 8(%rbx)
	movq	%rax, 16(%rbx)
	movq	%r14, 24(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 40(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end92:

	.globl	_minihash_init_capacity
	.align	4, 0x90
_minihash_init_capacity:
Leh_func_begin93:
	pushq	%rbp
Ltmp208:
	movq	%rsp, %rbp
Ltmp209:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp210:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %r15
	shlq	$4, %r15
	movq	%r15, %rdi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	___bzero
	movq	%r12, (%r14)
	movq	%rbx, 8(%r14)
	movq	$0, 16(%r14)
	movq	$0, 24(%r14)
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end93:

	.globl	_minihash_init
	.align	4, 0x90
_minihash_init:
Leh_func_begin94:
	pushq	%rbp
Ltmp211:
	movq	%rsp, %rbp
Ltmp212:
	pushq	%r14
	pushq	%rbx
Ltmp213:
	movq	%rdi, %rbx
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	%r14, (%rbx)
	movq	$10, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end94:

	.globl	_scope_init
	.align	4, 0x90
_scope_init:
Leh_func_begin95:
	pushq	%rbp
Ltmp214:
	movq	%rsp, %rbp
Ltmp215:
	pushq	%r14
	pushq	%rbx
Ltmp216:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	movl	$256, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	%rbx, (%rax)
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	%r14, (%rbx)
	movq	$10, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	_scope_classes@GOTPCREL(%rip), %rax
	movq	%rbx, (%rax)
	movq	$10, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end95:

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI96_0:
	.quad	4985484787500187648
LCPI96_1:
	.quad	4604930618986332160
LCPI96_2:
	.quad	4616189618054758400
LCPI96_3:
	.quad	4890909195324358656
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_minihash_add
	.align	4, 0x90
_minihash_add:
Leh_func_begin96:
	pushq	%rbp
Ltmp217:
	movq	%rsp, %rbp
Ltmp218:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
Ltmp219:
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	cmpq	$0, (%rdi)
	movq	%rdi, -104(%rbp)
	jne	LBB96_2
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r12, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	-104(%rbp), %rdi
	movq	%r12, (%rdi)
	movq	$10, 8(%rdi)
	movq	$0, 16(%rdi)
	movq	$0, 24(%rdi)
LBB96_2:
	movsbl	(%r15), %eax
	testl	%eax, %eax
	jne	LBB96_4
	movl	$5381, %eax
	jmp	LBB96_7
LBB96_4:
	xorl	$177573, %eax
	movb	1(%r15), %cl
	testb	%cl, %cl
	je	LBB96_7
	leaq	2(%r15), %rdx
	.align	4, 0x90
LBB96_6:
	movsbl	%cl, %ecx
	imull	$33, %eax, %eax
	xorl	%ecx, %eax
	movb	(%rdx), %cl
	incq	%rdx
	testb	%cl, %cl
	jne	LBB96_6
LBB96_7:
	movslq	%eax, %rax
	xorl	%edx, %edx
	movq	-104(%rbp), %r12
	divq	8(%r12)
	movq	%rdx, %r13
	movq	%r15, %rdi
	callq	_strlen
	leaq	1(%rax), %rdi
	callq	_GC_malloc
	movq	%rax, -64(%rbp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	_strcpy
	movq	%r14, -56(%rbp)
	movq	%rbx, -48(%rbp)
	movslq	%r13d, %rax
	shlq	$4, %rax
	movq	(%r12), %rdi
	cmpq	$0, (%rdi,%rax)
	jne	LBB96_9
	movq	%r12, %rcx
	incq	16(%rcx)
LBB96_9:
	movq	-48(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	%rsi, 8(%rsp)
	movq	%rcx, (%rsp)
	addq	%rax, %rdi
	callq	_miniarray_push
	movq	-104(%rbp), %rdi
	incq	24(%rdi)
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rdx
	shrq	$32, %rdx
	movabsq	$4985484787499139072, %rsi
	addq	%rsi, %rdx
	movd	%rdx, %xmm0
	subsd	LCPI96_0(%rip), %xmm0
	movl	%eax, %eax
	movabsq	$4841369599423283200, %rdx
	addq	%rdx, %rax
	movd	%rax, %xmm1
	addsd	%xmm0, %xmm1
	ucomisd	LCPI96_1(%rip), %xmm1
	jbe	LBB96_18
	movq	%rcx, %rax
	shrq	$32, %rax
	addq	%rsi, %rax
	movd	%rax, %xmm0
	subsd	LCPI96_0(%rip), %xmm0
	movl	%ecx, %eax
	addq	%rdx, %rax
	movd	%rax, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	LCPI96_1(%rip), %xmm1
	mulsd	LCPI96_2(%rip), %xmm1
	movsd	LCPI96_3(%rip), %xmm0
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	cvttsd2siq	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx
	xorq	%rax, %rcx
	ucomisd	%xmm0, %xmm1
	cvttsd2siq	%xmm1, %rbx
	cmovaeq	%rcx, %rbx
	movq	%rbx, %r14
	shlq	$4, %r14
	movq	%r14, %rdi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	___bzero
	movq	%r15, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	-104(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	LBB96_17
	xorl	%ebx, %ebx
	leaq	-96(%rbp), %r14
	movq	%rbx, %r15
	.align	4, 0x90
LBB96_12:
	movq	-104(%rbp), %rdi
	movq	(%rdi), %rax
	cmpq	$0, (%rax,%rbx)
	je	LBB96_16
	cmpq	$0, 8(%rax,%rbx)
	je	LBB96_16
	xorl	%r12d, %r12d
	movl	$16, %r13d
	.align	4, 0x90
LBB96_15:
	movq	(%rax,%rbx), %rax
	movq	(%rax,%r13), %rcx
	movq	-16(%rax,%r13), %rsi
	movq	-8(%rax,%r13), %rdx
	movq	%r14, %rdi
	callq	_minihash_add
	addq	$24, %r13
	incq	%r12
	movq	-104(%rbp), %rdi
	movq	(%rdi), %rax
	cmpq	%r12, 8(%rax,%rbx)
	ja	LBB96_15
LBB96_16:
	incq	%r15
	addq	$16, %rbx
	movq	-104(%rbp), %rdi
	cmpq	%r15, 8(%rdi)
	ja	LBB96_12
LBB96_17:
	movq	-104(%rbp), %rbx
	movq	%rbx, %rdi
	callq	_minihash_clear
	movq	-96(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rbx)
LBB96_18:
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end96:

	.globl	_minihash_copy
	.align	4, 0x90
_minihash_copy:
Leh_func_begin97:
	pushq	%rbp
Ltmp220:
	movq	%rsp, %rbp
Ltmp221:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp222:
	cmpq	$0, 8(%rsi)
	je	LBB97_7
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	movq	%r15, -48(%rbp)
	.align	4, 0x90
LBB97_2:
	movq	(%rbx), %rax
	cmpq	$0, (%rax,%r15)
	je	LBB97_6
	cmpq	$0, 8(%rax,%r15)
	je	LBB97_6
	xorl	%r12d, %r12d
	movl	$16, %r13d
	.align	4, 0x90
LBB97_5:
	movq	(%rax,%r15), %rax
	movq	(%rax,%r13), %rcx
	movq	-16(%rax,%r13), %rsi
	movq	-8(%rax,%r13), %rdx
	movq	%r14, %rdi
	callq	_minihash_add
	addq	$24, %r13
	incq	%r12
	movq	(%rbx), %rax
	cmpq	%r12, 8(%rax,%r15)
	ja	LBB97_5
LBB97_6:
	movq	-48(%rbp), %rax
	incq	%rax
	movq	%rax, -48(%rbp)
	addq	$16, %r15
	cmpq	%rax, 8(%rbx)
	ja	LBB97_2
LBB97_7:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end97:

	.globl	_scope_add
	.align	4, 0x90
_scope_add:
Leh_func_begin98:
	pushq	%rbp
Ltmp223:
	movq	%rsp, %rbp
Ltmp224:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	jne	LBB98_2
	xorl	%edi, %edi
	jmp	LBB98_3
LBB98_2:
	movq	_scope_stack@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	shlq	$5, %rax
	leaq	-32(%rax,%rdi), %rdi
LBB98_3:
	callq	_minihash_add
	xorl	%eax, %eax
	popq	%rbp
	ret
Leh_func_end98:

	.globl	_scope_push
	.align	4, 0x90
_scope_push:
Leh_func_begin99:
	pushq	%rbp
Ltmp225:
	movq	%rsp, %rbp
Ltmp226:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp227:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	cmpq	$4, %rbx
	jb	LBB99_4
	testq	%rbx, %rbx
	je	LBB99_4
	leaq	-1(%rbx), %rax
	testq	%rbx, %rax
	jne	LBB99_4
	movq	%rbx, %rax
	shrq	%rax
	orq	%rbx, %rax
	movq	%rax, %rbx
	shrq	$2, %rbx
	orq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$4, %rax
	orq	%rbx, %rax
	movq	%rax, %rbx
	shrq	$8, %rbx
	orq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$16, %rax
	orq	%rbx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	shlq	$5, %rsi
	addq	$32, %rsi
	movq	_scope_stack@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdi
	callq	_GC_realloc
	movq	%rax, (%rbx)
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
LBB99_4:
	movq	_scope_stack@GOTPCREL(%rip), %r14
	movq	(%r14), %r15
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r12, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	%rbx, %r13
	shlq	$5, %r13
	movq	%r12, (%r15,%r13)
	movq	$10, 8(%r15,%r13)
	movq	$0, 16(%r15,%r13)
	movq	$0, 24(%r15,%r13)
	leaq	1(%rbx), %rax
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	decq	%rbx
	shlq	$5, %rbx
	movq	(%r14), %r14
	cmpq	$0, 8(%r14,%rbx)
	je	LBB99_11
	leaq	8(%r14,%rbx), %rax
	movq	%rax, -56(%rbp)
	addq	%r14, %r13
	addq	%rbx, %r14
	xorl	%ebx, %ebx
	movq	%rbx, -48(%rbp)
	.align	4, 0x90
LBB99_6:
	movq	(%r14), %rax
	cmpq	$0, (%rax,%rbx)
	je	LBB99_10
	cmpq	$0, 8(%rax,%rbx)
	je	LBB99_10
	xorl	%r15d, %r15d
	movl	$16, %r12d
	.align	4, 0x90
LBB99_9:
	movq	(%rax,%rbx), %rax
	movq	(%rax,%r12), %rcx
	movq	-16(%rax,%r12), %rsi
	movq	-8(%rax,%r12), %rdx
	movq	%r13, %rdi
	callq	_minihash_add
	addq	$24, %r12
	incq	%r15
	movq	(%r14), %rax
	cmpq	%r15, 8(%rax,%rbx)
	ja	LBB99_9
LBB99_10:
	movq	-48(%rbp), %rax
	incq	%rax
	movq	%rax, -48(%rbp)
	addq	$16, %rbx
	movq	-56(%rbp), %rcx
	cmpq	%rax, (%rcx)
	ja	LBB99_6
LBB99_11:
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end99:

	.globl	_smpFloat_clear
	.align	4, 0x90
_smpFloat_clear:
Leh_func_begin100:
	pushq	%rbp
Ltmp228:
	movq	%rsp, %rbp
Ltmp229:
	movq	%rsi, %rdi
	callq	_mpfr_clear
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end100:

	.globl	_smpInteger_clear
	.align	4, 0x90
_smpInteger_clear:
Leh_func_begin101:
	pushq	%rbp
Ltmp230:
	movq	%rsp, %rbp
Ltmp231:
	movq	%rsi, %rdi
	callq	___gmpz_clear
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	popq	%rbp
	ret
Leh_func_end101:

	.globl	_init_by_array
	.align	4, 0x90
_init_by_array:
Leh_func_begin102:
	pushq	%rbp
Ltmp232:
	movq	%rsp, %rbp
Ltmp233:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp234:
	movl	%esi, %ebx
	movq	%rdi, %r14
	leaq	_sfmt(%rip), %rdi
	movl	$139, %esi
	movl	$2496, %edx
	callq	_memset
	movl	_sfmt(%rip), %eax
	movl	%eax, %ecx
	shrl	$27, %ecx
	xorl	%eax, %ecx
	imull	$1664525, %ecx, %eax
	leal	-1953789045(%rax,%rbx), %ecx
	leal	-1953789045(%rax), %edx
	movl	%edx, _sfmt+1224(%rip)
	movl	%ecx, _sfmt+1268(%rip)
	addl	%ebx, %eax
	movl	%eax, _sfmt(%rip)
	cmpl	$623, %ebx
	movl	$623, %ecx
	cmovgl	%ebx, %ecx
	testl	%ecx, %ecx
	jle	LBB102_2
	testl	%ebx, %ebx
	jg	LBB102_3
LBB102_2:
	movl	$1, %esi
	xorl	%edi, %edi
	jmp	LBB102_6
LBB102_3:
	movl	%ebx, %esi
	negl	%esi
	cmpl	$623, %ebx
	movl	$-623, %r8d
	cmovgl	%esi, %r8d
	cmpl	%esi, %r8d
	movl	%r8d, %edi
	cmovbl	%esi, %edi
	cmovbel	%esi, %r8d
	notl	%r8d
	incq	%r8
	movl	$1, %esi
	movl	$-770891565, %r9d
	leaq	_sfmt(%rip), %r10
	.align	4, 0x90
LBB102_4:
	leal	306(%rsi), %eax
	imull	%r9d
	leal	306(%rdx,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	306(%rsi,%rax), %eax
	movslq	%eax, %r11
	movl	(%r10,%r11,4), %r15d
	movslq	%esi, %rsi
	movl	(%r10,%rsi,4), %r12d
	xorl	%r15d, %r12d
	leal	623(%rsi), %eax
	imull	%r9d
	leal	623(%rdx,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	623(%rsi,%rax), %eax
	movslq	%eax, %rax
	xorl	(%r10,%rax,4), %r12d
	movl	%r12d, %eax
	shrl	$27, %eax
	xorl	%r12d, %eax
	imull	$1664525, %eax, %r12d
	addl	%r12d, %r15d
	movl	%r15d, (%r10,%r11,4)
	leal	317(%rsi), %eax
	imull	%r9d
	leal	317(%rdx,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	317(%rsi,%rax), %r11d
	leal	1(%rsi), %eax
	imull	%r9d
	leal	1(%rdx,%rsi), %eax
	movl	(%r14), %edx
	addl	%esi, %edx
	addl	%r12d, %edx
	movslq	%r11d, %r11
	addl	%edx, (%r10,%r11,4)
	movl	%edx, (%r10,%rsi,4)
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	1(%rsi,%rax), %esi
	addq	$4, %r14
	decq	%r8
	jne	LBB102_4
	negl	%edi
LBB102_6:
	cmpl	%ecx, %edi
	jge	LBB102_9
	cmpl	$623, %ebx
	movl	$623, %ecx
	cmovgl	%ebx, %ecx
	subl	%edi, %ecx
	movl	$-770891565, %edi
	leaq	_sfmt(%rip), %r8
	.align	4, 0x90
LBB102_8:
	leal	306(%rsi), %eax
	imull	%edi
	leal	306(%rdx,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	306(%rsi,%rax), %eax
	movslq	%eax, %r9
	movl	(%r8,%r9,4), %r10d
	movslq	%esi, %rsi
	movl	(%r8,%rsi,4), %r11d
	xorl	%r10d, %r11d
	leal	623(%rsi), %eax
	imull	%edi
	leal	623(%rdx,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	623(%rsi,%rax), %eax
	movslq	%eax, %rax
	xorl	(%r8,%rax,4), %r11d
	movl	%r11d, %eax
	shrl	$27, %eax
	xorl	%r11d, %eax
	imull	$1664525, %eax, %eax
	addl	%eax, %r10d
	movl	%r10d, (%r8,%r9,4)
	movl	%esi, %r9d
	addl	%eax, %r9d
	leal	317(%rsi), %eax
	imull	%edi
	leal	317(%rdx,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	317(%rsi,%rax), %eax
	movslq	%eax, %rax
	addl	%r9d, (%r8,%rax,4)
	movl	%r9d, (%r8,%rsi,4)
	leal	1(%rsi), %eax
	imull	%edi
	leal	1(%rdx,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	1(%rsi,%rax), %esi
	decl	%ecx
	jne	LBB102_8
LBB102_9:
	movl	$624, %edi
	.align	4, 0x90
LBB102_10:
	leal	306(%rsi), %eax
	movl	$-770891565, %ecx
	imull	%ecx
	leal	306(%rdx,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	306(%rsi,%rax), %eax
	movslq	%eax, %r8
	leaq	_sfmt(%rip), %r9
	movl	(%r9,%r8,4), %r10d
	movslq	%esi, %rsi
	movl	(%r9,%rsi,4), %r11d
	addl	%r10d, %r11d
	leal	623(%rsi), %eax
	imull	%ecx
	leal	623(%rdx,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	623(%rsi,%rax), %eax
	movslq	%eax, %rax
	addl	(%r9,%rax,4), %r11d
	movl	%r11d, %eax
	shrl	$27, %eax
	xorl	%r11d, %eax
	imull	$1566083941, %eax, %r11d
	xorl	%r11d, %r10d
	movl	%r10d, (%r9,%r8,4)
	subl	%esi, %r11d
	leal	317(%rsi), %eax
	imull	%ecx
	leal	317(%rdx,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$9, %eax
	addl	%edx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	317(%rsi,%rax), %eax
	movslq	%eax, %rax
	xorl	%r11d, (%r9,%rax,4)
	movl	%r11d, (%r9,%rsi,4)
	leal	1(%rsi), %eax
	imull	%ecx
	leal	1(%rdx,%rsi), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	sarl	$9, %eax
	addl	%ecx, %eax
	imull	$624, %eax, %eax
	negl	%eax
	leal	1(%rsi,%rax), %esi
	decl	%edi
	jne	LBB102_10
	movl	$624, _idx(%rip)
	movl	$331998852, %eax
	andl	_sfmt+12(%rip), %eax
	movl	_sfmt(%rip), %ecx
	movl	%ecx, %edx
	andl	$1, %edx
	addl	%eax, %edx
	shrl	$16, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$8, %edx
	xorl	%eax, %edx
	movl	%edx, %eax
	shrl	$4, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$2, %edx
	xorl	%eax, %edx
	movl	%edx, %eax
	shrl	%eax
	xorl	%edx, %eax
	testb	$1, %al
	jne	LBB102_13
	xorl	$1, %ecx
	movl	%ecx, _sfmt(%rip)
LBB102_13:
	movb	$1, _initialized.b(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end102:

	.globl	_fatal_error
	.align	4, 0x90
_fatal_error:
Leh_func_begin103:
	pushq	%rbp
Ltmp235:
	movq	%rsp, %rbp
Ltmp236:
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
Ltmp237:
	movq	%rdi, %rbx
	testb	%al, %al
	je	LBB103_2
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
LBB103_2:
	movq	%r9, -184(%rbp)
	movq	%r8, -192(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rsi, -216(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$48, -36(%rbp)
	movl	$8, -40(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %r14
	movq	(%r14), %rcx
	leaq	L_.str5(%rip), %rdi
	movl	$1, %esi
	movl	$13, %edx
	callq	_fwrite
	movq	(%r14), %rdi
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rsi
	callq	_vfprintf
	movq	(%r14), %rsi
	movl	$10, %edi
	callq	_fputc
	ud2
Leh_func_end103:

	.globl	_internal_error
	.align	4, 0x90
_internal_error:
Leh_func_begin104:
	pushq	%rbp
Ltmp238:
	movq	%rsp, %rbp
Ltmp239:
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
Ltmp240:
	movq	%rdi, %rbx
	testb	%al, %al
	je	LBB104_2
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
LBB104_2:
	movq	%r9, -184(%rbp)
	movq	%r8, -192(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rsi, -216(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$48, -36(%rbp)
	movl	$8, -40(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %r14
	movq	(%r14), %rcx
	leaq	L_.str6(%rip), %rdi
	movl	$1, %esi
	movl	$16, %edx
	callq	_fwrite
	movq	(%r14), %rdi
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rsi
	callq	_vfprintf
	movq	(%r14), %rsi
	movl	$10, %edi
	callq	_fputc
	ud2
Leh_func_end104:

	.globl	_smpException_init
	.align	4, 0x90
_smpException_init:
Leh_func_begin105:
	pushq	%rbp
Ltmp241:
	movq	%rsp, %rbp
Ltmp242:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp243:
	movq	%rsi, -80(%rbp)
	movq	%rdi, -48(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -88(%rbp)
	leaq	L_.str1(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB105_10
	movq	-48(%rbp), %rdi
	movq	24(%rdi), %rax
	movq	%rax, -56(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str1(%rip), %r14
	jmp	LBB105_8
	.align	4, 0x90
LBB105_2:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB105_10
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB105_6
	.align	4, 0x90
LBB105_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB105_10
	incq	%r13
LBB105_6:
	cmpq	%r13, %r12
	ja	LBB105_4
	incq	%rbx
LBB105_8:
	cmpq	%rbx, -56(%rbp)
	ja	LBB105_2
	leaq	L_.str7(%rip), %rdi
	xorb	%al, %al
	movq	-88(%rbp), %rsi
	callq	_internal_error
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	movq	8(%rax), %rax
	jmp	LBB105_11
LBB105_10:
	movq	-80(%rbp), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	-64(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-72(%rbp), %rcx
	movq	%rcx, 16(%rax)
LBB105_11:
	movq	%rax, %rdx
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end105:

	.globl	_obj_init
	.align	4, 0x90
_obj_init:
Leh_func_begin106:
	pushq	%rbp
Ltmp244:
	movq	%rsp, %rbp
Ltmp245:
	pushq	%r14
	pushq	%rbx
Ltmp246:
	movl	12(%rdi), %eax
	movb	%al, %cl
	shrb	$2, %cl
	andb	$3, %cl
	cmpb	$1, %cl
	movq	%rdi, %rbx
	jne	LBB106_7
	testb	$2, %al
	je	LBB106_6
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	(%rbx), %rbx
	jne	LBB106_4
	xorl	%edi, %edi
	jmp	LBB106_5
LBB106_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB106_5:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str9(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpException_init_fmt
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	_smpThrown_init
	jmp	LBB106_11
LBB106_6:
	orl	$2, %eax
	movl	%eax, 12(%rbx)
LBB106_7:
	testb	$1, %al
	je	LBB106_9
	xorl	%eax, %eax
	jmp	LBB106_10
LBB106_9:
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	movl	$160, %esi
	callq	___bzero
	movl	$32, %edi
	callq	_GC_malloc
	movq	%r14, (%rax)
	movq	$10, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
LBB106_10:
	movq	%rax, %rdx
	movq	%rbx, %rax
LBB106_11:
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end106:

	.globl	_smpException_init_fmt
	.align	4, 0x90
_smpException_init_fmt:
Leh_func_begin107:
	pushq	%rbp
Ltmp247:
	movq	%rsp, %rbp
Ltmp248:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$200, %rsp
Ltmp249:
	movq	%rdx, %rbx
	testb	%al, %al
	je	LBB107_2
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
LBB107_2:
	movq	%r9, -184(%rbp)
	movq	%r8, -192(%rbp)
	movq	%rcx, -200(%rbp)
	callq	_smpException_init
	movq	%rax, %r14
	movq	%rdx, %r15
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$24, -48(%rbp)
	leaq	-48(%rbp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_vasprintf
	movq	%r14, %rax
	movq	%r15, %rdx
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end107:

	.globl	_smpGlobal_throw
	.align	4, 0x90
_smpGlobal_throw:
Leh_func_begin108:
	pushq	%rbp
Ltmp250:
	movq	%rsp, %rbp
Ltmp251:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp252:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB108_2
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r14, (%r15)
	movq	%rbx, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rbx
LBB108_2:
	movq	%r14, %rax
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end108:

	.globl	_smpThrown_init
	.align	4, 0x90
_smpThrown_init:
Leh_func_begin109:
	pushq	%rbp
Ltmp253:
	movq	%rsp, %rbp
Ltmp254:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp255:
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movl	%edi, %r15d
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB109_2
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r14, (%r12)
	movq	%rbx, 8(%r12)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	andq	$15, %r15
	movl	$24, %edi
	callq	_GC_malloc
	movq	%r15, (%rax)
	movq	%r12, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rbx
LBB109_2:
	movq	%r14, %rax
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end109:

	.globl	_smpThrown_add_exception_now
	.align	4, 0x90
_smpThrown_add_exception_now:
Leh_func_begin110:
	pushq	%rbp
Ltmp256:
	movq	%rsp, %rbp
Ltmp257:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp258:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rdi), %rcx
	cmpl	%eax, 8(%rcx)
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	jne	LBB110_4
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB110_3
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r14, (%r12)
	movq	%rbx, 8(%r12)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r12, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rbx
LBB110_3:
	movq	%r14, (%r15)
	movq	%rbx, 8(%r15)
	jmp	LBB110_7
LBB110_4:
	movq	8(%r15), %r15
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB110_6
	movq	8(%rbx), %r14
	movq	16(%rbx), %rbx
	movq	16(%r15), %r12
	leaq	(%r12,%rbx), %rsi
	movq	%rsi, 16(%r15)
	shlq	$4, %rsi
	movq	8(%r15), %rdi
	callq	_GC_realloc
	movq	%rax, 8(%r15)
	shlq	$4, %r12
	movq	%r12, %rdi
	addq	%rax, %rdi
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movq	%r14, %rsi
	callq	_memcpy
	jmp	LBB110_7
LBB110_6:
	movq	16(%r15), %rsi
	incq	%rsi
	movq	%rsi, 16(%r15)
	movq	8(%r15), %rdi
	shlq	$4, %rsi
	callq	_GC_realloc
	movq	%rax, 8(%r15)
	movq	16(%r15), %rcx
	shlq	$4, %rcx
	movq	%r14, -16(%rcx,%rax)
	movq	%rbx, -8(%rcx,%rax)
LBB110_7:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end110:

	.globl	_smpRegex_compile_handle_errors
	.align	4, 0x90
_smpRegex_compile_handle_errors:
Leh_func_begin111:
	pushq	%rbp
Ltmp259:
	movq	%rsp, %rbp
Ltmp260:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp261:
	addl	$-2, %esi
	cmpl	$11, %esi
	ja	LBB111_53
	movq	%rdi, %rbx
	leaq	LJTI111_0(%rip), %rax
	movslq	(%rax,%rsi,4), %rcx
	addq	%rax, %rcx
	jmpq	*%rcx
LBB111_2:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB111_4
	xorl	%edi, %edi
	jmp	LBB111_5
LBB111_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB111_5:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str11(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
LBB111_6:
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB111_54
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
	jmp	LBB111_54
LBB111_8:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB111_10
	xorl	%edi, %edi
	jmp	LBB111_11
LBB111_10:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB111_11:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str12(%rip), %r14
LBB111_12:
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%r14, %rdx
	jmp	LBB111_6
LBB111_13:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB111_15
	xorl	%edi, %edi
	jmp	LBB111_16
LBB111_15:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB111_16:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str13(%rip), %r14
	jmp	LBB111_12
LBB111_17:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB111_19
	xorl	%edi, %edi
	jmp	LBB111_20
LBB111_19:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB111_20:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str14(%rip), %r14
	jmp	LBB111_12
LBB111_21:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB111_23
	xorl	%edi, %edi
	jmp	LBB111_24
LBB111_23:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB111_24:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str15(%rip), %r14
	jmp	LBB111_12
LBB111_25:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB111_27
	xorl	%edi, %edi
	jmp	LBB111_28
LBB111_27:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB111_28:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str16(%rip), %r14
	jmp	LBB111_12
LBB111_29:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB111_31
	xorl	%edi, %edi
	jmp	LBB111_32
LBB111_31:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB111_32:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str17(%rip), %r14
	jmp	LBB111_12
LBB111_33:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB111_35
	xorl	%edi, %edi
	jmp	LBB111_36
LBB111_35:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB111_36:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str18(%rip), %r14
	jmp	LBB111_12
LBB111_37:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB111_39
	xorl	%edi, %edi
	jmp	LBB111_40
LBB111_39:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB111_40:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str19(%rip), %r14
	jmp	LBB111_12
LBB111_41:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB111_43
	xorl	%edi, %edi
	jmp	LBB111_44
LBB111_43:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB111_44:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str20(%rip), %r14
	jmp	LBB111_12
LBB111_45:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB111_47
	xorl	%edi, %edi
	jmp	LBB111_48
LBB111_47:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB111_48:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str21(%rip), %r14
	jmp	LBB111_12
LBB111_49:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB111_51
	xorl	%edi, %edi
	jmp	LBB111_52
LBB111_51:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB111_52:
	leaq	L_.str8(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str22(%rip), %r14
	jmp	LBB111_12
LBB111_53:
	movq	_smp_nil@GOTPCREL(%rip), %r14
	movq	(%r14), %rbx
	movq	8(%r14), %r14
LBB111_54:
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end111:
	.align	2, 0x90
L111_0_set_8 = LBB111_8-LJTI111_0
L111_0_set_17 = LBB111_17-LJTI111_0
L111_0_set_21 = LBB111_21-LJTI111_0
L111_0_set_25 = LBB111_25-LJTI111_0
L111_0_set_29 = LBB111_29-LJTI111_0
L111_0_set_33 = LBB111_33-LJTI111_0
L111_0_set_37 = LBB111_37-LJTI111_0
L111_0_set_41 = LBB111_41-LJTI111_0
L111_0_set_2 = LBB111_2-LJTI111_0
L111_0_set_45 = LBB111_45-LJTI111_0
L111_0_set_49 = LBB111_49-LJTI111_0
L111_0_set_13 = LBB111_13-LJTI111_0
LJTI111_0:
	.long	L111_0_set_8
	.long	L111_0_set_17
	.long	L111_0_set_21
	.long	L111_0_set_25
	.long	L111_0_set_29
	.long	L111_0_set_33
	.long	L111_0_set_37
	.long	L111_0_set_41
	.long	L111_0_set_2
	.long	L111_0_set_45
	.long	L111_0_set_49
	.long	L111_0_set_13

	.globl	_smpRegex_compile_str_flags
	.align	4, 0x90
_smpRegex_compile_str_flags:
Leh_func_begin112:
	pushq	%rbp
Ltmp262:
	movq	%rsp, %rbp
Ltmp263:
	pushq	%rbx
	subq	$8, %rsp
Ltmp264:
	movq	%rsi, %rbx
	movq	%rbx, %rsi
	callq	_regcomp
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_smpRegex_compile_handle_errors
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end112:

	.globl	_smpRegex_compile_str
	.align	4, 0x90
_smpRegex_compile_str:
Leh_func_begin113:
	pushq	%rbp
Ltmp265:
	movq	%rsp, %rbp
Ltmp266:
	pushq	%rbx
	subq	$8, %rsp
Ltmp267:
	movq	%rsi, %rbx
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	_regcomp
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_smpRegex_compile_handle_errors
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end113:

	.globl	_smpRegex_compile_flags
	.align	4, 0x90
_smpRegex_compile_flags:
Leh_func_begin114:
	pushq	%rbp
Ltmp268:
	movq	%rsp, %rbp
Ltmp269:
	pushq	%rbx
	subq	$8, %rsp
Ltmp270:
	movq	(%rdx), %rbx
	movq	%rbx, %rsi
	movl	%ecx, %edx
	callq	_regcomp
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_smpRegex_compile_handle_errors
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end114:

	.globl	_smpRegex_compile
	.align	4, 0x90
_smpRegex_compile:
Leh_func_begin115:
	pushq	%rbp
Ltmp271:
	movq	%rsp, %rbp
Ltmp272:
	pushq	%rbx
	subq	$8, %rsp
Ltmp273:
	movq	(%rdx), %rbx
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	_regcomp
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_smpRegex_compile_handle_errors
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end115:

	.globl	_smpList_at_assign_c
	.align	4, 0x90
_smpList_at_assign_c:
Leh_func_begin116:
	pushq	%rbp
Ltmp274:
	movq	%rsp, %rbp
Ltmp275:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Ltmp276:
	movq	%rdx, %rbx
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-40(%rbp), %rsi
	movq	$-1, %rdi
	movq	%r8, %rdx
	movq	%rcx, %rax
	jmp	LBB116_3
	.align	4, 0x90
LBB116_1:
	incq	%rdi
	cmpq	%rbx, %rdi
	jae	LBB116_10
	movq	8(%rsi), %rsi
	movq	16(%rsi), %rsi
LBB116_3:
	testq	%rsi, %rsi
	jne	LBB116_1
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB116_6
	xorl	%edi, %edi
	jmp	LBB116_7
LBB116_6:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB116_7:
	leaq	L_.str23(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str24(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB116_9
	movq	%rbx, %rax
	movq	%r14, %rdx
	jmp	LBB116_10
LBB116_9:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
LBB116_10:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end116:

	.globl	_smpList_at_c
	.align	4, 0x90
_smpList_at_c:
Leh_func_begin117:
	pushq	%rbp
Ltmp277:
	movq	%rsp, %rbp
Ltmp278:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Ltmp279:
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-40(%rbp), %rax
	movq	$-1, %rcx
	movq	%rdx, %rbx
	jmp	LBB117_4
LBB117_2:
	movq	(%rax), %rbx
	movq	8(%rax), %r14
	jmp	LBB117_10
	.align	4, 0x90
LBB117_1:
	incq	%rcx
	cmpq	%rbx, %rcx
	movq	8(%rax), %rax
	jae	LBB117_2
	movq	16(%rax), %rax
LBB117_4:
	testq	%rax, %rax
	jne	LBB117_1
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB117_7
	xorl	%edi, %edi
	jmp	LBB117_8
LBB117_7:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB117_8:
	leaq	L_.str23(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str24(%rip), %r14
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB117_10
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
LBB117_10:
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end117:

	.globl	_smpInteger_to_clong
	.align	4, 0x90
_smpInteger_to_clong:
Leh_func_begin118:
	pushq	%rbp
Ltmp280:
	movq	%rsp, %rbp
Ltmp281:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp282:
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	___gmpz_fits_slong_p
	testl	%eax, %eax
	jne	LBB118_7
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB118_3
	xorl	%edi, %edi
	jmp	LBB118_4
LBB118_3:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB118_4:
	leaq	L_.str23(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str24(%rip), %rbx
	movq	_index@GOTPCREL(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r15
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB118_6
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%rbx, (%r12)
	movq	%r15, 8(%r12)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r12, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
LBB118_6:
	movq	%rbx, (%r14)
	movq	%r15, 8(%r14)
	movabsq	$9223372036854775807, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB118_7:
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	___gmpz_get_si  # TAILCALL
Leh_func_end118:

	.globl	_smpHash_containsp
	.align	4, 0x90
_smpHash_containsp:
Leh_func_begin119:
	pushq	%rbp
Ltmp283:
	movq	%rsp, %rbp
Ltmp284:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp285:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB119_2
	xorl	%edi, %edi
	jmp	LBB119_3
LBB119_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB119_3:
	leaq	L_.str25(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str26(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB119_5
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
LBB119_5:
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end119:

	.globl	_smpGlobal_throw_arg
	.align	4, 0x90
_smpGlobal_throw_arg:
Leh_func_begin120:
	pushq	%rbp
Ltmp286:
	movq	%rsp, %rbp
Ltmp287:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp288:
	movq	(%rcx), %rbx
	movq	8(%rcx), %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB120_2
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
LBB120_2:
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end120:

	.globl	_smpGlobal_catch_arg
	.align	4, 0x90
_smpGlobal_catch_arg:
Leh_func_begin121:
	pushq	%rbp
Ltmp289:
	movq	%rsp, %rbp
Ltmp290:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp291:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB121_2
	xorl	%edi, %edi
	jmp	LBB121_3
LBB121_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB121_3:
	leaq	L_.str25(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str27(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB121_5
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
LBB121_5:
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end121:

	.globl	_smpArray_get_c
	.align	4, 0x90
_smpArray_get_c:
Leh_func_begin122:
	pushq	%rbp
Ltmp292:
	movq	%rsp, %rbp
Ltmp293:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp294:
	cmpq	%rdx, 8(%rsi)
	movq	%rdx, %rbx
	jbe	LBB122_2
	shlq	$4, %rbx
	movq	(%rsi), %rax
	movq	(%rax,%rbx), %r14
	movq	8(%rax,%rbx), %rbx
	jmp	LBB122_7
LBB122_2:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB122_4
	xorl	%edi, %edi
	jmp	LBB122_5
LBB122_4:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB122_5:
	leaq	L_.str23(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str28(%rip), %r14
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %r14
	movq	%rdx, %rbx
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB122_7
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r14, (%r15)
	movq	%rbx, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rbx
LBB122_7:
	movq	%r14, %rax
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end122:

	.globl	_smpArray_at_assign_c
	.align	4, 0x90
_smpArray_at_assign_c:
Leh_func_begin123:
	pushq	%rbp
Ltmp295:
	movq	%rsp, %rbp
Ltmp296:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp297:
	cmpq	%rdx, 8(%rsi)
	movq	%rdx, %rbx
	ja	LBB123_6
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB123_3
	xorl	%edi, %edi
	jmp	LBB123_4
LBB123_3:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB123_4:
	leaq	L_.str23(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str24(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB123_7
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
	jmp	LBB123_7
LBB123_6:
	movq	(%rsi), %r14
	shlq	$4, %rbx
	movq	%rcx, (%r14,%rbx)
	movq	%r8, 8(%r14,%rbx)
	movq	%rcx, %rbx
	movq	%r8, %r14
LBB123_7:
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end123:

	.globl	_smpArray_at_c
	.align	4, 0x90
_smpArray_at_c:
Leh_func_begin124:
	pushq	%rbp
Ltmp298:
	movq	%rsp, %rbp
Ltmp299:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp300:
	cmpq	%rdx, 8(%rsi)
	movq	%rdx, %rbx
	ja	LBB124_6
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB124_3
	xorl	%edi, %edi
	jmp	LBB124_4
LBB124_3:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB124_4:
	leaq	L_.str23(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str24(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %r14
	movq	%rdx, %rbx
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB124_7
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r14, (%r15)
	movq	%rbx, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rbx
	jmp	LBB124_7
LBB124_6:
	shlq	$4, %rbx
	movq	(%rsi), %rax
	movq	(%rax,%rbx), %r14
	movq	8(%rax,%rbx), %rbx
LBB124_7:
	movq	%r14, %rax
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end124:

	.globl	_smpObject_eq
	.align	4, 0x90
_smpObject_eq:
Leh_func_begin125:
	pushq	%rbp
Ltmp301:
	movq	%rsp, %rbp
Ltmp302:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp303:
	cmpl	$1, %edx
	jne	LBB125_2
	movq	8(%rcx), %rax
	cmpq	%rsi, %rax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rdi
	cmoveq	%rcx, %rdi
	addq	$8, %rdx
	addq	$8, %rcx
	cmpq	%rsi, %rax
	movq	(%rdi), %rbx
	cmovneq	%rdx, %rcx
	movq	(%rcx), %r14
	jmp	LBB125_7
LBB125_2:
	movl	%edx, %ebx
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB125_4
	xorl	%edi, %edi
	jmp	LBB125_5
LBB125_4:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB125_5:
	leaq	L_.str29(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str30(%rip), %r14
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB125_7
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
LBB125_7:
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end125:

	.globl	_smpSymbol_init
	.align	4, 0x90
_smpSymbol_init:
Leh_func_begin126:
	pushq	%rbp
Ltmp304:
	movq	%rsp, %rbp
Ltmp305:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp306:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	%rdi, %rbx
	jne	LBB126_2
	xorl	%edi, %edi
	jmp	LBB126_3
LBB126_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB126_3:
	leaq	L_.str31(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %r14
	movq	%rax, %r15
	jne	LBB126_5
	testb	$15, (%r14)
	je	LBB126_6
LBB126_5:
	movq	%rbx, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_strcpy
	movq	%r13, (%r14)
	movq	%r12, 8(%r14)
LBB126_6:
	movq	%r15, %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end126:

	.globl	_smpString_reverse
	.align	4, 0x90
_smpString_reverse:
Leh_func_begin127:
	pushq	%rbp
Ltmp307:
	movq	%rsp, %rbp
Ltmp308:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp309:
	movq	(%rsi), %rbx
	movq	%rbx, %rdi
	callq	_strlen
	leaq	1(%rax), %rdi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_strlen
	movq	%rax, %rcx
	decq	%rcx
	js	LBB127_3
	leaq	-1(%rax,%rbx), %rax
	movq	%r14, %rcx
	.align	4, 0x90
LBB127_2:
	movb	(%rax), %dl
	movb	%dl, (%rcx)
	incq	%rcx
	decq	%rax
	cmpq	%rbx, %rax
	jae	LBB127_2
LBB127_3:
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_strcpy
	movq	%r13, (%r15)
	movq	%r12, 8(%r15)
	movq	%rbx, %rax
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end127:

	.globl	_smpString_init_ref
	.align	4, 0x90
_smpString_init_ref:
Leh_func_begin128:
	pushq	%rbp
Ltmp310:
	movq	%rsp, %rbp
Ltmp311:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp312:
	movq	%rdi, %rbx
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	(%rbx), %rbx
	movq	%rbx, %rdi
	callq	_strlen
	movq	%rbx, (%r15)
	movq	%rax, 8(%r15)
	movq	%r14, %rax
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end128:

	.globl	_smpString_init_fmt
	.align	4, 0x90
_smpString_init_fmt:
Leh_func_begin129:
	pushq	%rbp
Ltmp313:
	movq	%rsp, %rbp
Ltmp314:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
Ltmp315:
	movq	%rdi, %r10
	testb	%al, %al
	je	LBB129_2
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
LBB129_2:
	movq	%r9, -200(%rbp)
	movq	%r8, -208(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%rdx, -224(%rbp)
	movq	%rsi, -232(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$8, -48(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rdx
	movq	%r10, %rsi
	callq	_vasprintf
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	-56(%rbp), %r15
	movq	%r15, %rdi
	callq	_strlen
	movq	%r15, (%r14)
	movq	%rax, 8(%r14)
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end129:

	.globl	_smpFunction_to_s
	.align	4, 0x90
_smpFunction_to_s:
Leh_func_begin130:
	pushq	%rbp
Ltmp316:
	movq	%rsp, %rbp
Ltmp317:
	movq	8(%rsi), %r8
	testq	%r8, %r8
	je	LBB130_2
	leaq	L_.str32(%rip), %rdi
	xorb	%al, %al
	movq	%r8, %rsi
	jmp	LBB130_3
LBB130_2:
	movq	32(%rsi), %rsi
	leaq	L_.str33(%rip), %rdi
	xorb	%al, %al
LBB130_3:
	callq	_smpString_init_fmt
	popq	%rbp
	ret
Leh_func_end130:

	.globl	_smpObject_to_s
	.align	4, 0x90
_smpObject_to_s:
Leh_func_begin131:
	pushq	%rbp
Ltmp318:
	movq	%rsp, %rbp
Ltmp319:
	movq	%rsi, %rdx
	movq	(%rdi), %rsi
	leaq	L_.str34(%rip), %rdi
	xorb	%al, %al
	callq	_smpString_init_fmt
	popq	%rbp
	ret
Leh_func_end131:

	.globl	_smpString_init_length
	.align	4, 0x90
_smpString_init_length:
Leh_func_begin132:
	pushq	%rbp
Ltmp320:
	movq	%rsp, %rbp
Ltmp321:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp322:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r15
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	_strlen
	cmpq	%rbx, %rax
	cmovbq	%rax, %rbx
	leaq	1(%rbx), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	_strncpy
	movb	$0, (%r13,%rbx)
	movq	%r13, (%r12)
	movq	%rbx, 8(%r12)
	movq	%r15, %rax
	movq	%r12, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end132:

	.globl	_smpString_init
	.align	4, 0x90
_smpString_init:
Leh_func_begin133:
	pushq	%rbp
Ltmp323:
	movq	%rsp, %rbp
Ltmp324:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp325:
	movq	%rdi, %rbx
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_strcpy
	movq	%r13, (%r15)
	movq	%r12, 8(%r15)
	movq	%r14, %rax
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end133:

	.globl	_smpSymbol_write
	.align	4, 0x90
_smpSymbol_write:
Leh_func_begin134:
	pushq	%rbp
Ltmp326:
	movq	%rsp, %rbp
Ltmp327:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp328:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	8(%rsi), %rcx
	addl	$2, %ecx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	movq	%rdx, %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rsp
	negq	%rcx
	movb	$96, (%rdx,%rcx)
	leaq	1(%rbx), %rdi
	movq	(%rsi), %rsi
	callq	_strcpy
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_strcpy
	movq	%r13, (%r15)
	movq	%r12, 8(%r15)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB134_2
	movq	%r14, %rax
	movq	%r15, %rdx
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB134_2:
	callq	___stack_chk_fail
Leh_func_end134:

	.globl	_smpSymbol_to_s
	.align	4, 0x90
_smpSymbol_to_s:
Leh_func_begin135:
	pushq	%rbp
Ltmp329:
	movq	%rsp, %rbp
Ltmp330:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp331:
	movq	(%rsi), %rbx
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_strcpy
	movq	%r13, (%r15)
	movq	%r12, 8(%r15)
	movq	%r14, %rax
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end135:

	.globl	_smpString_write
	.align	4, 0x90
_smpString_write:
Leh_func_begin136:
	pushq	%rbp
Ltmp332:
	movq	%rsp, %rbp
Ltmp333:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp334:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rsi), %rax
	addq	%rax, %rax
	addl	$3, %eax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %r8
	movq	%r8, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rsp
	negq	%rax
	movb	$34, (%r8,%rax)
	movq	(%rsi), %rax
	movb	(%rax), %sil
	testb	%sil, %sil
	jne	LBB136_4
	movl	$1, %ecx
LBB136_2:
	movb	$34, (%rbx,%rcx)
	movb	$0, 1(%rbx,%rcx)
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_strcpy
	movq	%r13, (%r15)
	movq	%r12, 8(%r15)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB136_26
	movq	%r14, %rax
	movq	%r15, %rdx
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB136_4:
	incq	%rax
	movl	$1, %edx
	movabsq	$17179878912, %rdi
	jmp	LBB136_5
	.align	4, 0x90
LBB136_6:
	cmpb	$34, %sil
	ja	LBB136_8
	movzbl	%sil, %ecx
	btq	%rcx, %rdi
	jb	LBB136_13
LBB136_8:
	movb	%sil, (%rbx,%rdx)
	incq	%rdx
LBB136_9:
	movq	%rdx, %rcx
LBB136_10:
	movb	(%rax), %sil
	incq	%rax
	testb	%sil, %sil
	je	LBB136_2
	movq	%rcx, %rdx
LBB136_5:
	cmpb	$91, %sil
	jle	LBB136_6
	cmpb	$92, %sil
	jne	LBB136_8
LBB136_13:
	movb	$92, (%rbx,%rdx)
	leaq	1(%rdx), %rcx
	movb	-1(%rax), %sil
	cmpb	$91, %sil
	jg	LBB136_19
	cmpb	$33, %sil
	jg	LBB136_21
	cmpb	$9, %sil
	je	LBB136_25
	cmpb	$10, %sil
	je	LBB136_24
	cmpb	$13, %sil
	jne	LBB136_10
	movb	$114, 1(%rbx,%rdx)
	addq	$2, %rdx
	jmp	LBB136_9
LBB136_19:
	cmpb	$92, %sil
	jne	LBB136_10
	movb	$92, 1(%rbx,%rdx)
	addq	$2, %rdx
	jmp	LBB136_9
LBB136_21:
	cmpb	$34, %sil
	jne	LBB136_10
	movb	$34, 1(%rbx,%rdx)
	addq	$2, %rdx
	jmp	LBB136_9
LBB136_24:
	movb	$110, 1(%rbx,%rdx)
	addq	$2, %rdx
	jmp	LBB136_9
LBB136_25:
	movb	$116, 1(%rbx,%rdx)
	addq	$2, %rdx
	jmp	LBB136_9
LBB136_26:
	callq	___stack_chk_fail
Leh_func_end136:

	.globl	_smpString_substring
	.align	4, 0x90
_smpString_substring:
Leh_func_begin137:
	pushq	%rbp
Ltmp335:
	movq	%rsp, %rbp
Ltmp336:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp337:
	movl	%ecx, %ebx
	movl	%edx, %r14d
	leal	(%rbx,%r14), %eax
	movslq	%eax, %r15
	movq	(%rsi), %r12
	movq	%r12, %rdi
	callq	_strlen
	cmpq	%rax, %r15
	jbe	LBB137_2
	subl	%r14d, %eax
	movl	%eax, %ebx
LBB137_2:
	testl	%ebx, %ebx
	jg	LBB137_4
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movl	$1, %edi
	callq	_GC_malloc
	movb	$0, (%rax)
	movq	%rax, (%rbx)
	movq	$0, 8(%rbx)
	jmp	LBB137_5
LBB137_4:
	movslq	%r14d, %rax
	addq	%rax, %r12
	incl	%ebx
	movslq	%ebx, %rdi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_strcpy
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_strlen
	movq	%r14, (%rbx)
	movq	%rax, 8(%rbx)
LBB137_5:
	movq	%r12, %rax
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end137:

	.globl	_smpNil_write
	.align	4, 0x90
_smpNil_write:
Leh_func_begin138:
	pushq	%rbp
Ltmp338:
	movq	%rsp, %rbp
Ltmp339:
	pushq	%r14
	pushq	%rbx
Ltmp340:
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$4, %edi
	callq	_GC_malloc
	movl	$7104878, (%rax)
	movq	%rax, (%r14)
	movq	$3, 8(%r14)
	movq	%rbx, %rax
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end138:

	.globl	_smpNil_to_s
	.align	4, 0x90
_smpNil_to_s:
Leh_func_begin139:
	pushq	%rbp
Ltmp341:
	movq	%rsp, %rbp
Ltmp342:
	pushq	%r14
	pushq	%rbx
Ltmp343:
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$4, %edi
	callq	_GC_malloc
	movl	$7104878, (%rax)
	movq	%rax, (%r14)
	movq	$3, 8(%r14)
	movq	%rbx, %rax
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end139:

	.globl	_smptrue_to_s
	.align	4, 0x90
_smptrue_to_s:
Leh_func_begin140:
	pushq	%rbp
Ltmp344:
	movq	%rsp, %rbp
Ltmp345:
	pushq	%r14
	pushq	%rbx
Ltmp346:
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$5, %edi
	callq	_GC_malloc
	movb	$0, 4(%rax)
	movl	$1702195828, (%rax)
	movq	%rax, (%r14)
	movq	$4, 8(%r14)
	movq	%rbx, %rax
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end140:

	.globl	_smpObject_to_s_class
	.align	4, 0x90
_smpObject_to_s_class:
Leh_func_begin141:
	pushq	%rbp
Ltmp347:
	movq	%rsp, %rbp
Ltmp348:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp349:
	movq	(%rsi), %rbx
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_strcpy
	movq	%r13, (%r15)
	movq	%r12, 8(%r15)
	movq	%r14, %rax
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end141:

	.globl	_smpregmatch_init
	.align	4, 0x90
_smpregmatch_init:
Leh_func_begin142:
	pushq	%rbp
Ltmp350:
	movq	%rsp, %rbp
Ltmp351:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp352:
	xorl	%ebx, %ebx
	movq	%rdi, %r14
	leaq	8(%rdi), %rax
	jmp	LBB142_5
LBB142_3:
	incq	%rbx
	jmp	LBB142_6
	.align	4, 0x90
LBB142_1:
	cmpq	$0, -8(%rax)
	jne	LBB142_4
	cmpq	$0, (%rax)
	je	LBB142_3
LBB142_4:
	addq	$16, %rax
	incq	%rbx
LBB142_5:
	cmpq	%rsi, %rbx
	jb	LBB142_1
LBB142_6:
	movq	%rbx, %r15
	shlq	$4, %r15
	movq	%r15, %rdi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_memcpy
	movq	_smpType_regmatch@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rdx
	movq	%r12, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end142:

	.globl	_smpPair_init
	.align	4, 0x90
_smpPair_init:
Leh_func_begin143:
	pushq	%rbp
Ltmp353:
	movq	%rsp, %rbp
Ltmp354:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp355:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdx)
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jne	LBB143_2
	xorl	%eax, %eax
	jmp	LBB143_3
LBB143_2:
	movq	%rcx, %r15
	movq	%rdx, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%r12, (%rax)
	movq	%r15, 8(%rax)
LBB143_3:
	movq	%rax, %r15
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB143_5
	xorl	%edi, %edi
	jmp	LBB143_6
LBB143_5:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB143_6:
	leaq	L_.str38(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r12
	movl	$24, %edi
	callq	_GC_malloc
	movq	%rax, %rdx
	movq	%r14, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	%r15, 16(%rdx)
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end143:

	.globl	_smpListBuffer_init
	.align	4, 0x90
_smpListBuffer_init:
Leh_func_begin144:
	pushq	%rbp
Ltmp356:
	movq	%rsp, %rbp
Ltmp357:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp358:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
	movq	8(%rcx), %r14
	jne	LBB144_2
	xorl	%edi, %edi
	jmp	LBB144_3
LBB144_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB144_3:
	leaq	L_.str39(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r15
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %rdx
	movq	%rbx, (%rdx)
	movq	%r14, 8(%rdx)
	movq	%rbx, 16(%rdx)
	movq	%r14, 24(%rdx)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end144:

	.globl	_smpList_init
	.align	4, 0x90
_smpList_init:
Leh_func_begin145:
	pushq	%rbp
Ltmp359:
	movq	%rsp, %rbp
Ltmp360:
	pushq	%rbx
	subq	$8, %rsp
Ltmp361:
	movq	_smpType_list@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end145:

	.globl	_smpObject_cons
	.align	4, 0x90
_smpObject_cons:
Leh_func_begin146:
	pushq	%rbp
Ltmp362:
	movq	%rsp, %rbp
Ltmp363:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp364:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rbx
	movl	8(%rbx), %r8d
	cmpl	%eax, %r8d
	movq	%rsi, %r14
	movq	%rdi, %r15
	jne	LBB146_3
	xorl	%eax, %eax
LBB146_2:
	movq	%rax, %rbx
	movq	_smpType_list@GOTPCREL(%rip), %rdi
	jmp	LBB146_12
LBB146_3:
	movq	%rcx, %r12
	movq	_smpType_id_list@GOTPCREL(%rip), %rcx
	cmpl	(%rcx), %r8d
	jne	LBB146_5
	movl	$16, %edi
	callq	_GC_malloc
	movq	(%r12), %rbx
	movq	%rbx, (%rax)
	movq	8(%r12), %rbx
	movq	%rbx, 8(%rax)
	jmp	LBB146_2
LBB146_5:
	cmpl	%eax, 8(%rbx)
	jne	LBB146_7
	xorl	%eax, %eax
	jmp	LBB146_8
LBB146_7:
	movq	8(%r12), %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rbx, (%rax)
	movq	%r12, 8(%rax)
LBB146_8:
	movq	%rax, %rbx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB146_10
	xorl	%edi, %edi
	jmp	LBB146_11
LBB146_10:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB146_11:
	leaq	L_.str38(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
LBB146_12:
	callq	_obj_init
	movq	%rax, %r12
	movl	$24, %edi
	callq	_GC_malloc
	movq	%r15, (%rax)
	movq	%r14, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	%rax, %rdx
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end146:

	.globl	_smpListBuffer_add_now
	.align	4, 0x90
_smpListBuffer_add_now:
Leh_func_begin147:
	pushq	%rbp
Ltmp365:
	movq	%rsp, %rbp
Ltmp366:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp367:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rsi), %r8
	cmpl	%eax, 8(%r8)
	movq	%rcx, %rbx
	movq	%rsi, %r14
	jne	LBB147_2
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	callq	_smpObject_cons
	movq	%rax, (%r14)
	movq	%rdx, 8(%r14)
	movq	%rax, 16(%r14)
	movq	%rdx, 24(%r14)
	jmp	LBB147_3
LBB147_2:
	movq	24(%r14), %r15
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, 16(%r15)
	movq	24(%r14), %rax
	movq	16(%rax), %r15
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	callq	_smpObject_cons
	movq	%rax, (%r15)
	movq	%rdx, 8(%r15)
	movq	24(%r14), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	movq	%rcx, 16(%r14)
	movq	8(%rax), %rax
	movq	%rax, 24(%r14)
LBB147_3:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end147:

	.globl	_smpList_copy
	.align	4, 0x90
_smpList_copy:
Leh_func_begin148:
	pushq	%rbp
Ltmp368:
	movq	%rsp, %rbp
Ltmp369:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp370:
	movq	%rdi, -56(%rbp)
	movq	%rsi, -48(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	leaq	-56(%rbp), %rbx
	movq	%rax, %r14
	movq	%rsi, -72(%rbp)
	jmp	LBB148_1
	.align	4, 0x90
LBB148_3:
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	callq	_smpObject_cons
	movq	%rdx, -64(%rbp)
	movq	%rdx, %r14
	movq	%rax, %rsi
	movq	%rax, -72(%rbp)
LBB148_4:
	movq	8(%rbx), %rbx
	movq	16(%rbx), %rbx
LBB148_1:
	testq	%rbx, %rbx
	je	LBB148_8
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rsi)
	movq	8(%rbx), %rsi
	movq	(%rsi), %r15
	movq	8(%rsi), %r12
	je	LBB148_3
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, 16(%r14)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	callq	_smpObject_cons
	movq	%rax, (%r13)
	movq	%rdx, 8(%r13)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rsi
	movl	(%rsi), %ecx
	cmpl	%ecx, 8(%rax)
	je	LBB148_7
LBB148_6:
	movq	%rdx, %r14
	movq	%rax, %rsi
	jmp	LBB148_4
LBB148_7:
	testb	$15, (%rdx)
	jne	LBB148_6
	jmp	LBB148_9
LBB148_8:
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
LBB148_9:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end148:

	.globl	_smpObject_cons_c
	.align	4, 0x90
_smpObject_cons_c:
Leh_func_begin149:
	pushq	%rbp
Ltmp371:
	movq	%rsp, %rbp
Ltmp372:
	subq	$16, %rsp
Ltmp373:
	movq	%rdx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	movl	$1, %edx
	leaq	-16(%rbp), %rcx
	callq	_smpObject_cons
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end149:

	.globl	_smpNil_add_now
	.align	4, 0x90
_smpNil_add_now:
Leh_func_begin150:
	pushq	%rbp
Ltmp374:
	movq	%rsp, %rbp
Ltmp375:
	subq	$16, %rsp
Ltmp376:
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %r8d
	movq	(%rcx), %rax
	cmpl	%r8d, 8(%rax)
	jne	LBB150_2
	movq	8(%rcx), %rdx
	jmp	LBB150_3
LBB150_2:
	movq	8(%rcx), %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %rcx
	movq	%rdx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	movl	$1, %edx
	leaq	-16(%rbp), %rcx
	movq	%rax, %rdi
	callq	_smpObject_cons
LBB150_3:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end150:

	.globl	_smpNil_add
	.align	4, 0x90
_smpNil_add:
Leh_func_begin151:
	pushq	%rbp
Ltmp377:
	movq	%rsp, %rbp
Ltmp378:
	subq	$16, %rsp
Ltmp379:
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %r8d
	movq	(%rcx), %rax
	cmpl	%r8d, 8(%rax)
	jne	LBB151_2
	movq	8(%rcx), %rdx
	jmp	LBB151_3
LBB151_2:
	movq	8(%rcx), %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %rcx
	movq	%rdx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	movl	$1, %edx
	leaq	-16(%rbp), %rcx
	movq	%rax, %rdi
	callq	_smpObject_cons
LBB151_3:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end151:

	.globl	_smpList_reverse
	.align	4, 0x90
_smpList_reverse:
Leh_func_begin152:
	pushq	%rbp
Ltmp380:
	movq	%rsp, %rbp
Ltmp381:
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
Ltmp382:
	movq	%rdi, -48(%rbp)
	movq	%rsi, -40(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %r8
	leaq	-48(%rbp), %rbx
	leaq	-32(%rbp), %r14
	jmp	LBB152_1
	.align	4, 0x90
LBB152_2:
	movq	8(%rbx), %rsi
	movq	%rdx, %r8
LBB152_1:
	movq	(%rsi), %rdi
	movq	8(%rsi), %rsi
	movq	%rax, -32(%rbp)
	movq	%r8, -24(%rbp)
	movl	$1, %edx
	movq	%r14, %rcx
	callq	_smpObject_cons
	movq	8(%rbx), %r8
	movq	16(%r8), %rbx
	testq	%rbx, %rbx
	jne	LBB152_2
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end152:

	.globl	_smpList_append_now
	.align	4, 0x90
_smpList_append_now:
Leh_func_begin153:
	pushq	%rbp
Ltmp383:
	movq	%rsp, %rbp
Ltmp384:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp385:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%r14, -88(%rbp)
	movq	%rbx, -80(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%r14)
	je	LBB153_3
	movq	16(%rbx), %rax
	testq	%rax, %rax
	jne	LBB153_4
	movq	%rbx, %r15
	jmp	LBB153_5
LBB153_3:
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	movq	8(%rax), %rax
	movq	%rbx, -72(%rbp)
	movq	%rax, -64(%rbp)
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	callq	_smpObject_cons
	movq	%rax, %r14
	movq	%rdx, %rbx
	jmp	LBB153_6
	.align	4, 0x90
LBB153_4:
	movq	8(%rax), %r15
	movq	16(%r15), %rax
	testq	%rax, %rax
	jne	LBB153_4
LBB153_5:
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rcx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	callq	_smpObject_cons
	movq	%rax, %r12
	movq	%rdx, %r13
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, 16(%r15)
	movq	%r12, (%rax)
	movq	%r13, 8(%rax)
LBB153_6:
	movq	%r14, %rax
	movq	%rbx, %rdx
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end153:

	.globl	_smpList_append
	.align	4, 0x90
_smpList_append:
Leh_func_begin154:
	pushq	%rbp
Ltmp386:
	movq	%rsp, %rbp
Ltmp387:
	pushq	%r14
	pushq	%rbx
Ltmp388:
	movq	%rcx, %rbx
	movl	%edx, %r14d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpList_copy
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB154_2
	testb	$15, (%rdx)
	je	LBB154_3
LBB154_2:
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movl	%r14d, %edx
	callq	_smpList_append_now
LBB154_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end154:

	.globl	_smpException_backtrace_add_now
	.align	4, 0x90
_smpException_backtrace_add_now:
Leh_func_begin155:
	pushq	%rbp
Ltmp389:
	movq	%rsp, %rbp
Ltmp390:
	pushq	%rbx
	subq	$40, %rsp
Ltmp391:
	movq	%rsi, %rbx
	movq	%r8, -24(%rbp)
	movq	%r9, -16(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	_smpObject_cons
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	leaq	-40(%rbp), %rcx
	movl	$1, %edx
	callq	_smpList_append_now
	movq	%rax, 8(%rbx)
	movq	%rdx, 16(%rbx)
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end155:

	.globl	_smpList_add_now
	.align	4, 0x90
_smpList_add_now:
Leh_func_begin156:
	pushq	%rbp
Ltmp392:
	movq	%rsp, %rbp
Ltmp393:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp394:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%r14, -88(%rbp)
	movq	%rbx, -80(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%r14)
	je	LBB156_3
	movq	16(%rbx), %rax
	testq	%rax, %rax
	jne	LBB156_6
	movq	%rbx, %r15
	jmp	LBB156_7
LBB156_3:
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %r14
	cmpl	%eax, 8(%r14)
	jne	LBB156_5
	movq	8(%rcx), %rbx
	jmp	LBB156_11
LBB156_5:
	movq	8(%rcx), %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	movq	8(%rax), %rax
	movq	%rbx, -72(%rbp)
	movq	%rax, -64(%rbp)
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movq	%r14, %rdi
	callq	_smpObject_cons
	movq	%rdx, %rbx
	movq	%rax, %r14
	jmp	LBB156_11
	.align	4, 0x90
LBB156_6:
	movq	8(%rax), %r15
	movq	16(%r15), %rax
	testq	%rax, %rax
	jne	LBB156_6
LBB156_7:
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %r12
	cmpl	%eax, 8(%r12)
	jne	LBB156_9
	movq	8(%rcx), %r13
	jmp	LBB156_10
LBB156_9:
	movq	8(%rcx), %rsi
	movq	_smp_nil@GOTPCREL(%rip), %r13
	movq	(%r13), %rax
	movq	8(%r13), %r13
	movq	%rax, -56(%rbp)
	movq	%r13, -48(%rbp)
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movq	%r12, %rdi
	callq	_smpObject_cons
	movq	%rax, %r12
	movq	%rdx, %r13
LBB156_10:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, 16(%r15)
	movq	%r12, (%rax)
	movq	%r13, 8(%rax)
LBB156_11:
	movq	%rbx, %rdx
	movq	%r14, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end156:

	.globl	_smpList_add
	.align	4, 0x90
_smpList_add:
Leh_func_begin157:
	pushq	%rbp
Ltmp395:
	movq	%rsp, %rbp
Ltmp396:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Ltmp397:
	movq	%rcx, %rbx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpList_copy
	movq	%rax, %r14
	movq	%rdx, %r15
	movq	(%rbx), %rdi
	movq	%rdi, -40(%rbp)
	movq	8(%rbx), %rsi
	movq	%rsi, -32(%rbp)
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	jne	LBB157_2
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpList_copy
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
LBB157_2:
	movq	%r15, %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	leaq	-40(%rbp), %rcx
	callq	_smpList_add_now
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end157:

	.globl	_smpArray_to_list
	.align	4, 0x90
_smpArray_to_list:
Leh_func_begin158:
	pushq	%rbp
Ltmp398:
	movq	%rsp, %rbp
Ltmp399:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
Ltmp400:
	movq	(%rsi), %rax
	movq	8(%rsi), %rbx
	movq	%rbx, %rsi
	shlq	$4, %rsi
	leaq	-8(%rax,%rsi), %r14
	movq	_smp_nil@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %r8
	leaq	-48(%rbp), %r15
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r12
	jmp	LBB158_4
	.align	4, 0x90
LBB158_1:
	movq	-8(%r14), %rdi
	movq	(%r14), %rsi
	leaq	-16(%r14), %r14
	movq	%rax, -48(%rbp)
	movq	%r8, -40(%rbp)
	movl	$1, %edx
	movq	%r15, %rcx
	callq	_smpObject_cons
	movl	(%r12), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB158_3
	testb	$15, (%rdx)
	je	LBB158_6
LBB158_3:
	movq	%rdx, %r8
LBB158_4:
	decq	%rbx
	jns	LBB158_1
	movq	%r8, %rdx
LBB158_6:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end158:

	.globl	_smpInteger_init_mpz_ref
	.align	4, 0x90
_smpInteger_init_mpz_ref:
Leh_func_begin159:
	pushq	%rbp
Ltmp401:
	movq	%rsp, %rbp
Ltmp402:
	pushq	%rbx
	subq	$8, %rsp
Ltmp403:
	movq	%rdi, %rbx
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end159:

	.globl	_smpInteger_init_str
	.align	4, 0x90
_smpInteger_init_str:
Leh_func_begin160:
	pushq	%rbp
Ltmp404:
	movq	%rsp, %rbp
Ltmp405:
	pushq	%r14
	pushq	%rbx
Ltmp406:
	movq	%rdi, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_init_set_str
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end160:

	.globl	_smpInteger_init_clong
	.align	4, 0x90
_smpInteger_init_clong:
Leh_func_begin161:
	pushq	%rbp
Ltmp407:
	movq	%rsp, %rbp
Ltmp408:
	pushq	%r14
	pushq	%rbx
Ltmp409:
	movq	%rdi, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end161:

	.globl	_smpString_length
	.align	4, 0x90
_smpString_length:
Leh_func_begin162:
	pushq	%rbp
Ltmp410:
	movq	%rsp, %rbp
Ltmp411:
	pushq	%r14
	pushq	%rbx
Ltmp412:
	movq	8(%rsi), %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end162:

	.globl	_smpArray_length
	.align	4, 0x90
_smpArray_length:
Leh_func_begin163:
	pushq	%rbp
Ltmp413:
	movq	%rsp, %rbp
Ltmp414:
	pushq	%r14
	pushq	%rbx
Ltmp415:
	movq	8(%rsi), %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end163:

	.globl	_smpObject_hash
	.align	4, 0x90
_smpObject_hash:
Leh_func_begin164:
	pushq	%rbp
Ltmp416:
	movq	%rsp, %rbp
Ltmp417:
	pushq	%r14
	pushq	%rbx
Ltmp418:
	movq	%rsi, %rax
	sarq	$10, %rax
	xorq	%rsi, %rax
	sarq	$6, %rsi
	xorq	%rax, %rsi
	movq	(%rdi), %rax
	xorl	%edi, %edi
	movq	%rsi, %rbx
	jmp	LBB164_2
	.align	4, 0x90
LBB164_1:
	imulq	$33, %rbx, %rbx
	xorq	%rbx, %rcx
	incq	%rdi
	movq	%rcx, %rbx
LBB164_2:
	cmpl	$2, %edi
	jg	LBB164_4
	movsbq	(%rax,%rdi), %rcx
	testq	%rcx, %rcx
	jne	LBB164_1
LBB164_4:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end164:

	.globl	_smpInteger_init_mpz
	.align	4, 0x90
_smpInteger_init_mpz:
Leh_func_begin165:
	pushq	%rbp
Ltmp419:
	movq	%rsp, %rbp
Ltmp420:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp421:
	movq	%rdi, %rbx
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_init_set
	movq	%r14, %rax
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end165:

	.globl	_smpHash_init_capacity
	.align	4, 0x90
_smpHash_init_capacity:
Leh_func_begin166:
	pushq	%rbp
Ltmp422:
	movq	%rsp, %rbp
Ltmp423:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp424:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB166_2
	xorl	%eax, %eax
	jmp	LBB166_3
LBB166_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rax
LBB166_3:
	cmpq	$10, %rdi
	movl	$10, %ebx
	cmovaeq	%rdi, %rbx
	movq	%rbx, %r14
	shlq	$4, %r14
	leaq	L_.str41(%rip), %rsi
	movq	%rax, %rdi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r15
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	___bzero
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%r13, (%r12)
	movq	%rcx, 8(%r12)
	movq	%rax, 16(%r12)
	movq	%rbx, 24(%r12)
	movq	$0, 32(%r12)
	movq	$0, 40(%r12)
	movq	%r15, %rax
	movq	%r12, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end166:

	.globl	_smpHash_init
	.align	4, 0x90
_smpHash_init:
Leh_func_begin167:
	pushq	%rbp
Ltmp425:
	movq	%rsp, %rbp
Ltmp426:
	movl	$10, %edi
	callq	_smpHash_init_capacity
	popq	%rbp
	ret
Leh_func_end167:

	.globl	_smpFunction_init_v
	.align	4, 0x90
_smpFunction_init_v:
Leh_func_begin168:
	pushq	%rbp
Ltmp427:
	movq	%rsp, %rbp
Ltmp428:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
Ltmp429:
	movq	%rdx, -72(%rbp)
	movl	%esi, %ebx
	movl	%ebx, -84(%rbp)
	movq	%rdi, -136(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	_smpType_function@GOTPCREL(%rip), %rdi
	callq	_obj_init
	testl	%ebx, %ebx
	jne	LBB168_2
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	8(%rax), %rbx
	jmp	LBB168_35
LBB168_2:
	movq	%rax, -128(%rbp)
	imull	$40, -84(%rbp), %ebx
	addq	$15, %rbx
	andq	$-16, %rbx
	movq	%rsp, %rcx
	subq	%rbx, %rcx
	movq	%rcx, -120(%rbp)
	negq	%rbx
	leaq	32(%rsp,%rbx), %rbx
	movq	%rbx, -56(%rbp)
	movq	%rcx, %rsp
	xorl	%ebx, %ebx
	movq	%rbx, -96(%rbp)
	movq	$0, -104(%rbp)
	movabsq	$-4294967296, %rax
	movq	%rax, -112(%rbp)
	movl	%ebx, -76(%rbp)
	jmp	LBB168_32
LBB168_9:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB168_11
	xorl	%edi, %edi
	jmp	LBB168_12
LBB168_11:
	movq	_scope_stack@GOTPCREL(%rip), %r12
	movq	(%r12), %r12
	shlq	$5, %r14
	leaq	-32(%r14,%r12), %rdi
LBB168_12:
	leaq	L_.str42(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str43(%rip), %r14
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %r14
	movq	%r14, -128(%rbp)
	movq	%rdx, %rbx
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB168_35
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	-128(%rbp), %r12
	movq	%r12, (%r14)
	movq	%rbx, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -128(%rbp)
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	jmp	LBB168_34
	.align	4, 0x90
LBB168_3:
	movq	-56(%rbp), %rbx
	movq	-24(%rbx), %rax
	andq	$-8, %rax
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rcx), %r14
	andq	$2, %r14
	addq	%rax, %r14
	movq	%r14, -24(%rbx)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -16(%rbx)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbx)
	movb	(%rbx), %al
	andb	$-2, %al
	movb	%al, -77(%rbp)
	movb	%al, (%rbx)
	movq	-72(%rbp), %rdx
	movl	(%rdx), %ebx
	cmpq	$47, %rbx
	ja	LBB168_5
	movq	-72(%rbp), %rdx
	movq	16(%rdx), %rax
	leal	8(%rbx), %r15d
	movl	%r15d, (%rdx)
	addq	%rax, %rbx
	jmp	LBB168_6
LBB168_5:
	movq	8(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movl	%ebx, %r15d
	movq	%rax, %rbx
LBB168_6:
	movq	-104(%rbp), %rax
	testl	%eax, %eax
	movq	(%rbx), %rbx
	jg	LBB168_8
LBB168_7:
	movq	%r14, %r12
	movl	%r15d, -60(%rbp)
	movq	%r14, %r13
	jmp	LBB168_30
LBB168_8:
	movq	-112(%rbp), %r12
	sarq	$32, %r12
	leaq	(%r12,%r12,4), %r12
	movq	-120(%rbp), %rcx
	testb	$1, 32(%rcx,%r12,8)
	je	LBB168_7
	jmp	LBB168_9
	.align	4, 0x90
LBB168_14:
	movq	%rbx, %rdi
	leaq	L_.str44(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB168_19
	orq	$6, %r13
	movq	-56(%rbp), %rbx
	movq	%r13, -24(%rbx)
	cmpl	$39, -60(%rbp)
	ja	LBB168_17
	movl	-60(%rbp), %ebx
	movq	-72(%rbp), %rdx
	movq	16(%rdx), %r14
	leal	16(%rbx), %r15d
	movl	%r15d, (%rdx)
	addq	%rbx, %r14
	movl	%r15d, -60(%rbp)
	jmp	LBB168_18
LBB168_17:
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %r14
	leaq	16(%r14), %rbx
	movq	%rbx, 8(%rdx)
LBB168_18:
	movq	(%r14), %rbx
	movq	-56(%rbp), %r12
	movq	%rbx, -16(%r12)
	movq	8(%r14), %rbx
	movq	%rbx, -8(%r12)
	incl	-76(%rbp)
	movq	%r13, %r14
	movq	%r13, %r12
	jmp	LBB168_26
LBB168_19:
	movq	%rbx, %rdi
	leaq	L_.str45(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB168_21
	orq	$1, %r12
	movq	-56(%rbp), %rbx
	movq	%r12, -24(%rbx)
	movq	%r12, %r14
	movq	%r12, %r13
	jmp	LBB168_26
LBB168_21:
	movq	%rbx, %rdi
	leaq	L_.str46(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB168_23
	orq	$2, %r14
	movq	-56(%rbp), %rbx
	movq	%r14, -24(%rbx)
	movl	$1, %ebx
	movq	%rbx, -96(%rbp)
	movq	%r14, %r12
	movq	%r14, %r13
	jmp	LBB168_26
LBB168_23:
	movq	%rbx, %rdi
	leaq	L_.str47(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB168_25
	movb	-77(%rbp), %al
	orb	$1, %al
	movb	%al, -77(%rbp)
	movq	-56(%rbp), %rbx
	movb	%al, (%rbx)
	jmp	LBB168_26
LBB168_25:
	movq	%rbx, %rdi
	leaq	L_.str48(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB168_31
LBB168_26:
	cmpl	$47, -60(%rbp)
	ja	LBB168_28
	movl	%r15d, %ebx
	movq	-72(%rbp), %rdx
	movq	16(%rdx), %rax
	leal	8(%rbx), %r15d
	movl	%r15d, (%rdx)
	addq	%rbx, %rax
	movl	%r15d, -60(%rbp)
	jmp	LBB168_29
LBB168_28:
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rax
	leaq	8(%rax), %rbx
	movq	%rbx, 8(%rdx)
LBB168_29:
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	setne	%al
	movzbl	%al, %eax
	addl	%eax, -76(%rbp)
LBB168_30:
	movl	-76(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	LBB168_14
LBB168_31:
	movq	-56(%rbp), %rax
	movq	%rbx, -32(%rax)
	movabsq	$4294967296, %rbx
	addq	%rbx, -112(%rbp)
	addq	$40, %rax
	movq	%rax, -56(%rbp)
	incq	-104(%rbp)
	incl	-76(%rbp)
LBB168_32:
	movl	-76(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	LBB168_3
	movq	-104(%rbp), %rbx
	movslq	%ebx, %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %r14
	movq	%r14, %rdi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	movq	-120(%rbp), %rsi
	movq	%r14, %rdx
	callq	_memcpy
	movl	$40, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%r15, 16(%rax)
	movzwl	%bx, %ebx
	movq	%rbx, 24(%rax)
	movq	-136(%rbp), %rdi
	movq	%rdi, 32(%rax)
LBB168_34:
	movq	%rax, %rbx
LBB168_35:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB168_37
	movq	%rbx, %rdx
	movq	-128(%rbp), %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB168_37:
	callq	___stack_chk_fail
Leh_func_end168:

	.globl	_smpFunction_init
	.align	4, 0x90
_smpFunction_init:
Leh_func_begin169:
	pushq	%rbp
Ltmp430:
	movq	%rsp, %rbp
Ltmp431:
	subq	$208, %rsp
Ltmp432:
	testb	%al, %al
	je	LBB169_2
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
LBB169_2:
	movq	%r9, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%rdx, -192(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$48, -20(%rbp)
	movl	$16, -24(%rbp)
	leaq	-24(%rbp), %rdx
	callq	_smpFunction_init_v
	addq	$208, %rsp
	popq	%rbp
	ret
Leh_func_end169:

	.globl	_smpFloat_init_mpfr_ref
	.align	4, 0x90
_smpFloat_init_mpfr_ref:
Leh_func_begin170:
	pushq	%rbp
Ltmp433:
	movq	%rsp, %rbp
Ltmp434:
	pushq	%rbx
	subq	$8, %rsp
Ltmp435:
	movq	%rdi, %rbx
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end170:

	.globl	_smpFloat_init_str
	.align	4, 0x90
_smpFloat_init_str:
Leh_func_begin171:
	pushq	%rbp
Ltmp436:
	movq	%rsp, %rbp
Ltmp437:
	pushq	%r14
	pushq	%rbx
Ltmp438:
	movq	%rdi, %rbx
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_mpfr_init_set_str
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end171:

	.globl	_smpFloat_init_cdouble
	.align	4, 0x90
_smpFloat_init_cdouble:
Leh_func_begin172:
	pushq	%rbp
Ltmp439:
	movq	%rsp, %rbp
Ltmp440:
	pushq	%rbx
	subq	$8, %rsp
Ltmp441:
	movsd	%xmm0, -16(%rbp)
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	movq	%rbx, %rdi
	movsd	-16(%rbp), %xmm0
	callq	_mpfr_set_d
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end172:

	.globl	_smpFloat_init_mpfr
	.align	4, 0x90
_smpFloat_init_mpfr:
Leh_func_begin173:
	pushq	%rbp
Ltmp442:
	movq	%rsp, %rbp
Ltmp443:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp444:
	movq	%rdi, %rbx
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movl	8(%rbx), %ecx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_mpfr_set4
	movq	%r14, %rax
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end173:

	.globl	_smpTypeError_init_fmt
	.align	4, 0x90
_smpTypeError_init_fmt:
Leh_func_begin174:
	pushq	%rbp
Ltmp445:
	movq	%rsp, %rbp
Ltmp446:
	pushq	%rbx
	subq	$248, %rsp
Ltmp447:
	movq	%rdi, %r10
	testb	%al, %al
	je	LBB174_2
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm1, -192(%rbp)
	movaps	%xmm2, -176(%rbp)
	movaps	%xmm3, -160(%rbp)
	movaps	%xmm4, -144(%rbp)
	movaps	%xmm5, -128(%rbp)
	movaps	%xmm6, -112(%rbp)
	movaps	%xmm7, -96(%rbp)
LBB174_2:
	movq	%r9, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	%rcx, -232(%rbp)
	movq	%rdx, -240(%rbp)
	movq	%rsi, -248(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$48, -76(%rbp)
	movl	$8, -80(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	%r10, %rsi
	callq	_vasprintf
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -16(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB174_4
	xorl	%edi, %edi
	jmp	LBB174_5
LBB174_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB174_5:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, 40(%rdx)
	movq	%rbx, %rax
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end174:

	.globl	_smpTypeError_init_detailed
	.align	4, 0x90
_smpTypeError_init_detailed:
Leh_func_begin175:
	pushq	%rbp
Ltmp448:
	movq	%rsp, %rbp
Ltmp449:
	pushq	%rbx
	subq	$248, %rsp
Ltmp450:
	testb	%al, %al
	je	LBB175_2
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm1, -192(%rbp)
	movaps	%xmm2, -176(%rbp)
	movaps	%xmm3, -160(%rbp)
	movaps	%xmm4, -144(%rbp)
	movaps	%xmm5, -128(%rbp)
	movaps	%xmm6, -112(%rbp)
	movaps	%xmm7, -96(%rbp)
LBB175_2:
	movq	%r9, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	$0, -56(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r8
	movq	%r8, -48(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$48, -76(%rbp)
	movl	$32, -80(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	%rcx, %rsi
	callq	_vasprintf
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB175_4
	xorl	%edi, %edi
	jmp	LBB175_5
LBB175_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB175_5:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, 40(%rdx)
	movq	%rbx, %rax
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end175:

	.globl	_smpTypeError_init
	.align	4, 0x90
_smpTypeError_init:
Leh_func_begin176:
	pushq	%rbp
Ltmp451:
	movq	%rsp, %rbp
Ltmp452:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp453:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
	movq	8(%rcx), %r14
	movq	%rdx, -48(%rbp)
	movq	%rsi, %r15
	movq	%rdi, %r12
	jne	LBB176_2
	xorl	%edi, %edi
	jmp	LBB176_3
LBB176_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB176_3:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %rdx
	movq	$0, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	%r14, 16(%rdx)
	movq	%r12, 24(%rdx)
	movq	%r15, 32(%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, 40(%rdx)
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end176:

	.globl	_smpType_def_general
	.align	4, 0x90
_smpType_def_general:
Leh_func_begin177:
	pushq	%rbp
Ltmp454:
	movq	%rsp, %rbp
Ltmp455:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp456:
	movq	%r9, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%rcx, %rbx
	movl	%edx, %r14d
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	movq	%rsi, %r15
	movq	%rdi, %r12
	jne	LBB177_2
	testb	$15, (%r15)
	je	LBB177_33
LBB177_2:
	movq	(%r12), %rdi
	leaq	L_.str1(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB177_10
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jne	LBB177_5
	xorl	%edi, %edi
	jmp	LBB177_6
LBB177_5:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB177_6:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	_smpType_class@GOTPCREL(%rip), %rax
	movq	%rax, 24(%r13)
	movq	%r12, 32(%r13)
	movq	%r15, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB177_8
	movq	%rbx, %r12
	movq	%r13, %r15
	jmp	LBB177_33
LBB177_8:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r13, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r12
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
LBB177_9:
	movq	$1, 16(%rax)
	movq	%rax, %r15
	jmp	LBB177_33
LBB177_10:
	movl	%r14d, %r12d
	andl	$3840, %r12d
	jne	LBB177_19
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	leaq	L_.str49(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB177_17
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %r15
	movq	(%r15), %r14
	movq	8(%r15), %r13
	jne	LBB177_14
	xorl	%edi, %edi
	jmp	LBB177_15
LBB177_14:
	movq	_scope_stack@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	shlq	$5, %rbx
	leaq	-32(%rbx,%r15), %rdi
LBB177_15:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r12
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r14, 8(%r15)
	movq	%r13, 16(%r15)
	movq	_smpType_function@GOTPCREL(%rip), %rbx
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%r15)
	movq	-56(%rbp), %rcx
	movq	%rcx, 40(%r15)
	movq	(%r12), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB177_33
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r12, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r12
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	jmp	LBB177_9
LBB177_17:
	testl	%r12d, %r12d
	jne	LBB177_19
	movq	%rbx, %rdi
	callq	_strlen
	leaq	1(%rax), %rdi
	callq	_GC_malloc
	movq	-56(%rbp), %r13
	movq	%rax, 8(%r13)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_strcpy
	movl	%r14d, %eax
	andl	$240, %eax
	movb	%al, (%r13)
LBB177_19:
	andl	$15, %r14d
	cmpl	$1, %r14d
	je	LBB177_25
	testl	%r14d, %r14d
	jne	LBB177_30
	testl	%r12d, %r12d
	jne	LBB177_23
	movq	32(%r15), %rdi
	jmp	LBB177_32
LBB177_23:
	cmpl	$256, %r12d
	jne	LBB177_29
	movq	40(%r15), %rdi
	jmp	LBB177_32
LBB177_25:
	testl	%r12d, %r12d
	jne	LBB177_27
	movq	48(%r15), %rdi
	jmp	LBB177_32
LBB177_27:
	cmpl	$256, %r12d
	jne	LBB177_29
	movq	56(%r15), %rdi
	jmp	LBB177_32
LBB177_29:
	leaq	L_.str50(%rip), %rdi
	xorb	%al, %al
	movl	%r12d, %esi
	jmp	LBB177_31
LBB177_30:
	leaq	L_.str51(%rip), %rdi
	xorb	%al, %al
	movl	%r14d, %esi
LBB177_31:
	callq	_internal_error
	xorl	%edi, %edi
LBB177_32:
	movq	%rbx, %rsi
	movq	-48(%rbp), %r15
	movq	%r15, %rdx
	movq	-56(%rbp), %rbx
	movq	%rbx, %rcx
	callq	_minihash_add
	movq	%r15, %r12
	movq	%rbx, %r15
LBB177_33:
	movq	%r12, %rax
	movq	%r15, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end177:

	.globl	_smpType_defvar
	.align	4, 0x90
_smpType_defvar:
Leh_func_begin178:
	pushq	%rbp
Ltmp457:
	movq	%rsp, %rbp
Ltmp458:
	orl	$256, %edx
	callq	_smpType_def_general
	popq	%rbp
	ret
Leh_func_end178:

	.globl	_smpType_def
	.align	4, 0x90
_smpType_def:
Leh_func_begin179:
	pushq	%rbp
Ltmp459:
	movq	%rsp, %rbp
Ltmp460:
	callq	_smpType_def_general
	popq	%rbp
	ret
Leh_func_end179:

	.globl	_smpType_abstract_def
	.align	4, 0x90
_smpType_abstract_def:
Leh_func_begin180:
	pushq	%rbp
Ltmp461:
	movq	%rsp, %rbp
Ltmp462:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
Ltmp463:
	movq	%rcx, %rbx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	testb	%al, %al
	je	LBB180_2
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
LBB180_2:
	movq	%r9, -200(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$48, -52(%rbp)
	movl	$40, -56(%rbp)
	leaq	_smp_abstract_function(%rip), %rdi
	leaq	-56(%rbp), %rdx
	movl	%r8d, %esi
	callq	_smpFunction_init_v
	movq	%rdx, %r9
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	movq	%rbx, %rcx
	movq	%rax, %r8
	callq	_smpType_def_general
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end180:

	.globl	_smp_abstract_function
	.align	4, 0x90
_smp_abstract_function:
Leh_func_begin181:
	pushq	%rbp
Ltmp464:
	movq	%rsp, %rbp
Ltmp465:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp466:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB181_2
	xorl	%edi, %edi
	jmp	LBB181_3
LBB181_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB181_3:
	leaq	L_.str25(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str148(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB181_5
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
LBB181_5:
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end181:

	.globl	_smpThrown_create_class
	.align	4, 0x90
_smpThrown_create_class:
Leh_func_begin182:
	pushq	%rbp
Ltmp467:
	movq	%rsp, %rbp
Ltmp468:
	pushq	%r14
	pushq	%rbx
Ltmp469:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB182_2
	xorl	%edi, %edi
	jmp	LBB182_3
LBB182_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB182_3:
	leaq	L_.str10(%rip), %rsi
	callq	_minihash_get
	movq	%rax, %rbx
	movq	%rdx, %r14
	leaq	_smpThrown_to_s(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str2(%rip), %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end182:

	.globl	_smpThrown_to_s
	.align	4, 0x90
_smpThrown_to_s:
Leh_func_begin183:
	pushq	%rbp
Ltmp470:
	movq	%rsp, %rbp
Ltmp471:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp472:
	movq	%rsi, -96(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movq	%rbx, -88(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$1, %edi
	callq	_GC_malloc
	movb	$0, (%rax)
	movq	%rax, (%r14)
	movq	$0, 8(%r14)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rbx)
	jne	LBB183_3
	testb	$15, %al
	jne	LBB183_3
LBB183_2:
	movq	-88(%rbp), %rax
	jmp	LBB183_20
LBB183_3:
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movl	$2, %edi
	callq	_GC_malloc
	movw	$10, (%rax)
	movq	%rax, (%r15)
	movq	$1, 8(%r15)
	movq	%rbx, -56(%rbp)
	movq	%r15, -48(%rbp)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rbx)
	jne	LBB183_6
	testb	$15, %al
	jne	LBB183_6
	movq	%rbx, %rax
	movq	%r15, %rdx
	jmp	LBB183_21
LBB183_6:
	xorl	%ebx, %ebx
	movl	$8, %r15d
	jmp	LBB183_18
	.align	4, 0x90
LBB183_7:
	movq	%rsi, %rax
	movq	8(%rax), %rax
	movq	-8(%rax,%r15), %r12
	movq	(%rax,%r15), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	leaq	L_.str52(%rip), %rdx
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %esi
	cmpl	%esi, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB183_10
	testb	$15, (%rcx)
	jne	LBB183_10
	movq	%rcx, %rdx
	jmp	LBB183_11
LBB183_10:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %esi
LBB183_11:
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	cmpl	%esi, 8(%rax)
	jne	LBB183_13
	testb	$15, (%rdx)
	je	LBB183_21
LBB183_13:
	testq	%rbx, %rbx
	je	LBB183_15
	movq	-88(%rbp), %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	callq	_smpString_add_now
LBB183_15:
	movq	-88(%rbp), %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	callq	_smpString_add_now
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%r12)
	jne	LBB183_17
	testb	$15, (%r14)
	je	LBB183_2
LBB183_17:
	addq	$16, %r15
	incq	%rbx
LBB183_18:
	movq	-96(%rbp), %rsi
	cmpq	%rbx, 16(%rsi)
	ja	LBB183_7
	movq	(%r14), %rdx
	leaq	-64(%rbp), %rdi
	leaq	L_.str153(%rip), %rsi
	xorb	%al, %al
	callq	_asprintf
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	-64(%rbp), %r15
	movq	%r15, %rdi
	callq	_strlen
	movq	%r15, (%r14)
	movq	%rax, 8(%r14)
	movq	%rbx, %rax
LBB183_20:
	movq	%r14, %rdx
LBB183_21:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end183:

	.globl	_smpstrcreate_class
	.align	4, 0x90
_smpstrcreate_class:
Leh_func_begin184:
	pushq	%rbp
Ltmp473:
	movq	%rsp, %rbp
Ltmp474:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp475:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB184_2
	xorl	%edi, %edi
	jmp	LBB184_3
LBB184_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB184_3:
	leaq	L_.str2(%rip), %rbx
	movq	%rbx, %rsi
	callq	_minihash_get
	movq	%rax, %r14
	movq	%rdx, %r15
	leaq	_smpString_add(%rip), %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str53(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpString_clear(%rip), %rdi
	leaq	L_.str54(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movl	$64, %edx
	leaq	L_.str55(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpString_equalp(%rip), %rdi
	leaq	L_.str56(%rip), %rdx
	leaq	L_.str57(%rip), %rcx
	movl	$2, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str58(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpString_length(%rip), %rdi
	leaq	L_.str59(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str60(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpString_reverse(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str61(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpString_to_s(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpString_write(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str62(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end184:

	.globl	_smpString_add
	.align	4, 0x90
_smpString_add:
Leh_func_begin185:
	pushq	%rbp
Ltmp476:
	movq	%rsp, %rbp
Ltmp477:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
Ltmp478:
	movq	%rsi, -192(%rbp)
	movq	(%rcx), %rbx
	testq	%rbx, %rbx
	movq	%rcx, -176(%rbp)
	movq	%rdi, -184(%rbp)
	je	LBB185_12
	movl	8(%rdi), %r14d
	cmpl	%r14d, 8(%rbx)
	je	LBB185_18
	movq	56(%rdi), %rax
	movq	%rax, -112(%rbp)
	movq	48(%rdi), %rax
	movq	%rax, -120(%rbp)
	movq	40(%rdi), %rax
	movq	%rax, -128(%rbp)
	movq	32(%rdi), %rax
	movq	%rax, -136(%rbp)
	movq	24(%rdi), %rax
	movq	%rax, -144(%rbp)
	movq	16(%rdi), %rax
	movq	%rax, -152(%rbp)
	movl	12(%rdi), %eax
	movl	%eax, -156(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -168(%rbp)
	xorl	%r15d, %r15d
	jmp	LBB185_10
	.align	4, 0x90
LBB185_3:
	movq	16(%rbx), %rax
	movq	(%rax,%r15,8), %r12
	movq	-168(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	%r14d, -96(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	testq	%r12, %r12
	je	LBB185_9
	cmpl	%r14d, 8(%r12)
	je	LBB185_18
	xorl	%r13d, %r13d
	jmp	LBB185_8
	.align	4, 0x90
LBB185_6:
	movq	16(%r12), %rax
	movq	(%rax,%r13,8), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smpObject_instancep_c
	testl	%eax, %eax
	jne	LBB185_18
	incq	%r13
LBB185_8:
	cmpq	%r13, 24(%r12)
	ja	LBB185_6
LBB185_9:
	incq	%r15
LBB185_10:
	cmpq	%r15, 24(%rbx)
	ja	LBB185_3
	movq	-176(%rbp), %rcx
	movq	(%rcx), %rbx
LBB185_12:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	movq	_smp_nil@GOTPCREL(%rip), %r15
	movq	(%r15), %r12
	movq	8(%r15), %r13
	movq	-176(%rbp), %rcx
	movq	8(%rcx), %r15
	movq	%r15, -112(%rbp)
	jne	LBB185_14
	xorl	%edi, %edi
	jmp	LBB185_15
LBB185_14:
	movq	_scope_stack@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	shlq	$5, %r14
	leaq	-32(%r14,%r15), %rdi
LBB185_15:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r12, 8(%r15)
	movq	%r13, 16(%r15)
	movq	-184(%rbp), %rdi
	movq	%rdi, 24(%r15)
	movq	%rbx, 32(%r15)
	movq	-112(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB185_17
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
LBB185_17:
	movq	%r14, %rax
	movq	%r15, %rdx
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB185_18:
	movq	-192(%rbp), %rsi
	movq	(%rsi), %rbx
	movq	8(%rsi), %r14
	movq	-176(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	(%rax), %r15
	movq	8(%rax), %r12
	leaq	1(%r14,%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_memcpy
	movq	%r14, %rdi
	addq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_memcpy
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r13, %rdi
	callq	_strlen
	movq	%r13, (%r15)
	movq	%rax, 8(%r15)
	jmp	LBB185_17
Leh_func_end185:

	.globl	_smpPair_create_class
	.align	4, 0x90
_smpPair_create_class:
Leh_func_begin186:
	pushq	%rbp
Ltmp479:
	movq	%rsp, %rbp
Ltmp480:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp481:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB186_2
	xorl	%edi, %edi
	jmp	LBB186_3
LBB186_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB186_3:
	leaq	L_.str38(%rip), %rsi
	callq	_minihash_get
	movq	%rax, %rbx
	movq	%rdx, %r14
	leaq	_smpPair_car(%rip), %rdi
	leaq	L_.str57(%rip), %r15
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str63(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpPair_cdr(%rip), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str64(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpPair_clear(%rip), %rdi
	leaq	L_.str54(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str55(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpPair_to_s(%rip), %rdi
	leaq	L_.str2(%rip), %r15
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpPair_write(%rip), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str62(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end186:

	.globl	_smpPair_to_s
	.align	4, 0x90
_smpPair_to_s:
Leh_func_begin187:
	pushq	%rbp
Ltmp482:
	movq	%rsp, %rbp
Ltmp483:
	movq	16(%rsi), %rax
	testq	%rax, %rax
	cmoveq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %r8
	movq	(%rsi), %r9
	movq	8(%rsi), %rdx
	leaq	L_.str165(%rip), %rdi
	xorb	%al, %al
	movq	%r9, %rsi
	callq	_smpGlobal_sprintf
	popq	%rbp
	ret
Leh_func_end187:

	.globl	_smpPair_write
	.align	4, 0x90
_smpPair_write:
Leh_func_begin188:
	pushq	%rbp
Ltmp484:
	movq	%rsp, %rbp
Ltmp485:
	movq	16(%rsi), %rax
	testq	%rax, %rax
	cmoveq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %r8
	movq	(%rsi), %r9
	movq	8(%rsi), %rdx
	leaq	L_.str164(%rip), %rdi
	xorb	%al, %al
	movq	%r9, %rsi
	callq	_smpGlobal_sprintf
	popq	%rbp
	ret
Leh_func_end188:

	.globl	_smpNil_create_class
	.align	4, 0x90
_smpNil_create_class:
Leh_func_begin189:
	pushq	%rbp
Ltmp486:
	movq	%rsp, %rbp
Ltmp487:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp488:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB189_2
	xorl	%edi, %edi
	jmp	LBB189_3
LBB189_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB189_3:
	leaq	L_.str54(%rip), %rdx
	movq	%rdx, %rsi
	callq	_minihash_get
	movq	%rax, %rbx
	movq	%rdx, %r14
	leaq	_smpList_add(%rip), %rdi
	leaq	L_.str57(%rip), %r15
	movl	$2, %esi
	leaq	L_.str65(%rip), %rax
	movq	%rax, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str53(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_add_now(%rip), %rdi
	movl	$2, %esi
	leaq	L_.str65(%rip), %rax
	movq	%rax, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str66(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_append(%rip), %rdi
	movl	$2, %esi
	leaq	L_.str65(%rip), %rax
	movq	%rax, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str67(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_append_now(%rip), %rdi
	movl	$2, %esi
	leaq	L_.str65(%rip), %rax
	movq	%rax, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str68(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_car(%rip), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str63(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_cdr(%rip), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str64(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_concat(%rip), %rdi
	movl	$2, %esi
	leaq	L_.str65(%rip), %rax
	movq	%rax, %rdx
	movq	%rax, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str69(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_copy(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str54(%rip), %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str70(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_each(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str54(%rip), %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str71(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_emptyp(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str56(%rip), %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str72(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_length(%rip), %rdi
	leaq	L_.str59(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str60(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_map(%rip), %rdi
	leaq	L_.str49(%rip), %r12
	movl	$2, %esi
	leaq	L_.str54(%rip), %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str73(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_reduce(%rip), %rdi
	movl	$4, %esi
	leaq	L_.str46(%rip), %r13
	leaq	L_.str54(%rip), %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	movq	%r15, %r9
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str74(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_reverse(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str65(%rip), %rax
	movq	%rax, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str61(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_equalp(%rip), %rdi
	movl	$2, %esi
	leaq	L_.str56(%rip), %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str58(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_to_s(%rip), %rdi
	movl	$3, %esi
	leaq	L_.str2(%rip), %r15
	movq	%r15, %rdx
	movq	%r13, %rcx
	movq	%r15, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpNil_write(%rip), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str62(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end189:

	.globl	_smpList_concat
	.align	4, 0x90
_smpList_concat:
Leh_func_begin190:
	pushq	%rbp
Ltmp489:
	movq	%rsp, %rbp
Ltmp490:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp491:
	movq	%rcx, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdi, -96(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	L_.str65(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB190_20
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str65(%rip), %r14
	jmp	LBB190_8
	.align	4, 0x90
LBB190_2:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB190_20
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB190_6
	.align	4, 0x90
LBB190_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB190_20
	incq	%r13
LBB190_6:
	cmpq	%r13, %r12
	ja	LBB190_4
	incq	%rbx
LBB190_8:
	cmpq	%rbx, -72(%rbp)
	ja	LBB190_2
	leaq	L_.str10(%rip), %rsi
	movq	-104(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB190_11
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-64(%rbp), %rax
	jmp	LBB190_25
LBB190_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB190_13
	xorl	%edi, %edi
	jmp	LBB190_14
LBB190_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB190_14:
	leaq	L_.str65(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %r12
	jne	LBB190_16
	xorl	%edi, %edi
	jmp	LBB190_17
LBB190_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB190_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB190_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB190_25
LBB190_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB190_25
LBB190_20:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-64(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	jne	LBB190_22
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	jmp	LBB190_25
LBB190_22:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	_smpList_copy
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rdi, -56(%rbp)
	movq	8(%rcx), %rsi
	movq	%rsi, -48(%rbp)
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	jne	LBB190_24
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpList_copy
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
LBB190_24:
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	callq	_smpList_add_now
LBB190_25:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end190:

	.globl	_smpList_create_class
	.align	4, 0x90
_smpList_create_class:
Leh_func_begin191:
	pushq	%rbp
Ltmp492:
	movq	%rsp, %rbp
Ltmp493:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp494:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB191_2
	xorl	%edi, %edi
	jmp	LBB191_3
LBB191_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB191_3:
	leaq	L_.str65(%rip), %rbx
	movq	%rbx, %rsi
	callq	_minihash_get
	movq	%rax, %r14
	movq	%rdx, %r15
	leaq	_smpList_add(%rip), %rdi
	leaq	L_.str57(%rip), %r12
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str53(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_add_now(%rip), %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str66(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_append(%rip), %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str67(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_append_now(%rip), %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str68(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_at(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	leaq	L_.str59(%rip), %rax
	movq	%rax, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str75(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_at_assign(%rip), %rdi
	movl	$3, %esi
	movq	%r12, %rdx
	leaq	L_.str59(%rip), %rax
	movq	%rax, %rcx
	movq	%r12, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str76(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_car(%rip), %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str63(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_cdr(%rip), %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str64(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_concat(%rip), %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str69(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_concat_now(%rip), %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str77(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_copy(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str70(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_each(%rip), %rdi
	leaq	L_.str54(%rip), %rdx
	movl	$2, %esi
	leaq	L_.str49(%rip), %r8
	movq	%r8, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str71(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_emptyp(%rip), %rdi
	leaq	L_.str56(%rip), %r13
	movl	$1, %esi
	movq	%r13, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str72(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_equalp(%rip), %rdi
	movl	$2, %esi
	movq	%r13, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str58(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_length(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str59(%rip), %rax
	movq	%rax, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str60(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_map(%rip), %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	leaq	L_.str49(%rip), %r8
	movq	%r8, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str73(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_reduce(%rip), %rdi
	movl	$4, %esi
	leaq	L_.str46(%rip), %r13
	movq	%rbx, %rdx
	leaq	L_.str49(%rip), %r8
	movq	%r8, %rcx
	movq	%r13, %r8
	movq	%r12, %r9
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str74(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_reverse(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str61(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_sort(%rip), %rdi
	movl	$3, %esi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	leaq	L_.str49(%rip), %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str78(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_nsort(%rip), %rdi
	movl	$3, %esi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	leaq	L_.str49(%rip), %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str79(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_to_a(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str80(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_to_list(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str81(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_to_s(%rip), %rdi
	leaq	L_.str2(%rip), %rbx
	movl	$3, %esi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%rbx, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpList_write(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str62(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end191:

	.globl	_smpList_at
	.align	4, 0x90
_smpList_at:
Leh_func_begin192:
	pushq	%rbp
Ltmp495:
	movq	%rsp, %rbp
Ltmp496:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp497:
	movq	%rcx, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdi, -96(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	L_.str59(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB192_20
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str59(%rip), %r14
	jmp	LBB192_8
	.align	4, 0x90
LBB192_2:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB192_20
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB192_6
	.align	4, 0x90
LBB192_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB192_20
	incq	%r13
LBB192_6:
	cmpq	%r13, %r12
	ja	LBB192_4
	incq	%rbx
LBB192_8:
	cmpq	%rbx, -72(%rbp)
	ja	LBB192_2
	leaq	L_.str10(%rip), %rsi
	movq	-104(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB192_11
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-64(%rbp), %rax
	jmp	LBB192_24
LBB192_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB192_13
	xorl	%edi, %edi
	jmp	LBB192_14
LBB192_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB192_14:
	leaq	L_.str59(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %r12
	jne	LBB192_16
	xorl	%edi, %edi
	jmp	LBB192_17
LBB192_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB192_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB192_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB192_24
LBB192_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB192_24
LBB192_20:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	leaq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	_smpInteger_to_clong
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-56(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB192_23
	movq	-48(%rbp), %rdx
	testb	$15, (%rdx)
	jne	LBB192_23
	movq	%rsi, %rax
	jmp	LBB192_24
LBB192_23:
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	_smpList_at_c
LBB192_24:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end192:

	.globl	_smpList_at_assign
	.align	4, 0x90
_smpList_at_assign:
Leh_func_begin193:
	pushq	%rbp
Ltmp498:
	movq	%rsp, %rbp
Ltmp499:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp500:
	movq	%rcx, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdi, -96(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	L_.str59(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB193_20
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str59(%rip), %r14
	jmp	LBB193_8
	.align	4, 0x90
LBB193_2:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB193_20
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB193_6
	.align	4, 0x90
LBB193_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB193_20
	incq	%r13
LBB193_6:
	cmpq	%r13, %r12
	ja	LBB193_4
	incq	%rbx
LBB193_8:
	cmpq	%rbx, -72(%rbp)
	ja	LBB193_2
	leaq	L_.str10(%rip), %rsi
	movq	-104(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB193_11
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-64(%rbp), %rax
	jmp	LBB193_24
LBB193_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB193_13
	xorl	%edi, %edi
	jmp	LBB193_14
LBB193_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB193_14:
	leaq	L_.str59(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %r12
	jne	LBB193_16
	xorl	%edi, %edi
	jmp	LBB193_17
LBB193_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB193_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB193_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB193_24
LBB193_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB193_24
LBB193_20:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	leaq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	_smpInteger_to_clong
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-56(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB193_23
	movq	-48(%rbp), %rdx
	testb	$15, (%rdx)
	jne	LBB193_23
	movq	%rsi, %rax
	jmp	LBB193_24
LBB193_23:
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	24(%rdx), %r8
	movq	%rax, %rdx
	callq	_smpList_at_assign_c
LBB193_24:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end193:

	.globl	_smpList_concat_now
	.align	4, 0x90
_smpList_concat_now:
Leh_func_begin194:
	pushq	%rbp
Ltmp501:
	movq	%rsp, %rbp
Ltmp502:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp503:
	movq	%rcx, -64(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdi, -80(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	leaq	L_.str65(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB194_20
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str65(%rip), %r14
	jmp	LBB194_8
	.align	4, 0x90
LBB194_2:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB194_20
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB194_6
	.align	4, 0x90
LBB194_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB194_20
	incq	%r13
LBB194_6:
	cmpq	%r13, %r12
	ja	LBB194_4
	incq	%rbx
LBB194_8:
	cmpq	%rbx, -56(%rbp)
	ja	LBB194_2
	leaq	L_.str10(%rip), %rsi
	movq	-96(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB194_11
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-48(%rbp), %rax
	jmp	LBB194_23
LBB194_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB194_13
	xorl	%edi, %edi
	jmp	LBB194_14
LBB194_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB194_14:
	leaq	L_.str65(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %r12
	jne	LBB194_16
	xorl	%edi, %edi
	jmp	LBB194_17
LBB194_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB194_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB194_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB194_23
LBB194_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB194_23
LBB194_20:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-48(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	jne	LBB194_22
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	jmp	LBB194_23
LBB194_22:
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	callq	_smpList_add_now
LBB194_23:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end194:

	.globl	_smpList_each
	.align	4, 0x90
_smpList_each:
Leh_func_begin195:
	pushq	%rbp
Ltmp504:
	movq	%rsp, %rbp
Ltmp505:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp506:
	movq	%rcx, -64(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdi, %rax
	movq	%rax, -80(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	je	LBB195_33
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	leaq	L_.str49(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB195_31
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str49(%rip), %r14
	jmp	LBB195_9
	.align	4, 0x90
LBB195_3:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB195_31
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB195_7
	.align	4, 0x90
LBB195_5:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB195_31
	incq	%r13
LBB195_7:
	cmpq	%r13, %r12
	ja	LBB195_5
	incq	%rbx
LBB195_9:
	cmpq	%rbx, -72(%rbp)
	ja	LBB195_3
	leaq	L_.str10(%rip), %rsi
	movq	-88(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB195_12
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-56(%rbp), %rax
	jmp	LBB195_34
LBB195_12:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB195_14
	xorl	%edi, %edi
	jmp	LBB195_15
LBB195_14:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB195_15:
	leaq	L_.str49(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, %r12
	jne	LBB195_17
	xorl	%edi, %edi
	jmp	LBB195_18
LBB195_17:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB195_18:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-56(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-48(%rbp), %rax
	movq	%rax, 40(%r13)
LBB195_19:
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB195_30
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB195_34
LBB195_26:
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %r14
	movq	(%r14), %r15
	movq	8(%r14), %r14
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jne	LBB195_28
	xorl	%edi, %edi
	jmp	LBB195_29
LBB195_28:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB195_29:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	movq	-80(%rbp), %rdi
	movq	%rdi, 24(%r13)
	movq	%r12, 32(%r13)
	movq	-48(%rbp), %r14
	movq	%r14, 40(%r13)
	jmp	LBB195_19
LBB195_30:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB195_34
LBB195_31:
	movq	_smp_global@GOTPCREL(%rip), %rbx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r14
	movq	_smpType_id_list@GOTPCREL(%rip), %r15
	jmp	LBB195_32
	.align	4, 0x90
LBB195_21:
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %rcx
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movl	$1, %r8d
	movq	-48(%rbp), %r9
	callq	_smpFunction_call
	movl	(%r14), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB195_23
	testb	$15, (%rdx)
	je	LBB195_34
LBB195_23:
	movq	-48(%rbp), %rsi
	movq	16(%rsi), %rax
	testq	%rax, %rax
	je	LBB195_33
	movl	(%r15), %ecx
	movq	(%rax), %r12
	cmpl	%ecx, 8(%r12)
	jne	LBB195_26
	movq	8(%rax), %rsi
	movq	%rsi, -48(%rbp)
LBB195_32:
	cmpq	$0, -48(%rbp)
	jne	LBB195_21
LBB195_33:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
LBB195_34:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end195:

	.globl	_smpList_equalp
	.align	4, 0x90
_smpList_equalp:
Leh_func_begin196:
	pushq	%rbp
Ltmp507:
	movq	%rsp, %rbp
Ltmp508:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp509:
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rbx), %r12
	movq	(%r12), %rdi
	leaq	L_.str65(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB196_2
LBB196_1:
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	jmp	LBB196_27
LBB196_2:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%r15)
	movq	8(%rbx), %rbx
	jne	LBB196_4
	xorl	%ecx, %ecx
	jmp	LBB196_7
LBB196_4:
	movq	16(%r14), %rdx
	testq	%rdx, %rdx
	je	LBB196_28
	movl	$1, %ecx
	.align	4, 0x90
LBB196_6:
	incq	%rcx
	movq	8(%rdx), %rdx
	movq	16(%rdx), %rdx
	testq	%rdx, %rdx
	jne	LBB196_6
LBB196_7:
	cmpl	%eax, 8(%r12)
	jne	LBB196_9
	xorl	%edx, %edx
	jmp	LBB196_12
LBB196_9:
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	LBB196_29
	movl	$1, %edx
	.align	4, 0x90
LBB196_11:
	incq	%rdx
	movq	8(%rsi), %rsi
	movq	16(%rsi), %rsi
	testq	%rsi, %rsi
	jne	LBB196_11
LBB196_12:
	cmpq	%rdx, %rcx
	jne	LBB196_1
	movq	_smp_nil@GOTPCREL(%rip), %r12
	jmp	LBB196_25
	.align	4, 0x90
LBB196_14:
	movq	(%r14), %r15
	movq	8(%r14), %r13
	movq	(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	8(%rbx), %rax
	movq	%rax, -48(%rbp)
	movq	%r15, %rdi
	movq	%r13, %rsi
	leaq	L_.str58(%rip), %rdx
	callq	_smpObject_get_fun
	movl	8(%rax), %esi
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	cmpl	(%rcx), %esi
	movq	%rdx, %rcx
	jne	LBB196_16
	testb	$15, (%rcx)
	je	LBB196_17
LBB196_16:
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	movl	$1, %r8d
	leaq	-56(%rbp), %r9
	callq	_smpFunction_call
	movl	8(%rax), %esi
LBB196_17:
	movq	_smpType_id_nil@GOTPCREL(%rip), %r15
	movl	(%r15), %eax
	cmpl	%eax, %esi
	je	LBB196_1
	movq	16(%r14), %r15
	testq	%r15, %r15
	jne	LBB196_20
	movq	%r12, %r15
	leaq	8(%r12), %r14
	jmp	LBB196_21
LBB196_20:
	leaq	8(%r15), %r14
LBB196_21:
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	movq	(%r14), %r14
	movq	(%r15), %r15
	jne	LBB196_23
	leaq	8(%r12), %rbx
	jmp	LBB196_24
LBB196_23:
	addq	$8, %rbx
LBB196_24:
	movq	(%rbx), %rbx
LBB196_25:
	cmpl	%eax, 8(%r15)
	jne	LBB196_14
	movq	_smp_true@GOTPCREL(%rip), %rbx
LBB196_27:
	leaq	8(%rbx), %r14
	movq	(%rbx), %rax
	movq	(%r14), %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB196_28:
	movl	$1, %ecx
	jmp	LBB196_7
LBB196_29:
	movl	$1, %edx
	jmp	LBB196_12
Leh_func_end196:

	.globl	_smpList_length
	.align	4, 0x90
_smpList_length:
Leh_func_begin197:
	pushq	%rbp
Ltmp510:
	movq	%rsp, %rbp
Ltmp511:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp512:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	je	LBB197_15
	movq	%rdi, -48(%rbp)
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	xorl	%ebx, %ebx
	jmp	LBB197_2
	.align	4, 0x90
LBB197_5:
	incq	%rbx
	movq	8(%rcx), %rsi
LBB197_2:
	testq	%rsi, %rsi
	je	LBB197_13
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	LBB197_12
	movq	(%rcx), %r14
	cmpl	%eax, 8(%r14)
	je	LBB197_5
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r15
	movq	8(%rax), %r12
	movq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
	jne	LBB197_8
	xorl	%edi, %edi
	jmp	LBB197_9
LBB197_8:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB197_9:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r15, 8(%r13)
	movq	%r12, 16(%r13)
	movq	-48(%rbp), %rdi
	movq	%rdi, 24(%r13)
	movq	%r14, 32(%r13)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB197_11
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB197_14
LBB197_11:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB197_14
LBB197_12:
	incq	%rbx
LBB197_13:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%r14, %rdx
LBB197_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB197_15:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rbx, %rdx
	jmp	LBB197_14
Leh_func_end197:

	.globl	_smpList_map
	.align	4, 0x90
_smpList_map:
Leh_func_begin198:
	pushq	%rbp
Ltmp513:
	movq	%rsp, %rbp
Ltmp514:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp515:
	movq	%rcx, -88(%rbp)
	movq	%rdi, -56(%rbp)
	movq	%rsi, -48(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	jne	LBB198_2
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	jmp	LBB198_34
LBB198_2:
	movq	-88(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, -80(%rbp)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	L_.str49(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB198_22
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str49(%rip), %r14
	jmp	LBB198_10
	.align	4, 0x90
LBB198_4:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB198_22
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB198_8
	.align	4, 0x90
LBB198_6:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB198_22
	incq	%r13
LBB198_8:
	cmpq	%r13, %r12
	ja	LBB198_6
	incq	%rbx
LBB198_10:
	cmpq	%rbx, -96(%rbp)
	ja	LBB198_4
	leaq	L_.str10(%rip), %rsi
	movq	-104(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB198_13
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-80(%rbp), %rax
	jmp	LBB198_34
LBB198_13:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB198_15
	xorl	%edi, %edi
	jmp	LBB198_16
LBB198_15:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB198_16:
	leaq	L_.str49(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -88(%rbp)
	movq	%rdx, %r12
	jne	LBB198_18
	xorl	%edi, %edi
	jmp	LBB198_19
LBB198_18:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB198_19:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB198_21
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB198_34
LBB198_21:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB198_34
LBB198_22:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
	movq	8(%rcx), %rax
	movq	%rax, -96(%rbp)
	leaq	-56(%rbp), %r14
	movq	%rbx, -80(%rbp)
	movq	%rax, %r15
	jmp	LBB198_23
	.align	4, 0x90
LBB198_27:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rbx)
	je	LBB198_28
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%rbx, 16(%r15)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	callq	_smpObject_cons
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	cmpl	%ecx, 8(%rax)
	je	LBB198_32
LBB198_31:
	movq	%rax, %rbx
	jmp	LBB198_29
LBB198_32:
	testb	$15, (%rdx)
	jne	LBB198_31
	jmp	LBB198_34
LBB198_28:
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	callq	_smpObject_cons
	movq	%rax, %rbx
	movq	%rax, -80(%rbp)
	movq	%rdx, -96(%rbp)
LBB198_29:
	movq	%rdx, %r15
	movq	8(%r14), %r14
	movq	16(%r14), %r14
LBB198_23:
	testq	%r14, %r14
	je	LBB198_33
	movq	8(%r14), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rcx, -72(%rbp)
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rcx
	movq	_smp_global@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movl	$1, %r8d
	leaq	-72(%rbp), %rax
	movq	%rax, %r9
	callq	_smpFunction_call
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %r12
	movq	%rax, %r13
	jne	LBB198_27
	testb	$15, (%r12)
	jne	LBB198_27
	movq	%r13, %rax
	movq	%r12, %rdx
	jmp	LBB198_34
LBB198_33:
	movq	-80(%rbp), %rax
	movq	-96(%rbp), %rdx
LBB198_34:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end198:

	.globl	_smpList_reduce
	.align	4, 0x90
_smpList_reduce:
Leh_func_begin199:
	pushq	%rbp
Ltmp516:
	movq	%rsp, %rbp
Ltmp517:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
Ltmp518:
	cmpl	$2, %edx
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	movq	8(%rcx), %rax
	movq	%rax, -104(%rbp)
	jl	LBB199_2
	movq	16(%rcx), %rax
	movq	%rax, -120(%rbp)
	movq	24(%rcx), %rax
	movq	%rax, -128(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdi, -96(%rbp)
	jmp	LBB199_7
LBB199_2:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	jne	LBB199_4
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	jmp	LBB199_35
LBB199_4:
	movq	16(%rsi), %rax
	testq	%rax, %rax
	movq	(%rsi), %rcx
	movq	%rcx, -120(%rbp)
	movq	8(%rsi), %rcx
	movq	%rcx, -128(%rbp)
	jne	LBB199_6
	movq	_smp_nil@GOTPCREL(%rip), %rax
LBB199_6:
	movq	(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	8(%rax), %rsi
	movq	%rsi, -80(%rbp)
LBB199_7:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	leaq	L_.str49(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB199_27
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -112(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str49(%rip), %r14
	jmp	LBB199_15
	.align	4, 0x90
LBB199_9:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB199_27
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB199_13
	.align	4, 0x90
LBB199_11:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB199_27
	incq	%r13
LBB199_13:
	cmpq	%r13, %r12
	ja	LBB199_11
	incq	%rbx
LBB199_15:
	cmpq	%rbx, -112(%rbp)
	ja	LBB199_9
	leaq	L_.str10(%rip), %rsi
	movq	-136(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB199_18
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rdx
	jmp	LBB199_35
LBB199_18:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB199_20
	xorl	%edi, %edi
	jmp	LBB199_21
LBB199_20:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB199_21:
	leaq	L_.str49(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	%rdx, %r12
	jne	LBB199_23
	xorl	%edi, %edi
	jmp	LBB199_24
LBB199_23:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB199_24:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-104(%rbp), %rdx
	movq	%rdx, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB199_26
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB199_35
LBB199_26:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB199_35
LBB199_27:
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rbx
	movq	_smp_global@GOTPCREL(%rip), %r14
	leaq	-72(%rbp), %r15
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r12
	movq	_smp_nil@GOTPCREL(%rip), %r13
	movq	%rcx, %rdx
	jmp	LBB199_34
	.align	4, 0x90
LBB199_28:
	movq	-80(%rbp), %rsi
	movq	(%rsi), %rax
	movq	%rax, -56(%rbp)
	movq	8(%rsi), %rax
	movq	%rax, -48(%rbp)
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movl	$2, %r8d
	movq	%r15, %r9
	callq	_smpFunction_call
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movl	(%r12), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB199_30
	testb	$15, (%rdx)
	je	LBB199_35
LBB199_30:
	movq	-80(%rbp), %rsi
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	jne	LBB199_32
	leaq	8(%r13), %rsi
	movq	%r13, %rcx
	jmp	LBB199_33
LBB199_32:
	leaq	8(%rcx), %rsi
LBB199_33:
	movq	(%rsi), %rsi
	movq	%rsi, -80(%rbp)
	movq	(%rcx), %rdi
	movq	%rdi, -96(%rbp)
LBB199_34:
	movl	(%rbx), %ecx
	movq	-96(%rbp), %rdi
	cmpl	%ecx, 8(%rdi)
	jne	LBB199_28
LBB199_35:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end199:

	.globl	_smpList_sort
	.align	4, 0x90
_smpList_sort:
Leh_func_begin200:
	pushq	%rbp
Ltmp519:
	movq	%rsp, %rbp
Ltmp520:
	pushq	%r14
	pushq	%rbx
Ltmp521:
	movq	%rcx, %rbx
	movl	%edx, %r14d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpList_copy
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB200_2
	testb	$15, (%rdx)
	je	LBB200_3
LBB200_2:
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movl	%r14d, %edx
	callq	_smpList_nsort
LBB200_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end200:

	.globl	_smpList_nsort
	.align	4, 0x90
_smpList_nsort:
Leh_func_begin201:
	pushq	%rbp
Ltmp522:
	movq	%rsp, %rbp
Ltmp523:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp524:
	testl	%edx, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdi, -96(%rbp)
	jg	LBB201_4
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
LBB201_2:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-96(%rbp), %rdi
	cmpl	%eax, 8(%rdi)
	jne	LBB201_21
	xorl	%edx, %edx
	jmp	LBB201_24
LBB201_4:
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	L_.str49(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB201_2
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str49(%rip), %r14
	jmp	LBB201_12
	.align	4, 0x90
LBB201_6:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB201_2
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB201_10
	.align	4, 0x90
LBB201_8:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB201_2
	incq	%r13
LBB201_10:
	cmpq	%r13, %r12
	ja	LBB201_8
	incq	%rbx
LBB201_12:
	cmpq	%rbx, -56(%rbp)
	ja	LBB201_6
	leaq	L_.str10(%rip), %rsi
	movq	-104(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB201_15
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	jmp	LBB201_25
LBB201_15:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB201_17
	leaq	L_.str49(%rip), %rsi
	xorl	%edi, %edi
	callq	_minihash_get
	movq	%rdx, %rbx
	xorl	%edi, %edi
	jmp	LBB201_18
LBB201_17:
	movq	_scope_stack@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	decq	%rbx
	shlq	$5, %rbx
	addq	%rbx, %rdi
	leaq	L_.str49(%rip), %rsi
	callq	_minihash_get
	movq	%rbx, %rdi
	addq	(%r14), %rdi
	movq	%rdx, %rbx
LBB201_18:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	-80(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-72(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-64(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB201_20
	movq	%r14, %rax
	movq	%r15, %rdx
	jmp	LBB201_25
LBB201_20:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%r14, %rax
	jmp	LBB201_25
LBB201_21:
	movq	-88(%rbp), %rsi
	movq	16(%rsi), %rax
	testq	%rax, %rax
	je	LBB201_26
	movl	$1, %edx
	.align	4, 0x90
LBB201_23:
	incq	%rdx
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	LBB201_23
LBB201_24:
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	_smpList_sort_rec
LBB201_25:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB201_26:
	movl	$1, %edx
	jmp	LBB201_24
Leh_func_end201:

	.globl	_smpList_to_a
	.align	4, 0x90
_smpList_to_a:
Leh_func_begin202:
	pushq	%rbp
Ltmp525:
	movq	%rsp, %rbp
Ltmp526:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp527:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	movq	%rsi, %rbx
	jne	LBB202_2
	xorl	%r14d, %r14d
	jmp	LBB202_5
LBB202_2:
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	LBB202_15
	movl	$1, %r14d
	.align	4, 0x90
LBB202_4:
	incq	%r14
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	LBB202_4
LBB202_5:
	movq	%r14, %rax
	shrq	%rax
	orq	%r14, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	orq	%rcx, %rax
	movq	%rax, %r15
	shrq	$32, %r15
	orq	%rax, %r15
	shlq	$4, %r15
	addq	$16, %r15
	movq	%r15, %rdi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	___bzero
	testq	%r14, %r14
	jle	LBB202_11
	leaq	8(%r12), %rax
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	%r14, %rdx
	.align	4, 0x90
LBB202_7:
	movq	(%rbx), %rsi
	movq	%rsi, -8(%rax)
	movq	8(%rbx), %rsi
	movq	%rsi, (%rax)
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB202_9
	leaq	8(%rcx), %rbx
	jmp	LBB202_10
LBB202_9:
	addq	$8, %rbx
LBB202_10:
	addq	$16, %rax
	decq	%rdx
	movq	(%rbx), %rbx
	jne	LBB202_7
LBB202_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB202_13
	xorl	%edi, %edi
	jmp	LBB202_14
LBB202_13:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB202_14:
	leaq	L_.str86(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rdx
	movq	%r12, (%rdx)
	movq	%r14, 8(%rdx)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB202_15:
	movl	$1, %r14d
	jmp	LBB202_5
Leh_func_end202:

	.globl	_smpList_to_s
	.align	4, 0x90
_smpList_to_s:
Leh_func_begin203:
	pushq	%rbp
Ltmp528:
	movq	%rsp, %rbp
Ltmp529:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
Ltmp530:
	movq	%rcx, -144(%rbp)
	movl	%edx, %ebx
	movq	%rdi, -56(%rbp)
	movq	%rsi, -48(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -112(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, -120(%rbp)
	movl	$2, %edi
	callq	_GC_malloc
	movw	$40, (%rax)
	movq	%rax, (%r14)
	movq	$1, 8(%r14)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -152(%rbp)
	movq	%rcx, -72(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	%rax, -64(%rbp)
	testl	%ebx, %ebx
	jle	LBB203_22
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	leaq	L_.str2(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB203_21
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -136(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str2(%rip), %r14
	jmp	LBB203_9
	.align	4, 0x90
LBB203_3:
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB203_21
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB203_7
	.align	4, 0x90
LBB203_5:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB203_21
	incq	%r13
LBB203_7:
	cmpq	%r13, %r12
	ja	LBB203_5
	incq	%rbx
LBB203_9:
	cmpq	%rbx, -136(%rbp)
	ja	LBB203_3
	leaq	L_.str10(%rip), %rsi
	movq	-168(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB203_12
	movq	-144(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-128(%rbp), %rax
	jmp	LBB203_35
LBB203_12:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB203_14
	xorl	%edi, %edi
	jmp	LBB203_15
LBB203_14:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB203_15:
	leaq	L_.str2(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	-144(%rbp), %rcx
	movq	8(%rcx), %r14
	movq	%rdx, %r15
	jne	LBB203_17
	xorl	%edi, %edi
	jmp	LBB203_18
LBB203_17:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB203_18:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	$0, (%r12)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%r12)
	movq	%r15, 24(%r12)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%r12)
	movq	%r14, 40(%r12)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB203_20
	movq	%rbx, %rax
	movq	%r12, %rdx
	jmp	LBB203_35
LBB203_20:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r12, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB203_35
LBB203_21:
	movq	-128(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-144(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -64(%rbp)
	jmp	LBB203_23
LBB203_22:
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$2, %edi
	callq	_GC_malloc
	movw	$32, (%rax)
	movq	%rax, (%r14)
	movq	$1, 8(%r14)
	movq	%rbx, -72(%rbp)
	movq	%r14, -64(%rbp)
LBB203_23:
	leaq	-56(%rbp), %rbx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r14
	movl	$1, %r15d
	jmp	LBB203_33
	.align	4, 0x90
LBB203_24:
	movq	8(%rbx), %rax
	movq	(%rax), %r12
	movq	8(%rax), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	leaq	L_.str52(%rip), %rdx
	callq	_smpObject_get_fun
	movl	(%r14), %esi
	cmpl	%esi, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB203_27
	testb	$15, (%rcx)
	jne	LBB203_27
	movq	%rcx, %rdx
	jmp	LBB203_28
LBB203_27:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movl	(%r14), %esi
LBB203_28:
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	cmpl	%esi, 8(%rax)
	jne	LBB203_30
	testb	$15, (%rdx)
	je	LBB203_35
LBB203_30:
	testl	%r15d, %r15d
	jne	LBB203_32
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rax
	movq	%rax, %rcx
	callq	_smpString_add_now
LBB203_32:
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	callq	_smpString_add_now
	movq	8(%rbx), %rbx
	movq	16(%rbx), %rbx
	xorl	%r15d, %r15d
LBB203_33:
	testq	%rbx, %rbx
	jne	LBB203_24
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$2, %edi
	callq	_GC_malloc
	movw	$41, (%rax)
	movq	%rax, (%r14)
	movq	$1, 8(%r14)
	movq	%rbx, -104(%rbp)
	movq	%r14, -96(%rbp)
	movl	$1, %edx
	leaq	-104(%rbp), %rcx
	movq	-112(%rbp), %rbx
	movq	%rbx, %rdi
	movq	-120(%rbp), %r14
	movq	%r14, %rsi
	callq	_smpString_add_now
	movq	%rbx, %rax
	movq	%r14, %rdx
LBB203_35:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end203:

	.globl	_smpList_write
	.align	4, 0x90
_smpList_write:
Leh_func_begin204:
	pushq	%rbp
Ltmp531:
	movq	%rsp, %rbp
Ltmp532:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
Ltmp533:
	movq	%rcx, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%rsi, %rbx
	movq	%rdi, -56(%rbp)
	movq	%rbx, -48(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movl	$6, %edi
	callq	_GC_malloc
	movw	$116, 4(%rax)
	movl	$1936288808, (%rax)
	movq	%rax, (%r15)
	movq	$5, 8(%r15)
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -128(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movl	$2, %edi
	callq	_GC_malloc
	movw	$32, (%rax)
	movq	%rax, (%r12)
	movq	$1, 8(%r12)
	movq	-128(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	%r12, -64(%rbp)
	leaq	-56(%rbp), %r12
	jmp	LBB204_1
	.align	4, 0x90
LBB204_6:
	movq	8(%r12), %rbx
LBB204_1:
	movq	(%rbx), %r13
	movq	8(%rbx), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	leaq	L_.str62(%rip), %rdx
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB204_4
	testb	$15, (%rcx)
	jne	LBB204_4
	movq	%rcx, %rdx
	jmp	LBB204_5
LBB204_4:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movl	-116(%rbp), %r8d
	movq	-112(%rbp), %r9
	callq	_smpFunction_call
LBB204_5:
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	callq	_smpString_add_now
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	callq	_smpString_add_now
	movq	8(%r12), %rbx
	movq	16(%rbx), %r12
	testq	%r12, %r12
	jne	LBB204_6
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movl	$2, %edi
	callq	_GC_malloc
	movw	$41, (%rax)
	movq	%rax, (%r12)
	movq	$1, 8(%r12)
	movq	%rbx, -104(%rbp)
	movq	%r12, -96(%rbp)
	movl	$1, %edx
	leaq	-104(%rbp), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_smpString_add_now
	movq	%r14, %rax
	movq	%r15, %rdx
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end204:

	.globl	_smpFunction_create_class
	.align	4, 0x90
_smpFunction_create_class:
Leh_func_begin205:
	pushq	%rbp
Ltmp534:
	movq	%rsp, %rbp
Ltmp535:
	pushq	%r14
	pushq	%rbx
Ltmp536:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB205_2
	xorl	%edi, %edi
	jmp	LBB205_3
LBB205_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB205_3:
	leaq	L_.str49(%rip), %rsi
	callq	_minihash_get
	movq	%rax, %rbx
	movq	%rdx, %r14
	leaq	_smpFunction_clear(%rip), %rdi
	leaq	L_.str54(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str55(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFunction_to_s(%rip), %rdi
	leaq	L_.str2(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end205:

	.globl	_smpString_add_now
	.align	4, 0x90
_smpString_add_now:
Leh_func_begin206:
	pushq	%rbp
Ltmp537:
	movq	%rsp, %rbp
Ltmp538:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
Ltmp539:
	movq	%rsi, -176(%rbp)
	movq	(%rcx), %rbx
	testq	%rbx, %rbx
	movq	%rcx, -192(%rbp)
	movq	%rdi, -184(%rbp)
	je	LBB206_12
	movl	8(%rdi), %r14d
	cmpl	%r14d, 8(%rbx)
	je	LBB206_19
	movq	56(%rdi), %rax
	movq	%rax, -112(%rbp)
	movq	48(%rdi), %rax
	movq	%rax, -120(%rbp)
	movq	40(%rdi), %rax
	movq	%rax, -128(%rbp)
	movq	32(%rdi), %rax
	movq	%rax, -136(%rbp)
	movq	24(%rdi), %rax
	movq	%rax, -144(%rbp)
	movq	16(%rdi), %rax
	movq	%rax, -152(%rbp)
	movl	12(%rdi), %eax
	movl	%eax, -156(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -168(%rbp)
	xorl	%r15d, %r15d
	jmp	LBB206_10
	.align	4, 0x90
LBB206_3:
	movq	16(%rbx), %rax
	movq	(%rax,%r15,8), %r12
	movq	-168(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	%r14d, -96(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	testq	%r12, %r12
	je	LBB206_9
	cmpl	%r14d, 8(%r12)
	je	LBB206_19
	xorl	%r13d, %r13d
	jmp	LBB206_8
	.align	4, 0x90
LBB206_6:
	movq	16(%r12), %rax
	movq	(%rax,%r13,8), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smpObject_instancep_c
	testl	%eax, %eax
	jne	LBB206_19
	incq	%r13
LBB206_8:
	cmpq	%r13, 24(%r12)
	ja	LBB206_6
LBB206_9:
	incq	%r15
LBB206_10:
	cmpq	%r15, 24(%rbx)
	ja	LBB206_3
	movq	-192(%rbp), %rcx
	movq	(%rcx), %rbx
LBB206_12:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
	movq	8(%rcx), %r15
	movq	-192(%rbp), %rcx
	movq	8(%rcx), %r12
	jne	LBB206_14
	xorl	%edi, %edi
	jmp	LBB206_15
LBB206_14:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB206_15:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %rsi
	movq	%rsi, -176(%rbp)
	movq	$0, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%r15, 16(%rsi)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rsi)
	movq	%rbx, 32(%rsi)
	movq	%r12, 40(%rsi)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB206_17
	movq	%r13, -184(%rbp)
	jmp	LBB206_18
LBB206_17:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	-176(%rbp), %rsi
	movq	%rsi, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -184(%rbp)
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, -176(%rbp)
LBB206_18:
	movq	-184(%rbp), %rax
	movq	-176(%rbp), %rdx
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB206_19:
	movq	-176(%rbp), %rbx
	movq	(%rbx), %rdi
	movq	8(%rbx), %r14
	movq	-192(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	(%rax), %r15
	movq	8(%rax), %r12
	leaq	1(%r14,%r12), %rsi
	callq	_GC_realloc
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	addq	8(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_memcpy
	addq	%r12, %r14
	movq	%r14, 8(%rbx)
	jmp	LBB206_18
Leh_func_end206:

	.globl	_smpRegex_match_str
	.align	4, 0x90
_smpRegex_match_str:
Leh_func_begin207:
	pushq	%rbp
Ltmp540:
	movq	%rsp, %rbp
Ltmp541:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp542:
	movq	%rdx, -64(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdi, -72(%rbp)
	movq	(%rsi), %rax
	movq	%rax, -80(%rbp)
	leaq	L_.str2(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB207_20
	movq	-48(%rbp), %rsi
	movq	24(%rsi), %rax
	movq	%rax, -56(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str2(%rip), %r14
	jmp	LBB207_8
	.align	4, 0x90
LBB207_2:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB207_20
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB207_6
	.align	4, 0x90
LBB207_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB207_20
	incq	%r13
LBB207_6:
	cmpq	%r13, %r12
	ja	LBB207_4
	incq	%rbx
LBB207_8:
	cmpq	%rbx, -56(%rbp)
	ja	LBB207_2
	leaq	L_.str10(%rip), %rsi
	movq	-80(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB207_11
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	jmp	LBB207_33
LBB207_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB207_13
	xorl	%edi, %edi
	jmp	LBB207_14
LBB207_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB207_14:
	leaq	L_.str2(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	%rdx, %r12
	jne	LBB207_16
	xorl	%edi, %edi
	jmp	LBB207_17
LBB207_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB207_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-48(%rbp), %rsi
	movq	%rsi, 32(%r13)
	movq	-64(%rbp), %rdx
	movq	%rdx, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB207_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB207_33
LBB207_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB207_33
LBB207_20:
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	-72(%rbp), %r14
	movq	%r14, %rsi
	callq	_regcomp
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	_smpRegex_compile_handle_errors
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB207_23
	movq	%rdx, %r14
	testb	$15, (%r14)
	jne	LBB207_23
	movq	%rax, %r15
	jmp	LBB207_32
LBB207_23:
	leaq	-1024(%rsp), %r14
	movq	%r14, %rsp
	movl	$1024, %esi
	movq	%r14, %rdi
	callq	___bzero
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rsi
	movl	$64, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	_regexec
	testl	%eax, %eax
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r15
	movq	8(%rax), %rax
	jne	LBB207_31
	leaq	8(%r14), %r15
	xorl	%r12d, %r12d
	jmp	LBB207_29
LBB207_27:
	incq	%r12
	jmp	LBB207_30
	.align	4, 0x90
LBB207_25:
	cmpq	$0, -8(%r15)
	jne	LBB207_28
	cmpq	$0, (%r15)
	je	LBB207_27
LBB207_28:
	addq	$16, %r15
	incq	%r12
LBB207_29:
	cmpq	$64, %r12
	jb	LBB207_25
LBB207_30:
	movq	%r12, %r15
	shlq	$4, %r15
	movq	%r15, %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_memcpy
	movq	_smpType_regmatch@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r15
	movl	$16, %edi
	callq	_GC_malloc
	movq	%r13, (%rax)
	movq	%r12, 8(%rax)
LBB207_31:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_regfree
LBB207_32:
	movq	%rbx, %rdi
	callq	_GC_free
	movq	%r15, %rax
	movq	%r14, %rdx
LBB207_33:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end207:

	.globl	_smpRegex_match
	.align	4, 0x90
_smpRegex_match:
Leh_func_begin208:
	pushq	%rbp
Ltmp543:
	movq	%rsp, %rbp
Ltmp544:
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	(%rsi), %rdi
	movq	%rax, %rsi
	callq	_smpRegex_match_str
	popq	%rbp
	ret
Leh_func_end208:

	.globl	_smpRegex_matchp_cint
	.align	4, 0x90
_smpRegex_matchp_cint:
Leh_func_begin209:
	pushq	%rbp
Ltmp545:
	movq	%rsp, %rbp
Ltmp546:
	pushq	%rbx
	subq	$8, %rsp
Ltmp547:
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	(%rsi), %rdi
	movq	%rax, %rsi
	callq	_smpRegex_match_str
	movq	(%rax), %rbx
	leaq	L_.str10(%rip), %rsi
	movq	%rbx, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB209_2
	leaq	L_.str82(%rip), %rsi
	movq	%rbx, %rdi
	callq	_strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	LBB209_3
LBB209_2:
	movl	$-1, %eax
LBB209_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end209:

	.globl	_smpRegex_matchp
	.align	4, 0x90
_smpRegex_matchp:
Leh_func_begin210:
	pushq	%rbp
Ltmp548:
	movq	%rsp, %rbp
Ltmp549:
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	(%rsi), %rdi
	movq	%rax, %rsi
	callq	_smpRegex_match_str
	movl	8(%rax), %ecx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rsi
	cmpl	(%rsi), %ecx
	jne	LBB210_2
	testb	$15, (%rdx)
	je	LBB210_6
LBB210_2:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %ecx
	jne	LBB210_4
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	jmp	LBB210_5
LBB210_4:
	movq	_smp_true@GOTPCREL(%rip), %rcx
LBB210_5:
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
LBB210_6:
	popq	%rbp
	ret
Leh_func_end210:

	.globl	_smpInteger_to_s
	.align	4, 0x90
_smpInteger_to_s:
Leh_func_begin211:
	pushq	%rbp
Ltmp550:
	movq	%rsp, %rbp
Ltmp551:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp552:
	movq	%rcx, -64(%rbp)
	testl	%edx, %edx
	movq	%rsi, -72(%rbp)
	jne	LBB211_2
LBB211_1:
	movl	$10, %esi
	jmp	LBB211_25
LBB211_2:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	cmpl	%eax, 8(%rcx)
	je	LBB211_1
	movq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	leaq	L_.str59(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB211_23
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str59(%rip), %r14
	jmp	LBB211_11
	.align	4, 0x90
LBB211_5:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB211_23
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB211_9
	.align	4, 0x90
LBB211_7:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB211_23
	incq	%r13
LBB211_9:
	cmpq	%r13, %r12
	ja	LBB211_7
	incq	%rbx
LBB211_11:
	cmpq	%rbx, -56(%rbp)
	ja	LBB211_5
	leaq	L_.str10(%rip), %rsi
	movq	-80(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB211_14
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rbx
	jmp	LBB211_26
LBB211_14:
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB211_16
	xorl	%edi, %edi
	jmp	LBB211_17
LBB211_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB211_17:
	leaq	L_.str59(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %r12
	jne	LBB211_19
	xorl	%edi, %edi
	jmp	LBB211_20
LBB211_19:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB211_20:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	$0, (%rbx)
	movq	%r14, 8(%rbx)
	movq	%r15, 16(%rbx)
	movq	%r12, 24(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rbx)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB211_22
	movq	%r13, -48(%rbp)
	jmp	LBB211_26
LBB211_22:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r13, (%r14)
	movq	%rbx, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -48(%rbp)
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rbx
	jmp	LBB211_26
LBB211_23:
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rbx
	movq	%rbx, %rdi
	callq	___gmpz_fits_sint_p
	testl	%eax, %eax
	je	LBB211_1
	movq	%rbx, %rdi
	callq	___gmpz_get_si
	movl	%eax, %esi
LBB211_25:
	xorl	%edi, %edi
	movq	-72(%rbp), %rdx
	callq	___gmpz_get_str
	movq	%rax, %r14
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -48(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_strlen
	movq	%r14, (%rbx)
	movq	%rax, 8(%rbx)
LBB211_26:
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end211:

	.globl	_smpInteger_xor
	.align	4, 0x90
_smpInteger_xor:
Leh_func_begin212:
	pushq	%rbp
Ltmp553:
	movq	%rsp, %rbp
Ltmp554:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp555:
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rbx
	cmpl	%eax, 8(%rbx)
	movq	%rcx, %r14
	jne	LBB212_2
	movq	%rsi, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	___gmpz_init
	movq	8(%r14), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_xor
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB212_8
LBB212_2:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r12
	movq	8(%rax), %r13
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)
	jne	LBB212_4
	xorl	%edi, %edi
	jmp	LBB212_5
LBB212_4:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB212_5:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r12, 8(%r15)
	movq	%r13, 16(%r15)
	movq	_smpType_int@GOTPCREL(%rip), %rax
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB212_7
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
LBB212_7:
	movq	%r14, %rax
LBB212_8:
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end212:

	.globl	_smpInteger_not
	.align	4, 0x90
_smpInteger_not:
Leh_func_begin213:
	pushq	%rbp
Ltmp556:
	movq	%rsp, %rbp
Ltmp557:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp558:
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rbx
	cmpl	%eax, 8(%rbx)
	movq	%rcx, %r14
	jne	LBB213_2
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	___gmpz_init
	movq	8(%r14), %rsi
	movq	%r15, %rdi
	callq	___gmpz_com
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB213_8
LBB213_2:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r12
	movq	8(%rax), %r13
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)
	jne	LBB213_4
	xorl	%edi, %edi
	jmp	LBB213_5
LBB213_4:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB213_5:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r12, 8(%r15)
	movq	%r13, 16(%r15)
	movq	_smpType_int@GOTPCREL(%rip), %rax
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB213_7
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
LBB213_7:
	movq	%r14, %rax
LBB213_8:
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end213:

	.globl	_smpInteger_ior
	.align	4, 0x90
_smpInteger_ior:
Leh_func_begin214:
	pushq	%rbp
Ltmp559:
	movq	%rsp, %rbp
Ltmp560:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp561:
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rbx
	cmpl	%eax, 8(%rbx)
	movq	%rcx, %r14
	jne	LBB214_2
	movq	%rsi, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	___gmpz_init
	movq	8(%r14), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_ior
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB214_8
LBB214_2:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r12
	movq	8(%rax), %r13
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)
	jne	LBB214_4
	xorl	%edi, %edi
	jmp	LBB214_5
LBB214_4:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB214_5:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r12, 8(%r15)
	movq	%r13, 16(%r15)
	movq	_smpType_int@GOTPCREL(%rip), %rax
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB214_7
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
LBB214_7:
	movq	%r14, %rax
LBB214_8:
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end214:

	.globl	_smpInteger_and
	.align	4, 0x90
_smpInteger_and:
Leh_func_begin215:
	pushq	%rbp
Ltmp562:
	movq	%rsp, %rbp
Ltmp563:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp564:
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rbx
	cmpl	%eax, 8(%rbx)
	movq	%rcx, %r14
	jne	LBB215_2
	movq	%rsi, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	___gmpz_init
	movq	8(%r14), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_and
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB215_8
LBB215_2:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r12
	movq	8(%rax), %r13
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)
	jne	LBB215_4
	xorl	%edi, %edi
	jmp	LBB215_5
LBB215_4:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB215_5:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r12, 8(%r15)
	movq	%r13, 16(%r15)
	movq	_smpType_int@GOTPCREL(%rip), %rax
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB215_7
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
LBB215_7:
	movq	%r14, %rax
LBB215_8:
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end215:

	.globl	_smpInteger_shr
	.align	4, 0x90
_smpInteger_shr:
Leh_func_begin216:
	pushq	%rbp
Ltmp565:
	movq	%rsp, %rbp
Ltmp566:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp567:
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rbx
	cmpl	%eax, 8(%rbx)
	jne	LBB216_7
	movq	8(%rcx), %rbx
	movl	4(%rbx), %eax
	cmpl	$2, %eax
	jb	LBB216_3
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %r14
	jmp	LBB216_13
LBB216_3:
	movq	%rsi, %r15
	testl	%eax, %eax
	jne	LBB216_5
	xorl	%ebx, %ebx
	jmp	LBB216_6
LBB216_5:
	movq	8(%rbx), %rbx
	movq	(%rbx), %rbx
LBB216_6:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	___gmpz_init
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	___gmpz_fdiv_q_2exp
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB216_13
LBB216_7:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r15
	movq	8(%rax), %r12
	movq	8(%rcx), %rax
	movq	%rax, -48(%rbp)
	jne	LBB216_9
	xorl	%edi, %edi
	jmp	LBB216_10
LBB216_9:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB216_10:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	$0, (%r14)
	movq	%r15, 8(%r14)
	movq	%r12, 16(%r14)
	movq	_smpType_int@GOTPCREL(%rip), %rax
	movq	%rax, 24(%r14)
	movq	%rbx, 32(%r14)
	movq	-48(%rbp), %rax
	movq	%rax, 40(%r14)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB216_12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	%r14, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
LBB216_12:
	movq	%r13, %rax
LBB216_13:
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end216:

	.globl	_smpInteger_shl
	.align	4, 0x90
_smpInteger_shl:
Leh_func_begin217:
	pushq	%rbp
Ltmp568:
	movq	%rsp, %rbp
Ltmp569:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp570:
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rbx
	cmpl	%eax, 8(%rbx)
	jne	LBB217_7
	movq	8(%rcx), %rbx
	movl	4(%rbx), %eax
	cmpl	$2, %eax
	jb	LBB217_3
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %r14
	jmp	LBB217_13
LBB217_3:
	movq	%rsi, %r15
	testl	%eax, %eax
	jne	LBB217_5
	xorl	%ebx, %ebx
	jmp	LBB217_6
LBB217_5:
	movq	8(%rbx), %rbx
	movq	(%rbx), %rbx
LBB217_6:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	___gmpz_init
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	___gmpz_mul_2exp
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB217_13
LBB217_7:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r15
	movq	8(%rax), %r12
	movq	8(%rcx), %rax
	movq	%rax, -48(%rbp)
	jne	LBB217_9
	xorl	%edi, %edi
	jmp	LBB217_10
LBB217_9:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB217_10:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	$0, (%r14)
	movq	%r15, 8(%r14)
	movq	%r12, 16(%r14)
	movq	_smpType_int@GOTPCREL(%rip), %rax
	movq	%rax, 24(%r14)
	movq	%rbx, 32(%r14)
	movq	-48(%rbp), %rax
	movq	%rax, 40(%r14)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB217_12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	%r14, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
LBB217_12:
	movq	%r13, %rax
LBB217_13:
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end217:

	.globl	_smpInteger_pow
	.align	4, 0x90
_smpInteger_pow:
Leh_func_begin218:
	pushq	%rbp
Ltmp571:
	movq	%rsp, %rbp
Ltmp572:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp573:
	movq	(%rcx), %rax
	movq	%rax, -80(%rbp)
	movl	8(%rax), %eax
	movq	_smpType_id_int@GOTPCREL(%rip), %r8
	cmpl	(%r8), %eax
	movq	%rcx, %rbx
	movq	%rsi, %r14
	jne	LBB218_2
	leaq	-72(%rbp), %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %r12
	movl	(%r12), %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_mpfr_set_z
	movq	8(%rbx), %rdx
	movl	(%r12), %ecx
	movq	%r15, %rdi
	movq	%r15, %rsi
	callq	_mpfr_pow_z
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	callq	___gmpz_init
	movl	(%r12), %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	_mpfr_get_z
	movq	%r15, %rdi
	callq	_mpfr_clear
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB218_13
LBB218_2:
	movq	_smpType_id_float@GOTPCREL(%rip), %r13
	cmpl	(%r13), %eax
	jne	LBB218_4
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_mpfr_pow
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB218_13
LBB218_4:
	movq	_scope_length@GOTPCREL(%rip), %r13
	movq	(%r13), %r13
	testq	%r13, %r13
	jne	LBB218_6
	xorl	%edi, %edi
	jmp	LBB218_7
LBB218_6:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r13, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB218_7:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r13, %r13
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	8(%rbx), %rax
	movq	%rax, -88(%rbp)
	movq	%rdx, %rbx
	jne	LBB218_9
	xorl	%edi, %edi
	jmp	LBB218_10
LBB218_9:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r13
	leaq	-32(%r13,%rax), %rdi
LBB218_10:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r12
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%rbx, 24(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%r12), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB218_12
	movq	%r12, %rax
	jmp	LBB218_13
LBB218_12:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r12, (%rbx)
	movq	%r13, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r13
	movq	%r14, %rax
LBB218_13:
	movq	%r13, %rdx
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end218:

	.globl	_smpInteger_mod
	.align	4, 0x90
_smpInteger_mod:
Leh_func_begin219:
	pushq	%rbp
Ltmp574:
	movq	%rsp, %rbp
Ltmp575:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp576:
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rcx), %rbx
	cmpl	%eax, 8(%rbx)
	movq	%rcx, %r14
	jne	LBB219_2
	movq	%rsi, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	___gmpz_init
	movq	8(%r14), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_mod
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB219_8
LBB219_2:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r12
	movq	8(%rax), %r13
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)
	jne	LBB219_4
	xorl	%edi, %edi
	jmp	LBB219_5
LBB219_4:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB219_5:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r12, 8(%r15)
	movq	%r13, 16(%r15)
	movq	_smpType_int@GOTPCREL(%rip), %rax
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB219_7
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
LBB219_7:
	movq	%r14, %rax
LBB219_8:
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end219:

	.globl	_smpInteger_div
	.align	4, 0x90
_smpInteger_div:
Leh_func_begin220:
	pushq	%rbp
Ltmp577:
	movq	%rsp, %rbp
Ltmp578:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp579:
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movl	8(%rax), %eax
	movq	_smpType_id_int@GOTPCREL(%rip), %r8
	cmpl	(%r8), %eax
	movq	%rcx, %rbx
	movq	%rsi, %r14
	jne	LBB220_2
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	___gmpz_init
	movq	8(%rbx), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	___gmpz_fdiv_q
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB220_13
LBB220_2:
	movq	_smpType_id_float@GOTPCREL(%rip), %r15
	cmpl	(%r15), %eax
	jne	LBB220_4
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rsi
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	_mpfr_div_z
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB220_13
LBB220_4:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	LBB220_6
	xorl	%edi, %edi
	jmp	LBB220_7
LBB220_6:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r15, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB220_7:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r12
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %rbx
	jne	LBB220_9
	xorl	%edi, %edi
	jmp	LBB220_10
LBB220_9:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB220_10:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r14, 8(%r15)
	movq	%r12, 16(%r15)
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB220_12
	movq	%r13, %rax
	jmp	LBB220_13
LBB220_12:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
	movq	%r14, %rax
LBB220_13:
	movq	%r15, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end220:

	.globl	_smpInteger_mul
	.align	4, 0x90
_smpInteger_mul:
Leh_func_begin221:
	pushq	%rbp
Ltmp580:
	movq	%rsp, %rbp
Ltmp581:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp582:
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movl	8(%rax), %eax
	movq	_smpType_id_int@GOTPCREL(%rip), %r8
	cmpl	(%r8), %eax
	movq	%rcx, %rbx
	movq	%rsi, %r14
	jne	LBB221_2
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	___gmpz_init
	movq	8(%rbx), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	___gmpz_mul
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB221_13
LBB221_2:
	movq	_smpType_id_float@GOTPCREL(%rip), %r15
	cmpl	(%r15), %eax
	jne	LBB221_4
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rsi
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	_mpfr_mul_z
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB221_13
LBB221_4:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	LBB221_6
	xorl	%edi, %edi
	jmp	LBB221_7
LBB221_6:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r15, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB221_7:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r12
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %rbx
	jne	LBB221_9
	xorl	%edi, %edi
	jmp	LBB221_10
LBB221_9:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB221_10:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r14, 8(%r15)
	movq	%r12, 16(%r15)
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB221_12
	movq	%r13, %rax
	jmp	LBB221_13
LBB221_12:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
	movq	%r14, %rax
LBB221_13:
	movq	%r15, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end221:

	.globl	_smpInteger_sub
	.align	4, 0x90
_smpInteger_sub:
Leh_func_begin222:
	pushq	%rbp
Ltmp583:
	movq	%rsp, %rbp
Ltmp584:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp585:
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movl	8(%rax), %eax
	movq	_smpType_id_int@GOTPCREL(%rip), %r8
	cmpl	(%r8), %eax
	movq	%rcx, %rbx
	movq	%rsi, %r14
	jne	LBB222_2
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	___gmpz_init
	movq	8(%rbx), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	___gmpz_sub
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB222_13
LBB222_2:
	movq	_smpType_id_float@GOTPCREL(%rip), %r15
	cmpl	(%r15), %eax
	jne	LBB222_4
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rsi
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	_mpfr_sub_z
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB222_13
LBB222_4:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	LBB222_6
	xorl	%edi, %edi
	jmp	LBB222_7
LBB222_6:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r15, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB222_7:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r12
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %rbx
	jne	LBB222_9
	xorl	%edi, %edi
	jmp	LBB222_10
LBB222_9:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB222_10:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r14, 8(%r15)
	movq	%r12, 16(%r15)
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB222_12
	movq	%r13, %rax
	jmp	LBB222_13
LBB222_12:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
	movq	%r14, %rax
LBB222_13:
	movq	%r15, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end222:

	.globl	_smpInteger_dec
	.align	4, 0x90
_smpInteger_dec:
Leh_func_begin223:
	pushq	%rbp
Ltmp586:
	movq	%rsp, %rbp
Ltmp587:
	movl	$1, %edx
	movq	_smpInteger_one@GOTPCREL(%rip), %rcx
	callq	_smpInteger_sub
	popq	%rbp
	ret
Leh_func_end223:

	.globl	_smpInteger_add
	.align	4, 0x90
_smpInteger_add:
Leh_func_begin224:
	pushq	%rbp
Ltmp588:
	movq	%rsp, %rbp
Ltmp589:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp590:
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movl	8(%rax), %eax
	movq	_smpType_id_int@GOTPCREL(%rip), %r8
	cmpl	(%r8), %eax
	movq	%rcx, %rbx
	movq	%rsi, %r14
	jne	LBB224_2
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	___gmpz_init
	movq	8(%rbx), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	___gmpz_add
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB224_13
LBB224_2:
	movq	_smpType_id_float@GOTPCREL(%rip), %r15
	cmpl	(%r15), %eax
	jne	LBB224_4
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rsi
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	_mpfr_add_z
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB224_13
LBB224_4:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	LBB224_6
	xorl	%edi, %edi
	jmp	LBB224_7
LBB224_6:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r15, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB224_7:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r12
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %rbx
	jne	LBB224_9
	xorl	%edi, %edi
	jmp	LBB224_10
LBB224_9:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB224_10:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r14, 8(%r15)
	movq	%r12, 16(%r15)
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB224_12
	movq	%r13, %rax
	jmp	LBB224_13
LBB224_12:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
	movq	%r14, %rax
LBB224_13:
	movq	%r15, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end224:

	.globl	_smpInteger_inc
	.align	4, 0x90
_smpInteger_inc:
Leh_func_begin225:
	pushq	%rbp
Ltmp591:
	movq	%rsp, %rbp
Ltmp592:
	movl	$1, %edx
	movq	_smpInteger_one@GOTPCREL(%rip), %rcx
	callq	_smpInteger_add
	popq	%rbp
	ret
Leh_func_end225:

	.globl	_smpGlobal_set_seed
	.align	4, 0x90
_smpGlobal_set_seed:
Leh_func_begin226:
	pushq	%rbp
Ltmp593:
	movq	%rsp, %rbp
Ltmp594:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp595:
	movq	%rcx, -80(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	leaq	L_.str59(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB226_20
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str59(%rip), %r14
	jmp	LBB226_8
	.align	4, 0x90
LBB226_2:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB226_20
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB226_6
	.align	4, 0x90
LBB226_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB226_20
	incq	%r13
LBB226_6:
	cmpq	%r13, %r12
	ja	LBB226_4
	incq	%rbx
LBB226_8:
	cmpq	%rbx, -72(%rbp)
	ja	LBB226_2
	leaq	L_.str10(%rip), %rsi
	movq	-88(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB226_11
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-64(%rbp), %rax
	jmp	LBB226_28
LBB226_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB226_13
	xorl	%edi, %edi
	jmp	LBB226_14
LBB226_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB226_14:
	leaq	L_.str59(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %r12
	jne	LBB226_16
	xorl	%edi, %edi
	jmp	LBB226_17
LBB226_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB226_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB226_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB226_28
LBB226_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB226_28
LBB226_20:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	leaq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	_smpInteger_to_clong
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-56(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB226_23
	movq	-48(%rbp), %rdx
	testb	$15, (%rdx)
	jne	LBB226_23
	movq	%rsi, %rax
	jmp	LBB226_28
LBB226_23:
	movl	%eax, _sfmt(%rip)
	movl	%eax, %ecx
	shrl	$30, %ecx
	xorl	%eax, %ecx
	imull	$1812433253, %ecx, %eax
	incl	%eax
	movl	%eax, _sfmt+4(%rip)
	movl	$1, %ecx
	movl	$2, %edx
	leaq	_sfmt(%rip), %rsi
	.align	4, 0x90
LBB226_24:
	movl	%eax, %edi
	shrl	$30, %edi
	xorl	%eax, %edi
	imull	$1812433253, %edi, %edi
	leal	(%rdx,%rdi), %eax
	movl	%eax, (%rsi,%rdx,4)
	incq	%rcx
	movl	%ecx, %eax
	addl	%edi, %eax
	incq	%rdx
	cmpq	$624, %rdx
	jne	LBB226_24
	movl	_sfmt(%rip), %eax
	movl	$624, _idx(%rip)
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	$331998852, %edx
	andl	_sfmt+12(%rip), %edx
	addl	%edx, %ecx
	shrl	$16, %edx
	xorl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$4, %edx
	xorl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$2, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	%ecx, %edx
	testb	$1, %dl
	jne	LBB226_27
	xorl	$1, %eax
	movl	%eax, _sfmt(%rip)
LBB226_27:
	movb	$1, _initialized.b(%rip)
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
LBB226_28:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end226:

	.globl	_smpFunction_call
	.align	4, 0x90
_smpFunction_call:
Leh_func_begin227:
	pushq	%rbp
Ltmp596:
	movq	%rsp, %rbp
Ltmp597:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
Ltmp598:
	movq	%r9, %rbx
	movl	%r8d, %r14d
	movq	%rcx, -120(%rbp)
	movq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	%rsi, -136(%rbp)
	movq	%rdi, -104(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	(%rax), %rdi
	leaq	L_.str49(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB227_10
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %r14
	movq	(%r14), %r15
	movq	8(%r14), %r14
	movq	%r14, -104(%rbp)
	jne	LBB227_3
	xorl	%edi, %edi
	jmp	LBB227_4
LBB227_3:
	movq	_scope_stack@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	shlq	$5, %rbx
	leaq	-32(%rbx,%r14), %rdi
LBB227_4:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movq	%rbx, -112(%rbp)
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	$0, (%r14)
	movq	%r15, 8(%r14)
	movq	-104(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	_smpType_function@GOTPCREL(%rip), %rax
	movq	%rax, 24(%r14)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%r14)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%r14)
	movq	(%rbx), %rdi
LBB227_5:
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB227_8
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	-112(%rbp), %rax
	movq	%rax, (%rbx)
	movq	%r14, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -112(%rbp)
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
LBB227_7:
	movq	$1, 16(%rax)
	movq	%rax, %r14
LBB227_8:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB227_40
	movq	%r14, %rdx
	movq	-112(%rbp), %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB227_10:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rcx
	movq	%rcx, -152(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	16(%rax), %rcx
	movswl	24(%rax), %eax
	decl	%eax
	movl	%eax, -112(%rbp)
	shll	$4, %eax
	movq	%rsp, %r15
	subq	%rax, %r15
	movq	%r15, %rsp
	leaq	8(%rbx), %rax
	leaq	72(%rcx), %rdx
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	movq	%r12, %rsi
	jmp	LBB227_11
	.align	4, 0x90
LBB227_26:
	cmpl	%r14d, %r13d
	jge	LBB227_28
	leaq	(%rbx,%r12), %r8
	leaq	(%rax,%r12), %rdi
	jmp	LBB227_16
LBB227_14:
	testb	$4, %dil
	je	LBB227_33
	leaq	(%rsi,%rsi,4), %rdi
	leaq	16(%rcx,%rdi,8), %r8
	leaq	24(%rcx,%rdi,8), %rdi
LBB227_16:
	movq	(%r8), %r8
	movq	%r8, (%r15,%r12)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%r15,%r12)
	incl	%r13d
	addq	$40, %rdx
	addq	$16, %r12
LBB227_11:
	cmpl	-112(%rbp), %r13d
	jge	LBB227_32
	incq	%rsi
	cmpl	%r14d, %r13d
	jl	LBB227_17
	movq	-24(%rdx), %rdi
	testb	$2, %dil
	jne	LBB227_14
LBB227_17:
	testb	$1, (%rdx)
	je	LBB227_26
	decl	%r14d
	cmpl	%r13d, %r14d
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	jl	LBB227_20
	.align	4, 0x90
LBB227_19:
	movslq	%r14d, %r14
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	(%rbx,%rcx), %rdi
	movq	8(%rbx,%rcx), %rsi
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$1, %edx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	callq	_smpObject_cons
	decl	%r14d
	cmpl	%r13d, %r14d
	jge	LBB227_19
LBB227_20:
	movq	%rax, (%r15,%r12)
	movq	%rdx, 8(%r15,%r12)
	movl	-112(%rbp), %edx
LBB227_21:
	movq	-104(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	%r15, %rcx
	callq	*-152(%rbp)
	movq	%rax, -112(%rbp)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r14
	movl	(%r14), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %r14
	jne	LBB227_8
	testb	$15, (%r14)
	jne	LBB227_8
	cmpq	$0, 16(%r14)
	je	LBB227_8
	xorl	%ebx, %ebx
	movl	$8, %r15d
	leaq	-96(%rbp), %r12
	.align	4, 0x90
LBB227_25:
	movq	8(%r14), %rax
	movq	(%rax,%r15), %r13
	movq	-128(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-104(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	callq	_smpObject_cons
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	8(%r13), %rdi
	movq	16(%r13), %rsi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	_smpList_append_now
	movq	%rax, 8(%r13)
	movq	%rdx, 16(%r13)
	addq	$16, %r15
	incq	%rbx
	cmpq	%rbx, 16(%r14)
	ja	LBB227_25
	jmp	LBB227_8
LBB227_28:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rbx
	jne	LBB227_30
	xorl	%edi, %edi
	jmp	LBB227_31
LBB227_30:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB227_31:
	leaq	L_.str29(%rip), %rsi
	callq	_minihash_get
	subq	$16, %rsp
	movl	%r14d, (%rsp)
	leaq	L_.str84(%rip), %r14
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	-144(%rbp), %r8
	movl	-112(%rbp), %r9d
	xorb	%al, %al
	callq	_smpException_init_fmt
	addq	$16, %rsp
	movq	%rax, -112(%rbp)
	movq	%rdx, %r14
	movq	(%rax), %rdi
	jmp	LBB227_5
LBB227_32:
	movl	-112(%rbp), %r13d
LBB227_33:
	cmpl	%r14d, %r13d
	jl	LBB227_35
	movl	%r13d, %edx
	jmp	LBB227_21
LBB227_35:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	movq	-104(%rbp), %rax
	movq	(%rax), %rbx
	jne	LBB227_37
	xorl	%edi, %edi
	jmp	LBB227_38
LBB227_37:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB227_38:
	leaq	L_.str29(%rip), %rsi
	callq	_minihash_get
	subq	$16, %rsp
	movl	%r14d, (%rsp)
	leaq	L_.str84(%rip), %r14
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	-144(%rbp), %r8
	movl	%r13d, %r9d
	xorb	%al, %al
	callq	_smpException_init_fmt
	addq	$16, %rsp
	movq	%rax, -112(%rbp)
	movq	%rdx, %r14
	movq	(%rax), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB227_8
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -112(%rbp)
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	jmp	LBB227_7
LBB227_40:
	callq	___stack_chk_fail
Leh_func_end227:

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI228_0:
	.quad	4611686018427387904
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_smpFloat_to_s
	.align	4, 0x90
_smpFloat_to_s:
Leh_func_begin228:
	pushq	%rbp
Ltmp599:
	movq	%rsp, %rbp
Ltmp600:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
Ltmp601:
	movq	%rcx, -184(%rbp)
	movl	%edx, %ebx
	movq	%rsi, -208(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movsd	LCPI228_0(%rip), %xmm0
	callq	_log10
	movsd	%xmm0, -192(%rbp)
	movq	_smp_mpfr_default_prec@GOTPCREL(%rip), %rax
	cvtsi2sdq	(%rax), %xmm0
	movsd	%xmm0, -200(%rbp)
	testl	%ebx, %ebx
	jg	LBB228_2
LBB228_1:
	movsd	-200(%rbp), %xmm0
	mulsd	-192(%rbp), %xmm0
	cvttsd2si	%xmm0, %r8d
	jmp	LBB228_24
LBB228_2:
	movq	-184(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, -168(%rbp)
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	leaq	L_.str59(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB228_22
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -176(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str59(%rip), %r14
	jmp	LBB228_10
	.align	4, 0x90
LBB228_4:
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB228_22
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB228_8
	.align	4, 0x90
LBB228_6:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB228_22
	incq	%r13
LBB228_8:
	cmpq	%r13, %r12
	ja	LBB228_6
	incq	%rbx
LBB228_10:
	cmpq	%rbx, -176(%rbp)
	ja	LBB228_4
	leaq	L_.str10(%rip), %rsi
	movq	-216(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB228_13
	movq	-184(%rbp), %rcx
	movq	8(%rcx), %rbx
	jmp	LBB228_25
LBB228_13:
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB228_15
	xorl	%edi, %edi
	jmp	LBB228_16
LBB228_15:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB228_16:
	leaq	L_.str59(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-184(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -176(%rbp)
	movq	%rdx, %r12
	jne	LBB228_18
	xorl	%edi, %edi
	jmp	LBB228_19
LBB228_18:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB228_19:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	$0, (%rbx)
	movq	%r14, 8(%rbx)
	movq	%r15, 16(%rbx)
	movq	%r12, 24(%rbx)
	movq	-168(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 40(%rbx)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB228_21
	movq	%r13, -168(%rbp)
	jmp	LBB228_25
LBB228_21:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r13, (%r14)
	movq	%rbx, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -168(%rbp)
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rbx
	jmp	LBB228_25
LBB228_22:
	movq	-184(%rbp), %rcx
	movq	8(%rcx), %rbx
	movq	%rbx, %rdi
	callq	___gmpz_fits_sint_p
	testl	%eax, %eax
	je	LBB228_1
	movq	%rbx, %rdi
	callq	___gmpz_get_si
	movl	%eax, %r8d
LBB228_24:
	leaq	-148(%rbp), %rbx
	xorl	%esi, %esi
	movl	$100, %edx
	leaq	L_.str85(%rip), %rcx
	movq	%rbx, %rdi
	xorb	%al, %al
	callq	___sprintf_chk
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	leaq	-160(%rbp), %rdi
	movq	%rbx, %rsi
	movq	-208(%rbp), %rcx
	xorb	%al, %al
	callq	_mpfr_asprintf
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -168(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	-160(%rbp), %r14
	movq	%r14, %rdi
	callq	_strlen
	movq	%r14, (%rbx)
	movq	%rax, 8(%rbx)
LBB228_25:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB228_27
	movq	%rbx, %rdx
	movq	-168(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB228_27:
	callq	___stack_chk_fail
Leh_func_end228:

	.globl	_smpFloat_cmp_cint
	.align	4, 0x90
_smpFloat_cmp_cint:
Leh_func_begin229:
	pushq	%rbp
Ltmp602:
	movq	%rsp, %rbp
Ltmp603:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp604:
	movl	8(%rcx), %eax
	movq	_smpType_id_int@GOTPCREL(%rip), %r9
	cmpl	(%r9), %eax
	movq	%r8, %rbx
	je	LBB229_11
	movq	_smpType_id_float@GOTPCREL(%rip), %rsi
	cmpl	(%rsi), %eax
	je	LBB229_12
	movq	%rcx, -56(%rbp)
	movq	%rdi, -48(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	testq	%r14, %r14
	jne	LBB229_4
	xorl	%edi, %edi
	jmp	LBB229_5
LBB229_4:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r14, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB229_5:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r14, %r14
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %r15
	movq	%rdx, %r12
	jne	LBB229_7
	xorl	%edi, %edi
	jmp	LBB229_8
LBB229_7:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB229_8:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-56(%rbp), %rcx
	movq	%rcx, 32(%r13)
	movq	%rbx, 40(%r13)
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB229_10
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, (%rbx)
	movq	%r13, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r13
LBB229_10:
	movq	-48(%rbp), %rdi
	movq	%r14, (%rdi)
	movq	%r13, 8(%rdi)
	movl	$-2, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB229_11:
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_mpfr_cmp_z  # TAILCALL
LBB229_12:
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_mpfr_cmp3  # TAILCALL
Leh_func_end229:

	.globl	_smpInteger_cmp_cint
	.align	4, 0x90
_smpInteger_cmp_cint:
Leh_func_begin230:
	pushq	%rbp
Ltmp605:
	movq	%rsp, %rbp
Ltmp606:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp607:
	movl	8(%rcx), %eax
	movq	_smpType_id_int@GOTPCREL(%rip), %r9
	cmpl	(%r9), %eax
	movq	%r8, %rbx
	movq	%rdx, %r8
	je	LBB230_11
	movq	%rcx, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	_smpType_id_float@GOTPCREL(%rip), %rcx
	cmpl	(%rcx), %eax
	je	LBB230_12
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	testq	%r14, %r14
	jne	LBB230_4
	xorl	%edi, %edi
	jmp	LBB230_5
LBB230_4:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r14, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB230_5:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r14, %r14
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %r15
	movq	%rdx, %r12
	jne	LBB230_7
	xorl	%edi, %edi
	jmp	LBB230_8
LBB230_7:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r14
	leaq	-32(%r14,%rax), %rdi
LBB230_8:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-48(%rbp), %rsi
	movq	%rsi, 32(%r13)
	movq	%rbx, 40(%r13)
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB230_10
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, (%rbx)
	movq	%r13, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r13
LBB230_10:
	movq	-56(%rbp), %rdi
	movq	%r14, (%rdi)
	movq	%r13, 8(%rdi)
	movl	$-2, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB230_11:
	movq	%r8, %rdi
	movq	%rbx, %rsi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	___gmpz_cmp  # TAILCALL
LBB230_12:
	movq	%rsi, %rcx
	movq	-48(%rbp), %rsi
	movq	%rbx, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_smpFloat_cmp_cint  # TAILCALL
Leh_func_end230:

	.globl	_smpInteger_gt
	.align	4, 0x90
_smpInteger_gt:
Leh_func_begin231:
	pushq	%rbp
Ltmp608:
	movq	%rsp, %rbp
Ltmp609:
	subq	$16, %rsp
Ltmp610:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpInteger_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB231_2
	movq	-8(%rbp), %rdx
	jmp	LBB231_3
LBB231_2:
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmovgq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovleq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB231_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end231:

	.globl	_smpInteger_ge
	.align	4, 0x90
_smpInteger_ge:
Leh_func_begin232:
	pushq	%rbp
Ltmp611:
	movq	%rsp, %rbp
Ltmp612:
	subq	$16, %rsp
Ltmp613:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpInteger_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB232_2
	movq	-8(%rbp), %rdx
	jmp	LBB232_3
LBB232_2:
	testl	%eax, %eax
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmovsq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovnsq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB232_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end232:

	.globl	_smpInteger_le
	.align	4, 0x90
_smpInteger_le:
Leh_func_begin233:
	pushq	%rbp
Ltmp614:
	movq	%rsp, %rbp
Ltmp615:
	subq	$16, %rsp
Ltmp616:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpInteger_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB233_2
	movq	-8(%rbp), %rdx
	jmp	LBB233_3
LBB233_2:
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmovleq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovgq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB233_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end233:

	.globl	_smpInteger_lt
	.align	4, 0x90
_smpInteger_lt:
Leh_func_begin234:
	pushq	%rbp
Ltmp617:
	movq	%rsp, %rbp
Ltmp618:
	subq	$16, %rsp
Ltmp619:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpInteger_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB234_2
	movq	-8(%rbp), %rdx
	jmp	LBB234_3
LBB234_2:
	testl	%eax, %eax
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmovnsq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovsq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB234_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end234:

	.globl	_smpInteger_nequalp
	.align	4, 0x90
_smpInteger_nequalp:
Leh_func_begin235:
	pushq	%rbp
Ltmp620:
	movq	%rsp, %rbp
Ltmp621:
	subq	$16, %rsp
Ltmp622:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpInteger_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB235_2
	movq	-8(%rbp), %rdx
	jmp	LBB235_3
LBB235_2:
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmovneq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmoveq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB235_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end235:

	.globl	_smpInteger_equalp
	.align	4, 0x90
_smpInteger_equalp:
Leh_func_begin236:
	pushq	%rbp
Ltmp623:
	movq	%rsp, %rbp
Ltmp624:
	subq	$16, %rsp
Ltmp625:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpInteger_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB236_2
	movq	-8(%rbp), %rdx
	jmp	LBB236_3
LBB236_2:
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmoveq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovneq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB236_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end236:

	.globl	_smpInteger_eq
	.align	4, 0x90
_smpInteger_eq:
Leh_func_begin237:
	pushq	%rbp
Ltmp626:
	movq	%rsp, %rbp
Ltmp627:
	subq	$16, %rsp
Ltmp628:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpInteger_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB237_2
	movq	-8(%rbp), %rdx
	jmp	LBB237_3
LBB237_2:
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmoveq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovneq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB237_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end237:

	.globl	_smpInteger_cmp
	.align	4, 0x90
_smpInteger_cmp:
Leh_func_begin238:
	pushq	%rbp
Ltmp629:
	movq	%rsp, %rbp
Ltmp630:
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Ltmp631:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -32(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-32(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpInteger_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-32(%rbp), %rdx
	cmpl	%ecx, 8(%rdx)
	jne	LBB238_2
	movq	-24(%rbp), %rbx
	jmp	LBB238_3
LBB238_2:
	movl	%eax, %r14d
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdx
LBB238_3:
	movq	%rdx, %rax
	movq	%rbx, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end238:

	.globl	_speedtest_fun
	.align	4, 0x90
_speedtest_fun:
Leh_func_begin239:
	pushq	%rbp
Ltmp632:
	movq	%rsp, %rbp
Ltmp633:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
Ltmp634:
	cmpl	$1, %edx
	movq	%rsi, -128(%rbp)
	movq	%rdi, %rbx
	jne	LBB239_2
	movq	(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	8(%rcx), %r14
	jmp	LBB239_3
LBB239_2:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -56(%rbp)
LBB239_3:
	movq	%r14, -48(%rbp)
	movq	%r14, %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	_smpInteger_mul
	movq	%rax, %r14
	movq	%rdx, %r15
	movq	-56(%rbp), %r12
	movq	-48(%rbp), %r13
	leaq	-72(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movq	-128(%rbp), %r8
	callq	_smpInteger_cmp_cint
	testl	%eax, %eax
	js	LBB239_5
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	jmp	LBB239_6
LBB239_5:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	_smpObject_cons
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	leaq	-88(%rbp), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	callq	_smpObject_cons
	movq	%rax, %r14
	movq	%rdx, %r15
	movq	_smpInteger_one@GOTPCREL(%rip), %rcx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	_smpInteger_add
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	leaq	-104(%rbp), %rcx
	movq	%rbx, %rdi
	movq	-128(%rbp), %rsi
	movl	$1, %edx
	callq	_speedtest_fun
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	leaq	-120(%rbp), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	callq	_smpObject_cons
LBB239_6:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end239:

	.globl	_test_object_speed
	.align	4, 0x90
_test_object_speed:
Leh_func_begin240:
	pushq	%rbp
Ltmp635:
	movq	%rsp, %rbp
Ltmp636:
	pushq	%rbx
	subq	$8, %rsp
Ltmp637:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movl	$20000, %esi
	movq	%rbx, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	_speedtest_fun
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end240:

	.globl	_smpFloat_gt
	.align	4, 0x90
_smpFloat_gt:
Leh_func_begin241:
	pushq	%rbp
Ltmp638:
	movq	%rsp, %rbp
Ltmp639:
	subq	$16, %rsp
Ltmp640:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpFloat_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB241_2
	movq	-8(%rbp), %rdx
	jmp	LBB241_3
LBB241_2:
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmovgq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovleq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB241_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end241:

	.globl	_smpFloat_ge
	.align	4, 0x90
_smpFloat_ge:
Leh_func_begin242:
	pushq	%rbp
Ltmp641:
	movq	%rsp, %rbp
Ltmp642:
	subq	$16, %rsp
Ltmp643:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpFloat_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB242_2
	movq	-8(%rbp), %rdx
	jmp	LBB242_3
LBB242_2:
	testl	%eax, %eax
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmovsq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovnsq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB242_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end242:

	.globl	_smpFloat_le
	.align	4, 0x90
_smpFloat_le:
Leh_func_begin243:
	pushq	%rbp
Ltmp644:
	movq	%rsp, %rbp
Ltmp645:
	subq	$16, %rsp
Ltmp646:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpFloat_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB243_2
	movq	-8(%rbp), %rdx
	jmp	LBB243_3
LBB243_2:
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmovleq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovgq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB243_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end243:

	.globl	_smpFloat_lt
	.align	4, 0x90
_smpFloat_lt:
Leh_func_begin244:
	pushq	%rbp
Ltmp647:
	movq	%rsp, %rbp
Ltmp648:
	subq	$16, %rsp
Ltmp649:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpFloat_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB244_2
	movq	-8(%rbp), %rdx
	jmp	LBB244_3
LBB244_2:
	testl	%eax, %eax
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmovnsq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovsq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB244_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end244:

	.globl	_smpFloat_nequalp
	.align	4, 0x90
_smpFloat_nequalp:
Leh_func_begin245:
	pushq	%rbp
Ltmp650:
	movq	%rsp, %rbp
Ltmp651:
	subq	$16, %rsp
Ltmp652:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpFloat_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB245_2
	movq	-8(%rbp), %rdx
	jmp	LBB245_3
LBB245_2:
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmovneq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmoveq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB245_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end245:

	.globl	_smpFloat_equalp
	.align	4, 0x90
_smpFloat_equalp:
Leh_func_begin246:
	pushq	%rbp
Ltmp653:
	movq	%rsp, %rbp
Ltmp654:
	subq	$16, %rsp
Ltmp655:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpFloat_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB246_2
	movq	-8(%rbp), %rdx
	jmp	LBB246_3
LBB246_2:
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmoveq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovneq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB246_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end246:

	.globl	_smpFloat_eq
	.align	4, 0x90
_smpFloat_eq:
Leh_func_begin247:
	pushq	%rbp
Ltmp656:
	movq	%rsp, %rbp
Ltmp657:
	subq	$16, %rsp
Ltmp658:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -16(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-16(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpFloat_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-16(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB247_2
	movq	-8(%rbp), %rdx
	jmp	LBB247_3
LBB247_2:
	testl	%eax, %eax
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	cmoveq	%rcx, %rsi
	addq	$8, %rdx
	addq	$8, %rcx
	testl	%eax, %eax
	movq	(%rsi), %rsi
	cmovneq	%rdx, %rcx
	movq	(%rcx), %rdx
LBB247_3:
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end247:

	.globl	_smpFloat_cmp
	.align	4, 0x90
_smpFloat_cmp:
Leh_func_begin248:
	pushq	%rbp
Ltmp659:
	movq	%rsp, %rbp
Ltmp660:
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Ltmp661:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -32(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	(%rcx), %rax
	movq	8(%rcx), %r8
	leaq	-32(%rbp), %rdi
	movq	%rax, %rcx
	callq	_smpFloat_cmp_cint
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-32(%rbp), %rdx
	cmpl	%ecx, 8(%rdx)
	jne	LBB248_2
	movq	-24(%rbp), %rbx
	jmp	LBB248_3
LBB248_2:
	movl	%eax, %r14d
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdx
LBB248_3:
	movq	%rdx, %rax
	movq	%rbx, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end248:

	.globl	_smpFloat_pow
	.align	4, 0x90
_smpFloat_pow:
Leh_func_begin249:
	pushq	%rbp
Ltmp662:
	movq	%rsp, %rbp
Ltmp663:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp664:
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movl	8(%rax), %eax
	movq	_smpType_id_float@GOTPCREL(%rip), %r8
	cmpl	(%r8), %eax
	movq	%rcx, %rbx
	movq	%rsi, %r14
	jne	LBB249_3
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_mpfr_pow
LBB249_2:
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB249_14
LBB249_3:
	movq	_smpType_id_int@GOTPCREL(%rip), %r15
	cmpl	(%r15), %eax
	jne	LBB249_5
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_mpfr_pow_z
	jmp	LBB249_2
LBB249_5:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	LBB249_7
	xorl	%edi, %edi
	jmp	LBB249_8
LBB249_7:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r15, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB249_8:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r12
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %rbx
	jne	LBB249_10
	xorl	%edi, %edi
	jmp	LBB249_11
LBB249_10:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB249_11:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r14, 8(%r15)
	movq	%r12, 16(%r15)
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB249_13
	movq	%r13, %rax
	jmp	LBB249_14
LBB249_13:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
	movq	%r14, %rax
LBB249_14:
	movq	%r15, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end249:

	.globl	_smpFloat_div
	.align	4, 0x90
_smpFloat_div:
Leh_func_begin250:
	pushq	%rbp
Ltmp665:
	movq	%rsp, %rbp
Ltmp666:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp667:
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movl	8(%rax), %eax
	movq	_smpType_id_float@GOTPCREL(%rip), %r8
	cmpl	(%r8), %eax
	movq	%rcx, %rbx
	movq	%rsi, %r14
	jne	LBB250_3
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_mpfr_div
LBB250_2:
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB250_14
LBB250_3:
	movq	_smpType_id_int@GOTPCREL(%rip), %r15
	cmpl	(%r15), %eax
	jne	LBB250_5
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_mpfr_div_z
	jmp	LBB250_2
LBB250_5:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	LBB250_7
	xorl	%edi, %edi
	jmp	LBB250_8
LBB250_7:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r15, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB250_8:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r12
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %rbx
	jne	LBB250_10
	xorl	%edi, %edi
	jmp	LBB250_11
LBB250_10:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB250_11:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r14, 8(%r15)
	movq	%r12, 16(%r15)
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB250_13
	movq	%r13, %rax
	jmp	LBB250_14
LBB250_13:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
	movq	%r14, %rax
LBB250_14:
	movq	%r15, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end250:

	.globl	_smpFloat_mul
	.align	4, 0x90
_smpFloat_mul:
Leh_func_begin251:
	pushq	%rbp
Ltmp668:
	movq	%rsp, %rbp
Ltmp669:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp670:
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movl	8(%rax), %eax
	movq	_smpType_id_float@GOTPCREL(%rip), %r8
	cmpl	(%r8), %eax
	movq	%rcx, %rbx
	movq	%rsi, %r14
	jne	LBB251_3
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_mpfr_mul
LBB251_2:
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB251_14
LBB251_3:
	movq	_smpType_id_int@GOTPCREL(%rip), %r15
	cmpl	(%r15), %eax
	jne	LBB251_5
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_mpfr_mul_z
	jmp	LBB251_2
LBB251_5:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	LBB251_7
	xorl	%edi, %edi
	jmp	LBB251_8
LBB251_7:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r15, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB251_8:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r12
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %rbx
	jne	LBB251_10
	xorl	%edi, %edi
	jmp	LBB251_11
LBB251_10:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB251_11:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r14, 8(%r15)
	movq	%r12, 16(%r15)
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB251_13
	movq	%r13, %rax
	jmp	LBB251_14
LBB251_13:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
	movq	%r14, %rax
LBB251_14:
	movq	%r15, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end251:

	.globl	_smpFloat_sub
	.align	4, 0x90
_smpFloat_sub:
Leh_func_begin252:
	pushq	%rbp
Ltmp671:
	movq	%rsp, %rbp
Ltmp672:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp673:
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movl	8(%rax), %eax
	movq	_smpType_id_float@GOTPCREL(%rip), %r8
	cmpl	(%r8), %eax
	movq	%rcx, %rbx
	movq	%rsi, %r14
	jne	LBB252_3
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_mpfr_sub
LBB252_2:
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB252_14
LBB252_3:
	movq	_smpType_id_int@GOTPCREL(%rip), %r15
	cmpl	(%r15), %eax
	jne	LBB252_5
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_mpfr_sub_z
	jmp	LBB252_2
LBB252_5:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	LBB252_7
	xorl	%edi, %edi
	jmp	LBB252_8
LBB252_7:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r15, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB252_8:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r12
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %rbx
	jne	LBB252_10
	xorl	%edi, %edi
	jmp	LBB252_11
LBB252_10:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB252_11:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r14, 8(%r15)
	movq	%r12, 16(%r15)
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB252_13
	movq	%r13, %rax
	jmp	LBB252_14
LBB252_13:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
	movq	%r14, %rax
LBB252_14:
	movq	%r15, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end252:

	.globl	_smpFloat_add
	.align	4, 0x90
_smpFloat_add:
Leh_func_begin253:
	pushq	%rbp
Ltmp674:
	movq	%rsp, %rbp
Ltmp675:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp676:
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movl	8(%rax), %eax
	movq	_smpType_id_float@GOTPCREL(%rip), %r8
	cmpl	(%r8), %eax
	movq	%rcx, %rbx
	movq	%rsi, %r14
	jne	LBB253_3
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_mpfr_add
LBB253_2:
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	jmp	LBB253_14
LBB253_3:
	movq	_smpType_id_int@GOTPCREL(%rip), %r15
	cmpl	(%r15), %eax
	jne	LBB253_5
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	_mpfr_init
	movq	8(%rbx), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_mpfr_add_z
	jmp	LBB253_2
LBB253_5:
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	LBB253_7
	xorl	%edi, %edi
	jmp	LBB253_8
LBB253_7:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r15, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB253_8:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%r15, %r15
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r12
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %rbx
	jne	LBB253_10
	xorl	%edi, %edi
	jmp	LBB253_11
LBB253_10:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %r15
	leaq	-32(%r15,%rax), %rdi
LBB253_11:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	%r14, 8(%r15)
	movq	%r12, 16(%r15)
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r13), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB253_13
	movq	%r13, %rax
	jmp	LBB253_14
LBB253_13:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r13, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r15
	movq	%r14, %rax
LBB253_14:
	movq	%r15, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end253:

	.globl	_smpArray_reduce
	.align	4, 0x90
_smpArray_reduce:
Leh_func_begin254:
	pushq	%rbp
Ltmp677:
	movq	%rsp, %rbp
Ltmp678:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
Ltmp679:
	cmpl	$2, %edx
	movq	(%rcx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rcx), %rax
	movq	%rax, -96(%rbp)
	movq	(%rsi), %rax
	movq	%rax, -120(%rbp)
	movq	8(%rsi), %rax
	movq	%rax, -104(%rbp)
	jl	LBB254_2
	leaq	24(%rcx), %rax
	leaq	16(%rcx), %rcx
	movq	$0, -88(%rbp)
	jmp	LBB254_3
LBB254_2:
	movq	-120(%rbp), %rcx
	leaq	8(%rcx), %rax
	movl	$1, %edx
	movq	%rdx, -88(%rbp)
LBB254_3:
	movq	(%rcx), %rcx
	movq	%rcx, -128(%rbp)
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	leaq	L_.str49(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB254_25
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -112(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str49(%rip), %r14
	jmp	LBB254_11
	.align	4, 0x90
LBB254_5:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB254_25
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB254_9
	.align	4, 0x90
LBB254_7:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB254_25
	incq	%r13
LBB254_9:
	cmpq	%r13, %r12
	ja	LBB254_7
	incq	%rbx
LBB254_11:
	cmpq	%rbx, -112(%rbp)
	ja	LBB254_5
	leaq	L_.str10(%rip), %rsi
	movq	-144(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB254_14
	movq	-80(%rbp), %rax
	movq	-96(%rbp), %rdx
	jmp	LBB254_27
LBB254_14:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB254_16
	xorl	%edi, %edi
	jmp	LBB254_17
LBB254_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB254_17:
	leaq	L_.str49(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	%rdx, %r12
	jne	LBB254_19
	xorl	%edi, %edi
	jmp	LBB254_20
LBB254_19:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB254_20:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-96(%rbp), %rdx
	movq	%rdx, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB254_22
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB254_27
LBB254_22:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB254_27
LBB254_25:
	movq	-128(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	shlq	$4, %rsi
	movq	-120(%rbp), %rdi
	leaq	8(%rdi,%rsi), %rbx
	decq	%rcx
	movq	%rcx, -88(%rbp)
	movq	_smp_global@GOTPCREL(%rip), %r14
	leaq	-72(%rbp), %r15
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r12
	jmp	LBB254_26
	.align	4, 0x90
LBB254_23:
	movq	-8(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	(%rbx), %rax
	leaq	16(%rbx), %rbx
	movq	%rax, -48(%rbp)
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movl	$2, %r8d
	movq	%r15, %r9
	callq	_smpFunction_call
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movl	(%r12), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB254_26
	testb	$15, (%rdx)
	je	LBB254_27
LBB254_26:
	movq	-88(%rbp), %rcx
	incq	%rcx
	movq	%rcx, -88(%rbp)
	cmpq	%rcx, -104(%rbp)
	ja	LBB254_23
LBB254_27:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end254:

	.globl	_smpArray_at_assign
	.align	4, 0x90
_smpArray_at_assign:
Leh_func_begin255:
	pushq	%rbp
Ltmp680:
	movq	%rsp, %rbp
Ltmp681:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp682:
	movq	%rcx, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdi, -96(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	L_.str59(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB255_20
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str59(%rip), %r14
	jmp	LBB255_8
	.align	4, 0x90
LBB255_2:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB255_20
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB255_6
	.align	4, 0x90
LBB255_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB255_20
	incq	%r13
LBB255_6:
	cmpq	%r13, %r12
	ja	LBB255_4
	incq	%rbx
LBB255_8:
	cmpq	%rbx, -72(%rbp)
	ja	LBB255_2
	leaq	L_.str10(%rip), %rsi
	movq	-104(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB255_11
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-64(%rbp), %rax
	jmp	LBB255_24
LBB255_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB255_13
	xorl	%edi, %edi
	jmp	LBB255_14
LBB255_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB255_14:
	leaq	L_.str59(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %r12
	jne	LBB255_16
	xorl	%edi, %edi
	jmp	LBB255_17
LBB255_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB255_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB255_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB255_24
LBB255_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB255_24
LBB255_20:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	leaq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	_smpInteger_to_clong
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-56(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB255_23
	movq	-48(%rbp), %rdx
	testb	$15, (%rdx)
	jne	LBB255_23
	movq	%rsi, %rax
	jmp	LBB255_24
LBB255_23:
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	24(%rdx), %r8
	movq	%rax, %rdx
	callq	_smpArray_at_assign_c
LBB255_24:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end255:

	.globl	_smpArray_at
	.align	4, 0x90
_smpArray_at:
Leh_func_begin256:
	pushq	%rbp
Ltmp683:
	movq	%rsp, %rbp
Ltmp684:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp685:
	movq	%rcx, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdi, -96(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	L_.str59(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB256_20
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str59(%rip), %r14
	jmp	LBB256_8
	.align	4, 0x90
LBB256_2:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB256_20
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB256_6
	.align	4, 0x90
LBB256_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB256_20
	incq	%r13
LBB256_6:
	cmpq	%r13, %r12
	ja	LBB256_4
	incq	%rbx
LBB256_8:
	cmpq	%rbx, -72(%rbp)
	ja	LBB256_2
	leaq	L_.str10(%rip), %rsi
	movq	-104(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB256_11
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-64(%rbp), %rax
	jmp	LBB256_24
LBB256_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB256_13
	xorl	%edi, %edi
	jmp	LBB256_14
LBB256_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB256_14:
	leaq	L_.str59(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -72(%rbp)
	movq	%rdx, %r12
	jne	LBB256_16
	xorl	%edi, %edi
	jmp	LBB256_17
LBB256_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB256_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB256_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB256_24
LBB256_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB256_24
LBB256_20:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	leaq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	_smpInteger_to_clong
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-56(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB256_23
	movq	-48(%rbp), %rdx
	testb	$15, (%rdx)
	jne	LBB256_23
	movq	%rsi, %rax
	jmp	LBB256_24
LBB256_23:
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	_smpArray_at_c
LBB256_24:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end256:

	.globl	_smpObject_instancep
	.align	4, 0x90
_smpObject_instancep:
Leh_func_begin257:
	pushq	%rbp
Ltmp686:
	movq	%rsp, %rbp
Ltmp687:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
Ltmp688:
	movq	%rcx, -136(%rbp)
	movq	%rdi, -120(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -112(%rbp)
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	leaq	L_.str1(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB257_21
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -128(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str1(%rip), %r14
	jmp	LBB257_8
	.align	4, 0x90
LBB257_2:
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB257_21
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB257_6
	.align	4, 0x90
LBB257_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB257_21
	incq	%r13
LBB257_6:
	cmpq	%r13, %r12
	ja	LBB257_4
	incq	%rbx
LBB257_8:
	cmpq	%rbx, -128(%rbp)
	ja	LBB257_2
	leaq	L_.str10(%rip), %rsi
	movq	-144(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB257_12
	movq	-136(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-112(%rbp), %rax
LBB257_11:
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB257_12:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB257_14
	xorl	%edi, %edi
	jmp	LBB257_15
LBB257_14:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB257_15:
	leaq	L_.str1(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-136(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -120(%rbp)
	movq	%rdx, %r12
	jne	LBB257_17
	xorl	%edi, %edi
	jmp	LBB257_18
LBB257_17:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB257_18:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-112(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB257_20
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB257_11
LBB257_20:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB257_11
LBB257_21:
	cmpq	$0, -120(%rbp)
	jne	LBB257_24
LBB257_22:
	movb	$1, %cl
LBB257_23:
	andb	$1, %cl
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	_smp_true@GOTPCREL(%rip), %rsi
	movq	%rsi, %rax
	cmovneq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rdx
	addq	$8, %rsi
	testb	%cl, %cl
	cmovneq	%rdx, %rsi
	movq	(%rsi), %rdx
	jmp	LBB257_11
LBB257_24:
	movq	-136(%rbp), %rcx
	movq	8(%rcx), %rax
	movl	8(%rax), %ebx
	movq	-120(%rbp), %rdi
	cmpl	%ebx, 8(%rdi)
	jne	LBB257_26
LBB257_25:
	xorb	%cl, %cl
	jmp	LBB257_23
LBB257_26:
	movq	56(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	48(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	40(%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	32(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	24(%rax), %rcx
	movq	%rcx, -152(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -160(%rbp)
	movl	12(%rax), %ecx
	movl	%ecx, -164(%rbp)
	movq	(%rax), %r14
	xorl	%r15d, %r15d
	jmp	LBB257_34
	.align	4, 0x90
LBB257_30:
	movq	16(%r12), %rax
	movq	(%rax,%r13,8), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smpObject_instancep_c
	testl	%eax, %eax
	jne	LBB257_25
	incq	%r13
LBB257_32:
	cmpq	%r13, 24(%r12)
	ja	LBB257_30
LBB257_33:
	incq	%r15
LBB257_34:
	movq	-120(%rbp), %rdi
	cmpq	%r15, 24(%rdi)
	jbe	LBB257_22
	movq	%rdi, %rax
	movq	16(%rax), %rax
	movq	(%rax,%r15,8), %r12
	movq	%r14, -104(%rbp)
	movl	%ebx, -96(%rbp)
	movl	-164(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	testq	%r12, %r12
	je	LBB257_33
	cmpl	%ebx, 8(%r12)
	je	LBB257_25
	xorl	%r13d, %r13d
	jmp	LBB257_32
Leh_func_end257:

	.globl	_smpObject_funcall_arg
	.align	4, 0x90
_smpObject_funcall_arg:
Leh_func_begin258:
	pushq	%rbp
Ltmp689:
	movq	%rsp, %rbp
Ltmp690:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp691:
	movq	%rcx, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdi, -96(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	leaq	L_.str49(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB258_20
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str49(%rip), %r14
	jmp	LBB258_8
	.align	4, 0x90
LBB258_2:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB258_20
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB258_6
	.align	4, 0x90
LBB258_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB258_20
	incq	%r13
LBB258_6:
	cmpq	%r13, %r12
	ja	LBB258_4
	incq	%rbx
LBB258_8:
	cmpq	%rbx, -64(%rbp)
	ja	LBB258_2
	leaq	L_.str10(%rip), %rsi
	movq	-72(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB258_11
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-56(%rbp), %rax
	jmp	LBB258_52
LBB258_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB258_13
	xorl	%edi, %edi
	jmp	LBB258_14
LBB258_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB258_14:
	leaq	L_.str49(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, %r12
	jne	LBB258_16
	xorl	%edi, %edi
	jmp	LBB258_17
LBB258_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB258_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-56(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-64(%rbp), %rax
LBB258_18:
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB258_38
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB258_52
LBB258_20:
	movq	-80(%rbp), %rcx
	movq	16(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	L_.str65(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB258_39
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str65(%rip), %r14
	jmp	LBB258_28
	.align	4, 0x90
LBB258_22:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB258_39
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB258_26
	.align	4, 0x90
LBB258_24:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB258_39
	incq	%r13
LBB258_26:
	cmpq	%r13, %r12
	ja	LBB258_24
	incq	%rbx
LBB258_28:
	cmpq	%rbx, -72(%rbp)
	ja	LBB258_22
	leaq	L_.str10(%rip), %rsi
	movq	-104(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB258_31
	movq	-80(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	-64(%rbp), %rax
	jmp	LBB258_52
LBB258_31:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB258_33
	xorl	%edi, %edi
	jmp	LBB258_34
LBB258_33:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB258_34:
	leaq	L_.str65(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-80(%rbp), %rcx
	movq	24(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %r12
	jne	LBB258_36
	xorl	%edi, %edi
	jmp	LBB258_37
LBB258_36:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB258_37:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-56(%rbp), %rax
	jmp	LBB258_18
LBB258_38:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB258_52
LBB258_39:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-64(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	movq	-80(%rbp), %rcx
	movq	24(%rcx), %rax
	jne	LBB258_41
	xorl	%r8d, %r8d
	jmp	LBB258_44
LBB258_41:
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	je	LBB258_54
	movl	$1, %r8d
	.align	4, 0x90
LBB258_43:
	incq	%r8
	movq	8(%rcx), %rcx
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	jne	LBB258_43
LBB258_44:
	movl	%r8d, %ecx
	shll	$4, %ecx
	movq	%rsp, %r9
	subq	%rcx, %r9
	movq	%r9, %rsp
	testl	%r8d, %r8d
	jle	LBB258_51
	leaq	8(%r9), %rcx
	movl	%r8d, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rsi
	jmp	LBB258_46
	.align	4, 0x90
LBB258_50:
	addq	$16, %rcx
	movq	(%rax), %rax
LBB258_46:
	movq	(%rax), %rdi
	movq	%rdi, -8(%rcx)
	movq	8(%rax), %rdi
	movq	%rdi, (%rcx)
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	LBB258_48
	leaq	8(%rsi), %rax
	jmp	LBB258_49
LBB258_48:
	addq	$8, %rax
LBB258_49:
	decq	%rdx
	jne	LBB258_50
LBB258_51:
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	_smpFunction_call
LBB258_52:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	cmpq	-48(%rbp), %rcx
	je	LBB258_55
	callq	___stack_chk_fail
LBB258_54:
	movl	$1, %r8d
	jmp	LBB258_44
LBB258_55:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end258:

	.globl	_smpArray_init_array
	.align	4, 0x90
_smpArray_init_array:
Leh_func_begin259:
	pushq	%rbp
Ltmp692:
	movq	%rsp, %rbp
Ltmp693:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp694:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jne	LBB259_2
	xorl	%edi, %edi
	jmp	LBB259_3
LBB259_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB259_3:
	leaq	L_.str86(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r15
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rdx
	movq	%r14, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end259:

	.globl	_smpGlobal_array
	.align	4, 0x90
_smpGlobal_array:
Leh_func_begin260:
	pushq	%rbp
Ltmp695:
	movq	%rsp, %rbp
Ltmp696:
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpList_to_a
	popq	%rbp
	ret
Leh_func_end260:

	.globl	_smpArray_map
	.align	4, 0x90
_smpArray_map:
Leh_func_begin261:
	pushq	%rbp
Ltmp697:
	movq	%rsp, %rbp
Ltmp698:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp699:
	movq	%rcx, -56(%rbp)
	movq	%rsi, -72(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	leaq	L_.str49(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB261_23
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str49(%rip), %r14
	jmp	LBB261_8
	.align	4, 0x90
LBB261_2:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB261_23
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB261_6
	.align	4, 0x90
LBB261_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB261_23
	incq	%r13
LBB261_6:
	cmpq	%r13, %r12
	ja	LBB261_4
	incq	%rbx
LBB261_8:
	cmpq	%rbx, -64(%rbp)
	ja	LBB261_2
	leaq	L_.str10(%rip), %rsi
	movq	-80(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB261_11
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-48(%rbp), %rax
	jmp	LBB261_30
LBB261_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB261_13
	xorl	%edi, %edi
	jmp	LBB261_14
LBB261_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB261_14:
	leaq	L_.str49(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %r12
	jne	LBB261_16
	xorl	%edi, %edi
	jmp	LBB261_17
LBB261_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB261_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB261_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB261_30
LBB261_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	jmp	LBB261_29
LBB261_23:
	movq	-72(%rbp), %rsi
	movq	(%rsi), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rsi), %rax
	movq	%rax, -48(%rbp)
	movq	%rax, %rdi
	shlq	$4, %rdi
	callq	_GC_malloc
	xorl	%ebx, %ebx
	movq	$-1, %r14
	movq	%rax, %r15
	movq	_smp_global@GOTPCREL(%rip), %r12
	.align	4, 0x90
LBB261_24:
	movq	%rbx, %r13
	incq	%r14
	cmpq	-48(%rbp), %r14
	jae	LBB261_25
	leaq	16(%r13), %rbx
	movq	-64(%rbp), %rax
	leaq	(%rax,%r13), %r9
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %rcx
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	movl	$1, %r8d
	callq	_smpFunction_call
	movq	%rax, (%r15,%r13)
	movq	%rdx, 8(%r15,%r13)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB261_24
	testb	$15, (%rdx)
	jne	LBB261_24
	movq	%r15, %rdi
	callq	_GC_free
	movq	(%r15,%r13), %rax
	movq	8(%r15,%r13), %rdx
	jmp	LBB261_30
LBB261_25:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB261_27
	xorl	%edi, %edi
	jmp	LBB261_28
LBB261_27:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB261_28:
	leaq	L_.str86(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%r15, (%rax)
	movq	-48(%rbp), %rdi
	movq	%rdi, 8(%rax)
LBB261_29:
	movq	%rax, %rdx
	movq	%rbx, %rax
LBB261_30:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end261:

	.globl	_smpArray_copy
	.align	4, 0x90
_smpArray_copy:
Leh_func_begin262:
	pushq	%rbp
Ltmp700:
	movq	%rsp, %rbp
Ltmp701:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp702:
	movq	(%rsi), %rbx
	movq	8(%rsi), %r14
	movq	%r14, %rax
	shrq	%rax
	orq	%r14, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	orq	%rcx, %rax
	movq	%rax, %rdi
	shrq	$32, %rdi
	orq	%rax, %rdi
	shlq	$4, %rdi
	addq	$16, %rdi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r14, %rdx
	shlq	$4, %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_memcpy
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB262_2
	xorl	%edi, %edi
	jmp	LBB262_3
LBB262_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB262_3:
	leaq	L_.str86(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rdx
	movq	%r15, (%rdx)
	movq	%r14, 8(%rdx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end262:

	.globl	_smpArray_reverse
	.align	4, 0x90
_smpArray_reverse:
Leh_func_begin263:
	pushq	%rbp
Ltmp703:
	movq	%rsp, %rbp
Ltmp704:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpArray_copy
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	je	LBB263_2
	movq	(%rdx), %rcx
	jmp	LBB263_3
LBB263_2:
	movq	(%rdx), %rcx
	testb	$15, %cl
	je	LBB263_6
LBB263_3:
	movq	8(%rdx), %rsi
	cmpq	$2, %rsi
	jb	LBB263_6
	movq	%rsi, %rdi
	shlq	$4, %rdi
	leaq	-8(%rcx,%rdi), %rdi
	shrq	%rsi
	addq	$8, %rcx
	xorl	%r8d, %r8d
	.align	4, 0x90
LBB263_5:
	movq	-8(%rcx), %r9
	movq	(%rcx), %r10
	movq	-8(%rdi), %r11
	movq	%r11, -8(%rcx)
	movq	(%rdi), %r11
	movq	%r11, (%rcx)
	movq	%r9, -8(%rdi)
	movq	%r10, (%rdi)
	addq	$16, %rcx
	addq	$-16, %rdi
	incq	%r8
	cmpq	%rsi, %r8
	jb	LBB263_5
LBB263_6:
	popq	%rbp
	ret
Leh_func_end263:

	.globl	_smpArray_init
	.align	4, 0x90
_smpArray_init:
Leh_func_begin264:
	pushq	%rbp
Ltmp705:
	movq	%rsp, %rbp
Ltmp706:
	pushq	%r14
	pushq	%rbx
Ltmp707:
	movl	$128, %edi
	callq	_GC_malloc
	movq	$0, 120(%rax)
	movq	$0, 112(%rax)
	movq	$0, 104(%rax)
	movq	$0, 96(%rax)
	movq	$0, 88(%rax)
	movq	$0, 80(%rax)
	movq	$0, 72(%rax)
	movq	$0, 64(%rax)
	movq	$0, 56(%rax)
	movq	$0, 48(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	$0, (%rax)
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rax, %rbx
	jne	LBB264_2
	xorl	%edi, %edi
	jmp	LBB264_3
LBB264_2:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB264_3:
	leaq	L_.str86(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rdx
	movq	%rbx, (%rdx)
	movq	$0, 8(%rdx)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end264:

	.globl	_objid_init
	.align	4, 0x90
_objid_init:
Leh_func_begin265:
	pushq	%rbp
Ltmp708:
	movq	%rsp, %rbp
Ltmp709:
	pushq	%rbx
	subq	$8, %rsp
Ltmp710:
	movl	%edi, %ebx
	movq	_smpType_id@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movslq	%ebx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end265:

	.globl	_smp_putclass
	.align	4, 0x90
_smp_putclass:
Leh_func_begin266:
	pushq	%rbp
Ltmp711:
	movq	%rsp, %rbp
Ltmp712:
	pushq	%rbx
	subq	$8, %rsp
Ltmp713:
	movq	_smpType_class@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$64, %edi
	callq	_GC_malloc
	movq	72(%rbp), %rcx
	movq	%rcx, 56(%rax)
	movq	64(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	56(%rbp), %rcx
	movq	%rcx, 40(%rax)
	movq	48(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	40(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	32(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	16(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	16(%rbp), %rsi
	jne	LBB266_2
	xorl	%edi, %edi
	jmp	LBB266_3
LBB266_2:
	movq	_scope_stack@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rdx), %rdi
LBB266_3:
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	_minihash_add
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end266:

	.globl	_smpGlobal_class_multiple
	.align	4, 0x90
_smpGlobal_class_multiple:
Leh_func_begin267:
	pushq	%rbp
Ltmp714:
	movq	%rsp, %rbp
Ltmp715:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp716:
	testq	%rsi, %rsi
	movq	%rsi, -80(%rbp)
	je	LBB267_3
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	LBB267_3
	testb	$16, 12(%rax)
	jne	LBB267_7
LBB267_3:
	movl	%ecx, %ebx
	movq	%rdx, -72(%rbp)
	movq	%rdi, %r14
	movq	%r14, %rdi
	callq	_strlen
	leaq	1(%rax), %rdi
	callq	_GC_malloc
	movq	%rax, -48(%rbp)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_strcpy
	movq	_smpType_next_id@GOTPCREL(%rip), %rax
	movslq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	leal	1(%rcx), %edx
	movl	%edx, (%rax)
	movq	_smpType_id@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	_smpType_ids@GOTPCREL(%rip), %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	callq	_minihash_add
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, -64(%rbp)
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	-64(%rbp), %rax
	movq	%r14, (%rax)
	movq	$10, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	%r15, (%r14)
	movq	$10, 8(%r14)
	movq	$0, 16(%r14)
	movq	$0, 24(%r14)
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r12, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	%r12, (%r15)
	movq	$10, 8(%r15)
	movq	$0, 16(%r15)
	movq	$0, 24(%r15)
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	%r13, (%r12)
	movq	$10, 8(%r12)
	movq	$0, 16(%r12)
	movq	$0, 24(%r12)
	movq	_smpType_class@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$64, %edi
	callq	_GC_malloc
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rcx
	movl	%ecx, 8(%rax)
	movl	%ebx, %ecx
	andl	$3, %ecx
	shrl	$2, %ebx
	movl	%ebx, %edx
	andl	$32, %edx
	addl	%ecx, %edx
	movl	%ebx, %ecx
	andl	$16, %ecx
	addl	%edx, %ecx
	andl	$12, %ebx
	addl	%ecx, %ebx
	movl	%ebx, 12(%rax)
	movq	-80(%rbp), %rsi
	movq	%rsi, 16(%rax)
	movq	-72(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-64(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	%r14, 40(%rax)
	movq	%r15, 48(%rax)
	movq	%r12, 56(%rax)
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	LBB267_5
	xorl	%edi, %edi
	jmp	LBB267_6
LBB267_5:
	movq	_scope_stack@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rdx), %rdi
LBB267_6:
	movq	-48(%rbp), %rsi
	movq	%r13, %rdx
	movq	%rax, %rcx
	callq	_minihash_add
	xorl	%eax, %eax
	jmp	LBB267_8
LBB267_7:
	movl	$1, %eax
LBB267_8:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end267:

	.globl	_smpGlobal_class
	.align	4, 0x90
_smpGlobal_class:
Leh_func_begin268:
	pushq	%rbp
Ltmp717:
	movq	%rsp, %rbp
Ltmp718:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp719:
	testq	%rsi, %rsi
	movl	%edx, %ebx
	movq	%rdi, %r14
	jne	LBB268_2
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB268_4
LBB268_2:
	movq	%rsi, %r15
	testb	$16, 12(%r15)
	jne	LBB268_5
	movl	$8, %edi
	callq	_GC_malloc
	movq	%r15, (%rax)
	movl	$1, %edx
LBB268_4:
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	%ebx, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_smpGlobal_class_multiple  # TAILCALL
LBB268_5:
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end268:

	.globl	_smpSymbol_create_class
	.align	4, 0x90
_smpSymbol_create_class:
Leh_func_begin269:
	pushq	%rbp
Ltmp720:
	movq	%rsp, %rbp
Ltmp721:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp722:
	movq	_smpType_string@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB269_2
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_string@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str31(%rip), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB269_2:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB269_4
	xorl	%edi, %edi
	jmp	LBB269_5
LBB269_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB269_5:
	leaq	L_.str31(%rip), %rsi
	callq	_minihash_get
	movq	%rax, %rbx
	movq	%rdx, %r14
	leaq	_smpSymbol_to_s(%rip), %rdi
	leaq	L_.str2(%rip), %r15
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpSymbol_write(%rip), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str62(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end269:

	.globl	_smpRegex_create_class
	.align	4, 0x90
_smpRegex_create_class:
Leh_func_begin270:
	pushq	%rbp
Ltmp723:
	movq	%rsp, %rbp
Ltmp724:
	pushq	%r14
	pushq	%rbx
Ltmp725:
	movq	_smpType_object@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB270_2
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str87(%rip), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB270_2:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB270_4
	xorl	%edi, %edi
	jmp	LBB270_5
LBB270_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB270_5:
	leaq	L_.str87(%rip), %rsi
	callq	_minihash_get
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	56(%r14), %rax
	movq	_smpType_regmatch@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%r14), %rax
	movq	%rax, 48(%rcx)
	movq	40(%r14), %rax
	movq	%rax, 40(%rcx)
	movq	32(%r14), %rax
	movq	%rax, 32(%rcx)
	movq	24(%r14), %rax
	movq	%rax, 24(%rcx)
	movq	16(%r14), %rax
	movq	%rax, 16(%rcx)
	movq	(%r14), %rax
	movq	8(%r14), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	leaq	_smpregmatch_clear(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str54(%rip), %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str55(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end270:

	.globl	_smpNumber_create_class
	.align	4, 0x90
_smpNumber_create_class:
Leh_func_begin271:
	pushq	%rbp
Ltmp726:
	movq	%rsp, %rbp
Ltmp727:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
Ltmp728:
	movq	_smpType_object@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB271_2
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str83(%rip), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB271_2:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB271_4
	xorl	%edi, %edi
	jmp	LBB271_5
LBB271_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB271_5:
	leaq	L_.str83(%rip), %rbx
	movq	%rbx, %rsi
	callq	_minihash_get
	movq	%rax, %r14
	movq	%rdx, %r15
	movq	%rbx, (%rsp)
	leaq	L_.str53(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movl	$2, %r8d
	movq	%rbx, %r9
	xorb	%al, %al
	callq	_smpType_abstract_def
	movq	%rbx, (%rsp)
	leaq	L_.str88(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$0, %edx
	movl	$2, %r8d
	movq	%rbx, %r9
	xorb	%al, %al
	callq	_smpType_abstract_def
	movq	%rbx, (%rsp)
	leaq	L_.str89(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$0, %edx
	movl	$2, %r8d
	movq	%rbx, %r9
	xorb	%al, %al
	callq	_smpType_abstract_def
	movq	%rbx, (%rsp)
	leaq	L_.str90(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$0, %edx
	movl	$2, %r8d
	movq	%rbx, %r9
	xorb	%al, %al
	callq	_smpType_abstract_def
	leaq	L_.str57(%rip), %rbx
	movq	%rbx, (%rsp)
	leaq	L_.str91(%rip), %rcx
	leaq	L_.str56(%rip), %r12
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$0, %edx
	movl	$2, %r8d
	movq	%r12, %r9
	xorb	%al, %al
	callq	_smpType_abstract_def
	movq	%rbx, (%rsp)
	leaq	L_.str92(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$0, %edx
	movl	$2, %r8d
	movq	%r12, %r9
	xorb	%al, %al
	callq	_smpType_abstract_def
	movq	%rbx, (%rsp)
	leaq	L_.str93(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$0, %edx
	movl	$2, %r8d
	movq	%r12, %r9
	xorb	%al, %al
	callq	_smpType_abstract_def
	movq	%rbx, (%rsp)
	leaq	L_.str94(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$0, %edx
	movl	$2, %r8d
	movq	%r12, %r9
	xorb	%al, %al
	callq	_smpType_abstract_def
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end271:

	.globl	_smpListBuffer_create_class
	.align	4, 0x90
_smpListBuffer_create_class:
Leh_func_begin272:
	pushq	%rbp
Ltmp729:
	movq	%rsp, %rbp
Ltmp730:
	pushq	%r14
	pushq	%rbx
Ltmp731:
	movq	_smpType_nil@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB272_2
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_nil@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str39(%rip), %rdi
	movl	$1, %edx
	movl	$128, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB272_2:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB272_4
	xorl	%edi, %edi
	jmp	LBB272_5
LBB272_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB272_5:
	leaq	L_.str39(%rip), %rsi
	callq	_minihash_get
	movq	%rax, %rbx
	movq	%rdx, %r14
	leaq	_smpListBuffer_add_now(%rip), %rdi
	movl	$2, %esi
	leaq	L_.str54(%rip), %rdx
	leaq	L_.str57(%rip), %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str66(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpListBuffer_to_list(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str65(%rip), %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str81(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end272:

	.globl	_smpInteger_create_class
	.align	4, 0x90
_smpInteger_create_class:
Leh_func_begin273:
	pushq	%rbp
Ltmp732:
	movq	%rsp, %rbp
Ltmp733:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp734:
	leaq	_smp_malloc_fun(%rip), %rdi
	leaq	_smp_realloc_size(%rip), %rsi
	leaq	_smp_free_size(%rip), %rdx
	callq	___gmp_set_memory_functions
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB273_2
	xorl	%edi, %edi
	jmp	LBB273_3
LBB273_2:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB273_3:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%rdx, %rdx
	jne	LBB273_5
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	LBB273_7
LBB273_5:
	movq	%rdx, %r14
	testb	$16, 12(%r14)
	jne	LBB273_8
	movl	$8, %edi
	callq	_GC_malloc
	movq	%r14, (%rax)
	movl	$1, %edx
	movq	%rax, %rsi
LBB273_7:
	leaq	L_.str59(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_smpGlobal_class_multiple
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
LBB273_8:
	testq	%rbx, %rbx
	jne	LBB273_10
	xorl	%edi, %edi
	jmp	LBB273_11
LBB273_10:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB273_11:
	leaq	L_.str59(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rcx
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	movq	%rcx, 56(%rsi)
	movq	48(%rdx), %rcx
	movq	%rcx, 48(%rsi)
	movq	40(%rdx), %rcx
	movq	%rcx, 40(%rsi)
	movq	32(%rdx), %rcx
	movq	%rcx, 32(%rsi)
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%rsi)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rsi)
	movq	(%rdx), %rcx
	movq	8(%rdx), %rdi
	movq	%rdi, 8(%rsi)
	movq	%rcx, (%rsi)
	movq	_smpType_ids@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rdx, -56(%rbp)
	movq	%rax, -48(%rbp)
	jne	LBB273_14
LBB273_12:
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	addq	$8, %rbx
LBB273_13:
	movl	(%rbx), %eax
	movq	_smpType_id_int@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	leaq	_smpInteger_clear(%rip), %rdi
	leaq	L_.str54(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movl	$64, %edx
	leaq	L_.str55(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rbx
	movq	%rbx, %rsi
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_add(%rip), %rdi
	leaq	L_.str83(%rip), %r14
	movl	$2, %esi
	movq	%r14, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str53(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_sub(%rip), %rdi
	movl	$2, %esi
	movq	%r14, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str88(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_mul(%rip), %rdi
	movl	$2, %esi
	movq	%r14, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str89(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_div(%rip), %rdi
	movl	$2, %esi
	movq	%r14, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str90(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_mod(%rip), %r15
	leaq	L_.str59(%rip), %r12
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str95(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str96(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_pow(%rip), %rdi
	movl	$2, %esi
	movq	%r14, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str97(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_shl(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str98(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_shr(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str99(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_and(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str100(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_ior(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str101(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_xor(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r12, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str102(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_inc(%rip), %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str103(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_dec(%rip), %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str104(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_cmp(%rip), %rdi
	leaq	L_.str57(%rip), %r14
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str105(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_equalp(%rip), %r15
	leaq	L_.str56(%rip), %r13
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%r13, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str106(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_nequalp(%rip), %rdi
	movl	$2, %esi
	movq	%r13, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str107(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_lt(%rip), %rdi
	movl	$2, %esi
	movq	%r13, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str91(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_le(%rip), %rdi
	movl	$2, %esi
	movq	%r13, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str92(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_ge(%rip), %rdi
	movl	$2, %esi
	movq	%r13, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str93(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_gt(%rip), %rdi
	movl	$2, %esi
	movq	%r13, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str94(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_eq(%rip), %rdi
	movl	$2, %esi
	movq	%r13, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str108(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%r13, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str58(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_range(%rip), %rdi
	movl	$4, %esi
	leaq	L_.str65(%rip), %rdx
	leaq	L_.str46(%rip), %r14
	leaq	L_.str2(%rip), %r15
	movq	%r12, %rcx
	movq	%r14, %r8
	movq	%r15, %r9
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str109(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_to_s(%rip), %rdi
	movl	$3, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%r12, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	_obj_init
	movq	_smpInteger_zero@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rbx, 8(%rcx)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	___gmpz_init_set_si
	movq	%r14, %rdi
	callq	_obj_init
	movq	_smpInteger_one@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rbx, 8(%rcx)
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB273_14:
	movl	$1691528419, %eax
	xorl	%edx, %edx
	movq	_smpType_ids@GOTPCREL(%rip), %rbx
	divq	8(%rbx)
	movq	%rdx, %rbx
	shlq	$4, %rbx
	movq	(%rcx,%rbx), %r14
	testq	%r14, %r14
	je	LBB273_12
	shlq	$4, %rdx
	movq	8(%rcx,%rdx), %r15
	addq	$16, %r14
	movq	$-1, %r12
	leaq	L_.str59(%rip), %r13
	jmp	LBB273_17
	.align	4, 0x90
LBB273_16:
	leaq	24(%rbx), %r14
	movq	-16(%rbx), %rdi
	movq	%r13, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB273_13
LBB273_17:
	movq	%r14, %rbx
	incq	%r12
	cmpq	%r12, %r15
	ja	LBB273_16
	jmp	LBB273_12
Leh_func_end273:

	.globl	_smpInteger_range
	.align	4, 0x90
_smpInteger_range:
Leh_func_begin274:
	pushq	%rbp
Ltmp735:
	movq	%rsp, %rbp
Ltmp736:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp737:
	cmpl	$1, %edx
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	jg	LBB274_7
LBB274_1:
	movb	$1, %al
LBB274_2:
	movq	(%rbx), %rcx
	movq	%rcx, -104(%rbp)
	movq	8(%rbx), %rcx
	movq	%rcx, -96(%rbp)
	testb	$1, %al
	je	LBB274_30
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	movq	8(%rax), %r12
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r13
	jmp	LBB274_4
	.align	4, 0x90
LBB274_23:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movl	8(%rax), %esi
	movl	(%r13), %edi
LBB274_24:
	cmpl	%edi, %esi
	jne	LBB274_25
	testb	$15, (%rdx)
	je	LBB274_52
LBB274_25:
	movq	%rdx, %r14
	movq	%rax, %r15
LBB274_4:
	movq	%r15, %rdi
	movq	%r14, %rsi
	leaq	L_.str91(%rip), %rdx
	callq	_smpObject_get_fun
	movl	8(%rax), %esi
	movl	(%r13), %edi
	cmpl	%edi, %esi
	movq	%rdx, %rcx
	jne	LBB274_16
	testb	$15, (%rcx)
	jne	LBB274_16
	movq	%rcx, %rdx
	jmp	LBB274_17
LBB274_16:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	movl	$1, %r8d
	leaq	-104(%rbp), %r9
	callq	_smpFunction_call
	movl	8(%rax), %esi
	movl	(%r13), %edi
LBB274_17:
	cmpl	%edi, %esi
	jne	LBB274_19
	testb	$15, (%rdx)
	je	LBB274_52
LBB274_19:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %esi
	je	LBB274_27
	movq	%rbx, -56(%rbp)
	movq	%r12, -48(%rbp)
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	callq	_smpObject_cons
	movq	%rax, %rbx
	movq	%rdx, %r12
	movq	%r15, %rdi
	movq	%r14, %rsi
	leaq	L_.str103(%rip), %rdx
	callq	_smpObject_get_fun
	movl	8(%rax), %esi
	movl	(%r13), %edi
	cmpl	%edi, %esi
	movq	%rdx, %rcx
	jne	LBB274_23
	testb	$15, (%rcx)
	jne	LBB274_23
	movq	%rcx, %rdx
	jmp	LBB274_24
LBB274_7:
	movq	24(%rbx), %r12
	movq	(%r12), %r13
	leaq	L_.str86(%rip), %rsi
	movq	%r13, %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB274_9
	xorb	%al, %al
	jmp	LBB274_2
LBB274_9:
	leaq	L_.str65(%rip), %rsi
	movq	%r13, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB274_1
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB274_12
	xorl	%edi, %edi
	jmp	LBB274_13
LBB274_12:
	movq	_scope_stack@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	shlq	$5, %r14
	leaq	-32(%r14,%r15), %rdi
LBB274_13:
	leaq	L_.str29(%rip), %rsi
	callq	_minihash_get
	movq	16(%rbx), %rcx
	leaq	L_.str158(%rip), %rbx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	%r12, %r8
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB274_15
	movq	%rbx, %rax
	movq	%r14, %rdx
	jmp	LBB274_52
LBB274_15:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB274_52
LBB274_27:
	movq	%rbx, -88(%rbp)
	movq	%r12, -80(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movq	8(%r14), %rdx
	leaq	-88(%rbp), %r14
	leaq	-72(%rbp), %r15
	.align	4, 0x90
LBB274_28:
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movl	$1, %edx
	movq	%r15, %rcx
	callq	_smpObject_cons
	movq	8(%r14), %r14
	movq	16(%r14), %r14
	testq	%r14, %r14
	je	LBB274_52
	movq	8(%r14), %r12
	jmp	LBB274_28
LBB274_30:
	movl	$128, %edi
	callq	_GC_malloc
	movq	$0, 120(%rax)
	movq	$0, 112(%rax)
	movq	$0, 104(%rax)
	movq	$0, 96(%rax)
	movq	$0, 88(%rax)
	movq	$0, 80(%rax)
	movq	$0, 72(%rax)
	movq	$0, 64(%rax)
	movq	$0, 56(%rax)
	movq	$0, 48(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	$0, (%rax)
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rax, %rbx
	jne	LBB274_32
	xorl	%edi, %edi
	jmp	LBB274_33
LBB274_32:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB274_33:
	leaq	L_.str86(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, -112(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rbx, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, %rbx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r12
	jmp	LBB274_34
	.align	4, 0x90
LBB274_42:
	movq	8(%rbx), %r13
	leaq	1(%r13), %rax
	movq	%rax, 8(%rbx)
	movq	%rax, %rcx
	shlq	$4, %rcx
	cmpq	$5, %rcx
	jb	LBB274_45
	leaq	-1(%rcx), %rdx
	testq	%rcx, %rdx
	jne	LBB274_45
	shlq	$3, %rax
	movabsq	$9223372036854775800, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	orq	%rcx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	incq	%rsi
	movq	(%rbx), %rdi
	callq	_GC_realloc
	movq	%rax, (%rbx)
LBB274_45:
	movq	(%rbx), %rax
	shlq	$4, %r13
	movq	%r15, (%rax,%r13)
	movq	%r14, 8(%rax,%r13)
	movq	%r15, %rdi
	movq	%r14, %rsi
	leaq	L_.str103(%rip), %rdx
	callq	_smpObject_get_fun
	movl	8(%rax), %esi
	movl	(%r12), %edi
	cmpl	%edi, %esi
	movq	%rdx, %rcx
	jne	LBB274_48
	testb	$15, (%rcx)
	jne	LBB274_48
	movq	%rcx, %rdx
	jmp	LBB274_49
LBB274_48:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movl	8(%rax), %esi
	movl	(%r12), %edi
LBB274_49:
	cmpl	%edi, %esi
	jne	LBB274_50
	testb	$15, (%rdx)
	je	LBB274_52
LBB274_50:
	movq	%rdx, %r14
	movq	%rax, %r15
LBB274_34:
	movq	%r15, %rdi
	movq	%r14, %rsi
	leaq	L_.str91(%rip), %rax
	movq	%rax, %rdx
	callq	_smpObject_get_fun
	movl	8(%rax), %esi
	movl	(%r12), %edi
	cmpl	%edi, %esi
	movq	%rdx, %rcx
	jne	LBB274_37
	testb	$15, (%rcx)
	jne	LBB274_37
	movq	%rcx, %rdx
	jmp	LBB274_38
LBB274_37:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	movl	$1, %r8d
	leaq	-104(%rbp), %r9
	callq	_smpFunction_call
	movl	8(%rax), %esi
	movl	(%r12), %edi
LBB274_38:
	cmpl	%edi, %esi
	jne	LBB274_40
	testb	$15, (%rdx)
	je	LBB274_52
LBB274_40:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %esi
	jne	LBB274_42
	movq	-112(%rbp), %rax
	movq	%rbx, %rdx
LBB274_52:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end274:

	.globl	_smpHash_create_class
	.align	4, 0x90
_smpHash_create_class:
Leh_func_begin275:
	pushq	%rbp
Ltmp738:
	movq	%rsp, %rbp
Ltmp739:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp740:
	movq	_smpType_object@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB275_2
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str41(%rip), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB275_2:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB275_4
	xorl	%edi, %edi
	jmp	LBB275_5
LBB275_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB275_5:
	leaq	L_.str41(%rip), %rsi
	callq	_minihash_get
	movq	%rax, %rbx
	movq	%rdx, %r14
	leaq	_smpHash_add_now(%rip), %rdi
	leaq	L_.str57(%rip), %r15
	leaq	L_.str38(%rip), %rcx
	movl	$2, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str66(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpHash_at(%rip), %rdi
	movl	$2, %esi
	movq	%r15, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str75(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpHash_at_assign(%rip), %rdi
	movl	$3, %esi
	movq	%r15, %rdx
	movq	%r15, %rcx
	movq	%r15, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str76(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpHash_clear(%rip), %rdi
	leaq	L_.str54(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str55(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpHash_to_s(%rip), %rdi
	leaq	L_.str2(%rip), %r15
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpHash_write(%rip), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str62(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end275:

	.globl	_smpHash_add_now
	.align	4, 0x90
_smpHash_add_now:
Leh_func_begin276:
	pushq	%rbp
Ltmp741:
	movq	%rsp, %rbp
Ltmp742:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp743:
	movq	%rcx, -64(%rbp)
	movq	%rsi, -72(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	leaq	L_.str38(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB276_20
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str38(%rip), %r14
	jmp	LBB276_8
	.align	4, 0x90
LBB276_2:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB276_20
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB276_6
	.align	4, 0x90
LBB276_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB276_20
	incq	%r13
LBB276_6:
	cmpq	%r13, %r12
	ja	LBB276_4
	incq	%rbx
LBB276_8:
	cmpq	%rbx, -56(%rbp)
	ja	LBB276_2
	leaq	L_.str10(%rip), %rsi
	movq	-80(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB276_11
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-48(%rbp), %rax
	jmp	LBB276_23
LBB276_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB276_13
	xorl	%edi, %edi
	jmp	LBB276_14
LBB276_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB276_14:
	leaq	L_.str38(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %r12
	jne	LBB276_16
	xorl	%edi, %edi
	jmp	LBB276_17
LBB276_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB276_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB276_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB276_23
LBB276_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB276_23
LBB276_20:
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rbx
	movq	8(%rbx), %rdx
	movq	-48(%rbp), %rsi
	callq	_smpHash_core_add_now
	movq	8(%rbx), %rax
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	jne	LBB276_22
	movq	_smp_nil@GOTPCREL(%rip), %rcx
LBB276_22:
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
LBB276_23:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end276:

	.globl	_smpHash_at
	.align	4, 0x90
_smpHash_at:
Leh_func_begin277:
	pushq	%rbp
Ltmp744:
	movq	%rsp, %rbp
Ltmp745:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp746:
	movq	%rcx, -56(%rbp)
	movq	%rsi, %rax
	movq	%rax, -64(%rbp)
	movq	(%rax), %rbx
	movq	24(%rax), %r14
	movl	$0, -44(%rbp)
	movq	(%rcx), %rsi
	movq	8(%rcx), %rdx
	leaq	-44(%rbp), %rdi
	callq	_obj_hash
	testl	%eax, %eax
	je	LBB277_2
	movl	%eax, %ebx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%r14, %rdx
	jmp	LBB277_21
LBB277_2:
	movslq	-44(%rbp), %rax
	xorl	%edx, %edx
	divq	%r14
	movl	%edx, -44(%rbp)
	movslq	%edx, %rax
	shlq	$4, %rax
	cmpq	$0, 8(%rbx,%rax)
	je	LBB277_4
	movq	(%rbx,%rax), %rcx
	movq	_smpType_id_list@GOTPCREL(%rip), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, 8(%rcx)
	je	LBB277_5
LBB277_4:
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	jmp	LBB277_21
LBB277_5:
	addq	%rax, %rbx
	jmp	LBB277_19
LBB277_14:
	movq	16(%r15), %rbx
	testq	%rbx, %rbx
	jne	LBB277_16
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	movq	%rax, %rdx
	movq	(%rbx), %rax
	jmp	LBB277_21
LBB277_16:
	movq	8(%rbx), %rdx
	movq	(%rbx), %rax
	jmp	LBB277_21
	.align	4, 0x90
LBB277_6:
	movq	8(%rbx), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-56(%rbp), %rcx
	movq	(%rcx), %r12
	movq	8(%rcx), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	leaq	L_.str142(%rip), %rax
	movq	%rax, %rdx
	callq	_smpObject_get_fun
	movl	8(%rax), %esi
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edi
	cmpl	%edi, %esi
	movq	%rdx, %rcx
	jne	LBB277_9
	testb	$15, (%rcx)
	jne	LBB277_9
	movq	%rcx, %rdx
	jmp	LBB277_10
LBB277_9:
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	movl	$1, %r8d
	movq	%r15, %r9
	callq	_smpFunction_call
	movl	8(%rax), %esi
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edi
LBB277_10:
	cmpl	%edi, %esi
	jne	LBB277_12
	testb	$15, (%rdx)
	je	LBB277_21
LBB277_12:
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%r14)
	jne	LBB277_18
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	jne	LBB277_14
LBB277_18:
	movq	8(%rbx), %rbx
	movq	16(%rbx), %rbx
LBB277_19:
	testq	%rbx, %rbx
	jne	LBB277_6
	movq	-64(%rbp), %rsi
	movq	8(%rsi), %rax
	movq	16(%rsi), %rdx
LBB277_21:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end277:

	.globl	_smpHash_at_assign
	.align	4, 0x90
_smpHash_at_assign:
Leh_func_begin278:
	pushq	%rbp
Ltmp747:
	movq	%rsp, %rbp
Ltmp748:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp749:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	16(%rcx), %rbx
	cmpl	%eax, 8(%rbx)
	movq	(%rcx), %r14
	movq	8(%rcx), %r15
	movq	%rsi, -64(%rbp)
	movq	%rdi, %r12
	jne	LBB278_2
	xorl	%eax, %eax
	jmp	LBB278_3
LBB278_2:
	movq	24(%rcx), %r13
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rbx, (%rax)
	movq	%r13, 8(%rax)
LBB278_3:
	movq	%rax, %rbx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB278_5
	xorl	%edi, %edi
	jmp	LBB278_6
LBB278_5:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB278_6:
	leaq	L_.str38(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r13
	movl	$24, %edi
	callq	_GC_malloc
	movq	%r14, (%rax)
	movq	%r15, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	%r13, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%r13)
	jne	LBB278_8
	testb	$15, %r14b
	je	LBB278_9
LBB278_8:
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movq	%r12, %rdi
	movq	-64(%rbp), %rsi
	callq	_smpHash_add_now
	movq	%rax, %r13
	movq	%rdx, %rax
LBB278_9:
	movq	%rax, %rdx
	movq	%r13, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end278:

	.globl	_smpHash_to_s
	.align	4, 0x90
_smpHash_to_s:
Leh_func_begin279:
	pushq	%rbp
Ltmp750:
	movq	%rsp, %rbp
Ltmp751:
	leaq	L_.str52(%rip), %rdx
	callq	_smpHash_make_string
	popq	%rbp
	ret
Leh_func_end279:

	.globl	_smpHash_write
	.align	4, 0x90
_smpHash_write:
Leh_func_begin280:
	pushq	%rbp
Ltmp752:
	movq	%rsp, %rbp
Ltmp753:
	leaq	L_.str62(%rip), %rdx
	callq	_smpHash_make_string
	popq	%rbp
	ret
Leh_func_end280:

	.globl	_smpGlobal_create_class
	.align	4, 0x90
_smpGlobal_create_class:
Leh_func_begin281:
	pushq	%rbp
Ltmp754:
	movq	%rsp, %rbp
Ltmp755:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp756:
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	_smp_stdin@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	_smp_stdout@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	_smp_stderr@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_smpType_object@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB281_2
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str110(%rip), %rdi
	movl	$1, %edx
	movl	$96, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB281_2:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB281_4
	xorl	%edi, %edi
	jmp	LBB281_5
LBB281_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB281_5:
	leaq	L_.str110(%rip), %rsi
	callq	_minihash_get
	movq	_smp_global@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	56(%rdx), %rax
	movq	_smpType_global@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	xorl	%edi, %edi
	callq	_time
	movl	%eax, _sfmt(%rip)
	movl	%eax, %ecx
	shrl	$30, %ecx
	xorl	%eax, %ecx
	imull	$1812433253, %ecx, %eax
	incl	%eax
	movl	%eax, _sfmt+4(%rip)
	movl	$1, %ecx
	movl	$2, %edx
	leaq	_sfmt(%rip), %rsi
	.align	4, 0x90
LBB281_6:
	movl	%eax, %edi
	shrl	$30, %edi
	xorl	%eax, %edi
	imull	$1812433253, %edi, %edi
	leal	(%rdx,%rdi), %eax
	movl	%eax, (%rsi,%rdx,4)
	incq	%rcx
	movl	%ecx, %eax
	addl	%edi, %eax
	incq	%rdx
	cmpq	$624, %rdx
	jne	LBB281_6
	movl	_sfmt(%rip), %eax
	movl	$624, _idx(%rip)
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	$331998852, %edx
	andl	_sfmt+12(%rip), %edx
	addl	%edx, %ecx
	shrl	$16, %edx
	xorl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$4, %edx
	xorl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$2, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %edx
	shrl	%edx
	xorl	%ecx, %edx
	testb	$1, %dl
	jne	LBB281_9
	xorl	$1, %eax
	movl	%eax, _sfmt(%rip)
LBB281_9:
	movb	$1, _initialized.b(%rip)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	_smp_global@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %rcx
	jne	LBB281_11
	xorl	%edi, %edi
	jmp	LBB281_12
LBB281_11:
	movq	_scope_stack@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	shlq	$5, %rax
	leaq	-32(%rax,%rsi), %rdi
LBB281_12:
	leaq	L_.str3(%rip), %rsi
	callq	_minihash_add
	leaq	_smpBool_not(%rip), %rdi
	leaq	L_.str56(%rip), %rdx
	leaq	L_.str57(%rip), %rbx
	movl	$2, %esi
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	_smp_global@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str111(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_not(%rip), %rdi
	movl	$2, %esi
	leaq	L_.str59(%rip), %rcx
	movq	%rcx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str112(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpGlobal_array(%rip), %rdi
	leaq	L_.str86(%rip), %rdx
	leaq	L_.str47(%rip), %r15
	movl	$3, %esi
	movq	%r15, %rcx
	movq	%rbx, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str113(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpGlobal_catch_arg(%rip), %rdi
	leaq	L_.str54(%rip), %r12
	leaq	L_.str114(%rip), %rcx
	movl	$2, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str115(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpGlobal_hash(%rip), %rdi
	leaq	L_.str41(%rip), %rdx
	leaq	L_.str38(%rip), %r8
	movl	$3, %esi
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str116(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpGlobal_list(%rip), %rdi
	leaq	L_.str65(%rip), %rdx
	movl	$3, %esi
	movq	%r15, %rcx
	movq	%rbx, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str117(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpGlobal_print_arg(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str118(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smp_printf_arg(%rip), %rdi
	leaq	L_.str2(%rip), %r13
	movl	$4, %esi
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %r8
	movq	%rbx, %r9
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str119(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpGlobal_println_arg(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str120(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpGlobal_rand(%rip), %rdi
	leaq	L_.str83(%rip), %rdx
	leaq	L_.str46(%rip), %rcx
	movl	$3, %esi
	leaq	L_.str59(%rip), %rax
	movq	%rax, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str121(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpGlobal_set_seed(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	leaq	L_.str59(%rip), %rax
	movq	%rax, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str122(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpGlobal_sprintf_arg(%rip), %rdi
	movl	$4, %esi
	movq	%r13, %rdx
	movq	%r13, %rcx
	movq	%r15, %r8
	movq	%rbx, %r9
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str123(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpGlobal_throw_arg(%rip), %rdi
	leaq	L_.str10(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str124(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r8
	movq	8(%rax), %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str36(%rip), %rcx
	movl	$257, %edx
	callq	_smpType_def_general
	movq	_smp_true@GOTPCREL(%rip), %rax
	movq	(%rax), %r8
	movq	8(%rax), %r9
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	leaq	L_.str37(%rip), %rcx
	movl	$257, %edx
	callq	_smpType_def_general
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end281:

	.globl	_smpGlobal_hash
	.align	4, 0x90
_smpGlobal_hash:
Leh_func_begin282:
	pushq	%rbp
Ltmp757:
	movq	%rsp, %rbp
Ltmp758:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp759:
	movq	%rcx, -64(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -72(%rbp)
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	leaq	L_.str65(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB282_20
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str65(%rip), %r14
	jmp	LBB282_8
	.align	4, 0x90
LBB282_2:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB282_20
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB282_6
	.align	4, 0x90
LBB282_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB282_20
	incq	%r13
LBB282_6:
	cmpq	%r13, %r12
	ja	LBB282_4
	incq	%rbx
LBB282_8:
	cmpq	%rbx, -80(%rbp)
	ja	LBB282_2
	leaq	L_.str10(%rip), %rsi
	movq	-88(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB282_11
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-72(%rbp), %rax
	jmp	LBB282_34
LBB282_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB282_13
	xorl	%edi, %edi
	jmp	LBB282_14
LBB282_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB282_14:
	leaq	L_.str65(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, %r12
	jne	LBB282_16
	xorl	%edi, %edi
	jmp	LBB282_17
LBB282_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB282_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB282_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB282_34
LBB282_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB282_34
LBB282_20:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-72(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	jne	LBB282_22
	xorl	%edi, %edi
	jmp	LBB282_25
LBB282_22:
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	LBB282_35
	movl	$1, %edi
	.align	4, 0x90
LBB282_24:
	incq	%rdi
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	LBB282_24
LBB282_25:
	addq	$10, %rdi
	callq	_smpHash_init_capacity
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rbx
	movq	%rax, %r14
	jne	LBB282_27
	testb	$15, (%rbx)
	je	LBB282_33
LBB282_27:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	%eax, 8(%rcx)
	je	LBB282_33
	leaq	-56(%rbp), %r15
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r12
	jmp	LBB282_32
	.align	4, 0x90
LBB282_29:
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	_smpHash_add_now
	movl	(%r12), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB282_31
	testb	$15, (%rdx)
	je	LBB282_34
LBB282_31:
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	16(%rax), %rcx
	movq	%rcx, -64(%rbp)
LBB282_32:
	cmpq	$0, -64(%rbp)
	jne	LBB282_29
LBB282_33:
	movq	%r14, %rax
	movq	%rbx, %rdx
LBB282_34:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB282_35:
	movl	$1, %edi
	jmp	LBB282_25
Leh_func_end282:

	.globl	_smpGlobal_print_arg
	.align	4, 0x90
_smpGlobal_print_arg:
Leh_func_begin283:
	pushq	%rbp
Ltmp760:
	movq	%rsp, %rbp
Ltmp761:
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	callq	_smp_print
	popq	%rbp
	ret
Leh_func_end283:

	.globl	_smp_printf_arg
	.align	4, 0x90
_smp_printf_arg:
Leh_func_begin284:
	pushq	%rbp
Ltmp762:
	movq	%rsp, %rbp
Ltmp763:
	callq	_smpGlobal_sprintf_arg
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB284_2
	testb	$15, (%rdx)
	je	LBB284_3
LBB284_2:
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_smp_print
LBB284_3:
	popq	%rbp
	ret
Leh_func_end284:

	.globl	_smpGlobal_println_arg
	.align	4, 0x90
_smpGlobal_println_arg:
Leh_func_begin285:
	pushq	%rbp
Ltmp764:
	movq	%rsp, %rbp
Ltmp765:
	pushq	%r14
	pushq	%rbx
Ltmp766:
	movq	(%rcx), %rbx
	movq	8(%rcx), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_smp_print
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB285_2
	testb	$15, (%rdx)
	je	LBB285_3
LBB285_2:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	_fputc
	movq	%rbx, %rax
	movq	%r14, %rdx
LBB285_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end285:

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI286_0:
	.quad	4463067230724161536
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_smpGlobal_rand
	.align	4, 0x90
_smpGlobal_rand:
Leh_func_begin286:
	pushq	%rbp
Ltmp767:
	movq	%rsp, %rbp
Ltmp768:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp769:
	movq	%rcx, -64(%rbp)
	testl	%edx, %edx
	jne	LBB286_2
	callq	_gen_rand32
	movl	%eax, %ebx
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	movl	%ebx, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	LCPI286_0(%rip), %xmm0
	movq	%r14, %rdi
	callq	_mpfr_set_d
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%r14, %rdx
	jmp	LBB286_23
LBB286_2:
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	leaq	L_.str59(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB286_22
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str59(%rip), %r14
	jmp	LBB286_10
	.align	4, 0x90
LBB286_4:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB286_22
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB286_8
	.align	4, 0x90
LBB286_6:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB286_22
	incq	%r13
LBB286_8:
	cmpq	%r13, %r12
	ja	LBB286_6
	incq	%rbx
LBB286_10:
	cmpq	%rbx, -56(%rbp)
	ja	LBB286_4
	leaq	L_.str10(%rip), %rsi
	movq	-72(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB286_13
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-48(%rbp), %rax
	jmp	LBB286_23
LBB286_13:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB286_15
	xorl	%edi, %edi
	jmp	LBB286_16
LBB286_15:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB286_16:
	leaq	L_.str59(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %r12
	jne	LBB286_18
	xorl	%edi, %edi
	jmp	LBB286_19
LBB286_18:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB286_19:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB286_21
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB286_23
LBB286_21:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB286_23
LBB286_22:
	callq	_gen_rand32
	movl	%eax, %ebx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	%ebx, %esi
	movq	%r14, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	-64(%rbp), %rcx
	callq	_smpInteger_mod
LBB286_23:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end286:

	.globl	_smpGlobal_sprintf_arg
	.align	4, 0x90
_smpGlobal_sprintf_arg:
Leh_func_begin287:
	pushq	%rbp
Ltmp770:
	movq	%rsp, %rbp
Ltmp771:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
Ltmp772:
	movq	%rcx, -184(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -120(%rbp)
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	leaq	L_.str2(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB287_22
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -128(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str2(%rip), %r14
	jmp	LBB287_8
	.align	4, 0x90
LBB287_2:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB287_22
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB287_6
	.align	4, 0x90
LBB287_4:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB287_22
	incq	%r13
LBB287_6:
	cmpq	%r13, %r12
	ja	LBB287_4
	incq	%rbx
LBB287_8:
	cmpq	%rbx, -128(%rbp)
	ja	LBB287_2
	leaq	L_.str10(%rip), %rsi
	movq	-136(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB287_11
	movq	-184(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-120(%rbp), %rax
	jmp	LBB287_84
LBB287_11:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB287_13
	xorl	%edi, %edi
	jmp	LBB287_14
LBB287_13:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB287_14:
	leaq	L_.str2(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	-184(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, -128(%rbp)
	movq	%rdx, %r12
	jne	LBB287_16
	xorl	%edi, %edi
	jmp	LBB287_17
LBB287_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB287_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-128(%rbp), %rax
	movq	%rax, 40(%r13)
LBB287_18:
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB287_20
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB287_84
LBB287_20:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
LBB287_21:
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB287_84
LBB287_22:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB287_24
	xorl	%edi, %edi
	jmp	LBB287_25
LBB287_24:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB287_25:
	leaq	L_.str65(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, -192(%rbp)
	cmpq	$0, -120(%rbp)
	je	LBB287_36
	movl	8(%rdx), %ebx
	movq	-120(%rbp), %rax
	cmpl	%ebx, 8(%rax)
	je	LBB287_38
	movq	56(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	48(%rdx), %rax
	movq	%rax, -136(%rbp)
	movq	40(%rdx), %rax
	movq	%rax, -144(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -152(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -160(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -168(%rbp)
	movl	12(%rdx), %eax
	movl	%eax, -172(%rbp)
	movq	(%rdx), %r14
	xorl	%r15d, %r15d
	jmp	LBB287_35
	.align	4, 0x90
LBB287_28:
	movq	16(%rax), %rax
	movq	(%rax,%r15,8), %r12
	movq	%r14, -104(%rbp)
	movl	%ebx, -96(%rbp)
	movl	-172(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	testq	%r12, %r12
	je	LBB287_34
	cmpl	%ebx, 8(%r12)
	je	LBB287_38
	xorl	%r13d, %r13d
	jmp	LBB287_33
	.align	4, 0x90
LBB287_31:
	movq	16(%r12), %rax
	movq	(%rax,%r13,8), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	callq	_smpObject_instancep_c
	testl	%eax, %eax
	jne	LBB287_38
	incq	%r13
LBB287_33:
	cmpq	%r13, 24(%r12)
	ja	LBB287_31
LBB287_34:
	incq	%r15
LBB287_35:
	movq	-120(%rbp), %rax
	cmpq	%r15, 24(%rax)
	ja	LBB287_28
LBB287_36:
	movq	-184(%rbp), %rcx
	movq	24(%rcx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rcx), %rax
	movq	16(%rcx), %rbx
	movq	(%rax), %r14
	movl	$17, %edi
	callq	_GC_malloc
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rbx)
	movq	%rax, %rbx
	jne	LBB287_44
	movq	$0, -136(%rbp)
	jmp	LBB287_47
LBB287_38:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
	movq	8(%rcx), %r14
	movq	-184(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -120(%rbp)
	movq	8(%rcx), %r15
	jne	LBB287_40
	xorl	%edi, %edi
	jmp	LBB287_41
LBB287_40:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB287_41:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r12
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%rbx, 8(%r13)
	movq	%r14, 16(%r13)
	movq	-192(%rbp), %rdx
	movq	%rdx, 24(%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	%r15, 40(%r13)
	movq	(%r12), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB287_43
	movq	%r12, %rax
	movq	%r13, %rdx
	jmp	LBB287_84
LBB287_43:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r12, (%rbx)
	movq	%r13, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%r14, %rax
	jmp	LBB287_84
LBB287_44:
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	LBB287_85
	movl	$1, %ecx
	movq	%rcx, -136(%rbp)
	.align	4, 0x90
LBB287_46:
	incq	-136(%rbp)
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	LBB287_46
LBB287_47:
	xorl	%r15d, %r15d
	movl	$16, %r12d
	movq	%r15, -120(%rbp)
	jmp	LBB287_81
LBB287_52:
	incq	-120(%rbp)
	jmp	LBB287_55
	.align	4, 0x90
LBB287_53:
	movb	1(%r14), %cl
	incq	%r14
	cmpb	$37, %cl
	jne	LBB287_55
	cmpb	$37, 1(%r14)
	setne	%al
	movzbl	%al, %ebx
	addq	%rbx, -120(%rbp)
LBB287_55:
	testb	%cl, %cl
	jne	LBB287_53
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB287_58
	xorl	%edi, %edi
	jmp	LBB287_59
LBB287_58:
	movq	_scope_stack@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	shlq	$5, %rbx
	leaq	-32(%rbx,%r14), %rdi
LBB287_59:
	leaq	L_.str131(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str162(%rip), %rbx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	-120(%rbp), %rcx
	movq	-136(%rbp), %r8
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB287_61
	movq	%rbx, %rax
	movq	%r14, %rdx
	jmp	LBB287_84
LBB287_61:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	jmp	LBB287_21
LBB287_63:
	movq	-144(%rbp), %rax
	movq	%r14, %rdx
	jmp	LBB287_84
LBB287_69:
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB287_71
	xorl	%edi, %edi
	jmp	LBB287_72
LBB287_71:
	movq	_scope_stack@GOTPCREL(%rip), %r15
	movq	(%r15), %r15
	movq	%rbx, %r12
	shlq	$5, %r12
	leaq	-32(%r12,%r15), %rdi
LBB287_72:
	leaq	L_.str2(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %r15
	movq	(%r15), %r12
	movq	8(%r15), %r15
	movq	%r15, -120(%rbp)
	movq	%rdx, %r15
	jne	LBB287_74
	xorl	%edi, %edi
	jmp	LBB287_75
LBB287_74:
	movq	_scope_stack@GOTPCREL(%rip), %r13
	movq	(%r13), %r13
	shlq	$5, %rbx
	leaq	-32(%rbx,%r13), %rdi
LBB287_75:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	%r12, 8(%r13)
	movq	-120(%rbp), %r12
	movq	%r12, 16(%r13)
	movq	%r15, 24(%r13)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	%r14, 40(%r13)
	jmp	LBB287_18
	.align	4, 0x90
LBB287_64:
	movq	%r13, %rdi
	leaq	L_.str2(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB287_69
	movq	%r12, %rax
	subq	%r15, %rax
	cmpq	%rax, 8(%r14)
	jbe	LBB287_77
	movq	%r15, %r13
	negq	%r13
	movq	%rbx, %rdi
	.align	4, 0x90
LBB287_67:
	leaq	(%r12,%r12), %rbx
	movq	%rbx, %rsi
	callq	_GC_realloc
	leaq	(%r13,%r12,2), %r12
	cmpq	%r12, 8(%r14)
	jbe	LBB287_76
	movq	%rbx, %r12
	movq	%rax, %rdi
	jmp	LBB287_67
LBB287_62:
	movq	%r14, -112(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	leaq	-112(%rbp), %r14
	movq	%r14, %rcx
	callq	_obj_put_fmt
	movq	%rax, -144(%rbp)
	movq	%rdx, %r14
	movq	(%rax), %r13
	movq	%r13, %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB287_64
	jmp	LBB287_63
LBB287_48:
	cmpq	%r12, %r15
	jb	LBB287_50
	leaq	1(%r12,%r12), %rsi
	movq	%rbx, %rdi
	callq	_GC_realloc
	addq	%r12, %r12
	movb	(%r14), %cl
	movq	%rax, %rbx
LBB287_50:
	movb	%cl, (%rbx,%r15)
	incq	%r15
	incq	%r14
	jmp	LBB287_81
LBB287_51:
	movq	-136(%rbp), %rax
	cmpq	%rax, -120(%rbp)
	jb	LBB287_62
	jmp	LBB287_52
LBB287_76:
	movq	%rbx, %r12
	movq	%rax, %rbx
LBB287_77:
	leaq	(%rbx,%r15), %r13
	movq	(%r14), %r8
	xorl	%esi, %esi
	xorb	%al, %al
	movq	%r13, %rdi
	movq	$-1, %rdx
	leaq	L_.str163(%rip), %rcx
	callq	___sprintf_chk
	movq	-112(%rbp), %r14
	movq	%r13, %rdi
	callq	_strlen
	addq	%rax, %r15
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	LBB287_79
	movq	_smp_nil@GOTPCREL(%rip), %rax
	leaq	8(%rax), %rax
	jmp	LBB287_80
LBB287_79:
	addq	$8, %rax
LBB287_80:
	incq	-120(%rbp)
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
LBB287_81:
	movb	(%r14), %cl
	cmpb	$37, %cl
	je	LBB287_51
	testb	%cl, %cl
	jne	LBB287_48
	movb	$0, (%rbx,%r15)
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_strcpy
	movq	%r13, (%r15)
	movq	%r12, 8(%r15)
	movq	%rbx, %rdi
	callq	_GC_free
	movq	%r14, %rax
	movq	%r15, %rdx
LBB287_84:
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB287_85:
	movl	$1, %eax
	movq	%rax, -136(%rbp)
	jmp	LBB287_47
Leh_func_end287:

	.globl	_smpFloat_create_class
	.align	4, 0x90
_smpFloat_create_class:
Leh_func_begin288:
	pushq	%rbp
Ltmp773:
	movq	%rsp, %rbp
Ltmp774:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp775:
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movq	_smp_mpfr_default_prec@GOTPCREL(%rip), %rax
	movq	$53, (%rax)
	movl	$53, %edi
	callq	_mpfr_set_default_prec
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB288_2
	xorl	%edi, %edi
	jmp	LBB288_3
LBB288_2:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB288_3:
	leaq	L_.str83(%rip), %rsi
	callq	_minihash_get
	testq	%rdx, %rdx
	movq	%rdx, -80(%rbp)
	movq	%rax, -88(%rbp)
	jne	LBB288_5
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	LBB288_7
LBB288_5:
	movq	-80(%rbp), %rsi
	testb	$16, 12(%rsi)
	jne	LBB288_8
	movl	$8, %edi
	callq	_GC_malloc
	movq	-80(%rbp), %rsi
	movq	%rsi, (%rax)
	movl	$1, %edx
	movq	%rax, %rsi
LBB288_7:
	leaq	L_.str125(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_smpGlobal_class_multiple
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
LBB288_8:
	testq	%rbx, %rbx
	jne	LBB288_10
	xorl	%edi, %edi
	jmp	LBB288_11
LBB288_10:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB288_11:
	leaq	L_.str125(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rcx
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	movq	%rcx, 56(%rsi)
	movq	48(%rdx), %rcx
	movq	%rcx, 48(%rsi)
	movq	40(%rdx), %rcx
	movq	%rcx, 40(%rsi)
	movq	32(%rdx), %rcx
	movq	%rcx, 32(%rsi)
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%rsi)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rsi)
	movq	(%rdx), %rcx
	movq	8(%rdx), %rdi
	movq	%rdi, 8(%rsi)
	movq	%rcx, (%rsi)
	movq	_smpType_ids@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rdx, -96(%rbp)
	movq	%rax, -104(%rbp)
	jne	LBB288_14
LBB288_12:
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	addq	$8, %rbx
LBB288_13:
	movl	(%rbx), %eax
	movq	_smpType_id_float@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	leaq	_smpFloat_clear(%rip), %rdi
	leaq	L_.str54(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movl	$64, %edx
	leaq	L_.str55(%rip), %rcx
	movq	-104(%rbp), %rbx
	movq	%rbx, %rdi
	movq	-96(%rbp), %r14
	movq	%r14, %rsi
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_add(%rip), %rdi
	leaq	L_.str83(%rip), %r15
	movl	$2, %esi
	movq	%r15, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str53(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_sub(%rip), %rdi
	movl	$2, %esi
	movq	%r15, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str88(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_mul(%rip), %rdi
	movl	$2, %esi
	movq	%r15, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str89(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_div(%rip), %rdi
	movl	$2, %esi
	movq	%r15, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str90(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_pow(%rip), %rdi
	movl	$2, %esi
	movq	%r15, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str97(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_cmp(%rip), %rdi
	leaq	L_.str59(%rip), %rdx
	leaq	L_.str57(%rip), %r15
	movl	$2, %esi
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str105(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_equalp(%rip), %rdi
	leaq	L_.str56(%rip), %r12
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str106(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpInteger_nequalp(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str107(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_lt(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str91(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_le(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str92(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_ge(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str93(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_gt(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str94(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_eq(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str108(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_equalp(%rip), %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str58(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpFloat_to_s(%rip), %rdi
	leaq	L_.str2(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %r14
	movl	(%r14), %esi
	movq	%rbx, %rdi
	callq	_mpfr_const_pi
	movq	_smpType_float@GOTPCREL(%rip), %r15
	movq	%r15, %rdi
	callq	_obj_init
	leaq	L_.str126(%rip), %rcx
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %r12
	movq	%r12, %rsi
	movl	$257, %edx
	movq	%rax, %r8
	movq	%rbx, %r9
	callq	_smpType_def_general
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	_mpfr_init
	leaq	-72(%rbp), %r13
	movq	%r13, %rdi
	callq	_mpfr_init
	movl	(%r14), %ecx
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	_mpfr_set_ui_2exp
	movl	(%r14), %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_mpfr_exp
	movq	%r15, %rdi
	callq	_obj_init
	leaq	L_.str127(%rip), %rcx
	movq	-88(%rbp), %rdi
	movq	%r12, %rsi
	movl	$257, %edx
	movq	%rax, %r8
	movq	%rbx, %r9
	callq	_smpType_def_general
	movq	%r13, %rdi
	callq	_mpfr_clear
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB288_14:
	movl	$207045717, %eax
	xorl	%edx, %edx
	movq	_smpType_ids@GOTPCREL(%rip), %rbx
	divq	8(%rbx)
	movq	%rdx, %rbx
	shlq	$4, %rbx
	movq	(%rcx,%rbx), %r14
	testq	%r14, %r14
	je	LBB288_12
	shlq	$4, %rdx
	movq	8(%rcx,%rdx), %r15
	addq	$16, %r14
	movq	$-1, %r12
	leaq	L_.str125(%rip), %r13
	jmp	LBB288_17
	.align	4, 0x90
LBB288_16:
	leaq	24(%rbx), %r14
	movq	-16(%rbx), %rdi
	movq	%r13, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB288_13
LBB288_17:
	movq	%r14, %rbx
	incq	%r12
	cmpq	%r12, %r15
	ja	LBB288_16
	jmp	LBB288_12
Leh_func_end288:

	.globl	_smpException_create_class
	.align	4, 0x90
_smpException_create_class:
Leh_func_begin289:
	pushq	%rbp
Ltmp776:
	movq	%rsp, %rbp
Ltmp777:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp778:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB289_2
	xorl	%r14d, %r14d
	leaq	L_.str114(%rip), %rsi
	xorl	%edi, %edi
	callq	_minihash_get
	jmp	LBB289_3
LBB289_2:
	movq	_scope_stack@GOTPCREL(%rip), %r15
	movq	(%r15), %rdi
	leaq	-1(%rbx), %r14
	shlq	$5, %r14
	addq	%r14, %rdi
	leaq	L_.str114(%rip), %rsi
	callq	_minihash_get
	addq	(%r15), %r14
LBB289_3:
	movq	%rdx, -48(%rbp)
	movq	%rax, %r15
	movq	%r14, %rdi
	leaq	L_.str128(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	%rdx, %r14
	jne	LBB289_5
	xorl	%edi, %edi
	jmp	LBB289_6
LBB289_5:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB289_6:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	testq	%r14, %r14
	movq	%rdx, -56(%rbp)
	movq	%rax, -64(%rbp)
	jne	LBB289_8
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB289_10
LBB289_8:
	testb	$16, 12(%r14)
	jne	LBB289_11
	movl	$8, %edi
	callq	_GC_malloc
	movq	%r14, (%rax)
	movl	$1, %edx
LBB289_10:
	leaq	L_.str25(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB289_11:
	testq	%r14, %r14
	jne	LBB289_13
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB289_15
LBB289_13:
	testb	$16, 12(%r14)
	jne	LBB289_16
	movl	$8, %edi
	callq	_GC_malloc
	movq	%r14, (%rax)
	movl	$1, %edx
LBB289_15:
	leaq	L_.str129(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB289_16:
	testq	%r14, %r14
	jne	LBB289_18
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB289_20
LBB289_18:
	testb	$16, 12(%r14)
	jne	LBB289_21
	movl	$8, %edi
	callq	_GC_malloc
	movq	%r14, (%rax)
	movl	$1, %edx
LBB289_20:
	leaq	L_.str23(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB289_21:
	testq	%r14, %r14
	jne	LBB289_23
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB289_25
LBB289_23:
	testb	$16, 12(%r14)
	jne	LBB289_26
	movl	$8, %edi
	callq	_GC_malloc
	movq	%r14, (%rax)
	movl	$1, %edx
LBB289_25:
	leaq	L_.str8(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB289_26:
	testq	%r14, %r14
	jne	LBB289_28
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB289_30
LBB289_28:
	testb	$16, 12(%r14)
	jne	LBB289_31
	movl	$8, %edi
	callq	_GC_malloc
	movq	%r14, (%rax)
	movl	$1, %edx
LBB289_30:
	leaq	L_.str130(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB289_31:
	testq	%r14, %r14
	jne	LBB289_33
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB289_35
LBB289_33:
	testb	$16, 12(%r14)
	jne	LBB289_36
	movl	$8, %edi
	callq	_GC_malloc
	movq	%r14, (%rax)
	movl	$1, %edx
LBB289_35:
	leaq	L_.str131(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB289_36:
	leaq	_smpException_clear(%rip), %rdi
	leaq	L_.str54(%rip), %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str55(%rip), %r14
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi
	movl	$64, %edx
	movq	%r14, %rcx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpException_to_s(%rip), %rdi
	leaq	L_.str2(%rip), %r12
	movl	$1, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %r13
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r13, %rcx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpTypeError_clear(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	-64(%rbp), %rbx
	movq	%rbx, %rdi
	movq	-56(%rbp), %r15
	movq	%r15, %rsi
	movl	$64, %edx
	movq	%r14, %rcx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpTypeError_to_s(%rip), %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	%rbx, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%r13, %rcx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end289:

	.globl	_smpException_to_s
	.align	4, 0x90
_smpException_to_s:
Leh_func_begin290:
	pushq	%rbp
Ltmp779:
	movq	%rsp, %rbp
Ltmp780:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp781:
	movq	(%rsi), %rdx
	movq	%rdx, -64(%rbp)
	movq	8(%rsi), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rsi), %rax
	movq	%rax, -48(%rbp)
	movq	(%rdi), %rsi
	leaq	L_.str181(%rip), %rdi
	xorb	%al, %al
	callq	_smpString_init_fmt
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	-56(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	movq	%rdx, -104(%rbp)
	movq	%rax, %rbx
	jne	LBB290_2
	movq	%rbx, %rax
	jmp	LBB290_31
LBB290_2:
	leaq	L_.str180(%rip), %rdi
	xorb	%al, %al
	callq	_smpString_init_fmt
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-56(%rbp), %r14
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r15
	jmp	LBB290_24
LBB290_12:
	movq	-96(%rbp), %r14
	movb	12(%r14), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	je	LBB290_17
	movq	-88(%rbp), %r15
	leaq	L_.str55(%rip), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB290_15
	testb	$15, (%rcx)
	je	LBB290_16
LBB290_15:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB290_16:
	movq	%r15, %rdi
	callq	_GC_free
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
LBB290_17:
	movb	12(%rbx), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	jne	LBB290_19
LBB290_18:
	movq	%r12, %rax
	movq	%r13, %rdx
	jmp	LBB290_31
LBB290_19:
	leaq	L_.str55(%rip), %rdx
	movq	%rbx, %rdi
	movq	-104(%rbp), %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r14
	movl	(%r14), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB290_21
	testb	$15, (%rcx)
	je	LBB290_22
LBB290_21:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	-104(%rbp), %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB290_22:
	movq	-104(%rbp), %rdi
	callq	_GC_free
	jmp	LBB290_18
	.align	4, 0x90
LBB290_3:
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	callq	_smp_print
	movl	(%r15), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB290_5
	testb	$15, (%rdx)
	je	LBB290_6
LBB290_5:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	_fputc
LBB290_6:
	movq	8(%r14), %rax
	movq	(%rax), %r12
	movq	8(%rax), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	leaq	L_.str52(%rip), %rdx
	callq	_smpObject_get_fun
	movl	(%r15), %esi
	cmpl	%esi, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB290_9
	testb	$15, (%rcx)
	jne	LBB290_9
	movq	%rax, %r12
	movq	%rcx, %r13
	jmp	LBB290_10
LBB290_9:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movl	(%r15), %esi
	movq	%rax, %r12
	movq	%rdx, %r13
LBB290_10:
	movq	%r12, -80(%rbp)
	movq	%r13, -72(%rbp)
	cmpl	%esi, 8(%r12)
	jne	LBB290_23
	testb	$15, (%r13)
	je	LBB290_12
LBB290_23:
	movq	%rbx, %rdi
	movq	-104(%rbp), %r12
	movq	%r12, %rsi
	movl	$1, %edx
	leaq	-96(%rbp), %rcx
	callq	_smpString_add_now
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	callq	_smpString_add_now
	movq	8(%r14), %r14
	movq	16(%r14), %r14
LBB290_24:
	testq	%r14, %r14
	jne	LBB290_3
	movq	-96(%rbp), %r14
	movb	12(%r14), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	je	LBB290_30
	movq	-88(%rbp), %r15
	leaq	L_.str55(%rip), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB290_28
	testb	$15, (%rcx)
	je	LBB290_29
LBB290_28:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB290_29:
	movq	%r15, %rdi
	callq	_GC_free
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
LBB290_30:
	movq	%rbx, %rax
	movq	-104(%rbp), %rdx
LBB290_31:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end290:

	.globl	_smpTypeError_to_s
	.align	4, 0x90
_smpTypeError_to_s:
Leh_func_begin291:
	pushq	%rbp
Ltmp782:
	movq	%rsp, %rbp
Ltmp783:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
Ltmp784:
	movq	(%rsi), %rbx
	movq	%rbx, -88(%rbp)
	movq	8(%rsi), %rax
	movq	%rax, -80(%rbp)
	movq	16(%rsi), %rax
	movq	%rax, -72(%rbp)
	movq	24(%rsi), %rax
	movq	%rax, -64(%rbp)
	movq	32(%rsi), %r8
	movq	%r8, -56(%rbp)
	movq	40(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	testq	%rbx, %rbx
	je	LBB291_2
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_strcpy
	movq	%r13, (%r15)
	movq	%r12, 8(%r15)
	jmp	LBB291_6
LBB291_2:
	movq	%rdi, %r14
	testq	%rax, %rax
	je	LBB291_4
	movq	(%rax), %r15
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -144(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	_strcpy
	movq	%r13, (%rbx)
	movq	%r12, 8(%rbx)
	movq	(%r14), %r14
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -152(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_strcpy
	movq	%r13, (%r15)
	movq	%r12, 8(%r15)
	movq	-56(%rbp), %r14
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	L_.str178(%rip), %rdi
	xorb	%al, %al
	movq	-152(%rbp), %rsi
	movq	%r15, %rdx
	movq	-144(%rbp), %rcx
	movq	%rbx, %r8
	jmp	LBB291_5
LBB291_4:
	movq	(%r14), %r14
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r15
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_strcpy
	movq	%r13, (%rbx)
	movq	%r12, 8(%rbx)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %r8
	leaq	L_.str179(%rip), %rdi
	xorb	%al, %al
	movq	%r15, %rsi
	movq	%rbx, %rdx
LBB291_5:
	callq	_smpGlobal_sprintf
	movq	%rax, %r14
	movq	%rdx, %r15
LBB291_6:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-80(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	je	LBB291_21
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movl	$2, %edi
	callq	_GC_malloc
	movw	$10, (%rax)
	movq	%rax, (%r12)
	movq	$1, 8(%r12)
	movq	%rbx, -104(%rbp)
	movq	%r12, -96(%rbp)
	movl	$1, %edx
	leaq	-104(%rbp), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_smpString_add_now
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r14
	movl	(%r14), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %r15
	movq	%rax, %r14
	jne	LBB291_9
	testb	$15, (%r15)
	je	LBB291_21
LBB291_9:
	movq	-104(%rbp), %rbx
	movb	12(%rbx), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	je	LBB291_14
	movq	-96(%rbp), %r12
	leaq	L_.str55(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB291_12
	testb	$15, (%rcx)
	je	LBB291_13
LBB291_12:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB291_13:
	movq	%r12, %rdi
	callq	_GC_free
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
LBB291_14:
	leaq	L_.str180(%rip), %rdi
	xorb	%al, %al
	callq	_smpString_init_fmt
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-80(%rbp), %rbx
	movq	-72(%rbp), %r12
	leaq	L_.str52(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %esi
	cmpl	%esi, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB291_16
	testb	$15, (%rcx)
	je	LBB291_17
LBB291_16:
	movl	$1, %r8d
	leaq	-120(%rbp), %r9
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %esi
	movq	%rdx, %rcx
LBB291_17:
	movq	%rax, -136(%rbp)
	movq	%rcx, -128(%rbp)
	cmpl	%esi, 8(%rax)
	jne	LBB291_20
	testb	$15, (%rcx)
	jne	LBB291_20
	movq	%rax, %r14
	movq	%rcx, %r15
	jmp	LBB291_21
LBB291_20:
	movl	$1, %edx
	leaq	-136(%rbp), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_smpString_add_now
	movq	%rax, %r14
	movq	%rdx, %r15
LBB291_21:
	movq	%r14, %rax
	movq	%r15, %rdx
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end291:

	.globl	_smpArray_create_class
	.align	4, 0x90
_smpArray_create_class:
Leh_func_begin292:
	pushq	%rbp
Ltmp785:
	movq	%rsp, %rbp
Ltmp786:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp787:
	movq	_smpType_object@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB292_2
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str86(%rip), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB292_2:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB292_4
	xorl	%edi, %edi
	jmp	LBB292_5
LBB292_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB292_5:
	leaq	L_.str86(%rip), %rbx
	movq	%rbx, %rsi
	callq	_minihash_get
	movq	%rax, %r14
	movq	%rdx, %r15
	leaq	_smpArray_add_now(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str54(%rip), %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str66(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_at(%rip), %rdi
	leaq	L_.str57(%rip), %r12
	leaq	L_.str59(%rip), %r13
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r13, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str75(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_at_assign(%rip), %rdi
	movl	$3, %esi
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r12, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str76(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_clear(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str54(%rip), %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str55(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_copy(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str70(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_map(%rip), %rdi
	leaq	L_.str49(%rip), %r13
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str73(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_reduce(%rip), %rdi
	movl	$4, %esi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	leaq	L_.str46(%rip), %rax
	movq	%rax, %r8
	movq	%r12, %r9
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str74(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_reverse(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str61(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_reverse_now(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str132(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_sort(%rip), %rdi
	movl	$3, %esi
	movq	%rbx, %rdx
	leaq	L_.str46(%rip), %rax
	movq	%rax, %rcx
	movq	%r13, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str78(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_sort_now(%rip), %rdi
	movl	$3, %esi
	movq	%rbx, %rdx
	leaq	L_.str46(%rip), %rax
	movq	%rax, %rcx
	movq	%r13, %r8
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str133(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_to_a(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str80(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_to_list(%rip), %rdi
	leaq	L_.str65(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str81(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_to_s(%rip), %rdi
	leaq	L_.str2(%rip), %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpArray_write(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str62(%rip), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end292:

	.globl	_smpArray_sort
	.align	4, 0x90
_smpArray_sort:
Leh_func_begin293:
	pushq	%rbp
Ltmp788:
	movq	%rsp, %rbp
Ltmp789:
	pushq	%r14
	pushq	%rbx
Ltmp790:
	movq	%rcx, %rbx
	movl	%edx, %r14d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpArray_copy
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB293_2
	testb	$15, (%rdx)
	je	LBB293_3
LBB293_2:
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movl	%r14d, %edx
	callq	_smpArray_sort_now
LBB293_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end293:

	.globl	_smpArray_sort_now
	.align	4, 0x90
_smpArray_sort_now:
Leh_func_begin294:
	pushq	%rbp
Ltmp791:
	movq	%rsp, %rbp
Ltmp792:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp793:
	testl	%edx, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdi, -96(%rbp)
	jg	LBB294_5
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
LBB294_2:
	movq	-88(%rbp), %rsi
	movq	(%rsi), %rbx
	movq	8(%rsi), %r14
	movq	%r14, %rdi
	shlq	$4, %rdi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	_smpArray_sort_timmy
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	%r15, %rdi
	callq	_GC_free
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rbx)
	jne	LBB294_22
	testb	$15, (%r14)
	jne	LBB294_22
	movq	%rbx, %rax
	movq	%r14, %rdx
	jmp	LBB294_23
LBB294_5:
	movq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	L_.str49(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB294_2
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str49(%rip), %r14
	jmp	LBB294_13
	.align	4, 0x90
LBB294_7:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB294_2
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB294_11
	.align	4, 0x90
LBB294_9:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB294_2
	incq	%r13
LBB294_11:
	cmpq	%r13, %r12
	ja	LBB294_9
	incq	%rbx
LBB294_13:
	cmpq	%rbx, -56(%rbp)
	ja	LBB294_7
	leaq	L_.str10(%rip), %rsi
	movq	-104(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB294_16
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	jmp	LBB294_23
LBB294_16:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB294_18
	leaq	L_.str49(%rip), %rsi
	xorl	%edi, %edi
	callq	_minihash_get
	movq	%rdx, %rbx
	xorl	%edi, %edi
	jmp	LBB294_19
LBB294_18:
	movq	_scope_stack@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	decq	%rbx
	shlq	$5, %rbx
	addq	%rbx, %rdi
	leaq	L_.str49(%rip), %rsi
	callq	_minihash_get
	movq	%rbx, %rdi
	addq	(%r14), %rdi
	movq	%rdx, %rbx
LBB294_19:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	$0, (%r15)
	movq	-80(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-72(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-64(%rbp), %rax
	movq	%rax, 40(%r15)
	movq	(%r14), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB294_21
	movq	%r14, %rax
	movq	%r15, %rdx
	jmp	LBB294_23
LBB294_21:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r14, (%rbx)
	movq	%r15, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%r14, %rax
	jmp	LBB294_23
LBB294_22:
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
LBB294_23:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end294:

	.globl	_smpArray_to_s
	.align	4, 0x90
_smpArray_to_s:
Leh_func_begin295:
	pushq	%rbp
Ltmp794:
	movq	%rsp, %rbp
Ltmp795:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp796:
	movq	%rsi, %rbx
	movq	_smpType_string@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	_obj_init
	movq	%rax, -96(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movl	$2, %edi
	callq	_GC_malloc
	movw	$91, (%rax)
	movq	%rax, (%r15)
	movq	$1, 8(%r15)
	movq	%r14, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movl	$3, %edi
	callq	_GC_malloc
	movb	$0, 2(%rax)
	movw	$8236, (%rax)
	movq	%rax, (%r12)
	movq	$2, 8(%r12)
	movq	%r14, -56(%rbp)
	movq	%r12, -48(%rbp)
	movq	(%rbx), %r14
	movq	8(%rbx), %rax
	movq	%rax, -104(%rbp)
	testq	%rax, %rax
	je	LBB295_9
	addq	$8, %r14
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB295_2:
	movq	-8(%r14), %r12
	movq	(%r14), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	leaq	L_.str52(%rip), %rdx
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB295_5
	testb	$15, (%rcx)
	jne	LBB295_5
	movq	%rcx, %rdx
	jmp	LBB295_6
LBB295_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB295_6:
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	testq	%rbx, %rbx
	je	LBB295_8
	movq	-96(%rbp), %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	callq	_smpString_add_now
LBB295_8:
	movq	-96(%rbp), %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	callq	_smpString_add_now
	addq	$16, %r14
	incq	%rbx
	cmpq	%rbx, -104(%rbp)
	jne	LBB295_2
LBB295_9:
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$2, %edi
	callq	_GC_malloc
	movw	$93, (%rax)
	movq	%rax, (%r14)
	movq	$1, 8(%r14)
	movq	%rbx, -88(%rbp)
	movq	%r14, -80(%rbp)
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-96(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_smpString_add_now
	movq	%rbx, %rax
	movq	%r15, %rdx
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end295:

	.globl	_smpArray_write
	.align	4, 0x90
_smpArray_write:
Leh_func_begin296:
	pushq	%rbp
Ltmp797:
	movq	%rsp, %rbp
Ltmp798:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp799:
	movq	%rsi, %rbx
	movq	_smpType_string@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	_obj_init
	movq	%rax, -96(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movl	$7, %edi
	callq	_GC_malloc
	movb	$0, 6(%rax)
	movw	$31073, 4(%rax)
	movl	$1920098600, (%rax)
	movq	%rax, (%r15)
	movq	$6, 8(%r15)
	movq	%r14, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movl	$2, %edi
	callq	_GC_malloc
	movw	$32, (%rax)
	movq	%rax, (%r12)
	movq	$1, 8(%r12)
	movq	%r14, -56(%rbp)
	movq	%r12, -48(%rbp)
	movq	(%rbx), %r14
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	je	LBB296_7
	addq	$8, %r14
	.align	4, 0x90
LBB296_2:
	movq	-8(%r14), %r12
	movq	(%r14), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	leaq	L_.str62(%rip), %rdx
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB296_5
	testb	$15, (%rcx)
	jne	LBB296_5
	movq	%rcx, %rdx
	jmp	LBB296_6
LBB296_5:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB296_6:
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-96(%rbp), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	callq	_smpString_add_now
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	callq	_smpString_add_now
	addq	$16, %r14
	decq	%rbx
	jne	LBB296_2
LBB296_7:
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$2, %edi
	callq	_GC_malloc
	movw	$41, (%rax)
	movq	%rax, (%r14)
	movq	$1, 8(%r14)
	movq	%rbx, -88(%rbp)
	movq	%r14, -80(%rbp)
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-96(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_smpString_add_now
	movq	%rbx, %rax
	movq	%r15, %rdx
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end296:

	.globl	_init_required_classes
	.align	4, 0x90
_init_required_classes:
Leh_func_begin297:
	pushq	%rbp
Ltmp800:
	movq	%rsp, %rbp
Ltmp801:
	callq	_smpGlobal_create_class
	callq	_smpRegex_create_class
	callq	_smpArray_create_class
	callq	_smpHash_create_class
	callq	_smpSymbol_create_class
	xorl	%eax, %eax
	popq	%rbp
	ret
Leh_func_end297:

	.globl	_test_external_classes
	.align	4, 0x90
_test_external_classes:
Leh_func_begin298:
	pushq	%rbp
Ltmp802:
	movq	%rsp, %rbp
Ltmp803:
	movq	_smpType_object@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB298_2
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str134(%rip), %rdi
	movl	$1, %edx
	movq	%rax, %rsi
	xorl	%ecx, %ecx
	callq	_smpGlobal_class_multiple
LBB298_2:
	xorl	%eax, %eax
	popq	%rbp
	ret
Leh_func_end298:

	.globl	_init_fundamental_classes
	.align	4, 0x90
_init_fundamental_classes:
Leh_func_begin299:
	pushq	%rbp
Ltmp804:
	movq	%rsp, %rbp
Ltmp805:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp806:
	movq	_smpType_next_id@GOTPCREL(%rip), %rbx
	movl	$1, (%rbx)
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%r14, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	_smpType_ids@GOTPCREL(%rip), %rax
	movq	%r14, (%rax)
	movq	$10, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	leaq	L_.str57(%rip), %rdi
	xorl	%r14d, %r14d
	movl	$128, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_smpGlobal_class_multiple
	leaq	L_.str135(%rip), %rax
	movq	_smpType_id@GOTPCREL(%rip), %r15
	movq	%rax, (%r15)
	movl	(%rbx), %eax
	movl	%eax, 8(%r15)
	incl	%eax
	movl	%eax, (%rbx)
	movq	$1, 24(%r15)
	movl	$8, %edi
	callq	_GC_malloc
	movq	%rax, 16(%r15)
	movq	_smpType_object@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$0, 32(%r15)
	movq	$0, 40(%r15)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	LBB299_2
	movq	_scope_stack@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	movq	%rbx, %rax
	shlq	$5, %rax
	leaq	-32(%rax,%r14), %r14
LBB299_2:
	movq	%r14, %rdi
	leaq	L_.str57(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rcx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	movq	%rcx, 56(%rsi)
	movq	48(%rdx), %rcx
	movq	%rcx, 48(%rsi)
	movq	40(%rdx), %rcx
	movq	%rcx, 40(%rsi)
	movq	32(%rdx), %rcx
	movq	%rcx, 32(%rsi)
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%rsi)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rsi)
	movq	(%rdx), %rcx
	movq	8(%rdx), %rdi
	movq	%rdi, 8(%rsi)
	movq	%rcx, (%rsi)
	testb	$16, 12(%rsi)
	movq	%rdx, -48(%rbp)
	movq	%rax, -56(%rbp)
	jne	LBB299_4
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	leaq	L_.str1(%rip), %rdi
	movl	$1, %edx
	movl	$128, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
LBB299_4:
	testq	%rbx, %rbx
	jne	LBB299_6
	xorl	%edi, %edi
	jmp	LBB299_7
LBB299_6:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB299_7:
	leaq	L_.str1(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rax
	movq	_smpType_class@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	movl	8(%rcx), %eax
	movq	_smpType_id_class@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movq	_smpType_object@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB299_9
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	leaq	L_.str49(%rip), %rdi
	movl	$1, %edx
	movl	$128, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
LBB299_9:
	testq	%rbx, %rbx
	jne	LBB299_11
	xorl	%edi, %edi
	jmp	LBB299_12
LBB299_11:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB299_12:
	leaq	L_.str49(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rax
	movq	_smpType_function@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	movq	_smpType_class@GOTPCREL(%rip), %rax
	movl	8(%rax), %eax
	movq	_smpType_id_fun@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movq	_smpType_object@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB299_14
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	leaq	L_.str136(%rip), %rdi
	movl	$1, %edx
	movl	$160, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
LBB299_14:
	testq	%rbx, %rbx
	jne	LBB299_16
	xorl	%edi, %edi
	jmp	LBB299_17
LBB299_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB299_17:
	leaq	L_.str136(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rax
	movq	_smpType_atom@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	testb	$16, 12(%rcx)
	jne	LBB299_19
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_atom@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	leaq	L_.str2(%rip), %rdi
	movl	$1, %edx
	movl	$128, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
LBB299_19:
	testq	%rbx, %rbx
	jne	LBB299_21
	xorl	%edi, %edi
	jmp	LBB299_22
LBB299_21:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB299_22:
	leaq	L_.str2(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rax
	movq	_smpType_string@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	movq	_smpType_atom@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB299_24
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_atom@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str56(%rip), %rdi
	movl	$1, %edx
	movl	$160, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB299_24:
	movq	_smpType_object@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB299_26
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str4(%rip), %rdi
	movl	$1, %edx
	movl	$160, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB299_26:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB299_28
	xorl	%edi, %edi
	jmp	LBB299_29
LBB299_28:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB299_29:
	leaq	L_.str4(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rax
	movq	_smpType_collection@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	testb	$16, 12(%rcx)
	jne	LBB299_31
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_collection@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	leaq	L_.str38(%rip), %rdi
	movl	$1, %edx
	movl	$128, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
LBB299_31:
	testq	%rbx, %rbx
	jne	LBB299_33
	xorl	%edi, %edi
	jmp	LBB299_34
LBB299_33:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB299_34:
	leaq	L_.str38(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rax
	movq	_smpType_pair@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	testb	$16, 12(%rcx)
	jne	LBB299_36
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_pair@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	leaq	L_.str65(%rip), %rdi
	movl	$1, %edx
	movl	$128, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
LBB299_36:
	testq	%rbx, %rbx
	je	LBB299_38
	movq	_scope_stack@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	decq	%rbx
	shlq	$5, %rbx
	addq	%rbx, %rdi
	leaq	L_.str65(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rax
	movq	_smpType_list@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	movl	8(%rcx), %eax
	movq	_smpType_id_list@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	addq	(%r14), %rbx
	jmp	LBB299_39
LBB299_38:
	xorl	%ebx, %ebx
	leaq	L_.str65(%rip), %rsi
	xorl	%edi, %edi
	callq	_minihash_get
	movq	56(%rdx), %rax
	movq	_smpType_list@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	movl	8(%rcx), %eax
	movq	_smpType_id_list@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
LBB299_39:
	movq	%rbx, %rdi
	leaq	L_.str56(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	_smpType_list@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	leaq	L_.str54(%rip), %rdi
	movl	$2, %edx
	movl	$144, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB299_41
	xorl	%edi, %edi
	jmp	LBB299_42
LBB299_41:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB299_42:
	leaq	L_.str54(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rax
	movq	_smpType_nil@GOTPCREL(%rip), %r14
	movq	%rax, 56(%r14)
	movq	48(%rdx), %rax
	movq	%rax, 48(%r14)
	movq	40(%rdx), %rax
	movq	%rax, 40(%r14)
	movq	32(%rdx), %rax
	movq	%rax, 32(%r14)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r14)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r14)
	movq	(%rdx), %rax
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%r14)
	movq	%rax, (%r14)
	movq	%r14, %rdi
	callq	_obj_init
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	8(%r14), %eax
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	testq	%rbx, %rbx
	jne	LBB299_44
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB299_46
LBB299_44:
	testb	$16, 12(%rbx)
	jne	LBB299_47
	movl	$8, %edi
	callq	_GC_malloc
	movq	%rbx, (%rax)
	movl	$1, %edx
LBB299_46:
	leaq	L_.str82(%rip), %rdi
	movl	$144, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB299_47:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB299_49
	xorl	%edi, %edi
	jmp	LBB299_50
LBB299_49:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB299_50:
	leaq	L_.str82(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	_smpType_object@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB299_52
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str114(%rip), %rdi
	movl	$1, %edx
	movl	$128, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB299_52:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB299_54
	xorl	%edi, %edi
	jmp	LBB299_55
LBB299_54:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB299_55:
	leaq	L_.str114(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rax
	movq	_smpType_exception@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	movl	12(%rcx), %eax
	testb	$16, %al
	jne	LBB299_57
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_exception@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	leaq	L_.str137(%rip), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
	movl	12(%rbx), %eax
LBB299_57:
	testb	$16, %al
	jne	LBB299_59
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_exception@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str128(%rip), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB299_59:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB299_61
	xorl	%edi, %edi
	jmp	LBB299_62
LBB299_61:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB299_62:
	leaq	L_.str137(%rip), %rsi
	callq	_minihash_get
	testq	%rdx, %rdx
	movq	%rdx, %rbx
	jne	LBB299_64
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB299_66
LBB299_64:
	testb	$16, 12(%rbx)
	jne	LBB299_67
	movl	$8, %edi
	callq	_GC_malloc
	movq	%rbx, (%rax)
	movl	$1, %edx
LBB299_66:
	leaq	L_.str29(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB299_67:
	testq	%rbx, %rbx
	jne	LBB299_69
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB299_71
LBB299_69:
	testb	$16, 12(%rbx)
	jne	LBB299_72
	movl	$8, %edi
	callq	_GC_malloc
	movq	%rbx, (%rax)
	movl	$1, %edx
LBB299_71:
	leaq	L_.str42(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB299_72:
	testq	%rbx, %rbx
	jne	LBB299_74
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB299_76
LBB299_74:
	testb	$16, 12(%rbx)
	jne	LBB299_77
	movl	$8, %edi
	callq	_GC_malloc
	movq	%rbx, (%rax)
	movl	$1, %edx
LBB299_76:
	leaq	L_.str138(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB299_77:
	testq	%rbx, %rbx
	jne	LBB299_79
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB299_81
LBB299_79:
	testb	$16, 12(%rbx)
	jne	LBB299_82
	movl	$8, %edi
	callq	_GC_malloc
	movq	%rbx, (%rax)
	movl	$1, %edx
LBB299_81:
	leaq	L_.str40(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB299_82:
	testq	%rbx, %rbx
	jne	LBB299_84
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB299_86
LBB299_84:
	testb	$16, 12(%rbx)
	jne	LBB299_87
	movl	$8, %edi
	callq	_GC_malloc
	movq	%rbx, (%rax)
	movl	$1, %edx
LBB299_86:
	leaq	L_.str139(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB299_87:
	movq	_smpType_object@GOTPCREL(%rip), %rax
	testb	$16, 12(%rax)
	jne	LBB299_89
	movl	$8, %edi
	callq	_GC_malloc
	movq	_smpType_object@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	L_.str10(%rip), %rdi
	movl	$1, %edx
	movl	$128, %ecx
	movq	%rax, %rsi
	callq	_smpGlobal_class_multiple
LBB299_89:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB299_91
	xorl	%edi, %edi
	jmp	LBB299_92
LBB299_91:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB299_92:
	leaq	L_.str10(%rip), %rsi
	callq	_minihash_get
	movq	56(%rdx), %rax
	movq	_smpType_thrown@GOTPCREL(%rip), %rcx
	movq	%rax, 56(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rax, (%rcx)
	movl	8(%rcx), %eax
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	leaq	_smpObject_eq(%rip), %rbx
	leaq	L_.str57(%rip), %r14
	movq	%rbx, %rdi
	movl	$2, %esi
	leaq	L_.str56(%rip), %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str106(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_clear(%rip), %rdi
	leaq	L_.str54(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movl	$64, %edx
	leaq	L_.str55(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_cons(%rip), %r15
	leaq	L_.str65(%rip), %r12
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str140(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str141(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	movq	%rbx, %rdi
	movl	$2, %esi
	leaq	L_.str56(%rip), %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str108(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_eql(%rip), %rdi
	movl	$2, %esi
	leaq	L_.str56(%rip), %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str142(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_equalp(%rip), %rdi
	movl	$2, %esi
	leaq	L_.str56(%rip), %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str58(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_funcall_arg(%rip), %rbx
	leaq	L_.str49(%rip), %r15
	leaq	L_.str47(%rip), %r12
	movq	%rbx, %rdi
	movl	$4, %esi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	movq	%r14, %r9
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str143(%rip), %r13
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$1, %edx
	movq	%r13, %rcx
	movq	%rax, %r8
	callq	_smpType_def_general
	movq	%rbx, %rdi
	movl	$4, %esi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	movq	%r14, %r9
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r13, %rcx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_getclass(%rip), %rdi
	leaq	L_.str1(%rip), %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str144(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_hash(%rip), %rdi
	leaq	L_.str59(%rip), %rdx
	movl	$1, %esi
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str116(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_to_s(%rip), %rdi
	leaq	L_.str2(%rip), %r15
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %r12
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r12, %rcx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_to_s_class(%rip), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$1, %edx
	movq	%r12, %rcx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_type(%rip), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str145(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_types_equalp(%rip), %rdi
	movl	$2, %esi
	leaq	L_.str56(%rip), %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str146(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_write(%rip), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str62(%rip), %rbx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smpObject_write_class(%rip), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$1, %edx
	movq	%rbx, %rcx
	movq	%rax, %r8
	callq	_smpType_def_general
	leaq	_smptrue_to_s(%rip), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rdx, %rbx
	movq	%rax, %r14
	jne	LBB299_94
	xorl	%edi, %edi
	jmp	LBB299_95
LBB299_94:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB299_95:
	leaq	L_.str82(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str52(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	xorl	%edx, %edx
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	_smpType_def_general
	callq	_smpFunction_create_class
	callq	_smpList_create_class
	callq	_smpNil_create_class
	callq	_smpPair_create_class
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB299_97
	xorl	%edi, %edi
	jmp	LBB299_98
LBB299_97:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB299_98:
	leaq	L_.str10(%rip), %rsi
	callq	_minihash_get
	movq	%rax, %rbx
	movq	%rdx, %r14
	leaq	_smpThrown_to_s(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str2(%rip), %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	%rdx, %r9
	leaq	L_.str52(%rip), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%rax, %r8
	callq	_smpType_def_general
	callq	_smpException_create_class
	callq	_smpstrcreate_class
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end299:

	.globl	_smpObject_eql
	.align	4, 0x90
_smpObject_eql:
Leh_func_begin300:
	pushq	%rbp
Ltmp807:
	movq	%rsp, %rbp
Ltmp808:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp809:
	movq	%rcx, %rbx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	leaq	L_.str58(%rip), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB300_2
	testb	$15, (%rcx)
	je	LBB300_3
LBB300_2:
	movq	%rbx, %r9
	movl	%r14d, %r8d
	movq	%r15, %rsi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB300_3:
	movq	%rcx, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end300:

	.globl	_smpObject_equalp
	.align	4, 0x90
_smpObject_equalp:
Leh_func_begin301:
	pushq	%rbp
Ltmp810:
	movq	%rsp, %rbp
Ltmp811:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp812:
	movq	%rcx, %rbx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	leaq	L_.str108(%rip), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB301_2
	testb	$15, (%rcx)
	je	LBB301_3
LBB301_2:
	movq	%rbx, %r9
	movl	%r14d, %r8d
	movq	%r15, %rsi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB301_3:
	movq	%rcx, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end301:

	.globl	_smpObject_write
	.align	4, 0x90
_smpObject_write:
Leh_func_begin302:
	pushq	%rbp
Ltmp813:
	movq	%rsp, %rbp
Ltmp814:
	pushq	%r14
	pushq	%rbx
Ltmp815:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	L_.str52(%rip), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB302_2
	testb	$15, (%rcx)
	je	LBB302_3
LBB302_2:
	movq	%rbx, %rsi
	movq	%r14, %rdi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB302_3:
	movq	%rcx, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end302:

	.globl	_smpObject_write_class
	.align	4, 0x90
_smpObject_write_class:
Leh_func_begin303:
	pushq	%rbp
Ltmp816:
	movq	%rsp, %rbp
Ltmp817:
	pushq	%r14
	pushq	%rbx
Ltmp818:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	L_.str52(%rip), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB303_2
	testb	$15, (%rcx)
	je	LBB303_3
LBB303_2:
	movq	%rbx, %rsi
	movq	%r14, %rdi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB303_3:
	movq	%rcx, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end303:

	.globl	_init_smp_classes
	.align	4, 0x90
_init_smp_classes:
Leh_func_begin304:
	pushq	%rbp
Ltmp819:
	movq	%rsp, %rbp
Ltmp820:
	pushq	%rbx
	subq	$8, %rsp
Ltmp821:
	movq	_initialized_classesp@GOTPCREL(%rip), %rbx
	movl	$0, (%rbx)
	callq	_init_fundamental_classes
	callq	_smpGlobal_create_class
	callq	_smpRegex_create_class
	callq	_smpArray_create_class
	callq	_smpHash_create_class
	callq	_smpSymbol_create_class
	callq	_smpNumber_create_class
	callq	_smpInteger_create_class
	callq	_smpFloat_create_class
	movl	$1, (%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end304:

	.globl	_smp_unimplemented_function
	.align	4, 0x90
_smp_unimplemented_function:
Leh_func_begin305:
	pushq	%rbp
Ltmp822:
	movq	%rsp, %rbp
Ltmp823:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp824:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB305_2
	xorl	%edi, %edi
	jmp	LBB305_3
LBB305_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB305_3:
	leaq	L_.str25(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str147(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB305_5
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
LBB305_5:
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end305:

	.globl	_smpObject_get_fun_rec
	.align	4, 0x90
_smpObject_get_fun_rec:
Leh_func_begin306:
	pushq	%rbp
Ltmp825:
	movq	%rsp, %rbp
Ltmp826:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp827:
	movl	%edx, -44(%rbp)
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%r14, %r14
	jne	LBB306_2
LBB306_1:
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	jmp	LBB306_25
LBB306_2:
	cmpl	$0, -44(%rbp)
	je	LBB306_4
	leaq	32(%r14), %rax
	jmp	LBB306_5
LBB306_4:
	leaq	48(%r14), %rax
LBB306_5:
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	testq	%rax, %rax
	je	LBB306_16
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	LBB306_16
	movsbl	(%rbx), %eax
	testl	%eax, %eax
	jne	LBB306_9
	movl	$5381, %eax
	jmp	LBB306_12
LBB306_9:
	xorl	$177573, %eax
	movb	1(%rbx), %dl
	testb	%dl, %dl
	je	LBB306_12
	leaq	2(%rbx), %rsi
	.align	4, 0x90
LBB306_11:
	movsbl	%dl, %edx
	imull	$33, %eax, %eax
	xorl	%edx, %eax
	movb	(%rsi), %dl
	incq	%rsi
	testb	%dl, %dl
	jne	LBB306_11
LBB306_12:
	movslq	%eax, %rax
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	divq	8(%rsi)
	movslq	%edx, %rax
	shlq	$4, %rax
	movq	(%rcx,%rax), %r15
	testq	%r15, %r15
	je	LBB306_16
	movq	8(%rcx,%rax), %r12
	movq	$-1, %r13
	jmp	LBB306_15
	.align	4, 0x90
LBB306_14:
	movq	(%r15), %rdi
	leaq	24(%r15), %r15
	movq	%rbx, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB306_18
LBB306_15:
	incq	%r13
	cmpq	%r13, %r12
	ja	LBB306_14
LBB306_16:
	cmpq	$0, 16(%r14)
	je	LBB306_1
	xorl	%r15d, %r15d
	movq	_smpType_id_nil@GOTPCREL(%rip), %r12
	jmp	LBB306_23
LBB306_18:
	movq	-56(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_minihash_get
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %r15
	leaq	L_.str49(%rip), %rsi
	movq	%r15, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB306_20
	leaq	L_.str149(%rip), %rdi
	xorb	%al, %al
	movq	%r15, %rsi
	callq	_internal_error
LBB306_20:
	movq	%r14, %rdx
	movq	%rbx, %rax
	jmp	LBB306_25
	.align	4, 0x90
LBB306_21:
	movq	16(%r14), %rax
	movq	(%rax,%r15,8), %rdi
	movq	%rbx, %rsi
	movl	-44(%rbp), %edx
	callq	_smpObject_get_fun_rec
	movl	(%r12), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB306_25
	incq	%r15
LBB306_23:
	cmpq	%r15, 24(%r14)
	ja	LBB306_21
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
LBB306_25:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end306:

	.globl	_smpObject_get_fun
	.align	4, 0x90
_smpObject_get_fun:
Leh_func_begin307:
	pushq	%rbp
Ltmp828:
	movq	%rsp, %rbp
Ltmp829:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp830:
	movq	_smpType_id_class@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rdi)
	movq	%rdx, %rbx
	jne	LBB307_8
	movq	%rsi, %r14
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun_rec
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB307_13
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	(%r14), %r14
	jne	LBB307_4
	xorl	%edi, %edi
	jmp	LBB307_5
LBB307_4:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB307_5:
	leaq	L_.str139(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str150(%rip), %rcx
LBB307_6:
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movq	%r14, %r8
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, %rbx
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB307_14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r15, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %r14
	jmp	LBB307_14
LBB307_8:
	movq	%rdi, %r14
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun_rec
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB307_13
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	(%r14), %r14
	jne	LBB307_11
	xorl	%edi, %edi
	jmp	LBB307_12
LBB307_11:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB307_12:
	leaq	L_.str139(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str151(%rip), %rcx
	jmp	LBB307_6
LBB307_13:
	movq	%rax, %rbx
	movq	%rdx, %r14
LBB307_14:
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end307:

	.globl	_smpObject_funcall
	.align	4, 0x90
_smpObject_funcall:
Leh_func_begin308:
	pushq	%rbp
Ltmp831:
	movq	%rsp, %rbp
Ltmp832:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp833:
	movq	%r8, %rbx
	movl	%ecx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB308_2
	testb	$15, (%rcx)
	je	LBB308_3
LBB308_2:
	movq	%rbx, %r9
	movl	%r14d, %r8d
	movq	%r15, %rsi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB308_3:
	movq	%rcx, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end308:

	.globl	_smpHash_make_string
	.align	4, 0x90
_smpHash_make_string:
Leh_func_begin309:
	pushq	%rbp
Ltmp834:
	movq	%rsp, %rbp
Ltmp835:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
Ltmp836:
	movq	(%rsi), %rbx
	movq	24(%rsi), %rax
	movq	%rax, -128(%rbp)
	testq	%rbx, %rbx
	jne	LBB309_2
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	jmp	LBB309_25
LBB309_2:
	movq	%rdx, -104(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -96(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$6, %edi
	callq	_GC_malloc
	movw	$104, 4(%rax)
	movl	$1935763496, (%rax)
	movq	%rax, (%r14)
	movq	$5, 8(%r14)
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -112(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movl	$2, %edi
	callq	_GC_malloc
	movw	$32, (%rax)
	movq	%rax, (%r15)
	movq	$1, 8(%r15)
	movq	-112(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	%r15, -64(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movl	$3, %edi
	callq	_GC_malloc
	movb	$0, 2(%rax)
	movw	$15917, (%rax)
	movq	%rax, (%r15)
	movq	$2, 8(%r15)
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -112(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movl	$2, %edi
	callq	_GC_malloc
	movw	$41, (%rax)
	movq	%rax, (%r15)
	movq	$1, 8(%r15)
	movq	-112(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%r15, -80(%rbp)
	movq	$-1, -120(%rbp)
	jmp	LBB309_23
LBB309_9:
	movq	%r15, %rax
	movq	%r12, %rdx
	jmp	LBB309_25
LBB309_11:
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB309_13
	xorl	%edi, %edi
	jmp	LBB309_14
LBB309_13:
	movq	_scope_stack@GOTPCREL(%rip), %r14
	movq	(%r14), %r14
	movq	%rbx, %rax
	shlq	$5, %rax
	leaq	-32(%rax,%r14), %rdi
LBB309_14:
	leaq	L_.str2(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movq	%rax, -104(%rbp)
	movq	8(%r14), %r14
	movq	%r14, -96(%rbp)
	movq	%rdx, %r14
	jne	LBB309_16
	xorl	%edi, %edi
	jmp	LBB309_17
LBB309_16:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB309_17:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$0, (%r13)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	%r14, 24(%r13)
	movq	%r15, 32(%r13)
	movq	%r12, 40(%r13)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB309_19
	movq	%rbx, %rax
	movq	%r13, %rdx
	jmp	LBB309_25
LBB309_19:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movq	%rbx, (%r14)
	movq	%r13, 8(%r14)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	LBB309_25
	.align	4, 0x90
LBB309_3:
	leaq	16(%rbx), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, 8(%rbx)
	jne	LBB309_21
	jmp	LBB309_22
	.align	4, 0x90
LBB309_7:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rax, %r15
	movq	%rdx, %r12
LBB309_8:
	movq	%r15, -56(%rbp)
	movq	%r12, -48(%rbp)
	movq	(%r15), %r13
	movq	%r13, %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB309_9
	movq	%r13, %rdi
	leaq	L_.str2(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB309_11
	jmp	LBB309_20
LBB309_4:
	movq	8(%rbx), %rax
	movq	(%rax), %r15
	movq	8(%rax), %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	-104(%rbp), %rdx
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB309_7
	testb	$15, (%rcx)
	jne	LBB309_7
	movq	%rax, %r15
	movq	%rcx, %r12
	jmp	LBB309_8
LBB309_20:
	movq	-96(%rbp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	callq	_smpString_add_now
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	callq	_smpString_add_now
	movq	8(%rbx), %rbx
	movq	16(%rbx), %rbx
LBB309_21:
	testq	%rbx, %rbx
	jne	LBB309_4
LBB309_22:
	movq	-112(%rbp), %rbx
LBB309_23:
	movq	-120(%rbp), %rax
	incq	%rax
	movq	%rax, -120(%rbp)
	cmpq	%rax, -128(%rbp)
	ja	LBB309_3
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	-96(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_smpString_add_now
	movq	%rbx, %rax
	movq	%r14, %rdx
LBB309_25:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end309:

	.globl	_obj_put_fmt
	.align	4, 0x90
_obj_put_fmt:
Leh_func_begin310:
	pushq	%rbp
Ltmp837:
	movq	%rsp, %rbp
Ltmp838:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
Ltmp839:
	movq	%rcx, -120(%rbp)
	movq	%rsi, %rbx
	movq	%rdi, -104(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpb	$37, (%rdx)
	movq	%rdx, %r14
	jne	LBB310_6
	movb	1(%r14), %r15b
	jmp	LBB310_3
	.align	4, 0x90
LBB310_2:
	movb	2(%r14), %r15b
	incq	%r14
LBB310_3:
	movb	%r15b, %al
	addb	$-48, %al
	cmpb	$10, %al
	jb	LBB310_2
	incq	%r14
	cmpb	$46, %r15b
	je	LBB310_11
	xorl	%r12d, %r12d
	jmp	LBB310_15
LBB310_6:
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB310_8
	xorl	%edi, %edi
	jmp	LBB310_9
LBB310_8:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB310_9:
	leaq	L_.str131(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str160(%rip), %rbx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	(%rax), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB310_38
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	-88(%rbp), %r14
	movq	%r14, (%rbx)
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -88(%rbp)
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, -96(%rbp)
	jmp	LBB310_38
LBB310_11:
	incq	%r14
	xorl	%r12d, %r12d
	jmp	LBB310_13
	.align	4, 0x90
LBB310_12:
	imull	$10, %r12d, %r12d
	leal	-48(%r12,%r15), %r12d
	incq	%r14
LBB310_13:
	movsbl	(%r14), %r15d
	cmpl	$48, %r15d
	jl	LBB310_15
	cmpb	$58, %r15b
	jl	LBB310_12
LBB310_15:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	1(%r14), %rax
	movq	%rax, -112(%rbp)
	testl	%r12d, %r12d
	jne	LBB310_17
LBB310_16:
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	jmp	LBB310_19
LBB310_17:
	movq	-104(%rbp), %rax
	movq	(%rax), %rdi
	leaq	L_.str125(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB310_16
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movslq	%r12d, %rsi
	movq	%r13, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -64(%rbp)
	movq	%r13, -56(%rbp)
	leaq	-64(%rbp), %r12
	movl	$1, %r13d
LBB310_19:
	cmpb	$119, %r15b
	je	LBB310_25
	cmpb	$115, %r15b
	jne	LBB310_27
	leaq	L_.str52(%rip), %rdx
LBB310_22:
	movq	-104(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %r15d
	cmpl	%r15d, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB310_26
	testb	$15, (%rcx)
	jne	LBB310_26
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	jmp	LBB310_32
LBB310_25:
	leaq	L_.str62(%rip), %rdx
	jmp	LBB310_22
LBB310_26:
	movq	-104(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movl	%r13d, %r8d
	movq	%r12, %r9
	callq	_smpFunction_call
	movq	%rax, -88(%rbp)
	movq	%rdx, -96(%rbp)
	jmp	LBB310_32
LBB310_27:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movsbl	%r15b, %ebx
	jne	LBB310_29
	xorl	%edi, %edi
	jmp	LBB310_30
LBB310_29:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB310_30:
	leaq	L_.str131(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str161(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movl	%ebx, %ecx
	xorb	%al, %al
	callq	_smpException_init_fmt
	movq	%rax, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	(%rax), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB310_32
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -88(%rbp)
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, -96(%rbp)
LBB310_32:
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-88(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	jne	LBB310_34
	movq	-96(%rbp), %rdx
	testb	$15, (%rdx)
	je	LBB310_38
LBB310_34:
	movq	-112(%rbp), %rax
	cmpb	$116, (%rax)
	jne	LBB310_36
	movq	%rsp, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	callq	_strlen
	addl	$2, %eax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	movq	%rcx, %r15
	subq	%rax, %r15
	movq	%r15, %rsp
	negq	%rax
	movb	$58, (%rcx,%rax)
	leaq	1(%r15), %rdi
	movq	%rbx, %rsi
	callq	_strcpy
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -104(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	_strcpy
	movq	%r13, (%rbx)
	movq	%r12, 8(%rbx)
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	_smpString_add
	addq	$2, %r14
	movq	-112(%rbp), %rsp
	movq	%rax, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	%r14, -112(%rbp)
LBB310_36:
	cmpq	$0, -120(%rbp)
	je	LBB310_38
	movq	-112(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
LBB310_38:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB310_40
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB310_40:
	callq	___stack_chk_fail
Leh_func_end310:

	.globl	_smpGlobal_vsprintf
	.align	4, 0x90
_smpGlobal_vsprintf:
Leh_func_begin311:
	pushq	%rbp
Ltmp840:
	movq	%rsp, %rbp
Ltmp841:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
Ltmp842:
	movb	(%rdi), %al
	testb	%al, %al
	movq	%rdi, -120(%rbp)
	je	LBB311_23
	movq	%rsi, %rbx
	movl	$0, -92(%rbp)
	movq	-120(%rbp), %rcx
	.align	4, 0x90
LBB311_2:
	cmpb	$37, %al
	jne	LBB311_4
	cmpb	$37, 2(%rcx)
	setne	%al
	movzbl	%al, %eax
	addl	%eax, -92(%rbp)
	incq	%rcx
LBB311_4:
	movb	1(%rcx), %al
	incq	%rcx
	testb	%al, %al
	jne	LBB311_2
	cmpl	$0, -92(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %r15
	movq	(%r15), %r14
	movq	8(%r15), %r15
	jle	LBB311_22
	movl	-92(%rbp), %r12d
	movq	%r15, -104(%rbp)
	movq	%r14, -112(%rbp)
	jmp	LBB311_7
	.align	4, 0x90
LBB311_20:
	movq	%r13, %r15
LBB311_7:
	movl	(%rbx), %eax
	cmpq	$39, %rax
	ja	LBB311_9
	movq	16(%rbx), %rcx
	addq	%rax, %rcx
	addl	$16, %eax
	movl	%eax, (%rbx)
	jmp	LBB311_10
LBB311_9:
	movq	8(%rbx), %rcx
	leaq	16(%rcx), %rax
	movq	%rax, 8(%rbx)
LBB311_10:
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rcx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movl	$1, %edx
	leaq	-56(%rbp), %rax
	movq	%rax, %rcx
	callq	_smpObject_cons
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%r14)
	movq	%rdx, %r13
	movq	%rax, %r14
	jne	LBB311_12
	movq	%r14, -112(%rbp)
	movq	%r13, -104(%rbp)
	jmp	LBB311_19
LBB311_12:
	cmpl	%ecx, 8(%r14)
	jne	LBB311_14
	movq	$0, 16(%r15)
	jmp	LBB311_17
LBB311_14:
	movq	16(%r15), %rax
	testq	%rax, %rax
	jne	LBB311_16
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, 16(%r15)
LBB311_16:
	movq	%r14, (%rax)
	movq	%r13, 8(%rax)
	movq	16(%r15), %r15
	testq	%r15, %r15
	jne	LBB311_18
LBB311_17:
	movq	_smp_nil@GOTPCREL(%rip), %r15
LBB311_18:
	movq	(%r15), %r14
	movq	8(%r15), %r13
LBB311_19:
	decl	%r12d
	jne	LBB311_20
	movq	-104(%rbp), %r15
	movq	-112(%rbp), %r14
LBB311_22:
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -104(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	-120(%rbp), %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	-120(%rbp), %rsi
	callq	_strcpy
	movq	%r13, (%rbx)
	movq	%r12, 8(%rbx)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%rbx, -80(%rbp)
	movq	%r14, -72(%rbp)
	movq	%r15, -64(%rbp)
	movq	_smp_global@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	leaq	-88(%rbp), %rcx
	movl	-92(%rbp), %edx
	callq	_smpGlobal_sprintf_arg
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB311_23:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
	movq	8(%rcx), %r15
	movl	$0, -92(%rbp)
	jmp	LBB311_22
Leh_func_end311:

	.globl	_smpGlobal_sprintf
	.align	4, 0x90
_smpGlobal_sprintf:
Leh_func_begin312:
	pushq	%rbp
Ltmp843:
	movq	%rsp, %rbp
Ltmp844:
	subq	$208, %rsp
Ltmp845:
	testb	%al, %al
	je	LBB312_2
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
LBB312_2:
	movq	%r9, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rsi, -200(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$48, -20(%rbp)
	movl	$8, -24(%rbp)
	leaq	-24(%rbp), %rsi
	callq	_smpGlobal_vsprintf
	addq	$208, %rsp
	popq	%rbp
	ret
Leh_func_end312:

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI313_0:
	.quad	4626716782183736934
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_test_printf
	.align	4, 0x90
_test_printf:
Leh_func_begin313:
	pushq	%rbp
Ltmp846:
	movq	%rsp, %rbp
Ltmp847:
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
Ltmp848:
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movl	$18, %esi
	movq	%rbx, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	_obj_init
	movq	%rax, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	movsd	LCPI313_0(%rip), %xmm0
	movq	%rbx, %rdi
	callq	_mpfr_set_d
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movl	$16, %esi
	callq	___gmpz_init_set_si
	movq	%r14, %rdi
	callq	_obj_init
	movq	%rax, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movl	$16, %esi
	callq	___gmpz_init_set_si
	movq	%r14, %rdi
	callq	_obj_init
	movq	%rax, -32(%rbp)
	movq	%rbx, -24(%rbp)
	leaq	L_.str166(%rip), %rdi
	movl	$4, %esi
	leaq	-80(%rbp), %rdx
	xorb	%al, %al
	callq	_smpGlobal_sprintf
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end313:

	.globl	_smp_print
	.align	4, 0x90
_smp_print:
Leh_func_begin314:
	pushq	%rbp
Ltmp849:
	movq	%rsp, %rbp
Ltmp850:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp851:
	movq	%rsi, -72(%rbp)
	movq	%rdi, %rax
	movq	%rax, -64(%rbp)
	leaq	L_.str52(%rip), %rdx
	movq	%rax, %rdi
	callq	_smpObject_get_fun
	movl	8(%rax), %esi
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edi
	cmpl	%edi, %esi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	jne	LBB314_3
	testb	$15, (%rcx)
	jne	LBB314_3
	movq	%rdx, -48(%rbp)
	movq	%rcx, -80(%rbp)
	jmp	LBB314_4
LBB314_3:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	_smpFunction_call
	movl	8(%rax), %esi
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edi
	movq	%rax, -48(%rbp)
	movq	%rdx, -80(%rbp)
LBB314_4:
	cmpl	%edi, %esi
	jne	LBB314_7
	movq	-80(%rbp), %rax
	testb	$15, (%rax)
	jne	LBB314_7
LBB314_6:
	movq	-48(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	LBB314_26
LBB314_7:
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -88(%rbp)
	leaq	L_.str2(%rip), %rsi
	movq	%rax, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB314_25
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	xorl	%ebx, %ebx
	leaq	L_.str2(%rip), %r14
	jmp	LBB314_15
	.align	4, 0x90
LBB314_9:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax,%rbx,8), %r15
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB314_25
	movq	24(%r15), %r12
	xorl	%r13d, %r13d
	jmp	LBB314_13
	.align	4, 0x90
LBB314_11:
	movq	16(%r15), %rax
	movq	(%rax,%r13,8), %rdi
	movq	%r14, %rsi
	callq	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	LBB314_25
	incq	%r13
LBB314_13:
	cmpq	%r13, %r12
	ja	LBB314_11
	incq	%rbx
LBB314_15:
	cmpq	%rbx, -56(%rbp)
	ja	LBB314_9
	leaq	L_.str10(%rip), %rsi
	movq	-88(%rbp), %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB314_6
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	LBB314_19
	xorl	%edi, %edi
	jmp	LBB314_20
LBB314_19:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB314_20:
	leaq	L_.str2(%rip), %rsi
	callq	_minihash_get
	testq	%rbx, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r15
	movq	%rdx, %r12
	jne	LBB314_22
	xorl	%edi, %edi
	jmp	LBB314_23
LBB314_22:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rbx
	leaq	-32(%rbx,%rax), %rdi
LBB314_23:
	leaq	L_.str40(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movq	%rbx, -64(%rbp)
	movl	$48, %edi
	callq	_GC_malloc
	movq	%rax, %rsi
	movq	%rsi, -72(%rbp)
	movq	$0, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%r15, 16(%rsi)
	movq	%r12, 24(%rsi)
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rsi)
	movq	-80(%rbp), %rcx
	movq	%rcx, 40(%rsi)
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB314_26
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	movq	%rdi, (%rbx)
	movq	-72(%rbp), %rsi
	movq	%rsi, 8(%rbx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -64(%rbp)
	movl	$24, %edi
	callq	_GC_malloc
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, -72(%rbp)
	jmp	LBB314_26
LBB314_25:
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	callq	_fputs
LBB314_26:
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdx
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end314:

	.globl	_smp_println
	.align	4, 0x90
_smp_println:
Leh_func_begin315:
	pushq	%rbp
Ltmp852:
	movq	%rsp, %rbp
Ltmp853:
	pushq	%r14
	pushq	%rbx
Ltmp854:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smp_print
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB315_2
	testb	$15, (%rdx)
	je	LBB315_3
LBB315_2:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	_fputc
	movq	%r14, %rax
	movq	%rbx, %rdx
LBB315_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Leh_func_end315:

	.globl	_test_arrays
	.align	4, 0x90
_test_arrays:
Leh_func_begin316:
	pushq	%rbp
Ltmp855:
	movq	%rsp, %rbp
Ltmp856:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp857:
	movl	$128, %edi
	callq	_GC_malloc
	movq	$0, 120(%rax)
	movq	$0, 112(%rax)
	movq	$0, 104(%rax)
	movq	$0, 96(%rax)
	movq	$0, 88(%rax)
	movq	$0, 80(%rax)
	movq	$0, 72(%rax)
	movq	$0, 64(%rax)
	movq	$0, 56(%rax)
	movq	$0, 48(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	$0, (%rax)
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rax, %rbx
	jne	LBB316_2
	xorl	%edi, %edi
	jmp	LBB316_3
LBB316_2:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB316_3:
	leaq	L_.str86(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, -48(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rbx, (%rax)
	movq	$0, 8(%rax)
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rax, %rbx
	jne	LBB316_5
	xorl	%edi, %edi
	jmp	LBB316_6
LBB316_5:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB316_6:
	leaq	L_.str113(%rip), %rsi
	movq	-48(%rbp), %rdx
	movq	%rbx, %rcx
	callq	_minihash_add
	xorl	%r14d, %r14d
	.align	4, 0x90
LBB316_7:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r12
	movq	8(%rbx), %r13
	leaq	1(%r13), %rax
	movq	%rax, 8(%rbx)
	movq	%rax, %rcx
	shlq	$4, %rcx
	cmpq	$5, %rcx
	jb	LBB316_10
	leaq	-1(%rcx), %rdx
	testq	%rcx, %rdx
	jne	LBB316_10
	shlq	$3, %rax
	movabsq	$9223372036854775800, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	orq	%rcx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	incq	%rsi
	movq	(%rbx), %rdi
	callq	_GC_realloc
	movq	%rax, (%rbx)
LBB316_10:
	movq	(%rbx), %rax
	shlq	$4, %r13
	movq	%r12, (%rax,%r13)
	movq	%r15, 8(%rax,%r13)
	incq	%r14
	cmpq	$100, %r14
	jne	LBB316_7
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smp_print
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB316_13
	testb	$15, (%rdx)
	je	LBB316_14
LBB316_13:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	_fputc
LBB316_14:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end316:

	.globl	_test_regex
	.align	4, 0x90
_test_regex:
Leh_func_begin317:
	pushq	%rbp
Ltmp858:
	movq	%rsp, %rbp
Ltmp859:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp860:
	movq	_smpType_string@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	_obj_init
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movabsq	$10180778553521974, %rax
	movq	%rax, 8(%r15)
	movabsq	$3833745473465768798, %rax
	movq	%rax, (%r15)
	movq	%r15, (%r14)
	movq	$15, 8(%r14)
	movq	%rbx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$9, %edi
	callq	_GC_malloc
	movabsq	$4120851044944591152, %rcx
	movq	%rcx, (%rax)
	movb	$0, 8(%rax)
	movq	%rax, (%r14)
	movq	$8, 8(%r14)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_smpRegex_match_str
	movl	8(%rax), %ecx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rsi
	cmpl	(%rsi), %ecx
	jne	LBB317_2
	testb	$15, (%rdx)
	je	LBB317_6
LBB317_2:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %ecx
	jne	LBB317_4
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	jmp	LBB317_5
LBB317_4:
	movq	_smp_true@GOTPCREL(%rip), %rcx
LBB317_5:
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
LBB317_6:
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_smp_print
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB317_8
	testb	$15, (%rdx)
	je	LBB317_9
LBB317_8:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	_fputc
LBB317_9:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end317:

	.globl	_smp_printf
	.align	4, 0x90
_smp_printf:
Leh_func_begin318:
	pushq	%rbp
Ltmp861:
	movq	%rsp, %rbp
Ltmp862:
	subq	$208, %rsp
Ltmp863:
	testb	%al, %al
	je	LBB318_2
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
LBB318_2:
	movq	%r9, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rsi, -200(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$48, -20(%rbp)
	movl	$8, -24(%rbp)
	leaq	-24(%rbp), %rsi
	callq	_smpGlobal_vsprintf
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB318_4
	testb	$15, (%rdx)
	je	LBB318_5
LBB318_4:
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_smp_print
LBB318_5:
	addq	$208, %rsp
	popq	%rbp
	ret
Leh_func_end318:

	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin319:
	pushq	%rbp
Ltmp864:
	movq	%rsp, %rbp
Ltmp865:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp866:
	movq	%rsi, -64(%rbp)
	movl	%edi, %ebx
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	$1, (%r14)
	movl	$256, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	%r15, (%rax)
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r12, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	%r12, (%r15)
	movq	$10, 8(%r15)
	movq	$0, 16(%r15)
	movq	$0, 24(%r15)
	movl	$160, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	movl	$160, %esi
	callq	___bzero
	movq	_scope_classes@GOTPCREL(%rip), %rax
	movq	%r15, (%rax)
	movq	$10, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	_smptest_print_successesp@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	_initialized_classesp@GOTPCREL(%rip), %r15
	movl	$0, (%r15)
	callq	_init_fundamental_classes
	callq	_smpGlobal_create_class
	callq	_smpRegex_create_class
	callq	_smpArray_create_class
	callq	_smpHash_create_class
	callq	_smpSymbol_create_class
	callq	_smpNumber_create_class
	callq	_smpInteger_create_class
	callq	_smpFloat_create_class
	movl	$1, (%r15)
	movl	$128, %edi
	callq	_GC_malloc
	movq	$0, 120(%rax)
	movq	$0, 112(%rax)
	movq	$0, 104(%rax)
	movq	$0, 96(%rax)
	movq	$0, 88(%rax)
	movq	$0, 80(%rax)
	movq	$0, 72(%rax)
	movq	$0, 64(%rax)
	movq	$0, 56(%rax)
	movq	$0, 48(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	$0, (%rax)
	movq	(%r14), %rcx
	testq	%rcx, %rcx
	movq	%rax, %r14
	jne	LBB319_2
	xorl	%edi, %edi
	jmp	LBB319_3
LBB319_2:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB319_3:
	leaq	L_.str86(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, %r15
	movl	$16, %edi
	callq	_GC_malloc
	movq	%r14, (%rax)
	movq	$0, 8(%rax)
	movq	%r15, -56(%rbp)
	movq	%rax, -48(%rbp)
	testl	%ebx, %ebx
	jle	LBB319_9
	movl	%ebx, %ebx
	.align	4, 0x90
LBB319_5:
	movq	-64(%rbp), %rsi
	movq	(%rsi), %r14
	movq	_smpType_string@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -72(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %r12
	leaq	1(%r12), %rdi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_strcpy
	movq	%r13, (%r15)
	movq	%r12, 8(%r15)
	movq	-48(%rbp), %r14
	movq	8(%r14), %r12
	leaq	1(%r12), %rax
	movq	%rax, 8(%r14)
	movq	%rax, %rcx
	shlq	$4, %rcx
	cmpq	$5, %rcx
	jb	LBB319_8
	leaq	-1(%rcx), %rdx
	testq	%rcx, %rdx
	jne	LBB319_8
	shlq	$3, %rax
	movabsq	$9223372036854775800, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	orq	%rcx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	incq	%rsi
	movq	(%r14), %rdi
	callq	_GC_realloc
	movq	%rax, (%r14)
LBB319_8:
	movq	(%r14), %rax
	shlq	$4, %r12
	movq	-72(%rbp), %rcx
	movq	%rcx, (%rax,%r12)
	movq	%r15, 8(%rax,%r12)
	addq	$8, -64(%rbp)
	decq	%rbx
	jne	LBB319_5
LBB319_9:
	movq	_smp_global@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	callq	_smpGlobal_main
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB319_12
	testb	$15, (%rdx)
	jne	LBB319_12
	leaq	L_.str169(%rip), %rdi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	_smp_printf
LBB319_12:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end319:

	.globl	_smpGlobal_class_arg
	.align	4, 0x90
_smpGlobal_class_arg:
Leh_func_begin320:
	pushq	%rbp
Ltmp867:
	movq	%rsp, %rbp
Ltmp868:
	subq	$32, %rsp
Ltmp869:
	movq	24(%rcx), %r8
	movq	16(%rcx), %r9
	movq	(%rcx), %rsi
	movq	8(%rcx), %rdx
	movq	32(%rcx), %rax
	movq	%rax, -16(%rbp)
	movq	40(%rcx), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	L_.str170(%rip), %rdi
	xorb	%al, %al
	movq	%r9, %rcx
	callq	_smp_printf
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end320:

	.globl	_smpGlobal_fprint
	.align	4, 0x90
_smpGlobal_fprint:
Leh_func_begin321:
	pushq	%rbp
Ltmp870:
	movq	%rsp, %rbp
Ltmp871:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp872:
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	L_.str52(%rip), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB321_2
	testb	$15, (%rcx)
	je	LBB321_3
LBB321_2:
	movq	%rbx, %rsi
	movq	%r14, %rdi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB321_3:
	movq	%rax, %rbx
	movq	%rcx, %r14
	movq	(%rbx), %rdi
	leaq	L_.str2(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB321_5
	movq	(%r14), %rdi
	movq	%r15, %rsi
	callq	_fputs
	movq	_smp_nil@GOTPCREL(%rip), %r14
	movq	(%r14), %rbx
	movq	8(%r14), %r14
LBB321_5:
	movq	%rbx, %rax
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end321:

	.globl	_smpGlobal_fprintf
	.align	4, 0x90
_smpGlobal_fprintf:
Leh_func_begin322:
	pushq	%rbp
Ltmp873:
	movq	%rsp, %rbp
Ltmp874:
	pushq	%rbx
	subq	$200, %rsp
Ltmp875:
	movq	%rdi, %rbx
	testb	%al, %al
	je	LBB322_2
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
LBB322_2:
	movq	%r9, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%rdx, -192(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$16, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	_smpGlobal_vsprintf
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB322_4
	testb	$15, (%rdx)
	je	LBB322_5
LBB322_4:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_smpGlobal_fprint
LBB322_5:
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end322:

	.globl	_smpException_print
	.align	4, 0x90
_smpException_print:
Leh_func_begin323:
	pushq	%rbp
Ltmp876:
	movq	%rsp, %rbp
Ltmp877:
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	_smp_stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	L_.str171(%rip), %rsi
	xorb	%al, %al
	callq	_smpGlobal_fprintf
	popq	%rbp
	ret
Leh_func_end323:

	.globl	_make_list
	.align	4, 0x90
_make_list:
Leh_func_begin324:
	pushq	%rbp
Ltmp878:
	movq	%rsp, %rbp
Ltmp879:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp880:
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	_smpInteger_zero@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %r8
	leaq	-56(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_smpInteger_cmp_cint
	testl	%eax, %eax
	jle	LBB324_9
	movq	%r14, %rsi
	movq	%r15, %rdi
	movq	_smpInteger_one@GOTPCREL(%rip), %r14
	movl	$1, %edx
	movq	%r14, %rcx
	callq	_smpInteger_sub
	movq	%rax, %r15
	movq	%rdx, %r12
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	_smpInteger_add
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	(%rbx), %r14
	movq	8(%rbx), %rsi
	movq	%rsi, -96(%rbp)
	leaq	L_.str176(%rip), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB324_3
	testb	$15, (%rcx)
	je	LBB324_4
LBB324_3:
	movl	$1, %r8d
	leaq	-72(%rbp), %r9
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB324_4:
	movq	%rax, %rbx
	movq	%rcx, %r13
	movq	%rbx, -88(%rbp)
	movq	%r13, -80(%rbp)
	leaq	L_.str55(%rip), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB324_6
	testb	$15, (%rcx)
	je	LBB324_7
LBB324_6:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB324_7:
	movq	(%rbx), %rdi
	leaq	L_.str10(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB324_10
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movq	%r14, %rdi
	movq	-96(%rbp), %rsi
	callq	_smpObject_cons
	movq	%rax, %rbx
	movq	%rdx, %r13
	jmp	LBB324_10
LBB324_9:
	movq	_smp_nil@GOTPCREL(%rip), %r13
	movq	(%r13), %rbx
	movq	8(%r13), %r13
LBB324_10:
	movq	%rbx, %rax
	movq	%r13, %rdx
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end324:

	.globl	_test_gc
	.align	4, 0x90
_test_gc:
Leh_func_begin325:
	pushq	%rbp
Ltmp881:
	movq	%rsp, %rbp
Ltmp882:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp883:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rax, %r14
	jne	LBB325_2
	xorl	%edi, %edi
	jmp	LBB325_3
LBB325_2:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB325_3:
	leaq	L_.str177(%rip), %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	_minihash_add
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r15
	movq	_smp_stdout@GOTPCREL(%rip), %r12
	movq	_smp_nil@GOTPCREL(%rip), %r13
	jmp	LBB325_4
	.align	4, 0x90
LBB325_7:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movl	$1, %r8d
	movq	%r13, %r9
	callq	_smpFunction_call
	movq	%rdx, %rsi
	movq	%rax, %rdi
LBB325_8:
	callq	_smp_print
	movl	(%r15), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB325_10
	testb	$15, (%rdx)
	je	LBB325_4
LBB325_10:
	movq	(%r12), %rsi
	movl	$10, %edi
	callq	_fputc
LBB325_4:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	leaq	L_.str102(%rip), %rdx
	callq	_smpObject_get_fun
	movl	(%r15), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB325_7
	testb	$15, (%rcx)
	jne	LBB325_7
	movq	%rax, %rdi
	movq	%rcx, %rsi
	jmp	LBB325_8
Leh_func_end325:

	.globl	_smpObject_cmp_fast
	.align	4, 0x90
_smpObject_cmp_fast:
Leh_func_begin326:
	pushq	%rbp
Ltmp884:
	movq	%rsp, %rbp
Ltmp885:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Ltmp886:
	movq	%rcx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movl	8(%rsi), %eax
	movq	_smpType_id_int@GOTPCREL(%rip), %r9
	cmpl	(%r9), %eax
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	jne	LBB326_2
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	_smpInteger_cmp_cint
	jmp	LBB326_10
LBB326_2:
	movq	_smpType_id_float@GOTPCREL(%rip), %rdx
	cmpl	(%rdx), %eax
	jne	LBB326_4
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	_smpFloat_cmp_cint
	jmp	LBB326_10
LBB326_4:
	leaq	L_.str105(%rip), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movl	8(%rax), %esi
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	cmpl	(%rcx), %esi
	movq	%rdx, %rcx
	jne	LBB326_6
	testb	$15, (%rcx)
	je	LBB326_7
LBB326_6:
	movl	$1, %r8d
	leaq	-40(%rbp), %r9
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movl	8(%rax), %esi
	movq	%rdx, %rcx
LBB326_7:
	movq	_smpType_id_int@GOTPCREL(%rip), %rdx
	cmpl	(%rdx), %esi
	jne	LBB326_9
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_smpInteger_to_clong
	jmp	LBB326_10
LBB326_9:
	movq	%rax, (%r15)
	movq	%rcx, 8(%r15)
	movl	$-2, %eax
LBB326_10:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end326:

	.globl	_smp_cmp_helper
	.align	4, 0x90
_smp_cmp_helper:
Leh_func_begin327:
	pushq	%rbp
Ltmp887:
	movq	%rsp, %rbp
Ltmp888:
	pushq	%rbx
	subq	$40, %rsp
Ltmp889:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rsi)
	leaq	16(%rbp), %rax
	movq	%rdi, %rbx
	je	LBB327_2
	movq	%rdx, %r10
	movq	%rsi, %rdx
	movq	%rcx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	_smp_global@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movl	$2, %r8d
	leaq	-40(%rbp), %r9
	movq	%r10, %rcx
	callq	_smpFunction_call
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	cmpl	%ecx, 8(%rax)
	movl	$-1, %ecx
	movl	$1, %eax
	cmovnel	%ecx, %eax
	jmp	LBB327_3
LBB327_2:
	movq	(%rax), %r9
	movq	8(%rax), %rax
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	%rax, %r8
	callq	_smpObject_cmp_fast
LBB327_3:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
Leh_func_end327:

	.globl	_smp_merge_sorted_arrays
	.align	4, 0x90
_smp_merge_sorted_arrays:
Leh_func_begin328:
	pushq	%rbp
Ltmp890:
	movq	%rsp, %rbp
Ltmp891:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
Ltmp892:
	movq	%r8, -120(%rbp)
	movq	%rcx, %rbx
	movq	%rdx, -144(%rbp)
	movq	%rsi, %r14
	movq	%rdi, -152(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	%rcx, -88(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%r14, %rdx
	shlq	$4, %rdx
	movq	%r8, %rdi
	movq	-152(%rbp), %rsi
	callq	_memcpy
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rcx
	leaq	8(%rcx), %r15
	movq	%rax, -104(%rbp)
	movq	%rax, -136(%rbp)
	jmp	LBB328_13
LBB328_6:
	cmpq	%r14, -96(%rbp)
	jae	LBB328_23
	subq	-96(%rbp), %r14
	.align	4, 0x90
LBB328_8:
	movq	-8(%r13), %rbx
	movq	%rbx, -8(%r15)
	movq	(%r13), %rbx
	movq	%rbx, (%r15)
	addq	$16, %r13
	addq	$16, %r15
	decq	%r14
	jne	LBB328_8
	jmp	LBB328_23
	.align	4, 0x90
LBB328_1:
	movq	-104(%rbp), %r12
	shlq	$4, %r12
	movq	-144(%rbp), %rax
	leaq	8(%rax,%r12), %rcx
	movq	%rcx, -128(%rbp)
	movq	(%rax,%r12), %r9
	movq	8(%rax,%r12), %r8
	addq	%rax, %r12
	movq	-96(%rbp), %rax
	shlq	$4, %rax
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	leaq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpl	%ecx, 8(%rdx)
	movq	-120(%rbp), %rcx
	movq	(%rcx,%rax), %rsi
	movq	8(%rcx,%rax), %r10
	leaq	8(%rcx,%rax), %r13
	je	LBB328_3
	leaq	16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rsi, -72(%rbp)
	movq	%r10, -64(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	_smp_global@GOTPCREL(%rip), %r9
	movq	(%r9), %rdi
	movq	8(%r9), %rsi
	movl	$2, %r8d
	leaq	-72(%rbp), %r9
	callq	_smpFunction_call
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %r9
	movl	(%r9), %ecx
	cmpl	%ecx, 8(%rax)
	movl	$1, %ecx
	movl	$-1, %edx
	cmovnel	%edx, %ecx
	jmp	LBB328_4
LBB328_3:
	leaq	-88(%rbp), %rdi
	movq	%r10, %rdx
	movq	%r9, %rcx
	callq	_smpObject_cmp_fast
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
LBB328_4:
	movq	%rax, -112(%rbp)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, 8(%rax)
	jne	LBB328_9
	movq	-80(%rbp), %rdx
	testb	$15, (%rdx)
	je	LBB328_6
LBB328_9:
	testl	%ecx, %ecx
	jg	LBB328_11
	movq	-96(%rbp), %r12
	movq	%r12, %rax
	shlq	$4, %rax
	movq	-120(%rbp), %r8
	movq	(%r8,%rax), %rax
	movq	%rax, -8(%r15)
	movq	(%r13), %rax
	movq	%rax, (%r15)
	incq	%r12
	movq	%r12, -96(%rbp)
	jmp	LBB328_12
LBB328_11:
	movq	(%r12), %rax
	movq	%rax, -8(%r15)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%r15)
	incq	-104(%rbp)
LBB328_12:
	addq	$16, %r15
	incq	-136(%rbp)
LBB328_13:
	cmpq	%r14, -96(%rbp)
	jae	LBB328_15
	cmpq	%rbx, -104(%rbp)
	jb	LBB328_1
LBB328_15:
	cmpq	%r14, -96(%rbp)
	jae	LBB328_19
	movq	%r14, %rax
	movq	-96(%rbp), %rcx
	subq	%rcx, %rax
	shlq	$4, %rcx
	movq	-120(%rbp), %r8
	leaq	8(%r8,%rcx), %rcx
	.align	4, 0x90
LBB328_17:
	movq	-8(%rcx), %rdx
	movq	%rdx, -8(%r15)
	movq	(%rcx), %rdx
	movq	%rdx, (%r15)
	addq	$16, %rcx
	addq	$16, %r15
	decq	%rax
	jne	LBB328_17
	subq	-96(%rbp), %r14
	addq	%r14, -136(%rbp)
LBB328_19:
	cmpq	%rbx, -104(%rbp)
	jae	LBB328_22
	movq	-104(%rbp), %r12
	subq	%r12, %rbx
	movq	-136(%rbp), %r15
	shlq	$4, %r15
	movq	-152(%rbp), %rsi
	leaq	8(%rsi,%r15), %rax
	shlq	$4, %r12
	movq	-144(%rbp), %rdx
	leaq	8(%rdx,%r12), %rcx
	.align	4, 0x90
LBB328_21:
	movq	-8(%rcx), %rdx
	movq	%rdx, -8(%rax)
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	addq	$16, %rcx
	addq	$16, %rax
	decq	%rbx
	jne	LBB328_21
LBB328_22:
	movq	-80(%rbp), %rdx
LBB328_23:
	movq	-112(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end328:

	.globl	_smpArray_sort_insertion
	.align	4, 0x90
_smpArray_sort_insertion:
Leh_func_begin329:
	pushq	%rbp
Ltmp893:
	movq	%rsp, %rbp
Ltmp894:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
Ltmp895:
	movq	_smp_nil@GOTPCREL(%rip), %r8
	movq	(%r8), %rax
	movq	%rax, -88(%rbp)
	movq	8(%r8), %r8
	movq	%r8, -80(%rbp)
	addq	$24, %rdi
	decq	%rsi
	movq	%rsi, -120(%rbp)
	movq	$0, -104(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%rdx, %rbx
	movq	_smp_global@GOTPCREL(%rip), %r14
	movq	%rdi, -112(%rbp)
	jmp	LBB329_10
	.align	4, 0x90
LBB329_1:
	leaq	-16(%r15), %r13
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rbx)
	movq	(%r15), %r8
	movq	-8(%r15), %rcx
	movq	-24(%r15), %rsi
	movq	-16(%r15), %rdx
	je	LBB329_3
	movq	%rsi, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	movq	%rbx, %rdx
	movq	-96(%rbp), %rcx
	movl	$2, %r8d
	leaq	-72(%rbp), %r9
	callq	_smpFunction_call
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movl	$1, %ecx
	movl	$-1, %edx
	cmovnel	%edx, %ecx
	jmp	LBB329_4
LBB329_3:
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	_smpObject_cmp_fast
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
LBB329_4:
	movq	%rax, %rsi
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, 8(%rax)
	jne	LBB329_6
	movq	-80(%rbp), %rdx
	testb	$15, (%rdx)
	je	LBB329_13
LBB329_6:
	testl	%ecx, %ecx
	jle	LBB329_9
	movq	-24(%r15), %rsi
	movq	-16(%r15), %rcx
	movq	-8(%r15), %rdx
	movq	%rdx, -24(%r15)
	movq	(%r15), %rdx
	movq	%rdx, -16(%r15)
	movq	%rsi, -8(%r15)
	movq	%rcx, (%r15)
	movq	%r13, %r15
LBB329_8:
	decq	%r12
	jns	LBB329_1
LBB329_9:
	addq	$16, -112(%rbp)
LBB329_10:
	movq	-104(%rbp), %rsi
	cmpq	-120(%rbp), %rsi
	jae	LBB329_12
	incq	%rsi
	movq	%rsi, -104(%rbp)
	movq	%rsi, %r12
	movq	-112(%rbp), %r15
	jmp	LBB329_8
LBB329_12:
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
LBB329_13:
	movq	%rsi, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end329:

	.globl	_smpArray_sort_merge
	.align	4, 0x90
_smpArray_sort_merge:
Leh_func_begin330:
	pushq	%rbp
Ltmp896:
	movq	%rsp, %rbp
Ltmp897:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp898:
	movq	%rcx, -56(%rbp)
	movq	%r8, -48(%rbp)
	cmpq	$1, %rsi
	jbe	LBB330_10
	movq	%r8, -72(%rbp)
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpq	$15, %r14
	ja	LBB330_3
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r8, %rcx
	callq	_smpArray_sort_insertion
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rbx
	movl	(%rbx), %ecx
	jmp	LBB330_8
LBB330_3:
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	%r14, %r12
	shrq	%r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	movq	%rbx, %rcx
	movq	-72(%rbp), %r8
	callq	_smpArray_sort_merge
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB330_5
	testb	$15, (%rdx)
	je	LBB330_11
LBB330_5:
	subq	%r12, %r14
	movq	%r12, %r13
	shlq	$4, %r13
	addq	%r15, %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	-64(%rbp), %rdx
	movq	%rbx, %rcx
	movq	-72(%rbp), %r8
	callq	_smpArray_sort_merge
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB330_7
	testb	$15, (%rdx)
	je	LBB330_11
LBB330_7:
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	movq	-64(%rbp), %r8
	callq	_smp_merge_sorted_arrays
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
LBB330_8:
	cmpl	%ecx, 8(%rax)
	jne	LBB330_10
	testb	$15, (%rdx)
	je	LBB330_11
LBB330_10:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
LBB330_11:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end330:

	.globl	_timmy_get_run
	.align	4, 0x90
_timmy_get_run:
Leh_func_begin331:
	pushq	%rbp
Ltmp899:
	movq	%rsp, %rbp
Ltmp900:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp901:
	movq	%r8, -88(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	%rdi, %rbx
	cmpq	$1, %rax
	movq	%rsi, -112(%rbp)
	jne	LBB331_2
	movl	$1, %edx
	movq	%rsi, %rax
	jmp	LBB331_32
LBB331_2:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-80(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	movq	-112(%rbp), %rax
	movq	24(%rax), %r8
	movq	16(%rax), %rcx
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	je	LBB331_4
	movq	%rsi, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	_smp_global@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movl	$2, %r8d
	leaq	-72(%rbp), %r9
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	_smpFunction_call
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movl	$-1, %ecx
	movl	$1, %edx
	cmovnel	%ecx, %edx
	movq	%rbx, -104(%rbp)
	jmp	LBB331_5
LBB331_4:
	movq	%rbx, %rdi
	callq	_smpObject_cmp_fast
	movq	(%rbx), %rcx
	movl	%eax, %edx
	movq	%rbx, -104(%rbp)
	movq	%rcx, %rax
LBB331_5:
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB331_8
	movq	8(%rbx), %rax
	testb	$15, (%rax)
	jne	LBB331_8
LBB331_7:
	xorl	%eax, %eax
	movq	%rax, %rdx
	jmp	LBB331_32
LBB331_8:
	testl	%edx, %edx
	jle	LBB331_26
	movq	-112(%rbp), %rax
	leaq	24(%rax), %rax
	xorl	%r14d, %r14d
	jmp	LBB331_16
	.align	4, 0x90
LBB331_10:
	leaq	1(%r13), %r14
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-80(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	movq	16(%r12), %r8
	movq	8(%r12), %rcx
	movq	-8(%r12), %rsi
	movq	(%r12), %rdx
	je	LBB331_12
	movq	%rsi, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	_smp_global@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movl	$2, %r8d
	leaq	-72(%rbp), %r9
	callq	_smpFunction_call
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movl	$1, %ecx
	movl	$-1, %edx
	cmovnel	%edx, %ecx
	jmp	LBB331_13
LBB331_12:
	movq	%rbx, %rdi
	callq	_smpObject_cmp_fast
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rdx
	movl	%eax, %ecx
	movq	%rdx, %rax
LBB331_13:
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, 8(%rax)
	jne	LBB331_15
	movq	8(%rbx), %rax
	testb	$15, (%rax)
	je	LBB331_7
LBB331_15:
	leaq	16(%r12), %rax
	testl	%ecx, %ecx
	jle	LBB331_17
LBB331_16:
	movq	%rax, %r12
	movq	%r14, %r13
	leaq	2(%r13), %r15
	cmpq	-96(%rbp), %r15
	jb	LBB331_10
LBB331_17:
	cmpq	$-2, %r13
	jae	LBB331_28
	movq	-112(%rbp), %rsi
	leaq	8(%rsi), %r14
	shrq	%r15
	xorl	%eax, %eax
	.align	4, 0x90
LBB331_19:
	movq	-8(%r14), %rcx
	movq	(%r14), %rdx
	movq	-8(%r12), %rsi
	movq	%rsi, -8(%r14)
	movq	(%r12), %rsi
	movq	%rsi, (%r14)
	movq	%rcx, -8(%r12)
	movq	%rdx, (%r12)
	addq	$16, %r14
	addq	$-16, %r12
	incq	%rax
	cmpq	%r15, %rax
	jb	LBB331_19
	jmp	LBB331_28
LBB331_26:
	movq	-112(%rbp), %rax
	leaq	40(%rax), %r14
	xorl	%r15d, %r15d
	jmp	LBB331_27
	.align	4, 0x90
LBB331_20:
	leaq	1(%r13), %r15
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-80(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	movq	(%r14), %r8
	movq	-8(%r14), %rcx
	movq	-24(%r14), %rsi
	movq	-16(%r14), %rdx
	je	LBB331_22
	movq	%rsi, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	_smp_global@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movl	$2, %r8d
	leaq	-72(%rbp), %r9
	callq	_smpFunction_call
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movl	$1, %ecx
	movl	$-1, %edx
	cmovnel	%edx, %ecx
	jmp	LBB331_23
LBB331_22:
	movq	%rbx, %rdi
	callq	_smpObject_cmp_fast
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rdx
	movl	%eax, %ecx
	movq	%rdx, %rax
LBB331_23:
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, 8(%rax)
	jne	LBB331_25
	movq	8(%rbx), %rax
	testb	$15, (%rax)
	je	LBB331_7
LBB331_25:
	addq	$16, %r14
	testl	%ecx, %ecx
	jg	LBB331_28
LBB331_27:
	movq	%r15, %r13
	leaq	2(%r13), %rax
	cmpq	-96(%rbp), %rax
	jb	LBB331_20
LBB331_28:
	addq	$2, %r13
	je	LBB331_30
	cmpq	$16, %r13
	jb	LBB331_31
LBB331_30:
	movq	-112(%rbp), %rax
	movq	%r13, %rdx
	jmp	LBB331_32
LBB331_31:
	movq	-96(%rbp), %rdx
	cmpq	$16, %rdx
	movl	$16, %r14d
	cmovbeq	%rdx, %r14
	movq	-112(%rbp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	_smpArray_sort_insertion
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	%r15, %rax
	movq	%r14, %rdx
LBB331_32:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end331:

	.globl	_smpArray_sort_timmy
	.align	4, 0x90
_smpArray_sort_timmy:
Leh_func_begin332:
	pushq	%rbp
Ltmp902:
	movq	%rsp, %rbp
Ltmp903:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1160, %rsp
Ltmp904:
	movq	%rdx, -1160(%rbp)
	movq	%rsi, -1168(%rbp)
	movq	%rdi, -1184(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -48(%rbp)
	leaq	-1128(%rbp), %rdi
	movl	$1072, %esi
	callq	___bzero
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rax, -1144(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -1136(%rbp)
	xorl	%ecx, %ecx
	movq	%rcx, -1152(%rbp)
	movq	%rcx, -1176(%rbp)
	jmp	LBB332_10
LBB332_3:
	movq	%rsi, %rdx
	jmp	LBB332_17
	.align	4, 0x90
LBB332_1:
	movq	-1168(%rbp), %rdx
	movq	%r14, %rax
	subq	%rax, %rdx
	movq	%rax, %rsi
	shlq	$4, %rsi
	addq	-1184(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %r8
	leaq	-1144(%rbp), %rax
	movq	%rax, %rdi
	callq	_timmy_get_run
	movq	-1152(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, -1128(%rbp,%rcx)
	movq	%rdx, -1120(%rbp,%rcx)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	movq	-1144(%rbp), %rax
	cmpl	%esi, 8(%rax)
	jne	LBB332_4
	movq	-1136(%rbp), %rsi
	testb	$15, (%rsi)
	je	LBB332_3
LBB332_4:
	addq	%rdx, -1176(%rbp)
	incq	-1152(%rbp)
	leaq	-1128(%rbp,%rcx), %rbx
	jmp	LBB332_8
	.align	4, 0x90
LBB332_5:
	movq	-16(%rbx), %rdi
	movq	(%rbx), %rdx
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r12, %rsi
	movq	%r13, %rcx
	movq	-1160(%rbp), %r8
	callq	_smp_merge_sorted_arrays
	movq	%rax, -1144(%rbp)
	movq	%rdx, -1136(%rbp)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB332_7
	testb	$15, (%rdx)
	je	LBB332_17
LBB332_7:
	addq	%r12, %r13
	movq	%r13, -8(%rbx)
	movq	%r15, -1152(%rbp)
	movq	%r14, %rbx
LBB332_8:
	leaq	-16(%rbx), %r14
	movq	-1152(%rbp), %r15
	leaq	-1(%r15), %r15
	testq	%r15, %r15
	jle	LBB332_10
	movq	-8(%rbx), %r12
	movq	8(%rbx), %r13
	leaq	(%r13,%r13), %rcx
	cmpq	%r12, %rcx
	ja	LBB332_5
LBB332_10:
	movq	-1176(%rbp), %r14
	cmpq	-1168(%rbp), %r14
	jb	LBB332_1
	movq	-1152(%rbp), %rcx
	shlq	$4, %rcx
	leaq	-1136(%rbp,%rcx), %rbx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r14
	jmp	LBB332_15
	.align	4, 0x90
LBB332_12:
	movq	-24(%rbx), %rdi
	movq	-16(%rbx), %r15
	movq	-8(%rbx), %rdx
	movq	(%rbx), %r12
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r15, %rsi
	movq	%r12, %rcx
	movq	-1160(%rbp), %r8
	callq	_smp_merge_sorted_arrays
	movq	%rax, -1144(%rbp)
	movq	%rdx, -1136(%rbp)
	movl	(%r14), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB332_14
	testb	$15, (%rdx)
	je	LBB332_17
LBB332_14:
	addq	%r15, %r12
	movq	%r12, -16(%rbx)
	leaq	-16(%rbx), %rbx
LBB332_15:
	movq	-1152(%rbp), %rcx
	decq	%rcx
	movq	%rcx, -1152(%rbp)
	testq	%rcx, %rcx
	jg	LBB332_12
	movq	-1136(%rbp), %rdx
LBB332_17:
	addq	$1160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end332:

	.globl	_smpList_sort_rec
	.align	4, 0x90
_smpList_sort_rec:
Leh_func_begin333:
	pushq	%rbp
Ltmp905:
	movq	%rsp, %rbp
Ltmp906:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp
Ltmp907:
	movq	%r8, -304(%rbp)
	movq	%rcx, -280(%rbp)
	movq	%rdx, %rax
	movq	%rax, -208(%rbp)
	cmpq	$1, %rax
	ja	LBB333_2
	movq	%rdi, %rax
	movq	%rsi, %rdx
	jmp	LBB333_54
LBB333_2:
	cmpq	$8, -208(%rbp)
	jb	LBB333_10
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpList_to_a
	movq	%rax, %rdi
	movq	%rdx, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpArray_copy
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB333_5
	testb	$15, (%rdx)
	je	LBB333_6
LBB333_5:
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	xorl	%edx, %edx
	callq	_smpArray_sort_now
LBB333_6:
	movq	(%rdx), %rax
	movq	8(%rdx), %rbx
	movq	%rbx, %rcx
	shlq	$4, %rcx
	leaq	-8(%rax,%rcx), %r14
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	leaq	-120(%rbp), %r15
	movq	_smpType_id_thrown@GOTPCREL(%rip), %r12
	jmp	LBB333_9
	.align	4, 0x90
LBB333_7:
	movq	-8(%r14), %rdi
	movq	(%r14), %rsi
	leaq	-16(%r14), %r14
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movl	$1, %edx
	movq	%r15, %rcx
	callq	_smpObject_cons
	movl	(%r12), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB333_9
	testb	$15, (%rdx)
	je	LBB333_54
LBB333_9:
	decq	%rbx
	jns	LBB333_7
	jmp	LBB333_54
LBB333_10:
	movq	%rdi, -168(%rbp)
	movq	%rsi, -160(%rbp)
	movq	-208(%rbp), %rbx
	shrq	%rbx
	testq	%rbx, %rbx
	je	LBB333_15
	movl	$1, %eax
	leaq	-168(%rbp), %rcx
	movq	%rdi, %rdx
	.align	4, 0x90
LBB333_12:
	movq	%rdx, -168(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -160(%rbp)
	movq	16(%rdx), %rcx
	testq	%rcx, %rcx
	je	LBB333_16
	cmpq	%rbx, %rax
	jae	LBB333_16
	incq	%rax
	movq	(%rcx), %rdx
	jmp	LBB333_12
LBB333_15:
	leaq	-168(%rbp), %rcx
	movq	%rsi, %rdx
LBB333_16:
	movq	$0, 16(%rdx)
	movq	(%rcx), %rax
	movq	%rax, -216(%rbp)
	movq	%rax, -168(%rbp)
	movq	8(%rcx), %rax
	movq	%rax, -224(%rbp)
	movq	%rax, -160(%rbp)
	movq	%rbx, %rdx
	movq	-280(%rbp), %rcx
	movq	-304(%rbp), %r8
	callq	_smpList_sort_rec
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %r14
	movq	%rax, %r15
	jne	LBB333_19
	testb	$15, (%r14)
	jne	LBB333_19
	movq	%r15, %rax
	movq	%r14, %rdx
	jmp	LBB333_54
LBB333_19:
	movq	-208(%rbp), %rdx
	subq	%rbx, %rdx
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	-280(%rbp), %rcx
	movq	-304(%rbp), %r8
	callq	_smpList_sort_rec
	movq	%rax, -152(%rbp)
	movq	%rdx, -144(%rbp)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB333_21
	testb	$15, (%rdx)
	je	LBB333_54
LBB333_21:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rsi
	movq	%rsi, -216(%rbp)
	movq	%rsi, -184(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -208(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%rsi, -200(%rbp)
	movq	%rcx, -192(%rbp)
	xorl	%ebx, %ebx
	movq	%rax, -264(%rbp)
	movq	%rdx, -288(%rbp)
	movq	%r14, -240(%rbp)
	movq	%r14, -256(%rbp)
	movq	%rax, -224(%rbp)
	movq	%r14, -232(%rbp)
	movq	%rsi, -296(%rbp)
	movq	%r15, -248(%rbp)
	movl	$1, -268(%rbp)
	jmp	LBB333_44
LBB333_27:
	movq	%rsi, %rax
	jmp	LBB333_54
	.align	4, 0x90
LBB333_22:
	movq	-280(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	movq	-288(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %r8
	movq	-232(%rbp), %rax
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	je	LBB333_24
	movq	%rsi, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	_smp_global@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-280(%rbp), %rdx
	movq	-304(%rbp), %rcx
	movl	$2, %r8d
	leaq	-72(%rbp), %rax
	movq	%rax, %r9
	callq	_smpFunction_call
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movl	$1, %ecx
	movl	$-1, %edx
	cmovnel	%edx, %ecx
	jmp	LBB333_25
LBB333_24:
	leaq	-200(%rbp), %rax
	movq	%rax, %rdi
	callq	_smpObject_cmp_fast
	movl	%eax, %ecx
	movq	-200(%rbp), %rax
LBB333_25:
	movq	%rax, %rsi
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, 8(%rax)
	jne	LBB333_28
	movq	-192(%rbp), %rdx
	testb	$15, (%rdx)
	je	LBB333_27
LBB333_28:
	testl	%ecx, %ecx
	jns	LBB333_36
	movq	-256(%rbp), %r15
	movq	(%r15), %rdi
	movq	8(%r15), %rsi
	movq	_smp_nil@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	8(%r15), %r15
	movq	%rax, -88(%rbp)
	movq	%r15, -80(%rbp)
	movl	$1, %edx
	leaq	-88(%rbp), %r15
	movq	%r15, %rcx
	callq	_smpObject_cons
	cmpl	$0, -268(%rbp)
	movq	%rdx, %r12
	movq	%rax, %r13
	je	LBB333_31
	movq	%r13, -184(%rbp)
	movq	%r12, -176(%rbp)
	movl	$0, -268(%rbp)
	leaq	-184(%rbp), %rax
	movq	%r13, -296(%rbp)
	jmp	LBB333_32
LBB333_31:
	movq	8(%rbx), %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, 16(%rbx)
	movq	%r13, (%rax)
	movq	%r12, 8(%rax)
	movq	-208(%rbp), %r12
	movq	-216(%rbp), %r13
LBB333_32:
	movq	-240(%rbp), %rbx
	cmpq	$0, 16(%rbx)
	je	LBB333_35
	movq	16(%r14), %rbx
LBB333_34:
	movq	(%rbx), %r15
	movq	%r15, -136(%rbp)
	movq	8(%rbx), %r14
	movq	%r14, -128(%rbp)
	movq	%r14, -240(%rbp)
	movq	%r14, -256(%rbp)
	movq	%r14, -232(%rbp)
	movq	-224(%rbp), %rbx
	movq	%rbx, -264(%rbp)
	movq	%r12, -208(%rbp)
	movq	%r13, -216(%rbp)
	movq	%r15, -248(%rbp)
	jmp	LBB333_43
LBB333_35:
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	jmp	LBB333_34
LBB333_36:
	movq	-288(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	8(%rdx), %rsi
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rcx, -104(%rbp)
	movq	%rax, -96(%rbp)
	movl	$1, %edx
	leaq	-104(%rbp), %rcx
	callq	_smpObject_cons
	cmpl	$0, -268(%rbp)
	movq	%rdx, %r12
	movq	%rax, %r13
	je	LBB333_38
	movq	%r13, -184(%rbp)
	movq	%r12, -176(%rbp)
	movl	$0, -268(%rbp)
	leaq	-184(%rbp), %rax
	movq	%r13, -296(%rbp)
	jmp	LBB333_39
LBB333_38:
	movq	8(%rbx), %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, 16(%rbx)
	movq	%r13, (%rax)
	movq	%r12, 8(%rax)
	movq	-208(%rbp), %r12
	movq	-216(%rbp), %r13
LBB333_39:
	movq	-288(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	LBB333_41
	movq	-288(%rbp), %rdx
	movq	16(%rdx), %rbx
	jmp	LBB333_42
LBB333_41:
	movq	_smp_nil@GOTPCREL(%rip), %rbx
LBB333_42:
	movq	(%rbx), %rcx
	movq	%rcx, -224(%rbp)
	movq	%rcx, -152(%rbp)
	movq	8(%rbx), %rdx
	movq	%rdx, -288(%rbp)
	movq	%rdx, -144(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%r12, -208(%rbp)
	movq	%r13, -216(%rbp)
LBB333_43:
	movq	%rax, %rbx
LBB333_44:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	-248(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	je	LBB333_47
	movq	-224(%rbp), %rcx
	cmpl	%eax, 8(%rcx)
	jne	LBB333_22
	movq	%rcx, %rax
	movq	%rax, -264(%rbp)
LBB333_47:
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-296(%rbp), %rsi
	cmpl	%ecx, 8(%rsi)
	jne	LBB333_49
	movl	$1, %edx
	leaq	-136(%rbp), %rcx
	movq	-216(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	_smpList_concat_now
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	_smpType_id_list@GOTPCREL(%rip), %r15
	movl	(%r15), %ecx
	movq	%rax, %r15
	jmp	LBB333_50
LBB333_49:
	movq	%r15, -184(%rbp)
	movq	-232(%rbp), %r14
	movq	%r14, -176(%rbp)
	movq	%r14, %rdx
	movq	%r15, %rax
LBB333_50:
	cmpl	%ecx, 8(%rax)
	jne	LBB333_52
	leaq	-152(%rbp), %rcx
	movq	%r15, %rdi
	movq	%rdx, %rsi
	movl	$1, %edx
	callq	_smpList_concat_now
	movq	%rax, -184(%rbp)
	jmp	LBB333_53
LBB333_52:
	movq	-264(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-288(%rbp), %rdx
LBB333_53:
	movq	%rdx, -176(%rbp)
LBB333_54:
	addq	$264, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end333:

	.globl	_smpArray_sort_quick
	.align	4, 0x90
_smpArray_sort_quick:
Leh_func_begin334:
	pushq	%rbp
Ltmp908:
	movq	%rsp, %rbp
Ltmp909:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
Ltmp910:
	cmpq	$16, %rsi
	movq	%rcx, -96(%rbp)
	movq	%rdx, %rbx
	movq	%rsi, -136(%rbp)
	movq	%rdi, -120(%rbp)
	ja	LBB334_2
	incq	%rsi
	movq	%rbx, %rdx
	callq	_smpArray_sort_insertion
	jmp	LBB334_31
LBB334_2:
	movabsq	$2305843009213693950, %rax
	movq	-136(%rbp), %rcx
	andq	%rcx, %rax
	movq	-120(%rbp), %rdx
	movq	8(%rdx,%rax,8), %r14
	movq	(%rdx,%rax,8), %r15
	movq	_smp_nil@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rax
	movq	%rax, -88(%rbp)
	movq	8(%rsi), %rsi
	movq	%rsi, -80(%rbp)
	leaq	8(%rdx), %rdx
	movq	%rdx, -128(%rbp)
	movq	$0, -104(%rbp)
	movq	%rcx, -112(%rbp)
	jmp	LBB334_22
	.align	4, 0x90
LBB334_20:
	movq	-112(%rbp), %rcx
	cmpq	%rcx, -104(%rbp)
	jg	LBB334_22
	movq	-8(%r12), %rcx
	movq	(%r12), %rdx
	movq	(%r13), %rsi
	movq	%rsi, -8(%r12)
	movq	8(%r13), %rsi
	movq	%rsi, (%r12)
	movq	%rcx, (%r13)
	movq	%rdx, 8(%r13)
	decq	-112(%rbp)
	incq	-104(%rbp)
LBB334_22:
	movq	-112(%rbp), %rcx
	cmpq	%rcx, -104(%rbp)
	jg	LBB334_24
	movq	-104(%rbp), %r12
	shlq	$4, %r12
	addq	-128(%rbp), %r12
	jmp	LBB334_3
LBB334_11:
	movq	-112(%rbp), %r13
	shlq	$4, %r13
	addq	-120(%rbp), %r13
	jmp	LBB334_12
	.align	4, 0x90
LBB334_18:
	testl	%ecx, %ecx
	jle	LBB334_20
	addq	$-16, %r13
	decq	-112(%rbp)
LBB334_12:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rbx)
	movq	(%r13), %rsi
	movq	8(%r13), %rdx
	je	LBB334_14
	movq	%rsi, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%r15, -56(%rbp)
	movq	%r14, -48(%rbp)
	movq	_smp_global@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	%rbx, %rdx
	movq	-96(%rbp), %rcx
	movl	$2, %r8d
	leaq	-72(%rbp), %r9
	callq	_smpFunction_call
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movl	$1, %ecx
	movl	$-1, %edx
	cmovnel	%edx, %ecx
	jmp	LBB334_15
LBB334_14:
	leaq	-88(%rbp), %rdi
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	_smpObject_cmp_fast
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
LBB334_15:
	movq	%rax, %rsi
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, 8(%rax)
	jne	LBB334_18
	movq	-80(%rbp), %rdx
	testb	$15, (%rdx)
	jne	LBB334_18
	movq	%rsi, %rax
	jmp	LBB334_31
	.align	4, 0x90
LBB334_9:
	testl	%ecx, %ecx
	jle	LBB334_11
	addq	$16, %r12
	incq	-104(%rbp)
LBB334_3:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%rbx)
	movq	-8(%r12), %rcx
	movq	(%r12), %r8
	je	LBB334_5
	movq	%r15, -72(%rbp)
	movq	%r14, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	_smp_global@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	%rbx, %rdx
	movq	-96(%rbp), %rcx
	movl	$2, %r8d
	leaq	-72(%rbp), %rax
	movq	%rax, %r9
	callq	_smpFunction_call
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movl	$1, %ecx
	movl	$-1, %edx
	cmovnel	%edx, %ecx
	jmp	LBB334_6
LBB334_5:
	leaq	-88(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_smpObject_cmp_fast
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
LBB334_6:
	movq	%rax, %rsi
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, 8(%rax)
	jne	LBB334_9
	movq	-80(%rbp), %rdx
	testb	$15, (%rdx)
	jne	LBB334_9
	movq	%rsi, %rax
	jmp	LBB334_31
LBB334_24:
	testq	%rcx, %rcx
	jle	LBB334_27
	movq	-120(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rdx
	movq	-96(%rbp), %rcx
	callq	_smpArray_sort_quick
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB334_27
	testb	$15, (%rdx)
	je	LBB334_31
LBB334_27:
	movq	-104(%rbp), %rcx
	cmpq	-136(%rbp), %rcx
	jb	LBB334_29
	movq	-80(%rbp), %rdx
	jmp	LBB334_31
LBB334_29:
	movq	-136(%rbp), %rsi
	movq	%rcx, %rax
	subq	%rax, %rsi
	shlq	$4, %rax
	movq	-120(%rbp), %rdi
	addq	%rax, %rdi
	movq	%rbx, %rdx
	movq	-96(%rbp), %rcx
	callq	_smpArray_sort_quick
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB334_31
	testb	$15, (%rdx)
LBB334_31:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end334:

	.globl	_obj_clear
	.align	4, 0x90
_obj_clear:
Leh_func_begin335:
	pushq	%rbp
Ltmp911:
	movq	%rsp, %rbp
Ltmp912:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
Ltmp913:
	movq	(%rdi), %rbx
	movb	12(%rbx), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	jne	LBB335_2
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	jmp	LBB335_6
LBB335_2:
	movq	%rdi, %r14
	movq	8(%r14), %r15
	leaq	L_.str55(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB335_4
	testb	$15, (%rcx)
	je	LBB335_5
LBB335_4:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB335_5:
	movq	8(%r14), %rdi
	callq	_GC_free
	movq	$0, (%r14)
	movq	$0, 8(%r14)
	xorl	%eax, %eax
	movq	%rax, %rdx
LBB335_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end335:

	.globl	_list_clear_all
	.align	4, 0x90
_list_clear_all:
Leh_func_begin336:
	pushq	%rbp
Ltmp914:
	movq	%rsp, %rbp
Ltmp915:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp916:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %r15
	movq	8(%rbx), %r12
	movb	12(%r15), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	movq	16(%rbx), %r13
	je	LBB336_5
	leaq	L_.str55(%rip), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB336_3
	testb	$15, (%rcx)
	je	LBB336_4
LBB336_3:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB336_4:
	movq	%r12, %rdi
	callq	_GC_free
LBB336_5:
	testq	%r13, %r13
	je	LBB336_7
	movq	(%r13), %rdi
	movq	8(%r13), %rsi
	callq	_list_clear_all
LBB336_7:
	movb	12(%r14), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	je	LBB336_12
	leaq	L_.str55(%rip), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB336_10
	testb	$15, (%rcx)
	je	LBB336_11
LBB336_10:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB336_11:
	movq	%rbx, %rdi
	callq	_GC_free
LBB336_12:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end336:

	.globl	_test_listbuf
	.align	4, 0x90
_test_listbuf:
Leh_func_begin337:
	pushq	%rbp
Ltmp917:
	movq	%rsp, %rbp
Ltmp918:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp919:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
	movq	8(%rcx), %r14
	jne	LBB337_2
	xorl	%edi, %edi
	jmp	LBB337_3
LBB337_2:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB337_3:
	leaq	L_.str39(%rip), %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	movq	%rbx, 16(%r15)
	movq	%r14, 24(%r15)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rdi, -56(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	_smp_true@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	leaq	_smpListBuffer_to_list(%rip), %rdi
	movl	$1, %esi
	leaq	L_.str182(%rip), %rdx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	_smpType_id_nil@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	(%r15), %r12
	cmpl	%ecx, 8(%r12)
	movq	%rdx, -64(%rbp)
	movq	%rax, -72(%rbp)
	jne	LBB337_5
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	%rbx, %rdi
	movq	-80(%rbp), %rsi
	callq	_smpObject_cons
	movq	%rax, (%r15)
	movq	%rdx, 8(%r15)
	movq	%rax, 16(%r15)
	movq	%rdx, %rbx
	jmp	LBB337_6
LBB337_5:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, 16(%r14)
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	%rbx, %rdi
	movq	-80(%rbp), %rsi
	callq	_smpObject_cons
	movq	%rax, (%r13)
	movq	%rdx, 8(%r13)
	movq	16(%r14), %rbx
	movq	(%rbx), %rax
	movq	%rax, 16(%r15)
	movq	8(%rbx), %rbx
	movq	%r14, %rdx
	movq	%r12, %rax
LBB337_6:
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%rbx, 24(%r15)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%r12)
	jne	LBB337_8
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	_smpObject_cons
	movq	%rax, (%r15)
	movq	%rdx, 8(%r15)
	movq	%rax, 16(%r15)
	movq	%rdx, %rbx
	jmp	LBB337_9
LBB337_8:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, 16(%rbx)
	movq	24(%r15), %rbx
	movq	16(%rbx), %r13
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	_smpObject_cons
	movq	%rax, (%r13)
	movq	%rdx, 8(%r13)
	movq	16(%rbx), %rbx
	movq	(%rbx), %rax
	movq	%rax, 16(%r15)
	movq	8(%rbx), %rbx
	movq	%r14, %rdx
	movq	%r12, %rax
LBB337_9:
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%rbx, 24(%r15)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, 8(%r12)
	jne	LBB337_11
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	_smpObject_cons
	movq	%rax, (%r15)
	movq	%rdx, 8(%r15)
	movq	%rax, 16(%r15)
	movq	%rdx, %rbx
	jmp	LBB337_12
LBB337_11:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, 16(%rbx)
	movq	24(%r15), %rbx
	movq	16(%rbx), %r13
	movl	$1, %edx
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	_smpObject_cons
	movq	%rax, (%r13)
	movq	%rdx, 8(%r13)
	movq	16(%rbx), %rbx
	movq	(%rbx), %rax
	movq	%rax, 16(%r15)
	movq	8(%rbx), %rbx
	movq	%r14, %rdx
	movq	%r12, %rax
LBB337_12:
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%rbx, 24(%r15)
	movb	12(%r12), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	je	LBB337_17
	leaq	L_.str55(%rip), %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB337_15
	testb	$15, (%rcx)
	je	LBB337_16
LBB337_15:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB337_16:
	movq	%r14, %rdi
	callq	_GC_free
LBB337_17:
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end337:

	.globl	_smp_assert_eq
	.align	4, 0x90
_smp_assert_eq:
Leh_func_begin338:
	pushq	%rbp
Ltmp920:
	movq	%rsp, %rbp
Ltmp921:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Ltmp922:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rdx, -40(%rbp)
	movq	%rcx, -32(%rbp)
	leaq	L_.str58(%rip), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB338_2
	testb	$15, (%rcx)
	je	LBB338_3
LBB338_2:
	movl	$1, %r8d
	leaq	-40(%rbp), %r9
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB338_3:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	8(%rax), %rax
	cmpq	%rcx, %rax
	setne	%dl
	movzbl	%dl, %r15d
	je	LBB338_7
	movq	_smptest_print_successesp@GOTPCREL(%rip), %rdx
	cmpl	$0, (%rdx)
	je	LBB338_6
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %r8
	leaq	L_.str183(%rip), %rdi
	jmp	LBB338_8
LBB338_6:
	cmpq	%rcx, %rax
	jne	LBB338_9
LBB338_7:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %r8
	leaq	L_.str184(%rip), %rdi
LBB338_8:
	xorb	%al, %al
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	_smp_printf
LBB338_9:
	movb	12(%r14), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	je	LBB338_14
	leaq	L_.str55(%rip), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB338_12
	testb	$15, (%rcx)
	je	LBB338_13
LBB338_12:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB338_13:
	movq	%rbx, %rdi
	callq	_GC_free
LBB338_14:
	movq	-40(%rbp), %rbx
	movb	12(%rbx), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	je	LBB338_19
	movq	-32(%rbp), %r14
	leaq	L_.str55(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB338_17
	testb	$15, (%rcx)
	je	LBB338_18
LBB338_17:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB338_18:
	movq	%r14, %rdi
	callq	_GC_free
LBB338_19:
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end338:

	.globl	_test_bool
	.align	4, 0x90
_test_bool:
Leh_func_begin339:
	pushq	%rbp
Ltmp923:
	movq	%rsp, %rbp
Ltmp924:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp925:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rbx
	movl	(%rbx), %eax
	movq	_smp_true@GOTPCREL(%rip), %r14
	movq	(%r14), %rdx
	movq	8(%r14), %rcx
	movl	8(%rdx), %esi
	cmpl	%eax, %esi
	movq	_smp_nil@GOTPCREL(%rip), %r15
	movq	%r14, %rdi
	cmoveq	%r15, %rdi
	leaq	8(%r14), %r8
	leaq	8(%r15), %r9
	cmpl	%eax, %esi
	movq	(%rdi), %rdi
	cmoveq	%r9, %r8
	movq	(%r8), %rsi
	callq	_smp_assert_eq
	movl	(%rbx), %eax
	movq	(%r14), %rcx
	cmpl	%eax, 8(%rcx)
	movq	(%r15), %rdx
	je	LBB339_3
	cmpl	%eax, 8(%rdx)
	je	LBB339_3
	xorb	%al, %al
	jmp	LBB339_4
LBB339_3:
	movb	$1, %al
LBB339_4:
	andb	$1, %al
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	cmovneq	%rbx, %rsi
	movq	(%rsi), %rdi
	leaq	8(%rbx), %rsi
	addq	$8, %rcx
	testb	%al, %al
	cmovneq	%rsi, %rcx
	movq	(%rcx), %rsi
	movq	8(%rbx), %rcx
	callq	_smp_assert_eq
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rbx), %rdx
	cmpl	%eax, 8(%rdx)
	je	LBB339_7
	movq	_smp_true@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	cmpl	%eax, 8(%rcx)
	je	LBB339_7
	xorb	%al, %al
	jmp	LBB339_8
LBB339_7:
	movb	$1, %al
LBB339_8:
	andb	$1, %al
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	movq	_smp_true@GOTPCREL(%rip), %r14
	movq	%r14, %rcx
	cmovneq	%rbx, %rcx
	movq	(%rcx), %rdi
	leaq	8(%rbx), %r15
	leaq	8(%r14), %r12
	testb	%al, %al
	movq	%r12, %rax
	cmovneq	%r15, %rax
	movq	(%rax), %rsi
	movq	8(%rbx), %rcx
	callq	_smp_assert_eq
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movq	(%rbx), %rdx
	movq	8(%rbx), %rcx
	cmpl	%eax, 8(%rdx)
	cmoveq	%rbx, %r14
	movq	(%r14), %rdi
	cmoveq	%r15, %r12
	movq	(%r12), %rsi
	callq	_smp_assert_eq
	ud2
Leh_func_end339:

	.globl	_test_lists
	.align	4, 0x90
_test_lists:
Leh_func_begin340:
	pushq	%rbp
Ltmp926:
	movq	%rsp, %rbp
Ltmp927:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp928:
	leaq	_make_list(%rip), %rdi
	movl	$2, %esi
	leaq	L_.str65(%rip), %rdx
	leaq	L_.str59(%rip), %rcx
	xorb	%al, %al
	callq	_smpFunction_init
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rdx, %rbx
	movq	%rax, %r14
	jne	LBB340_2
	xorl	%edi, %edi
	jmp	LBB340_3
LBB340_2:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB340_3:
	leaq	L_.str59(%rip), %rsi
	callq	_minihash_get
	leaq	L_.str176(%rip), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	xorl	%edx, %edx
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	_smpType_def_general
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB340_5
	xorl	%edi, %edi
	jmp	LBB340_6
LBB340_5:
	movq	_scope_stack@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	shlq	$5, %rax
	leaq	-32(%rax,%rsi), %rdi
LBB340_6:
	leaq	L_.str185(%rip), %rsi
	callq	_minihash_add
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movl	$20, %esi
	movq	%rbx, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	_smpInteger_zero@GOTPCREL(%rip), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	callq	_make_list
	movl	$19, %ebx
	movq	%rdx, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	_scope_stack@GOTPCREL(%rip), %r15
	.align	4, 0x90
LBB340_7:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	(%r14), %rcx
	testq	%rcx, %rcx
	movq	%rax, %r13
	jne	LBB340_9
	xorl	%edi, %edi
	jmp	LBB340_10
LBB340_9:
	movq	(%r15), %rax
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB340_10:
	leaq	L_.str177(%rip), %rax
	movq	%rax, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	callq	_minihash_add
	movq	%r13, %rdi
	movq	%r12, %rsi
	leaq	L_.str141(%rip), %rax
	movq	%rax, %rdx
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB340_13
	testb	$15, (%rcx)
	jne	LBB340_13
	movq	%rax, %r12
	movq	%rcx, %r13
	jmp	LBB340_14
LBB340_13:
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	movl	$1, %r8d
	leaq	-56(%rbp), %r12
	movq	%r12, %r9
	callq	_smpFunction_call
	movq	%rax, %r12
	movq	%rdx, %r13
LBB340_14:
	movq	%r12, -56(%rbp)
	movq	%r13, -48(%rbp)
	movq	(%r14), %rax
	testq	%rax, %rax
	jne	LBB340_16
	xorl	%edi, %edi
	jmp	LBB340_17
LBB340_16:
	movq	(%r15), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB340_17:
	leaq	L_.str185(%rip), %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	_minihash_add
	testq	%rbx, %rbx
	leaq	-1(%rbx), %rbx
	jne	LBB340_7
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	_smp_assert_eq
	andl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end340:

	.globl	_test_strings
	.align	4, 0x90
_test_strings:
Leh_func_begin341:
	pushq	%rbp
Ltmp929:
	movq	%rsp, %rbp
Ltmp930:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp931:
	movq	_smpType_string@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movl	$6, %edi
	callq	_GC_malloc
	movw	$100, 4(%rax)
	movl	$1819438935, (%rax)
	movq	%rax, (%r15)
	movq	$5, 8(%r15)
	movq	%r14, -104(%rbp)
	movq	%r15, -96(%rbp)
	movq	%r14, -88(%rbp)
	movq	%r15, -80(%rbp)
	movq	%r14, -72(%rbp)
	movq	%r15, -64(%rbp)
	movq	%r14, -56(%rbp)
	movq	%r15, -48(%rbp)
	leaq	L_.str187(%rip), %rdi
	movl	$4, %esi
	leaq	-104(%rbp), %rdx
	xorb	%al, %al
	callq	_smpGlobal_sprintf
	movq	%rax, -112(%rbp)
	movq	%rdx, %r12
	movq	%rbx, %rdi
	callq	_obj_init
	movq	%rax, %rbx
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movl	$60, %edi
	callq	_GC_malloc
	movabsq	$7814430723466623333, %rcx
	movq	%rcx, 48(%rax)
	movabsq	$7958820707812254308, %rcx
	movq	%rcx, 40(%rax)
	movabsq	$7814430723466621735, %rcx
	movq	%rcx, 32(%rax)
	movabsq	$7308912704249408546, %rcx
	movq	%rcx, 24(%rax)
	movabsq	$7236284523806335076, %rcx
	movq	%rcx, 16(%rax)
	movabsq	$7011295522676568687, %rcx
	movq	%rcx, 8(%rax)
	movabsq	$6278066737626506568, %rcx
	movq	%rcx, (%rax)
	movl	$3023460, 56(%rax)
	movq	%rax, (%r13)
	movq	$59, 8(%r13)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	-112(%rbp), %rdx
	movq	%r12, %rcx
	callq	_smp_assert_eq
	movb	12(%r14), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	je	LBB341_5
	leaq	L_.str55(%rip), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB341_3
	testb	$15, (%rcx)
	je	LBB341_4
LBB341_3:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB341_4:
	movq	%r15, %rdi
	callq	_GC_free
LBB341_5:
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end341:

	.globl	_test_nums
	.align	4, 0x90
_test_nums:
Leh_func_begin342:
	pushq	%rbp
Ltmp932:
	movq	%rsp, %rbp
Ltmp933:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp934:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	_obj_init
	movq	%rax, -64(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movl	$7, %esi
	movq	%r15, %rdi
	callq	___gmpz_init_set_si
	movq	%r14, %rdi
	callq	_obj_init
	movq	%rax, -56(%rbp)
	movq	%r15, -48(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rax, %r14
	jne	LBB342_2
	xorl	%edi, %edi
	jmp	LBB342_3
LBB342_2:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB342_3:
	leaq	L_.str177(%rip), %rsi
	movq	-64(%rbp), %rdx
	movq	%rbx, %rcx
	callq	_minihash_add
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	LBB342_5
	xorl	%edi, %edi
	jmp	LBB342_6
LBB342_5:
	movq	_scope_stack@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rax
	leaq	-32(%rax,%rcx), %rdi
LBB342_6:
	leaq	L_.str189(%rip), %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	_minihash_add
	leaq	L_.str53(%rip), %rdx
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB342_8
	testb	$15, (%rcx)
	je	LBB342_9
LBB342_8:
	movl	$1, %r8d
	leaq	-56(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB342_9:
	movq	%rax, %r14
	movq	%rcx, %r15
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movl	$11, %esi
	movq	%r12, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	_smp_assert_eq
	movl	%eax, %r14d
	leaq	L_.str88(%rip), %rdx
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB342_11
	testb	$15, (%rcx)
	je	LBB342_12
LBB342_11:
	movl	$1, %r8d
	leaq	-56(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB342_12:
	movq	%rax, %r15
	movq	%rcx, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	$-3, %rsi
	movq	%r13, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	_smp_assert_eq
	movl	%eax, -68(%rbp)
	leaq	L_.str89(%rip), %rdx
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB342_14
	testb	$15, (%rcx)
	je	LBB342_15
LBB342_14:
	movl	$1, %r8d
	leaq	-56(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB342_15:
	movq	%rax, %r15
	movq	%rcx, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movl	$28, %esi
	movq	%r13, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	_smp_assert_eq
	movl	%eax, -72(%rbp)
	leaq	L_.str90(%rip), %rdx
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB342_17
	testb	$15, (%rcx)
	je	LBB342_18
LBB342_17:
	movl	$1, %r8d
	leaq	-56(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB342_18:
	movq	%rax, %r15
	movq	%rcx, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	_smp_assert_eq
	movl	%eax, -76(%rbp)
	leaq	L_.str95(%rip), %rdx
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB342_20
	testb	$15, (%rcx)
	je	LBB342_21
LBB342_20:
	movl	$1, %r8d
	leaq	-56(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB342_21:
	movq	%rax, %r15
	movq	%rcx, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movl	$4, %esi
	movq	%r13, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	_smp_assert_eq
	movl	%eax, -80(%rbp)
	leaq	L_.str98(%rip), %rdx
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB342_23
	testb	$15, (%rcx)
	je	LBB342_24
LBB342_23:
	movl	$1, %r8d
	leaq	-56(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB342_24:
	movq	%rax, %r15
	movq	%rcx, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movl	$512, %esi
	movq	%r13, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	_smp_assert_eq
	movl	%eax, -84(%rbp)
	leaq	L_.str99(%rip), %rdx
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB342_26
	testb	$15, (%rcx)
	je	LBB342_27
LBB342_26:
	movl	$1, %r8d
	leaq	-56(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB342_27:
	movq	%rax, %r15
	movq	%rcx, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	_smp_assert_eq
	movl	%eax, -88(%rbp)
	leaq	L_.str100(%rip), %rdx
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB342_29
	testb	$15, (%rcx)
	je	LBB342_30
LBB342_29:
	movl	$1, %r8d
	leaq	-56(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB342_30:
	movq	%rax, %r15
	movq	%rcx, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movl	$4, %esi
	movq	%r13, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	_smp_assert_eq
	movl	%eax, -92(%rbp)
	leaq	L_.str101(%rip), %rdx
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB342_32
	testb	$15, (%rcx)
	je	LBB342_33
LBB342_32:
	movl	$1, %r8d
	leaq	-56(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB342_33:
	movq	%rax, %r15
	movq	%rcx, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movl	$7, %esi
	movq	%r13, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	_smp_assert_eq
	movl	%eax, %r15d
	leaq	L_.str102(%rip), %rdx
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB342_35
	testb	$15, (%rcx)
	je	LBB342_36
LBB342_35:
	movl	$1, %r8d
	leaq	-56(%rbp), %r9
	movq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movq	%rdx, %rcx
LBB342_36:
	movq	%rax, %rbx
	movq	%rcx, %r12
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movl	$3, %esi
	movq	%r13, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	_smp_assert_eq
	andl	-68(%rbp), %r14d
	andl	-72(%rbp), %r14d
	andl	-76(%rbp), %r14d
	andl	-80(%rbp), %r14d
	andl	-84(%rbp), %r14d
	andl	-88(%rbp), %r14d
	andl	-92(%rbp), %r14d
	andl	%r15d, %r14d
	andl	%eax, %r14d
	movl	%r14d, %eax
	andl	$1, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end342:

	.globl	_minihash_fullclear
	.align	4, 0x90
_minihash_fullclear:
Leh_func_begin343:
	pushq	%rbp
Ltmp935:
	movq	%rsp, %rbp
Ltmp936:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp937:
	movq	%rdi, -48(%rbp)
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	LBB343_18
	movq	-48(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	LBB343_17
	xorl	%ebx, %ebx
	movq	%rbx, -64(%rbp)
	.align	4, 0x90
LBB343_3:
	movq	(%rax,%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB343_16
	cmpq	$0, 8(%rax,%rbx)
	je	LBB343_15
	xorl	%r14d, %r14d
	movq	%r14, -56(%rbp)
	.align	4, 0x90
LBB343_6:
	incq	-56(%rbp)
	cmpq	$0, (%rdi,%r14)
	je	LBB343_8
	movq	(%rax,%rbx), %rax
	movq	(%rax,%r14), %rdi
	callq	_GC_free
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
LBB343_8:
	movq	(%rax,%rbx), %r15
	movq	16(%r15,%r14), %r12
	testq	%r12, %r12
	je	LBB343_14
	movq	8(%r15,%r14), %r13
	movb	12(%r13), %al
	shrb	$2, %al
	andb	$3, %al
	cmpb	$1, %al
	je	LBB343_14
	movq	%r13, %rdi
	movq	%r12, %rsi
	leaq	L_.str55(%rip), %rdx
	callq	_smpObject_get_fun
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	movq	%rdx, %rcx
	jne	LBB343_12
	testb	$15, (%rcx)
	je	LBB343_13
LBB343_12:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
LBB343_13:
	movq	16(%r15,%r14), %rdi
	callq	_GC_free
	movq	$0, 8(%r15,%r14)
	movq	$0, 16(%r15,%r14)
LBB343_14:
	addq	$24, %r14
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-56(%rbp), %rcx
	cmpq	%rcx, 8(%rax,%rbx)
	movq	(%rax,%rbx), %rdi
	ja	LBB343_6
LBB343_15:
	callq	_GC_free
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rax
	movq	$0, 8(%rax,%rbx)
LBB343_16:
	movq	-64(%rbp), %r14
	incq	%r14
	movq	%r14, -64(%rbp)
	addq	$16, %rbx
	movq	-48(%rbp), %rdi
	cmpq	%r14, 8(%rdi)
	movq	(%rdi), %rax
	ja	LBB343_3
LBB343_17:
	movq	%rax, %rdi
	callq	_GC_free
	movq	-48(%rbp), %rdi
	movq	$0, 24(%rdi)
	movq	$0, 16(%rdi)
	movq	$0, 8(%rdi)
LBB343_18:
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end343:

	.globl	_obj_hash
	.align	4, 0x90
_obj_hash:
Leh_func_begin344:
	pushq	%rbp
Ltmp938:
	movq	%rsp, %rbp
Ltmp939:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Ltmp940:
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r14), %rdi
	leaq	L_.str2(%rip), %rsi
	callq	_strcmp
	testl	%eax, %eax
	jne	LBB344_7
	movq	(%rbx), %rbx
	movsbl	(%rbx), %eax
	testl	%eax, %eax
	jne	LBB344_3
	movl	$5381, %eax
	jmp	LBB344_6
LBB344_3:
	xorl	$177573, %eax
	movb	1(%rbx), %cl
	testb	%cl, %cl
	je	LBB344_6
	addq	$2, %rbx
	.align	4, 0x90
LBB344_5:
	movsbl	%cl, %ecx
	imull	$33, %eax, %eax
	xorl	%ecx, %eax
	movb	(%rbx), %cl
	incq	%rbx
	testb	%cl, %cl
	jne	LBB344_5
LBB344_6:
	movl	%eax, (%r15)
	xorl	%eax, %eax
	jmp	LBB344_13
LBB344_7:
	leaq	L_.str190(%rip), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpObject_get_fun
	movl	8(%rax), %esi
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	cmpl	(%rcx), %esi
	movq	%rdx, %rcx
	jne	LBB344_9
	testb	$15, (%rcx)
	je	LBB344_10
LBB344_9:
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_smpFunction_call
	movl	8(%rax), %esi
LBB344_10:
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %esi
	jne	LBB344_12
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	-40(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	_smpInteger_to_clong
	jmp	LBB344_6
LBB344_12:
	movl	$1, %eax
LBB344_13:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end344:

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI345_0:
	.quad	4985484787500187648
LCPI345_1:
	.quad	4604930618986332160
LCPI345_2:
	.quad	4616189618054758400
LCPI345_3:
	.quad	4890909195324358656
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_smpHash_core_add_now
	.align	4, 0x90
_smpHash_core_add_now:
Leh_func_begin345:
	pushq	%rbp
Ltmp941:
	movq	%rsp, %rbp
Ltmp942:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp943:
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$0, -44(%rbp)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	leaq	-44(%rbp), %rdi
	callq	_obj_hash
	testl	%eax, %eax
	jne	LBB345_13
	movslq	-44(%rbp), %rax
	xorl	%edx, %edx
	divq	24(%r15)
	movl	%edx, -44(%rbp)
	movslq	%edx, %rax
	movq	%rax, %r12
	shlq	$4, %r12
	movq	(%r15), %r13
	cmpq	$0, 8(%r13,%r12)
	je	LBB345_3
	movq	(%r13,%r12), %rcx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, 8(%rcx)
	jne	LBB345_4
LBB345_3:
	leaq	8(%r13,%r12), %rcx
	incq	32(%r15)
	shlq	$4, %rax
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, (%r13,%rax)
	movq	8(%rdx), %r13
	movq	%r13, (%rcx)
	movq	(%r15), %r13
LBB345_4:
	leaq	(%r13,%r12), %rcx
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_smpObject_cons
	movq	%rax, (%r13,%r12)
	movq	%rdx, 8(%r13,%r12)
	incq	40(%r15)
	movq	24(%r15), %rcx
	movq	32(%r15), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rdx
	shrq	$32, %rdx
	movabsq	$4985484787499139072, %rsi
	addq	%rsi, %rdx
	movd	%rdx, %xmm0
	subsd	LCPI345_0(%rip), %xmm0
	movl	%eax, %eax
	movabsq	$4841369599423283200, %rdx
	addq	%rdx, %rax
	movd	%rax, %xmm1
	addsd	%xmm0, %xmm1
	ucomisd	LCPI345_1(%rip), %xmm1
	jbe	LBB345_12
	movq	%rcx, %rax
	shrq	$32, %rax
	addq	%rsi, %rax
	movd	%rax, %xmm0
	subsd	LCPI345_0(%rip), %xmm0
	movl	%ecx, %eax
	addq	%rdx, %rax
	movd	%rax, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	LCPI345_1(%rip), %xmm1
	mulsd	LCPI345_2(%rip), %xmm1
	movsd	LCPI345_3(%rip), %xmm0
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	cvttsd2siq	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx
	xorq	%rax, %rcx
	ucomisd	%xmm0, %xmm1
	cvttsd2siq	%xmm1, %rax
	cmovaeq	%rcx, %rax
	cmpq	$10, %rax
	movl	$10, %ebx
	cmovaeq	%rax, %rbx
	movq	%rbx, %r14
	shlq	$4, %r14
	movq	%r14, %rdi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	___bzero
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%r12, -96(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%rax, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, 24(%r15)
	movq	(%r15), %rbx
	je	LBB345_11
	xorl	%r14d, %r14d
	leaq	-96(%rbp), %r12
	movq	%r14, %r13
	.align	4, 0x90
LBB345_7:
	cmpq	$0, 8(%rbx,%r14)
	je	LBB345_10
	addq	%r14, %rbx
	je	LBB345_10
	.align	4, 0x90
LBB345_9:
	movq	8(%rbx), %rax
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	movq	%r12, %rdi
	callq	_smpHash_core_add_now
	movq	8(%rbx), %rbx
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB345_9
LBB345_10:
	incq	%r13
	addq	$16, %r14
	cmpq	%r13, 24(%r15)
	movq	(%r15), %rbx
	ja	LBB345_7
LBB345_11:
	movq	%rbx, %rdi
	callq	_GC_free
	movq	-96(%rbp), %rax
	movq	%rax, (%r15)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%r15)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%r15)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%r15)
LBB345_12:
	xorl	%eax, %eax
LBB345_13:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end345:

	.globl	_smpHash_core_copy
	.align	4, 0x90
_smpHash_core_copy:
Leh_func_begin346:
	pushq	%rbp
Ltmp944:
	movq	%rsp, %rbp
Ltmp945:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp946:
	cmpq	$0, 24(%rsi)
	je	LBB346_6
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	movq	%r15, %r12
	.align	4, 0x90
LBB346_2:
	movq	(%rbx), %r13
	cmpq	$0, 8(%r13,%r15)
	je	LBB346_5
	addq	%r15, %r13
	je	LBB346_5
	.align	4, 0x90
LBB346_4:
	movq	8(%r13), %rax
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	movq	%r14, %rdi
	callq	_smpHash_core_add_now
	movq	8(%r13), %r13
	movq	16(%r13), %r13
	testq	%r13, %r13
	jne	LBB346_4
LBB346_5:
	incq	%r12
	addq	$16, %r15
	cmpq	%r12, 24(%rbx)
	ja	LBB346_2
LBB346_6:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end346:

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI347_0:
	.quad	4614256650576692846
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_test_hash
	.align	4, 0x90
_test_hash:
Leh_func_begin347:
	pushq	%rbp
Ltmp947:
	movq	%rsp, %rbp
Ltmp948:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
Ltmp949:
	movl	$10, %edi
	callq	_smpHash_init_capacity
	movq	%rax, -128(%rbp)
	movq	%rdx, %rbx
	movq	_smpType_string@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	_obj_init
	movq	%rax, %r15
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movl	$12, %edi
	callq	_GC_malloc
	movabsq	$2338328219647830103, %rcx
	movq	%rcx, (%rax)
	movl	$4155728, 8(%rax)
	movq	%rax, (%r12)
	movq	$11, 8(%r12)
	movq	%r15, -56(%rbp)
	movq	%r12, -48(%rbp)
	movq	%r14, %rdi
	callq	_obj_init
	movq	%rax, -136(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r14
	movl	$10, %edi
	callq	_GC_malloc
	movabsq	$8079568156980634995, %rcx
	movq	%rcx, (%rax)
	movw	$105, 8(%rax)
	movq	%rax, (%r14)
	movq	$9, 8(%r14)
	movl	$32, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	callq	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	movsd	LCPI347_0(%rip), %xmm0
	movq	%r13, %rdi
	callq	_mpfr_set_d
	movq	_smpType_float@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -72(%rbp)
	movq	%r13, -64(%rbp)
	leaq	-72(%rbp), %r13
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	%r13, %rcx
	callq	_smpObject_cons
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-136(%rbp), %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	movq	%r13, %rcx
	callq	_smpObject_cons
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	leaq	-88(%rbp), %rcx
	movq	-128(%rbp), %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	callq	_smpHash_add_now
	leaq	-104(%rbp), %rcx
	movq	-128(%rbp), %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	callq	_smpHash_add_now
	movq	-128(%rbp), %rdi
	movq	%rbx, %rsi
	callq	_smp_print
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, 8(%rax)
	jne	LBB347_2
	testb	$15, (%rdx)
	je	LBB347_3
LBB347_2:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	_fputc
LBB347_3:
	leaq	-56(%rbp), %rcx
	movq	-128(%rbp), %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	callq	_smpHash_at
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	leaq	L_.str193(%rip), %rdi
	leaq	-120(%rbp), %rdx
	xorb	%al, %al
	movl	$1, %esi
	callq	_smp_printf
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end347:

	.globl	_run_tests
	.align	4, 0x90
_run_tests:
Leh_func_begin348:
	pushq	%rbp
Ltmp950:
	movq	%rsp, %rbp
Ltmp951:
	pushq	%r14
	pushq	%rbx
Ltmp952:
	callq	_test_lists
	movl	%eax, %ebx
	callq	_test_listbuf
	callq	_test_bool
	movl	%eax, %r14d
	andl	%ebx, %r14d
	callq	_test_nums
	andl	%r14d, %eax
	movl	%eax, %ebx
	andl	$1, %ebx
	je	LBB348_3
	leaq	L_.str194(%rip), %rdi
LBB348_2:
	callq	_puts
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
LBB348_3:
	leaq	L_.str195(%rip), %rdi
	jmp	LBB348_2
Leh_func_end348:

	.globl	_minihash_print
	.align	4, 0x90
_minihash_print:
Leh_func_begin349:
	pushq	%rbp
Ltmp953:
	movq	%rsp, %rbp
Ltmp954:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
Ltmp955:
	movq	16(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB349_9
	leaq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	LBB349_8
	addq	$8, %rbx
	xorl	%r14d, %r14d
	leaq	L_.str196(%rip), %r15
	.align	4, 0x90
LBB349_3:
	cmpq	$0, -8(%rbx)
	je	LBB349_7
	cmpq	$0, (%rbx)
	je	LBB349_7
	xorl	%r12d, %r12d
	movq	%r12, %r13
	.align	4, 0x90
LBB349_6:
	movq	-8(%rbx), %rax
	movq	(%rax,%r12), %rsi
	xorb	%al, %al
	movq	%r15, %rdi
	callq	_printf
	addq	$24, %r12
	incq	%r13
	cmpq	%r13, (%rbx)
	ja	LBB349_6
LBB349_7:
	addq	$16, %rbx
	incq	%r14
	cmpq	-48(%rbp), %r14
	jb	LBB349_3
LBB349_8:
	movl	$10, %edi
	callq	_putchar
LBB349_9:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end349:

	.globl	_fill_array64
	.align	4, 0x90
_fill_array64:
Leh_func_begin350:
	pushq	%rbp
Ltmp956:
	movq	%rsp, %rbp
Ltmp957:
	movb	_initialized.b(%rip), %al
	testb	%al, %al
	je	LBB350_5
	cmpl	$624, _idx(%rip)
	jne	LBB350_6
	testb	$1, %sil
	jne	LBB350_7
	cmpl	$311, %esi
	jle	LBB350_8
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%eax, %esi
	sarl	%esi
	callq	_gen_rand_array
	movl	$624, _idx(%rip)
	popq	%rbp
	ret
LBB350_5:
	leaq	___func__.6871(%rip), %rdi
	leaq	L_.str197(%rip), %rsi
	movl	$518, %edx
	leaq	L_.str198(%rip), %rcx
	callq	___assert_rtn
LBB350_6:
	leaq	___func__.6871(%rip), %rdi
	leaq	L_.str197(%rip), %rsi
	movl	$519, %edx
	leaq	L_.str199(%rip), %rcx
	callq	___assert_rtn
LBB350_7:
	leaq	___func__.6871(%rip), %rdi
	leaq	L_.str197(%rip), %rsi
	movl	$520, %edx
	leaq	L_.str200(%rip), %rcx
	callq	___assert_rtn
LBB350_8:
	leaq	___func__.6871(%rip), %rdi
	leaq	L_.str197(%rip), %rsi
	movl	$521, %edx
	leaq	L_.str201(%rip), %rcx
	callq	___assert_rtn
Leh_func_end350:

	.globl	_fill_array32
	.align	4, 0x90
_fill_array32:
Leh_func_begin351:
	pushq	%rbp
Ltmp958:
	movq	%rsp, %rbp
Ltmp959:
	movb	_initialized.b(%rip), %al
	testb	%al, %al
	je	LBB351_5
	cmpl	$624, _idx(%rip)
	jne	LBB351_6
	testb	$3, %sil
	jne	LBB351_7
	cmpl	$623, %esi
	jle	LBB351_8
	movl	%esi, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%eax, %esi
	sarl	$2, %esi
	callq	_gen_rand_array
	movl	$624, _idx(%rip)
	popq	%rbp
	ret
LBB351_5:
	leaq	___func__.6852(%rip), %rdi
	leaq	L_.str197(%rip), %rsi
	movl	$482, %edx
	leaq	L_.str198(%rip), %rcx
	callq	___assert_rtn
LBB351_6:
	leaq	___func__.6852(%rip), %rdi
	leaq	L_.str197(%rip), %rsi
	movl	$483, %edx
	leaq	L_.str199(%rip), %rcx
	callq	___assert_rtn
LBB351_7:
	leaq	___func__.6852(%rip), %rdi
	leaq	L_.str197(%rip), %rsi
	movl	$484, %edx
	leaq	L_.str202(%rip), %rcx
	callq	___assert_rtn
LBB351_8:
	leaq	___func__.6852(%rip), %rdi
	leaq	L_.str197(%rip), %rsi
	movl	$485, %edx
	leaq	L_.str203(%rip), %rcx
	callq	___assert_rtn
Leh_func_end351:

	.globl	_gen_rand64
	.align	4, 0x90
_gen_rand64:
Leh_func_begin352:
	pushq	%rbp
Ltmp960:
	movq	%rsp, %rbp
Ltmp961:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp962:
	movb	_initialized.b(%rip), %al
	testb	%al, %al
	je	LBB352_10
	movl	_idx(%rip), %ecx
	testb	$1, %cl
	jne	LBB352_11
	cmpl	$623, %ecx
	jle	LBB352_9
	leaq	_sfmt+2480(%rip), %rbx
	leaq	_sfmt+2464(%rip), %rcx
	xorl	%r14d, %r14d
	leaq	_sfmt(%rip), %r15
	jmp	LBB352_4
	.align	4, 0x90
LBB352_5:
	movq	%rbx, %rcx
	movq	%r12, %rbx
LBB352_4:
	leaq	1952(%r14,%r15), %rdx
	leaq	(%r15,%r14), %r12
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%rbx, %r8
	callq	_do_recursion
	addq	$16, %r14
	cmpq	$544, %r14
	jne	LBB352_5
	xorl	%r14d, %r14d
	leaq	_sfmt(%rip), %r15
	movq	%rbx, %rcx
	.align	4, 0x90
LBB352_7:
	leaq	544(%r14,%r15), %rdi
	leaq	528(%r14,%r15), %rbx
	leaq	(%r15,%r14), %rdx
	movq	%rdi, %rsi
	movq	%rbx, %r8
	callq	_do_recursion
	addq	$16, %r14
	cmpq	$1952, %r14
	movq	%rbx, %rcx
	jne	LBB352_7
	movl	$0, _idx(%rip)
	xorl	%ecx, %ecx
LBB352_9:
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	movslq	%eax, %rax
	leaq	_sfmt(%rip), %rdx
	movq	(%rdx,%rax,8), %rax
	addl	$2, %ecx
	movl	%ecx, _idx(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB352_10:
	leaq	___func__.6832(%rip), %rdi
	leaq	L_.str197(%rip), %rsi
	movl	$436, %edx
	leaq	L_.str198(%rip), %rcx
	callq	___assert_rtn
LBB352_11:
	leaq	___func__.6832(%rip), %rdi
	leaq	L_.str197(%rip), %rsi
	movl	$437, %edx
	leaq	L_.str204(%rip), %rcx
	callq	___assert_rtn
Leh_func_end352:

	.globl	_gen_rand32
	.align	4, 0x90
_gen_rand32:
Leh_func_begin353:
	pushq	%rbp
Ltmp963:
	movq	%rsp, %rbp
Ltmp964:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp965:
	movb	_initialized.b(%rip), %al
	testb	%al, %al
	je	LBB353_9
	movl	_idx(%rip), %eax
	cmpl	$623, %eax
	jle	LBB353_8
	leaq	_sfmt+2480(%rip), %rbx
	leaq	_sfmt+2464(%rip), %rcx
	xorl	%r14d, %r14d
	leaq	_sfmt(%rip), %r15
	jmp	LBB353_3
	.align	4, 0x90
LBB353_4:
	movq	%rbx, %rcx
	movq	%r12, %rbx
LBB353_3:
	leaq	1952(%r14,%r15), %rdx
	leaq	(%r15,%r14), %r12
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%rbx, %r8
	callq	_do_recursion
	addq	$16, %r14
	cmpq	$544, %r14
	jne	LBB353_4
	xorl	%r14d, %r14d
	leaq	_sfmt(%rip), %r15
	movq	%rbx, %rcx
	.align	4, 0x90
LBB353_6:
	leaq	544(%r14,%r15), %rdi
	leaq	528(%r14,%r15), %rbx
	leaq	(%r15,%r14), %rdx
	movq	%rdi, %rsi
	movq	%rbx, %r8
	callq	_do_recursion
	addq	$16, %r14
	cmpq	$1952, %r14
	movq	%rbx, %rcx
	jne	LBB353_6
	movl	$0, _idx(%rip)
	xorl	%eax, %eax
LBB353_8:
	movslq	%eax, %rcx
	leaq	_sfmt(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	incl	%ecx
	movl	%ecx, _idx(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB353_9:
	leaq	___func__.6819(%rip), %rdi
	leaq	L_.str197(%rip), %rsi
	movl	$413, %edx
	leaq	L_.str198(%rip), %rcx
	callq	___assert_rtn
Leh_func_end353:

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI354_0:
	.quad	4696837146684686336
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_test_list_sort
	.align	4, 0x90
_test_list_sort:
Leh_func_begin354:
	pushq	%rbp
Ltmp966:
	movq	%rsp, %rbp
Ltmp967:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp968:
	leaq	-56(%rbp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	_gettimeofday
	cvtsi2sd	-48(%rbp), %xmm0
	divsd	LCPI354_0(%rip), %xmm0
	cvtsi2sdq	-56(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movl	$2, %eax
	movq	%rax, -96(%rbp)
	movq	_smp_global@GOTPCREL(%rip), %r14
	.align	4, 0x90
LBB354_1:
	testq	%rbx, %rbx
	je	LBB354_3
	testb	$63, %bl
	sete	%cl
	shlq	%cl, -96(%rbp)
LBB354_3:
	movl	$16, %edi
	callq	_GC_malloc
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r15
	movq	%r15, -72(%rbp)
	movq	8(%rax), %r12
	movq	%r12, -64(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	-96(%rbp), %rsi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -88(%rbp)
	movq	%r13, -80(%rbp)
	cmpq	$0, -96(%rbp)
	jg	LBB354_5
	movq	%r15, %rdi
	movq	%r12, %rsi
	jmp	LBB354_8
LBB354_5:
	movq	-96(%rbp), %r15
	.align	4, 0x90
LBB354_6:
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	callq	_smpGlobal_rand
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rax
	movq	%rax, %rcx
	callq	_smpObject_cons
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	decq	%r15
	jne	LBB354_6
	movq	%rdx, %rsi
	movq	%rax, %rdi
LBB354_8:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_smpList_nsort
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_list_clear_all
	incq	%rbx
	cmpq	$512, %rbx
	jne	LBB354_1
	leaq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	cvtsi2sd	-48(%rbp), %xmm1
	divsd	LCPI354_0(%rip), %xmm1
	cvtsi2sdq	-56(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	subsd	-104(%rbp), %xmm0
	leaq	L_.str205(%rip), %rdi
	movb	$1, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end354:

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI355_0:
	.quad	4696837146684686336
LCPI355_1:
	.quad	4463067230724161536
LCPI355_2:
	.quad	4621256167635550208
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_test_array_sort
	.align	4, 0x90
_test_array_sort:
Leh_func_begin355:
	pushq	%rbp
Ltmp969:
	movq	%rsp, %rbp
Ltmp970:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
Ltmp971:
	leaq	-56(%rbp), %rdi
	movq	$0, -88(%rbp)
	xorl	%esi, %esi
	callq	_gettimeofday
	cvtsi2sd	-48(%rbp), %xmm0
	divsd	LCPI355_0(%rip), %xmm0
	cvtsi2sdq	-56(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movl	$96, %eax
	movq	%rax, -80(%rbp)
	.align	4, 0x90
LBB355_1:
	cmpq	$0, -88(%rbp)
	je	LBB355_3
	movq	-88(%rbp), %rax
	testb	$63, %al
	sete	%cl
	shlq	%cl, -80(%rbp)
LBB355_3:
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, %r14
	movl	$128, %edi
	callq	_GC_malloc
	movq	$0, 120(%rax)
	movq	$0, 112(%rax)
	movq	$0, 104(%rax)
	movq	$0, 96(%rax)
	movq	$0, 88(%rax)
	movq	$0, 80(%rax)
	movq	$0, 72(%rax)
	movq	$0, 64(%rax)
	movq	$0, 56(%rax)
	movq	$0, 48(%rax)
	movq	$0, 40(%rax)
	movq	$0, 32(%rax)
	movq	$0, 24(%rax)
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movq	$0, (%rax)
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rax, %r15
	jne	LBB355_5
	xorl	%edi, %edi
	jmp	LBB355_6
LBB355_5:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	$5, %rcx
	leaq	-32(%rcx,%rax), %rdi
LBB355_6:
	leaq	L_.str86(%rip), %rax
	movq	%rax, %rsi
	callq	_minihash_get
	movq	%rdx, %rdi
	callq	_obj_init
	movq	%rax, -96(%rbp)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r12
	movq	%r15, (%r12)
	movq	$0, 8(%r12)
	movl	$16, %edi
	callq	_GC_malloc
	movq	%rax, %r15
	movq	%r15, %rdi
	movq	-80(%rbp), %rsi
	callq	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rdi
	callq	_obj_init
	movq	%rax, -72(%rbp)
	movq	%r15, -64(%rbp)
	cmpq	$0, -80(%rbp)
	jle	LBB355_15
	movq	-80(%rbp), %r15
	.align	4, 0x90
LBB355_8:
	callq	_gen_rand32
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	LCPI355_1(%rip), %xmm0
	movsd	LCPI355_2(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	LBB355_10
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	_smpInteger_one@GOTPCREL(%rip), %rcx
	callq	_smpInteger_add
	jmp	LBB355_11
LBB355_10:
	movq	_smp_global@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rbx
	movq	%rbx, %rcx
	callq	_smpGlobal_rand
LBB355_11:
	movq	%rdx, %rbx
	movq	%rax, %r14
	movq	8(%r12), %r13
	leaq	1(%r13), %rax
	movq	%rax, 8(%r12)
	movq	%rax, %rcx
	shlq	$4, %rcx
	cmpq	$5, %rcx
	jb	LBB355_14
	leaq	-1(%rcx), %rdx
	testq	%rcx, %rdx
	jne	LBB355_14
	shlq	$3, %rax
	movabsq	$9223372036854775800, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	orq	%rcx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	incq	%rsi
	movq	(%r12), %rdi
	callq	_GC_realloc
	movq	%rax, (%r12)
LBB355_14:
	movq	(%r12), %rax
	shlq	$4, %r13
	movq	%r14, (%rax,%r13)
	movq	%rbx, 8(%rax,%r13)
	decq	%r15
	jne	LBB355_8
LBB355_15:
	movq	-96(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	callq	_smpArray_sort_now
	movq	-88(%rbp), %rax
	incq	%rax
	movq	%rax, -88(%rbp)
	cmpq	$512, %rax
	jne	LBB355_1
	leaq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	cvtsi2sd	-48(%rbp), %xmm1
	divsd	LCPI355_0(%rip), %xmm1
	cvtsi2sdq	-56(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	subsd	-104(%rbp), %xmm0
	leaq	L_.str205(%rip), %rdi
	movb	$1, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Leh_func_end355:

.zerofill __DATA,__bss,_sfmt,2496,5
	.section	__TEXT,__cstring,cstring_literals
	.align	3
L_.str:
	.asciz	 "SFMT-19937:122-18-1-11-1:dfffffef-ddfecb7f-bffaffff-bffffff6"

.zerofill __DATA,__bss,_idx,4,2
.zerofill __DATA,__bss,_initialized.b,1,0
	.comm	_smp_true,16,4
	.comm	_smp_nil,16,4
	.comm	_smptest_print_successesp,4,2
	.comm	_smpType_id_nil,4,2
	.comm	_smpInteger_zero,16,4
	.comm	_smpType_id_thrown,4,2
L_.str1:
	.asciz	 "Class"

L_.str2:
	.asciz	 "String"

	.comm	_scope_length,8,3
	.comm	_scope_stack,8,3
L_.str3:
	.asciz	 "self"

	.comm	_smpType_id_class,4,2
L_.str4:
	.asciz	 "Collection"

	.comm	_scope_classes,32,5
L_.str5:
	.asciz	 "Fatal Error: "

L_.str6:
	.asciz	 "Internal Error: "

	.align	3
L_.str7:
	.asciz	 "In smpException_init(), wrong object type (Class expected, %s found)."

L_.str8:
	.asciz	 "InitializationException"

	.align	3
L_.str9:
	.asciz	 "Cannot initialize singleton class %s."

L_.str10:
	.asciz	 "Thrown"

	.comm	_smpType_thrown,64,5
	.align	3
L_.str11:
	.asciz	 "Regular expression \"%s\" had invalid '{...}' construct."

	.align	3
L_.str12:
	.asciz	 "Syntax error in regular expression \"%s\"."

	.align	3
L_.str13:
	.asciz	 "In regular expression \"%s\", a repetition operator such as '?' or '*' appeared in a bad position."

	.align	3
L_.str14:
	.asciz	 "Regular expression \"%s\" referred to an invalid collating element."

	.align	3
L_.str15:
	.asciz	 "Regular expression \"%s\" referred to an invalid character class name."

	.align	3
L_.str16:
	.asciz	 "Regular expression \"%s\" ended with '\\'."

	.align	3
L_.str17:
	.asciz	 "Regular expression \"%s\" had invalid number in the '\\digit' construct."

	.align	3
L_.str18:
	.asciz	 "Regular expression \"%s\" had unbalanced square brackets."

	.align	3
L_.str19:
	.asciz	 "Regular expression \"%s\" had unbalanced parentheses."

	.align	3
L_.str20:
	.asciz	 "Regular expression \"%s\" had unbalanced curly braces."

	.align	3
L_.str21:
	.asciz	 "In regular expression \"%s\", one of the endpoints in a range expression was invalid."

	.align	3
L_.str22:
	.asciz	 "Ran out of memory while compiling regular expression \"%s\"."

L_.str23:
	.asciz	 "IndexOutOfBoundsException"

L_.str24:
	.asciz	 "%ld"

L_.str25:
	.asciz	 "ImplementationException"

	.align	3
L_.str26:
	.asciz	 "hash contains?() not implemented."

L_.str27:
	.asciz	 "catch() not implemented."

L_.str28:
	.asciz	 "Index %ld is out of bounds."

L_.str29:
	.asciz	 "ArgumentError"

	.align	3
L_.str30:
	.asciz	 "Wrong number of arguments (1 expected, %d found)."

L_.str31:
	.asciz	 "Symbol"

	.comm	_smpType_string,64,5
L_.str32:
	.asciz	 "%s()"

L_.str33:
	.asciz	 "<Function: %lx>"

L_.str34:
	.asciz	 "<%s 0x%lx>"

L_.str35:
	.space	1

L_.str36:
	.asciz	 "nil"

L_.str37:
	.asciz	 "true"

	.comm	_smpType_regmatch,64,5
L_.str38:
	.asciz	 "Pair"

L_.str39:
	.asciz	 "ListBuffer"

	.comm	_smpType_list,64,5
	.comm	_smpType_id_list,4,2
L_.str40:
	.asciz	 "TypeError"

	.comm	_smpType_int,64,5
L_.str41:
	.asciz	 "Hash"

	.comm	_smpType_function,64,5
L_.str42:
	.asciz	 "FunctionError"

	.align	3
L_.str43:
	.asciz	 "Unexpected token %s after &rest argument."

L_.str44:
	.asciz	 "&default"

L_.str45:
	.asciz	 "&quote"

L_.str46:
	.asciz	 "&optional"

L_.str47:
	.asciz	 "&rest"

L_.str48:
	.asciz	 "&keyword"

	.comm	_smpType_float,64,5
	.comm	_smp_mpfr_rnd,4,2
	.comm	_smpType_class,64,5
L_.str49:
	.asciz	 "Function"

	.align	3
L_.str50:
	.asciz	 "Undefined function-variable flag %d.\n"

L_.str51:
	.asciz	 "Undefined scope flag %d.\n"

L_.str52:
	.asciz	 "to_s"

L_.str53:
	.asciz	 "+"

L_.str54:
	.asciz	 "Nil"

L_.str55:
	.asciz	 "clear"

L_.str56:
	.asciz	 "Bool"

L_.str57:
	.asciz	 "Object"

L_.str58:
	.asciz	 "equal?"

L_.str59:
	.asciz	 "Integer"

L_.str60:
	.asciz	 "length"

L_.str61:
	.asciz	 "reverse"

L_.str62:
	.asciz	 "write"

L_.str63:
	.asciz	 "car"

L_.str64:
	.asciz	 "cdr"

L_.str65:
	.asciz	 "List"

L_.str66:
	.asciz	 "add!"

L_.str67:
	.asciz	 "append"

L_.str68:
	.asciz	 "append!"

L_.str69:
	.asciz	 "concat"

L_.str70:
	.asciz	 "copy"

L_.str71:
	.asciz	 "each"

L_.str72:
	.asciz	 "empty?"

L_.str73:
	.asciz	 "map"

L_.str74:
	.asciz	 "reduce"

L_.str75:
	.asciz	 "at"

L_.str76:
	.asciz	 "at="

L_.str77:
	.asciz	 "concat!"

L_.str78:
	.asciz	 "sort"

L_.str79:
	.asciz	 "nsort"

L_.str80:
	.asciz	 "to_a"

L_.str81:
	.asciz	 "to_list"

L_.str82:
	.asciz	 "TrueClass"

	.comm	_smpType_id_int,4,2
	.comm	_smpType_id_float,4,2
L_.str83:
	.asciz	 "Number"

	.comm	_smpInteger_one,16,4
	.align	3
L_.str84:
	.asciz	 "Wrong number of arguments in %s.%s (%d expected, %d found)."

	.comm	_smp_global,16,4
	.comm	_smp_mpfr_default_prec,8,3
L_.str85:
	.asciz	 "%%.%dR*f"

L_.str86:
	.asciz	 "Array"

	.comm	_smpType_id,64,5
	.comm	_smpType_next_id,4,2
	.comm	_smpType_ids,32,5
L_.str87:
	.asciz	 "RegexMatch"

	.comm	_smpType_object,64,5
L_.str88:
	.asciz	 "-"

L_.str89:
	.asciz	 "*"

L_.str90:
	.asciz	 "/"

L_.str91:
	.asciz	 "<"

L_.str92:
	.asciz	 "<="

L_.str93:
	.asciz	 ">="

L_.str94:
	.asciz	 ">"

	.comm	_smpType_nil,64,5
L_.str95:
	.asciz	 "%"

L_.str96:
	.asciz	 "mod"

L_.str97:
	.asciz	 "**"

L_.str98:
	.asciz	 "<<"

L_.str99:
	.asciz	 ">>"

L_.str100:
	.asciz	 "&"

L_.str101:
	.asciz	 "|"

L_.str102:
	.asciz	 "^"

L_.str103:
	.asciz	 "inc"

L_.str104:
	.asciz	 "dec"

L_.str105:
	.asciz	 "cmp"

L_.str106:
	.asciz	 "=="

L_.str107:
	.asciz	 "!="

L_.str108:
	.asciz	 "eq?"

L_.str109:
	.asciz	 "range"

	.comm	_smp_stdin,8,3
	.comm	_smp_stdout,8,3
	.comm	_smp_stderr,8,3
L_.str110:
	.asciz	 "Global"

	.comm	_smpType_global,64,5
L_.str111:
	.asciz	 "!"

L_.str112:
	.asciz	 "~"

L_.str113:
	.asciz	 "array"

L_.str114:
	.asciz	 "Exception"

L_.str115:
	.asciz	 "catch"

L_.str116:
	.asciz	 "hash"

L_.str117:
	.asciz	 "list"

L_.str118:
	.asciz	 "print"

L_.str119:
	.asciz	 "printf"

L_.str120:
	.asciz	 "println"

L_.str121:
	.asciz	 "rand"

L_.str122:
	.asciz	 "set_seed"

L_.str123:
	.asciz	 "sprintf"

L_.str124:
	.asciz	 "throw"

L_.str125:
	.asciz	 "Float"

L_.str126:
	.asciz	 "PI"

L_.str127:
	.asciz	 "E"

L_.str128:
	.asciz	 "RuntimeException"

L_.str129:
	.asciz	 "IncompleteTokenException"

L_.str130:
	.asciz	 "InternalException"

L_.str131:
	.asciz	 "StringFormatException"

L_.str132:
	.asciz	 "reverse!"

L_.str133:
	.asciz	 "sort!"

L_.str134:
	.asciz	 "Card"

L_.str135:
	.asciz	 "ID"

	.comm	_smpType_id_fun,4,2
L_.str136:
	.asciz	 "Atom"

	.comm	_smpType_atom,64,5
	.comm	_smpType_collection,64,5
	.comm	_smpType_pair,64,5
	.comm	_smpType_exception,64,5
L_.str137:
	.asciz	 "CompileError"

L_.str138:
	.asciz	 "SyntaxError"

L_.str139:
	.asciz	 "UndefinedSymbolError"

L_.str140:
	.asciz	 "->"

L_.str141:
	.asciz	 "cons"

L_.str142:
	.asciz	 "eql?"

L_.str143:
	.asciz	 "funcall"

L_.str144:
	.asciz	 "getclass"

L_.str145:
	.asciz	 "type"

L_.str146:
	.asciz	 "types_equal?"

	.comm	_initialized_classesp,4,2
	.align	3
L_.str147:
	.asciz	 "default unimplemented function"

	.align	3
L_.str148:
	.asciz	 "Cannot call an abstract function."

L_.str149:
	.asciz	 "Function expected, %s found."

	.align	3
L_.str150:
	.asciz	 "Class function \"%s\" is undefined for %s."

	.align	3
L_.str151:
	.asciz	 "Instance function \"%s\" is undefined for %s."

L_.str152:
	.asciz	 "\n"

L_.str153:
	.asciz	 "<Thrown: %s>"

L_.str154:
	.asciz	 "(list"

L_.str155:
	.asciz	 " "

L_.str156:
	.asciz	 ")"

L_.str157:
	.asciz	 "("

	.align	3
L_.str158:
	.asciz	 "Invalid range type %s (expected \"Array\" or \"List\")."

L_.str159:
	.asciz	 "(hash"

	.align	3
L_.str160:
	.asciz	 "Undefined format %s (does not begin with '%%')."

L_.str161:
	.asciz	 "Undefined format type %c."

	.align	3
L_.str162:
	.asciz	 "Not enough arguments for formatted output (%d expected, %d found)."

L_.str163:
	.asciz	 "%s"

L_.str164:
	.asciz	 "(%w -> %w)"

L_.str165:
	.asciz	 "(%s -> %s)"

L_.str166:
	.asciz	 "various types: %d, %f, %x, %o"

L_.str167:
	.asciz	 "^[0123456789]+$"

L_.str168:
	.asciz	 "09821409"

L_.str169:
	.asciz	 "\n%s\n"

	.align	3
L_.str170:
	.asciz	 "name: %st, parents: %st, body: %st\n"

L_.str171:
	.asciz	 "%s\n"

L_.str172:
	.asciz	 "(array"

L_.str173:
	.asciz	 "["

L_.str174:
	.asciz	 ", "

L_.str175:
	.asciz	 "]"

L_.str176:
	.asciz	 "make_list"

L_.str177:
	.asciz	 "x"

L_.str178:
	.asciz	 "%s: %s expected, %st found."

L_.str179:
	.asciz	 "%s: unexpected %st."

L_.str180:
	.asciz	 "\n\tfrom "

L_.str181:
	.asciz	 "%s: %s"

L_.str182:
	.asciz	 "not a real type"

L_.str183:
	.asciz	 "success: %s equals %s\n"

	.align	3
L_.str184:
	.asciz	 "failure: %s expected, %s found.\n"

L_.str185:
	.asciz	 "xs"

L_.str186:
	.asciz	 "World"

	.align	3
L_.str187:
	.asciz	 "Hello, %s! Mad %w, Wayne's %w, Disney %w."

	.align	3
L_.str188:
	.asciz	 "Hello, World! Mad \"World\", Wayne's \"World\", Disney \"World\"."

L_.str189:
	.asciz	 "y"

L_.str190:
	.asciz	 "compute-hash"

L_.str191:
	.asciz	 "What is Pi?"

L_.str192:
	.asciz	 "second pi"

L_.str193:
	.asciz	 "pi: %s\n"

L_.str194:
	.asciz	 "\n\nTests succeeded.\n"

L_.str195:
	.asciz	 "\n\nTests failed.\n"

L_.str196:
	.asciz	 "key: %s\n"

	.align	3
___func__.6871:
	.asciz	 "fill_array64"

L_.str197:
	.asciz	 "../c/../lib/SFMT/SFMT.c"

L_.str198:
	.asciz	 "initialized"

L_.str199:
	.asciz	 "idx == N32"

L_.str200:
	.asciz	 "size % 2 == 0"

L_.str201:
	.asciz	 "size >= N64"

	.align	3
___func__.6852:
	.asciz	 "fill_array32"

L_.str202:
	.asciz	 "size % 4 == 0"

L_.str203:
	.asciz	 "size >= N32"

	.align	3
___func__.6832:
	.asciz	 "gen_rand64"

L_.str204:
	.asciz	 "idx % 2 == 0"

	.align	3
___func__.6819:
	.asciz	 "gen_rand32"

L_.str205:
	.asciz	 "time to sort at %f seconds\n"

	.comm	_smpType_id_array,4,2
	.comm	_smpType_id_hash,4,2
	.comm	_smpType_id_var,4,2
	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
	.globl	_get_idstring.eh
_get_idstring.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp972:
	.quad	Leh_func_begin1-Ltmp972
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.align	3
Leh_frame_end1:

_do_recursion.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp973:
	.quad	Leh_func_begin2-Ltmp973
Lset8 = Leh_func_end2-Leh_func_begin2
	.quad	Lset8
	.byte	0
	.byte	4
Lset9 = Ltmp2-Leh_func_begin2
	.long	Lset9
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset10 = Ltmp3-Ltmp2
	.long	Lset10
	.byte	13
	.byte	6
	.byte	4
Lset11 = Ltmp4-Ltmp3
	.long	Lset11
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end2:

_gen_rand_array.eh:
Lset12 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset12
Leh_frame_begin3:
Lset13 = Leh_frame_begin3-Leh_frame_common
	.long	Lset13
Ltmp974:
	.quad	Leh_func_begin3-Ltmp974
Lset14 = Leh_func_end3-Leh_func_begin3
	.quad	Lset14
	.byte	0
	.byte	4
Lset15 = Ltmp5-Leh_func_begin3
	.long	Lset15
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset16 = Ltmp6-Ltmp5
	.long	Lset16
	.byte	13
	.byte	6
	.byte	4
Lset17 = Ltmp7-Ltmp6
	.long	Lset17
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end3:

	.globl	_get_min_array_size32.eh
_get_min_array_size32.eh:
Lset18 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset18
Leh_frame_begin4:
Lset19 = Leh_frame_begin4-Leh_frame_common
	.long	Lset19
Ltmp975:
	.quad	Leh_func_begin4-Ltmp975
Lset20 = Leh_func_end4-Leh_func_begin4
	.quad	Lset20
	.byte	0
	.byte	4
Lset21 = Ltmp8-Leh_func_begin4
	.long	Lset21
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset22 = Ltmp9-Ltmp8
	.long	Lset22
	.byte	13
	.byte	6
	.align	3
Leh_frame_end4:

	.globl	_get_min_array_size64.eh
_get_min_array_size64.eh:
Lset23 = Leh_frame_end5-Leh_frame_begin5
	.long	Lset23
Leh_frame_begin5:
Lset24 = Leh_frame_begin5-Leh_frame_common
	.long	Lset24
Ltmp976:
	.quad	Leh_func_begin5-Ltmp976
Lset25 = Leh_func_end5-Leh_func_begin5
	.quad	Lset25
	.byte	0
	.byte	4
Lset26 = Ltmp10-Leh_func_begin5
	.long	Lset26
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset27 = Ltmp11-Ltmp10
	.long	Lset27
	.byte	13
	.byte	6
	.align	3
Leh_frame_end5:

	.globl	_init_gen_rand.eh
_init_gen_rand.eh:
Lset28 = Leh_frame_end6-Leh_frame_begin6
	.long	Lset28
Leh_frame_begin6:
Lset29 = Leh_frame_begin6-Leh_frame_common
	.long	Lset29
Ltmp977:
	.quad	Leh_func_begin6-Ltmp977
Lset30 = Leh_func_end6-Leh_func_begin6
	.quad	Lset30
	.byte	0
	.byte	4
Lset31 = Ltmp12-Leh_func_begin6
	.long	Lset31
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset32 = Ltmp13-Ltmp12
	.long	Lset32
	.byte	13
	.byte	6
	.align	3
Leh_frame_end6:

	.globl	_minihash_function.eh
_minihash_function.eh:
Lset33 = Leh_frame_end7-Leh_frame_begin7
	.long	Lset33
Leh_frame_begin7:
Lset34 = Leh_frame_begin7-Leh_frame_common
	.long	Lset34
Ltmp978:
	.quad	Leh_func_begin7-Ltmp978
Lset35 = Leh_func_end7-Leh_func_begin7
	.quad	Lset35
	.byte	0
	.byte	4
Lset36 = Ltmp14-Leh_func_begin7
	.long	Lset36
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset37 = Ltmp15-Ltmp14
	.long	Lset37
	.byte	13
	.byte	6
	.align	3
Leh_frame_end7:

	.globl	_minihash_each.eh
_minihash_each.eh:
Lset38 = Leh_frame_end8-Leh_frame_begin8
	.long	Lset38
Leh_frame_begin8:
Lset39 = Leh_frame_begin8-Leh_frame_common
	.long	Lset39
Ltmp979:
	.quad	Leh_func_begin8-Ltmp979
Lset40 = Leh_func_end8-Leh_func_begin8
	.quad	Lset40
	.byte	0
	.byte	4
Lset41 = Ltmp16-Leh_func_begin8
	.long	Lset41
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset42 = Ltmp17-Ltmp16
	.long	Lset42
	.byte	13
	.byte	6
	.byte	4
Lset43 = Ltmp18-Ltmp17
	.long	Lset43
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end8:

	.globl	_obj_eq.eh
_obj_eq.eh:
Lset44 = Leh_frame_end9-Leh_frame_begin9
	.long	Lset44
Leh_frame_begin9:
Lset45 = Leh_frame_begin9-Leh_frame_common
	.long	Lset45
Ltmp980:
	.quad	Leh_func_begin9-Ltmp980
Lset46 = Leh_func_end9-Leh_func_begin9
	.quad	Lset46
	.byte	0
	.byte	4
Lset47 = Ltmp19-Leh_func_begin9
	.long	Lset47
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset48 = Ltmp20-Ltmp19
	.long	Lset48
	.byte	13
	.byte	6
	.align	3
Leh_frame_end9:

	.globl	_smpObject_clear.eh
_smpObject_clear.eh:
Lset49 = Leh_frame_end10-Leh_frame_begin10
	.long	Lset49
Leh_frame_begin10:
Lset50 = Leh_frame_begin10-Leh_frame_common
	.long	Lset50
Ltmp981:
	.quad	Leh_func_begin10-Ltmp981
Lset51 = Leh_func_end10-Leh_func_begin10
	.quad	Lset51
	.byte	0
	.byte	4
Lset52 = Ltmp21-Leh_func_begin10
	.long	Lset52
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset53 = Ltmp22-Ltmp21
	.long	Lset53
	.byte	13
	.byte	6
	.align	3
Leh_frame_end10:

	.globl	_smpObject_instancep_c.eh
_smpObject_instancep_c.eh:
Lset54 = Leh_frame_end11-Leh_frame_begin11
	.long	Lset54
Leh_frame_begin11:
Lset55 = Leh_frame_begin11-Leh_frame_common
	.long	Lset55
Ltmp982:
	.quad	Leh_func_begin11-Ltmp982
Lset56 = Leh_func_end11-Leh_func_begin11
	.quad	Lset56
	.byte	0
	.byte	4
Lset57 = Ltmp23-Leh_func_begin11
	.long	Lset57
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset58 = Ltmp24-Ltmp23
	.long	Lset58
	.byte	13
	.byte	6
	.byte	4
Lset59 = Ltmp25-Ltmp24
	.long	Lset59
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end11:

	.globl	_smpObject_instancep_cint.eh
_smpObject_instancep_cint.eh:
Lset60 = Leh_frame_end12-Leh_frame_begin12
	.long	Lset60
Leh_frame_begin12:
Lset61 = Leh_frame_begin12-Leh_frame_common
	.long	Lset61
Ltmp983:
	.quad	Leh_func_begin12-Ltmp983
Lset62 = Leh_func_end12-Leh_func_begin12
	.quad	Lset62
	.byte	0
	.byte	4
Lset63 = Ltmp26-Leh_func_begin12
	.long	Lset63
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset64 = Ltmp27-Ltmp26
	.long	Lset64
	.byte	13
	.byte	6
	.byte	4
Lset65 = Ltmp28-Ltmp27
	.long	Lset65
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end12:

	.globl	_test_init.eh
_test_init.eh:
Lset66 = Leh_frame_end13-Leh_frame_begin13
	.long	Lset66
Leh_frame_begin13:
Lset67 = Leh_frame_begin13-Leh_frame_common
	.long	Lset67
Ltmp984:
	.quad	Leh_func_begin13-Ltmp984
Lset68 = Leh_func_end13-Leh_func_begin13
	.quad	Lset68
	.byte	0
	.byte	4
Lset69 = Ltmp29-Leh_func_begin13
	.long	Lset69
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset70 = Ltmp30-Ltmp29
	.long	Lset70
	.byte	13
	.byte	6
	.align	3
Leh_frame_end13:

	.globl	_is_power_of_2.eh
_is_power_of_2.eh:
Lset71 = Leh_frame_end14-Leh_frame_begin14
	.long	Lset71
Leh_frame_begin14:
Lset72 = Leh_frame_begin14-Leh_frame_common
	.long	Lset72
Ltmp985:
	.quad	Leh_func_begin14-Ltmp985
Lset73 = Leh_func_end14-Leh_func_begin14
	.quad	Lset73
	.byte	0
	.byte	4
Lset74 = Ltmp31-Leh_func_begin14
	.long	Lset74
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset75 = Ltmp32-Ltmp31
	.long	Lset75
	.byte	13
	.byte	6
	.align	3
Leh_frame_end14:

	.globl	_next_power_of_2.eh
_next_power_of_2.eh:
Lset76 = Leh_frame_end15-Leh_frame_begin15
	.long	Lset76
Leh_frame_begin15:
Lset77 = Leh_frame_begin15-Leh_frame_common
	.long	Lset77
Ltmp986:
	.quad	Leh_func_begin15-Ltmp986
Lset78 = Leh_func_end15-Leh_func_begin15
	.quad	Lset78
	.byte	0
	.byte	4
Lset79 = Ltmp33-Leh_func_begin15
	.long	Lset79
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset80 = Ltmp34-Ltmp33
	.long	Lset80
	.byte	13
	.byte	6
	.align	3
Leh_frame_end15:

	.globl	_smpArray_reverse_now.eh
_smpArray_reverse_now.eh:
Lset81 = Leh_frame_end16-Leh_frame_begin16
	.long	Lset81
Leh_frame_begin16:
Lset82 = Leh_frame_begin16-Leh_frame_common
	.long	Lset82
Ltmp987:
	.quad	Leh_func_begin16-Ltmp987
Lset83 = Leh_func_end16-Leh_func_begin16
	.quad	Lset83
	.byte	0
	.byte	4
Lset84 = Ltmp35-Leh_func_begin16
	.long	Lset84
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset85 = Ltmp36-Ltmp35
	.long	Lset85
	.byte	13
	.byte	6
	.align	3
Leh_frame_end16:

	.globl	_smpArray_to_a.eh
_smpArray_to_a.eh:
Lset86 = Leh_frame_end17-Leh_frame_begin17
	.long	Lset86
Leh_frame_begin17:
Lset87 = Leh_frame_begin17-Leh_frame_common
	.long	Lset87
Ltmp988:
	.quad	Leh_func_begin17-Ltmp988
Lset88 = Leh_func_end17-Leh_func_begin17
	.quad	Lset88
	.byte	0
	.byte	4
Lset89 = Ltmp37-Leh_func_begin17
	.long	Lset89
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset90 = Ltmp38-Ltmp37
	.long	Lset90
	.byte	13
	.byte	6
	.align	3
Leh_frame_end17:

	.globl	_smpBool_init.eh
_smpBool_init.eh:
Lset91 = Leh_frame_end18-Leh_frame_begin18
	.long	Lset91
Leh_frame_begin18:
Lset92 = Leh_frame_begin18-Leh_frame_common
	.long	Lset92
Ltmp989:
	.quad	Leh_func_begin18-Ltmp989
Lset93 = Leh_func_end18-Leh_func_begin18
	.quad	Lset93
	.byte	0
	.byte	4
Lset94 = Ltmp39-Leh_func_begin18
	.long	Lset94
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset95 = Ltmp40-Ltmp39
	.long	Lset95
	.byte	13
	.byte	6
	.align	3
Leh_frame_end18:

	.globl	_smpBool_to_cint.eh
_smpBool_to_cint.eh:
Lset96 = Leh_frame_end19-Leh_frame_begin19
	.long	Lset96
Leh_frame_begin19:
Lset97 = Leh_frame_begin19-Leh_frame_common
	.long	Lset97
Ltmp990:
	.quad	Leh_func_begin19-Ltmp990
Lset98 = Leh_func_end19-Leh_func_begin19
	.quad	Lset98
	.byte	0
	.byte	4
Lset99 = Ltmp41-Leh_func_begin19
	.long	Lset99
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset100 = Ltmp42-Ltmp41
	.long	Lset100
	.byte	13
	.byte	6
	.align	3
Leh_frame_end19:

	.globl	_smpObject_truep_c.eh
_smpObject_truep_c.eh:
Lset101 = Leh_frame_end20-Leh_frame_begin20
	.long	Lset101
Leh_frame_begin20:
Lset102 = Leh_frame_begin20-Leh_frame_common
	.long	Lset102
Ltmp991:
	.quad	Leh_func_begin20-Ltmp991
Lset103 = Leh_func_end20-Leh_func_begin20
	.quad	Lset103
	.byte	0
	.byte	4
Lset104 = Ltmp43-Leh_func_begin20
	.long	Lset104
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset105 = Ltmp44-Ltmp43
	.long	Lset105
	.byte	13
	.byte	6
	.align	3
Leh_frame_end20:

	.globl	_smpObject_truep.eh
_smpObject_truep.eh:
Lset106 = Leh_frame_end21-Leh_frame_begin21
	.long	Lset106
Leh_frame_begin21:
Lset107 = Leh_frame_begin21-Leh_frame_common
	.long	Lset107
Ltmp992:
	.quad	Leh_func_begin21-Ltmp992
Lset108 = Leh_func_end21-Leh_func_begin21
	.quad	Lset108
	.byte	0
	.byte	4
Lset109 = Ltmp45-Leh_func_begin21
	.long	Lset109
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset110 = Ltmp46-Ltmp45
	.long	Lset110
	.byte	13
	.byte	6
	.align	3
Leh_frame_end21:

	.globl	_smpBool_and.eh
_smpBool_and.eh:
Lset111 = Leh_frame_end22-Leh_frame_begin22
	.long	Lset111
Leh_frame_begin22:
Lset112 = Leh_frame_begin22-Leh_frame_common
	.long	Lset112
Ltmp993:
	.quad	Leh_func_begin22-Ltmp993
Lset113 = Leh_func_end22-Leh_func_begin22
	.quad	Lset113
	.byte	0
	.byte	4
Lset114 = Ltmp47-Leh_func_begin22
	.long	Lset114
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset115 = Ltmp48-Ltmp47
	.long	Lset115
	.byte	13
	.byte	6
	.align	3
Leh_frame_end22:

	.globl	_smpBool_not.eh
_smpBool_not.eh:
Lset116 = Leh_frame_end23-Leh_frame_begin23
	.long	Lset116
Leh_frame_begin23:
Lset117 = Leh_frame_begin23-Leh_frame_common
	.long	Lset117
Ltmp994:
	.quad	Leh_func_begin23-Ltmp994
Lset118 = Leh_func_end23-Leh_func_begin23
	.quad	Lset118
	.byte	0
	.byte	4
Lset119 = Ltmp49-Leh_func_begin23
	.long	Lset119
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset120 = Ltmp50-Ltmp49
	.long	Lset120
	.byte	13
	.byte	6
	.align	3
Leh_frame_end23:

	.globl	_smpBool_or.eh
_smpBool_or.eh:
Lset121 = Leh_frame_end24-Leh_frame_begin24
	.long	Lset121
Leh_frame_begin24:
Lset122 = Leh_frame_begin24-Leh_frame_common
	.long	Lset122
Ltmp995:
	.quad	Leh_func_begin24-Ltmp995
Lset123 = Leh_func_end24-Leh_func_begin24
	.quad	Lset123
	.byte	0
	.byte	4
Lset124 = Ltmp51-Leh_func_begin24
	.long	Lset124
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset125 = Ltmp52-Ltmp51
	.long	Lset125
	.byte	13
	.byte	6
	.align	3
Leh_frame_end24:

	.globl	_smpBool_xor.eh
_smpBool_xor.eh:
Lset126 = Leh_frame_end25-Leh_frame_begin25
	.long	Lset126
Leh_frame_begin25:
Lset127 = Leh_frame_begin25-Leh_frame_common
	.long	Lset127
Ltmp996:
	.quad	Leh_func_begin25-Ltmp996
Lset128 = Leh_func_end25-Leh_func_begin25
	.quad	Lset128
	.byte	0
	.byte	4
Lset129 = Ltmp53-Leh_func_begin25
	.long	Lset129
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset130 = Ltmp54-Ltmp53
	.long	Lset130
	.byte	13
	.byte	6
	.align	3
Leh_frame_end25:

	.globl	_smpGlobal_list.eh
_smpGlobal_list.eh:
Lset131 = Leh_frame_end26-Leh_frame_begin26
	.long	Lset131
Leh_frame_begin26:
Lset132 = Leh_frame_begin26-Leh_frame_common
	.long	Lset132
Ltmp997:
	.quad	Leh_func_begin26-Ltmp997
Lset133 = Leh_func_end26-Leh_func_begin26
	.quad	Lset133
	.byte	0
	.byte	4
Lset134 = Ltmp55-Leh_func_begin26
	.long	Lset134
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset135 = Ltmp56-Ltmp55
	.long	Lset135
	.byte	13
	.byte	6
	.align	3
Leh_frame_end26:

	.globl	_smpList_car.eh
_smpList_car.eh:
Lset136 = Leh_frame_end27-Leh_frame_begin27
	.long	Lset136
Leh_frame_begin27:
Lset137 = Leh_frame_begin27-Leh_frame_common
	.long	Lset137
Ltmp998:
	.quad	Leh_func_begin27-Ltmp998
Lset138 = Leh_func_end27-Leh_func_begin27
	.quad	Lset138
	.byte	0
	.byte	4
Lset139 = Ltmp57-Leh_func_begin27
	.long	Lset139
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset140 = Ltmp58-Ltmp57
	.long	Lset140
	.byte	13
	.byte	6
	.align	3
Leh_frame_end27:

	.globl	_smpList_cdr.eh
_smpList_cdr.eh:
Lset141 = Leh_frame_end28-Leh_frame_begin28
	.long	Lset141
Leh_frame_begin28:
Lset142 = Leh_frame_begin28-Leh_frame_common
	.long	Lset142
Ltmp999:
	.quad	Leh_func_begin28-Ltmp999
Lset143 = Leh_func_end28-Leh_func_begin28
	.quad	Lset143
	.byte	0
	.byte	4
Lset144 = Ltmp59-Leh_func_begin28
	.long	Lset144
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset145 = Ltmp60-Ltmp59
	.long	Lset145
	.byte	13
	.byte	6
	.align	3
Leh_frame_end28:

	.globl	_smpList_emptyp.eh
_smpList_emptyp.eh:
Lset146 = Leh_frame_end29-Leh_frame_begin29
	.long	Lset146
Leh_frame_begin29:
Lset147 = Leh_frame_begin29-Leh_frame_common
	.long	Lset147
Ltmp1000:
	.quad	Leh_func_begin29-Ltmp1000
Lset148 = Leh_func_end29-Leh_func_begin29
	.quad	Lset148
	.byte	0
	.byte	4
Lset149 = Ltmp61-Leh_func_begin29
	.long	Lset149
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset150 = Ltmp62-Ltmp61
	.long	Lset150
	.byte	13
	.byte	6
	.align	3
Leh_frame_end29:

	.globl	_smpList_length_clong.eh
_smpList_length_clong.eh:
Lset151 = Leh_frame_end30-Leh_frame_begin30
	.long	Lset151
Leh_frame_begin30:
Lset152 = Leh_frame_begin30-Leh_frame_common
	.long	Lset152
Ltmp1001:
	.quad	Leh_func_begin30-Ltmp1001
Lset153 = Leh_func_end30-Leh_func_begin30
	.quad	Lset153
	.byte	0
	.byte	4
Lset154 = Ltmp63-Leh_func_begin30
	.long	Lset154
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset155 = Ltmp64-Ltmp63
	.long	Lset155
	.byte	13
	.byte	6
	.align	3
Leh_frame_end30:

	.globl	_smpList_reverse_now_attempt.eh
_smpList_reverse_now_attempt.eh:
Lset156 = Leh_frame_end31-Leh_frame_begin31
	.long	Lset156
Leh_frame_begin31:
Lset157 = Leh_frame_begin31-Leh_frame_common
	.long	Lset157
Ltmp1002:
	.quad	Leh_func_begin31-Ltmp1002
Lset158 = Leh_func_end31-Leh_func_begin31
	.quad	Lset158
	.byte	0
	.byte	4
Lset159 = Ltmp65-Leh_func_begin31
	.long	Lset159
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset160 = Ltmp66-Ltmp65
	.long	Lset160
	.byte	13
	.byte	6
	.align	3
Leh_frame_end31:

	.globl	_smpList_to_list.eh
_smpList_to_list.eh:
Lset161 = Leh_frame_end32-Leh_frame_begin32
	.long	Lset161
Leh_frame_begin32:
Lset162 = Leh_frame_begin32-Leh_frame_common
	.long	Lset162
Ltmp1003:
	.quad	Leh_func_begin32-Ltmp1003
Lset163 = Leh_func_end32-Leh_func_begin32
	.quad	Lset163
	.byte	0
	.byte	4
Lset164 = Ltmp67-Leh_func_begin32
	.long	Lset164
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset165 = Ltmp68-Ltmp67
	.long	Lset165
	.byte	13
	.byte	6
	.align	3
Leh_frame_end32:

	.globl	_smpListBuffer_to_list.eh
_smpListBuffer_to_list.eh:
Lset166 = Leh_frame_end33-Leh_frame_begin33
	.long	Lset166
Leh_frame_begin33:
Lset167 = Leh_frame_begin33-Leh_frame_common
	.long	Lset167
Ltmp1004:
	.quad	Leh_func_begin33-Ltmp1004
Lset168 = Leh_func_end33-Leh_func_begin33
	.quad	Lset168
	.byte	0
	.byte	4
Lset169 = Ltmp69-Leh_func_begin33
	.long	Lset169
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset170 = Ltmp70-Ltmp69
	.long	Lset170
	.byte	13
	.byte	6
	.align	3
Leh_frame_end33:

	.globl	_smpNil_car.eh
_smpNil_car.eh:
Lset171 = Leh_frame_end34-Leh_frame_begin34
	.long	Lset171
Leh_frame_begin34:
Lset172 = Leh_frame_begin34-Leh_frame_common
	.long	Lset172
Ltmp1005:
	.quad	Leh_func_begin34-Ltmp1005
Lset173 = Leh_func_end34-Leh_func_begin34
	.quad	Lset173
	.byte	0
	.byte	4
Lset174 = Ltmp71-Leh_func_begin34
	.long	Lset174
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset175 = Ltmp72-Ltmp71
	.long	Lset175
	.byte	13
	.byte	6
	.align	3
Leh_frame_end34:

	.globl	_smpNil_cdr.eh
_smpNil_cdr.eh:
Lset176 = Leh_frame_end35-Leh_frame_begin35
	.long	Lset176
Leh_frame_begin35:
Lset177 = Leh_frame_begin35-Leh_frame_common
	.long	Lset177
Ltmp1006:
	.quad	Leh_func_begin35-Ltmp1006
Lset178 = Leh_func_end35-Leh_func_begin35
	.quad	Lset178
	.byte	0
	.byte	4
Lset179 = Ltmp73-Leh_func_begin35
	.long	Lset179
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset180 = Ltmp74-Ltmp73
	.long	Lset180
	.byte	13
	.byte	6
	.align	3
Leh_frame_end35:

	.globl	_smpNil_copy.eh
_smpNil_copy.eh:
Lset181 = Leh_frame_end36-Leh_frame_begin36
	.long	Lset181
Leh_frame_begin36:
Lset182 = Leh_frame_begin36-Leh_frame_common
	.long	Lset182
Ltmp1007:
	.quad	Leh_func_begin36-Ltmp1007
Lset183 = Leh_func_end36-Leh_func_begin36
	.quad	Lset183
	.byte	0
	.byte	4
Lset184 = Ltmp75-Leh_func_begin36
	.long	Lset184
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset185 = Ltmp76-Ltmp75
	.long	Lset185
	.byte	13
	.byte	6
	.align	3
Leh_frame_end36:

	.globl	_smpNil_each.eh
_smpNil_each.eh:
Lset186 = Leh_frame_end37-Leh_frame_begin37
	.long	Lset186
Leh_frame_begin37:
Lset187 = Leh_frame_begin37-Leh_frame_common
	.long	Lset187
Ltmp1008:
	.quad	Leh_func_begin37-Ltmp1008
Lset188 = Leh_func_end37-Leh_func_begin37
	.quad	Lset188
	.byte	0
	.byte	4
Lset189 = Ltmp77-Leh_func_begin37
	.long	Lset189
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset190 = Ltmp78-Ltmp77
	.long	Lset190
	.byte	13
	.byte	6
	.align	3
Leh_frame_end37:

	.globl	_smpNil_emptyp.eh
_smpNil_emptyp.eh:
Lset191 = Leh_frame_end38-Leh_frame_begin38
	.long	Lset191
Leh_frame_begin38:
Lset192 = Leh_frame_begin38-Leh_frame_common
	.long	Lset192
Ltmp1009:
	.quad	Leh_func_begin38-Ltmp1009
Lset193 = Leh_func_end38-Leh_func_begin38
	.quad	Lset193
	.byte	0
	.byte	4
Lset194 = Ltmp79-Leh_func_begin38
	.long	Lset194
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset195 = Ltmp80-Ltmp79
	.long	Lset195
	.byte	13
	.byte	6
	.align	3
Leh_frame_end38:

	.globl	_smpNil_equalp.eh
_smpNil_equalp.eh:
Lset196 = Leh_frame_end39-Leh_frame_begin39
	.long	Lset196
Leh_frame_begin39:
Lset197 = Leh_frame_begin39-Leh_frame_common
	.long	Lset197
Ltmp1010:
	.quad	Leh_func_begin39-Ltmp1010
Lset198 = Leh_func_end39-Leh_func_begin39
	.quad	Lset198
	.byte	0
	.byte	4
Lset199 = Ltmp81-Leh_func_begin39
	.long	Lset199
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset200 = Ltmp82-Ltmp81
	.long	Lset200
	.byte	13
	.byte	6
	.align	3
Leh_frame_end39:

	.globl	_smpNil_reverse.eh
_smpNil_reverse.eh:
Lset201 = Leh_frame_end40-Leh_frame_begin40
	.long	Lset201
Leh_frame_begin40:
Lset202 = Leh_frame_begin40-Leh_frame_common
	.long	Lset202
Ltmp1011:
	.quad	Leh_func_begin40-Ltmp1011
Lset203 = Leh_func_end40-Leh_func_begin40
	.quad	Lset203
	.byte	0
	.byte	4
Lset204 = Ltmp83-Leh_func_begin40
	.long	Lset204
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset205 = Ltmp84-Ltmp83
	.long	Lset205
	.byte	13
	.byte	6
	.align	3
Leh_frame_end40:

	.globl	_smpNil_length.eh
_smpNil_length.eh:
Lset206 = Leh_frame_end41-Leh_frame_begin41
	.long	Lset206
Leh_frame_begin41:
Lset207 = Leh_frame_begin41-Leh_frame_common
	.long	Lset207
Ltmp1012:
	.quad	Leh_func_begin41-Ltmp1012
Lset208 = Leh_func_end41-Leh_func_begin41
	.quad	Lset208
	.byte	0
	.byte	4
Lset209 = Ltmp85-Leh_func_begin41
	.long	Lset209
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset210 = Ltmp86-Ltmp85
	.long	Lset210
	.byte	13
	.byte	6
	.align	3
Leh_frame_end41:

	.globl	_smpNil_map.eh
_smpNil_map.eh:
Lset211 = Leh_frame_end42-Leh_frame_begin42
	.long	Lset211
Leh_frame_begin42:
Lset212 = Leh_frame_begin42-Leh_frame_common
	.long	Lset212
Ltmp1013:
	.quad	Leh_func_begin42-Ltmp1013
Lset213 = Leh_func_end42-Leh_func_begin42
	.quad	Lset213
	.byte	0
	.byte	4
Lset214 = Ltmp87-Leh_func_begin42
	.long	Lset214
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset215 = Ltmp88-Ltmp87
	.long	Lset215
	.byte	13
	.byte	6
	.align	3
Leh_frame_end42:

	.globl	_smpNil_reduce.eh
_smpNil_reduce.eh:
Lset216 = Leh_frame_end43-Leh_frame_begin43
	.long	Lset216
Leh_frame_begin43:
Lset217 = Leh_frame_begin43-Leh_frame_common
	.long	Lset217
Ltmp1014:
	.quad	Leh_func_begin43-Ltmp1014
Lset218 = Leh_func_end43-Leh_func_begin43
	.quad	Lset218
	.byte	0
	.byte	4
Lset219 = Ltmp89-Leh_func_begin43
	.long	Lset219
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset220 = Ltmp90-Ltmp89
	.long	Lset220
	.byte	13
	.byte	6
	.align	3
Leh_frame_end43:

	.globl	_smpPair_car.eh
_smpPair_car.eh:
Lset221 = Leh_frame_end44-Leh_frame_begin44
	.long	Lset221
Leh_frame_begin44:
Lset222 = Leh_frame_begin44-Leh_frame_common
	.long	Lset222
Ltmp1015:
	.quad	Leh_func_begin44-Ltmp1015
Lset223 = Leh_func_end44-Leh_func_begin44
	.quad	Lset223
	.byte	0
	.byte	4
Lset224 = Ltmp91-Leh_func_begin44
	.long	Lset224
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset225 = Ltmp92-Ltmp91
	.long	Lset225
	.byte	13
	.byte	6
	.align	3
Leh_frame_end44:

	.globl	_smpPair_cdr.eh
_smpPair_cdr.eh:
Lset226 = Leh_frame_end45-Leh_frame_begin45
	.long	Lset226
Leh_frame_begin45:
Lset227 = Leh_frame_begin45-Leh_frame_common
	.long	Lset227
Ltmp1016:
	.quad	Leh_func_begin45-Ltmp1016
Lset228 = Leh_func_end45-Leh_func_begin45
	.quad	Lset228
	.byte	0
	.byte	4
Lset229 = Ltmp93-Leh_func_begin45
	.long	Lset229
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset230 = Ltmp94-Ltmp93
	.long	Lset230
	.byte	13
	.byte	6
	.align	3
Leh_frame_end45:

	.globl	_smpPair_set_car_now.eh
_smpPair_set_car_now.eh:
Lset231 = Leh_frame_end46-Leh_frame_begin46
	.long	Lset231
Leh_frame_begin46:
Lset232 = Leh_frame_begin46-Leh_frame_common
	.long	Lset232
Ltmp1017:
	.quad	Leh_func_begin46-Ltmp1017
Lset233 = Leh_func_end46-Leh_func_begin46
	.quad	Lset233
	.byte	0
	.byte	4
Lset234 = Ltmp95-Leh_func_begin46
	.long	Lset234
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset235 = Ltmp96-Ltmp95
	.long	Lset235
	.byte	13
	.byte	6
	.align	3
Leh_frame_end46:

	.globl	_smpString_to_cstr.eh
_smpString_to_cstr.eh:
Lset236 = Leh_frame_end47-Leh_frame_begin47
	.long	Lset236
Leh_frame_begin47:
Lset237 = Leh_frame_begin47-Leh_frame_common
	.long	Lset237
Ltmp1018:
	.quad	Leh_func_begin47-Ltmp1018
Lset238 = Leh_func_end47-Leh_func_begin47
	.quad	Lset238
	.byte	0
	.byte	4
Lset239 = Ltmp97-Leh_func_begin47
	.long	Lset239
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset240 = Ltmp98-Ltmp97
	.long	Lset240
	.byte	13
	.byte	6
	.align	3
Leh_frame_end47:

	.globl	_smpString_to_s.eh
_smpString_to_s.eh:
Lset241 = Leh_frame_end48-Leh_frame_begin48
	.long	Lset241
Leh_frame_begin48:
Lset242 = Leh_frame_begin48-Leh_frame_common
	.long	Lset242
Ltmp1019:
	.quad	Leh_func_begin48-Ltmp1019
Lset243 = Leh_func_end48-Leh_func_begin48
	.quad	Lset243
	.byte	0
	.byte	4
Lset244 = Ltmp99-Leh_func_begin48
	.long	Lset244
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset245 = Ltmp100-Ltmp99
	.long	Lset245
	.byte	13
	.byte	6
	.align	3
Leh_frame_end48:

	.globl	_smpSymbol_to_cstr.eh
_smpSymbol_to_cstr.eh:
Lset246 = Leh_frame_end49-Leh_frame_begin49
	.long	Lset246
Leh_frame_begin49:
Lset247 = Leh_frame_begin49-Leh_frame_common
	.long	Lset247
Ltmp1020:
	.quad	Leh_func_begin49-Ltmp1020
Lset248 = Leh_func_end49-Leh_func_begin49
	.quad	Lset248
	.byte	0
	.byte	4
Lset249 = Ltmp101-Leh_func_begin49
	.long	Lset249
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset250 = Ltmp102-Ltmp101
	.long	Lset250
	.byte	13
	.byte	6
	.align	3
Leh_frame_end49:

	.globl	_smpThrown_get_first_value.eh
_smpThrown_get_first_value.eh:
Lset251 = Leh_frame_end50-Leh_frame_begin50
	.long	Lset251
Leh_frame_begin50:
Lset252 = Leh_frame_begin50-Leh_frame_common
	.long	Lset252
Ltmp1021:
	.quad	Leh_func_begin50-Ltmp1021
Lset253 = Leh_func_end50-Leh_func_begin50
	.quad	Lset253
	.byte	0
	.byte	4
Lset254 = Ltmp103-Leh_func_begin50
	.long	Lset254
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset255 = Ltmp104-Ltmp103
	.long	Lset255
	.byte	13
	.byte	6
	.align	3
Leh_frame_end50:

	.globl	_smp_should_breakp_c.eh
_smp_should_breakp_c.eh:
Lset256 = Leh_frame_end51-Leh_frame_begin51
	.long	Lset256
Leh_frame_begin51:
Lset257 = Leh_frame_begin51-Leh_frame_common
	.long	Lset257
Ltmp1022:
	.quad	Leh_func_begin51-Ltmp1022
Lset258 = Leh_func_end51-Leh_func_begin51
	.quad	Lset258
	.byte	0
	.byte	4
Lset259 = Ltmp105-Leh_func_begin51
	.long	Lset259
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset260 = Ltmp106-Ltmp105
	.long	Lset260
	.byte	13
	.byte	6
	.align	3
Leh_frame_end51:

	.globl	_smp_should_returnp_c.eh
_smp_should_returnp_c.eh:
Lset261 = Leh_frame_end52-Leh_frame_begin52
	.long	Lset261
Leh_frame_begin52:
Lset262 = Leh_frame_begin52-Leh_frame_common
	.long	Lset262
Ltmp1023:
	.quad	Leh_func_begin52-Ltmp1023
Lset263 = Leh_func_end52-Leh_func_begin52
	.quad	Lset263
	.byte	0
	.byte	4
Lset264 = Ltmp107-Leh_func_begin52
	.long	Lset264
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset265 = Ltmp108-Ltmp107
	.long	Lset265
	.byte	13
	.byte	6
	.align	3
Leh_frame_end52:

	.globl	_smp_thrown_exceptionp_c.eh
_smp_thrown_exceptionp_c.eh:
Lset266 = Leh_frame_end53-Leh_frame_begin53
	.long	Lset266
Leh_frame_begin53:
Lset267 = Leh_frame_begin53-Leh_frame_common
	.long	Lset267
Ltmp1024:
	.quad	Leh_func_begin53-Ltmp1024
Lset268 = Leh_func_end53-Leh_func_begin53
	.quad	Lset268
	.byte	0
	.byte	4
Lset269 = Ltmp109-Leh_func_begin53
	.long	Lset269
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset270 = Ltmp110-Ltmp109
	.long	Lset270
	.byte	13
	.byte	6
	.align	3
Leh_frame_end53:

	.globl	_smpType_relatedp.eh
_smpType_relatedp.eh:
Lset271 = Leh_frame_end54-Leh_frame_begin54
	.long	Lset271
Leh_frame_begin54:
Lset272 = Leh_frame_begin54-Leh_frame_common
	.long	Lset272
Ltmp1025:
	.quad	Leh_func_begin54-Ltmp1025
Lset273 = Leh_func_end54-Leh_func_begin54
	.quad	Lset273
	.byte	0
	.byte	4
Lset274 = Ltmp111-Leh_func_begin54
	.long	Lset274
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset275 = Ltmp112-Ltmp111
	.long	Lset275
	.byte	13
	.byte	6
	.byte	4
Lset276 = Ltmp113-Ltmp112
	.long	Lset276
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end54:

	.globl	_smpType_equalp.eh
_smpType_equalp.eh:
Lset277 = Leh_frame_end55-Leh_frame_begin55
	.long	Lset277
Leh_frame_begin55:
Lset278 = Leh_frame_begin55-Leh_frame_common
	.long	Lset278
Ltmp1026:
	.quad	Leh_func_begin55-Ltmp1026
Lset279 = Leh_func_end55-Leh_func_begin55
	.quad	Lset279
	.byte	0
	.byte	4
Lset280 = Ltmp114-Leh_func_begin55
	.long	Lset280
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset281 = Ltmp115-Ltmp114
	.long	Lset281
	.byte	13
	.byte	6
	.byte	4
Lset282 = Ltmp116-Ltmp115
	.long	Lset282
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end55:

	.globl	_smpThrown_contains_namep.eh
_smpThrown_contains_namep.eh:
Lset283 = Leh_frame_end56-Leh_frame_begin56
	.long	Lset283
Leh_frame_begin56:
Lset284 = Leh_frame_begin56-Leh_frame_common
	.long	Lset284
Ltmp1027:
	.quad	Leh_func_begin56-Ltmp1027
Lset285 = Leh_func_end56-Leh_func_begin56
	.quad	Lset285
	.byte	0
	.byte	4
Lset286 = Ltmp117-Leh_func_begin56
	.long	Lset286
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset287 = Ltmp118-Ltmp117
	.long	Lset287
	.byte	13
	.byte	6
	.byte	4
Lset288 = Ltmp119-Ltmp118
	.long	Lset288
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end56:

	.globl	_smpString_equalp_cstr.eh
_smpString_equalp_cstr.eh:
Lset289 = Leh_frame_end57-Leh_frame_begin57
	.long	Lset289
Leh_frame_begin57:
Lset290 = Leh_frame_begin57-Leh_frame_common
	.long	Lset290
Ltmp1028:
	.quad	Leh_func_begin57-Ltmp1028
Lset291 = Leh_func_end57-Leh_func_begin57
	.quad	Lset291
	.byte	0
	.byte	4
Lset292 = Ltmp120-Leh_func_begin57
	.long	Lset292
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset293 = Ltmp121-Ltmp120
	.long	Lset293
	.byte	13
	.byte	6
	.align	3
Leh_frame_end57:

	.globl	_smpString_equalp.eh
_smpString_equalp.eh:
Lset294 = Leh_frame_end58-Leh_frame_begin58
	.long	Lset294
Leh_frame_begin58:
Lset295 = Leh_frame_begin58-Leh_frame_common
	.long	Lset295
Ltmp1029:
	.quad	Leh_func_begin58-Ltmp1029
Lset296 = Leh_func_end58-Leh_func_begin58
	.quad	Lset296
	.byte	0
	.byte	4
Lset297 = Ltmp122-Leh_func_begin58
	.long	Lset297
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset298 = Ltmp123-Ltmp122
	.long	Lset298
	.byte	13
	.byte	6
	.byte	4
Lset299 = Ltmp124-Ltmp123
	.long	Lset299
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end58:

	.globl	_smpObject_instancep_cstr.eh
_smpObject_instancep_cstr.eh:
Lset300 = Leh_frame_end59-Leh_frame_begin59
	.long	Lset300
Leh_frame_begin59:
Lset301 = Leh_frame_begin59-Leh_frame_common
	.long	Lset301
Ltmp1030:
	.quad	Leh_func_begin59-Ltmp1030
Lset302 = Leh_func_end59-Leh_func_begin59
	.quad	Lset302
	.byte	0
	.byte	4
Lset303 = Ltmp125-Leh_func_begin59
	.long	Lset303
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset304 = Ltmp126-Ltmp125
	.long	Lset304
	.byte	13
	.byte	6
	.byte	4
Lset305 = Ltmp127-Ltmp126
	.long	Lset305
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end59:

	.globl	_obj_types_equalp.eh
_obj_types_equalp.eh:
Lset306 = Leh_frame_end60-Leh_frame_begin60
	.long	Lset306
Leh_frame_begin60:
Lset307 = Leh_frame_begin60-Leh_frame_common
	.long	Lset307
Ltmp1031:
	.quad	Leh_func_begin60-Ltmp1031
Lset308 = Leh_func_end60-Leh_func_begin60
	.quad	Lset308
	.byte	0
	.byte	4
Lset309 = Ltmp128-Leh_func_begin60
	.long	Lset309
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset310 = Ltmp129-Ltmp128
	.long	Lset310
	.byte	13
	.byte	6
	.align	3
Leh_frame_end60:

	.globl	_smpObject_types_equalp.eh
_smpObject_types_equalp.eh:
Lset311 = Leh_frame_end61-Leh_frame_begin61
	.long	Lset311
Leh_frame_begin61:
Lset312 = Leh_frame_begin61-Leh_frame_common
	.long	Lset312
Ltmp1032:
	.quad	Leh_func_begin61-Ltmp1032
Lset313 = Leh_func_end61-Leh_func_begin61
	.quad	Lset313
	.byte	0
	.byte	4
Lset314 = Ltmp130-Leh_func_begin61
	.long	Lset314
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset315 = Ltmp131-Ltmp130
	.long	Lset315
	.byte	13
	.byte	6
	.align	3
Leh_frame_end61:

	.globl	_minihash_containsp.eh
_minihash_containsp.eh:
Lset316 = Leh_frame_end62-Leh_frame_begin62
	.long	Lset316
Leh_frame_begin62:
Lset317 = Leh_frame_begin62-Leh_frame_common
	.long	Lset317
Ltmp1033:
	.quad	Leh_func_begin62-Ltmp1033
Lset318 = Leh_func_end62-Leh_func_begin62
	.quad	Lset318
	.byte	0
	.byte	4
Lset319 = Ltmp132-Leh_func_begin62
	.long	Lset319
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset320 = Ltmp133-Ltmp132
	.long	Lset320
	.byte	13
	.byte	6
	.byte	4
Lset321 = Ltmp134-Ltmp133
	.long	Lset321
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end62:

	.globl	_minihash_get.eh
_minihash_get.eh:
Lset322 = Leh_frame_end63-Leh_frame_begin63
	.long	Lset322
Leh_frame_begin63:
Lset323 = Leh_frame_begin63-Leh_frame_common
	.long	Lset323
Ltmp1034:
	.quad	Leh_func_begin63-Ltmp1034
Lset324 = Leh_func_end63-Leh_func_begin63
	.quad	Lset324
	.byte	0
	.byte	4
Lset325 = Ltmp135-Leh_func_begin63
	.long	Lset325
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset326 = Ltmp136-Ltmp135
	.long	Lset326
	.byte	13
	.byte	6
	.byte	4
Lset327 = Ltmp137-Ltmp136
	.long	Lset327
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end63:

	.globl	_scope_self.eh
_scope_self.eh:
Lset328 = Leh_frame_end64-Leh_frame_begin64
	.long	Lset328
Leh_frame_begin64:
Lset329 = Leh_frame_begin64-Leh_frame_common
	.long	Lset329
Ltmp1035:
	.quad	Leh_func_begin64-Ltmp1035
Lset330 = Leh_func_end64-Leh_func_begin64
	.quad	Lset330
	.byte	0
	.byte	4
Lset331 = Ltmp138-Leh_func_begin64
	.long	Lset331
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset332 = Ltmp139-Ltmp138
	.long	Lset332
	.byte	13
	.byte	6
	.byte	4
Lset333 = Ltmp140-Ltmp139
	.long	Lset333
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end64:

	.globl	_scope_get.eh
_scope_get.eh:
Lset334 = Leh_frame_end65-Leh_frame_begin65
	.long	Lset334
Leh_frame_begin65:
Lset335 = Leh_frame_begin65-Leh_frame_common
	.long	Lset335
Ltmp1036:
	.quad	Leh_func_begin65-Ltmp1036
Lset336 = Leh_func_end65-Leh_func_begin65
	.quad	Lset336
	.byte	0
	.byte	4
Lset337 = Ltmp141-Leh_func_begin65
	.long	Lset337
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset338 = Ltmp142-Ltmp141
	.long	Lset338
	.byte	13
	.byte	6
	.align	3
Leh_frame_end65:

	.globl	_smpObject_varcall.eh
_smpObject_varcall.eh:
Lset339 = Leh_frame_end66-Leh_frame_begin66
	.long	Lset339
Leh_frame_begin66:
Lset340 = Leh_frame_begin66-Leh_frame_common
	.long	Lset340
Ltmp1037:
	.quad	Leh_func_begin66-Ltmp1037
Lset341 = Leh_func_end66-Leh_func_begin66
	.quad	Lset341
	.byte	0
	.byte	4
Lset342 = Ltmp143-Leh_func_begin66
	.long	Lset342
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset343 = Ltmp144-Ltmp143
	.long	Lset343
	.byte	13
	.byte	6
	.align	3
Leh_frame_end66:

	.globl	_smp_getclass.eh
_smp_getclass.eh:
Lset344 = Leh_frame_end67-Leh_frame_begin67
	.long	Lset344
Leh_frame_begin67:
Lset345 = Leh_frame_begin67-Leh_frame_common
	.long	Lset345
Ltmp1038:
	.quad	Leh_func_begin67-Ltmp1038
Lset346 = Leh_func_end67-Leh_func_begin67
	.quad	Lset346
	.byte	0
	.byte	4
Lset347 = Ltmp145-Leh_func_begin67
	.long	Lset347
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset348 = Ltmp146-Ltmp145
	.long	Lset348
	.byte	13
	.byte	6
	.align	3
Leh_frame_end67:

	.globl	_smpCollection_create_class.eh
_smpCollection_create_class.eh:
Lset349 = Leh_frame_end68-Leh_frame_begin68
	.long	Lset349
Leh_frame_begin68:
Lset350 = Leh_frame_begin68-Leh_frame_common
	.long	Lset350
Ltmp1039:
	.quad	Leh_func_begin68-Ltmp1039
Lset351 = Leh_func_end68-Leh_func_begin68
	.quad	Lset351
	.byte	0
	.byte	4
Lset352 = Ltmp147-Leh_func_begin68
	.long	Lset352
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset353 = Ltmp148-Ltmp147
	.long	Lset353
	.byte	13
	.byte	6
	.align	3
Leh_frame_end68:

	.globl	_smpObject_type.eh
_smpObject_type.eh:
Lset354 = Leh_frame_end69-Leh_frame_begin69
	.long	Lset354
Leh_frame_begin69:
Lset355 = Leh_frame_begin69-Leh_frame_common
	.long	Lset355
Ltmp1040:
	.quad	Leh_func_begin69-Ltmp1040
Lset356 = Leh_func_end69-Leh_func_begin69
	.quad	Lset356
	.byte	0
	.byte	4
Lset357 = Ltmp149-Leh_func_begin69
	.long	Lset357
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset358 = Ltmp150-Ltmp149
	.long	Lset358
	.byte	13
	.byte	6
	.align	3
Leh_frame_end69:

	.globl	_smpObject_getclass.eh
_smpObject_getclass.eh:
Lset359 = Leh_frame_end70-Leh_frame_begin70
	.long	Lset359
Leh_frame_begin70:
Lset360 = Leh_frame_begin70-Leh_frame_common
	.long	Lset360
Ltmp1041:
	.quad	Leh_func_begin70-Ltmp1041
Lset361 = Leh_func_end70-Leh_func_begin70
	.quad	Lset361
	.byte	0
	.byte	4
Lset362 = Ltmp151-Leh_func_begin70
	.long	Lset362
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset363 = Ltmp152-Ltmp151
	.long	Lset363
	.byte	13
	.byte	6
	.align	3
Leh_frame_end70:

	.globl	_smpPair_set_cdr_now.eh
_smpPair_set_cdr_now.eh:
Lset364 = Leh_frame_end71-Leh_frame_begin71
	.long	Lset364
Leh_frame_begin71:
Lset365 = Leh_frame_begin71-Leh_frame_common
	.long	Lset365
Ltmp1042:
	.quad	Leh_func_begin71-Ltmp1042
Lset366 = Leh_func_end71-Leh_func_begin71
	.quad	Lset366
	.byte	0
	.byte	4
Lset367 = Ltmp153-Leh_func_begin71
	.long	Lset367
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset368 = Ltmp154-Ltmp153
	.long	Lset368
	.byte	13
	.byte	6
	.byte	4
Lset369 = Ltmp155-Ltmp154
	.long	Lset369
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end71:

	.globl	_smp_malloc_fun.eh
_smp_malloc_fun.eh:
Lset370 = Leh_frame_end72-Leh_frame_begin72
	.long	Lset370
Leh_frame_begin72:
Lset371 = Leh_frame_begin72-Leh_frame_common
	.long	Lset371
Ltmp1043:
	.quad	Leh_func_begin72-Ltmp1043
Lset372 = Leh_func_end72-Leh_func_begin72
	.quad	Lset372
	.byte	0
	.byte	4
Lset373 = Ltmp156-Leh_func_begin72
	.long	Lset373
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset374 = Ltmp157-Ltmp156
	.long	Lset374
	.byte	13
	.byte	6
	.align	3
Leh_frame_end72:

	.globl	_obj_init_str.eh
_obj_init_str.eh:
Lset375 = Leh_frame_end73-Leh_frame_begin73
	.long	Lset375
Leh_frame_begin73:
Lset376 = Leh_frame_begin73-Leh_frame_common
	.long	Lset376
Ltmp1044:
	.quad	Leh_func_begin73-Ltmp1044
Lset377 = Leh_func_end73-Leh_func_begin73
	.quad	Lset377
	.byte	0
	.byte	4
Lset378 = Ltmp158-Leh_func_begin73
	.long	Lset378
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset379 = Ltmp159-Ltmp158
	.long	Lset379
	.byte	13
	.byte	6
	.byte	4
Lset380 = Ltmp160-Ltmp159
	.long	Lset380
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end73:

	.globl	_smpString_clear.eh
_smpString_clear.eh:
Lset381 = Leh_frame_end74-Leh_frame_begin74
	.long	Lset381
Leh_frame_begin74:
Lset382 = Leh_frame_begin74-Leh_frame_common
	.long	Lset382
Ltmp1045:
	.quad	Leh_func_begin74-Ltmp1045
Lset383 = Leh_func_end74-Leh_func_begin74
	.quad	Lset383
	.byte	0
	.byte	4
Lset384 = Ltmp161-Leh_func_begin74
	.long	Lset384
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset385 = Ltmp162-Ltmp161
	.long	Lset385
	.byte	13
	.byte	6
	.byte	4
Lset386 = Ltmp163-Ltmp162
	.long	Lset386
	.byte	131
	.byte	3
	.align	3
Leh_frame_end74:

	.globl	_smpregmatch_clear.eh
_smpregmatch_clear.eh:
Lset387 = Leh_frame_end75-Leh_frame_begin75
	.long	Lset387
Leh_frame_begin75:
Lset388 = Leh_frame_begin75-Leh_frame_common
	.long	Lset388
Ltmp1046:
	.quad	Leh_func_begin75-Ltmp1046
Lset389 = Leh_func_end75-Leh_func_begin75
	.quad	Lset389
	.byte	0
	.byte	4
Lset390 = Ltmp164-Leh_func_begin75
	.long	Lset390
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset391 = Ltmp165-Ltmp164
	.long	Lset391
	.byte	13
	.byte	6
	.align	3
Leh_frame_end75:

	.globl	_smpPair_clear.eh
_smpPair_clear.eh:
Lset392 = Leh_frame_end76-Leh_frame_begin76
	.long	Lset392
Leh_frame_begin76:
Lset393 = Leh_frame_begin76-Leh_frame_common
	.long	Lset393
Ltmp1047:
	.quad	Leh_func_begin76-Ltmp1047
Lset394 = Leh_func_end76-Leh_func_begin76
	.quad	Lset394
	.byte	0
	.byte	4
Lset395 = Ltmp166-Leh_func_begin76
	.long	Lset395
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset396 = Ltmp167-Ltmp166
	.long	Lset396
	.byte	13
	.byte	6
	.align	3
Leh_frame_end76:

	.globl	_smpHash_core_clear.eh
_smpHash_core_clear.eh:
Lset397 = Leh_frame_end77-Leh_frame_begin77
	.long	Lset397
Leh_frame_begin77:
Lset398 = Leh_frame_begin77-Leh_frame_common
	.long	Lset398
Ltmp1048:
	.quad	Leh_func_begin77-Ltmp1048
Lset399 = Leh_func_end77-Leh_func_begin77
	.quad	Lset399
	.byte	0
	.byte	4
Lset400 = Ltmp168-Leh_func_begin77
	.long	Lset400
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset401 = Ltmp169-Ltmp168
	.long	Lset401
	.byte	13
	.byte	6
	.align	3
Leh_frame_end77:

	.globl	_smpHash_clear.eh
_smpHash_clear.eh:
Lset402 = Leh_frame_end78-Leh_frame_begin78
	.long	Lset402
Leh_frame_begin78:
Lset403 = Leh_frame_begin78-Leh_frame_common
	.long	Lset403
Ltmp1049:
	.quad	Leh_func_begin78-Ltmp1049
Lset404 = Leh_func_end78-Leh_func_begin78
	.quad	Lset404
	.byte	0
	.byte	4
Lset405 = Ltmp170-Leh_func_begin78
	.long	Lset405
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset406 = Ltmp171-Ltmp170
	.long	Lset406
	.byte	13
	.byte	6
	.align	3
Leh_frame_end78:

	.globl	_smpFunction_clear.eh
_smpFunction_clear.eh:
Lset407 = Leh_frame_end79-Leh_frame_begin79
	.long	Lset407
Leh_frame_begin79:
Lset408 = Leh_frame_begin79-Leh_frame_common
	.long	Lset408
Ltmp1050:
	.quad	Leh_func_begin79-Ltmp1050
Lset409 = Leh_func_end79-Leh_func_begin79
	.quad	Lset409
	.byte	0
	.byte	4
Lset410 = Ltmp172-Leh_func_begin79
	.long	Lset410
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset411 = Ltmp173-Ltmp172
	.long	Lset411
	.byte	13
	.byte	6
	.byte	4
Lset412 = Ltmp174-Ltmp173
	.long	Lset412
	.byte	131
	.byte	3
	.align	3
Leh_frame_end79:

	.globl	_smpTypeError_clear.eh
_smpTypeError_clear.eh:
Lset413 = Leh_frame_end80-Leh_frame_begin80
	.long	Lset413
Leh_frame_begin80:
Lset414 = Leh_frame_begin80-Leh_frame_common
	.long	Lset414
Ltmp1051:
	.quad	Leh_func_begin80-Ltmp1051
Lset415 = Leh_func_end80-Leh_func_begin80
	.quad	Lset415
	.byte	0
	.byte	4
Lset416 = Ltmp175-Leh_func_begin80
	.long	Lset416
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset417 = Ltmp176-Ltmp175
	.long	Lset417
	.byte	13
	.byte	6
	.align	3
Leh_frame_end80:

	.globl	_smpException_clear.eh
_smpException_clear.eh:
Lset418 = Leh_frame_end81-Leh_frame_begin81
	.long	Lset418
Leh_frame_begin81:
Lset419 = Leh_frame_begin81-Leh_frame_common
	.long	Lset419
Ltmp1052:
	.quad	Leh_func_begin81-Ltmp1052
Lset420 = Leh_func_end81-Leh_func_begin81
	.quad	Lset420
	.byte	0
	.byte	4
Lset421 = Ltmp177-Leh_func_begin81
	.long	Lset421
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset422 = Ltmp178-Ltmp177
	.long	Lset422
	.byte	13
	.byte	6
	.align	3
Leh_frame_end81:

	.globl	_smpArray_clear.eh
_smpArray_clear.eh:
Lset423 = Leh_frame_end82-Leh_frame_begin82
	.long	Lset423
Leh_frame_begin82:
Lset424 = Leh_frame_begin82-Leh_frame_common
	.long	Lset424
Ltmp1053:
	.quad	Leh_func_begin82-Ltmp1053
Lset425 = Leh_func_end82-Leh_func_begin82
	.quad	Lset425
	.byte	0
	.byte	4
Lset426 = Ltmp179-Leh_func_begin82
	.long	Lset426
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset427 = Ltmp180-Ltmp179
	.long	Lset427
	.byte	13
	.byte	6
	.align	3
Leh_frame_end82:

	.globl	_smp_free_size.eh
_smp_free_size.eh:
Lset428 = Leh_frame_end83-Leh_frame_begin83
	.long	Lset428
Leh_frame_begin83:
Lset429 = Leh_frame_begin83-Leh_frame_common
	.long	Lset429
Ltmp1054:
	.quad	Leh_func_begin83-Ltmp1054
Lset430 = Leh_func_end83-Leh_func_begin83
	.quad	Lset430
	.byte	0
	.byte	4
Lset431 = Ltmp181-Leh_func_begin83
	.long	Lset431
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset432 = Ltmp182-Ltmp181
	.long	Lset432
	.byte	13
	.byte	6
	.align	3
Leh_frame_end83:

	.globl	_minihash_clear.eh
_minihash_clear.eh:
Lset433 = Leh_frame_end84-Leh_frame_begin84
	.long	Lset433
Leh_frame_begin84:
Lset434 = Leh_frame_begin84-Leh_frame_common
	.long	Lset434
Ltmp1055:
	.quad	Leh_func_begin84-Ltmp1055
Lset435 = Leh_func_end84-Leh_func_begin84
	.quad	Lset435
	.byte	0
	.byte	4
Lset436 = Ltmp183-Leh_func_begin84
	.long	Lset436
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset437 = Ltmp184-Ltmp183
	.long	Lset437
	.byte	13
	.byte	6
	.byte	4
Lset438 = Ltmp185-Ltmp184
	.long	Lset438
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end84:

	.globl	_smpType_clear.eh
_smpType_clear.eh:
Lset439 = Leh_frame_end85-Leh_frame_begin85
	.long	Lset439
Leh_frame_begin85:
Lset440 = Leh_frame_begin85-Leh_frame_common
	.long	Lset440
Ltmp1056:
	.quad	Leh_func_begin85-Ltmp1056
Lset441 = Leh_func_end85-Leh_func_begin85
	.quad	Lset441
	.byte	0
	.byte	4
Lset442 = Ltmp186-Leh_func_begin85
	.long	Lset442
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset443 = Ltmp187-Ltmp186
	.long	Lset443
	.byte	13
	.byte	6
	.byte	4
Lset444 = Ltmp188-Ltmp187
	.long	Lset444
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end85:

	.globl	_scope_clear.eh
_scope_clear.eh:
Lset445 = Leh_frame_end86-Leh_frame_begin86
	.long	Lset445
Leh_frame_begin86:
Lset446 = Leh_frame_begin86-Leh_frame_common
	.long	Lset446
Ltmp1057:
	.quad	Leh_func_begin86-Ltmp1057
Lset447 = Leh_func_end86-Leh_func_begin86
	.quad	Lset447
	.byte	0
	.byte	4
Lset448 = Ltmp189-Leh_func_begin86
	.long	Lset448
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset449 = Ltmp190-Ltmp189
	.long	Lset449
	.byte	13
	.byte	6
	.byte	4
Lset450 = Ltmp191-Ltmp190
	.long	Lset450
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end86:

	.globl	_scope_pop.eh
_scope_pop.eh:
Lset451 = Leh_frame_end87-Leh_frame_begin87
	.long	Lset451
Leh_frame_begin87:
Lset452 = Leh_frame_begin87-Leh_frame_common
	.long	Lset452
Ltmp1058:
	.quad	Leh_func_begin87-Ltmp1058
Lset453 = Leh_func_end87-Leh_func_begin87
	.quad	Lset453
	.byte	0
	.byte	4
Lset454 = Ltmp192-Leh_func_begin87
	.long	Lset454
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset455 = Ltmp193-Ltmp192
	.long	Lset455
	.byte	13
	.byte	6
	.align	3
Leh_frame_end87:

	.globl	_smpArray_resize.eh
_smpArray_resize.eh:
Lset456 = Leh_frame_end88-Leh_frame_begin88
	.long	Lset456
Leh_frame_begin88:
Lset457 = Leh_frame_begin88-Leh_frame_common
	.long	Lset457
Ltmp1059:
	.quad	Leh_func_begin88-Ltmp1059
Lset458 = Leh_func_end88-Leh_func_begin88
	.quad	Lset458
	.byte	0
	.byte	4
Lset459 = Ltmp194-Leh_func_begin88
	.long	Lset459
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset460 = Ltmp195-Ltmp194
	.long	Lset460
	.byte	13
	.byte	6
	.byte	4
Lset461 = Ltmp196-Ltmp195
	.long	Lset461
	.byte	131
	.byte	3
	.align	3
Leh_frame_end88:

	.globl	_smpArray_add_now.eh
_smpArray_add_now.eh:
Lset462 = Leh_frame_end89-Leh_frame_begin89
	.long	Lset462
Leh_frame_begin89:
Lset463 = Leh_frame_begin89-Leh_frame_common
	.long	Lset463
Ltmp1060:
	.quad	Leh_func_begin89-Ltmp1060
Lset464 = Leh_func_end89-Leh_func_begin89
	.quad	Lset464
	.byte	0
	.byte	4
Lset465 = Ltmp197-Leh_func_begin89
	.long	Lset465
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset466 = Ltmp198-Ltmp197
	.long	Lset466
	.byte	13
	.byte	6
	.byte	4
Lset467 = Ltmp199-Ltmp198
	.long	Lset467
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end89:

	.globl	_smp_realloc_size.eh
_smp_realloc_size.eh:
Lset468 = Leh_frame_end90-Leh_frame_begin90
	.long	Lset468
Leh_frame_begin90:
Lset469 = Leh_frame_begin90-Leh_frame_common
	.long	Lset469
Ltmp1061:
	.quad	Leh_func_begin90-Ltmp1061
Lset470 = Leh_func_end90-Leh_func_begin90
	.quad	Lset470
	.byte	0
	.byte	4
Lset471 = Ltmp200-Leh_func_begin90
	.long	Lset471
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset472 = Ltmp201-Ltmp200
	.long	Lset472
	.byte	13
	.byte	6
	.align	3
Leh_frame_end90:

	.globl	_miniarray_push.eh
_miniarray_push.eh:
Lset473 = Leh_frame_end91-Leh_frame_begin91
	.long	Lset473
Leh_frame_begin91:
Lset474 = Leh_frame_begin91-Leh_frame_common
	.long	Lset474
Ltmp1062:
	.quad	Leh_func_begin91-Ltmp1062
Lset475 = Leh_func_end91-Leh_func_begin91
	.quad	Lset475
	.byte	0
	.byte	4
Lset476 = Ltmp202-Leh_func_begin91
	.long	Lset476
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset477 = Ltmp203-Ltmp202
	.long	Lset477
	.byte	13
	.byte	6
	.byte	4
Lset478 = Ltmp204-Ltmp203
	.long	Lset478
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end91:

	.globl	_smpHash_core_init_capacity.eh
_smpHash_core_init_capacity.eh:
Lset479 = Leh_frame_end92-Leh_frame_begin92
	.long	Lset479
Leh_frame_begin92:
Lset480 = Leh_frame_begin92-Leh_frame_common
	.long	Lset480
Ltmp1063:
	.quad	Leh_func_begin92-Ltmp1063
Lset481 = Leh_func_end92-Leh_func_begin92
	.quad	Lset481
	.byte	0
	.byte	4
Lset482 = Ltmp205-Leh_func_begin92
	.long	Lset482
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset483 = Ltmp206-Ltmp205
	.long	Lset483
	.byte	13
	.byte	6
	.byte	4
Lset484 = Ltmp207-Ltmp206
	.long	Lset484
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end92:

	.globl	_minihash_init_capacity.eh
_minihash_init_capacity.eh:
Lset485 = Leh_frame_end93-Leh_frame_begin93
	.long	Lset485
Leh_frame_begin93:
Lset486 = Leh_frame_begin93-Leh_frame_common
	.long	Lset486
Ltmp1064:
	.quad	Leh_func_begin93-Ltmp1064
Lset487 = Leh_func_end93-Leh_func_begin93
	.quad	Lset487
	.byte	0
	.byte	4
Lset488 = Ltmp208-Leh_func_begin93
	.long	Lset488
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset489 = Ltmp209-Ltmp208
	.long	Lset489
	.byte	13
	.byte	6
	.byte	4
Lset490 = Ltmp210-Ltmp209
	.long	Lset490
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end93:

	.globl	_minihash_init.eh
_minihash_init.eh:
Lset491 = Leh_frame_end94-Leh_frame_begin94
	.long	Lset491
Leh_frame_begin94:
Lset492 = Leh_frame_begin94-Leh_frame_common
	.long	Lset492
Ltmp1065:
	.quad	Leh_func_begin94-Ltmp1065
Lset493 = Leh_func_end94-Leh_func_begin94
	.quad	Lset493
	.byte	0
	.byte	4
Lset494 = Ltmp211-Leh_func_begin94
	.long	Lset494
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset495 = Ltmp212-Ltmp211
	.long	Lset495
	.byte	13
	.byte	6
	.byte	4
Lset496 = Ltmp213-Ltmp212
	.long	Lset496
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end94:

	.globl	_scope_init.eh
_scope_init.eh:
Lset497 = Leh_frame_end95-Leh_frame_begin95
	.long	Lset497
Leh_frame_begin95:
Lset498 = Leh_frame_begin95-Leh_frame_common
	.long	Lset498
Ltmp1066:
	.quad	Leh_func_begin95-Ltmp1066
Lset499 = Leh_func_end95-Leh_func_begin95
	.quad	Lset499
	.byte	0
	.byte	4
Lset500 = Ltmp214-Leh_func_begin95
	.long	Lset500
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset501 = Ltmp215-Ltmp214
	.long	Lset501
	.byte	13
	.byte	6
	.byte	4
Lset502 = Ltmp216-Ltmp215
	.long	Lset502
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end95:

	.globl	_minihash_add.eh
_minihash_add.eh:
Lset503 = Leh_frame_end96-Leh_frame_begin96
	.long	Lset503
Leh_frame_begin96:
Lset504 = Leh_frame_begin96-Leh_frame_common
	.long	Lset504
Ltmp1067:
	.quad	Leh_func_begin96-Ltmp1067
Lset505 = Leh_func_end96-Leh_func_begin96
	.quad	Lset505
	.byte	0
	.byte	4
Lset506 = Ltmp217-Leh_func_begin96
	.long	Lset506
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset507 = Ltmp218-Ltmp217
	.long	Lset507
	.byte	13
	.byte	6
	.byte	4
Lset508 = Ltmp219-Ltmp218
	.long	Lset508
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end96:

	.globl	_minihash_copy.eh
_minihash_copy.eh:
Lset509 = Leh_frame_end97-Leh_frame_begin97
	.long	Lset509
Leh_frame_begin97:
Lset510 = Leh_frame_begin97-Leh_frame_common
	.long	Lset510
Ltmp1068:
	.quad	Leh_func_begin97-Ltmp1068
Lset511 = Leh_func_end97-Leh_func_begin97
	.quad	Lset511
	.byte	0
	.byte	4
Lset512 = Ltmp220-Leh_func_begin97
	.long	Lset512
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset513 = Ltmp221-Ltmp220
	.long	Lset513
	.byte	13
	.byte	6
	.byte	4
Lset514 = Ltmp222-Ltmp221
	.long	Lset514
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end97:

	.globl	_scope_add.eh
_scope_add.eh:
Lset515 = Leh_frame_end98-Leh_frame_begin98
	.long	Lset515
Leh_frame_begin98:
Lset516 = Leh_frame_begin98-Leh_frame_common
	.long	Lset516
Ltmp1069:
	.quad	Leh_func_begin98-Ltmp1069
Lset517 = Leh_func_end98-Leh_func_begin98
	.quad	Lset517
	.byte	0
	.byte	4
Lset518 = Ltmp223-Leh_func_begin98
	.long	Lset518
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset519 = Ltmp224-Ltmp223
	.long	Lset519
	.byte	13
	.byte	6
	.align	3
Leh_frame_end98:

	.globl	_scope_push.eh
_scope_push.eh:
Lset520 = Leh_frame_end99-Leh_frame_begin99
	.long	Lset520
Leh_frame_begin99:
Lset521 = Leh_frame_begin99-Leh_frame_common
	.long	Lset521
Ltmp1070:
	.quad	Leh_func_begin99-Ltmp1070
Lset522 = Leh_func_end99-Leh_func_begin99
	.quad	Lset522
	.byte	0
	.byte	4
Lset523 = Ltmp225-Leh_func_begin99
	.long	Lset523
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset524 = Ltmp226-Ltmp225
	.long	Lset524
	.byte	13
	.byte	6
	.byte	4
Lset525 = Ltmp227-Ltmp226
	.long	Lset525
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end99:

	.globl	_smpFloat_clear.eh
_smpFloat_clear.eh:
Lset526 = Leh_frame_end100-Leh_frame_begin100
	.long	Lset526
Leh_frame_begin100:
Lset527 = Leh_frame_begin100-Leh_frame_common
	.long	Lset527
Ltmp1071:
	.quad	Leh_func_begin100-Ltmp1071
Lset528 = Leh_func_end100-Leh_func_begin100
	.quad	Lset528
	.byte	0
	.byte	4
Lset529 = Ltmp228-Leh_func_begin100
	.long	Lset529
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset530 = Ltmp229-Ltmp228
	.long	Lset530
	.byte	13
	.byte	6
	.align	3
Leh_frame_end100:

	.globl	_smpInteger_clear.eh
_smpInteger_clear.eh:
Lset531 = Leh_frame_end101-Leh_frame_begin101
	.long	Lset531
Leh_frame_begin101:
Lset532 = Leh_frame_begin101-Leh_frame_common
	.long	Lset532
Ltmp1072:
	.quad	Leh_func_begin101-Ltmp1072
Lset533 = Leh_func_end101-Leh_func_begin101
	.quad	Lset533
	.byte	0
	.byte	4
Lset534 = Ltmp230-Leh_func_begin101
	.long	Lset534
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset535 = Ltmp231-Ltmp230
	.long	Lset535
	.byte	13
	.byte	6
	.align	3
Leh_frame_end101:

	.globl	_init_by_array.eh
_init_by_array.eh:
Lset536 = Leh_frame_end102-Leh_frame_begin102
	.long	Lset536
Leh_frame_begin102:
Lset537 = Leh_frame_begin102-Leh_frame_common
	.long	Lset537
Ltmp1073:
	.quad	Leh_func_begin102-Ltmp1073
Lset538 = Leh_func_end102-Leh_func_begin102
	.quad	Lset538
	.byte	0
	.byte	4
Lset539 = Ltmp232-Leh_func_begin102
	.long	Lset539
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset540 = Ltmp233-Ltmp232
	.long	Lset540
	.byte	13
	.byte	6
	.byte	4
Lset541 = Ltmp234-Ltmp233
	.long	Lset541
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end102:

	.globl	_fatal_error.eh
_fatal_error.eh:
Lset542 = Leh_frame_end103-Leh_frame_begin103
	.long	Lset542
Leh_frame_begin103:
Lset543 = Leh_frame_begin103-Leh_frame_common
	.long	Lset543
Ltmp1074:
	.quad	Leh_func_begin103-Ltmp1074
Lset544 = Leh_func_end103-Leh_func_begin103
	.quad	Lset544
	.byte	0
	.byte	4
Lset545 = Ltmp235-Leh_func_begin103
	.long	Lset545
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset546 = Ltmp236-Ltmp235
	.long	Lset546
	.byte	13
	.byte	6
	.byte	4
Lset547 = Ltmp237-Ltmp236
	.long	Lset547
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end103:

	.globl	_internal_error.eh
_internal_error.eh:
Lset548 = Leh_frame_end104-Leh_frame_begin104
	.long	Lset548
Leh_frame_begin104:
Lset549 = Leh_frame_begin104-Leh_frame_common
	.long	Lset549
Ltmp1075:
	.quad	Leh_func_begin104-Ltmp1075
Lset550 = Leh_func_end104-Leh_func_begin104
	.quad	Lset550
	.byte	0
	.byte	4
Lset551 = Ltmp238-Leh_func_begin104
	.long	Lset551
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset552 = Ltmp239-Ltmp238
	.long	Lset552
	.byte	13
	.byte	6
	.byte	4
Lset553 = Ltmp240-Ltmp239
	.long	Lset553
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end104:

	.globl	_smpException_init.eh
_smpException_init.eh:
Lset554 = Leh_frame_end105-Leh_frame_begin105
	.long	Lset554
Leh_frame_begin105:
Lset555 = Leh_frame_begin105-Leh_frame_common
	.long	Lset555
Ltmp1076:
	.quad	Leh_func_begin105-Ltmp1076
Lset556 = Leh_func_end105-Leh_func_begin105
	.quad	Lset556
	.byte	0
	.byte	4
Lset557 = Ltmp241-Leh_func_begin105
	.long	Lset557
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset558 = Ltmp242-Ltmp241
	.long	Lset558
	.byte	13
	.byte	6
	.byte	4
Lset559 = Ltmp243-Ltmp242
	.long	Lset559
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end105:

	.globl	_obj_init.eh
_obj_init.eh:
Lset560 = Leh_frame_end106-Leh_frame_begin106
	.long	Lset560
Leh_frame_begin106:
Lset561 = Leh_frame_begin106-Leh_frame_common
	.long	Lset561
Ltmp1077:
	.quad	Leh_func_begin106-Ltmp1077
Lset562 = Leh_func_end106-Leh_func_begin106
	.quad	Lset562
	.byte	0
	.byte	4
Lset563 = Ltmp244-Leh_func_begin106
	.long	Lset563
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset564 = Ltmp245-Ltmp244
	.long	Lset564
	.byte	13
	.byte	6
	.byte	4
Lset565 = Ltmp246-Ltmp245
	.long	Lset565
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end106:

	.globl	_smpException_init_fmt.eh
_smpException_init_fmt.eh:
Lset566 = Leh_frame_end107-Leh_frame_begin107
	.long	Lset566
Leh_frame_begin107:
Lset567 = Leh_frame_begin107-Leh_frame_common
	.long	Lset567
Ltmp1078:
	.quad	Leh_func_begin107-Ltmp1078
Lset568 = Leh_func_end107-Leh_func_begin107
	.quad	Lset568
	.byte	0
	.byte	4
Lset569 = Ltmp247-Leh_func_begin107
	.long	Lset569
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset570 = Ltmp248-Ltmp247
	.long	Lset570
	.byte	13
	.byte	6
	.byte	4
Lset571 = Ltmp249-Ltmp248
	.long	Lset571
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end107:

	.globl	_smpGlobal_throw.eh
_smpGlobal_throw.eh:
Lset572 = Leh_frame_end108-Leh_frame_begin108
	.long	Lset572
Leh_frame_begin108:
Lset573 = Leh_frame_begin108-Leh_frame_common
	.long	Lset573
Ltmp1079:
	.quad	Leh_func_begin108-Ltmp1079
Lset574 = Leh_func_end108-Leh_func_begin108
	.quad	Lset574
	.byte	0
	.byte	4
Lset575 = Ltmp250-Leh_func_begin108
	.long	Lset575
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset576 = Ltmp251-Ltmp250
	.long	Lset576
	.byte	13
	.byte	6
	.byte	4
Lset577 = Ltmp252-Ltmp251
	.long	Lset577
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end108:

	.globl	_smpThrown_init.eh
_smpThrown_init.eh:
Lset578 = Leh_frame_end109-Leh_frame_begin109
	.long	Lset578
Leh_frame_begin109:
Lset579 = Leh_frame_begin109-Leh_frame_common
	.long	Lset579
Ltmp1080:
	.quad	Leh_func_begin109-Ltmp1080
Lset580 = Leh_func_end109-Leh_func_begin109
	.quad	Lset580
	.byte	0
	.byte	4
Lset581 = Ltmp253-Leh_func_begin109
	.long	Lset581
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset582 = Ltmp254-Ltmp253
	.long	Lset582
	.byte	13
	.byte	6
	.byte	4
Lset583 = Ltmp255-Ltmp254
	.long	Lset583
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end109:

	.globl	_smpThrown_add_exception_now.eh
_smpThrown_add_exception_now.eh:
Lset584 = Leh_frame_end110-Leh_frame_begin110
	.long	Lset584
Leh_frame_begin110:
Lset585 = Leh_frame_begin110-Leh_frame_common
	.long	Lset585
Ltmp1081:
	.quad	Leh_func_begin110-Ltmp1081
Lset586 = Leh_func_end110-Leh_func_begin110
	.quad	Lset586
	.byte	0
	.byte	4
Lset587 = Ltmp256-Leh_func_begin110
	.long	Lset587
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset588 = Ltmp257-Ltmp256
	.long	Lset588
	.byte	13
	.byte	6
	.byte	4
Lset589 = Ltmp258-Ltmp257
	.long	Lset589
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end110:

	.globl	_smpRegex_compile_handle_errors.eh
_smpRegex_compile_handle_errors.eh:
Lset590 = Leh_frame_end111-Leh_frame_begin111
	.long	Lset590
Leh_frame_begin111:
Lset591 = Leh_frame_begin111-Leh_frame_common
	.long	Lset591
Ltmp1082:
	.quad	Leh_func_begin111-Ltmp1082
Lset592 = Leh_func_end111-Leh_func_begin111
	.quad	Lset592
	.byte	0
	.byte	4
Lset593 = Ltmp259-Leh_func_begin111
	.long	Lset593
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset594 = Ltmp260-Ltmp259
	.long	Lset594
	.byte	13
	.byte	6
	.byte	4
Lset595 = Ltmp261-Ltmp260
	.long	Lset595
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end111:

	.globl	_smpRegex_compile_str_flags.eh
_smpRegex_compile_str_flags.eh:
Lset596 = Leh_frame_end112-Leh_frame_begin112
	.long	Lset596
Leh_frame_begin112:
Lset597 = Leh_frame_begin112-Leh_frame_common
	.long	Lset597
Ltmp1083:
	.quad	Leh_func_begin112-Ltmp1083
Lset598 = Leh_func_end112-Leh_func_begin112
	.quad	Lset598
	.byte	0
	.byte	4
Lset599 = Ltmp262-Leh_func_begin112
	.long	Lset599
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset600 = Ltmp263-Ltmp262
	.long	Lset600
	.byte	13
	.byte	6
	.byte	4
Lset601 = Ltmp264-Ltmp263
	.long	Lset601
	.byte	131
	.byte	3
	.align	3
Leh_frame_end112:

	.globl	_smpRegex_compile_str.eh
_smpRegex_compile_str.eh:
Lset602 = Leh_frame_end113-Leh_frame_begin113
	.long	Lset602
Leh_frame_begin113:
Lset603 = Leh_frame_begin113-Leh_frame_common
	.long	Lset603
Ltmp1084:
	.quad	Leh_func_begin113-Ltmp1084
Lset604 = Leh_func_end113-Leh_func_begin113
	.quad	Lset604
	.byte	0
	.byte	4
Lset605 = Ltmp265-Leh_func_begin113
	.long	Lset605
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset606 = Ltmp266-Ltmp265
	.long	Lset606
	.byte	13
	.byte	6
	.byte	4
Lset607 = Ltmp267-Ltmp266
	.long	Lset607
	.byte	131
	.byte	3
	.align	3
Leh_frame_end113:

	.globl	_smpRegex_compile_flags.eh
_smpRegex_compile_flags.eh:
Lset608 = Leh_frame_end114-Leh_frame_begin114
	.long	Lset608
Leh_frame_begin114:
Lset609 = Leh_frame_begin114-Leh_frame_common
	.long	Lset609
Ltmp1085:
	.quad	Leh_func_begin114-Ltmp1085
Lset610 = Leh_func_end114-Leh_func_begin114
	.quad	Lset610
	.byte	0
	.byte	4
Lset611 = Ltmp268-Leh_func_begin114
	.long	Lset611
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset612 = Ltmp269-Ltmp268
	.long	Lset612
	.byte	13
	.byte	6
	.byte	4
Lset613 = Ltmp270-Ltmp269
	.long	Lset613
	.byte	131
	.byte	3
	.align	3
Leh_frame_end114:

	.globl	_smpRegex_compile.eh
_smpRegex_compile.eh:
Lset614 = Leh_frame_end115-Leh_frame_begin115
	.long	Lset614
Leh_frame_begin115:
Lset615 = Leh_frame_begin115-Leh_frame_common
	.long	Lset615
Ltmp1086:
	.quad	Leh_func_begin115-Ltmp1086
Lset616 = Leh_func_end115-Leh_func_begin115
	.quad	Lset616
	.byte	0
	.byte	4
Lset617 = Ltmp271-Leh_func_begin115
	.long	Lset617
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset618 = Ltmp272-Ltmp271
	.long	Lset618
	.byte	13
	.byte	6
	.byte	4
Lset619 = Ltmp273-Ltmp272
	.long	Lset619
	.byte	131
	.byte	3
	.align	3
Leh_frame_end115:

	.globl	_smpList_at_assign_c.eh
_smpList_at_assign_c.eh:
Lset620 = Leh_frame_end116-Leh_frame_begin116
	.long	Lset620
Leh_frame_begin116:
Lset621 = Leh_frame_begin116-Leh_frame_common
	.long	Lset621
Ltmp1087:
	.quad	Leh_func_begin116-Ltmp1087
Lset622 = Leh_func_end116-Leh_func_begin116
	.quad	Lset622
	.byte	0
	.byte	4
Lset623 = Ltmp274-Leh_func_begin116
	.long	Lset623
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset624 = Ltmp275-Ltmp274
	.long	Lset624
	.byte	13
	.byte	6
	.byte	4
Lset625 = Ltmp276-Ltmp275
	.long	Lset625
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end116:

	.globl	_smpList_at_c.eh
_smpList_at_c.eh:
Lset626 = Leh_frame_end117-Leh_frame_begin117
	.long	Lset626
Leh_frame_begin117:
Lset627 = Leh_frame_begin117-Leh_frame_common
	.long	Lset627
Ltmp1088:
	.quad	Leh_func_begin117-Ltmp1088
Lset628 = Leh_func_end117-Leh_func_begin117
	.quad	Lset628
	.byte	0
	.byte	4
Lset629 = Ltmp277-Leh_func_begin117
	.long	Lset629
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset630 = Ltmp278-Ltmp277
	.long	Lset630
	.byte	13
	.byte	6
	.byte	4
Lset631 = Ltmp279-Ltmp278
	.long	Lset631
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end117:

	.globl	_smpInteger_to_clong.eh
_smpInteger_to_clong.eh:
Lset632 = Leh_frame_end118-Leh_frame_begin118
	.long	Lset632
Leh_frame_begin118:
Lset633 = Leh_frame_begin118-Leh_frame_common
	.long	Lset633
Ltmp1089:
	.quad	Leh_func_begin118-Ltmp1089
Lset634 = Leh_func_end118-Leh_func_begin118
	.quad	Lset634
	.byte	0
	.byte	4
Lset635 = Ltmp280-Leh_func_begin118
	.long	Lset635
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset636 = Ltmp281-Ltmp280
	.long	Lset636
	.byte	13
	.byte	6
	.byte	4
Lset637 = Ltmp282-Ltmp281
	.long	Lset637
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end118:

	.globl	_smpHash_containsp.eh
_smpHash_containsp.eh:
Lset638 = Leh_frame_end119-Leh_frame_begin119
	.long	Lset638
Leh_frame_begin119:
Lset639 = Leh_frame_begin119-Leh_frame_common
	.long	Lset639
Ltmp1090:
	.quad	Leh_func_begin119-Ltmp1090
Lset640 = Leh_func_end119-Leh_func_begin119
	.quad	Lset640
	.byte	0
	.byte	4
Lset641 = Ltmp283-Leh_func_begin119
	.long	Lset641
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset642 = Ltmp284-Ltmp283
	.long	Lset642
	.byte	13
	.byte	6
	.byte	4
Lset643 = Ltmp285-Ltmp284
	.long	Lset643
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end119:

	.globl	_smpGlobal_throw_arg.eh
_smpGlobal_throw_arg.eh:
Lset644 = Leh_frame_end120-Leh_frame_begin120
	.long	Lset644
Leh_frame_begin120:
Lset645 = Leh_frame_begin120-Leh_frame_common
	.long	Lset645
Ltmp1091:
	.quad	Leh_func_begin120-Ltmp1091
Lset646 = Leh_func_end120-Leh_func_begin120
	.quad	Lset646
	.byte	0
	.byte	4
Lset647 = Ltmp286-Leh_func_begin120
	.long	Lset647
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset648 = Ltmp287-Ltmp286
	.long	Lset648
	.byte	13
	.byte	6
	.byte	4
Lset649 = Ltmp288-Ltmp287
	.long	Lset649
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end120:

	.globl	_smpGlobal_catch_arg.eh
_smpGlobal_catch_arg.eh:
Lset650 = Leh_frame_end121-Leh_frame_begin121
	.long	Lset650
Leh_frame_begin121:
Lset651 = Leh_frame_begin121-Leh_frame_common
	.long	Lset651
Ltmp1092:
	.quad	Leh_func_begin121-Ltmp1092
Lset652 = Leh_func_end121-Leh_func_begin121
	.quad	Lset652
	.byte	0
	.byte	4
Lset653 = Ltmp289-Leh_func_begin121
	.long	Lset653
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset654 = Ltmp290-Ltmp289
	.long	Lset654
	.byte	13
	.byte	6
	.byte	4
Lset655 = Ltmp291-Ltmp290
	.long	Lset655
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end121:

	.globl	_smpArray_get_c.eh
_smpArray_get_c.eh:
Lset656 = Leh_frame_end122-Leh_frame_begin122
	.long	Lset656
Leh_frame_begin122:
Lset657 = Leh_frame_begin122-Leh_frame_common
	.long	Lset657
Ltmp1093:
	.quad	Leh_func_begin122-Ltmp1093
Lset658 = Leh_func_end122-Leh_func_begin122
	.quad	Lset658
	.byte	0
	.byte	4
Lset659 = Ltmp292-Leh_func_begin122
	.long	Lset659
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset660 = Ltmp293-Ltmp292
	.long	Lset660
	.byte	13
	.byte	6
	.byte	4
Lset661 = Ltmp294-Ltmp293
	.long	Lset661
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end122:

	.globl	_smpArray_at_assign_c.eh
_smpArray_at_assign_c.eh:
Lset662 = Leh_frame_end123-Leh_frame_begin123
	.long	Lset662
Leh_frame_begin123:
Lset663 = Leh_frame_begin123-Leh_frame_common
	.long	Lset663
Ltmp1094:
	.quad	Leh_func_begin123-Ltmp1094
Lset664 = Leh_func_end123-Leh_func_begin123
	.quad	Lset664
	.byte	0
	.byte	4
Lset665 = Ltmp295-Leh_func_begin123
	.long	Lset665
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset666 = Ltmp296-Ltmp295
	.long	Lset666
	.byte	13
	.byte	6
	.byte	4
Lset667 = Ltmp297-Ltmp296
	.long	Lset667
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end123:

	.globl	_smpArray_at_c.eh
_smpArray_at_c.eh:
Lset668 = Leh_frame_end124-Leh_frame_begin124
	.long	Lset668
Leh_frame_begin124:
Lset669 = Leh_frame_begin124-Leh_frame_common
	.long	Lset669
Ltmp1095:
	.quad	Leh_func_begin124-Ltmp1095
Lset670 = Leh_func_end124-Leh_func_begin124
	.quad	Lset670
	.byte	0
	.byte	4
Lset671 = Ltmp298-Leh_func_begin124
	.long	Lset671
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset672 = Ltmp299-Ltmp298
	.long	Lset672
	.byte	13
	.byte	6
	.byte	4
Lset673 = Ltmp300-Ltmp299
	.long	Lset673
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end124:

	.globl	_smpObject_eq.eh
_smpObject_eq.eh:
Lset674 = Leh_frame_end125-Leh_frame_begin125
	.long	Lset674
Leh_frame_begin125:
Lset675 = Leh_frame_begin125-Leh_frame_common
	.long	Lset675
Ltmp1096:
	.quad	Leh_func_begin125-Ltmp1096
Lset676 = Leh_func_end125-Leh_func_begin125
	.quad	Lset676
	.byte	0
	.byte	4
Lset677 = Ltmp301-Leh_func_begin125
	.long	Lset677
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset678 = Ltmp302-Ltmp301
	.long	Lset678
	.byte	13
	.byte	6
	.byte	4
Lset679 = Ltmp303-Ltmp302
	.long	Lset679
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end125:

	.globl	_smpSymbol_init.eh
_smpSymbol_init.eh:
Lset680 = Leh_frame_end126-Leh_frame_begin126
	.long	Lset680
Leh_frame_begin126:
Lset681 = Leh_frame_begin126-Leh_frame_common
	.long	Lset681
Ltmp1097:
	.quad	Leh_func_begin126-Ltmp1097
Lset682 = Leh_func_end126-Leh_func_begin126
	.quad	Lset682
	.byte	0
	.byte	4
Lset683 = Ltmp304-Leh_func_begin126
	.long	Lset683
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset684 = Ltmp305-Ltmp304
	.long	Lset684
	.byte	13
	.byte	6
	.byte	4
Lset685 = Ltmp306-Ltmp305
	.long	Lset685
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end126:

	.globl	_smpString_reverse.eh
_smpString_reverse.eh:
Lset686 = Leh_frame_end127-Leh_frame_begin127
	.long	Lset686
Leh_frame_begin127:
Lset687 = Leh_frame_begin127-Leh_frame_common
	.long	Lset687
Ltmp1098:
	.quad	Leh_func_begin127-Ltmp1098
Lset688 = Leh_func_end127-Leh_func_begin127
	.quad	Lset688
	.byte	0
	.byte	4
Lset689 = Ltmp307-Leh_func_begin127
	.long	Lset689
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset690 = Ltmp308-Ltmp307
	.long	Lset690
	.byte	13
	.byte	6
	.byte	4
Lset691 = Ltmp309-Ltmp308
	.long	Lset691
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end127:

	.globl	_smpString_init_ref.eh
_smpString_init_ref.eh:
Lset692 = Leh_frame_end128-Leh_frame_begin128
	.long	Lset692
Leh_frame_begin128:
Lset693 = Leh_frame_begin128-Leh_frame_common
	.long	Lset693
Ltmp1099:
	.quad	Leh_func_begin128-Ltmp1099
Lset694 = Leh_func_end128-Leh_func_begin128
	.quad	Lset694
	.byte	0
	.byte	4
Lset695 = Ltmp310-Leh_func_begin128
	.long	Lset695
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset696 = Ltmp311-Ltmp310
	.long	Lset696
	.byte	13
	.byte	6
	.byte	4
Lset697 = Ltmp312-Ltmp311
	.long	Lset697
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end128:

	.globl	_smpString_init_fmt.eh
_smpString_init_fmt.eh:
Lset698 = Leh_frame_end129-Leh_frame_begin129
	.long	Lset698
Leh_frame_begin129:
Lset699 = Leh_frame_begin129-Leh_frame_common
	.long	Lset699
Ltmp1100:
	.quad	Leh_func_begin129-Ltmp1100
Lset700 = Leh_func_end129-Leh_func_begin129
	.quad	Lset700
	.byte	0
	.byte	4
Lset701 = Ltmp313-Leh_func_begin129
	.long	Lset701
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset702 = Ltmp314-Ltmp313
	.long	Lset702
	.byte	13
	.byte	6
	.byte	4
Lset703 = Ltmp315-Ltmp314
	.long	Lset703
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end129:

	.globl	_smpFunction_to_s.eh
_smpFunction_to_s.eh:
Lset704 = Leh_frame_end130-Leh_frame_begin130
	.long	Lset704
Leh_frame_begin130:
Lset705 = Leh_frame_begin130-Leh_frame_common
	.long	Lset705
Ltmp1101:
	.quad	Leh_func_begin130-Ltmp1101
Lset706 = Leh_func_end130-Leh_func_begin130
	.quad	Lset706
	.byte	0
	.byte	4
Lset707 = Ltmp316-Leh_func_begin130
	.long	Lset707
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset708 = Ltmp317-Ltmp316
	.long	Lset708
	.byte	13
	.byte	6
	.align	3
Leh_frame_end130:

	.globl	_smpObject_to_s.eh
_smpObject_to_s.eh:
Lset709 = Leh_frame_end131-Leh_frame_begin131
	.long	Lset709
Leh_frame_begin131:
Lset710 = Leh_frame_begin131-Leh_frame_common
	.long	Lset710
Ltmp1102:
	.quad	Leh_func_begin131-Ltmp1102
Lset711 = Leh_func_end131-Leh_func_begin131
	.quad	Lset711
	.byte	0
	.byte	4
Lset712 = Ltmp318-Leh_func_begin131
	.long	Lset712
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset713 = Ltmp319-Ltmp318
	.long	Lset713
	.byte	13
	.byte	6
	.align	3
Leh_frame_end131:

	.globl	_smpString_init_length.eh
_smpString_init_length.eh:
Lset714 = Leh_frame_end132-Leh_frame_begin132
	.long	Lset714
Leh_frame_begin132:
Lset715 = Leh_frame_begin132-Leh_frame_common
	.long	Lset715
Ltmp1103:
	.quad	Leh_func_begin132-Ltmp1103
Lset716 = Leh_func_end132-Leh_func_begin132
	.quad	Lset716
	.byte	0
	.byte	4
Lset717 = Ltmp320-Leh_func_begin132
	.long	Lset717
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset718 = Ltmp321-Ltmp320
	.long	Lset718
	.byte	13
	.byte	6
	.byte	4
Lset719 = Ltmp322-Ltmp321
	.long	Lset719
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end132:

	.globl	_smpString_init.eh
_smpString_init.eh:
Lset720 = Leh_frame_end133-Leh_frame_begin133
	.long	Lset720
Leh_frame_begin133:
Lset721 = Leh_frame_begin133-Leh_frame_common
	.long	Lset721
Ltmp1104:
	.quad	Leh_func_begin133-Ltmp1104
Lset722 = Leh_func_end133-Leh_func_begin133
	.quad	Lset722
	.byte	0
	.byte	4
Lset723 = Ltmp323-Leh_func_begin133
	.long	Lset723
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset724 = Ltmp324-Ltmp323
	.long	Lset724
	.byte	13
	.byte	6
	.byte	4
Lset725 = Ltmp325-Ltmp324
	.long	Lset725
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end133:

	.globl	_smpSymbol_write.eh
_smpSymbol_write.eh:
Lset726 = Leh_frame_end134-Leh_frame_begin134
	.long	Lset726
Leh_frame_begin134:
Lset727 = Leh_frame_begin134-Leh_frame_common
	.long	Lset727
Ltmp1105:
	.quad	Leh_func_begin134-Ltmp1105
Lset728 = Leh_func_end134-Leh_func_begin134
	.quad	Lset728
	.byte	0
	.byte	4
Lset729 = Ltmp326-Leh_func_begin134
	.long	Lset729
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset730 = Ltmp327-Ltmp326
	.long	Lset730
	.byte	13
	.byte	6
	.byte	4
Lset731 = Ltmp328-Ltmp327
	.long	Lset731
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end134:

	.globl	_smpSymbol_to_s.eh
_smpSymbol_to_s.eh:
Lset732 = Leh_frame_end135-Leh_frame_begin135
	.long	Lset732
Leh_frame_begin135:
Lset733 = Leh_frame_begin135-Leh_frame_common
	.long	Lset733
Ltmp1106:
	.quad	Leh_func_begin135-Ltmp1106
Lset734 = Leh_func_end135-Leh_func_begin135
	.quad	Lset734
	.byte	0
	.byte	4
Lset735 = Ltmp329-Leh_func_begin135
	.long	Lset735
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset736 = Ltmp330-Ltmp329
	.long	Lset736
	.byte	13
	.byte	6
	.byte	4
Lset737 = Ltmp331-Ltmp330
	.long	Lset737
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end135:

	.globl	_smpString_write.eh
_smpString_write.eh:
Lset738 = Leh_frame_end136-Leh_frame_begin136
	.long	Lset738
Leh_frame_begin136:
Lset739 = Leh_frame_begin136-Leh_frame_common
	.long	Lset739
Ltmp1107:
	.quad	Leh_func_begin136-Ltmp1107
Lset740 = Leh_func_end136-Leh_func_begin136
	.quad	Lset740
	.byte	0
	.byte	4
Lset741 = Ltmp332-Leh_func_begin136
	.long	Lset741
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset742 = Ltmp333-Ltmp332
	.long	Lset742
	.byte	13
	.byte	6
	.byte	4
Lset743 = Ltmp334-Ltmp333
	.long	Lset743
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end136:

	.globl	_smpString_substring.eh
_smpString_substring.eh:
Lset744 = Leh_frame_end137-Leh_frame_begin137
	.long	Lset744
Leh_frame_begin137:
Lset745 = Leh_frame_begin137-Leh_frame_common
	.long	Lset745
Ltmp1108:
	.quad	Leh_func_begin137-Ltmp1108
Lset746 = Leh_func_end137-Leh_func_begin137
	.quad	Lset746
	.byte	0
	.byte	4
Lset747 = Ltmp335-Leh_func_begin137
	.long	Lset747
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset748 = Ltmp336-Ltmp335
	.long	Lset748
	.byte	13
	.byte	6
	.byte	4
Lset749 = Ltmp337-Ltmp336
	.long	Lset749
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end137:

	.globl	_smpNil_write.eh
_smpNil_write.eh:
Lset750 = Leh_frame_end138-Leh_frame_begin138
	.long	Lset750
Leh_frame_begin138:
Lset751 = Leh_frame_begin138-Leh_frame_common
	.long	Lset751
Ltmp1109:
	.quad	Leh_func_begin138-Ltmp1109
Lset752 = Leh_func_end138-Leh_func_begin138
	.quad	Lset752
	.byte	0
	.byte	4
Lset753 = Ltmp338-Leh_func_begin138
	.long	Lset753
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset754 = Ltmp339-Ltmp338
	.long	Lset754
	.byte	13
	.byte	6
	.byte	4
Lset755 = Ltmp340-Ltmp339
	.long	Lset755
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end138:

	.globl	_smpNil_to_s.eh
_smpNil_to_s.eh:
Lset756 = Leh_frame_end139-Leh_frame_begin139
	.long	Lset756
Leh_frame_begin139:
Lset757 = Leh_frame_begin139-Leh_frame_common
	.long	Lset757
Ltmp1110:
	.quad	Leh_func_begin139-Ltmp1110
Lset758 = Leh_func_end139-Leh_func_begin139
	.quad	Lset758
	.byte	0
	.byte	4
Lset759 = Ltmp341-Leh_func_begin139
	.long	Lset759
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset760 = Ltmp342-Ltmp341
	.long	Lset760
	.byte	13
	.byte	6
	.byte	4
Lset761 = Ltmp343-Ltmp342
	.long	Lset761
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end139:

	.globl	_smptrue_to_s.eh
_smptrue_to_s.eh:
Lset762 = Leh_frame_end140-Leh_frame_begin140
	.long	Lset762
Leh_frame_begin140:
Lset763 = Leh_frame_begin140-Leh_frame_common
	.long	Lset763
Ltmp1111:
	.quad	Leh_func_begin140-Ltmp1111
Lset764 = Leh_func_end140-Leh_func_begin140
	.quad	Lset764
	.byte	0
	.byte	4
Lset765 = Ltmp344-Leh_func_begin140
	.long	Lset765
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset766 = Ltmp345-Ltmp344
	.long	Lset766
	.byte	13
	.byte	6
	.byte	4
Lset767 = Ltmp346-Ltmp345
	.long	Lset767
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end140:

	.globl	_smpObject_to_s_class.eh
_smpObject_to_s_class.eh:
Lset768 = Leh_frame_end141-Leh_frame_begin141
	.long	Lset768
Leh_frame_begin141:
Lset769 = Leh_frame_begin141-Leh_frame_common
	.long	Lset769
Ltmp1112:
	.quad	Leh_func_begin141-Ltmp1112
Lset770 = Leh_func_end141-Leh_func_begin141
	.quad	Lset770
	.byte	0
	.byte	4
Lset771 = Ltmp347-Leh_func_begin141
	.long	Lset771
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset772 = Ltmp348-Ltmp347
	.long	Lset772
	.byte	13
	.byte	6
	.byte	4
Lset773 = Ltmp349-Ltmp348
	.long	Lset773
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end141:

	.globl	_smpregmatch_init.eh
_smpregmatch_init.eh:
Lset774 = Leh_frame_end142-Leh_frame_begin142
	.long	Lset774
Leh_frame_begin142:
Lset775 = Leh_frame_begin142-Leh_frame_common
	.long	Lset775
Ltmp1113:
	.quad	Leh_func_begin142-Ltmp1113
Lset776 = Leh_func_end142-Leh_func_begin142
	.quad	Lset776
	.byte	0
	.byte	4
Lset777 = Ltmp350-Leh_func_begin142
	.long	Lset777
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset778 = Ltmp351-Ltmp350
	.long	Lset778
	.byte	13
	.byte	6
	.byte	4
Lset779 = Ltmp352-Ltmp351
	.long	Lset779
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end142:

	.globl	_smpPair_init.eh
_smpPair_init.eh:
Lset780 = Leh_frame_end143-Leh_frame_begin143
	.long	Lset780
Leh_frame_begin143:
Lset781 = Leh_frame_begin143-Leh_frame_common
	.long	Lset781
Ltmp1114:
	.quad	Leh_func_begin143-Ltmp1114
Lset782 = Leh_func_end143-Leh_func_begin143
	.quad	Lset782
	.byte	0
	.byte	4
Lset783 = Ltmp353-Leh_func_begin143
	.long	Lset783
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset784 = Ltmp354-Ltmp353
	.long	Lset784
	.byte	13
	.byte	6
	.byte	4
Lset785 = Ltmp355-Ltmp354
	.long	Lset785
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end143:

	.globl	_smpListBuffer_init.eh
_smpListBuffer_init.eh:
Lset786 = Leh_frame_end144-Leh_frame_begin144
	.long	Lset786
Leh_frame_begin144:
Lset787 = Leh_frame_begin144-Leh_frame_common
	.long	Lset787
Ltmp1115:
	.quad	Leh_func_begin144-Ltmp1115
Lset788 = Leh_func_end144-Leh_func_begin144
	.quad	Lset788
	.byte	0
	.byte	4
Lset789 = Ltmp356-Leh_func_begin144
	.long	Lset789
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset790 = Ltmp357-Ltmp356
	.long	Lset790
	.byte	13
	.byte	6
	.byte	4
Lset791 = Ltmp358-Ltmp357
	.long	Lset791
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end144:

	.globl	_smpList_init.eh
_smpList_init.eh:
Lset792 = Leh_frame_end145-Leh_frame_begin145
	.long	Lset792
Leh_frame_begin145:
Lset793 = Leh_frame_begin145-Leh_frame_common
	.long	Lset793
Ltmp1116:
	.quad	Leh_func_begin145-Ltmp1116
Lset794 = Leh_func_end145-Leh_func_begin145
	.quad	Lset794
	.byte	0
	.byte	4
Lset795 = Ltmp359-Leh_func_begin145
	.long	Lset795
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset796 = Ltmp360-Ltmp359
	.long	Lset796
	.byte	13
	.byte	6
	.byte	4
Lset797 = Ltmp361-Ltmp360
	.long	Lset797
	.byte	131
	.byte	3
	.align	3
Leh_frame_end145:

	.globl	_smpObject_cons.eh
_smpObject_cons.eh:
Lset798 = Leh_frame_end146-Leh_frame_begin146
	.long	Lset798
Leh_frame_begin146:
Lset799 = Leh_frame_begin146-Leh_frame_common
	.long	Lset799
Ltmp1117:
	.quad	Leh_func_begin146-Ltmp1117
Lset800 = Leh_func_end146-Leh_func_begin146
	.quad	Lset800
	.byte	0
	.byte	4
Lset801 = Ltmp362-Leh_func_begin146
	.long	Lset801
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset802 = Ltmp363-Ltmp362
	.long	Lset802
	.byte	13
	.byte	6
	.byte	4
Lset803 = Ltmp364-Ltmp363
	.long	Lset803
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end146:

	.globl	_smpListBuffer_add_now.eh
_smpListBuffer_add_now.eh:
Lset804 = Leh_frame_end147-Leh_frame_begin147
	.long	Lset804
Leh_frame_begin147:
Lset805 = Leh_frame_begin147-Leh_frame_common
	.long	Lset805
Ltmp1118:
	.quad	Leh_func_begin147-Ltmp1118
Lset806 = Leh_func_end147-Leh_func_begin147
	.quad	Lset806
	.byte	0
	.byte	4
Lset807 = Ltmp365-Leh_func_begin147
	.long	Lset807
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset808 = Ltmp366-Ltmp365
	.long	Lset808
	.byte	13
	.byte	6
	.byte	4
Lset809 = Ltmp367-Ltmp366
	.long	Lset809
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end147:

	.globl	_smpList_copy.eh
_smpList_copy.eh:
Lset810 = Leh_frame_end148-Leh_frame_begin148
	.long	Lset810
Leh_frame_begin148:
Lset811 = Leh_frame_begin148-Leh_frame_common
	.long	Lset811
Ltmp1119:
	.quad	Leh_func_begin148-Ltmp1119
Lset812 = Leh_func_end148-Leh_func_begin148
	.quad	Lset812
	.byte	0
	.byte	4
Lset813 = Ltmp368-Leh_func_begin148
	.long	Lset813
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset814 = Ltmp369-Ltmp368
	.long	Lset814
	.byte	13
	.byte	6
	.byte	4
Lset815 = Ltmp370-Ltmp369
	.long	Lset815
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end148:

	.globl	_smpObject_cons_c.eh
_smpObject_cons_c.eh:
Lset816 = Leh_frame_end149-Leh_frame_begin149
	.long	Lset816
Leh_frame_begin149:
Lset817 = Leh_frame_begin149-Leh_frame_common
	.long	Lset817
Ltmp1120:
	.quad	Leh_func_begin149-Ltmp1120
Lset818 = Leh_func_end149-Leh_func_begin149
	.quad	Lset818
	.byte	0
	.byte	4
Lset819 = Ltmp371-Leh_func_begin149
	.long	Lset819
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset820 = Ltmp372-Ltmp371
	.long	Lset820
	.byte	13
	.byte	6
	.align	3
Leh_frame_end149:

	.globl	_smpNil_add_now.eh
_smpNil_add_now.eh:
Lset821 = Leh_frame_end150-Leh_frame_begin150
	.long	Lset821
Leh_frame_begin150:
Lset822 = Leh_frame_begin150-Leh_frame_common
	.long	Lset822
Ltmp1121:
	.quad	Leh_func_begin150-Ltmp1121
Lset823 = Leh_func_end150-Leh_func_begin150
	.quad	Lset823
	.byte	0
	.byte	4
Lset824 = Ltmp374-Leh_func_begin150
	.long	Lset824
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset825 = Ltmp375-Ltmp374
	.long	Lset825
	.byte	13
	.byte	6
	.align	3
Leh_frame_end150:

	.globl	_smpNil_add.eh
_smpNil_add.eh:
Lset826 = Leh_frame_end151-Leh_frame_begin151
	.long	Lset826
Leh_frame_begin151:
Lset827 = Leh_frame_begin151-Leh_frame_common
	.long	Lset827
Ltmp1122:
	.quad	Leh_func_begin151-Ltmp1122
Lset828 = Leh_func_end151-Leh_func_begin151
	.quad	Lset828
	.byte	0
	.byte	4
Lset829 = Ltmp377-Leh_func_begin151
	.long	Lset829
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset830 = Ltmp378-Ltmp377
	.long	Lset830
	.byte	13
	.byte	6
	.align	3
Leh_frame_end151:

	.globl	_smpList_reverse.eh
_smpList_reverse.eh:
Lset831 = Leh_frame_end152-Leh_frame_begin152
	.long	Lset831
Leh_frame_begin152:
Lset832 = Leh_frame_begin152-Leh_frame_common
	.long	Lset832
Ltmp1123:
	.quad	Leh_func_begin152-Ltmp1123
Lset833 = Leh_func_end152-Leh_func_begin152
	.quad	Lset833
	.byte	0
	.byte	4
Lset834 = Ltmp380-Leh_func_begin152
	.long	Lset834
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset835 = Ltmp381-Ltmp380
	.long	Lset835
	.byte	13
	.byte	6
	.byte	4
Lset836 = Ltmp382-Ltmp381
	.long	Lset836
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end152:

	.globl	_smpList_append_now.eh
_smpList_append_now.eh:
Lset837 = Leh_frame_end153-Leh_frame_begin153
	.long	Lset837
Leh_frame_begin153:
Lset838 = Leh_frame_begin153-Leh_frame_common
	.long	Lset838
Ltmp1124:
	.quad	Leh_func_begin153-Ltmp1124
Lset839 = Leh_func_end153-Leh_func_begin153
	.quad	Lset839
	.byte	0
	.byte	4
Lset840 = Ltmp383-Leh_func_begin153
	.long	Lset840
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset841 = Ltmp384-Ltmp383
	.long	Lset841
	.byte	13
	.byte	6
	.byte	4
Lset842 = Ltmp385-Ltmp384
	.long	Lset842
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end153:

	.globl	_smpList_append.eh
_smpList_append.eh:
Lset843 = Leh_frame_end154-Leh_frame_begin154
	.long	Lset843
Leh_frame_begin154:
Lset844 = Leh_frame_begin154-Leh_frame_common
	.long	Lset844
Ltmp1125:
	.quad	Leh_func_begin154-Ltmp1125
Lset845 = Leh_func_end154-Leh_func_begin154
	.quad	Lset845
	.byte	0
	.byte	4
Lset846 = Ltmp386-Leh_func_begin154
	.long	Lset846
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset847 = Ltmp387-Ltmp386
	.long	Lset847
	.byte	13
	.byte	6
	.byte	4
Lset848 = Ltmp388-Ltmp387
	.long	Lset848
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end154:

	.globl	_smpException_backtrace_add_now.eh
_smpException_backtrace_add_now.eh:
Lset849 = Leh_frame_end155-Leh_frame_begin155
	.long	Lset849
Leh_frame_begin155:
Lset850 = Leh_frame_begin155-Leh_frame_common
	.long	Lset850
Ltmp1126:
	.quad	Leh_func_begin155-Ltmp1126
Lset851 = Leh_func_end155-Leh_func_begin155
	.quad	Lset851
	.byte	0
	.byte	4
Lset852 = Ltmp389-Leh_func_begin155
	.long	Lset852
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset853 = Ltmp390-Ltmp389
	.long	Lset853
	.byte	13
	.byte	6
	.byte	4
Lset854 = Ltmp391-Ltmp390
	.long	Lset854
	.byte	131
	.byte	3
	.align	3
Leh_frame_end155:

	.globl	_smpList_add_now.eh
_smpList_add_now.eh:
Lset855 = Leh_frame_end156-Leh_frame_begin156
	.long	Lset855
Leh_frame_begin156:
Lset856 = Leh_frame_begin156-Leh_frame_common
	.long	Lset856
Ltmp1127:
	.quad	Leh_func_begin156-Ltmp1127
Lset857 = Leh_func_end156-Leh_func_begin156
	.quad	Lset857
	.byte	0
	.byte	4
Lset858 = Ltmp392-Leh_func_begin156
	.long	Lset858
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset859 = Ltmp393-Ltmp392
	.long	Lset859
	.byte	13
	.byte	6
	.byte	4
Lset860 = Ltmp394-Ltmp393
	.long	Lset860
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end156:

	.globl	_smpList_add.eh
_smpList_add.eh:
Lset861 = Leh_frame_end157-Leh_frame_begin157
	.long	Lset861
Leh_frame_begin157:
Lset862 = Leh_frame_begin157-Leh_frame_common
	.long	Lset862
Ltmp1128:
	.quad	Leh_func_begin157-Ltmp1128
Lset863 = Leh_func_end157-Leh_func_begin157
	.quad	Lset863
	.byte	0
	.byte	4
Lset864 = Ltmp395-Leh_func_begin157
	.long	Lset864
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset865 = Ltmp396-Ltmp395
	.long	Lset865
	.byte	13
	.byte	6
	.byte	4
Lset866 = Ltmp397-Ltmp396
	.long	Lset866
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end157:

	.globl	_smpArray_to_list.eh
_smpArray_to_list.eh:
Lset867 = Leh_frame_end158-Leh_frame_begin158
	.long	Lset867
Leh_frame_begin158:
Lset868 = Leh_frame_begin158-Leh_frame_common
	.long	Lset868
Ltmp1129:
	.quad	Leh_func_begin158-Ltmp1129
Lset869 = Leh_func_end158-Leh_func_begin158
	.quad	Lset869
	.byte	0
	.byte	4
Lset870 = Ltmp398-Leh_func_begin158
	.long	Lset870
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset871 = Ltmp399-Ltmp398
	.long	Lset871
	.byte	13
	.byte	6
	.byte	4
Lset872 = Ltmp400-Ltmp399
	.long	Lset872
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end158:

	.globl	_smpInteger_init_mpz_ref.eh
_smpInteger_init_mpz_ref.eh:
Lset873 = Leh_frame_end159-Leh_frame_begin159
	.long	Lset873
Leh_frame_begin159:
Lset874 = Leh_frame_begin159-Leh_frame_common
	.long	Lset874
Ltmp1130:
	.quad	Leh_func_begin159-Ltmp1130
Lset875 = Leh_func_end159-Leh_func_begin159
	.quad	Lset875
	.byte	0
	.byte	4
Lset876 = Ltmp401-Leh_func_begin159
	.long	Lset876
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset877 = Ltmp402-Ltmp401
	.long	Lset877
	.byte	13
	.byte	6
	.byte	4
Lset878 = Ltmp403-Ltmp402
	.long	Lset878
	.byte	131
	.byte	3
	.align	3
Leh_frame_end159:

	.globl	_smpInteger_init_str.eh
_smpInteger_init_str.eh:
Lset879 = Leh_frame_end160-Leh_frame_begin160
	.long	Lset879
Leh_frame_begin160:
Lset880 = Leh_frame_begin160-Leh_frame_common
	.long	Lset880
Ltmp1131:
	.quad	Leh_func_begin160-Ltmp1131
Lset881 = Leh_func_end160-Leh_func_begin160
	.quad	Lset881
	.byte	0
	.byte	4
Lset882 = Ltmp404-Leh_func_begin160
	.long	Lset882
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset883 = Ltmp405-Ltmp404
	.long	Lset883
	.byte	13
	.byte	6
	.byte	4
Lset884 = Ltmp406-Ltmp405
	.long	Lset884
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end160:

	.globl	_smpInteger_init_clong.eh
_smpInteger_init_clong.eh:
Lset885 = Leh_frame_end161-Leh_frame_begin161
	.long	Lset885
Leh_frame_begin161:
Lset886 = Leh_frame_begin161-Leh_frame_common
	.long	Lset886
Ltmp1132:
	.quad	Leh_func_begin161-Ltmp1132
Lset887 = Leh_func_end161-Leh_func_begin161
	.quad	Lset887
	.byte	0
	.byte	4
Lset888 = Ltmp407-Leh_func_begin161
	.long	Lset888
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset889 = Ltmp408-Ltmp407
	.long	Lset889
	.byte	13
	.byte	6
	.byte	4
Lset890 = Ltmp409-Ltmp408
	.long	Lset890
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end161:

	.globl	_smpString_length.eh
_smpString_length.eh:
Lset891 = Leh_frame_end162-Leh_frame_begin162
	.long	Lset891
Leh_frame_begin162:
Lset892 = Leh_frame_begin162-Leh_frame_common
	.long	Lset892
Ltmp1133:
	.quad	Leh_func_begin162-Ltmp1133
Lset893 = Leh_func_end162-Leh_func_begin162
	.quad	Lset893
	.byte	0
	.byte	4
Lset894 = Ltmp410-Leh_func_begin162
	.long	Lset894
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset895 = Ltmp411-Ltmp410
	.long	Lset895
	.byte	13
	.byte	6
	.byte	4
Lset896 = Ltmp412-Ltmp411
	.long	Lset896
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end162:

	.globl	_smpArray_length.eh
_smpArray_length.eh:
Lset897 = Leh_frame_end163-Leh_frame_begin163
	.long	Lset897
Leh_frame_begin163:
Lset898 = Leh_frame_begin163-Leh_frame_common
	.long	Lset898
Ltmp1134:
	.quad	Leh_func_begin163-Ltmp1134
Lset899 = Leh_func_end163-Leh_func_begin163
	.quad	Lset899
	.byte	0
	.byte	4
Lset900 = Ltmp413-Leh_func_begin163
	.long	Lset900
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset901 = Ltmp414-Ltmp413
	.long	Lset901
	.byte	13
	.byte	6
	.byte	4
Lset902 = Ltmp415-Ltmp414
	.long	Lset902
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end163:

	.globl	_smpObject_hash.eh
_smpObject_hash.eh:
Lset903 = Leh_frame_end164-Leh_frame_begin164
	.long	Lset903
Leh_frame_begin164:
Lset904 = Leh_frame_begin164-Leh_frame_common
	.long	Lset904
Ltmp1135:
	.quad	Leh_func_begin164-Ltmp1135
Lset905 = Leh_func_end164-Leh_func_begin164
	.quad	Lset905
	.byte	0
	.byte	4
Lset906 = Ltmp416-Leh_func_begin164
	.long	Lset906
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset907 = Ltmp417-Ltmp416
	.long	Lset907
	.byte	13
	.byte	6
	.byte	4
Lset908 = Ltmp418-Ltmp417
	.long	Lset908
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end164:

	.globl	_smpInteger_init_mpz.eh
_smpInteger_init_mpz.eh:
Lset909 = Leh_frame_end165-Leh_frame_begin165
	.long	Lset909
Leh_frame_begin165:
Lset910 = Leh_frame_begin165-Leh_frame_common
	.long	Lset910
Ltmp1136:
	.quad	Leh_func_begin165-Ltmp1136
Lset911 = Leh_func_end165-Leh_func_begin165
	.quad	Lset911
	.byte	0
	.byte	4
Lset912 = Ltmp419-Leh_func_begin165
	.long	Lset912
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset913 = Ltmp420-Ltmp419
	.long	Lset913
	.byte	13
	.byte	6
	.byte	4
Lset914 = Ltmp421-Ltmp420
	.long	Lset914
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end165:

	.globl	_smpHash_init_capacity.eh
_smpHash_init_capacity.eh:
Lset915 = Leh_frame_end166-Leh_frame_begin166
	.long	Lset915
Leh_frame_begin166:
Lset916 = Leh_frame_begin166-Leh_frame_common
	.long	Lset916
Ltmp1137:
	.quad	Leh_func_begin166-Ltmp1137
Lset917 = Leh_func_end166-Leh_func_begin166
	.quad	Lset917
	.byte	0
	.byte	4
Lset918 = Ltmp422-Leh_func_begin166
	.long	Lset918
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset919 = Ltmp423-Ltmp422
	.long	Lset919
	.byte	13
	.byte	6
	.byte	4
Lset920 = Ltmp424-Ltmp423
	.long	Lset920
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end166:

	.globl	_smpHash_init.eh
_smpHash_init.eh:
Lset921 = Leh_frame_end167-Leh_frame_begin167
	.long	Lset921
Leh_frame_begin167:
Lset922 = Leh_frame_begin167-Leh_frame_common
	.long	Lset922
Ltmp1138:
	.quad	Leh_func_begin167-Ltmp1138
Lset923 = Leh_func_end167-Leh_func_begin167
	.quad	Lset923
	.byte	0
	.byte	4
Lset924 = Ltmp425-Leh_func_begin167
	.long	Lset924
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset925 = Ltmp426-Ltmp425
	.long	Lset925
	.byte	13
	.byte	6
	.align	3
Leh_frame_end167:

	.globl	_smpFunction_init_v.eh
_smpFunction_init_v.eh:
Lset926 = Leh_frame_end168-Leh_frame_begin168
	.long	Lset926
Leh_frame_begin168:
Lset927 = Leh_frame_begin168-Leh_frame_common
	.long	Lset927
Ltmp1139:
	.quad	Leh_func_begin168-Ltmp1139
Lset928 = Leh_func_end168-Leh_func_begin168
	.quad	Lset928
	.byte	0
	.byte	4
Lset929 = Ltmp427-Leh_func_begin168
	.long	Lset929
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset930 = Ltmp428-Ltmp427
	.long	Lset930
	.byte	13
	.byte	6
	.byte	4
Lset931 = Ltmp429-Ltmp428
	.long	Lset931
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end168:

	.globl	_smpFunction_init.eh
_smpFunction_init.eh:
Lset932 = Leh_frame_end169-Leh_frame_begin169
	.long	Lset932
Leh_frame_begin169:
Lset933 = Leh_frame_begin169-Leh_frame_common
	.long	Lset933
Ltmp1140:
	.quad	Leh_func_begin169-Ltmp1140
Lset934 = Leh_func_end169-Leh_func_begin169
	.quad	Lset934
	.byte	0
	.byte	4
Lset935 = Ltmp430-Leh_func_begin169
	.long	Lset935
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset936 = Ltmp431-Ltmp430
	.long	Lset936
	.byte	13
	.byte	6
	.align	3
Leh_frame_end169:

	.globl	_smpFloat_init_mpfr_ref.eh
_smpFloat_init_mpfr_ref.eh:
Lset937 = Leh_frame_end170-Leh_frame_begin170
	.long	Lset937
Leh_frame_begin170:
Lset938 = Leh_frame_begin170-Leh_frame_common
	.long	Lset938
Ltmp1141:
	.quad	Leh_func_begin170-Ltmp1141
Lset939 = Leh_func_end170-Leh_func_begin170
	.quad	Lset939
	.byte	0
	.byte	4
Lset940 = Ltmp433-Leh_func_begin170
	.long	Lset940
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset941 = Ltmp434-Ltmp433
	.long	Lset941
	.byte	13
	.byte	6
	.byte	4
Lset942 = Ltmp435-Ltmp434
	.long	Lset942
	.byte	131
	.byte	3
	.align	3
Leh_frame_end170:

	.globl	_smpFloat_init_str.eh
_smpFloat_init_str.eh:
Lset943 = Leh_frame_end171-Leh_frame_begin171
	.long	Lset943
Leh_frame_begin171:
Lset944 = Leh_frame_begin171-Leh_frame_common
	.long	Lset944
Ltmp1142:
	.quad	Leh_func_begin171-Ltmp1142
Lset945 = Leh_func_end171-Leh_func_begin171
	.quad	Lset945
	.byte	0
	.byte	4
Lset946 = Ltmp436-Leh_func_begin171
	.long	Lset946
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset947 = Ltmp437-Ltmp436
	.long	Lset947
	.byte	13
	.byte	6
	.byte	4
Lset948 = Ltmp438-Ltmp437
	.long	Lset948
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end171:

	.globl	_smpFloat_init_cdouble.eh
_smpFloat_init_cdouble.eh:
Lset949 = Leh_frame_end172-Leh_frame_begin172
	.long	Lset949
Leh_frame_begin172:
Lset950 = Leh_frame_begin172-Leh_frame_common
	.long	Lset950
Ltmp1143:
	.quad	Leh_func_begin172-Ltmp1143
Lset951 = Leh_func_end172-Leh_func_begin172
	.quad	Lset951
	.byte	0
	.byte	4
Lset952 = Ltmp439-Leh_func_begin172
	.long	Lset952
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset953 = Ltmp440-Ltmp439
	.long	Lset953
	.byte	13
	.byte	6
	.byte	4
Lset954 = Ltmp441-Ltmp440
	.long	Lset954
	.byte	131
	.byte	3
	.align	3
Leh_frame_end172:

	.globl	_smpFloat_init_mpfr.eh
_smpFloat_init_mpfr.eh:
Lset955 = Leh_frame_end173-Leh_frame_begin173
	.long	Lset955
Leh_frame_begin173:
Lset956 = Leh_frame_begin173-Leh_frame_common
	.long	Lset956
Ltmp1144:
	.quad	Leh_func_begin173-Ltmp1144
Lset957 = Leh_func_end173-Leh_func_begin173
	.quad	Lset957
	.byte	0
	.byte	4
Lset958 = Ltmp442-Leh_func_begin173
	.long	Lset958
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset959 = Ltmp443-Ltmp442
	.long	Lset959
	.byte	13
	.byte	6
	.byte	4
Lset960 = Ltmp444-Ltmp443
	.long	Lset960
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end173:

	.globl	_smpTypeError_init_fmt.eh
_smpTypeError_init_fmt.eh:
Lset961 = Leh_frame_end174-Leh_frame_begin174
	.long	Lset961
Leh_frame_begin174:
Lset962 = Leh_frame_begin174-Leh_frame_common
	.long	Lset962
Ltmp1145:
	.quad	Leh_func_begin174-Ltmp1145
Lset963 = Leh_func_end174-Leh_func_begin174
	.quad	Lset963
	.byte	0
	.byte	4
Lset964 = Ltmp445-Leh_func_begin174
	.long	Lset964
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset965 = Ltmp446-Ltmp445
	.long	Lset965
	.byte	13
	.byte	6
	.byte	4
Lset966 = Ltmp447-Ltmp446
	.long	Lset966
	.byte	131
	.byte	3
	.align	3
Leh_frame_end174:

	.globl	_smpTypeError_init_detailed.eh
_smpTypeError_init_detailed.eh:
Lset967 = Leh_frame_end175-Leh_frame_begin175
	.long	Lset967
Leh_frame_begin175:
Lset968 = Leh_frame_begin175-Leh_frame_common
	.long	Lset968
Ltmp1146:
	.quad	Leh_func_begin175-Ltmp1146
Lset969 = Leh_func_end175-Leh_func_begin175
	.quad	Lset969
	.byte	0
	.byte	4
Lset970 = Ltmp448-Leh_func_begin175
	.long	Lset970
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset971 = Ltmp449-Ltmp448
	.long	Lset971
	.byte	13
	.byte	6
	.byte	4
Lset972 = Ltmp450-Ltmp449
	.long	Lset972
	.byte	131
	.byte	3
	.align	3
Leh_frame_end175:

	.globl	_smpTypeError_init.eh
_smpTypeError_init.eh:
Lset973 = Leh_frame_end176-Leh_frame_begin176
	.long	Lset973
Leh_frame_begin176:
Lset974 = Leh_frame_begin176-Leh_frame_common
	.long	Lset974
Ltmp1147:
	.quad	Leh_func_begin176-Ltmp1147
Lset975 = Leh_func_end176-Leh_func_begin176
	.quad	Lset975
	.byte	0
	.byte	4
Lset976 = Ltmp451-Leh_func_begin176
	.long	Lset976
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset977 = Ltmp452-Ltmp451
	.long	Lset977
	.byte	13
	.byte	6
	.byte	4
Lset978 = Ltmp453-Ltmp452
	.long	Lset978
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end176:

	.globl	_smpType_def_general.eh
_smpType_def_general.eh:
Lset979 = Leh_frame_end177-Leh_frame_begin177
	.long	Lset979
Leh_frame_begin177:
Lset980 = Leh_frame_begin177-Leh_frame_common
	.long	Lset980
Ltmp1148:
	.quad	Leh_func_begin177-Ltmp1148
Lset981 = Leh_func_end177-Leh_func_begin177
	.quad	Lset981
	.byte	0
	.byte	4
Lset982 = Ltmp454-Leh_func_begin177
	.long	Lset982
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset983 = Ltmp455-Ltmp454
	.long	Lset983
	.byte	13
	.byte	6
	.byte	4
Lset984 = Ltmp456-Ltmp455
	.long	Lset984
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end177:

	.globl	_smpType_defvar.eh
_smpType_defvar.eh:
Lset985 = Leh_frame_end178-Leh_frame_begin178
	.long	Lset985
Leh_frame_begin178:
Lset986 = Leh_frame_begin178-Leh_frame_common
	.long	Lset986
Ltmp1149:
	.quad	Leh_func_begin178-Ltmp1149
Lset987 = Leh_func_end178-Leh_func_begin178
	.quad	Lset987
	.byte	0
	.byte	4
Lset988 = Ltmp457-Leh_func_begin178
	.long	Lset988
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset989 = Ltmp458-Ltmp457
	.long	Lset989
	.byte	13
	.byte	6
	.align	3
Leh_frame_end178:

	.globl	_smpType_def.eh
_smpType_def.eh:
Lset990 = Leh_frame_end179-Leh_frame_begin179
	.long	Lset990
Leh_frame_begin179:
Lset991 = Leh_frame_begin179-Leh_frame_common
	.long	Lset991
Ltmp1150:
	.quad	Leh_func_begin179-Ltmp1150
Lset992 = Leh_func_end179-Leh_func_begin179
	.quad	Lset992
	.byte	0
	.byte	4
Lset993 = Ltmp459-Leh_func_begin179
	.long	Lset993
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset994 = Ltmp460-Ltmp459
	.long	Lset994
	.byte	13
	.byte	6
	.align	3
Leh_frame_end179:

	.globl	_smpType_abstract_def.eh
_smpType_abstract_def.eh:
Lset995 = Leh_frame_end180-Leh_frame_begin180
	.long	Lset995
Leh_frame_begin180:
Lset996 = Leh_frame_begin180-Leh_frame_common
	.long	Lset996
Ltmp1151:
	.quad	Leh_func_begin180-Ltmp1151
Lset997 = Leh_func_end180-Leh_func_begin180
	.quad	Lset997
	.byte	0
	.byte	4
Lset998 = Ltmp461-Leh_func_begin180
	.long	Lset998
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset999 = Ltmp462-Ltmp461
	.long	Lset999
	.byte	13
	.byte	6
	.byte	4
Lset1000 = Ltmp463-Ltmp462
	.long	Lset1000
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end180:

	.globl	_smp_abstract_function.eh
_smp_abstract_function.eh:
Lset1001 = Leh_frame_end181-Leh_frame_begin181
	.long	Lset1001
Leh_frame_begin181:
Lset1002 = Leh_frame_begin181-Leh_frame_common
	.long	Lset1002
Ltmp1152:
	.quad	Leh_func_begin181-Ltmp1152
Lset1003 = Leh_func_end181-Leh_func_begin181
	.quad	Lset1003
	.byte	0
	.byte	4
Lset1004 = Ltmp464-Leh_func_begin181
	.long	Lset1004
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1005 = Ltmp465-Ltmp464
	.long	Lset1005
	.byte	13
	.byte	6
	.byte	4
Lset1006 = Ltmp466-Ltmp465
	.long	Lset1006
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end181:

	.globl	_smpThrown_create_class.eh
_smpThrown_create_class.eh:
Lset1007 = Leh_frame_end182-Leh_frame_begin182
	.long	Lset1007
Leh_frame_begin182:
Lset1008 = Leh_frame_begin182-Leh_frame_common
	.long	Lset1008
Ltmp1153:
	.quad	Leh_func_begin182-Ltmp1153
Lset1009 = Leh_func_end182-Leh_func_begin182
	.quad	Lset1009
	.byte	0
	.byte	4
Lset1010 = Ltmp467-Leh_func_begin182
	.long	Lset1010
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1011 = Ltmp468-Ltmp467
	.long	Lset1011
	.byte	13
	.byte	6
	.byte	4
Lset1012 = Ltmp469-Ltmp468
	.long	Lset1012
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end182:

	.globl	_smpThrown_to_s.eh
_smpThrown_to_s.eh:
Lset1013 = Leh_frame_end183-Leh_frame_begin183
	.long	Lset1013
Leh_frame_begin183:
Lset1014 = Leh_frame_begin183-Leh_frame_common
	.long	Lset1014
Ltmp1154:
	.quad	Leh_func_begin183-Ltmp1154
Lset1015 = Leh_func_end183-Leh_func_begin183
	.quad	Lset1015
	.byte	0
	.byte	4
Lset1016 = Ltmp470-Leh_func_begin183
	.long	Lset1016
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1017 = Ltmp471-Ltmp470
	.long	Lset1017
	.byte	13
	.byte	6
	.byte	4
Lset1018 = Ltmp472-Ltmp471
	.long	Lset1018
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end183:

	.globl	_smpstrcreate_class.eh
_smpstrcreate_class.eh:
Lset1019 = Leh_frame_end184-Leh_frame_begin184
	.long	Lset1019
Leh_frame_begin184:
Lset1020 = Leh_frame_begin184-Leh_frame_common
	.long	Lset1020
Ltmp1155:
	.quad	Leh_func_begin184-Ltmp1155
Lset1021 = Leh_func_end184-Leh_func_begin184
	.quad	Lset1021
	.byte	0
	.byte	4
Lset1022 = Ltmp473-Leh_func_begin184
	.long	Lset1022
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1023 = Ltmp474-Ltmp473
	.long	Lset1023
	.byte	13
	.byte	6
	.byte	4
Lset1024 = Ltmp475-Ltmp474
	.long	Lset1024
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end184:

	.globl	_smpString_add.eh
_smpString_add.eh:
Lset1025 = Leh_frame_end185-Leh_frame_begin185
	.long	Lset1025
Leh_frame_begin185:
Lset1026 = Leh_frame_begin185-Leh_frame_common
	.long	Lset1026
Ltmp1156:
	.quad	Leh_func_begin185-Ltmp1156
Lset1027 = Leh_func_end185-Leh_func_begin185
	.quad	Lset1027
	.byte	0
	.byte	4
Lset1028 = Ltmp476-Leh_func_begin185
	.long	Lset1028
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1029 = Ltmp477-Ltmp476
	.long	Lset1029
	.byte	13
	.byte	6
	.byte	4
Lset1030 = Ltmp478-Ltmp477
	.long	Lset1030
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end185:

	.globl	_smpPair_create_class.eh
_smpPair_create_class.eh:
Lset1031 = Leh_frame_end186-Leh_frame_begin186
	.long	Lset1031
Leh_frame_begin186:
Lset1032 = Leh_frame_begin186-Leh_frame_common
	.long	Lset1032
Ltmp1157:
	.quad	Leh_func_begin186-Ltmp1157
Lset1033 = Leh_func_end186-Leh_func_begin186
	.quad	Lset1033
	.byte	0
	.byte	4
Lset1034 = Ltmp479-Leh_func_begin186
	.long	Lset1034
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1035 = Ltmp480-Ltmp479
	.long	Lset1035
	.byte	13
	.byte	6
	.byte	4
Lset1036 = Ltmp481-Ltmp480
	.long	Lset1036
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end186:

	.globl	_smpPair_to_s.eh
_smpPair_to_s.eh:
Lset1037 = Leh_frame_end187-Leh_frame_begin187
	.long	Lset1037
Leh_frame_begin187:
Lset1038 = Leh_frame_begin187-Leh_frame_common
	.long	Lset1038
Ltmp1158:
	.quad	Leh_func_begin187-Ltmp1158
Lset1039 = Leh_func_end187-Leh_func_begin187
	.quad	Lset1039
	.byte	0
	.byte	4
Lset1040 = Ltmp482-Leh_func_begin187
	.long	Lset1040
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1041 = Ltmp483-Ltmp482
	.long	Lset1041
	.byte	13
	.byte	6
	.align	3
Leh_frame_end187:

	.globl	_smpPair_write.eh
_smpPair_write.eh:
Lset1042 = Leh_frame_end188-Leh_frame_begin188
	.long	Lset1042
Leh_frame_begin188:
Lset1043 = Leh_frame_begin188-Leh_frame_common
	.long	Lset1043
Ltmp1159:
	.quad	Leh_func_begin188-Ltmp1159
Lset1044 = Leh_func_end188-Leh_func_begin188
	.quad	Lset1044
	.byte	0
	.byte	4
Lset1045 = Ltmp484-Leh_func_begin188
	.long	Lset1045
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1046 = Ltmp485-Ltmp484
	.long	Lset1046
	.byte	13
	.byte	6
	.align	3
Leh_frame_end188:

	.globl	_smpNil_create_class.eh
_smpNil_create_class.eh:
Lset1047 = Leh_frame_end189-Leh_frame_begin189
	.long	Lset1047
Leh_frame_begin189:
Lset1048 = Leh_frame_begin189-Leh_frame_common
	.long	Lset1048
Ltmp1160:
	.quad	Leh_func_begin189-Ltmp1160
Lset1049 = Leh_func_end189-Leh_func_begin189
	.quad	Lset1049
	.byte	0
	.byte	4
Lset1050 = Ltmp486-Leh_func_begin189
	.long	Lset1050
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1051 = Ltmp487-Ltmp486
	.long	Lset1051
	.byte	13
	.byte	6
	.byte	4
Lset1052 = Ltmp488-Ltmp487
	.long	Lset1052
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end189:

	.globl	_smpList_concat.eh
_smpList_concat.eh:
Lset1053 = Leh_frame_end190-Leh_frame_begin190
	.long	Lset1053
Leh_frame_begin190:
Lset1054 = Leh_frame_begin190-Leh_frame_common
	.long	Lset1054
Ltmp1161:
	.quad	Leh_func_begin190-Ltmp1161
Lset1055 = Leh_func_end190-Leh_func_begin190
	.quad	Lset1055
	.byte	0
	.byte	4
Lset1056 = Ltmp489-Leh_func_begin190
	.long	Lset1056
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1057 = Ltmp490-Ltmp489
	.long	Lset1057
	.byte	13
	.byte	6
	.byte	4
Lset1058 = Ltmp491-Ltmp490
	.long	Lset1058
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end190:

	.globl	_smpList_create_class.eh
_smpList_create_class.eh:
Lset1059 = Leh_frame_end191-Leh_frame_begin191
	.long	Lset1059
Leh_frame_begin191:
Lset1060 = Leh_frame_begin191-Leh_frame_common
	.long	Lset1060
Ltmp1162:
	.quad	Leh_func_begin191-Ltmp1162
Lset1061 = Leh_func_end191-Leh_func_begin191
	.quad	Lset1061
	.byte	0
	.byte	4
Lset1062 = Ltmp492-Leh_func_begin191
	.long	Lset1062
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1063 = Ltmp493-Ltmp492
	.long	Lset1063
	.byte	13
	.byte	6
	.byte	4
Lset1064 = Ltmp494-Ltmp493
	.long	Lset1064
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end191:

	.globl	_smpList_at.eh
_smpList_at.eh:
Lset1065 = Leh_frame_end192-Leh_frame_begin192
	.long	Lset1065
Leh_frame_begin192:
Lset1066 = Leh_frame_begin192-Leh_frame_common
	.long	Lset1066
Ltmp1163:
	.quad	Leh_func_begin192-Ltmp1163
Lset1067 = Leh_func_end192-Leh_func_begin192
	.quad	Lset1067
	.byte	0
	.byte	4
Lset1068 = Ltmp495-Leh_func_begin192
	.long	Lset1068
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1069 = Ltmp496-Ltmp495
	.long	Lset1069
	.byte	13
	.byte	6
	.byte	4
Lset1070 = Ltmp497-Ltmp496
	.long	Lset1070
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end192:

	.globl	_smpList_at_assign.eh
_smpList_at_assign.eh:
Lset1071 = Leh_frame_end193-Leh_frame_begin193
	.long	Lset1071
Leh_frame_begin193:
Lset1072 = Leh_frame_begin193-Leh_frame_common
	.long	Lset1072
Ltmp1164:
	.quad	Leh_func_begin193-Ltmp1164
Lset1073 = Leh_func_end193-Leh_func_begin193
	.quad	Lset1073
	.byte	0
	.byte	4
Lset1074 = Ltmp498-Leh_func_begin193
	.long	Lset1074
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1075 = Ltmp499-Ltmp498
	.long	Lset1075
	.byte	13
	.byte	6
	.byte	4
Lset1076 = Ltmp500-Ltmp499
	.long	Lset1076
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end193:

	.globl	_smpList_concat_now.eh
_smpList_concat_now.eh:
Lset1077 = Leh_frame_end194-Leh_frame_begin194
	.long	Lset1077
Leh_frame_begin194:
Lset1078 = Leh_frame_begin194-Leh_frame_common
	.long	Lset1078
Ltmp1165:
	.quad	Leh_func_begin194-Ltmp1165
Lset1079 = Leh_func_end194-Leh_func_begin194
	.quad	Lset1079
	.byte	0
	.byte	4
Lset1080 = Ltmp501-Leh_func_begin194
	.long	Lset1080
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1081 = Ltmp502-Ltmp501
	.long	Lset1081
	.byte	13
	.byte	6
	.byte	4
Lset1082 = Ltmp503-Ltmp502
	.long	Lset1082
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end194:

	.globl	_smpList_each.eh
_smpList_each.eh:
Lset1083 = Leh_frame_end195-Leh_frame_begin195
	.long	Lset1083
Leh_frame_begin195:
Lset1084 = Leh_frame_begin195-Leh_frame_common
	.long	Lset1084
Ltmp1166:
	.quad	Leh_func_begin195-Ltmp1166
Lset1085 = Leh_func_end195-Leh_func_begin195
	.quad	Lset1085
	.byte	0
	.byte	4
Lset1086 = Ltmp504-Leh_func_begin195
	.long	Lset1086
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1087 = Ltmp505-Ltmp504
	.long	Lset1087
	.byte	13
	.byte	6
	.byte	4
Lset1088 = Ltmp506-Ltmp505
	.long	Lset1088
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end195:

	.globl	_smpList_equalp.eh
_smpList_equalp.eh:
Lset1089 = Leh_frame_end196-Leh_frame_begin196
	.long	Lset1089
Leh_frame_begin196:
Lset1090 = Leh_frame_begin196-Leh_frame_common
	.long	Lset1090
Ltmp1167:
	.quad	Leh_func_begin196-Ltmp1167
Lset1091 = Leh_func_end196-Leh_func_begin196
	.quad	Lset1091
	.byte	0
	.byte	4
Lset1092 = Ltmp507-Leh_func_begin196
	.long	Lset1092
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1093 = Ltmp508-Ltmp507
	.long	Lset1093
	.byte	13
	.byte	6
	.byte	4
Lset1094 = Ltmp509-Ltmp508
	.long	Lset1094
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end196:

	.globl	_smpList_length.eh
_smpList_length.eh:
Lset1095 = Leh_frame_end197-Leh_frame_begin197
	.long	Lset1095
Leh_frame_begin197:
Lset1096 = Leh_frame_begin197-Leh_frame_common
	.long	Lset1096
Ltmp1168:
	.quad	Leh_func_begin197-Ltmp1168
Lset1097 = Leh_func_end197-Leh_func_begin197
	.quad	Lset1097
	.byte	0
	.byte	4
Lset1098 = Ltmp510-Leh_func_begin197
	.long	Lset1098
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1099 = Ltmp511-Ltmp510
	.long	Lset1099
	.byte	13
	.byte	6
	.byte	4
Lset1100 = Ltmp512-Ltmp511
	.long	Lset1100
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end197:

	.globl	_smpList_map.eh
_smpList_map.eh:
Lset1101 = Leh_frame_end198-Leh_frame_begin198
	.long	Lset1101
Leh_frame_begin198:
Lset1102 = Leh_frame_begin198-Leh_frame_common
	.long	Lset1102
Ltmp1169:
	.quad	Leh_func_begin198-Ltmp1169
Lset1103 = Leh_func_end198-Leh_func_begin198
	.quad	Lset1103
	.byte	0
	.byte	4
Lset1104 = Ltmp513-Leh_func_begin198
	.long	Lset1104
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1105 = Ltmp514-Ltmp513
	.long	Lset1105
	.byte	13
	.byte	6
	.byte	4
Lset1106 = Ltmp515-Ltmp514
	.long	Lset1106
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end198:

	.globl	_smpList_reduce.eh
_smpList_reduce.eh:
Lset1107 = Leh_frame_end199-Leh_frame_begin199
	.long	Lset1107
Leh_frame_begin199:
Lset1108 = Leh_frame_begin199-Leh_frame_common
	.long	Lset1108
Ltmp1170:
	.quad	Leh_func_begin199-Ltmp1170
Lset1109 = Leh_func_end199-Leh_func_begin199
	.quad	Lset1109
	.byte	0
	.byte	4
Lset1110 = Ltmp516-Leh_func_begin199
	.long	Lset1110
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1111 = Ltmp517-Ltmp516
	.long	Lset1111
	.byte	13
	.byte	6
	.byte	4
Lset1112 = Ltmp518-Ltmp517
	.long	Lset1112
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end199:

	.globl	_smpList_sort.eh
_smpList_sort.eh:
Lset1113 = Leh_frame_end200-Leh_frame_begin200
	.long	Lset1113
Leh_frame_begin200:
Lset1114 = Leh_frame_begin200-Leh_frame_common
	.long	Lset1114
Ltmp1171:
	.quad	Leh_func_begin200-Ltmp1171
Lset1115 = Leh_func_end200-Leh_func_begin200
	.quad	Lset1115
	.byte	0
	.byte	4
Lset1116 = Ltmp519-Leh_func_begin200
	.long	Lset1116
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1117 = Ltmp520-Ltmp519
	.long	Lset1117
	.byte	13
	.byte	6
	.byte	4
Lset1118 = Ltmp521-Ltmp520
	.long	Lset1118
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end200:

	.globl	_smpList_nsort.eh
_smpList_nsort.eh:
Lset1119 = Leh_frame_end201-Leh_frame_begin201
	.long	Lset1119
Leh_frame_begin201:
Lset1120 = Leh_frame_begin201-Leh_frame_common
	.long	Lset1120
Ltmp1172:
	.quad	Leh_func_begin201-Ltmp1172
Lset1121 = Leh_func_end201-Leh_func_begin201
	.quad	Lset1121
	.byte	0
	.byte	4
Lset1122 = Ltmp522-Leh_func_begin201
	.long	Lset1122
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1123 = Ltmp523-Ltmp522
	.long	Lset1123
	.byte	13
	.byte	6
	.byte	4
Lset1124 = Ltmp524-Ltmp523
	.long	Lset1124
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end201:

	.globl	_smpList_to_a.eh
_smpList_to_a.eh:
Lset1125 = Leh_frame_end202-Leh_frame_begin202
	.long	Lset1125
Leh_frame_begin202:
Lset1126 = Leh_frame_begin202-Leh_frame_common
	.long	Lset1126
Ltmp1173:
	.quad	Leh_func_begin202-Ltmp1173
Lset1127 = Leh_func_end202-Leh_func_begin202
	.quad	Lset1127
	.byte	0
	.byte	4
Lset1128 = Ltmp525-Leh_func_begin202
	.long	Lset1128
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1129 = Ltmp526-Ltmp525
	.long	Lset1129
	.byte	13
	.byte	6
	.byte	4
Lset1130 = Ltmp527-Ltmp526
	.long	Lset1130
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end202:

	.globl	_smpList_to_s.eh
_smpList_to_s.eh:
Lset1131 = Leh_frame_end203-Leh_frame_begin203
	.long	Lset1131
Leh_frame_begin203:
Lset1132 = Leh_frame_begin203-Leh_frame_common
	.long	Lset1132
Ltmp1174:
	.quad	Leh_func_begin203-Ltmp1174
Lset1133 = Leh_func_end203-Leh_func_begin203
	.quad	Lset1133
	.byte	0
	.byte	4
Lset1134 = Ltmp528-Leh_func_begin203
	.long	Lset1134
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1135 = Ltmp529-Ltmp528
	.long	Lset1135
	.byte	13
	.byte	6
	.byte	4
Lset1136 = Ltmp530-Ltmp529
	.long	Lset1136
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end203:

	.globl	_smpList_write.eh
_smpList_write.eh:
Lset1137 = Leh_frame_end204-Leh_frame_begin204
	.long	Lset1137
Leh_frame_begin204:
Lset1138 = Leh_frame_begin204-Leh_frame_common
	.long	Lset1138
Ltmp1175:
	.quad	Leh_func_begin204-Ltmp1175
Lset1139 = Leh_func_end204-Leh_func_begin204
	.quad	Lset1139
	.byte	0
	.byte	4
Lset1140 = Ltmp531-Leh_func_begin204
	.long	Lset1140
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1141 = Ltmp532-Ltmp531
	.long	Lset1141
	.byte	13
	.byte	6
	.byte	4
Lset1142 = Ltmp533-Ltmp532
	.long	Lset1142
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end204:

	.globl	_smpFunction_create_class.eh
_smpFunction_create_class.eh:
Lset1143 = Leh_frame_end205-Leh_frame_begin205
	.long	Lset1143
Leh_frame_begin205:
Lset1144 = Leh_frame_begin205-Leh_frame_common
	.long	Lset1144
Ltmp1176:
	.quad	Leh_func_begin205-Ltmp1176
Lset1145 = Leh_func_end205-Leh_func_begin205
	.quad	Lset1145
	.byte	0
	.byte	4
Lset1146 = Ltmp534-Leh_func_begin205
	.long	Lset1146
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1147 = Ltmp535-Ltmp534
	.long	Lset1147
	.byte	13
	.byte	6
	.byte	4
Lset1148 = Ltmp536-Ltmp535
	.long	Lset1148
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end205:

	.globl	_smpString_add_now.eh
_smpString_add_now.eh:
Lset1149 = Leh_frame_end206-Leh_frame_begin206
	.long	Lset1149
Leh_frame_begin206:
Lset1150 = Leh_frame_begin206-Leh_frame_common
	.long	Lset1150
Ltmp1177:
	.quad	Leh_func_begin206-Ltmp1177
Lset1151 = Leh_func_end206-Leh_func_begin206
	.quad	Lset1151
	.byte	0
	.byte	4
Lset1152 = Ltmp537-Leh_func_begin206
	.long	Lset1152
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1153 = Ltmp538-Ltmp537
	.long	Lset1153
	.byte	13
	.byte	6
	.byte	4
Lset1154 = Ltmp539-Ltmp538
	.long	Lset1154
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end206:

	.globl	_smpRegex_match_str.eh
_smpRegex_match_str.eh:
Lset1155 = Leh_frame_end207-Leh_frame_begin207
	.long	Lset1155
Leh_frame_begin207:
Lset1156 = Leh_frame_begin207-Leh_frame_common
	.long	Lset1156
Ltmp1178:
	.quad	Leh_func_begin207-Ltmp1178
Lset1157 = Leh_func_end207-Leh_func_begin207
	.quad	Lset1157
	.byte	0
	.byte	4
Lset1158 = Ltmp540-Leh_func_begin207
	.long	Lset1158
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1159 = Ltmp541-Ltmp540
	.long	Lset1159
	.byte	13
	.byte	6
	.byte	4
Lset1160 = Ltmp542-Ltmp541
	.long	Lset1160
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end207:

	.globl	_smpRegex_match.eh
_smpRegex_match.eh:
Lset1161 = Leh_frame_end208-Leh_frame_begin208
	.long	Lset1161
Leh_frame_begin208:
Lset1162 = Leh_frame_begin208-Leh_frame_common
	.long	Lset1162
Ltmp1179:
	.quad	Leh_func_begin208-Ltmp1179
Lset1163 = Leh_func_end208-Leh_func_begin208
	.quad	Lset1163
	.byte	0
	.byte	4
Lset1164 = Ltmp543-Leh_func_begin208
	.long	Lset1164
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1165 = Ltmp544-Ltmp543
	.long	Lset1165
	.byte	13
	.byte	6
	.align	3
Leh_frame_end208:

	.globl	_smpRegex_matchp_cint.eh
_smpRegex_matchp_cint.eh:
Lset1166 = Leh_frame_end209-Leh_frame_begin209
	.long	Lset1166
Leh_frame_begin209:
Lset1167 = Leh_frame_begin209-Leh_frame_common
	.long	Lset1167
Ltmp1180:
	.quad	Leh_func_begin209-Ltmp1180
Lset1168 = Leh_func_end209-Leh_func_begin209
	.quad	Lset1168
	.byte	0
	.byte	4
Lset1169 = Ltmp545-Leh_func_begin209
	.long	Lset1169
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1170 = Ltmp546-Ltmp545
	.long	Lset1170
	.byte	13
	.byte	6
	.byte	4
Lset1171 = Ltmp547-Ltmp546
	.long	Lset1171
	.byte	131
	.byte	3
	.align	3
Leh_frame_end209:

	.globl	_smpRegex_matchp.eh
_smpRegex_matchp.eh:
Lset1172 = Leh_frame_end210-Leh_frame_begin210
	.long	Lset1172
Leh_frame_begin210:
Lset1173 = Leh_frame_begin210-Leh_frame_common
	.long	Lset1173
Ltmp1181:
	.quad	Leh_func_begin210-Ltmp1181
Lset1174 = Leh_func_end210-Leh_func_begin210
	.quad	Lset1174
	.byte	0
	.byte	4
Lset1175 = Ltmp548-Leh_func_begin210
	.long	Lset1175
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1176 = Ltmp549-Ltmp548
	.long	Lset1176
	.byte	13
	.byte	6
	.align	3
Leh_frame_end210:

	.globl	_smpInteger_to_s.eh
_smpInteger_to_s.eh:
Lset1177 = Leh_frame_end211-Leh_frame_begin211
	.long	Lset1177
Leh_frame_begin211:
Lset1178 = Leh_frame_begin211-Leh_frame_common
	.long	Lset1178
Ltmp1182:
	.quad	Leh_func_begin211-Ltmp1182
Lset1179 = Leh_func_end211-Leh_func_begin211
	.quad	Lset1179
	.byte	0
	.byte	4
Lset1180 = Ltmp550-Leh_func_begin211
	.long	Lset1180
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1181 = Ltmp551-Ltmp550
	.long	Lset1181
	.byte	13
	.byte	6
	.byte	4
Lset1182 = Ltmp552-Ltmp551
	.long	Lset1182
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end211:

	.globl	_smpInteger_xor.eh
_smpInteger_xor.eh:
Lset1183 = Leh_frame_end212-Leh_frame_begin212
	.long	Lset1183
Leh_frame_begin212:
Lset1184 = Leh_frame_begin212-Leh_frame_common
	.long	Lset1184
Ltmp1183:
	.quad	Leh_func_begin212-Ltmp1183
Lset1185 = Leh_func_end212-Leh_func_begin212
	.quad	Lset1185
	.byte	0
	.byte	4
Lset1186 = Ltmp553-Leh_func_begin212
	.long	Lset1186
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1187 = Ltmp554-Ltmp553
	.long	Lset1187
	.byte	13
	.byte	6
	.byte	4
Lset1188 = Ltmp555-Ltmp554
	.long	Lset1188
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end212:

	.globl	_smpInteger_not.eh
_smpInteger_not.eh:
Lset1189 = Leh_frame_end213-Leh_frame_begin213
	.long	Lset1189
Leh_frame_begin213:
Lset1190 = Leh_frame_begin213-Leh_frame_common
	.long	Lset1190
Ltmp1184:
	.quad	Leh_func_begin213-Ltmp1184
Lset1191 = Leh_func_end213-Leh_func_begin213
	.quad	Lset1191
	.byte	0
	.byte	4
Lset1192 = Ltmp556-Leh_func_begin213
	.long	Lset1192
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1193 = Ltmp557-Ltmp556
	.long	Lset1193
	.byte	13
	.byte	6
	.byte	4
Lset1194 = Ltmp558-Ltmp557
	.long	Lset1194
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end213:

	.globl	_smpInteger_ior.eh
_smpInteger_ior.eh:
Lset1195 = Leh_frame_end214-Leh_frame_begin214
	.long	Lset1195
Leh_frame_begin214:
Lset1196 = Leh_frame_begin214-Leh_frame_common
	.long	Lset1196
Ltmp1185:
	.quad	Leh_func_begin214-Ltmp1185
Lset1197 = Leh_func_end214-Leh_func_begin214
	.quad	Lset1197
	.byte	0
	.byte	4
Lset1198 = Ltmp559-Leh_func_begin214
	.long	Lset1198
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1199 = Ltmp560-Ltmp559
	.long	Lset1199
	.byte	13
	.byte	6
	.byte	4
Lset1200 = Ltmp561-Ltmp560
	.long	Lset1200
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end214:

	.globl	_smpInteger_and.eh
_smpInteger_and.eh:
Lset1201 = Leh_frame_end215-Leh_frame_begin215
	.long	Lset1201
Leh_frame_begin215:
Lset1202 = Leh_frame_begin215-Leh_frame_common
	.long	Lset1202
Ltmp1186:
	.quad	Leh_func_begin215-Ltmp1186
Lset1203 = Leh_func_end215-Leh_func_begin215
	.quad	Lset1203
	.byte	0
	.byte	4
Lset1204 = Ltmp562-Leh_func_begin215
	.long	Lset1204
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1205 = Ltmp563-Ltmp562
	.long	Lset1205
	.byte	13
	.byte	6
	.byte	4
Lset1206 = Ltmp564-Ltmp563
	.long	Lset1206
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end215:

	.globl	_smpInteger_shr.eh
_smpInteger_shr.eh:
Lset1207 = Leh_frame_end216-Leh_frame_begin216
	.long	Lset1207
Leh_frame_begin216:
Lset1208 = Leh_frame_begin216-Leh_frame_common
	.long	Lset1208
Ltmp1187:
	.quad	Leh_func_begin216-Ltmp1187
Lset1209 = Leh_func_end216-Leh_func_begin216
	.quad	Lset1209
	.byte	0
	.byte	4
Lset1210 = Ltmp565-Leh_func_begin216
	.long	Lset1210
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1211 = Ltmp566-Ltmp565
	.long	Lset1211
	.byte	13
	.byte	6
	.byte	4
Lset1212 = Ltmp567-Ltmp566
	.long	Lset1212
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end216:

	.globl	_smpInteger_shl.eh
_smpInteger_shl.eh:
Lset1213 = Leh_frame_end217-Leh_frame_begin217
	.long	Lset1213
Leh_frame_begin217:
Lset1214 = Leh_frame_begin217-Leh_frame_common
	.long	Lset1214
Ltmp1188:
	.quad	Leh_func_begin217-Ltmp1188
Lset1215 = Leh_func_end217-Leh_func_begin217
	.quad	Lset1215
	.byte	0
	.byte	4
Lset1216 = Ltmp568-Leh_func_begin217
	.long	Lset1216
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1217 = Ltmp569-Ltmp568
	.long	Lset1217
	.byte	13
	.byte	6
	.byte	4
Lset1218 = Ltmp570-Ltmp569
	.long	Lset1218
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end217:

	.globl	_smpInteger_pow.eh
_smpInteger_pow.eh:
Lset1219 = Leh_frame_end218-Leh_frame_begin218
	.long	Lset1219
Leh_frame_begin218:
Lset1220 = Leh_frame_begin218-Leh_frame_common
	.long	Lset1220
Ltmp1189:
	.quad	Leh_func_begin218-Ltmp1189
Lset1221 = Leh_func_end218-Leh_func_begin218
	.quad	Lset1221
	.byte	0
	.byte	4
Lset1222 = Ltmp571-Leh_func_begin218
	.long	Lset1222
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1223 = Ltmp572-Ltmp571
	.long	Lset1223
	.byte	13
	.byte	6
	.byte	4
Lset1224 = Ltmp573-Ltmp572
	.long	Lset1224
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end218:

	.globl	_smpInteger_mod.eh
_smpInteger_mod.eh:
Lset1225 = Leh_frame_end219-Leh_frame_begin219
	.long	Lset1225
Leh_frame_begin219:
Lset1226 = Leh_frame_begin219-Leh_frame_common
	.long	Lset1226
Ltmp1190:
	.quad	Leh_func_begin219-Ltmp1190
Lset1227 = Leh_func_end219-Leh_func_begin219
	.quad	Lset1227
	.byte	0
	.byte	4
Lset1228 = Ltmp574-Leh_func_begin219
	.long	Lset1228
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1229 = Ltmp575-Ltmp574
	.long	Lset1229
	.byte	13
	.byte	6
	.byte	4
Lset1230 = Ltmp576-Ltmp575
	.long	Lset1230
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end219:

	.globl	_smpInteger_div.eh
_smpInteger_div.eh:
Lset1231 = Leh_frame_end220-Leh_frame_begin220
	.long	Lset1231
Leh_frame_begin220:
Lset1232 = Leh_frame_begin220-Leh_frame_common
	.long	Lset1232
Ltmp1191:
	.quad	Leh_func_begin220-Ltmp1191
Lset1233 = Leh_func_end220-Leh_func_begin220
	.quad	Lset1233
	.byte	0
	.byte	4
Lset1234 = Ltmp577-Leh_func_begin220
	.long	Lset1234
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1235 = Ltmp578-Ltmp577
	.long	Lset1235
	.byte	13
	.byte	6
	.byte	4
Lset1236 = Ltmp579-Ltmp578
	.long	Lset1236
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end220:

	.globl	_smpInteger_mul.eh
_smpInteger_mul.eh:
Lset1237 = Leh_frame_end221-Leh_frame_begin221
	.long	Lset1237
Leh_frame_begin221:
Lset1238 = Leh_frame_begin221-Leh_frame_common
	.long	Lset1238
Ltmp1192:
	.quad	Leh_func_begin221-Ltmp1192
Lset1239 = Leh_func_end221-Leh_func_begin221
	.quad	Lset1239
	.byte	0
	.byte	4
Lset1240 = Ltmp580-Leh_func_begin221
	.long	Lset1240
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1241 = Ltmp581-Ltmp580
	.long	Lset1241
	.byte	13
	.byte	6
	.byte	4
Lset1242 = Ltmp582-Ltmp581
	.long	Lset1242
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end221:

	.globl	_smpInteger_sub.eh
_smpInteger_sub.eh:
Lset1243 = Leh_frame_end222-Leh_frame_begin222
	.long	Lset1243
Leh_frame_begin222:
Lset1244 = Leh_frame_begin222-Leh_frame_common
	.long	Lset1244
Ltmp1193:
	.quad	Leh_func_begin222-Ltmp1193
Lset1245 = Leh_func_end222-Leh_func_begin222
	.quad	Lset1245
	.byte	0
	.byte	4
Lset1246 = Ltmp583-Leh_func_begin222
	.long	Lset1246
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1247 = Ltmp584-Ltmp583
	.long	Lset1247
	.byte	13
	.byte	6
	.byte	4
Lset1248 = Ltmp585-Ltmp584
	.long	Lset1248
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end222:

	.globl	_smpInteger_dec.eh
_smpInteger_dec.eh:
Lset1249 = Leh_frame_end223-Leh_frame_begin223
	.long	Lset1249
Leh_frame_begin223:
Lset1250 = Leh_frame_begin223-Leh_frame_common
	.long	Lset1250
Ltmp1194:
	.quad	Leh_func_begin223-Ltmp1194
Lset1251 = Leh_func_end223-Leh_func_begin223
	.quad	Lset1251
	.byte	0
	.byte	4
Lset1252 = Ltmp586-Leh_func_begin223
	.long	Lset1252
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1253 = Ltmp587-Ltmp586
	.long	Lset1253
	.byte	13
	.byte	6
	.align	3
Leh_frame_end223:

	.globl	_smpInteger_add.eh
_smpInteger_add.eh:
Lset1254 = Leh_frame_end224-Leh_frame_begin224
	.long	Lset1254
Leh_frame_begin224:
Lset1255 = Leh_frame_begin224-Leh_frame_common
	.long	Lset1255
Ltmp1195:
	.quad	Leh_func_begin224-Ltmp1195
Lset1256 = Leh_func_end224-Leh_func_begin224
	.quad	Lset1256
	.byte	0
	.byte	4
Lset1257 = Ltmp588-Leh_func_begin224
	.long	Lset1257
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1258 = Ltmp589-Ltmp588
	.long	Lset1258
	.byte	13
	.byte	6
	.byte	4
Lset1259 = Ltmp590-Ltmp589
	.long	Lset1259
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end224:

	.globl	_smpInteger_inc.eh
_smpInteger_inc.eh:
Lset1260 = Leh_frame_end225-Leh_frame_begin225
	.long	Lset1260
Leh_frame_begin225:
Lset1261 = Leh_frame_begin225-Leh_frame_common
	.long	Lset1261
Ltmp1196:
	.quad	Leh_func_begin225-Ltmp1196
Lset1262 = Leh_func_end225-Leh_func_begin225
	.quad	Lset1262
	.byte	0
	.byte	4
Lset1263 = Ltmp591-Leh_func_begin225
	.long	Lset1263
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1264 = Ltmp592-Ltmp591
	.long	Lset1264
	.byte	13
	.byte	6
	.align	3
Leh_frame_end225:

	.globl	_smpGlobal_set_seed.eh
_smpGlobal_set_seed.eh:
Lset1265 = Leh_frame_end226-Leh_frame_begin226
	.long	Lset1265
Leh_frame_begin226:
Lset1266 = Leh_frame_begin226-Leh_frame_common
	.long	Lset1266
Ltmp1197:
	.quad	Leh_func_begin226-Ltmp1197
Lset1267 = Leh_func_end226-Leh_func_begin226
	.quad	Lset1267
	.byte	0
	.byte	4
Lset1268 = Ltmp593-Leh_func_begin226
	.long	Lset1268
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1269 = Ltmp594-Ltmp593
	.long	Lset1269
	.byte	13
	.byte	6
	.byte	4
Lset1270 = Ltmp595-Ltmp594
	.long	Lset1270
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end226:

	.globl	_smpFunction_call.eh
_smpFunction_call.eh:
Lset1271 = Leh_frame_end227-Leh_frame_begin227
	.long	Lset1271
Leh_frame_begin227:
Lset1272 = Leh_frame_begin227-Leh_frame_common
	.long	Lset1272
Ltmp1198:
	.quad	Leh_func_begin227-Ltmp1198
Lset1273 = Leh_func_end227-Leh_func_begin227
	.quad	Lset1273
	.byte	0
	.byte	4
Lset1274 = Ltmp596-Leh_func_begin227
	.long	Lset1274
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1275 = Ltmp597-Ltmp596
	.long	Lset1275
	.byte	13
	.byte	6
	.byte	4
Lset1276 = Ltmp598-Ltmp597
	.long	Lset1276
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end227:

	.globl	_smpFloat_to_s.eh
_smpFloat_to_s.eh:
Lset1277 = Leh_frame_end228-Leh_frame_begin228
	.long	Lset1277
Leh_frame_begin228:
Lset1278 = Leh_frame_begin228-Leh_frame_common
	.long	Lset1278
Ltmp1199:
	.quad	Leh_func_begin228-Ltmp1199
Lset1279 = Leh_func_end228-Leh_func_begin228
	.quad	Lset1279
	.byte	0
	.byte	4
Lset1280 = Ltmp599-Leh_func_begin228
	.long	Lset1280
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1281 = Ltmp600-Ltmp599
	.long	Lset1281
	.byte	13
	.byte	6
	.byte	4
Lset1282 = Ltmp601-Ltmp600
	.long	Lset1282
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end228:

	.globl	_smpFloat_cmp_cint.eh
_smpFloat_cmp_cint.eh:
Lset1283 = Leh_frame_end229-Leh_frame_begin229
	.long	Lset1283
Leh_frame_begin229:
Lset1284 = Leh_frame_begin229-Leh_frame_common
	.long	Lset1284
Ltmp1200:
	.quad	Leh_func_begin229-Ltmp1200
Lset1285 = Leh_func_end229-Leh_func_begin229
	.quad	Lset1285
	.byte	0
	.byte	4
Lset1286 = Ltmp602-Leh_func_begin229
	.long	Lset1286
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1287 = Ltmp603-Ltmp602
	.long	Lset1287
	.byte	13
	.byte	6
	.byte	4
Lset1288 = Ltmp604-Ltmp603
	.long	Lset1288
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end229:

	.globl	_smpInteger_cmp_cint.eh
_smpInteger_cmp_cint.eh:
Lset1289 = Leh_frame_end230-Leh_frame_begin230
	.long	Lset1289
Leh_frame_begin230:
Lset1290 = Leh_frame_begin230-Leh_frame_common
	.long	Lset1290
Ltmp1201:
	.quad	Leh_func_begin230-Ltmp1201
Lset1291 = Leh_func_end230-Leh_func_begin230
	.quad	Lset1291
	.byte	0
	.byte	4
Lset1292 = Ltmp605-Leh_func_begin230
	.long	Lset1292
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1293 = Ltmp606-Ltmp605
	.long	Lset1293
	.byte	13
	.byte	6
	.byte	4
Lset1294 = Ltmp607-Ltmp606
	.long	Lset1294
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end230:

	.globl	_smpInteger_gt.eh
_smpInteger_gt.eh:
Lset1295 = Leh_frame_end231-Leh_frame_begin231
	.long	Lset1295
Leh_frame_begin231:
Lset1296 = Leh_frame_begin231-Leh_frame_common
	.long	Lset1296
Ltmp1202:
	.quad	Leh_func_begin231-Ltmp1202
Lset1297 = Leh_func_end231-Leh_func_begin231
	.quad	Lset1297
	.byte	0
	.byte	4
Lset1298 = Ltmp608-Leh_func_begin231
	.long	Lset1298
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1299 = Ltmp609-Ltmp608
	.long	Lset1299
	.byte	13
	.byte	6
	.align	3
Leh_frame_end231:

	.globl	_smpInteger_ge.eh
_smpInteger_ge.eh:
Lset1300 = Leh_frame_end232-Leh_frame_begin232
	.long	Lset1300
Leh_frame_begin232:
Lset1301 = Leh_frame_begin232-Leh_frame_common
	.long	Lset1301
Ltmp1203:
	.quad	Leh_func_begin232-Ltmp1203
Lset1302 = Leh_func_end232-Leh_func_begin232
	.quad	Lset1302
	.byte	0
	.byte	4
Lset1303 = Ltmp611-Leh_func_begin232
	.long	Lset1303
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1304 = Ltmp612-Ltmp611
	.long	Lset1304
	.byte	13
	.byte	6
	.align	3
Leh_frame_end232:

	.globl	_smpInteger_le.eh
_smpInteger_le.eh:
Lset1305 = Leh_frame_end233-Leh_frame_begin233
	.long	Lset1305
Leh_frame_begin233:
Lset1306 = Leh_frame_begin233-Leh_frame_common
	.long	Lset1306
Ltmp1204:
	.quad	Leh_func_begin233-Ltmp1204
Lset1307 = Leh_func_end233-Leh_func_begin233
	.quad	Lset1307
	.byte	0
	.byte	4
Lset1308 = Ltmp614-Leh_func_begin233
	.long	Lset1308
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1309 = Ltmp615-Ltmp614
	.long	Lset1309
	.byte	13
	.byte	6
	.align	3
Leh_frame_end233:

	.globl	_smpInteger_lt.eh
_smpInteger_lt.eh:
Lset1310 = Leh_frame_end234-Leh_frame_begin234
	.long	Lset1310
Leh_frame_begin234:
Lset1311 = Leh_frame_begin234-Leh_frame_common
	.long	Lset1311
Ltmp1205:
	.quad	Leh_func_begin234-Ltmp1205
Lset1312 = Leh_func_end234-Leh_func_begin234
	.quad	Lset1312
	.byte	0
	.byte	4
Lset1313 = Ltmp617-Leh_func_begin234
	.long	Lset1313
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1314 = Ltmp618-Ltmp617
	.long	Lset1314
	.byte	13
	.byte	6
	.align	3
Leh_frame_end234:

	.globl	_smpInteger_nequalp.eh
_smpInteger_nequalp.eh:
Lset1315 = Leh_frame_end235-Leh_frame_begin235
	.long	Lset1315
Leh_frame_begin235:
Lset1316 = Leh_frame_begin235-Leh_frame_common
	.long	Lset1316
Ltmp1206:
	.quad	Leh_func_begin235-Ltmp1206
Lset1317 = Leh_func_end235-Leh_func_begin235
	.quad	Lset1317
	.byte	0
	.byte	4
Lset1318 = Ltmp620-Leh_func_begin235
	.long	Lset1318
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1319 = Ltmp621-Ltmp620
	.long	Lset1319
	.byte	13
	.byte	6
	.align	3
Leh_frame_end235:

	.globl	_smpInteger_equalp.eh
_smpInteger_equalp.eh:
Lset1320 = Leh_frame_end236-Leh_frame_begin236
	.long	Lset1320
Leh_frame_begin236:
Lset1321 = Leh_frame_begin236-Leh_frame_common
	.long	Lset1321
Ltmp1207:
	.quad	Leh_func_begin236-Ltmp1207
Lset1322 = Leh_func_end236-Leh_func_begin236
	.quad	Lset1322
	.byte	0
	.byte	4
Lset1323 = Ltmp623-Leh_func_begin236
	.long	Lset1323
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1324 = Ltmp624-Ltmp623
	.long	Lset1324
	.byte	13
	.byte	6
	.align	3
Leh_frame_end236:

	.globl	_smpInteger_eq.eh
_smpInteger_eq.eh:
Lset1325 = Leh_frame_end237-Leh_frame_begin237
	.long	Lset1325
Leh_frame_begin237:
Lset1326 = Leh_frame_begin237-Leh_frame_common
	.long	Lset1326
Ltmp1208:
	.quad	Leh_func_begin237-Ltmp1208
Lset1327 = Leh_func_end237-Leh_func_begin237
	.quad	Lset1327
	.byte	0
	.byte	4
Lset1328 = Ltmp626-Leh_func_begin237
	.long	Lset1328
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1329 = Ltmp627-Ltmp626
	.long	Lset1329
	.byte	13
	.byte	6
	.align	3
Leh_frame_end237:

	.globl	_smpInteger_cmp.eh
_smpInteger_cmp.eh:
Lset1330 = Leh_frame_end238-Leh_frame_begin238
	.long	Lset1330
Leh_frame_begin238:
Lset1331 = Leh_frame_begin238-Leh_frame_common
	.long	Lset1331
Ltmp1209:
	.quad	Leh_func_begin238-Ltmp1209
Lset1332 = Leh_func_end238-Leh_func_begin238
	.quad	Lset1332
	.byte	0
	.byte	4
Lset1333 = Ltmp629-Leh_func_begin238
	.long	Lset1333
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1334 = Ltmp630-Ltmp629
	.long	Lset1334
	.byte	13
	.byte	6
	.byte	4
Lset1335 = Ltmp631-Ltmp630
	.long	Lset1335
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end238:

	.globl	_speedtest_fun.eh
_speedtest_fun.eh:
Lset1336 = Leh_frame_end239-Leh_frame_begin239
	.long	Lset1336
Leh_frame_begin239:
Lset1337 = Leh_frame_begin239-Leh_frame_common
	.long	Lset1337
Ltmp1210:
	.quad	Leh_func_begin239-Ltmp1210
Lset1338 = Leh_func_end239-Leh_func_begin239
	.quad	Lset1338
	.byte	0
	.byte	4
Lset1339 = Ltmp632-Leh_func_begin239
	.long	Lset1339
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1340 = Ltmp633-Ltmp632
	.long	Lset1340
	.byte	13
	.byte	6
	.byte	4
Lset1341 = Ltmp634-Ltmp633
	.long	Lset1341
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end239:

	.globl	_test_object_speed.eh
_test_object_speed.eh:
Lset1342 = Leh_frame_end240-Leh_frame_begin240
	.long	Lset1342
Leh_frame_begin240:
Lset1343 = Leh_frame_begin240-Leh_frame_common
	.long	Lset1343
Ltmp1211:
	.quad	Leh_func_begin240-Ltmp1211
Lset1344 = Leh_func_end240-Leh_func_begin240
	.quad	Lset1344
	.byte	0
	.byte	4
Lset1345 = Ltmp635-Leh_func_begin240
	.long	Lset1345
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1346 = Ltmp636-Ltmp635
	.long	Lset1346
	.byte	13
	.byte	6
	.byte	4
Lset1347 = Ltmp637-Ltmp636
	.long	Lset1347
	.byte	131
	.byte	3
	.align	3
Leh_frame_end240:

	.globl	_smpFloat_gt.eh
_smpFloat_gt.eh:
Lset1348 = Leh_frame_end241-Leh_frame_begin241
	.long	Lset1348
Leh_frame_begin241:
Lset1349 = Leh_frame_begin241-Leh_frame_common
	.long	Lset1349
Ltmp1212:
	.quad	Leh_func_begin241-Ltmp1212
Lset1350 = Leh_func_end241-Leh_func_begin241
	.quad	Lset1350
	.byte	0
	.byte	4
Lset1351 = Ltmp638-Leh_func_begin241
	.long	Lset1351
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1352 = Ltmp639-Ltmp638
	.long	Lset1352
	.byte	13
	.byte	6
	.align	3
Leh_frame_end241:

	.globl	_smpFloat_ge.eh
_smpFloat_ge.eh:
Lset1353 = Leh_frame_end242-Leh_frame_begin242
	.long	Lset1353
Leh_frame_begin242:
Lset1354 = Leh_frame_begin242-Leh_frame_common
	.long	Lset1354
Ltmp1213:
	.quad	Leh_func_begin242-Ltmp1213
Lset1355 = Leh_func_end242-Leh_func_begin242
	.quad	Lset1355
	.byte	0
	.byte	4
Lset1356 = Ltmp641-Leh_func_begin242
	.long	Lset1356
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1357 = Ltmp642-Ltmp641
	.long	Lset1357
	.byte	13
	.byte	6
	.align	3
Leh_frame_end242:

	.globl	_smpFloat_le.eh
_smpFloat_le.eh:
Lset1358 = Leh_frame_end243-Leh_frame_begin243
	.long	Lset1358
Leh_frame_begin243:
Lset1359 = Leh_frame_begin243-Leh_frame_common
	.long	Lset1359
Ltmp1214:
	.quad	Leh_func_begin243-Ltmp1214
Lset1360 = Leh_func_end243-Leh_func_begin243
	.quad	Lset1360
	.byte	0
	.byte	4
Lset1361 = Ltmp644-Leh_func_begin243
	.long	Lset1361
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1362 = Ltmp645-Ltmp644
	.long	Lset1362
	.byte	13
	.byte	6
	.align	3
Leh_frame_end243:

	.globl	_smpFloat_lt.eh
_smpFloat_lt.eh:
Lset1363 = Leh_frame_end244-Leh_frame_begin244
	.long	Lset1363
Leh_frame_begin244:
Lset1364 = Leh_frame_begin244-Leh_frame_common
	.long	Lset1364
Ltmp1215:
	.quad	Leh_func_begin244-Ltmp1215
Lset1365 = Leh_func_end244-Leh_func_begin244
	.quad	Lset1365
	.byte	0
	.byte	4
Lset1366 = Ltmp647-Leh_func_begin244
	.long	Lset1366
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1367 = Ltmp648-Ltmp647
	.long	Lset1367
	.byte	13
	.byte	6
	.align	3
Leh_frame_end244:

	.globl	_smpFloat_nequalp.eh
_smpFloat_nequalp.eh:
Lset1368 = Leh_frame_end245-Leh_frame_begin245
	.long	Lset1368
Leh_frame_begin245:
Lset1369 = Leh_frame_begin245-Leh_frame_common
	.long	Lset1369
Ltmp1216:
	.quad	Leh_func_begin245-Ltmp1216
Lset1370 = Leh_func_end245-Leh_func_begin245
	.quad	Lset1370
	.byte	0
	.byte	4
Lset1371 = Ltmp650-Leh_func_begin245
	.long	Lset1371
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1372 = Ltmp651-Ltmp650
	.long	Lset1372
	.byte	13
	.byte	6
	.align	3
Leh_frame_end245:

	.globl	_smpFloat_equalp.eh
_smpFloat_equalp.eh:
Lset1373 = Leh_frame_end246-Leh_frame_begin246
	.long	Lset1373
Leh_frame_begin246:
Lset1374 = Leh_frame_begin246-Leh_frame_common
	.long	Lset1374
Ltmp1217:
	.quad	Leh_func_begin246-Ltmp1217
Lset1375 = Leh_func_end246-Leh_func_begin246
	.quad	Lset1375
	.byte	0
	.byte	4
Lset1376 = Ltmp653-Leh_func_begin246
	.long	Lset1376
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1377 = Ltmp654-Ltmp653
	.long	Lset1377
	.byte	13
	.byte	6
	.align	3
Leh_frame_end246:

	.globl	_smpFloat_eq.eh
_smpFloat_eq.eh:
Lset1378 = Leh_frame_end247-Leh_frame_begin247
	.long	Lset1378
Leh_frame_begin247:
Lset1379 = Leh_frame_begin247-Leh_frame_common
	.long	Lset1379
Ltmp1218:
	.quad	Leh_func_begin247-Ltmp1218
Lset1380 = Leh_func_end247-Leh_func_begin247
	.quad	Lset1380
	.byte	0
	.byte	4
Lset1381 = Ltmp656-Leh_func_begin247
	.long	Lset1381
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1382 = Ltmp657-Ltmp656
	.long	Lset1382
	.byte	13
	.byte	6
	.align	3
Leh_frame_end247:

	.globl	_smpFloat_cmp.eh
_smpFloat_cmp.eh:
Lset1383 = Leh_frame_end248-Leh_frame_begin248
	.long	Lset1383
Leh_frame_begin248:
Lset1384 = Leh_frame_begin248-Leh_frame_common
	.long	Lset1384
Ltmp1219:
	.quad	Leh_func_begin248-Ltmp1219
Lset1385 = Leh_func_end248-Leh_func_begin248
	.quad	Lset1385
	.byte	0
	.byte	4
Lset1386 = Ltmp659-Leh_func_begin248
	.long	Lset1386
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1387 = Ltmp660-Ltmp659
	.long	Lset1387
	.byte	13
	.byte	6
	.byte	4
Lset1388 = Ltmp661-Ltmp660
	.long	Lset1388
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end248:

	.globl	_smpFloat_pow.eh
_smpFloat_pow.eh:
Lset1389 = Leh_frame_end249-Leh_frame_begin249
	.long	Lset1389
Leh_frame_begin249:
Lset1390 = Leh_frame_begin249-Leh_frame_common
	.long	Lset1390
Ltmp1220:
	.quad	Leh_func_begin249-Ltmp1220
Lset1391 = Leh_func_end249-Leh_func_begin249
	.quad	Lset1391
	.byte	0
	.byte	4
Lset1392 = Ltmp662-Leh_func_begin249
	.long	Lset1392
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1393 = Ltmp663-Ltmp662
	.long	Lset1393
	.byte	13
	.byte	6
	.byte	4
Lset1394 = Ltmp664-Ltmp663
	.long	Lset1394
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end249:

	.globl	_smpFloat_div.eh
_smpFloat_div.eh:
Lset1395 = Leh_frame_end250-Leh_frame_begin250
	.long	Lset1395
Leh_frame_begin250:
Lset1396 = Leh_frame_begin250-Leh_frame_common
	.long	Lset1396
Ltmp1221:
	.quad	Leh_func_begin250-Ltmp1221
Lset1397 = Leh_func_end250-Leh_func_begin250
	.quad	Lset1397
	.byte	0
	.byte	4
Lset1398 = Ltmp665-Leh_func_begin250
	.long	Lset1398
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1399 = Ltmp666-Ltmp665
	.long	Lset1399
	.byte	13
	.byte	6
	.byte	4
Lset1400 = Ltmp667-Ltmp666
	.long	Lset1400
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end250:

	.globl	_smpFloat_mul.eh
_smpFloat_mul.eh:
Lset1401 = Leh_frame_end251-Leh_frame_begin251
	.long	Lset1401
Leh_frame_begin251:
Lset1402 = Leh_frame_begin251-Leh_frame_common
	.long	Lset1402
Ltmp1222:
	.quad	Leh_func_begin251-Ltmp1222
Lset1403 = Leh_func_end251-Leh_func_begin251
	.quad	Lset1403
	.byte	0
	.byte	4
Lset1404 = Ltmp668-Leh_func_begin251
	.long	Lset1404
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1405 = Ltmp669-Ltmp668
	.long	Lset1405
	.byte	13
	.byte	6
	.byte	4
Lset1406 = Ltmp670-Ltmp669
	.long	Lset1406
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end251:

	.globl	_smpFloat_sub.eh
_smpFloat_sub.eh:
Lset1407 = Leh_frame_end252-Leh_frame_begin252
	.long	Lset1407
Leh_frame_begin252:
Lset1408 = Leh_frame_begin252-Leh_frame_common
	.long	Lset1408
Ltmp1223:
	.quad	Leh_func_begin252-Ltmp1223
Lset1409 = Leh_func_end252-Leh_func_begin252
	.quad	Lset1409
	.byte	0
	.byte	4
Lset1410 = Ltmp671-Leh_func_begin252
	.long	Lset1410
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1411 = Ltmp672-Ltmp671
	.long	Lset1411
	.byte	13
	.byte	6
	.byte	4
Lset1412 = Ltmp673-Ltmp672
	.long	Lset1412
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end252:

	.globl	_smpFloat_add.eh
_smpFloat_add.eh:
Lset1413 = Leh_frame_end253-Leh_frame_begin253
	.long	Lset1413
Leh_frame_begin253:
Lset1414 = Leh_frame_begin253-Leh_frame_common
	.long	Lset1414
Ltmp1224:
	.quad	Leh_func_begin253-Ltmp1224
Lset1415 = Leh_func_end253-Leh_func_begin253
	.quad	Lset1415
	.byte	0
	.byte	4
Lset1416 = Ltmp674-Leh_func_begin253
	.long	Lset1416
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1417 = Ltmp675-Ltmp674
	.long	Lset1417
	.byte	13
	.byte	6
	.byte	4
Lset1418 = Ltmp676-Ltmp675
	.long	Lset1418
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end253:

	.globl	_smpArray_reduce.eh
_smpArray_reduce.eh:
Lset1419 = Leh_frame_end254-Leh_frame_begin254
	.long	Lset1419
Leh_frame_begin254:
Lset1420 = Leh_frame_begin254-Leh_frame_common
	.long	Lset1420
Ltmp1225:
	.quad	Leh_func_begin254-Ltmp1225
Lset1421 = Leh_func_end254-Leh_func_begin254
	.quad	Lset1421
	.byte	0
	.byte	4
Lset1422 = Ltmp677-Leh_func_begin254
	.long	Lset1422
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1423 = Ltmp678-Ltmp677
	.long	Lset1423
	.byte	13
	.byte	6
	.byte	4
Lset1424 = Ltmp679-Ltmp678
	.long	Lset1424
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end254:

	.globl	_smpArray_at_assign.eh
_smpArray_at_assign.eh:
Lset1425 = Leh_frame_end255-Leh_frame_begin255
	.long	Lset1425
Leh_frame_begin255:
Lset1426 = Leh_frame_begin255-Leh_frame_common
	.long	Lset1426
Ltmp1226:
	.quad	Leh_func_begin255-Ltmp1226
Lset1427 = Leh_func_end255-Leh_func_begin255
	.quad	Lset1427
	.byte	0
	.byte	4
Lset1428 = Ltmp680-Leh_func_begin255
	.long	Lset1428
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1429 = Ltmp681-Ltmp680
	.long	Lset1429
	.byte	13
	.byte	6
	.byte	4
Lset1430 = Ltmp682-Ltmp681
	.long	Lset1430
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end255:

	.globl	_smpArray_at.eh
_smpArray_at.eh:
Lset1431 = Leh_frame_end256-Leh_frame_begin256
	.long	Lset1431
Leh_frame_begin256:
Lset1432 = Leh_frame_begin256-Leh_frame_common
	.long	Lset1432
Ltmp1227:
	.quad	Leh_func_begin256-Ltmp1227
Lset1433 = Leh_func_end256-Leh_func_begin256
	.quad	Lset1433
	.byte	0
	.byte	4
Lset1434 = Ltmp683-Leh_func_begin256
	.long	Lset1434
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1435 = Ltmp684-Ltmp683
	.long	Lset1435
	.byte	13
	.byte	6
	.byte	4
Lset1436 = Ltmp685-Ltmp684
	.long	Lset1436
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end256:

	.globl	_smpObject_instancep.eh
_smpObject_instancep.eh:
Lset1437 = Leh_frame_end257-Leh_frame_begin257
	.long	Lset1437
Leh_frame_begin257:
Lset1438 = Leh_frame_begin257-Leh_frame_common
	.long	Lset1438
Ltmp1228:
	.quad	Leh_func_begin257-Ltmp1228
Lset1439 = Leh_func_end257-Leh_func_begin257
	.quad	Lset1439
	.byte	0
	.byte	4
Lset1440 = Ltmp686-Leh_func_begin257
	.long	Lset1440
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1441 = Ltmp687-Ltmp686
	.long	Lset1441
	.byte	13
	.byte	6
	.byte	4
Lset1442 = Ltmp688-Ltmp687
	.long	Lset1442
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end257:

	.globl	_smpObject_funcall_arg.eh
_smpObject_funcall_arg.eh:
Lset1443 = Leh_frame_end258-Leh_frame_begin258
	.long	Lset1443
Leh_frame_begin258:
Lset1444 = Leh_frame_begin258-Leh_frame_common
	.long	Lset1444
Ltmp1229:
	.quad	Leh_func_begin258-Ltmp1229
Lset1445 = Leh_func_end258-Leh_func_begin258
	.quad	Lset1445
	.byte	0
	.byte	4
Lset1446 = Ltmp689-Leh_func_begin258
	.long	Lset1446
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1447 = Ltmp690-Ltmp689
	.long	Lset1447
	.byte	13
	.byte	6
	.byte	4
Lset1448 = Ltmp691-Ltmp690
	.long	Lset1448
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end258:

	.globl	_smpArray_init_array.eh
_smpArray_init_array.eh:
Lset1449 = Leh_frame_end259-Leh_frame_begin259
	.long	Lset1449
Leh_frame_begin259:
Lset1450 = Leh_frame_begin259-Leh_frame_common
	.long	Lset1450
Ltmp1230:
	.quad	Leh_func_begin259-Ltmp1230
Lset1451 = Leh_func_end259-Leh_func_begin259
	.quad	Lset1451
	.byte	0
	.byte	4
Lset1452 = Ltmp692-Leh_func_begin259
	.long	Lset1452
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1453 = Ltmp693-Ltmp692
	.long	Lset1453
	.byte	13
	.byte	6
	.byte	4
Lset1454 = Ltmp694-Ltmp693
	.long	Lset1454
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end259:

	.globl	_smpGlobal_array.eh
_smpGlobal_array.eh:
Lset1455 = Leh_frame_end260-Leh_frame_begin260
	.long	Lset1455
Leh_frame_begin260:
Lset1456 = Leh_frame_begin260-Leh_frame_common
	.long	Lset1456
Ltmp1231:
	.quad	Leh_func_begin260-Ltmp1231
Lset1457 = Leh_func_end260-Leh_func_begin260
	.quad	Lset1457
	.byte	0
	.byte	4
Lset1458 = Ltmp695-Leh_func_begin260
	.long	Lset1458
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1459 = Ltmp696-Ltmp695
	.long	Lset1459
	.byte	13
	.byte	6
	.align	3
Leh_frame_end260:

	.globl	_smpArray_map.eh
_smpArray_map.eh:
Lset1460 = Leh_frame_end261-Leh_frame_begin261
	.long	Lset1460
Leh_frame_begin261:
Lset1461 = Leh_frame_begin261-Leh_frame_common
	.long	Lset1461
Ltmp1232:
	.quad	Leh_func_begin261-Ltmp1232
Lset1462 = Leh_func_end261-Leh_func_begin261
	.quad	Lset1462
	.byte	0
	.byte	4
Lset1463 = Ltmp697-Leh_func_begin261
	.long	Lset1463
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1464 = Ltmp698-Ltmp697
	.long	Lset1464
	.byte	13
	.byte	6
	.byte	4
Lset1465 = Ltmp699-Ltmp698
	.long	Lset1465
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end261:

	.globl	_smpArray_copy.eh
_smpArray_copy.eh:
Lset1466 = Leh_frame_end262-Leh_frame_begin262
	.long	Lset1466
Leh_frame_begin262:
Lset1467 = Leh_frame_begin262-Leh_frame_common
	.long	Lset1467
Ltmp1233:
	.quad	Leh_func_begin262-Ltmp1233
Lset1468 = Leh_func_end262-Leh_func_begin262
	.quad	Lset1468
	.byte	0
	.byte	4
Lset1469 = Ltmp700-Leh_func_begin262
	.long	Lset1469
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1470 = Ltmp701-Ltmp700
	.long	Lset1470
	.byte	13
	.byte	6
	.byte	4
Lset1471 = Ltmp702-Ltmp701
	.long	Lset1471
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end262:

	.globl	_smpArray_reverse.eh
_smpArray_reverse.eh:
Lset1472 = Leh_frame_end263-Leh_frame_begin263
	.long	Lset1472
Leh_frame_begin263:
Lset1473 = Leh_frame_begin263-Leh_frame_common
	.long	Lset1473
Ltmp1234:
	.quad	Leh_func_begin263-Ltmp1234
Lset1474 = Leh_func_end263-Leh_func_begin263
	.quad	Lset1474
	.byte	0
	.byte	4
Lset1475 = Ltmp703-Leh_func_begin263
	.long	Lset1475
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1476 = Ltmp704-Ltmp703
	.long	Lset1476
	.byte	13
	.byte	6
	.align	3
Leh_frame_end263:

	.globl	_smpArray_init.eh
_smpArray_init.eh:
Lset1477 = Leh_frame_end264-Leh_frame_begin264
	.long	Lset1477
Leh_frame_begin264:
Lset1478 = Leh_frame_begin264-Leh_frame_common
	.long	Lset1478
Ltmp1235:
	.quad	Leh_func_begin264-Ltmp1235
Lset1479 = Leh_func_end264-Leh_func_begin264
	.quad	Lset1479
	.byte	0
	.byte	4
Lset1480 = Ltmp705-Leh_func_begin264
	.long	Lset1480
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1481 = Ltmp706-Ltmp705
	.long	Lset1481
	.byte	13
	.byte	6
	.byte	4
Lset1482 = Ltmp707-Ltmp706
	.long	Lset1482
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end264:

	.globl	_objid_init.eh
_objid_init.eh:
Lset1483 = Leh_frame_end265-Leh_frame_begin265
	.long	Lset1483
Leh_frame_begin265:
Lset1484 = Leh_frame_begin265-Leh_frame_common
	.long	Lset1484
Ltmp1236:
	.quad	Leh_func_begin265-Ltmp1236
Lset1485 = Leh_func_end265-Leh_func_begin265
	.quad	Lset1485
	.byte	0
	.byte	4
Lset1486 = Ltmp708-Leh_func_begin265
	.long	Lset1486
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1487 = Ltmp709-Ltmp708
	.long	Lset1487
	.byte	13
	.byte	6
	.byte	4
Lset1488 = Ltmp710-Ltmp709
	.long	Lset1488
	.byte	131
	.byte	3
	.align	3
Leh_frame_end265:

	.globl	_smp_putclass.eh
_smp_putclass.eh:
Lset1489 = Leh_frame_end266-Leh_frame_begin266
	.long	Lset1489
Leh_frame_begin266:
Lset1490 = Leh_frame_begin266-Leh_frame_common
	.long	Lset1490
Ltmp1237:
	.quad	Leh_func_begin266-Ltmp1237
Lset1491 = Leh_func_end266-Leh_func_begin266
	.quad	Lset1491
	.byte	0
	.byte	4
Lset1492 = Ltmp711-Leh_func_begin266
	.long	Lset1492
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1493 = Ltmp712-Ltmp711
	.long	Lset1493
	.byte	13
	.byte	6
	.byte	4
Lset1494 = Ltmp713-Ltmp712
	.long	Lset1494
	.byte	131
	.byte	3
	.align	3
Leh_frame_end266:

	.globl	_smpGlobal_class_multiple.eh
_smpGlobal_class_multiple.eh:
Lset1495 = Leh_frame_end267-Leh_frame_begin267
	.long	Lset1495
Leh_frame_begin267:
Lset1496 = Leh_frame_begin267-Leh_frame_common
	.long	Lset1496
Ltmp1238:
	.quad	Leh_func_begin267-Ltmp1238
Lset1497 = Leh_func_end267-Leh_func_begin267
	.quad	Lset1497
	.byte	0
	.byte	4
Lset1498 = Ltmp714-Leh_func_begin267
	.long	Lset1498
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1499 = Ltmp715-Ltmp714
	.long	Lset1499
	.byte	13
	.byte	6
	.byte	4
Lset1500 = Ltmp716-Ltmp715
	.long	Lset1500
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end267:

	.globl	_smpGlobal_class.eh
_smpGlobal_class.eh:
Lset1501 = Leh_frame_end268-Leh_frame_begin268
	.long	Lset1501
Leh_frame_begin268:
Lset1502 = Leh_frame_begin268-Leh_frame_common
	.long	Lset1502
Ltmp1239:
	.quad	Leh_func_begin268-Ltmp1239
Lset1503 = Leh_func_end268-Leh_func_begin268
	.quad	Lset1503
	.byte	0
	.byte	4
Lset1504 = Ltmp717-Leh_func_begin268
	.long	Lset1504
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1505 = Ltmp718-Ltmp717
	.long	Lset1505
	.byte	13
	.byte	6
	.byte	4
Lset1506 = Ltmp719-Ltmp718
	.long	Lset1506
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end268:

	.globl	_smpSymbol_create_class.eh
_smpSymbol_create_class.eh:
Lset1507 = Leh_frame_end269-Leh_frame_begin269
	.long	Lset1507
Leh_frame_begin269:
Lset1508 = Leh_frame_begin269-Leh_frame_common
	.long	Lset1508
Ltmp1240:
	.quad	Leh_func_begin269-Ltmp1240
Lset1509 = Leh_func_end269-Leh_func_begin269
	.quad	Lset1509
	.byte	0
	.byte	4
Lset1510 = Ltmp720-Leh_func_begin269
	.long	Lset1510
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1511 = Ltmp721-Ltmp720
	.long	Lset1511
	.byte	13
	.byte	6
	.byte	4
Lset1512 = Ltmp722-Ltmp721
	.long	Lset1512
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end269:

	.globl	_smpRegex_create_class.eh
_smpRegex_create_class.eh:
Lset1513 = Leh_frame_end270-Leh_frame_begin270
	.long	Lset1513
Leh_frame_begin270:
Lset1514 = Leh_frame_begin270-Leh_frame_common
	.long	Lset1514
Ltmp1241:
	.quad	Leh_func_begin270-Ltmp1241
Lset1515 = Leh_func_end270-Leh_func_begin270
	.quad	Lset1515
	.byte	0
	.byte	4
Lset1516 = Ltmp723-Leh_func_begin270
	.long	Lset1516
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1517 = Ltmp724-Ltmp723
	.long	Lset1517
	.byte	13
	.byte	6
	.byte	4
Lset1518 = Ltmp725-Ltmp724
	.long	Lset1518
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end270:

	.globl	_smpNumber_create_class.eh
_smpNumber_create_class.eh:
Lset1519 = Leh_frame_end271-Leh_frame_begin271
	.long	Lset1519
Leh_frame_begin271:
Lset1520 = Leh_frame_begin271-Leh_frame_common
	.long	Lset1520
Ltmp1242:
	.quad	Leh_func_begin271-Ltmp1242
Lset1521 = Leh_func_end271-Leh_func_begin271
	.quad	Lset1521
	.byte	0
	.byte	4
Lset1522 = Ltmp726-Leh_func_begin271
	.long	Lset1522
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1523 = Ltmp727-Ltmp726
	.long	Lset1523
	.byte	13
	.byte	6
	.byte	4
Lset1524 = Ltmp728-Ltmp727
	.long	Lset1524
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end271:

	.globl	_smpListBuffer_create_class.eh
_smpListBuffer_create_class.eh:
Lset1525 = Leh_frame_end272-Leh_frame_begin272
	.long	Lset1525
Leh_frame_begin272:
Lset1526 = Leh_frame_begin272-Leh_frame_common
	.long	Lset1526
Ltmp1243:
	.quad	Leh_func_begin272-Ltmp1243
Lset1527 = Leh_func_end272-Leh_func_begin272
	.quad	Lset1527
	.byte	0
	.byte	4
Lset1528 = Ltmp729-Leh_func_begin272
	.long	Lset1528
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1529 = Ltmp730-Ltmp729
	.long	Lset1529
	.byte	13
	.byte	6
	.byte	4
Lset1530 = Ltmp731-Ltmp730
	.long	Lset1530
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end272:

	.globl	_smpInteger_create_class.eh
_smpInteger_create_class.eh:
Lset1531 = Leh_frame_end273-Leh_frame_begin273
	.long	Lset1531
Leh_frame_begin273:
Lset1532 = Leh_frame_begin273-Leh_frame_common
	.long	Lset1532
Ltmp1244:
	.quad	Leh_func_begin273-Ltmp1244
Lset1533 = Leh_func_end273-Leh_func_begin273
	.quad	Lset1533
	.byte	0
	.byte	4
Lset1534 = Ltmp732-Leh_func_begin273
	.long	Lset1534
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1535 = Ltmp733-Ltmp732
	.long	Lset1535
	.byte	13
	.byte	6
	.byte	4
Lset1536 = Ltmp734-Ltmp733
	.long	Lset1536
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end273:

	.globl	_smpInteger_range.eh
_smpInteger_range.eh:
Lset1537 = Leh_frame_end274-Leh_frame_begin274
	.long	Lset1537
Leh_frame_begin274:
Lset1538 = Leh_frame_begin274-Leh_frame_common
	.long	Lset1538
Ltmp1245:
	.quad	Leh_func_begin274-Ltmp1245
Lset1539 = Leh_func_end274-Leh_func_begin274
	.quad	Lset1539
	.byte	0
	.byte	4
Lset1540 = Ltmp735-Leh_func_begin274
	.long	Lset1540
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1541 = Ltmp736-Ltmp735
	.long	Lset1541
	.byte	13
	.byte	6
	.byte	4
Lset1542 = Ltmp737-Ltmp736
	.long	Lset1542
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end274:

	.globl	_smpHash_create_class.eh
_smpHash_create_class.eh:
Lset1543 = Leh_frame_end275-Leh_frame_begin275
	.long	Lset1543
Leh_frame_begin275:
Lset1544 = Leh_frame_begin275-Leh_frame_common
	.long	Lset1544
Ltmp1246:
	.quad	Leh_func_begin275-Ltmp1246
Lset1545 = Leh_func_end275-Leh_func_begin275
	.quad	Lset1545
	.byte	0
	.byte	4
Lset1546 = Ltmp738-Leh_func_begin275
	.long	Lset1546
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1547 = Ltmp739-Ltmp738
	.long	Lset1547
	.byte	13
	.byte	6
	.byte	4
Lset1548 = Ltmp740-Ltmp739
	.long	Lset1548
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end275:

	.globl	_smpHash_add_now.eh
_smpHash_add_now.eh:
Lset1549 = Leh_frame_end276-Leh_frame_begin276
	.long	Lset1549
Leh_frame_begin276:
Lset1550 = Leh_frame_begin276-Leh_frame_common
	.long	Lset1550
Ltmp1247:
	.quad	Leh_func_begin276-Ltmp1247
Lset1551 = Leh_func_end276-Leh_func_begin276
	.quad	Lset1551
	.byte	0
	.byte	4
Lset1552 = Ltmp741-Leh_func_begin276
	.long	Lset1552
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1553 = Ltmp742-Ltmp741
	.long	Lset1553
	.byte	13
	.byte	6
	.byte	4
Lset1554 = Ltmp743-Ltmp742
	.long	Lset1554
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end276:

	.globl	_smpHash_at.eh
_smpHash_at.eh:
Lset1555 = Leh_frame_end277-Leh_frame_begin277
	.long	Lset1555
Leh_frame_begin277:
Lset1556 = Leh_frame_begin277-Leh_frame_common
	.long	Lset1556
Ltmp1248:
	.quad	Leh_func_begin277-Ltmp1248
Lset1557 = Leh_func_end277-Leh_func_begin277
	.quad	Lset1557
	.byte	0
	.byte	4
Lset1558 = Ltmp744-Leh_func_begin277
	.long	Lset1558
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1559 = Ltmp745-Ltmp744
	.long	Lset1559
	.byte	13
	.byte	6
	.byte	4
Lset1560 = Ltmp746-Ltmp745
	.long	Lset1560
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end277:

	.globl	_smpHash_at_assign.eh
_smpHash_at_assign.eh:
Lset1561 = Leh_frame_end278-Leh_frame_begin278
	.long	Lset1561
Leh_frame_begin278:
Lset1562 = Leh_frame_begin278-Leh_frame_common
	.long	Lset1562
Ltmp1249:
	.quad	Leh_func_begin278-Ltmp1249
Lset1563 = Leh_func_end278-Leh_func_begin278
	.quad	Lset1563
	.byte	0
	.byte	4
Lset1564 = Ltmp747-Leh_func_begin278
	.long	Lset1564
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1565 = Ltmp748-Ltmp747
	.long	Lset1565
	.byte	13
	.byte	6
	.byte	4
Lset1566 = Ltmp749-Ltmp748
	.long	Lset1566
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end278:

	.globl	_smpHash_to_s.eh
_smpHash_to_s.eh:
Lset1567 = Leh_frame_end279-Leh_frame_begin279
	.long	Lset1567
Leh_frame_begin279:
Lset1568 = Leh_frame_begin279-Leh_frame_common
	.long	Lset1568
Ltmp1250:
	.quad	Leh_func_begin279-Ltmp1250
Lset1569 = Leh_func_end279-Leh_func_begin279
	.quad	Lset1569
	.byte	0
	.byte	4
Lset1570 = Ltmp750-Leh_func_begin279
	.long	Lset1570
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1571 = Ltmp751-Ltmp750
	.long	Lset1571
	.byte	13
	.byte	6
	.align	3
Leh_frame_end279:

	.globl	_smpHash_write.eh
_smpHash_write.eh:
Lset1572 = Leh_frame_end280-Leh_frame_begin280
	.long	Lset1572
Leh_frame_begin280:
Lset1573 = Leh_frame_begin280-Leh_frame_common
	.long	Lset1573
Ltmp1251:
	.quad	Leh_func_begin280-Ltmp1251
Lset1574 = Leh_func_end280-Leh_func_begin280
	.quad	Lset1574
	.byte	0
	.byte	4
Lset1575 = Ltmp752-Leh_func_begin280
	.long	Lset1575
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1576 = Ltmp753-Ltmp752
	.long	Lset1576
	.byte	13
	.byte	6
	.align	3
Leh_frame_end280:

	.globl	_smpGlobal_create_class.eh
_smpGlobal_create_class.eh:
Lset1577 = Leh_frame_end281-Leh_frame_begin281
	.long	Lset1577
Leh_frame_begin281:
Lset1578 = Leh_frame_begin281-Leh_frame_common
	.long	Lset1578
Ltmp1252:
	.quad	Leh_func_begin281-Ltmp1252
Lset1579 = Leh_func_end281-Leh_func_begin281
	.quad	Lset1579
	.byte	0
	.byte	4
Lset1580 = Ltmp754-Leh_func_begin281
	.long	Lset1580
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1581 = Ltmp755-Ltmp754
	.long	Lset1581
	.byte	13
	.byte	6
	.byte	4
Lset1582 = Ltmp756-Ltmp755
	.long	Lset1582
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end281:

	.globl	_smpGlobal_hash.eh
_smpGlobal_hash.eh:
Lset1583 = Leh_frame_end282-Leh_frame_begin282
	.long	Lset1583
Leh_frame_begin282:
Lset1584 = Leh_frame_begin282-Leh_frame_common
	.long	Lset1584
Ltmp1253:
	.quad	Leh_func_begin282-Ltmp1253
Lset1585 = Leh_func_end282-Leh_func_begin282
	.quad	Lset1585
	.byte	0
	.byte	4
Lset1586 = Ltmp757-Leh_func_begin282
	.long	Lset1586
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1587 = Ltmp758-Ltmp757
	.long	Lset1587
	.byte	13
	.byte	6
	.byte	4
Lset1588 = Ltmp759-Ltmp758
	.long	Lset1588
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end282:

	.globl	_smpGlobal_print_arg.eh
_smpGlobal_print_arg.eh:
Lset1589 = Leh_frame_end283-Leh_frame_begin283
	.long	Lset1589
Leh_frame_begin283:
Lset1590 = Leh_frame_begin283-Leh_frame_common
	.long	Lset1590
Ltmp1254:
	.quad	Leh_func_begin283-Ltmp1254
Lset1591 = Leh_func_end283-Leh_func_begin283
	.quad	Lset1591
	.byte	0
	.byte	4
Lset1592 = Ltmp760-Leh_func_begin283
	.long	Lset1592
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1593 = Ltmp761-Ltmp760
	.long	Lset1593
	.byte	13
	.byte	6
	.align	3
Leh_frame_end283:

	.globl	_smp_printf_arg.eh
_smp_printf_arg.eh:
Lset1594 = Leh_frame_end284-Leh_frame_begin284
	.long	Lset1594
Leh_frame_begin284:
Lset1595 = Leh_frame_begin284-Leh_frame_common
	.long	Lset1595
Ltmp1255:
	.quad	Leh_func_begin284-Ltmp1255
Lset1596 = Leh_func_end284-Leh_func_begin284
	.quad	Lset1596
	.byte	0
	.byte	4
Lset1597 = Ltmp762-Leh_func_begin284
	.long	Lset1597
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1598 = Ltmp763-Ltmp762
	.long	Lset1598
	.byte	13
	.byte	6
	.align	3
Leh_frame_end284:

	.globl	_smpGlobal_println_arg.eh
_smpGlobal_println_arg.eh:
Lset1599 = Leh_frame_end285-Leh_frame_begin285
	.long	Lset1599
Leh_frame_begin285:
Lset1600 = Leh_frame_begin285-Leh_frame_common
	.long	Lset1600
Ltmp1256:
	.quad	Leh_func_begin285-Ltmp1256
Lset1601 = Leh_func_end285-Leh_func_begin285
	.quad	Lset1601
	.byte	0
	.byte	4
Lset1602 = Ltmp764-Leh_func_begin285
	.long	Lset1602
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1603 = Ltmp765-Ltmp764
	.long	Lset1603
	.byte	13
	.byte	6
	.byte	4
Lset1604 = Ltmp766-Ltmp765
	.long	Lset1604
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end285:

	.globl	_smpGlobal_rand.eh
_smpGlobal_rand.eh:
Lset1605 = Leh_frame_end286-Leh_frame_begin286
	.long	Lset1605
Leh_frame_begin286:
Lset1606 = Leh_frame_begin286-Leh_frame_common
	.long	Lset1606
Ltmp1257:
	.quad	Leh_func_begin286-Ltmp1257
Lset1607 = Leh_func_end286-Leh_func_begin286
	.quad	Lset1607
	.byte	0
	.byte	4
Lset1608 = Ltmp767-Leh_func_begin286
	.long	Lset1608
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1609 = Ltmp768-Ltmp767
	.long	Lset1609
	.byte	13
	.byte	6
	.byte	4
Lset1610 = Ltmp769-Ltmp768
	.long	Lset1610
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end286:

	.globl	_smpGlobal_sprintf_arg.eh
_smpGlobal_sprintf_arg.eh:
Lset1611 = Leh_frame_end287-Leh_frame_begin287
	.long	Lset1611
Leh_frame_begin287:
Lset1612 = Leh_frame_begin287-Leh_frame_common
	.long	Lset1612
Ltmp1258:
	.quad	Leh_func_begin287-Ltmp1258
Lset1613 = Leh_func_end287-Leh_func_begin287
	.quad	Lset1613
	.byte	0
	.byte	4
Lset1614 = Ltmp770-Leh_func_begin287
	.long	Lset1614
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1615 = Ltmp771-Ltmp770
	.long	Lset1615
	.byte	13
	.byte	6
	.byte	4
Lset1616 = Ltmp772-Ltmp771
	.long	Lset1616
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end287:

	.globl	_smpFloat_create_class.eh
_smpFloat_create_class.eh:
Lset1617 = Leh_frame_end288-Leh_frame_begin288
	.long	Lset1617
Leh_frame_begin288:
Lset1618 = Leh_frame_begin288-Leh_frame_common
	.long	Lset1618
Ltmp1259:
	.quad	Leh_func_begin288-Ltmp1259
Lset1619 = Leh_func_end288-Leh_func_begin288
	.quad	Lset1619
	.byte	0
	.byte	4
Lset1620 = Ltmp773-Leh_func_begin288
	.long	Lset1620
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1621 = Ltmp774-Ltmp773
	.long	Lset1621
	.byte	13
	.byte	6
	.byte	4
Lset1622 = Ltmp775-Ltmp774
	.long	Lset1622
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end288:

	.globl	_smpException_create_class.eh
_smpException_create_class.eh:
Lset1623 = Leh_frame_end289-Leh_frame_begin289
	.long	Lset1623
Leh_frame_begin289:
Lset1624 = Leh_frame_begin289-Leh_frame_common
	.long	Lset1624
Ltmp1260:
	.quad	Leh_func_begin289-Ltmp1260
Lset1625 = Leh_func_end289-Leh_func_begin289
	.quad	Lset1625
	.byte	0
	.byte	4
Lset1626 = Ltmp776-Leh_func_begin289
	.long	Lset1626
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1627 = Ltmp777-Ltmp776
	.long	Lset1627
	.byte	13
	.byte	6
	.byte	4
Lset1628 = Ltmp778-Ltmp777
	.long	Lset1628
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end289:

	.globl	_smpException_to_s.eh
_smpException_to_s.eh:
Lset1629 = Leh_frame_end290-Leh_frame_begin290
	.long	Lset1629
Leh_frame_begin290:
Lset1630 = Leh_frame_begin290-Leh_frame_common
	.long	Lset1630
Ltmp1261:
	.quad	Leh_func_begin290-Ltmp1261
Lset1631 = Leh_func_end290-Leh_func_begin290
	.quad	Lset1631
	.byte	0
	.byte	4
Lset1632 = Ltmp779-Leh_func_begin290
	.long	Lset1632
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1633 = Ltmp780-Ltmp779
	.long	Lset1633
	.byte	13
	.byte	6
	.byte	4
Lset1634 = Ltmp781-Ltmp780
	.long	Lset1634
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end290:

	.globl	_smpTypeError_to_s.eh
_smpTypeError_to_s.eh:
Lset1635 = Leh_frame_end291-Leh_frame_begin291
	.long	Lset1635
Leh_frame_begin291:
Lset1636 = Leh_frame_begin291-Leh_frame_common
	.long	Lset1636
Ltmp1262:
	.quad	Leh_func_begin291-Ltmp1262
Lset1637 = Leh_func_end291-Leh_func_begin291
	.quad	Lset1637
	.byte	0
	.byte	4
Lset1638 = Ltmp782-Leh_func_begin291
	.long	Lset1638
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1639 = Ltmp783-Ltmp782
	.long	Lset1639
	.byte	13
	.byte	6
	.byte	4
Lset1640 = Ltmp784-Ltmp783
	.long	Lset1640
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end291:

	.globl	_smpArray_create_class.eh
_smpArray_create_class.eh:
Lset1641 = Leh_frame_end292-Leh_frame_begin292
	.long	Lset1641
Leh_frame_begin292:
Lset1642 = Leh_frame_begin292-Leh_frame_common
	.long	Lset1642
Ltmp1263:
	.quad	Leh_func_begin292-Ltmp1263
Lset1643 = Leh_func_end292-Leh_func_begin292
	.quad	Lset1643
	.byte	0
	.byte	4
Lset1644 = Ltmp785-Leh_func_begin292
	.long	Lset1644
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1645 = Ltmp786-Ltmp785
	.long	Lset1645
	.byte	13
	.byte	6
	.byte	4
Lset1646 = Ltmp787-Ltmp786
	.long	Lset1646
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end292:

	.globl	_smpArray_sort.eh
_smpArray_sort.eh:
Lset1647 = Leh_frame_end293-Leh_frame_begin293
	.long	Lset1647
Leh_frame_begin293:
Lset1648 = Leh_frame_begin293-Leh_frame_common
	.long	Lset1648
Ltmp1264:
	.quad	Leh_func_begin293-Ltmp1264
Lset1649 = Leh_func_end293-Leh_func_begin293
	.quad	Lset1649
	.byte	0
	.byte	4
Lset1650 = Ltmp788-Leh_func_begin293
	.long	Lset1650
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1651 = Ltmp789-Ltmp788
	.long	Lset1651
	.byte	13
	.byte	6
	.byte	4
Lset1652 = Ltmp790-Ltmp789
	.long	Lset1652
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end293:

	.globl	_smpArray_sort_now.eh
_smpArray_sort_now.eh:
Lset1653 = Leh_frame_end294-Leh_frame_begin294
	.long	Lset1653
Leh_frame_begin294:
Lset1654 = Leh_frame_begin294-Leh_frame_common
	.long	Lset1654
Ltmp1265:
	.quad	Leh_func_begin294-Ltmp1265
Lset1655 = Leh_func_end294-Leh_func_begin294
	.quad	Lset1655
	.byte	0
	.byte	4
Lset1656 = Ltmp791-Leh_func_begin294
	.long	Lset1656
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1657 = Ltmp792-Ltmp791
	.long	Lset1657
	.byte	13
	.byte	6
	.byte	4
Lset1658 = Ltmp793-Ltmp792
	.long	Lset1658
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end294:

	.globl	_smpArray_to_s.eh
_smpArray_to_s.eh:
Lset1659 = Leh_frame_end295-Leh_frame_begin295
	.long	Lset1659
Leh_frame_begin295:
Lset1660 = Leh_frame_begin295-Leh_frame_common
	.long	Lset1660
Ltmp1266:
	.quad	Leh_func_begin295-Ltmp1266
Lset1661 = Leh_func_end295-Leh_func_begin295
	.quad	Lset1661
	.byte	0
	.byte	4
Lset1662 = Ltmp794-Leh_func_begin295
	.long	Lset1662
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1663 = Ltmp795-Ltmp794
	.long	Lset1663
	.byte	13
	.byte	6
	.byte	4
Lset1664 = Ltmp796-Ltmp795
	.long	Lset1664
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end295:

	.globl	_smpArray_write.eh
_smpArray_write.eh:
Lset1665 = Leh_frame_end296-Leh_frame_begin296
	.long	Lset1665
Leh_frame_begin296:
Lset1666 = Leh_frame_begin296-Leh_frame_common
	.long	Lset1666
Ltmp1267:
	.quad	Leh_func_begin296-Ltmp1267
Lset1667 = Leh_func_end296-Leh_func_begin296
	.quad	Lset1667
	.byte	0
	.byte	4
Lset1668 = Ltmp797-Leh_func_begin296
	.long	Lset1668
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1669 = Ltmp798-Ltmp797
	.long	Lset1669
	.byte	13
	.byte	6
	.byte	4
Lset1670 = Ltmp799-Ltmp798
	.long	Lset1670
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end296:

	.globl	_init_required_classes.eh
_init_required_classes.eh:
Lset1671 = Leh_frame_end297-Leh_frame_begin297
	.long	Lset1671
Leh_frame_begin297:
Lset1672 = Leh_frame_begin297-Leh_frame_common
	.long	Lset1672
Ltmp1268:
	.quad	Leh_func_begin297-Ltmp1268
Lset1673 = Leh_func_end297-Leh_func_begin297
	.quad	Lset1673
	.byte	0
	.byte	4
Lset1674 = Ltmp800-Leh_func_begin297
	.long	Lset1674
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1675 = Ltmp801-Ltmp800
	.long	Lset1675
	.byte	13
	.byte	6
	.align	3
Leh_frame_end297:

	.globl	_test_external_classes.eh
_test_external_classes.eh:
Lset1676 = Leh_frame_end298-Leh_frame_begin298
	.long	Lset1676
Leh_frame_begin298:
Lset1677 = Leh_frame_begin298-Leh_frame_common
	.long	Lset1677
Ltmp1269:
	.quad	Leh_func_begin298-Ltmp1269
Lset1678 = Leh_func_end298-Leh_func_begin298
	.quad	Lset1678
	.byte	0
	.byte	4
Lset1679 = Ltmp802-Leh_func_begin298
	.long	Lset1679
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1680 = Ltmp803-Ltmp802
	.long	Lset1680
	.byte	13
	.byte	6
	.align	3
Leh_frame_end298:

	.globl	_init_fundamental_classes.eh
_init_fundamental_classes.eh:
Lset1681 = Leh_frame_end299-Leh_frame_begin299
	.long	Lset1681
Leh_frame_begin299:
Lset1682 = Leh_frame_begin299-Leh_frame_common
	.long	Lset1682
Ltmp1270:
	.quad	Leh_func_begin299-Ltmp1270
Lset1683 = Leh_func_end299-Leh_func_begin299
	.quad	Lset1683
	.byte	0
	.byte	4
Lset1684 = Ltmp804-Leh_func_begin299
	.long	Lset1684
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1685 = Ltmp805-Ltmp804
	.long	Lset1685
	.byte	13
	.byte	6
	.byte	4
Lset1686 = Ltmp806-Ltmp805
	.long	Lset1686
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end299:

	.globl	_smpObject_eql.eh
_smpObject_eql.eh:
Lset1687 = Leh_frame_end300-Leh_frame_begin300
	.long	Lset1687
Leh_frame_begin300:
Lset1688 = Leh_frame_begin300-Leh_frame_common
	.long	Lset1688
Ltmp1271:
	.quad	Leh_func_begin300-Ltmp1271
Lset1689 = Leh_func_end300-Leh_func_begin300
	.quad	Lset1689
	.byte	0
	.byte	4
Lset1690 = Ltmp807-Leh_func_begin300
	.long	Lset1690
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1691 = Ltmp808-Ltmp807
	.long	Lset1691
	.byte	13
	.byte	6
	.byte	4
Lset1692 = Ltmp809-Ltmp808
	.long	Lset1692
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end300:

	.globl	_smpObject_equalp.eh
_smpObject_equalp.eh:
Lset1693 = Leh_frame_end301-Leh_frame_begin301
	.long	Lset1693
Leh_frame_begin301:
Lset1694 = Leh_frame_begin301-Leh_frame_common
	.long	Lset1694
Ltmp1272:
	.quad	Leh_func_begin301-Ltmp1272
Lset1695 = Leh_func_end301-Leh_func_begin301
	.quad	Lset1695
	.byte	0
	.byte	4
Lset1696 = Ltmp810-Leh_func_begin301
	.long	Lset1696
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1697 = Ltmp811-Ltmp810
	.long	Lset1697
	.byte	13
	.byte	6
	.byte	4
Lset1698 = Ltmp812-Ltmp811
	.long	Lset1698
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end301:

	.globl	_smpObject_write.eh
_smpObject_write.eh:
Lset1699 = Leh_frame_end302-Leh_frame_begin302
	.long	Lset1699
Leh_frame_begin302:
Lset1700 = Leh_frame_begin302-Leh_frame_common
	.long	Lset1700
Ltmp1273:
	.quad	Leh_func_begin302-Ltmp1273
Lset1701 = Leh_func_end302-Leh_func_begin302
	.quad	Lset1701
	.byte	0
	.byte	4
Lset1702 = Ltmp813-Leh_func_begin302
	.long	Lset1702
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1703 = Ltmp814-Ltmp813
	.long	Lset1703
	.byte	13
	.byte	6
	.byte	4
Lset1704 = Ltmp815-Ltmp814
	.long	Lset1704
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end302:

	.globl	_smpObject_write_class.eh
_smpObject_write_class.eh:
Lset1705 = Leh_frame_end303-Leh_frame_begin303
	.long	Lset1705
Leh_frame_begin303:
Lset1706 = Leh_frame_begin303-Leh_frame_common
	.long	Lset1706
Ltmp1274:
	.quad	Leh_func_begin303-Ltmp1274
Lset1707 = Leh_func_end303-Leh_func_begin303
	.quad	Lset1707
	.byte	0
	.byte	4
Lset1708 = Ltmp816-Leh_func_begin303
	.long	Lset1708
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1709 = Ltmp817-Ltmp816
	.long	Lset1709
	.byte	13
	.byte	6
	.byte	4
Lset1710 = Ltmp818-Ltmp817
	.long	Lset1710
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end303:

	.globl	_init_smp_classes.eh
_init_smp_classes.eh:
Lset1711 = Leh_frame_end304-Leh_frame_begin304
	.long	Lset1711
Leh_frame_begin304:
Lset1712 = Leh_frame_begin304-Leh_frame_common
	.long	Lset1712
Ltmp1275:
	.quad	Leh_func_begin304-Ltmp1275
Lset1713 = Leh_func_end304-Leh_func_begin304
	.quad	Lset1713
	.byte	0
	.byte	4
Lset1714 = Ltmp819-Leh_func_begin304
	.long	Lset1714
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1715 = Ltmp820-Ltmp819
	.long	Lset1715
	.byte	13
	.byte	6
	.byte	4
Lset1716 = Ltmp821-Ltmp820
	.long	Lset1716
	.byte	131
	.byte	3
	.align	3
Leh_frame_end304:

	.globl	_smp_unimplemented_function.eh
_smp_unimplemented_function.eh:
Lset1717 = Leh_frame_end305-Leh_frame_begin305
	.long	Lset1717
Leh_frame_begin305:
Lset1718 = Leh_frame_begin305-Leh_frame_common
	.long	Lset1718
Ltmp1276:
	.quad	Leh_func_begin305-Ltmp1276
Lset1719 = Leh_func_end305-Leh_func_begin305
	.quad	Lset1719
	.byte	0
	.byte	4
Lset1720 = Ltmp822-Leh_func_begin305
	.long	Lset1720
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1721 = Ltmp823-Ltmp822
	.long	Lset1721
	.byte	13
	.byte	6
	.byte	4
Lset1722 = Ltmp824-Ltmp823
	.long	Lset1722
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end305:

	.globl	_smpObject_get_fun_rec.eh
_smpObject_get_fun_rec.eh:
Lset1723 = Leh_frame_end306-Leh_frame_begin306
	.long	Lset1723
Leh_frame_begin306:
Lset1724 = Leh_frame_begin306-Leh_frame_common
	.long	Lset1724
Ltmp1277:
	.quad	Leh_func_begin306-Ltmp1277
Lset1725 = Leh_func_end306-Leh_func_begin306
	.quad	Lset1725
	.byte	0
	.byte	4
Lset1726 = Ltmp825-Leh_func_begin306
	.long	Lset1726
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1727 = Ltmp826-Ltmp825
	.long	Lset1727
	.byte	13
	.byte	6
	.byte	4
Lset1728 = Ltmp827-Ltmp826
	.long	Lset1728
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end306:

	.globl	_smpObject_get_fun.eh
_smpObject_get_fun.eh:
Lset1729 = Leh_frame_end307-Leh_frame_begin307
	.long	Lset1729
Leh_frame_begin307:
Lset1730 = Leh_frame_begin307-Leh_frame_common
	.long	Lset1730
Ltmp1278:
	.quad	Leh_func_begin307-Ltmp1278
Lset1731 = Leh_func_end307-Leh_func_begin307
	.quad	Lset1731
	.byte	0
	.byte	4
Lset1732 = Ltmp828-Leh_func_begin307
	.long	Lset1732
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1733 = Ltmp829-Ltmp828
	.long	Lset1733
	.byte	13
	.byte	6
	.byte	4
Lset1734 = Ltmp830-Ltmp829
	.long	Lset1734
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end307:

	.globl	_smpObject_funcall.eh
_smpObject_funcall.eh:
Lset1735 = Leh_frame_end308-Leh_frame_begin308
	.long	Lset1735
Leh_frame_begin308:
Lset1736 = Leh_frame_begin308-Leh_frame_common
	.long	Lset1736
Ltmp1279:
	.quad	Leh_func_begin308-Ltmp1279
Lset1737 = Leh_func_end308-Leh_func_begin308
	.quad	Lset1737
	.byte	0
	.byte	4
Lset1738 = Ltmp831-Leh_func_begin308
	.long	Lset1738
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1739 = Ltmp832-Ltmp831
	.long	Lset1739
	.byte	13
	.byte	6
	.byte	4
Lset1740 = Ltmp833-Ltmp832
	.long	Lset1740
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end308:

	.globl	_smpHash_make_string.eh
_smpHash_make_string.eh:
Lset1741 = Leh_frame_end309-Leh_frame_begin309
	.long	Lset1741
Leh_frame_begin309:
Lset1742 = Leh_frame_begin309-Leh_frame_common
	.long	Lset1742
Ltmp1280:
	.quad	Leh_func_begin309-Ltmp1280
Lset1743 = Leh_func_end309-Leh_func_begin309
	.quad	Lset1743
	.byte	0
	.byte	4
Lset1744 = Ltmp834-Leh_func_begin309
	.long	Lset1744
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1745 = Ltmp835-Ltmp834
	.long	Lset1745
	.byte	13
	.byte	6
	.byte	4
Lset1746 = Ltmp836-Ltmp835
	.long	Lset1746
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end309:

	.globl	_obj_put_fmt.eh
_obj_put_fmt.eh:
Lset1747 = Leh_frame_end310-Leh_frame_begin310
	.long	Lset1747
Leh_frame_begin310:
Lset1748 = Leh_frame_begin310-Leh_frame_common
	.long	Lset1748
Ltmp1281:
	.quad	Leh_func_begin310-Ltmp1281
Lset1749 = Leh_func_end310-Leh_func_begin310
	.quad	Lset1749
	.byte	0
	.byte	4
Lset1750 = Ltmp837-Leh_func_begin310
	.long	Lset1750
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1751 = Ltmp838-Ltmp837
	.long	Lset1751
	.byte	13
	.byte	6
	.byte	4
Lset1752 = Ltmp839-Ltmp838
	.long	Lset1752
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end310:

	.globl	_smpGlobal_vsprintf.eh
_smpGlobal_vsprintf.eh:
Lset1753 = Leh_frame_end311-Leh_frame_begin311
	.long	Lset1753
Leh_frame_begin311:
Lset1754 = Leh_frame_begin311-Leh_frame_common
	.long	Lset1754
Ltmp1282:
	.quad	Leh_func_begin311-Ltmp1282
Lset1755 = Leh_func_end311-Leh_func_begin311
	.quad	Lset1755
	.byte	0
	.byte	4
Lset1756 = Ltmp840-Leh_func_begin311
	.long	Lset1756
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1757 = Ltmp841-Ltmp840
	.long	Lset1757
	.byte	13
	.byte	6
	.byte	4
Lset1758 = Ltmp842-Ltmp841
	.long	Lset1758
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end311:

	.globl	_smpGlobal_sprintf.eh
_smpGlobal_sprintf.eh:
Lset1759 = Leh_frame_end312-Leh_frame_begin312
	.long	Lset1759
Leh_frame_begin312:
Lset1760 = Leh_frame_begin312-Leh_frame_common
	.long	Lset1760
Ltmp1283:
	.quad	Leh_func_begin312-Ltmp1283
Lset1761 = Leh_func_end312-Leh_func_begin312
	.quad	Lset1761
	.byte	0
	.byte	4
Lset1762 = Ltmp843-Leh_func_begin312
	.long	Lset1762
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1763 = Ltmp844-Ltmp843
	.long	Lset1763
	.byte	13
	.byte	6
	.align	3
Leh_frame_end312:

	.globl	_test_printf.eh
_test_printf.eh:
Lset1764 = Leh_frame_end313-Leh_frame_begin313
	.long	Lset1764
Leh_frame_begin313:
Lset1765 = Leh_frame_begin313-Leh_frame_common
	.long	Lset1765
Ltmp1284:
	.quad	Leh_func_begin313-Ltmp1284
Lset1766 = Leh_func_end313-Leh_func_begin313
	.quad	Lset1766
	.byte	0
	.byte	4
Lset1767 = Ltmp846-Leh_func_begin313
	.long	Lset1767
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1768 = Ltmp847-Ltmp846
	.long	Lset1768
	.byte	13
	.byte	6
	.byte	4
Lset1769 = Ltmp848-Ltmp847
	.long	Lset1769
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end313:

	.globl	_smp_print.eh
_smp_print.eh:
Lset1770 = Leh_frame_end314-Leh_frame_begin314
	.long	Lset1770
Leh_frame_begin314:
Lset1771 = Leh_frame_begin314-Leh_frame_common
	.long	Lset1771
Ltmp1285:
	.quad	Leh_func_begin314-Ltmp1285
Lset1772 = Leh_func_end314-Leh_func_begin314
	.quad	Lset1772
	.byte	0
	.byte	4
Lset1773 = Ltmp849-Leh_func_begin314
	.long	Lset1773
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1774 = Ltmp850-Ltmp849
	.long	Lset1774
	.byte	13
	.byte	6
	.byte	4
Lset1775 = Ltmp851-Ltmp850
	.long	Lset1775
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end314:

	.globl	_smp_println.eh
_smp_println.eh:
Lset1776 = Leh_frame_end315-Leh_frame_begin315
	.long	Lset1776
Leh_frame_begin315:
Lset1777 = Leh_frame_begin315-Leh_frame_common
	.long	Lset1777
Ltmp1286:
	.quad	Leh_func_begin315-Ltmp1286
Lset1778 = Leh_func_end315-Leh_func_begin315
	.quad	Lset1778
	.byte	0
	.byte	4
Lset1779 = Ltmp852-Leh_func_begin315
	.long	Lset1779
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1780 = Ltmp853-Ltmp852
	.long	Lset1780
	.byte	13
	.byte	6
	.byte	4
Lset1781 = Ltmp854-Ltmp853
	.long	Lset1781
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end315:

	.globl	_test_arrays.eh
_test_arrays.eh:
Lset1782 = Leh_frame_end316-Leh_frame_begin316
	.long	Lset1782
Leh_frame_begin316:
Lset1783 = Leh_frame_begin316-Leh_frame_common
	.long	Lset1783
Ltmp1287:
	.quad	Leh_func_begin316-Ltmp1287
Lset1784 = Leh_func_end316-Leh_func_begin316
	.quad	Lset1784
	.byte	0
	.byte	4
Lset1785 = Ltmp855-Leh_func_begin316
	.long	Lset1785
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1786 = Ltmp856-Ltmp855
	.long	Lset1786
	.byte	13
	.byte	6
	.byte	4
Lset1787 = Ltmp857-Ltmp856
	.long	Lset1787
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end316:

	.globl	_test_regex.eh
_test_regex.eh:
Lset1788 = Leh_frame_end317-Leh_frame_begin317
	.long	Lset1788
Leh_frame_begin317:
Lset1789 = Leh_frame_begin317-Leh_frame_common
	.long	Lset1789
Ltmp1288:
	.quad	Leh_func_begin317-Ltmp1288
Lset1790 = Leh_func_end317-Leh_func_begin317
	.quad	Lset1790
	.byte	0
	.byte	4
Lset1791 = Ltmp858-Leh_func_begin317
	.long	Lset1791
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1792 = Ltmp859-Ltmp858
	.long	Lset1792
	.byte	13
	.byte	6
	.byte	4
Lset1793 = Ltmp860-Ltmp859
	.long	Lset1793
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end317:

	.globl	_smp_printf.eh
_smp_printf.eh:
Lset1794 = Leh_frame_end318-Leh_frame_begin318
	.long	Lset1794
Leh_frame_begin318:
Lset1795 = Leh_frame_begin318-Leh_frame_common
	.long	Lset1795
Ltmp1289:
	.quad	Leh_func_begin318-Ltmp1289
Lset1796 = Leh_func_end318-Leh_func_begin318
	.quad	Lset1796
	.byte	0
	.byte	4
Lset1797 = Ltmp861-Leh_func_begin318
	.long	Lset1797
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1798 = Ltmp862-Ltmp861
	.long	Lset1798
	.byte	13
	.byte	6
	.align	3
Leh_frame_end318:

	.globl	_main.eh
_main.eh:
Lset1799 = Leh_frame_end319-Leh_frame_begin319
	.long	Lset1799
Leh_frame_begin319:
Lset1800 = Leh_frame_begin319-Leh_frame_common
	.long	Lset1800
Ltmp1290:
	.quad	Leh_func_begin319-Ltmp1290
Lset1801 = Leh_func_end319-Leh_func_begin319
	.quad	Lset1801
	.byte	0
	.byte	4
Lset1802 = Ltmp864-Leh_func_begin319
	.long	Lset1802
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1803 = Ltmp865-Ltmp864
	.long	Lset1803
	.byte	13
	.byte	6
	.byte	4
Lset1804 = Ltmp866-Ltmp865
	.long	Lset1804
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end319:

	.globl	_smpGlobal_class_arg.eh
_smpGlobal_class_arg.eh:
Lset1805 = Leh_frame_end320-Leh_frame_begin320
	.long	Lset1805
Leh_frame_begin320:
Lset1806 = Leh_frame_begin320-Leh_frame_common
	.long	Lset1806
Ltmp1291:
	.quad	Leh_func_begin320-Ltmp1291
Lset1807 = Leh_func_end320-Leh_func_begin320
	.quad	Lset1807
	.byte	0
	.byte	4
Lset1808 = Ltmp867-Leh_func_begin320
	.long	Lset1808
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1809 = Ltmp868-Ltmp867
	.long	Lset1809
	.byte	13
	.byte	6
	.align	3
Leh_frame_end320:

	.globl	_smpGlobal_fprint.eh
_smpGlobal_fprint.eh:
Lset1810 = Leh_frame_end321-Leh_frame_begin321
	.long	Lset1810
Leh_frame_begin321:
Lset1811 = Leh_frame_begin321-Leh_frame_common
	.long	Lset1811
Ltmp1292:
	.quad	Leh_func_begin321-Ltmp1292
Lset1812 = Leh_func_end321-Leh_func_begin321
	.quad	Lset1812
	.byte	0
	.byte	4
Lset1813 = Ltmp870-Leh_func_begin321
	.long	Lset1813
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1814 = Ltmp871-Ltmp870
	.long	Lset1814
	.byte	13
	.byte	6
	.byte	4
Lset1815 = Ltmp872-Ltmp871
	.long	Lset1815
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end321:

	.globl	_smpGlobal_fprintf.eh
_smpGlobal_fprintf.eh:
Lset1816 = Leh_frame_end322-Leh_frame_begin322
	.long	Lset1816
Leh_frame_begin322:
Lset1817 = Leh_frame_begin322-Leh_frame_common
	.long	Lset1817
Ltmp1293:
	.quad	Leh_func_begin322-Ltmp1293
Lset1818 = Leh_func_end322-Leh_func_begin322
	.quad	Lset1818
	.byte	0
	.byte	4
Lset1819 = Ltmp873-Leh_func_begin322
	.long	Lset1819
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1820 = Ltmp874-Ltmp873
	.long	Lset1820
	.byte	13
	.byte	6
	.byte	4
Lset1821 = Ltmp875-Ltmp874
	.long	Lset1821
	.byte	131
	.byte	3
	.align	3
Leh_frame_end322:

	.globl	_smpException_print.eh
_smpException_print.eh:
Lset1822 = Leh_frame_end323-Leh_frame_begin323
	.long	Lset1822
Leh_frame_begin323:
Lset1823 = Leh_frame_begin323-Leh_frame_common
	.long	Lset1823
Ltmp1294:
	.quad	Leh_func_begin323-Ltmp1294
Lset1824 = Leh_func_end323-Leh_func_begin323
	.quad	Lset1824
	.byte	0
	.byte	4
Lset1825 = Ltmp876-Leh_func_begin323
	.long	Lset1825
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1826 = Ltmp877-Ltmp876
	.long	Lset1826
	.byte	13
	.byte	6
	.align	3
Leh_frame_end323:

	.globl	_make_list.eh
_make_list.eh:
Lset1827 = Leh_frame_end324-Leh_frame_begin324
	.long	Lset1827
Leh_frame_begin324:
Lset1828 = Leh_frame_begin324-Leh_frame_common
	.long	Lset1828
Ltmp1295:
	.quad	Leh_func_begin324-Ltmp1295
Lset1829 = Leh_func_end324-Leh_func_begin324
	.quad	Lset1829
	.byte	0
	.byte	4
Lset1830 = Ltmp878-Leh_func_begin324
	.long	Lset1830
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1831 = Ltmp879-Ltmp878
	.long	Lset1831
	.byte	13
	.byte	6
	.byte	4
Lset1832 = Ltmp880-Ltmp879
	.long	Lset1832
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end324:

	.globl	_test_gc.eh
_test_gc.eh:
Lset1833 = Leh_frame_end325-Leh_frame_begin325
	.long	Lset1833
Leh_frame_begin325:
Lset1834 = Leh_frame_begin325-Leh_frame_common
	.long	Lset1834
Ltmp1296:
	.quad	Leh_func_begin325-Ltmp1296
Lset1835 = Leh_func_end325-Leh_func_begin325
	.quad	Lset1835
	.byte	0
	.byte	4
Lset1836 = Ltmp881-Leh_func_begin325
	.long	Lset1836
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1837 = Ltmp882-Ltmp881
	.long	Lset1837
	.byte	13
	.byte	6
	.byte	4
Lset1838 = Ltmp883-Ltmp882
	.long	Lset1838
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end325:

	.globl	_smpObject_cmp_fast.eh
_smpObject_cmp_fast.eh:
Lset1839 = Leh_frame_end326-Leh_frame_begin326
	.long	Lset1839
Leh_frame_begin326:
Lset1840 = Leh_frame_begin326-Leh_frame_common
	.long	Lset1840
Ltmp1297:
	.quad	Leh_func_begin326-Ltmp1297
Lset1841 = Leh_func_end326-Leh_func_begin326
	.quad	Lset1841
	.byte	0
	.byte	4
Lset1842 = Ltmp884-Leh_func_begin326
	.long	Lset1842
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1843 = Ltmp885-Ltmp884
	.long	Lset1843
	.byte	13
	.byte	6
	.byte	4
Lset1844 = Ltmp886-Ltmp885
	.long	Lset1844
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end326:

	.globl	_smp_cmp_helper.eh
_smp_cmp_helper.eh:
Lset1845 = Leh_frame_end327-Leh_frame_begin327
	.long	Lset1845
Leh_frame_begin327:
Lset1846 = Leh_frame_begin327-Leh_frame_common
	.long	Lset1846
Ltmp1298:
	.quad	Leh_func_begin327-Ltmp1298
Lset1847 = Leh_func_end327-Leh_func_begin327
	.quad	Lset1847
	.byte	0
	.byte	4
Lset1848 = Ltmp887-Leh_func_begin327
	.long	Lset1848
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1849 = Ltmp888-Ltmp887
	.long	Lset1849
	.byte	13
	.byte	6
	.byte	4
Lset1850 = Ltmp889-Ltmp888
	.long	Lset1850
	.byte	131
	.byte	3
	.align	3
Leh_frame_end327:

	.globl	_smp_merge_sorted_arrays.eh
_smp_merge_sorted_arrays.eh:
Lset1851 = Leh_frame_end328-Leh_frame_begin328
	.long	Lset1851
Leh_frame_begin328:
Lset1852 = Leh_frame_begin328-Leh_frame_common
	.long	Lset1852
Ltmp1299:
	.quad	Leh_func_begin328-Ltmp1299
Lset1853 = Leh_func_end328-Leh_func_begin328
	.quad	Lset1853
	.byte	0
	.byte	4
Lset1854 = Ltmp890-Leh_func_begin328
	.long	Lset1854
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1855 = Ltmp891-Ltmp890
	.long	Lset1855
	.byte	13
	.byte	6
	.byte	4
Lset1856 = Ltmp892-Ltmp891
	.long	Lset1856
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end328:

	.globl	_smpArray_sort_insertion.eh
_smpArray_sort_insertion.eh:
Lset1857 = Leh_frame_end329-Leh_frame_begin329
	.long	Lset1857
Leh_frame_begin329:
Lset1858 = Leh_frame_begin329-Leh_frame_common
	.long	Lset1858
Ltmp1300:
	.quad	Leh_func_begin329-Ltmp1300
Lset1859 = Leh_func_end329-Leh_func_begin329
	.quad	Lset1859
	.byte	0
	.byte	4
Lset1860 = Ltmp893-Leh_func_begin329
	.long	Lset1860
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1861 = Ltmp894-Ltmp893
	.long	Lset1861
	.byte	13
	.byte	6
	.byte	4
Lset1862 = Ltmp895-Ltmp894
	.long	Lset1862
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end329:

	.globl	_smpArray_sort_merge.eh
_smpArray_sort_merge.eh:
Lset1863 = Leh_frame_end330-Leh_frame_begin330
	.long	Lset1863
Leh_frame_begin330:
Lset1864 = Leh_frame_begin330-Leh_frame_common
	.long	Lset1864
Ltmp1301:
	.quad	Leh_func_begin330-Ltmp1301
Lset1865 = Leh_func_end330-Leh_func_begin330
	.quad	Lset1865
	.byte	0
	.byte	4
Lset1866 = Ltmp896-Leh_func_begin330
	.long	Lset1866
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1867 = Ltmp897-Ltmp896
	.long	Lset1867
	.byte	13
	.byte	6
	.byte	4
Lset1868 = Ltmp898-Ltmp897
	.long	Lset1868
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end330:

	.globl	_timmy_get_run.eh
_timmy_get_run.eh:
Lset1869 = Leh_frame_end331-Leh_frame_begin331
	.long	Lset1869
Leh_frame_begin331:
Lset1870 = Leh_frame_begin331-Leh_frame_common
	.long	Lset1870
Ltmp1302:
	.quad	Leh_func_begin331-Ltmp1302
Lset1871 = Leh_func_end331-Leh_func_begin331
	.quad	Lset1871
	.byte	0
	.byte	4
Lset1872 = Ltmp899-Leh_func_begin331
	.long	Lset1872
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1873 = Ltmp900-Ltmp899
	.long	Lset1873
	.byte	13
	.byte	6
	.byte	4
Lset1874 = Ltmp901-Ltmp900
	.long	Lset1874
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end331:

	.globl	_smpArray_sort_timmy.eh
_smpArray_sort_timmy.eh:
Lset1875 = Leh_frame_end332-Leh_frame_begin332
	.long	Lset1875
Leh_frame_begin332:
Lset1876 = Leh_frame_begin332-Leh_frame_common
	.long	Lset1876
Ltmp1303:
	.quad	Leh_func_begin332-Ltmp1303
Lset1877 = Leh_func_end332-Leh_func_begin332
	.quad	Lset1877
	.byte	0
	.byte	4
Lset1878 = Ltmp902-Leh_func_begin332
	.long	Lset1878
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1879 = Ltmp903-Ltmp902
	.long	Lset1879
	.byte	13
	.byte	6
	.byte	4
Lset1880 = Ltmp904-Ltmp903
	.long	Lset1880
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end332:

	.globl	_smpList_sort_rec.eh
_smpList_sort_rec.eh:
Lset1881 = Leh_frame_end333-Leh_frame_begin333
	.long	Lset1881
Leh_frame_begin333:
Lset1882 = Leh_frame_begin333-Leh_frame_common
	.long	Lset1882
Ltmp1304:
	.quad	Leh_func_begin333-Ltmp1304
Lset1883 = Leh_func_end333-Leh_func_begin333
	.quad	Lset1883
	.byte	0
	.byte	4
Lset1884 = Ltmp905-Leh_func_begin333
	.long	Lset1884
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1885 = Ltmp906-Ltmp905
	.long	Lset1885
	.byte	13
	.byte	6
	.byte	4
Lset1886 = Ltmp907-Ltmp906
	.long	Lset1886
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end333:

	.globl	_smpArray_sort_quick.eh
_smpArray_sort_quick.eh:
Lset1887 = Leh_frame_end334-Leh_frame_begin334
	.long	Lset1887
Leh_frame_begin334:
Lset1888 = Leh_frame_begin334-Leh_frame_common
	.long	Lset1888
Ltmp1305:
	.quad	Leh_func_begin334-Ltmp1305
Lset1889 = Leh_func_end334-Leh_func_begin334
	.quad	Lset1889
	.byte	0
	.byte	4
Lset1890 = Ltmp908-Leh_func_begin334
	.long	Lset1890
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1891 = Ltmp909-Ltmp908
	.long	Lset1891
	.byte	13
	.byte	6
	.byte	4
Lset1892 = Ltmp910-Ltmp909
	.long	Lset1892
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end334:

	.globl	_obj_clear.eh
_obj_clear.eh:
Lset1893 = Leh_frame_end335-Leh_frame_begin335
	.long	Lset1893
Leh_frame_begin335:
Lset1894 = Leh_frame_begin335-Leh_frame_common
	.long	Lset1894
Ltmp1306:
	.quad	Leh_func_begin335-Ltmp1306
Lset1895 = Leh_func_end335-Leh_func_begin335
	.quad	Lset1895
	.byte	0
	.byte	4
Lset1896 = Ltmp911-Leh_func_begin335
	.long	Lset1896
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1897 = Ltmp912-Ltmp911
	.long	Lset1897
	.byte	13
	.byte	6
	.byte	4
Lset1898 = Ltmp913-Ltmp912
	.long	Lset1898
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end335:

	.globl	_list_clear_all.eh
_list_clear_all.eh:
Lset1899 = Leh_frame_end336-Leh_frame_begin336
	.long	Lset1899
Leh_frame_begin336:
Lset1900 = Leh_frame_begin336-Leh_frame_common
	.long	Lset1900
Ltmp1307:
	.quad	Leh_func_begin336-Ltmp1307
Lset1901 = Leh_func_end336-Leh_func_begin336
	.quad	Lset1901
	.byte	0
	.byte	4
Lset1902 = Ltmp914-Leh_func_begin336
	.long	Lset1902
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1903 = Ltmp915-Ltmp914
	.long	Lset1903
	.byte	13
	.byte	6
	.byte	4
Lset1904 = Ltmp916-Ltmp915
	.long	Lset1904
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end336:

	.globl	_test_listbuf.eh
_test_listbuf.eh:
Lset1905 = Leh_frame_end337-Leh_frame_begin337
	.long	Lset1905
Leh_frame_begin337:
Lset1906 = Leh_frame_begin337-Leh_frame_common
	.long	Lset1906
Ltmp1308:
	.quad	Leh_func_begin337-Ltmp1308
Lset1907 = Leh_func_end337-Leh_func_begin337
	.quad	Lset1907
	.byte	0
	.byte	4
Lset1908 = Ltmp917-Leh_func_begin337
	.long	Lset1908
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1909 = Ltmp918-Ltmp917
	.long	Lset1909
	.byte	13
	.byte	6
	.byte	4
Lset1910 = Ltmp919-Ltmp918
	.long	Lset1910
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end337:

	.globl	_smp_assert_eq.eh
_smp_assert_eq.eh:
Lset1911 = Leh_frame_end338-Leh_frame_begin338
	.long	Lset1911
Leh_frame_begin338:
Lset1912 = Leh_frame_begin338-Leh_frame_common
	.long	Lset1912
Ltmp1309:
	.quad	Leh_func_begin338-Ltmp1309
Lset1913 = Leh_func_end338-Leh_func_begin338
	.quad	Lset1913
	.byte	0
	.byte	4
Lset1914 = Ltmp920-Leh_func_begin338
	.long	Lset1914
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1915 = Ltmp921-Ltmp920
	.long	Lset1915
	.byte	13
	.byte	6
	.byte	4
Lset1916 = Ltmp922-Ltmp921
	.long	Lset1916
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end338:

	.globl	_test_bool.eh
_test_bool.eh:
Lset1917 = Leh_frame_end339-Leh_frame_begin339
	.long	Lset1917
Leh_frame_begin339:
Lset1918 = Leh_frame_begin339-Leh_frame_common
	.long	Lset1918
Ltmp1310:
	.quad	Leh_func_begin339-Ltmp1310
Lset1919 = Leh_func_end339-Leh_func_begin339
	.quad	Lset1919
	.byte	0
	.byte	4
Lset1920 = Ltmp923-Leh_func_begin339
	.long	Lset1920
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1921 = Ltmp924-Ltmp923
	.long	Lset1921
	.byte	13
	.byte	6
	.byte	4
Lset1922 = Ltmp925-Ltmp924
	.long	Lset1922
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end339:

	.globl	_test_lists.eh
_test_lists.eh:
Lset1923 = Leh_frame_end340-Leh_frame_begin340
	.long	Lset1923
Leh_frame_begin340:
Lset1924 = Leh_frame_begin340-Leh_frame_common
	.long	Lset1924
Ltmp1311:
	.quad	Leh_func_begin340-Ltmp1311
Lset1925 = Leh_func_end340-Leh_func_begin340
	.quad	Lset1925
	.byte	0
	.byte	4
Lset1926 = Ltmp926-Leh_func_begin340
	.long	Lset1926
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1927 = Ltmp927-Ltmp926
	.long	Lset1927
	.byte	13
	.byte	6
	.byte	4
Lset1928 = Ltmp928-Ltmp927
	.long	Lset1928
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end340:

	.globl	_test_strings.eh
_test_strings.eh:
Lset1929 = Leh_frame_end341-Leh_frame_begin341
	.long	Lset1929
Leh_frame_begin341:
Lset1930 = Leh_frame_begin341-Leh_frame_common
	.long	Lset1930
Ltmp1312:
	.quad	Leh_func_begin341-Ltmp1312
Lset1931 = Leh_func_end341-Leh_func_begin341
	.quad	Lset1931
	.byte	0
	.byte	4
Lset1932 = Ltmp929-Leh_func_begin341
	.long	Lset1932
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1933 = Ltmp930-Ltmp929
	.long	Lset1933
	.byte	13
	.byte	6
	.byte	4
Lset1934 = Ltmp931-Ltmp930
	.long	Lset1934
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end341:

	.globl	_test_nums.eh
_test_nums.eh:
Lset1935 = Leh_frame_end342-Leh_frame_begin342
	.long	Lset1935
Leh_frame_begin342:
Lset1936 = Leh_frame_begin342-Leh_frame_common
	.long	Lset1936
Ltmp1313:
	.quad	Leh_func_begin342-Ltmp1313
Lset1937 = Leh_func_end342-Leh_func_begin342
	.quad	Lset1937
	.byte	0
	.byte	4
Lset1938 = Ltmp932-Leh_func_begin342
	.long	Lset1938
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1939 = Ltmp933-Ltmp932
	.long	Lset1939
	.byte	13
	.byte	6
	.byte	4
Lset1940 = Ltmp934-Ltmp933
	.long	Lset1940
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end342:

	.globl	_minihash_fullclear.eh
_minihash_fullclear.eh:
Lset1941 = Leh_frame_end343-Leh_frame_begin343
	.long	Lset1941
Leh_frame_begin343:
Lset1942 = Leh_frame_begin343-Leh_frame_common
	.long	Lset1942
Ltmp1314:
	.quad	Leh_func_begin343-Ltmp1314
Lset1943 = Leh_func_end343-Leh_func_begin343
	.quad	Lset1943
	.byte	0
	.byte	4
Lset1944 = Ltmp935-Leh_func_begin343
	.long	Lset1944
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1945 = Ltmp936-Ltmp935
	.long	Lset1945
	.byte	13
	.byte	6
	.byte	4
Lset1946 = Ltmp937-Ltmp936
	.long	Lset1946
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end343:

	.globl	_obj_hash.eh
_obj_hash.eh:
Lset1947 = Leh_frame_end344-Leh_frame_begin344
	.long	Lset1947
Leh_frame_begin344:
Lset1948 = Leh_frame_begin344-Leh_frame_common
	.long	Lset1948
Ltmp1315:
	.quad	Leh_func_begin344-Ltmp1315
Lset1949 = Leh_func_end344-Leh_func_begin344
	.quad	Lset1949
	.byte	0
	.byte	4
Lset1950 = Ltmp938-Leh_func_begin344
	.long	Lset1950
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1951 = Ltmp939-Ltmp938
	.long	Lset1951
	.byte	13
	.byte	6
	.byte	4
Lset1952 = Ltmp940-Ltmp939
	.long	Lset1952
	.byte	131
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end344:

	.globl	_smpHash_core_add_now.eh
_smpHash_core_add_now.eh:
Lset1953 = Leh_frame_end345-Leh_frame_begin345
	.long	Lset1953
Leh_frame_begin345:
Lset1954 = Leh_frame_begin345-Leh_frame_common
	.long	Lset1954
Ltmp1316:
	.quad	Leh_func_begin345-Ltmp1316
Lset1955 = Leh_func_end345-Leh_func_begin345
	.quad	Lset1955
	.byte	0
	.byte	4
Lset1956 = Ltmp941-Leh_func_begin345
	.long	Lset1956
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1957 = Ltmp942-Ltmp941
	.long	Lset1957
	.byte	13
	.byte	6
	.byte	4
Lset1958 = Ltmp943-Ltmp942
	.long	Lset1958
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end345:

	.globl	_smpHash_core_copy.eh
_smpHash_core_copy.eh:
Lset1959 = Leh_frame_end346-Leh_frame_begin346
	.long	Lset1959
Leh_frame_begin346:
Lset1960 = Leh_frame_begin346-Leh_frame_common
	.long	Lset1960
Ltmp1317:
	.quad	Leh_func_begin346-Ltmp1317
Lset1961 = Leh_func_end346-Leh_func_begin346
	.quad	Lset1961
	.byte	0
	.byte	4
Lset1962 = Ltmp944-Leh_func_begin346
	.long	Lset1962
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1963 = Ltmp945-Ltmp944
	.long	Lset1963
	.byte	13
	.byte	6
	.byte	4
Lset1964 = Ltmp946-Ltmp945
	.long	Lset1964
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end346:

	.globl	_test_hash.eh
_test_hash.eh:
Lset1965 = Leh_frame_end347-Leh_frame_begin347
	.long	Lset1965
Leh_frame_begin347:
Lset1966 = Leh_frame_begin347-Leh_frame_common
	.long	Lset1966
Ltmp1318:
	.quad	Leh_func_begin347-Ltmp1318
Lset1967 = Leh_func_end347-Leh_func_begin347
	.quad	Lset1967
	.byte	0
	.byte	4
Lset1968 = Ltmp947-Leh_func_begin347
	.long	Lset1968
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1969 = Ltmp948-Ltmp947
	.long	Lset1969
	.byte	13
	.byte	6
	.byte	4
Lset1970 = Ltmp949-Ltmp948
	.long	Lset1970
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end347:

	.globl	_run_tests.eh
_run_tests.eh:
Lset1971 = Leh_frame_end348-Leh_frame_begin348
	.long	Lset1971
Leh_frame_begin348:
Lset1972 = Leh_frame_begin348-Leh_frame_common
	.long	Lset1972
Ltmp1319:
	.quad	Leh_func_begin348-Ltmp1319
Lset1973 = Leh_func_end348-Leh_func_begin348
	.quad	Lset1973
	.byte	0
	.byte	4
Lset1974 = Ltmp950-Leh_func_begin348
	.long	Lset1974
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1975 = Ltmp951-Ltmp950
	.long	Lset1975
	.byte	13
	.byte	6
	.byte	4
Lset1976 = Ltmp952-Ltmp951
	.long	Lset1976
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end348:

	.globl	_minihash_print.eh
_minihash_print.eh:
Lset1977 = Leh_frame_end349-Leh_frame_begin349
	.long	Lset1977
Leh_frame_begin349:
Lset1978 = Leh_frame_begin349-Leh_frame_common
	.long	Lset1978
Ltmp1320:
	.quad	Leh_func_begin349-Ltmp1320
Lset1979 = Leh_func_end349-Leh_func_begin349
	.quad	Lset1979
	.byte	0
	.byte	4
Lset1980 = Ltmp953-Leh_func_begin349
	.long	Lset1980
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1981 = Ltmp954-Ltmp953
	.long	Lset1981
	.byte	13
	.byte	6
	.byte	4
Lset1982 = Ltmp955-Ltmp954
	.long	Lset1982
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end349:

	.globl	_fill_array64.eh
_fill_array64.eh:
Lset1983 = Leh_frame_end350-Leh_frame_begin350
	.long	Lset1983
Leh_frame_begin350:
Lset1984 = Leh_frame_begin350-Leh_frame_common
	.long	Lset1984
Ltmp1321:
	.quad	Leh_func_begin350-Ltmp1321
Lset1985 = Leh_func_end350-Leh_func_begin350
	.quad	Lset1985
	.byte	0
	.byte	4
Lset1986 = Ltmp956-Leh_func_begin350
	.long	Lset1986
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1987 = Ltmp957-Ltmp956
	.long	Lset1987
	.byte	13
	.byte	6
	.align	3
Leh_frame_end350:

	.globl	_fill_array32.eh
_fill_array32.eh:
Lset1988 = Leh_frame_end351-Leh_frame_begin351
	.long	Lset1988
Leh_frame_begin351:
Lset1989 = Leh_frame_begin351-Leh_frame_common
	.long	Lset1989
Ltmp1322:
	.quad	Leh_func_begin351-Ltmp1322
Lset1990 = Leh_func_end351-Leh_func_begin351
	.quad	Lset1990
	.byte	0
	.byte	4
Lset1991 = Ltmp958-Leh_func_begin351
	.long	Lset1991
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1992 = Ltmp959-Ltmp958
	.long	Lset1992
	.byte	13
	.byte	6
	.align	3
Leh_frame_end351:

	.globl	_gen_rand64.eh
_gen_rand64.eh:
Lset1993 = Leh_frame_end352-Leh_frame_begin352
	.long	Lset1993
Leh_frame_begin352:
Lset1994 = Leh_frame_begin352-Leh_frame_common
	.long	Lset1994
Ltmp1323:
	.quad	Leh_func_begin352-Ltmp1323
Lset1995 = Leh_func_end352-Leh_func_begin352
	.quad	Lset1995
	.byte	0
	.byte	4
Lset1996 = Ltmp960-Leh_func_begin352
	.long	Lset1996
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset1997 = Ltmp961-Ltmp960
	.long	Lset1997
	.byte	13
	.byte	6
	.byte	4
Lset1998 = Ltmp962-Ltmp961
	.long	Lset1998
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end352:

	.globl	_gen_rand32.eh
_gen_rand32.eh:
Lset1999 = Leh_frame_end353-Leh_frame_begin353
	.long	Lset1999
Leh_frame_begin353:
Lset2000 = Leh_frame_begin353-Leh_frame_common
	.long	Lset2000
Ltmp1324:
	.quad	Leh_func_begin353-Ltmp1324
Lset2001 = Leh_func_end353-Leh_func_begin353
	.quad	Lset2001
	.byte	0
	.byte	4
Lset2002 = Ltmp963-Leh_func_begin353
	.long	Lset2002
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset2003 = Ltmp964-Ltmp963
	.long	Lset2003
	.byte	13
	.byte	6
	.byte	4
Lset2004 = Ltmp965-Ltmp964
	.long	Lset2004
	.byte	131
	.byte	6
	.byte	140
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end353:

	.globl	_test_list_sort.eh
_test_list_sort.eh:
Lset2005 = Leh_frame_end354-Leh_frame_begin354
	.long	Lset2005
Leh_frame_begin354:
Lset2006 = Leh_frame_begin354-Leh_frame_common
	.long	Lset2006
Ltmp1325:
	.quad	Leh_func_begin354-Ltmp1325
Lset2007 = Leh_func_end354-Leh_func_begin354
	.quad	Lset2007
	.byte	0
	.byte	4
Lset2008 = Ltmp966-Leh_func_begin354
	.long	Lset2008
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset2009 = Ltmp967-Ltmp966
	.long	Lset2009
	.byte	13
	.byte	6
	.byte	4
Lset2010 = Ltmp968-Ltmp967
	.long	Lset2010
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end354:

	.globl	_test_array_sort.eh
_test_array_sort.eh:
Lset2011 = Leh_frame_end355-Leh_frame_begin355
	.long	Lset2011
Leh_frame_begin355:
Lset2012 = Leh_frame_begin355-Leh_frame_common
	.long	Lset2012
Ltmp1326:
	.quad	Leh_func_begin355-Ltmp1326
Lset2013 = Leh_func_end355-Leh_func_begin355
	.quad	Lset2013
	.byte	0
	.byte	4
Lset2014 = Ltmp969-Leh_func_begin355
	.long	Lset2014
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset2015 = Ltmp970-Ltmp969
	.long	Lset2015
	.byte	13
	.byte	6
	.byte	4
Lset2016 = Ltmp971-Ltmp970
	.long	Lset2016
	.byte	131
	.byte	7
	.byte	140
	.byte	6
	.byte	141
	.byte	5
	.byte	142
	.byte	4
	.byte	143
	.byte	3
	.align	3
Leh_frame_end355:


.subsections_via_symbols
