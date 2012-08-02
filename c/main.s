	.data
	.align 3
_psfmt32:
	.quad	_sfmt
	.align 3
_psfmt64:
	.quad	_sfmt
.lcomm _initialized,4,2
	.align 4
_parity:
	.long	1
	.long	0
	.long	0
	.long	331998852
	.text
_period_certification:
LFB92:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	subq	$16, %rsp
LCFI2:
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	L2
L3:
	movl	-8(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	_parity(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	movl	%ecx, %edx
	andl	%eax, %edx
	movl	-4(%rbp), %eax
	xorl	%edx, %eax
	movl	%eax, -4(%rbp)
	incl	-8(%rbp)
L2:
	cmpl	$3, -8(%rbp)
	jle	L3
	movl	$16, -8(%rbp)
	jmp	L5
L6:
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	sarl	%cl, %eax
	xorl	%eax, -4(%rbp)
	sarl	-8(%rbp)
L5:
	cmpl	$0, -8(%rbp)
	jg	L6
	andl	$1, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	L17
	movl	$0, -8(%rbp)
	jmp	L10
L11:
	movl	$1, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	L12
L13:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	_parity(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	andl	-16(%rbp), %eax
	testl	%eax, %eax
	je	L14
	movl	-8(%rbp), %edi
	call	_idxof
	movl	%eax, %ecx
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, (%rsi)
	jmp	L17
L14:
	sall	-16(%rbp)
	incl	-12(%rbp)
L12:
	cmpl	$31, -12(%rbp)
	jle	L13
	incl	-8(%rbp)
L10:
	cmpl	$3, -8(%rbp)
	jle	L11
L17:
	leave
	ret
LFE92:
_idxof:
LFB84:
	pushq	%rbp
LCFI3:
	movq	%rsp, %rbp
LCFI4:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	ret
LFE84:
	.cstring
	.align 3
LC0:
	.ascii "SFMT-19937:122-18-1-11-1:dfffffef-ddfecb7f-bffaffff-bffffff6\0"
	.text
.globl _get_idstring
_get_idstring:
LFB93:
	pushq	%rbp
LCFI5:
	movq	%rsp, %rbp
LCFI6:
	leaq	LC0(%rip), %rax
	leave
	ret
LFE93:
.globl _get_min_array_size32
_get_min_array_size32:
LFB94:
	pushq	%rbp
LCFI7:
	movq	%rsp, %rbp
LCFI8:
	movl	$624, %eax
	leave
	ret
LFE94:
.globl _get_min_array_size64
_get_min_array_size64:
LFB95:
	pushq	%rbp
LCFI9:
	movq	%rsp, %rbp
LCFI10:
	movl	$312, %eax
	leave
	ret
LFE95:
	.cstring
___func__.7447:
	.ascii "gen_rand32\0"
LC1:
	.ascii "initialized\0"
LC2:
	.ascii "../lib/SFMT/SFMT.c\0"
	.text
.globl _gen_rand32
_gen_rand32:
LFB96:
	pushq	%rbp
LCFI11:
	movq	%rsp, %rbp
LCFI12:
	subq	$16, %rsp
LCFI13:
	movl	_initialized(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	L27
	leaq	LC1(%rip), %rcx
	movl	$413, %edx
	leaq	LC2(%rip), %rsi
	leaq	___func__.7447(%rip), %rdi
	call	___assert_rtn
L27:
	movl	_idx(%rip), %eax
	cmpl	$623, %eax
	jle	L29
	call	_gen_rand_all
	movl	$0, _idx(%rip)
L29:
	movl	_idx(%rip), %ecx
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	leal	1(%rcx), %eax
	movl	%eax, _idx(%rip)
	movl	-4(%rbp), %eax
	leave
	ret
LFE96:
_gen_rand_all:
LFB88:
	pushq	%rbp
LCFI14:
	movq	%rsp, %rbp
LCFI15:
	subq	$32, %rsp
LCFI16:
	leaq	2464+_sfmt(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	2480+_sfmt(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L33
L34:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	1952+_sfmt(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_sfmt(%rip), %rax
	leaq	(%rdx,%rax), %r9
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_sfmt(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %r8
	movq	%rsi, %rdx
	movq	%r9, %rsi
	call	_do_recursion
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_sfmt(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	incl	-4(%rbp)
L33:
	cmpl	$33, -4(%rbp)
	jle	L34
	jmp	L36
L37:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_sfmt(%rip), %rax
	subq	$544, %rax
	leaq	(%rdx,%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_sfmt(%rip), %rax
	leaq	(%rdx,%rax), %r9
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_sfmt(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %r8
	movq	%rsi, %rdx
	movq	%r9, %rsi
	call	_do_recursion
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_sfmt(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	incl	-4(%rbp)
L36:
	cmpl	$155, -4(%rbp)
	jle	L37
	leave
	ret
LFE88:
_do_recursion:
LFB87:
	pushq	%rbp
LCFI17:
	movq	%rsp, %rbp
LCFI18:
	subq	$80, %rsp
LCFI19:
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-48(%rbp), %rsi
	leaq	-16(%rbp), %rdi
	movl	$1, %edx
	call	_lshift128
	movq	-64(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movl	$1, %edx
	call	_rshift128
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	shrl	$11, %eax
	andl	$-536870929, %eax
	xorl	%eax, %edx
	movl	-32(%rbp), %eax
	xorl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	sall	$18, %eax
	xorl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	4(%rax), %edx
	movl	-12(%rbp), %eax
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$11, %eax
	andl	$-570504321, %eax
	xorl	%eax, %edx
	movl	-28(%rbp), %eax
	xorl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	sall	$18, %eax
	xorl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movl	-8(%rbp), %eax
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$11, %eax
	andl	$-1074069505, %eax
	xorl	%eax, %edx
	movl	-24(%rbp), %eax
	xorl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	sall	$18, %eax
	xorl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	12(%rax), %edx
	movl	-4(%rbp), %eax
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$11, %eax
	andl	$-1073741834, %eax
	xorl	%eax, %edx
	movl	-20(%rbp), %eax
	xorl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	12(%rax), %eax
	sall	$18, %eax
	xorl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	leave
	ret
LFE87:
_lshift128:
LFB86:
	pushq	%rbp
LCFI20:
	movq	%rsp, %rbp
LCFI21:
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	mov	%eax, %eax
	movq	%rax, %rdx
	salq	$32, %rdx
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	mov	%eax, %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	mov	%eax, %eax
	movq	%rax, %rdx
	salq	$32, %rdx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	mov	%eax, %eax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-52(%rbp), %eax
	leal	0(,%rax,8), %ecx
	movq	-8(%rbp), %rax
	salq	%cl, %rax
	movq	%rax, -24(%rbp)
	movl	-52(%rbp), %eax
	leal	0(,%rax,8), %ecx
	movq	-16(%rbp), %rax
	salq	%cl, %rax
	movq	%rax, -32(%rbp)
	movl	-52(%rbp), %eax
	leal	0(,%rax,8), %edx
	movl	$64, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movq	-16(%rbp), %rax
	shrq	%cl, %rax
	orq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	leave
	ret
LFE86:
_rshift128:
LFB85:
	pushq	%rbp
LCFI22:
	movq	%rsp, %rbp
LCFI23:
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	mov	%eax, %eax
	movq	%rax, %rdx
	salq	$32, %rdx
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	mov	%eax, %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	mov	%eax, %eax
	movq	%rax, %rdx
	salq	$32, %rdx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	mov	%eax, %eax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-52(%rbp), %eax
	leal	0(,%rax,8), %ecx
	movq	-8(%rbp), %rax
	shrq	%cl, %rax
	movq	%rax, -24(%rbp)
	movl	-52(%rbp), %eax
	leal	0(,%rax,8), %ecx
	movq	-16(%rbp), %rax
	shrq	%cl, %rax
	movq	%rax, -32(%rbp)
	movl	-52(%rbp), %eax
	leal	0(,%rax,8), %edx
	movl	$64, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movq	-8(%rbp), %rax
	salq	%cl, %rax
	orq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	leave
	ret
LFE85:
	.cstring
___func__.7469:
	.ascii "gen_rand64\0"
LC3:
	.ascii "idx % 2 == 0\0"
	.text
.globl _gen_rand64
_gen_rand64:
LFB97:
	pushq	%rbp
LCFI24:
	movq	%rsp, %rbp
LCFI25:
	subq	$16, %rsp
LCFI26:
	movl	_initialized(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	L47
	leaq	LC1(%rip), %rcx
	movl	$436, %edx
	leaq	LC2(%rip), %rsi
	leaq	___func__.7469(%rip), %rdi
	call	___assert_rtn
L47:
	movl	_idx(%rip), %eax
	mov	%eax, %eax
	andl	$1, %eax
	testq	%rax, %rax
	je	L49
	leaq	LC3(%rip), %rcx
	movl	$437, %edx
	leaq	LC2(%rip), %rsi
	leaq	___func__.7469(%rip), %rdi
	call	___assert_rtn
L49:
	movl	_idx(%rip), %eax
	cmpl	$623, %eax
	jle	L51
	call	_gen_rand_all
	movl	$0, _idx(%rip)
L51:
	movl	_idx(%rip), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movq	_psfmt64(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	_idx(%rip), %eax
	addl	$2, %eax
	movl	%eax, _idx(%rip)
	movq	-8(%rbp), %rax
	leave
	ret
LFE97:
	.cstring
___func__.7500:
	.ascii "fill_array32\0"
LC4:
	.ascii "idx == N32\0"
LC5:
	.ascii "size % 4 == 0\0"
LC6:
	.ascii "size >= N32\0"
	.text
.globl _fill_array32
_fill_array32:
LFB98:
	pushq	%rbp
LCFI27:
	movq	%rsp, %rbp
LCFI28:
	subq	$16, %rsp
LCFI29:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	_initialized(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	L55
	leaq	LC1(%rip), %rcx
	movl	$482, %edx
	leaq	LC2(%rip), %rsi
	leaq	___func__.7500(%rip), %rdi
	call	___assert_rtn
L55:
	movl	_idx(%rip), %eax
	cmpl	$624, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	L57
	leaq	LC4(%rip), %rcx
	movl	$483, %edx
	leaq	LC2(%rip), %rsi
	leaq	___func__.7500(%rip), %rdi
	call	___assert_rtn
L57:
	movl	-12(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	L59
	leaq	LC5(%rip), %rcx
	movl	$484, %edx
	leaq	LC2(%rip), %rsi
	leaq	___func__.7500(%rip), %rdi
	call	___assert_rtn
L59:
	cmpl	$623, -12(%rbp)
	setle	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	L61
	leaq	LC6(%rip), %rcx
	movl	$485, %edx
	leaq	LC2(%rip), %rsi
	leaq	___func__.7500(%rip), %rdi
	call	___assert_rtn
L61:
	movl	-12(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	call	_gen_rand_array
	movl	$624, _idx(%rip)
	leave
	ret
LFE98:
_gen_rand_array:
LFB89:
	pushq	%rbp
LCFI30:
	movq	%rsp, %rbp
LCFI31:
	subq	$48, %rsp
LCFI32:
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	leaq	2464+_sfmt(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	2480+_sfmt(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L65
L66:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	1952+_sfmt(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_sfmt(%rip), %rax
	leaq	(%rdx,%rax), %r9
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdi
	addq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %r8
	movq	%rsi, %rdx
	movq	%r9, %rsi
	call	_do_recursion
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	incl	-4(%rbp)
L65:
	cmpl	$33, -4(%rbp)
	jle	L66
	jmp	L68
L69:
	movq	-40(%rbp), %rdx
	subq	$544, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_sfmt(%rip), %rax
	leaq	(%rdx,%rax), %r9
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdi
	addq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %r8
	movq	%rsi, %rdx
	movq	%r9, %rsi
	call	_do_recursion
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	incl	-4(%rbp)
L68:
	cmpl	$155, -4(%rbp)
	jle	L69
	jmp	L71
L72:
	movq	-40(%rbp), %rdx
	subq	$544, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rsi
	movq	-40(%rbp), %rdx
	subq	$2496, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %r9
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdi
	addq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %r8
	movq	%rsi, %rdx
	movq	%r9, %rsi
	call	_do_recursion
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	incl	-4(%rbp)
L71:
	movl	-44(%rbp), %eax
	subl	$156, %eax
	cmpl	-4(%rbp), %eax
	jg	L72
	movl	$0, -8(%rbp)
	jmp	L74
L75:
	movl	-8(%rbp), %edx
	movq	-40(%rbp), %rcx
	subq	$2496, %rcx
	movl	-44(%rbp), %eax
	addl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rax, %rcx
	movslq	%edx,%rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	_sfmt(%rip), %rax
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rdx)
	incl	-8(%rbp)
L74:
	movl	$312, %eax
	subl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	L75
	jmp	L77
L78:
	movq	-40(%rbp), %rdx
	subq	$544, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rsi
	movq	-40(%rbp), %rdx
	subq	$2496, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %r9
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdi
	addq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %r8
	movq	%rsi, %rdx
	movq	%r9, %rsi
	call	_do_recursion
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	addq	-40(%rbp), %rcx
	movslq	%edx,%rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	_sfmt(%rip), %rax
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rdx)
	incl	-4(%rbp)
	incl	-8(%rbp)
L77:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	L78
	leave
	ret
LFE89:
	.cstring
___func__.7527:
	.ascii "fill_array64\0"
LC7:
	.ascii "size % 2 == 0\0"
LC8:
	.ascii "size >= N64\0"
	.text
.globl _fill_array64
_fill_array64:
LFB99:
	pushq	%rbp
LCFI33:
	movq	%rsp, %rbp
LCFI34:
	subq	$16, %rsp
LCFI35:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	_initialized(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	L82
	leaq	LC1(%rip), %rcx
	movl	$518, %edx
	leaq	LC2(%rip), %rsi
	leaq	___func__.7527(%rip), %rdi
	call	___assert_rtn
L82:
	movl	_idx(%rip), %eax
	cmpl	$624, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	L84
	leaq	LC4(%rip), %rcx
	movl	$519, %edx
	leaq	LC2(%rip), %rsi
	leaq	___func__.7527(%rip), %rdi
	call	___assert_rtn
L84:
	movl	-12(%rbp), %eax
	mov	%eax, %eax
	andl	$1, %eax
	testq	%rax, %rax
	je	L86
	leaq	LC7(%rip), %rcx
	movl	$520, %edx
	leaq	LC2(%rip), %rsi
	leaq	___func__.7527(%rip), %rdi
	call	___assert_rtn
L86:
	cmpl	$311, -12(%rbp)
	setle	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	L88
	leaq	LC8(%rip), %rcx
	movl	$521, %edx
	leaq	LC2(%rip), %rsi
	leaq	___func__.7527(%rip), %rdi
	call	___assert_rtn
L88:
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	call	_gen_rand_array
	movl	$624, _idx(%rip)
	leave
	ret
LFE99:
.globl _init_gen_rand
_init_gen_rand:
LFB100:
	pushq	%rbp
LCFI36:
	movq	%rsp, %rbp
LCFI37:
	pushq	%r12
LCFI38:
	pushq	%rbx
LCFI39:
	subq	$32, %rsp
LCFI40:
	movl	%edi, -36(%rbp)
	movl	$0, %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, -20(%rbp)
	jmp	L92
L93:
	movl	-20(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-20(%rbp), %edi
	decl	%edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %r12d
	movl	-20(%rbp), %edi
	decl	%edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	shrl	$30, %eax
	xorl	%r12d, %eax
	mov	%eax, %eax
	imulq	$1812433253, %rax, %rax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	leal	(%rdx,%rax), %eax
	movl	%eax, (%rbx)
	incl	-20(%rbp)
L92:
	cmpl	$623, -20(%rbp)
	jle	L93
	movl	$624, _idx(%rip)
	call	_period_certification
	movl	$1, _initialized(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
LFE100:
.globl _init_by_array
_init_by_array:
LFB101:
	pushq	%rbp
LCFI41:
	movq	%rsp, %rbp
LCFI42:
	pushq	%rbx
LCFI43:
	subq	$120, %rsp
LCFI44:
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	$624, -44(%rbp)
	cmpl	$622, -44(%rbp)
	jle	L97
	movl	$11, -36(%rbp)
	jmp	L99
L97:
	cmpl	$67, -44(%rbp)
	jle	L100
	movl	$7, -36(%rbp)
	jmp	L99
L100:
	cmpl	$38, -44(%rbp)
	jle	L102
	movl	$5, -36(%rbp)
	jmp	L99
L102:
	movl	$3, -36(%rbp)
L99:
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -40(%rbp)
	movl	$2496, %edx
	movl	$139, %esi
	leaq	_sfmt(%rip), %rdi
	call	_memset
	movl	-60(%rbp), %eax
	incl	%eax
	cmpl	$624, %eax
	jle	L104
	movl	-60(%rbp), %eax
	incl	%eax
	movl	%eax, -28(%rbp)
	jmp	L106
L104:
	movl	$624, -28(%rbp)
L106:
	movl	$0, %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %ebx
	movl	-40(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	xorl	%eax, %ebx
	movl	$623, %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	movl	%ebx, %edi
	xorl	%eax, %edi
	call	_func1
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %edi
	call	_idxof
	movl	%eax, %ecx
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, (%rsi)
	movl	-60(%rbp), %eax
	addl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %edi
	addl	%eax, %edi
	call	_idxof
	movl	%eax, %ecx
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, (%rsi)
	movl	$0, %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	decl	-28(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	L107
L108:
	movl	-20(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %ebx
	movl	-40(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	%eax, %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -108(%rbp)
	imull	$624, -108(%rbp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -108(%rbp)
	movl	-108(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	xorl	%eax, %ebx
	movl	-20(%rbp), %ecx
	addl	$623, %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -104(%rbp)
	imull	$624, -104(%rbp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -104(%rbp)
	movl	-104(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	movl	%ebx, %edi
	xorl	%eax, %edi
	call	_func1
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	%eax, %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, -100(%rbp)
	imull	$624, -100(%rbp), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, -100(%rbp)
	movl	-100(%rbp), %edi
	call	_idxof
	movl	%eax, %ecx
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, (%rsi)
	movl	-24(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	leal	(%rdx,%rax), %eax
	addl	%eax, -32(%rbp)
	movl	-40(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, -96(%rbp)
	imull	$624, -96(%rbp), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, -96(%rbp)
	movl	-96(%rbp), %edi
	call	_idxof
	movl	%eax, %ecx
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, (%rsi)
	movl	-20(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-20(%rbp), %ecx
	incl	%ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	imull	$624, %eax, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -20(%rbp)
	incl	-24(%rbp)
L107:
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	L111
	movl	-24(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	L108
	jmp	L111
L112:
	movl	-20(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %ebx
	movl	-40(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	%eax, %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -92(%rbp)
	imull	$624, -92(%rbp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -92(%rbp)
	movl	-92(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	xorl	%eax, %ebx
	movl	-20(%rbp), %ecx
	addl	$623, %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -88(%rbp)
	imull	$624, -88(%rbp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -88(%rbp)
	movl	-88(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	movl	%ebx, %edi
	xorl	%eax, %edi
	call	_func1
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	%eax, %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, -84(%rbp)
	imull	$624, -84(%rbp), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, -84(%rbp)
	movl	-84(%rbp), %edi
	call	_idxof
	movl	%eax, %ecx
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, (%rsi)
	movl	-20(%rbp), %eax
	addl	%eax, -32(%rbp)
	movl	-40(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, -80(%rbp)
	imull	$624, -80(%rbp), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, -80(%rbp)
	movl	-80(%rbp), %edi
	call	_idxof
	movl	%eax, %ecx
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, (%rsi)
	movl	-20(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-20(%rbp), %ecx
	incl	%ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	imull	$624, %eax, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -20(%rbp)
	incl	-24(%rbp)
L111:
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	L112
	movl	$0, -24(%rbp)
	jmp	L114
L115:
	movl	-20(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %ebx
	movl	-40(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	%eax, %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -76(%rbp)
	imull	$624, -76(%rbp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -76(%rbp)
	movl	-76(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	addl	%eax, %ebx
	movl	-20(%rbp), %ecx
	addl	$623, %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, -72(%rbp)
	imull	$624, -72(%rbp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -72(%rbp)
	movl	-72(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	leal	(%rbx,%rax), %edi
	call	_func2
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	%eax, %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, -68(%rbp)
	imull	$624, -68(%rbp), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, -68(%rbp)
	movl	-68(%rbp), %edi
	call	_idxof
	movl	%eax, %ecx
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	xorl	-32(%rbp), %eax
	movl	%eax, (%rsi)
	movl	-20(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-40(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, -64(%rbp)
	imull	$624, -64(%rbp), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, -64(%rbp)
	movl	-64(%rbp), %edi
	call	_idxof
	movl	%eax, %ecx
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movslq	%ecx,%rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movl	(%rax), %eax
	xorl	-32(%rbp), %eax
	movl	%eax, (%rsi)
	movl	-20(%rbp), %edi
	call	_idxof
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movq	_psfmt32(%rip), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-20(%rbp), %ecx
	incl	%ecx
	movl	$-770891565, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, %edx
	sarl	$9, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	imull	$624, %eax, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -20(%rbp)
	incl	-24(%rbp)
L114:
	cmpl	$623, -24(%rbp)
	jle	L115
	movl	$624, _idx(%rip)
	call	_period_certification
	movl	$1, _initialized(%rip)
	addq	$120, %rsp
	popq	%rbx
	leave
	ret
LFE101:
_func1:
LFB90:
	pushq	%rbp
LCFI45:
	movq	%rsp, %rbp
LCFI46:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$27, %eax
	xorl	-4(%rbp), %eax
	imull	$1664525, %eax, %eax
	leave
	ret
LFE90:
_func2:
LFB91:
	pushq	%rbp
LCFI47:
	movq	%rsp, %rbp
LCFI48:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$27, %eax
	xorl	-4(%rbp), %eax
	imull	$1566083941, %eax, %eax
	leave
	ret
LFE91:
.globl _smp_putclass
_smp_putclass:
LFB103:
	pushq	%rbp
LCFI49:
	movq	%rsp, %rbp
LCFI50:
	subq	$64, %rsp
LCFI51:
	leaq	-32(%rbp), %rdi
	movq	_smpType_class@GOTPCREL(%rip), %rsi
	call	_obj_init
	movzbl	-24(%rbp), %eax
	orl	$1, %eax
	movb	%al, -24(%rbp)
	movl	$64, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	48(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	56(%rbp), %rax
	movq	%rax, 40(%rdx)
	movq	64(%rbp), %rax
	movq	%rax, 48(%rdx)
	movq	72(%rbp), %rax
	movq	%rax, 56(%rdx)
	movq	16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_scope_add
	movl	$0, %eax
	leave
	ret
LFE103:
.globl _smp_getclass
_smp_getclass:
LFB104:
	pushq	%rbp
LCFI52:
	movq	%rsp, %rbp
LCFI53:
	subq	$32, %rsp
LCFI54:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -8(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L125
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-32(%rax), %rdx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	jmp	L127
L125:
	movq	$0, -16(%rbp)
L127:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	call	_minihash_get
	movq	-24(%rbp), %rax
	leave
	ret
LFE104:
	.cstring
LC9:
	.ascii "ImplementationException\0"
	.align 3
LC10:
	.ascii "Cannot call an abstract function.\0"
	.text
.globl _smp_abstract_function
_smp_abstract_function:
LFB105:
	pushq	%rbp
LCFI55:
	movq	%rsp, %rbp
LCFI56:
	pushq	%rbx
LCFI57:
	subq	$120, %rsp
LCFI58:
	movq	%rdi, %rbx
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	LC9(%rip), %rsi
	call	_smp_getclass
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC10(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smpGlobal_throw
	movq	%rbx, %rax
	addq	$120, %rsp
	popq	%rbx
	leave
	ret
LFE105:
	.cstring
	.align 3
LC11:
	.ascii "default unimplemented function\0"
	.text
.globl _smp_unimplemented_function
_smp_unimplemented_function:
LFB106:
	pushq	%rbp
LCFI59:
	movq	%rsp, %rbp
LCFI60:
	pushq	%rbx
LCFI61:
	subq	$120, %rsp
LCFI62:
	movq	%rdi, %rbx
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	LC9(%rip), %rsi
	call	_smp_getclass
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC11(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smpGlobal_throw
	movq	%rbx, %rax
	addq	$120, %rsp
	popq	%rbx
	leave
	ret
LFE106:
.globl _minihash_init
_minihash_init:
LFB107:
	pushq	%rbp
LCFI63:
	movq	%rsp, %rbp
LCFI64:
	pushq	%rbx
LCFI65:
	subq	$8, %rsp
LCFI66:
	movq	%rdi, %rbx
	movl	$10, %esi
	movq	%rbx, %rdi
	call	_minihash_init_capacity
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE107:
.globl _minihash_init_capacity
_minihash_init_capacity:
LFB108:
	pushq	%rbp
LCFI67:
	movq	%rsp, %rbp
LCFI68:
	subq	$48, %rsp
LCFI69:
	movq	%rdi, -48(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	salq	$4, %rdi
	call	_GC_malloc
	movq	%rax, -32(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L136
	movq	$-1, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-32(%rbp), %rdi
	movl	$0, %esi
	call	___memset_chk
	jmp	L138
L136:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-32(%rbp), %rdi
	movl	$0, %esi
	call	___inline_memset_chk
L138:
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-48(%rbp), %rax
	leave
	ret
LFE108:
___inline_memset_chk:
LFB49:
	pushq	%rbp
LCFI70:
	movq	%rsp, %rbp
LCFI71:
	subq	$32, %rsp
LCFI72:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$-1, %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	call	___memset_chk
	leave
	ret
LFE49:
.globl _minihash_clear
_minihash_clear:
LFB109:
	pushq	%rbp
LCFI73:
	movq	%rsp, %rbp
LCFI74:
	subq	$32, %rsp
LCFI75:
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L143
	movl	$0, -28(%rbp)
	jmp	L145
L143:
	movq	$0, -8(%rbp)
	jmp	L146
L147:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L148
	movq	$0, -16(%rbp)
	jmp	L150
L151:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L152
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rax
	movq	(%rax), %rdi
	call	_GC_free
L152:
	incq	-16(%rbp)
L150:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	ja	L151
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rdi
	call	_GC_free
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	$0, 8(%rax)
L148:
	incq	-8(%rbp)
L146:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	ja	L147
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	call	_GC_free
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$0, -28(%rbp)
L145:
	movl	-28(%rbp), %eax
	leave
	ret
LFE109:
.globl _minihash_fullclear
_minihash_fullclear:
LFB110:
	pushq	%rbp
LCFI76:
	movq	%rsp, %rbp
LCFI77:
	subq	$80, %rsp
LCFI78:
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L158
	movl	$0, -68(%rbp)
	jmp	L160
L158:
	movq	$0, -8(%rbp)
	jmp	L161
L162:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L163
	movq	$0, -16(%rbp)
	jmp	L165
L166:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L167
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rax
	movq	(%rax), %rdi
	call	_GC_free
L167:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L169
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rax
	leaq	8(%rax), %rsi
	leaq	-64(%rbp), %rdi
	call	_obj_clear
L169:
	incq	-16(%rbp)
L165:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	ja	L166
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rdi
	call	_GC_free
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	$0, 8(%rax)
L163:
	incq	-8(%rbp)
L161:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	ja	L162
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	call	_GC_free
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$0, -68(%rbp)
L160:
	movl	-68(%rbp), %eax
	leave
	ret
LFE110:
.globl _minihash_function
_minihash_function:
LFB111:
	pushq	%rbp
LCFI79:
	movq	%rsp, %rbp
LCFI80:
	movq	%rdi, -24(%rbp)
	movl	$5381, -4(%rbp)
	decq	-24(%rbp)
	jmp	L175
L176:
	movl	-4(%rbp), %eax
	sall	$5, %eax
	movl	%eax, %edx
	addl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al,%eax
	leal	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
L175:
	incq	-24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L176
	movl	-4(%rbp), %eax
	leave
	ret
LFE111:
.globl _minihash_add
_minihash_add:
LFB112:
	pushq	%rbp
LCFI81:
	movq	%rsp, %rbp
LCFI82:
	pushq	%rbx
LCFI83:
	subq	$264, %rsp
LCFI84:
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L180
	movq	-120(%rbp), %rbx
	leaq	-160(%rbp), %rdi
	movl	$0, %eax
	call	_minihash_init
	movq	-160(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rbx)
L180:
	movq	-128(%rbp), %rdi
	call	_minihash_function
	movslq	%eax,%rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	%rdx, %rax
	movl	$0, %edx
	divq	-216(%rbp)
	movq	%rdx, %rax
	movl	%eax, -20(%rbp)
	movq	-128(%rbp), %rdi
	call	_strlen
	leaq	1(%rax), %rdi
	call	_GC_malloc
	movq	%rax, -112(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L182
	movq	$-1, %rdx
	movq	-112(%rbp), %rdi
	movq	-128(%rbp), %rsi
	call	___strcpy_chk
	jmp	L184
L182:
	movq	-112(%rbp), %rdi
	movq	-128(%rbp), %rsi
	call	___inline_strcpy_chk
L184:
	movq	16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L185
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 16(%rax)
L185:
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rdi
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rsp)
	call	_miniarray_push
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	%rdx, %rax
	movl	$0, %edx
	divq	-216(%rbp)
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	js	L187
	cvtsi2sdq	-208(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	jmp	L188
L187:
	movq	-208(%rbp), %rax
	shrq	%rax
	movq	-208(%rbp), %rdx
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -200(%rbp)
L188:
	movsd	-200(%rbp), %xmm2
	ucomisd	LC12(%rip), %xmm2
	ja	L191
	jmp	L189
L191:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	js	L192
	cvtsi2sdq	-192(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	jmp	L193
L192:
	movq	-192(%rbp), %rax
	shrq	%rax
	movq	-192(%rbp), %rdx
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -184(%rbp)
L193:
	movsd	LC12(%rip), %xmm0
	movsd	-184(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	LC13(%rip), %xmm0
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	ucomisd	LC14(%rip), %xmm0
	jae	L194
	cvttsd2siq	-176(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	L195
L194:
	movsd	LC14(%rip), %xmm0
	movsd	-176(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -168(%rbp)
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, -168(%rbp)
L195:
	leaq	-64(%rbp), %rdi
	movq	-168(%rbp), %rsi
	call	_minihash_init_capacity
	movq	-120(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	call	_minihash_copy
	movq	-120(%rbp), %rdi
	call	_minihash_clear
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rdx)
L189:
	movl	$0, %eax
	addq	$264, %rsp
	popq	%rbx
	leave
	ret
LFE112:
___inline_strcpy_chk:
LFB50:
	pushq	%rbp
LCFI85:
	movq	%rsp, %rbp
LCFI86:
	subq	$16, %rsp
LCFI87:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$-1, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	call	___strcpy_chk
	leave
	ret
LFE50:
.globl _miniarray_push
_miniarray_push:
LFB113:
	pushq	%rbp
LCFI88:
	movq	%rsp, %rbp
LCFI89:
	subq	$32, %rsp
LCFI90:
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L200
	movl	$1, %edi
	call	_next_power_of_2
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_GC_malloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
L200:
	movq	$0, -8(%rbp)
	jmp	L202
L203:
	movq	16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rax
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L204
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	48(%rbp), %rax
	movq	%rax, 32(%rdx)
	movl	$0, -28(%rbp)
	jmp	L206
L204:
	incq	-8(%rbp)
L202:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	ja	L203
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$-1, %rax
	je	L208
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdi
	call	_is_power_of_2
	testl	%eax, %eax
	je	L208
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdi
	call	_next_power_of_2
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	call	_GC_realloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
L208:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	48(%rbp), %rax
	movq	%rax, 32(%rdx)
	leaq	1(%rcx), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$0, -28(%rbp)
L206:
	movl	-28(%rbp), %eax
	leave
	ret
LFE113:
.globl _minihash_get
_minihash_get:
LFB114:
	pushq	%rbp
LCFI91:
	movq	%rsp, %rbp
LCFI92:
	subq	$64, %rsp
LCFI93:
	movq	%rdi, -40(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	L213
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L215
L213:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L212
L215:
	movq	-32(%rbp), %rdi
	call	_minihash_function
	movslq	%eax,%rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, %rax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L217
	movq	$0, -16(%rbp)
	jmp	L219
L220:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L221
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	8(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	16(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	24(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	32(%rdx), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L212
L221:
	incq	-16(%rbp)
L219:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	ja	L220
L217:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
L212:
	movq	-40(%rbp), %rax
	leave
	ret
LFE114:
.globl _minihash_containsp
_minihash_containsp:
LFB115:
	pushq	%rbp
LCFI94:
	movq	%rsp, %rbp
LCFI95:
	subq	$64, %rsp
LCFI96:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	L225
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L227
L225:
	movl	$0, -36(%rbp)
	jmp	L228
L227:
	movq	-32(%rbp), %rdi
	call	_minihash_function
	movslq	%eax,%rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	%rdx, %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, %rax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L229
	movq	$0, -16(%rbp)
	jmp	L231
L232:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L233
	movl	$1, -36(%rbp)
	jmp	L228
L233:
	incq	-16(%rbp)
L231:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	ja	L232
L229:
	movl	$0, -36(%rbp)
L228:
	movl	-36(%rbp), %eax
	leave
	ret
LFE115:
.globl _minihash_copy
_minihash_copy:
LFB116:
	pushq	%rbp
LCFI97:
	movq	%rsp, %rbp
LCFI98:
	subq	$64, %rsp
LCFI99:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	L237
L238:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L239
	movq	$0, -16(%rbp)
	jmp	L241
L242:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rsi,%rax), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdi
	movq	8(%rcx), %rax
	movq	%rax, (%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rcx), %rax
	movq	%rax, 24(%rsp)
	call	_minihash_add
	incq	-16(%rbp)
L241:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	ja	L242
L239:
	incq	-8(%rbp)
L237:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	ja	L238
	movl	$0, %eax
	leave
	ret
LFE116:
.globl _minihash_each
_minihash_each:
LFB117:
	pushq	%rbp
LCFI100:
	movq	%rsp, %rbp
LCFI101:
	subq	$96, %rsp
LCFI102:
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L246
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	L248
L246:
	movl	$0, -52(%rbp)
	jmp	L249
L248:
	movq	$0, -16(%rbp)
	jmp	L250
L251:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L252
	movq	$0, -24(%rbp)
	jmp	L254
L255:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rsi,%rax), %rax
	movq	(%rax), %rdi
	movq	8(%rcx), %rax
	movq	%rax, (%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L256
	movl	-4(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	L249
L256:
	incq	-24(%rbp)
L254:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	ja	L255
L252:
	incq	-16(%rbp)
L250:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	ja	L251
	movl	$0, -52(%rbp)
L249:
	movl	-52(%rbp), %eax
	leave
	ret
LFE117:
	.cstring
LC15:
	.ascii "key: %s\12\0"
	.text
.globl _minihash_print
_minihash_print:
LFB118:
	pushq	%rbp
LCFI103:
	movq	%rsp, %rbp
LCFI104:
	subq	$32, %rsp
LCFI105:
	movq	16(%rbp), %rax
	testq	%rax, %rax
	jne	L261
	movl	$0, -20(%rbp)
	jmp	L263
L261:
	movq	$0, -8(%rbp)
	jmp	L264
L265:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L266
	movq	$0, -16(%rbp)
	jmp	L268
L269:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rax
	movq	(%rax), %rsi
	leaq	LC15(%rip), %rdi
	movl	$0, %eax
	call	_printf
	incq	-16(%rbp)
L268:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	ja	L269
L266:
	incq	-8(%rbp)
L264:
	movq	24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	ja	L265
	movl	$10, %edi
	call	_putchar
	movl	$0, -20(%rbp)
L263:
	movl	-20(%rbp), %eax
	leave
	ret
LFE118:
	.cstring
LC16:
	.ascii "InitializationException\0"
	.align 3
LC17:
	.ascii "Cannot initialize singleton class %s.\0"
	.text
.globl _obj_init
_obj_init:
LFB119:
	pushq	%rbp
LCFI106:
	movq	%rsp, %rbp
LCFI107:
	pushq	%rbx
LCFI108:
	subq	$232, %rsp
LCFI109:
	movq	%rdi, -200(%rbp)
	movq	%rsi, -152(%rbp)
	movl	$4, %edi
	call	_GC_malloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movzbl	-40(%rbp), %eax
	andl	$-3, %eax
	movb	%al, -40(%rbp)
	movzbl	-40(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-152(%rbp), %rax
	movzbl	12(%rax), %eax
	andl	$12, %eax
	cmpb	$4, %al
	jne	L273
	movq	-152(%rbp), %rax
	movzbl	12(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	L275
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	leaq	-112(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-144(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdx
	leaq	LC17(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-200(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L272
L275:
	movq	-152(%rbp), %rax
	movzbl	12(%rax), %edx
	orl	$2, %edx
	movb	%dl, 12(%rax)
L273:
	movq	-152(%rbp), %rax
	movzbl	12(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	L278
	leaq	-192(%rbp), %rdi
	movl	$0, %eax
	call	_minihash_init
	movq	-192(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rdx)
L278:
	movq	-48(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
L272:
	movq	-200(%rbp), %rax
	addq	$232, %rsp
	popq	%rbx
	leave
	ret
LFE119:
	.cstring
LC18:
	.ascii "String\0"
LC19:
	.ascii "compute-hash\0"
	.text
.globl _obj_hash
_obj_hash:
LFB120:
	pushq	%rbp
LCFI110:
	movq	%rsp, %rbp
LCFI111:
	subq	$112, %rsp
LCFI112:
	movq	%rdi, -72(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC18(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L282
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	movq	%rax, %rdi
	call	_minihash_function
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, -76(%rbp)
	jmp	L284
L282:
	leaq	-32(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC19(%rip), %rsi
	call	_smpObject_funcall
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L285
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_to_clong
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, -76(%rbp)
	jmp	L284
L285:
	movl	$1, -76(%rbp)
L284:
	movl	-76(%rbp), %eax
	leave
	ret
LFE120:
	.cstring
LC20:
	.ascii "clear\0"
	.text
.globl _obj_clear
_obj_clear:
LFB121:
	pushq	%rbp
LCFI113:
	movq	%rsp, %rbp
LCFI114:
	subq	$96, %rsp
LCFI115:
	movq	%rdi, -56(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	12(%rax), %eax
	andl	$12, %eax
	cmpb	$4, %al
	jne	L289
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L288
L289:
	leaq	-48(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC20(%rip), %rsi
	call	_smpObject_funcall
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	call	_GC_free
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	call	_GC_free
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rsi
	movl	$32, %edx
	movq	-56(%rbp), %rdi
	call	_memmove
L288:
	movq	-56(%rbp), %rax
	leave
	ret
LFE121:
.globl _objid_init
_objid_init:
LFB122:
	pushq	%rbp
LCFI116:
	movq	%rsp, %rbp
LCFI117:
	pushq	%rbx
LCFI118:
	subq	$56, %rsp
LCFI119:
	movq	%rdi, %rbx
	movl	%esi, -52(%rbp)
	leaq	-48(%rbp), %rdi
	movq	_smpType_id@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	-52(%rbp), %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE122:
.globl _obj_eq
_obj_eq:
LFB123:
	pushq	%rbp
LCFI120:
	movq	%rsp, %rbp
LCFI121:
	movq	%rdi, -8(%rbp)
	movq	40(%rbp), %rdx
	movq	72(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L296
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L295
L296:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
L295:
	movq	-8(%rbp), %rax
	leave
	ret
LFE123:
.globl _obj_types_equalp
_obj_types_equalp:
LFB124:
	pushq	%rbp
LCFI122:
	movq	%rsp, %rbp
LCFI123:
	subq	$16, %rsp
LCFI124:
	movq	%rdi, -8(%rbp)
	movq	64(%rbp), %rax
	movq	(%rax), %rsi
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L301
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L300
L301:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
L300:
	movq	-8(%rbp), %rax
	leave
	ret
LFE124:
.globl _smpObject_clear
_smpObject_clear:
LFB125:
	pushq	%rbp
LCFI125:
	movq	%rsp, %rbp
LCFI126:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE125:
	.cstring
LC21:
	.ascii "cmp\0"
	.text
.globl _smpObject_cmp_fast
_smpObject_cmp_fast:
LFB126:
	pushq	%rbp
LCFI127:
	movq	%rsp, %rbp
LCFI128:
	subq	$112, %rsp
LCFI129:
	movq	%rdi, -40(%rbp)
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L308
	movq	-40(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_cmp_cint
	movl	%eax, -44(%rbp)
	jmp	L310
L308:
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L311
	movq	-40(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpFloat_cmp_cint
	movl	%eax, -44(%rbp)
	jmp	L310
L311:
	leaq	-32(%rbp), %rdi
	leaq	48(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC21(%rip), %rsi
	call	_smpObject_funcall
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L313
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_to_clong
	movl	%eax, -44(%rbp)
	jmp	L310
L313:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rdx)
	movl	$-2, -44(%rbp)
L310:
	movl	-44(%rbp), %eax
	leave
	ret
LFE126:
.globl _smpObject_cons
_smpObject_cons:
LFB127:
	pushq	%rbp
LCFI130:
	movq	%rsp, %rbp
LCFI131:
	subq	$144, %rsp
LCFI132:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L317
	movq	$0, -16(%rbp)
	jmp	L319
L317:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L320
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	jmp	L319
L320:
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-72(%rbp), %rdi
	call	_smpPair_init
	jmp	L316
L319:
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-72(%rbp), %rdi
	call	_smpList_init
L316:
	movq	-72(%rbp), %rax
	leave
	ret
LFE127:
.globl _smpObject_cons_c
_smpObject_cons_c:
LFB128:
	pushq	%rbp
LCFI133:
	movq	%rsp, %rbp
LCFI134:
	pushq	%rbx
LCFI135:
	subq	$40, %rsp
LCFI136:
	movq	%rdi, %rbx
	leaq	48(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_smpObject_cons
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE128:
	.cstring
LC22:
	.ascii "ArgumentError\0"
	.align 3
LC23:
	.ascii "Wrong number of arguments (1 expected, %d found).\0"
	.text
.globl _smpObject_eq
_smpObject_eq:
LFB129:
	pushq	%rbp
LCFI137:
	movq	%rsp, %rbp
LCFI138:
	addq	$-128, %rsp
LCFI139:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	cmpl	$1, -68(%rbp)
	jne	L327
	movq	40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %esi
	movq	-88(%rbp), %rdi
	call	_smpBool_init
	jmp	L326
L327:
	leaq	-32(%rbp), %rdi
	leaq	LC22(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	movl	-68(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC23(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rdi
	call	_smpGlobal_throw
L326:
	movq	-88(%rbp), %rax
	leave
	ret
LFE129:
	.cstring
LC24:
	.ascii "equal?\0"
	.text
.globl _smpObject_eql
_smpObject_eql:
LFB130:
	pushq	%rbp
LCFI140:
	movq	%rsp, %rbp
LCFI141:
	pushq	%rbx
LCFI142:
	subq	$56, %rsp
LCFI143:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC24(%rip), %rsi
	movq	%rbx, %rdi
	call	_smpObject_funcall
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE130:
	.cstring
LC25:
	.ascii "eq?\0"
	.text
.globl _smpObject_equalp
_smpObject_equalp:
LFB131:
	pushq	%rbp
LCFI144:
	movq	%rsp, %rbp
LCFI145:
	pushq	%rbx
LCFI146:
	subq	$56, %rsp
LCFI147:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC25(%rip), %rsi
	movq	%rbx, %rdi
	call	_smpObject_funcall
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE131:
.globl _smpObject_funcall
_smpObject_funcall:
LFB132:
	pushq	%rbp
LCFI148:
	movq	%rsp, %rbp
LCFI149:
	subq	$160, %rsp
LCFI150:
	movq	%rdi, -96(%rbp)
	movq	%rsi, -72(%rbp)
	movl	%edx, -76(%rbp)
	movq	%rcx, -88(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -8(%rbp)
	leaq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_get_fun
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L336
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L335
L336:
	leaq	-32(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpFunction_call
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 24(%rdx)
L335:
	movq	-96(%rbp), %rax
	leave
	ret
LFE132:
	.cstring
LC26:
	.ascii "Function\0"
LC27:
	.ascii "Thrown\0"
LC28:
	.ascii "List\0"
	.text
.globl _smpObject_funcall_arg
_smpObject_funcall_arg:
LFB133:
	pushq	%rbp
LCFI151:
	movq	%rsp, %rbp
LCFI152:
	pushq	%rbx
LCFI153:
	subq	$312, %rsp
LCFI154:
	movq	%rdi, -248(%rbp)
	movl	%esi, -212(%rbp)
	movq	%rdx, -224(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -24(%rbp)
	xorl	%edx, %edx
	movq	%rsp, %rax
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC26(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L341
	movq	-224(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L343
	movq	-224(%rbp), %rsi
	movl	$32, %edx
	movq	-248(%rbp), %rdi
	call	_memmove
	jmp	L345
L343:
	leaq	-112(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smp_getclass
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	-144(%rbp), %rdi
	movq	-224(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-248(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L345
L341:
	movq	-224(%rbp), %rax
	addq	$32, %rax
	movq	16(%rax), %rdi
	leaq	LC28(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L346
	movq	-224(%rbp), %rax
	addq	$32, %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L348
	movq	-224(%rbp), %rsi
	addq	$32, %rsi
	movl	$32, %edx
	movq	-248(%rbp), %rdi
	call	_memmove
	jmp	L345
L348:
	movq	-224(%rbp), %rbx
	addq	$32, %rbx
	leaq	-176(%rbp), %rdi
	leaq	LC28(%rip), %rsi
	call	_smp_getclass
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	leaq	-208(%rbp), %rdi
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-208(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-248(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L345
L346:
	movq	-224(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpList_length_clong
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	$15, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	leaq	64(%rsp), %rcx
	movq	%rcx, -240(%rbp)
	movq	-240(%rbp), %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
	jmp	L350
L351:
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rsi
	movslq	%edx,%rax
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx,%rsi)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rdx,%rsi)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rdx,%rsi)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rdx,%rsi)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L352
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	jmp	L354
L352:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
L354:
	incl	-28(%rbp)
L350:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	L351
	movq	-40(%rbp), %rcx
	movl	-32(%rbp), %esi
	movq	-224(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	movq	-248(%rbp), %rdi
	call	_smpFunction_call
L345:
	movq	-232(%rbp), %rsp
	movq	-248(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-24(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	L357
	call	___stack_chk_fail
L357:
	movq	-8(%rbp), %rbx
	leave
	ret
LFE133:
.globl _smpObject_getclass
_smpObject_getclass:
LFB134:
	pushq	%rbp
LCFI155:
	movq	%rsp, %rbp
LCFI156:
	pushq	%rbx
LCFI157:
	subq	$24, %rsp
LCFI158:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	call	_smp_getclass
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE134:
.globl _smpObject_gc_mark
_smpObject_gc_mark:
LFB135:
	pushq	%rbp
LCFI159:
	movq	%rsp, %rbp
LCFI160:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE135:
	.cstring
LC29:
	.ascii "UndefinedSymbolError\0"
	.align 3
LC30:
	.ascii "Class function \"%s\" is undefined for %s.\0"
	.align 3
LC31:
	.ascii "Instance function \"%s\" is undefined for %s.\0"
	.text
.globl _smpObject_get_fun
_smpObject_get_fun:
LFB136:
	pushq	%rbp
LCFI161:
	movq	%rsp, %rbp
LCFI162:
	pushq	%rbx
LCFI163:
	subq	$232, %rsp
LCFI164:
	movq	%rdi, -208(%rbp)
	movq	%rsi, -200(%rbp)
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_class@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L363
	movq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-64(%rbp), %rdi
	movq	-200(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	$0, %ecx
	call	_smpObject_get_fun_rec
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L365
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	leaq	-96(%rbp), %rdi
	leaq	LC29(%rip), %rsi
	call	_smp_getclass
	leaq	-128(%rbp), %rdi
	movq	-200(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rcx
	leaq	LC30(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-208(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L362
L365:
	movq	-64(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L362
L363:
	movq	32(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-64(%rbp), %rdi
	movq	-200(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$1, %ecx
	call	_smpObject_get_fun_rec
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L368
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	leaq	-160(%rbp), %rdi
	leaq	LC29(%rip), %rsi
	call	_smp_getclass
	leaq	-192(%rbp), %rdi
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rcx
	leaq	LC31(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-208(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L362
L368:
	movq	-64(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, 24(%rdx)
L362:
	movq	-208(%rbp), %rax
	addq	$232, %rsp
	popq	%rbx
	leave
	ret
LFE136:
	.cstring
LC32:
	.ascii "Function expected, %s found.\0"
	.text
.globl _smpObject_get_fun_rec
_smpObject_get_fun_rec:
LFB137:
	pushq	%rbp
LCFI165:
	movq	%rsp, %rbp
LCFI166:
	addq	$-128, %rsp
LCFI167:
	movq	%rdi, -120(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	cmpq	$0, -56(%rbp)
	jne	L372
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L371
L372:
	movq	$0, -8(%rbp)
	cmpl	$0, -68(%rbp)
	je	L375
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	L377
L375:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
L377:
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rdi
	call	_minihash_containsp
	testl	%eax, %eax
	je	L378
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rsi
	call	_minihash_get
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC26(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	je	L380
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	leaq	LC32(%rip), %rdi
	movl	$0, %eax
	call	_internal_error
L380:
	movq	-48(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L371
L378:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	L382
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L371
L382:
	movq	$0, -16(%rbp)
	jmp	L384
L385:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rsi
	leaq	-112(%rbp), %rdi
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %rdx
	call	_smpObject_get_fun_rec
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L386
	movq	-48(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L371
L386:
	incq	-16(%rbp)
L384:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-16(%rbp), %rax
	ja	L385
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
L371:
	movq	-120(%rbp), %rax
	leave
	ret
LFE137:
.globl _smpObject_hash
_smpObject_hash:
LFB138:
	pushq	%rbp
LCFI168:
	movq	%rsp, %rbp
LCFI169:
	subq	$48, %rsp
LCFI170:
	movq	%rdi, -40(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	decq	%rax
	movq	%rax, -16(%rbp)
	jmp	L391
L392:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al,%rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
L391:
	incq	-16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L392
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdi
	call	_smpInteger_init_clong
	movq	-40(%rbp), %rax
	leave
	ret
LFE138:
	.cstring
LC33:
	.ascii "Class\0"
	.text
.globl _smpObject_instancep
_smpObject_instancep:
LFB139:
	pushq	%rbp
LCFI171:
	movq	%rsp, %rbp
LCFI172:
	addq	$-128, %rsp
LCFI173:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC33(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L396
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L398
	movq	-80(%rbp), %rsi
	movl	$32, %edx
	movq	-88(%rbp), %rdi
	call	_memmove
	jmp	L395
L398:
	leaq	-32(%rbp), %rdi
	leaq	LC33(%rip), %rsi
	call	_smp_getclass
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	-64(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L395
L396:
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %edi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_instancep_cint
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	call	_smpBool_init
L395:
	movq	-88(%rbp), %rax
	leave
	ret
LFE139:
.globl _smpObject_instancep_cint
_smpObject_instancep_cint:
LFB140:
	pushq	%rbp
LCFI174:
	movq	%rsp, %rbp
LCFI175:
	subq	$160, %rsp
LCFI176:
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	40(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	48(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	56(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 56(%rsp)
	call	_smpObject_instancep_c
	leave
	ret
LFE140:
.globl _smpObject_instancep_c
_smpObject_instancep_c:
LFB141:
	pushq	%rbp
LCFI177:
	movq	%rsp, %rbp
LCFI178:
	subq	$96, %rsp
LCFI179:
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L405
	movl	$0, -28(%rbp)
	jmp	L407
L405:
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movl	24(%rbp), %eax
	cmpl	%eax, %edx
	jne	L408
	movl	$1, -28(%rbp)
	jmp	L407
L408:
	movq	$0, -8(%rbp)
	jmp	L410
L411:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 56(%rsp)
	call	_smpObject_instancep_c
	testl	%eax, %eax
	je	L412
	movl	$1, -28(%rbp)
	jmp	L407
L412:
	incq	-8(%rbp)
L410:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-8(%rbp), %rax
	ja	L411
	movl	$0, -28(%rbp)
L407:
	movl	-28(%rbp), %eax
	leave
	ret
LFE141:
.globl _smpObject_instancep_cstr
_smpObject_instancep_cstr:
LFB142:
	pushq	%rbp
LCFI180:
	movq	%rsp, %rbp
LCFI181:
	subq	$48, %rsp
LCFI182:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L417
	movl	$1, -36(%rbp)
	jmp	L419
L417:
	movq	$0, -8(%rbp)
	jmp	L420
L421:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L422
	movl	$1, -36(%rbp)
	jmp	L419
L422:
	incq	-8(%rbp)
L420:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-8(%rbp), %rax
	ja	L421
	movl	$0, -36(%rbp)
L419:
	movl	-36(%rbp), %eax
	leave
	ret
LFE142:
	.cstring
LC34:
	.ascii "<%s 0x%lx>\0"
	.text
.globl _smpObject_to_s
_smpObject_to_s:
LFB143:
	pushq	%rbp
LCFI183:
	movq	%rsp, %rbp
LCFI184:
	pushq	%rbx
LCFI185:
	subq	$24, %rsp
LCFI186:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	(%rax), %rdx
	leaq	LC34(%rip), %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	_smpString_init_fmt
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE143:
.globl _smpObject_to_s_class
_smpObject_to_s_class:
LFB144:
	pushq	%rbp
LCFI187:
	movq	%rsp, %rbp
LCFI188:
	pushq	%rbx
LCFI189:
	subq	$24, %rsp
LCFI190:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	call	_smpString_init
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE144:
.globl _smpObject_type
_smpObject_type:
LFB145:
	pushq	%rbp
LCFI191:
	movq	%rsp, %rbp
LCFI192:
	pushq	%rbx
LCFI193:
	subq	$24, %rsp
LCFI194:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	call	_smp_getclass
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE145:
.globl _smpObject_types_equalp
_smpObject_types_equalp:
LFB146:
	pushq	%rbp
LCFI195:
	movq	%rsp, %rbp
LCFI196:
	pushq	%rbx
LCFI197:
	subq	$88, %rsp
LCFI198:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_obj_types_equalp
	movq	%rbx, %rax
	addq	$88, %rsp
	popq	%rbx
	leave
	ret
LFE146:
.globl _smpObject_varcall
_smpObject_varcall:
LFB147:
	pushq	%rbp
LCFI199:
	movq	%rsp, %rbp
LCFI200:
	subq	$96, %rsp
LCFI201:
	movq	%rdi, -96(%rbp)
	movq	%rsi, -88(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_class@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L435
	movq	40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	L437
L435:
	movq	40(%rbp), %rax
	movq	%rax, -8(%rbp)
L437:
	leaq	-80(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rsi
	call	_minihash_get
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-96(%rbp), %rax
	leave
	ret
LFE147:
	.cstring
LC35:
	.ascii "to_s\0"
	.text
.globl _smpObject_write
_smpObject_write:
LFB148:
	pushq	%rbp
LCFI202:
	movq	%rsp, %rbp
LCFI203:
	pushq	%rbx
LCFI204:
	subq	$56, %rsp
LCFI205:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC35(%rip), %rsi
	movq	%rbx, %rdi
	call	_smpObject_funcall
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE148:
.globl _smpObject_write_class
_smpObject_write_class:
LFB149:
	pushq	%rbp
LCFI206:
	movq	%rsp, %rbp
LCFI207:
	pushq	%rbx
LCFI208:
	subq	$56, %rsp
LCFI209:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC35(%rip), %rsi
	movq	%rbx, %rdi
	call	_smpObject_funcall
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE149:
.globl _scope_init
_scope_init:
LFB150:
	pushq	%rbp
LCFI210:
	movq	%rsp, %rbp
LCFI211:
	pushq	%rbx
LCFI212:
	subq	$40, %rsp
LCFI213:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	movl	$4, %edi
	call	_next_power_of_2
	movq	%rax, %rdi
	salq	$5, %rdi
	call	_GC_malloc
	movq	%rax, %rdx
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	leaq	-48(%rbp), %rdi
	movl	$0, %eax
	call	_minihash_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	_scope_classes@GOTPCREL(%rip), %rbx
	leaq	-48(%rbp), %rdi
	movl	$0, %eax
	call	_minihash_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE150:
.globl _scope_push
_scope_push:
LFB151:
	pushq	%rbp
LCFI214:
	movq	%rsp, %rbp
LCFI215:
	pushq	%r12
LCFI216:
	pushq	%rbx
LCFI217:
	subq	$32, %rsp
LCFI218:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	$3, %rax
	jbe	L446
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	call	_is_power_of_2
	testl	%eax, %eax
	je	L446
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	call	_next_power_of_2
	movq	%rax, %rsi
	salq	$5, %rsi
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	call	_GC_realloc
	movq	%rax, %rdx
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
L446:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %r12
	movq	%r12, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-48(%rbp), %rdi
	movl	$0, %eax
	call	_minihash_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	leaq	1(%r12), %rdx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-64(%rax), %rdx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rsi
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-32(%rax), %rdx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rdi
	call	_minihash_copy
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
LFE151:
.globl _scope_pop
_scope_pop:
LFB152:
	pushq	%rbp
LCFI219:
	movq	%rsp, %rbp
LCFI220:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rdi
	call	_minihash_clear
	movl	$0, %eax
	leave
	ret
LFE152:
.globl _scope_add
_scope_add:
LFB153:
	pushq	%rbp
LCFI221:
	movq	%rsp, %rbp
LCFI222:
	subq	$48, %rsp
LCFI223:
	movq	%rdi, -8(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L453
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-32(%rax), %rdx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	jmp	L455
L453:
	movq	$0, -16(%rbp)
L455:
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-16(%rbp), %rdi
	call	_minihash_add
	leave
	ret
LFE153:
.globl _scope_get
_scope_get:
LFB154:
	pushq	%rbp
LCFI224:
	movq	%rsp, %rbp
LCFI225:
	subq	$32, %rsp
LCFI226:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -8(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L458
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-32(%rax), %rdx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	jmp	L460
L458:
	movq	$0, -16(%rbp)
L460:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	call	_minihash_get
	movq	-24(%rbp), %rax
	leave
	ret
LFE154:
	.cstring
LC36:
	.ascii "self\0"
	.text
.globl _scope_self
_scope_self:
LFB155:
	pushq	%rbp
LCFI227:
	movq	%rsp, %rbp
LCFI228:
	subq	$16, %rsp
LCFI229:
	movq	%rdi, -16(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L463
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-32(%rax), %rdx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	jmp	L465
L463:
	movq	$0, -8(%rbp)
L465:
	leaq	LC36(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	call	_minihash_get
	movq	-16(%rbp), %rax
	leave
	ret
LFE155:
.globl _scope_clear
_scope_clear:
LFB156:
	pushq	%rbp
LCFI230:
	movq	%rsp, %rbp
LCFI231:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-32(%rax), %rdx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rdi
	call	_minihash_clear
	jmp	L468
L469:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-32(%rax), %rcx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rcx,%rax), %rdi
	call	_minihash_clear
L468:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	ja	L469
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	leave
	ret
LFE156:
.globl _init_smp_classes
_init_smp_classes:
LFB157:
	pushq	%rbp
LCFI232:
	movq	%rsp, %rbp
LCFI233:
	movq	_initialized_classesp@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	call	_init_fundamental_classes
	movl	$0, %eax
	call	_init_required_classes
	movl	$0, %eax
	call	_smpNumber_create_class
	movl	$0, %eax
	call	_smpInteger_create_class
	movl	$0, %eax
	call	_smpFloat_create_class
	movq	_initialized_classesp@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	leave
	ret
LFE157:
.globl _init_required_classes
_init_required_classes:
LFB158:
	pushq	%rbp
LCFI234:
	movq	%rsp, %rbp
LCFI235:
	movl	$0, %eax
	call	_smpGlobal_create_class
	movl	$0, %eax
	call	_smpRegex_create_class
	movl	$0, %eax
	call	_smpArray_create_class
	movl	$0, %eax
	call	_smpHash_create_class
	movl	$0, %eax
	call	_smpSymbol_create_class
	movl	$0, %eax
	leave
	ret
LFE158:
	.cstring
LC37:
	.ascii "Object\0"
LC38:
	.ascii "ID\0"
LC39:
	.ascii "Atom\0"
LC40:
	.ascii "Bool\0"
LC41:
	.ascii "Collection\0"
LC42:
	.ascii "Pair\0"
LC43:
	.ascii "Nil\0"
LC44:
	.ascii "TrueClass\0"
LC45:
	.ascii "Exception\0"
LC46:
	.ascii "CompileError\0"
LC47:
	.ascii "RuntimeException\0"
LC48:
	.ascii "FunctionError\0"
LC49:
	.ascii "SyntaxError\0"
LC50:
	.ascii "TypeError\0"
LC51:
	.ascii "==\0"
LC52:
	.ascii "->\0"
LC53:
	.ascii "cons\0"
LC54:
	.ascii "eql?\0"
LC55:
	.ascii "&rest\0"
LC56:
	.ascii "funcall\0"
LC57:
	.ascii "gc_mark\0"
LC58:
	.ascii "getclass\0"
LC59:
	.ascii "type\0"
LC60:
	.ascii "types_equal?\0"
LC61:
	.ascii "write\0"
LC62:
	.ascii "and\0"
LC63:
	.ascii "or\0"
LC64:
	.ascii "xor\0"
LC65:
	.ascii "&&\0"
LC66:
	.ascii "||\0"
	.text
.globl _init_fundamental_classes
_init_fundamental_classes:
LFB159:
	pushq	%rbp
LCFI236:
	movq	%rsp, %rbp
LCFI237:
	pushq	%rbx
LCFI238:
	subq	$1384, %rsp
LCFI239:
	movq	_smpType_next_id@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movq	_smpType_ids@GOTPCREL(%rip), %rbx
	leaq	-1328(%rbp), %rdi
	movl	$0, %eax
	call	_minihash_init
	movq	-1328(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-1320(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-1312(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-1304(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	$128, %edx
	movl	$0, %esi
	leaq	LC37(%rip), %rdi
	call	_smpGlobal_class
	movq	_smpType_id@GOTPCREL(%rip), %rdx
	leaq	LC38(%rip), %rax
	movq	%rax, (%rdx)
	movq	_smpType_next_id@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movq	_smpType_id@GOTPCREL(%rip), %rax
	movl	%edx, 8(%rax)
	incl	%edx
	movq	_smpType_next_id@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movq	_smpType_id@GOTPCREL(%rip), %rax
	movq	$1, 24(%rax)
	movq	_smpType_id@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	leaq	0(,%rax,8), %rdi
	call	_GC_malloc
	movq	%rax, %rdx
	movq	_smpType_id@GOTPCREL(%rip), %rax
	movq	%rdx, 16(%rax)
	movq	_smpType_id@GOTPCREL(%rip), %rax
	movq	16(%rax), %rdx
	movq	_smpType_object@GOTPCREL(%rip), %rax
	movq	%rax, (%rdx)
	movq	_smpType_id@GOTPCREL(%rip), %rax
	movq	$0, 32(%rax)
	movq	_smpType_id@GOTPCREL(%rip), %rax
	movq	$0, 40(%rax)
	leaq	-80(%rbp), %rdi
	leaq	LC37(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_object@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movl	$128, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC33(%rip), %rdi
	call	_smpGlobal_class
	leaq	-208(%rbp), %rdi
	leaq	LC33(%rip), %rsi
	call	_smp_getclass
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_class@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movq	_smpType_class@GOTPCREL(%rip), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_class@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movl	$128, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC26(%rip), %rdi
	call	_smpGlobal_class
	leaq	-240(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smp_getclass
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_function@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movq	_smpType_class@GOTPCREL(%rip), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_fun@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movl	$160, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC39(%rip), %rdi
	call	_smpGlobal_class
	leaq	-272(%rbp), %rdi
	leaq	LC39(%rip), %rsi
	call	_smp_getclass
	movq	-248(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_atom@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movl	$128, %edx
	movq	_smpType_atom@GOTPCREL(%rip), %rsi
	leaq	LC18(%rip), %rdi
	call	_smpGlobal_class
	leaq	-304(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smp_getclass
	movq	-280(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_string@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movl	$160, %edx
	movq	_smpType_atom@GOTPCREL(%rip), %rsi
	leaq	LC40(%rip), %rdi
	call	_smpGlobal_class
	movl	$160, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC41(%rip), %rdi
	call	_smpGlobal_class
	leaq	-336(%rbp), %rdi
	leaq	LC41(%rip), %rsi
	call	_smp_getclass
	movq	-312(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_collection@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movl	$128, %edx
	movq	_smpType_collection@GOTPCREL(%rip), %rsi
	leaq	LC42(%rip), %rdi
	call	_smpGlobal_class
	leaq	-368(%rbp), %rdi
	leaq	LC42(%rip), %rsi
	call	_smp_getclass
	movq	-344(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_pair@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movl	$128, %edx
	movq	_smpType_pair@GOTPCREL(%rip), %rsi
	leaq	LC28(%rip), %rdi
	call	_smpGlobal_class
	leaq	-400(%rbp), %rdi
	leaq	LC28(%rip), %rsi
	call	_smp_getclass
	movq	-376(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_list@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movq	_smpType_list@GOTPCREL(%rip), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	leaq	-112(%rbp), %rdi
	leaq	LC40(%rip), %rsi
	call	_smp_getclass
	movq	$2, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdi
	call	_GC_malloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	_smpType_list@GOTPCREL(%rip), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rdx
	addq	$8, %rdx
	movq	-88(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$144, %ecx
	leaq	LC43(%rip), %rdi
	call	_smpGlobal_class_multiple
	leaq	-144(%rbp), %rdi
	leaq	LC43(%rip), %rsi
	call	_smp_getclass
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_nil@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	leaq	-1328(%rbp), %rdi
	movq	_smpType_nil@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	-1328(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-1320(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-1312(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-1304(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	_smpType_nil@GOTPCREL(%rip), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movzbl	8(%rdx), %eax
	orl	$1, %eax
	movb	%al, 8(%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$144, %edx
	leaq	LC44(%rip), %rdi
	call	_smpGlobal_class
	leaq	-432(%rbp), %rdi
	leaq	LC44(%rip), %rsi
	call	_smp_getclass
	movq	-408(%rbp), %rax
	movq	%rax, %rsi
	movq	_smp_true@GOTPCREL(%rip), %rbx
	leaq	-1328(%rbp), %rdi
	call	_obj_init
	movq	-1328(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-1320(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-1312(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-1304(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movzbl	8(%rdx), %eax
	orl	$1, %eax
	movb	%al, 8(%rdx)
	movl	$128, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC45(%rip), %rdi
	call	_smpGlobal_class
	leaq	-176(%rbp), %rdi
	leaq	LC45(%rip), %rsi
	call	_smp_getclass
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_exception@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movl	$0, %edx
	movq	_smpType_exception@GOTPCREL(%rip), %rsi
	leaq	LC46(%rip), %rdi
	call	_smpGlobal_class
	movl	$0, %edx
	movq	_smpType_exception@GOTPCREL(%rip), %rsi
	leaq	LC47(%rip), %rdi
	call	_smpGlobal_class
	leaq	-464(%rbp), %rdi
	leaq	LC46(%rip), %rsi
	call	_smp_getclass
	movq	-440(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rsi
	movl	$0, %edx
	leaq	LC22(%rip), %rdi
	call	_smpGlobal_class
	movq	-40(%rbp), %rsi
	movl	$0, %edx
	leaq	LC48(%rip), %rdi
	call	_smpGlobal_class
	movq	-40(%rbp), %rsi
	movl	$0, %edx
	leaq	LC49(%rip), %rdi
	call	_smpGlobal_class
	movq	-40(%rbp), %rsi
	movl	$0, %edx
	leaq	LC50(%rip), %rdi
	call	_smpGlobal_class
	movq	-40(%rbp), %rsi
	movl	$0, %edx
	leaq	LC29(%rip), %rdi
	call	_smpGlobal_class
	movl	$128, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC27(%rip), %rdi
	call	_smpGlobal_class
	leaq	-496(%rbp), %rdi
	leaq	LC27(%rip), %rsi
	call	_smp_getclass
	movq	-472(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_thrown@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movq	_smpType_thrown@GOTPCREL(%rip), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	leaq	-528(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_eq(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-528(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-512(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC51(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-560(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_clear(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-560(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-552(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-544(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-536(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC20(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def
	leaq	-592(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_cons(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-592(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-584(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-576(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-568(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC52(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-624(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_cons(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-624(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-616(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-608(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-600(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC53(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-656(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_eq(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-656(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-648(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-640(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-632(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC25(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-688(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_eql(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-688(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-680(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-672(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-664(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC54(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-720(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_equalp(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-720(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-712(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-704(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-696(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC24(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-752(%rbp), %rdi
	leaq	LC37(%rip), %rax
	movq	%rax, (%rsp)
	leaq	LC55(%rip), %r9
	leaq	LC26(%rip), %r8
	leaq	LC37(%rip), %rcx
	movl	$4, %edx
	leaq	_smpObject_funcall_arg(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-736(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-728(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC56(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-784(%rbp), %rdi
	leaq	LC37(%rip), %rax
	movq	%rax, (%rsp)
	leaq	LC55(%rip), %r9
	leaq	LC26(%rip), %r8
	leaq	LC37(%rip), %rcx
	movl	$4, %edx
	leaq	_smpObject_funcall_arg(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-784(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-776(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-768(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-760(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC56(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-816(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_gc_mark(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-816(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-808(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-800(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-792(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC57(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def
	leaq	-848(%rbp), %rdi
	leaq	LC33(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_getclass(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-848(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-840(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-832(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-824(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC58(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-880(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_to_s(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-880(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-872(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-864(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-856(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-912(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_to_s_class(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-912(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-904(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-896(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-888(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-944(%rbp), %rdi
	leaq	LC33(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_type(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-944(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-936(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-928(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-920(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC59(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-976(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_types_equalp(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-976(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-968(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-960(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-952(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC60(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-1008(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_write(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-1008(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-1000(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-992(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-984(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-1040(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_write_class(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-1040(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-1032(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-1024(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-1016(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-1072(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpBool_and@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-1072(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-1064(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-1056(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-1048(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC62(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-1104(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpBool_or@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-1104(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-1096(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-1088(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-1080(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC63(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-1136(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpBool_xor@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-1136(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-1128(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-1120(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-1112(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC64(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-1168(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpBool_and@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-1168(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-1160(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-1152(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-1144(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC65(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-1200(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpBool_or@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-1200(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-1192(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-1184(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-1176(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC66(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-1232(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpType_gc_mark@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1328(%rbp), %rdi
	movq	-1232(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-1224(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-1216(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-1208(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC57(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-1264(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smptrue_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-1296(%rbp), %rdi
	leaq	LC44(%rip), %rsi
	call	_smp_getclass
	leaq	-1328(%rbp), %rdi
	movq	-1264(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-1256(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-1248(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-1240(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-1296(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-1288(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1280(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-1272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	call	_smpFunction_create_class
	movl	$0, %eax
	call	_smpCollection_create_class
	movl	$0, %eax
	call	_smpList_create_class
	movl	$0, %eax
	call	_smpNil_create_class
	movl	$0, %eax
	call	_smpPair_create_class
	movl	$0, %eax
	call	_smpThrown_create_class
	movl	$0, %eax
	call	_smpException_create_class
	movl	$0, %eax
	call	_smpstrcreate_class
	movl	$0, %eax
	addq	$1384, %rsp
	popq	%rbx
	leave
	ret
LFE159:
.globl _test_init
_test_init:
LFB160:
	pushq	%rbp
LCFI240:
	movq	%rsp, %rbp
LCFI241:
	movq	_smptest_print_successesp@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	leave
	ret
LFE160:
	.cstring
LC67:
	.ascii "success: %s equals %s\12\0"
	.align 3
LC68:
	.ascii "failure: %s expected, %s found.\12\0"
	.text
.globl _smp_assert_eq
_smp_assert_eq:
LFB161:
	pushq	%rbp
LCFI242:
	movq	%rsp, %rbp
LCFI243:
	subq	$144, %rsp
LCFI244:
	leaq	-48(%rbp), %rdi
	leaq	48(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC24(%rip), %rsi
	call	_smpObject_funcall
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpBool_to_cint
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L481
	movq	_smptest_print_successesp@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L481
	leaq	-80(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC67(%rip), %rsi
	movl	$0, %eax
	call	_smp_printf
	jmp	L484
L481:
	cmpl	$0, -4(%rbp)
	jne	L484
	leaq	-80(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC68(%rip), %rsi
	movl	$0, %eax
	call	_smp_printf
L484:
	leaq	-80(%rbp), %rdi
	leaq	16(%rbp), %rsi
	call	_obj_clear
	leaq	-80(%rbp), %rdi
	leaq	48(%rbp), %rsi
	call	_obj_clear
	movl	-4(%rbp), %eax
	leave
	ret
LFE161:
	.cstring
LC69:
	.ascii "x\0"
LC70:
	.ascii "y\0"
LC71:
	.ascii "+\0"
LC72:
	.ascii "-\0"
LC73:
	.ascii "*\0"
LC74:
	.ascii "/\0"
LC75:
	.ascii "%\0"
LC76:
	.ascii "<<\0"
LC77:
	.ascii ">>\0"
LC78:
	.ascii "&\0"
LC79:
	.ascii "|\0"
LC80:
	.ascii "^\0"
	.text
.globl _test_nums
_test_nums:
LFB162:
	pushq	%rbp
LCFI245:
	movq	%rsp, %rbp
LCFI246:
	subq	$1808, %rsp
LCFI247:
	leaq	-48(%rbp), %rdi
	movl	$4, %esi
	call	_smpInteger_init_clong
	leaq	-80(%rbp), %rdi
	movl	$7, %esi
	call	_smpInteger_init_clong
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC69(%rip), %rdi
	call	_scope_add
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC70(%rip), %rdi
	call	_scope_add
	movl	$1, -4(%rbp)
	leaq	-112(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC71(%rip), %rsi
	call	_smpObject_funcall
	leaq	-144(%rbp), %rdi
	movl	$11, %esi
	call	_smpInteger_init_clong
	movq	-112(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-176(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC72(%rip), %rsi
	call	_smpObject_funcall
	leaq	-208(%rbp), %rdi
	movq	$-3, %rsi
	call	_smpInteger_init_clong
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-240(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC73(%rip), %rsi
	call	_smpObject_funcall
	leaq	-272(%rbp), %rdi
	movl	$28, %esi
	call	_smpInteger_init_clong
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-304(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC74(%rip), %rsi
	call	_smpObject_funcall
	leaq	-336(%rbp), %rdi
	movl	$0, %esi
	call	_smpInteger_init_clong
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-288(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-336(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-320(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-368(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC75(%rip), %rsi
	call	_smpObject_funcall
	leaq	-400(%rbp), %rdi
	movl	$4, %esi
	call	_smpInteger_init_clong
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-352(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-344(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-400(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-384(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-376(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-432(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC76(%rip), %rsi
	call	_smpObject_funcall
	leaq	-464(%rbp), %rdi
	movl	$512, %esi
	call	_smpInteger_init_clong
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-416(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-408(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-464(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-448(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-440(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-496(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC77(%rip), %rsi
	call	_smpObject_funcall
	leaq	-528(%rbp), %rdi
	movl	$0, %esi
	call	_smpInteger_init_clong
	movq	-496(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-480(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-472(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-528(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-512(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-560(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC78(%rip), %rsi
	call	_smpObject_funcall
	leaq	-592(%rbp), %rdi
	movl	$4, %esi
	call	_smpInteger_init_clong
	movq	-560(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-552(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-544(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-536(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-592(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-584(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-576(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-568(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-624(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC79(%rip), %rsi
	call	_smpObject_funcall
	leaq	-656(%rbp), %rdi
	movl	$7, %esi
	call	_smpInteger_init_clong
	movq	-624(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-616(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-608(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-600(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-656(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-648(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-640(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-632(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-688(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC80(%rip), %rsi
	call	_smpObject_funcall
	leaq	-720(%rbp), %rdi
	movl	$3, %esi
	call	_smpInteger_init_clong
	movq	-688(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-680(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-672(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-664(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-720(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-712(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-704(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-696(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	ret
LFE162:
.globl _test_gc
_test_gc:
LFB163:
	pushq	%rbp
LCFI248:
	movq	%rsp, %rbp
LCFI249:
	subq	$144, %rsp
LCFI250:
	leaq	-48(%rbp), %rdi
	movl	$4, %esi
	call	_smpInteger_init_clong
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC69(%rip), %rdi
	call	_scope_add
	movl	$0, -4(%rbp)
L490:
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movl	$1, %edx
	leaq	LC80(%rip), %rsi
	call	_smpObject_funcall
	leaq	-112(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_println
	incl	-4(%rbp)
	jmp	L490
LFE163:
	.cstring
LC81:
	.ascii "World\0"
	.align 3
LC82:
	.ascii "Hello, %s! Mad %w, Wayne's %w, Disney %w.\0"
	.align 3
LC83:
	.ascii "Hello, World! Mad \"World\", Wayne's \"World\", Disney \"World\".\0"
	.text
.globl _test_strings
_test_strings:
LFB164:
	pushq	%rbp
LCFI251:
	movq	%rsp, %rbp
LCFI252:
	subq	$336, %rsp
LCFI253:
	movl	$1, -4(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	LC81(%rip), %rsi
	call	_smpString_init
	leaq	-240(%rbp), %rdi
	movl	$128, %edx
	movl	$0, %esi
	call	_memset
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-240(%rbp), %rcx
	movl	$4, %edx
	leaq	LC82(%rip), %rsi
	movl	$0, %eax
	call	_smpGlobal_sprintf
	leaq	-112(%rbp), %rdi
	leaq	LC83(%rip), %rsi
	call	_smpString_init
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-272(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	call	_obj_clear
	movl	$0, %eax
	leave
	ret
LFE164:
	.cstring
LC85:
	.ascii "various types: %d, %f, %x, %o\0"
	.text
.globl _test_printf
_test_printf:
LFB165:
	pushq	%rbp
LCFI254:
	movq	%rsp, %rbp
LCFI255:
	subq	$160, %rsp
LCFI256:
	leaq	-128(%rbp), %rdi
	movl	$128, %edx
	movl	$0, %esi
	call	_memset
	leaq	-128(%rbp), %rdi
	movl	$18, %esi
	call	_smpInteger_init_clong
	leaq	-96(%rbp), %rdi
	movsd	LC84(%rip), %xmm0
	call	_smpFloat_init_cdouble
	leaq	-64(%rbp), %rdi
	movl	$16, %esi
	call	_smpInteger_init_clong
	leaq	-32(%rbp), %rdi
	movl	$16, %esi
	call	_smpInteger_init_clong
	leaq	-160(%rbp), %rdi
	leaq	-128(%rbp), %rcx
	movl	$4, %edx
	leaq	LC85(%rip), %rsi
	movl	$0, %eax
	call	_smpGlobal_sprintf
	movl	$0, %eax
	leave
	ret
LFE165:
	.cstring
LC86:
	.ascii "Integer\0"
LC87:
	.ascii "make_list\0"
LC88:
	.ascii "xs\0"
	.text
.globl _test_lists
_test_lists:
LFB166:
	pushq	%rbp
LCFI257:
	movq	%rsp, %rbp
LCFI258:
	subq	$304, %rsp
LCFI259:
	movl	$1, -4(%rbp)
	leaq	-144(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	movq	_make_list@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-176(%rbp), %rdi
	leaq	LC86(%rip), %rsi
	call	_smp_getclass
	leaq	-240(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC87(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC88(%rip), %rdi
	call	_scope_add
	leaq	-208(%rbp), %rdi
	movl	$20, %esi
	call	_smpInteger_init_clong
	leaq	-112(%rbp), %rdi
	movq	-208(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smpInteger_zero@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_make_list
	movq	$19, -16(%rbp)
	jmp	L497
L498:
	leaq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	call	_smpInteger_init_clong
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC69(%rip), %rdi
	call	_scope_add
	leaq	-240(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC53(%rip), %rsi
	call	_smpObject_funcall
	movq	-240(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC88(%rip), %rdi
	call	_scope_add
	decq	-16(%rbp)
L497:
	cmpq	$0, -16(%rbp)
	jns	L498
	movq	-112(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	ret
LFE166:
.globl _make_list
_make_list:
LFB167:
	pushq	%rbp
LCFI260:
	movq	%rsp, %rbp
LCFI261:
	subq	$288, %rsp
LCFI262:
	movq	%rdi, -216(%rbp)
	movl	%esi, -164(%rbp)
	movq	%rdx, -176(%rbp)
	leaq	-32(%rbp), %rdi
	movq	_smpInteger_zero@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_cmp_cint
	testl	%eax, %eax
	jle	L502
	leaq	-64(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpInteger_dec
	leaq	-96(%rbp), %rdi
	movq	-176(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpInteger_inc
	movq	-176(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -104(%rbp)
	leaq	-160(%rbp), %rdi
	leaq	-96(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC87(%rip), %rsi
	call	_smpObject_funcall
	leaq	-208(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC20(%rip), %rsi
	call	_smpObject_funcall
	movq	-144(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L504
	movq	-160(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-152(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-144(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-136(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L501
L504:
	leaq	-160(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	movq	-216(%rbp), %rdi
	call	_smpObject_cons
	jmp	L501
L502:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 24(%rdx)
L501:
	movq	-216(%rbp), %rax
	leave
	ret
LFE167:
	.cstring
LC89:
	.ascii "not a real type\0"
	.text
.globl _test_listbuf
_test_listbuf:
LFB168:
	pushq	%rbp
LCFI263:
	movq	%rsp, %rbp
LCFI264:
	subq	$224, %rsp
LCFI265:
	leaq	-32(%rbp), %rdi
	movl	$0, %eax
	call	_smpListBuffer_init
	leaq	-64(%rbp), %rdi
	movl	$1, %esi
	call	_smpBool_init
	leaq	-96(%rbp), %rdi
	movl	$0, %esi
	call	_smpBool_init
	leaq	-128(%rbp), %rdi
	leaq	LC89(%rip), %rcx
	movl	$1, %edx
	movq	_smpListBuffer_to_list@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-192(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpListBuffer_add_now
	leaq	-192(%rbp), %rdi
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpListBuffer_add_now
	leaq	-192(%rbp), %rdi
	leaq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpListBuffer_add_now
	leaq	-160(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpListBuffer_to_list
	leaq	-192(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	call	_obj_clear
	movl	$1, %eax
	leave
	ret
LFE168:
.globl _test_bool
_test_bool:
LFB169:
	pushq	%rbp
LCFI266:
	movq	%rsp, %rbp
LCFI267:
	subq	$528, %rsp
LCFI268:
	movl	$1, -4(%rbp)
	leaq	-48(%rbp), %rdi
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_and
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-80(%rbp), %rdi
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_and
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-112(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_and
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-144(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_and
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-176(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpBool_not
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-208(%rbp), %rdi
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpBool_not
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-240(%rbp), %rdi
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_or
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-272(%rbp), %rdi
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_or
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-304(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_or
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-304(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-288(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-336(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_or
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-336(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-320(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-368(%rbp), %rdi
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_xor
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-368(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-352(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-344(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-400(%rbp), %rdi
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_xor
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-400(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-384(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-376(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-432(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_xor
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-432(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-416(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-408(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	leaq	-464(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpBool_xor
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-464(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-448(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-440(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_assert_eq
	andl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	ret
LFE169:
	.cstring
LC90:
	.ascii "^[0123456789]+$\0"
LC91:
	.ascii "09821409\0"
	.text
.globl _test_regex
_test_regex:
LFB170:
	pushq	%rbp
LCFI269:
	movq	%rsp, %rbp
LCFI270:
	subq	$160, %rsp
LCFI271:
	leaq	-32(%rbp), %rdi
	leaq	LC90(%rip), %rsi
	call	_smpString_init
	leaq	-64(%rbp), %rdi
	leaq	LC91(%rip), %rsi
	call	_smpString_init
	leaq	-96(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpRegex_matchp
	leaq	-128(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_println
	movl	$0, %eax
	leave
	ret
LFE170:
	.cstring
LC92:
	.ascii "array\0"
	.text
.globl _test_arrays
_test_arrays:
LFB171:
	pushq	%rbp
LCFI272:
	movq	%rsp, %rbp
LCFI273:
	subq	$144, %rsp
LCFI274:
	leaq	-48(%rbp), %rdi
	movl	$0, %eax
	call	_smpArray_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC92(%rip), %rdi
	call	_scope_add
	movl	$0, -4(%rbp)
	jmp	L515
L516:
	movl	-4(%rbp), %eax
	movslq	%eax,%rsi
	leaq	-80(%rbp), %rdi
	call	_smpInteger_init_clong
	leaq	-112(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpArray_add_now
	incl	-4(%rbp)
L515:
	cmpl	$99, -4(%rbp)
	jle	L516
	leaq	-112(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_println
	movl	$0, %eax
	leave
	ret
LFE171:
	.cstring
LC95:
	.ascii "time to sort at %f seconds\12\0"
	.text
.globl _test_array_sort
_test_array_sort:
LFB172:
	pushq	%rbp
LCFI275:
	movq	%rsp, %rbp
LCFI276:
	subq	$224, %rsp
LCFI277:
	leaq	-64(%rbp), %rdi
	movl	$0, %esi
	call	_gettimeofday
	movq	-64(%rbp), %rax
	cvtsi2sdq	%rax, %xmm2
	movl	-56(%rbp), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	LC93(%rip), %xmm0
	movapd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	$96, -40(%rbp)
	movq	$0, -24(%rbp)
	jmp	L520
L521:
	cmpq	$0, -24(%rbp)
	je	L522
	movq	-24(%rbp), %rax
	andl	$63, %eax
	testq	%rax, %rax
	jne	L522
	salq	-40(%rbp)
L522:
	leaq	-96(%rbp), %rdi
	movl	$0, %esi
	call	_smpInteger_init_clong
	leaq	-128(%rbp), %rdi
	movl	$0, %eax
	call	_smpArray_init
	leaq	-160(%rbp), %rdi
	movq	-40(%rbp), %rsi
	call	_smpInteger_init_clong
	movl	$0, -4(%rbp)
	jmp	L525
L526:
	call	_genrand_real2
	movapd	%xmm0, %xmm1
	movsd	LC94(%rip), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	L529
	jmp	L527
L529:
	leaq	-192(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smpInteger_one@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpInteger_add
	movq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	L530
L527:
	leaq	-192(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	movl	$1, %esi
	call	_smpGlobal_rand
	movq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -72(%rbp)
L530:
	leaq	-192(%rbp), %rdi
	leaq	-96(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpArray_add_now
	incl	-4(%rbp)
L525:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-40(%rbp), %rax
	jl	L526
	leaq	-192(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpArray_sort_now
	incq	-24(%rbp)
L520:
	cmpq	$511, -24(%rbp)
	jbe	L521
	leaq	-64(%rbp), %rdi
	movl	$0, %esi
	call	_gettimeofday
	movq	-64(%rbp), %rax
	cvtsi2sdq	%rax, %xmm2
	movl	-56(%rbp), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	LC93(%rip), %xmm0
	movapd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	leaq	LC95(%rip), %rdi
	movl	$1, %eax
	call	_printf
	leave
	ret
LFE172:
_genrand_real2:
LFB77:
	pushq	%rbp
LCFI278:
	movq	%rsp, %rbp
LCFI279:
	subq	$16, %rsp
LCFI280:
	call	_gen_rand32
	movl	%eax, %edi
	call	_to_real2
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	leave
	ret
LFE77:
_to_real2:
LFB76:
	pushq	%rbp
LCFI281:
	movq	%rsp, %rbp
LCFI282:
	movl	%edi, -4(%rbp)
	mov	-4(%rbp), %eax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	js	L537
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	L538
L537:
	movq	-24(%rbp), %rax
	shrq	%rax
	movq	-24(%rbp), %rdx
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
L538:
	movsd	LC96(%rip), %xmm0
	mulsd	-16(%rbp), %xmm0
	leave
	ret
LFE76:
.globl _list_clear_all
_list_clear_all:
LFB173:
	pushq	%rbp
LCFI283:
	movq	%rsp, %rbp
LCFI284:
	subq	$112, %rsp
LCFI285:
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -16(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	call	_obj_clear
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	L541
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_list_clear_all
L541:
	leaq	-80(%rbp), %rdi
	leaq	16(%rbp), %rsi
	call	_obj_clear
	leave
	ret
LFE173:
.globl _test_list_sort
_test_list_sort:
LFB174:
	pushq	%rbp
LCFI286:
	movq	%rsp, %rbp
LCFI287:
	subq	$224, %rsp
LCFI288:
	leaq	-64(%rbp), %rdi
	movl	$0, %esi
	call	_gettimeofday
	movq	-64(%rbp), %rax
	cvtsi2sdq	%rax, %xmm2
	movl	-56(%rbp), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	LC93(%rip), %xmm0
	movapd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	$2, -40(%rbp)
	movq	$0, -24(%rbp)
	jmp	L545
L546:
	cmpq	$0, -24(%rbp)
	je	L547
	movq	-24(%rbp), %rax
	andl	$63, %eax
	testq	%rax, %rax
	jne	L547
	salq	-40(%rbp)
L547:
	leaq	-96(%rbp), %rdi
	movl	$0, %esi
	call	_smpInteger_init_clong
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -104(%rbp)
	leaq	-160(%rbp), %rdi
	movq	-40(%rbp), %rsi
	call	_smpInteger_init_clong
	movl	$0, -4(%rbp)
	jmp	L550
L551:
	leaq	-192(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	movl	$1, %esi
	call	_smpGlobal_rand
	movq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-192(%rbp), %rdi
	leaq	-128(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpObject_cons
	movq	-192(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -104(%rbp)
	incl	-4(%rbp)
L550:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-40(%rbp), %rax
	jl	L551
	leaq	-192(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_nsort
	movq	-192(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_list_clear_all
	incq	-24(%rbp)
L545:
	cmpq	$511, -24(%rbp)
	jbe	L546
	leaq	-64(%rbp), %rdi
	movl	$0, %esi
	call	_gettimeofday
	movq	-64(%rbp), %rax
	cvtsi2sdq	%rax, %xmm2
	movl	-56(%rbp), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	LC93(%rip), %xmm0
	movapd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	leaq	LC95(%rip), %rdi
	movl	$1, %eax
	call	_printf
	leave
	ret
LFE174:
	.cstring
LC97:
	.ascii "What is Pi?\0"
LC98:
	.ascii "second pi\0"
LC100:
	.ascii "pi: %s\12\0"
	.text
.globl _test_hash
_test_hash:
LFB175:
	pushq	%rbp
LCFI289:
	movq	%rsp, %rbp
LCFI290:
	subq	$288, %rsp
LCFI291:
	leaq	-32(%rbp), %rdi
	movl	$0, %eax
	call	_smpHash_init
	leaq	-64(%rbp), %rdi
	leaq	LC97(%rip), %rsi
	call	_smpString_init
	leaq	-96(%rbp), %rdi
	leaq	LC98(%rip), %rsi
	call	_smpString_init
	leaq	-128(%rbp), %rdi
	movsd	LC99(%rip), %xmm0
	call	_smpFloat_init_cdouble
	leaq	-160(%rbp), %rdi
	leaq	-128(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpObject_cons
	leaq	-192(%rbp), %rdi
	leaq	-128(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpObject_cons
	leaq	-256(%rbp), %rdi
	leaq	-160(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpHash_add_now
	leaq	-256(%rbp), %rdi
	leaq	-192(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpHash_add_now
	leaq	-256(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_println
	leaq	-224(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpHash_at
	leaq	-256(%rbp), %rdi
	leaq	-224(%rbp), %rcx
	movl	$1, %edx
	leaq	LC100(%rip), %rsi
	movl	$0, %eax
	call	_smp_printf
	movl	$0, %eax
	leave
	ret
LFE175:
	.cstring
LC101:
	.ascii "Card\0"
	.text
.globl _test_external_classes
_test_external_classes:
LFB176:
	pushq	%rbp
LCFI292:
	movq	%rsp, %rbp
LCFI293:
	movl	$0, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC101(%rip), %rdi
	call	_smpGlobal_class
	movl	$0, %eax
	leave
	ret
LFE176:
.globl _test_object_speed
_test_object_speed:
LFB177:
	pushq	%rbp
LCFI294:
	movq	%rsp, %rbp
LCFI295:
	subq	$96, %rsp
LCFI296:
	leaq	-32(%rbp), %rdi
	movl	$20000, %esi
	call	_smpInteger_init_clong
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_speedtest_fun
	movl	$0, %eax
	leave
	ret
LFE177:
.globl _speedtest_fun
_speedtest_fun:
LFB178:
	pushq	%rbp
LCFI297:
	movq	%rsp, %rbp
LCFI298:
	subq	$416, %rsp
LCFI299:
	movq	%rdi, -344(%rbp)
	movl	%esi, -292(%rbp)
	movq	%rdx, -304(%rbp)
	cmpl	$1, -292(%rbp)
	jne	L562
	movq	-304(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -8(%rbp)
	jmp	L564
L562:
	leaq	-336(%rbp), %rdi
	movl	$0, %esi
	call	_smpInteger_init_clong
	movq	-336(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -8(%rbp)
L564:
	leaq	-64(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpInteger_mul
	movq	16(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-96(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_cmp_cint
	testl	%eax, %eax
	js	L565
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-344(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-344(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-344(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L561
L565:
	leaq	-160(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpObject_cons
	leaq	-192(%rbp), %rdi
	leaq	-160(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpObject_cons
	leaq	-224(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpInteger_inc
	leaq	-256(%rbp), %rdi
	leaq	-224(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_speedtest_fun
	leaq	-288(%rbp), %rdi
	leaq	-256(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpObject_cons
	movq	-288(%rbp), %rax
	movq	-344(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-280(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-272(%rbp), %rax
	movq	-344(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-264(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, 24(%rdx)
L561:
	movq	-344(%rbp), %rax
	leave
	ret
LFE178:
	.cstring
LC102:
	.ascii "\12\12Tests succeeded.\12\0"
LC103:
	.ascii "\12\12Tests failed.\12\0"
	.text
.globl _run_tests
_run_tests:
LFB179:
	pushq	%rbp
LCFI300:
	movq	%rsp, %rbp
LCFI301:
	subq	$16, %rsp
LCFI302:
	movl	$1, -4(%rbp)
	movl	$0, %eax
	call	_test_lists
	andl	%eax, -4(%rbp)
	movl	$0, %eax
	call	_test_listbuf
	andl	%eax, -4(%rbp)
	movl	$0, %eax
	call	_test_bool
	andl	%eax, -4(%rbp)
	movl	$0, %eax
	call	_test_nums
	andl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L570
	leaq	LC102(%rip), %rdi
	call	_puts
	jmp	L572
L570:
	leaq	LC103(%rip), %rdi
	call	_puts
L572:
	movl	-4(%rbp), %eax
	leave
	ret
LFE179:
.globl _gc_mark_recursive
_gc_mark_recursive:
LFB180:
	pushq	%rbp
LCFI303:
	movq	%rsp, %rbp
LCFI304:
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	leave
	ret
LFE180:
.globl _smp_malloc_fun
_smp_malloc_fun:
LFB181:
	pushq	%rbp
LCFI305:
	movq	%rsp, %rbp
LCFI306:
	subq	$16, %rsp
LCFI307:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	_GC_malloc
	leave
	ret
LFE181:
.globl _smp_realloc_size
_smp_realloc_size:
LFB182:
	pushq	%rbp
LCFI308:
	movq	%rsp, %rbp
LCFI309:
	subq	$32, %rsp
LCFI310:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdi
	call	_GC_realloc
	leave
	ret
LFE182:
.globl _smp_free_size
_smp_free_size:
LFB183:
	pushq	%rbp
LCFI311:
	movq	%rsp, %rbp
LCFI312:
	subq	$16, %rsp
LCFI313:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	call	_GC_free
	leave
	ret
LFE183:
	.cstring
LC104:
	.ascii "Internal Error: \0"
	.text
.globl _internal_error
_internal_error:
LFB184:
	pushq	%rbp
LCFI314:
	movq	%rsp, %rbp
LCFI315:
	subq	$224, %rsp
LCFI316:
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	movzbl	%al, %eax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rdx
	leaq	0(,%rdx,4), %rax
	leaq	L583(%rip), %rdx
	movq	%rdx, -224(%rbp)
	subq	%rax, -224(%rbp)
	leaq	-1(%rbp), %rax
	movq	-224(%rbp), %rdx
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L583:
	movq	%rdi, -216(%rbp)
	leaq	-208(%rbp), %rax
	movl	$8, (%rax)
	leaq	-208(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-208(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-208(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$16, %edx
	movl	$1, %esi
	leaq	LC104(%rip), %rdi
	call	_fwrite
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rsi
	call	_vfprintf
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	call	_fputc
	movq	$0, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	$1, (%rax)
	leave
	ret
LFE184:
	.cstring
LC105:
	.ascii "Fatal Error: \0"
	.text
.globl _fatal_error
_fatal_error:
LFB185:
	pushq	%rbp
LCFI317:
	movq	%rsp, %rbp
LCFI318:
	subq	$224, %rsp
LCFI319:
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	movzbl	%al, %eax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rdx
	leaq	0(,%rdx,4), %rax
	leaq	L586(%rip), %rdx
	movq	%rdx, -224(%rbp)
	subq	%rax, -224(%rbp)
	leaq	-1(%rbp), %rax
	movq	-224(%rbp), %rdx
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L586:
	movq	%rdi, -216(%rbp)
	leaq	-208(%rbp), %rax
	movl	$8, (%rax)
	leaq	-208(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-208(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-208(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$13, %edx
	movl	$1, %esi
	leaq	LC105(%rip), %rdi
	call	_fwrite
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rsi
	call	_vfprintf
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	call	_fputc
	movq	$0, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	$1, (%rax)
	leave
	ret
LFE185:
.globl _is_power_of_2
_is_power_of_2:
LFB186:
	pushq	%rbp
LCFI320:
	movq	%rsp, %rbp
LCFI321:
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L589
	movq	-8(%rbp), %rax
	decq	%rax
	andq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	L589
	movl	$1, -12(%rbp)
	jmp	L592
L589:
	movl	$0, -12(%rbp)
L592:
	movl	-12(%rbp), %eax
	leave
	ret
LFE186:
.globl _next_power_of_2
_next_power_of_2:
LFB187:
	pushq	%rbp
LCFI322:
	movq	%rsp, %rbp
LCFI323:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	%rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$2, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$4, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$16, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	orq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	incq	%rax
	leave
	ret
LFE187:
	.cstring
LC106:
	.ascii "Array\0"
LC107:
	.ascii "add!\0"
LC108:
	.ascii "at\0"
LC109:
	.ascii "at=\0"
LC110:
	.ascii "copy\0"
LC111:
	.ascii "map\0"
LC112:
	.ascii "&optional\0"
LC113:
	.ascii "reduce\0"
LC114:
	.ascii "reverse\0"
LC115:
	.ascii "reverse!\0"
LC116:
	.ascii "sort\0"
LC117:
	.ascii "sort!\0"
LC118:
	.ascii "to_a\0"
LC119:
	.ascii "to_list\0"
	.text
.globl _smpArray_create_class
_smpArray_create_class:
LFB188:
	pushq	%rbp
LCFI324:
	movq	%rsp, %rbp
LCFI325:
	subq	$640, %rsp
LCFI326:
	movl	$0, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC106(%rip), %rdi
	call	_smpGlobal_class
	leaq	-32(%rbp), %rdi
	leaq	LC106(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpArray_add_now@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC107(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-96(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC37(%rip), %rcx
	movl	$2, %edx
	movq	_smpArray_at@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC108(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-128(%rbp), %rdi
	leaq	LC37(%rip), %r9
	leaq	LC86(%rip), %r8
	leaq	LC37(%rip), %rcx
	movl	$3, %edx
	movq	_smpArray_at_assign@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC109(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-160(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpArray_clear@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC20(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-192(%rbp), %rdi
	leaq	LC106(%rip), %rcx
	movl	$1, %edx
	movq	_smpArray_copy@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-192(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC110(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-224(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpArray_gc_mark@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC57(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-256(%rbp), %rdi
	leaq	LC26(%rip), %r8
	leaq	LC106(%rip), %rcx
	movl	$2, %edx
	movq	_smpArray_map@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC111(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-288(%rbp), %rdi
	leaq	LC37(%rip), %rax
	movq	%rax, (%rsp)
	leaq	LC112(%rip), %r9
	leaq	LC26(%rip), %r8
	leaq	LC106(%rip), %rcx
	movl	$4, %edx
	movq	_smpArray_reduce@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC113(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-320(%rbp), %rdi
	leaq	LC106(%rip), %rcx
	movl	$1, %edx
	movq	_smpArray_reverse@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-304(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC114(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-352(%rbp), %rdi
	leaq	LC106(%rip), %rcx
	movl	$1, %edx
	movq	_smpArray_reverse_now@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-344(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-336(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC115(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-384(%rbp), %rdi
	leaq	LC26(%rip), %r9
	leaq	LC112(%rip), %r8
	leaq	LC106(%rip), %rcx
	movl	$3, %edx
	movq	_smpArray_sort@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-376(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-368(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC116(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-416(%rbp), %rdi
	leaq	LC26(%rip), %r9
	leaq	LC112(%rip), %r8
	leaq	LC106(%rip), %rcx
	movl	$3, %edx
	movq	_smpArray_sort_now@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-408(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-400(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC117(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-448(%rbp), %rdi
	leaq	LC106(%rip), %rcx
	movl	$1, %edx
	movq	_smpArray_to_a@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-440(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-432(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC118(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-480(%rbp), %rdi
	leaq	LC28(%rip), %rcx
	movl	$1, %edx
	movq	_smpArray_to_list@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-480(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-472(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-464(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC119(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-512(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpArray_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-512(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-496(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-544(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpArray_write@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-576(%rbp), %rdi
	movq	-544(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-536(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-528(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE188:
.globl _smpArray_add_now
_smpArray_add_now:
LFB189:
	pushq	%rbp
LCFI327:
	movq	%rsp, %rbp
LCFI328:
	pushq	%rbx
LCFI329:
	subq	$40, %rsp
LCFI330:
	movq	%rdi, %rbx
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	salq	$5, %rsi
	movq	-24(%rbp), %rdi
	call	_smpArray_resize
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rbp), %rax
	movq	%rax, (%rbx)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE189:
.globl _smpArray_at
_smpArray_at:
LFB190:
	pushq	%rbp
LCFI331:
	movq	%rsp, %rbp
LCFI332:
	subq	$176, %rsp
LCFI333:
	movq	%rdi, -136(%rbp)
	movl	%esi, -116(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC86(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L601
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L603
	movq	-128(%rbp), %rsi
	movl	$32, %edx
	movq	-136(%rbp), %rdi
	call	_memmove
	jmp	L600
L603:
	leaq	-80(%rbp), %rdi
	leaq	LC86(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-112(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-136(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L600
L601:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_to_clong
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L606
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L600
L606:
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-136(%rbp), %rdi
	call	_smpArray_at_c
L600:
	movq	-136(%rbp), %rax
	leave
	ret
LFE190:
	.cstring
LC120:
	.ascii "IndexOutOfBoundsException\0"
LC121:
	.ascii "%ld\0"
	.text
.globl _smpArray_at_c
_smpArray_at_c:
LFB191:
	pushq	%rbp
LCFI334:
	movq	%rsp, %rbp
LCFI335:
	addq	$-128, %rsp
LCFI336:
	movq	%rdi, -96(%rbp)
	movq	%rsi, -88(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	ja	L610
	leaq	-48(%rbp), %rdi
	leaq	LC120(%rip), %rsi
	call	_smp_getclass
	leaq	-80(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC121(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-96(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L609
L610:
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rsi
	movl	$32, %edx
	movq	-96(%rbp), %rdi
	call	_memmove
L609:
	movq	-96(%rbp), %rax
	leave
	ret
LFE191:
.globl _smpArray_at_assign
_smpArray_at_assign:
LFB192:
	pushq	%rbp
LCFI337:
	movq	%rsp, %rbp
LCFI338:
	subq	$208, %rsp
LCFI339:
	movq	%rdi, -136(%rbp)
	movl	%esi, -116(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC86(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L615
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L617
	movq	-128(%rbp), %rsi
	movl	$32, %edx
	movq	-136(%rbp), %rdi
	call	_memmove
	jmp	L614
L617:
	leaq	-80(%rbp), %rdi
	leaq	LC86(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-112(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-136(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L614
L615:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_to_clong
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L620
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L614
L620:
	movq	-128(%rbp), %rdx
	addq	$32, %rdx
	movq	-8(%rbp), %rsi
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-136(%rbp), %rdi
	call	_smpArray_at_assign_c
L614:
	movq	-136(%rbp), %rax
	leave
	ret
LFE192:
.globl _smpArray_at_assign_c
_smpArray_at_assign_c:
LFB193:
	pushq	%rbp
LCFI340:
	movq	%rsp, %rbp
LCFI341:
	addq	$-128, %rsp
LCFI342:
	movq	%rdi, -96(%rbp)
	movq	%rsi, -88(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	ja	L624
	leaq	-48(%rbp), %rdi
	leaq	LC120(%rip), %rsi
	call	_smp_getclass
	leaq	-80(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC121(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-96(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L623
L624:
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	48(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	56(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	64(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	72(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 24(%rdx)
L623:
	movq	-96(%rbp), %rax
	leave
	ret
LFE193:
.globl _smpArray_clear
_smpArray_clear:
LFB194:
	pushq	%rbp
LCFI343:
	movq	%rsp, %rbp
LCFI344:
	pushq	%rbx
LCFI345:
	subq	$24, %rsp
LCFI346:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	40(%rbp), %rax
	movq	(%rax), %rdi
	call	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE194:
.globl _smpArray_copy
_smpArray_copy:
LFB195:
	pushq	%rbp
LCFI347:
	movq	%rsp, %rbp
LCFI348:
	subq	$64, %rsp
LCFI349:
	movq	%rdi, -56(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	call	_next_power_of_2
	movq	%rax, %rdi
	salq	$5, %rdi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L631
	movq	$-1, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	call	___memcpy_chk
	jmp	L633
L631:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	call	___inline_memcpy_chk
L633:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rdi
	call	_smpArray_init_array
	movq	-56(%rbp), %rax
	leave
	ret
LFE195:
___inline_memcpy_chk:
LFB47:
	pushq	%rbp
LCFI350:
	movq	%rsp, %rbp
LCFI351:
	subq	$32, %rsp
LCFI352:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$-1, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	call	___memcpy_chk
	leave
	ret
LFE47:
.globl _smpArray_init
_smpArray_init:
LFB196:
	pushq	%rbp
LCFI353:
	movq	%rsp, %rbp
LCFI354:
	pushq	%rbx
LCFI355:
	subq	$104, %rsp
LCFI356:
	movq	%rdi, -104(%rbp)
	movq	$0, -24(%rbp)
	movl	$4, %edi
	call	_next_power_of_2
	movq	%rax, %rdi
	salq	$5, %rdi
	call	_GC_malloc
	movq	%rax, -32(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L638
	movq	$-1, %rbx
	movl	$4, %edi
	call	_next_power_of_2
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	-32(%rbp), %rdi
	movq	%rbx, %rcx
	movl	$0, %esi
	call	___memset_chk
	jmp	L640
L638:
	movl	$4, %edi
	call	_next_power_of_2
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	-32(%rbp), %rdi
	movl	$0, %esi
	call	___inline_memset_chk
L640:
	leaq	-96(%rbp), %rdi
	leaq	LC106(%rip), %rsi
	call	_smp_getclass
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	-64(%rbp), %rdi
	call	_obj_init
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-104(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	leave
	ret
LFE196:
.globl _smpArray_init_array
_smpArray_init_array:
LFB197:
	pushq	%rbp
LCFI357:
	movq	%rsp, %rbp
LCFI358:
	pushq	%rbx
LCFI359:
	subq	$104, %rsp
LCFI360:
	movq	%rdi, %rbx
	movq	%rsi, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-96(%rbp), %rdi
	leaq	LC106(%rip), %rsi
	call	_smp_getclass
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	-64(%rbp), %rdi
	call	_obj_init
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$104, %rsp
	popq	%rbx
	leave
	ret
LFE197:
.globl _smpArray_gc_mark
_smpArray_gc_mark:
LFB198:
	pushq	%rbp
LCFI361:
	movq	%rsp, %rbp
LCFI362:
	subq	$96, %rsp
LCFI363:
	movq	%rdi, -56(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	L645
L646:
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-8(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edi
	call	_gc_mark_recursive
	incq	-16(%rbp)
L645:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	L646
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-56(%rbp), %rax
	leave
	ret
LFE198:
	.cstring
LC122:
	.ascii "Index %ld is out of bounds.\0"
	.text
.globl _smpArray_get_c
_smpArray_get_c:
LFB199:
	pushq	%rbp
LCFI364:
	movq	%rsp, %rbp
LCFI365:
	addq	$-128, %rsp
LCFI366:
	movq	%rdi, -96(%rbp)
	movq	%rsi, -88(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jbe	L650
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rsi
	movl	$32, %edx
	movq	-96(%rbp), %rdi
	call	_memmove
	jmp	L649
L650:
	leaq	-48(%rbp), %rdi
	leaq	LC120(%rip), %rsi
	call	_smp_getclass
	leaq	-80(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC122(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-96(%rbp), %rdi
	call	_smpGlobal_throw
L649:
	movq	-96(%rbp), %rax
	leave
	ret
LFE199:
.globl _smpArray_length
_smpArray_length:
LFB200:
	pushq	%rbp
LCFI367:
	movq	%rsp, %rbp
LCFI368:
	pushq	%rbx
LCFI369:
	subq	$24, %rsp
LCFI370:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_smpInteger_init_clong
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE200:
.globl _smpArray_map
_smpArray_map:
LFB201:
	pushq	%rbp
LCFI371:
	movq	%rsp, %rbp
LCFI372:
	pushq	%rbx
LCFI373:
	subq	$232, %rsp
LCFI374:
	movq	%rdi, -168(%rbp)
	movl	%esi, -116(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC26(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L657
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L659
	movq	-128(%rbp), %rsi
	movl	$32, %edx
	movq	-168(%rbp), %rdi
	call	_memmove
	jmp	L656
L659:
	leaq	-80(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-112(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-168(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L656
L657:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	salq	$5, %rdi
	call	_GC_malloc
	movq	%rax, -48(%rbp)
	movq	$0, -32(%rbp)
	jmp	L662
L663:
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rbx
	addq	-48(%rbp), %rbx
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-24(%rbp), %rcx
	leaq	-160(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	movl	$1, %esi
	call	_smpFunction_call
	movq	-160(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-48(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L664
	movq	-48(%rbp), %rdi
	call	_GC_free
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	addq	-48(%rbp), %rsi
	movl	$32, %edx
	movq	-168(%rbp), %rdi
	call	_memmove
	jmp	L656
L664:
	incq	-32(%rbp)
L662:
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	L663
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-168(%rbp), %rdi
	call	_smpArray_init_array
L656:
	movq	-168(%rbp), %rax
	addq	$232, %rsp
	popq	%rbx
	leave
	ret
LFE201:
.globl _smpArray_reduce
_smpArray_reduce:
LFB202:
	pushq	%rbp
LCFI375:
	movq	%rsp, %rbp
LCFI376:
	subq	$352, %rsp
LCFI377:
	movq	%rdi, -280(%rbp)
	movl	%esi, -228(%rbp)
	movq	%rdx, -240(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	-240(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -72(%rbp)
	cmpl	$1, -228(%rbp)
	jle	L669
	movq	-240(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	jmp	L671
L669:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	incq	-8(%rbp)
L671:
	movq	-80(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L672
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L674
	movq	-96(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-72(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L668
L674:
	leaq	-128(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smp_getclass
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	leaq	-160(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-280(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L668
L672:
	movq	-64(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	L677
L678:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -192(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -184(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -176(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -168(%rbp)
	leaq	-272(%rbp), %rdi
	leaq	-224(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	movl	$2, %esi
	call	_smpFunction_call
	movq	-272(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L679
	movq	-224(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-216(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-208(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-200(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L668
L679:
	incq	-8(%rbp)
L677:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	ja	L678
	movq	-224(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-216(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-208(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-200(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 24(%rdx)
L668:
	movq	-280(%rbp), %rax
	leave
	ret
LFE202:
.globl _smpArray_resize
_smpArray_resize:
LFB203:
	pushq	%rbp
LCFI378:
	movq	%rsp, %rbp
LCFI379:
	subq	$32, %rsp
LCFI380:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$4, -16(%rbp)
	jbe	L684
	movq	-16(%rbp), %rdi
	call	_is_power_of_2
	testl	%eax, %eax
	je	L684
	movq	-16(%rbp), %rdi
	call	_next_power_of_2
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	call	_GC_realloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -20(%rbp)
	jmp	L687
L684:
	movl	$0, -20(%rbp)
L687:
	movl	-20(%rbp), %eax
	leave
	ret
LFE203:
.globl _smpArray_reverse
_smpArray_reverse:
LFB204:
	pushq	%rbp
LCFI381:
	movq	%rsp, %rbp
LCFI382:
	subq	$96, %rsp
LCFI383:
	movq	%rdi, -56(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	leaq	-32(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpArray_copy
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L690
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L689
L690:
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-56(%rbp), %rdi
	call	_smpArray_reverse_now
L689:
	movq	-56(%rbp), %rax
	leave
	ret
LFE204:
.globl _smpArray_reverse_now
_smpArray_reverse_now:
LFB205:
	pushq	%rbp
LCFI384:
	movq	%rsp, %rbp
LCFI385:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L695
L696:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	leaq	-32(%rax), %rdx
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rax
	leaq	-32(%rax), %rdx
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rdx)
	incq	-8(%rbp)
L695:
	movq	-24(%rbp), %rax
	shrq	%rax
	cmpq	-8(%rbp), %rax
	ja	L696
	movq	16(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-88(%rbp), %rax
	leave
	ret
LFE205:
.globl _smpArray_sort
_smpArray_sort:
LFB206:
	pushq	%rbp
LCFI386:
	movq	%rsp, %rbp
LCFI387:
	subq	$96, %rsp
LCFI388:
	movq	%rdi, -56(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	leaq	-32(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpArray_copy
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L700
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L699
L700:
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-56(%rbp), %rdi
	call	_smpArray_sort_now
L699:
	movq	-56(%rbp), %rax
	leave
	ret
LFE206:
.globl _smpArray_sort_now
_smpArray_sort_now:
LFB207:
	pushq	%rbp
LCFI389:
	movq	%rsp, %rbp
LCFI390:
	subq	$224, %rsp
LCFI391:
	movq	%rdi, -184(%rbp)
	movl	%esi, -164(%rbp)
	movq	%rdx, -176(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -72(%rbp)
	cmpl	$0, -164(%rbp)
	jle	L705
	movq	-176(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L705
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L708
	movq	-96(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-72(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L704
L708:
	leaq	-128(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smp_getclass
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	leaq	-160(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-184(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L704
L705:
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	salq	$5, %rdi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpArray_sort_timmy
	movq	-8(%rbp), %rdi
	call	_GC_free
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L711
	movq	-64(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L704
L711:
	movq	16(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 24(%rdx)
L704:
	movq	-184(%rbp), %rax
	leave
	ret
LFE207:
.globl _smp_cmp_helper
_smp_cmp_helper:
LFB208:
	pushq	%rbp
LCFI392:
	movq	%rsp, %rbp
LCFI393:
	pushq	%rbx
LCFI394:
	subq	$216, %rsp
LCFI395:
	movq	%rdi, -104(%rbp)
	movl	$0, -20(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	je	L715
	movq	48(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	96(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rbx
	leaq	-144(%rbp), %rdi
	leaq	-96(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	movl	$2, %esi
	call	_smpFunction_call
	movq	-144(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-104(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	je	L717
	movl	$-1, -148(%rbp)
	jmp	L719
L717:
	movl	$1, -148(%rbp)
L719:
	movl	-148(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	L720
L715:
	movq	-104(%rbp), %rdi
	movq	80(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	96(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	104(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_cmp_fast
	movl	%eax, -20(%rbp)
L720:
	movl	-20(%rbp), %eax
	addq	$216, %rsp
	popq	%rbx
	leave
	ret
LFE208:
.globl _smpArray_sort_merge
_smpArray_sort_merge:
LFB209:
	pushq	%rbp
LCFI396:
	movq	%rsp, %rbp
LCFI397:
	subq	$192, %rsp
LCFI398:
	movq	%rdi, -152(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	%rcx, -104(%rbp)
	movl	$0, -4(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	cmpq	$1, -96(%rbp)
	ja	L723
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L722
L723:
	cmpq	$15, -96(%rbp)
	ja	L726
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpArray_sort_insertion
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L730
	movq	-80(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L722
L726:
	movq	-96(%rbp), %rax
	shrq	%rax
	movq	%rax, -16(%rbp)
	leaq	-144(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpArray_sort_merge
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L731
	movq	-80(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L722
L731:
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	addq	-88(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpArray_sort_merge
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L733
	movq	-80(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-64(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L722
L733:
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-88(%rbp), %rcx
	leaq	-144(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-16(%rbp), %r10
	movq	-88(%rbp), %r11
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rsi, %r9
	movq	%rdx, %r8
	movq	%r10, %rdx
	movq	%r11, %rsi
	call	_smp_merge_sorted_arrays
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L730
	movq	-80(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-64(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L722
L730:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 24(%rdx)
L722:
	movq	-152(%rbp), %rax
	leave
	ret
LFE209:
.globl _smpArray_sort_quick
_smpArray_sort_quick:
LFB210:
	pushq	%rbp
LCFI399:
	movq	%rsp, %rbp
LCFI400:
	subq	$288, %rsp
LCFI401:
	movq	%rdi, -184(%rbp)
	movq	%rsi, -136(%rbp)
	movq	%rdx, -144(%rbp)
	cmpq	$16, -144(%rbp)
	ja	L738
	movq	-144(%rbp), %rdx
	incq	%rdx
	movq	-136(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-184(%rbp), %rdi
	call	_smpArray_sort_insertion
	jmp	L737
L738:
	movq	-144(%rbp), %rax
	shrq	%rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-136(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	L741
L742:
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, 64(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 72(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_cmp_helper
	movl	%eax, -4(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L743
	movq	-128(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-120(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-112(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-104(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L737
L743:
	cmpl	$0, -4(%rbp)
	jle	L745
	incq	-16(%rbp)
	jmp	L742
L745:
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 64(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 80(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 88(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_cmp_helper
	movl	%eax, -4(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L747
	movq	-128(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-120(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-112(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-104(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L737
L747:
	cmpl	$0, -4(%rbp)
	jle	L749
	decq	-24(%rbp)
	jmp	L745
L749:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jg	L741
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-136(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-136(%rbp), %rcx
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-136(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-136(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rdx)
	incq	-16(%rbp)
	decq	-24(%rbp)
L741:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	L742
	cmpq	$0, -24(%rbp)
	jle	L753
	movq	-24(%rbp), %rdx
	leaq	-176(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpArray_sort_quick
	movq	-176(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L753
	movq	-128(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-120(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-112(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-104(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L737
L753:
	movq	-16(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jae	L756
	movq	-16(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	addq	-136(%rbp), %rsi
	leaq	-176(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpArray_sort_quick
	movq	-176(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L756
	movq	-128(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-120(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-112(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-104(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L737
L756:
	movq	-128(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-120(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-112(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-104(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, 24(%rcx)
L737:
	movq	-184(%rbp), %rax
	leave
	ret
LFE210:
.globl _smpArray_sort_timmy
_smpArray_sort_timmy:
LFB211:
	pushq	%rbp
LCFI402:
	movq	%rsp, %rbp
LCFI403:
	pushq	%rbx
LCFI404:
	subq	$1256, %rsp
LCFI405:
	movq	%rdi, -1224(%rbp)
	movq	%rsi, -1160(%rbp)
	movq	%rdx, -1168(%rbp)
	movq	%rcx, -1176(%rbp)
	leaq	-1152(%rbp), %rdi
	movl	$1072, %edx
	movl	$0, %esi
	call	_memset
	movq	$0, -40(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	jmp	L761
L762:
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-1168(%rbp), %rax
	movq	%rax, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	movq	-40(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	addq	-1160(%rbp), %rsi
	movq	%rcx, %rax
	salq	$4, %rax
	leaq	-16(%rbp), %rcx
	addq	%rcx, %rax
	leaq	-1136(%rax), %rbx
	leaq	-80(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_timmy_get_run
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$1136, %rax
	movq	8(%rax), %rax
	addq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L766
	movq	-80(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	-1224(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-64(%rbp), %rax
	movq	-1224(%rbp), %rbx
	movq	%rax, 16(%rbx)
	movq	-56(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L760
L767:
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rbp), %rcx
	addq	%rcx, %rax
	subq	$1136, %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$1136, %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rax
	decq	%rax
	salq	$4, %rax
	leaq	-16(%rbp), %rdx
	addq	%rdx, %rax
	subq	$1136, %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	decq	%rax
	salq	$4, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$1136, %rax
	movq	(%rax), %r10
	leaq	-1216(%rbp), %r11
	movq	-1176(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%r10, %rsi
	movq	%r11, %rdi
	call	_smp_merge_sorted_arrays
	movq	-1216(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-1208(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-1192(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L768
	movq	-80(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	-1224(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-64(%rbp), %rax
	movq	-1224(%rbp), %rbx
	movq	%rax, 16(%rbx)
	movq	-56(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L760
L768:
	movq	-32(%rbp), %rcx
	decq	%rcx
	movq	-32(%rbp), %rax
	decq	%rax
	salq	$4, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$1136, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$1136, %rax
	movq	8(%rax), %rax
	addq	%rax, %rdx
	movq	%rcx, %rax
	salq	$4, %rax
	leaq	-16(%rbp), %rcx
	addq	%rcx, %rax
	subq	$1136, %rax
	movq	%rdx, 8(%rax)
	decq	-32(%rbp)
L766:
	cmpq	$0, -32(%rbp)
	jle	L770
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$1136, %rax
	movq	8(%rax), %rax
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	decq	%rax
	salq	$4, %rax
	leaq	-16(%rbp), %rcx
	addq	%rcx, %rax
	subq	$1136, %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	ja	L767
L770:
	incq	-32(%rbp)
L761:
	movq	-40(%rbp), %rax
	cmpq	-1168(%rbp), %rax
	jb	L762
	decq	-32(%rbp)
	jmp	L773
L774:
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$1136, %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rbp), %rdx
	addq	%rdx, %rax
	subq	$1136, %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rax
	decq	%rax
	salq	$4, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$1136, %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	decq	%rax
	salq	$4, %rax
	leaq	-16(%rbp), %rdx
	addq	%rdx, %rax
	subq	$1136, %rax
	movq	(%rax), %r10
	leaq	-1216(%rbp), %r11
	movq	-1176(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%r10, %rsi
	movq	%r11, %rdi
	call	_smp_merge_sorted_arrays
	movq	-1216(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-1208(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-1192(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L775
	movq	-80(%rbp), %rax
	movq	-1224(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	-1224(%rbp), %rbx
	movq	%rax, 8(%rbx)
	movq	-64(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	-1224(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L760
L775:
	movq	-32(%rbp), %rcx
	decq	%rcx
	movq	-32(%rbp), %rax
	decq	%rax
	salq	$4, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$1136, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$1136, %rax
	movq	8(%rax), %rax
	addq	%rax, %rdx
	movq	%rcx, %rax
	salq	$4, %rax
	leaq	-16(%rbp), %rcx
	addq	%rcx, %rax
	subq	$1136, %rax
	movq	%rdx, 8(%rax)
	decq	-32(%rbp)
L773:
	cmpq	$0, -32(%rbp)
	jg	L774
	movq	-80(%rbp), %rax
	movq	-1224(%rbp), %rbx
	movq	%rax, (%rbx)
	movq	-72(%rbp), %rax
	movq	-1224(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-1224(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	-1224(%rbp), %rbx
	movq	%rax, 24(%rbx)
L760:
	movq	-1224(%rbp), %rax
	addq	$1256, %rsp
	popq	%rbx
	leave
	ret
LFE211:
.globl _timmy_get_run
_timmy_get_run:
LFB212:
	pushq	%rbp
LCFI406:
	movq	%rsp, %rbp
LCFI407:
	pushq	%rbx
LCFI408:
	subq	$264, %rsp
LCFI409:
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$1, -136(%rbp)
	jne	L780
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$1, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	L782
L780:
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
	movq	-128(%rbp), %rdx
	addq	$32, %rdx
	movq	-32(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, 64(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 72(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_cmp_helper
	movl	%eax, -20(%rbp)
	movq	-120(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L783
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	L782
L783:
	cmpl	$0, -20(%rbp)
	jle	L785
	incq	-32(%rbp)
	jmp	L787
L788:
	movq	-128(%rbp), %rdx
	addq	$32, %rdx
	movq	-32(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, 64(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 72(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_cmp_helper
	movl	%eax, -20(%rbp)
	movq	-120(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L789
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	L782
L789:
	cmpl	$0, -20(%rbp)
	jle	L791
	incq	-32(%rbp)
L787:
	movq	-32(%rbp), %rax
	incq	%rax
	cmpq	-136(%rbp), %rax
	jb	L788
L791:
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	incq	-32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -40(%rbp)
	jmp	L793
L794:
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rax
	leaq	-32(%rax), %rdx
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax
	leaq	-32(%rax), %rdx
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rdx)
	incq	-40(%rbp)
L793:
	movq	-56(%rbp), %rax
	shrq	%rax
	cmpq	-40(%rbp), %rax
	ja	L794
	jmp	L796
L785:
	incq	-32(%rbp)
	jmp	L797
L798:
	movq	-128(%rbp), %rdx
	addq	$32, %rdx
	movq	-32(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, 64(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 72(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_cmp_helper
	movl	%eax, -20(%rbp)
	movq	-120(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L799
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	L782
L799:
	cmpl	$0, -20(%rbp)
	jg	L801
	incq	-32(%rbp)
L797:
	movq	-32(%rbp), %rax
	incq	%rax
	cmpq	-136(%rbp), %rax
	jb	L798
L801:
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	incq	-32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
L796:
	cmpq	$0, -32(%rbp)
	je	L803
	cmpq	$15, -32(%rbp)
	ja	L803
	movl	$16, %eax
	cmpq	$16, -136(%rbp)
	cmovbe	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-120(%rbp), %rbx
	leaq	-176(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpArray_sort_insertion
	movq	-176(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rbx)
L803:
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
L782:
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	addq	$264, %rsp
	popq	%rbx
	leave
	ret
LFE212:
.globl _smpArray_sort_insertion
_smpArray_sort_insertion:
LFB213:
	pushq	%rbp
LCFI410:
	movq	%rsp, %rbp
LCFI411:
	subq	$224, %rsp
LCFI412:
	movq	%rdi, -120(%rbp)
	movq	%rsi, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	jmp	L808
L809:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	L810
L811:
	movq	-104(%rbp), %rdx
	addq	$32, %rdx
	movq	-24(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-104(%rbp), %rcx
	leaq	-64(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, 64(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 72(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_cmp_helper
	movl	%eax, -4(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L812
	movq	-64(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L807
L812:
	cmpl	$0, -4(%rbp)
	jle	L815
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-104(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-104(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addq	$32, %rdx
	movq	-24(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	-104(%rbp), %rdx
	addq	$32, %rdx
	movq	-24(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rdx)
	decq	-24(%rbp)
L810:
	cmpq	$0, -24(%rbp)
	jns	L811
L815:
	incq	-16(%rbp)
L808:
	movq	-16(%rbp), %rdx
	movq	-112(%rbp), %rax
	decq	%rax
	cmpq	%rax, %rdx
	jb	L809
	movq	-64(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
L807:
	movq	-120(%rbp), %rax
	leave
	ret
LFE213:
.globl _smp_merge_sorted_arrays
_smp_merge_sorted_arrays:
LFB214:
	pushq	%rbp
LCFI413:
	movq	%rsp, %rbp
LCFI414:
	subq	$208, %rsp
LCFI415:
	movq	%rdi, -112(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L820
	movq	$-1, %rcx
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	-72(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	___memcpy_chk
	jmp	L822
L820:
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	-72(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	___inline_memcpy_chk
L822:
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	L823
L824:
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-104(%rbp), %rcx
	leaq	-64(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, 64(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 72(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_cmp_helper
	movl	%eax, -4(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L825
	jmp	L827
L828:
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-104(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	incq	-32(%rbp)
	incq	-16(%rbp)
L827:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	L828
	movq	-64(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L819
L825:
	cmpl	$0, -4(%rbp)
	jg	L831
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-104(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	incq	-16(%rbp)
	jmp	L833
L831:
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-88(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	incq	-24(%rbp)
L833:
	incq	-32(%rbp)
L823:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jae	L836
	movq	-24(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	L824
	jmp	L836
L837:
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-104(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	incq	-32(%rbp)
	incq	-16(%rbp)
L836:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	L837
	jmp	L839
L840:
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-88(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	incq	-32(%rbp)
	incq	-24(%rbp)
L839:
	movq	-24(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	L840
	movq	-64(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rax, 24(%rdx)
L819:
	movq	-112(%rbp), %rax
	leave
	ret
LFE214:
.globl _smpArray_to_a
_smpArray_to_a:
LFB215:
	pushq	%rbp
LCFI416:
	movq	%rsp, %rbp
LCFI417:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rdi)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rdi)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdi)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE215:
.globl _smpArray_to_list
_smpArray_to_list:
LFB216:
	pushq	%rbp
LCFI418:
	movq	%rsp, %rbp
LCFI419:
	subq	$160, %rsp
LCFI420:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	decq	%rax
	movq	%rax, -8(%rbp)
	jmp	L846
L847:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	leaq	-64(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_cons_c
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L848
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L845
L848:
	decq	-8(%rbp)
L846:
	cmpq	$0, -8(%rbp)
	jns	L847
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
L845:
	movq	-88(%rbp), %rax
	leave
	ret
LFE216:
	.cstring
LC123:
	.ascii "[\0"
LC124:
	.ascii ", \0"
LC125:
	.ascii "]\0"
	.text
.globl _smpArray_to_s
_smpArray_to_s:
LFB217:
	pushq	%rbp
LCFI421:
	movq	%rsp, %rbp
LCFI422:
	subq	$256, %rsp
LCFI423:
	movq	%rdi, -216(%rbp)
	movl	%esi, -164(%rbp)
	movq	%rdx, -176(%rbp)
	leaq	-64(%rbp), %rdi
	leaq	LC123(%rip), %rsi
	call	_smpString_init
	leaq	-96(%rbp), %rdi
	leaq	LC124(%rip), %rsi
	call	_smpString_init
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	L854
L855:
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-8(%rbp), %rdx
	leaq	-208(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC35(%rip), %rsi
	call	_smpObject_funcall
	movq	-208(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -16(%rbp)
	je	L856
	leaq	-208(%rbp), %rdi
	leaq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
L856:
	leaq	-208(%rbp), %rdi
	leaq	-128(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	incq	-16(%rbp)
L854:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	L855
	leaq	-160(%rbp), %rdi
	leaq	LC125(%rip), %rsi
	call	_smpString_init
	leaq	-208(%rbp), %rdi
	leaq	-160(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-64(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-216(%rbp), %rax
	leave
	ret
LFE217:
	.cstring
LC126:
	.ascii "(array\0"
LC127:
	.ascii " \0"
LC128:
	.ascii ")\0"
	.text
.globl _smpArray_write
_smpArray_write:
LFB218:
	pushq	%rbp
LCFI424:
	movq	%rsp, %rbp
LCFI425:
	subq	$256, %rsp
LCFI426:
	movq	%rdi, -216(%rbp)
	movl	%esi, -164(%rbp)
	movq	%rdx, -176(%rbp)
	leaq	-64(%rbp), %rdi
	leaq	LC126(%rip), %rsi
	call	_smpString_init
	leaq	-96(%rbp), %rdi
	leaq	LC127(%rip), %rsi
	call	_smpString_init
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	L861
L862:
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-8(%rbp), %rdx
	leaq	-208(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC61(%rip), %rsi
	call	_smpObject_funcall
	movq	-208(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-208(%rbp), %rdi
	leaq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	leaq	-208(%rbp), %rdi
	leaq	-128(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	incq	-16(%rbp)
L861:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	L862
	leaq	-160(%rbp), %rdi
	leaq	LC128(%rip), %rsi
	call	_smpString_init
	leaq	-208(%rbp), %rdi
	leaq	-160(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-64(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-216(%rbp), %rax
	leave
	ret
LFE218:
.globl _smpBool_init
_smpBool_init:
LFB219:
	pushq	%rbp
LCFI427:
	movq	%rsp, %rbp
LCFI428:
	movq	%rdi, -16(%rbp)
	movl	%esi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L866
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L865
L866:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
L865:
	movq	-16(%rbp), %rax
	leave
	ret
LFE219:
.globl _smpBool_to_cint
_smpBool_to_cint:
LFB220:
	pushq	%rbp
LCFI429:
	movq	%rsp, %rbp
LCFI430:
	movq	40(%rbp), %rdx
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	setne	%al
	movzbl	%al, %eax
	leave
	ret
LFE220:
.globl _smpObject_truep
_smpObject_truep:
LFB221:
	pushq	%rbp
LCFI431:
	movq	%rsp, %rbp
LCFI432:
	pushq	%rbx
LCFI433:
	subq	$56, %rsp
LCFI434:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_smpBool_init
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE221:
.globl _smpObject_truep_c
_smpObject_truep_c:
LFB222:
	pushq	%rbp
LCFI435:
	movq	%rsp, %rbp
LCFI436:
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	leave
	ret
LFE222:
	.cstring
LC129:
	.ascii "true\0"
	.text
.globl _smptrue_to_s
_smptrue_to_s:
LFB223:
	pushq	%rbp
LCFI437:
	movq	%rsp, %rbp
LCFI438:
	pushq	%rbx
LCFI439:
	subq	$24, %rsp
LCFI440:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	LC129(%rip), %rsi
	movq	%rbx, %rdi
	call	_smpString_init
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE223:
.globl _smpBool_and
_smpBool_and:
LFB224:
	pushq	%rbp
LCFI441:
	movq	%rsp, %rbp
LCFI442:
	subq	$64, %rsp
LCFI443:
	movq	%rdi, -32(%rbp)
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	je	L879
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	je	L879
	movl	$1, -20(%rbp)
	jmp	L882
L879:
	movl	$0, -20(%rbp)
L882:
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdi
	call	_smpBool_init
	movq	-32(%rbp), %rax
	leave
	ret
LFE224:
.globl _smpBool_not
_smpBool_not:
LFB225:
	pushq	%rbp
LCFI444:
	movq	%rsp, %rbp
LCFI445:
	pushq	%rbx
LCFI446:
	subq	$56, %rsp
LCFI447:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %esi
	movq	%rbx, %rdi
	call	_smpBool_init
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE225:
.globl _smpBool_or
_smpBool_or:
LFB226:
	pushq	%rbp
LCFI448:
	movq	%rsp, %rbp
LCFI449:
	subq	$64, %rsp
LCFI450:
	movq	%rdi, -32(%rbp)
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	jne	L887
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	je	L889
L887:
	movl	$1, -20(%rbp)
	jmp	L890
L889:
	movl	$0, -20(%rbp)
L890:
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdi
	call	_smpBool_init
	movq	-32(%rbp), %rax
	leave
	ret
LFE226:
.globl _smpBool_xor
_smpBool_xor:
LFB227:
	pushq	%rbp
LCFI451:
	movq	%rsp, %rbp
LCFI452:
	pushq	%r12
LCFI453:
	pushq	%rbx
LCFI454:
	subq	$48, %rsp
LCFI455:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	movl	%eax, %r12d
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	movl	%r12d, %esi
	xorl	%eax, %esi
	movq	%rbx, %rdi
	call	_smpBool_init
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
LFE227:
.globl _smpCollection_create_class
_smpCollection_create_class:
LFB228:
	pushq	%rbp
LCFI456:
	movq	%rsp, %rbp
LCFI457:
	subq	$32, %rsp
LCFI458:
	leaq	-32(%rbp), %rdi
	leaq	LC41(%rip), %rsi
	call	_smp_getclass
	movl	$0, %eax
	leave
	ret
LFE228:
	.cstring
LC130:
	.ascii "IncompleteTokenException\0"
LC131:
	.ascii "InternalException\0"
LC132:
	.ascii "StringFormatException\0"
	.text
.globl _smpException_create_class
_smpException_create_class:
LFB229:
	pushq	%rbp
LCFI459:
	movq	%rsp, %rbp
LCFI460:
	subq	$400, %rsp
LCFI461:
	leaq	-48(%rbp), %rdi
	leaq	LC45(%rip), %rsi
	call	_smp_getclass
	leaq	-80(%rbp), %rdi
	leaq	LC47(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-112(%rbp), %rdi
	leaq	LC50(%rip), %rsi
	call	_smp_getclass
	movq	-8(%rbp), %rsi
	movl	$0, %edx
	leaq	LC9(%rip), %rdi
	call	_smpGlobal_class
	movq	-8(%rbp), %rsi
	movl	$0, %edx
	leaq	LC130(%rip), %rdi
	call	_smpGlobal_class
	movq	-8(%rbp), %rsi
	movl	$0, %edx
	leaq	LC120(%rip), %rdi
	call	_smpGlobal_class
	movq	-8(%rbp), %rsi
	movl	$0, %edx
	leaq	LC16(%rip), %rdi
	call	_smpGlobal_class
	movq	-8(%rbp), %rsi
	movl	$0, %edx
	leaq	LC131(%rip), %rdi
	call	_smpGlobal_class
	movq	-8(%rbp), %rsi
	movl	$0, %edx
	leaq	LC132(%rip), %rdi
	call	_smpGlobal_class
	leaq	-144(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpException_gc_mark@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-336(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC57(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def
	leaq	-176(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpException_clear@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-336(%rbp), %rdi
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC20(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def
	leaq	-208(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpException_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-336(%rbp), %rdi
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-240(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpTypeError_gc_mark@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-336(%rbp), %rdi
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC57(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def
	leaq	-272(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpTypeError_clear@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-336(%rbp), %rdi
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-256(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC20(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def
	leaq	-304(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpTypeError_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-336(%rbp), %rdi
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-288(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE229:
.globl _smpException_backtrace_add_now
_smpException_backtrace_add_now:
LFB230:
	pushq	%rbp
LCFI462:
	movq	%rsp, %rbp
LCFI463:
	pushq	%rbx
LCFI464:
	subq	$136, %rsp
LCFI465:
	movq	%rdi, -104(%rbp)
	leaq	-64(%rbp), %rdi
	leaq	80(%rbp), %rdx
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpObject_cons
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC50(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L899
	movq	40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	L901
L899:
	movq	40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
L901:
	movq	-24(%rbp), %rbx
	leaq	-96(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	movl	$1, %esi
	call	_smpList_append_now
	movq	-96(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-104(%rbp), %rax
	addq	$136, %rsp
	popq	%rbx
	leave
	ret
LFE230:
.globl _smpException_clear
_smpException_clear:
LFB231:
	pushq	%rbp
LCFI466:
	movq	%rsp, %rbp
LCFI467:
	pushq	%rbx
LCFI468:
	subq	$24, %rsp
LCFI469:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	(%rax), %rdi
	call	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE231:
.globl _smpException_gc_mark
_smpException_gc_mark:
LFB232:
	pushq	%rbp
LCFI470:
	movq	%rsp, %rbp
LCFI471:
	pushq	%rbx
LCFI472:
	subq	$56, %rsp
LCFI473:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edi
	call	_gc_mark_recursive
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE232:
	.cstring
	.align 3
LC133:
	.ascii "In smpException_init(), wrong object type (Class expected, %s found).\0"
	.text
.globl _smpException_init
_smpException_init:
LFB233:
	pushq	%rbp
LCFI474:
	movq	%rsp, %rbp
LCFI475:
	subq	$96, %rsp
LCFI476:
	movq	%rdi, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	32(%rbp), %rdi
	leaq	LC33(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L908
	movq	32(%rbp), %rax
	movq	(%rax), %rsi
	leaq	LC133(%rip), %rdi
	movl	$0, %eax
	call	_internal_error
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L907
L908:
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	leaq	-32(%rbp), %rdi
	call	_obj_init
	movl	$40, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
L907:
	movq	-88(%rbp), %rax
	leave
	ret
LFE233:
.globl _smpException_init_fmt
_smpException_init_fmt:
LFB234:
	pushq	%rbp
LCFI477:
	movq	%rsp, %rbp
LCFI478:
	pushq	%rbx
LCFI479:
	subq	$296, %rsp
LCFI480:
	movq	%rdi, %rbx
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	movzbl	%al, %eax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rdx
	leaq	0(,%rdx,4), %rax
	leaq	L913(%rip), %rdx
	movq	%rdx, -272(%rbp)
	subq	%rax, -272(%rbp)
	leaq	-17(%rbp), %rax
	movq	-272(%rbp), %rdx
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L913:
	movq	%rsi, -264(%rbp)
	leaq	-256(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpException_init
	leaq	-224(%rbp), %rax
	movl	$16, (%rax)
	leaq	-224(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-224(%rbp), %rdx
	leaq	48(%rbp), %rax
	movq	%rax, 8(%rdx)
	leaq	-224(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	leaq	-224(%rbp), %rdx
	movq	-264(%rbp), %rsi
	call	_vasprintf
	movq	-256(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$296, %rsp
	popq	%rbx
	leave
	ret
LFE234:
	.cstring
LC134:
	.ascii "%s\12\0"
	.text
.globl _smpException_print
_smpException_print:
LFB235:
	pushq	%rbp
LCFI481:
	movq	%rsp, %rbp
LCFI482:
	pushq	%rbx
LCFI483:
	subq	$40, %rsp
LCFI484:
	movq	%rdi, %rbx
	movq	_smp_stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC134(%rip), %rdx
	movq	%rbx, %rdi
	movl	$0, %eax
	call	_smpGlobal_fprintf
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE235:
	.cstring
LC135:
	.ascii "%s: %s\0"
LC136:
	.ascii "\12\11from \0"
	.text
.globl _smpException_to_s
_smpException_to_s:
LFB236:
	pushq	%rbp
LCFI485:
	movq	%rsp, %rbp
LCFI486:
	subq	$288, %rsp
LCFI487:
	movq	%rdi, -248(%rbp)
	movl	%esi, -196(%rbp)
	movq	%rdx, -208(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -192(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -184(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -176(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -168(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -160(%rbp)
	leaq	-192(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-192(%rbp), %rcx
	movq	32(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-48(%rbp), %rdi
	leaq	LC135(%rip), %rsi
	movl	$0, %eax
	call	_smpString_init_fmt
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L918
	movq	-48(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L917
L918:
	leaq	-240(%rbp), %rdi
	leaq	LC136(%rip), %rsi
	movl	$0, %eax
	call	_smpString_init_fmt
	movq	-240(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	L921
L922:
	leaq	-240(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smp_println
	leaq	-144(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_car
	leaq	-240(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC35(%rip), %rsi
	call	_smpObject_funcall
	movq	-240(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L923
	leaq	-240(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	call	_obj_clear
	leaq	-240(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	call	_obj_clear
	movq	-80(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L917
L923:
	leaq	-240(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	leaq	-240(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
L921:
	cmpq	$0, -8(%rbp)
	jne	L922
	leaq	-240(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	call	_obj_clear
	movq	-48(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 24(%rdx)
L917:
	movq	-248(%rbp), %rax
	leave
	ret
LFE236:
.globl _smpTypeError_clear
_smpTypeError_clear:
LFB237:
	pushq	%rbp
LCFI488:
	movq	%rsp, %rbp
LCFI489:
	pushq	%rbx
LCFI490:
	subq	$24, %rsp
LCFI491:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	(%rax), %rdi
	call	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE237:
.globl _smpTypeError_gc_mark
_smpTypeError_gc_mark:
LFB238:
	pushq	%rbp
LCFI492:
	movq	%rsp, %rbp
LCFI493:
	pushq	%rbx
LCFI494:
	subq	$56, %rsp
LCFI495:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edi
	call	_gc_mark_recursive
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	48(%rdx), %rax
	movq	%rax, (%rsp)
	movq	56(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edi
	call	_gc_mark_recursive
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE238:
.globl _smpTypeError_init
_smpTypeError_init:
LFB239:
	pushq	%rbp
LCFI496:
	movq	%rsp, %rbp
LCFI497:
	pushq	%rbx
LCFI498:
	subq	$168, %rsp
LCFI499:
	movq	%rdi, %rbx
	movq	%rsi, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -152(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -144(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -136(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	LC50(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-48(%rbp), %rdi
	call	_obj_init
	movl	$80, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rdx)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rdx)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rdx)
	movq	-96(%rbp), %rax
	movq	%rax, 64(%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, 72(%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$168, %rsp
	popq	%rbx
	leave
	ret
LFE239:
.globl _smpTypeError_init_detailed
_smpTypeError_init_detailed:
LFB240:
	pushq	%rbp
LCFI500:
	movq	%rsp, %rbp
LCFI501:
	pushq	%rbx
LCFI502:
	subq	$392, %rsp
LCFI503:
	movq	%rdi, %rbx
	movq	%rsi, -376(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	movzbl	%al, %eax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rcx
	leaq	0(,%rcx,4), %rax
	leaq	L934(%rip), %rcx
	movq	%rcx, -392(%rbp)
	subq	%rax, -392(%rbp)
	leaq	-17(%rbp), %rax
	movq	-392(%rbp), %rcx
	jmp	*%rcx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L934:
	movq	%rdx, -384(%rbp)
	movq	$0, -368(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -360(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -352(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -344(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -336(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -296(%rbp)
	leaq	-224(%rbp), %rax
	movl	$24, (%rax)
	leaq	-224(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-224(%rbp), %rdx
	leaq	48(%rbp), %rax
	movq	%rax, 8(%rdx)
	leaq	-224(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	-224(%rbp), %rdx
	movq	-384(%rbp), %rsi
	leaq	-368(%rbp), %rdi
	call	_vasprintf
	leaq	-288(%rbp), %rdi
	leaq	LC50(%rip), %rsi
	call	_smp_getclass
	movq	-264(%rbp), %rax
	movq	%rax, %rsi
	leaq	-256(%rbp), %rdi
	call	_obj_init
	movl	$80, %edi
	call	_GC_malloc
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	movq	-368(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-360(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-352(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-344(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	-336(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-328(%rbp), %rax
	movq	%rax, 40(%rdx)
	movq	-320(%rbp), %rax
	movq	%rax, 48(%rdx)
	movq	-312(%rbp), %rax
	movq	%rax, 56(%rdx)
	movq	-304(%rbp), %rax
	movq	%rax, 64(%rdx)
	movq	-296(%rbp), %rax
	movq	%rax, 72(%rdx)
	movq	-256(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$392, %rsp
	popq	%rbx
	leave
	ret
LFE240:
.globl _smpTypeError_init_fmt
_smpTypeError_init_fmt:
LFB241:
	pushq	%rbp
LCFI504:
	movq	%rsp, %rbp
LCFI505:
	pushq	%rbx
LCFI506:
	subq	$376, %rsp
LCFI507:
	movq	%rdi, %rbx
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	movzbl	%al, %eax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rdx
	leaq	0(,%rdx,4), %rax
	leaq	L937(%rip), %rdx
	movq	%rdx, -384(%rbp)
	subq	%rax, -384(%rbp)
	leaq	-17(%rbp), %rax
	movq	-384(%rbp), %rdx
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L937:
	movq	%rsi, -376(%rbp)
	leaq	-224(%rbp), %rax
	movl	$16, (%rax)
	leaq	-224(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-224(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-224(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	-224(%rbp), %rdx
	movq	-376(%rbp), %rsi
	leaq	-368(%rbp), %rdi
	call	_vasprintf
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -360(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -352(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -344(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -320(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -312(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -304(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -296(%rbp)
	leaq	-288(%rbp), %rdi
	leaq	LC50(%rip), %rsi
	call	_smp_getclass
	movq	-264(%rbp), %rax
	movq	%rax, %rsi
	leaq	-256(%rbp), %rdi
	call	_obj_init
	movl	$80, %edi
	call	_GC_malloc
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	movq	-368(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-360(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-352(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-344(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	-336(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-328(%rbp), %rax
	movq	%rax, 40(%rdx)
	movq	-320(%rbp), %rax
	movq	%rax, 48(%rdx)
	movq	-312(%rbp), %rax
	movq	%rax, 56(%rdx)
	movq	-304(%rbp), %rax
	movq	%rax, 64(%rdx)
	movq	-296(%rbp), %rax
	movq	%rax, 72(%rdx)
	movq	-256(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$376, %rsp
	popq	%rbx
	leave
	ret
LFE241:
	.cstring
LC137:
	.ascii "%s: %s expected, %st found.\0"
LC138:
	.ascii "%s: unexpected %st.\0"
LC139:
	.ascii "\12\0"
	.text
.globl _smpTypeError_to_s
_smpTypeError_to_s:
LFB242:
	pushq	%rbp
LCFI508:
	movq	%rsp, %rbp
LCFI509:
	subq	$464, %rsp
LCFI510:
	movq	%rdi, -360(%rbp)
	movl	%esi, -308(%rbp)
	movq	%rdx, -320(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -304(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -296(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -288(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -280(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -272(%rbp)
	movq	40(%rdx), %rax
	movq	%rax, -264(%rbp)
	movq	48(%rdx), %rax
	movq	%rax, -256(%rbp)
	movq	56(%rdx), %rax
	movq	%rax, -248(%rbp)
	movq	64(%rdx), %rax
	movq	%rax, -240(%rbp)
	movq	72(%rdx), %rax
	movq	%rax, -232(%rbp)
	movq	-304(%rbp), %rax
	testq	%rax, %rax
	je	L940
	movq	-304(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	call	_smpString_init
	jmp	L942
L940:
	movq	-264(%rbp), %rax
	testq	%rax, %rax
	je	L943
	movq	-264(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-160(%rbp), %rdi
	call	_smpString_init
	movq	32(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-192(%rbp), %rdi
	call	_smpString_init
	leaq	-352(%rbp), %rdi
	movq	-256(%rbp), %rax
	movq	%rax, 64(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 80(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 88(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC137(%rip), %rsi
	movl	$0, %eax
	call	_smpGlobal_sprintf
	movq	-352(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L942
L943:
	movq	32(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-224(%rbp), %rdi
	call	_smpString_init
	leaq	-352(%rbp), %rdi
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC138(%rip), %rsi
	movl	$0, %eax
	call	_smpGlobal_sprintf
	movq	-352(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -8(%rbp)
L942:
	movq	-280(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L945
	movq	-32(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L939
L945:
	leaq	-64(%rbp), %rdi
	leaq	LC139(%rip), %rsi
	call	_smpString_init
	leaq	-352(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-352(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L948
	movq	-32(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L939
L948:
	leaq	-352(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	call	_obj_clear
	leaq	-96(%rbp), %rdi
	leaq	LC136(%rip), %rsi
	movl	$0, %eax
	call	_smpString_init_fmt
	leaq	-128(%rbp), %rdi
	leaq	-96(%rbp), %rcx
	movq	-296(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-288(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC35(%rip), %rsi
	call	_smpObject_funcall
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L950
	movq	-128(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-120(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-112(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-104(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L939
L950:
	leaq	-352(%rbp), %rdi
	leaq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-352(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L952
	movq	-32(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L939
L952:
	movq	-32(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
L939:
	movq	-360(%rbp), %rax
	leave
	ret
LFE242:
	.cstring
LC140:
	.ascii "Number\0"
LC141:
	.ascii "Float\0"
LC142:
	.ascii "**\0"
LC143:
	.ascii "!=\0"
LC144:
	.ascii "<\0"
LC145:
	.ascii "<=\0"
LC146:
	.ascii ">=\0"
LC147:
	.ascii ">\0"
LC148:
	.ascii "PI\0"
LC149:
	.ascii "E\0"
	.text
.globl _smpFloat_create_class
_smpFloat_create_class:
LFB243:
	pushq	%rbp
LCFI511:
	movq	%rsp, %rbp
LCFI512:
	subq	$816, %rsp
LCFI513:
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movq	_smp_mpfr_default_prec@GOTPCREL(%rip), %rax
	movq	$53, (%rax)
	movq	_smp_mpfr_default_prec@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	call	_mpfr_set_default_prec
	leaq	-48(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edx
	leaq	LC141(%rip), %rdi
	call	_smpGlobal_class
	leaq	-80(%rbp), %rdi
	leaq	LC141(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_float@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	leaq	-144(%rbp), %rdi
	leaq	LC141(%rip), %rdx
	movq	_smpType_ids@GOTPCREL(%rip), %rsi
	call	_minihash_get
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	leaq	-176(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpFloat_clear@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC20(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def
	leaq	-208(%rbp), %rdi
	leaq	LC140(%rip), %r8
	leaq	LC140(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_add@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC71(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-240(%rbp), %rdi
	leaq	LC140(%rip), %r8
	leaq	LC140(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_sub@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC72(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-272(%rbp), %rdi
	leaq	LC140(%rip), %r8
	leaq	LC140(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_mul@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-256(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC73(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-304(%rbp), %rdi
	leaq	LC140(%rip), %r8
	leaq	LC140(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_div@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-288(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC74(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-336(%rbp), %rdi
	leaq	LC140(%rip), %r8
	leaq	LC140(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_pow@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-336(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-320(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC142(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-368(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC86(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_cmp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-352(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-344(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC21(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-400(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_equalp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-384(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-376(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC51(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-432(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_nequalp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-416(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-408(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC143(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-464(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_lt@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-464(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-448(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-440(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC144(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-496(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_le@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-496(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-480(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-472(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC145(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-528(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_ge@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-528(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-512(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC146(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-560(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_gt@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-560(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-552(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-544(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-536(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC147(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-592(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_eq@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-592(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-584(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-576(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-568(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC25(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-624(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpFloat_equalp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-624(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-616(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-608(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-600(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC24(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-656(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpFloat_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-752(%rbp), %rdi
	movq	-656(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-648(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-640(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-632(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rdi
	call	_mpfr_const_pi
	leaq	-688(%rbp), %rdi
	movq	-8(%rbp), %rsi
	call	_smpFloat_init_mpfr_ref
	leaq	-752(%rbp), %rdi
	movq	-688(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-680(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-672(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-664(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC148(%rip), %rdx
	movl	$1, %esi
	call	_smpType_defvar
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_mpfr_init
	leaq	-112(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	leaq	-112(%rbp), %rdi
	movl	$0, %edx
	movl	$1, %esi
	call	_mpfr_set_ui_2exp
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	call	_mpfr_exp
	leaq	-720(%rbp), %rdi
	movq	-16(%rbp), %rsi
	call	_smpFloat_init_mpfr_ref
	leaq	-752(%rbp), %rdi
	movq	-720(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-712(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-704(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-696(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC149(%rip), %rdx
	movl	$1, %esi
	call	_smpType_defvar
	leaq	-112(%rbp), %rdi
	call	_mpfr_clear
	movl	$0, %eax
	leave
	ret
LFE243:
.globl _smpFloat_init_mpfr
_smpFloat_init_mpfr:
LFB244:
	pushq	%rbp
LCFI514:
	movq	%rsp, %rbp
LCFI515:
	pushq	%rbx
LCFI516:
	subq	$56, %rsp
LCFI517:
	movq	%rdi, %rbx
	movq	%rsi, -56(%rbp)
	leaq	-48(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_mpfr_init
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi
	call	_mpfr_set4
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE244:
.globl _smpFloat_init_mpfr_ref
_smpFloat_init_mpfr_ref:
LFB245:
	pushq	%rbp
LCFI518:
	movq	%rsp, %rbp
LCFI519:
	pushq	%rbx
LCFI520:
	subq	$56, %rsp
LCFI521:
	movq	%rdi, %rbx
	movq	%rsi, -56(%rbp)
	leaq	-48(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE245:
.globl _smpFloat_init_cdouble
_smpFloat_init_cdouble:
LFB246:
	pushq	%rbp
LCFI522:
	movq	%rsp, %rbp
LCFI523:
	pushq	%rbx
LCFI524:
	subq	$72, %rsp
LCFI525:
	movq	%rdi, %rbx
	movsd	%xmm0, -72(%rbp)
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	movq	-24(%rbp), %rdi
	movsd	-72(%rbp), %xmm0
	call	_mpfr_set_d
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	call	_smpFloat_init_mpfr_ref
	movq	-64(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE246:
.globl _smpFloat_init_str
_smpFloat_init_str:
LFB247:
	pushq	%rbp
LCFI526:
	movq	%rsp, %rbp
LCFI527:
	pushq	%rbx
LCFI528:
	subq	$72, %rsp
LCFI529:
	movq	%rdi, %rbx
	movq	%rsi, -72(%rbp)
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	$0, %edx
	call	_mpfr_init_set_str
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	call	_smpFloat_init_mpfr_ref
	movq	-64(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE247:
.globl _smpFloat_clear
_smpFloat_clear:
LFB248:
	pushq	%rbp
LCFI530:
	movq	%rsp, %rbp
LCFI531:
	pushq	%rbx
LCFI532:
	subq	$24, %rsp
LCFI533:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	_mpfr_clear
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE248:
.globl _smpFloat_add
_smpFloat_add:
LFB249:
	pushq	%rbp
LCFI534:
	movq	%rsp, %rbp
LCFI535:
	subq	$144, %rsp
LCFI536:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L968
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	_mpfr_add
	movq	-8(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L967
L968:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L971
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	call	_mpfr_add_z
	movq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L967
L971:
	leaq	-48(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-104(%rbp), %rdi
	call	_smpGlobal_throw
L967:
	movq	-104(%rbp), %rax
	leave
	ret
LFE249:
.globl _smpFloat_sub
_smpFloat_sub:
LFB250:
	pushq	%rbp
LCFI537:
	movq	%rsp, %rbp
LCFI538:
	subq	$144, %rsp
LCFI539:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L975
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	_mpfr_sub
	movq	-8(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L974
L975:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L978
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	call	_mpfr_sub_z
	movq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L974
L978:
	leaq	-48(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-104(%rbp), %rdi
	call	_smpGlobal_throw
L974:
	movq	-104(%rbp), %rax
	leave
	ret
LFE250:
.globl _smpFloat_mul
_smpFloat_mul:
LFB251:
	pushq	%rbp
LCFI540:
	movq	%rsp, %rbp
LCFI541:
	subq	$144, %rsp
LCFI542:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L982
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	_mpfr_mul
	movq	-8(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L981
L982:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L985
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	call	_mpfr_mul_z
	movq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L981
L985:
	leaq	-48(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-104(%rbp), %rdi
	call	_smpGlobal_throw
L981:
	movq	-104(%rbp), %rax
	leave
	ret
LFE251:
.globl _smpFloat_div
_smpFloat_div:
LFB252:
	pushq	%rbp
LCFI543:
	movq	%rsp, %rbp
LCFI544:
	subq	$144, %rsp
LCFI545:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L989
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	_mpfr_div
	movq	-8(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L988
L989:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L992
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	call	_mpfr_div_z
	movq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L988
L992:
	leaq	-48(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-104(%rbp), %rdi
	call	_smpGlobal_throw
L988:
	movq	-104(%rbp), %rax
	leave
	ret
LFE252:
.globl _smpFloat_pow
_smpFloat_pow:
LFB253:
	pushq	%rbp
LCFI546:
	movq	%rsp, %rbp
LCFI547:
	subq	$144, %rsp
LCFI548:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L996
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	_mpfr_pow
	movq	-8(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L995
L996:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L999
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	call	_mpfr_pow_z
	movq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L995
L999:
	leaq	-48(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-104(%rbp), %rdi
	call	_smpGlobal_throw
L995:
	movq	-104(%rbp), %rax
	leave
	ret
LFE253:
.globl _smpFloat_cmp_cint
_smpFloat_cmp_cint:
LFB254:
	pushq	%rbp
LCFI549:
	movq	%rsp, %rbp
LCFI550:
	pushq	%rbx
LCFI551:
	subq	$184, %rsp
LCFI552:
	movq	%rdi, -104(%rbp)
	movq	64(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1003
	movq	72(%rbp), %rax
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	_mpfr_cmp_z
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -148(%rbp)
	jmp	L1005
L1003:
	movq	64(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1006
	movq	72(%rbp), %rax
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	movl	$1, %edx
	call	_mpfr_cmp3
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -148(%rbp)
	jmp	L1005
L1006:
	leaq	-64(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	-96(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-104(%rbp), %rbx
	leaq	-144(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpGlobal_throw
	movq	-144(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	$-2, -148(%rbp)
L1005:
	movl	-148(%rbp), %eax
	addq	$184, %rsp
	popq	%rbx
	leave
	ret
LFE254:
.globl _smpFloat_cmp
_smpFloat_cmp:
LFB255:
	pushq	%rbp
LCFI553:
	movq	%rsp, %rbp
LCFI554:
	subq	$144, %rsp
LCFI555:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpFloat_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1010
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1009
L1010:
	movl	-4(%rbp), %eax
	movslq	%eax,%rsi
	movq	-72(%rbp), %rdi
	call	_smpInteger_init_clong
L1009:
	movq	-72(%rbp), %rax
	leave
	ret
LFE255:
.globl _smpFloat_equalp
_smpFloat_equalp:
LFB256:
	pushq	%rbp
LCFI556:
	movq	%rsp, %rbp
LCFI557:
	subq	$144, %rsp
LCFI558:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpFloat_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1015
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1014
L1015:
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1014:
	movq	-72(%rbp), %rax
	leave
	ret
LFE256:
.globl _smpFloat_nequalp
_smpFloat_nequalp:
LFB257:
	pushq	%rbp
LCFI559:
	movq	%rsp, %rbp
LCFI560:
	subq	$144, %rsp
LCFI561:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpFloat_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1020
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1019
L1020:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1019:
	movq	-72(%rbp), %rax
	leave
	ret
LFE257:
.globl _smpFloat_lt
_smpFloat_lt:
LFB258:
	pushq	%rbp
LCFI562:
	movq	%rsp, %rbp
LCFI563:
	subq	$144, %rsp
LCFI564:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpFloat_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1025
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1024
L1025:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1024:
	movq	-72(%rbp), %rax
	leave
	ret
LFE258:
.globl _smpFloat_le
_smpFloat_le:
LFB259:
	pushq	%rbp
LCFI565:
	movq	%rsp, %rbp
LCFI566:
	subq	$144, %rsp
LCFI567:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpFloat_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1030
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1029
L1030:
	cmpl	$0, -4(%rbp)
	setle	%al
	movzbl	%al, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1029:
	movq	-72(%rbp), %rax
	leave
	ret
LFE259:
.globl _smpFloat_ge
_smpFloat_ge:
LFB260:
	pushq	%rbp
LCFI568:
	movq	%rsp, %rbp
LCFI569:
	subq	$144, %rsp
LCFI570:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpFloat_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1035
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1034
L1035:
	movl	-4(%rbp), %eax
	notl	%eax
	movl	%eax, %esi
	shrl	$31, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1034:
	movq	-72(%rbp), %rax
	leave
	ret
LFE260:
.globl _smpFloat_gt
_smpFloat_gt:
LFB261:
	pushq	%rbp
LCFI571:
	movq	%rsp, %rbp
LCFI572:
	subq	$144, %rsp
LCFI573:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpFloat_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1040
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1039
L1040:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1039:
	movq	-72(%rbp), %rax
	leave
	ret
LFE261:
.globl _smpFloat_eq
_smpFloat_eq:
LFB262:
	pushq	%rbp
LCFI574:
	movq	%rsp, %rbp
LCFI575:
	pushq	%rbx
LCFI576:
	subq	$56, %rsp
LCFI577:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %esi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smpFloat_equalp
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE262:
	.cstring
LC151:
	.ascii "%%.%dR*f\0"
	.text
.globl _smpFloat_to_s
_smpFloat_to_s:
LFB263:
	pushq	%rbp
LCFI578:
	movq	%rsp, %rbp
LCFI579:
	subq	$256, %rsp
LCFI580:
	movq	%rdi, -224(%rbp)
	movl	%esi, -196(%rbp)
	movq	%rdx, -208(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	_smp_mpfr_default_prec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -216(%rbp)
	movsd	LC150(%rip), %xmm0
	call	_log10
	mulsd	-216(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -116(%rbp)
	cmpl	$0, -196(%rbp)
	jle	L1047
	movq	-208(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC86(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1049
	movq	-208(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1051
	movq	-208(%rbp), %rsi
	movl	$32, %edx
	movq	-224(%rbp), %rdi
	call	_memmove
	jmp	L1046
L1051:
	leaq	-160(%rbp), %rdi
	leaq	LC86(%rip), %rsi
	call	_smp_getclass
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	-192(%rbp), %rdi
	movq	-208(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-224(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1046
L1049:
	movq	-208(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	___gmpz_fits_sint_p
	testl	%eax, %eax
	je	L1047
	movq	-208(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	___gmpz_get_si
	movl	%eax, -116(%rbp)
L1047:
	movl	-116(%rbp), %eax
	leaq	-112(%rbp), %rdi
	movl	%eax, %r8d
	leaq	LC151(%rip), %rcx
	movl	$100, %edx
	movl	$0, %esi
	movl	$0, %eax
	call	___sprintf_chk
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	leaq	-112(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	movl	$0, %eax
	call	_mpfr_asprintf
	leaq	-128(%rbp), %rsi
	movq	-224(%rbp), %rdi
	call	_smpString_init_ref
L1046:
	movq	-224(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-8(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	L1056
	call	___stack_chk_fail
L1056:
	leave
	ret
LFE263:
.globl _smpFunction_create_class
_smpFunction_create_class:
LFB264:
	pushq	%rbp
LCFI581:
	movq	%rsp, %rbp
LCFI582:
	subq	$224, %rsp
LCFI583:
	leaq	-32(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpFunction_clear@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-160(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC20(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-96(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpFunction_gc_mark@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-160(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC57(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-128(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpFunction_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-160(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE264:
	.cstring
	.align 3
LC152:
	.ascii "Wrong number of arguments in %s.%s (%d expected, %d found).\0"
	.text
.globl _smpFunction_call
_smpFunction_call:
LFB265:
	pushq	%rbp
LCFI584:
	movq	%rsp, %rbp
LCFI585:
	pushq	%r12
LCFI586:
	pushq	%rbx
LCFI587:
	subq	$496, %rsp
LCFI588:
	movq	%rdi, -408(%rbp)
	movl	%esi, -340(%rbp)
	movq	%rdx, -352(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -24(%rbp)
	xorl	%edx, %edx
	movq	%rsp, %rax
	movq	%rax, -392(%rbp)
	movq	64(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC26(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	je	L1060
	leaq	-160(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_function@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-408(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1062
L1060:
	movq	72(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -336(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -328(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -320(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -312(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -304(%rbp)
	movl	$0, -32(%rbp)
	movzwl	-312(%rbp), %eax
	cwtl
	decl	%eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	$15, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	leaq	96(%rsp), %rcx
	movq	%rcx, -400(%rbp)
	movq	-400(%rbp), %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -28(%rbp)
	jmp	L1063
L1064:
	movl	-28(%rbp), %eax
	cmpl	-340(%rbp), %eax
	jl	L1065
	movq	-320(%rbp), %rax
	leaq	56(%rax), %rcx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	leaq	(%rcx,%rax), %rax
	movzbl	8(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	L1065
	movq	-320(%rbp), %rax
	leaq	56(%rax), %rcx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	leaq	(%rcx,%rax), %rax
	movzbl	8(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	L1068
	movl	-28(%rbp), %edi
	movq	-320(%rbp), %rax
	leaq	56(%rax), %rcx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rsi
	movslq	%edi,%rax
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	16(%rcx), %rax
	movq	%rax, (%rdx,%rsi)
	movq	24(%rcx), %rax
	movq	%rax, 8(%rdx,%rsi)
	movq	32(%rcx), %rax
	movq	%rax, 16(%rdx,%rsi)
	movq	40(%rcx), %rax
	movq	%rax, 24(%rdx,%rsi)
	jmp	L1070
L1068:
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	L1071
L1065:
	movq	-320(%rbp), %rax
	leaq	56(%rax), %rcx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	leaq	(%rcx,%rax), %rax
	movzbl	48(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L1072
	movl	$1, -32(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -72(%rbp)
	movl	-340(%rbp), %eax
	decl	%eax
	movl	%eax, -40(%rbp)
	jmp	L1074
L1075:
	movl	-40(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	addq	-352(%rbp), %rdx
	leaq	-96(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_cons_c
	decl	-40(%rbp)
L1074:
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	L1075
	movl	-28(%rbp), %eax
	movq	-56(%rbp), %rcx
	cltq
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx,%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rdx,%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rdx,%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rdx,%rcx)
	jmp	L1071
L1072:
	movl	-28(%rbp), %eax
	cmpl	-340(%rbp), %eax
	jl	L1077
	movq	-328(%rbp), %rbx
	movq	32(%rbp), %rax
	movq	(%rax), %r12
	leaq	-192(%rbp), %rdi
	leaq	LC22(%rip), %rsi
	call	_smp_getclass
	leaq	-224(%rbp), %rdi
	movl	-340(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	%edx, %r9d
	movl	%ecx, %r8d
	movq	%rbx, %rcx
	movq	%r12, %rdx
	leaq	LC152(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-224(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-408(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1062
L1077:
	movl	-28(%rbp), %edx
	movl	-28(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-352(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movslq	%edx,%rax
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx,%rsi)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rdx,%rsi)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rdx,%rsi)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rdx,%rsi)
L1070:
	incl	-28(%rbp)
L1063:
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	L1064
L1071:
	cmpl	$0, -32(%rbp)
	jne	L1079
	movl	-36(%rbp), %eax
	cmpl	-340(%rbp), %eax
	jge	L1079
	movq	-328(%rbp), %rbx
	movq	32(%rbp), %rax
	movq	(%rax), %r12
	leaq	-256(%rbp), %rdi
	leaq	LC22(%rip), %rsi
	call	_smp_getclass
	leaq	-288(%rbp), %rdi
	movl	-340(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-256(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	%edx, %r9d
	movl	%ecx, %r8d
	movq	%rbx, %rcx
	movq	%r12, %rdx
	leaq	LC152(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-288(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-408(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1062
L1079:
	movq	-304(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	-128(%rbp), %rdi
	movl	-36(%rbp), %esi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	*%rcx
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1082
	movq	$0, -48(%rbp)
	jmp	L1084
L1085:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	leaq	-384(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, 64(%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 80(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 88(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpException_backtrace_add_now
	incq	-48(%rbp)
L1084:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-48(%rbp), %rax
	ja	L1085
L1082:
	movq	-128(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-120(%rbp), %rax
	movq	-408(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-112(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-104(%rbp), %rax
	movq	-408(%rbp), %rcx
	movq	%rax, 24(%rcx)
L1062:
	movq	-392(%rbp), %rsp
	movq	-408(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-24(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	L1087
	call	___stack_chk_fail
L1087:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
LFE265:
.globl _smpFunction_clear
_smpFunction_clear:
LFB266:
	pushq	%rbp
LCFI589:
	movq	%rsp, %rbp
LCFI590:
	subq	$80, %rsp
LCFI591:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdi
	call	_GC_free
	movl	$0, -4(%rbp)
	jmp	L1089
L1090:
	incl	-4(%rbp)
L1089:
	movzwl	-24(%rbp), %eax
	cwtl
	cmpl	-4(%rbp), %eax
	jg	L1090
	movq	40(%rbp), %rax
	movq	16(%rax), %rdi
	call	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-72(%rbp), %rax
	leave
	ret
LFE266:
.globl _smpFunction_gc_mark
_smpFunction_gc_mark:
LFB267:
	pushq	%rbp
LCFI592:
	movq	%rsp, %rbp
LCFI593:
	subq	$112, %rsp
LCFI594:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	L1094
L1095:
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	leaq	(%rcx,%rax), %rax
	movzbl	8(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	L1096
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	16(%rdx), %rax
	movq	%rax, (%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edi
	call	_gc_mark_recursive
L1096:
	incl	-4(%rbp)
L1094:
	movzwl	-24(%rbp), %eax
	cwtl
	cmpl	-4(%rbp), %eax
	jg	L1095
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-72(%rbp), %rax
	leave
	ret
LFE267:
.globl _smpFunction_init
_smpFunction_init:
LFB268:
	pushq	%rbp
LCFI595:
	movq	%rsp, %rbp
LCFI596:
	pushq	%rbx
LCFI597:
	subq	$280, %rsp
LCFI598:
	movq	%rdi, %rbx
	movq	%rsi, -264(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	movzbl	%al, %eax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rcx
	leaq	0(,%rcx,4), %rax
	leaq	L1101(%rip), %rcx
	movq	%rcx, -280(%rbp)
	subq	%rax, -280(%rbp)
	leaq	-17(%rbp), %rax
	movq	-280(%rbp), %rcx
	jmp	*%rcx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L1101:
	movl	%edx, -268(%rbp)
	leaq	-224(%rbp), %rax
	movl	$24, (%rax)
	leaq	-224(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-224(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-224(%rbp), %rax
	leaq	-192(%rbp), %rcx
	movq	%rcx, 16(%rax)
	leaq	-256(%rbp), %rdi
	leaq	-224(%rbp), %rcx
	movl	-268(%rbp), %edx
	movq	-264(%rbp), %rsi
	call	_smpFunction_init_v
	movq	-256(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$280, %rsp
	popq	%rbx
	leave
	ret
LFE268:
	.cstring
	.align 3
LC153:
	.ascii "Unexpected token %s after &rest argument.\0"
LC154:
	.ascii "&default\0"
LC155:
	.ascii "&quote\0"
LC156:
	.ascii "&keyword\0"
	.text
.globl _smpFunction_init_v
_smpFunction_init_v:
LFB269:
	pushq	%rbp
LCFI599:
	movq	%rsp, %rbp
LCFI600:
	pushq	%rbx
LCFI601:
	subq	$296, %rsp
LCFI602:
	movq	%rdi, -272(%rbp)
	movq	%rsi, -216(%rbp)
	movl	%edx, -220(%rbp)
	movq	%rcx, -232(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -24(%rbp)
	xorl	%edx, %edx
	movq	%rsp, %rax
	movq	%rax, -240(%rbp)
	leaq	-96(%rbp), %rdi
	movq	_smpType_function@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	$0, -200(%rbp)
	movb	$0, -208(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -176(%rbp)
	cmpl	$0, -220(%rbp)
	jne	L1104
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-272(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-272(%rbp), %rbx
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	-272(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-272(%rbp), %rbx
	movq	%rax, 24(%rbx)
	jmp	L1106
L1104:
	movl	-220(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	addq	$15, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	leaq	32(%rsp), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	jmp	L1107
L1108:
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movzbl	8(%rax,%rcx), %edx
	andl	$-2, %edx
	movb	%dl, 8(%rax,%rcx)
	movl	-36(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	-56(%rbp), %rsi
	movslq	%edx,%rax
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movl	%ecx, %eax
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	8(%rdx,%rsi), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 8(%rdx,%rsi)
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movzbl	8(%rax,%rcx), %edx
	andl	$-5, %edx
	movb	%dl, 8(%rax,%rcx)
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	leaq	16(%rax), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	leaq	48(%rax), %rdx
	movzbl	(%rdx), %eax
	andl	$-2, %eax
	movb	%al, (%rdx)
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L1109
	movq	-232(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	mov	%eax, %eax
	addq	%rax, %rdx
	movq	%rdx, -256(%rbp)
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	leal	8(%rax), %edx
	movq	-232(%rbp), %rax
	movl	%edx, (%rax)
	jmp	L1111
L1109:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -256(%rbp)
	leaq	8(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 8(%rax)
L1111:
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, -36(%rbp)
	jle	L1115
	movl	-36(%rbp), %eax
	decl	%eax
	movq	-56(%rbp), %rcx
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	addq	$48, %rax
	movzbl	(%rax), %eax
	sall	$7, %eax
	sarb	$7, %al
	testb	%al, %al
	je	L1115
	leaq	-128(%rbp), %rdi
	leaq	LC48(%rip), %rsi
	call	_smp_getclass
	leaq	-160(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC153(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-272(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1106
L1116:
	movq	-48(%rbp), %rdi
	leaq	LC154(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1117
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movzbl	8(%rax,%rcx), %edx
	orl	$2, %edx
	movb	%dl, 8(%rax,%rcx)
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movzbl	8(%rax,%rcx), %edx
	orl	$4, %edx
	movb	%dl, 8(%rax,%rcx)
	movl	-36(%rbp), %esi
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	leaq	32(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rdi
	movslq	%esi,%rax
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	addq	%rdi, %rax
	leaq	16(%rax), %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rdx)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rdx)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rdx)
	incl	-32(%rbp)
	jmp	L1119
L1117:
	movq	-48(%rbp), %rdi
	leaq	LC155(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1120
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movzbl	8(%rax,%rcx), %edx
	orl	$1, %edx
	movb	%dl, 8(%rax,%rcx)
	jmp	L1119
L1120:
	movq	-48(%rbp), %rdi
	leaq	LC112(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1122
	movl	$1, -28(%rbp)
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rsi
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movl	$-1, %eax
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	8(%rdx,%rsi), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 8(%rdx,%rsi)
	jmp	L1119
L1122:
	movq	-48(%rbp), %rdi
	leaq	LC55(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1124
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	addq	%rcx, %rax
	leaq	48(%rax), %rdx
	movzbl	(%rdx), %eax
	orl	$1, %eax
	movb	%al, (%rdx)
	jmp	L1119
L1124:
	movq	-48(%rbp), %rdi
	leaq	LC156(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1126
L1119:
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L1127
	movq	-232(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	mov	%eax, %eax
	addq	%rax, %rdx
	movq	%rdx, -248(%rbp)
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	leal	8(%rax), %edx
	movq	-232(%rbp), %rax
	movl	%edx, (%rax)
	jmp	L1129
L1127:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)
	leaq	8(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 8(%rax)
L1129:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	L1115
	incl	-32(%rbp)
L1115:
	movl	-32(%rbp), %eax
	cmpl	-220(%rbp), %eax
	jl	L1116
L1126:
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax,%rcx)
	incl	-32(%rbp)
	incl	-36(%rbp)
L1107:
	movl	-32(%rbp), %eax
	cmpl	-220(%rbp), %eax
	jl	L1108
	movl	-36(%rbp), %eax
	movw	%ax, -184(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	movq	%rax, %rdi
	subq	%rdx, %rdi
	call	_GC_malloc
	movq	%rax, -192(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L1134
	movq	$-1, %rcx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	movq	%rax, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	movq	-56(%rbp), %rsi
	movq	-192(%rbp), %rdi
	call	___memcpy_chk
	jmp	L1136
L1134:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	0(,%rdx,8), %rax
	movq	%rax, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-56(%rbp), %rsi
	movq	-192(%rbp), %rdi
	call	___inline_memcpy_chk
L1136:
	movl	$40, %edi
	call	_GC_malloc
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-96(%rbp), %rax
	movq	-272(%rbp), %rbx
	movq	%rax, (%rbx)
	movq	-88(%rbp), %rax
	movq	-272(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-72(%rbp), %rax
	movq	-272(%rbp), %rbx
	movq	%rax, 24(%rbx)
L1106:
	movq	-240(%rbp), %rsp
	movq	-272(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-24(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	L1138
	call	___stack_chk_fail
L1138:
	movq	-8(%rbp), %rbx
	leave
	ret
LFE269:
	.cstring
LC157:
	.ascii "%s()\0"
LC158:
	.ascii "<Function: %lx>\0"
	.text
.globl _smpFunction_to_s
_smpFunction_to_s:
LFB270:
	pushq	%rbp
LCFI603:
	movq	%rsp, %rbp
LCFI604:
	subq	$32, %rsp
LCFI605:
	movq	%rdi, -24(%rbp)
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	L1140
	movq	40(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	LC157(%rip), %rsi
	movq	-24(%rbp), %rdi
	movl	$0, %eax
	call	_smpString_init_fmt
	jmp	L1139
L1140:
	movq	40(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	LC158(%rip), %rsi
	movq	-24(%rbp), %rdi
	movl	$0, %eax
	call	_smpString_init_fmt
L1139:
	movq	-24(%rbp), %rax
	leave
	ret
LFE270:
	.cstring
LC159:
	.ascii "Global\0"
LC160:
	.ascii "!\0"
LC161:
	.ascii "~\0"
LC162:
	.ascii "catch\0"
LC163:
	.ascii "Hash\0"
LC164:
	.ascii "hash\0"
LC165:
	.ascii "list\0"
LC166:
	.ascii "print\0"
LC167:
	.ascii "printf\0"
LC168:
	.ascii "println\0"
LC169:
	.ascii "rand\0"
LC170:
	.ascii "set_seed\0"
LC171:
	.ascii "sprintf\0"
LC172:
	.ascii "throw\0"
LC173:
	.ascii "nil\0"
	.text
.globl _smpGlobal_create_class
_smpGlobal_create_class:
LFB271:
	pushq	%rbp
LCFI606:
	movq	%rsp, %rbp
LCFI607:
	pushq	%rbx
LCFI608:
	subq	$520, %rsp
LCFI609:
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	_smp_stdin@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	_smp_stderr@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	movl	$96, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC159(%rip), %rdi
	call	_smpGlobal_class
	movq	_smp_global@GOTPCREL(%rip), %rbx
	leaq	-464(%rbp), %rdi
	leaq	LC159(%rip), %rsi
	call	_smp_getclass
	movq	-464(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-440(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	_smp_global@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	_smpType_global@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	movl	$0, %edi
	call	_time
	movl	%eax, %edi
	call	_init_gen_rand
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC36(%rip), %rdi
	call	_scope_add
	leaq	-48(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	leaq	_smpBool_not(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC160(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-80(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC86(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_not@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC161(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-112(%rbp), %rdi
	leaq	LC37(%rip), %r9
	leaq	LC55(%rip), %r8
	leaq	LC106(%rip), %rcx
	movl	$3, %edx
	movq	_smpGlobal_array@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC92(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-144(%rbp), %rdi
	leaq	LC45(%rip), %r8
	leaq	LC43(%rip), %rcx
	movl	$2, %edx
	movq	_smpGlobal_catch_arg@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC162(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-176(%rbp), %rdi
	leaq	LC42(%rip), %r9
	leaq	LC55(%rip), %r8
	leaq	LC163(%rip), %rcx
	movl	$3, %edx
	movq	_smpGlobal_hash@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC164(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-208(%rbp), %rdi
	leaq	LC37(%rip), %r9
	leaq	LC55(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$3, %edx
	movq	_smpGlobal_list@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC165(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-240(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC43(%rip), %rcx
	movl	$2, %edx
	movq	_smpGlobal_print_arg@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC166(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-272(%rbp), %rdi
	leaq	LC37(%rip), %rax
	movq	%rax, (%rsp)
	leaq	LC55(%rip), %r9
	leaq	LC18(%rip), %r8
	leaq	LC43(%rip), %rcx
	movl	$4, %edx
	movq	_smp_printf_arg@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-256(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC167(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-304(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC43(%rip), %rcx
	movl	$2, %edx
	movq	_smpGlobal_println_arg@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-288(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC168(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-336(%rbp), %rdi
	leaq	LC86(%rip), %r9
	leaq	LC112(%rip), %r8
	leaq	LC140(%rip), %rcx
	movl	$3, %edx
	movq	_smpGlobal_rand@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-336(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-320(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC169(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-368(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC43(%rip), %rcx
	movl	$2, %edx
	movq	_smpGlobal_set_seed@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-352(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-344(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC170(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-400(%rbp), %rdi
	leaq	LC37(%rip), %rax
	movq	%rax, (%rsp)
	leaq	LC55(%rip), %r9
	leaq	LC18(%rip), %r8
	leaq	LC18(%rip), %rcx
	movl	$4, %edx
	movq	_smpGlobal_sprintf_arg@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-384(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-376(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC171(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-432(%rbp), %rdi
	leaq	LC27(%rip), %rcx
	movl	$1, %edx
	movq	_smpGlobal_throw_arg@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-464(%rbp), %rdi
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-416(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-408(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC172(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def
	leaq	-464(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC173(%rip), %rdx
	movl	$1, %esi
	call	_smpType_defvar
	leaq	-464(%rbp), %rdi
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC129(%rip), %rdx
	movl	$1, %esi
	call	_smpType_defvar
	movl	$0, %eax
	addq	$520, %rsp
	popq	%rbx
	leave
	ret
LFE271:
.globl _smpGlobal_array
_smpGlobal_array:
LFB272:
	pushq	%rbp
LCFI610:
	movq	%rsp, %rbp
LCFI611:
	pushq	%rbx
LCFI612:
	subq	$56, %rsp
LCFI613:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	movq	%rbx, %rdi
	call	_smpList_to_a
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE272:
	.cstring
LC174:
	.ascii "catch() not implemented.\0"
	.text
.globl _smpGlobal_catch_arg
_smpGlobal_catch_arg:
LFB273:
	pushq	%rbp
LCFI614:
	movq	%rsp, %rbp
LCFI615:
	pushq	%rbx
LCFI616:
	subq	$120, %rsp
LCFI617:
	movq	%rdi, %rbx
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	LC9(%rip), %rsi
	call	_smp_getclass
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC174(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smpGlobal_throw
	movq	%rbx, %rax
	addq	$120, %rsp
	popq	%rbx
	leave
	ret
LFE273:
.globl _smpGlobal_class
_smpGlobal_class:
LFB274:
	pushq	%rbp
LCFI618:
	movq	%rsp, %rbp
LCFI619:
	subq	$48, %rsp
LCFI620:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpq	$0, -32(%rbp)
	je	L1151
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	L1151
	movl	$1, -40(%rbp)
	jmp	L1154
L1151:
	cmpq	$0, -32(%rbp)
	jne	L1155
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	L1157
L1155:
	movl	$8, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$1, -16(%rbp)
L1157:
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdi
	call	_smpGlobal_class_multiple
	movl	%eax, -40(%rbp)
L1154:
	movl	-40(%rbp), %eax
	leave
	ret
LFE274:
.globl _smpGlobal_class_multiple
_smpGlobal_class_multiple:
LFB275:
	pushq	%rbp
LCFI621:
	movq	%rsp, %rbp
LCFI622:
	pushq	%rbx
LCFI623:
	subq	$248, %rsp
LCFI624:
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movl	%ecx, -140(%rbp)
	cmpq	$0, -128(%rbp)
	je	L1160
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	L1160
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movzbl	12(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	L1160
	movl	$1, -180(%rbp)
	jmp	L1164
L1160:
	movq	-120(%rbp), %rdi
	call	_strlen
	leaq	1(%rax), %rdi
	call	_GC_malloc
	movq	%rax, -112(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L1165
	movq	$-1, %rdx
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	call	___strcpy_chk
	jmp	L1167
L1165:
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	call	___inline_strcpy_chk
L1167:
	movq	_smpType_next_id@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, -104(%rbp)
	leal	1(%rax), %edx
	movq	_smpType_next_id@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movl	-104(%rbp), %esi
	leaq	-48(%rbp), %rdi
	call	_objid_init
	movq	-112(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_ids@GOTPCREL(%rip), %rdi
	call	_minihash_add
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-140(%rbp), %eax
	sall	$7, %eax
	sarb	$7, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	-100(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -100(%rbp)
	movl	-140(%rbp), %eax
	andl	$2, %eax
	sarl	%eax
	sall	$7, %eax
	sarb	$7, %al
	andl	$1, %eax
	leal	(%rax,%rax), %edx
	movzbl	-100(%rbp), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, -100(%rbp)
	movl	-140(%rbp), %eax
	andl	$48, %eax
	sarl	$4, %eax
	sall	$6, %eax
	sarb	$6, %al
	andl	$3, %eax
	leal	0(,%rax,4), %edx
	movzbl	-100(%rbp), %eax
	andl	$-13, %eax
	orl	%edx, %eax
	movb	%al, -100(%rbp)
	movl	-140(%rbp), %eax
	andl	$64, %eax
	sarl	$6, %eax
	sall	$7, %eax
	sarb	$7, %al
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	-100(%rbp), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, -100(%rbp)
	movl	-140(%rbp), %eax
	andl	$128, %eax
	sarl	$7, %eax
	sall	$7, %eax
	sarb	$7, %al
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	-100(%rbp), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, -100(%rbp)
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rbx
	leaq	-176(%rbp), %rdi
	movl	$0, %eax
	call	_minihash_init
	movq	-176(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rbx
	leaq	-176(%rbp), %rdi
	movl	$0, %eax
	call	_minihash_init
	movq	-176(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rbx
	leaq	-176(%rbp), %rdi
	movl	$0, %eax
	call	_minihash_init
	movq	-176(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rbx
	leaq	-176(%rbp), %rdi
	movl	$0, %eax
	call	_minihash_init
	movq	-176(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 56(%rsp)
	call	_smp_putclass
	movl	$0, -180(%rbp)
L1164:
	movl	-180(%rbp), %eax
	addq	$248, %rsp
	popq	%rbx
	leave
	ret
LFE275:
	.cstring
	.align 3
LC175:
	.ascii "name: %st, parents: %st, body: %st\12\0"
	.text
.globl _smpGlobal_class_arg
_smpGlobal_class_arg:
LFB276:
	pushq	%rbp
LCFI625:
	movq	%rsp, %rbp
LCFI626:
	pushq	%rbx
LCFI627:
	subq	$264, %rsp
LCFI628:
	movq	%rdi, %rbx
	movl	%esi, -132(%rbp)
	movq	%rdx, -144(%rbp)
	movq	-144(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	-144(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	-144(%rbp), %rdx
	addq	$64, %rdx
	movq	(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, 64(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 80(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 88(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC175(%rip), %rsi
	movl	$0, %eax
	call	_smp_printf
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$264, %rsp
	popq	%rbx
	leave
	ret
LFE276:
.globl _smpGlobal_fprint
_smpGlobal_fprint:
LFB277:
	pushq	%rbp
LCFI629:
	movq	%rsp, %rbp
LCFI630:
	subq	$80, %rsp
LCFI631:
	movq	%rdi, -48(%rbp)
	movq	%rsi, -40(%rbp)
	leaq	-32(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC35(%rip), %rsi
	call	_smpObject_funcall
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC18(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	je	L1172
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L1171
L1172:
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	movq	%rax, %rdi
	movq	-40(%rbp), %rsi
	call	_fputs
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1171:
	movq	-48(%rbp), %rax
	leave
	ret
LFE277:
.globl _smpGlobal_fprintf
_smpGlobal_fprintf:
LFB278:
	pushq	%rbp
LCFI632:
	movq	%rsp, %rbp
LCFI633:
	subq	$304, %rsp
LCFI634:
	movq	%rdi, -264(%rbp)
	movq	%rsi, -248(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	movzbl	%al, %eax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rcx
	leaq	0(,%rcx,4), %rax
	leaq	L1177(%rip), %rcx
	movq	%rcx, -272(%rbp)
	subq	%rax, -272(%rbp)
	leaq	-1(%rbp), %rax
	movq	-272(%rbp), %rcx
	jmp	*%rcx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L1177:
	movq	%rdx, -256(%rbp)
	leaq	-208(%rbp), %rax
	movl	$24, (%rax)
	leaq	-208(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-208(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-208(%rbp), %rax
	leaq	-176(%rbp), %rcx
	movq	%rcx, 16(%rax)
	leaq	-240(%rbp), %rdi
	leaq	-208(%rbp), %rdx
	movq	-256(%rbp), %rsi
	call	_smpGlobal_vsprintf
	movq	-240(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1178
	movq	-240(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-232(%rbp), %rax
	movq	-264(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-224(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-216(%rbp), %rax
	movq	-264(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L1176
L1178:
	movq	-248(%rbp), %rsi
	movq	-240(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-264(%rbp), %rdi
	call	_smpGlobal_fprint
L1176:
	movq	-264(%rbp), %rax
	leave
	ret
LFE278:
.globl _smpGlobal_hash
_smpGlobal_hash:
LFB279:
	pushq	%rbp
LCFI635:
	movq	%rsp, %rbp
LCFI636:
	subq	$240, %rsp
LCFI637:
	movq	%rdi, -200(%rbp)
	movl	%esi, -180(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC28(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1183
	movq	-192(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1185
	movq	-192(%rbp), %rsi
	movl	$32, %edx
	movq	-200(%rbp), %rdi
	call	_memmove
	jmp	L1182
L1185:
	leaq	-144(%rbp), %rdi
	leaq	LC28(%rip), %rsi
	call	_smp_getclass
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	leaq	-176(%rbp), %rdi
	movq	-192(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-200(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1182
L1183:
	movq	-192(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	-192(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpList_length_clong
	addq	$10, %rax
	movq	%rax, %rsi
	leaq	-112(%rbp), %rdi
	call	_smpHash_init_capacity
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1188
	movq	-112(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-96(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1182
L1188:
	movq	-192(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1192
	movq	-112(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-96(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1182
L1193:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-48(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpHash_add_now
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1194
	movq	-80(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1182
L1194:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
L1192:
	cmpq	$0, -8(%rbp)
	jne	L1193
	movq	-112(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-96(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1182:
	movq	-200(%rbp), %rax
	leave
	ret
LFE279:
.globl _smpGlobal_list
_smpGlobal_list:
LFB280:
	pushq	%rbp
LCFI638:
	movq	%rsp, %rbp
LCFI639:
	pushq	%rbx
LCFI640:
	subq	$24, %rsp
LCFI641:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rsi
	movl	$32, %edx
	movq	%rbx, %rdi
	call	_memmove
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE280:
.globl _smp_print
_smp_print:
LFB281:
	pushq	%rbp
LCFI642:
	movq	%rsp, %rbp
LCFI643:
	pushq	%rbx
LCFI644:
	subq	$152, %rsp
LCFI645:
	movq	%rdi, -120(%rbp)
	leaq	-48(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC35(%rip), %rsi
	call	_smpObject_funcall
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1201
	movq	-48(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1200
L1201:
	movq	-32(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1204
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1206
	movq	-48(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1200
L1206:
	leaq	-80(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-112(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-120(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1200
L1204:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_fputs
	movq	16(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1200:
	movq	-120(%rbp), %rax
	addq	$152, %rsp
	popq	%rbx
	leave
	ret
LFE281:
.globl _smpGlobal_print_arg
_smpGlobal_print_arg:
LFB282:
	pushq	%rbp
LCFI646:
	movq	%rsp, %rbp
LCFI647:
	pushq	%rbx
LCFI648:
	subq	$56, %rsp
LCFI649:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smp_print
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE282:
.globl _smp_printf
_smp_printf:
LFB283:
	pushq	%rbp
LCFI650:
	movq	%rsp, %rbp
LCFI651:
	subq	$304, %rsp
LCFI652:
	movq	%rdi, -256(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	movzbl	%al, %eax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rdx
	leaq	0(,%rdx,4), %rax
	leaq	L1212(%rip), %rdx
	movq	%rdx, -264(%rbp)
	subq	%rax, -264(%rbp)
	leaq	-1(%rbp), %rax
	movq	-264(%rbp), %rdx
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L1212:
	movq	%rsi, -248(%rbp)
	leaq	-208(%rbp), %rax
	movl	$16, (%rax)
	leaq	-208(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-208(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-208(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	-240(%rbp), %rdi
	leaq	-208(%rbp), %rdx
	movq	-248(%rbp), %rsi
	call	_smpGlobal_vsprintf
	movq	-240(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1213
	movq	-240(%rbp), %rax
	movq	-256(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-232(%rbp), %rax
	movq	-256(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-224(%rbp), %rax
	movq	-256(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-216(%rbp), %rax
	movq	-256(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1211
L1213:
	movq	-240(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-256(%rbp), %rdi
	call	_smp_print
L1211:
	movq	-256(%rbp), %rax
	leave
	ret
LFE283:
.globl _smp_printf_arg
_smp_printf_arg:
LFB284:
	pushq	%rbp
LCFI653:
	movq	%rsp, %rbp
LCFI654:
	subq	$96, %rsp
LCFI655:
	movq	%rdi, -56(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	leaq	-32(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpGlobal_sprintf_arg
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1218
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1217
L1218:
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-56(%rbp), %rdi
	call	_smp_print
L1217:
	movq	-56(%rbp), %rax
	leave
	ret
LFE284:
.globl _smp_println
_smp_println:
LFB285:
	pushq	%rbp
LCFI656:
	movq	%rsp, %rbp
LCFI657:
	subq	$80, %rsp
LCFI658:
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_print
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1223
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1222
L1223:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	call	_fputc
	movq	16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1222:
	movq	-40(%rbp), %rax
	leave
	ret
LFE285:
.globl _smpGlobal_println_arg
_smpGlobal_println_arg:
LFB286:
	pushq	%rbp
LCFI659:
	movq	%rsp, %rbp
LCFI660:
	pushq	%rbx
LCFI661:
	subq	$56, %rsp
LCFI662:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smp_println
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE286:
.globl _smpGlobal_rand
_smpGlobal_rand:
LFB287:
	pushq	%rbp
LCFI663:
	movq	%rsp, %rbp
LCFI664:
	subq	$160, %rsp
LCFI665:
	movq	%rdi, -120(%rbp)
	movl	%esi, -100(%rbp)
	movq	%rdx, -112(%rbp)
	cmpl	$0, -100(%rbp)
	jne	L1230
	call	_genrand_real2
	movq	-120(%rbp), %rdi
	call	_smpFloat_init_cdouble
	jmp	L1229
L1230:
	movq	-112(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC86(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1233
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1235
	movq	-112(%rbp), %rsi
	movl	$32, %edx
	movq	-120(%rbp), %rdi
	call	_memmove
	jmp	L1229
L1235:
	leaq	-64(%rbp), %rdi
	leaq	LC86(%rip), %rsi
	call	_smp_getclass
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	-96(%rbp), %rdi
	movq	-112(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-120(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1229
L1233:
	call	_gen_rand32
	mov	%eax, %esi
	leaq	-32(%rbp), %rdi
	call	_smpInteger_init_clong
	movq	-112(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	movq	-120(%rbp), %rdi
	call	_smpInteger_mod
L1229:
	movq	-120(%rbp), %rax
	leave
	ret
LFE287:
.globl _smpGlobal_set_seed
_smpGlobal_set_seed:
LFB288:
	pushq	%rbp
LCFI666:
	movq	%rsp, %rbp
LCFI667:
	subq	$176, %rsp
LCFI668:
	movq	%rdi, -136(%rbp)
	movl	%esi, -116(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC86(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1239
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1241
	movq	-128(%rbp), %rsi
	movl	$32, %edx
	movq	-136(%rbp), %rdi
	call	_memmove
	jmp	L1238
L1241:
	leaq	-80(%rbp), %rdi
	leaq	LC86(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-112(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-136(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1238
L1239:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_to_clong
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1244
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L1238
L1244:
	movq	-8(%rbp), %rax
	movl	%eax, %edi
	call	_init_gen_rand
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1238:
	movq	-136(%rbp), %rax
	leave
	ret
LFE288:
.globl _smpGlobal_sprintf
_smpGlobal_sprintf:
LFB289:
	pushq	%rbp
LCFI669:
	movq	%rsp, %rbp
LCFI670:
	pushq	%rbx
LCFI671:
	subq	$264, %rsp
LCFI672:
	movq	%rdi, %rbx
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	movzbl	%al, %eax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rdx
	leaq	0(,%rdx,4), %rax
	leaq	L1248(%rip), %rdx
	movq	%rdx, -272(%rbp)
	subq	%rax, -272(%rbp)
	leaq	-17(%rbp), %rax
	movq	-272(%rbp), %rdx
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L1248:
	movq	%rsi, -264(%rbp)
	leaq	-224(%rbp), %rax
	movl	$16, (%rax)
	leaq	-224(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-224(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-224(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	-256(%rbp), %rdi
	leaq	-224(%rbp), %rdx
	movq	-264(%rbp), %rsi
	call	_smpGlobal_vsprintf
	movq	-256(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$264, %rsp
	popq	%rbx
	leave
	ret
LFE289:
.globl _smpGlobal_vsprintf
_smpGlobal_vsprintf:
LFB290:
	pushq	%rbp
LCFI673:
	movq	%rsp, %rbp
LCFI674:
	subq	$336, %rsp
LCFI675:
	movq	%rdi, -264(%rbp)
	movq	%rsi, -216(%rbp)
	movq	%rdx, -224(%rbp)
	movl	$0, -4(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L1251
L1252:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	jne	L1253
	incq	-16(%rbp)
	movq	-16(%rbp), %rax
	incq	%rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	L1253
	incl	-4(%rbp)
L1253:
	incq	-16(%rbp)
L1251:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L1252
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -8(%rbp)
	jmp	L1257
L1258:
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	leaq	32(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	%rcx, %rdx
	movq	(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_cons_c
	movq	-64(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1259
	movq	-144(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	L1261
L1259:
	leaq	-256(%rbp), %rdi
	leaq	-144(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpPair_set_cdr_now
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1262
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	jmp	L1261
L1262:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
L1261:
	incl	-8(%rbp)
L1257:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	L1258
	leaq	-256(%rbp), %rdi
	movq	-216(%rbp), %rsi
	call	_smpString_init
	movq	-256(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-208(%rbp), %rcx
	movl	-4(%rbp), %esi
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	movq	-264(%rbp), %rdi
	call	_smpGlobal_sprintf_arg
	movq	-264(%rbp), %rax
	leave
	ret
LFE290:
	.cstring
	.align 3
LC176:
	.ascii "Not enough arguments for formatted output (%d expected, %d found).\0"
LC177:
	.ascii "%s\0"
	.text
.globl _smpGlobal_sprintf_arg
_smpGlobal_sprintf_arg:
LFB291:
	pushq	%rbp
LCFI676:
	movq	%rsp, %rbp
LCFI677:
	subq	$480, %rsp
LCFI678:
	movq	%rdi, -440(%rbp)
	movl	%esi, -420(%rbp)
	movq	%rdx, -432(%rbp)
	movq	-432(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC18(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1267
	movq	-432(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1269
	movq	-432(%rbp), %rsi
	movl	$32, %edx
	movq	-440(%rbp), %rdi
	call	_memmove
	jmp	L1266
L1269:
	leaq	-224(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smp_getclass
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	leaq	-256(%rbp), %rdi
	movq	-432(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-256(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-440(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1266
L1267:
	leaq	-96(%rbp), %rdi
	leaq	LC28(%rip), %rsi
	call	_smp_getclass
	leaq	-96(%rbp), %rsi
	movq	-432(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edi
	call	_smpObject_instancep_cint
	testl	%eax, %eax
	je	L1272
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	-288(%rbp), %rdi
	movq	-432(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-288(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-440(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1266
L1272:
	movq	-432(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-432(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	$16, -16(%rbp)
	movq	-16(%rbp), %rdi
	incq	%rdi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpList_length_clong
	movq	%rax, -56(%rbp)
	jmp	L1274
L1275:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	L1276
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	L1278
	salq	-16(%rbp)
	movq	-16(%rbp), %rsi
	incq	%rsi
	movq	-24(%rbp), %rdi
	call	_GC_realloc
	movq	%rax, -24(%rbp)
L1278:
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	incq	-32(%rbp)
	incq	-48(%rbp)
	jmp	L1274
L1276:
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	L1280
	incq	-40(%rbp)
	jmp	L1282
L1283:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	jne	L1282
	movq	-48(%rbp), %rax
	incq	%rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	L1282
	incq	-40(%rbp)
L1282:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%al
	incq	-48(%rbp)
	testb	%al, %al
	jne	L1283
	leaq	-320(%rbp), %rdi
	leaq	LC132(%rip), %rsi
	call	_smp_getclass
	leaq	-352(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-304(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC176(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-352(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-344(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-336(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-440(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1266
L1280:
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	leaq	-160(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	call	_obj_put_fmt
	movq	-144(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1287
	movq	-160(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-152(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-144(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-136(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1266
L1287:
	movq	-144(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC18(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	je	L1291
	leaq	-384(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smp_getclass
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	leaq	-416(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-416(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-408(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-400(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-440(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1266
L1292:
	salq	-16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	call	_GC_realloc
	movq	%rax, -24(%rbp)
L1291:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	%rdx, %rax
	cmpq	%rax, %rcx
	ja	L1292
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	movq	%rax, %rdx
	movq	$-1, %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	addq	-24(%rbp), %rdi
	movq	%rdx, %r8
	leaq	LC177(%rip), %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	___sprintf_chk
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	addq	-24(%rbp), %rdi
	call	_strlen
	addq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1294
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -104(%rbp)
	jmp	L1296
L1294:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -104(%rbp)
L1296:
	incq	-40(%rbp)
L1274:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L1275
	movq	-32(%rbp), %rax
	addq	-24(%rbp), %rax
	movb	$0, (%rax)
	leaq	-192(%rbp), %rdi
	movq	-24(%rbp), %rsi
	call	_smpString_init
	movq	-24(%rbp), %rdi
	call	_GC_free
	movq	-192(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-184(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-176(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-168(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1266:
	movq	-440(%rbp), %rax
	leave
	ret
LFE291:
	.cstring
	.align 3
LC178:
	.ascii "Undefined format %s (does not begin with '%%').\0"
LC179:
	.ascii "Undefined format type %c.\0"
	.text
.globl _obj_put_fmt
_obj_put_fmt:
LFB292:
	pushq	%rbp
LCFI679:
	movq	%rsp, %rbp
LCFI680:
	pushq	%rbx
LCFI681:
	subq	$392, %rsp
LCFI682:
	movq	%rdi, -360(%rbp)
	movq	%rsi, -296(%rbp)
	movq	%rdx, -304(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -24(%rbp)
	xorl	%edx, %edx
	movq	-296(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	L1300
	leaq	-192(%rbp), %rdi
	leaq	LC132(%rip), %rsi
	call	_smp_getclass
	leaq	-224(%rbp), %rdi
	movq	-296(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC178(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-224(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-360(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1299
L1300:
	incq	-296(%rbp)
	movl	$0, -32(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	L1303
L1304:
	movl	-32(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al,%eax
	subl	$48, %eax
	leal	(%rdx,%rax), %eax
	movl	%eax, -32(%rbp)
	incq	-48(%rbp)
L1303:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	L1305
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	L1304
L1305:
	movl	$0, -36(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	L1307
	jmp	L1309
L1310:
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al,%eax
	subl	$48, %eax
	leal	(%rdx,%rax), %eax
	movl	%eax, -36(%rbp)
L1309:
	incq	-48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	L1307
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	L1310
L1307:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	incq	-48(%rbp)
	movl	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -72(%rbp)
	cmpl	$0, -36(%rbp)
	je	L1312
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC141(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1312
	movl	-36(%rbp), %eax
	movslq	%eax,%rsi
	leaq	-336(%rbp), %rdi
	call	_smpInteger_init_clong
	movq	-336(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$1, -40(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
L1312:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -104(%rbp)
	cmpb	$115, -25(%rbp)
	jne	L1315
	leaq	-128(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movl	-40(%rbp), %edx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rsi
	call	_smpObject_funcall
	jmp	L1317
L1315:
	cmpb	$119, -25(%rbp)
	jne	L1318
	leaq	-336(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movl	-40(%rbp), %edx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rsi
	call	_smpObject_funcall
	movq	-336(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	L1317
L1318:
	movsbl	-25(%rbp),%ebx
	leaq	-256(%rbp), %rdi
	leaq	LC132(%rip), %rsi
	call	_smp_getclass
	leaq	-288(%rbp), %rdi
	movq	-256(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	%ebx, %edx
	leaq	LC179(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	leaq	-336(%rbp), %rdi
	movq	-288(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpGlobal_throw
	movq	-336(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -104(%rbp)
L1317:
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1320
	movq	-128(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-112(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-104(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1299
L1320:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$116, %al
	jne	L1322
	movq	%rsp, %rax
	movq	%rax, -344(%rbp)
	incq	-48(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	call	_strlen
	addq	$2, %rax
	addq	$15, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	leaq	32(%rsp), %rcx
	movq	%rcx, -352(%rbp)
	movq	-352(%rbp), %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	$58, (%rax)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L1324
	movq	$-1, %rdx
	movq	32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdi
	call	___strcpy_chk
	jmp	L1326
L1324:
	movq	32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdi
	call	___inline_strcpy_chk
L1326:
	movq	-64(%rbp), %rsi
	leaq	-160(%rbp), %rdi
	call	_smpString_init
	leaq	-336(%rbp), %rdi
	leaq	-160(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add
	movq	-336(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-344(%rbp), %rsp
L1322:
	cmpq	$0, -304(%rbp)
	je	L1327
	movq	-304(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
L1327:
	movq	-128(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-120(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-112(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-104(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, 24(%rcx)
L1299:
	movq	-360(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-24(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	L1330
	call	___stack_chk_fail
L1330:
	movq	-8(%rbp), %rbx
	leave
	ret
LFE292:
.globl _smpGlobal_throw
_smpGlobal_throw:
LFB293:
	pushq	%rbp
LCFI683:
	movq	%rsp, %rbp
LCFI684:
	pushq	%rbx
LCFI685:
	subq	$72, %rsp
LCFI686:
	movq	%rdi, %rbx
	leaq	-48(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %esi
	call	_smpThrown_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE293:
.globl _smpGlobal_throw_arg
_smpGlobal_throw_arg:
LFB294:
	pushq	%rbp
LCFI687:
	movq	%rsp, %rbp
LCFI688:
	pushq	%rbx
LCFI689:
	subq	$56, %rsp
LCFI690:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smpGlobal_throw
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE294:
.globl _smpHash_create_class
_smpHash_create_class:
LFB295:
	pushq	%rbp
LCFI691:
	movq	%rsp, %rbp
LCFI692:
	subq	$352, %rsp
LCFI693:
	movl	$0, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC163(%rip), %rdi
	call	_smpGlobal_class
	leaq	-32(%rbp), %rdi
	leaq	LC163(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	leaq	LC42(%rip), %r8
	leaq	LC37(%rip), %rcx
	movl	$2, %edx
	movq	_smpHash_add_now@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC107(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-96(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC37(%rip), %rcx
	movl	$2, %edx
	movq	_smpHash_at@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC108(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-128(%rbp), %rdi
	leaq	LC37(%rip), %r9
	leaq	LC37(%rip), %r8
	leaq	LC37(%rip), %rcx
	movl	$3, %edx
	movq	_smpHash_at_assign@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC109(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-160(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpHash_clear@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC20(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-192(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpHash_gc_mark@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-192(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC57(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-224(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpHash_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-256(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpHash_write@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE295:
.globl _smpHash_add_now
_smpHash_add_now:
LFB296:
	pushq	%rbp
LCFI694:
	movq	%rsp, %rbp
LCFI695:
	addq	$-128, %rsp
LCFI696:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC42(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1338
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1340
	movq	-80(%rbp), %rsi
	movl	$32, %edx
	movq	-88(%rbp), %rdi
	call	_memmove
	jmp	L1337
L1340:
	leaq	-32(%rbp), %rdi
	leaq	LC42(%rip), %rsi
	call	_smp_getclass
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	-64(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1337
L1338:
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpHash_core_add_now
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1343
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rsi
	movl	$32, %edx
	movq	-88(%rbp), %rdi
	call	_memmove
	jmp	L1337
L1343:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1337:
	movq	-88(%rbp), %rax
	leave
	ret
LFE296:
.globl _smpHash_core_add_now
_smpHash_core_add_now:
LFB297:
	pushq	%rbp
LCFI697:
	movq	%rsp, %rbp
LCFI698:
	pushq	%rbx
LCFI699:
	subq	$280, %rsp
LCFI700:
	movq	%rdi, -136(%rbp)
	movl	$0, -20(%rbp)
	leaq	-64(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_car
	leaq	-20(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_obj_hash
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	L1348
	movl	-24(%rbp), %eax
	movl	%eax, -228(%rbp)
	jmp	L1350
L1348:
	movl	-20(%rbp), %eax
	movslq	%eax,%rdx
	movq	-136(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	%rdx, %rax
	movl	$0, %edx
	divq	-248(%rbp)
	movq	%rdx, %rax
	movl	%eax, -20(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	(%rdx,%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	L1351
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	(%rdx,%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1353
L1351:
	movq	-136(%rbp), %rax
	movq	48(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	(%rdx,%rax), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
L1353:
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rax, %rdx
	leaq	-176(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpObject_cons
	movq	-176(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-136(%rbp), %rax
	movq	56(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-136(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	%rdx, %rax
	movl	$0, %edx
	divq	-248(%rbp)
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	js	L1354
	cvtsi2sdq	-224(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)
	jmp	L1355
L1354:
	movq	-224(%rbp), %rax
	shrq	%rax
	movq	-224(%rbp), %rdx
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -216(%rbp)
L1355:
	movsd	-216(%rbp), %xmm2
	ucomisd	LC12(%rip), %xmm2
	ja	L1358
	jmp	L1356
L1358:
	movq	-136(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	js	L1359
	cvtsi2sdq	-208(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	jmp	L1360
L1359:
	movq	-208(%rbp), %rax
	shrq	%rax
	movq	-208(%rbp), %rdx
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -200(%rbp)
L1360:
	movsd	LC12(%rip), %xmm0
	movsd	-200(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	LC13(%rip), %xmm0
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -192(%rbp)
	movsd	-192(%rbp), %xmm0
	ucomisd	LC14(%rip), %xmm0
	jae	L1361
	cvttsd2siq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	L1362
L1361:
	movsd	LC14(%rip), %xmm0
	movsd	-192(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -184(%rbp)
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, -184(%rbp)
L1362:
	leaq	-128(%rbp), %rdi
	movq	-184(%rbp), %rsi
	call	_smpHash_core_init_capacity
	movq	-136(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	call	_smpHash_core_copy
	movq	-136(%rbp), %rdi
	call	_smpHash_core_clear
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rdx)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rdx)
L1356:
	movl	$0, -228(%rbp)
L1350:
	movl	-228(%rbp), %eax
	addq	$280, %rsp
	popq	%rbx
	leave
	ret
LFE297:
.globl _smpHash_at
_smpHash_at:
LFB298:
	pushq	%rbp
LCFI701:
	movq	%rsp, %rbp
LCFI702:
	subq	$224, %rsp
LCFI703:
	movq	%rdi, -168(%rbp)
	movl	%esi, -148(%rbp)
	movq	%rdx, -160(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -144(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -136(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	40(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	48(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	56(%rdx), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rdi
	movq	-160(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_obj_hash
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	L1365
	movl	-8(%rbp), %eax
	movslq	%eax,%rsi
	movq	-168(%rbp), %rdi
	call	_smpInteger_init_clong
	jmp	L1364
L1365:
	movl	-4(%rbp), %eax
	movslq	%eax,%rdx
	movq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	%rdx, %rax
	movl	$0, %edx
	divq	-184(%rbp)
	movq	%rdx, %rax
	movl	%eax, -4(%rbp)
	movq	-144(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	(%rdx,%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	L1368
	movq	-144(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	(%rdx,%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L1370
L1368:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1364
L1370:
	movq	-144(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	L1371
L1372:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	leaq	-80(%rbp), %rdi
	movq	-160(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC54(%rip), %rsi
	call	_smpObject_funcall
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1373
	movq	-80(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1364
L1373:
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1375
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpBool_to_cint
	testl	%eax, %eax
	je	L1375
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	movq	-168(%rbp), %rdi
	call	_smpList_cdr
	jmp	L1364
L1375:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
L1371:
	cmpq	$0, -16(%rbp)
	jne	L1372
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	8(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	16(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	24(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	32(%rdx), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1364:
	movq	-168(%rbp), %rax
	leave
	ret
LFE298:
.globl _smpHash_at_assign
_smpHash_at_assign:
LFB299:
	pushq	%rbp
LCFI704:
	movq	%rsp, %rbp
LCFI705:
	addq	$-128, %rsp
LCFI706:
	movq	%rdi, -56(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	addq	$32, %rdx
	leaq	-32(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpPair_init
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1381
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1380
L1381:
	leaq	-32(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	call	_smpHash_add_now
L1380:
	movq	-56(%rbp), %rax
	leave
	ret
LFE299:
.globl _smpHash_clear
_smpHash_clear:
LFB300:
	pushq	%rbp
LCFI707:
	movq	%rsp, %rbp
LCFI708:
	pushq	%rbx
LCFI709:
	subq	$24, %rsp
LCFI710:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	_smpHash_core_clear
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE300:
.globl _smpHash_core_clear
_smpHash_core_clear:
LFB301:
	pushq	%rbp
LCFI711:
	movq	%rsp, %rbp
LCFI712:
	subq	$16, %rsp
LCFI713:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	call	_GC_free
	movl	$0, %eax
	leave
	ret
LFE301:
	.cstring
	.align 3
LC180:
	.ascii "hash contains?() not implemented.\0"
	.text
.globl _smpHash_containsp
_smpHash_containsp:
LFB302:
	pushq	%rbp
LCFI714:
	movq	%rsp, %rbp
LCFI715:
	pushq	%rbx
LCFI716:
	subq	$120, %rsp
LCFI717:
	movq	%rdi, %rbx
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	LC9(%rip), %rsi
	call	_smp_getclass
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC180(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smpGlobal_throw
	movq	%rbx, %rax
	addq	$120, %rsp
	popq	%rbx
	leave
	ret
LFE302:
.globl _smpHash_core_copy
_smpHash_core_copy:
LFB303:
	pushq	%rbp
LCFI718:
	movq	%rsp, %rbp
LCFI719:
	subq	$64, %rsp
LCFI720:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	L1392
L1393:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	L1394
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	L1396
L1397:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpHash_core_add_now
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
L1396:
	cmpq	$0, -16(%rbp)
	jne	L1397
L1394:
	incq	-8(%rbp)
L1392:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	-8(%rbp), %rax
	ja	L1393
	movl	$0, %eax
	leave
	ret
LFE303:
.globl _smpHash_gc_mark
_smpHash_gc_mark:
LFB304:
	pushq	%rbp
LCFI721:
	movq	%rsp, %rbp
LCFI722:
	subq	$144, %rsp
LCFI723:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	40(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	48(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	56(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L1401
L1402:
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edi
	call	_gc_mark_recursive
	incq	-8(%rbp)
L1401:
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	ja	L1402
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-104(%rbp), %rax
	leave
	ret
LFE304:
.globl _smpHash_init
_smpHash_init:
LFB305:
	pushq	%rbp
LCFI724:
	movq	%rsp, %rbp
LCFI725:
	pushq	%rbx
LCFI726:
	subq	$8, %rsp
LCFI727:
	movq	%rdi, %rbx
	movl	$10, %esi
	movq	%rbx, %rdi
	call	_smpHash_init_capacity
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE305:
.globl _smpHash_init_capacity
_smpHash_init_capacity:
LFB306:
	pushq	%rbp
LCFI728:
	movq	%rsp, %rbp
LCFI729:
	pushq	%r12
LCFI730:
	pushq	%rbx
LCFI731:
	subq	$144, %rsp
LCFI732:
	movq	%rdi, %r12
	movq	%rsi, -88(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	LC163(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-48(%rbp), %rdi
	call	_obj_init
	movl	$64, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rbx
	leaq	-160(%rbp), %rdi
	movq	-88(%rbp), %rsi
	call	_smpHash_core_init_capacity
	movq	-160(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rbx)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, (%r12)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%r12)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%r12)
	movq	%r12, %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
LFE306:
.globl _smpHash_core_init_capacity
_smpHash_core_init_capacity:
LFB307:
	pushq	%rbp
LCFI733:
	movq	%rsp, %rbp
LCFI734:
	subq	$80, %rsp
LCFI735:
	movq	%rdi, -80(%rbp)
	movq	%rsi, -72(%rbp)
	cmpq	$9, -72(%rbp)
	ja	L1410
	movq	$10, -72(%rbp)
L1410:
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	salq	$5, %rdi
	call	_GC_malloc
	movq	%rax, -64(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L1412
	movq	$-1, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	-64(%rbp), %rdi
	movl	$0, %esi
	call	___memset_chk
	jmp	L1414
L1412:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	-64(%rbp), %rdi
	movl	$0, %esi
	call	___inline_memset_chk
L1414:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-80(%rbp), %rax
	leave
	ret
LFE307:
.globl _smpHash_to_s
_smpHash_to_s:
LFB308:
	pushq	%rbp
LCFI736:
	movq	%rsp, %rbp
LCFI737:
	pushq	%rbx
LCFI738:
	subq	$56, %rsp
LCFI739:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rsi
	movq	%rbx, %rdi
	call	_smpHash_make_string
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE308:
.globl _smpHash_write
_smpHash_write:
LFB309:
	pushq	%rbp
LCFI740:
	movq	%rsp, %rbp
LCFI741:
	pushq	%rbx
LCFI742:
	subq	$56, %rsp
LCFI743:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rsi
	movq	%rbx, %rdi
	call	_smpHash_make_string
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE309:
	.cstring
LC181:
	.ascii "(hash\0"
	.text
.globl _smpHash_make_string
_smpHash_make_string:
LFB310:
	pushq	%rbp
LCFI744:
	movq	%rsp, %rbp
LCFI745:
	subq	$400, %rsp
LCFI746:
	movq	%rdi, -360(%rbp)
	movq	%rsi, -312(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -304(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -296(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -288(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -280(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -272(%rbp)
	movq	40(%rdx), %rax
	movq	%rax, -264(%rbp)
	movq	48(%rdx), %rax
	movq	%rax, -256(%rbp)
	movq	56(%rdx), %rax
	movq	%rax, -248(%rbp)
	movq	-304(%rbp), %rax
	testq	%rax, %rax
	jne	L1421
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1420
L1421:
	leaq	-80(%rbp), %rdi
	leaq	LC181(%rip), %rsi
	call	_smpString_init
	leaq	-112(%rbp), %rdi
	leaq	LC127(%rip), %rsi
	call	_smpString_init
	leaq	-144(%rbp), %rdi
	leaq	LC52(%rip), %rsi
	call	_smpString_init
	leaq	-176(%rbp), %rdi
	leaq	LC128(%rip), %rsi
	call	_smpString_init
	movq	$0, -8(%rbp)
	jmp	L1424
L1425:
	movq	-304(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	L1426
	movq	-304(%rbp), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	L1428
L1429:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	-352(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	call	_smpObject_funcall
	movq	-352(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1430
	movq	-48(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1420
L1430:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC18(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	je	L1432
	leaq	-208(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smp_getclass
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	leaq	-240(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-240(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-360(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1420
L1432:
	leaq	-352(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	leaq	-352(%rbp), %rdi
	leaq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
L1428:
	cmpq	$0, -16(%rbp)
	jne	L1429
L1426:
	incq	-8(%rbp)
L1424:
	movq	-264(%rbp), %rax
	cmpq	-8(%rbp), %rax
	ja	L1425
	leaq	-352(%rbp), %rdi
	leaq	-176(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-80(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1420:
	movq	-360(%rbp), %rax
	leave
	ret
LFE310:
	.cstring
LC182:
	.ascii "mod\0"
LC183:
	.ascii "inc\0"
LC184:
	.ascii "dec\0"
LC185:
	.ascii "range\0"
	.text
.globl _smpInteger_create_class
_smpInteger_create_class:
LFB311:
	pushq	%rbp
LCFI747:
	movq	%rsp, %rbp
LCFI748:
	pushq	%rbx
LCFI749:
	subq	$1032, %rsp
LCFI750:
	leaq	_smp_free_size(%rip), %rdx
	leaq	_smp_realloc_size(%rip), %rsi
	leaq	_smp_malloc_fun(%rip), %rdi
	call	___gmp_set_memory_functions
	leaq	-80(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edx
	leaq	LC86(%rip), %rdi
	call	_smpGlobal_class
	leaq	-48(%rbp), %rdi
	leaq	LC86(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_int@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	leaq	-112(%rbp), %rdi
	leaq	LC86(%rip), %rdx
	movq	_smpType_ids@GOTPCREL(%rip), %rsi
	call	_minihash_get
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	leaq	-144(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpInteger_clear@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC20(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def
	leaq	-176(%rbp), %rdi
	leaq	LC140(%rip), %r8
	leaq	LC140(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_add@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC71(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-208(%rbp), %rdi
	leaq	LC140(%rip), %r8
	leaq	LC140(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_sub@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC72(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-240(%rbp), %rdi
	leaq	LC140(%rip), %r8
	leaq	LC140(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_mul@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC73(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-272(%rbp), %rdi
	leaq	LC140(%rip), %r8
	leaq	LC140(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_div@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-256(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC74(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-304(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC86(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_mod@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-288(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC75(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-336(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC86(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_mod@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-336(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-320(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC182(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-368(%rbp), %rdi
	leaq	LC140(%rip), %r8
	leaq	LC140(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_pow@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-368(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-352(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-344(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC142(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-400(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC86(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_shl@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-384(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-376(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC76(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-432(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC86(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_shr@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-416(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-408(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC77(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-464(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC86(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_and@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-464(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-448(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-440(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC78(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-496(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC86(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_ior@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-496(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-480(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-472(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC79(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-528(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC86(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_xor@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-528(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-512(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC80(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-560(%rbp), %rdi
	leaq	LC86(%rip), %rcx
	movl	$1, %edx
	movq	_smpInteger_inc@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-560(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-552(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-544(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-536(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC183(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-592(%rbp), %rdi
	leaq	LC86(%rip), %rcx
	movl	$1, %edx
	movq	_smpInteger_dec@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-592(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-584(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-576(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-568(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC184(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-624(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC86(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_cmp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-624(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-616(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-608(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-600(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC21(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-656(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_equalp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-656(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-648(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-640(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-632(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC51(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-688(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_nequalp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-688(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-680(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-672(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-664(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC143(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-720(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_lt@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-720(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-712(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-704(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-696(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC144(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-752(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_le@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-736(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-728(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC145(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-784(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_ge@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-784(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-776(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-768(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-760(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC146(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-816(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_gt@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-816(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-808(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-800(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-792(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC147(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-848(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_eq@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-848(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-840(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-832(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-824(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC25(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-880(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpInteger_equalp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-880(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-872(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-864(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-856(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC24(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-912(%rbp), %rdi
	leaq	LC18(%rip), %rax
	movq	%rax, (%rsp)
	leaq	LC112(%rip), %r9
	leaq	LC86(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$4, %edx
	movq	_smpInteger_range@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-912(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-904(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-896(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-888(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC185(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-944(%rbp), %rdi
	leaq	LC86(%rip), %r9
	leaq	LC112(%rip), %r8
	leaq	LC18(%rip), %rcx
	movl	$3, %edx
	movq	_smpInteger_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-976(%rbp), %rdi
	movq	-944(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-936(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-928(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-920(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movq	_smpInteger_zero@GOTPCREL(%rip), %rbx
	leaq	-976(%rbp), %rdi
	movl	$0, %esi
	call	_smpInteger_init_clong
	movq	-976(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-968(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-960(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-952(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	_smpInteger_one@GOTPCREL(%rip), %rbx
	leaq	-976(%rbp), %rdi
	movl	$1, %esi
	call	_smpInteger_init_clong
	movq	-976(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-968(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-960(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-952(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	$0, %eax
	addq	$1032, %rsp
	popq	%rbx
	leave
	ret
LFE311:
.globl _smpInteger_init_mpz
_smpInteger_init_mpz:
LFB312:
	pushq	%rbp
LCFI751:
	movq	%rsp, %rbp
LCFI752:
	pushq	%rbx
LCFI753:
	subq	$56, %rsp
LCFI754:
	movq	%rdi, %rbx
	movq	%rsi, -56(%rbp)
	leaq	-48(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi
	call	___gmpz_init_set
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE312:
.globl _smpInteger_init_mpz_ref
_smpInteger_init_mpz_ref:
LFB313:
	pushq	%rbp
LCFI755:
	movq	%rsp, %rbp
LCFI756:
	pushq	%rbx
LCFI757:
	subq	$56, %rsp
LCFI758:
	movq	%rdi, %rbx
	movq	%rsi, -56(%rbp)
	leaq	-48(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE313:
.globl _smpInteger_init_clong
_smpInteger_init_clong:
LFB314:
	pushq	%rbp
LCFI759:
	movq	%rsp, %rbp
LCFI760:
	pushq	%rbx
LCFI761:
	subq	$72, %rsp
LCFI762:
	movq	%rdi, %rbx
	movq	%rsi, -72(%rbp)
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	call	___gmpz_init_set_si
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	call	_smpInteger_init_mpz_ref
	movq	-64(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE314:
.globl _smpInteger_init_str
_smpInteger_init_str:
LFB315:
	pushq	%rbp
LCFI763:
	movq	%rsp, %rbp
LCFI764:
	pushq	%rbx
LCFI765:
	subq	$72, %rsp
LCFI766:
	movq	%rdi, %rbx
	movq	%rsi, -72(%rbp)
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	$0, %edx
	call	___gmpz_init_set_str
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	call	_smpInteger_init_mpz_ref
	movq	-64(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE315:
.globl _smpInteger_clear
_smpInteger_clear:
LFB316:
	pushq	%rbp
LCFI767:
	movq	%rsp, %rbp
LCFI768:
	pushq	%rbx
LCFI769:
	subq	$24, %rsp
LCFI770:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	___gmpz_clear
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE316:
.globl _smpInteger_add
_smpInteger_add:
LFB317:
	pushq	%rbp
LCFI771:
	movq	%rsp, %rbp
LCFI772:
	subq	$144, %rsp
LCFI773:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1449
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_init
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	___gmpz_add
	movq	-8(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1448
L1449:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1452
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	call	_mpfr_add_z
	movq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L1448
L1452:
	leaq	-48(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-104(%rbp), %rdi
	call	_smpGlobal_throw
L1448:
	movq	-104(%rbp), %rax
	leave
	ret
LFE317:
.globl _smpInteger_sub
_smpInteger_sub:
LFB318:
	pushq	%rbp
LCFI774:
	movq	%rsp, %rbp
LCFI775:
	subq	$144, %rsp
LCFI776:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1456
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_init
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	___gmpz_sub
	movq	-8(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1455
L1456:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1459
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	call	_mpfr_sub_z
	movq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L1455
L1459:
	leaq	-48(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-104(%rbp), %rdi
	call	_smpGlobal_throw
L1455:
	movq	-104(%rbp), %rax
	leave
	ret
LFE318:
.globl _smpInteger_mul
_smpInteger_mul:
LFB319:
	pushq	%rbp
LCFI777:
	movq	%rsp, %rbp
LCFI778:
	subq	$144, %rsp
LCFI779:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1463
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_init
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	___gmpz_mul
	movq	-8(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1462
L1463:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1466
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	call	_mpfr_mul_z
	movq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L1462
L1466:
	leaq	-48(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-104(%rbp), %rdi
	call	_smpGlobal_throw
L1462:
	movq	-104(%rbp), %rax
	leave
	ret
LFE319:
.globl _smpInteger_div
_smpInteger_div:
LFB320:
	pushq	%rbp
LCFI780:
	movq	%rsp, %rbp
LCFI781:
	subq	$144, %rsp
LCFI782:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1470
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_init
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	___gmpz_fdiv_q
	movq	-8(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1469
L1470:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1473
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	call	_mpfr_div_z
	movq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L1469
L1473:
	leaq	-48(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-104(%rbp), %rdi
	call	_smpGlobal_throw
L1469:
	movq	-104(%rbp), %rax
	leave
	ret
LFE320:
.globl _smpInteger_mod
_smpInteger_mod:
LFB321:
	pushq	%rbp
LCFI783:
	movq	%rsp, %rbp
LCFI784:
	subq	$112, %rsp
LCFI785:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1477
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_init
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	___gmpz_mod
	movq	-8(%rbp), %rsi
	movq	-72(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1476
L1477:
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-72(%rbp), %rdi
	call	_smpGlobal_throw
L1476:
	movq	-72(%rbp), %rax
	leave
	ret
LFE321:
.globl _smpInteger_pow
_smpInteger_pow:
LFB322:
	pushq	%rbp
LCFI786:
	movq	%rsp, %rbp
LCFI787:
	subq	$176, %rsp
LCFI788:
	movq	%rdi, -136(%rbp)
	movl	%esi, -116(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1482
	leaq	-48(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	leaq	-48(%rbp), %rdi
	call	_mpfr_set_z
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	call	_mpfr_pow_z
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	call	_mpfr_get_z
	leaq	-48(%rbp), %rdi
	call	_mpfr_clear
	movq	-8(%rbp), %rsi
	movq	-136(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1481
L1482:
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1485
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	call	_mpfr_pow
	movq	-16(%rbp), %rsi
	movq	-136(%rbp), %rdi
	call	_smpFloat_init_mpfr_ref
	jmp	L1481
L1485:
	leaq	-80(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-112(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-136(%rbp), %rdi
	call	_smpGlobal_throw
L1481:
	movq	-136(%rbp), %rax
	leave
	ret
LFE322:
.globl _smpInteger_shl
_smpInteger_shl:
LFB323:
	pushq	%rbp
LCFI789:
	movq	%rsp, %rbp
LCFI790:
	addq	$-128, %rsp
LCFI791:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1489
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_fits_ulong_p
	testl	%eax, %eax
	jne	L1491
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1488
L1491:
	movq	-8(%rbp), %rdi
	call	___gmpz_get_ui
	movq	%rax, -16(%rbp)
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	call	___gmpz_init
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	call	___gmpz_mul_2exp
	movq	-24(%rbp), %rsi
	movq	-88(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1488
L1489:
	leaq	-64(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rdi
	call	_smpGlobal_throw
L1488:
	movq	-88(%rbp), %rax
	leave
	ret
LFE323:
.globl _smpInteger_shr
_smpInteger_shr:
LFB324:
	pushq	%rbp
LCFI792:
	movq	%rsp, %rbp
LCFI793:
	addq	$-128, %rsp
LCFI794:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1496
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_fits_ulong_p
	testl	%eax, %eax
	jne	L1498
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1495
L1498:
	movq	-8(%rbp), %rdi
	call	___gmpz_get_ui
	movq	%rax, -16(%rbp)
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	call	___gmpz_init
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	call	___gmpz_fdiv_q_2exp
	movq	-24(%rbp), %rsi
	movq	-88(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1495
L1496:
	leaq	-64(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rdi
	call	_smpGlobal_throw
L1495:
	movq	-88(%rbp), %rax
	leave
	ret
LFE324:
.globl _smpInteger_and
_smpInteger_and:
LFB325:
	pushq	%rbp
LCFI795:
	movq	%rsp, %rbp
LCFI796:
	subq	$112, %rsp
LCFI797:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1503
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_init
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	___gmpz_and
	movq	-8(%rbp), %rsi
	movq	-72(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1502
L1503:
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-72(%rbp), %rdi
	call	_smpGlobal_throw
L1502:
	movq	-72(%rbp), %rax
	leave
	ret
LFE325:
.globl _smpInteger_ior
_smpInteger_ior:
LFB326:
	pushq	%rbp
LCFI798:
	movq	%rsp, %rbp
LCFI799:
	subq	$112, %rsp
LCFI800:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1508
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_init
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	___gmpz_ior
	movq	-8(%rbp), %rsi
	movq	-72(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1507
L1508:
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-72(%rbp), %rdi
	call	_smpGlobal_throw
L1507:
	movq	-72(%rbp), %rax
	leave
	ret
LFE326:
.globl _smpInteger_not
_smpInteger_not:
LFB327:
	pushq	%rbp
LCFI801:
	movq	%rsp, %rbp
LCFI802:
	subq	$112, %rsp
LCFI803:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1513
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_init
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	___gmpz_com
	movq	-8(%rbp), %rsi
	movq	-72(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1512
L1513:
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-72(%rbp), %rdi
	call	_smpGlobal_throw
L1512:
	movq	-72(%rbp), %rax
	leave
	ret
LFE327:
.globl _smpInteger_xor
_smpInteger_xor:
LFB328:
	pushq	%rbp
LCFI804:
	movq	%rsp, %rbp
LCFI805:
	subq	$112, %rsp
LCFI806:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1518
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	call	___gmpz_init
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	call	___gmpz_xor
	movq	-8(%rbp), %rsi
	movq	-72(%rbp), %rdi
	call	_smpInteger_init_mpz_ref
	jmp	L1517
L1518:
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-72(%rbp), %rdi
	call	_smpGlobal_throw
L1517:
	movq	-72(%rbp), %rax
	leave
	ret
LFE328:
.globl _smpInteger_inc
_smpInteger_inc:
LFB329:
	pushq	%rbp
LCFI807:
	movq	%rsp, %rbp
LCFI808:
	pushq	%rbx
LCFI809:
	subq	$56, %rsp
LCFI810:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smpInteger_one@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_smpInteger_add
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE329:
.globl _smpInteger_dec
_smpInteger_dec:
LFB330:
	pushq	%rbp
LCFI811:
	movq	%rsp, %rbp
LCFI812:
	pushq	%rbx
LCFI813:
	subq	$56, %rsp
LCFI814:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smpInteger_one@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_smpInteger_sub
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE330:
.globl _smpInteger_cmp_cint
_smpInteger_cmp_cint:
LFB331:
	pushq	%rbp
LCFI815:
	movq	%rsp, %rbp
LCFI816:
	pushq	%rbx
LCFI817:
	subq	$216, %rsp
LCFI818:
	movq	%rdi, -104(%rbp)
	movq	64(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1527
	movq	72(%rbp), %rax
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	___gmpz_cmp
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -148(%rbp)
	jmp	L1529
L1527:
	movq	64(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1530
	movq	-104(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpFloat_cmp_cint
	movl	%eax, -148(%rbp)
	jmp	L1529
L1530:
	leaq	-64(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	-96(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-104(%rbp), %rbx
	leaq	-144(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpGlobal_throw
	movq	-144(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	$-2, -148(%rbp)
L1529:
	movl	-148(%rbp), %eax
	addq	$216, %rsp
	popq	%rbx
	leave
	ret
LFE331:
.globl _smpInteger_cmp
_smpInteger_cmp:
LFB332:
	pushq	%rbp
LCFI819:
	movq	%rsp, %rbp
LCFI820:
	subq	$144, %rsp
LCFI821:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1534
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1533
L1534:
	movl	-4(%rbp), %eax
	movslq	%eax,%rsi
	movq	-72(%rbp), %rdi
	call	_smpInteger_init_clong
L1533:
	movq	-72(%rbp), %rax
	leave
	ret
LFE332:
.globl _smpInteger_equalp
_smpInteger_equalp:
LFB333:
	pushq	%rbp
LCFI822:
	movq	%rsp, %rbp
LCFI823:
	subq	$144, %rsp
LCFI824:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1539
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1538
L1539:
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1538:
	movq	-72(%rbp), %rax
	leave
	ret
LFE333:
.globl _smpInteger_nequalp
_smpInteger_nequalp:
LFB334:
	pushq	%rbp
LCFI825:
	movq	%rsp, %rbp
LCFI826:
	subq	$144, %rsp
LCFI827:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1544
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1543
L1544:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1543:
	movq	-72(%rbp), %rax
	leave
	ret
LFE334:
.globl _smpInteger_lt
_smpInteger_lt:
LFB335:
	pushq	%rbp
LCFI828:
	movq	%rsp, %rbp
LCFI829:
	subq	$144, %rsp
LCFI830:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1549
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1548
L1549:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1548:
	movq	-72(%rbp), %rax
	leave
	ret
LFE335:
.globl _smpInteger_le
_smpInteger_le:
LFB336:
	pushq	%rbp
LCFI831:
	movq	%rsp, %rbp
LCFI832:
	subq	$144, %rsp
LCFI833:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1554
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1553
L1554:
	cmpl	$0, -4(%rbp)
	setle	%al
	movzbl	%al, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1553:
	movq	-72(%rbp), %rax
	leave
	ret
LFE336:
.globl _smpInteger_ge
_smpInteger_ge:
LFB337:
	pushq	%rbp
LCFI834:
	movq	%rsp, %rbp
LCFI835:
	subq	$144, %rsp
LCFI836:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1559
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1558
L1559:
	movl	-4(%rbp), %eax
	notl	%eax
	movl	%eax, %esi
	shrl	$31, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1558:
	movq	-72(%rbp), %rax
	leave
	ret
LFE337:
.globl _smpInteger_gt
_smpInteger_gt:
LFB338:
	pushq	%rbp
LCFI837:
	movq	%rsp, %rbp
LCFI838:
	subq	$144, %rsp
LCFI839:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_cmp_cint
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1564
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1563
L1564:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %esi
	movq	-72(%rbp), %rdi
	call	_smpBool_init
L1563:
	movq	-72(%rbp), %rax
	leave
	ret
LFE338:
.globl _smpInteger_eq
_smpInteger_eq:
LFB339:
	pushq	%rbp
LCFI840:
	movq	%rsp, %rbp
LCFI841:
	pushq	%rbx
LCFI842:
	subq	$56, %rsp
LCFI843:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %esi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smpInteger_equalp
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE339:
	.cstring
	.align 3
LC186:
	.ascii "Invalid range type %s (expected \"Array\" or \"List\").\0"
	.text
.globl _smpInteger_range
_smpInteger_range:
LFB340:
	pushq	%rbp
LCFI844:
	movq	%rsp, %rbp
LCFI845:
	pushq	%rbx
LCFI846:
	subq	$376, %rsp
LCFI847:
	movq	%rdi, -312(%rbp)
	movl	%esi, -260(%rbp)
	movq	%rdx, -272(%rbp)
	movl	$0, -20(%rbp)
	cmpl	$1, -260(%rbp)
	jle	L1571
	movq	-272(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC106(%rip), %rdi
	call	_smpString_equalp_cstr
	testl	%eax, %eax
	je	L1573
	movl	$1, -20(%rbp)
	jmp	L1571
L1573:
	movq	-272(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC28(%rip), %rdi
	call	_smpString_equalp_cstr
	testl	%eax, %eax
	je	L1575
	movl	$0, -20(%rbp)
	jmp	L1571
L1575:
	movq	-272(%rbp), %rbx
	addq	$32, %rbx
	leaq	-224(%rbp), %rdi
	leaq	LC22(%rip), %rsi
	call	_smp_getclass
	leaq	-256(%rbp), %rdi
	movq	(%rbx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 56(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC186(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-256(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-312(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1570
L1571:
	movq	16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-272(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -160(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -152(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -144(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -136(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -192(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -184(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -176(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -168(%rbp)
	cmpl	$0, -20(%rbp)
	jne	L1578
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -192(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -184(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -176(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -168(%rbp)
L1580:
	leaq	-160(%rbp), %rdi
	leaq	-128(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC144(%rip), %rsi
	call	_smpObject_funcall
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1581
	movq	-160(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-152(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-144(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-136(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1570
L1581:
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	je	L1583
	leaq	-192(%rbp), %rdi
	movq	-192(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_cons_c
	leaq	-304(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC183(%rip), %rsi
	call	_smpObject_funcall
	movq	-304(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1580
	movq	-96(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-72(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1570
L1583:
	leaq	-304(%rbp), %rdi
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_reverse
	movq	-304(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	L1587
L1578:
	leaq	-304(%rbp), %rdi
	movl	$0, %eax
	call	_smpArray_init
	movq	-304(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -168(%rbp)
L1588:
	leaq	-304(%rbp), %rdi
	leaq	-128(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC144(%rip), %rsi
	call	_smpObject_funcall
	movq	-304(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1589
	movq	-160(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-152(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-144(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-136(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1570
L1589:
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	je	L1587
	leaq	-304(%rbp), %rdi
	leaq	-96(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpArray_add_now
	leaq	-304(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC183(%rip), %rsi
	call	_smpObject_funcall
	movq	-304(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1588
	movq	-96(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-72(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1570
L1587:
	movq	-192(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-184(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-176(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-168(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1570:
	movq	-312(%rbp), %rax
	addq	$376, %rsp
	popq	%rbx
	leave
	ret
LFE340:
.globl _smpInteger_to_clong
_smpInteger_to_clong:
LFB341:
	pushq	%rbp
LCFI848:
	movq	%rsp, %rbp
LCFI849:
	pushq	%rbx
LCFI850:
	subq	$168, %rsp
LCFI851:
	movq	%rdi, -88(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	___gmpz_fits_slong_p
	testl	%eax, %eax
	jne	L1596
	leaq	-48(%rbp), %rdi
	leaq	LC120(%rip), %rsi
	call	_smp_getclass
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_index@GOTPCREL(%rip), %rdx
	leaq	LC121(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-88(%rbp), %rbx
	leaq	-128(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpGlobal_throw
	movq	-128(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	$-1, -136(%rbp)
	movl	$2147483647, -132(%rbp)
	jmp	L1598
L1596:
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	___gmpz_get_si
	movq	%rax, -136(%rbp)
L1598:
	movq	-136(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	leave
	ret
LFE341:
.globl _smpInteger_to_s
_smpInteger_to_s:
LFB342:
	pushq	%rbp
LCFI852:
	movq	%rsp, %rbp
LCFI853:
	subq	$144, %rsp
LCFI854:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movl	$10, -4(%rbp)
	cmpl	$0, -84(%rbp)
	je	L1601
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L1601
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC86(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1604
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1606
	movq	-96(%rbp), %rsi
	movl	$32, %edx
	movq	-104(%rbp), %rdi
	call	_memmove
	jmp	L1600
L1606:
	leaq	-48(%rbp), %rdi
	leaq	LC86(%rip), %rsi
	call	_smp_getclass
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-104(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1600
L1604:
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	___gmpz_fits_sint_p
	testl	%eax, %eax
	je	L1601
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	___gmpz_get_si
	movl	%eax, -4(%rbp)
L1601:
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movl	-4(%rbp), %esi
	movl	$0, %edi
	call	___gmpz_get_str
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpString_init_ref
L1600:
	movq	-104(%rbp), %rax
	leave
	ret
LFE342:
	.cstring
LC187:
	.ascii "append\0"
LC188:
	.ascii "append!\0"
LC189:
	.ascii "car\0"
LC190:
	.ascii "cdr\0"
LC191:
	.ascii "concat\0"
LC192:
	.ascii "concat!\0"
LC193:
	.ascii "each\0"
LC194:
	.ascii "empty?\0"
LC195:
	.ascii "length\0"
LC196:
	.ascii "nsort\0"
	.text
.globl _smpList_create_class
_smpList_create_class:
LFB343:
	pushq	%rbp
LCFI855:
	movq	%rsp, %rbp
LCFI856:
	subq	$928, %rsp
LCFI857:
	leaq	-32(%rbp), %rdi
	leaq	LC28(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpList_gc_mark@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC57(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def
	leaq	-96(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	movq	_smpList_add@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC71(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-128(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	movq	_smpList_add_now@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC107(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-160(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	movq	_smpList_append@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC187(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-192(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	movq	_smpList_append_now@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-192(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC188(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-224(%rbp), %rdi
	leaq	LC86(%rip), %r8
	leaq	LC37(%rip), %rcx
	movl	$2, %edx
	movq	_smpList_at@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC108(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-256(%rbp), %rdi
	leaq	LC37(%rip), %r9
	leaq	LC86(%rip), %r8
	leaq	LC37(%rip), %rcx
	movl	$3, %edx
	movq	_smpList_at_assign@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC109(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-288(%rbp), %rdi
	leaq	LC37(%rip), %rcx
	movl	$1, %edx
	movq	_smpList_car@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC189(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-320(%rbp), %rdi
	leaq	LC37(%rip), %rcx
	movl	$1, %edx
	movq	_smpList_cdr@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-304(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC190(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-352(%rbp), %rdi
	leaq	LC28(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	movq	_smpList_concat@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-344(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-336(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC191(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-384(%rbp), %rdi
	leaq	LC28(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	movq	_smpList_concat_now@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-376(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-368(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC192(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-416(%rbp), %rdi
	leaq	LC28(%rip), %rcx
	movl	$1, %edx
	movq	_smpList_copy@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-408(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-400(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC110(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-448(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpList_each@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-440(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-432(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC193(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-480(%rbp), %rdi
	leaq	LC40(%rip), %rcx
	movl	$1, %edx
	movq	_smpList_emptyp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-480(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-472(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-464(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC194(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-512(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpList_equalp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-512(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-496(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC24(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-544(%rbp), %rdi
	leaq	LC86(%rip), %rcx
	movl	$1, %edx
	movq	_smpList_length@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-544(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-536(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-528(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC195(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-576(%rbp), %rdi
	leaq	LC26(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	movq	_smpList_map@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-576(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-568(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-560(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-552(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC111(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-608(%rbp), %rdi
	leaq	LC37(%rip), %rax
	movq	%rax, (%rsp)
	leaq	LC112(%rip), %r9
	leaq	LC26(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$4, %edx
	movq	_smpList_reduce@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-608(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-600(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-592(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-584(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC113(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-640(%rbp), %rdi
	leaq	LC28(%rip), %rcx
	movl	$1, %edx
	movq	_smpList_reverse@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-640(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-632(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-624(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-616(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC114(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-672(%rbp), %rdi
	leaq	LC26(%rip), %r9
	leaq	LC112(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$3, %edx
	movq	_smpList_sort@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-672(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-664(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-656(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-648(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC116(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-704(%rbp), %rdi
	leaq	LC26(%rip), %r9
	leaq	LC112(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$3, %edx
	movq	_smpList_nsort@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-704(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-696(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-688(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-680(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC196(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-736(%rbp), %rdi
	leaq	LC28(%rip), %rcx
	movl	$1, %edx
	movq	_smpList_to_a@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-736(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-728(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-720(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-712(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC118(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-768(%rbp), %rdi
	leaq	LC28(%rip), %rcx
	movl	$1, %edx
	movq	_smpList_to_list@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-768(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-760(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-752(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC119(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-800(%rbp), %rdi
	leaq	LC18(%rip), %r9
	leaq	LC112(%rip), %r8
	leaq	LC18(%rip), %rcx
	movl	$3, %edx
	movq	_smpList_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-800(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-792(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-784(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-776(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-832(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpList_write@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-864(%rbp), %rdi
	movq	-832(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-824(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-816(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-808(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE343:
.globl _smpList_add
_smpList_add:
LFB344:
	pushq	%rbp
LCFI858:
	movq	%rsp, %rbp
LCFI859:
	subq	$160, %rsp
LCFI860:
	movq	%rdi, -120(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	leaq	-32(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_copy
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1614
	leaq	-112(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_copy
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
L1614:
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	movq	-120(%rbp), %rdi
	call	_smpList_add_now
	movq	-120(%rbp), %rax
	leave
	ret
LFE344:
.globl _smpList_add_now
_smpList_add_now:
LFB345:
	pushq	%rbp
LCFI861:
	movq	%rsp, %rbp
LCFI862:
	subq	$144, %rsp
LCFI863:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1618
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1620
	movq	-64(%rbp), %rsi
	movl	$32, %edx
	movq	-72(%rbp), %rdi
	call	_memmove
	jmp	L1617
L1620:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	-72(%rbp), %rdi
	call	_smpObject_cons_c
	jmp	L1617
L1618:
	leaq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L1623
L1624:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
L1623:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	L1624
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1626
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	jmp	L1628
L1626:
	leaq	-48(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_cons_c
L1628:
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	16(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1617:
	movq	-72(%rbp), %rax
	leave
	ret
LFE345:
.globl _smpList_append
_smpList_append:
LFB346:
	pushq	%rbp
LCFI864:
	movq	%rsp, %rbp
LCFI865:
	subq	$96, %rsp
LCFI866:
	movq	%rdi, -56(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	leaq	-32(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_copy
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1631
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1630
L1631:
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-56(%rbp), %rdi
	call	_smpList_append_now
L1630:
	movq	-56(%rbp), %rax
	leave
	ret
LFE346:
.globl _smpList_append_now
_smpList_append_now:
LFB347:
	pushq	%rbp
LCFI867:
	movq	%rsp, %rbp
LCFI868:
	subq	$144, %rsp
LCFI869:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1636
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	-72(%rbp), %rdi
	call	_smpObject_cons_c
	jmp	L1635
L1636:
	leaq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L1639
L1640:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
L1639:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	L1640
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_cons_c
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	16(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1635:
	movq	-72(%rbp), %rax
	leave
	ret
LFE347:
.globl _smpList_at
_smpList_at:
LFB348:
	pushq	%rbp
LCFI870:
	movq	%rsp, %rbp
LCFI871:
	subq	$176, %rsp
LCFI872:
	movq	%rdi, -136(%rbp)
	movl	%esi, -116(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC86(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1644
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1646
	movq	-128(%rbp), %rsi
	movl	$32, %edx
	movq	-136(%rbp), %rdi
	call	_memmove
	jmp	L1643
L1646:
	leaq	-80(%rbp), %rdi
	leaq	LC86(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-112(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-136(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1643
L1644:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_to_clong
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1649
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1643
L1649:
	movq	-8(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-136(%rbp), %rdi
	call	_smpList_at_c
L1643:
	movq	-136(%rbp), %rax
	leave
	ret
LFE348:
.globl _smpList_at_c
_smpList_at_c:
LFB349:
	pushq	%rbp
LCFI873:
	movq	%rsp, %rbp
LCFI874:
	addq	$-128, %rsp
LCFI875:
	movq	%rdi, -96(%rbp)
	movq	%rsi, -88(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	L1653
L1654:
	movq	-16(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	L1655
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1652
L1655:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	incq	-16(%rbp)
L1653:
	cmpq	$0, -8(%rbp)
	jne	L1654
	leaq	-48(%rbp), %rdi
	leaq	LC120(%rip), %rsi
	call	_smp_getclass
	leaq	-80(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC121(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-96(%rbp), %rdi
	call	_smpGlobal_throw
L1652:
	movq	-96(%rbp), %rax
	leave
	ret
LFE349:
.globl _smpList_at_assign
_smpList_at_assign:
LFB350:
	pushq	%rbp
LCFI876:
	movq	%rsp, %rbp
LCFI877:
	subq	$208, %rsp
LCFI878:
	movq	%rdi, -136(%rbp)
	movl	%esi, -116(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC86(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1661
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1663
	movq	-128(%rbp), %rsi
	movl	$32, %edx
	movq	-136(%rbp), %rdi
	call	_memmove
	jmp	L1660
L1663:
	leaq	-80(%rbp), %rdi
	leaq	LC86(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-112(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-136(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1660
L1661:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_to_clong
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1666
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1660
L1666:
	movq	-128(%rbp), %rdx
	addq	$32, %rdx
	movq	-8(%rbp), %rsi
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-136(%rbp), %rdi
	call	_smpList_at_assign_c
L1660:
	movq	-136(%rbp), %rax
	leave
	ret
LFE350:
.globl _smpList_at_assign_c
_smpList_at_assign_c:
LFB351:
	pushq	%rbp
LCFI879:
	movq	%rsp, %rbp
LCFI880:
	subq	$176, %rsp
LCFI881:
	movq	%rdi, -144(%rbp)
	movq	%rsi, -136(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	L1670
L1671:
	movq	-16(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	L1672
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	56(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	64(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-120(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-112(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-104(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1669
L1672:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	incq	-16(%rbp)
L1670:
	cmpq	$0, -8(%rbp)
	jne	L1671
	leaq	-48(%rbp), %rdi
	leaq	LC120(%rip), %rsi
	call	_smp_getclass
	leaq	-80(%rbp), %rdi
	movq	-136(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC121(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-144(%rbp), %rdi
	call	_smpGlobal_throw
L1669:
	movq	-144(%rbp), %rax
	leave
	ret
LFE351:
.globl _smpList_car
_smpList_car:
LFB352:
	pushq	%rbp
LCFI882:
	movq	%rsp, %rbp
LCFI883:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE352:
.globl _smpList_cdr
_smpList_cdr:
LFB353:
	pushq	%rbp
LCFI884:
	movq	%rsp, %rbp
LCFI885:
	subq	$48, %rsp
LCFI886:
	movq	%rdi, -40(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L1680
	movq	-8(%rbp), %rsi
	movl	$32, %edx
	movq	-40(%rbp), %rdi
	call	_memmove
	jmp	L1679
L1680:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1679:
	movq	-40(%rbp), %rax
	leave
	ret
LFE353:
.globl _smpList_concat
_smpList_concat:
LFB354:
	pushq	%rbp
LCFI887:
	movq	%rsp, %rbp
LCFI888:
	addq	$-128, %rsp
LCFI889:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC28(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1685
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1687
	movq	-80(%rbp), %rsi
	movl	$32, %edx
	movq	-88(%rbp), %rdi
	call	_memmove
	jmp	L1684
L1687:
	leaq	-32(%rbp), %rdi
	leaq	LC28(%rip), %rsi
	call	_smp_getclass
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	-64(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1684
L1685:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1690
	movq	16(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1684
L1690:
	movq	-80(%rbp), %rdx
	movl	-68(%rbp), %esi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rdi
	call	_smpList_add
L1684:
	movq	-88(%rbp), %rax
	leave
	ret
LFE354:
.globl _smpList_concat_now
_smpList_concat_now:
LFB355:
	pushq	%rbp
LCFI890:
	movq	%rsp, %rbp
LCFI891:
	addq	$-128, %rsp
LCFI892:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC28(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1694
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1696
	movq	-80(%rbp), %rsi
	movl	$32, %edx
	movq	-88(%rbp), %rdi
	call	_memmove
	jmp	L1693
L1696:
	leaq	-32(%rbp), %rdi
	leaq	LC28(%rip), %rsi
	call	_smp_getclass
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	-64(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1693
L1694:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1699
	movq	16(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1693
L1699:
	movq	-80(%rbp), %rdx
	movl	-68(%rbp), %esi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rdi
	call	_smpList_add_now
L1693:
	movq	-88(%rbp), %rax
	leave
	ret
LFE355:
.globl _smpList_copy
_smpList_copy:
LFB356:
	pushq	%rbp
LCFI893:
	movq	%rsp, %rbp
LCFI894:
	pushq	%rbx
LCFI895:
	subq	$216, %rsp
LCFI896:
	movq	%rdi, -184(%rbp)
	movl	%esi, -132(%rbp)
	movq	%rdx, -144(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -104(%rbp)
	jmp	L1703
L1704:
	leaq	-128(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_car
	movq	-80(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1705
	leaq	-64(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpObject_cons
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	L1707
L1705:
	movq	-72(%rbp), %rax
	movq	%rax, %rbx
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, 32(%rbx)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rbx
	leaq	-176(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpObject_cons
	movq	-176(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	(%rbx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rbx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1707
	movq	-96(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-72(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1702
L1707:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
L1703:
	cmpq	$0, -24(%rbp)
	jne	L1704
	movq	-64(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1702:
	movq	-184(%rbp), %rax
	addq	$216, %rsp
	popq	%rbx
	leave
	ret
LFE356:
.globl _smpList_each
_smpList_each:
LFB357:
	pushq	%rbp
LCFI897:
	movq	%rsp, %rbp
LCFI898:
	subq	$240, %rsp
LCFI899:
	movq	%rdi, -168(%rbp)
	movl	%esi, -148(%rbp)
	movq	%rdx, -160(%rbp)
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1713
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1712
L1713:
	movq	-160(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC26(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1716
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1718
	movq	-160(%rbp), %rsi
	movl	$32, %edx
	movq	-168(%rbp), %rdi
	call	_memmove
	jmp	L1712
L1718:
	leaq	-80(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-112(%rbp), %rdi
	movq	-160(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-168(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1712
L1716:
	movq	40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L1720
L1721:
	movq	-8(%rbp), %rcx
	leaq	-48(%rbp), %rdi
	movq	-160(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	movl	$1, %esi
	call	_smpFunction_call
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1722
	movq	-48(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1712
L1722:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	L1724
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1726
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	L1720
L1726:
	movq	32(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-168(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1712
L1720:
	cmpq	$0, -8(%rbp)
	jne	L1721
L1724:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1712:
	movq	-168(%rbp), %rax
	leave
	ret
LFE357:
.globl _smpList_emptyp
_smpList_emptyp:
LFB358:
	pushq	%rbp
LCFI900:
	movq	%rsp, %rbp
LCFI901:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE358:
.globl _smpList_equalp
_smpList_equalp:
LFB359:
	pushq	%rbp
LCFI902:
	movq	%rsp, %rbp
LCFI903:
	pushq	%rbx
LCFI904:
	subq	$232, %rsp
LCFI905:
	movq	%rdi, -200(%rbp)
	movl	%esi, -180(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC28(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	je	L1732
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1731
L1732:
	movq	16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-192(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpList_length_clong
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpList_length_clong
	cmpq	%rax, %rbx
	je	L1737
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1731
L1738:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -144(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -136(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -120(%rbp)
	leaq	-176(%rbp), %rdi
	leaq	-144(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	leaq	LC24(%rip), %rsi
	call	_smpObject_funcall
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	jne	L1739
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1731
L1739:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1741
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	jmp	L1743
L1741:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
L1743:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1744
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	jmp	L1737
L1744:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
L1737:
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1738
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1731:
	movq	-200(%rbp), %rax
	addq	$232, %rsp
	popq	%rbx
	leave
	ret
LFE359:
.globl _smpList_gc_mark
_smpList_gc_mark:
LFB360:
	pushq	%rbp
LCFI906:
	movq	%rsp, %rbp
LCFI907:
	subq	$80, %rsp
LCFI908:
	movq	%rdi, -40(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1749
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1748
L1749:
	leaq	16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	jmp	L1752
L1753:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edi
	call	_gc_mark_recursive
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
L1752:
	cmpq	$0, -8(%rbp)
	jne	L1753
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1748:
	movq	-40(%rbp), %rax
	leave
	ret
LFE360:
.globl _smpList_init
_smpList_init:
LFB361:
	pushq	%rbp
LCFI909:
	movq	%rsp, %rbp
LCFI910:
	pushq	%rbx
LCFI911:
	subq	$40, %rsp
LCFI912:
	movq	%rdi, %rbx
	leaq	-48(%rbp), %rdi
	movq	_smpType_list@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$40, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	48(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE361:
.globl _smpList_length
_smpList_length:
LFB362:
	pushq	%rbp
LCFI913:
	movq	%rsp, %rbp
LCFI914:
	addq	$-128, %rsp
LCFI915:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1759
	movl	$0, %esi
	movq	-88(%rbp), %rdi
	call	_smpInteger_init_clong
	jmp	L1758
L1759:
	movq	$0, -8(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L1762
L1763:
	incq	-8(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	L1764
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1766
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	L1762
L1766:
	movq	32(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1758
L1762:
	cmpq	$0, -16(%rbp)
	jne	L1763
L1764:
	movq	-8(%rbp), %rsi
	movq	-88(%rbp), %rdi
	call	_smpInteger_init_clong
L1758:
	movq	-88(%rbp), %rax
	leave
	ret
LFE362:
.globl _smpList_length_clong
_smpList_length_clong:
LFB363:
	pushq	%rbp
LCFI916:
	movq	%rsp, %rbp
LCFI917:
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1770
	movq	$0, -24(%rbp)
	jmp	L1772
L1770:
	movq	$0, -8(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L1773
L1774:
	incq	-8(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
L1773:
	cmpq	$0, -16(%rbp)
	jne	L1774
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
L1772:
	movq	-24(%rbp), %rax
	leave
	ret
LFE363:
.globl _smpList_map
_smpList_map:
LFB364:
	pushq	%rbp
LCFI918:
	movq	%rsp, %rbp
LCFI919:
	pushq	%rbx
LCFI920:
	subq	$344, %rsp
LCFI921:
	movq	%rdi, -280(%rbp)
	movl	%esi, -228(%rbp)
	movq	%rdx, -240(%rbp)
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1778
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1777
L1778:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC26(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1781
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1783
	movq	-240(%rbp), %rsi
	movl	$32, %edx
	movq	-280(%rbp), %rdi
	call	_memmove
	jmp	L1777
L1783:
	leaq	-192(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smp_getclass
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	leaq	-224(%rbp), %rdi
	movq	-240(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-224(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-280(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1777
L1781:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	16(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	jmp	L1785
L1786:
	leaq	-272(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_car
	movq	-272(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-160(%rbp), %rdi
	leaq	-128(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	movl	$1, %esi
	call	_smpFunction_call
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1787
	movq	-160(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-152(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-144(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-136(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L1777
L1787:
	movq	-80(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1789
	leaq	-64(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpObject_cons
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	L1791
L1789:
	movq	-72(%rbp), %rax
	movq	%rax, %rbx
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, 32(%rbx)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rbx
	leaq	-272(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpObject_cons
	movq	-272(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-248(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	(%rbx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rbx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1791
	movq	-96(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-80(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-72(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L1777
L1791:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
L1785:
	cmpq	$0, -24(%rbp)
	jne	L1786
	movq	-64(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, 24(%rcx)
L1777:
	movq	-280(%rbp), %rax
	addq	$344, %rsp
	popq	%rbx
	leave
	ret
LFE364:
.globl _smpList_reduce
_smpList_reduce:
LFB365:
	pushq	%rbp
LCFI922:
	movq	%rsp, %rbp
LCFI923:
	subq	$320, %rsp
LCFI924:
	movq	%rdi, -248(%rbp)
	movl	%esi, -196(%rbp)
	movq	%rdx, -208(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -8(%rbp)
	movq	-208(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
	cmpl	$1, -196(%rbp)
	jle	L1796
	movq	-208(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -8(%rbp)
	jmp	L1798
L1796:
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1799
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1795
L1799:
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -8(%rbp)
	movq	40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1802
	movq	40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, 16(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, 24(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, 32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, 40(%rbp)
	jmp	L1798
L1802:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 16(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, 24(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, 32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, 40(%rbp)
L1798:
	movq	-48(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1804
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1806
	movq	-64(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1795
L1806:
	leaq	-96(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smp_getclass
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	-128(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-248(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1795
L1804:
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	L1808
L1809:
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -160(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -152(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -144(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -136(%rbp)
	leaq	-240(%rbp), %rdi
	leaq	-192(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, %rdx
	movl	$2, %esi
	call	_smpFunction_call
	movq	-240(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1810
	movq	-192(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-184(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-176(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-168(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1795
L1810:
	movq	40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1812
	movq	40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, 16(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, 24(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, 32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, 40(%rbp)
	jmp	L1808
L1812:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 16(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, 24(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, 32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, 40(%rbp)
L1808:
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	jne	L1809
	movq	-192(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-184(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-176(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-168(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1795:
	movq	-248(%rbp), %rax
	leave
	ret
LFE365:
.globl _smpList_reverse
_smpList_reverse:
LFB366:
	pushq	%rbp
LCFI925:
	movq	%rsp, %rbp
LCFI926:
	subq	$176, %rsp
LCFI927:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	jmp	L1817
L1818:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_cons_c
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
L1817:
	cmpq	$0, -8(%rbp)
	jne	L1818
	movq	-48(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-104(%rbp), %rax
	leave
	ret
LFE366:
.globl _smpList_sort
_smpList_sort:
LFB367:
	pushq	%rbp
LCFI928:
	movq	%rsp, %rbp
LCFI929:
	subq	$96, %rsp
LCFI930:
	movq	%rdi, -56(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	leaq	-32(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_copy
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1822
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1821
L1822:
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-56(%rbp), %rdi
	call	_smpList_nsort
L1821:
	movq	-56(%rbp), %rax
	leave
	ret
LFE367:
.globl _smpList_nsort
_smpList_nsort:
LFB368:
	pushq	%rbp
LCFI931:
	movq	%rsp, %rbp
LCFI932:
	subq	$192, %rsp
LCFI933:
	movq	%rdi, -120(%rbp)
	movl	%esi, -100(%rbp)
	movq	%rdx, -112(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -100(%rbp)
	jle	L1827
	movq	-112(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1827
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1830
	movq	-32(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1826
L1830:
	leaq	-64(%rbp), %rdi
	leaq	LC26(%rip), %rsi
	call	_smp_getclass
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	-96(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-120(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1826
L1827:
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpList_length_clong
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-120(%rbp), %rdi
	call	_smpList_sort_rec
L1826:
	movq	-120(%rbp), %rax
	leave
	ret
LFE368:
.globl _smpList_sort_rec
_smpList_sort_rec:
LFB369:
	pushq	%rbp
LCFI934:
	movq	%rsp, %rbp
LCFI935:
	pushq	%rbx
LCFI936:
	subq	$456, %rsp
LCFI937:
	movq	%rdi, -360(%rbp)
	movq	%rsi, -312(%rbp)
	cmpq	$1, -312(%rbp)
	ja	L1835
	movq	16(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1834
L1835:
	cmpq	$7, -312(%rbp)
	jbe	L1838
	leaq	-272(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_to_a
	leaq	-304(%rbp), %rdi
	movq	-272(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpArray_sort
	movq	-304(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-288(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	movq	-360(%rbp), %rdi
	call	_smpArray_to_list
	jmp	L1834
L1838:
	movq	-312(%rbp), %rax
	shrq	%rax
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	jmp	L1840
L1841:
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -144(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -136(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	incq	-48(%rbp)
L1840:
	cmpq	$0, -40(%rbp)
	je	L1842
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	L1841
L1842:
	movq	-120(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -144(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -136(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -120(%rbp)
	leaq	-352(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpList_sort_rec
	movq	-352(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1844
	movq	-80(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1834
L1844:
	movq	-32(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rax, %rsi
	subq	%rdx, %rsi
	leaq	-352(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpList_sort_rec
	movq	-352(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1846
	movq	-112(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-96(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1834
L1846:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -176(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -168(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -160(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -152(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -208(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -200(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -192(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -184(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -240(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -232(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -224(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -216(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -20(%rbp)
	movl	$1, -24(%rbp)
	jmp	L1848
L1849:
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	leaq	-208(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, 64(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 72(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_cmp_helper
	movl	%eax, -20(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1850
	movq	-208(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-200(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-192(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-184(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1834
L1850:
	cmpl	$0, -20(%rbp)
	jns	L1852
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	leaq	-240(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_cons_c
	cmpl	$0, -24(%rbp)
	je	L1854
	movq	-240(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -24(%rbp)
	jmp	L1856
L1854:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rbx
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, 32(%rbx)
	movq	32(%rbx), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rdx)
L1856:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1857
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	jmp	L1848
L1857:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	jmp	L1848
L1852:
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	leaq	-352(%rbp), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_cons_c
	movq	-352(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -216(%rbp)
	cmpl	$0, -24(%rbp)
	je	L1860
	movq	-240(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -24(%rbp)
	jmp	L1862
L1860:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rbx
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, 32(%rbx)
	movq	32(%rbx), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rdx)
L1862:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1863
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -88(%rbp)
	jmp	L1848
L1863:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -88(%rbp)
L1848:
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	je	L1865
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	jne	L1849
L1865:
	movq	-160(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1867
	leaq	-352(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpList_concat_now
	movq	-352(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	L1869
L1867:
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
L1869:
	movq	-160(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1870
	leaq	-352(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpList_concat_now
	movq	-352(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	L1872
L1870:
	movq	-112(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -152(%rbp)
L1872:
	movq	-176(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-168(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-160(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-152(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1834:
	movq	-360(%rbp), %rax
	addq	$456, %rsp
	popq	%rbx
	leave
	ret
LFE369:
.globl _smpList_to_a
_smpList_to_a:
LFB370:
	pushq	%rbp
LCFI938:
	movq	%rsp, %rbp
LCFI939:
	pushq	%rbx
LCFI940:
	subq	$136, %rsp
LCFI941:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpList_length_clong
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	call	_next_power_of_2
	movq	%rax, %rdi
	salq	$5, %rdi
	call	_GC_malloc
	movq	%rax, -40(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L1875
	movq	$-1, %rbx
	movq	-32(%rbp), %rdi
	call	_next_power_of_2
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	-40(%rbp), %rdi
	movq	%rbx, %rcx
	movl	$0, %esi
	call	___memset_chk
	jmp	L1877
L1875:
	movq	-32(%rbp), %rdi
	call	_next_power_of_2
	movq	%rax, %rdx
	salq	$5, %rdx
	movq	-40(%rbp), %rdi
	movl	$0, %esi
	call	___inline_memset_chk
L1877:
	movq	16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -24(%rbp)
	jmp	L1878
L1879:
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	addq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1880
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	jmp	L1882
L1880:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
L1882:
	incq	-24(%rbp)
L1878:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	L1879
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpArray_init_array
	movq	-104(%rbp), %rax
	addq	$136, %rsp
	popq	%rbx
	leave
	ret
LFE370:
.globl _smpList_to_list
_smpList_to_list:
LFB371:
	pushq	%rbp
LCFI942:
	movq	%rsp, %rbp
LCFI943:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rdi)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rdi)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdi)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE371:
	.cstring
LC197:
	.ascii "(\0"
	.text
.globl _smpList_to_s
_smpList_to_s:
LFB372:
	pushq	%rbp
LCFI944:
	movq	%rsp, %rbp
LCFI945:
	subq	$336, %rsp
LCFI946:
	movq	%rdi, -296(%rbp)
	movl	%esi, -244(%rbp)
	movq	%rdx, -256(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	LC197(%rip), %rsi
	call	_smpString_init
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -244(%rbp)
	jle	L1888
	movq	-256(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	LC18(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L1890
	movq	-256(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L1892
	movq	-256(%rbp), %rsi
	movl	$32, %edx
	movq	-296(%rbp), %rdi
	call	_memmove
	jmp	L1887
L1892:
	leaq	-176(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smp_getclass
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	leaq	-208(%rbp), %rdi
	movq	-256(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-208(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-296(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L1887
L1890:
	movq	-256(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	jmp	L1895
L1888:
	leaq	-288(%rbp), %rdi
	leaq	LC127(%rip), %rsi
	call	_smpString_init
	movq	-288(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -56(%rbp)
L1895:
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	jmp	L1896
L1897:
	leaq	-240(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_car
	leaq	-288(%rbp), %rdi
	movq	-240(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC35(%rip), %rsi
	call	_smpObject_funcall
	movq	-288(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L1898
	movq	-112(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-96(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1887
L1898:
	cmpl	$0, -4(%rbp)
	jne	L1900
	leaq	-288(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
L1900:
	leaq	-288(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
L1896:
	cmpq	$0, -16(%rbp)
	jne	L1897
	leaq	-144(%rbp), %rdi
	leaq	LC128(%rip), %rsi
	call	_smpString_init
	leaq	-288(%rbp), %rdi
	leaq	-144(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-48(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1887:
	movq	-296(%rbp), %rax
	leave
	ret
LFE372:
	.cstring
LC198:
	.ascii "(list\0"
	.text
.globl _smpList_write
_smpList_write:
LFB373:
	pushq	%rbp
LCFI947:
	movq	%rsp, %rbp
LCFI948:
	subq	$272, %rsp
LCFI949:
	movq	%rdi, -232(%rbp)
	movl	%esi, -180(%rbp)
	movq	%rdx, -192(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	LC198(%rip), %rsi
	call	_smpString_init
	leaq	-80(%rbp), %rdi
	leaq	LC127(%rip), %rsi
	call	_smpString_init
	leaq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L1905
L1906:
	leaq	-176(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edx
	movl	$0, %esi
	call	_smpList_car
	leaq	-224(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movl	-180(%rbp), %edx
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rsi
	call	_smpObject_funcall
	movq	-224(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-224(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	leaq	-224(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
L1905:
	cmpq	$0, -8(%rbp)
	jne	L1906
	leaq	-144(%rbp), %rdi
	leaq	LC128(%rip), %rsi
	call	_smpString_init
	leaq	-224(%rbp), %rdi
	leaq	-144(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-48(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-232(%rbp), %rax
	leave
	ret
LFE373:
	.cstring
LC199:
	.ascii "ListBuffer\0"
	.text
.globl _smpListBuffer_create_class
_smpListBuffer_create_class:
LFB374:
	pushq	%rbp
LCFI950:
	movq	%rsp, %rbp
LCFI951:
	subq	$224, %rsp
LCFI952:
	movl	$128, %edx
	movq	_smpType_nil@GOTPCREL(%rip), %rsi
	leaq	LC199(%rip), %rdi
	call	_smpGlobal_class
	leaq	-32(%rbp), %rdi
	leaq	LC199(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC43(%rip), %rcx
	movl	$2, %edx
	movq	_smpListBuffer_add_now@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-160(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC107(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-96(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpListBuffer_gc_mark@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-160(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC57(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-128(%rbp), %rdi
	leaq	LC28(%rip), %rcx
	movl	$1, %edx
	movq	_smpListBuffer_to_list@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-160(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC119(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE374:
.globl _smpListBuffer_add_now
_smpListBuffer_add_now:
LFB375:
	pushq	%rbp
LCFI953:
	movq	%rsp, %rbp
LCFI954:
	pushq	%rbx
LCFI955:
	subq	$120, %rsp
LCFI956:
	movq	%rdi, -88(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1912
	movq	-24(%rbp), %rbx
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpObject_cons
	movq	-80(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rcx)
	jmp	L1914
L1912:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rbx
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	32(%rax), %rbx
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_smpObject_cons
	movq	-80(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rcx)
L1914:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-88(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	leave
	ret
LFE375:
.globl _smpListBuffer_gc_mark
_smpListBuffer_gc_mark:
LFB376:
	pushq	%rbp
LCFI957:
	movq	%rsp, %rbp
LCFI958:
	pushq	%rbx
LCFI959:
	subq	$56, %rsp
LCFI960:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edi
	call	_gc_mark_recursive
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE376:
.globl _smpListBuffer_init
_smpListBuffer_init:
LFB377:
	pushq	%rbp
LCFI961:
	movq	%rsp, %rbp
LCFI962:
	pushq	%rbx
LCFI963:
	subq	$136, %rsp
LCFI964:
	movq	%rdi, %rbx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -144(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -136(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -120(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -88(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	LC199(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-48(%rbp), %rdi
	call	_obj_init
	movl	$64, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	-112(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-104(%rbp), %rax
	movq	%rax, 40(%rdx)
	movq	-96(%rbp), %rax
	movq	%rax, 48(%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, 56(%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$136, %rsp
	popq	%rbx
	leave
	ret
LFE377:
.globl _smpListBuffer_to_list
_smpListBuffer_to_list:
LFB378:
	pushq	%rbp
LCFI965:
	movq	%rsp, %rbp
LCFI966:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE378:
.globl _smpNil_create_class
_smpNil_create_class:
LFB379:
	pushq	%rbp
LCFI967:
	movq	%rsp, %rbp
LCFI968:
	subq	$672, %rsp
LCFI969:
	leaq	-32(%rbp), %rdi
	leaq	LC43(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	leaq	_smpList_add(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC71(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-96(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	leaq	_smpList_add_now(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC107(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-128(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	leaq	_smpList_append(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC187(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-160(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	leaq	_smpList_append_now(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC188(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-192(%rbp), %rdi
	leaq	LC37(%rip), %rcx
	movl	$1, %edx
	movq	_smpNil_car@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-192(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC189(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-224(%rbp), %rdi
	leaq	LC37(%rip), %rcx
	movl	$1, %edx
	movq	_smpNil_cdr@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC190(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-256(%rbp), %rdi
	leaq	LC28(%rip), %r8
	leaq	LC28(%rip), %rcx
	movl	$2, %edx
	leaq	_smpList_concat(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC191(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-288(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpNil_copy@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC110(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-320(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpNil_each@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-304(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC193(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-352(%rbp), %rdi
	leaq	LC40(%rip), %rcx
	movl	$1, %edx
	movq	_smpNil_emptyp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-352(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-344(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-336(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC194(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-384(%rbp), %rdi
	leaq	LC86(%rip), %rcx
	movl	$1, %edx
	movq	_smpNil_length@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-376(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-368(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC195(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-416(%rbp), %rdi
	leaq	LC26(%rip), %r8
	leaq	LC43(%rip), %rcx
	movl	$2, %edx
	movq	_smpNil_map@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-408(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-400(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC111(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-448(%rbp), %rdi
	leaq	LC37(%rip), %rax
	movq	%rax, (%rsp)
	leaq	LC112(%rip), %r9
	leaq	LC26(%rip), %r8
	leaq	LC43(%rip), %rcx
	movl	$4, %edx
	movq	_smpNil_reduce@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-448(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-440(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-432(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC113(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-480(%rbp), %rdi
	leaq	LC28(%rip), %rcx
	movl	$1, %edx
	movq	_smpNil_reverse@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-480(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-472(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-464(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC114(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-512(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpNil_equalp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-512(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-496(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC24(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-544(%rbp), %rdi
	leaq	LC18(%rip), %r9
	leaq	LC112(%rip), %r8
	leaq	LC18(%rip), %rcx
	movl	$3, %edx
	movq	_smpNil_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-544(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-536(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-528(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-576(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpNil_write@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-608(%rbp), %rdi
	movq	-576(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-568(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-560(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-552(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE379:
.globl _smpNil_add
_smpNil_add:
LFB380:
	pushq	%rbp
LCFI970:
	movq	%rsp, %rbp
LCFI971:
	subq	$96, %rsp
LCFI972:
	movq	%rdi, -24(%rbp)
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1925
	movq	-16(%rbp), %rsi
	movl	$32, %edx
	movq	-24(%rbp), %rdi
	call	_memmove
	jmp	L1924
L1925:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	-24(%rbp), %rdi
	call	_smpObject_cons_c
L1924:
	movq	-24(%rbp), %rax
	leave
	ret
LFE380:
.globl _smpNil_add_now
_smpNil_add_now:
LFB381:
	pushq	%rbp
LCFI973:
	movq	%rsp, %rbp
LCFI974:
	subq	$96, %rsp
LCFI975:
	movq	%rdi, -24(%rbp)
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1930
	movq	-16(%rbp), %rsi
	movl	$32, %edx
	movq	-24(%rbp), %rdi
	call	_memmove
	jmp	L1929
L1930:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	-24(%rbp), %rdi
	call	_smpObject_cons_c
L1929:
	movq	-24(%rbp), %rax
	leave
	ret
LFE381:
.globl _smpNil_car
_smpNil_car:
LFB382:
	pushq	%rbp
LCFI976:
	movq	%rsp, %rbp
LCFI977:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE382:
.globl _smpNil_cdr
_smpNil_cdr:
LFB383:
	pushq	%rbp
LCFI978:
	movq	%rsp, %rbp
LCFI979:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE383:
.globl _smpNil_copy
_smpNil_copy:
LFB384:
	pushq	%rbp
LCFI980:
	movq	%rsp, %rbp
LCFI981:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE384:
.globl _smpNil_each
_smpNil_each:
LFB385:
	pushq	%rbp
LCFI982:
	movq	%rsp, %rbp
LCFI983:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE385:
.globl _smpNil_emptyp
_smpNil_emptyp:
LFB386:
	pushq	%rbp
LCFI984:
	movq	%rsp, %rbp
LCFI985:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE386:
.globl _smpNil_equalp
_smpNil_equalp:
LFB387:
	pushq	%rbp
LCFI986:
	movq	%rsp, %rbp
LCFI987:
	pushq	%rbx
LCFI988:
	subq	$56, %rsp
LCFI989:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_truep_c
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %esi
	movq	%rbx, %rdi
	call	_smpBool_init
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE387:
.globl _smpNil_reverse
_smpNil_reverse:
LFB388:
	pushq	%rbp
LCFI990:
	movq	%rsp, %rbp
LCFI991:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE388:
.globl _smpNil_to_s
_smpNil_to_s:
LFB389:
	pushq	%rbp
LCFI992:
	movq	%rsp, %rbp
LCFI993:
	pushq	%rbx
LCFI994:
	subq	$24, %rsp
LCFI995:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	LC173(%rip), %rsi
	movq	%rbx, %rdi
	call	_smpString_init
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE389:
.globl _smpNil_write
_smpNil_write:
LFB390:
	pushq	%rbp
LCFI996:
	movq	%rsp, %rbp
LCFI997:
	pushq	%rbx
LCFI998:
	subq	$24, %rsp
LCFI999:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	LC173(%rip), %rsi
	movq	%rbx, %rdi
	call	_smpString_init
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE390:
.globl _smpNil_length
_smpNil_length:
LFB391:
	pushq	%rbp
LCFI1000:
	movq	%rsp, %rbp
LCFI1001:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	_smpInteger_zero@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE391:
.globl _smpNil_map
_smpNil_map:
LFB392:
	pushq	%rbp
LCFI1002:
	movq	%rsp, %rbp
LCFI1003:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE392:
.globl _smpNil_reduce
_smpNil_reduce:
LFB393:
	pushq	%rbp
LCFI1004:
	movq	%rsp, %rbp
LCFI1005:
	subq	$32, %rsp
LCFI1006:
	movq	%rdi, -24(%rbp)
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$1, -4(%rbp)
	jle	L1957
	movq	-16(%rbp), %rsi
	addq	$32, %rsi
	movl	$32, %edx
	movq	-24(%rbp), %rdi
	call	_memmove
	jmp	L1956
L1957:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1956:
	movq	-24(%rbp), %rax
	leave
	ret
LFE393:
.globl _smpNumber_create_class
_smpNumber_create_class:
LFB394:
	pushq	%rbp
LCFI1007:
	movq	%rsp, %rbp
LCFI1008:
	subq	$96, %rsp
LCFI1009:
	movl	$0, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC140(%rip), %rdi
	call	_smpGlobal_class
	leaq	-32(%rbp), %rdi
	leaq	LC140(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC140(%rip), %r9
	leaq	LC140(%rip), %r8
	movl	$2, %ecx
	leaq	LC71(%rip), %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_smpType_abstract_def
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC140(%rip), %r9
	leaq	LC140(%rip), %r8
	movl	$2, %ecx
	leaq	LC72(%rip), %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_smpType_abstract_def
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC140(%rip), %r9
	leaq	LC140(%rip), %r8
	movl	$2, %ecx
	leaq	LC73(%rip), %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_smpType_abstract_def
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC140(%rip), %r9
	leaq	LC140(%rip), %r8
	movl	$2, %ecx
	leaq	LC74(%rip), %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_smpType_abstract_def
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC37(%rip), %r9
	leaq	LC40(%rip), %r8
	movl	$2, %ecx
	leaq	LC144(%rip), %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_smpType_abstract_def
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC37(%rip), %r9
	leaq	LC40(%rip), %r8
	movl	$2, %ecx
	leaq	LC145(%rip), %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_smpType_abstract_def
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC37(%rip), %r9
	leaq	LC40(%rip), %r8
	movl	$2, %ecx
	leaq	LC146(%rip), %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_smpType_abstract_def
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC37(%rip), %r9
	leaq	LC40(%rip), %r8
	movl	$2, %ecx
	leaq	LC147(%rip), %rdx
	movl	$0, %esi
	movl	$0, %eax
	call	_smpType_abstract_def
	movl	$0, %eax
	leave
	ret
LFE394:
.globl _smpPair_create_class
_smpPair_create_class:
LFB395:
	pushq	%rbp
LCFI1010:
	movq	%rsp, %rbp
LCFI1011:
	subq	$320, %rsp
LCFI1012:
	leaq	-32(%rbp), %rdi
	leaq	LC42(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	leaq	LC37(%rip), %rcx
	movl	$1, %edx
	movq	_smpPair_car@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-256(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC189(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-96(%rbp), %rdi
	leaq	LC37(%rip), %rcx
	movl	$1, %edx
	movq	_smpPair_cdr@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-256(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC190(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-128(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpPair_clear@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-256(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC20(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-160(%rbp), %rdi
	leaq	LC37(%rip), %rcx
	movl	$1, %edx
	movq	_smpPair_gc_mark@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-256(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC57(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-192(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpPair_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-256(%rbp), %rdi
	movq	-192(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-224(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpPair_write@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-256(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE395:
.globl _smpPair_car
_smpPair_car:
LFB396:
	pushq	%rbp
LCFI1013:
	movq	%rsp, %rbp
LCFI1014:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE396:
.globl _smpPair_cdr
_smpPair_cdr:
LFB397:
	pushq	%rbp
LCFI1015:
	movq	%rsp, %rbp
LCFI1016:
	subq	$48, %rsp
LCFI1017:
	movq	%rdi, -40(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L1968
	movq	-8(%rbp), %rsi
	movl	$32, %edx
	movq	-40(%rbp), %rdi
	call	_memmove
	jmp	L1967
L1968:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1967:
	movq	-40(%rbp), %rax
	leave
	ret
LFE397:
.globl _smpPair_clear
_smpPair_clear:
LFB398:
	pushq	%rbp
LCFI1018:
	movq	%rsp, %rbp
LCFI1019:
	pushq	%rbx
LCFI1020:
	subq	$24, %rsp
LCFI1021:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	32(%rax), %rdi
	call	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE398:
.globl _smpPair_gc_mark
_smpPair_gc_mark:
LFB399:
	pushq	%rbp
LCFI1022:
	movq	%rsp, %rbp
LCFI1023:
	subq	$112, %rsp
LCFI1024:
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edi
	call	_gc_mark_recursive
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	L1975
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edi
	call	_gc_mark_recursive
L1975:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-72(%rbp), %rax
	leave
	ret
LFE399:
.globl _smpPair_init
_smpPair_init:
LFB400:
	pushq	%rbp
LCFI1025:
	movq	%rsp, %rbp
LCFI1026:
	addq	$-128, %rsp
LCFI1027:
	movq	%rdi, -120(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	64(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1979
	movq	$0, -80(%rbp)
	jmp	L1981
L1979:
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rdx)
L1981:
	leaq	-64(%rbp), %rdi
	leaq	LC42(%rip), %rsi
	call	_smp_getclass
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	-32(%rbp), %rdi
	call	_obj_init
	movl	$40, %edi
	call	_GC_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-120(%rbp), %rax
	leave
	ret
LFE400:
.globl _smpPair_set_car_now
_smpPair_set_car_now:
LFB401:
	pushq	%rbp
LCFI1028:
	movq	%rsp, %rbp
LCFI1029:
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rbp), %rax
	movq	%rax, (%rdi)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rdi)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdi)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE401:
.globl _smpPair_set_cdr_now
_smpPair_set_cdr_now:
LFB402:
	pushq	%rbp
LCFI1030:
	movq	%rsp, %rbp
LCFI1031:
	subq	$48, %rsp
LCFI1032:
	movq	%rdi, -40(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L1986
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L1985
L1986:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	L1989
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
L1989:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
L1985:
	movq	-40(%rbp), %rax
	leave
	ret
LFE402:
	.cstring
LC200:
	.ascii "(%s -> %s)\0"
	.text
.globl _smpPair_to_s
_smpPair_to_s:
LFB403:
	pushq	%rbp
LCFI1033:
	movq	%rsp, %rbp
LCFI1034:
	subq	$96, %rsp
LCFI1035:
	movq	%rdi, -32(%rbp)
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1993
	movq	40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	L1995
L1993:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
L1995:
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC200(%rip), %rsi
	movq	-32(%rbp), %rdi
	movl	$0, %eax
	call	_smpGlobal_sprintf
	movq	-32(%rbp), %rax
	leave
	ret
LFE403:
	.cstring
LC201:
	.ascii "(%w -> %w)\0"
	.text
.globl _smpPair_write
_smpPair_write:
LFB404:
	pushq	%rbp
LCFI1036:
	movq	%rsp, %rbp
LCFI1037:
	subq	$96, %rsp
LCFI1038:
	movq	%rdi, -32(%rbp)
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L1998
	movq	40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	L2000
L1998:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
L2000:
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rax
	movq	%rax, 56(%rsp)
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	leaq	LC201(%rip), %rsi
	movq	-32(%rbp), %rdi
	movl	$0, %eax
	call	_smpGlobal_sprintf
	movq	-32(%rbp), %rax
	leave
	ret
LFE404:
	.cstring
LC202:
	.ascii "RegexMatch\0"
	.text
.globl _smpRegex_create_class
_smpRegex_create_class:
LFB405:
	pushq	%rbp
LCFI1039:
	movq	%rsp, %rbp
LCFI1040:
	subq	$160, %rsp
LCFI1041:
	movl	$0, %edx
	movq	_smpType_object@GOTPCREL(%rip), %rsi
	leaq	LC202(%rip), %rdi
	call	_smpGlobal_class
	leaq	-32(%rbp), %rdi
	leaq	LC202(%rip), %rsi
	call	_smp_getclass
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	_smpType_regmatch@GOTPCREL(%rip), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rcx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rcx)
	leaq	-64(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpregmatch_clear@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-96(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC20(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE405:
.globl _smpregmatch_clear
_smpregmatch_clear:
LFB406:
	pushq	%rbp
LCFI1042:
	movq	%rsp, %rbp
LCFI1043:
	pushq	%rbx
LCFI1044:
	subq	$40, %rsp
LCFI1045:
	movq	%rdi, %rbx
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	call	_GC_free
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE406:
.globl _smpRegex_compile
_smpRegex_compile:
LFB407:
	pushq	%rbp
LCFI1046:
	movq	%rsp, %rbp
LCFI1047:
	pushq	%rbx
LCFI1048:
	subq	$56, %rsp
LCFI1049:
	movq	%rdi, %rbx
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %edx
	movq	%rbx, %rdi
	call	_smpRegex_compile_flags
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE407:
.globl _smpRegex_compile_flags
_smpRegex_compile_flags:
LFB408:
	pushq	%rbp
LCFI1050:
	movq	%rsp, %rbp
LCFI1051:
	pushq	%rbx
LCFI1052:
	subq	$24, %rsp
LCFI1053:
	movq	%rdi, %rbx
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	40(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	call	_smpRegex_compile_str_flags
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE408:
.globl _smpRegex_compile_str
_smpRegex_compile_str:
LFB409:
	pushq	%rbp
LCFI1054:
	movq	%rsp, %rbp
LCFI1055:
	pushq	%rbx
LCFI1056:
	subq	$24, %rsp
LCFI1057:
	movq	%rdi, %rbx
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	$1, %ecx
	movq	%rbx, %rdi
	call	_smpRegex_compile_str_flags
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE409:
.globl _smpRegex_compile_str_flags
_smpRegex_compile_str_flags:
LFB410:
	pushq	%rbp
LCFI1058:
	movq	%rsp, %rbp
LCFI1059:
	pushq	%rbx
LCFI1060:
	subq	$56, %rsp
LCFI1061:
	movq	%rdi, %rbx
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	call	_regcomp
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	%rbx, %rdi
	call	_smpRegex_compile_handle_errors
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE410:
	.cstring
	.align 3
LC203:
	.ascii "Regular expression \"%s\" had invalid '{...}' construct.\0"
	.align 3
LC204:
	.ascii "Syntax error in regular expression \"%s\".\0"
	.align 3
LC205:
	.ascii "In regular expression \"%s\", a repetition operator such as '?' or '*' appeared in a bad position.\0"
	.align 3
LC206:
	.ascii "Regular expression \"%s\" referred to an invalid collating element.\0"
	.align 3
LC207:
	.ascii "Regular expression \"%s\" referred to an invalid character class name.\0"
	.align 3
LC208:
	.ascii "Regular expression \"%s\" ended with '\\'.\0"
	.align 3
LC209:
	.ascii "Regular expression \"%s\" had invalid number in the '\\digit' construct.\0"
	.align 3
LC210:
	.ascii "Regular expression \"%s\" had unbalanced square brackets.\0"
	.align 3
LC211:
	.ascii "Regular expression \"%s\" had unbalanced parentheses.\0"
	.align 3
LC212:
	.ascii "Regular expression \"%s\" had unbalanced curly braces.\0"
	.align 3
LC213:
	.ascii "In regular expression \"%s\", one of the endpoints in a range expression was invalid.\0"
	.align 3
LC214:
	.ascii "Ran out of memory while compiling regular expression \"%s\".\0"
	.text
.globl _smpRegex_compile_handle_errors
_smpRegex_compile_handle_errors:
LFB411:
	pushq	%rbp
LCFI1062:
	movq	%rsp, %rbp
LCFI1063:
	subq	$832, %rsp
LCFI1064:
	movq	%rdi, -792(%rbp)
	movq	%rsi, -776(%rbp)
	movl	%edx, -780(%rbp)
	cmpl	$10, -780(%rbp)
	jne	L2015
	leaq	-32(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC203(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2015:
	cmpl	$2, -780(%rbp)
	jne	L2018
	leaq	-96(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-128(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC204(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-128(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2018:
	cmpl	$13, -780(%rbp)
	jne	L2020
	leaq	-160(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-192(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC205(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-192(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2020:
	cmpl	$3, -780(%rbp)
	jne	L2022
	leaq	-224(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-256(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC206(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-256(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2022:
	cmpl	$4, -780(%rbp)
	jne	L2024
	leaq	-288(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-320(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-288(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC207(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-320(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-304(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2024:
	cmpl	$5, -780(%rbp)
	jne	L2026
	leaq	-352(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-384(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-352(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-344(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-336(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC208(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-384(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-376(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-368(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2026:
	cmpl	$6, -780(%rbp)
	jne	L2028
	leaq	-416(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-448(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-416(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-408(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-400(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC209(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-448(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-440(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-432(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2028:
	cmpl	$7, -780(%rbp)
	jne	L2030
	leaq	-480(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-512(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-480(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-472(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-464(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC210(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-512(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-496(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2030:
	cmpl	$8, -780(%rbp)
	jne	L2032
	leaq	-544(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-576(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-544(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-536(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-528(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC211(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-576(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-568(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-560(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-552(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2032:
	cmpl	$9, -780(%rbp)
	jne	L2034
	leaq	-608(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-640(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-608(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-600(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-592(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-584(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC212(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-640(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-632(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-624(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-616(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2034:
	cmpl	$11, -780(%rbp)
	jne	L2036
	leaq	-672(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-704(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-672(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-664(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-648(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC213(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-704(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-696(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-688(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-680(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2036:
	cmpl	$12, -780(%rbp)
	jne	L2038
	leaq	-736(%rbp), %rdi
	leaq	LC16(%rip), %rsi
	call	_smp_getclass
	leaq	-768(%rbp), %rdi
	movq	-776(%rbp), %rdx
	movq	-736(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-728(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-720(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-712(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC214(%rip), %rsi
	movl	$0, %eax
	call	_smpException_init_fmt
	movq	-768(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-760(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-752(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-792(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2014
L2038:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-792(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-792(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-792(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-792(%rbp), %rdx
	movq	%rax, 24(%rdx)
L2014:
	movq	-792(%rbp), %rax
	leave
	ret
LFE411:
.globl _smpregmatch_init
_smpregmatch_init:
LFB412:
	pushq	%rbp
LCFI1065:
	movq	%rsp, %rbp
LCFI1066:
	subq	$96, %rsp
LCFI1067:
	movq	%rdi, -88(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	$0, -8(%rbp)
	jmp	L2042
L2043:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	addq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L2044
	movq	-8(%rbp), %rax
	salq	$4, %rax
	addq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	L2044
	incq	-8(%rbp)
	jmp	L2047
L2044:
	incq	-8(%rbp)
L2042:
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	L2043
L2047:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	salq	$4, %rdi
	call	_GC_malloc
	movq	%rax, -32(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2048
	movq	$-1, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	call	___memcpy_chk
	jmp	L2050
L2048:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	call	___inline_memcpy_chk
L2050:
	leaq	-64(%rbp), %rdi
	movq	_smpType_regmatch@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-88(%rbp), %rax
	leave
	ret
LFE412:
.globl _smpRegex_match
_smpRegex_match:
LFB413:
	pushq	%rbp
LCFI1068:
	movq	%rsp, %rbp
LCFI1069:
	pushq	%rbx
LCFI1070:
	subq	$56, %rsp
LCFI1071:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smpRegex_match_str
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE413:
.globl _smpRegex_match_str
_smpRegex_match_str:
LFB414:
	pushq	%rbp
LCFI1072:
	movq	%rsp, %rbp
LCFI1073:
	subq	$240, %rsp
LCFI1074:
	movq	%rdi, -208(%rbp)
	movq	%rsi, -184(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	%rsp, %rax
	movq	%rax, -192(%rbp)
	movq	32(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	jne	L2055
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L2057
	movq	16(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	24(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	40(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2059
L2057:
	leaq	-144(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smp_getclass
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	leaq	-176(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-208(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2059
L2055:
	movl	$32, %edi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	leaq	-80(%rbp), %rdi
	movq	-184(%rbp), %rdx
	movq	-24(%rbp), %rsi
	call	_smpRegex_compile_str
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L2060
	movq	-24(%rbp), %rdi
	call	_GC_free
	movq	-80(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2059
L2060:
	movq	$64, -32(%rbp)
	movq	-32(%rbp), %rax
	salq	$4, %rax
	addq	$15, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	leaq	32(%rsp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2062
	movq	$-1, %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rdi
	movl	$0, %esi
	call	___memset_chk
	jmp	L2064
L2062:
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	movq	-40(%rbp), %rdi
	movl	$0, %esi
	call	___inline_memset_chk
L2064:
	movq	-40(%rbp), %rcx
	movq	40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movl	$0, %r8d
	call	_regexec
	movl	%eax, -12(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -88(%rbp)
	cmpl	$0, -12(%rbp)
	jne	L2065
	movq	-40(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	movq	-32(%rbp), %rdx
	call	_smpregmatch_init
L2065:
	movq	-24(%rbp), %rdi
	call	_regfree
	movq	-24(%rbp), %rdi
	call	_GC_free
	movq	-112(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-96(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, 24(%rcx)
L2059:
	movq	-192(%rbp), %rsp
	movq	-208(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-8(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	L2068
	call	___stack_chk_fail
L2068:
	leave
	ret
LFE414:
.globl _smpRegex_matchp
_smpRegex_matchp:
LFB415:
	pushq	%rbp
LCFI1075:
	movq	%rsp, %rbp
LCFI1076:
	subq	$96, %rsp
LCFI1077:
	movq	%rdi, -56(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	leaq	-32(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpRegex_match
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L2070
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	L2069
L2070:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L2073
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2069
L2073:
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 24(%rdx)
L2069:
	movq	-56(%rbp), %rax
	leave
	ret
LFE415:
.globl _smpRegex_matchp_cint
_smpRegex_matchp_cint:
LFB416:
	pushq	%rbp
LCFI1078:
	movq	%rsp, %rbp
LCFI1079:
	subq	$96, %rsp
LCFI1080:
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpRegex_match
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L2077
	movl	$-1, -52(%rbp)
	jmp	L2079
L2077:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC44(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L2080
	movl	$1, -52(%rbp)
	jmp	L2079
L2080:
	movl	$0, -52(%rbp)
L2079:
	movl	-52(%rbp), %eax
	leave
	ret
LFE416:
.globl _smpstrcreate_class
_smpstrcreate_class:
LFB417:
	pushq	%rbp
LCFI1081:
	movq	%rsp, %rbp
LCFI1082:
	subq	$352, %rsp
LCFI1083:
	leaq	-32(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	leaq	LC18(%rip), %r8
	leaq	LC18(%rip), %rcx
	movl	$2, %edx
	movq	_smpString_add@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC71(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-96(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpString_clear@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC20(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def
	leaq	-128(%rbp), %rdi
	leaq	LC37(%rip), %r8
	leaq	LC40(%rip), %rcx
	movl	$2, %edx
	movq	_smpString_equalp@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC24(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-160(%rbp), %rdi
	leaq	LC86(%rip), %rcx
	movl	$1, %edx
	movq	_smpString_length@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC195(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-192(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpString_reverse@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-192(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC114(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-224(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpString_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-256(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpString_write@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-288(%rbp), %rdi
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE417:
.globl _obj_init_str
_obj_init_str:
LFB418:
	pushq	%rbp
LCFI1084:
	movq	%rsp, %rbp
LCFI1085:
	subq	$32, %rsp
LCFI1086:
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rdi
	call	_strlen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2086
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	call	___strcpy_chk
	jmp	L2088
L2086:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	call	___inline_strcpy_chk
L2088:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	leave
	ret
LFE418:
.globl _smpString_add
_smpString_add:
LFB419:
	pushq	%rbp
LCFI1087:
	movq	%rsp, %rbp
LCFI1088:
	subq	$176, %rsp
LCFI1089:
	movq	%rdi, -104(%rbp)
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdi
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rsp)
	call	_smpObject_instancep_c
	testl	%eax, %eax
	je	L2091
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	incq	%rdi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2093
	movq	$-1, %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	call	___memcpy_chk
	jmp	L2095
L2093:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	call	___inline_memcpy_chk
L2095:
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2096
	movq	$-1, %rcx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	%rsi, %rdx
	movq	%r8, %rsi
	call	___memcpy_chk
	jmp	L2098
L2096:
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	%rcx, %rdx
	call	___inline_memcpy_chk
L2098:
	leaq	-16(%rbp), %rsi
	movq	-104(%rbp), %rdi
	call	_smpString_init_ref
	jmp	L2090
L2091:
	movq	32(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-104(%rbp), %rdi
	call	_smpGlobal_throw
L2090:
	movq	-104(%rbp), %rax
	leave
	ret
LFE419:
.globl _smpString_add_now
_smpString_add_now:
LFB420:
	pushq	%rbp
LCFI1090:
	movq	%rsp, %rbp
LCFI1091:
	subq	$160, %rsp
LCFI1092:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	32(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rsp)
	call	_smpObject_instancep_c
	testl	%eax, %eax
	je	L2102
	movq	40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	incq	%rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	call	_GC_realloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2104
	movq	$-1, %rcx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %r8
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	(%rdx,%rax), %rdi
	movq	%rsi, %rdx
	movq	%r8, %rsi
	call	___memcpy_chk
	jmp	L2106
L2104:
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	(%rdx,%rax), %rdi
	movq	%rcx, %rdx
	call	___inline_memcpy_chk
L2106:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	16(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2101
L2102:
	movq	32(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-88(%rbp), %rdi
	call	_smpGlobal_throw
L2101:
	movq	-88(%rbp), %rax
	leave
	ret
LFE420:
.globl _smpString_clear
_smpString_clear:
LFB421:
	pushq	%rbp
LCFI1093:
	movq	%rsp, %rbp
LCFI1094:
	pushq	%rbx
LCFI1095:
	subq	$24, %rsp
LCFI1096:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	(%rax), %rdi
	call	_GC_free
	movq	40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE421:
.globl _smpString_equalp
_smpString_equalp:
LFB422:
	pushq	%rbp
LCFI1097:
	movq	%rsp, %rbp
LCFI1098:
	pushq	%rbx
LCFI1099:
	subq	$72, %rsp
LCFI1100:
	movq	%rdi, -40(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC18(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L2112
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	movq	%rax, %rbx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	movq	%rax, %rdi
	movq	%rbx, %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L2112
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2111
L2112:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
L2111:
	movq	-40(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE422:
.globl _smpString_equalp_cstr
_smpString_equalp_cstr:
LFB423:
	pushq	%rbp
LCFI1101:
	movq	%rsp, %rbp
LCFI1102:
	subq	$48, %rsp
LCFI1103:
	movq	%rdi, -8(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	ret
LFE423:
.globl _smpString_init
_smpString_init:
LFB424:
	pushq	%rbp
LCFI1104:
	movq	%rsp, %rbp
LCFI1105:
	pushq	%rbx
LCFI1106:
	subq	$56, %rsp
LCFI1107:
	movq	%rdi, %rbx
	movq	%rsi, -56(%rbp)
	leaq	-48(%rbp), %rdi
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	-56(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	call	_obj_init_str
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	ret
LFE424:
.globl _smpString_init_length
_smpString_init_length:
LFB425:
	pushq	%rbp
LCFI1108:
	movq	%rsp, %rbp
LCFI1109:
	subq	$96, %rsp
LCFI1110:
	movq	%rdi, -88(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	leaq	-64(%rbp), %rdi
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rdi
	call	_strlen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jae	L2122
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
L2122:
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdi
	call	_GC_malloc
	movq	%rax, -32(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2124
	movq	$-1, %rcx
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	call	___strncpy_chk
	jmp	L2126
L2124:
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	call	___inline_strncpy_chk
L2126:
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-88(%rbp), %rax
	leave
	ret
LFE425:
___inline_strncpy_chk:
LFB52:
	pushq	%rbp
LCFI1111:
	movq	%rsp, %rbp
LCFI1112:
	subq	$32, %rsp
LCFI1113:
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$-1, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	call	___strncpy_chk
	leave
	ret
LFE52:
.globl _smpString_init_ref
_smpString_init_ref:
LFB426:
	pushq	%rbp
LCFI1114:
	movq	%rsp, %rbp
LCFI1115:
	pushq	%rbx
LCFI1116:
	subq	$72, %rsp
LCFI1117:
	movq	%rdi, %rbx
	movq	%rsi, -72(%rbp)
	leaq	-64(%rbp), %rdi
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_GC_malloc
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	call	_strlen
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE426:
.globl _smpString_init_fmt
_smpString_init_fmt:
LFB427:
	pushq	%rbp
LCFI1118:
	movq	%rsp, %rbp
LCFI1119:
	pushq	%rbx
LCFI1120:
	subq	$232, %rsp
LCFI1121:
	movq	%rdi, %rbx
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	movzbl	%al, %eax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rdx
	leaq	0(,%rdx,4), %rax
	leaq	L2133(%rip), %rdx
	movq	%rdx, -240(%rbp)
	subq	%rax, -240(%rbp)
	leaq	-17(%rbp), %rax
	movq	-240(%rbp), %rdx
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L2133:
	movq	%rsi, -232(%rbp)
	leaq	-224(%rbp), %rax
	movl	$16, (%rax)
	leaq	-224(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-224(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-224(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	-224(%rbp), %rdx
	movq	-232(%rbp), %rsi
	leaq	-200(%rbp), %rdi
	call	_vasprintf
	leaq	-200(%rbp), %rsi
	movq	%rbx, %rdi
	call	_smpString_init_ref
	movq	%rbx, %rax
	addq	$232, %rsp
	popq	%rbx
	leave
	ret
LFE427:
.globl _smpString_length
_smpString_length:
LFB428:
	pushq	%rbp
LCFI1122:
	movq	%rsp, %rbp
LCFI1123:
	pushq	%rbx
LCFI1124:
	subq	$24, %rsp
LCFI1125:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_smpInteger_init_clong
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE428:
.globl _smpString_reverse
_smpString_reverse:
LFB429:
	pushq	%rbp
LCFI1126:
	movq	%rsp, %rbp
LCFI1127:
	addq	$-128, %rsp
LCFI1128:
	movq	%rdi, -88(%rbp)
	movl	%esi, -68(%rbp)
	movq	%rdx, -80(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	call	_strlen
	leaq	1(%rax), %rdi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	call	_strlen
	addq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	L2138
L2139:
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	addq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	incl	-4(%rbp)
L2138:
	decq	-32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	L2139
	leaq	-64(%rbp), %rdi
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	-24(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	call	_obj_init_str
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-88(%rbp), %rax
	leave
	ret
LFE429:
	.cstring
LC215:
	.ascii "\0"
	.text
.globl _smpString_substring
_smpString_substring:
LFB430:
	pushq	%rbp
LCFI1129:
	movq	%rsp, %rbp
LCFI1130:
	pushq	%rbx
LCFI1131:
	subq	$72, %rsp
LCFI1132:
	movq	%rdi, -48(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	movq	%rax, -24(%rbp)
	movl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax,%rbx
	movq	-24(%rbp), %rdi
	call	_strlen
	cmpq	%rax, %rbx
	jbe	L2143
	movq	-24(%rbp), %rdi
	call	_strlen
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -40(%rbp)
L2143:
	cmpl	$0, -40(%rbp)
	jg	L2145
	leaq	LC215(%rip), %rsi
	movq	-48(%rbp), %rdi
	call	_smpString_init
	jmp	L2142
L2145:
	movl	-40(%rbp), %eax
	incl	%eax
	movslq	%eax,%rdi
	call	_GC_malloc
	movq	%rax, -32(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2148
	movq	$-1, %rdx
	movl	-36(%rbp), %eax
	cltq
	movq	%rax, %rsi
	addq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	call	___strcpy_chk
	jmp	L2150
L2148:
	movl	-36(%rbp), %eax
	cltq
	movq	%rax, %rsi
	addq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	call	___inline_strcpy_chk
L2150:
	leaq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdi
	call	_smpString_init_ref
L2142:
	movq	-48(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE430:
.globl _smpString_to_cstr
_smpString_to_cstr:
LFB431:
	pushq	%rbp
LCFI1133:
	movq	%rsp, %rbp
LCFI1134:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	leave
	ret
LFE431:
.globl _smpString_to_s
_smpString_to_s:
LFB432:
	pushq	%rbp
LCFI1135:
	movq	%rsp, %rbp
LCFI1136:
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rdi)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rdi)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdi)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE432:
.globl _smpString_write
_smpString_write:
LFB433:
	pushq	%rbp
LCFI1137:
	movq	%rsp, %rbp
LCFI1138:
	subq	$80, %rsp
LCFI1139:
	movq	%rdi, -72(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	%rsp, %rax
	movq	%rax, -56(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, %rax
	addq	$3, %rax
	addq	$15, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	movq	%rsp, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movb	$34, (%rax,%rdx)
	incq	-16(%rbp)
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	L2157
L2158:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	je	L2159
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	je	L2159
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	L2159
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	je	L2159
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	L2164
L2159:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movb	$92, (%rax,%rdx)
	incq	-16(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	L2165
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movb	$34, (%rax,%rdx)
	incq	-16(%rbp)
	jmp	L2175
L2165:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	L2168
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movb	$92, (%rax,%rdx)
	incq	-16(%rbp)
	jmp	L2175
L2168:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	L2170
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movb	$110, (%rax,%rdx)
	incq	-16(%rbp)
	jmp	L2175
L2170:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	L2172
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movb	$114, (%rax,%rdx)
	incq	-16(%rbp)
	jmp	L2175
L2172:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	L2175
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movb	$116, (%rax,%rdx)
	incq	-16(%rbp)
	jmp	L2175
L2164:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax,%rcx)
	incq	-16(%rbp)
L2175:
	incq	-24(%rbp)
L2157:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L2158
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movb	$34, (%rax,%rdx)
	incq	-16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movb	$0, (%rax,%rdx)
	incq	-16(%rbp)
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rdi
	call	_smpString_init
	movq	-56(%rbp), %rsp
	movq	-72(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-8(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	L2178
	call	___stack_chk_fail
L2178:
	leave
	ret
LFE433:
	.cstring
LC216:
	.ascii "Symbol\0"
	.text
.globl _smpSymbol_create_class
_smpSymbol_create_class:
LFB434:
	pushq	%rbp
LCFI1140:
	movq	%rsp, %rbp
LCFI1141:
	subq	$192, %rsp
LCFI1142:
	movl	$0, %edx
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	leaq	LC216(%rip), %rdi
	call	_smpGlobal_class
	leaq	-32(%rbp), %rdi
	leaq	LC216(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpSymbol_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-128(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	leaq	-96(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpSymbol_write@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-128(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC61(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE434:
.globl _smpSymbol_init
_smpSymbol_init:
LFB435:
	pushq	%rbp
LCFI1143:
	movq	%rsp, %rbp
LCFI1144:
	addq	$-128, %rsp
LCFI1145:
	movq	%rdi, -96(%rbp)
	movq	%rsi, -88(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	LC216(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	-48(%rbp), %rdi
	call	_obj_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L2182
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2181
L2182:
	movq	-88(%rbp), %rdi
	call	_strlen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdi
	call	_GC_malloc
	movq	%rax, -16(%rbp)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2185
	movq	$-1, %rdx
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	call	___strcpy_chk
	jmp	L2187
L2185:
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	call	___inline_strcpy_chk
L2187:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, 24(%rdx)
L2181:
	movq	-96(%rbp), %rax
	leave
	ret
LFE435:
.globl _smpSymbol_to_cstr
_smpSymbol_to_cstr:
LFB436:
	pushq	%rbp
LCFI1146:
	movq	%rsp, %rbp
LCFI1147:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	leave
	ret
LFE436:
.globl _smpSymbol_to_s
_smpSymbol_to_s:
LFB437:
	pushq	%rbp
LCFI1148:
	movq	%rsp, %rbp
LCFI1149:
	pushq	%rbx
LCFI1150:
	subq	$24, %rsp
LCFI1151:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	call	_smpString_init
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE437:
.globl _smpSymbol_write
_smpSymbol_write:
LFB438:
	pushq	%rbp
LCFI1152:
	movq	%rsp, %rbp
LCFI1153:
	subq	$64, %rsp
LCFI1154:
	movq	%rdi, -56(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	%rsp, %rax
	movq	%rax, -40(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$2, %rax
	addq	$15, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	movq	%rsp, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$96, (%rax)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2194
	movq	$-1, %rdx
	movq	40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdi
	call	___strcpy_chk
	jmp	L2196
L2194:
	movq	40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdi
	call	___inline_strcpy_chk
L2196:
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rdi
	call	_smpString_init
	movq	-40(%rbp), %rsp
	movq	-56(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-8(%rbp), %rcx
	xorq	(%rdx), %rcx
	je	L2198
	call	___stack_chk_fail
L2198:
	leave
	ret
LFE438:
.globl _smpThrown_create_class
_smpThrown_create_class:
LFB439:
	pushq	%rbp
LCFI1155:
	movq	%rsp, %rbp
LCFI1156:
	subq	$192, %rsp
LCFI1157:
	leaq	-32(%rbp), %rdi
	leaq	LC27(%rip), %rsi
	call	_smp_getclass
	leaq	-64(%rbp), %rdi
	leaq	LC43(%rip), %rcx
	movl	$1, %edx
	movq	_smpThrown_gc_mark@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-128(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC57(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def
	leaq	-96(%rbp), %rdi
	leaq	LC18(%rip), %rcx
	movl	$1, %edx
	movq	_smpThrown_to_s@GOTPCREL(%rip), %rsi
	movl	$0, %eax
	call	_smpFunction_init
	leaq	-128(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC35(%rip), %rdx
	movl	$0, %esi
	call	_smpType_def
	movl	$0, %eax
	leave
	ret
LFE439:
.globl _smpThrown_add_exception_now
_smpThrown_add_exception_now:
LFB440:
	pushq	%rbp
LCFI1158:
	movq	%rsp, %rbp
LCFI1159:
	pushq	%rbx
LCFI1160:
	subq	$152, %rsp
LCFI1161:
	movq	%rdi, -120(%rbp)
	movq	%rsi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L2202
	movq	-72(%rbp), %rbx
	leaq	-112(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %esi
	call	_smpThrown_init
	movq	-112(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2201
L2202:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L2205
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	salq	$5, %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	call	_GC_realloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2207
	movq	$-1, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	salq	$5, %rsi
	movq	-56(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rdi
	movq	%rsi, %rdx
	movq	%r8, %rsi
	call	___memcpy_chk
	jmp	L2210
L2207:
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	salq	$5, %rcx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rdi
	movq	%rcx, %rdx
	call	___inline_memcpy_chk
	jmp	L2210
L2205:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	salq	$5, %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	call	_GC_realloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rdx)
L2210:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
L2201:
	movq	-120(%rbp), %rax
	addq	$152, %rsp
	popq	%rbx
	leave
	ret
LFE440:
.globl _smpThrown_contains_namep
_smpThrown_contains_namep:
LFB441:
	pushq	%rbp
LCFI1162:
	movq	%rsp, %rbp
LCFI1163:
	subq	$32, %rsp
LCFI1164:
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L2213
L2214:
	movq	40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L2215
	movl	$1, -28(%rbp)
	jmp	L2217
L2215:
	incq	-8(%rbp)
L2213:
	movq	40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	ja	L2214
	movl	$0, -28(%rbp)
L2217:
	movl	-28(%rbp), %eax
	leave
	ret
LFE441:
.globl _smpThrown_gc_mark
_smpThrown_gc_mark:
LFB442:
	pushq	%rbp
LCFI1165:
	movq	%rsp, %rbp
LCFI1166:
	subq	$80, %rsp
LCFI1167:
	movq	%rdi, -40(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	L2221
L2222:
	movq	40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %edi
	call	_gc_mark_recursive
	incq	-8(%rbp)
L2221:
	movq	40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	ja	L2222
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-40(%rbp), %rax
	leave
	ret
LFE442:
.globl _smpThrown_get_first_value
_smpThrown_get_first_value:
LFB443:
	pushq	%rbp
LCFI1168:
	movq	%rsp, %rbp
LCFI1169:
	subq	$16, %rsp
LCFI1170:
	movq	%rdi, -8(%rbp)
	movq	40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	L2226
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2225
L2226:
	movq	40(%rbp), %rax
	movq	8(%rax), %rsi
	movl	$32, %edx
	movq	-8(%rbp), %rdi
	call	_memmove
L2225:
	movq	-8(%rbp), %rax
	leave
	ret
LFE443:
.globl _smpThrown_init
_smpThrown_init:
LFB444:
	pushq	%rbp
LCFI1171:
	movq	%rsp, %rbp
LCFI1172:
	subq	$80, %rsp
LCFI1173:
	movq	%rdi, -80(%rbp)
	movl	%esi, -68(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC27(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L2231
	movq	16(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2230
L2231:
	movl	-68(%rbp), %eax
	sall	$4, %eax
	sarb	$4, %al
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	-32(%rbp), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, -32(%rbp)
	movq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	salq	$5, %rdi
	call	_GC_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rdx)
	leaq	-64(%rbp), %rdi
	movq	_smpType_thrown@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$24, %edi
	call	_GC_malloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 24(%rdx)
L2230:
	movq	-80(%rbp), %rax
	leave
	ret
LFE444:
.globl _smp_should_breakp_c
_smp_should_breakp_c:
LFB445:
	pushq	%rbp
LCFI1174:
	movq	%rsp, %rbp
LCFI1175:
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	leave
	ret
LFE445:
.globl _smp_should_returnp_c
_smp_should_returnp_c:
LFB446:
	pushq	%rbp
LCFI1176:
	movq	%rsp, %rbp
LCFI1177:
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L2238
	movq	40(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$15, %eax
	testb	%al, %al
	je	L2240
	movq	40(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$15, %eax
	cmpb	$1, %al
	jne	L2238
L2240:
	movl	$1, -4(%rbp)
	jmp	L2242
L2238:
	movl	$0, -4(%rbp)
L2242:
	movl	-4(%rbp), %eax
	leave
	ret
LFE446:
.globl _smp_thrown_exceptionp_c
_smp_thrown_exceptionp_c:
LFB447:
	pushq	%rbp
LCFI1178:
	movq	%rsp, %rbp
LCFI1179:
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L2245
	movq	40(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$15, %eax
	testb	%al, %al
	jne	L2245
	movl	$1, -4(%rbp)
	jmp	L2248
L2245:
	movl	$0, -4(%rbp)
L2248:
	movl	-4(%rbp), %eax
	leave
	ret
LFE447:
	.cstring
LC217:
	.ascii "<Thrown: %s>\0"
	.text
.globl _smpThrown_to_s
_smpThrown_to_s:
LFB448:
	pushq	%rbp
LCFI1180:
	movq	%rsp, %rbp
LCFI1181:
	subq	$208, %rsp
LCFI1182:
	movq	%rdi, -168(%rbp)
	movl	%esi, -116(%rbp)
	movq	%rdx, -128(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	LC215(%rip), %rsi
	call	_smpString_init
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L2251
	movq	-48(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2250
L2251:
	leaq	-80(%rbp), %rdi
	leaq	LC139(%rip), %rsi
	call	_smpString_init
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L2254
	movq	-80(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2250
L2254:
	movq	$0, -8(%rbp)
	jmp	L2256
L2257:
	movq	40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	leaq	-112(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movl	$0, %ecx
	movl	$0, %edx
	leaq	LC35(%rip), %rsi
	call	_smpObject_funcall
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L2258
	movq	-112(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-96(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2250
L2258:
	cmpq	$0, -8(%rbp)
	je	L2260
	leaq	-160(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
L2260:
	leaq	-160(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpString_add_now
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L2262
	movq	-48(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2250
L2262:
	incq	-8(%rbp)
L2256:
	movq	40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	ja	L2257
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpString_to_cstr
	leaq	-16(%rbp), %rdi
	movq	%rax, %rdx
	leaq	LC217(%rip), %rsi
	movl	$0, %eax
	call	_asprintf
	leaq	-16(%rbp), %rsi
	movq	-168(%rbp), %rdi
	call	_smpString_init_ref
L2250:
	movq	-168(%rbp), %rax
	leave
	ret
LFE448:
.globl _smpType_abstract_def
_smpType_abstract_def:
LFB449:
	pushq	%rbp
LCFI1183:
	movq	%rsp, %rbp
LCFI1184:
	pushq	%rbx
LCFI1185:
	subq	$376, %rsp
LCFI1186:
	movq	%rdi, %rbx
	movl	%esi, -292(%rbp)
	movq	%rdx, -304(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	movzbl	%al, %eax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rdx
	leaq	0(,%rdx,4), %rax
	leaq	L2267(%rip), %rdx
	movq	%rdx, -320(%rbp)
	subq	%rax, -320(%rbp)
	leaq	-17(%rbp), %rax
	movq	-320(%rbp), %rdx
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L2267:
	movl	%ecx, -308(%rbp)
	leaq	-224(%rbp), %rax
	movl	$32, (%rax)
	leaq	-224(%rbp), %rax
	movl	$48, 4(%rax)
	leaq	-224(%rbp), %rdx
	leaq	48(%rbp), %rax
	movq	%rax, 8(%rdx)
	leaq	-224(%rbp), %rax
	leaq	-192(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	-288(%rbp), %rdi
	leaq	-224(%rbp), %rcx
	movl	-308(%rbp), %edx
	leaq	_smp_abstract_function(%rip), %rsi
	call	_smpFunction_init_v
	leaq	-256(%rbp), %rdi
	movq	-304(%rbp), %rdx
	movl	-292(%rbp), %esi
	movq	-288(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpType_def
	movq	-256(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$376, %rsp
	popq	%rbx
	leave
	ret
LFE449:
.globl _smpType_clear
_smpType_clear:
LFB450:
	pushq	%rbp
LCFI1187:
	movq	%rsp, %rbp
LCFI1188:
	pushq	%rbx
LCFI1189:
	subq	$88, %rsp
LCFI1190:
	movq	%rdi, %rbx
	movl	%esi, -84(%rbp)
	movq	%rdx, -96(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	40(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	48(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	56(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	call	_minihash_clear
	movq	-24(%rbp), %rdi
	call	_minihash_clear
	movq	-80(%rbp), %rdi
	call	_GC_free
	movq	-64(%rbp), %rdi
	call	_GC_free
	movq	$0, -64(%rbp)
	movq	-48(%rbp), %rdi
	call	_minihash_clear
	movq	-40(%rbp), %rdi
	call	_minihash_clear
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$88, %rsp
	popq	%rbx
	leave
	ret
LFE450:
	.cstring
	.align 3
LC218:
	.ascii "Undefined function-variable flag %d.\12\0"
LC219:
	.ascii "Undefined scope flag %d.\12\0"
	.text
.globl _smpType_def_general
_smpType_def_general:
LFB451:
	pushq	%rbp
LCFI1191:
	movq	%rsp, %rbp
LCFI1192:
	pushq	%rbx
LCFI1193:
	subq	$152, %rsp
LCFI1194:
	movq	%rdi, -120(%rbp)
	movl	%esi, -100(%rbp)
	movq	%rdx, -112(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_thrown_exceptionp_c
	testl	%eax, %eax
	je	L2272
	movq	16(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	24(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	32(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	40(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	L2271
L2272:
	movq	$0, -24(%rbp)
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC33(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	je	L2275
	leaq	-64(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_class@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-120(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2271
L2275:
	movl	-100(%rbp), %eax
	andl	$3840, %eax
	testl	%eax, %eax
	jne	L2277
	movq	64(%rbp), %rax
	movq	(%rax), %rdi
	leaq	LC26(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	je	L2277
	leaq	-96(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_function@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-120(%rbp), %rdi
	call	_smpGlobal_throw
	jmp	L2271
L2277:
	movl	-100(%rbp), %eax
	andl	$3840, %eax
	testl	%eax, %eax
	jne	L2280
	movq	72(%rbp), %rax
	movq	%rax, %rbx
	movq	-112(%rbp), %rdi
	call	_strlen
	leaq	1(%rax), %rdi
	call	_GC_malloc
	movq	%rax, 8(%rbx)
	movq	$-1, %rax
	cmpq	$-1, %rax
	je	L2282
	movq	$-1, %rdx
	movq	72(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-112(%rbp), %rsi
	call	___strcpy_chk
	jmp	L2284
L2282:
	movq	72(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-112(%rbp), %rsi
	call	___inline_strcpy_chk
L2284:
	movq	72(%rbp), %rax
	movq	%rax, %rcx
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	movl	$-16, %eax
	andl	%edx, %eax
	movb	%al, (%rcx)
L2280:
	movl	-100(%rbp), %eax
	andl	$15, %eax
	testl	%eax, %eax
	jne	L2285
	movl	-100(%rbp), %eax
	andl	$3840, %eax
	testl	%eax, %eax
	jne	L2287
	movq	40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	L2292
L2287:
	movl	-100(%rbp), %eax
	andl	$3840, %eax
	cmpl	$256, %eax
	jne	L2290
	movq	40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	L2292
L2290:
	movl	-100(%rbp), %esi
	andl	$3840, %esi
	leaq	LC218(%rip), %rdi
	movl	$0, %eax
	call	_internal_error
	jmp	L2292
L2285:
	movl	-100(%rbp), %eax
	andl	$15, %eax
	cmpl	$1, %eax
	jne	L2293
	movl	-100(%rbp), %eax
	andl	$3840, %eax
	testl	%eax, %eax
	jne	L2295
	movq	40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	L2292
L2295:
	movl	-100(%rbp), %eax
	andl	$3840, %eax
	cmpl	$256, %eax
	jne	L2298
	movq	40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	L2292
L2298:
	movl	-100(%rbp), %esi
	andl	$3840, %esi
	leaq	LC218(%rip), %rdi
	movl	$0, %eax
	call	_internal_error
	jmp	L2292
L2293:
	movl	-100(%rbp), %esi
	andl	$15, %esi
	leaq	LC219(%rip), %rdi
	movl	$0, %eax
	call	_internal_error
L2292:
	movq	-112(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_minihash_add
	movq	48(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	56(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	64(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	72(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, 24(%rdx)
L2271:
	movq	-120(%rbp), %rax
	addq	$152, %rsp
	popq	%rbx
	leave
	ret
LFE451:
.globl _smpType_def
_smpType_def:
LFB452:
	pushq	%rbp
LCFI1195:
	movq	%rsp, %rbp
LCFI1196:
	pushq	%rbx
LCFI1197:
	subq	$88, %rsp
LCFI1198:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %esi
	movq	48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smpType_def_general
	movq	%rbx, %rax
	addq	$88, %rsp
	popq	%rbx
	leave
	ret
LFE452:
.globl _smpType_defvar
_smpType_defvar:
LFB453:
	pushq	%rbp
LCFI1199:
	movq	%rsp, %rbp
LCFI1200:
	pushq	%rbx
LCFI1201:
	subq	$88, %rsp
LCFI1202:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %esi
	orl	$256, %esi
	movq	-32(%rbp), %rdx
	movq	48(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	call	_smpType_def_general
	movq	%rbx, %rax
	addq	$88, %rsp
	popq	%rbx
	leave
	ret
LFE453:
.globl _smpType_equalp
_smpType_equalp:
LFB454:
	pushq	%rbp
LCFI1203:
	movq	%rsp, %rbp
LCFI1204:
	subq	$32, %rsp
LCFI1205:
	movq	%rdi, -24(%rbp)
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	LC33(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L2306
	movq	40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %esi
	movq	-24(%rbp), %rdi
	call	_smpBool_init
	jmp	L2305
L2306:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
L2305:
	movq	-24(%rbp), %rax
	leave
	ret
LFE454:
.globl _smpType_gc_mark
_smpType_gc_mark:
LFB455:
	pushq	%rbp
LCFI1206:
	movq	%rsp, %rbp
LCFI1207:
	pushq	%rbx
LCFI1208:
	subq	$24, %rsp
LCFI1209:
	movq	%rdi, %rbx
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	40(%rbp), %rax
	movq	48(%rax), %rdi
	leaq	_gc_mark_recursive(%rip), %rsi
	call	_minihash_each
	movq	40(%rbp), %rax
	movq	56(%rax), %rdi
	leaq	_gc_mark_recursive(%rip), %rsi
	call	_minihash_each
	movq	40(%rbp), %rax
	movq	32(%rax), %rdi
	leaq	_gc_mark_recursive(%rip), %rsi
	call	_minihash_each
	movq	40(%rbp), %rax
	movq	40(%rax), %rdi
	leaq	_gc_mark_recursive(%rip), %rsi
	call	_minihash_each
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	leave
	ret
LFE455:
.globl _smpType_relatedp
_smpType_relatedp:
LFB456:
	pushq	%rbp
LCFI1210:
	movq	%rsp, %rbp
LCFI1211:
	pushq	%rbx
LCFI1212:
	subq	$168, %rsp
LCFI1213:
	movq	%rdi, %rbx
	movl	%esi, -100(%rbp)
	movq	%rdx, -112(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	40(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	48(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	56(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 56(%rsp)
	call	_smpObject_instancep_c
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_smpBool_init
	movq	%rbx, %rax
	addq	$168, %rsp
	popq	%rbx
	leave
	ret
LFE456:
.globl _main
_main:
LFB457:
	pushq	%rbp
LCFI1214:
	movq	%rsp, %rbp
LCFI1215:
	subq	$16, %rsp
LCFI1216:
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	call	_scope_init
	movl	$0, %eax
	call	_test_init
	movl	$0, %eax
	call	_init_smp_classes
	movl	$0, %eax
	call	_test_array_sort
	movl	$0, %eax
	call	_scope_clear
	movl	$0, %eax
	leave
	ret
LFE457:
.lcomm _sfmt,2496,5
.lcomm _idx,4,2
.comm _smpType_object,64,5
.comm _smpType_id,64,5
.comm _smpType_nil,64,5
.comm _smpType_class,64,5
.comm _smpType_function,64,5
.comm _smpType_global,64,5
.comm _smpType_thrown,64,5
.comm _smpType_exception,64,5
.comm _smpType_string,64,5
.comm _smpType_pair,64,5
.comm _smpType_list,64,5
.comm _smpType_atom,64,5
.comm _smpType_collection,64,5
.comm _smpType_regmatch,64,5
.comm _smp_nil,32,5
.comm _smp_true,32,5
.comm _smp_global,32,5
.comm _smpType_id_nil,4,2
.comm _smpType_id_class,4,2
.comm _smpType_id_int,4,2
.comm _smpType_id_float,4,2
.comm _smpType_id_fun,4,2
.comm _smpType_id_list,4,2
.comm _smpType_id_array,4,2
.comm _smpType_id_hash,4,2
.comm _smpType_id_var,4,2
.comm _smpType_id_thrown,4,2
.comm _smpType_next_id,4,2
.comm _smpType_ids,32,5
.comm _smp_stdin,8,3
.comm _smp_stdout,8,3
.comm _smp_stderr,8,3
.comm _scope_stack,8,3
.comm _scope_length,8,3
.comm _scope_classes,32,5
.comm _initialized_classesp,4,2
.comm _smpType_int,64,5
.comm _smpType_float,64,5
.comm _smpInteger_zero,32,5
.comm _smpInteger_one,32,5
.comm _smp_mpfr_rnd,4,2
.comm _smp_mpfr_default_prec,8,3
.comm _smptest_print_successesp,4,2
	.literal8
	.align 3
LC12:
	.long	0
	.long	1072168960
	.align 3
LC13:
	.long	0
	.long	1070596096
	.align 3
LC14:
	.long	0
	.long	1138753536
	.align 3
LC84:
	.long	1717986918
	.long	1077241446
	.align 3
LC93:
	.long	0
	.long	1093567616
	.align 3
LC94:
	.long	0
	.long	1075970048
	.align 3
LC96:
	.long	0
	.long	1039138816
	.align 3
LC99:
	.long	4028335726
	.long	1074340345
	.align 3
LC150:
	.long	0
	.long	1073741824
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
_period_certification.eh:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB92-.
	.set L$set$2,LFE92-LFB92
	.quad L$set$2
	.byte	0x0
	.byte	0x4
	.set L$set$3,LCFI0-LFB92
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE1:
_idxof.eh:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB84-.
	.set L$set$6,LFE84-LFB84
	.quad L$set$6
	.byte	0x0
	.byte	0x4
	.set L$set$7,LCFI3-LFB84
	.long L$set$7
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$8,LCFI4-LCFI3
	.long L$set$8
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE3:
.globl _get_idstring.eh
_get_idstring.eh:
LSFDE5:
	.set L$set$9,LEFDE5-LASFDE5
	.long L$set$9
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB93-.
	.set L$set$10,LFE93-LFB93
	.quad L$set$10
	.byte	0x0
	.byte	0x4
	.set L$set$11,LCFI5-LFB93
	.long L$set$11
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$12,LCFI6-LCFI5
	.long L$set$12
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE5:
.globl _get_min_array_size32.eh
_get_min_array_size32.eh:
LSFDE7:
	.set L$set$13,LEFDE7-LASFDE7
	.long L$set$13
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB94-.
	.set L$set$14,LFE94-LFB94
	.quad L$set$14
	.byte	0x0
	.byte	0x4
	.set L$set$15,LCFI7-LFB94
	.long L$set$15
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$16,LCFI8-LCFI7
	.long L$set$16
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE7:
.globl _get_min_array_size64.eh
_get_min_array_size64.eh:
LSFDE9:
	.set L$set$17,LEFDE9-LASFDE9
	.long L$set$17
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB95-.
	.set L$set$18,LFE95-LFB95
	.quad L$set$18
	.byte	0x0
	.byte	0x4
	.set L$set$19,LCFI9-LFB95
	.long L$set$19
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$20,LCFI10-LCFI9
	.long L$set$20
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE9:
.globl _gen_rand32.eh
_gen_rand32.eh:
LSFDE11:
	.set L$set$21,LEFDE11-LASFDE11
	.long L$set$21
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB96-.
	.set L$set$22,LFE96-LFB96
	.quad L$set$22
	.byte	0x0
	.byte	0x4
	.set L$set$23,LCFI11-LFB96
	.long L$set$23
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$24,LCFI12-LCFI11
	.long L$set$24
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE11:
_gen_rand_all.eh:
LSFDE13:
	.set L$set$25,LEFDE13-LASFDE13
	.long L$set$25
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB88-.
	.set L$set$26,LFE88-LFB88
	.quad L$set$26
	.byte	0x0
	.byte	0x4
	.set L$set$27,LCFI14-LFB88
	.long L$set$27
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$28,LCFI15-LCFI14
	.long L$set$28
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE13:
_do_recursion.eh:
LSFDE15:
	.set L$set$29,LEFDE15-LASFDE15
	.long L$set$29
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB87-.
	.set L$set$30,LFE87-LFB87
	.quad L$set$30
	.byte	0x0
	.byte	0x4
	.set L$set$31,LCFI17-LFB87
	.long L$set$31
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$32,LCFI18-LCFI17
	.long L$set$32
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE15:
_lshift128.eh:
LSFDE17:
	.set L$set$33,LEFDE17-LASFDE17
	.long L$set$33
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB86-.
	.set L$set$34,LFE86-LFB86
	.quad L$set$34
	.byte	0x0
	.byte	0x4
	.set L$set$35,LCFI20-LFB86
	.long L$set$35
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$36,LCFI21-LCFI20
	.long L$set$36
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE17:
_rshift128.eh:
LSFDE19:
	.set L$set$37,LEFDE19-LASFDE19
	.long L$set$37
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB85-.
	.set L$set$38,LFE85-LFB85
	.quad L$set$38
	.byte	0x0
	.byte	0x4
	.set L$set$39,LCFI22-LFB85
	.long L$set$39
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$40,LCFI23-LCFI22
	.long L$set$40
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE19:
.globl _gen_rand64.eh
_gen_rand64.eh:
LSFDE21:
	.set L$set$41,LEFDE21-LASFDE21
	.long L$set$41
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB97-.
	.set L$set$42,LFE97-LFB97
	.quad L$set$42
	.byte	0x0
	.byte	0x4
	.set L$set$43,LCFI24-LFB97
	.long L$set$43
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$44,LCFI25-LCFI24
	.long L$set$44
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE21:
.globl _fill_array32.eh
_fill_array32.eh:
LSFDE23:
	.set L$set$45,LEFDE23-LASFDE23
	.long L$set$45
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB98-.
	.set L$set$46,LFE98-LFB98
	.quad L$set$46
	.byte	0x0
	.byte	0x4
	.set L$set$47,LCFI27-LFB98
	.long L$set$47
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$48,LCFI28-LCFI27
	.long L$set$48
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE23:
_gen_rand_array.eh:
LSFDE25:
	.set L$set$49,LEFDE25-LASFDE25
	.long L$set$49
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB89-.
	.set L$set$50,LFE89-LFB89
	.quad L$set$50
	.byte	0x0
	.byte	0x4
	.set L$set$51,LCFI30-LFB89
	.long L$set$51
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$52,LCFI31-LCFI30
	.long L$set$52
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE25:
.globl _fill_array64.eh
_fill_array64.eh:
LSFDE27:
	.set L$set$53,LEFDE27-LASFDE27
	.long L$set$53
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB99-.
	.set L$set$54,LFE99-LFB99
	.quad L$set$54
	.byte	0x0
	.byte	0x4
	.set L$set$55,LCFI33-LFB99
	.long L$set$55
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$56,LCFI34-LCFI33
	.long L$set$56
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE27:
.globl _init_gen_rand.eh
_init_gen_rand.eh:
LSFDE29:
	.set L$set$57,LEFDE29-LASFDE29
	.long L$set$57
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB100-.
	.set L$set$58,LFE100-LFB100
	.quad L$set$58
	.byte	0x0
	.byte	0x4
	.set L$set$59,LCFI36-LFB100
	.long L$set$59
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$60,LCFI37-LCFI36
	.long L$set$60
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$61,LCFI40-LCFI37
	.long L$set$61
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE29:
.globl _init_by_array.eh
_init_by_array.eh:
LSFDE31:
	.set L$set$62,LEFDE31-LASFDE31
	.long L$set$62
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB101-.
	.set L$set$63,LFE101-LFB101
	.quad L$set$63
	.byte	0x0
	.byte	0x4
	.set L$set$64,LCFI41-LFB101
	.long L$set$64
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$65,LCFI42-LCFI41
	.long L$set$65
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$66,LCFI44-LCFI42
	.long L$set$66
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE31:
_func1.eh:
LSFDE33:
	.set L$set$67,LEFDE33-LASFDE33
	.long L$set$67
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB90-.
	.set L$set$68,LFE90-LFB90
	.quad L$set$68
	.byte	0x0
	.byte	0x4
	.set L$set$69,LCFI45-LFB90
	.long L$set$69
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$70,LCFI46-LCFI45
	.long L$set$70
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE33:
_func2.eh:
LSFDE35:
	.set L$set$71,LEFDE35-LASFDE35
	.long L$set$71
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB91-.
	.set L$set$72,LFE91-LFB91
	.quad L$set$72
	.byte	0x0
	.byte	0x4
	.set L$set$73,LCFI47-LFB91
	.long L$set$73
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$74,LCFI48-LCFI47
	.long L$set$74
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE35:
.globl _smp_putclass.eh
_smp_putclass.eh:
LSFDE37:
	.set L$set$75,LEFDE37-LASFDE37
	.long L$set$75
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB103-.
	.set L$set$76,LFE103-LFB103
	.quad L$set$76
	.byte	0x0
	.byte	0x4
	.set L$set$77,LCFI49-LFB103
	.long L$set$77
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$78,LCFI50-LCFI49
	.long L$set$78
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE37:
.globl _smp_getclass.eh
_smp_getclass.eh:
LSFDE39:
	.set L$set$79,LEFDE39-LASFDE39
	.long L$set$79
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB104-.
	.set L$set$80,LFE104-LFB104
	.quad L$set$80
	.byte	0x0
	.byte	0x4
	.set L$set$81,LCFI52-LFB104
	.long L$set$81
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$82,LCFI53-LCFI52
	.long L$set$82
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE39:
.globl _smp_abstract_function.eh
_smp_abstract_function.eh:
LSFDE41:
	.set L$set$83,LEFDE41-LASFDE41
	.long L$set$83
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB105-.
	.set L$set$84,LFE105-LFB105
	.quad L$set$84
	.byte	0x0
	.byte	0x4
	.set L$set$85,LCFI55-LFB105
	.long L$set$85
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$86,LCFI56-LCFI55
	.long L$set$86
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$87,LCFI58-LCFI56
	.long L$set$87
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE41:
.globl _smp_unimplemented_function.eh
_smp_unimplemented_function.eh:
LSFDE43:
	.set L$set$88,LEFDE43-LASFDE43
	.long L$set$88
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB106-.
	.set L$set$89,LFE106-LFB106
	.quad L$set$89
	.byte	0x0
	.byte	0x4
	.set L$set$90,LCFI59-LFB106
	.long L$set$90
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$91,LCFI60-LCFI59
	.long L$set$91
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$92,LCFI62-LCFI60
	.long L$set$92
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE43:
.globl _minihash_init.eh
_minihash_init.eh:
LSFDE45:
	.set L$set$93,LEFDE45-LASFDE45
	.long L$set$93
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB107-.
	.set L$set$94,LFE107-LFB107
	.quad L$set$94
	.byte	0x0
	.byte	0x4
	.set L$set$95,LCFI63-LFB107
	.long L$set$95
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$96,LCFI64-LCFI63
	.long L$set$96
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$97,LCFI66-LCFI64
	.long L$set$97
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE45:
.globl _minihash_init_capacity.eh
_minihash_init_capacity.eh:
LSFDE47:
	.set L$set$98,LEFDE47-LASFDE47
	.long L$set$98
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB108-.
	.set L$set$99,LFE108-LFB108
	.quad L$set$99
	.byte	0x0
	.byte	0x4
	.set L$set$100,LCFI67-LFB108
	.long L$set$100
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$101,LCFI68-LCFI67
	.long L$set$101
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE47:
___inline_memset_chk.eh:
LSFDE49:
	.set L$set$102,LEFDE49-LASFDE49
	.long L$set$102
LASFDE49:
	.long	LASFDE49-EH_frame1
	.quad	LFB49-.
	.set L$set$103,LFE49-LFB49
	.quad L$set$103
	.byte	0x0
	.byte	0x4
	.set L$set$104,LCFI70-LFB49
	.long L$set$104
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$105,LCFI71-LCFI70
	.long L$set$105
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE49:
.globl _minihash_clear.eh
_minihash_clear.eh:
LSFDE51:
	.set L$set$106,LEFDE51-LASFDE51
	.long L$set$106
LASFDE51:
	.long	LASFDE51-EH_frame1
	.quad	LFB109-.
	.set L$set$107,LFE109-LFB109
	.quad L$set$107
	.byte	0x0
	.byte	0x4
	.set L$set$108,LCFI73-LFB109
	.long L$set$108
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$109,LCFI74-LCFI73
	.long L$set$109
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE51:
.globl _minihash_fullclear.eh
_minihash_fullclear.eh:
LSFDE53:
	.set L$set$110,LEFDE53-LASFDE53
	.long L$set$110
LASFDE53:
	.long	LASFDE53-EH_frame1
	.quad	LFB110-.
	.set L$set$111,LFE110-LFB110
	.quad L$set$111
	.byte	0x0
	.byte	0x4
	.set L$set$112,LCFI76-LFB110
	.long L$set$112
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$113,LCFI77-LCFI76
	.long L$set$113
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE53:
.globl _minihash_function.eh
_minihash_function.eh:
LSFDE55:
	.set L$set$114,LEFDE55-LASFDE55
	.long L$set$114
LASFDE55:
	.long	LASFDE55-EH_frame1
	.quad	LFB111-.
	.set L$set$115,LFE111-LFB111
	.quad L$set$115
	.byte	0x0
	.byte	0x4
	.set L$set$116,LCFI79-LFB111
	.long L$set$116
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$117,LCFI80-LCFI79
	.long L$set$117
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE55:
.globl _minihash_add.eh
_minihash_add.eh:
LSFDE57:
	.set L$set$118,LEFDE57-LASFDE57
	.long L$set$118
LASFDE57:
	.long	LASFDE57-EH_frame1
	.quad	LFB112-.
	.set L$set$119,LFE112-LFB112
	.quad L$set$119
	.byte	0x0
	.byte	0x4
	.set L$set$120,LCFI81-LFB112
	.long L$set$120
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$121,LCFI82-LCFI81
	.long L$set$121
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$122,LCFI84-LCFI82
	.long L$set$122
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE57:
___inline_strcpy_chk.eh:
LSFDE59:
	.set L$set$123,LEFDE59-LASFDE59
	.long L$set$123
LASFDE59:
	.long	LASFDE59-EH_frame1
	.quad	LFB50-.
	.set L$set$124,LFE50-LFB50
	.quad L$set$124
	.byte	0x0
	.byte	0x4
	.set L$set$125,LCFI85-LFB50
	.long L$set$125
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$126,LCFI86-LCFI85
	.long L$set$126
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE59:
.globl _miniarray_push.eh
_miniarray_push.eh:
LSFDE61:
	.set L$set$127,LEFDE61-LASFDE61
	.long L$set$127
LASFDE61:
	.long	LASFDE61-EH_frame1
	.quad	LFB113-.
	.set L$set$128,LFE113-LFB113
	.quad L$set$128
	.byte	0x0
	.byte	0x4
	.set L$set$129,LCFI88-LFB113
	.long L$set$129
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$130,LCFI89-LCFI88
	.long L$set$130
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE61:
.globl _minihash_get.eh
_minihash_get.eh:
LSFDE63:
	.set L$set$131,LEFDE63-LASFDE63
	.long L$set$131
LASFDE63:
	.long	LASFDE63-EH_frame1
	.quad	LFB114-.
	.set L$set$132,LFE114-LFB114
	.quad L$set$132
	.byte	0x0
	.byte	0x4
	.set L$set$133,LCFI91-LFB114
	.long L$set$133
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$134,LCFI92-LCFI91
	.long L$set$134
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE63:
.globl _minihash_containsp.eh
_minihash_containsp.eh:
LSFDE65:
	.set L$set$135,LEFDE65-LASFDE65
	.long L$set$135
LASFDE65:
	.long	LASFDE65-EH_frame1
	.quad	LFB115-.
	.set L$set$136,LFE115-LFB115
	.quad L$set$136
	.byte	0x0
	.byte	0x4
	.set L$set$137,LCFI94-LFB115
	.long L$set$137
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$138,LCFI95-LCFI94
	.long L$set$138
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE65:
.globl _minihash_copy.eh
_minihash_copy.eh:
LSFDE67:
	.set L$set$139,LEFDE67-LASFDE67
	.long L$set$139
LASFDE67:
	.long	LASFDE67-EH_frame1
	.quad	LFB116-.
	.set L$set$140,LFE116-LFB116
	.quad L$set$140
	.byte	0x0
	.byte	0x4
	.set L$set$141,LCFI97-LFB116
	.long L$set$141
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$142,LCFI98-LCFI97
	.long L$set$142
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE67:
.globl _minihash_each.eh
_minihash_each.eh:
LSFDE69:
	.set L$set$143,LEFDE69-LASFDE69
	.long L$set$143
LASFDE69:
	.long	LASFDE69-EH_frame1
	.quad	LFB117-.
	.set L$set$144,LFE117-LFB117
	.quad L$set$144
	.byte	0x0
	.byte	0x4
	.set L$set$145,LCFI100-LFB117
	.long L$set$145
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$146,LCFI101-LCFI100
	.long L$set$146
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE69:
.globl _minihash_print.eh
_minihash_print.eh:
LSFDE71:
	.set L$set$147,LEFDE71-LASFDE71
	.long L$set$147
LASFDE71:
	.long	LASFDE71-EH_frame1
	.quad	LFB118-.
	.set L$set$148,LFE118-LFB118
	.quad L$set$148
	.byte	0x0
	.byte	0x4
	.set L$set$149,LCFI103-LFB118
	.long L$set$149
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$150,LCFI104-LCFI103
	.long L$set$150
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE71:
.globl _obj_init.eh
_obj_init.eh:
LSFDE73:
	.set L$set$151,LEFDE73-LASFDE73
	.long L$set$151
LASFDE73:
	.long	LASFDE73-EH_frame1
	.quad	LFB119-.
	.set L$set$152,LFE119-LFB119
	.quad L$set$152
	.byte	0x0
	.byte	0x4
	.set L$set$153,LCFI106-LFB119
	.long L$set$153
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$154,LCFI107-LCFI106
	.long L$set$154
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$155,LCFI109-LCFI107
	.long L$set$155
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE73:
.globl _obj_hash.eh
_obj_hash.eh:
LSFDE75:
	.set L$set$156,LEFDE75-LASFDE75
	.long L$set$156
LASFDE75:
	.long	LASFDE75-EH_frame1
	.quad	LFB120-.
	.set L$set$157,LFE120-LFB120
	.quad L$set$157
	.byte	0x0
	.byte	0x4
	.set L$set$158,LCFI110-LFB120
	.long L$set$158
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$159,LCFI111-LCFI110
	.long L$set$159
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE75:
.globl _obj_clear.eh
_obj_clear.eh:
LSFDE77:
	.set L$set$160,LEFDE77-LASFDE77
	.long L$set$160
LASFDE77:
	.long	LASFDE77-EH_frame1
	.quad	LFB121-.
	.set L$set$161,LFE121-LFB121
	.quad L$set$161
	.byte	0x0
	.byte	0x4
	.set L$set$162,LCFI113-LFB121
	.long L$set$162
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$163,LCFI114-LCFI113
	.long L$set$163
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE77:
.globl _objid_init.eh
_objid_init.eh:
LSFDE79:
	.set L$set$164,LEFDE79-LASFDE79
	.long L$set$164
LASFDE79:
	.long	LASFDE79-EH_frame1
	.quad	LFB122-.
	.set L$set$165,LFE122-LFB122
	.quad L$set$165
	.byte	0x0
	.byte	0x4
	.set L$set$166,LCFI116-LFB122
	.long L$set$166
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$167,LCFI117-LCFI116
	.long L$set$167
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$168,LCFI119-LCFI117
	.long L$set$168
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE79:
.globl _obj_eq.eh
_obj_eq.eh:
LSFDE81:
	.set L$set$169,LEFDE81-LASFDE81
	.long L$set$169
LASFDE81:
	.long	LASFDE81-EH_frame1
	.quad	LFB123-.
	.set L$set$170,LFE123-LFB123
	.quad L$set$170
	.byte	0x0
	.byte	0x4
	.set L$set$171,LCFI120-LFB123
	.long L$set$171
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$172,LCFI121-LCFI120
	.long L$set$172
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE81:
.globl _obj_types_equalp.eh
_obj_types_equalp.eh:
LSFDE83:
	.set L$set$173,LEFDE83-LASFDE83
	.long L$set$173
LASFDE83:
	.long	LASFDE83-EH_frame1
	.quad	LFB124-.
	.set L$set$174,LFE124-LFB124
	.quad L$set$174
	.byte	0x0
	.byte	0x4
	.set L$set$175,LCFI122-LFB124
	.long L$set$175
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$176,LCFI123-LCFI122
	.long L$set$176
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE83:
.globl _smpObject_clear.eh
_smpObject_clear.eh:
LSFDE85:
	.set L$set$177,LEFDE85-LASFDE85
	.long L$set$177
LASFDE85:
	.long	LASFDE85-EH_frame1
	.quad	LFB125-.
	.set L$set$178,LFE125-LFB125
	.quad L$set$178
	.byte	0x0
	.byte	0x4
	.set L$set$179,LCFI125-LFB125
	.long L$set$179
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$180,LCFI126-LCFI125
	.long L$set$180
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE85:
.globl _smpObject_cmp_fast.eh
_smpObject_cmp_fast.eh:
LSFDE87:
	.set L$set$181,LEFDE87-LASFDE87
	.long L$set$181
LASFDE87:
	.long	LASFDE87-EH_frame1
	.quad	LFB126-.
	.set L$set$182,LFE126-LFB126
	.quad L$set$182
	.byte	0x0
	.byte	0x4
	.set L$set$183,LCFI127-LFB126
	.long L$set$183
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$184,LCFI128-LCFI127
	.long L$set$184
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE87:
.globl _smpObject_cons.eh
_smpObject_cons.eh:
LSFDE89:
	.set L$set$185,LEFDE89-LASFDE89
	.long L$set$185
LASFDE89:
	.long	LASFDE89-EH_frame1
	.quad	LFB127-.
	.set L$set$186,LFE127-LFB127
	.quad L$set$186
	.byte	0x0
	.byte	0x4
	.set L$set$187,LCFI130-LFB127
	.long L$set$187
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$188,LCFI131-LCFI130
	.long L$set$188
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE89:
.globl _smpObject_cons_c.eh
_smpObject_cons_c.eh:
LSFDE91:
	.set L$set$189,LEFDE91-LASFDE91
	.long L$set$189
LASFDE91:
	.long	LASFDE91-EH_frame1
	.quad	LFB128-.
	.set L$set$190,LFE128-LFB128
	.quad L$set$190
	.byte	0x0
	.byte	0x4
	.set L$set$191,LCFI133-LFB128
	.long L$set$191
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$192,LCFI134-LCFI133
	.long L$set$192
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$193,LCFI136-LCFI134
	.long L$set$193
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE91:
.globl _smpObject_eq.eh
_smpObject_eq.eh:
LSFDE93:
	.set L$set$194,LEFDE93-LASFDE93
	.long L$set$194
LASFDE93:
	.long	LASFDE93-EH_frame1
	.quad	LFB129-.
	.set L$set$195,LFE129-LFB129
	.quad L$set$195
	.byte	0x0
	.byte	0x4
	.set L$set$196,LCFI137-LFB129
	.long L$set$196
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$197,LCFI138-LCFI137
	.long L$set$197
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE93:
.globl _smpObject_eql.eh
_smpObject_eql.eh:
LSFDE95:
	.set L$set$198,LEFDE95-LASFDE95
	.long L$set$198
LASFDE95:
	.long	LASFDE95-EH_frame1
	.quad	LFB130-.
	.set L$set$199,LFE130-LFB130
	.quad L$set$199
	.byte	0x0
	.byte	0x4
	.set L$set$200,LCFI140-LFB130
	.long L$set$200
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$201,LCFI141-LCFI140
	.long L$set$201
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$202,LCFI143-LCFI141
	.long L$set$202
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE95:
.globl _smpObject_equalp.eh
_smpObject_equalp.eh:
LSFDE97:
	.set L$set$203,LEFDE97-LASFDE97
	.long L$set$203
LASFDE97:
	.long	LASFDE97-EH_frame1
	.quad	LFB131-.
	.set L$set$204,LFE131-LFB131
	.quad L$set$204
	.byte	0x0
	.byte	0x4
	.set L$set$205,LCFI144-LFB131
	.long L$set$205
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$206,LCFI145-LCFI144
	.long L$set$206
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$207,LCFI147-LCFI145
	.long L$set$207
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE97:
.globl _smpObject_funcall.eh
_smpObject_funcall.eh:
LSFDE99:
	.set L$set$208,LEFDE99-LASFDE99
	.long L$set$208
LASFDE99:
	.long	LASFDE99-EH_frame1
	.quad	LFB132-.
	.set L$set$209,LFE132-LFB132
	.quad L$set$209
	.byte	0x0
	.byte	0x4
	.set L$set$210,LCFI148-LFB132
	.long L$set$210
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$211,LCFI149-LCFI148
	.long L$set$211
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE99:
.globl _smpObject_funcall_arg.eh
_smpObject_funcall_arg.eh:
LSFDE101:
	.set L$set$212,LEFDE101-LASFDE101
	.long L$set$212
LASFDE101:
	.long	LASFDE101-EH_frame1
	.quad	LFB133-.
	.set L$set$213,LFE133-LFB133
	.quad L$set$213
	.byte	0x0
	.byte	0x4
	.set L$set$214,LCFI151-LFB133
	.long L$set$214
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$215,LCFI152-LCFI151
	.long L$set$215
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$216,LCFI154-LCFI152
	.long L$set$216
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE101:
.globl _smpObject_getclass.eh
_smpObject_getclass.eh:
LSFDE103:
	.set L$set$217,LEFDE103-LASFDE103
	.long L$set$217
LASFDE103:
	.long	LASFDE103-EH_frame1
	.quad	LFB134-.
	.set L$set$218,LFE134-LFB134
	.quad L$set$218
	.byte	0x0
	.byte	0x4
	.set L$set$219,LCFI155-LFB134
	.long L$set$219
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$220,LCFI156-LCFI155
	.long L$set$220
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$221,LCFI158-LCFI156
	.long L$set$221
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE103:
.globl _smpObject_gc_mark.eh
_smpObject_gc_mark.eh:
LSFDE105:
	.set L$set$222,LEFDE105-LASFDE105
	.long L$set$222
LASFDE105:
	.long	LASFDE105-EH_frame1
	.quad	LFB135-.
	.set L$set$223,LFE135-LFB135
	.quad L$set$223
	.byte	0x0
	.byte	0x4
	.set L$set$224,LCFI159-LFB135
	.long L$set$224
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$225,LCFI160-LCFI159
	.long L$set$225
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE105:
.globl _smpObject_get_fun.eh
_smpObject_get_fun.eh:
LSFDE107:
	.set L$set$226,LEFDE107-LASFDE107
	.long L$set$226
LASFDE107:
	.long	LASFDE107-EH_frame1
	.quad	LFB136-.
	.set L$set$227,LFE136-LFB136
	.quad L$set$227
	.byte	0x0
	.byte	0x4
	.set L$set$228,LCFI161-LFB136
	.long L$set$228
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$229,LCFI162-LCFI161
	.long L$set$229
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$230,LCFI164-LCFI162
	.long L$set$230
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE107:
.globl _smpObject_get_fun_rec.eh
_smpObject_get_fun_rec.eh:
LSFDE109:
	.set L$set$231,LEFDE109-LASFDE109
	.long L$set$231
LASFDE109:
	.long	LASFDE109-EH_frame1
	.quad	LFB137-.
	.set L$set$232,LFE137-LFB137
	.quad L$set$232
	.byte	0x0
	.byte	0x4
	.set L$set$233,LCFI165-LFB137
	.long L$set$233
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$234,LCFI166-LCFI165
	.long L$set$234
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE109:
.globl _smpObject_hash.eh
_smpObject_hash.eh:
LSFDE111:
	.set L$set$235,LEFDE111-LASFDE111
	.long L$set$235
LASFDE111:
	.long	LASFDE111-EH_frame1
	.quad	LFB138-.
	.set L$set$236,LFE138-LFB138
	.quad L$set$236
	.byte	0x0
	.byte	0x4
	.set L$set$237,LCFI168-LFB138
	.long L$set$237
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$238,LCFI169-LCFI168
	.long L$set$238
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE111:
.globl _smpObject_instancep.eh
_smpObject_instancep.eh:
LSFDE113:
	.set L$set$239,LEFDE113-LASFDE113
	.long L$set$239
LASFDE113:
	.long	LASFDE113-EH_frame1
	.quad	LFB139-.
	.set L$set$240,LFE139-LFB139
	.quad L$set$240
	.byte	0x0
	.byte	0x4
	.set L$set$241,LCFI171-LFB139
	.long L$set$241
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$242,LCFI172-LCFI171
	.long L$set$242
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE113:
.globl _smpObject_instancep_cint.eh
_smpObject_instancep_cint.eh:
LSFDE115:
	.set L$set$243,LEFDE115-LASFDE115
	.long L$set$243
LASFDE115:
	.long	LASFDE115-EH_frame1
	.quad	LFB140-.
	.set L$set$244,LFE140-LFB140
	.quad L$set$244
	.byte	0x0
	.byte	0x4
	.set L$set$245,LCFI174-LFB140
	.long L$set$245
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$246,LCFI175-LCFI174
	.long L$set$246
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE115:
.globl _smpObject_instancep_c.eh
_smpObject_instancep_c.eh:
LSFDE117:
	.set L$set$247,LEFDE117-LASFDE117
	.long L$set$247
LASFDE117:
	.long	LASFDE117-EH_frame1
	.quad	LFB141-.
	.set L$set$248,LFE141-LFB141
	.quad L$set$248
	.byte	0x0
	.byte	0x4
	.set L$set$249,LCFI177-LFB141
	.long L$set$249
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$250,LCFI178-LCFI177
	.long L$set$250
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE117:
.globl _smpObject_instancep_cstr.eh
_smpObject_instancep_cstr.eh:
LSFDE119:
	.set L$set$251,LEFDE119-LASFDE119
	.long L$set$251
LASFDE119:
	.long	LASFDE119-EH_frame1
	.quad	LFB142-.
	.set L$set$252,LFE142-LFB142
	.quad L$set$252
	.byte	0x0
	.byte	0x4
	.set L$set$253,LCFI180-LFB142
	.long L$set$253
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$254,LCFI181-LCFI180
	.long L$set$254
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE119:
.globl _smpObject_to_s.eh
_smpObject_to_s.eh:
LSFDE121:
	.set L$set$255,LEFDE121-LASFDE121
	.long L$set$255
LASFDE121:
	.long	LASFDE121-EH_frame1
	.quad	LFB143-.
	.set L$set$256,LFE143-LFB143
	.quad L$set$256
	.byte	0x0
	.byte	0x4
	.set L$set$257,LCFI183-LFB143
	.long L$set$257
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$258,LCFI184-LCFI183
	.long L$set$258
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$259,LCFI186-LCFI184
	.long L$set$259
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE121:
.globl _smpObject_to_s_class.eh
_smpObject_to_s_class.eh:
LSFDE123:
	.set L$set$260,LEFDE123-LASFDE123
	.long L$set$260
LASFDE123:
	.long	LASFDE123-EH_frame1
	.quad	LFB144-.
	.set L$set$261,LFE144-LFB144
	.quad L$set$261
	.byte	0x0
	.byte	0x4
	.set L$set$262,LCFI187-LFB144
	.long L$set$262
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$263,LCFI188-LCFI187
	.long L$set$263
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$264,LCFI190-LCFI188
	.long L$set$264
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE123:
.globl _smpObject_type.eh
_smpObject_type.eh:
LSFDE125:
	.set L$set$265,LEFDE125-LASFDE125
	.long L$set$265
LASFDE125:
	.long	LASFDE125-EH_frame1
	.quad	LFB145-.
	.set L$set$266,LFE145-LFB145
	.quad L$set$266
	.byte	0x0
	.byte	0x4
	.set L$set$267,LCFI191-LFB145
	.long L$set$267
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$268,LCFI192-LCFI191
	.long L$set$268
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$269,LCFI194-LCFI192
	.long L$set$269
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE125:
.globl _smpObject_types_equalp.eh
_smpObject_types_equalp.eh:
LSFDE127:
	.set L$set$270,LEFDE127-LASFDE127
	.long L$set$270
LASFDE127:
	.long	LASFDE127-EH_frame1
	.quad	LFB146-.
	.set L$set$271,LFE146-LFB146
	.quad L$set$271
	.byte	0x0
	.byte	0x4
	.set L$set$272,LCFI195-LFB146
	.long L$set$272
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$273,LCFI196-LCFI195
	.long L$set$273
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$274,LCFI198-LCFI196
	.long L$set$274
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE127:
.globl _smpObject_varcall.eh
_smpObject_varcall.eh:
LSFDE129:
	.set L$set$275,LEFDE129-LASFDE129
	.long L$set$275
LASFDE129:
	.long	LASFDE129-EH_frame1
	.quad	LFB147-.
	.set L$set$276,LFE147-LFB147
	.quad L$set$276
	.byte	0x0
	.byte	0x4
	.set L$set$277,LCFI199-LFB147
	.long L$set$277
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$278,LCFI200-LCFI199
	.long L$set$278
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE129:
.globl _smpObject_write.eh
_smpObject_write.eh:
LSFDE131:
	.set L$set$279,LEFDE131-LASFDE131
	.long L$set$279
LASFDE131:
	.long	LASFDE131-EH_frame1
	.quad	LFB148-.
	.set L$set$280,LFE148-LFB148
	.quad L$set$280
	.byte	0x0
	.byte	0x4
	.set L$set$281,LCFI202-LFB148
	.long L$set$281
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$282,LCFI203-LCFI202
	.long L$set$282
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$283,LCFI205-LCFI203
	.long L$set$283
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE131:
.globl _smpObject_write_class.eh
_smpObject_write_class.eh:
LSFDE133:
	.set L$set$284,LEFDE133-LASFDE133
	.long L$set$284
LASFDE133:
	.long	LASFDE133-EH_frame1
	.quad	LFB149-.
	.set L$set$285,LFE149-LFB149
	.quad L$set$285
	.byte	0x0
	.byte	0x4
	.set L$set$286,LCFI206-LFB149
	.long L$set$286
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$287,LCFI207-LCFI206
	.long L$set$287
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$288,LCFI209-LCFI207
	.long L$set$288
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE133:
.globl _scope_init.eh
_scope_init.eh:
LSFDE135:
	.set L$set$289,LEFDE135-LASFDE135
	.long L$set$289
LASFDE135:
	.long	LASFDE135-EH_frame1
	.quad	LFB150-.
	.set L$set$290,LFE150-LFB150
	.quad L$set$290
	.byte	0x0
	.byte	0x4
	.set L$set$291,LCFI210-LFB150
	.long L$set$291
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$292,LCFI211-LCFI210
	.long L$set$292
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$293,LCFI213-LCFI211
	.long L$set$293
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE135:
.globl _scope_push.eh
_scope_push.eh:
LSFDE137:
	.set L$set$294,LEFDE137-LASFDE137
	.long L$set$294
LASFDE137:
	.long	LASFDE137-EH_frame1
	.quad	LFB151-.
	.set L$set$295,LFE151-LFB151
	.quad L$set$295
	.byte	0x0
	.byte	0x4
	.set L$set$296,LCFI214-LFB151
	.long L$set$296
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$297,LCFI215-LCFI214
	.long L$set$297
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$298,LCFI218-LCFI215
	.long L$set$298
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE137:
.globl _scope_pop.eh
_scope_pop.eh:
LSFDE139:
	.set L$set$299,LEFDE139-LASFDE139
	.long L$set$299
LASFDE139:
	.long	LASFDE139-EH_frame1
	.quad	LFB152-.
	.set L$set$300,LFE152-LFB152
	.quad L$set$300
	.byte	0x0
	.byte	0x4
	.set L$set$301,LCFI219-LFB152
	.long L$set$301
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$302,LCFI220-LCFI219
	.long L$set$302
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE139:
.globl _scope_add.eh
_scope_add.eh:
LSFDE141:
	.set L$set$303,LEFDE141-LASFDE141
	.long L$set$303
LASFDE141:
	.long	LASFDE141-EH_frame1
	.quad	LFB153-.
	.set L$set$304,LFE153-LFB153
	.quad L$set$304
	.byte	0x0
	.byte	0x4
	.set L$set$305,LCFI221-LFB153
	.long L$set$305
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$306,LCFI222-LCFI221
	.long L$set$306
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE141:
.globl _scope_get.eh
_scope_get.eh:
LSFDE143:
	.set L$set$307,LEFDE143-LASFDE143
	.long L$set$307
LASFDE143:
	.long	LASFDE143-EH_frame1
	.quad	LFB154-.
	.set L$set$308,LFE154-LFB154
	.quad L$set$308
	.byte	0x0
	.byte	0x4
	.set L$set$309,LCFI224-LFB154
	.long L$set$309
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$310,LCFI225-LCFI224
	.long L$set$310
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE143:
.globl _scope_self.eh
_scope_self.eh:
LSFDE145:
	.set L$set$311,LEFDE145-LASFDE145
	.long L$set$311
LASFDE145:
	.long	LASFDE145-EH_frame1
	.quad	LFB155-.
	.set L$set$312,LFE155-LFB155
	.quad L$set$312
	.byte	0x0
	.byte	0x4
	.set L$set$313,LCFI227-LFB155
	.long L$set$313
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$314,LCFI228-LCFI227
	.long L$set$314
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE145:
.globl _scope_clear.eh
_scope_clear.eh:
LSFDE147:
	.set L$set$315,LEFDE147-LASFDE147
	.long L$set$315
LASFDE147:
	.long	LASFDE147-EH_frame1
	.quad	LFB156-.
	.set L$set$316,LFE156-LFB156
	.quad L$set$316
	.byte	0x0
	.byte	0x4
	.set L$set$317,LCFI230-LFB156
	.long L$set$317
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$318,LCFI231-LCFI230
	.long L$set$318
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE147:
.globl _init_smp_classes.eh
_init_smp_classes.eh:
LSFDE149:
	.set L$set$319,LEFDE149-LASFDE149
	.long L$set$319
LASFDE149:
	.long	LASFDE149-EH_frame1
	.quad	LFB157-.
	.set L$set$320,LFE157-LFB157
	.quad L$set$320
	.byte	0x0
	.byte	0x4
	.set L$set$321,LCFI232-LFB157
	.long L$set$321
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$322,LCFI233-LCFI232
	.long L$set$322
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE149:
.globl _init_required_classes.eh
_init_required_classes.eh:
LSFDE151:
	.set L$set$323,LEFDE151-LASFDE151
	.long L$set$323
LASFDE151:
	.long	LASFDE151-EH_frame1
	.quad	LFB158-.
	.set L$set$324,LFE158-LFB158
	.quad L$set$324
	.byte	0x0
	.byte	0x4
	.set L$set$325,LCFI234-LFB158
	.long L$set$325
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$326,LCFI235-LCFI234
	.long L$set$326
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE151:
.globl _init_fundamental_classes.eh
_init_fundamental_classes.eh:
LSFDE153:
	.set L$set$327,LEFDE153-LASFDE153
	.long L$set$327
LASFDE153:
	.long	LASFDE153-EH_frame1
	.quad	LFB159-.
	.set L$set$328,LFE159-LFB159
	.quad L$set$328
	.byte	0x0
	.byte	0x4
	.set L$set$329,LCFI236-LFB159
	.long L$set$329
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$330,LCFI237-LCFI236
	.long L$set$330
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$331,LCFI239-LCFI237
	.long L$set$331
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE153:
.globl _test_init.eh
_test_init.eh:
LSFDE155:
	.set L$set$332,LEFDE155-LASFDE155
	.long L$set$332
LASFDE155:
	.long	LASFDE155-EH_frame1
	.quad	LFB160-.
	.set L$set$333,LFE160-LFB160
	.quad L$set$333
	.byte	0x0
	.byte	0x4
	.set L$set$334,LCFI240-LFB160
	.long L$set$334
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$335,LCFI241-LCFI240
	.long L$set$335
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE155:
.globl _smp_assert_eq.eh
_smp_assert_eq.eh:
LSFDE157:
	.set L$set$336,LEFDE157-LASFDE157
	.long L$set$336
LASFDE157:
	.long	LASFDE157-EH_frame1
	.quad	LFB161-.
	.set L$set$337,LFE161-LFB161
	.quad L$set$337
	.byte	0x0
	.byte	0x4
	.set L$set$338,LCFI242-LFB161
	.long L$set$338
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$339,LCFI243-LCFI242
	.long L$set$339
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE157:
.globl _test_nums.eh
_test_nums.eh:
LSFDE159:
	.set L$set$340,LEFDE159-LASFDE159
	.long L$set$340
LASFDE159:
	.long	LASFDE159-EH_frame1
	.quad	LFB162-.
	.set L$set$341,LFE162-LFB162
	.quad L$set$341
	.byte	0x0
	.byte	0x4
	.set L$set$342,LCFI245-LFB162
	.long L$set$342
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$343,LCFI246-LCFI245
	.long L$set$343
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE159:
.globl _test_gc.eh
_test_gc.eh:
LSFDE161:
	.set L$set$344,LEFDE161-LASFDE161
	.long L$set$344
LASFDE161:
	.long	LASFDE161-EH_frame1
	.quad	LFB163-.
	.set L$set$345,LFE163-LFB163
	.quad L$set$345
	.byte	0x0
	.byte	0x4
	.set L$set$346,LCFI248-LFB163
	.long L$set$346
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$347,LCFI249-LCFI248
	.long L$set$347
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE161:
.globl _test_strings.eh
_test_strings.eh:
LSFDE163:
	.set L$set$348,LEFDE163-LASFDE163
	.long L$set$348
LASFDE163:
	.long	LASFDE163-EH_frame1
	.quad	LFB164-.
	.set L$set$349,LFE164-LFB164
	.quad L$set$349
	.byte	0x0
	.byte	0x4
	.set L$set$350,LCFI251-LFB164
	.long L$set$350
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$351,LCFI252-LCFI251
	.long L$set$351
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE163:
.globl _test_printf.eh
_test_printf.eh:
LSFDE165:
	.set L$set$352,LEFDE165-LASFDE165
	.long L$set$352
LASFDE165:
	.long	LASFDE165-EH_frame1
	.quad	LFB165-.
	.set L$set$353,LFE165-LFB165
	.quad L$set$353
	.byte	0x0
	.byte	0x4
	.set L$set$354,LCFI254-LFB165
	.long L$set$354
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$355,LCFI255-LCFI254
	.long L$set$355
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE165:
.globl _test_lists.eh
_test_lists.eh:
LSFDE167:
	.set L$set$356,LEFDE167-LASFDE167
	.long L$set$356
LASFDE167:
	.long	LASFDE167-EH_frame1
	.quad	LFB166-.
	.set L$set$357,LFE166-LFB166
	.quad L$set$357
	.byte	0x0
	.byte	0x4
	.set L$set$358,LCFI257-LFB166
	.long L$set$358
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$359,LCFI258-LCFI257
	.long L$set$359
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE167:
.globl _make_list.eh
_make_list.eh:
LSFDE169:
	.set L$set$360,LEFDE169-LASFDE169
	.long L$set$360
LASFDE169:
	.long	LASFDE169-EH_frame1
	.quad	LFB167-.
	.set L$set$361,LFE167-LFB167
	.quad L$set$361
	.byte	0x0
	.byte	0x4
	.set L$set$362,LCFI260-LFB167
	.long L$set$362
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$363,LCFI261-LCFI260
	.long L$set$363
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE169:
.globl _test_listbuf.eh
_test_listbuf.eh:
LSFDE171:
	.set L$set$364,LEFDE171-LASFDE171
	.long L$set$364
LASFDE171:
	.long	LASFDE171-EH_frame1
	.quad	LFB168-.
	.set L$set$365,LFE168-LFB168
	.quad L$set$365
	.byte	0x0
	.byte	0x4
	.set L$set$366,LCFI263-LFB168
	.long L$set$366
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$367,LCFI264-LCFI263
	.long L$set$367
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE171:
.globl _test_bool.eh
_test_bool.eh:
LSFDE173:
	.set L$set$368,LEFDE173-LASFDE173
	.long L$set$368
LASFDE173:
	.long	LASFDE173-EH_frame1
	.quad	LFB169-.
	.set L$set$369,LFE169-LFB169
	.quad L$set$369
	.byte	0x0
	.byte	0x4
	.set L$set$370,LCFI266-LFB169
	.long L$set$370
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$371,LCFI267-LCFI266
	.long L$set$371
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE173:
.globl _test_regex.eh
_test_regex.eh:
LSFDE175:
	.set L$set$372,LEFDE175-LASFDE175
	.long L$set$372
LASFDE175:
	.long	LASFDE175-EH_frame1
	.quad	LFB170-.
	.set L$set$373,LFE170-LFB170
	.quad L$set$373
	.byte	0x0
	.byte	0x4
	.set L$set$374,LCFI269-LFB170
	.long L$set$374
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$375,LCFI270-LCFI269
	.long L$set$375
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE175:
.globl _test_arrays.eh
_test_arrays.eh:
LSFDE177:
	.set L$set$376,LEFDE177-LASFDE177
	.long L$set$376
LASFDE177:
	.long	LASFDE177-EH_frame1
	.quad	LFB171-.
	.set L$set$377,LFE171-LFB171
	.quad L$set$377
	.byte	0x0
	.byte	0x4
	.set L$set$378,LCFI272-LFB171
	.long L$set$378
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$379,LCFI273-LCFI272
	.long L$set$379
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE177:
.globl _test_array_sort.eh
_test_array_sort.eh:
LSFDE179:
	.set L$set$380,LEFDE179-LASFDE179
	.long L$set$380
LASFDE179:
	.long	LASFDE179-EH_frame1
	.quad	LFB172-.
	.set L$set$381,LFE172-LFB172
	.quad L$set$381
	.byte	0x0
	.byte	0x4
	.set L$set$382,LCFI275-LFB172
	.long L$set$382
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$383,LCFI276-LCFI275
	.long L$set$383
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE179:
_genrand_real2.eh:
LSFDE181:
	.set L$set$384,LEFDE181-LASFDE181
	.long L$set$384
LASFDE181:
	.long	LASFDE181-EH_frame1
	.quad	LFB77-.
	.set L$set$385,LFE77-LFB77
	.quad L$set$385
	.byte	0x0
	.byte	0x4
	.set L$set$386,LCFI278-LFB77
	.long L$set$386
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$387,LCFI279-LCFI278
	.long L$set$387
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE181:
_to_real2.eh:
LSFDE183:
	.set L$set$388,LEFDE183-LASFDE183
	.long L$set$388
LASFDE183:
	.long	LASFDE183-EH_frame1
	.quad	LFB76-.
	.set L$set$389,LFE76-LFB76
	.quad L$set$389
	.byte	0x0
	.byte	0x4
	.set L$set$390,LCFI281-LFB76
	.long L$set$390
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$391,LCFI282-LCFI281
	.long L$set$391
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE183:
.globl _list_clear_all.eh
_list_clear_all.eh:
LSFDE185:
	.set L$set$392,LEFDE185-LASFDE185
	.long L$set$392
LASFDE185:
	.long	LASFDE185-EH_frame1
	.quad	LFB173-.
	.set L$set$393,LFE173-LFB173
	.quad L$set$393
	.byte	0x0
	.byte	0x4
	.set L$set$394,LCFI283-LFB173
	.long L$set$394
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$395,LCFI284-LCFI283
	.long L$set$395
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE185:
.globl _test_list_sort.eh
_test_list_sort.eh:
LSFDE187:
	.set L$set$396,LEFDE187-LASFDE187
	.long L$set$396
LASFDE187:
	.long	LASFDE187-EH_frame1
	.quad	LFB174-.
	.set L$set$397,LFE174-LFB174
	.quad L$set$397
	.byte	0x0
	.byte	0x4
	.set L$set$398,LCFI286-LFB174
	.long L$set$398
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$399,LCFI287-LCFI286
	.long L$set$399
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE187:
.globl _test_hash.eh
_test_hash.eh:
LSFDE189:
	.set L$set$400,LEFDE189-LASFDE189
	.long L$set$400
LASFDE189:
	.long	LASFDE189-EH_frame1
	.quad	LFB175-.
	.set L$set$401,LFE175-LFB175
	.quad L$set$401
	.byte	0x0
	.byte	0x4
	.set L$set$402,LCFI289-LFB175
	.long L$set$402
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$403,LCFI290-LCFI289
	.long L$set$403
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE189:
.globl _test_external_classes.eh
_test_external_classes.eh:
LSFDE191:
	.set L$set$404,LEFDE191-LASFDE191
	.long L$set$404
LASFDE191:
	.long	LASFDE191-EH_frame1
	.quad	LFB176-.
	.set L$set$405,LFE176-LFB176
	.quad L$set$405
	.byte	0x0
	.byte	0x4
	.set L$set$406,LCFI292-LFB176
	.long L$set$406
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$407,LCFI293-LCFI292
	.long L$set$407
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE191:
.globl _test_object_speed.eh
_test_object_speed.eh:
LSFDE193:
	.set L$set$408,LEFDE193-LASFDE193
	.long L$set$408
LASFDE193:
	.long	LASFDE193-EH_frame1
	.quad	LFB177-.
	.set L$set$409,LFE177-LFB177
	.quad L$set$409
	.byte	0x0
	.byte	0x4
	.set L$set$410,LCFI294-LFB177
	.long L$set$410
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$411,LCFI295-LCFI294
	.long L$set$411
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE193:
.globl _speedtest_fun.eh
_speedtest_fun.eh:
LSFDE195:
	.set L$set$412,LEFDE195-LASFDE195
	.long L$set$412
LASFDE195:
	.long	LASFDE195-EH_frame1
	.quad	LFB178-.
	.set L$set$413,LFE178-LFB178
	.quad L$set$413
	.byte	0x0
	.byte	0x4
	.set L$set$414,LCFI297-LFB178
	.long L$set$414
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$415,LCFI298-LCFI297
	.long L$set$415
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE195:
.globl _run_tests.eh
_run_tests.eh:
LSFDE197:
	.set L$set$416,LEFDE197-LASFDE197
	.long L$set$416
LASFDE197:
	.long	LASFDE197-EH_frame1
	.quad	LFB179-.
	.set L$set$417,LFE179-LFB179
	.quad L$set$417
	.byte	0x0
	.byte	0x4
	.set L$set$418,LCFI300-LFB179
	.long L$set$418
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$419,LCFI301-LCFI300
	.long L$set$419
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE197:
.globl _gc_mark_recursive.eh
_gc_mark_recursive.eh:
LSFDE199:
	.set L$set$420,LEFDE199-LASFDE199
	.long L$set$420
LASFDE199:
	.long	LASFDE199-EH_frame1
	.quad	LFB180-.
	.set L$set$421,LFE180-LFB180
	.quad L$set$421
	.byte	0x0
	.byte	0x4
	.set L$set$422,LCFI303-LFB180
	.long L$set$422
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$423,LCFI304-LCFI303
	.long L$set$423
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE199:
.globl _smp_malloc_fun.eh
_smp_malloc_fun.eh:
LSFDE201:
	.set L$set$424,LEFDE201-LASFDE201
	.long L$set$424
LASFDE201:
	.long	LASFDE201-EH_frame1
	.quad	LFB181-.
	.set L$set$425,LFE181-LFB181
	.quad L$set$425
	.byte	0x0
	.byte	0x4
	.set L$set$426,LCFI305-LFB181
	.long L$set$426
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$427,LCFI306-LCFI305
	.long L$set$427
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE201:
.globl _smp_realloc_size.eh
_smp_realloc_size.eh:
LSFDE203:
	.set L$set$428,LEFDE203-LASFDE203
	.long L$set$428
LASFDE203:
	.long	LASFDE203-EH_frame1
	.quad	LFB182-.
	.set L$set$429,LFE182-LFB182
	.quad L$set$429
	.byte	0x0
	.byte	0x4
	.set L$set$430,LCFI308-LFB182
	.long L$set$430
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$431,LCFI309-LCFI308
	.long L$set$431
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE203:
.globl _smp_free_size.eh
_smp_free_size.eh:
LSFDE205:
	.set L$set$432,LEFDE205-LASFDE205
	.long L$set$432
LASFDE205:
	.long	LASFDE205-EH_frame1
	.quad	LFB183-.
	.set L$set$433,LFE183-LFB183
	.quad L$set$433
	.byte	0x0
	.byte	0x4
	.set L$set$434,LCFI311-LFB183
	.long L$set$434
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$435,LCFI312-LCFI311
	.long L$set$435
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE205:
.globl _internal_error.eh
_internal_error.eh:
LSFDE207:
	.set L$set$436,LEFDE207-LASFDE207
	.long L$set$436
LASFDE207:
	.long	LASFDE207-EH_frame1
	.quad	LFB184-.
	.set L$set$437,LFE184-LFB184
	.quad L$set$437
	.byte	0x0
	.byte	0x4
	.set L$set$438,LCFI314-LFB184
	.long L$set$438
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$439,LCFI315-LCFI314
	.long L$set$439
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE207:
.globl _fatal_error.eh
_fatal_error.eh:
LSFDE209:
	.set L$set$440,LEFDE209-LASFDE209
	.long L$set$440
LASFDE209:
	.long	LASFDE209-EH_frame1
	.quad	LFB185-.
	.set L$set$441,LFE185-LFB185
	.quad L$set$441
	.byte	0x0
	.byte	0x4
	.set L$set$442,LCFI317-LFB185
	.long L$set$442
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$443,LCFI318-LCFI317
	.long L$set$443
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE209:
.globl _is_power_of_2.eh
_is_power_of_2.eh:
LSFDE211:
	.set L$set$444,LEFDE211-LASFDE211
	.long L$set$444
LASFDE211:
	.long	LASFDE211-EH_frame1
	.quad	LFB186-.
	.set L$set$445,LFE186-LFB186
	.quad L$set$445
	.byte	0x0
	.byte	0x4
	.set L$set$446,LCFI320-LFB186
	.long L$set$446
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$447,LCFI321-LCFI320
	.long L$set$447
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE211:
.globl _next_power_of_2.eh
_next_power_of_2.eh:
LSFDE213:
	.set L$set$448,LEFDE213-LASFDE213
	.long L$set$448
LASFDE213:
	.long	LASFDE213-EH_frame1
	.quad	LFB187-.
	.set L$set$449,LFE187-LFB187
	.quad L$set$449
	.byte	0x0
	.byte	0x4
	.set L$set$450,LCFI322-LFB187
	.long L$set$450
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$451,LCFI323-LCFI322
	.long L$set$451
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE213:
.globl _smpArray_create_class.eh
_smpArray_create_class.eh:
LSFDE215:
	.set L$set$452,LEFDE215-LASFDE215
	.long L$set$452
LASFDE215:
	.long	LASFDE215-EH_frame1
	.quad	LFB188-.
	.set L$set$453,LFE188-LFB188
	.quad L$set$453
	.byte	0x0
	.byte	0x4
	.set L$set$454,LCFI324-LFB188
	.long L$set$454
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$455,LCFI325-LCFI324
	.long L$set$455
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE215:
.globl _smpArray_add_now.eh
_smpArray_add_now.eh:
LSFDE217:
	.set L$set$456,LEFDE217-LASFDE217
	.long L$set$456
LASFDE217:
	.long	LASFDE217-EH_frame1
	.quad	LFB189-.
	.set L$set$457,LFE189-LFB189
	.quad L$set$457
	.byte	0x0
	.byte	0x4
	.set L$set$458,LCFI327-LFB189
	.long L$set$458
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$459,LCFI328-LCFI327
	.long L$set$459
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$460,LCFI330-LCFI328
	.long L$set$460
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE217:
.globl _smpArray_at.eh
_smpArray_at.eh:
LSFDE219:
	.set L$set$461,LEFDE219-LASFDE219
	.long L$set$461
LASFDE219:
	.long	LASFDE219-EH_frame1
	.quad	LFB190-.
	.set L$set$462,LFE190-LFB190
	.quad L$set$462
	.byte	0x0
	.byte	0x4
	.set L$set$463,LCFI331-LFB190
	.long L$set$463
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$464,LCFI332-LCFI331
	.long L$set$464
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE219:
.globl _smpArray_at_c.eh
_smpArray_at_c.eh:
LSFDE221:
	.set L$set$465,LEFDE221-LASFDE221
	.long L$set$465
LASFDE221:
	.long	LASFDE221-EH_frame1
	.quad	LFB191-.
	.set L$set$466,LFE191-LFB191
	.quad L$set$466
	.byte	0x0
	.byte	0x4
	.set L$set$467,LCFI334-LFB191
	.long L$set$467
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$468,LCFI335-LCFI334
	.long L$set$468
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE221:
.globl _smpArray_at_assign.eh
_smpArray_at_assign.eh:
LSFDE223:
	.set L$set$469,LEFDE223-LASFDE223
	.long L$set$469
LASFDE223:
	.long	LASFDE223-EH_frame1
	.quad	LFB192-.
	.set L$set$470,LFE192-LFB192
	.quad L$set$470
	.byte	0x0
	.byte	0x4
	.set L$set$471,LCFI337-LFB192
	.long L$set$471
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$472,LCFI338-LCFI337
	.long L$set$472
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE223:
.globl _smpArray_at_assign_c.eh
_smpArray_at_assign_c.eh:
LSFDE225:
	.set L$set$473,LEFDE225-LASFDE225
	.long L$set$473
LASFDE225:
	.long	LASFDE225-EH_frame1
	.quad	LFB193-.
	.set L$set$474,LFE193-LFB193
	.quad L$set$474
	.byte	0x0
	.byte	0x4
	.set L$set$475,LCFI340-LFB193
	.long L$set$475
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$476,LCFI341-LCFI340
	.long L$set$476
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE225:
.globl _smpArray_clear.eh
_smpArray_clear.eh:
LSFDE227:
	.set L$set$477,LEFDE227-LASFDE227
	.long L$set$477
LASFDE227:
	.long	LASFDE227-EH_frame1
	.quad	LFB194-.
	.set L$set$478,LFE194-LFB194
	.quad L$set$478
	.byte	0x0
	.byte	0x4
	.set L$set$479,LCFI343-LFB194
	.long L$set$479
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$480,LCFI344-LCFI343
	.long L$set$480
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$481,LCFI346-LCFI344
	.long L$set$481
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE227:
.globl _smpArray_copy.eh
_smpArray_copy.eh:
LSFDE229:
	.set L$set$482,LEFDE229-LASFDE229
	.long L$set$482
LASFDE229:
	.long	LASFDE229-EH_frame1
	.quad	LFB195-.
	.set L$set$483,LFE195-LFB195
	.quad L$set$483
	.byte	0x0
	.byte	0x4
	.set L$set$484,LCFI347-LFB195
	.long L$set$484
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$485,LCFI348-LCFI347
	.long L$set$485
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE229:
___inline_memcpy_chk.eh:
LSFDE231:
	.set L$set$486,LEFDE231-LASFDE231
	.long L$set$486
LASFDE231:
	.long	LASFDE231-EH_frame1
	.quad	LFB47-.
	.set L$set$487,LFE47-LFB47
	.quad L$set$487
	.byte	0x0
	.byte	0x4
	.set L$set$488,LCFI350-LFB47
	.long L$set$488
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$489,LCFI351-LCFI350
	.long L$set$489
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE231:
.globl _smpArray_init.eh
_smpArray_init.eh:
LSFDE233:
	.set L$set$490,LEFDE233-LASFDE233
	.long L$set$490
LASFDE233:
	.long	LASFDE233-EH_frame1
	.quad	LFB196-.
	.set L$set$491,LFE196-LFB196
	.quad L$set$491
	.byte	0x0
	.byte	0x4
	.set L$set$492,LCFI353-LFB196
	.long L$set$492
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$493,LCFI354-LCFI353
	.long L$set$493
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$494,LCFI356-LCFI354
	.long L$set$494
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE233:
.globl _smpArray_init_array.eh
_smpArray_init_array.eh:
LSFDE235:
	.set L$set$495,LEFDE235-LASFDE235
	.long L$set$495
LASFDE235:
	.long	LASFDE235-EH_frame1
	.quad	LFB197-.
	.set L$set$496,LFE197-LFB197
	.quad L$set$496
	.byte	0x0
	.byte	0x4
	.set L$set$497,LCFI357-LFB197
	.long L$set$497
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$498,LCFI358-LCFI357
	.long L$set$498
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$499,LCFI360-LCFI358
	.long L$set$499
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE235:
.globl _smpArray_gc_mark.eh
_smpArray_gc_mark.eh:
LSFDE237:
	.set L$set$500,LEFDE237-LASFDE237
	.long L$set$500
LASFDE237:
	.long	LASFDE237-EH_frame1
	.quad	LFB198-.
	.set L$set$501,LFE198-LFB198
	.quad L$set$501
	.byte	0x0
	.byte	0x4
	.set L$set$502,LCFI361-LFB198
	.long L$set$502
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$503,LCFI362-LCFI361
	.long L$set$503
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE237:
.globl _smpArray_get_c.eh
_smpArray_get_c.eh:
LSFDE239:
	.set L$set$504,LEFDE239-LASFDE239
	.long L$set$504
LASFDE239:
	.long	LASFDE239-EH_frame1
	.quad	LFB199-.
	.set L$set$505,LFE199-LFB199
	.quad L$set$505
	.byte	0x0
	.byte	0x4
	.set L$set$506,LCFI364-LFB199
	.long L$set$506
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$507,LCFI365-LCFI364
	.long L$set$507
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE239:
.globl _smpArray_length.eh
_smpArray_length.eh:
LSFDE241:
	.set L$set$508,LEFDE241-LASFDE241
	.long L$set$508
LASFDE241:
	.long	LASFDE241-EH_frame1
	.quad	LFB200-.
	.set L$set$509,LFE200-LFB200
	.quad L$set$509
	.byte	0x0
	.byte	0x4
	.set L$set$510,LCFI367-LFB200
	.long L$set$510
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$511,LCFI368-LCFI367
	.long L$set$511
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$512,LCFI370-LCFI368
	.long L$set$512
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE241:
.globl _smpArray_map.eh
_smpArray_map.eh:
LSFDE243:
	.set L$set$513,LEFDE243-LASFDE243
	.long L$set$513
LASFDE243:
	.long	LASFDE243-EH_frame1
	.quad	LFB201-.
	.set L$set$514,LFE201-LFB201
	.quad L$set$514
	.byte	0x0
	.byte	0x4
	.set L$set$515,LCFI371-LFB201
	.long L$set$515
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$516,LCFI372-LCFI371
	.long L$set$516
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$517,LCFI374-LCFI372
	.long L$set$517
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE243:
.globl _smpArray_reduce.eh
_smpArray_reduce.eh:
LSFDE245:
	.set L$set$518,LEFDE245-LASFDE245
	.long L$set$518
LASFDE245:
	.long	LASFDE245-EH_frame1
	.quad	LFB202-.
	.set L$set$519,LFE202-LFB202
	.quad L$set$519
	.byte	0x0
	.byte	0x4
	.set L$set$520,LCFI375-LFB202
	.long L$set$520
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$521,LCFI376-LCFI375
	.long L$set$521
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE245:
.globl _smpArray_resize.eh
_smpArray_resize.eh:
LSFDE247:
	.set L$set$522,LEFDE247-LASFDE247
	.long L$set$522
LASFDE247:
	.long	LASFDE247-EH_frame1
	.quad	LFB203-.
	.set L$set$523,LFE203-LFB203
	.quad L$set$523
	.byte	0x0
	.byte	0x4
	.set L$set$524,LCFI378-LFB203
	.long L$set$524
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$525,LCFI379-LCFI378
	.long L$set$525
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE247:
.globl _smpArray_reverse.eh
_smpArray_reverse.eh:
LSFDE249:
	.set L$set$526,LEFDE249-LASFDE249
	.long L$set$526
LASFDE249:
	.long	LASFDE249-EH_frame1
	.quad	LFB204-.
	.set L$set$527,LFE204-LFB204
	.quad L$set$527
	.byte	0x0
	.byte	0x4
	.set L$set$528,LCFI381-LFB204
	.long L$set$528
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$529,LCFI382-LCFI381
	.long L$set$529
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE249:
.globl _smpArray_reverse_now.eh
_smpArray_reverse_now.eh:
LSFDE251:
	.set L$set$530,LEFDE251-LASFDE251
	.long L$set$530
LASFDE251:
	.long	LASFDE251-EH_frame1
	.quad	LFB205-.
	.set L$set$531,LFE205-LFB205
	.quad L$set$531
	.byte	0x0
	.byte	0x4
	.set L$set$532,LCFI384-LFB205
	.long L$set$532
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$533,LCFI385-LCFI384
	.long L$set$533
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE251:
.globl _smpArray_sort.eh
_smpArray_sort.eh:
LSFDE253:
	.set L$set$534,LEFDE253-LASFDE253
	.long L$set$534
LASFDE253:
	.long	LASFDE253-EH_frame1
	.quad	LFB206-.
	.set L$set$535,LFE206-LFB206
	.quad L$set$535
	.byte	0x0
	.byte	0x4
	.set L$set$536,LCFI386-LFB206
	.long L$set$536
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$537,LCFI387-LCFI386
	.long L$set$537
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE253:
.globl _smpArray_sort_now.eh
_smpArray_sort_now.eh:
LSFDE255:
	.set L$set$538,LEFDE255-LASFDE255
	.long L$set$538
LASFDE255:
	.long	LASFDE255-EH_frame1
	.quad	LFB207-.
	.set L$set$539,LFE207-LFB207
	.quad L$set$539
	.byte	0x0
	.byte	0x4
	.set L$set$540,LCFI389-LFB207
	.long L$set$540
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$541,LCFI390-LCFI389
	.long L$set$541
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE255:
.globl _smp_cmp_helper.eh
_smp_cmp_helper.eh:
LSFDE257:
	.set L$set$542,LEFDE257-LASFDE257
	.long L$set$542
LASFDE257:
	.long	LASFDE257-EH_frame1
	.quad	LFB208-.
	.set L$set$543,LFE208-LFB208
	.quad L$set$543
	.byte	0x0
	.byte	0x4
	.set L$set$544,LCFI392-LFB208
	.long L$set$544
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$545,LCFI393-LCFI392
	.long L$set$545
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$546,LCFI395-LCFI393
	.long L$set$546
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE257:
.globl _smpArray_sort_merge.eh
_smpArray_sort_merge.eh:
LSFDE259:
	.set L$set$547,LEFDE259-LASFDE259
	.long L$set$547
LASFDE259:
	.long	LASFDE259-EH_frame1
	.quad	LFB209-.
	.set L$set$548,LFE209-LFB209
	.quad L$set$548
	.byte	0x0
	.byte	0x4
	.set L$set$549,LCFI396-LFB209
	.long L$set$549
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$550,LCFI397-LCFI396
	.long L$set$550
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE259:
.globl _smpArray_sort_quick.eh
_smpArray_sort_quick.eh:
LSFDE261:
	.set L$set$551,LEFDE261-LASFDE261
	.long L$set$551
LASFDE261:
	.long	LASFDE261-EH_frame1
	.quad	LFB210-.
	.set L$set$552,LFE210-LFB210
	.quad L$set$552
	.byte	0x0
	.byte	0x4
	.set L$set$553,LCFI399-LFB210
	.long L$set$553
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$554,LCFI400-LCFI399
	.long L$set$554
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE261:
.globl _smpArray_sort_timmy.eh
_smpArray_sort_timmy.eh:
LSFDE263:
	.set L$set$555,LEFDE263-LASFDE263
	.long L$set$555
LASFDE263:
	.long	LASFDE263-EH_frame1
	.quad	LFB211-.
	.set L$set$556,LFE211-LFB211
	.quad L$set$556
	.byte	0x0
	.byte	0x4
	.set L$set$557,LCFI402-LFB211
	.long L$set$557
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$558,LCFI403-LCFI402
	.long L$set$558
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$559,LCFI405-LCFI403
	.long L$set$559
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE263:
.globl _timmy_get_run.eh
_timmy_get_run.eh:
LSFDE265:
	.set L$set$560,LEFDE265-LASFDE265
	.long L$set$560
LASFDE265:
	.long	LASFDE265-EH_frame1
	.quad	LFB212-.
	.set L$set$561,LFE212-LFB212
	.quad L$set$561
	.byte	0x0
	.byte	0x4
	.set L$set$562,LCFI406-LFB212
	.long L$set$562
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$563,LCFI407-LCFI406
	.long L$set$563
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$564,LCFI409-LCFI407
	.long L$set$564
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE265:
.globl _smpArray_sort_insertion.eh
_smpArray_sort_insertion.eh:
LSFDE267:
	.set L$set$565,LEFDE267-LASFDE267
	.long L$set$565
LASFDE267:
	.long	LASFDE267-EH_frame1
	.quad	LFB213-.
	.set L$set$566,LFE213-LFB213
	.quad L$set$566
	.byte	0x0
	.byte	0x4
	.set L$set$567,LCFI410-LFB213
	.long L$set$567
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$568,LCFI411-LCFI410
	.long L$set$568
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE267:
.globl _smp_merge_sorted_arrays.eh
_smp_merge_sorted_arrays.eh:
LSFDE269:
	.set L$set$569,LEFDE269-LASFDE269
	.long L$set$569
LASFDE269:
	.long	LASFDE269-EH_frame1
	.quad	LFB214-.
	.set L$set$570,LFE214-LFB214
	.quad L$set$570
	.byte	0x0
	.byte	0x4
	.set L$set$571,LCFI413-LFB214
	.long L$set$571
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$572,LCFI414-LCFI413
	.long L$set$572
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE269:
.globl _smpArray_to_a.eh
_smpArray_to_a.eh:
LSFDE271:
	.set L$set$573,LEFDE271-LASFDE271
	.long L$set$573
LASFDE271:
	.long	LASFDE271-EH_frame1
	.quad	LFB215-.
	.set L$set$574,LFE215-LFB215
	.quad L$set$574
	.byte	0x0
	.byte	0x4
	.set L$set$575,LCFI416-LFB215
	.long L$set$575
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$576,LCFI417-LCFI416
	.long L$set$576
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE271:
.globl _smpArray_to_list.eh
_smpArray_to_list.eh:
LSFDE273:
	.set L$set$577,LEFDE273-LASFDE273
	.long L$set$577
LASFDE273:
	.long	LASFDE273-EH_frame1
	.quad	LFB216-.
	.set L$set$578,LFE216-LFB216
	.quad L$set$578
	.byte	0x0
	.byte	0x4
	.set L$set$579,LCFI418-LFB216
	.long L$set$579
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$580,LCFI419-LCFI418
	.long L$set$580
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE273:
.globl _smpArray_to_s.eh
_smpArray_to_s.eh:
LSFDE275:
	.set L$set$581,LEFDE275-LASFDE275
	.long L$set$581
LASFDE275:
	.long	LASFDE275-EH_frame1
	.quad	LFB217-.
	.set L$set$582,LFE217-LFB217
	.quad L$set$582
	.byte	0x0
	.byte	0x4
	.set L$set$583,LCFI421-LFB217
	.long L$set$583
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$584,LCFI422-LCFI421
	.long L$set$584
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE275:
.globl _smpArray_write.eh
_smpArray_write.eh:
LSFDE277:
	.set L$set$585,LEFDE277-LASFDE277
	.long L$set$585
LASFDE277:
	.long	LASFDE277-EH_frame1
	.quad	LFB218-.
	.set L$set$586,LFE218-LFB218
	.quad L$set$586
	.byte	0x0
	.byte	0x4
	.set L$set$587,LCFI424-LFB218
	.long L$set$587
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$588,LCFI425-LCFI424
	.long L$set$588
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE277:
.globl _smpBool_init.eh
_smpBool_init.eh:
LSFDE279:
	.set L$set$589,LEFDE279-LASFDE279
	.long L$set$589
LASFDE279:
	.long	LASFDE279-EH_frame1
	.quad	LFB219-.
	.set L$set$590,LFE219-LFB219
	.quad L$set$590
	.byte	0x0
	.byte	0x4
	.set L$set$591,LCFI427-LFB219
	.long L$set$591
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$592,LCFI428-LCFI427
	.long L$set$592
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE279:
.globl _smpBool_to_cint.eh
_smpBool_to_cint.eh:
LSFDE281:
	.set L$set$593,LEFDE281-LASFDE281
	.long L$set$593
LASFDE281:
	.long	LASFDE281-EH_frame1
	.quad	LFB220-.
	.set L$set$594,LFE220-LFB220
	.quad L$set$594
	.byte	0x0
	.byte	0x4
	.set L$set$595,LCFI429-LFB220
	.long L$set$595
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$596,LCFI430-LCFI429
	.long L$set$596
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE281:
.globl _smpObject_truep.eh
_smpObject_truep.eh:
LSFDE283:
	.set L$set$597,LEFDE283-LASFDE283
	.long L$set$597
LASFDE283:
	.long	LASFDE283-EH_frame1
	.quad	LFB221-.
	.set L$set$598,LFE221-LFB221
	.quad L$set$598
	.byte	0x0
	.byte	0x4
	.set L$set$599,LCFI431-LFB221
	.long L$set$599
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$600,LCFI432-LCFI431
	.long L$set$600
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$601,LCFI434-LCFI432
	.long L$set$601
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE283:
.globl _smpObject_truep_c.eh
_smpObject_truep_c.eh:
LSFDE285:
	.set L$set$602,LEFDE285-LASFDE285
	.long L$set$602
LASFDE285:
	.long	LASFDE285-EH_frame1
	.quad	LFB222-.
	.set L$set$603,LFE222-LFB222
	.quad L$set$603
	.byte	0x0
	.byte	0x4
	.set L$set$604,LCFI435-LFB222
	.long L$set$604
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$605,LCFI436-LCFI435
	.long L$set$605
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE285:
.globl _smptrue_to_s.eh
_smptrue_to_s.eh:
LSFDE287:
	.set L$set$606,LEFDE287-LASFDE287
	.long L$set$606
LASFDE287:
	.long	LASFDE287-EH_frame1
	.quad	LFB223-.
	.set L$set$607,LFE223-LFB223
	.quad L$set$607
	.byte	0x0
	.byte	0x4
	.set L$set$608,LCFI437-LFB223
	.long L$set$608
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$609,LCFI438-LCFI437
	.long L$set$609
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$610,LCFI440-LCFI438
	.long L$set$610
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE287:
.globl _smpBool_and.eh
_smpBool_and.eh:
LSFDE289:
	.set L$set$611,LEFDE289-LASFDE289
	.long L$set$611
LASFDE289:
	.long	LASFDE289-EH_frame1
	.quad	LFB224-.
	.set L$set$612,LFE224-LFB224
	.quad L$set$612
	.byte	0x0
	.byte	0x4
	.set L$set$613,LCFI441-LFB224
	.long L$set$613
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$614,LCFI442-LCFI441
	.long L$set$614
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE289:
.globl _smpBool_not.eh
_smpBool_not.eh:
LSFDE291:
	.set L$set$615,LEFDE291-LASFDE291
	.long L$set$615
LASFDE291:
	.long	LASFDE291-EH_frame1
	.quad	LFB225-.
	.set L$set$616,LFE225-LFB225
	.quad L$set$616
	.byte	0x0
	.byte	0x4
	.set L$set$617,LCFI444-LFB225
	.long L$set$617
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$618,LCFI445-LCFI444
	.long L$set$618
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$619,LCFI447-LCFI445
	.long L$set$619
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE291:
.globl _smpBool_or.eh
_smpBool_or.eh:
LSFDE293:
	.set L$set$620,LEFDE293-LASFDE293
	.long L$set$620
LASFDE293:
	.long	LASFDE293-EH_frame1
	.quad	LFB226-.
	.set L$set$621,LFE226-LFB226
	.quad L$set$621
	.byte	0x0
	.byte	0x4
	.set L$set$622,LCFI448-LFB226
	.long L$set$622
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$623,LCFI449-LCFI448
	.long L$set$623
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE293:
.globl _smpBool_xor.eh
_smpBool_xor.eh:
LSFDE295:
	.set L$set$624,LEFDE295-LASFDE295
	.long L$set$624
LASFDE295:
	.long	LASFDE295-EH_frame1
	.quad	LFB227-.
	.set L$set$625,LFE227-LFB227
	.quad L$set$625
	.byte	0x0
	.byte	0x4
	.set L$set$626,LCFI451-LFB227
	.long L$set$626
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$627,LCFI452-LCFI451
	.long L$set$627
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$628,LCFI455-LCFI452
	.long L$set$628
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE295:
.globl _smpCollection_create_class.eh
_smpCollection_create_class.eh:
LSFDE297:
	.set L$set$629,LEFDE297-LASFDE297
	.long L$set$629
LASFDE297:
	.long	LASFDE297-EH_frame1
	.quad	LFB228-.
	.set L$set$630,LFE228-LFB228
	.quad L$set$630
	.byte	0x0
	.byte	0x4
	.set L$set$631,LCFI456-LFB228
	.long L$set$631
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$632,LCFI457-LCFI456
	.long L$set$632
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE297:
.globl _smpException_create_class.eh
_smpException_create_class.eh:
LSFDE299:
	.set L$set$633,LEFDE299-LASFDE299
	.long L$set$633
LASFDE299:
	.long	LASFDE299-EH_frame1
	.quad	LFB229-.
	.set L$set$634,LFE229-LFB229
	.quad L$set$634
	.byte	0x0
	.byte	0x4
	.set L$set$635,LCFI459-LFB229
	.long L$set$635
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$636,LCFI460-LCFI459
	.long L$set$636
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE299:
.globl _smpException_backtrace_add_now.eh
_smpException_backtrace_add_now.eh:
LSFDE301:
	.set L$set$637,LEFDE301-LASFDE301
	.long L$set$637
LASFDE301:
	.long	LASFDE301-EH_frame1
	.quad	LFB230-.
	.set L$set$638,LFE230-LFB230
	.quad L$set$638
	.byte	0x0
	.byte	0x4
	.set L$set$639,LCFI462-LFB230
	.long L$set$639
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$640,LCFI463-LCFI462
	.long L$set$640
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$641,LCFI465-LCFI463
	.long L$set$641
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE301:
.globl _smpException_clear.eh
_smpException_clear.eh:
LSFDE303:
	.set L$set$642,LEFDE303-LASFDE303
	.long L$set$642
LASFDE303:
	.long	LASFDE303-EH_frame1
	.quad	LFB231-.
	.set L$set$643,LFE231-LFB231
	.quad L$set$643
	.byte	0x0
	.byte	0x4
	.set L$set$644,LCFI466-LFB231
	.long L$set$644
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$645,LCFI467-LCFI466
	.long L$set$645
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$646,LCFI469-LCFI467
	.long L$set$646
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE303:
.globl _smpException_gc_mark.eh
_smpException_gc_mark.eh:
LSFDE305:
	.set L$set$647,LEFDE305-LASFDE305
	.long L$set$647
LASFDE305:
	.long	LASFDE305-EH_frame1
	.quad	LFB232-.
	.set L$set$648,LFE232-LFB232
	.quad L$set$648
	.byte	0x0
	.byte	0x4
	.set L$set$649,LCFI470-LFB232
	.long L$set$649
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$650,LCFI471-LCFI470
	.long L$set$650
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$651,LCFI473-LCFI471
	.long L$set$651
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE305:
.globl _smpException_init.eh
_smpException_init.eh:
LSFDE307:
	.set L$set$652,LEFDE307-LASFDE307
	.long L$set$652
LASFDE307:
	.long	LASFDE307-EH_frame1
	.quad	LFB233-.
	.set L$set$653,LFE233-LFB233
	.quad L$set$653
	.byte	0x0
	.byte	0x4
	.set L$set$654,LCFI474-LFB233
	.long L$set$654
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$655,LCFI475-LCFI474
	.long L$set$655
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE307:
.globl _smpException_init_fmt.eh
_smpException_init_fmt.eh:
LSFDE309:
	.set L$set$656,LEFDE309-LASFDE309
	.long L$set$656
LASFDE309:
	.long	LASFDE309-EH_frame1
	.quad	LFB234-.
	.set L$set$657,LFE234-LFB234
	.quad L$set$657
	.byte	0x0
	.byte	0x4
	.set L$set$658,LCFI477-LFB234
	.long L$set$658
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$659,LCFI478-LCFI477
	.long L$set$659
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$660,LCFI480-LCFI478
	.long L$set$660
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE309:
.globl _smpException_print.eh
_smpException_print.eh:
LSFDE311:
	.set L$set$661,LEFDE311-LASFDE311
	.long L$set$661
LASFDE311:
	.long	LASFDE311-EH_frame1
	.quad	LFB235-.
	.set L$set$662,LFE235-LFB235
	.quad L$set$662
	.byte	0x0
	.byte	0x4
	.set L$set$663,LCFI481-LFB235
	.long L$set$663
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$664,LCFI482-LCFI481
	.long L$set$664
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$665,LCFI484-LCFI482
	.long L$set$665
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE311:
.globl _smpException_to_s.eh
_smpException_to_s.eh:
LSFDE313:
	.set L$set$666,LEFDE313-LASFDE313
	.long L$set$666
LASFDE313:
	.long	LASFDE313-EH_frame1
	.quad	LFB236-.
	.set L$set$667,LFE236-LFB236
	.quad L$set$667
	.byte	0x0
	.byte	0x4
	.set L$set$668,LCFI485-LFB236
	.long L$set$668
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$669,LCFI486-LCFI485
	.long L$set$669
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE313:
.globl _smpTypeError_clear.eh
_smpTypeError_clear.eh:
LSFDE315:
	.set L$set$670,LEFDE315-LASFDE315
	.long L$set$670
LASFDE315:
	.long	LASFDE315-EH_frame1
	.quad	LFB237-.
	.set L$set$671,LFE237-LFB237
	.quad L$set$671
	.byte	0x0
	.byte	0x4
	.set L$set$672,LCFI488-LFB237
	.long L$set$672
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$673,LCFI489-LCFI488
	.long L$set$673
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$674,LCFI491-LCFI489
	.long L$set$674
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE315:
.globl _smpTypeError_gc_mark.eh
_smpTypeError_gc_mark.eh:
LSFDE317:
	.set L$set$675,LEFDE317-LASFDE317
	.long L$set$675
LASFDE317:
	.long	LASFDE317-EH_frame1
	.quad	LFB238-.
	.set L$set$676,LFE238-LFB238
	.quad L$set$676
	.byte	0x0
	.byte	0x4
	.set L$set$677,LCFI492-LFB238
	.long L$set$677
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$678,LCFI493-LCFI492
	.long L$set$678
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$679,LCFI495-LCFI493
	.long L$set$679
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE317:
.globl _smpTypeError_init.eh
_smpTypeError_init.eh:
LSFDE319:
	.set L$set$680,LEFDE319-LASFDE319
	.long L$set$680
LASFDE319:
	.long	LASFDE319-EH_frame1
	.quad	LFB239-.
	.set L$set$681,LFE239-LFB239
	.quad L$set$681
	.byte	0x0
	.byte	0x4
	.set L$set$682,LCFI496-LFB239
	.long L$set$682
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$683,LCFI497-LCFI496
	.long L$set$683
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$684,LCFI499-LCFI497
	.long L$set$684
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE319:
.globl _smpTypeError_init_detailed.eh
_smpTypeError_init_detailed.eh:
LSFDE321:
	.set L$set$685,LEFDE321-LASFDE321
	.long L$set$685
LASFDE321:
	.long	LASFDE321-EH_frame1
	.quad	LFB240-.
	.set L$set$686,LFE240-LFB240
	.quad L$set$686
	.byte	0x0
	.byte	0x4
	.set L$set$687,LCFI500-LFB240
	.long L$set$687
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$688,LCFI501-LCFI500
	.long L$set$688
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$689,LCFI503-LCFI501
	.long L$set$689
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE321:
.globl _smpTypeError_init_fmt.eh
_smpTypeError_init_fmt.eh:
LSFDE323:
	.set L$set$690,LEFDE323-LASFDE323
	.long L$set$690
LASFDE323:
	.long	LASFDE323-EH_frame1
	.quad	LFB241-.
	.set L$set$691,LFE241-LFB241
	.quad L$set$691
	.byte	0x0
	.byte	0x4
	.set L$set$692,LCFI504-LFB241
	.long L$set$692
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$693,LCFI505-LCFI504
	.long L$set$693
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$694,LCFI507-LCFI505
	.long L$set$694
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE323:
.globl _smpTypeError_to_s.eh
_smpTypeError_to_s.eh:
LSFDE325:
	.set L$set$695,LEFDE325-LASFDE325
	.long L$set$695
LASFDE325:
	.long	LASFDE325-EH_frame1
	.quad	LFB242-.
	.set L$set$696,LFE242-LFB242
	.quad L$set$696
	.byte	0x0
	.byte	0x4
	.set L$set$697,LCFI508-LFB242
	.long L$set$697
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$698,LCFI509-LCFI508
	.long L$set$698
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE325:
.globl _smpFloat_create_class.eh
_smpFloat_create_class.eh:
LSFDE327:
	.set L$set$699,LEFDE327-LASFDE327
	.long L$set$699
LASFDE327:
	.long	LASFDE327-EH_frame1
	.quad	LFB243-.
	.set L$set$700,LFE243-LFB243
	.quad L$set$700
	.byte	0x0
	.byte	0x4
	.set L$set$701,LCFI511-LFB243
	.long L$set$701
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$702,LCFI512-LCFI511
	.long L$set$702
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE327:
.globl _smpFloat_init_mpfr.eh
_smpFloat_init_mpfr.eh:
LSFDE329:
	.set L$set$703,LEFDE329-LASFDE329
	.long L$set$703
LASFDE329:
	.long	LASFDE329-EH_frame1
	.quad	LFB244-.
	.set L$set$704,LFE244-LFB244
	.quad L$set$704
	.byte	0x0
	.byte	0x4
	.set L$set$705,LCFI514-LFB244
	.long L$set$705
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$706,LCFI515-LCFI514
	.long L$set$706
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$707,LCFI517-LCFI515
	.long L$set$707
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE329:
.globl _smpFloat_init_mpfr_ref.eh
_smpFloat_init_mpfr_ref.eh:
LSFDE331:
	.set L$set$708,LEFDE331-LASFDE331
	.long L$set$708
LASFDE331:
	.long	LASFDE331-EH_frame1
	.quad	LFB245-.
	.set L$set$709,LFE245-LFB245
	.quad L$set$709
	.byte	0x0
	.byte	0x4
	.set L$set$710,LCFI518-LFB245
	.long L$set$710
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$711,LCFI519-LCFI518
	.long L$set$711
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$712,LCFI521-LCFI519
	.long L$set$712
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE331:
.globl _smpFloat_init_cdouble.eh
_smpFloat_init_cdouble.eh:
LSFDE333:
	.set L$set$713,LEFDE333-LASFDE333
	.long L$set$713
LASFDE333:
	.long	LASFDE333-EH_frame1
	.quad	LFB246-.
	.set L$set$714,LFE246-LFB246
	.quad L$set$714
	.byte	0x0
	.byte	0x4
	.set L$set$715,LCFI522-LFB246
	.long L$set$715
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$716,LCFI523-LCFI522
	.long L$set$716
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$717,LCFI525-LCFI523
	.long L$set$717
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE333:
.globl _smpFloat_init_str.eh
_smpFloat_init_str.eh:
LSFDE335:
	.set L$set$718,LEFDE335-LASFDE335
	.long L$set$718
LASFDE335:
	.long	LASFDE335-EH_frame1
	.quad	LFB247-.
	.set L$set$719,LFE247-LFB247
	.quad L$set$719
	.byte	0x0
	.byte	0x4
	.set L$set$720,LCFI526-LFB247
	.long L$set$720
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$721,LCFI527-LCFI526
	.long L$set$721
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$722,LCFI529-LCFI527
	.long L$set$722
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE335:
.globl _smpFloat_clear.eh
_smpFloat_clear.eh:
LSFDE337:
	.set L$set$723,LEFDE337-LASFDE337
	.long L$set$723
LASFDE337:
	.long	LASFDE337-EH_frame1
	.quad	LFB248-.
	.set L$set$724,LFE248-LFB248
	.quad L$set$724
	.byte	0x0
	.byte	0x4
	.set L$set$725,LCFI530-LFB248
	.long L$set$725
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$726,LCFI531-LCFI530
	.long L$set$726
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$727,LCFI533-LCFI531
	.long L$set$727
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE337:
.globl _smpFloat_add.eh
_smpFloat_add.eh:
LSFDE339:
	.set L$set$728,LEFDE339-LASFDE339
	.long L$set$728
LASFDE339:
	.long	LASFDE339-EH_frame1
	.quad	LFB249-.
	.set L$set$729,LFE249-LFB249
	.quad L$set$729
	.byte	0x0
	.byte	0x4
	.set L$set$730,LCFI534-LFB249
	.long L$set$730
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$731,LCFI535-LCFI534
	.long L$set$731
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE339:
.globl _smpFloat_sub.eh
_smpFloat_sub.eh:
LSFDE341:
	.set L$set$732,LEFDE341-LASFDE341
	.long L$set$732
LASFDE341:
	.long	LASFDE341-EH_frame1
	.quad	LFB250-.
	.set L$set$733,LFE250-LFB250
	.quad L$set$733
	.byte	0x0
	.byte	0x4
	.set L$set$734,LCFI537-LFB250
	.long L$set$734
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$735,LCFI538-LCFI537
	.long L$set$735
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE341:
.globl _smpFloat_mul.eh
_smpFloat_mul.eh:
LSFDE343:
	.set L$set$736,LEFDE343-LASFDE343
	.long L$set$736
LASFDE343:
	.long	LASFDE343-EH_frame1
	.quad	LFB251-.
	.set L$set$737,LFE251-LFB251
	.quad L$set$737
	.byte	0x0
	.byte	0x4
	.set L$set$738,LCFI540-LFB251
	.long L$set$738
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$739,LCFI541-LCFI540
	.long L$set$739
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE343:
.globl _smpFloat_div.eh
_smpFloat_div.eh:
LSFDE345:
	.set L$set$740,LEFDE345-LASFDE345
	.long L$set$740
LASFDE345:
	.long	LASFDE345-EH_frame1
	.quad	LFB252-.
	.set L$set$741,LFE252-LFB252
	.quad L$set$741
	.byte	0x0
	.byte	0x4
	.set L$set$742,LCFI543-LFB252
	.long L$set$742
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$743,LCFI544-LCFI543
	.long L$set$743
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE345:
.globl _smpFloat_pow.eh
_smpFloat_pow.eh:
LSFDE347:
	.set L$set$744,LEFDE347-LASFDE347
	.long L$set$744
LASFDE347:
	.long	LASFDE347-EH_frame1
	.quad	LFB253-.
	.set L$set$745,LFE253-LFB253
	.quad L$set$745
	.byte	0x0
	.byte	0x4
	.set L$set$746,LCFI546-LFB253
	.long L$set$746
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$747,LCFI547-LCFI546
	.long L$set$747
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE347:
.globl _smpFloat_cmp_cint.eh
_smpFloat_cmp_cint.eh:
LSFDE349:
	.set L$set$748,LEFDE349-LASFDE349
	.long L$set$748
LASFDE349:
	.long	LASFDE349-EH_frame1
	.quad	LFB254-.
	.set L$set$749,LFE254-LFB254
	.quad L$set$749
	.byte	0x0
	.byte	0x4
	.set L$set$750,LCFI549-LFB254
	.long L$set$750
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$751,LCFI550-LCFI549
	.long L$set$751
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$752,LCFI552-LCFI550
	.long L$set$752
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE349:
.globl _smpFloat_cmp.eh
_smpFloat_cmp.eh:
LSFDE351:
	.set L$set$753,LEFDE351-LASFDE351
	.long L$set$753
LASFDE351:
	.long	LASFDE351-EH_frame1
	.quad	LFB255-.
	.set L$set$754,LFE255-LFB255
	.quad L$set$754
	.byte	0x0
	.byte	0x4
	.set L$set$755,LCFI553-LFB255
	.long L$set$755
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$756,LCFI554-LCFI553
	.long L$set$756
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE351:
.globl _smpFloat_equalp.eh
_smpFloat_equalp.eh:
LSFDE353:
	.set L$set$757,LEFDE353-LASFDE353
	.long L$set$757
LASFDE353:
	.long	LASFDE353-EH_frame1
	.quad	LFB256-.
	.set L$set$758,LFE256-LFB256
	.quad L$set$758
	.byte	0x0
	.byte	0x4
	.set L$set$759,LCFI556-LFB256
	.long L$set$759
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$760,LCFI557-LCFI556
	.long L$set$760
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE353:
.globl _smpFloat_nequalp.eh
_smpFloat_nequalp.eh:
LSFDE355:
	.set L$set$761,LEFDE355-LASFDE355
	.long L$set$761
LASFDE355:
	.long	LASFDE355-EH_frame1
	.quad	LFB257-.
	.set L$set$762,LFE257-LFB257
	.quad L$set$762
	.byte	0x0
	.byte	0x4
	.set L$set$763,LCFI559-LFB257
	.long L$set$763
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$764,LCFI560-LCFI559
	.long L$set$764
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE355:
.globl _smpFloat_lt.eh
_smpFloat_lt.eh:
LSFDE357:
	.set L$set$765,LEFDE357-LASFDE357
	.long L$set$765
LASFDE357:
	.long	LASFDE357-EH_frame1
	.quad	LFB258-.
	.set L$set$766,LFE258-LFB258
	.quad L$set$766
	.byte	0x0
	.byte	0x4
	.set L$set$767,LCFI562-LFB258
	.long L$set$767
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$768,LCFI563-LCFI562
	.long L$set$768
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE357:
.globl _smpFloat_le.eh
_smpFloat_le.eh:
LSFDE359:
	.set L$set$769,LEFDE359-LASFDE359
	.long L$set$769
LASFDE359:
	.long	LASFDE359-EH_frame1
	.quad	LFB259-.
	.set L$set$770,LFE259-LFB259
	.quad L$set$770
	.byte	0x0
	.byte	0x4
	.set L$set$771,LCFI565-LFB259
	.long L$set$771
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$772,LCFI566-LCFI565
	.long L$set$772
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE359:
.globl _smpFloat_ge.eh
_smpFloat_ge.eh:
LSFDE361:
	.set L$set$773,LEFDE361-LASFDE361
	.long L$set$773
LASFDE361:
	.long	LASFDE361-EH_frame1
	.quad	LFB260-.
	.set L$set$774,LFE260-LFB260
	.quad L$set$774
	.byte	0x0
	.byte	0x4
	.set L$set$775,LCFI568-LFB260
	.long L$set$775
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$776,LCFI569-LCFI568
	.long L$set$776
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE361:
.globl _smpFloat_gt.eh
_smpFloat_gt.eh:
LSFDE363:
	.set L$set$777,LEFDE363-LASFDE363
	.long L$set$777
LASFDE363:
	.long	LASFDE363-EH_frame1
	.quad	LFB261-.
	.set L$set$778,LFE261-LFB261
	.quad L$set$778
	.byte	0x0
	.byte	0x4
	.set L$set$779,LCFI571-LFB261
	.long L$set$779
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$780,LCFI572-LCFI571
	.long L$set$780
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE363:
.globl _smpFloat_eq.eh
_smpFloat_eq.eh:
LSFDE365:
	.set L$set$781,LEFDE365-LASFDE365
	.long L$set$781
LASFDE365:
	.long	LASFDE365-EH_frame1
	.quad	LFB262-.
	.set L$set$782,LFE262-LFB262
	.quad L$set$782
	.byte	0x0
	.byte	0x4
	.set L$set$783,LCFI574-LFB262
	.long L$set$783
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$784,LCFI575-LCFI574
	.long L$set$784
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$785,LCFI577-LCFI575
	.long L$set$785
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE365:
.globl _smpFloat_to_s.eh
_smpFloat_to_s.eh:
LSFDE367:
	.set L$set$786,LEFDE367-LASFDE367
	.long L$set$786
LASFDE367:
	.long	LASFDE367-EH_frame1
	.quad	LFB263-.
	.set L$set$787,LFE263-LFB263
	.quad L$set$787
	.byte	0x0
	.byte	0x4
	.set L$set$788,LCFI578-LFB263
	.long L$set$788
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$789,LCFI579-LCFI578
	.long L$set$789
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE367:
.globl _smpFunction_create_class.eh
_smpFunction_create_class.eh:
LSFDE369:
	.set L$set$790,LEFDE369-LASFDE369
	.long L$set$790
LASFDE369:
	.long	LASFDE369-EH_frame1
	.quad	LFB264-.
	.set L$set$791,LFE264-LFB264
	.quad L$set$791
	.byte	0x0
	.byte	0x4
	.set L$set$792,LCFI581-LFB264
	.long L$set$792
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$793,LCFI582-LCFI581
	.long L$set$793
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE369:
.globl _smpFunction_call.eh
_smpFunction_call.eh:
LSFDE371:
	.set L$set$794,LEFDE371-LASFDE371
	.long L$set$794
LASFDE371:
	.long	LASFDE371-EH_frame1
	.quad	LFB265-.
	.set L$set$795,LFE265-LFB265
	.quad L$set$795
	.byte	0x0
	.byte	0x4
	.set L$set$796,LCFI584-LFB265
	.long L$set$796
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$797,LCFI585-LCFI584
	.long L$set$797
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$798,LCFI588-LCFI585
	.long L$set$798
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE371:
.globl _smpFunction_clear.eh
_smpFunction_clear.eh:
LSFDE373:
	.set L$set$799,LEFDE373-LASFDE373
	.long L$set$799
LASFDE373:
	.long	LASFDE373-EH_frame1
	.quad	LFB266-.
	.set L$set$800,LFE266-LFB266
	.quad L$set$800
	.byte	0x0
	.byte	0x4
	.set L$set$801,LCFI589-LFB266
	.long L$set$801
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$802,LCFI590-LCFI589
	.long L$set$802
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE373:
.globl _smpFunction_gc_mark.eh
_smpFunction_gc_mark.eh:
LSFDE375:
	.set L$set$803,LEFDE375-LASFDE375
	.long L$set$803
LASFDE375:
	.long	LASFDE375-EH_frame1
	.quad	LFB267-.
	.set L$set$804,LFE267-LFB267
	.quad L$set$804
	.byte	0x0
	.byte	0x4
	.set L$set$805,LCFI592-LFB267
	.long L$set$805
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$806,LCFI593-LCFI592
	.long L$set$806
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE375:
.globl _smpFunction_init.eh
_smpFunction_init.eh:
LSFDE377:
	.set L$set$807,LEFDE377-LASFDE377
	.long L$set$807
LASFDE377:
	.long	LASFDE377-EH_frame1
	.quad	LFB268-.
	.set L$set$808,LFE268-LFB268
	.quad L$set$808
	.byte	0x0
	.byte	0x4
	.set L$set$809,LCFI595-LFB268
	.long L$set$809
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$810,LCFI596-LCFI595
	.long L$set$810
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$811,LCFI598-LCFI596
	.long L$set$811
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE377:
.globl _smpFunction_init_v.eh
_smpFunction_init_v.eh:
LSFDE379:
	.set L$set$812,LEFDE379-LASFDE379
	.long L$set$812
LASFDE379:
	.long	LASFDE379-EH_frame1
	.quad	LFB269-.
	.set L$set$813,LFE269-LFB269
	.quad L$set$813
	.byte	0x0
	.byte	0x4
	.set L$set$814,LCFI599-LFB269
	.long L$set$814
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$815,LCFI600-LCFI599
	.long L$set$815
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$816,LCFI602-LCFI600
	.long L$set$816
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE379:
.globl _smpFunction_to_s.eh
_smpFunction_to_s.eh:
LSFDE381:
	.set L$set$817,LEFDE381-LASFDE381
	.long L$set$817
LASFDE381:
	.long	LASFDE381-EH_frame1
	.quad	LFB270-.
	.set L$set$818,LFE270-LFB270
	.quad L$set$818
	.byte	0x0
	.byte	0x4
	.set L$set$819,LCFI603-LFB270
	.long L$set$819
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$820,LCFI604-LCFI603
	.long L$set$820
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE381:
.globl _smpGlobal_create_class.eh
_smpGlobal_create_class.eh:
LSFDE383:
	.set L$set$821,LEFDE383-LASFDE383
	.long L$set$821
LASFDE383:
	.long	LASFDE383-EH_frame1
	.quad	LFB271-.
	.set L$set$822,LFE271-LFB271
	.quad L$set$822
	.byte	0x0
	.byte	0x4
	.set L$set$823,LCFI606-LFB271
	.long L$set$823
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$824,LCFI607-LCFI606
	.long L$set$824
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$825,LCFI609-LCFI607
	.long L$set$825
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE383:
.globl _smpGlobal_array.eh
_smpGlobal_array.eh:
LSFDE385:
	.set L$set$826,LEFDE385-LASFDE385
	.long L$set$826
LASFDE385:
	.long	LASFDE385-EH_frame1
	.quad	LFB272-.
	.set L$set$827,LFE272-LFB272
	.quad L$set$827
	.byte	0x0
	.byte	0x4
	.set L$set$828,LCFI610-LFB272
	.long L$set$828
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$829,LCFI611-LCFI610
	.long L$set$829
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$830,LCFI613-LCFI611
	.long L$set$830
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE385:
.globl _smpGlobal_catch_arg.eh
_smpGlobal_catch_arg.eh:
LSFDE387:
	.set L$set$831,LEFDE387-LASFDE387
	.long L$set$831
LASFDE387:
	.long	LASFDE387-EH_frame1
	.quad	LFB273-.
	.set L$set$832,LFE273-LFB273
	.quad L$set$832
	.byte	0x0
	.byte	0x4
	.set L$set$833,LCFI614-LFB273
	.long L$set$833
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$834,LCFI615-LCFI614
	.long L$set$834
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$835,LCFI617-LCFI615
	.long L$set$835
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE387:
.globl _smpGlobal_class.eh
_smpGlobal_class.eh:
LSFDE389:
	.set L$set$836,LEFDE389-LASFDE389
	.long L$set$836
LASFDE389:
	.long	LASFDE389-EH_frame1
	.quad	LFB274-.
	.set L$set$837,LFE274-LFB274
	.quad L$set$837
	.byte	0x0
	.byte	0x4
	.set L$set$838,LCFI618-LFB274
	.long L$set$838
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$839,LCFI619-LCFI618
	.long L$set$839
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE389:
.globl _smpGlobal_class_multiple.eh
_smpGlobal_class_multiple.eh:
LSFDE391:
	.set L$set$840,LEFDE391-LASFDE391
	.long L$set$840
LASFDE391:
	.long	LASFDE391-EH_frame1
	.quad	LFB275-.
	.set L$set$841,LFE275-LFB275
	.quad L$set$841
	.byte	0x0
	.byte	0x4
	.set L$set$842,LCFI621-LFB275
	.long L$set$842
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$843,LCFI622-LCFI621
	.long L$set$843
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$844,LCFI624-LCFI622
	.long L$set$844
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE391:
.globl _smpGlobal_class_arg.eh
_smpGlobal_class_arg.eh:
LSFDE393:
	.set L$set$845,LEFDE393-LASFDE393
	.long L$set$845
LASFDE393:
	.long	LASFDE393-EH_frame1
	.quad	LFB276-.
	.set L$set$846,LFE276-LFB276
	.quad L$set$846
	.byte	0x0
	.byte	0x4
	.set L$set$847,LCFI625-LFB276
	.long L$set$847
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$848,LCFI626-LCFI625
	.long L$set$848
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$849,LCFI628-LCFI626
	.long L$set$849
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE393:
.globl _smpGlobal_fprint.eh
_smpGlobal_fprint.eh:
LSFDE395:
	.set L$set$850,LEFDE395-LASFDE395
	.long L$set$850
LASFDE395:
	.long	LASFDE395-EH_frame1
	.quad	LFB277-.
	.set L$set$851,LFE277-LFB277
	.quad L$set$851
	.byte	0x0
	.byte	0x4
	.set L$set$852,LCFI629-LFB277
	.long L$set$852
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$853,LCFI630-LCFI629
	.long L$set$853
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE395:
.globl _smpGlobal_fprintf.eh
_smpGlobal_fprintf.eh:
LSFDE397:
	.set L$set$854,LEFDE397-LASFDE397
	.long L$set$854
LASFDE397:
	.long	LASFDE397-EH_frame1
	.quad	LFB278-.
	.set L$set$855,LFE278-LFB278
	.quad L$set$855
	.byte	0x0
	.byte	0x4
	.set L$set$856,LCFI632-LFB278
	.long L$set$856
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$857,LCFI633-LCFI632
	.long L$set$857
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE397:
.globl _smpGlobal_hash.eh
_smpGlobal_hash.eh:
LSFDE399:
	.set L$set$858,LEFDE399-LASFDE399
	.long L$set$858
LASFDE399:
	.long	LASFDE399-EH_frame1
	.quad	LFB279-.
	.set L$set$859,LFE279-LFB279
	.quad L$set$859
	.byte	0x0
	.byte	0x4
	.set L$set$860,LCFI635-LFB279
	.long L$set$860
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$861,LCFI636-LCFI635
	.long L$set$861
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE399:
.globl _smpGlobal_list.eh
_smpGlobal_list.eh:
LSFDE401:
	.set L$set$862,LEFDE401-LASFDE401
	.long L$set$862
LASFDE401:
	.long	LASFDE401-EH_frame1
	.quad	LFB280-.
	.set L$set$863,LFE280-LFB280
	.quad L$set$863
	.byte	0x0
	.byte	0x4
	.set L$set$864,LCFI638-LFB280
	.long L$set$864
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$865,LCFI639-LCFI638
	.long L$set$865
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$866,LCFI641-LCFI639
	.long L$set$866
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE401:
.globl _smp_print.eh
_smp_print.eh:
LSFDE403:
	.set L$set$867,LEFDE403-LASFDE403
	.long L$set$867
LASFDE403:
	.long	LASFDE403-EH_frame1
	.quad	LFB281-.
	.set L$set$868,LFE281-LFB281
	.quad L$set$868
	.byte	0x0
	.byte	0x4
	.set L$set$869,LCFI642-LFB281
	.long L$set$869
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$870,LCFI643-LCFI642
	.long L$set$870
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$871,LCFI645-LCFI643
	.long L$set$871
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE403:
.globl _smpGlobal_print_arg.eh
_smpGlobal_print_arg.eh:
LSFDE405:
	.set L$set$872,LEFDE405-LASFDE405
	.long L$set$872
LASFDE405:
	.long	LASFDE405-EH_frame1
	.quad	LFB282-.
	.set L$set$873,LFE282-LFB282
	.quad L$set$873
	.byte	0x0
	.byte	0x4
	.set L$set$874,LCFI646-LFB282
	.long L$set$874
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$875,LCFI647-LCFI646
	.long L$set$875
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$876,LCFI649-LCFI647
	.long L$set$876
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE405:
.globl _smp_printf.eh
_smp_printf.eh:
LSFDE407:
	.set L$set$877,LEFDE407-LASFDE407
	.long L$set$877
LASFDE407:
	.long	LASFDE407-EH_frame1
	.quad	LFB283-.
	.set L$set$878,LFE283-LFB283
	.quad L$set$878
	.byte	0x0
	.byte	0x4
	.set L$set$879,LCFI650-LFB283
	.long L$set$879
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$880,LCFI651-LCFI650
	.long L$set$880
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE407:
.globl _smp_printf_arg.eh
_smp_printf_arg.eh:
LSFDE409:
	.set L$set$881,LEFDE409-LASFDE409
	.long L$set$881
LASFDE409:
	.long	LASFDE409-EH_frame1
	.quad	LFB284-.
	.set L$set$882,LFE284-LFB284
	.quad L$set$882
	.byte	0x0
	.byte	0x4
	.set L$set$883,LCFI653-LFB284
	.long L$set$883
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$884,LCFI654-LCFI653
	.long L$set$884
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE409:
.globl _smp_println.eh
_smp_println.eh:
LSFDE411:
	.set L$set$885,LEFDE411-LASFDE411
	.long L$set$885
LASFDE411:
	.long	LASFDE411-EH_frame1
	.quad	LFB285-.
	.set L$set$886,LFE285-LFB285
	.quad L$set$886
	.byte	0x0
	.byte	0x4
	.set L$set$887,LCFI656-LFB285
	.long L$set$887
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$888,LCFI657-LCFI656
	.long L$set$888
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE411:
.globl _smpGlobal_println_arg.eh
_smpGlobal_println_arg.eh:
LSFDE413:
	.set L$set$889,LEFDE413-LASFDE413
	.long L$set$889
LASFDE413:
	.long	LASFDE413-EH_frame1
	.quad	LFB286-.
	.set L$set$890,LFE286-LFB286
	.quad L$set$890
	.byte	0x0
	.byte	0x4
	.set L$set$891,LCFI659-LFB286
	.long L$set$891
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$892,LCFI660-LCFI659
	.long L$set$892
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$893,LCFI662-LCFI660
	.long L$set$893
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE413:
.globl _smpGlobal_rand.eh
_smpGlobal_rand.eh:
LSFDE415:
	.set L$set$894,LEFDE415-LASFDE415
	.long L$set$894
LASFDE415:
	.long	LASFDE415-EH_frame1
	.quad	LFB287-.
	.set L$set$895,LFE287-LFB287
	.quad L$set$895
	.byte	0x0
	.byte	0x4
	.set L$set$896,LCFI663-LFB287
	.long L$set$896
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$897,LCFI664-LCFI663
	.long L$set$897
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE415:
.globl _smpGlobal_set_seed.eh
_smpGlobal_set_seed.eh:
LSFDE417:
	.set L$set$898,LEFDE417-LASFDE417
	.long L$set$898
LASFDE417:
	.long	LASFDE417-EH_frame1
	.quad	LFB288-.
	.set L$set$899,LFE288-LFB288
	.quad L$set$899
	.byte	0x0
	.byte	0x4
	.set L$set$900,LCFI666-LFB288
	.long L$set$900
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$901,LCFI667-LCFI666
	.long L$set$901
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE417:
.globl _smpGlobal_sprintf.eh
_smpGlobal_sprintf.eh:
LSFDE419:
	.set L$set$902,LEFDE419-LASFDE419
	.long L$set$902
LASFDE419:
	.long	LASFDE419-EH_frame1
	.quad	LFB289-.
	.set L$set$903,LFE289-LFB289
	.quad L$set$903
	.byte	0x0
	.byte	0x4
	.set L$set$904,LCFI669-LFB289
	.long L$set$904
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$905,LCFI670-LCFI669
	.long L$set$905
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$906,LCFI672-LCFI670
	.long L$set$906
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE419:
.globl _smpGlobal_vsprintf.eh
_smpGlobal_vsprintf.eh:
LSFDE421:
	.set L$set$907,LEFDE421-LASFDE421
	.long L$set$907
LASFDE421:
	.long	LASFDE421-EH_frame1
	.quad	LFB290-.
	.set L$set$908,LFE290-LFB290
	.quad L$set$908
	.byte	0x0
	.byte	0x4
	.set L$set$909,LCFI673-LFB290
	.long L$set$909
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$910,LCFI674-LCFI673
	.long L$set$910
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE421:
.globl _smpGlobal_sprintf_arg.eh
_smpGlobal_sprintf_arg.eh:
LSFDE423:
	.set L$set$911,LEFDE423-LASFDE423
	.long L$set$911
LASFDE423:
	.long	LASFDE423-EH_frame1
	.quad	LFB291-.
	.set L$set$912,LFE291-LFB291
	.quad L$set$912
	.byte	0x0
	.byte	0x4
	.set L$set$913,LCFI676-LFB291
	.long L$set$913
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$914,LCFI677-LCFI676
	.long L$set$914
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE423:
.globl _obj_put_fmt.eh
_obj_put_fmt.eh:
LSFDE425:
	.set L$set$915,LEFDE425-LASFDE425
	.long L$set$915
LASFDE425:
	.long	LASFDE425-EH_frame1
	.quad	LFB292-.
	.set L$set$916,LFE292-LFB292
	.quad L$set$916
	.byte	0x0
	.byte	0x4
	.set L$set$917,LCFI679-LFB292
	.long L$set$917
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$918,LCFI680-LCFI679
	.long L$set$918
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$919,LCFI682-LCFI680
	.long L$set$919
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE425:
.globl _smpGlobal_throw.eh
_smpGlobal_throw.eh:
LSFDE427:
	.set L$set$920,LEFDE427-LASFDE427
	.long L$set$920
LASFDE427:
	.long	LASFDE427-EH_frame1
	.quad	LFB293-.
	.set L$set$921,LFE293-LFB293
	.quad L$set$921
	.byte	0x0
	.byte	0x4
	.set L$set$922,LCFI683-LFB293
	.long L$set$922
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$923,LCFI684-LCFI683
	.long L$set$923
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$924,LCFI686-LCFI684
	.long L$set$924
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE427:
.globl _smpGlobal_throw_arg.eh
_smpGlobal_throw_arg.eh:
LSFDE429:
	.set L$set$925,LEFDE429-LASFDE429
	.long L$set$925
LASFDE429:
	.long	LASFDE429-EH_frame1
	.quad	LFB294-.
	.set L$set$926,LFE294-LFB294
	.quad L$set$926
	.byte	0x0
	.byte	0x4
	.set L$set$927,LCFI687-LFB294
	.long L$set$927
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$928,LCFI688-LCFI687
	.long L$set$928
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$929,LCFI690-LCFI688
	.long L$set$929
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE429:
.globl _smpHash_create_class.eh
_smpHash_create_class.eh:
LSFDE431:
	.set L$set$930,LEFDE431-LASFDE431
	.long L$set$930
LASFDE431:
	.long	LASFDE431-EH_frame1
	.quad	LFB295-.
	.set L$set$931,LFE295-LFB295
	.quad L$set$931
	.byte	0x0
	.byte	0x4
	.set L$set$932,LCFI691-LFB295
	.long L$set$932
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$933,LCFI692-LCFI691
	.long L$set$933
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE431:
.globl _smpHash_add_now.eh
_smpHash_add_now.eh:
LSFDE433:
	.set L$set$934,LEFDE433-LASFDE433
	.long L$set$934
LASFDE433:
	.long	LASFDE433-EH_frame1
	.quad	LFB296-.
	.set L$set$935,LFE296-LFB296
	.quad L$set$935
	.byte	0x0
	.byte	0x4
	.set L$set$936,LCFI694-LFB296
	.long L$set$936
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$937,LCFI695-LCFI694
	.long L$set$937
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE433:
.globl _smpHash_core_add_now.eh
_smpHash_core_add_now.eh:
LSFDE435:
	.set L$set$938,LEFDE435-LASFDE435
	.long L$set$938
LASFDE435:
	.long	LASFDE435-EH_frame1
	.quad	LFB297-.
	.set L$set$939,LFE297-LFB297
	.quad L$set$939
	.byte	0x0
	.byte	0x4
	.set L$set$940,LCFI697-LFB297
	.long L$set$940
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$941,LCFI698-LCFI697
	.long L$set$941
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$942,LCFI700-LCFI698
	.long L$set$942
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE435:
.globl _smpHash_at.eh
_smpHash_at.eh:
LSFDE437:
	.set L$set$943,LEFDE437-LASFDE437
	.long L$set$943
LASFDE437:
	.long	LASFDE437-EH_frame1
	.quad	LFB298-.
	.set L$set$944,LFE298-LFB298
	.quad L$set$944
	.byte	0x0
	.byte	0x4
	.set L$set$945,LCFI701-LFB298
	.long L$set$945
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$946,LCFI702-LCFI701
	.long L$set$946
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE437:
.globl _smpHash_at_assign.eh
_smpHash_at_assign.eh:
LSFDE439:
	.set L$set$947,LEFDE439-LASFDE439
	.long L$set$947
LASFDE439:
	.long	LASFDE439-EH_frame1
	.quad	LFB299-.
	.set L$set$948,LFE299-LFB299
	.quad L$set$948
	.byte	0x0
	.byte	0x4
	.set L$set$949,LCFI704-LFB299
	.long L$set$949
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$950,LCFI705-LCFI704
	.long L$set$950
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE439:
.globl _smpHash_clear.eh
_smpHash_clear.eh:
LSFDE441:
	.set L$set$951,LEFDE441-LASFDE441
	.long L$set$951
LASFDE441:
	.long	LASFDE441-EH_frame1
	.quad	LFB300-.
	.set L$set$952,LFE300-LFB300
	.quad L$set$952
	.byte	0x0
	.byte	0x4
	.set L$set$953,LCFI707-LFB300
	.long L$set$953
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$954,LCFI708-LCFI707
	.long L$set$954
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$955,LCFI710-LCFI708
	.long L$set$955
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE441:
.globl _smpHash_core_clear.eh
_smpHash_core_clear.eh:
LSFDE443:
	.set L$set$956,LEFDE443-LASFDE443
	.long L$set$956
LASFDE443:
	.long	LASFDE443-EH_frame1
	.quad	LFB301-.
	.set L$set$957,LFE301-LFB301
	.quad L$set$957
	.byte	0x0
	.byte	0x4
	.set L$set$958,LCFI711-LFB301
	.long L$set$958
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$959,LCFI712-LCFI711
	.long L$set$959
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE443:
.globl _smpHash_containsp.eh
_smpHash_containsp.eh:
LSFDE445:
	.set L$set$960,LEFDE445-LASFDE445
	.long L$set$960
LASFDE445:
	.long	LASFDE445-EH_frame1
	.quad	LFB302-.
	.set L$set$961,LFE302-LFB302
	.quad L$set$961
	.byte	0x0
	.byte	0x4
	.set L$set$962,LCFI714-LFB302
	.long L$set$962
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$963,LCFI715-LCFI714
	.long L$set$963
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$964,LCFI717-LCFI715
	.long L$set$964
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE445:
.globl _smpHash_core_copy.eh
_smpHash_core_copy.eh:
LSFDE447:
	.set L$set$965,LEFDE447-LASFDE447
	.long L$set$965
LASFDE447:
	.long	LASFDE447-EH_frame1
	.quad	LFB303-.
	.set L$set$966,LFE303-LFB303
	.quad L$set$966
	.byte	0x0
	.byte	0x4
	.set L$set$967,LCFI718-LFB303
	.long L$set$967
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$968,LCFI719-LCFI718
	.long L$set$968
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE447:
.globl _smpHash_gc_mark.eh
_smpHash_gc_mark.eh:
LSFDE449:
	.set L$set$969,LEFDE449-LASFDE449
	.long L$set$969
LASFDE449:
	.long	LASFDE449-EH_frame1
	.quad	LFB304-.
	.set L$set$970,LFE304-LFB304
	.quad L$set$970
	.byte	0x0
	.byte	0x4
	.set L$set$971,LCFI721-LFB304
	.long L$set$971
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$972,LCFI722-LCFI721
	.long L$set$972
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE449:
.globl _smpHash_init.eh
_smpHash_init.eh:
LSFDE451:
	.set L$set$973,LEFDE451-LASFDE451
	.long L$set$973
LASFDE451:
	.long	LASFDE451-EH_frame1
	.quad	LFB305-.
	.set L$set$974,LFE305-LFB305
	.quad L$set$974
	.byte	0x0
	.byte	0x4
	.set L$set$975,LCFI724-LFB305
	.long L$set$975
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$976,LCFI725-LCFI724
	.long L$set$976
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$977,LCFI727-LCFI725
	.long L$set$977
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE451:
.globl _smpHash_init_capacity.eh
_smpHash_init_capacity.eh:
LSFDE453:
	.set L$set$978,LEFDE453-LASFDE453
	.long L$set$978
LASFDE453:
	.long	LASFDE453-EH_frame1
	.quad	LFB306-.
	.set L$set$979,LFE306-LFB306
	.quad L$set$979
	.byte	0x0
	.byte	0x4
	.set L$set$980,LCFI728-LFB306
	.long L$set$980
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$981,LCFI729-LCFI728
	.long L$set$981
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$982,LCFI732-LCFI729
	.long L$set$982
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE453:
.globl _smpHash_core_init_capacity.eh
_smpHash_core_init_capacity.eh:
LSFDE455:
	.set L$set$983,LEFDE455-LASFDE455
	.long L$set$983
LASFDE455:
	.long	LASFDE455-EH_frame1
	.quad	LFB307-.
	.set L$set$984,LFE307-LFB307
	.quad L$set$984
	.byte	0x0
	.byte	0x4
	.set L$set$985,LCFI733-LFB307
	.long L$set$985
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$986,LCFI734-LCFI733
	.long L$set$986
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE455:
.globl _smpHash_to_s.eh
_smpHash_to_s.eh:
LSFDE457:
	.set L$set$987,LEFDE457-LASFDE457
	.long L$set$987
LASFDE457:
	.long	LASFDE457-EH_frame1
	.quad	LFB308-.
	.set L$set$988,LFE308-LFB308
	.quad L$set$988
	.byte	0x0
	.byte	0x4
	.set L$set$989,LCFI736-LFB308
	.long L$set$989
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$990,LCFI737-LCFI736
	.long L$set$990
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$991,LCFI739-LCFI737
	.long L$set$991
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE457:
.globl _smpHash_write.eh
_smpHash_write.eh:
LSFDE459:
	.set L$set$992,LEFDE459-LASFDE459
	.long L$set$992
LASFDE459:
	.long	LASFDE459-EH_frame1
	.quad	LFB309-.
	.set L$set$993,LFE309-LFB309
	.quad L$set$993
	.byte	0x0
	.byte	0x4
	.set L$set$994,LCFI740-LFB309
	.long L$set$994
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$995,LCFI741-LCFI740
	.long L$set$995
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$996,LCFI743-LCFI741
	.long L$set$996
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE459:
.globl _smpHash_make_string.eh
_smpHash_make_string.eh:
LSFDE461:
	.set L$set$997,LEFDE461-LASFDE461
	.long L$set$997
LASFDE461:
	.long	LASFDE461-EH_frame1
	.quad	LFB310-.
	.set L$set$998,LFE310-LFB310
	.quad L$set$998
	.byte	0x0
	.byte	0x4
	.set L$set$999,LCFI744-LFB310
	.long L$set$999
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1000,LCFI745-LCFI744
	.long L$set$1000
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE461:
.globl _smpInteger_create_class.eh
_smpInteger_create_class.eh:
LSFDE463:
	.set L$set$1001,LEFDE463-LASFDE463
	.long L$set$1001
LASFDE463:
	.long	LASFDE463-EH_frame1
	.quad	LFB311-.
	.set L$set$1002,LFE311-LFB311
	.quad L$set$1002
	.byte	0x0
	.byte	0x4
	.set L$set$1003,LCFI747-LFB311
	.long L$set$1003
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1004,LCFI748-LCFI747
	.long L$set$1004
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1005,LCFI750-LCFI748
	.long L$set$1005
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE463:
.globl _smpInteger_init_mpz.eh
_smpInteger_init_mpz.eh:
LSFDE465:
	.set L$set$1006,LEFDE465-LASFDE465
	.long L$set$1006
LASFDE465:
	.long	LASFDE465-EH_frame1
	.quad	LFB312-.
	.set L$set$1007,LFE312-LFB312
	.quad L$set$1007
	.byte	0x0
	.byte	0x4
	.set L$set$1008,LCFI751-LFB312
	.long L$set$1008
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1009,LCFI752-LCFI751
	.long L$set$1009
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1010,LCFI754-LCFI752
	.long L$set$1010
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE465:
.globl _smpInteger_init_mpz_ref.eh
_smpInteger_init_mpz_ref.eh:
LSFDE467:
	.set L$set$1011,LEFDE467-LASFDE467
	.long L$set$1011
LASFDE467:
	.long	LASFDE467-EH_frame1
	.quad	LFB313-.
	.set L$set$1012,LFE313-LFB313
	.quad L$set$1012
	.byte	0x0
	.byte	0x4
	.set L$set$1013,LCFI755-LFB313
	.long L$set$1013
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1014,LCFI756-LCFI755
	.long L$set$1014
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1015,LCFI758-LCFI756
	.long L$set$1015
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE467:
.globl _smpInteger_init_clong.eh
_smpInteger_init_clong.eh:
LSFDE469:
	.set L$set$1016,LEFDE469-LASFDE469
	.long L$set$1016
LASFDE469:
	.long	LASFDE469-EH_frame1
	.quad	LFB314-.
	.set L$set$1017,LFE314-LFB314
	.quad L$set$1017
	.byte	0x0
	.byte	0x4
	.set L$set$1018,LCFI759-LFB314
	.long L$set$1018
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1019,LCFI760-LCFI759
	.long L$set$1019
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1020,LCFI762-LCFI760
	.long L$set$1020
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE469:
.globl _smpInteger_init_str.eh
_smpInteger_init_str.eh:
LSFDE471:
	.set L$set$1021,LEFDE471-LASFDE471
	.long L$set$1021
LASFDE471:
	.long	LASFDE471-EH_frame1
	.quad	LFB315-.
	.set L$set$1022,LFE315-LFB315
	.quad L$set$1022
	.byte	0x0
	.byte	0x4
	.set L$set$1023,LCFI763-LFB315
	.long L$set$1023
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1024,LCFI764-LCFI763
	.long L$set$1024
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1025,LCFI766-LCFI764
	.long L$set$1025
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE471:
.globl _smpInteger_clear.eh
_smpInteger_clear.eh:
LSFDE473:
	.set L$set$1026,LEFDE473-LASFDE473
	.long L$set$1026
LASFDE473:
	.long	LASFDE473-EH_frame1
	.quad	LFB316-.
	.set L$set$1027,LFE316-LFB316
	.quad L$set$1027
	.byte	0x0
	.byte	0x4
	.set L$set$1028,LCFI767-LFB316
	.long L$set$1028
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1029,LCFI768-LCFI767
	.long L$set$1029
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1030,LCFI770-LCFI768
	.long L$set$1030
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE473:
.globl _smpInteger_add.eh
_smpInteger_add.eh:
LSFDE475:
	.set L$set$1031,LEFDE475-LASFDE475
	.long L$set$1031
LASFDE475:
	.long	LASFDE475-EH_frame1
	.quad	LFB317-.
	.set L$set$1032,LFE317-LFB317
	.quad L$set$1032
	.byte	0x0
	.byte	0x4
	.set L$set$1033,LCFI771-LFB317
	.long L$set$1033
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1034,LCFI772-LCFI771
	.long L$set$1034
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE475:
.globl _smpInteger_sub.eh
_smpInteger_sub.eh:
LSFDE477:
	.set L$set$1035,LEFDE477-LASFDE477
	.long L$set$1035
LASFDE477:
	.long	LASFDE477-EH_frame1
	.quad	LFB318-.
	.set L$set$1036,LFE318-LFB318
	.quad L$set$1036
	.byte	0x0
	.byte	0x4
	.set L$set$1037,LCFI774-LFB318
	.long L$set$1037
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1038,LCFI775-LCFI774
	.long L$set$1038
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE477:
.globl _smpInteger_mul.eh
_smpInteger_mul.eh:
LSFDE479:
	.set L$set$1039,LEFDE479-LASFDE479
	.long L$set$1039
LASFDE479:
	.long	LASFDE479-EH_frame1
	.quad	LFB319-.
	.set L$set$1040,LFE319-LFB319
	.quad L$set$1040
	.byte	0x0
	.byte	0x4
	.set L$set$1041,LCFI777-LFB319
	.long L$set$1041
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1042,LCFI778-LCFI777
	.long L$set$1042
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE479:
.globl _smpInteger_div.eh
_smpInteger_div.eh:
LSFDE481:
	.set L$set$1043,LEFDE481-LASFDE481
	.long L$set$1043
LASFDE481:
	.long	LASFDE481-EH_frame1
	.quad	LFB320-.
	.set L$set$1044,LFE320-LFB320
	.quad L$set$1044
	.byte	0x0
	.byte	0x4
	.set L$set$1045,LCFI780-LFB320
	.long L$set$1045
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1046,LCFI781-LCFI780
	.long L$set$1046
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE481:
.globl _smpInteger_mod.eh
_smpInteger_mod.eh:
LSFDE483:
	.set L$set$1047,LEFDE483-LASFDE483
	.long L$set$1047
LASFDE483:
	.long	LASFDE483-EH_frame1
	.quad	LFB321-.
	.set L$set$1048,LFE321-LFB321
	.quad L$set$1048
	.byte	0x0
	.byte	0x4
	.set L$set$1049,LCFI783-LFB321
	.long L$set$1049
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1050,LCFI784-LCFI783
	.long L$set$1050
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE483:
.globl _smpInteger_pow.eh
_smpInteger_pow.eh:
LSFDE485:
	.set L$set$1051,LEFDE485-LASFDE485
	.long L$set$1051
LASFDE485:
	.long	LASFDE485-EH_frame1
	.quad	LFB322-.
	.set L$set$1052,LFE322-LFB322
	.quad L$set$1052
	.byte	0x0
	.byte	0x4
	.set L$set$1053,LCFI786-LFB322
	.long L$set$1053
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1054,LCFI787-LCFI786
	.long L$set$1054
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE485:
.globl _smpInteger_shl.eh
_smpInteger_shl.eh:
LSFDE487:
	.set L$set$1055,LEFDE487-LASFDE487
	.long L$set$1055
LASFDE487:
	.long	LASFDE487-EH_frame1
	.quad	LFB323-.
	.set L$set$1056,LFE323-LFB323
	.quad L$set$1056
	.byte	0x0
	.byte	0x4
	.set L$set$1057,LCFI789-LFB323
	.long L$set$1057
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1058,LCFI790-LCFI789
	.long L$set$1058
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE487:
.globl _smpInteger_shr.eh
_smpInteger_shr.eh:
LSFDE489:
	.set L$set$1059,LEFDE489-LASFDE489
	.long L$set$1059
LASFDE489:
	.long	LASFDE489-EH_frame1
	.quad	LFB324-.
	.set L$set$1060,LFE324-LFB324
	.quad L$set$1060
	.byte	0x0
	.byte	0x4
	.set L$set$1061,LCFI792-LFB324
	.long L$set$1061
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1062,LCFI793-LCFI792
	.long L$set$1062
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE489:
.globl _smpInteger_and.eh
_smpInteger_and.eh:
LSFDE491:
	.set L$set$1063,LEFDE491-LASFDE491
	.long L$set$1063
LASFDE491:
	.long	LASFDE491-EH_frame1
	.quad	LFB325-.
	.set L$set$1064,LFE325-LFB325
	.quad L$set$1064
	.byte	0x0
	.byte	0x4
	.set L$set$1065,LCFI795-LFB325
	.long L$set$1065
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1066,LCFI796-LCFI795
	.long L$set$1066
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE491:
.globl _smpInteger_ior.eh
_smpInteger_ior.eh:
LSFDE493:
	.set L$set$1067,LEFDE493-LASFDE493
	.long L$set$1067
LASFDE493:
	.long	LASFDE493-EH_frame1
	.quad	LFB326-.
	.set L$set$1068,LFE326-LFB326
	.quad L$set$1068
	.byte	0x0
	.byte	0x4
	.set L$set$1069,LCFI798-LFB326
	.long L$set$1069
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1070,LCFI799-LCFI798
	.long L$set$1070
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE493:
.globl _smpInteger_not.eh
_smpInteger_not.eh:
LSFDE495:
	.set L$set$1071,LEFDE495-LASFDE495
	.long L$set$1071
LASFDE495:
	.long	LASFDE495-EH_frame1
	.quad	LFB327-.
	.set L$set$1072,LFE327-LFB327
	.quad L$set$1072
	.byte	0x0
	.byte	0x4
	.set L$set$1073,LCFI801-LFB327
	.long L$set$1073
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1074,LCFI802-LCFI801
	.long L$set$1074
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE495:
.globl _smpInteger_xor.eh
_smpInteger_xor.eh:
LSFDE497:
	.set L$set$1075,LEFDE497-LASFDE497
	.long L$set$1075
LASFDE497:
	.long	LASFDE497-EH_frame1
	.quad	LFB328-.
	.set L$set$1076,LFE328-LFB328
	.quad L$set$1076
	.byte	0x0
	.byte	0x4
	.set L$set$1077,LCFI804-LFB328
	.long L$set$1077
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1078,LCFI805-LCFI804
	.long L$set$1078
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE497:
.globl _smpInteger_inc.eh
_smpInteger_inc.eh:
LSFDE499:
	.set L$set$1079,LEFDE499-LASFDE499
	.long L$set$1079
LASFDE499:
	.long	LASFDE499-EH_frame1
	.quad	LFB329-.
	.set L$set$1080,LFE329-LFB329
	.quad L$set$1080
	.byte	0x0
	.byte	0x4
	.set L$set$1081,LCFI807-LFB329
	.long L$set$1081
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1082,LCFI808-LCFI807
	.long L$set$1082
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1083,LCFI810-LCFI808
	.long L$set$1083
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE499:
.globl _smpInteger_dec.eh
_smpInteger_dec.eh:
LSFDE501:
	.set L$set$1084,LEFDE501-LASFDE501
	.long L$set$1084
LASFDE501:
	.long	LASFDE501-EH_frame1
	.quad	LFB330-.
	.set L$set$1085,LFE330-LFB330
	.quad L$set$1085
	.byte	0x0
	.byte	0x4
	.set L$set$1086,LCFI811-LFB330
	.long L$set$1086
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1087,LCFI812-LCFI811
	.long L$set$1087
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1088,LCFI814-LCFI812
	.long L$set$1088
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE501:
.globl _smpInteger_cmp_cint.eh
_smpInteger_cmp_cint.eh:
LSFDE503:
	.set L$set$1089,LEFDE503-LASFDE503
	.long L$set$1089
LASFDE503:
	.long	LASFDE503-EH_frame1
	.quad	LFB331-.
	.set L$set$1090,LFE331-LFB331
	.quad L$set$1090
	.byte	0x0
	.byte	0x4
	.set L$set$1091,LCFI815-LFB331
	.long L$set$1091
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1092,LCFI816-LCFI815
	.long L$set$1092
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1093,LCFI818-LCFI816
	.long L$set$1093
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE503:
.globl _smpInteger_cmp.eh
_smpInteger_cmp.eh:
LSFDE505:
	.set L$set$1094,LEFDE505-LASFDE505
	.long L$set$1094
LASFDE505:
	.long	LASFDE505-EH_frame1
	.quad	LFB332-.
	.set L$set$1095,LFE332-LFB332
	.quad L$set$1095
	.byte	0x0
	.byte	0x4
	.set L$set$1096,LCFI819-LFB332
	.long L$set$1096
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1097,LCFI820-LCFI819
	.long L$set$1097
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE505:
.globl _smpInteger_equalp.eh
_smpInteger_equalp.eh:
LSFDE507:
	.set L$set$1098,LEFDE507-LASFDE507
	.long L$set$1098
LASFDE507:
	.long	LASFDE507-EH_frame1
	.quad	LFB333-.
	.set L$set$1099,LFE333-LFB333
	.quad L$set$1099
	.byte	0x0
	.byte	0x4
	.set L$set$1100,LCFI822-LFB333
	.long L$set$1100
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1101,LCFI823-LCFI822
	.long L$set$1101
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE507:
.globl _smpInteger_nequalp.eh
_smpInteger_nequalp.eh:
LSFDE509:
	.set L$set$1102,LEFDE509-LASFDE509
	.long L$set$1102
LASFDE509:
	.long	LASFDE509-EH_frame1
	.quad	LFB334-.
	.set L$set$1103,LFE334-LFB334
	.quad L$set$1103
	.byte	0x0
	.byte	0x4
	.set L$set$1104,LCFI825-LFB334
	.long L$set$1104
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1105,LCFI826-LCFI825
	.long L$set$1105
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE509:
.globl _smpInteger_lt.eh
_smpInteger_lt.eh:
LSFDE511:
	.set L$set$1106,LEFDE511-LASFDE511
	.long L$set$1106
LASFDE511:
	.long	LASFDE511-EH_frame1
	.quad	LFB335-.
	.set L$set$1107,LFE335-LFB335
	.quad L$set$1107
	.byte	0x0
	.byte	0x4
	.set L$set$1108,LCFI828-LFB335
	.long L$set$1108
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1109,LCFI829-LCFI828
	.long L$set$1109
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE511:
.globl _smpInteger_le.eh
_smpInteger_le.eh:
LSFDE513:
	.set L$set$1110,LEFDE513-LASFDE513
	.long L$set$1110
LASFDE513:
	.long	LASFDE513-EH_frame1
	.quad	LFB336-.
	.set L$set$1111,LFE336-LFB336
	.quad L$set$1111
	.byte	0x0
	.byte	0x4
	.set L$set$1112,LCFI831-LFB336
	.long L$set$1112
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1113,LCFI832-LCFI831
	.long L$set$1113
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE513:
.globl _smpInteger_ge.eh
_smpInteger_ge.eh:
LSFDE515:
	.set L$set$1114,LEFDE515-LASFDE515
	.long L$set$1114
LASFDE515:
	.long	LASFDE515-EH_frame1
	.quad	LFB337-.
	.set L$set$1115,LFE337-LFB337
	.quad L$set$1115
	.byte	0x0
	.byte	0x4
	.set L$set$1116,LCFI834-LFB337
	.long L$set$1116
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1117,LCFI835-LCFI834
	.long L$set$1117
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE515:
.globl _smpInteger_gt.eh
_smpInteger_gt.eh:
LSFDE517:
	.set L$set$1118,LEFDE517-LASFDE517
	.long L$set$1118
LASFDE517:
	.long	LASFDE517-EH_frame1
	.quad	LFB338-.
	.set L$set$1119,LFE338-LFB338
	.quad L$set$1119
	.byte	0x0
	.byte	0x4
	.set L$set$1120,LCFI837-LFB338
	.long L$set$1120
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1121,LCFI838-LCFI837
	.long L$set$1121
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE517:
.globl _smpInteger_eq.eh
_smpInteger_eq.eh:
LSFDE519:
	.set L$set$1122,LEFDE519-LASFDE519
	.long L$set$1122
LASFDE519:
	.long	LASFDE519-EH_frame1
	.quad	LFB339-.
	.set L$set$1123,LFE339-LFB339
	.quad L$set$1123
	.byte	0x0
	.byte	0x4
	.set L$set$1124,LCFI840-LFB339
	.long L$set$1124
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1125,LCFI841-LCFI840
	.long L$set$1125
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1126,LCFI843-LCFI841
	.long L$set$1126
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE519:
.globl _smpInteger_range.eh
_smpInteger_range.eh:
LSFDE521:
	.set L$set$1127,LEFDE521-LASFDE521
	.long L$set$1127
LASFDE521:
	.long	LASFDE521-EH_frame1
	.quad	LFB340-.
	.set L$set$1128,LFE340-LFB340
	.quad L$set$1128
	.byte	0x0
	.byte	0x4
	.set L$set$1129,LCFI844-LFB340
	.long L$set$1129
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1130,LCFI845-LCFI844
	.long L$set$1130
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1131,LCFI847-LCFI845
	.long L$set$1131
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE521:
.globl _smpInteger_to_clong.eh
_smpInteger_to_clong.eh:
LSFDE523:
	.set L$set$1132,LEFDE523-LASFDE523
	.long L$set$1132
LASFDE523:
	.long	LASFDE523-EH_frame1
	.quad	LFB341-.
	.set L$set$1133,LFE341-LFB341
	.quad L$set$1133
	.byte	0x0
	.byte	0x4
	.set L$set$1134,LCFI848-LFB341
	.long L$set$1134
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1135,LCFI849-LCFI848
	.long L$set$1135
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1136,LCFI851-LCFI849
	.long L$set$1136
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE523:
.globl _smpInteger_to_s.eh
_smpInteger_to_s.eh:
LSFDE525:
	.set L$set$1137,LEFDE525-LASFDE525
	.long L$set$1137
LASFDE525:
	.long	LASFDE525-EH_frame1
	.quad	LFB342-.
	.set L$set$1138,LFE342-LFB342
	.quad L$set$1138
	.byte	0x0
	.byte	0x4
	.set L$set$1139,LCFI852-LFB342
	.long L$set$1139
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1140,LCFI853-LCFI852
	.long L$set$1140
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE525:
.globl _smpList_create_class.eh
_smpList_create_class.eh:
LSFDE527:
	.set L$set$1141,LEFDE527-LASFDE527
	.long L$set$1141
LASFDE527:
	.long	LASFDE527-EH_frame1
	.quad	LFB343-.
	.set L$set$1142,LFE343-LFB343
	.quad L$set$1142
	.byte	0x0
	.byte	0x4
	.set L$set$1143,LCFI855-LFB343
	.long L$set$1143
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1144,LCFI856-LCFI855
	.long L$set$1144
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE527:
.globl _smpList_add.eh
_smpList_add.eh:
LSFDE529:
	.set L$set$1145,LEFDE529-LASFDE529
	.long L$set$1145
LASFDE529:
	.long	LASFDE529-EH_frame1
	.quad	LFB344-.
	.set L$set$1146,LFE344-LFB344
	.quad L$set$1146
	.byte	0x0
	.byte	0x4
	.set L$set$1147,LCFI858-LFB344
	.long L$set$1147
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1148,LCFI859-LCFI858
	.long L$set$1148
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE529:
.globl _smpList_add_now.eh
_smpList_add_now.eh:
LSFDE531:
	.set L$set$1149,LEFDE531-LASFDE531
	.long L$set$1149
LASFDE531:
	.long	LASFDE531-EH_frame1
	.quad	LFB345-.
	.set L$set$1150,LFE345-LFB345
	.quad L$set$1150
	.byte	0x0
	.byte	0x4
	.set L$set$1151,LCFI861-LFB345
	.long L$set$1151
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1152,LCFI862-LCFI861
	.long L$set$1152
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE531:
.globl _smpList_append.eh
_smpList_append.eh:
LSFDE533:
	.set L$set$1153,LEFDE533-LASFDE533
	.long L$set$1153
LASFDE533:
	.long	LASFDE533-EH_frame1
	.quad	LFB346-.
	.set L$set$1154,LFE346-LFB346
	.quad L$set$1154
	.byte	0x0
	.byte	0x4
	.set L$set$1155,LCFI864-LFB346
	.long L$set$1155
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1156,LCFI865-LCFI864
	.long L$set$1156
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE533:
.globl _smpList_append_now.eh
_smpList_append_now.eh:
LSFDE535:
	.set L$set$1157,LEFDE535-LASFDE535
	.long L$set$1157
LASFDE535:
	.long	LASFDE535-EH_frame1
	.quad	LFB347-.
	.set L$set$1158,LFE347-LFB347
	.quad L$set$1158
	.byte	0x0
	.byte	0x4
	.set L$set$1159,LCFI867-LFB347
	.long L$set$1159
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1160,LCFI868-LCFI867
	.long L$set$1160
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE535:
.globl _smpList_at.eh
_smpList_at.eh:
LSFDE537:
	.set L$set$1161,LEFDE537-LASFDE537
	.long L$set$1161
LASFDE537:
	.long	LASFDE537-EH_frame1
	.quad	LFB348-.
	.set L$set$1162,LFE348-LFB348
	.quad L$set$1162
	.byte	0x0
	.byte	0x4
	.set L$set$1163,LCFI870-LFB348
	.long L$set$1163
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1164,LCFI871-LCFI870
	.long L$set$1164
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE537:
.globl _smpList_at_c.eh
_smpList_at_c.eh:
LSFDE539:
	.set L$set$1165,LEFDE539-LASFDE539
	.long L$set$1165
LASFDE539:
	.long	LASFDE539-EH_frame1
	.quad	LFB349-.
	.set L$set$1166,LFE349-LFB349
	.quad L$set$1166
	.byte	0x0
	.byte	0x4
	.set L$set$1167,LCFI873-LFB349
	.long L$set$1167
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1168,LCFI874-LCFI873
	.long L$set$1168
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE539:
.globl _smpList_at_assign.eh
_smpList_at_assign.eh:
LSFDE541:
	.set L$set$1169,LEFDE541-LASFDE541
	.long L$set$1169
LASFDE541:
	.long	LASFDE541-EH_frame1
	.quad	LFB350-.
	.set L$set$1170,LFE350-LFB350
	.quad L$set$1170
	.byte	0x0
	.byte	0x4
	.set L$set$1171,LCFI876-LFB350
	.long L$set$1171
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1172,LCFI877-LCFI876
	.long L$set$1172
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE541:
.globl _smpList_at_assign_c.eh
_smpList_at_assign_c.eh:
LSFDE543:
	.set L$set$1173,LEFDE543-LASFDE543
	.long L$set$1173
LASFDE543:
	.long	LASFDE543-EH_frame1
	.quad	LFB351-.
	.set L$set$1174,LFE351-LFB351
	.quad L$set$1174
	.byte	0x0
	.byte	0x4
	.set L$set$1175,LCFI879-LFB351
	.long L$set$1175
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1176,LCFI880-LCFI879
	.long L$set$1176
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE543:
.globl _smpList_car.eh
_smpList_car.eh:
LSFDE545:
	.set L$set$1177,LEFDE545-LASFDE545
	.long L$set$1177
LASFDE545:
	.long	LASFDE545-EH_frame1
	.quad	LFB352-.
	.set L$set$1178,LFE352-LFB352
	.quad L$set$1178
	.byte	0x0
	.byte	0x4
	.set L$set$1179,LCFI882-LFB352
	.long L$set$1179
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1180,LCFI883-LCFI882
	.long L$set$1180
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE545:
.globl _smpList_cdr.eh
_smpList_cdr.eh:
LSFDE547:
	.set L$set$1181,LEFDE547-LASFDE547
	.long L$set$1181
LASFDE547:
	.long	LASFDE547-EH_frame1
	.quad	LFB353-.
	.set L$set$1182,LFE353-LFB353
	.quad L$set$1182
	.byte	0x0
	.byte	0x4
	.set L$set$1183,LCFI884-LFB353
	.long L$set$1183
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1184,LCFI885-LCFI884
	.long L$set$1184
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE547:
.globl _smpList_concat.eh
_smpList_concat.eh:
LSFDE549:
	.set L$set$1185,LEFDE549-LASFDE549
	.long L$set$1185
LASFDE549:
	.long	LASFDE549-EH_frame1
	.quad	LFB354-.
	.set L$set$1186,LFE354-LFB354
	.quad L$set$1186
	.byte	0x0
	.byte	0x4
	.set L$set$1187,LCFI887-LFB354
	.long L$set$1187
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1188,LCFI888-LCFI887
	.long L$set$1188
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE549:
.globl _smpList_concat_now.eh
_smpList_concat_now.eh:
LSFDE551:
	.set L$set$1189,LEFDE551-LASFDE551
	.long L$set$1189
LASFDE551:
	.long	LASFDE551-EH_frame1
	.quad	LFB355-.
	.set L$set$1190,LFE355-LFB355
	.quad L$set$1190
	.byte	0x0
	.byte	0x4
	.set L$set$1191,LCFI890-LFB355
	.long L$set$1191
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1192,LCFI891-LCFI890
	.long L$set$1192
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE551:
.globl _smpList_copy.eh
_smpList_copy.eh:
LSFDE553:
	.set L$set$1193,LEFDE553-LASFDE553
	.long L$set$1193
LASFDE553:
	.long	LASFDE553-EH_frame1
	.quad	LFB356-.
	.set L$set$1194,LFE356-LFB356
	.quad L$set$1194
	.byte	0x0
	.byte	0x4
	.set L$set$1195,LCFI893-LFB356
	.long L$set$1195
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1196,LCFI894-LCFI893
	.long L$set$1196
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1197,LCFI896-LCFI894
	.long L$set$1197
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE553:
.globl _smpList_each.eh
_smpList_each.eh:
LSFDE555:
	.set L$set$1198,LEFDE555-LASFDE555
	.long L$set$1198
LASFDE555:
	.long	LASFDE555-EH_frame1
	.quad	LFB357-.
	.set L$set$1199,LFE357-LFB357
	.quad L$set$1199
	.byte	0x0
	.byte	0x4
	.set L$set$1200,LCFI897-LFB357
	.long L$set$1200
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1201,LCFI898-LCFI897
	.long L$set$1201
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE555:
.globl _smpList_emptyp.eh
_smpList_emptyp.eh:
LSFDE557:
	.set L$set$1202,LEFDE557-LASFDE557
	.long L$set$1202
LASFDE557:
	.long	LASFDE557-EH_frame1
	.quad	LFB358-.
	.set L$set$1203,LFE358-LFB358
	.quad L$set$1203
	.byte	0x0
	.byte	0x4
	.set L$set$1204,LCFI900-LFB358
	.long L$set$1204
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1205,LCFI901-LCFI900
	.long L$set$1205
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE557:
.globl _smpList_equalp.eh
_smpList_equalp.eh:
LSFDE559:
	.set L$set$1206,LEFDE559-LASFDE559
	.long L$set$1206
LASFDE559:
	.long	LASFDE559-EH_frame1
	.quad	LFB359-.
	.set L$set$1207,LFE359-LFB359
	.quad L$set$1207
	.byte	0x0
	.byte	0x4
	.set L$set$1208,LCFI902-LFB359
	.long L$set$1208
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1209,LCFI903-LCFI902
	.long L$set$1209
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1210,LCFI905-LCFI903
	.long L$set$1210
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE559:
.globl _smpList_gc_mark.eh
_smpList_gc_mark.eh:
LSFDE561:
	.set L$set$1211,LEFDE561-LASFDE561
	.long L$set$1211
LASFDE561:
	.long	LASFDE561-EH_frame1
	.quad	LFB360-.
	.set L$set$1212,LFE360-LFB360
	.quad L$set$1212
	.byte	0x0
	.byte	0x4
	.set L$set$1213,LCFI906-LFB360
	.long L$set$1213
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1214,LCFI907-LCFI906
	.long L$set$1214
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE561:
.globl _smpList_init.eh
_smpList_init.eh:
LSFDE563:
	.set L$set$1215,LEFDE563-LASFDE563
	.long L$set$1215
LASFDE563:
	.long	LASFDE563-EH_frame1
	.quad	LFB361-.
	.set L$set$1216,LFE361-LFB361
	.quad L$set$1216
	.byte	0x0
	.byte	0x4
	.set L$set$1217,LCFI909-LFB361
	.long L$set$1217
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1218,LCFI910-LCFI909
	.long L$set$1218
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1219,LCFI912-LCFI910
	.long L$set$1219
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE563:
.globl _smpList_length.eh
_smpList_length.eh:
LSFDE565:
	.set L$set$1220,LEFDE565-LASFDE565
	.long L$set$1220
LASFDE565:
	.long	LASFDE565-EH_frame1
	.quad	LFB362-.
	.set L$set$1221,LFE362-LFB362
	.quad L$set$1221
	.byte	0x0
	.byte	0x4
	.set L$set$1222,LCFI913-LFB362
	.long L$set$1222
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1223,LCFI914-LCFI913
	.long L$set$1223
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE565:
.globl _smpList_length_clong.eh
_smpList_length_clong.eh:
LSFDE567:
	.set L$set$1224,LEFDE567-LASFDE567
	.long L$set$1224
LASFDE567:
	.long	LASFDE567-EH_frame1
	.quad	LFB363-.
	.set L$set$1225,LFE363-LFB363
	.quad L$set$1225
	.byte	0x0
	.byte	0x4
	.set L$set$1226,LCFI916-LFB363
	.long L$set$1226
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1227,LCFI917-LCFI916
	.long L$set$1227
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE567:
.globl _smpList_map.eh
_smpList_map.eh:
LSFDE569:
	.set L$set$1228,LEFDE569-LASFDE569
	.long L$set$1228
LASFDE569:
	.long	LASFDE569-EH_frame1
	.quad	LFB364-.
	.set L$set$1229,LFE364-LFB364
	.quad L$set$1229
	.byte	0x0
	.byte	0x4
	.set L$set$1230,LCFI918-LFB364
	.long L$set$1230
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1231,LCFI919-LCFI918
	.long L$set$1231
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1232,LCFI921-LCFI919
	.long L$set$1232
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE569:
.globl _smpList_reduce.eh
_smpList_reduce.eh:
LSFDE571:
	.set L$set$1233,LEFDE571-LASFDE571
	.long L$set$1233
LASFDE571:
	.long	LASFDE571-EH_frame1
	.quad	LFB365-.
	.set L$set$1234,LFE365-LFB365
	.quad L$set$1234
	.byte	0x0
	.byte	0x4
	.set L$set$1235,LCFI922-LFB365
	.long L$set$1235
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1236,LCFI923-LCFI922
	.long L$set$1236
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE571:
.globl _smpList_reverse.eh
_smpList_reverse.eh:
LSFDE573:
	.set L$set$1237,LEFDE573-LASFDE573
	.long L$set$1237
LASFDE573:
	.long	LASFDE573-EH_frame1
	.quad	LFB366-.
	.set L$set$1238,LFE366-LFB366
	.quad L$set$1238
	.byte	0x0
	.byte	0x4
	.set L$set$1239,LCFI925-LFB366
	.long L$set$1239
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1240,LCFI926-LCFI925
	.long L$set$1240
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE573:
.globl _smpList_sort.eh
_smpList_sort.eh:
LSFDE575:
	.set L$set$1241,LEFDE575-LASFDE575
	.long L$set$1241
LASFDE575:
	.long	LASFDE575-EH_frame1
	.quad	LFB367-.
	.set L$set$1242,LFE367-LFB367
	.quad L$set$1242
	.byte	0x0
	.byte	0x4
	.set L$set$1243,LCFI928-LFB367
	.long L$set$1243
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1244,LCFI929-LCFI928
	.long L$set$1244
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE575:
.globl _smpList_nsort.eh
_smpList_nsort.eh:
LSFDE577:
	.set L$set$1245,LEFDE577-LASFDE577
	.long L$set$1245
LASFDE577:
	.long	LASFDE577-EH_frame1
	.quad	LFB368-.
	.set L$set$1246,LFE368-LFB368
	.quad L$set$1246
	.byte	0x0
	.byte	0x4
	.set L$set$1247,LCFI931-LFB368
	.long L$set$1247
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1248,LCFI932-LCFI931
	.long L$set$1248
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE577:
.globl _smpList_sort_rec.eh
_smpList_sort_rec.eh:
LSFDE579:
	.set L$set$1249,LEFDE579-LASFDE579
	.long L$set$1249
LASFDE579:
	.long	LASFDE579-EH_frame1
	.quad	LFB369-.
	.set L$set$1250,LFE369-LFB369
	.quad L$set$1250
	.byte	0x0
	.byte	0x4
	.set L$set$1251,LCFI934-LFB369
	.long L$set$1251
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1252,LCFI935-LCFI934
	.long L$set$1252
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1253,LCFI937-LCFI935
	.long L$set$1253
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE579:
.globl _smpList_to_a.eh
_smpList_to_a.eh:
LSFDE581:
	.set L$set$1254,LEFDE581-LASFDE581
	.long L$set$1254
LASFDE581:
	.long	LASFDE581-EH_frame1
	.quad	LFB370-.
	.set L$set$1255,LFE370-LFB370
	.quad L$set$1255
	.byte	0x0
	.byte	0x4
	.set L$set$1256,LCFI938-LFB370
	.long L$set$1256
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1257,LCFI939-LCFI938
	.long L$set$1257
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1258,LCFI941-LCFI939
	.long L$set$1258
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE581:
.globl _smpList_to_list.eh
_smpList_to_list.eh:
LSFDE583:
	.set L$set$1259,LEFDE583-LASFDE583
	.long L$set$1259
LASFDE583:
	.long	LASFDE583-EH_frame1
	.quad	LFB371-.
	.set L$set$1260,LFE371-LFB371
	.quad L$set$1260
	.byte	0x0
	.byte	0x4
	.set L$set$1261,LCFI942-LFB371
	.long L$set$1261
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1262,LCFI943-LCFI942
	.long L$set$1262
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE583:
.globl _smpList_to_s.eh
_smpList_to_s.eh:
LSFDE585:
	.set L$set$1263,LEFDE585-LASFDE585
	.long L$set$1263
LASFDE585:
	.long	LASFDE585-EH_frame1
	.quad	LFB372-.
	.set L$set$1264,LFE372-LFB372
	.quad L$set$1264
	.byte	0x0
	.byte	0x4
	.set L$set$1265,LCFI944-LFB372
	.long L$set$1265
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1266,LCFI945-LCFI944
	.long L$set$1266
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE585:
.globl _smpList_write.eh
_smpList_write.eh:
LSFDE587:
	.set L$set$1267,LEFDE587-LASFDE587
	.long L$set$1267
LASFDE587:
	.long	LASFDE587-EH_frame1
	.quad	LFB373-.
	.set L$set$1268,LFE373-LFB373
	.quad L$set$1268
	.byte	0x0
	.byte	0x4
	.set L$set$1269,LCFI947-LFB373
	.long L$set$1269
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1270,LCFI948-LCFI947
	.long L$set$1270
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE587:
.globl _smpListBuffer_create_class.eh
_smpListBuffer_create_class.eh:
LSFDE589:
	.set L$set$1271,LEFDE589-LASFDE589
	.long L$set$1271
LASFDE589:
	.long	LASFDE589-EH_frame1
	.quad	LFB374-.
	.set L$set$1272,LFE374-LFB374
	.quad L$set$1272
	.byte	0x0
	.byte	0x4
	.set L$set$1273,LCFI950-LFB374
	.long L$set$1273
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1274,LCFI951-LCFI950
	.long L$set$1274
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE589:
.globl _smpListBuffer_add_now.eh
_smpListBuffer_add_now.eh:
LSFDE591:
	.set L$set$1275,LEFDE591-LASFDE591
	.long L$set$1275
LASFDE591:
	.long	LASFDE591-EH_frame1
	.quad	LFB375-.
	.set L$set$1276,LFE375-LFB375
	.quad L$set$1276
	.byte	0x0
	.byte	0x4
	.set L$set$1277,LCFI953-LFB375
	.long L$set$1277
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1278,LCFI954-LCFI953
	.long L$set$1278
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1279,LCFI956-LCFI954
	.long L$set$1279
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE591:
.globl _smpListBuffer_gc_mark.eh
_smpListBuffer_gc_mark.eh:
LSFDE593:
	.set L$set$1280,LEFDE593-LASFDE593
	.long L$set$1280
LASFDE593:
	.long	LASFDE593-EH_frame1
	.quad	LFB376-.
	.set L$set$1281,LFE376-LFB376
	.quad L$set$1281
	.byte	0x0
	.byte	0x4
	.set L$set$1282,LCFI957-LFB376
	.long L$set$1282
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1283,LCFI958-LCFI957
	.long L$set$1283
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1284,LCFI960-LCFI958
	.long L$set$1284
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE593:
.globl _smpListBuffer_init.eh
_smpListBuffer_init.eh:
LSFDE595:
	.set L$set$1285,LEFDE595-LASFDE595
	.long L$set$1285
LASFDE595:
	.long	LASFDE595-EH_frame1
	.quad	LFB377-.
	.set L$set$1286,LFE377-LFB377
	.quad L$set$1286
	.byte	0x0
	.byte	0x4
	.set L$set$1287,LCFI961-LFB377
	.long L$set$1287
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1288,LCFI962-LCFI961
	.long L$set$1288
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1289,LCFI964-LCFI962
	.long L$set$1289
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE595:
.globl _smpListBuffer_to_list.eh
_smpListBuffer_to_list.eh:
LSFDE597:
	.set L$set$1290,LEFDE597-LASFDE597
	.long L$set$1290
LASFDE597:
	.long	LASFDE597-EH_frame1
	.quad	LFB378-.
	.set L$set$1291,LFE378-LFB378
	.quad L$set$1291
	.byte	0x0
	.byte	0x4
	.set L$set$1292,LCFI965-LFB378
	.long L$set$1292
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1293,LCFI966-LCFI965
	.long L$set$1293
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE597:
.globl _smpNil_create_class.eh
_smpNil_create_class.eh:
LSFDE599:
	.set L$set$1294,LEFDE599-LASFDE599
	.long L$set$1294
LASFDE599:
	.long	LASFDE599-EH_frame1
	.quad	LFB379-.
	.set L$set$1295,LFE379-LFB379
	.quad L$set$1295
	.byte	0x0
	.byte	0x4
	.set L$set$1296,LCFI967-LFB379
	.long L$set$1296
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1297,LCFI968-LCFI967
	.long L$set$1297
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE599:
.globl _smpNil_add.eh
_smpNil_add.eh:
LSFDE601:
	.set L$set$1298,LEFDE601-LASFDE601
	.long L$set$1298
LASFDE601:
	.long	LASFDE601-EH_frame1
	.quad	LFB380-.
	.set L$set$1299,LFE380-LFB380
	.quad L$set$1299
	.byte	0x0
	.byte	0x4
	.set L$set$1300,LCFI970-LFB380
	.long L$set$1300
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1301,LCFI971-LCFI970
	.long L$set$1301
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE601:
.globl _smpNil_add_now.eh
_smpNil_add_now.eh:
LSFDE603:
	.set L$set$1302,LEFDE603-LASFDE603
	.long L$set$1302
LASFDE603:
	.long	LASFDE603-EH_frame1
	.quad	LFB381-.
	.set L$set$1303,LFE381-LFB381
	.quad L$set$1303
	.byte	0x0
	.byte	0x4
	.set L$set$1304,LCFI973-LFB381
	.long L$set$1304
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1305,LCFI974-LCFI973
	.long L$set$1305
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE603:
.globl _smpNil_car.eh
_smpNil_car.eh:
LSFDE605:
	.set L$set$1306,LEFDE605-LASFDE605
	.long L$set$1306
LASFDE605:
	.long	LASFDE605-EH_frame1
	.quad	LFB382-.
	.set L$set$1307,LFE382-LFB382
	.quad L$set$1307
	.byte	0x0
	.byte	0x4
	.set L$set$1308,LCFI976-LFB382
	.long L$set$1308
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1309,LCFI977-LCFI976
	.long L$set$1309
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE605:
.globl _smpNil_cdr.eh
_smpNil_cdr.eh:
LSFDE607:
	.set L$set$1310,LEFDE607-LASFDE607
	.long L$set$1310
LASFDE607:
	.long	LASFDE607-EH_frame1
	.quad	LFB383-.
	.set L$set$1311,LFE383-LFB383
	.quad L$set$1311
	.byte	0x0
	.byte	0x4
	.set L$set$1312,LCFI978-LFB383
	.long L$set$1312
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1313,LCFI979-LCFI978
	.long L$set$1313
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE607:
.globl _smpNil_copy.eh
_smpNil_copy.eh:
LSFDE609:
	.set L$set$1314,LEFDE609-LASFDE609
	.long L$set$1314
LASFDE609:
	.long	LASFDE609-EH_frame1
	.quad	LFB384-.
	.set L$set$1315,LFE384-LFB384
	.quad L$set$1315
	.byte	0x0
	.byte	0x4
	.set L$set$1316,LCFI980-LFB384
	.long L$set$1316
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1317,LCFI981-LCFI980
	.long L$set$1317
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE609:
.globl _smpNil_each.eh
_smpNil_each.eh:
LSFDE611:
	.set L$set$1318,LEFDE611-LASFDE611
	.long L$set$1318
LASFDE611:
	.long	LASFDE611-EH_frame1
	.quad	LFB385-.
	.set L$set$1319,LFE385-LFB385
	.quad L$set$1319
	.byte	0x0
	.byte	0x4
	.set L$set$1320,LCFI982-LFB385
	.long L$set$1320
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1321,LCFI983-LCFI982
	.long L$set$1321
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE611:
.globl _smpNil_emptyp.eh
_smpNil_emptyp.eh:
LSFDE613:
	.set L$set$1322,LEFDE613-LASFDE613
	.long L$set$1322
LASFDE613:
	.long	LASFDE613-EH_frame1
	.quad	LFB386-.
	.set L$set$1323,LFE386-LFB386
	.quad L$set$1323
	.byte	0x0
	.byte	0x4
	.set L$set$1324,LCFI984-LFB386
	.long L$set$1324
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1325,LCFI985-LCFI984
	.long L$set$1325
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE613:
.globl _smpNil_equalp.eh
_smpNil_equalp.eh:
LSFDE615:
	.set L$set$1326,LEFDE615-LASFDE615
	.long L$set$1326
LASFDE615:
	.long	LASFDE615-EH_frame1
	.quad	LFB387-.
	.set L$set$1327,LFE387-LFB387
	.quad L$set$1327
	.byte	0x0
	.byte	0x4
	.set L$set$1328,LCFI986-LFB387
	.long L$set$1328
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1329,LCFI987-LCFI986
	.long L$set$1329
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1330,LCFI989-LCFI987
	.long L$set$1330
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE615:
.globl _smpNil_reverse.eh
_smpNil_reverse.eh:
LSFDE617:
	.set L$set$1331,LEFDE617-LASFDE617
	.long L$set$1331
LASFDE617:
	.long	LASFDE617-EH_frame1
	.quad	LFB388-.
	.set L$set$1332,LFE388-LFB388
	.quad L$set$1332
	.byte	0x0
	.byte	0x4
	.set L$set$1333,LCFI990-LFB388
	.long L$set$1333
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1334,LCFI991-LCFI990
	.long L$set$1334
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE617:
.globl _smpNil_to_s.eh
_smpNil_to_s.eh:
LSFDE619:
	.set L$set$1335,LEFDE619-LASFDE619
	.long L$set$1335
LASFDE619:
	.long	LASFDE619-EH_frame1
	.quad	LFB389-.
	.set L$set$1336,LFE389-LFB389
	.quad L$set$1336
	.byte	0x0
	.byte	0x4
	.set L$set$1337,LCFI992-LFB389
	.long L$set$1337
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1338,LCFI993-LCFI992
	.long L$set$1338
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1339,LCFI995-LCFI993
	.long L$set$1339
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE619:
.globl _smpNil_write.eh
_smpNil_write.eh:
LSFDE621:
	.set L$set$1340,LEFDE621-LASFDE621
	.long L$set$1340
LASFDE621:
	.long	LASFDE621-EH_frame1
	.quad	LFB390-.
	.set L$set$1341,LFE390-LFB390
	.quad L$set$1341
	.byte	0x0
	.byte	0x4
	.set L$set$1342,LCFI996-LFB390
	.long L$set$1342
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1343,LCFI997-LCFI996
	.long L$set$1343
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1344,LCFI999-LCFI997
	.long L$set$1344
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE621:
.globl _smpNil_length.eh
_smpNil_length.eh:
LSFDE623:
	.set L$set$1345,LEFDE623-LASFDE623
	.long L$set$1345
LASFDE623:
	.long	LASFDE623-EH_frame1
	.quad	LFB391-.
	.set L$set$1346,LFE391-LFB391
	.quad L$set$1346
	.byte	0x0
	.byte	0x4
	.set L$set$1347,LCFI1000-LFB391
	.long L$set$1347
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1348,LCFI1001-LCFI1000
	.long L$set$1348
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE623:
.globl _smpNil_map.eh
_smpNil_map.eh:
LSFDE625:
	.set L$set$1349,LEFDE625-LASFDE625
	.long L$set$1349
LASFDE625:
	.long	LASFDE625-EH_frame1
	.quad	LFB392-.
	.set L$set$1350,LFE392-LFB392
	.quad L$set$1350
	.byte	0x0
	.byte	0x4
	.set L$set$1351,LCFI1002-LFB392
	.long L$set$1351
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1352,LCFI1003-LCFI1002
	.long L$set$1352
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE625:
.globl _smpNil_reduce.eh
_smpNil_reduce.eh:
LSFDE627:
	.set L$set$1353,LEFDE627-LASFDE627
	.long L$set$1353
LASFDE627:
	.long	LASFDE627-EH_frame1
	.quad	LFB393-.
	.set L$set$1354,LFE393-LFB393
	.quad L$set$1354
	.byte	0x0
	.byte	0x4
	.set L$set$1355,LCFI1004-LFB393
	.long L$set$1355
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1356,LCFI1005-LCFI1004
	.long L$set$1356
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE627:
.globl _smpNumber_create_class.eh
_smpNumber_create_class.eh:
LSFDE629:
	.set L$set$1357,LEFDE629-LASFDE629
	.long L$set$1357
LASFDE629:
	.long	LASFDE629-EH_frame1
	.quad	LFB394-.
	.set L$set$1358,LFE394-LFB394
	.quad L$set$1358
	.byte	0x0
	.byte	0x4
	.set L$set$1359,LCFI1007-LFB394
	.long L$set$1359
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1360,LCFI1008-LCFI1007
	.long L$set$1360
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE629:
.globl _smpPair_create_class.eh
_smpPair_create_class.eh:
LSFDE631:
	.set L$set$1361,LEFDE631-LASFDE631
	.long L$set$1361
LASFDE631:
	.long	LASFDE631-EH_frame1
	.quad	LFB395-.
	.set L$set$1362,LFE395-LFB395
	.quad L$set$1362
	.byte	0x0
	.byte	0x4
	.set L$set$1363,LCFI1010-LFB395
	.long L$set$1363
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1364,LCFI1011-LCFI1010
	.long L$set$1364
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE631:
.globl _smpPair_car.eh
_smpPair_car.eh:
LSFDE633:
	.set L$set$1365,LEFDE633-LASFDE633
	.long L$set$1365
LASFDE633:
	.long	LASFDE633-EH_frame1
	.quad	LFB396-.
	.set L$set$1366,LFE396-LFB396
	.quad L$set$1366
	.byte	0x0
	.byte	0x4
	.set L$set$1367,LCFI1013-LFB396
	.long L$set$1367
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1368,LCFI1014-LCFI1013
	.long L$set$1368
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE633:
.globl _smpPair_cdr.eh
_smpPair_cdr.eh:
LSFDE635:
	.set L$set$1369,LEFDE635-LASFDE635
	.long L$set$1369
LASFDE635:
	.long	LASFDE635-EH_frame1
	.quad	LFB397-.
	.set L$set$1370,LFE397-LFB397
	.quad L$set$1370
	.byte	0x0
	.byte	0x4
	.set L$set$1371,LCFI1015-LFB397
	.long L$set$1371
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1372,LCFI1016-LCFI1015
	.long L$set$1372
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE635:
.globl _smpPair_clear.eh
_smpPair_clear.eh:
LSFDE637:
	.set L$set$1373,LEFDE637-LASFDE637
	.long L$set$1373
LASFDE637:
	.long	LASFDE637-EH_frame1
	.quad	LFB398-.
	.set L$set$1374,LFE398-LFB398
	.quad L$set$1374
	.byte	0x0
	.byte	0x4
	.set L$set$1375,LCFI1018-LFB398
	.long L$set$1375
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1376,LCFI1019-LCFI1018
	.long L$set$1376
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1377,LCFI1021-LCFI1019
	.long L$set$1377
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE637:
.globl _smpPair_gc_mark.eh
_smpPair_gc_mark.eh:
LSFDE639:
	.set L$set$1378,LEFDE639-LASFDE639
	.long L$set$1378
LASFDE639:
	.long	LASFDE639-EH_frame1
	.quad	LFB399-.
	.set L$set$1379,LFE399-LFB399
	.quad L$set$1379
	.byte	0x0
	.byte	0x4
	.set L$set$1380,LCFI1022-LFB399
	.long L$set$1380
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1381,LCFI1023-LCFI1022
	.long L$set$1381
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE639:
.globl _smpPair_init.eh
_smpPair_init.eh:
LSFDE641:
	.set L$set$1382,LEFDE641-LASFDE641
	.long L$set$1382
LASFDE641:
	.long	LASFDE641-EH_frame1
	.quad	LFB400-.
	.set L$set$1383,LFE400-LFB400
	.quad L$set$1383
	.byte	0x0
	.byte	0x4
	.set L$set$1384,LCFI1025-LFB400
	.long L$set$1384
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1385,LCFI1026-LCFI1025
	.long L$set$1385
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE641:
.globl _smpPair_set_car_now.eh
_smpPair_set_car_now.eh:
LSFDE643:
	.set L$set$1386,LEFDE643-LASFDE643
	.long L$set$1386
LASFDE643:
	.long	LASFDE643-EH_frame1
	.quad	LFB401-.
	.set L$set$1387,LFE401-LFB401
	.quad L$set$1387
	.byte	0x0
	.byte	0x4
	.set L$set$1388,LCFI1028-LFB401
	.long L$set$1388
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1389,LCFI1029-LCFI1028
	.long L$set$1389
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE643:
.globl _smpPair_set_cdr_now.eh
_smpPair_set_cdr_now.eh:
LSFDE645:
	.set L$set$1390,LEFDE645-LASFDE645
	.long L$set$1390
LASFDE645:
	.long	LASFDE645-EH_frame1
	.quad	LFB402-.
	.set L$set$1391,LFE402-LFB402
	.quad L$set$1391
	.byte	0x0
	.byte	0x4
	.set L$set$1392,LCFI1030-LFB402
	.long L$set$1392
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1393,LCFI1031-LCFI1030
	.long L$set$1393
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE645:
.globl _smpPair_to_s.eh
_smpPair_to_s.eh:
LSFDE647:
	.set L$set$1394,LEFDE647-LASFDE647
	.long L$set$1394
LASFDE647:
	.long	LASFDE647-EH_frame1
	.quad	LFB403-.
	.set L$set$1395,LFE403-LFB403
	.quad L$set$1395
	.byte	0x0
	.byte	0x4
	.set L$set$1396,LCFI1033-LFB403
	.long L$set$1396
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1397,LCFI1034-LCFI1033
	.long L$set$1397
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE647:
.globl _smpPair_write.eh
_smpPair_write.eh:
LSFDE649:
	.set L$set$1398,LEFDE649-LASFDE649
	.long L$set$1398
LASFDE649:
	.long	LASFDE649-EH_frame1
	.quad	LFB404-.
	.set L$set$1399,LFE404-LFB404
	.quad L$set$1399
	.byte	0x0
	.byte	0x4
	.set L$set$1400,LCFI1036-LFB404
	.long L$set$1400
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1401,LCFI1037-LCFI1036
	.long L$set$1401
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE649:
.globl _smpRegex_create_class.eh
_smpRegex_create_class.eh:
LSFDE651:
	.set L$set$1402,LEFDE651-LASFDE651
	.long L$set$1402
LASFDE651:
	.long	LASFDE651-EH_frame1
	.quad	LFB405-.
	.set L$set$1403,LFE405-LFB405
	.quad L$set$1403
	.byte	0x0
	.byte	0x4
	.set L$set$1404,LCFI1039-LFB405
	.long L$set$1404
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1405,LCFI1040-LCFI1039
	.long L$set$1405
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE651:
.globl _smpregmatch_clear.eh
_smpregmatch_clear.eh:
LSFDE653:
	.set L$set$1406,LEFDE653-LASFDE653
	.long L$set$1406
LASFDE653:
	.long	LASFDE653-EH_frame1
	.quad	LFB406-.
	.set L$set$1407,LFE406-LFB406
	.quad L$set$1407
	.byte	0x0
	.byte	0x4
	.set L$set$1408,LCFI1042-LFB406
	.long L$set$1408
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1409,LCFI1043-LCFI1042
	.long L$set$1409
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1410,LCFI1045-LCFI1043
	.long L$set$1410
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE653:
.globl _smpRegex_compile.eh
_smpRegex_compile.eh:
LSFDE655:
	.set L$set$1411,LEFDE655-LASFDE655
	.long L$set$1411
LASFDE655:
	.long	LASFDE655-EH_frame1
	.quad	LFB407-.
	.set L$set$1412,LFE407-LFB407
	.quad L$set$1412
	.byte	0x0
	.byte	0x4
	.set L$set$1413,LCFI1046-LFB407
	.long L$set$1413
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1414,LCFI1047-LCFI1046
	.long L$set$1414
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1415,LCFI1049-LCFI1047
	.long L$set$1415
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE655:
.globl _smpRegex_compile_flags.eh
_smpRegex_compile_flags.eh:
LSFDE657:
	.set L$set$1416,LEFDE657-LASFDE657
	.long L$set$1416
LASFDE657:
	.long	LASFDE657-EH_frame1
	.quad	LFB408-.
	.set L$set$1417,LFE408-LFB408
	.quad L$set$1417
	.byte	0x0
	.byte	0x4
	.set L$set$1418,LCFI1050-LFB408
	.long L$set$1418
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1419,LCFI1051-LCFI1050
	.long L$set$1419
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1420,LCFI1053-LCFI1051
	.long L$set$1420
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE657:
.globl _smpRegex_compile_str.eh
_smpRegex_compile_str.eh:
LSFDE659:
	.set L$set$1421,LEFDE659-LASFDE659
	.long L$set$1421
LASFDE659:
	.long	LASFDE659-EH_frame1
	.quad	LFB409-.
	.set L$set$1422,LFE409-LFB409
	.quad L$set$1422
	.byte	0x0
	.byte	0x4
	.set L$set$1423,LCFI1054-LFB409
	.long L$set$1423
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1424,LCFI1055-LCFI1054
	.long L$set$1424
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1425,LCFI1057-LCFI1055
	.long L$set$1425
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE659:
.globl _smpRegex_compile_str_flags.eh
_smpRegex_compile_str_flags.eh:
LSFDE661:
	.set L$set$1426,LEFDE661-LASFDE661
	.long L$set$1426
LASFDE661:
	.long	LASFDE661-EH_frame1
	.quad	LFB410-.
	.set L$set$1427,LFE410-LFB410
	.quad L$set$1427
	.byte	0x0
	.byte	0x4
	.set L$set$1428,LCFI1058-LFB410
	.long L$set$1428
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1429,LCFI1059-LCFI1058
	.long L$set$1429
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1430,LCFI1061-LCFI1059
	.long L$set$1430
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE661:
.globl _smpRegex_compile_handle_errors.eh
_smpRegex_compile_handle_errors.eh:
LSFDE663:
	.set L$set$1431,LEFDE663-LASFDE663
	.long L$set$1431
LASFDE663:
	.long	LASFDE663-EH_frame1
	.quad	LFB411-.
	.set L$set$1432,LFE411-LFB411
	.quad L$set$1432
	.byte	0x0
	.byte	0x4
	.set L$set$1433,LCFI1062-LFB411
	.long L$set$1433
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1434,LCFI1063-LCFI1062
	.long L$set$1434
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE663:
.globl _smpregmatch_init.eh
_smpregmatch_init.eh:
LSFDE665:
	.set L$set$1435,LEFDE665-LASFDE665
	.long L$set$1435
LASFDE665:
	.long	LASFDE665-EH_frame1
	.quad	LFB412-.
	.set L$set$1436,LFE412-LFB412
	.quad L$set$1436
	.byte	0x0
	.byte	0x4
	.set L$set$1437,LCFI1065-LFB412
	.long L$set$1437
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1438,LCFI1066-LCFI1065
	.long L$set$1438
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE665:
.globl _smpRegex_match.eh
_smpRegex_match.eh:
LSFDE667:
	.set L$set$1439,LEFDE667-LASFDE667
	.long L$set$1439
LASFDE667:
	.long	LASFDE667-EH_frame1
	.quad	LFB413-.
	.set L$set$1440,LFE413-LFB413
	.quad L$set$1440
	.byte	0x0
	.byte	0x4
	.set L$set$1441,LCFI1068-LFB413
	.long L$set$1441
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1442,LCFI1069-LCFI1068
	.long L$set$1442
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1443,LCFI1071-LCFI1069
	.long L$set$1443
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE667:
.globl _smpRegex_match_str.eh
_smpRegex_match_str.eh:
LSFDE669:
	.set L$set$1444,LEFDE669-LASFDE669
	.long L$set$1444
LASFDE669:
	.long	LASFDE669-EH_frame1
	.quad	LFB414-.
	.set L$set$1445,LFE414-LFB414
	.quad L$set$1445
	.byte	0x0
	.byte	0x4
	.set L$set$1446,LCFI1072-LFB414
	.long L$set$1446
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1447,LCFI1073-LCFI1072
	.long L$set$1447
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE669:
.globl _smpRegex_matchp.eh
_smpRegex_matchp.eh:
LSFDE671:
	.set L$set$1448,LEFDE671-LASFDE671
	.long L$set$1448
LASFDE671:
	.long	LASFDE671-EH_frame1
	.quad	LFB415-.
	.set L$set$1449,LFE415-LFB415
	.quad L$set$1449
	.byte	0x0
	.byte	0x4
	.set L$set$1450,LCFI1075-LFB415
	.long L$set$1450
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1451,LCFI1076-LCFI1075
	.long L$set$1451
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE671:
.globl _smpRegex_matchp_cint.eh
_smpRegex_matchp_cint.eh:
LSFDE673:
	.set L$set$1452,LEFDE673-LASFDE673
	.long L$set$1452
LASFDE673:
	.long	LASFDE673-EH_frame1
	.quad	LFB416-.
	.set L$set$1453,LFE416-LFB416
	.quad L$set$1453
	.byte	0x0
	.byte	0x4
	.set L$set$1454,LCFI1078-LFB416
	.long L$set$1454
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1455,LCFI1079-LCFI1078
	.long L$set$1455
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE673:
.globl _smpstrcreate_class.eh
_smpstrcreate_class.eh:
LSFDE675:
	.set L$set$1456,LEFDE675-LASFDE675
	.long L$set$1456
LASFDE675:
	.long	LASFDE675-EH_frame1
	.quad	LFB417-.
	.set L$set$1457,LFE417-LFB417
	.quad L$set$1457
	.byte	0x0
	.byte	0x4
	.set L$set$1458,LCFI1081-LFB417
	.long L$set$1458
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1459,LCFI1082-LCFI1081
	.long L$set$1459
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE675:
.globl _obj_init_str.eh
_obj_init_str.eh:
LSFDE677:
	.set L$set$1460,LEFDE677-LASFDE677
	.long L$set$1460
LASFDE677:
	.long	LASFDE677-EH_frame1
	.quad	LFB418-.
	.set L$set$1461,LFE418-LFB418
	.quad L$set$1461
	.byte	0x0
	.byte	0x4
	.set L$set$1462,LCFI1084-LFB418
	.long L$set$1462
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1463,LCFI1085-LCFI1084
	.long L$set$1463
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE677:
.globl _smpString_add.eh
_smpString_add.eh:
LSFDE679:
	.set L$set$1464,LEFDE679-LASFDE679
	.long L$set$1464
LASFDE679:
	.long	LASFDE679-EH_frame1
	.quad	LFB419-.
	.set L$set$1465,LFE419-LFB419
	.quad L$set$1465
	.byte	0x0
	.byte	0x4
	.set L$set$1466,LCFI1087-LFB419
	.long L$set$1466
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1467,LCFI1088-LCFI1087
	.long L$set$1467
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE679:
.globl _smpString_add_now.eh
_smpString_add_now.eh:
LSFDE681:
	.set L$set$1468,LEFDE681-LASFDE681
	.long L$set$1468
LASFDE681:
	.long	LASFDE681-EH_frame1
	.quad	LFB420-.
	.set L$set$1469,LFE420-LFB420
	.quad L$set$1469
	.byte	0x0
	.byte	0x4
	.set L$set$1470,LCFI1090-LFB420
	.long L$set$1470
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1471,LCFI1091-LCFI1090
	.long L$set$1471
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE681:
.globl _smpString_clear.eh
_smpString_clear.eh:
LSFDE683:
	.set L$set$1472,LEFDE683-LASFDE683
	.long L$set$1472
LASFDE683:
	.long	LASFDE683-EH_frame1
	.quad	LFB421-.
	.set L$set$1473,LFE421-LFB421
	.quad L$set$1473
	.byte	0x0
	.byte	0x4
	.set L$set$1474,LCFI1093-LFB421
	.long L$set$1474
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1475,LCFI1094-LCFI1093
	.long L$set$1475
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1476,LCFI1096-LCFI1094
	.long L$set$1476
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE683:
.globl _smpString_equalp.eh
_smpString_equalp.eh:
LSFDE685:
	.set L$set$1477,LEFDE685-LASFDE685
	.long L$set$1477
LASFDE685:
	.long	LASFDE685-EH_frame1
	.quad	LFB422-.
	.set L$set$1478,LFE422-LFB422
	.quad L$set$1478
	.byte	0x0
	.byte	0x4
	.set L$set$1479,LCFI1097-LFB422
	.long L$set$1479
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1480,LCFI1098-LCFI1097
	.long L$set$1480
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1481,LCFI1100-LCFI1098
	.long L$set$1481
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE685:
.globl _smpString_equalp_cstr.eh
_smpString_equalp_cstr.eh:
LSFDE687:
	.set L$set$1482,LEFDE687-LASFDE687
	.long L$set$1482
LASFDE687:
	.long	LASFDE687-EH_frame1
	.quad	LFB423-.
	.set L$set$1483,LFE423-LFB423
	.quad L$set$1483
	.byte	0x0
	.byte	0x4
	.set L$set$1484,LCFI1101-LFB423
	.long L$set$1484
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1485,LCFI1102-LCFI1101
	.long L$set$1485
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE687:
.globl _smpString_init.eh
_smpString_init.eh:
LSFDE689:
	.set L$set$1486,LEFDE689-LASFDE689
	.long L$set$1486
LASFDE689:
	.long	LASFDE689-EH_frame1
	.quad	LFB424-.
	.set L$set$1487,LFE424-LFB424
	.quad L$set$1487
	.byte	0x0
	.byte	0x4
	.set L$set$1488,LCFI1104-LFB424
	.long L$set$1488
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1489,LCFI1105-LCFI1104
	.long L$set$1489
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1490,LCFI1107-LCFI1105
	.long L$set$1490
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE689:
.globl _smpString_init_length.eh
_smpString_init_length.eh:
LSFDE691:
	.set L$set$1491,LEFDE691-LASFDE691
	.long L$set$1491
LASFDE691:
	.long	LASFDE691-EH_frame1
	.quad	LFB425-.
	.set L$set$1492,LFE425-LFB425
	.quad L$set$1492
	.byte	0x0
	.byte	0x4
	.set L$set$1493,LCFI1108-LFB425
	.long L$set$1493
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1494,LCFI1109-LCFI1108
	.long L$set$1494
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE691:
___inline_strncpy_chk.eh:
LSFDE693:
	.set L$set$1495,LEFDE693-LASFDE693
	.long L$set$1495
LASFDE693:
	.long	LASFDE693-EH_frame1
	.quad	LFB52-.
	.set L$set$1496,LFE52-LFB52
	.quad L$set$1496
	.byte	0x0
	.byte	0x4
	.set L$set$1497,LCFI1111-LFB52
	.long L$set$1497
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1498,LCFI1112-LCFI1111
	.long L$set$1498
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE693:
.globl _smpString_init_ref.eh
_smpString_init_ref.eh:
LSFDE695:
	.set L$set$1499,LEFDE695-LASFDE695
	.long L$set$1499
LASFDE695:
	.long	LASFDE695-EH_frame1
	.quad	LFB426-.
	.set L$set$1500,LFE426-LFB426
	.quad L$set$1500
	.byte	0x0
	.byte	0x4
	.set L$set$1501,LCFI1114-LFB426
	.long L$set$1501
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1502,LCFI1115-LCFI1114
	.long L$set$1502
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1503,LCFI1117-LCFI1115
	.long L$set$1503
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE695:
.globl _smpString_init_fmt.eh
_smpString_init_fmt.eh:
LSFDE697:
	.set L$set$1504,LEFDE697-LASFDE697
	.long L$set$1504
LASFDE697:
	.long	LASFDE697-EH_frame1
	.quad	LFB427-.
	.set L$set$1505,LFE427-LFB427
	.quad L$set$1505
	.byte	0x0
	.byte	0x4
	.set L$set$1506,LCFI1118-LFB427
	.long L$set$1506
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1507,LCFI1119-LCFI1118
	.long L$set$1507
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1508,LCFI1121-LCFI1119
	.long L$set$1508
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE697:
.globl _smpString_length.eh
_smpString_length.eh:
LSFDE699:
	.set L$set$1509,LEFDE699-LASFDE699
	.long L$set$1509
LASFDE699:
	.long	LASFDE699-EH_frame1
	.quad	LFB428-.
	.set L$set$1510,LFE428-LFB428
	.quad L$set$1510
	.byte	0x0
	.byte	0x4
	.set L$set$1511,LCFI1122-LFB428
	.long L$set$1511
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1512,LCFI1123-LCFI1122
	.long L$set$1512
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1513,LCFI1125-LCFI1123
	.long L$set$1513
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE699:
.globl _smpString_reverse.eh
_smpString_reverse.eh:
LSFDE701:
	.set L$set$1514,LEFDE701-LASFDE701
	.long L$set$1514
LASFDE701:
	.long	LASFDE701-EH_frame1
	.quad	LFB429-.
	.set L$set$1515,LFE429-LFB429
	.quad L$set$1515
	.byte	0x0
	.byte	0x4
	.set L$set$1516,LCFI1126-LFB429
	.long L$set$1516
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1517,LCFI1127-LCFI1126
	.long L$set$1517
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE701:
.globl _smpString_substring.eh
_smpString_substring.eh:
LSFDE703:
	.set L$set$1518,LEFDE703-LASFDE703
	.long L$set$1518
LASFDE703:
	.long	LASFDE703-EH_frame1
	.quad	LFB430-.
	.set L$set$1519,LFE430-LFB430
	.quad L$set$1519
	.byte	0x0
	.byte	0x4
	.set L$set$1520,LCFI1129-LFB430
	.long L$set$1520
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1521,LCFI1130-LCFI1129
	.long L$set$1521
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1522,LCFI1132-LCFI1130
	.long L$set$1522
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE703:
.globl _smpString_to_cstr.eh
_smpString_to_cstr.eh:
LSFDE705:
	.set L$set$1523,LEFDE705-LASFDE705
	.long L$set$1523
LASFDE705:
	.long	LASFDE705-EH_frame1
	.quad	LFB431-.
	.set L$set$1524,LFE431-LFB431
	.quad L$set$1524
	.byte	0x0
	.byte	0x4
	.set L$set$1525,LCFI1133-LFB431
	.long L$set$1525
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1526,LCFI1134-LCFI1133
	.long L$set$1526
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE705:
.globl _smpString_to_s.eh
_smpString_to_s.eh:
LSFDE707:
	.set L$set$1527,LEFDE707-LASFDE707
	.long L$set$1527
LASFDE707:
	.long	LASFDE707-EH_frame1
	.quad	LFB432-.
	.set L$set$1528,LFE432-LFB432
	.quad L$set$1528
	.byte	0x0
	.byte	0x4
	.set L$set$1529,LCFI1135-LFB432
	.long L$set$1529
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1530,LCFI1136-LCFI1135
	.long L$set$1530
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE707:
.globl _smpString_write.eh
_smpString_write.eh:
LSFDE709:
	.set L$set$1531,LEFDE709-LASFDE709
	.long L$set$1531
LASFDE709:
	.long	LASFDE709-EH_frame1
	.quad	LFB433-.
	.set L$set$1532,LFE433-LFB433
	.quad L$set$1532
	.byte	0x0
	.byte	0x4
	.set L$set$1533,LCFI1137-LFB433
	.long L$set$1533
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1534,LCFI1138-LCFI1137
	.long L$set$1534
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE709:
.globl _smpSymbol_create_class.eh
_smpSymbol_create_class.eh:
LSFDE711:
	.set L$set$1535,LEFDE711-LASFDE711
	.long L$set$1535
LASFDE711:
	.long	LASFDE711-EH_frame1
	.quad	LFB434-.
	.set L$set$1536,LFE434-LFB434
	.quad L$set$1536
	.byte	0x0
	.byte	0x4
	.set L$set$1537,LCFI1140-LFB434
	.long L$set$1537
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1538,LCFI1141-LCFI1140
	.long L$set$1538
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE711:
.globl _smpSymbol_init.eh
_smpSymbol_init.eh:
LSFDE713:
	.set L$set$1539,LEFDE713-LASFDE713
	.long L$set$1539
LASFDE713:
	.long	LASFDE713-EH_frame1
	.quad	LFB435-.
	.set L$set$1540,LFE435-LFB435
	.quad L$set$1540
	.byte	0x0
	.byte	0x4
	.set L$set$1541,LCFI1143-LFB435
	.long L$set$1541
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1542,LCFI1144-LCFI1143
	.long L$set$1542
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE713:
.globl _smpSymbol_to_cstr.eh
_smpSymbol_to_cstr.eh:
LSFDE715:
	.set L$set$1543,LEFDE715-LASFDE715
	.long L$set$1543
LASFDE715:
	.long	LASFDE715-EH_frame1
	.quad	LFB436-.
	.set L$set$1544,LFE436-LFB436
	.quad L$set$1544
	.byte	0x0
	.byte	0x4
	.set L$set$1545,LCFI1146-LFB436
	.long L$set$1545
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1546,LCFI1147-LCFI1146
	.long L$set$1546
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE715:
.globl _smpSymbol_to_s.eh
_smpSymbol_to_s.eh:
LSFDE717:
	.set L$set$1547,LEFDE717-LASFDE717
	.long L$set$1547
LASFDE717:
	.long	LASFDE717-EH_frame1
	.quad	LFB437-.
	.set L$set$1548,LFE437-LFB437
	.quad L$set$1548
	.byte	0x0
	.byte	0x4
	.set L$set$1549,LCFI1148-LFB437
	.long L$set$1549
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1550,LCFI1149-LCFI1148
	.long L$set$1550
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1551,LCFI1151-LCFI1149
	.long L$set$1551
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE717:
.globl _smpSymbol_write.eh
_smpSymbol_write.eh:
LSFDE719:
	.set L$set$1552,LEFDE719-LASFDE719
	.long L$set$1552
LASFDE719:
	.long	LASFDE719-EH_frame1
	.quad	LFB438-.
	.set L$set$1553,LFE438-LFB438
	.quad L$set$1553
	.byte	0x0
	.byte	0x4
	.set L$set$1554,LCFI1152-LFB438
	.long L$set$1554
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1555,LCFI1153-LCFI1152
	.long L$set$1555
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE719:
.globl _smpThrown_create_class.eh
_smpThrown_create_class.eh:
LSFDE721:
	.set L$set$1556,LEFDE721-LASFDE721
	.long L$set$1556
LASFDE721:
	.long	LASFDE721-EH_frame1
	.quad	LFB439-.
	.set L$set$1557,LFE439-LFB439
	.quad L$set$1557
	.byte	0x0
	.byte	0x4
	.set L$set$1558,LCFI1155-LFB439
	.long L$set$1558
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1559,LCFI1156-LCFI1155
	.long L$set$1559
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE721:
.globl _smpThrown_add_exception_now.eh
_smpThrown_add_exception_now.eh:
LSFDE723:
	.set L$set$1560,LEFDE723-LASFDE723
	.long L$set$1560
LASFDE723:
	.long	LASFDE723-EH_frame1
	.quad	LFB440-.
	.set L$set$1561,LFE440-LFB440
	.quad L$set$1561
	.byte	0x0
	.byte	0x4
	.set L$set$1562,LCFI1158-LFB440
	.long L$set$1562
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1563,LCFI1159-LCFI1158
	.long L$set$1563
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1564,LCFI1161-LCFI1159
	.long L$set$1564
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE723:
.globl _smpThrown_contains_namep.eh
_smpThrown_contains_namep.eh:
LSFDE725:
	.set L$set$1565,LEFDE725-LASFDE725
	.long L$set$1565
LASFDE725:
	.long	LASFDE725-EH_frame1
	.quad	LFB441-.
	.set L$set$1566,LFE441-LFB441
	.quad L$set$1566
	.byte	0x0
	.byte	0x4
	.set L$set$1567,LCFI1162-LFB441
	.long L$set$1567
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1568,LCFI1163-LCFI1162
	.long L$set$1568
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE725:
.globl _smpThrown_gc_mark.eh
_smpThrown_gc_mark.eh:
LSFDE727:
	.set L$set$1569,LEFDE727-LASFDE727
	.long L$set$1569
LASFDE727:
	.long	LASFDE727-EH_frame1
	.quad	LFB442-.
	.set L$set$1570,LFE442-LFB442
	.quad L$set$1570
	.byte	0x0
	.byte	0x4
	.set L$set$1571,LCFI1165-LFB442
	.long L$set$1571
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1572,LCFI1166-LCFI1165
	.long L$set$1572
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE727:
.globl _smpThrown_get_first_value.eh
_smpThrown_get_first_value.eh:
LSFDE729:
	.set L$set$1573,LEFDE729-LASFDE729
	.long L$set$1573
LASFDE729:
	.long	LASFDE729-EH_frame1
	.quad	LFB443-.
	.set L$set$1574,LFE443-LFB443
	.quad L$set$1574
	.byte	0x0
	.byte	0x4
	.set L$set$1575,LCFI1168-LFB443
	.long L$set$1575
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1576,LCFI1169-LCFI1168
	.long L$set$1576
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE729:
.globl _smpThrown_init.eh
_smpThrown_init.eh:
LSFDE731:
	.set L$set$1577,LEFDE731-LASFDE731
	.long L$set$1577
LASFDE731:
	.long	LASFDE731-EH_frame1
	.quad	LFB444-.
	.set L$set$1578,LFE444-LFB444
	.quad L$set$1578
	.byte	0x0
	.byte	0x4
	.set L$set$1579,LCFI1171-LFB444
	.long L$set$1579
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1580,LCFI1172-LCFI1171
	.long L$set$1580
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE731:
.globl _smp_should_breakp_c.eh
_smp_should_breakp_c.eh:
LSFDE733:
	.set L$set$1581,LEFDE733-LASFDE733
	.long L$set$1581
LASFDE733:
	.long	LASFDE733-EH_frame1
	.quad	LFB445-.
	.set L$set$1582,LFE445-LFB445
	.quad L$set$1582
	.byte	0x0
	.byte	0x4
	.set L$set$1583,LCFI1174-LFB445
	.long L$set$1583
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1584,LCFI1175-LCFI1174
	.long L$set$1584
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE733:
.globl _smp_should_returnp_c.eh
_smp_should_returnp_c.eh:
LSFDE735:
	.set L$set$1585,LEFDE735-LASFDE735
	.long L$set$1585
LASFDE735:
	.long	LASFDE735-EH_frame1
	.quad	LFB446-.
	.set L$set$1586,LFE446-LFB446
	.quad L$set$1586
	.byte	0x0
	.byte	0x4
	.set L$set$1587,LCFI1176-LFB446
	.long L$set$1587
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1588,LCFI1177-LCFI1176
	.long L$set$1588
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE735:
.globl _smp_thrown_exceptionp_c.eh
_smp_thrown_exceptionp_c.eh:
LSFDE737:
	.set L$set$1589,LEFDE737-LASFDE737
	.long L$set$1589
LASFDE737:
	.long	LASFDE737-EH_frame1
	.quad	LFB447-.
	.set L$set$1590,LFE447-LFB447
	.quad L$set$1590
	.byte	0x0
	.byte	0x4
	.set L$set$1591,LCFI1178-LFB447
	.long L$set$1591
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1592,LCFI1179-LCFI1178
	.long L$set$1592
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE737:
.globl _smpThrown_to_s.eh
_smpThrown_to_s.eh:
LSFDE739:
	.set L$set$1593,LEFDE739-LASFDE739
	.long L$set$1593
LASFDE739:
	.long	LASFDE739-EH_frame1
	.quad	LFB448-.
	.set L$set$1594,LFE448-LFB448
	.quad L$set$1594
	.byte	0x0
	.byte	0x4
	.set L$set$1595,LCFI1180-LFB448
	.long L$set$1595
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1596,LCFI1181-LCFI1180
	.long L$set$1596
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE739:
.globl _smpType_abstract_def.eh
_smpType_abstract_def.eh:
LSFDE741:
	.set L$set$1597,LEFDE741-LASFDE741
	.long L$set$1597
LASFDE741:
	.long	LASFDE741-EH_frame1
	.quad	LFB449-.
	.set L$set$1598,LFE449-LFB449
	.quad L$set$1598
	.byte	0x0
	.byte	0x4
	.set L$set$1599,LCFI1183-LFB449
	.long L$set$1599
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1600,LCFI1184-LCFI1183
	.long L$set$1600
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1601,LCFI1186-LCFI1184
	.long L$set$1601
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE741:
.globl _smpType_clear.eh
_smpType_clear.eh:
LSFDE743:
	.set L$set$1602,LEFDE743-LASFDE743
	.long L$set$1602
LASFDE743:
	.long	LASFDE743-EH_frame1
	.quad	LFB450-.
	.set L$set$1603,LFE450-LFB450
	.quad L$set$1603
	.byte	0x0
	.byte	0x4
	.set L$set$1604,LCFI1187-LFB450
	.long L$set$1604
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1605,LCFI1188-LCFI1187
	.long L$set$1605
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1606,LCFI1190-LCFI1188
	.long L$set$1606
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE743:
.globl _smpType_def_general.eh
_smpType_def_general.eh:
LSFDE745:
	.set L$set$1607,LEFDE745-LASFDE745
	.long L$set$1607
LASFDE745:
	.long	LASFDE745-EH_frame1
	.quad	LFB451-.
	.set L$set$1608,LFE451-LFB451
	.quad L$set$1608
	.byte	0x0
	.byte	0x4
	.set L$set$1609,LCFI1191-LFB451
	.long L$set$1609
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1610,LCFI1192-LCFI1191
	.long L$set$1610
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1611,LCFI1194-LCFI1192
	.long L$set$1611
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE745:
.globl _smpType_def.eh
_smpType_def.eh:
LSFDE747:
	.set L$set$1612,LEFDE747-LASFDE747
	.long L$set$1612
LASFDE747:
	.long	LASFDE747-EH_frame1
	.quad	LFB452-.
	.set L$set$1613,LFE452-LFB452
	.quad L$set$1613
	.byte	0x0
	.byte	0x4
	.set L$set$1614,LCFI1195-LFB452
	.long L$set$1614
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1615,LCFI1196-LCFI1195
	.long L$set$1615
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1616,LCFI1198-LCFI1196
	.long L$set$1616
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE747:
.globl _smpType_defvar.eh
_smpType_defvar.eh:
LSFDE749:
	.set L$set$1617,LEFDE749-LASFDE749
	.long L$set$1617
LASFDE749:
	.long	LASFDE749-EH_frame1
	.quad	LFB453-.
	.set L$set$1618,LFE453-LFB453
	.quad L$set$1618
	.byte	0x0
	.byte	0x4
	.set L$set$1619,LCFI1199-LFB453
	.long L$set$1619
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1620,LCFI1200-LCFI1199
	.long L$set$1620
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1621,LCFI1202-LCFI1200
	.long L$set$1621
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE749:
.globl _smpType_equalp.eh
_smpType_equalp.eh:
LSFDE751:
	.set L$set$1622,LEFDE751-LASFDE751
	.long L$set$1622
LASFDE751:
	.long	LASFDE751-EH_frame1
	.quad	LFB454-.
	.set L$set$1623,LFE454-LFB454
	.quad L$set$1623
	.byte	0x0
	.byte	0x4
	.set L$set$1624,LCFI1203-LFB454
	.long L$set$1624
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1625,LCFI1204-LCFI1203
	.long L$set$1625
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE751:
.globl _smpType_gc_mark.eh
_smpType_gc_mark.eh:
LSFDE753:
	.set L$set$1626,LEFDE753-LASFDE753
	.long L$set$1626
LASFDE753:
	.long	LASFDE753-EH_frame1
	.quad	LFB455-.
	.set L$set$1627,LFE455-LFB455
	.quad L$set$1627
	.byte	0x0
	.byte	0x4
	.set L$set$1628,LCFI1206-LFB455
	.long L$set$1628
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1629,LCFI1207-LCFI1206
	.long L$set$1629
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1630,LCFI1209-LCFI1207
	.long L$set$1630
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE753:
.globl _smpType_relatedp.eh
_smpType_relatedp.eh:
LSFDE755:
	.set L$set$1631,LEFDE755-LASFDE755
	.long L$set$1631
LASFDE755:
	.long	LASFDE755-EH_frame1
	.quad	LFB456-.
	.set L$set$1632,LFE456-LFB456
	.quad L$set$1632
	.byte	0x0
	.byte	0x4
	.set L$set$1633,LCFI1210-LFB456
	.long L$set$1633
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1634,LCFI1211-LCFI1210
	.long L$set$1634
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1635,LCFI1213-LCFI1211
	.long L$set$1635
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE755:
.globl _main.eh
_main.eh:
LSFDE757:
	.set L$set$1636,LEFDE757-LASFDE757
	.long L$set$1636
LASFDE757:
	.long	LASFDE757-EH_frame1
	.quad	LFB457-.
	.set L$set$1637,LFE457-LFB457
	.quad L$set$1637
	.byte	0x0
	.byte	0x4
	.set L$set$1638,LCFI1214-LFB457
	.long L$set$1638
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1639,LCFI1215-LCFI1214
	.long L$set$1639
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE757:
	.subsections_via_symbols
