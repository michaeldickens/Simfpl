	.text
	.align 4,0x90
.globl _gc_init
_gc_init:
LFB78:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	movq	_gc_stack_length@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	movq	_gc_add_objectsp@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movq	_gc_add_next_objectp@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movq	_gc_activep@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movq	_gc_runningp@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	xorl	%eax, %eax
	leave
	ret
LFE78:
	.align 4,0x90
.globl _minihash_function
_minihash_function:
LFB89:
	pushq	%rbp
LCFI2:
	movq	%rsp, %rbp
LCFI3:
	movzbl	(%rdi), %edx
	movl	$5381, %ecx
	testb	%dl, %dl
	je	L6
	.align 4,0x90
L7:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rdi), %edx
	incq	%rdi
	testb	%dl, %dl
	jne	L7
L6:
	movl	%ecx, %eax
	leave
	ret
LFE89:
	.align 4,0x90
.globl _minihash_each
_minihash_each:
LFB95:
	pushq	%rbp
LCFI4:
	movq	%rsp, %rbp
LCFI5:
	pushq	%r15
LCFI6:
	pushq	%r14
LCFI7:
	pushq	%r13
LCFI8:
	pushq	%r12
LCFI9:
	pushq	%rbx
LCFI10:
	subq	$56, %rsp
LCFI11:
	movq	%rdi, %r13
	movq	%rsi, %r15
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	L12
	cmpq	$0, 24(%rdi)
	je	L12
	cmpq	$0, 8(%rdi)
	je	L12
	xorl	%r8d, %r8d
L16:
	movq	%r8, %r14
	salq	$4, %r14
	addq	%r14, %rax
	cmpq	$0, (%rax)
	je	L17
	cmpq	$0, 8(%rax)
	je	L17
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L20
	.align 4,0x90
L26:
	incq	%r12
	movq	%r14, %rax
	addq	(%r13), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L17
L20:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	movq	%r8, -56(%rbp)
	call	*%r15
	testl	%eax, %eax
	movq	-56(%rbp), %r8
	je	L26
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L17:
	incq	%r8
	cmpq	%r8, 8(%r13)
	jbe	L12
	movq	(%r13), %rax
	jmp	L16
L12:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE95:
	.align 4,0x90
.globl _obj_eq
_obj_eq:
LFB101:
	pushq	%rbp
LCFI12:
	movq	%rsp, %rbp
LCFI13:
	movq	72(%rbp), %rax
	cmpq	%rax, 40(%rbp)
	je	L33
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L32:
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
	.align 4,0x90
L33:
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L32
LFE101:
	.align 4,0x90
.globl _smpObject_clear
_smpObject_clear:
LFB103:
	pushq	%rbp
LCFI14:
	movq	%rsp, %rbp
LCFI15:
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
LFE103:
	.align 4,0x90
.globl _smpObject_gc_mark
_smpObject_gc_mark:
LFB112:
	pushq	%rbp
LCFI16:
	movq	%rsp, %rbp
LCFI17:
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
LFE112:
	.align 4,0x90
.globl _test_init
_test_init:
LFB137:
	pushq	%rbp
LCFI18:
	movq	%rsp, %rbp
LCFI19:
	movq	_smptest_print_successesp@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	xorl	%eax, %eax
	leave
	ret
LFE137:
	.align 4,0x90
.globl _is_power_of_2
_is_power_of_2:
LFB161:
	pushq	%rbp
LCFI20:
	movq	%rsp, %rbp
LCFI21:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	L43
	leaq	-1(%rdi), %rax
	testq	%rdi, %rax
	sete	%al
	movzbl	%al, %eax
L43:
	leave
	ret
LFE161:
	.align 4,0x90
.globl _next_power_of_2
_next_power_of_2:
LFB162:
	pushq	%rbp
LCFI22:
	movq	%rsp, %rbp
LCFI23:
	movq	%rdi, %rax
	shrq	%rax
	orq	%rdi, %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$8, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$16, %rcx
	orq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	orq	%rcx, %rax
	incq	%rax
	leave
	ret
LFE162:
	.align 4,0x90
.globl _smpBool_init
_smpBool_init:
LFB176:
	pushq	%rbp
LCFI24:
	movq	%rsp, %rbp
LCFI25:
	testl	%esi, %esi
	je	L48
	movq	_smp_true@GOTPCREL(%rip), %rdx
L52:
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
	.align 4,0x90
L48:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L52
LFE176:
	.align 4,0x90
.globl _smpBool_to_cint
_smpBool_to_cint:
LFB177:
	pushq	%rbp
LCFI26:
	movq	%rsp, %rbp
LCFI27:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	40(%rbp), %rdx
	cmpq	%rdx, 24(%rax)
	setne	%al
	movzbl	%al, %eax
	leave
	ret
LFE177:
	.align 4,0x90
.globl _smpObject_truep_c
_smpObject_truep_c:
LFB179:
	pushq	%rbp
LCFI28:
	movq	%rsp, %rbp
LCFI29:
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	setne	%al
	movzbl	%al, %eax
	leave
	ret
LFE179:
	.align 4,0x90
.globl _smpBool_and
_smpBool_and:
LFB181:
	pushq	%rbp
LCFI30:
	movq	%rsp, %rbp
LCFI31:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	32(%rbp), %rax
	cmpl	%ecx, 8(%rax)
	je	L58
	movq	16(%rdx), %rax
	cmpl	8(%rax), %ecx
	jne	L64
L58:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L63:
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
	.align 4,0x90
L64:
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L63
LFE181:
	.align 4,0x90
.globl _smpBool_not
_smpBool_not:
LFB182:
	pushq	%rbp
LCFI32:
	movq	%rsp, %rbp
LCFI33:
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	jne	L66
	movq	_smp_true@GOTPCREL(%rip), %rdx
L70:
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
	.align 4,0x90
L66:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L70
LFE182:
	.align 4,0x90
.globl _smpBool_or
_smpBool_or:
LFB183:
	pushq	%rbp
LCFI34:
	movq	%rsp, %rbp
LCFI35:
	movq	32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %ecx
	jne	L72
	movq	16(%rdx), %rax
	cmpl	8(%rax), %ecx
	je	L74
L72:
	movq	_smp_true@GOTPCREL(%rip), %rdx
L77:
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
	.align 4,0x90
L74:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L77
LFE183:
	.align 4,0x90
.globl _smpBool_xor
_smpBool_xor:
LFB184:
	pushq	%rbp
LCFI36:
	movq	%rsp, %rbp
LCFI37:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	16(%rdx), %rax
	cmpl	8(%rax), %ecx
	setne	%dl
	movq	32(%rbp), %rax
	cmpl	%ecx, 8(%rax)
	setne	%al
	xorl	%edx, %eax
	testb	$1, %al
	je	L79
	movq	_smp_true@GOTPCREL(%rip), %rdx
L83:
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
	.align 4,0x90
L79:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L83
LFE184:
	.align 4,0x90
.globl _smpGlobal_list
_smpGlobal_list:
LFB236:
	pushq	%rbp
LCFI38:
	movq	%rsp, %rbp
LCFI39:
	pushq	%rbx
LCFI40:
	subq	$8, %rsp
LCFI41:
	movq	%rdi, %rbx
	movq	%rdx, %rsi
	movl	$32, %edx
	call	_memmove
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE236:
	.align 4,0x90
.globl _smpList_car
_smpList_car:
LFB295:
	pushq	%rbp
LCFI42:
	movq	%rsp, %rbp
LCFI43:
	movq	40(%rbp), %rdx
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
LFE295:
	.align 4,0x90
.globl _smpList_cdr
_smpList_cdr:
LFB296:
	pushq	%rbp
LCFI44:
	movq	%rsp, %rbp
LCFI45:
	pushq	%rbx
LCFI46:
	subq	$8, %rsp
LCFI47:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	32(%rax), %rsi
	testq	%rsi, %rsi
	je	L89
	movl	$32, %edx
	call	_memmove
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L89:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE296:
	.align 4,0x90
.globl _smpList_emptyp
_smpList_emptyp:
LFB298:
	pushq	%rbp
LCFI48:
	movq	%rsp, %rbp
LCFI49:
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
LFE298:
	.align 4,0x90
.globl _smpList_length_clong
_smpList_length_clong:
LFB305:
	pushq	%rbp
LCFI50:
	movq	%rsp, %rbp
LCFI51:
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	xorl	%ecx, %ecx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L100
	leaq	16(%rbp), %rax
	.align 4,0x90
L99:
	incq	%rcx
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	L99
L100:
	movq	%rcx, %rax
	leave
	ret
LFE305:
	.align 4,0x90
.globl _smpListBuffer_to_list
_smpListBuffer_to_list:
LFB314:
	pushq	%rbp
LCFI52:
	movq	%rsp, %rbp
LCFI53:
	movq	40(%rbp), %rdx
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
LFE314:
	.align 4,0x90
.globl _smpNil_car
_smpNil_car:
LFB316:
	pushq	%rbp
LCFI54:
	movq	%rsp, %rbp
LCFI55:
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
LFE316:
	.align 4,0x90
.globl _smpNil_cdr
_smpNil_cdr:
LFB317:
	pushq	%rbp
LCFI56:
	movq	%rsp, %rbp
LCFI57:
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
LFE317:
	.align 4,0x90
.globl _smpNil_emptyp
_smpNil_emptyp:
LFB318:
	pushq	%rbp
LCFI58:
	movq	%rsp, %rbp
LCFI59:
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
LFE318:
	.align 4,0x90
.globl _smpPair_car
_smpPair_car:
LFB324:
	pushq	%rbp
LCFI60:
	movq	%rsp, %rbp
LCFI61:
	movq	40(%rbp), %rdx
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
LFE324:
	.align 4,0x90
.globl _smpPair_cdr
_smpPair_cdr:
LFB325:
	pushq	%rbp
LCFI62:
	movq	%rsp, %rbp
LCFI63:
	pushq	%rbx
LCFI64:
	subq	$8, %rsp
LCFI65:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	32(%rax), %rsi
	testq	%rsi, %rsi
	je	L114
	movl	$32, %edx
	call	_memmove
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L114:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE325:
	.align 4,0x90
.globl _smpPair_set_car_now
_smpPair_set_car_now:
LFB329:
	pushq	%rbp
LCFI66:
	movq	%rsp, %rbp
LCFI67:
	movq	32(%rbp), %r8
	movzbl	24(%rbp), %esi
	movq	16(%rbp), %r9
	movq	40(%rbp), %rcx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	%r8, 16(%rdi)
	movl	%esi, %edx
	andl	$2, %edx
	movzbl	8(%rdi), %eax
	andl	$-4, %eax
	andl	$1, %esi
	orl	%edx, %eax
	orl	%esi, %eax
	movb	%al, 8(%rdi)
	movq	%r9, (%rdi)
	movq	%rcx, 24(%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE329:
	.align 4,0x90
.globl _smpString_to_cstr
_smpString_to_cstr:
LFB358:
	pushq	%rbp
LCFI68:
	movq	%rsp, %rbp
LCFI69:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	leave
	ret
LFE358:
	.align 4,0x90
.globl _smpString_to_s
_smpString_to_s:
LFB359:
	pushq	%rbp
LCFI70:
	movq	%rsp, %rbp
LCFI71:
	movzbl	24(%rbp), %edx
	movq	40(%rbp), %rax
	movq	%rax, 24(%rdi)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rdi)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	8(%rdi), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 8(%rdi)
	movq	16(%rbp), %rax
	movq	%rax, (%rdi)
	movq	%rdi, %rax
	leave
	ret
LFE359:
	.align 4,0x90
.globl _smpSymbol_to_cstr
_smpSymbol_to_cstr:
LFB363:
	pushq	%rbp
LCFI72:
	movq	%rsp, %rbp
LCFI73:
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	leave
	ret
LFE363:
	.align 4,0x90
.globl _smpThrown_get_first_value
_smpThrown_get_first_value:
LFB370:
	pushq	%rbp
LCFI74:
	movq	%rsp, %rbp
LCFI75:
	pushq	%rbx
LCFI76:
	subq	$8, %rsp
LCFI77:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	L127
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L127:
	movq	8(%rax), %rsi
	movl	$32, %edx
	call	_memmove
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE370:
	.align 4,0x90
.globl _smp_should_breakp_c
_smp_should_breakp_c:
LFB372:
	pushq	%rbp
LCFI78:
	movq	%rsp, %rbp
LCFI79:
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	sete	%al
	movzbl	%al, %eax
	leave
	ret
LFE372:
	.align 4,0x90
.globl _smp_should_returnp_c
_smp_should_returnp_c:
LFB373:
	pushq	%rbp
LCFI80:
	movq	%rsp, %rbp
LCFI81:
	movq	40(%rbp), %rsi
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	xorl	%ecx, %ecx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	jne	L136
	movzbl	(%rsi), %eax
	andl	$15, %eax
	xorl	%ecx, %ecx
	cmpb	$1, %al
	setbe	%cl
L136:
	movl	%ecx, %eax
	leave
	ret
LFE373:
	.align 4,0x90
.globl _smp_thrown_exceptionp_c
_smp_thrown_exceptionp_c:
LFB374:
	pushq	%rbp
LCFI82:
	movq	%rsp, %rbp
LCFI83:
	movq	40(%rbp), %rsi
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	xorl	%ecx, %ecx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	jne	L141
	xorl	%ecx, %ecx
	testb	$15, (%rsi)
	sete	%cl
L141:
	movl	%ecx, %eax
	leave
	ret
LFE374:
	.align 4,0x90
.globl _smpThrown_contains_namep
_smpThrown_contains_namep:
LFB368:
	pushq	%rbp
LCFI84:
	movq	%rsp, %rbp
LCFI85:
	pushq	%r14
LCFI86:
	pushq	%r13
LCFI87:
	pushq	%r12
LCFI88:
	pushq	%rbx
LCFI89:
	movq	%rdi, %r14
	movq	40(%rbp), %rax
	movq	16(%rax), %r13
	testq	%r13, %r13
	je	L144
	movq	8(%rax), %r12
	xorl	%ebx, %ebx
	jmp	L146
	.align 4,0x90
L147:
	incq	%rbx
	cmpq	%r13, %rbx
	je	L144
L146:
	movq	%rbx, %rax
	salq	$5, %rax
	movq	16(%rax,%r12), %rax
	movq	%r14, %rsi
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L147
	movb	$1, %al
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
L144:
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
LFE368:
	.align 4,0x90
.globl _obj_types_equalp
_obj_types_equalp:
LFB102:
	pushq	%rbp
LCFI90:
	movq	%rsp, %rbp
LCFI91:
	pushq	%rbx
LCFI92:
	subq	$8, %rsp
LCFI93:
	movq	%rdi, %rbx
	movq	64(%rbp), %rax
	movq	(%rax), %rsi
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L153
	movq	_smp_true@GOTPCREL(%rip), %rdx
L157:
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L153:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L157
LFE102:
	.align 4,0x90
.globl _minihash_containsp
_minihash_containsp:
LFB93:
	pushq	%rbp
LCFI94:
	movq	%rsp, %rbp
LCFI95:
	pushq	%r14
LCFI96:
	pushq	%r13
LCFI97:
	pushq	%r12
LCFI98:
	pushq	%rbx
LCFI99:
	movq	%rsi, %r14
	testq	%rdi, %rdi
	je	L159
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	L159
	movzbl	(%rsi), %edx
	movl	$5381, %eax
	testb	%dl, %dl
	je	L164
	movq	%rsi, %rcx
	movl	$5381, %esi
	.align 4,0x90
L165:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L165
	movslq	%esi,%rax
L164:
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L159
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L159
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L169
	.align 4,0x90
L170:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L159
L169:
	movq	%r14, %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L170
	movb	$1, %al
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
L159:
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
LFE93:
	.align 4,0x90
.globl _minihash_get
_minihash_get:
LFB92:
	pushq	%rbp
LCFI100:
	movq	%rsp, %rbp
LCFI101:
	pushq	%r15
LCFI102:
	pushq	%r14
LCFI103:
	pushq	%r13
LCFI104:
	pushq	%r12
LCFI105:
	pushq	%rbx
LCFI106:
	subq	$8, %rsp
LCFI107:
	movq	%rdi, %r15
	movq	%rdx, %r14
	testq	%rsi, %rsi
	je	L187
	movq	(%rsi), %r8
	testq	%r8, %r8
	je	L187
	movzbl	(%rdx), %edx
	movl	$5381, %eax
	testb	%dl, %dl
	je	L184
	movq	%r14, %rcx
	movl	$5381, %edi
	.align 4,0x90
L185:
	movl	%edi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %edi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L185
	movslq	%edi,%rax
L184:
	xorl	%edx, %edx
	divq	8(%rsi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L187
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L187
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L190
	.align 4,0x90
L191:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L187
L190:
	movq	%r14, %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L191
	movq	8(%rbx), %rax
	movq	%rax, (%r15)
	movq	16(%rbx), %rax
	movq	%rax, 8(%r15)
	movq	24(%rbx), %rax
	movq	%rax, 16(%r15)
	movq	32(%rbx), %rax
	movq	%rax, 24(%r15)
	jmp	L177
	.align 4,0x90
L187:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
L177:
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE92:
	.align 4,0x90
.globl _smpInteger_to_clong
_smpInteger_to_clong:
LFB291:
	pushq	%rbp
LCFI108:
	movq	%rsp, %rbp
LCFI109:
	movq	40(%rbp), %rdi
	leave
	jmp	___gmpz_get_si
LFE291:
	.align 4,0x90
.globl _smpFloat_clear
_smpFloat_clear:
LFB205:
	pushq	%rbp
LCFI110:
	movq	%rsp, %rbp
LCFI111:
	pushq	%rbx
LCFI112:
	subq	$8, %rsp
LCFI113:
	movq	%rdi, %rbx
	movq	40(%rbp), %rdi
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
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE205:
	.align 4,0x90
.globl _smpInteger_clear
_smpInteger_clear:
LFB269:
	pushq	%rbp
LCFI114:
	movq	%rsp, %rbp
LCFI115:
	pushq	%rbx
LCFI116:
	subq	$8, %rsp
LCFI117:
	movq	%rdi, %rbx
	movq	40(%rbp), %rdi
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
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE269:
	.align 4,0x90
.globl _smpFloat_cmp_cint
_smpFloat_cmp_cint:
LFB211:
	pushq	%rbp
LCFI118:
	movq	%rsp, %rbp
LCFI119:
	movq	40(%rbp), %rdi
	movq	16(%rsi), %rax
	movl	8(%rax), %ecx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %ecx
	jne	L204
	movq	24(%rsi), %rsi
	call	_mpfr_cmp_z
	movl	%eax, %edx
	cmpl	$0, %eax
	jle	L218
L217:
	movl	$1, %edx
L208:
	movl	%edx, %eax
	leave
	ret
	.align 4,0x90
L204:
	movl	$-2, %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %ecx
	jne	L208
	movq	24(%rsi), %rsi
	movl	$1, %edx
	call	_mpfr_cmp3
	movl	%eax, %edx
	cmpl	$0, %eax
	jg	L217
	movl	$-1, %eax
	cmovne	%eax, %edx
	jmp	L208
	.align 4,0x90
L218:
	je	L208
	movl	$-1, %edx
	jmp	L208
LFE211:
	.cstring
LC0:
	.ascii "Fatal Error: \0"
	.text
	.align 4,0x90
.globl _fatal_error
_fatal_error:
LFB160:
	pushq	%rbp
LCFI120:
	movq	%rsp, %rbp
LCFI121:
	movq	%rbx, -24(%rbp)
LCFI122:
	movq	%r12, -16(%rbp)
LCFI123:
	movq	%r13, -8(%rbp)
LCFI124:
	subq	$240, %rsp
LCFI125:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	movzbl	%al, %edx
	leaq	0(,%rdx,4), %rax
	leaq	L220(%rip), %rdx
	subq	%rax, %rdx
	leaq	-33(%rbp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L220:
	movq	%rdi, %r13
	leaq	-240(%rbp), %r12
	movl	$8, -240(%rbp)
	movl	$48, -236(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	movl	$13, %edx
	movl	$1, %esi
	leaq	LC0(%rip), %rdi
	call	_fwrite
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	(%rbx), %rdi
	call	_vfprintf
	movq	(%rbx), %rsi
	movl	$10, %edi
	call	_fputc
	movl	$1, 0
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE160:
	.cstring
LC1:
	.ascii "Internal Error: \0"
	.text
	.align 4,0x90
.globl _internal_error
_internal_error:
LFB159:
	pushq	%rbp
LCFI126:
	movq	%rsp, %rbp
LCFI127:
	movq	%rbx, -24(%rbp)
LCFI128:
	movq	%r12, -16(%rbp)
LCFI129:
	movq	%r13, -8(%rbp)
LCFI130:
	subq	$240, %rsp
LCFI131:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	movzbl	%al, %edx
	leaq	0(,%rdx,4), %rax
	leaq	L223(%rip), %rdx
	subq	%rax, %rdx
	leaq	-33(%rbp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L223:
	movq	%rdi, %r13
	leaq	-240(%rbp), %r12
	movl	$8, -240(%rbp)
	movl	$48, -236(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	movl	$16, %edx
	movl	$1, %esi
	leaq	LC1(%rip), %rdi
	call	_fwrite
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	(%rbx), %rdi
	call	_vfprintf
	movq	(%rbx), %rsi
	movl	$10, %edi
	call	_fputc
	movl	$1, 0
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE159:
	.align 4,0x90
.globl _smp_free
_smp_free:
LFB157:
	pushq	%rbp
LCFI132:
	movq	%rsp, %rbp
LCFI133:
	testq	%rdi, %rdi
	je	L228
	leave
	jmp	_free
	.align 4,0x90
L228:
	leave
	ret
LFE157:
	.align 4,0x90
.globl _smpArray_resize
_smpArray_resize:
LFB173:
	pushq	%rbp
LCFI134:
	movq	%rsp, %rbp
LCFI135:
	pushq	%rbx
LCFI136:
	subq	$8, %rsp
LCFI137:
	movq	%rdi, %rbx
	cmpq	$4, %rsi
	jbe	L230
	leaq	-1(%rsi), %rax
	testq	%rsi, %rax
	je	L235
L230:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L235:
	movq	%rsi, %rax
	shrq	%rax
	orq	%rsi, %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$8, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$16, %rax
	orq	%rdx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	incq	%rsi
	movq	(%rdi), %rdi
	call	_realloc
	movq	%rax, (%rbx)
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE173:
	.align 4,0x90
.globl _smp_realloc
_smp_realloc:
LFB155:
	pushq	%rbp
LCFI138:
	movq	%rsp, %rbp
LCFI139:
	leave
	jmp	_realloc
LFE155:
	.align 4,0x90
.globl _smpPair_set_cdr_now
_smpPair_set_cdr_now:
LFB330:
	pushq	%rbp
LCFI140:
	movq	%rsp, %rbp
LCFI141:
	movq	%rbx, -40(%rbp)
LCFI142:
	movq	%r12, -32(%rbp)
LCFI143:
	movq	%r13, -24(%rbp)
LCFI144:
	movq	%r14, -16(%rbp)
LCFI145:
	movq	%r15, -8(%rbp)
LCFI146:
	subq	$64, %rsp
LCFI147:
	movq	%rdi, %r13
	movq	%rdx, %r14
	movq	32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movzbl	24(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	40(%rbp), %r15
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L246
	cmpq	$0, 32(%r15)
	je	L247
L242:
	movq	32(%r15), %rdx
	movq	(%r14), %rax
	movq	%rax, (%rdx)
	movq	8(%r14), %rax
	movq	%rax, 8(%rdx)
	movq	16(%r14), %rax
	movq	%rax, 16(%rdx)
	movq	24(%r14), %rax
	movq	%rax, 24(%rdx)
L245:
	movq	-56(%rbp), %rax
	movq	%rax, 16(%r13)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%r13)
	movq	-64(%rbp), %rax
	movq	%rax, (%r13)
	movq	%r15, 24(%r13)
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L246:
	movq	$0, 32(%r15)
	jmp	L245
L247:
	movl	$32, %edi
	call	_malloc
	movq	%rax, 32(%r15)
	jmp	L242
LFE330:
	.align 4,0x90
.globl _smp_malloc
_smp_malloc:
LFB154:
	pushq	%rbp
LCFI148:
	movq	%rsp, %rbp
LCFI149:
	leave
	jmp	_malloc
LFE154:
	.align 4,0x90
.globl _miniarray_push
_miniarray_push:
LFB91:
	pushq	%rbp
LCFI150:
	movq	%rsp, %rbp
LCFI151:
	pushq	%r15
LCFI152:
	pushq	%r14
LCFI153:
	pushq	%r13
LCFI154:
	pushq	%r12
LCFI155:
	pushq	%rbx
LCFI156:
	subq	$72, %rsp
LCFI157:
	movq	%rdi, -88(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	40(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	32(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r14d
	sarb	$7, %r14b
	sall	$7, %eax
	movl	%eax, %r15d
	sarb	$7, %r15b
	movq	24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	L268
	movq	-88(%rbp), %rdx
	movq	8(%rdx), %r13
	movq	%r13, %r8
	testq	%r13, %r13
	je	L253
	movq	%rax, %rbx
	xorl	%r12d, %r12d
	jmp	L255
	.align 4,0x90
L256:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L269
L255:
	movq	-80(%rbp), %rsi
	movq	(%rbx), %rdi
	movq	%r8, -104(%rbp)
	call	_strcmp
	testl	%eax, %eax
	movq	-104(%rbp), %r8
	jne	L256
	movq	-56(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rbx)
	andl	$1, %r14d
	leal	(%r14,%r14), %edx
	movzbl	16(%rbx), %eax
	andl	$-4, %eax
	andl	$1, %r15d
	orl	%edx, %eax
	orl	%r15d, %eax
	movb	%al, 16(%rbx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rbx)
L258:
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L269:
	cmpq	$-1, %r13
	je	L260
	movq	%r13, %rdx
	incq	%rdx
	jne	L262
L260:
	leaq	(%r8,%r8,4), %rdx
	salq	$3, %rdx
	movq	-88(%rbp), %rax
	addq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 32(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, 24(%rdx)
	andl	$1, %r14d
	leal	(%r14,%r14), %ecx
	movzbl	16(%rdx), %eax
	andl	$-4, %eax
	andl	$1, %r15d
	orl	%ecx, %eax
	orl	%r15d, %eax
	movb	%al, 16(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	%rax, (%rdx)
	leaq	1(%r8), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	L258
L268:
	movl	$80, %edi
	call	_malloc
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	$0, 8(%rdx)
	xorl	%r13d, %r13d
L253:
	leaq	1(%r13), %rdx
L262:
	leaq	-1(%rdx), %rax
	testq	%rdx, %rax
	je	L270
	movq	-88(%rbp), %rax
	movq	8(%rax), %r8
	jmp	L260
L270:
	movq	%rdx, %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$8, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$16, %rax
	orq	%rdx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	leaq	5(%rsi,%rsi,4), %rsi
	salq	$3, %rsi
	movq	-88(%rbp), %rdx
	movq	(%rdx), %rdi
	call	_realloc
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	8(%rdx), %r8
	jmp	L260
LFE91:
	.cstring
LC2:
	.ascii "Function\0"
LC3:
	.ascii "found %lx (%s)\12\0"
	.text
	.align 4,0x90
.globl _mh_print_funs
_mh_print_funs:
LFB81:
	pushq	%rbp
LCFI158:
	movq	%rsp, %rbp
LCFI159:
	movq	%rbx, -16(%rbp)
LCFI160:
	movq	%r12, -8(%rbp)
LCFI161:
	subq	$16, %rsp
LCFI162:
	movq	%rdi, %r12
	movq	40(%rbp), %rbx
	leaq	LC2(%rip), %rsi
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L272
	movq	32(%rbx), %rsi
	movq	%r12, %rdx
	leaq	LC3(%rip), %rdi
	call	_printf
L272:
	xorl	%eax, %eax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	leave
	ret
LFE81:
	.cstring
LC4:
	.ascii "key: %s\12\0"
	.text
	.align 4,0x90
.globl _minihash_print
_minihash_print:
LFB96:
	pushq	%rbp
LCFI163:
	movq	%rsp, %rbp
LCFI164:
	pushq	%r15
LCFI165:
	pushq	%r14
LCFI166:
	pushq	%r13
LCFI167:
	pushq	%r12
LCFI168:
	pushq	%rbx
LCFI169:
	subq	$8, %rsp
LCFI170:
	movq	24(%rbp), %r15
	movq	16(%rbp), %rax
	testq	%rax, %rax
	je	L276
	testq	%r15, %r15
	je	L278
	movq	%rax, %r13
	xorl	%r14d, %r14d
	.align 4,0x90
L280:
	cmpq	$0, (%r13)
	je	L281
	cmpq	$0, 8(%r13)
	je	L281
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.align 4,0x90
L284:
	movq	(%r13), %rax
	movq	(%rax,%rbx), %rsi
	leaq	LC4(%rip), %rdi
	xorl	%eax, %eax
	call	_printf
	incq	%r12
	addq	$40, %rbx
	cmpq	%r12, 8(%r13)
	ja	L284
L281:
	incq	%r14
	addq	$16, %r13
	cmpq	%r15, %r14
	jne	L280
L278:
	movl	$10, %edi
	call	_putchar
L276:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE96:
	.align 4,0x90
.globl _smpString_equalp_cstr
_smpString_equalp_cstr:
LFB351:
	pushq	%rbp
LCFI171:
	movq	%rsp, %rbp
LCFI172:
	movq	%rdi, %rsi
	movq	40(%rbp), %rax
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	ret
LFE351:
	.cstring
LC5:
	.ascii "String\0"
	.text
	.align 4,0x90
.globl _smpString_equalp
_smpString_equalp:
LFB350:
	pushq	%rbp
LCFI173:
	movq	%rsp, %rbp
LCFI174:
	movq	%rbx, -24(%rbp)
LCFI175:
	movq	%r12, -16(%rbp)
LCFI176:
	movq	%r13, -8(%rbp)
LCFI177:
	subq	$32, %rsp
LCFI178:
	movq	%rdi, %rbx
	movq	%rdx, %r12
	movq	40(%rbp), %r13
	movq	16(%rdx), %rax
	leaq	LC5(%rip), %rsi
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L297
L291:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L296:
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
	.align 4,0x90
L297:
	movq	24(%r12), %rax
	movq	(%rax), %rsi
	movq	(%r13), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L291
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L296
LFE350:
	.cstring
LC6:
	.ascii "Class\0"
	.text
	.align 4,0x90
.globl _smpType_equalp
_smpType_equalp:
LFB381:
	pushq	%rbp
LCFI179:
	movq	%rsp, %rbp
LCFI180:
	movq	%rbx, -24(%rbp)
LCFI181:
	movq	%r12, -16(%rbp)
LCFI182:
	movq	%r13, -8(%rbp)
LCFI183:
	subq	$32, %rsp
LCFI184:
	movq	%rdi, %rbx
	movq	%rdx, %r12
	movq	40(%rbp), %r13
	movq	16(%rdx), %rax
	leaq	LC6(%rip), %rsi
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L299
	movq	24(%r12), %rdx
	movl	8(%r13), %eax
	cmpl	8(%rdx), %eax
	je	L306
L299:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L305:
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
	.align 4,0x90
L306:
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L305
LFE381:
	.align 4,0x90
.globl _smpNil_equalp
_smpNil_equalp:
LFB319:
	pushq	%rbp
LCFI185:
	movq	%rsp, %rbp
LCFI186:
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	jne	L308
	movq	_smp_true@GOTPCREL(%rip), %rdx
L312:
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
	.align 4,0x90
L308:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L312
LFE319:
	.align 4,0x90
.globl _smpObject_truep
_smpObject_truep:
LFB178:
	pushq	%rbp
LCFI187:
	movq	%rsp, %rbp
LCFI188:
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L314
	movq	_smp_true@GOTPCREL(%rip), %rdx
L318:
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
	.align 4,0x90
L314:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L318
LFE178:
	.align 4,0x90
.globl _smp_realloc_size
_smp_realloc_size:
LFB156:
	pushq	%rbp
LCFI189:
	movq	%rsp, %rbp
LCFI190:
	movq	%rdx, %rsi
	leave
	jmp	_realloc
LFE156:
	.align 4,0x90
.globl _smpObject_types_equalp
_smpObject_types_equalp:
LFB123:
	pushq	%rbp
LCFI191:
	movq	%rsp, %rbp
LCFI192:
	pushq	%rbx
LCFI193:
	subq	$8, %rsp
LCFI194:
	movq	%rdi, %rbx
	movq	16(%rdx), %rax
	movq	(%rax), %rsi
	movq	32(%rbp), %rax
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L322
	movq	_smp_true@GOTPCREL(%rip), %rdx
L326:
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L322:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L326
LFE123:
	.align 4,0x90
.globl _smpArray_add_now
_smpArray_add_now:
LFB164:
	pushq	%rbp
LCFI195:
	movq	%rsp, %rbp
LCFI196:
	movq	%rbx, -32(%rbp)
LCFI197:
	movq	%r12, -24(%rbp)
LCFI198:
	movq	%r13, -16(%rbp)
LCFI199:
	movq	%r14, -8(%rbp)
LCFI200:
	subq	$32, %rsp
LCFI201:
	movq	%rdi, %r13
	movq	%rdx, %r12
	movq	40(%rbp), %rbx
	movq	8(%rbx), %r14
	leaq	1(%r14), %rax
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	salq	$5, %rdx
	cmpq	$4, %rdx
	jbe	L328
	leaq	-1(%rdx), %rax
	testq	%rdx, %rax
	je	L332
L328:
	movq	(%rbx), %rcx
	movq	%r14, %rdx
	salq	$5, %rdx
	movq	(%r12), %rax
	movq	%rax, (%rdx,%rcx)
	movq	8(%r12), %rax
	movq	%rax, 8(%rdx,%rcx)
	movq	16(%r12), %rax
	movq	%rax, 16(%rdx,%rcx)
	movq	24(%r12), %rax
	movq	%rax, 24(%rdx,%rcx)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
	movq	%r13, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	movq	24(%rsp), %r14
	leave
	ret
	.align 4,0x90
L332:
	movq	%rdx, %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$8, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$16, %rax
	orq	%rdx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	incq	%rsi
	movq	(%rbx), %rdi
	call	_realloc
	movq	%rax, (%rbx)
	jmp	L328
LFE164:
	.align 4,0x90
.globl _smpPair_clear
_smpPair_clear:
LFB326:
	pushq	%rbp
LCFI202:
	movq	%rsp, %rbp
LCFI203:
	pushq	%rbx
LCFI204:
	subq	$8, %rsp
LCFI205:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	32(%rax), %rdi
	testq	%rdi, %rdi
	je	L334
	call	_free
L334:
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
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE326:
	.align 4,0x90
.globl _smpHash_core_clear
_smpHash_core_clear:
LFB253:
	pushq	%rbp
LCFI206:
	movq	%rsp, %rbp
LCFI207:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	L338
	call	_free
L338:
	xorl	%eax, %eax
	leave
	ret
LFE253:
	.align 4,0x90
.globl _smpFunction_clear
_smpFunction_clear:
LFB223:
	pushq	%rbp
LCFI208:
	movq	%rsp, %rbp
LCFI209:
	pushq	%r15
LCFI210:
	pushq	%r14
LCFI211:
	pushq	%r13
LCFI212:
	pushq	%r12
LCFI213:
	pushq	%rbx
LCFI214:
	subq	$8, %rsp
LCFI215:
	movq	%rdi, %r15
	movq	40(%rbp), %r14
	movq	16(%r14), %r12
	movzwl	24(%r14), %ebx
	movq	8(%r14), %rdi
	testq	%rdi, %rdi
	je	L342
	call	_free
L342:
	movswl	%bx,%r13d
	testl	%r13d, %r13d
	jle	L344
	movq	%r12, %rbx
	xorl	%r12d, %r12d
	.align 4,0x90
L346:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L347
	call	_free
L347:
	incl	%r12d
	addq	$56, %rbx
	cmpl	%r13d, %r12d
	jne	L346
L344:
	movq	16(%r14), %rdi
	testq	%rdi, %rdi
	je	L349
	call	_free
L349:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE223:
	.align 4,0x90
.globl _smpTypeError_clear
_smpTypeError_clear:
LFB194:
	pushq	%rbp
LCFI216:
	movq	%rsp, %rbp
LCFI217:
	pushq	%rbx
LCFI218:
	subq	$8, %rsp
LCFI219:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	L354
	call	_free
L354:
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
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE194:
	.align 4,0x90
.globl _smpException_clear
_smpException_clear:
LFB188:
	pushq	%rbp
LCFI220:
	movq	%rsp, %rbp
LCFI221:
	pushq	%rbx
LCFI222:
	subq	$8, %rsp
LCFI223:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	L358
	call	_free
L358:
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
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE188:
	.align 4,0x90
.globl _smpArray_clear
_smpArray_clear:
LFB165:
	pushq	%rbp
LCFI224:
	movq	%rsp, %rbp
LCFI225:
	pushq	%rbx
LCFI226:
	subq	$8, %rsp
LCFI227:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	L362
	call	_free
L362:
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
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE165:
	.align 4,0x90
.globl _smp_free_size
_smp_free_size:
LFB158:
	pushq	%rbp
LCFI228:
	movq	%rsp, %rbp
LCFI229:
	testq	%rdi, %rdi
	je	L368
	leave
	jmp	_free
	.align 4,0x90
L368:
	leave
	ret
LFE158:
	.align 4,0x90
.globl _minihash_clear
_minihash_clear:
LFB87:
	pushq	%rbp
LCFI230:
	movq	%rsp, %rbp
LCFI231:
	pushq	%r15
LCFI232:
	pushq	%r14
LCFI233:
	pushq	%r13
LCFI234:
	pushq	%r12
LCFI235:
	pushq	%rbx
LCFI236:
	subq	$8, %rsp
LCFI237:
	movq	%rdi, %r14
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	je	L370
	cmpq	$0, 8(%rdi)
	je	L389
	xorl	%r15d, %r15d
	.align 4,0x90
L374:
	movq	%r15, %r13
	salq	$4, %r13
	leaq	(%rdx,%r13), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	L375
	cmpq	$0, 8(%rax)
	je	L385
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L379
	.align 4,0x90
L393:
	movq	(%rax), %rdi
L379:
	movq	(%rdi,%rbx), %rdi
	testq	%rdi, %rdi
	je	L380
	call	_free
L380:
	incq	%r12
	movq	%r13, %rax
	addq	(%r14), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	ja	L393
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	L384
L385:
	call	_free
L384:
	movq	(%r14), %rax
	movq	$0, 8(%rax,%r13)
	movq	(%r14), %rdx
L375:
	incq	%r15
	cmpq	%r15, 8(%r14)
	ja	L374
	testq	%rdx, %rdx
	je	L388
L389:
	movq	%rdx, %rdi
	call	_free
L388:
	movq	$0, 24(%r14)
	movq	$0, 16(%r14)
	movq	$0, 8(%r14)
L370:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE87:
	.align 4,0x90
.globl _scope_clear
_scope_clear:
LFB133:
	pushq	%rbp
LCFI238:
	movq	%rsp, %rbp
LCFI239:
	pushq	%r12
LCFI240:
	pushq	%rbx
LCFI241:
	movq	_scope_stack@GOTPCREL(%rip), %r12
	movq	(%r12), %rdi
	subq	$32, %rdi
	movq	_scope_length@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	jmp	L400
	.align 4,0x90
L401:
	movq	(%r12), %rdi
	subq	$32, %rdi
	decq	%rax
	movq	%rax, (%rbx)
L400:
	salq	$5, %rax
	addq	%rax, %rdi
	call	_minihash_clear
	movq	(%rbx), %rax
	cmpq	$1, %rax
	ja	L401
	decq	%rax
	movq	%rax, (%rbx)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	leave
	ret
LFE133:
	.align 4,0x90
.globl _scope_pop
_scope_pop:
LFB129:
	pushq	%rbp
LCFI242:
	movq	%rsp, %rbp
LCFI243:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	decq	%rdi
	movq	%rdi, (%rax)
	salq	$5, %rdi
	movq	_scope_stack@GOTPCREL(%rip), %rax
	addq	(%rax), %rdi
	call	_minihash_clear
	xorl	%eax, %eax
	leave
	ret
LFE129:
	.align 4,0x90
.globl _smpString_clear
_smpString_clear:
LFB349:
	pushq	%rbp
LCFI244:
	movq	%rsp, %rbp
LCFI245:
	movq	%rbx, -16(%rbp)
LCFI246:
	movq	%r12, -8(%rbp)
LCFI247:
	subq	$16, %rsp
LCFI248:
	movq	%rdi, %rbx
	movq	40(%rbp), %r12
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	L405
	call	_free
L405:
	movq	$0, 8(%r12)
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
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	leave
	ret
LFE349:
	.align 4,0x90
.globl _smpregmatch_clear
_smpregmatch_clear:
LFB334:
	pushq	%rbp
LCFI249:
	movq	%rsp, %rbp
LCFI250:
	pushq	%rbx
LCFI251:
	subq	$8, %rsp
LCFI252:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	L409
	call	_free
L409:
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
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE334:
	.align 4,0x90
.globl _smpType_clear
_smpType_clear:
LFB377:
	pushq	%rbp
LCFI253:
	movq	%rsp, %rbp
LCFI254:
	movq	%rbx, -40(%rbp)
LCFI255:
	movq	%r12, -32(%rbp)
LCFI256:
	movq	%r13, -24(%rbp)
LCFI257:
	movq	%r14, -16(%rbp)
LCFI258:
	movq	%r15, -8(%rbp)
LCFI259:
	subq	$64, %rsp
LCFI260:
	movq	%rdi, %r12
	movq	40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movq	32(%rax), %r15
	movq	16(%rax), %r14
	movq	(%rax), %r13
	movq	56(%rax), %rbx
	movq	48(%rax), %rdi
	call	_minihash_clear
	movq	%rbx, %rdi
	call	_minihash_clear
	testq	%r13, %r13
	je	L413
	movq	%r13, %rdi
	call	_free
L413:
	testq	%r14, %r14
	je	L415
	movq	%r14, %rdi
	call	_free
L415:
	movq	%r15, %rdi
	call	_minihash_clear
	movq	-56(%rbp), %rdi
	call	_minihash_clear
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r12)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r12)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r12)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r12)
	movq	%r12, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
LFE377:
	.align 4,0x90
.globl _smpHash_clear
_smpHash_clear:
LFB252:
	pushq	%rbp
LCFI261:
	movq	%rsp, %rbp
LCFI262:
	pushq	%rbx
LCFI263:
	subq	$8, %rsp
LCFI264:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	L419
	call	_free
L419:
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
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE252:
	.align 4,0x90
.globl _minihash_init_capacity
_minihash_init_capacity:
LFB86:
	pushq	%rbp
LCFI265:
	movq	%rsp, %rbp
LCFI266:
	movq	%rbx, -32(%rbp)
LCFI267:
	movq	%r12, -24(%rbp)
LCFI268:
	movq	%r13, -16(%rbp)
LCFI269:
	movq	%r14, -8(%rbp)
LCFI270:
	subq	$32, %rsp
LCFI271:
	movq	%rdi, %rbx
	movq	%rsi, %r14
	movq	%rsi, %r12
	salq	$4, %r12
	movq	%r12, %rdi
	call	_malloc
	movq	%rax, %r13
	movq	%r12, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	_memset
	movq	$0, 24(%rbx)
	movq	$0, 16(%rbx)
	movq	%r13, (%rbx)
	movq	%r14, 8(%rbx)
	movq	%rbx, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	movq	24(%rsp), %r14
	leave
	ret
LFE86:
	.align 4,0x90
.globl _minihash_init
_minihash_init:
LFB85:
	pushq	%rbp
LCFI272:
	movq	%rsp, %rbp
LCFI273:
	pushq	%rbx
LCFI274:
	subq	$8, %rsp
LCFI275:
	movq	%rdi, %rbx
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE85:
	.align 4,0x90
.globl _smpHash_core_init_capacity
_smpHash_core_init_capacity:
LFB260:
	pushq	%rbp
LCFI276:
	movq	%rsp, %rbp
LCFI277:
	movq	%rbx, -32(%rbp)
LCFI278:
	movq	%r12, -24(%rbp)
LCFI279:
	movq	%r13, -16(%rbp)
LCFI280:
	movq	%r14, -8(%rbp)
LCFI281:
	subq	$32, %rsp
LCFI282:
	movq	%rdi, %rbx
	movq	%rsi, %r14
	movq	%rsi, %r12
	salq	$5, %r12
	movq	%r12, %rdi
	call	_malloc
	movq	%rax, %r13
	movq	%r12, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	_memset
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	16(%rax), %rsi
	movzbl	8(%rax), %edx
	movq	(%rax), %rdi
	movq	$0, 56(%rbx)
	movq	$0, 48(%rbx)
	movq	%rcx, 32(%rbx)
	movq	%rsi, 24(%rbx)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	16(%rbx), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 16(%rbx)
	movq	%rdi, 8(%rbx)
	movq	%r13, (%rbx)
	movq	%r14, 40(%rbx)
	movq	%rbx, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	movq	24(%rsp), %r14
	leave
	ret
LFE260:
	.align 4,0x90
.globl _scope_init
_scope_init:
LFB127:
	pushq	%rbp
LCFI283:
	movq	%rsp, %rbp
LCFI284:
	pushq	%rbx
LCFI285:
	subq	$72, %rsp
LCFI286:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	movl	$256, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	%rbx, (%rax)
	leaq	-48(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rbx)
	leaq	-80(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	_scope_classes@GOTPCREL(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rdx)
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE127:
	.align 4,0x90
.globl _minihash_add
_minihash_add:
LFB90:
	pushq	%rbp
LCFI287:
	movq	%rsp, %rbp
LCFI288:
	pushq	%r15
LCFI289:
	pushq	%r14
LCFI290:
	pushq	%r13
LCFI291:
	pushq	%r12
LCFI292:
	pushq	%rbx
LCFI293:
	subq	$216, %rsp
LCFI294:
	movq	%rdi, %r14
	movq	%rsi, %r12
	movq	40(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, -176(%rbp)
	movzbl	24(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	sall	$7, %eax
	movl	%eax, %r15d
	sarb	$7, %r15b
	movq	16(%rbp), %rax
	movq	%rax, -184(%rbp)
	cmpq	$0, (%rdi)
	je	L461
L431:
	movzbl	(%r12), %edx
	movl	$5381, %eax
	testb	%dl, %dl
	je	L435
	movq	%r12, %rcx
	movl	$5381, %esi
	.align 4,0x90
L436:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L436
	movslq	%esi,%rax
L435:
	xorl	%edx, %edx
	divq	8(%r14)
	movl	%edx, -188(%rbp)
	movq	%r12, %rdi
	call	_strlen
	leaq	1(%rax), %rdi
	call	_malloc
	movq	%rax, %rbx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_strcpy
	movslq	-188(%rbp),%rdi
	salq	$4, %rdi
	movq	(%r14), %rax
	cmpq	$0, (%rax,%rdi)
	je	L462
L438:
	addq	(%r14), %rdi
	movq	-168(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -136(%rbp)
	andl	$1, %r13d
	leal	(%r13,%r13), %edx
	movzbl	-144(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r15d
	orl	%edx, %eax
	orl	%r15d, %eax
	movb	%al, -144(%rbp)
	movq	-184(%rbp), %rdx
	movq	%rdx, -152(%rbp)
	movq	%rbx, -160(%rbp)
	movq	%rbx, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-168(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	call	_miniarray_push
	incq	24(%r14)
	movq	8(%r14), %rsi
	movq	16(%r14), %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rax, %rcx
	cvtsi2sdq	%rax, %xmm0
	testq	%rax, %rax
	js	L463
L442:
	movsd	LC7(%rip), %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	L440
	leaq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)
	cvtsi2sdq	%rsi, %xmm1
	testq	%rsi, %rsi
	js	L464
L446:
	movapd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	LC8(%rip), %xmm0
	movsd	LC9(%rip), %xmm1
	cvttsd2siq	%xmm0, %rsi
	ucomisd	%xmm1, %xmm0
	jb	L448
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rsi
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, %rsi
L448:
	movq	-200(%rbp), %rdi
	call	_minihash_init_capacity
	cmpq	$0, 8(%r14)
	je	L449
	xorl	%r15d, %r15d
	.align 4,0x90
L451:
	movq	%r15, %r13
	salq	$4, %r13
	movq	%r13, %rax
	addq	(%r14), %rax
	cmpq	$0, (%rax)
	je	L452
	cmpq	$0, 8(%rax)
	je	L452
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.align 4,0x90
L455:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rsi
	movq	-200(%rbp), %rdi
	call	_minihash_add
	incq	%r12
	movq	%r13, %rax
	addq	(%r14), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	ja	L455
L452:
	incq	%r15
	cmpq	%r15, 8(%r14)
	ja	L451
L449:
	movq	%r14, %rdi
	call	_minihash_clear
	movq	-80(%rbp), %rax
	movq	%rax, (%r14)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%r14)
L440:
	xorl	%eax, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L463:
	shrq	%rax
	andl	$1, %ecx
	orq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	L442
L464:
	movq	%rsi, %rax
	shrq	%rax
	andl	$1, %esi
	orq	%rsi, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	L446
L462:
	incq	16(%r14)
	jmp	L438
L461:
	leaq	-112(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	-112(%rbp), %rax
	movq	%rax, (%r14)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%r14)
	jmp	L431
LFE90:
	.align 4,0x90
.globl _minihash_copy
_minihash_copy:
LFB94:
	pushq	%rbp
LCFI295:
	movq	%rsp, %rbp
LCFI296:
	pushq	%r15
LCFI297:
	pushq	%r14
LCFI298:
	pushq	%r13
LCFI299:
	pushq	%r12
LCFI300:
	pushq	%rbx
LCFI301:
	subq	$56, %rsp
LCFI302:
	movq	%rdi, %r15
	movq	%rsi, %r13
	cmpq	$0, 8(%rsi)
	je	L466
	xorl	%r8d, %r8d
	.align 4,0x90
L468:
	movq	%r8, %r14
	salq	$4, %r14
	movq	%r14, %rax
	addq	(%r13), %rax
	cmpq	$0, (%rax)
	je	L469
	cmpq	$0, 8(%rax)
	je	L469
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.align 4,0x90
L472:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rsi
	movq	%r15, %rdi
	movq	%r8, -56(%rbp)
	call	_minihash_add
	incq	%r12
	movq	%r14, %rax
	addq	(%r13), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	movq	-56(%rbp), %r8
	ja	L472
L469:
	incq	%r8
	cmpq	%r8, 8(%r13)
	ja	L468
L466:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE94:
	.align 4,0x90
.globl _scope_push
_scope_push:
LFB128:
	pushq	%rbp
LCFI303:
	movq	%rsp, %rbp
LCFI304:
	pushq	%r15
LCFI305:
	pushq	%r14
LCFI306:
	pushq	%r13
LCFI307:
	pushq	%r12
LCFI308:
	pushq	%rbx
LCFI309:
	subq	$88, %rsp
LCFI310:
	movq	_scope_length@GOTPCREL(%rip), %r13
	movq	(%r13), %rdx
	cmpq	$3, %rdx
	jbe	L489
	leaq	-1(%rdx), %rax
	testq	%rdx, %rax
	je	L492
L489:
	movq	_scope_stack@GOTPCREL(%rip), %r14
L477:
	movq	(%r13), %rbx
	movq	%rbx, %r12
	salq	$5, %r12
	addq	(%r14), %r12
	leaq	-80(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	-80(%rbp), %rax
	movq	%rax, (%r12)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%r12)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%r12)
	incq	%rbx
	movq	%rbx, (%r13)
	movq	(%r14), %rax
	salq	$5, %rbx
	leaq	-64(%rax,%rbx), %r13
	leaq	-32(%rax,%rbx), %r15
	cmpq	$0, 8(%r13)
	je	L480
	xorl	%r8d, %r8d
	.align 4,0x90
L482:
	movq	%r8, %r14
	salq	$4, %r14
	movq	%r14, %rax
	addq	(%r13), %rax
	cmpq	$0, (%rax)
	je	L483
	cmpq	$0, 8(%rax)
	je	L483
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.align 4,0x90
L486:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rsi
	movq	%r15, %rdi
	movq	%r8, -88(%rbp)
	call	_minihash_add
	incq	%r12
	movq	%r14, %rax
	addq	(%r13), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	movq	-88(%rbp), %r8
	ja	L486
L483:
	incq	%r8
	cmpq	%r8, 8(%r13)
	ja	L482
L480:
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L492:
	movq	%rdx, %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$8, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$16, %rax
	orq	%rdx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	incq	%rsi
	salq	$5, %rsi
	movq	_scope_stack@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	call	_realloc
	movq	%rax, (%r14)
	jmp	L477
LFE128:
	.align 4,0x90
.globl _smpObject_instancep_c
_smpObject_instancep_c:
LFB118:
	pushq	%rbp
LCFI311:
	movq	%rsp, %rbp
LCFI312:
	pushq	%r15
LCFI313:
	pushq	%r14
LCFI314:
	pushq	%r13
LCFI315:
	pushq	%r12
LCFI316:
	pushq	%rbx
LCFI317:
	subq	$392, %rsp
LCFI318:
	movq	%rdi, -320(%rbp)
	movq	72(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	64(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movq	56(%rbp), %rbx
	movq	%rbx, -200(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	40(%rbp), %rdx
	movq	%rdx, -216(%rbp)
	movq	32(%rbp), %rbx
	movq	%rbx, -224(%rbp)
	movzbl	28(%rbp), %eax
	leal	0(,%rax,4), %esi
	sarb	$7, %sil
	leal	0(,%rax,8), %edi
	sarb	$7, %dil
	movl	%eax, %edx
	sall	$4, %edx
	sarb	$6, %dl
	movl	%eax, %ecx
	sall	$6, %ecx
	sarb	$7, %cl
	sall	$7, %eax
	sarb	$7, %al
	movq	16(%rbp), %rbx
	movq	%rbx, -232(%rbp)
	movl	24(%rbp), %r14d
	cmpq	$0, -320(%rbp)
	je	L494
	movq	-320(%rbp), %rbx
	cmpl	8(%rbx), %r14d
	je	L496
	cmpq	$0, 24(%rbx)
	je	L494
	movq	$0, -312(%rbp)
	movl	%esi, %ebx
	andl	$1, %ebx
	sall	$5, %ebx
	movb	%bl, -321(%rbp)
	movl	%edi, %ebx
	andl	$1, %ebx
	sall	$4, %ebx
	movb	%bl, -322(%rbp)
	andl	$3, %edx
	sall	$2, %edx
	movb	%dl, -323(%rbp)
	andl	$1, %ecx
	addl	%ecx, %ecx
	movb	%cl, -324(%rbp)
	andl	$1, %eax
	movb	%al, -325(%rbp)
L499:
	movq	-320(%rbp), %rdx
	movq	16(%rdx), %rax
	movq	-312(%rbp), %rbx
	movq	(%rax,%rbx,8), %rax
	movq	%rax, -304(%rbp)
	testq	%rax, %rax
	je	L500
	cmpl	8(%rax), %r14d
	je	L496
	cmpq	$0, 24(%rax)
	je	L500
	movq	$0, -296(%rbp)
	movq	-304(%rbp), %rdx
L504:
	movq	16(%rdx), %rax
	movq	-296(%rbp), %rbx
	movq	(%rax,%rbx,8), %rax
	movq	%rax, -288(%rbp)
	testq	%rax, %rax
	je	L505
	cmpl	8(%rax), %r14d
	je	L496
	cmpq	$0, 24(%rax)
	je	L505
	movq	$0, -280(%rbp)
L509:
	movq	-288(%rbp), %rdx
	movq	16(%rdx), %rax
	movq	-280(%rbp), %rbx
	movq	(%rax,%rbx,8), %rax
	movq	%rax, -272(%rbp)
	testq	%rax, %rax
	je	L510
	cmpl	8(%rax), %r14d
	je	L496
	cmpq	$0, 24(%rax)
	je	L510
	movq	$0, -264(%rbp)
	movq	-264(%rbp), %rbx
L514:
	movq	-272(%rbp), %rdx
	movq	16(%rdx), %rax
	movq	(%rax,%rbx,8), %r10
	testq	%r10, %r10
	je	L515
	cmpl	8(%r10), %r14d
	je	L496
	cmpq	$0, 24(%r10)
	je	L515
	movq	$0, -256(%rbp)
	movq	-256(%rbp), %rdx
L519:
	movq	16(%r10), %rax
	movq	(%rax,%rdx,8), %r9
	testq	%r9, %r9
	je	L520
	cmpl	8(%r9), %r14d
	je	L496
	cmpq	$0, 24(%r9)
	je	L520
	movq	$0, -248(%rbp)
L524:
	movq	16(%r9), %rax
	movq	-248(%rbp), %rbx
	movq	(%rax,%rbx,8), %r8
	testq	%r8, %r8
	je	L525
	cmpl	8(%r8), %r14d
	je	L496
	cmpq	$0, 24(%r8)
	je	L525
	movq	$0, -240(%rbp)
L529:
	movq	16(%r8), %rax
	movq	-240(%rbp), %rdx
	movq	(%rax,%rdx,8), %r15
	testq	%r15, %r15
	je	L530
	cmpl	8(%r15), %r14d
	je	L496
	cmpq	$0, 24(%r15)
	je	L530
	xorl	%r11d, %r11d
L534:
	movq	16(%r15), %rax
	movq	(%rax,%r11,8), %r12
	movq	-184(%rbp), %rbx
	movq	%rbx, -56(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-200(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	-208(%rbp), %rbx
	movq	%rbx, -80(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movzbl	-100(%rbp), %eax
	andl	$-49, %eax
	orb	-321(%rbp), %al
	orb	-322(%rbp), %al
	andl	$-15, %eax
	orb	-323(%rbp), %al
	orb	-324(%rbp), %al
	andl	$-2, %eax
	orb	-325(%rbp), %al
	movb	%al, -100(%rbp)
	movq	-232(%rbp), %rbx
	movq	%rbx, -112(%rbp)
	movl	%r14d, -104(%rbp)
	movq	%rbx, -176(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rdx, -144(%rbp)
	movq	-200(%rbp), %rbx
	movq	%rbx, -136(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-184(%rbp), %rdx
	movq	%rdx, -120(%rbp)
	movl	-168(%rbp), %r13d
	testq	%r12, %r12
	je	L535
	cmpl	8(%r12), %r13d
	je	L496
	cmpq	$0, 24(%r12)
	je	L535
	xorl	%ebx, %ebx
	jmp	L539
	.align 4,0x90
L552:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L535
L539:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	movl	%r13d, -168(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%r8, -344(%rbp)
	movq	%r9, -352(%rbp)
	movq	%r10, -360(%rbp)
	movq	%r11, -368(%rbp)
	call	_smpObject_instancep_c
	testl	%eax, %eax
	movq	-344(%rbp), %r8
	movq	-352(%rbp), %r9
	movq	-360(%rbp), %r10
	movq	-368(%rbp), %r11
	je	L552
L496:
	movl	$1, %eax
L541:
	addq	$392, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L535:
	incq	%r11
	cmpq	%r11, 24(%r15)
	ja	L534
L530:
	incq	-240(%rbp)
	movq	-240(%rbp), %rbx
	cmpq	%rbx, 24(%r8)
	ja	L529
L525:
	incq	-248(%rbp)
	movq	-248(%rbp), %rax
	cmpq	%rax, 24(%r9)
	ja	L524
L520:
	incq	-256(%rbp)
	movq	-256(%rbp), %rdx
	cmpq	%rdx, 24(%r10)
	ja	L519
L515:
	incq	-264(%rbp)
	movq	-264(%rbp), %rbx
	movq	-272(%rbp), %rax
	cmpq	%rbx, 24(%rax)
	ja	L514
L510:
	incq	-280(%rbp)
	movq	-280(%rbp), %rdx
	movq	-288(%rbp), %rbx
	cmpq	%rdx, 24(%rbx)
	ja	L509
L505:
	incq	-296(%rbp)
	movq	-296(%rbp), %rax
	movq	-304(%rbp), %rdx
	cmpq	%rax, 24(%rdx)
	ja	L504
L500:
	incq	-312(%rbp)
	movq	-312(%rbp), %rbx
	movq	-320(%rbp), %rax
	cmpq	%rbx, 24(%rax)
	ja	L499
L494:
	xorl	%eax, %eax
	jmp	L541
LFE118:
	.align 4,0x90
.globl _smpObject_instancep_cint
_smpObject_instancep_cint:
LFB117:
	pushq	%rbp
LCFI319:
	movq	%rsp, %rbp
LCFI320:
	pushq	%r14
LCFI321:
	pushq	%r13
LCFI322:
	pushq	%r12
LCFI323:
	pushq	%rbx
LCFI324:
	subq	$192, %rsp
LCFI325:
	movq	32(%rbp), %r14
	movq	24(%rsi), %rax
	movq	48(%rax), %r13
	movq	40(%rax), %r12
	movq	32(%rax), %r11
	movq	24(%rax), %r10
	movq	16(%rax), %r8
	movzbl	12(%rax), %edx
	movl	8(%rax), %ebx
	movq	(%rax), %rdi
	movq	56(%rax), %r9
	movq	%r9, -40(%rbp)
	movq	%r13, -48(%rbp)
	movq	%r12, -56(%rbp)
	movq	%r11, -64(%rbp)
	movq	%r10, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	$32, %esi
	andl	%edx, %esi
	movzbl	-84(%rbp), %eax
	andl	$-49, %eax
	movl	%edx, %ecx
	andl	$16, %ecx
	orl	%esi, %eax
	orl	%ecx, %eax
	movl	$12, %esi
	andl	%edx, %esi
	andl	$-15, %eax
	movl	%edx, %ecx
	andl	$2, %ecx
	orl	%esi, %eax
	orl	%ecx, %eax
	andl	$1, %edx
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -84(%rbp)
	movl	%ebx, -88(%rbp)
	movq	%rdi, -96(%rbp)
	movq	%rdi, -160(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r10, -136(%rbp)
	movq	%r11, -128(%rbp)
	movq	%r12, -120(%rbp)
	movq	%r13, -112(%rbp)
	movq	%r9, -104(%rbp)
	movl	-152(%rbp), %r12d
	testq	%r14, %r14
	je	L554
	cmpl	%r12d, 8(%r14)
	je	L556
	cmpq	$0, 24(%r14)
	je	L554
	xorl	%ebx, %ebx
	jmp	L559
	.align 4,0x90
L564:
	incq	%rbx
	cmpq	%rbx, 24(%r14)
	jbe	L554
L559:
	movq	16(%r14), %rax
	movq	(%rax,%rbx,8), %rdi
	movl	%r12d, -152(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 56(%rsp)
	call	_smpObject_instancep_c
	testl	%eax, %eax
	je	L564
L556:
	movl	$1, %eax
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
L554:
	xorl	%eax, %eax
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
LFE117:
	.align 4,0x90
.globl _smpType_relatedp
_smpType_relatedp:
LFB383:
	pushq	%rbp
LCFI326:
	movq	%rsp, %rbp
LCFI327:
	pushq	%r15
LCFI328:
	pushq	%r14
LCFI329:
	pushq	%r13
LCFI330:
	pushq	%r12
LCFI331:
	pushq	%rbx
LCFI332:
	subq	$200, %rsp
LCFI333:
	movq	%rdi, %r15
	movq	40(%rbp), %r14
	movq	24(%rdx), %rax
	movq	48(%rax), %r13
	movq	40(%rax), %r12
	movq	32(%rax), %r11
	movq	24(%rax), %r10
	movq	16(%rax), %r8
	movzbl	12(%rax), %edx
	movl	8(%rax), %ebx
	movq	(%rax), %rdi
	movq	56(%rax), %r9
	movq	%r9, -56(%rbp)
	movq	%r13, -64(%rbp)
	movq	%r12, -72(%rbp)
	movq	%r11, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%r8, -96(%rbp)
	movl	$32, %esi
	andl	%edx, %esi
	movzbl	-100(%rbp), %eax
	andl	$-49, %eax
	movl	%edx, %ecx
	andl	$16, %ecx
	orl	%esi, %eax
	orl	%ecx, %eax
	movl	$12, %esi
	andl	%edx, %esi
	andl	$-15, %eax
	movl	%edx, %ecx
	andl	$2, %ecx
	orl	%esi, %eax
	orl	%ecx, %eax
	andl	$1, %edx
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -100(%rbp)
	movl	%ebx, -104(%rbp)
	movq	%rdi, -112(%rbp)
	movq	%rdi, -176(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r10, -152(%rbp)
	movq	%r11, -144(%rbp)
	movq	%r12, -136(%rbp)
	movq	%r13, -128(%rbp)
	movq	%r9, -120(%rbp)
	movl	-168(%rbp), %r12d
	testq	%r14, %r14
	je	L566
	cmpl	%r12d, 8(%r14)
	je	L568
	cmpq	$0, 24(%r14)
	je	L566
	xorl	%ebx, %ebx
	jmp	L571
	.align 4,0x90
L577:
	incq	%rbx
	cmpq	%rbx, 24(%r14)
	jbe	L566
L571:
	movq	16(%r14), %rax
	movq	(%rax,%rbx,8), %rdi
	movl	%r12d, -168(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 56(%rsp)
	call	_smpObject_instancep_c
	testl	%eax, %eax
	je	L577
L568:
	movq	_smp_true@GOTPCREL(%rip), %rdx
L576:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	movq	%r15, %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L566:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L576
LFE383:
	.align 4,0x90
.globl _obj_init_str
_obj_init_str:
LFB346:
	pushq	%rbp
LCFI334:
	movq	%rsp, %rbp
LCFI335:
	movq	%rbx, -32(%rbp)
LCFI336:
	movq	%r12, -24(%rbp)
LCFI337:
	movq	%r13, -16(%rbp)
LCFI338:
	movq	%r14, -8(%rbp)
LCFI339:
	subq	$32, %rsp
LCFI340:
	movq	%rdi, %r14
	movq	%rsi, %r13
	movl	$16, %edi
	call	_malloc
	movq	%rax, 24(%r14)
	movq	%r13, %rdi
	call	_strlen
	movq	%rax, %r12
	leaq	1(%rax), %rdi
	call	_malloc
	movq	%rax, %rbx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_strcpy
	movq	24(%r14), %rax
	movq	%rbx, (%rax)
	movq	%r12, 8(%rax)
	xorl	%eax, %eax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	movq	24(%rsp), %r14
	leave
	ret
LFE346:
	.align 4,0x90
.globl _smpInteger_cmp_cint
_smpInteger_cmp_cint:
LFB282:
	pushq	%rbp
LCFI341:
	movq	%rsp, %rbp
LCFI342:
	movq	32(%rbp), %r9
	movq	40(%rbp), %rdi
	movq	16(%rsi), %rax
	movl	8(%rax), %ecx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %r8d
	cmpl	%r8d, %ecx
	jne	L581
	movq	24(%rsi), %rsi
	call	___gmpz_cmp
	movl	%eax, %edx
	cmpl	$0, %eax
	jle	L604
L602:
	movl	$1, %edx
L585:
	movl	%edx, %eax
	leave
	ret
	.align 4,0x90
L581:
	movl	$-2, %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %ecx
	jne	L585
	movq	24(%rsi), %r10
	movl	8(%r9), %eax
	cmpl	%eax, %r8d
	je	L605
	movl	$-2, %edx
	cmpl	%eax, %ecx
	jne	L585
	movl	$1, %edx
	movq	%rdi, %rsi
	movq	%r10, %rdi
	call	_mpfr_cmp3
	movl	%eax, %edx
	cmpl	$0, %eax
	jg	L602
	movl	$-1, %eax
	cmovne	%eax, %edx
	jmp	L585
L605:
	movq	%rdi, %rsi
	movq	%r10, %rdi
	call	_mpfr_cmp_z
	movl	%eax, %edx
	cmpl	$0, %eax
	jg	L602
	.align 4,0x90
L604:
	je	L585
	movl	$-1, %edx
	jmp	L585
LFE282:
	.align 4,0x90
.globl _gc_mark
_gc_mark:
LFB82:
	pushq	%rbp
LCFI343:
	movq	%rsp, %rbp
LCFI344:
	pushq	%r15
LCFI345:
	pushq	%r14
LCFI346:
	pushq	%r13
LCFI347:
	pushq	%r12
LCFI348:
	pushq	%rbx
LCFI349:
	subq	$56, %rsp
LCFI350:
	movq	_scope_classes@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	L607
	cmpq	$0, 24(%r14)
	jne	L636
L607:
	movq	_scope_length@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	L618
	xorl	%r8d, %r8d
	.align 4,0x90
L620:
	movq	%r8, %r13
	salq	$5, %r13
	movq	_scope_stack@GOTPCREL(%rip), %rax
	addq	(%rax), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	L621
	cmpq	$0, 24(%r13)
	je	L621
	cmpq	$0, 8(%r13)
	je	L621
	xorl	%r15d, %r15d
L625:
	movq	%r15, %r14
	salq	$4, %r14
	leaq	(%r14,%rax), %rax
	cmpq	$0, (%rax)
	je	L626
	cmpq	$0, 8(%rax)
	je	L626
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L629
	.align 4,0x90
L637:
	incq	%r12
	movq	%r14, %rax
	addq	(%r13), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L626
L629:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	movq	%r8, -56(%rbp)
	call	_gc_mark_recursive
	testl	%eax, %eax
	movq	-56(%rbp), %r8
	je	L637
L621:
	incq	%r8
	movq	_scope_length@GOTPCREL(%rip), %rax
	cmpq	%r8, (%rax)
	ja	L620
L618:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L626:
	incq	%r15
	cmpq	%r15, 8(%r13)
	jbe	L621
	movq	(%r13), %rax
	jmp	L625
L636:
	cmpq	$0, 8(%r14)
	je	L607
	xorl	%r15d, %r15d
L611:
	movq	%r15, %r13
	salq	$4, %r13
	addq	%r13, %rax
	cmpq	$0, (%rax)
	je	L612
	cmpq	$0, 8(%rax)
	je	L612
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L615
	.align 4,0x90
L616:
	incq	%r12
	movq	%r13, %rax
	addq	(%r14), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L612
L615:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	call	_gc_mark_recursive
	testl	%eax, %eax
	je	L616
	jmp	L607
L612:
	incq	%r15
	cmpq	%r15, 8(%r14)
	jbe	L607
	movq	(%r14), %rax
	jmp	L611
LFE82:
	.align 4,0x90
.globl _smpType_gc_mark
_smpType_gc_mark:
LFB382:
	pushq	%rbp
LCFI351:
	movq	%rsp, %rbp
LCFI352:
	pushq	%r15
LCFI353:
	pushq	%r14
LCFI354:
	pushq	%r13
LCFI355:
	pushq	%r12
LCFI356:
	pushq	%rbx
LCFI357:
	subq	$56, %rsp
LCFI358:
	movq	%rdi, -64(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	48(%rax), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	L639
	cmpq	$0, 24(%r13)
	je	L639
	cmpq	$0, 8(%r13)
	je	L639
	xorl	%r15d, %r15d
L643:
	movq	%r15, %r14
	salq	$4, %r14
	addq	%r14, %rax
	cmpq	$0, (%rax)
	je	L644
	cmpq	$0, 8(%rax)
	je	L644
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L647
	.align 4,0x90
L688:
	incq	%r12
	movq	%r14, %rax
	addq	(%r13), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L644
L647:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	call	_gc_mark_recursive
	testl	%eax, %eax
	je	L688
L639:
	movq	-56(%rbp), %rdx
	movq	56(%rdx), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	L650
	cmpq	$0, 24(%r13)
	je	L650
	cmpq	$0, 8(%r13)
	je	L650
	xorl	%r15d, %r15d
L654:
	movq	%r15, %r14
	salq	$4, %r14
	leaq	(%r14,%rax), %rax
	cmpq	$0, (%rax)
	je	L655
	cmpq	$0, 8(%rax)
	je	L655
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L658
	.align 4,0x90
L689:
	incq	%r12
	movq	%r14, %rax
	addq	(%r13), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L655
L658:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	call	_gc_mark_recursive
	testl	%eax, %eax
	je	L689
L650:
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	L661
	cmpq	$0, 24(%r13)
	jne	L690
L661:
	movq	-56(%rbp), %rax
	movq	40(%rax), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	L672
	cmpq	$0, 24(%r13)
	je	L672
	cmpq	$0, 8(%r13)
	je	L672
	xorl	%r15d, %r15d
L676:
	movq	%r15, %r14
	salq	$4, %r14
	leaq	(%r14,%rax), %rax
	cmpq	$0, (%rax)
	je	L677
	cmpq	$0, 8(%rax)
	je	L677
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L680
	.align 4,0x90
L691:
	incq	%r12
	movq	%r14, %rax
	addq	(%r13), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L677
L680:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	call	_gc_mark_recursive
	testl	%eax, %eax
	je	L691
L672:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	movq	%rcx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L677:
	incq	%r15
	cmpq	%r15, 8(%r13)
	jbe	L672
	movq	(%r13), %rax
	jmp	L676
L690:
	cmpq	$0, 8(%r13)
	je	L661
	xorl	%r15d, %r15d
L665:
	movq	%r15, %r14
	salq	$4, %r14
	leaq	(%r14,%rax), %rax
	cmpq	$0, (%rax)
	je	L666
	cmpq	$0, 8(%rax)
	je	L666
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L669
	.align 4,0x90
L692:
	incq	%r12
	movq	%r14, %rax
	addq	(%r13), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L666
L669:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	call	_gc_mark_recursive
	testl	%eax, %eax
	je	L692
	jmp	L661
L666:
	incq	%r15
	cmpq	%r15, 8(%r13)
	jbe	L661
	movq	(%r13), %rax
	jmp	L665
L655:
	incq	%r15
	cmpq	%r15, 8(%r13)
	jbe	L650
	movq	(%r13), %rax
	jmp	L654
L644:
	incq	%r15
	cmpq	%r15, 8(%r13)
	jbe	L639
	movq	(%r13), %rax
	jmp	L643
LFE382:
	.align 4,0x90
.globl _smpObject_instancep_cstr
_smpObject_instancep_cstr:
LFB119:
	pushq	%rbp
LCFI359:
	movq	%rsp, %rbp
LCFI360:
	pushq	%r15
LCFI361:
	pushq	%r14
LCFI362:
	pushq	%r13
LCFI363:
	pushq	%r12
LCFI364:
	pushq	%rbx
LCFI365:
	subq	$120, %rsp
LCFI366:
	movq	%rdi, -160(%rbp)
	movq	%rsi, %r13
	movq	(%rdi), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L694
	movq	-160(%rbp), %rdx
	cmpq	$0, 24(%rdx)
	je	L696
	movq	$0, -152(%rbp)
L698:
	movq	-160(%rbp), %rdx
	movq	16(%rdx), %rax
	movq	-152(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -144(%rbp)
	movq	%r13, %rsi
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L694
	movq	-144(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	L700
	movq	$0, -136(%rbp)
	movq	-144(%rbp), %rdx
L702:
	movq	16(%rdx), %rax
	movq	-136(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -128(%rbp)
	movq	%r13, %rsi
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L694
	movq	-128(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	L704
	movq	$0, -120(%rbp)
	movq	-128(%rbp), %rdx
L706:
	movq	16(%rdx), %rax
	movq	-120(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -112(%rbp)
	movq	%r13, %rsi
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L694
	movq	-112(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	L708
	movq	$0, -104(%rbp)
	movq	-112(%rbp), %rdx
L710:
	movq	16(%rdx), %rax
	movq	-104(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -96(%rbp)
	movq	%r13, %rsi
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L694
	movq	-96(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	L712
	movq	$0, -88(%rbp)
	movq	-96(%rbp), %rdx
L714:
	movq	16(%rdx), %rax
	movq	-88(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -80(%rbp)
	movq	%r13, %rsi
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L694
	movq	-80(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	L716
	movq	$0, -72(%rbp)
	movq	-80(%rbp), %rdx
L718:
	movq	16(%rdx), %rax
	movq	-72(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -64(%rbp)
	movq	%r13, %rsi
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L694
	movq	-64(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	L720
	movq	$0, -56(%rbp)
	movq	-64(%rbp), %rdx
L722:
	movq	16(%rdx), %rax
	movq	-56(%rbp), %rdx
	movq	(%rax,%rdx,8), %r14
	movq	%r13, %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L694
	cmpq	$0, 24(%r14)
	je	L724
	xorl	%r15d, %r15d
L726:
	movq	16(%r14), %rax
	movq	(%rax,%r15,8), %r12
	movq	%r13, %rsi
	movq	(%r12), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L694
	cmpq	$0, 24(%r12)
	je	L728
	xorl	%ebx, %ebx
	jmp	L730
	.align 4,0x90
L743:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L728
L730:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	movq	%r13, %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L743
L694:
	movl	$1, %eax
L732:
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L728:
	incq	%r15
	cmpq	%r15, 24(%r14)
	ja	L726
L724:
	incq	-56(%rbp)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	cmpq	%rax, 24(%rdx)
	ja	L722
L720:
	incq	-72(%rbp)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	cmpq	%rax, 24(%rdx)
	ja	L718
L716:
	incq	-88(%rbp)
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rdx
	cmpq	%rax, 24(%rdx)
	ja	L714
L712:
	incq	-104(%rbp)
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	cmpq	%rax, 24(%rdx)
	ja	L710
L708:
	incq	-120(%rbp)
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rdx
	cmpq	%rax, 24(%rdx)
	ja	L706
L704:
	incq	-136(%rbp)
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %rdx
	cmpq	%rax, 24(%rdx)
	ja	L702
L700:
	incq	-152(%rbp)
	movq	-152(%rbp), %rax
	movq	-160(%rbp), %rdx
	cmpq	%rax, 24(%rdx)
	ja	L698
L696:
	xorl	%eax, %eax
	jmp	L732
LFE119:
	.align 4,0x90
.globl _smp_getclass
_smp_getclass:
LFB75:
	pushq	%rbp
LCFI367:
	movq	%rsp, %rbp
LCFI368:
	movq	%rbx, -40(%rbp)
LCFI369:
	movq	%r12, -32(%rbp)
LCFI370:
	movq	%r13, -24(%rbp)
LCFI371:
	movq	%r14, -16(%rbp)
LCFI372:
	movq	%r15, -8(%rbp)
LCFI373:
	subq	$48, %rsp
LCFI374:
	movq	%rdi, %r13
	movq	%rsi, %r15
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L755
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L755
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	L755
	movzbl	(%rsi), %edx
	movl	$5381, %eax
	testb	%dl, %dl
	je	L752
	movq	%rsi, %rcx
	movl	$5381, %esi
	.align 4,0x90
L753:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L753
	movslq	%esi,%rax
L752:
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L755
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L755
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L758
	.align 4,0x90
L759:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L755
L758:
	movq	%r15, %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L759
	movq	8(%rbx), %rax
	movq	%rax, (%r13)
	movq	16(%rbx), %rax
	movq	%rax, 8(%r13)
	movq	24(%rbx), %rax
	movq	%rax, 16(%r13)
	movq	32(%rbx), %rax
	movq	%rax, 24(%r13)
	jmp	L744
	.align 4,0x90
L755:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
L744:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
LFE75:
	.align 4,0x90
.globl _smpObject_varcall
_smpObject_varcall:
LFB124:
	pushq	%rbp
LCFI375:
	movq	%rsp, %rbp
LCFI376:
	pushq	%r15
LCFI377:
	pushq	%r14
LCFI378:
	pushq	%r13
LCFI379:
	pushq	%r12
LCFI380:
	pushq	%rbx
LCFI381:
	subq	$8, %rsp
LCFI382:
	movq	%rdi, %r15
	movq	%rsi, %r14
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	%rcx, %rdi
	movq	_smpType_id_class@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L788
L768:
	testq	%rdi, %rdi
	je	L778
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	L778
	movzbl	(%r14), %edx
	movl	$5381, %eax
	testb	%dl, %dl
	je	L775
	movq	%r14, %rcx
	movl	$5381, %esi
	.align 4,0x90
L776:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L776
	movslq	%esi,%rax
L775:
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L778
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L778
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L781
	.align 4,0x90
L782:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L778
L781:
	movq	%r14, %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L782
	movq	32(%rbx), %r9
	movq	24(%rbx), %r8
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %rdi
	jmp	L772
	.align 4,0x90
L778:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r9
	movq	16(%rax), %r8
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %rdi
L772:
	movq	%r9, 24(%r15)
	movq	%r8, 16(%r15)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	8(%r15), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, 8(%r15)
	movq	%rdi, (%r15)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L788:
	movq	56(%rcx), %rdi
	jmp	L768
LFE124:
	.cstring
LC10:
	.ascii "Function expected, %s found.\0"
	.text
	.align 4,0x90
.globl _smpObject_get_fun_rec
_smpObject_get_fun_rec:
LFB114:
	pushq	%rbp
LCFI383:
	movq	%rsp, %rbp
LCFI384:
	pushq	%r15
LCFI385:
	pushq	%r14
LCFI386:
	pushq	%r13
LCFI387:
	pushq	%r12
LCFI388:
	pushq	%rbx
LCFI389:
	subq	$88, %rsp
LCFI390:
	movq	%rdi, %r9
	movq	%rsi, %r13
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	testq	%rsi, %rsi
	je	L812
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	jne	L838
	movq	48(%rsi), %rdi
	testq	%rdi, %rdi
	je	L796
L841:
	movq	(%rdi), %rax
	movq	%rax, -96(%rbp)
	testq	%rax, %rax
	je	L796
	movq	-104(%rbp), %rdx
	movzbl	(%rdx), %r15d
	movl	$5381, %eax
	testb	%r15b, %r15b
	je	L801
	movq	%rdx, %rcx
	movl	%r15d, %edx
	movl	$5381, %esi
	.align 4,0x90
L802:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L802
	movslq	%esi,%rax
L801:
	movq	8(%rdi), %r8
	xorl	%edx, %edx
	divq	%r8
	movslq	%edx,%rdx
	salq	$4, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L796
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L796
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L806
	.align 4,0x90
L839:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L796
L806:
	movq	-104(%rbp), %rsi
	movq	(%rbx), %rdi
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	call	_strcmp
	testl	%eax, %eax
	movq	-120(%rbp), %r8
	movq	-128(%rbp), %r9
	jne	L839
	movl	$5381, %eax
	testb	%r15b, %r15b
	je	L815
	movq	-104(%rbp), %rcx
	movl	$5381, %esi
	.align 4,0x90
L816:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%r15b,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %r15d
	incq	%rcx
	testb	%r15b, %r15b
	jne	L816
	movslq	%esi,%rax
L815:
	xorl	%edx, %edx
	divq	%r8
	movslq	%edx,%rdx
	salq	$4, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L818
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L818
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L821
	.align 4,0x90
L822:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L818
L821:
	movq	-104(%rbp), %rsi
	movq	(%rbx), %rdi
	movq	%r9, -128(%rbp)
	call	_strcmp
	testl	%eax, %eax
	movq	-128(%rbp), %r9
	jne	L822
	movq	32(%rbx), %rcx
	movq	%rcx, -88(%rbp)
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	8(%rbx), %r15
	movq	24(%rbx), %r14
L824:
	movq	(%r14), %rbx
	leaq	LC2(%rip), %rsi
	movq	%rbx, %rdi
	movq	%r9, -128(%rbp)
	call	_strcmp
	testl	%eax, %eax
	movq	-128(%rbp), %r9
	jne	L840
L825:
	movq	-88(%rbp), %rax
	movq	%rax, 24(%r9)
	andl	$1, %r12d
	leal	(%r12,%r12), %edx
	movzbl	8(%r9), %eax
	andl	$-4, %eax
	andl	$1, %r13d
	orl	%edx, %eax
	orl	%r13d, %eax
	movb	%al, 8(%r9)
	movq	%r15, (%r9)
	movq	%r14, 16(%r9)
	jmp	L789
	.align 4,0x90
L812:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r9)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r9)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r9)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r9)
L789:
	movq	%r9, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L838:
	movq	32(%rsi), %rdi
	testq	%rdi, %rdi
	jne	L841
	.align 4,0x90
L796:
	cmpq	$0, 16(%r13)
	je	L812
	cmpq	$0, 24(%r13)
	je	L812
	xorl	%ebx, %ebx
	leaq	-80(%rbp), %r14
	movq	_smpType_id_nil@GOTPCREL(%rip), %r12
	jmp	L827
	.align 4,0x90
L828:
	incq	%rbx
	cmpq	%rbx, 24(%r13)
	jbe	L812
L827:
	movq	16(%r13), %rax
	movq	(%rax,%rbx,8), %rsi
	movl	-108(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movq	%r14, %rdi
	movq	%r9, -128(%rbp)
	call	_smpObject_get_fun_rec
	movq	-56(%rbp), %rdi
	movzbl	-72(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	-80(%rbp), %r8
	movq	-64(%rbp), %rsi
	movl	8(%rsi), %eax
	cmpl	(%r12), %eax
	movq	-128(%rbp), %r9
	je	L828
	movq	%rdi, 24(%r9)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	8(%r9), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, 8(%r9)
	movq	%r8, (%r9)
	movq	%rsi, 16(%r9)
	jmp	L789
L818:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	(%rax), %r15
	movq	16(%rax), %r14
	jmp	L824
L840:
	movq	%rbx, %rsi
	leaq	LC10(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	movq	-128(%rbp), %r9
	jmp	L825
LFE114:
	.cstring
LC11:
	.ascii "self\0"
	.text
	.align 4,0x90
.globl _scope_self
_scope_self:
LFB132:
	pushq	%rbp
LCFI391:
	movq	%rsp, %rbp
LCFI392:
	pushq	%r14
LCFI393:
	pushq	%r13
LCFI394:
	pushq	%r12
LCFI395:
	pushq	%rbx
LCFI396:
	movq	%rdi, %r13
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L850
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L850
	movq	(%rdi), %r8
	leaq	LC11(%rip), %rsi
	movl	$5381, %ecx
	movl	$115, %edx
	testq	%r8, %r8
	je	L850
	.align 4,0x90
L848:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L848
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L850
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L850
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L853
	.align 4,0x90
L854:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L850
L853:
	leaq	LC11(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L854
	movq	8(%rbx), %rax
	movq	%rax, (%r13)
	movq	16(%rbx), %rax
	movq	%rax, 8(%r13)
	movq	24(%rbx), %rax
	movq	%rax, 16(%r13)
	movq	32(%rbx), %rax
	movq	%rax, 24(%r13)
	movq	%r13, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
	.align 4,0x90
L850:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
	movq	%r13, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
LFE132:
	.align 4,0x90
.globl _scope_get
_scope_get:
LFB131:
	pushq	%rbp
LCFI397:
	movq	%rsp, %rbp
LCFI398:
	movq	%rbx, -40(%rbp)
LCFI399:
	movq	%r12, -32(%rbp)
LCFI400:
	movq	%r13, -24(%rbp)
LCFI401:
	movq	%r14, -16(%rbp)
LCFI402:
	movq	%r15, -8(%rbp)
LCFI403:
	subq	$48, %rsp
LCFI404:
	movq	%rdi, %r13
	movq	%rsi, %r15
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L871
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L871
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	L871
	movzbl	(%rsi), %edx
	movl	$5381, %eax
	testb	%dl, %dl
	je	L868
	movq	%rsi, %rcx
	movl	$5381, %esi
	.align 4,0x90
L869:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L869
	movslq	%esi,%rax
L868:
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L871
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L871
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L874
	.align 4,0x90
L875:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L871
L874:
	movq	%r15, %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L875
	movq	8(%rbx), %rax
	movq	%rax, (%r13)
	movq	16(%rbx), %rax
	movq	%rax, 8(%r13)
	movq	24(%rbx), %rax
	movq	%rax, 16(%r13)
	movq	32(%rbx), %rax
	movq	%rax, 24(%r13)
	jmp	L860
	.align 4,0x90
L871:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
L860:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
LFE131:
	.cstring
	.align 3
LC12:
	.ascii "Cannot initialize %s while running the garbage collector.\0"
LC13:
	.ascii "InitializationException\0"
	.align 3
LC14:
	.ascii "Cannot initialize singleton class %s.\0"
	.text
	.align 4,0x90
.globl _obj_init
_obj_init:
LFB97:
	pushq	%rbp
LCFI405:
	movq	%rsp, %rbp
LCFI406:
	movq	%rbx, -40(%rbp)
LCFI407:
	movq	%r12, -32(%rbp)
LCFI408:
	movq	%r13, -24(%rbp)
LCFI409:
	movq	%r14, -16(%rbp)
LCFI410:
	movq	%r15, -8(%rbp)
LCFI411:
	subq	$256, %rsp
LCFI412:
	movq	%rdi, -224(%rbp)
	movq	%rsi, %r15
	movq	_gc_runningp@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	L909
L882:
	movl	$4, %edi
	call	_malloc
	movq	%rax, %r14
	movl	$0, (%rax)
	movzbl	12(%r15), %edx
	movl	%edx, %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L910
L884:
	xorl	%eax, %eax
	testb	$1, 12(%r15)
	je	L911
L904:
	movq	-224(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	%r15, 16(%rcx)
	andb	$-4, 8(%rcx)
	movq	%r14, (%rcx)
L881:
	movq	-224(%rbp), %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L909:
	movq	(%rsi), %rsi
	leaq	LC12(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	jmp	L882
	.align 4,0x90
L910:
	testb	$2, %dl
	je	L886
	movq	(%r15), %r14
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L895
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L895
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L895
	.align 4,0x90
L893:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L893
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L895
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L895
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L898
	.align 4,0x90
L899:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L895
L898:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L899
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L892
	.align 4,0x90
L911:
	leaq	-208(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	-184(%rbp), %rbx
	movq	-192(%rbp), %r12
	movq	-200(%rbp), %r13
	movq	-208(%rbp), %rcx
	movq	%rcx, -216(%rbp)
	movl	$32, %edi
	call	_malloc
	movq	%rbx, 24(%rax)
	movq	%r12, 16(%rax)
	movq	%r13, 8(%rax)
	movq	-216(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	L904
	.align 4,0x90
L886:
	orl	$2, %edx
	movb	%dl, 12(%r15)
	jmp	L884
	.align 4,0x90
L895:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L892:
	movq	%r10, -56(%rbp)
	movq	%r9, -64(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -72(%rbp)
	movq	%r8, -80(%rbp)
	leaq	-112(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r14, %rdx
	leaq	LC14(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-112(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-176(%rbp), %rax
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L881
LFE97:
	.cstring
LC15:
	.ascii "Thrown\0"
	.text
	.align 4,0x90
.globl _smpThrown_init
_smpThrown_init:
LFB371:
	pushq	%rbp
LCFI413:
	movq	%rsp, %rbp
LCFI414:
	movq	%rbx, -40(%rbp)
LCFI415:
	movq	%r12, -32(%rbp)
LCFI416:
	movq	%r13, -24(%rbp)
LCFI417:
	movq	%r14, -16(%rbp)
LCFI418:
	movq	%r15, -8(%rbp)
LCFI419:
	subq	$112, %rsp
LCFI420:
	movq	%rdi, %r14
	movl	%esi, -92(%rbp)
	movq	40(%rbp), %rbx
	movzbl	24(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	16(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	32(%rbp), %r15
	leaq	LC15(%rip), %rsi
	movq	(%r15), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L913
	movq	%rbx, 24(%r14)
	andl	$1, %r12d
	leal	(%r12,%r12), %edx
	movzbl	8(%r14), %eax
	andl	$-4, %eax
	andl	$1, %r13d
	orl	%edx, %eax
	orl	%r13d, %eax
	movb	%al, 8(%r14)
	movq	-88(%rbp), %rax
	movq	%rax, (%r14)
	movq	%r15, 16(%r14)
L912:
	movq	%r14, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L913:
	movl	$32, %edi
	call	_malloc
	movq	%rax, -104(%rbp)
	movq	%rbx, 24(%rax)
	andl	$1, %r12d
	leal	(%r12,%r12), %edx
	movq	-104(%rbp), %rcx
	movzbl	8(%rcx), %eax
	andl	$-4, %eax
	andl	$1, %r13d
	orl	%edx, %eax
	orl	%r13d, %eax
	movb	%al, 8(%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, (%rcx)
	movq	%r15, 16(%rcx)
	leaq	-80(%rbp), %rdi
	movq	_smpType_thrown@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$24, %edi
	call	_malloc
	movq	-104(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$1, 16(%rax)
	movzbl	-92(%rbp), %ecx
	andl	$15, %ecx
	movzbl	(%rax), %edx
	andl	$-16, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, (%r14)
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%r14)
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%r14)
	movq	%rax, 24(%r14)
	jmp	L912
LFE371:
	.align 4,0x90
.globl _smpThrown_add_exception_now
_smpThrown_add_exception_now:
LFB367:
	pushq	%rbp
LCFI421:
	movq	%rsp, %rbp
LCFI422:
	movq	%rbx, -40(%rbp)
LCFI423:
	movq	%r12, -32(%rbp)
LCFI424:
	movq	%r13, -24(%rbp)
LCFI425:
	movq	%r14, -16(%rbp)
LCFI426:
	movq	%r15, -8(%rbp)
LCFI427:
	addq	$-128, %rsp
LCFI428:
	movq	%rdi, %r15
	movq	%rsi, %r13
	movzbl	24(%rbp), %esi
	movl	%esi, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	movl	%esi, %eax
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	16(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	32(%rbp), %r14
	movq	16(%r13), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L925
	movq	24(%r13), %r13
	leaq	LC15(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L926
	movq	16(%r13), %rsi
	incq	%rsi
	movq	%rsi, 16(%r13)
	salq	$5, %rsi
	movq	8(%r13), %rdi
	call	_realloc
	movq	%rax, 8(%r13)
	movq	16(%r13), %rdx
	salq	$5, %rdx
	leaq	-32(%rax,%rdx), %rax
	andl	$1, %ebx
	leal	(%rbx,%rbx), %ecx
	movzbl	8(%rax), %edx
	andl	$-4, %edx
	andl	$1, %r12d
	orl	%ecx, %edx
	orl	%r12d, %edx
	movb	%dl, 8(%rax)
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	%r14, 16(%rax)
L923:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	movq	%r15, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L926:
	movq	-96(%rbp), %rax
	movq	8(%rax), %r12
	movq	16(%rax), %rbx
	movq	16(%r13), %r14
	leaq	(%rbx,%r14), %rsi
	movq	%rsi, 16(%r13)
	salq	$5, %rsi
	movq	8(%r13), %rdi
	call	_realloc
	movq	%rax, 8(%r13)
	salq	$5, %r14
	leaq	(%rax,%r14), %rdi
	salq	$5, %rbx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	_memcpy
	jmp	L923
	.align 4,0x90
L925:
	andl	$1, %ebx
	leal	(%rbx,%rbx), %eax
	andl	$-4, %esi
	andl	$1, %r12d
	orl	%eax, %esi
	orl	%r12d, %esi
	movb	%sil, 24(%rbp)
	movq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	-96(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-80(%rbp), %rax
	movq	%rax, (%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%r13)
	jmp	L923
LFE367:
	.align 4,0x90
.globl _smpGlobal_throw
_smpGlobal_throw:
LFB247:
	pushq	%rbp
LCFI429:
	movq	%rsp, %rbp
LCFI430:
	pushq	%rbx
LCFI431:
	subq	$72, %rsp
LCFI432:
	movq	%rdi, %rbx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE247:
	.align 4,0x90
.globl _smpGlobal_throw_arg
_smpGlobal_throw_arg:
LFB248:
	pushq	%rbp
LCFI433:
	movq	%rsp, %rbp
LCFI434:
	pushq	%rbx
LCFI435:
	subq	$104, %rsp
LCFI436:
	movq	%rdi, %rbx
	movq	(%rdx), %rdi
	movq	%rdi, -48(%rbp)
	movq	8(%rdx), %rsi
	movq	%rsi, -40(%rbp)
	movq	16(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -24(%rbp)
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	_smpThrown_init
	movq	%rbx, %rax
	addq	$104, %rsp
	popq	%rbx
	leave
	ret
LFE248:
	.align 4,0x90
.globl _smpString_reverse
_smpString_reverse:
LFB356:
	pushq	%rbp
LCFI437:
	movq	%rsp, %rbp
LCFI438:
	pushq	%r13
LCFI439:
	pushq	%r12
LCFI440:
	pushq	%rbx
LCFI441:
	subq	$40, %rsp
LCFI442:
	movq	%rdi, %r12
	movq	40(%rbp), %rax
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	call	_strlen
	leaq	1(%rax), %rdi
	call	_malloc
	movq	%rax, %r13
	movq	%rbx, %rdi
	call	_strlen
	leaq	-1(%rbx,%rax), %rcx
	cmpq	%rcx, %rbx
	ja	L932
	movq	%r13, %rdx
	.align 4,0x90
L934:
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	decq	%rcx
	incq	%rdx
	cmpq	%rcx, %rbx
	jbe	L934
L932:
	leaq	-64(%rbp), %rbx
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	_obj_init_str
	movq	-64(%rbp), %rax
	movq	%rax, (%r12)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%r12)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%r12)
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	leave
	ret
LFE356:
	.align 4,0x90
.globl _smpString_init_ref
_smpString_init_ref:
LFB354:
	pushq	%rbp
LCFI443:
	movq	%rsp, %rbp
LCFI444:
	movq	%rbx, -24(%rbp)
LCFI445:
	movq	%r12, -16(%rbp)
LCFI446:
	movq	%r13, -8(%rbp)
LCFI447:
	subq	$64, %rsp
LCFI448:
	movq	%rdi, %r13
	movq	%rsi, %r12
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	(%r12), %r12
	movq	%r12, %rdi
	call	_strlen
	movq	%rax, 8(%rbx)
	movq	%r12, (%rbx)
	movq	%rbx, 24(%r13)
	movq	%r13, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE354:
	.align 4,0x90
.globl _smpString_init_length
_smpString_init_length:
LFB353:
	pushq	%rbp
LCFI449:
	movq	%rsp, %rbp
LCFI450:
	movq	%rbx, -40(%rbp)
LCFI451:
	movq	%r12, -32(%rbp)
LCFI452:
	movq	%r13, -24(%rbp)
LCFI453:
	movq	%r14, -16(%rbp)
LCFI454:
	movq	%r15, -8(%rbp)
LCFI455:
	subq	$80, %rsp
LCFI456:
	movq	%rdi, %r14
	movq	%rsi, %r15
	movq	%rdx, %r12
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%rax, %r13
	movq	%r15, %rdi
	call	_strlen
	cmpq	%rax, %r12
	cmova	%rax, %r12
	leaq	1(%r12), %rdi
	call	_malloc
	movq	%rax, %rbx
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_strncpy
	movb	$0, (%rbx,%r12)
	movq	%rbx, (%r13)
	movq	%r12, 8(%r13)
	movq	%r13, 24(%r14)
	movq	%r14, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
LFE353:
	.align 4,0x90
.globl _smpString_init
_smpString_init:
LFB352:
	pushq	%rbp
LCFI457:
	movq	%rsp, %rbp
LCFI458:
	movq	%rbx, -24(%rbp)
LCFI459:
	movq	%r12, -16(%rbp)
LCFI460:
	movq	%r13, -8(%rbp)
LCFI461:
	subq	$64, %rsp
LCFI462:
	movq	%rdi, %rbx
	movq	%rsi, %r13
	leaq	-64(%rbp), %r12
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	call	_obj_init
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	_obj_init_str
	movq	-64(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE352:
	.align 4,0x90
.globl _smpregmatch_init
_smpregmatch_init:
LFB340:
	pushq	%rbp
LCFI463:
	movq	%rsp, %rbp
LCFI464:
	pushq	%r15
LCFI465:
	pushq	%r14
LCFI466:
	pushq	%r13
LCFI467:
	pushq	%r12
LCFI468:
	pushq	%rbx
LCFI469:
	subq	$40, %rsp
LCFI470:
	movq	%rdi, %r14
	movq	%rsi, %r15
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	testq	%rdx, %rdx
	je	L946
	movq	%rsi, %rax
	.align 4,0x90
L947:
	cmpq	$0, (%rax)
	jne	L948
	cmpq	$0, 8(%rax)
	je	L955
L948:
	incq	%r12
	addq	$16, %rax
	cmpq	%rdx, %r12
	jne	L947
	movq	%r12, %r13
	salq	$4, %r13
L946:
	movq	%r13, %rdi
	call	_malloc
	movq	%rax, %rbx
	movq	%r13, %rdx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movq	_smpType_regmatch@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%rbx, (%rax)
	movq	%r12, 8(%rax)
	movq	%rax, 24(%r14)
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L955:
	incq	%r12
	movq	%r12, %r13
	salq	$4, %r13
	jmp	L946
LFE340:
	.align 4,0x90
.globl _smpList_init
_smpList_init:
LFB301:
	pushq	%rbp
LCFI471:
	movq	%rsp, %rbp
LCFI472:
	movq	%rbx, -40(%rbp)
LCFI473:
	movq	%r12, -32(%rbp)
LCFI474:
	movq	%r13, -24(%rbp)
LCFI475:
	movq	%r14, -16(%rbp)
LCFI476:
	movq	%r15, -8(%rbp)
LCFI477:
	subq	$96, %rsp
LCFI478:
	movq	%rdi, %r13
	movq	48(%rbp), %r14
	movq	40(%rbp), %r15
	movq	32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movzbl	24(%rbp), %ebx
	movl	%ebx, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %ebx
	sarb	$7, %bl
	movq	16(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	_smpType_list@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$40, %edi
	call	_malloc
	movq	%r14, 32(%rax)
	movq	%r15, 24(%rax)
	movq	-88(%rbp), %rdx
	movq	%rdx, 16(%rax)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	8(%rax), %edx
	andl	$-4, %edx
	andl	$1, %ebx
	orl	%r12d, %edx
	orl	%ebx, %edx
	movb	%dl, 8(%rax)
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	%rax, 24(%r13)
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
LFE301:
	.align 4,0x90
.globl _smpInteger_init_mpz_ref
_smpInteger_init_mpz_ref:
LFB266:
	pushq	%rbp
LCFI479:
	movq	%rsp, %rbp
LCFI480:
	movq	%rbx, -16(%rbp)
LCFI481:
	movq	%r12, -8(%rbp)
LCFI482:
	subq	$48, %rsp
LCFI483:
	movq	%rdi, %rbx
	movq	%rsi, %r12
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%r12, 24(%rbx)
	movq	%rbx, %rax
	movq	-16(%rbp), %rbx
	movq	-8(%rbp), %r12
	leave
	ret
LFE266:
	.align 4,0x90
.globl _smpInteger_init_mpz
_smpInteger_init_mpz:
LFB265:
	pushq	%rbp
LCFI484:
	movq	%rsp, %rbp
LCFI485:
	movq	%rbx, -24(%rbp)
LCFI486:
	movq	%r12, -16(%rbp)
LCFI487:
	movq	%r13, -8(%rbp)
LCFI488:
	subq	$64, %rsp
LCFI489:
	movq	%rdi, %r12
	movq	%rsi, %r13
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	___gmpz_init_set
	movq	%rbx, 24(%r12)
	movq	%r12, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE265:
	.align 4,0x90
.globl _smpFloat_init_mpfr_ref
_smpFloat_init_mpfr_ref:
LFB202:
	pushq	%rbp
LCFI490:
	movq	%rsp, %rbp
LCFI491:
	movq	%rbx, -16(%rbp)
LCFI492:
	movq	%r12, -8(%rbp)
LCFI493:
	subq	$48, %rsp
LCFI494:
	movq	%rdi, %rbx
	movq	%rsi, %r12
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%r12, 24(%rbx)
	movq	%rbx, %rax
	movq	-16(%rbp), %rbx
	movq	-8(%rbp), %r12
	leave
	ret
LFE202:
	.align 4,0x90
.globl _smpFloat_init_mpfr
_smpFloat_init_mpfr:
LFB201:
	pushq	%rbp
LCFI495:
	movq	%rsp, %rbp
LCFI496:
	movq	%rbx, -24(%rbp)
LCFI497:
	movq	%r12, -16(%rbp)
LCFI498:
	movq	%r13, -8(%rbp)
LCFI499:
	subq	$64, %rsp
LCFI500:
	movq	%rdi, %r12
	movq	%rsi, %r13
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movl	8(%r13), %ecx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	_mpfr_set4
	movq	%rbx, 24(%r12)
	movq	%r12, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE201:
	.align 4,0x90
.globl _smpException_init
_smpException_init:
LFB190:
	pushq	%rbp
LCFI501:
	movq	%rsp, %rbp
LCFI502:
	movq	%rbx, -40(%rbp)
LCFI503:
	movq	%r12, -32(%rbp)
LCFI504:
	movq	%r13, -24(%rbp)
LCFI505:
	movq	%r14, -16(%rbp)
LCFI506:
	movq	%r15, -8(%rbp)
LCFI507:
	subq	$96, %rsp
LCFI508:
	movq	%rdi, %r13
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r14
	movq	16(%rax), %r15
	movzbl	8(%rax), %ebx
	movl	%ebx, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %ebx
	sarb	$7, %bl
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	40(%rbp), %rsi
	call	_obj_init
	movl	$40, %edi
	call	_malloc
	movq	%r14, 32(%rax)
	movq	%r15, 24(%rax)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	16(%rax), %edx
	andl	$-4, %edx
	andl	$1, %ebx
	orl	%r12d, %edx
	orl	%ebx, %edx
	movb	%dl, 16(%rax)
	movq	-88(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, (%rax)
	movq	%rax, 24(%r13)
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
LFE190:
	.align 4,0x90
.globl _objid_init
_objid_init:
LFB100:
	pushq	%rbp
LCFI509:
	movq	%rsp, %rbp
LCFI510:
	movq	%rbx, -16(%rbp)
LCFI511:
	movq	%r12, -8(%rbp)
LCFI512:
	subq	$48, %rsp
LCFI513:
	movq	%rdi, %rbx
	movl	%esi, %r12d
	movq	_smpType_id@GOTPCREL(%rip), %rsi
	call	_obj_init
	movslq	%r12d,%rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	movq	-16(%rbp), %rbx
	movq	-8(%rbp), %r12
	leave
	ret
LFE100:
	.align 4,0x90
.globl _smpException_init_fmt
_smpException_init_fmt:
LFB191:
	pushq	%rbp
LCFI514:
	movq	%rsp, %rbp
LCFI515:
	movq	%rbx, -40(%rbp)
LCFI516:
	movq	%r12, -32(%rbp)
LCFI517:
	movq	%r13, -24(%rbp)
LCFI518:
	movq	%r14, -16(%rbp)
LCFI519:
	movq	%r15, -8(%rbp)
LCFI520:
	subq	$352, %rsp
LCFI521:
	movq	%rdi, -336(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movzbl	%al, %edx
	leaq	0(,%rdx,4), %rax
	leaq	L971(%rip), %rdx
	subq	%rax, %rdx
	leaq	-49(%rbp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L971:
	movq	%rsi, -344(%rbp)
	movq	40(%rbp), %rsi
	movq	_gc_runningp@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	L972
	leaq	-320(%rbp), %rdx
	movl	$16, -320(%rbp)
	movl	$48, -316(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, -312(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %rbx
	movq	-344(%rbp), %rsi
	movq	(%rbx), %rdi
	call	_vfprintf
	movq	(%rbx), %rsi
	movl	$10, %edi
	call	_fputc
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-336(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
L970:
	movq	-336(%rbp), %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L972:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r14
	movq	16(%rax), %r15
	movzbl	8(%rax), %ebx
	movl	%ebx, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %ebx
	sarb	$7, %bl
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	leaq	-320(%rbp), %rdi
	call	_obj_init
	movl	$40, %edi
	call	_malloc
	movq	%rax, %r13
	movq	%r14, 32(%rax)
	movq	%r15, 24(%rax)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	16(%rax), %eax
	andl	$-4, %eax
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, 16(%r13)
	movq	-328(%rbp), %rcx
	movq	%rcx, 8(%r13)
	movq	$0, (%r13)
	movq	%r13, -296(%rbp)
	movq	-320(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-304(%rbp), %r14
	movq	%r14, -272(%rbp)
	movq	%r13, -264(%rbp)
	movzbl	-280(%rbp), %ebx
	movl	%ebx, %eax
	sall	$6, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	sall	$7, %ebx
	sarb	$7, %bl
	leaq	-256(%rbp), %rdx
	movl	$16, -256(%rbp)
	movl	$48, -252(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-224(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	-344(%rbp), %rsi
	movq	%r13, %rdi
	call	_vasprintf
	movq	-336(%rbp), %rax
	movq	%r14, 16(%rax)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movq	-336(%rbp), %rdx
	movzbl	8(%rdx), %eax
	andl	$-4, %eax
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, 8(%rdx)
	movq	%r15, (%rdx)
	movq	%r13, 24(%rdx)
	jmp	L970
LFE191:
	.cstring
LC16:
	.ascii "ArgumentError\0"
	.align 3
LC17:
	.ascii "Wrong number of arguments (1 expected, %d found).\0"
	.text
	.align 4,0x90
.globl _smpObject_eq
_smpObject_eq:
LFB106:
	pushq	%rbp
LCFI522:
	movq	%rsp, %rbp
LCFI523:
	pushq	%r12
LCFI524:
	pushq	%rbx
LCFI525:
	subq	$160, %rsp
LCFI526:
	movq	%rdi, %rbx
	movl	%esi, %r12d
	movq	40(%rbp), %rax
	cmpl	$1, %esi
	je	L984
	leaq	-48(%rbp), %rdi
	leaq	LC16(%rip), %rsi
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
	movl	%r12d, %edx
	leaq	LC17(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rbx)
L976:
	movq	%rbx, %rax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
	.align 4,0x90
L984:
	cmpq	%rax, 24(%rdx)
	jne	L979
	movq	_smp_true@GOTPCREL(%rip), %rdx
L983:
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	jmp	L976
	.align 4,0x90
L979:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L983
LFE106:
	.cstring
LC18:
	.ascii "Hash\0"
	.text
	.align 4,0x90
.globl _smpHash_init
_smpHash_init:
LFB258:
	pushq	%rbp
LCFI527:
	movq	%rsp, %rbp
LCFI528:
	pushq	%r12
LCFI529:
	pushq	%rbx
LCFI530:
	addq	$-128, %rsp
LCFI531:
	movq	%rdi, %r12
	leaq	-80(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smp_getclass
	movq	-56(%rbp), %rsi
	movq	%r12, %rdi
	call	_obj_init
	movl	$64, %edi
	call	_malloc
	movq	%rax, %rbx
	leaq	-144(%rbp), %rdi
	movl	$10, %esi
	call	_smpHash_core_init_capacity
	movq	-144(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-104(%rbp), %rax
	movq	%rax, 40(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 48(%rbx)
	movq	-88(%rbp), %rax
	movq	%rax, 56(%rbx)
	movq	%rbx, 24(%r12)
	movq	%r12, %rax
	subq	$-128, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
LFE258:
	.cstring
LC19:
	.ascii "Array\0"
	.text
	.align 4,0x90
.globl _smpGlobal_array
_smpGlobal_array:
LFB229:
	pushq	%rbp
LCFI532:
	movq	%rsp, %rbp
LCFI533:
	pushq	%r15
LCFI534:
	pushq	%r14
LCFI535:
	pushq	%r13
LCFI536:
	pushq	%r12
LCFI537:
	pushq	%rbx
LCFI538:
	subq	$88, %rsp
LCFI539:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rdx
	movq	%rdx, -64(%rbp)
	movq	24(%r13), %rax
	movq	%rax, -56(%rbp)
	movl	8(%rdx), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1004
	xorl	%r14d, %r14d
	leaq	-80(%rbp), %rax
	.align 4,0x90
L991:
	incq	%r14
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	L991
	movq	%r14, -120(%rbp)
	movq	%r14, %rax
	shrq	%rax
	orq	%r14, %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$8, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$16, %rcx
	orq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	orq	%rcx, %rax
	leaq	1(%rax), %r12
	salq	$5, %r12
L990:
	movq	%r12, %rdi
	call	_malloc
	movq	%rax, %rbx
	movq	%r12, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	_memset
	movq	24(%r13), %rcx
	testq	%r14, %r14
	jle	L993
	xorl	%esi, %esi
	jmp	L995
	.align 4,0x90
L1003:
	movq	24(%rax), %rcx
	incq	%rsi
	cmpq	%r14, %rsi
	je	L993
L995:
	movq	%rsi, %rdx
	salq	$5, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx,%rbx)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rdx,%rbx)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rdx,%rbx)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rdx,%rbx)
	movq	32(%rcx), %rax
	testq	%rax, %rax
	jne	L1003
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	incq	%rsi
	cmpq	%r14, %rsi
	jne	L995
L993:
	leaq	-112(%rbp), %rdi
	leaq	LC19(%rip), %rsi
	call	_smp_getclass
	movq	-88(%rbp), %rsi
	movq	%r15, %rdi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%rbx, (%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 24(%r15)
	movq	%r15, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L1004:
	xorl	%r14d, %r14d
	movq	$0, -120(%rbp)
	movl	$32, %r12d
	jmp	L990
LFE229:
	.align 4,0x90
.globl _smpInteger_init_str
_smpInteger_init_str:
LFB268:
	pushq	%rbp
LCFI540:
	movq	%rsp, %rbp
LCFI541:
	movq	%rbx, -24(%rbp)
LCFI542:
	movq	%r12, -16(%rbp)
LCFI543:
	movq	%r13, -8(%rbp)
LCFI544:
	subq	$96, %rsp
LCFI545:
	movq	%rdi, %rbx
	movq	%rsi, %r12
	movl	$16, %edi
	call	_malloc
	movq	%rax, %r13
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	___gmpz_init_set_str
	leaq	-96(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movzbl	-56(%rbp), %edx
	movq	%r13, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rbx)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	8(%rbx), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE268:
	.align 4,0x90
.globl _smpInteger_init_clong
_smpInteger_init_clong:
LFB267:
	pushq	%rbp
LCFI546:
	movq	%rsp, %rbp
LCFI547:
	movq	%rbx, -24(%rbp)
LCFI548:
	movq	%r12, -16(%rbp)
LCFI549:
	movq	%r13, -8(%rbp)
LCFI550:
	subq	$96, %rsp
LCFI551:
	movq	%rdi, %rbx
	movq	%rsi, %r12
	movl	$16, %edi
	call	_malloc
	movq	%rax, %r13
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-96(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movzbl	-56(%rbp), %edx
	movq	%r13, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rbx)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	8(%rbx), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE267:
	.align 4,0x90
.globl _smpFloat_init_str
_smpFloat_init_str:
LFB204:
	pushq	%rbp
LCFI552:
	movq	%rsp, %rbp
LCFI553:
	movq	%rbx, -24(%rbp)
LCFI554:
	movq	%r12, -16(%rbp)
LCFI555:
	movq	%r13, -8(%rbp)
LCFI556:
	subq	$96, %rsp
LCFI557:
	movq	%rdi, %rbx
	movq	%rsi, %r12
	movl	$32, %edi
	call	_malloc
	movq	%rax, %r13
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_mpfr_init_set_str
	leaq	-96(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movzbl	-56(%rbp), %edx
	movq	%r13, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rbx)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	8(%rbx), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE204:
	.align 4,0x90
.globl _smpFloat_init_cdouble
_smpFloat_init_cdouble:
LFB203:
	pushq	%rbp
LCFI558:
	movq	%rsp, %rbp
LCFI559:
	pushq	%r12
LCFI560:
	pushq	%rbx
LCFI561:
	subq	$80, %rsp
LCFI562:
	movq	%rdi, %r12
	movsd	%xmm0, -88(%rbp)
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	movsd	-88(%rbp), %xmm0
	movq	%rbx, %rdi
	call	_mpfr_set_d
	leaq	-80(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movzbl	-40(%rbp), %edx
	movq	%rbx, 24(%r12)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%r12)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	8(%r12), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 8(%r12)
	movq	-80(%rbp), %rax
	movq	%rax, (%r12)
	movq	%r12, %rax
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
LFE203:
	.align 4,0x90
.globl _smpString_init_fmt
_smpString_init_fmt:
LFB355:
	pushq	%rbp
LCFI563:
	movq	%rsp, %rbp
LCFI564:
	movq	%rbx, -24(%rbp)
LCFI565:
	movq	%r12, -16(%rbp)
LCFI566:
	movq	%r13, -8(%rbp)
LCFI567:
	subq	$272, %rsp
LCFI568:
	movq	%rdi, %r13
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	movzbl	%al, %edx
	leaq	0(,%rdx,4), %rax
	leaq	L1014(%rip), %rdx
	subq	%rax, %rdx
	leaq	-33(%rbp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L1014:
	leaq	-240(%rbp), %rdx
	movl	$16, -240(%rbp)
	movl	$48, -236(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-216(%rbp), %rdi
	call	_vasprintf
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%r13, %rdi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	-216(%rbp), %r12
	movq	%r12, %rdi
	call	_strlen
	movq	%rax, 8(%rbx)
	movq	%r12, (%rbx)
	movq	%rbx, 24(%r13)
	movq	%r13, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE355:
	.cstring
LC20:
	.ascii "%s()\0"
LC21:
	.ascii "<Function: %lx>\0"
	.text
	.align 4,0x90
.globl _smpFunction_to_s
_smpFunction_to_s:
LFB227:
	pushq	%rbp
LCFI569:
	movq	%rsp, %rbp
LCFI570:
	pushq	%rbx
LCFI571:
	subq	$8, %rsp
LCFI572:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	8(%rax), %rdx
	testq	%rdx, %rdx
	je	L1017
	leaq	LC20(%rip), %rsi
	xorl	%eax, %eax
	call	_smpString_init_fmt
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L1017:
	movq	32(%rax), %rdx
	leaq	LC21(%rip), %rsi
	xorl	%eax, %eax
	call	_smpString_init_fmt
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE227:
	.cstring
LC22:
	.ascii "<%s 0x%lx>\0"
	.text
	.align 4,0x90
.globl _smpObject_to_s
_smpObject_to_s:
LFB120:
	pushq	%rbp
LCFI573:
	movq	%rsp, %rbp
LCFI574:
	pushq	%rbx
LCFI575:
	subq	$8, %rsp
LCFI576:
	movq	%rdi, %rbx
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rax
	movq	(%rax), %rdx
	leaq	LC22(%rip), %rsi
	xorl	%eax, %eax
	call	_smpString_init_fmt
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE120:
	.cstring
LC23:
	.ascii "true\0"
	.text
	.align 4,0x90
.globl _smptrue_to_s
_smptrue_to_s:
LFB180:
	pushq	%rbp
LCFI577:
	movq	%rsp, %rbp
LCFI578:
	movq	%rbx, -16(%rbp)
LCFI579:
	movq	%r12, -8(%rbp)
LCFI580:
	subq	$48, %rsp
LCFI581:
	movq	%rdi, %rbx
	leaq	-48(%rbp), %r12
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	call	_obj_init
	leaq	LC23(%rip), %rsi
	movq	%r12, %rdi
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
	movq	-16(%rbp), %rbx
	movq	-8(%rbp), %r12
	leave
	ret
LFE180:
	.align 4,0x90
.globl _smpString_write
_smpString_write:
LFB360:
	pushq	%rbp
LCFI582:
	movq	%rsp, %rbp
LCFI583:
	pushq	%r15
LCFI584:
	pushq	%r14
LCFI585:
	pushq	%r13
LCFI586:
	pushq	%r12
LCFI587:
	pushq	%rbx
LCFI588:
	subq	$56, %rsp
LCFI589:
	movq	%rdi, %r13
	movq	___stack_chk_guard@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	40(%rbp), %rdx
	movq	%rsp, %r14
	movq	8(%rdx), %rax
	leaq	33(%rax,%rax), %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %r12
	movb	$34, (%rsp)
	movq	(%rdx), %rdx
	movzbl	(%rdx), %eax
	movl	$1, %ecx
	movl	$2, %esi
	testb	%al, %al
	jne	L1029
	jmp	L1028
	.align 4,0x90
L1051:
	cmpb	$92, %al
	je	L1030
	cmpb	$10, %al
	je	L1030
	cmpb	$13, %al
	je	L1030
	cmpb	$9, %al
	je	L1030
	movb	%al, (%r12,%rcx)
	incq	%rcx
	.align 4,0x90
L1037:
	movzbl	1(%rdx), %eax
	incq	%rdx
	testb	%al, %al
	je	L1050
L1029:
	cmpb	$34, %al
	jne	L1051
L1030:
	movb	$92, (%r12,%rcx)
	incq	%rcx
	movzbl	(%rdx), %eax
	cmpb	$34, %al
	je	L1052
	cmpb	$92, %al
	je	L1053
	cmpb	$10, %al
	je	L1054
	cmpb	$13, %al
	je	L1055
	cmpb	$9, %al
	jne	L1037
	movb	$116, (%r12,%rcx)
	incq	%rcx
	movzbl	1(%rdx), %eax
	incq	%rdx
	testb	%al, %al
	jne	L1029
L1050:
	leaq	1(%rcx), %rsi
L1028:
	movb	$34, (%r12,%rcx)
	movb	$0, (%r12,%rsi)
	leaq	-96(%rbp), %rbx
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_obj_init_str
	movq	-96(%rbp), %rax
	movq	%rax, (%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%r13)
	movq	%r14, %rsp
	movq	%r13, %rax
	movq	-56(%rbp), %rdx
	xorq	(%r15), %rdx
	jne	L1056
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L1052:
	movb	$34, (%r12,%rcx)
	incq	%rcx
	jmp	L1037
	.align 4,0x90
L1053:
	movb	$92, (%r12,%rcx)
	incq	%rcx
	jmp	L1037
	.align 4,0x90
L1054:
	movb	$110, (%r12,%rcx)
	incq	%rcx
	jmp	L1037
L1055:
	movb	$114, (%r12,%rcx)
	incq	%rcx
	jmp	L1037
L1056:
	call	___stack_chk_fail
LFE360:
	.cstring
LC24:
	.ascii "\0"
	.text
	.align 4,0x90
.globl _smpstrsubstring
_smpstrsubstring:
LFB357:
	pushq	%rbp
LCFI590:
	movq	%rsp, %rbp
LCFI591:
	movq	%rbx, -40(%rbp)
LCFI592:
	movq	%r12, -32(%rbp)
LCFI593:
	movq	%r13, -24(%rbp)
LCFI594:
	movq	%r14, -16(%rbp)
LCFI595:
	movq	%r15, -8(%rbp)
LCFI596:
	subq	$80, %rsp
LCFI597:
	movq	%rdi, %r14
	movl	%esi, %r13d
	movl	%edx, %ebx
	movq	40(%rbp), %rax
	movq	(%rax), %r15
	movq	%r15, %rdi
	call	_strlen
	leal	(%rbx,%r13), %edx
	movslq	%edx,%rdx
	movl	%eax, %ecx
	subl	%r13d, %ecx
	cmpq	%rax, %rdx
	cmova	%ecx, %ebx
	testl	%ebx, %ebx
	jle	L1064
	leal	1(%rbx), %edi
	movslq	%edi,%rdi
	call	_malloc
	movq	%rax, %r12
	movslq	%r13d,%rsi
	leaq	(%r15,%rsi), %rsi
	movq	%rax, %rdi
	call	_strcpy
	leaq	-80(%rbp), %rdi
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%r12, %rdi
	call	_strlen
	movq	%rax, 8(%rbx)
	movq	%r12, (%rbx)
	movq	%rbx, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%r14)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	%rbx, 24(%r14)
L1057:
	movq	%r14, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L1064:
	leaq	-80(%rbp), %rbx
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init
	leaq	LC24(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init_str
	movq	-80(%rbp), %rax
	movq	%rax, (%r14)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%r14)
	jmp	L1057
LFE357:
	.cstring
LC25:
	.ascii "nil\0"
	.text
	.align 4,0x90
.globl _smpNil_write
_smpNil_write:
LFB321:
	pushq	%rbp
LCFI598:
	movq	%rsp, %rbp
LCFI599:
	movq	%rbx, -16(%rbp)
LCFI600:
	movq	%r12, -8(%rbp)
LCFI601:
	subq	$48, %rsp
LCFI602:
	movq	%rdi, %rbx
	leaq	-48(%rbp), %r12
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	call	_obj_init
	leaq	LC25(%rip), %rsi
	movq	%r12, %rdi
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
	movq	-16(%rbp), %rbx
	movq	-8(%rbp), %r12
	leave
	ret
LFE321:
	.align 4,0x90
.globl _smpNil_to_s
_smpNil_to_s:
LFB320:
	pushq	%rbp
LCFI603:
	movq	%rsp, %rbp
LCFI604:
	movq	%rbx, -16(%rbp)
LCFI605:
	movq	%r12, -8(%rbp)
LCFI606:
	subq	$48, %rsp
LCFI607:
	movq	%rdi, %rbx
	leaq	-48(%rbp), %r12
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	call	_obj_init
	leaq	LC25(%rip), %rsi
	movq	%r12, %rdi
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
	movq	-16(%rbp), %rbx
	movq	-8(%rbp), %r12
	leave
	ret
LFE320:
	.align 4,0x90
.globl _smpObject_to_s_class
_smpObject_to_s_class:
LFB121:
	pushq	%rbp
LCFI608:
	movq	%rsp, %rbp
LCFI609:
	movq	%rbx, -24(%rbp)
LCFI610:
	movq	%r12, -16(%rbp)
LCFI611:
	movq	%r13, -8(%rbp)
LCFI612:
	subq	$64, %rsp
LCFI613:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	(%rax), %r13
	leaq	-64(%rbp), %r12
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	call	_obj_init
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	_obj_init_str
	movq	-64(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE121:
	.align 4,0x90
.globl _smpSymbol_write
_smpSymbol_write:
LFB365:
	pushq	%rbp
LCFI614:
	movq	%rsp, %rbp
LCFI615:
	movq	%rbx, -40(%rbp)
LCFI616:
	movq	%r12, -32(%rbp)
LCFI617:
	movq	%r13, -24(%rbp)
LCFI618:
	movq	%r14, -16(%rbp)
LCFI619:
	movq	%r15, -8(%rbp)
LCFI620:
	subq	$96, %rsp
LCFI621:
	movq	%rdi, %r13
	movq	___stack_chk_guard@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	40(%rbp), %rdx
	movq	%rsp, %r15
	movq	8(%rdx), %rax
	addq	$32, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movb	$96, (%rsp)
	leaq	1(%rsp), %rdi
	movq	(%rdx), %rsi
	call	_strcpy
	leaq	-96(%rbp), %r12
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	call	_obj_init
	movq	%rsp, %rsi
	movq	%r12, %rdi
	call	_obj_init_str
	movq	-96(%rbp), %rax
	movq	%rax, (%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%r13)
	movq	%r15, %rsp
	movq	%r13, %rax
	movq	-56(%rbp), %rdx
	xorq	(%r14), %rdx
	jne	L1074
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
L1074:
	call	___stack_chk_fail
LFE365:
	.align 4,0x90
.globl _smpSymbol_to_s
_smpSymbol_to_s:
LFB364:
	pushq	%rbp
LCFI622:
	movq	%rsp, %rbp
LCFI623:
	movq	%rbx, -24(%rbp)
LCFI624:
	movq	%r12, -16(%rbp)
LCFI625:
	movq	%r13, -8(%rbp)
LCFI626:
	subq	$64, %rsp
LCFI627:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	(%rax), %r13
	leaq	-64(%rbp), %r12
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	call	_obj_init
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	_obj_init_str
	movq	-64(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE364:
	.align 4,0x90
.globl _smpObject_hash
_smpObject_hash:
LFB115:
	pushq	%rbp
LCFI628:
	movq	%rsp, %rbp
LCFI629:
	pushq	%r13
LCFI630:
	pushq	%r12
LCFI631:
	pushq	%rbx
LCFI632:
	subq	$72, %rsp
LCFI633:
	movq	%rdi, %r13
	movq	40(%rbp), %r12
	sarq	$3, %r12
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %edx
	testb	%dl, %dl
	je	L1078
	movq	%rax, %rcx
	.align 4,0x90
L1080:
	movq	%r12, %rax
	salq	$5, %rax
	movsbq	%dl,%rdx
	addq	%rdx, %rax
	addq	%rax, %r12
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L1080
L1078:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-96(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movzbl	-56(%rbp), %edx
	movq	%rbx, 24(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r13)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 8(%r13)
	movq	-96(%rbp), %rax
	movq	%rax, (%r13)
	movq	%r13, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	leave
	ret
LFE115:
	.align 4,0x90
.globl _smpArray_length
_smpArray_length:
LFB170:
	pushq	%rbp
LCFI634:
	movq	%rsp, %rbp
LCFI635:
	movq	%rbx, -24(%rbp)
LCFI636:
	movq	%r12, -16(%rbp)
LCFI637:
	movq	%r13, -8(%rbp)
LCFI638:
	subq	$96, %rsp
LCFI639:
	movq	%rdi, %rbx
	movq	40(%rbp), %rax
	movq	8(%rax), %r12
	movl	$16, %edi
	call	_malloc
	movq	%rax, %r13
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-96(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movzbl	-56(%rbp), %edx
	movq	%r13, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%rbx)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	8(%rbx), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
LFE170:
	.cstring
LC26:
	.ascii "ImplementationException\0"
	.align 3
LC27:
	.ascii "default unimplemented function\0"
	.text
	.align 4,0x90
.globl _smp_unimplemented_function
_smp_unimplemented_function:
LFB77:
	pushq	%rbp
LCFI640:
	movq	%rsp, %rbp
LCFI641:
	pushq	%r14
LCFI642:
	pushq	%r13
LCFI643:
	pushq	%r12
LCFI644:
	pushq	%rbx
LCFI645:
	subq	$160, %rsp
LCFI646:
	movq	%rdi, %r14
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1093
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1093
	movq	(%rdi), %r8
	leaq	LC26(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L1093
	.align 4,0x90
L1091:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1091
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1093
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L1093
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1096
	.align 4,0x90
L1097:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L1093
L1096:
	leaq	LC26(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1097
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L1090
	.align 4,0x90
L1093:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L1090:
	movq	%r10, -40(%rbp)
	movq	%r9, -48(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-56(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -56(%rbp)
	movq	%r8, -64(%rbp)
	leaq	-96(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	leaq	LC27(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-96(%rbp), %rsi
	movq	%rsi, -128(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	_smpThrown_init
	movq	%r14, %rax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
LFE77:
	.cstring
LC28:
	.ascii "Pair\0"
	.text
	.align 4,0x90
.globl _smpPair_init
_smpPair_init:
LFB328:
	pushq	%rbp
LCFI647:
	movq	%rsp, %rbp
LCFI648:
	pushq	%r15
LCFI649:
	pushq	%r14
LCFI650:
	pushq	%r13
LCFI651:
	pushq	%r12
LCFI652:
	pushq	%rbx
LCFI653:
	subq	$104, %rsp
LCFI654:
	movq	%rdi, -136(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, -120(%rbp)
	movzbl	24(%rbp), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	%ecx, %r14d
	sarb	$7, %r14b
	sall	$7, %eax
	movl	%eax, %r15d
	sarb	$7, %r15b
	movq	16(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	72(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movzbl	56(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	48(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	64(%rbp), %r13
	movl	8(%r13), %edx
	movq	$0, -88(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1106
	movl	$32, %edi
	call	_malloc
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, 24(%rax)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movq	-88(%rbp), %rcx
	movzbl	8(%rcx), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, (%rcx)
	movq	%r13, 16(%rcx)
L1106:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1114
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1114
	movq	(%rdi), %r8
	leaq	LC28(%rip), %rsi
	movl	$5381, %ecx
	movl	$80, %edx
	testq	%r8, %r8
	je	L1114
	.align 4,0x90
L1112:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1112
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1114
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L1114
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1117
	.align 4,0x90
L1118:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L1114
L1117:
	leaq	LC28(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1118
	movq	32(%rbx), %rsi
	jmp	L1111
	.align 4,0x90
L1114:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1111:
	movq	-136(%rbp), %rdi
	call	_obj_init
	movl	$40, %edi
	call	_malloc
	movq	-88(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-112(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, 16(%rax)
	andl	$1, %r14d
	leal	(%r14,%r14), %ecx
	movzbl	8(%rax), %edx
	andl	$-4, %edx
	andl	$1, %r15d
	orl	%ecx, %edx
	orl	%r15d, %edx
	movb	%dl, 8(%rax)
	movq	-128(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-136(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	%rdx, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE328:
	.align 4,0x90
.globl _smpObject_cons
_smpObject_cons:
LFB104:
	pushq	%rbp
LCFI655:
	movq	%rsp, %rbp
LCFI656:
	movq	%rbx, -40(%rbp)
LCFI657:
	movq	%r12, -32(%rbp)
LCFI658:
	movq	%r13, -24(%rbp)
LCFI659:
	movq	%r14, -16(%rbp)
LCFI660:
	movq	%r15, -8(%rbp)
LCFI661:
	subq	$176, %rsp
LCFI662:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movzbl	24(%rbp), %edx
	movl	%edx, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	movl	%edx, %eax
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	16(%r13), %rsi
	movl	8(%rsi), %ecx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %ecx
	je	L1125
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	cmpl	(%rax), %ecx
	je	L1132
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbp)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %eax
	andl	$-4, %edx
	andl	$1, %r12d
	orl	%eax, %edx
	orl	%r12d, %edx
	movb	%dl, 24(%rbp)
	movq	-104(%rbp), %rdx
	movq	%rdx, 16(%rbp)
	movq	(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 40(%rsp)
	movq	%rsi, 48(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 56(%rsp)
	movq	%rdx, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	call	_smpPair_init
L1124:
	movq	%r15, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L1125:
	xorl	%r14d, %r14d
L1129:
	leaq	-80(%rbp), %rdi
	movq	_smpType_list@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$40, %edi
	call	_malloc
	movq	%r14, 32(%rax)
	movq	-88(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-96(%rbp), %rdx
	movq	%rdx, 16(%rax)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %ecx
	movzbl	8(%rax), %edx
	andl	$-4, %edx
	andl	$1, %r12d
	orl	%ecx, %edx
	orl	%r12d, %edx
	movb	%dl, 8(%rax)
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, (%r15)
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%r15)
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%r15)
	movq	%rax, 24(%r15)
	jmp	L1124
	.align 4,0x90
L1132:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %r14
	movq	(%r13), %rax
	movq	%rax, (%r14)
	movq	8(%r13), %rax
	movq	%rax, 8(%r14)
	movq	16(%r13), %rax
	movq	%rax, 16(%r14)
	movq	24(%r13), %rax
	movq	%rax, 24(%r14)
	jmp	L1129
LFE104:
	.align 4,0x90
.globl _smpListBuffer_add_now
_smpListBuffer_add_now:
LFB311:
	pushq	%rbp
LCFI663:
	movq	%rsp, %rbp
LCFI664:
	movq	%rbx, -32(%rbp)
LCFI665:
	movq	%r12, -24(%rbp)
LCFI666:
	movq	%r13, -16(%rbp)
LCFI667:
	movq	%r14, -8(%rbp)
LCFI668:
	subq	$96, %rsp
LCFI669:
	movq	%rdi, %r14
	movq	%rdx, %r13
	movq	40(%rbp), %r12
	movq	16(%r12), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1138
	movq	56(%r12), %rbx
	movl	$32, %edi
	call	_malloc
	movq	%rax, 32(%rbx)
	movq	56(%r12), %rax
	movq	32(%rax), %rbx
	leaq	-64(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %r13
	movq	%r13, %rdx
	movl	$1, %esi
	call	_smpObject_cons
	movq	-64(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	56(%r12), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%r12)
	movq	8(%rdx), %rax
	movq	%rax, 40(%r12)
	movq	16(%rdx), %rax
	movq	%rax, 48(%r12)
	movq	24(%rdx), %rax
	movq	%rax, 56(%r12)
L1136:
	movq	(%r13), %rax
	movq	%rax, (%r14)
	movq	8(%r13), %rax
	movq	%rax, 8(%r14)
	movq	16(%r13), %rax
	movq	%rax, 16(%r14)
	movq	24(%r13), %rax
	movq	%rax, 24(%r14)
	movq	%r14, %rax
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
	.align 4,0x90
L1138:
	leaq	-64(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %r13
	movq	%r13, %rdx
	movl	$1, %esi
	call	_smpObject_cons
	movq	-64(%rbp), %rsi
	movq	%rsi, (%r12)
	movq	-56(%rbp), %rcx
	movq	%rcx, 8(%r12)
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%r12)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%r12)
	movq	%rsi, 32(%r12)
	movq	%rcx, 40(%r12)
	movq	%rdx, 48(%r12)
	movq	%rax, 56(%r12)
	jmp	L1136
LFE311:
	.cstring
LC29:
	.ascii "TypeError\0"
	.text
	.align 4,0x90
.globl _smpException_backtrace_add_now
_smpException_backtrace_add_now:
LFB187:
	pushq	%rbp
LCFI670:
	movq	%rsp, %rbp
LCFI671:
	pushq	%r13
LCFI672:
	pushq	%r12
LCFI673:
	pushq	%rbx
LCFI674:
	subq	$104, %rsp
LCFI675:
	movq	%rdi, %r13
	movq	40(%rbp), %r12
	movq	32(%rbp), %rbx
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
	leaq	LC29(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	leaq	-96(%rbp), %rdi
	leaq	8(%r12), %rdx
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
	movq	-96(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	-88(%rbp), %rax
	movq	%rax, 16(%r12)
	movq	-80(%rbp), %rax
	movq	%rax, 24(%r12)
	movq	-72(%rbp), %rax
	movq	%rax, 32(%r12)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
	movq	%r13, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	leave
	ret
LFE187:
	.align 4,0x90
.globl _smpObject_cons_c
_smpObject_cons_c:
LFB105:
	pushq	%rbp
LCFI676:
	movq	%rsp, %rbp
LCFI677:
	pushq	%rbx
LCFI678:
	subq	$40, %rsp
LCFI679:
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
	call	_smpObject_cons
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE105:
	.align 4,0x90
.globl _smpList_add_now
_smpList_add_now:
LFB294:
	pushq	%rbp
LCFI680:
	movq	%rsp, %rbp
LCFI681:
	pushq	%r12
LCFI682:
	pushq	%rbx
LCFI683:
	addq	$-128, %rsp
LCFI684:
	movq	%rdi, %r12
	leaq	16(%rbp), %rax
	.align 4,0x90
L1147:
	movq	24(%rax), %rbx
	movq	32(%rbx), %rax
	testq	%rax, %rax
	jne	L1147
	movq	(%rdx), %r9
	movq	%r9, -80(%rbp)
	movq	8(%rdx), %r8
	movq	%r8, -72(%rbp)
	movq	16(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movq	24(%rdx), %rcx
	movq	%rcx, -56(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -88(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	movq	%r9, (%rsp)
	movq	%r8, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movl	$1, %esi
	call	_smpObject_cons
	movl	$32, %edi
	call	_malloc
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	16(%rbp), %rax
	movq	%rax, (%r12)
	movq	24(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	32(%rbp), %rax
	movq	%rax, 16(%r12)
	movq	40(%rbp), %rax
	movq	%rax, 24(%r12)
	movq	%r12, %rax
	subq	$-128, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
LFE294:
	.cstring
LC30:
	.ascii "ListBuffer\0"
	.text
	.align 4,0x90
.globl _smpListBuffer_init
_smpListBuffer_init:
LFB313:
	pushq	%rbp
LCFI685:
	movq	%rsp, %rbp
LCFI686:
	pushq	%r15
LCFI687:
	pushq	%r14
LCFI688:
	pushq	%r13
LCFI689:
	pushq	%r12
LCFI690:
	pushq	%rbx
LCFI691:
	subq	$72, %rsp
LCFI692:
	movq	%rdi, -112(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r14d
	sarb	$7, %r14b
	sall	$7, %edx
	movl	%edx, %r15d
	sarb	$7, %r15b
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1153
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1153
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	L1153
	leaq	LC30(%rip), %rsi
	movl	$5381, %ecx
	movl	$76, %edx
	.align 4,0x90
L1157:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1157
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1153
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L1153
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1161
	.align 4,0x90
L1162:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L1153
L1161:
	leaq	LC30(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1162
	movq	32(%rbx), %rsi
	jmp	L1164
	.align 4,0x90
L1153:
	movq	-88(%rbp), %rsi
L1164:
	movq	-112(%rbp), %rdi
	call	_obj_init
	movl	$64, %edi
	call	_malloc
	movq	-88(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-96(%rbp), %rcx
	movq	%rcx, 48(%rax)
	andl	$1, %r14d
	leal	(%r14,%r14), %esi
	movzbl	40(%rax), %edx
	andl	$-4, %edx
	movl	%r15d, %ecx
	andl	$1, %ecx
	orl	%esi, %edx
	orl	%ecx, %edx
	movb	%dl, 40(%rax)
	movq	-104(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-88(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-96(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movzbl	8(%rax), %edx
	andl	$-4, %edx
	orl	%esi, %edx
	orl	%ecx, %edx
	movb	%dl, 8(%rax)
	movq	-104(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-112(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	%rdx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE313:
	.align 4,0x90
.globl _smpHash_init_capacity
_smpHash_init_capacity:
LFB259:
	pushq	%rbp
LCFI693:
	movq	%rsp, %rbp
LCFI694:
	pushq	%r15
LCFI695:
	pushq	%r14
LCFI696:
	pushq	%r13
LCFI697:
	pushq	%r12
LCFI698:
	pushq	%rbx
LCFI699:
	subq	$104, %rsp
LCFI700:
	movq	%rdi, %r14
	movq	%rsi, %r15
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1177
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1177
	movq	(%rdi), %r8
	leaq	LC18(%rip), %rsi
	movl	$5381, %ecx
	movl	$72, %edx
	testq	%r8, %r8
	je	L1177
	.align 4,0x90
L1175:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1175
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1177
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L1177
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1180
	.align 4,0x90
L1181:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L1177
L1180:
	leaq	LC18(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1181
	movq	32(%rbx), %rsi
	jmp	L1174
	.align 4,0x90
L1177:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1174:
	movq	%r14, %rdi
	call	_obj_init
	movl	$64, %edi
	call	_malloc
	movq	%rax, %rbx
	leaq	-144(%rbp), %rdi
	movq	%r15, %rsi
	call	_smpHash_core_init_capacity
	movq	-144(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-112(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-104(%rbp), %rax
	movq	%rax, 40(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 48(%rbx)
	movq	-88(%rbp), %rax
	movq	%rax, 56(%rbx)
	movq	%rbx, 24(%r14)
	movq	%r14, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE259:
	.cstring
	.align 3
LC31:
	.ascii "hash contains?() not implemented.\0"
	.text
	.align 4,0x90
.globl _smpHash_containsp
_smpHash_containsp:
LFB254:
	pushq	%rbp
LCFI701:
	movq	%rsp, %rbp
LCFI702:
	pushq	%r14
LCFI703:
	pushq	%r13
LCFI704:
	pushq	%r12
LCFI705:
	pushq	%rbx
LCFI706:
	subq	$160, %rsp
LCFI707:
	movq	%rdi, %r14
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1195
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1195
	movq	(%rdi), %r8
	leaq	LC26(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L1195
	.align 4,0x90
L1193:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1193
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1195
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L1195
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1198
	.align 4,0x90
L1199:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L1195
L1198:
	leaq	LC26(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1199
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L1192
	.align 4,0x90
L1195:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L1192:
	movq	%r10, -40(%rbp)
	movq	%r9, -48(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-56(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -56(%rbp)
	movq	%r8, -64(%rbp)
	leaq	-96(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	leaq	LC31(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-96(%rbp), %rsi
	movq	%rsi, -128(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	_smpThrown_init
	movq	%r14, %rax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
LFE254:
	.cstring
LC32:
	.ascii "catch() not implemented.\0"
	.text
	.align 4,0x90
.globl _smpGlobal_catch_arg
_smpGlobal_catch_arg:
LFB230:
	pushq	%rbp
LCFI708:
	movq	%rsp, %rbp
LCFI709:
	pushq	%r14
LCFI710:
	pushq	%r13
LCFI711:
	pushq	%r12
LCFI712:
	pushq	%rbx
LCFI713:
	subq	$160, %rsp
LCFI714:
	movq	%rdi, %r14
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1213
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1213
	movq	(%rdi), %r8
	leaq	LC26(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L1213
	.align 4,0x90
L1211:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1211
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1213
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L1213
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1216
	.align 4,0x90
L1217:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L1213
L1216:
	leaq	LC26(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1217
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L1210
	.align 4,0x90
L1213:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L1210:
	movq	%r10, -40(%rbp)
	movq	%r9, -48(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-56(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -56(%rbp)
	movq	%r8, -64(%rbp)
	leaq	-96(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	leaq	LC32(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-96(%rbp), %rsi
	movq	%rsi, -128(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	_smpThrown_init
	movq	%r14, %rax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
LFE230:
	.cstring
LC33:
	.ascii "FunctionError\0"
	.align 3
LC34:
	.ascii "Unexpected token %s after &rest argument.\0"
LC35:
	.ascii "&default\0"
LC36:
	.ascii "&quote\0"
LC37:
	.ascii "&optional\0"
LC38:
	.ascii "&rest\0"
LC39:
	.ascii "&keyword\0"
	.text
	.align 4,0x90
.globl _smpFunction_init_v
_smpFunction_init_v:
LFB226:
	pushq	%rbp
LCFI715:
	movq	%rsp, %rbp
LCFI716:
	pushq	%r15
LCFI717:
	pushq	%r14
LCFI718:
	pushq	%r13
LCFI719:
	pushq	%r12
LCFI720:
	pushq	%rbx
LCFI721:
	subq	$280, %rsp
LCFI722:
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movl	%edx, -260(%rbp)
	movq	%rcx, %rbx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -56(%rbp)
	xorl	%edx, %edx
	movq	%rsp, -240(%rbp)
	leaq	-96(%rbp), %rdi
	movq	_smpType_function@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	-260(%rbp), %r9d
	testl	%r9d, %r9d
	jne	L1224
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
L1226:
	movq	-240(%rbp), %rsp
	movq	-248(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-56(%rbp), %rcx
	xorq	(%rdx), %rcx
	jne	L1276
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L1224:
	movslq	-260(%rbp),%rax
	imulq	$56, %rax, %rax
	addq	$30, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	leaq	32(%rsp), %r15
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movl	-260(%rbp), %r8d
	testl	%r8d, %r8d
	jle	L1229
	movq	%r15, %r12
	movl	$0, -232(%rbp)
	xorl	%r14d, %r14d
	movl	$0, -228(%rbp)
	.align 4,0x90
L1230:
	movslq	-228(%rbp),%rsi
	imulq	$56, %rsi, %rcx
	movzbl	-232(%rbp), %edx
	addl	%edx, %edx
	movzbl	8(%r15,%rcx), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, 8(%rcx,%r15)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, 16(%r12)
	movq	8(%rdx), %rax
	movq	%rax, 24(%r12)
	movq	16(%rdx), %rax
	movq	%rax, 32(%r12)
	movq	24(%rdx), %rax
	movq	%rax, 40(%r12)
	andb	$-2, 48(%r15,%rcx)
	movl	(%rbx), %eax
	cmpl	$48, %eax
	jae	L1231
	mov	%eax, %edx
	addq	16(%rbx), %rdx
	addl	$8, %eax
	movl	%eax, (%rbx)
L1233:
	movq	(%rdx), %r13
	movl	-228(%rbp), %edi
	testl	%edi, %edi
	jle	L1234
	movl	-228(%rbp), %eax
	decl	%eax
	cltq
	imulq	$56, %rax, %rax
	testb	$1, 48(%r15,%rax)
	jne	L1277
L1234:
	imulq	$56, %rsi, %rsi
	movq	%rsi, -272(%rbp)
	movq	%rsi, %rcx
	addq	%r15, %rcx
	movq	%rcx, -280(%rbp)
	jmp	L1268
	.align 4,0x90
L1278:
	mov	%eax, %edx
	addq	16(%rbx), %rdx
	addl	$8, %eax
	movl	%eax, (%rbx)
L1262:
	movq	(%rdx), %r13
	cmpq	$1, %r13
	sbbl	$-1, %r14d
	cmpl	%r14d, -260(%rbp)
	jle	L1259
L1268:
	leaq	LC35(%rip), %rsi
	movq	%r13, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1250
	movq	8(%rbx), %rdx
	leaq	32(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	(%rdx), %rax
	movq	%rax, 16(%r12)
	movq	8(%rdx), %rax
	movq	%rax, 24(%r12)
	movq	16(%rdx), %rax
	movq	%rax, 32(%r12)
	movq	24(%rdx), %rax
	movq	%rax, 40(%r12)
	incl	%r14d
L1252:
	movl	(%rbx), %eax
	cmpl	$48, %eax
	jb	L1278
	movq	8(%rbx), %rdx
	leaq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	jmp	L1262
	.align 4,0x90
L1250:
	leaq	LC36(%rip), %rsi
	movq	%r13, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1253
	movq	-272(%rbp), %rdx
	movzbl	8(%r15,%rdx), %eax
	orl	$1, %eax
	movb	%al, 8(%rdx,%r15)
	jmp	L1252
L1257:
	leaq	LC39(%rip), %rsi
	movq	%r13, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L1252
	.align 4,0x90
L1259:
	movq	%r13, (%r12)
	incl	%r14d
	incl	-228(%rbp)
	addq	$56, %r12
	cmpl	%r14d, -260(%rbp)
	jg	L1230
	movzwl	-228(%rbp), %r13d
	movslq	-228(%rbp),%rax
	imulq	$56, %rax, %r12
L1229:
	movq	%r12, %rdi
	call	_malloc
	movq	%rax, %rbx
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_memcpy
	movl	$40, %edi
	call	_malloc
	movq	%rbx, 16(%rax)
	movw	%r13w, 24(%rax)
	movq	-256(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movb	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rdx
	movq	-248(%rbp), %rcx
	movq	%rdx, (%rcx)
	movq	-88(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	movq	%rax, 24(%rcx)
	jmp	L1226
	.align 4,0x90
L1253:
	leaq	LC37(%rip), %rsi
	movq	%r13, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1255
	movq	-272(%rbp), %rcx
	orb	$2, 8(%r15,%rcx)
	movl	$1, -232(%rbp)
	jmp	L1252
L1231:
	movq	8(%rbx), %rdx
	leaq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	jmp	L1233
L1255:
	leaq	LC38(%rip), %rsi
	movq	%r13, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1257
	movq	-280(%rbp), %rax
	orb	$1, 48(%rax)
	jmp	L1252
L1277:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1237
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1237
	movq	(%rdi), %r8
	leaq	LC33(%rip), %rsi
	movl	$5381, %ecx
	movl	$70, %edx
	testq	%r8, %r8
	je	L1237
L1242:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1242
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1244
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1244
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1247
	.align 4,0x90
L1248:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1244
L1247:
	leaq	LC33(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1248
	movq	32(%rbx), %r8
	movq	24(%rbx), %rdi
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %rsi
	jmp	L1241
L1237:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	24(%rcx), %r8
	movq	16(%rcx), %rdi
	movzbl	8(%rcx), %eax
L1275:
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
L1241:
	movq	%r8, -104(%rbp)
	movq	%rdi, -112(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-120(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -120(%rbp)
	movq	%rsi, -128(%rbp)
	leaq	-160(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rdx
	leaq	LC34(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-160(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-224(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-224(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-208(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L1226
L1244:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	24(%rdx), %r8
	movq	16(%rdx), %rdi
	movzbl	8(%rdx), %eax
	jmp	L1275
L1276:
	call	___stack_chk_fail
LFE226:
	.align 4,0x90
.globl _smpFunction_init
_smpFunction_init:
LFB225:
	pushq	%rbp
LCFI723:
	movq	%rsp, %rbp
LCFI724:
	pushq	%rbx
LCFI725:
	subq	$248, %rsp
LCFI726:
	movq	%rdi, %rbx
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	movzbl	%al, %ecx
	leaq	0(,%rcx,4), %rax
	leaq	L1280(%rip), %rcx
	subq	%rax, %rcx
	leaq	-17(%rbp), %rax
	jmp	*%rcx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L1280:
	leaq	-224(%rbp), %rcx
	movl	$24, -224(%rbp)
	movl	$48, -220(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	call	_smpFunction_init_v
	movq	%rbx, %rax
	addq	$248, %rsp
	popq	%rbx
	leave
	ret
LFE225:
	.align 4,0x90
.globl _smpTypeError_init_fmt
_smpTypeError_init_fmt:
LFB198:
	pushq	%rbp
LCFI727:
	movq	%rsp, %rbp
LCFI728:
	pushq	%r15
LCFI729:
	pushq	%r14
LCFI730:
	pushq	%r13
LCFI731:
	pushq	%r12
LCFI732:
	pushq	%rbx
LCFI733:
	subq	$360, %rsp
LCFI734:
	movq	%rdi, %r13
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movzbl	%al, %edx
	leaq	0(,%rdx,4), %rax
	leaq	L1283(%rip), %rdx
	subq	%rax, %rdx
	leaq	-49(%rbp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L1283:
	movq	_gc_runningp@GOTPCREL(%rip), %rax
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	je	L1284
	leaq	-256(%rbp), %rdx
	movl	$16, -256(%rbp)
	movl	$48, -252(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdi
	call	_vfprintf
	movq	(%rbx), %rsi
	movl	$10, %edi
	call	_fputc
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
L1282:
	movq	%r13, %rax
	addq	$360, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L1284:
	leaq	-288(%rbp), %rdx
	movl	$16, -288(%rbp)
	movl	$48, -284(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -280(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-400(%rbp), %rdi
	call	_vasprintf
	movq	_smp_nil@GOTPCREL(%rip), %r15
	movq	(%r15), %rsi
	movq	%rsi, -392(%rbp)
	movq	8(%r15), %rcx
	movq	%rcx, -384(%rbp)
	movq	16(%r15), %rdx
	movq	%rdx, -376(%rbp)
	movq	24(%r15), %rax
	movq	%rax, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	%rsi, -352(%rbp)
	movq	%rcx, -344(%rbp)
	movq	%rdx, -336(%rbp)
	movq	%rax, -328(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1294
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1294
	movq	(%rdi), %r8
	leaq	LC29(%rip), %rsi
	movl	$5381, %ecx
	movl	$84, %edx
	testq	%r8, %r8
	je	L1294
	.align 4,0x90
L1292:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1292
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1294
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1294
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1297
	.align 4,0x90
L1298:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1294
L1297:
	leaq	LC29(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1298
	movq	32(%rbx), %rsi
	jmp	L1291
	.align 4,0x90
L1294:
	movq	24(%r15), %rsi
L1291:
	leaq	-320(%rbp), %rdi
	call	_obj_init
	movl	$80, %edi
	call	_malloc
	movq	-400(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-392(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-384(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-376(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-368(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-360(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-352(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-344(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-336(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-328(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	%rax, -296(%rbp)
	movq	-320(%rbp), %rdx
	movq	%rdx, (%r13)
	movq	-312(%rbp), %rdx
	movq	%rdx, 8(%r13)
	movq	-304(%rbp), %rdx
	movq	%rdx, 16(%r13)
	movq	%rax, 24(%r13)
	jmp	L1282
LFE198:
	.align 4,0x90
.globl _smpTypeError_init_detailed
_smpTypeError_init_detailed:
LFB197:
	pushq	%rbp
LCFI735:
	movq	%rsp, %rbp
LCFI736:
	pushq	%r15
LCFI737:
	pushq	%r14
LCFI738:
	pushq	%r13
LCFI739:
	pushq	%r12
LCFI740:
	pushq	%rbx
LCFI741:
	subq	$360, %rsp
LCFI742:
	movq	%rdi, %r13
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movzbl	%al, %ecx
	leaq	0(,%rcx,4), %rax
	leaq	L1305(%rip), %rcx
	subq	%rax, %rcx
	leaq	-49(%rbp), %rax
	jmp	*%rcx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L1305:
	movq	%rdx, %r10
	movq	40(%rbp), %rdi
	movq	32(%rbp), %r8
	movzbl	24(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	16(%rbp), %r9
	movq	_gc_runningp@GOTPCREL(%rip), %rax
	movl	(%rax), %r11d
	testl	%r11d, %r11d
	je	L1306
	leaq	-256(%rbp), %rdx
	movl	$24, -256(%rbp)
	movl	$48, -252(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %rbx
	movq	%r10, %rsi
	movq	(%rbx), %rdi
	call	_vfprintf
	movq	(%rbx), %rsi
	movl	$10, %edi
	call	_fputc
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
L1304:
	movq	%r13, %rax
	addq	$360, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L1306:
	movq	$0, -400(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	%rax, -392(%rbp)
	movq	8(%r15), %rax
	movq	%rax, -384(%rbp)
	movq	16(%r15), %rax
	movq	%rax, -376(%rbp)
	movq	24(%r15), %rax
	movq	%rax, -368(%rbp)
	movq	%rsi, -360(%rbp)
	movq	%rdi, -328(%rbp)
	movq	%r8, -336(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-344(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -344(%rbp)
	movq	%r9, -352(%rbp)
	leaq	-288(%rbp), %rdx
	movl	$24, -288(%rbp)
	movl	$48, -284(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, -280(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-400(%rbp), %rdi
	movq	%r10, %rsi
	call	_vasprintf
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1316
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1316
	movq	(%rdi), %r8
	leaq	LC29(%rip), %rsi
	movl	$5381, %ecx
	movl	$84, %edx
	testq	%r8, %r8
	je	L1316
	.align 4,0x90
L1314:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1314
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1316
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1316
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1319
	.align 4,0x90
L1320:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1316
L1319:
	leaq	LC29(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1320
	movq	32(%rbx), %rsi
	jmp	L1313
	.align 4,0x90
L1316:
	movq	24(%r15), %rsi
L1313:
	leaq	-320(%rbp), %rdi
	call	_obj_init
	movl	$80, %edi
	call	_malloc
	movq	-400(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-392(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-384(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-376(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-368(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-360(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-352(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-344(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-336(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-328(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	%rax, -296(%rbp)
	movq	-320(%rbp), %rdx
	movq	%rdx, (%r13)
	movq	-312(%rbp), %rdx
	movq	%rdx, 8(%r13)
	movq	-304(%rbp), %rdx
	movq	%rdx, 16(%r13)
	movq	%rax, 24(%r13)
	jmp	L1304
LFE197:
	.align 4,0x90
.globl _smpTypeError_init
_smpTypeError_init:
LFB196:
	pushq	%rbp
LCFI743:
	movq	%rsp, %rbp
LCFI744:
	pushq	%r15
LCFI745:
	pushq	%r14
LCFI746:
	pushq	%r13
LCFI747:
	pushq	%r12
LCFI748:
	pushq	%rbx
LCFI749:
	subq	$120, %rsp
LCFI750:
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	24(%rbp), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	%ecx, %r14d
	sarb	$7, %r14b
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -129(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r15d
	sarb	$7, %r15b
	sall	$7, %edx
	sarb	$7, %dl
	movb	%dl, -97(%rbp)
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1327
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1327
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	L1327
	leaq	LC29(%rip), %rsi
	movl	$5381, %ecx
	movl	$84, %edx
	.align 4,0x90
L1331:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1331
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1327
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L1327
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1335
	.align 4,0x90
L1336:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L1327
L1335:
	leaq	LC29(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1336
	movq	32(%rbx), %rsi
	jmp	L1338
	.align 4,0x90
L1327:
	movq	-88(%rbp), %rsi
L1338:
	movq	-152(%rbp), %rdi
	call	_obj_init
	movl	$80, %edi
	call	_malloc
	movq	-120(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-128(%rbp), %rcx
	movq	%rcx, 64(%rax)
	andl	$1, %r14d
	leal	(%r14,%r14), %ecx
	movzbl	56(%rax), %edx
	andl	$-4, %edx
	andb	$1, -129(%rbp)
	orl	%ecx, %edx
	orb	-129(%rbp), %dl
	movb	%dl, 56(%rax)
	movq	-144(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-160(%rbp), %rcx
	movq	%rcx, 40(%rax)
	movq	-88(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-96(%rbp), %rcx
	movq	%rcx, 24(%rax)
	andl	$1, %r15d
	leal	(%r15,%r15), %ecx
	movzbl	16(%rax), %edx
	andl	$-4, %edx
	andb	$1, -97(%rbp)
	orl	%ecx, %edx
	orb	-97(%rbp), %dl
	movb	%dl, 16(%rax)
	movq	-112(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, (%rax)
	movq	-152(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	%rcx, %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE196:
	.align 4,0x90
.globl _smpString_add_now
_smpString_add_now:
LFB348:
	pushq	%rbp
LCFI751:
	movq	%rsp, %rbp
LCFI752:
	pushq	%r15
LCFI753:
	pushq	%r14
LCFI754:
	pushq	%r13
LCFI755:
	pushq	%r12
LCFI756:
	pushq	%rbx
LCFI757:
	subq	$248, %rsp
LCFI758:
	movq	%rdi, %r15
	movq	%rdx, %r8
	movzbl	24(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movb	%dl, -177(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -178(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	40(%rbp), %rdx
	movq	%rdx, -200(%rbp)
	movq	32(%rbp), %r13
	movq	16(%r8), %r12
	movq	(%r13), %rax
	movq	%rax, -176(%rbp)
	movq	8(%r13), %rax
	movq	%rax, -168(%rbp)
	movq	16(%r13), %rax
	movq	%rax, -160(%rbp)
	movq	24(%r13), %rax
	movq	%rax, -152(%rbp)
	movq	32(%r13), %rax
	movq	%rax, -144(%rbp)
	movq	40(%r13), %rax
	movq	%rax, -136(%rbp)
	movq	48(%r13), %rax
	movq	%rax, -128(%rbp)
	movq	56(%r13), %rax
	movq	%rax, -120(%rbp)
	movl	-168(%rbp), %r14d
	testq	%r12, %r12
	je	L1344
	cmpl	%r14d, 8(%r12)
	je	L1346
	cmpq	$0, 24(%r12)
	je	L1344
	xorl	%ebx, %ebx
	jmp	L1349
	.align 4,0x90
L1354:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L1344
L1349:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	movl	%r14d, -168(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%r8, -216(%rbp)
	call	_smpObject_instancep_c
	testl	%eax, %eax
	movq	-216(%rbp), %r8
	je	L1354
L1346:
	movq	24(%r8), %rax
	movq	(%rax), %r12
	movq	8(%rax), %rbx
	movq	-200(%rbp), %rax
	addq	8(%rax), %rbx
	leaq	1(%rbx), %rsi
	movq	(%rax), %rdi
	call	_realloc
	movq	%rax, %rdi
	movq	-200(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	8(%rdx), %rdi
	movq	%r12, %rsi
	call	_strcpy
	movq	-200(%rbp), %rax
	movq	%rbx, 8(%rax)
	andb	$1, -177(%rbp)
	movzbl	-177(%rbp), %edx
	addl	%edx, %edx
	movzbl	8(%r15), %eax
	andl	$-4, %eax
	andb	$1, -178(%rbp)
	orl	%edx, %eax
	orb	-178(%rbp), %al
	movb	%al, 8(%r15)
	movq	-192(%rbp), %rdx
	movq	%rdx, (%r15)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%r15)
	movq	%r13, 16(%r15)
L1343:
	movq	%r15, %rax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L1344:
	leaq	-80(%rbp), %rdi
	movq	(%r8), %rax
	movq	%rax, (%rsp)
	movq	8(%r8), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r8), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r8), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rsi
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-176(%rbp), %rax
	movq	%rax, (%r15)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%r15)
	jmp	L1343
LFE348:
	.align 4,0x90
.globl _smpString_add
_smpString_add:
LFB347:
	pushq	%rbp
LCFI759:
	movq	%rsp, %rbp
LCFI760:
	pushq	%r15
LCFI761:
	pushq	%r14
LCFI762:
	pushq	%r13
LCFI763:
	pushq	%r12
LCFI764:
	pushq	%rbx
LCFI765:
	subq	$232, %rsp
LCFI766:
	movq	%rdi, %r15
	movq	%rdx, %r8
	movq	40(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	32(%rbp), %rbx
	movq	16(%rdx), %r13
	movq	(%rbx), %rax
	movq	%rax, -176(%rbp)
	movq	8(%rbx), %rax
	movq	%rax, -168(%rbp)
	movq	16(%rbx), %rax
	movq	%rax, -160(%rbp)
	movq	24(%rbx), %rax
	movq	%rax, -152(%rbp)
	movq	32(%rbx), %rax
	movq	%rax, -144(%rbp)
	movq	40(%rbx), %rax
	movq	%rax, -136(%rbp)
	movq	48(%rbx), %rax
	movq	%rax, -128(%rbp)
	movq	56(%rbx), %rax
	movq	%rax, -120(%rbp)
	movl	-168(%rbp), %r14d
	testq	%r13, %r13
	je	L1356
	cmpl	%r14d, 8(%r13)
	je	L1358
	cmpq	$0, 24(%r13)
	je	L1356
	xorl	%r12d, %r12d
	jmp	L1361
	.align 4,0x90
L1366:
	incq	%r12
	cmpq	%r12, 24(%r13)
	jbe	L1356
L1361:
	movq	16(%r13), %rax
	movq	(%rax,%r12,8), %rdi
	movl	%r14d, -168(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%r8, -200(%rbp)
	call	_smpObject_instancep_c
	testl	%eax, %eax
	movq	-200(%rbp), %r8
	je	L1366
L1358:
	movq	-184(%rbp), %rax
	movq	8(%rax), %r14
	movq	(%rax), %rbx
	movq	24(%r8), %rax
	movq	(%rax), %r13
	movq	%r14, %rdi
	addq	8(%rax), %rdi
	incq	%rdi
	call	_malloc
	movq	%rax, %r12
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_strcpy
	leaq	(%r12,%r14), %rdi
	movq	%r13, %rsi
	call	_strcpy
	leaq	-112(%rbp), %rdi
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%r12, %rdi
	call	_strlen
	movq	%rax, 8(%rbx)
	movq	%r12, (%rbx)
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
L1355:
	movq	%r15, %rax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L1356:
	leaq	-80(%rbp), %rdi
	movq	(%r8), %rax
	movq	%rax, (%rsp)
	movq	8(%r8), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r8), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r8), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rsi
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-176(%rbp), %rax
	movq	%rax, (%r15)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%r15)
	jmp	L1355
LFE347:
	.align 4,0x90
.globl _smpList_length
_smpList_length:
LFB304:
	pushq	%rbp
LCFI767:
	movq	%rsp, %rbp
LCFI768:
	pushq	%r13
LCFI769:
	pushq	%r12
LCFI770:
	pushq	%rbx
LCFI771:
	subq	$136, %rsp
LCFI772:
	movq	%rdi, %r13
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rsi
	movl	8(%rsi), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1384
	testq	%rcx, %rcx
	je	L1385
	movq	32(%rcx), %rdx
	movl	$1, %r12d
	testq	%rdx, %rdx
	je	L1374
	movq	16(%rdx), %rax
	movl	8(%rax), %ecx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	cmpl	(%rax), %ecx
	je	L1377
	jmp	L1376
	.align 4,0x90
L1373:
	incq	%r12
	movq	32(%rax), %rdx
	testq	%rdx, %rdx
	je	L1374
	movq	16(%rdx), %rax
	cmpl	%ecx, 8(%rax)
	jne	L1376
L1377:
	movq	24(%rdx), %rax
	testq	%rax, %rax
	jne	L1373
L1374:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%r12, %rsi
L1383:
	movq	%rbx, %rdi
	call	___gmpz_init_set_si
	leaq	-128(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -104(%rbp)
	movq	-128(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movzbl	-88(%rbp), %edx
	movq	%rbx, 24(%r13)
	movq	%rax, 16(%r13)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 8(%r13)
	movq	%rsi, (%r13)
L1367:
	movq	%r13, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	leave
	ret
L1376:
	leaq	-64(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-64(%rbp), %rsi
	movq	%rsi, -128(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-96(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-96(%rbp), %rax
	movq	%rax, (%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%r13)
	jmp	L1367
L1384:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	xorl	%esi, %esi
	jmp	L1383
L1385:
	xorl	%r12d, %r12d
	jmp	L1374
LFE304:
	.align 4,0x90
.globl _smpList_get_clong
_smpList_get_clong:
LFB303:
	pushq	%rbp
LCFI773:
	movq	%rsp, %rbp
LCFI774:
	pushq	%rbx
LCFI775:
	subq	$136, %rsp
LCFI776:
	movq	%rdi, %rbx
	leaq	16(%rbp), %rcx
	testq	%rsi, %rsi
	jle	L1389
	movq	40(%rbp), %rax
	movq	32(%rax), %rcx
	testq	%rcx, %rcx
	je	L1390
	movq	16(%rcx), %rax
	movl	8(%rax), %edi
	movl	$1, %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edi
	je	L1396
	jmp	L1392
	.align 4,0x90
L1394:
	movq	24(%rcx), %rax
	movq	32(%rax), %rcx
	testq	%rcx, %rcx
	je	L1390
	incq	%rdx
	movq	16(%rcx), %rax
	cmpl	%edi, 8(%rax)
	jne	L1392
L1396:
	cmpq	%rsi, %rdx
	jne	L1394
L1389:
	movq	24(%rcx), %rdx
L1401:
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$136, %rsp
	popq	%rbx
	leave
	ret
L1390:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L1401
L1392:
	leaq	-48(%rbp), %rdi
	movq	32(%rbp), %rsi
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-48(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-112(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-112(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$136, %rsp
	popq	%rbx
	leave
	ret
LFE303:
	.cstring
LC40:
	.ascii "Integer\0"
	.text
	.align 4,0x90
.globl _smpInteger_to_s
_smpInteger_to_s:
LFB292:
	pushq	%rbp
LCFI777:
	movq	%rsp, %rbp
LCFI778:
	movq	%rbx, -40(%rbp)
LCFI779:
	movq	%r12, -32(%rbp)
LCFI780:
	movq	%r13, -24(%rbp)
LCFI781:
	movq	%r14, -16(%rbp)
LCFI782:
	movq	%r15, -8(%rbp)
LCFI783:
	subq	$176, %rsp
LCFI784:
	movq	%rdi, %r13
	movq	%rdx, %r14
	movq	40(%rbp), %r15
	testl	%esi, %esi
	je	L1403
	movq	16(%rdx), %r12
	movl	8(%r12), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1403
	movq	(%r12), %rbx
	leaq	LC40(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L1406
	cmpq	$0, 24(%r12)
	je	L1408
	xorl	%ebx, %ebx
	jmp	L1410
	.align 4,0x90
L1439:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L1438
L1410:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC40(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L1439
L1406:
	movq	24(%r14), %rbx
	movq	%rbx, %rdi
	call	___gmpz_fits_sint_p
	testl	%eax, %eax
	jne	L1440
	.align 4,0x90
L1403:
	movl	$10, %esi
L1430:
	movq	%r15, %rdx
	xorl	%edi, %edi
	call	___gmpz_get_str
	movq	%rax, %r12
	leaq	-144(%rbp), %rdi
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%r12, %rdi
	call	_strlen
	movq	%rax, 8(%rbx)
	movq	%r12, (%rbx)
	movq	%rbx, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, (%r13)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	%rbx, 24(%r13)
L1402:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
L1440:
	movq	%rbx, %rdi
	call	___gmpz_get_si
	movl	%eax, %esi
	jmp	L1430
L1438:
	movq	16(%r14), %rax
	movq	(%rax), %rbx
L1408:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1441
	movl	$32, %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	_memmove
	jmp	L1402
L1441:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1424
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1424
	movq	(%rdi), %r8
	leaq	LC40(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L1424
L1422:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1422
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1424
	movq	8(%rax), %r15
	testq	%r15, %r15
	je	L1424
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1427
L1428:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r15, %r12
	je	L1424
L1427:
	leaq	LC40(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1428
	movq	32(%rbx), %rsi
	jmp	L1421
L1424:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1421:
	leaq	-80(%rbp), %rdi
	movq	(%r14), %rax
	movq	%rax, (%rsp)
	movq	8(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r14), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r13)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r13)
	jmp	L1402
LFE292:
	.cstring
LC41:
	.ascii "Number\0"
	.text
	.align 4,0x90
.globl _smpInteger_gt
_smpInteger_gt:
LFB289:
	pushq	%rbp
LCFI785:
	movq	%rsp, %rbp
LCFI786:
	pushq	%r15
LCFI787:
	pushq	%r14
LCFI788:
	pushq	%r13
LCFI789:
	pushq	%r12
LCFI790:
	pushq	%rbx
LCFI791:
	subq	$136, %rsp
LCFI792:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	32(%rbp), %rsi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	cmpl	%ecx, %edx
	je	L1485
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1486
L1449:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1469
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1469
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1469
	.align 4,0x90
L1467:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1467
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1469
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1469
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1472
	.align 4,0x90
L1473:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1469
L1472:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1473
	movq	32(%rbx), %rsi
	jmp	L1466
	.align 4,0x90
L1469:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1466:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L1442:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L1486:
	movq	24(%r13), %r8
	movl	8(%rsi), %eax
	cmpl	%eax, %ecx
	je	L1487
	cmpl	%eax, %edx
	jne	L1449
	movl	$1, %edx
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L1479
L1483:
	jne	L1476
	cmpl	$-2, %eax
	je	L1449
	testl	%eax, %eax
	jg	L1479
L1476:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L1484
L1485:
	movq	24(%r13), %rsi
	call	___gmpz_cmp
	cmpl	$0, %eax
	jle	L1483
L1479:
	movq	_smp_true@GOTPCREL(%rip), %rdx
L1484:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L1442
L1487:
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jg	L1479
	jmp	L1483
LFE289:
	.align 4,0x90
.globl _smpInteger_ge
_smpInteger_ge:
LFB288:
	pushq	%rbp
LCFI793:
	movq	%rsp, %rbp
LCFI794:
	pushq	%r15
LCFI795:
	pushq	%r14
LCFI796:
	pushq	%r13
LCFI797:
	pushq	%r12
LCFI798:
	pushq	%rbx
LCFI799:
	subq	$136, %rsp
LCFI800:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	32(%rbp), %rsi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	cmpl	%ecx, %edx
	je	L1531
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1532
L1495:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1515
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1515
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1515
	.align 4,0x90
L1513:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1513
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1515
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1515
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1518
	.align 4,0x90
L1519:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1515
L1518:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1519
	movq	32(%rbx), %rsi
	jmp	L1512
	.align 4,0x90
L1515:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1512:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L1488:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L1532:
	movq	24(%r13), %r8
	movl	8(%rsi), %eax
	cmpl	%eax, %ecx
	je	L1533
	cmpl	%eax, %edx
	jne	L1495
	movl	$1, %edx
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L1525
L1529:
	jne	L1522
	cmpl	$-2, %eax
	je	L1495
	testl	%eax, %eax
	jns	L1525
L1522:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L1530
L1531:
	movq	24(%r13), %rsi
	call	___gmpz_cmp
	cmpl	$0, %eax
	jle	L1529
L1525:
	movq	_smp_true@GOTPCREL(%rip), %rdx
L1530:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L1488
L1533:
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jg	L1525
	jmp	L1529
LFE288:
	.align 4,0x90
.globl _smpInteger_le
_smpInteger_le:
LFB287:
	pushq	%rbp
LCFI801:
	movq	%rsp, %rbp
LCFI802:
	pushq	%r15
LCFI803:
	pushq	%r14
LCFI804:
	pushq	%r13
LCFI805:
	pushq	%r12
LCFI806:
	pushq	%rbx
LCFI807:
	subq	$136, %rsp
LCFI808:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	32(%rbp), %rsi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	cmpl	%ecx, %edx
	je	L1577
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1578
L1541:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1561
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1561
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1561
	.align 4,0x90
L1559:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1559
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1561
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1561
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1564
	.align 4,0x90
L1565:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1561
L1564:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1565
	movq	32(%rbx), %rsi
	jmp	L1558
	.align 4,0x90
L1561:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1558:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L1534:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L1578:
	movq	24(%r13), %r8
	movl	8(%rsi), %eax
	cmpl	%eax, %ecx
	je	L1579
	cmpl	%eax, %edx
	jne	L1541
	movl	$1, %edx
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L1568
L1575:
	jne	L1571
	cmpl	$-2, %eax
	je	L1541
	testl	%eax, %eax
	jg	L1568
L1571:
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L1576
L1577:
	movq	24(%r13), %rsi
	call	___gmpz_cmp
	cmpl	$0, %eax
	jle	L1575
L1568:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L1576:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L1534
L1579:
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jg	L1568
	jmp	L1575
LFE287:
	.align 4,0x90
.globl _smpInteger_lt
_smpInteger_lt:
LFB286:
	pushq	%rbp
LCFI809:
	movq	%rsp, %rbp
LCFI810:
	pushq	%r15
LCFI811:
	pushq	%r14
LCFI812:
	pushq	%r13
LCFI813:
	pushq	%r12
LCFI814:
	pushq	%rbx
LCFI815:
	subq	$136, %rsp
LCFI816:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	32(%rbp), %rsi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	cmpl	%ecx, %edx
	je	L1623
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1624
L1587:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1607
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1607
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1607
	.align 4,0x90
L1605:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1605
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1607
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1607
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1610
	.align 4,0x90
L1611:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1607
L1610:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1611
	movq	32(%rbx), %rsi
	jmp	L1604
	.align 4,0x90
L1607:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1604:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L1580:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L1624:
	movq	24(%r13), %r8
	movl	8(%rsi), %eax
	cmpl	%eax, %ecx
	je	L1625
	cmpl	%eax, %edx
	jne	L1587
	movl	$1, %edx
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L1614
L1621:
	jne	L1617
	cmpl	$-2, %eax
	je	L1587
	testl	%eax, %eax
	jns	L1614
L1617:
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L1622
L1623:
	movq	24(%r13), %rsi
	call	___gmpz_cmp
	cmpl	$0, %eax
	jle	L1621
L1614:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L1622:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L1580
L1625:
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jg	L1614
	jmp	L1621
LFE286:
	.align 4,0x90
.globl _smpInteger_nequalp
_smpInteger_nequalp:
LFB285:
	pushq	%rbp
LCFI817:
	movq	%rsp, %rbp
LCFI818:
	pushq	%r15
LCFI819:
	pushq	%r14
LCFI820:
	pushq	%r13
LCFI821:
	pushq	%r12
LCFI822:
	pushq	%rbx
LCFI823:
	subq	$136, %rsp
LCFI824:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	32(%rbp), %rsi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	cmpl	%ecx, %edx
	je	L1669
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1670
L1633:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1653
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1653
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1653
	.align 4,0x90
L1651:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1651
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1653
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1653
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1656
	.align 4,0x90
L1657:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1653
L1656:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1657
	movq	32(%rbx), %rsi
	jmp	L1650
	.align 4,0x90
L1653:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1650:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L1626:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L1670:
	movq	24(%r13), %r8
	movl	8(%rsi), %eax
	cmpl	%eax, %ecx
	je	L1671
	cmpl	%eax, %edx
	jne	L1633
	movl	$1, %edx
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L1663
L1667:
	jne	L1663
	cmpl	$-2, %eax
	je	L1633
	testl	%eax, %eax
	jne	L1663
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L1668
L1669:
	movq	24(%r13), %rsi
	call	___gmpz_cmp
	cmpl	$0, %eax
	jle	L1667
L1663:
	movq	_smp_true@GOTPCREL(%rip), %rdx
L1668:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L1626
L1671:
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jg	L1663
	jmp	L1667
LFE285:
	.align 4,0x90
.globl _smpInteger_equalp
_smpInteger_equalp:
LFB284:
	pushq	%rbp
LCFI825:
	movq	%rsp, %rbp
LCFI826:
	pushq	%r15
LCFI827:
	pushq	%r14
LCFI828:
	pushq	%r13
LCFI829:
	pushq	%r12
LCFI830:
	pushq	%rbx
LCFI831:
	subq	$136, %rsp
LCFI832:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	32(%rbp), %rsi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	cmpl	%ecx, %edx
	je	L1714
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1715
L1679:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1699
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1699
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1699
	.align 4,0x90
L1697:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1697
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1699
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1699
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1702
	.align 4,0x90
L1703:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1699
L1702:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1703
	movq	32(%rbx), %rsi
	jmp	L1696
	.align 4,0x90
L1699:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1696:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L1672:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L1715:
	movq	24(%r13), %r8
	movl	8(%rsi), %eax
	cmpl	%eax, %ecx
	je	L1716
	cmpl	%eax, %edx
	jne	L1679
	movl	$1, %edx
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L1706
L1712:
	jne	L1706
	cmpl	$-2, %eax
	je	L1679
	testl	%eax, %eax
	jne	L1706
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L1713
L1714:
	movq	24(%r13), %rsi
	call	___gmpz_cmp
	cmpl	$0, %eax
	jle	L1712
L1706:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L1713:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L1672
L1716:
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jg	L1706
	jmp	L1712
LFE284:
	.align 4,0x90
.globl _smpInteger_eq
_smpInteger_eq:
LFB290:
	pushq	%rbp
LCFI833:
	movq	%rsp, %rbp
LCFI834:
	pushq	%rbx
LCFI835:
	subq	$40, %rsp
LCFI836:
	movq	%rdi, %rbx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpInteger_equalp
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE290:
	.align 4,0x90
.globl _smpInteger_cmp
_smpInteger_cmp:
LFB283:
	pushq	%rbp
LCFI837:
	movq	%rsp, %rbp
LCFI838:
	pushq	%r15
LCFI839:
	pushq	%r14
LCFI840:
	pushq	%r13
LCFI841:
	pushq	%r12
LCFI842:
	pushq	%rbx
LCFI843:
	subq	$136, %rsp
LCFI844:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	32(%rbp), %rsi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	cmpl	%ecx, %edx
	je	L1761
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1762
L1726:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1746
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1746
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1746
	.align 4,0x90
L1744:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1744
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1746
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1746
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1749
	.align 4,0x90
L1750:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1746
L1749:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1750
	movq	32(%rbx), %rsi
	jmp	L1743
	.align 4,0x90
L1746:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1743:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-112(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%r15)
L1719:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L1762:
	movq	24(%r13), %r8
	movl	8(%rsi), %eax
	cmpl	%eax, %ecx
	je	L1763
	cmpl	%eax, %edx
	jne	L1726
	movl	$1, %edx
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp3
	movl	%eax, %r12d
	cmpl	$0, %eax
	jg	L1757
L1735:
	jne	L1764
	cmpl	$-2, %r12d
	jne	L1738
	jmp	L1726
L1761:
	movq	24(%r13), %rsi
	call	___gmpz_cmp
	movl	%eax, %r12d
	cmpl	$0, %eax
	jle	L1735
L1757:
	movl	$1, %r12d
L1738:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movslq	%r12d,%rsi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-144(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -120(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movzbl	-104(%rbp), %edx
	movq	%rbx, 24(%r15)
	movq	%rax, 16(%r15)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	8(%r15), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 8(%r15)
	movq	%rsi, (%r15)
	jmp	L1719
L1763:
	movq	%rdi, %rsi
	movq	%r8, %rdi
	call	_mpfr_cmp_z
	movl	%eax, %r12d
	cmpl	$0, %eax
	jg	L1757
	jmp	L1735
L1764:
	movl	$-1, %r12d
	jmp	L1738
LFE283:
	.align 4,0x90
.globl _smpInteger_xor
_smpInteger_xor:
LFB281:
	pushq	%rbp
LCFI845:
	movq	%rsp, %rbp
LCFI846:
	movq	%rbx, -32(%rbp)
LCFI847:
	movq	%r12, -24(%rbp)
LCFI848:
	movq	%r13, -16(%rbp)
LCFI849:
	movq	%r14, -8(%rbp)
LCFI850:
	subq	$160, %rsp
LCFI851:
	movq	%rdi, %r13
	movq	%rdx, %r12
	movq	40(%rbp), %r14
	movq	16(%rdx), %rcx
	movl	8(%rcx), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1770
	leaq	-64(%rbp), %rdi
	movq	(%r12), %rax
	movq	%rax, (%rsp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-64(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-128(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-128(%rbp), %rax
	movq	%rax, (%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%r13)
L1765:
	movq	%r13, %rax
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
	.align 4,0x90
L1770:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	___gmpz_init
	movq	24(%r12), %rdx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	___gmpz_xor
	leaq	-96(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, (%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	%rbx, 24(%r13)
	jmp	L1765
LFE281:
	.align 4,0x90
.globl _smpInteger_not
_smpInteger_not:
LFB280:
	pushq	%rbp
LCFI852:
	movq	%rsp, %rbp
LCFI853:
	pushq	%r13
LCFI854:
	pushq	%r12
LCFI855:
	pushq	%rbx
LCFI856:
	subq	$136, %rsp
LCFI857:
	movq	%rdi, %r13
	movq	%rdx, %r12
	movq	16(%rdx), %rcx
	movl	8(%rcx), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1776
	leaq	-64(%rbp), %rdi
	movq	(%r12), %rax
	movq	%rax, (%rsp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-64(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-128(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-128(%rbp), %rax
	movq	%rax, (%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%r13)
L1771:
	movq	%r13, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	leave
	ret
	.align 4,0x90
L1776:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	___gmpz_init
	movq	24(%r12), %rsi
	movq	%rbx, %rdi
	call	___gmpz_com
	leaq	-96(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, (%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	%rbx, 24(%r13)
	jmp	L1771
LFE280:
	.align 4,0x90
.globl _smpInteger_ior
_smpInteger_ior:
LFB279:
	pushq	%rbp
LCFI858:
	movq	%rsp, %rbp
LCFI859:
	movq	%rbx, -32(%rbp)
LCFI860:
	movq	%r12, -24(%rbp)
LCFI861:
	movq	%r13, -16(%rbp)
LCFI862:
	movq	%r14, -8(%rbp)
LCFI863:
	subq	$160, %rsp
LCFI864:
	movq	%rdi, %r13
	movq	%rdx, %r12
	movq	40(%rbp), %r14
	movq	16(%rdx), %rcx
	movl	8(%rcx), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1782
	leaq	-64(%rbp), %rdi
	movq	(%r12), %rax
	movq	%rax, (%rsp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-64(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-128(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-128(%rbp), %rax
	movq	%rax, (%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%r13)
L1777:
	movq	%r13, %rax
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
	.align 4,0x90
L1782:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	___gmpz_init
	movq	24(%r12), %rdx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	___gmpz_ior
	leaq	-96(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, (%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	%rbx, 24(%r13)
	jmp	L1777
LFE279:
	.align 4,0x90
.globl _smpInteger_and
_smpInteger_and:
LFB278:
	pushq	%rbp
LCFI865:
	movq	%rsp, %rbp
LCFI866:
	movq	%rbx, -32(%rbp)
LCFI867:
	movq	%r12, -24(%rbp)
LCFI868:
	movq	%r13, -16(%rbp)
LCFI869:
	movq	%r14, -8(%rbp)
LCFI870:
	subq	$160, %rsp
LCFI871:
	movq	%rdi, %r13
	movq	%rdx, %r12
	movq	40(%rbp), %r14
	movq	16(%rdx), %rcx
	movl	8(%rcx), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1788
	leaq	-64(%rbp), %rdi
	movq	(%r12), %rax
	movq	%rax, (%rsp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-64(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-128(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-128(%rbp), %rax
	movq	%rax, (%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%r13)
L1783:
	movq	%r13, %rax
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
	.align 4,0x90
L1788:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	___gmpz_init
	movq	24(%r12), %rdx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	___gmpz_and
	leaq	-96(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, (%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	%rbx, 24(%r13)
	jmp	L1783
LFE278:
	.align 4,0x90
.globl _smpInteger_shr
_smpInteger_shr:
LFB277:
	pushq	%rbp
LCFI872:
	movq	%rsp, %rbp
LCFI873:
	movq	%rbx, -32(%rbp)
LCFI874:
	movq	%r12, -24(%rbp)
LCFI875:
	movq	%r13, -16(%rbp)
LCFI876:
	movq	%r14, -8(%rbp)
LCFI877:
	subq	$160, %rsp
LCFI878:
	movq	%rdi, %r13
	movq	%rdx, %rcx
	movq	40(%rbp), %r14
	movq	16(%rdx), %rsi
	movl	8(%rsi), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1798
	leaq	-64(%rbp), %rdi
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-64(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-128(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-128(%rbp), %rax
	movq	%rax, (%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%r13)
L1789:
	movq	%r13, %rax
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
	.align 4,0x90
L1798:
	movq	24(%rcx), %rax
	movl	4(%rax), %ecx
	movq	8(%rax), %rdx
	movslq	%ecx,%rax
	cmpq	$1, %rax
	jbe	L1792
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	jmp	L1789
	.align 4,0x90
L1792:
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	cmovne	(%rdx), %rbx
	movl	$16, %edi
	call	_malloc
	movq	%rax, %r12
	movq	%rax, %rdi
	call	___gmpz_init
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	___gmpz_fdiv_q_2exp
	leaq	-96(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%r12, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, (%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	%r12, 24(%r13)
	jmp	L1789
LFE277:
	.align 4,0x90
.globl _smpInteger_shl
_smpInteger_shl:
LFB276:
	pushq	%rbp
LCFI879:
	movq	%rsp, %rbp
LCFI880:
	movq	%rbx, -32(%rbp)
LCFI881:
	movq	%r12, -24(%rbp)
LCFI882:
	movq	%r13, -16(%rbp)
LCFI883:
	movq	%r14, -8(%rbp)
LCFI884:
	subq	$160, %rsp
LCFI885:
	movq	%rdi, %r13
	movq	%rdx, %rcx
	movq	40(%rbp), %r14
	movq	16(%rdx), %rsi
	movl	8(%rsi), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1808
	leaq	-64(%rbp), %rdi
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-64(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-128(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-128(%rbp), %rax
	movq	%rax, (%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%r13)
L1799:
	movq	%r13, %rax
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
	.align 4,0x90
L1808:
	movq	24(%rcx), %rax
	movl	4(%rax), %ecx
	movq	8(%rax), %rdx
	movslq	%ecx,%rax
	cmpq	$1, %rax
	jbe	L1802
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	jmp	L1799
	.align 4,0x90
L1802:
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	cmovne	(%rdx), %rbx
	movl	$16, %edi
	call	_malloc
	movq	%rax, %r12
	movq	%rax, %rdi
	call	___gmpz_init
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	___gmpz_mul_2exp
	leaq	-96(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%r12, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, (%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	%r12, 24(%r13)
	jmp	L1799
LFE276:
	.align 4,0x90
.globl _smpInteger_pow
_smpInteger_pow:
LFB275:
	pushq	%rbp
LCFI886:
	movq	%rsp, %rbp
LCFI887:
	pushq	%r15
LCFI888:
	pushq	%r14
LCFI889:
	pushq	%r13
LCFI890:
	pushq	%r12
LCFI891:
	pushq	%rbx
LCFI892:
	subq	$136, %rsp
LCFI893:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %r14
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1832
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1833
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1822
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1822
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1822
	.align 4,0x90
L1820:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1820
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1822
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1822
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1825
	.align 4,0x90
L1826:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1822
L1825:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1826
	movq	32(%rbx), %rsi
	jmp	L1819
	.align 4,0x90
L1822:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1819:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L1809:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L1832:
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %r12
	movl	(%r12), %edx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	_mpfr_set_z
	movq	24(%r13), %rdx
	movl	(%r12), %ecx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	_mpfr_pow_z
	movl	$16, %edi
	call	_malloc
	movq	%rax, %r13
	movq	%rax, %rdi
	call	___gmpz_init
	movl	(%r12), %edx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	_mpfr_get_z
	movq	%rbx, %rdi
	call	_mpfr_clear
	leaq	-112(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%r13, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%r13, 24(%r15)
	jmp	L1809
L1833:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	_mpfr_pow
	leaq	-112(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	jmp	L1809
LFE275:
	.align 4,0x90
.globl _smpInteger_mod
_smpInteger_mod:
LFB274:
	pushq	%rbp
LCFI894:
	movq	%rsp, %rbp
LCFI895:
	movq	%rbx, -32(%rbp)
LCFI896:
	movq	%r12, -24(%rbp)
LCFI897:
	movq	%r13, -16(%rbp)
LCFI898:
	movq	%r14, -8(%rbp)
LCFI899:
	subq	$160, %rsp
LCFI900:
	movq	%rdi, %r13
	movq	%rdx, %r12
	movq	40(%rbp), %r14
	movq	16(%rdx), %rcx
	movl	8(%rcx), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1839
	leaq	-64(%rbp), %rdi
	movq	(%r12), %rax
	movq	%rax, (%rsp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-64(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-128(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-128(%rbp), %rax
	movq	%rax, (%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%r13)
L1834:
	movq	%r13, %rax
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
	.align 4,0x90
L1839:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	___gmpz_init
	movq	24(%r12), %rdx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	___gmpz_mod
	leaq	-96(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, (%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	%rbx, 24(%r13)
	jmp	L1834
LFE274:
	.align 4,0x90
.globl _smpInteger_div
_smpInteger_div:
LFB273:
	pushq	%rbp
LCFI901:
	movq	%rsp, %rbp
LCFI902:
	pushq	%r15
LCFI903:
	pushq	%r14
LCFI904:
	pushq	%r13
LCFI905:
	pushq	%r12
LCFI906:
	pushq	%rbx
LCFI907:
	subq	$136, %rsp
LCFI908:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %r12
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1864
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1865
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1853
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1853
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1853
	.align 4,0x90
L1851:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1851
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1853
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1853
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1856
	.align 4,0x90
L1857:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1853
L1856:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1857
	movq	32(%rbx), %rsi
	jmp	L1850
	.align 4,0x90
L1853:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1850:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L1840:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L1864:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	___gmpz_init
	movq	24(%r13), %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	___gmpz_fdiv_q
	leaq	-112(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
L1863:
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	jmp	L1840
L1865:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rsi
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rdx
	movq	%rbx, %rdi
	call	_mpfr_div_z
	leaq	-112(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	jmp	L1863
LFE273:
	.align 4,0x90
.globl _smpInteger_mul
_smpInteger_mul:
LFB272:
	pushq	%rbp
LCFI909:
	movq	%rsp, %rbp
LCFI910:
	pushq	%r15
LCFI911:
	pushq	%r14
LCFI912:
	pushq	%r13
LCFI913:
	pushq	%r12
LCFI914:
	pushq	%rbx
LCFI915:
	subq	$136, %rsp
LCFI916:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %r12
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1890
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1891
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1879
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1879
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1879
	.align 4,0x90
L1877:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1877
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1879
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1879
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1882
	.align 4,0x90
L1883:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1879
L1882:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1883
	movq	32(%rbx), %rsi
	jmp	L1876
	.align 4,0x90
L1879:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1876:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L1866:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L1890:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	___gmpz_init
	movq	24(%r13), %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	___gmpz_mul
	leaq	-112(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
L1889:
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	jmp	L1866
L1891:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rsi
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rdx
	movq	%rbx, %rdi
	call	_mpfr_mul_z
	leaq	-112(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	jmp	L1889
LFE272:
	.align 4,0x90
.globl _smpInteger_sub
_smpInteger_sub:
LFB271:
	pushq	%rbp
LCFI917:
	movq	%rsp, %rbp
LCFI918:
	pushq	%r15
LCFI919:
	pushq	%r14
LCFI920:
	pushq	%r13
LCFI921:
	pushq	%r12
LCFI922:
	pushq	%rbx
LCFI923:
	subq	$136, %rsp
LCFI924:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %r12
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1916
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1917
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1905
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1905
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1905
	.align 4,0x90
L1903:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1903
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1905
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1905
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1908
	.align 4,0x90
L1909:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1905
L1908:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1909
	movq	32(%rbx), %rsi
	jmp	L1902
	.align 4,0x90
L1905:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1902:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L1892:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L1916:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	___gmpz_init
	movq	24(%r13), %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	___gmpz_sub
	leaq	-112(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
L1915:
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	jmp	L1892
L1917:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rsi
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rdx
	movq	%rbx, %rdi
	call	_mpfr_sub_z
	leaq	-112(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	jmp	L1915
LFE271:
	.align 4,0x90
.globl _smpInteger_add
_smpInteger_add:
LFB270:
	pushq	%rbp
LCFI925:
	movq	%rsp, %rbp
LCFI926:
	pushq	%r15
LCFI927:
	pushq	%r14
LCFI928:
	pushq	%r13
LCFI929:
	pushq	%r12
LCFI930:
	pushq	%rbx
LCFI931:
	subq	$136, %rsp
LCFI932:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %r12
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1942
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1943
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1931
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L1931
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L1931
	.align 4,0x90
L1929:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L1929
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L1931
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L1931
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L1934
	.align 4,0x90
L1935:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L1931
L1934:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L1935
	movq	32(%rbx), %rsi
	jmp	L1928
	.align 4,0x90
L1931:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L1928:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L1918:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L1942:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	___gmpz_init
	movq	24(%r13), %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	___gmpz_add
	leaq	-112(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
L1941:
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	jmp	L1918
L1943:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rsi
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rdx
	movq	%rbx, %rdi
	call	_mpfr_add_z
	leaq	-112(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	jmp	L1941
LFE270:
	.align 4,0x90
.globl _speedtest_fun
_speedtest_fun:
LFB152:
	pushq	%rbp
LCFI933:
	movq	%rsp, %rbp
LCFI934:
	pushq	%r15
LCFI935:
	pushq	%r14
LCFI936:
	pushq	%r13
LCFI937:
	pushq	%r12
LCFI938:
	pushq	%rbx
LCFI939:
	subq	$360, %rsp
LCFI940:
	movq	%rdi, %r13
	movq	40(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	32(%rbp), %rcx
	movq	%rcx, -352(%rbp)
	movzbl	24(%rbp), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	%ecx, %r14d
	sarb	$7, %r14b
	sall	$7, %eax
	movl	%eax, %r15d
	sarb	$7, %r15b
	movq	16(%rbp), %rax
	movq	%rax, -360(%rbp)
	decl	%esi
	je	L1971
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-336(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -312(%rbp)
	movq	-336(%rbp), %rsi
	movq	%rsi, -304(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	%rbx, -280(%rbp)
	movzbl	-296(%rbp), %edx
	movq	%rbx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -72(%rbp)
	movq	%rsi, -80(%rbp)
L1947:
	leaq	-112(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	call	_smpInteger_mul
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	-352(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	cmpl	%ecx, %edx
	je	L1972
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L1973
L1954:
	leaq	-144(%rbp), %rbx
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_smpObject_cons
	leaq	-176(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdx
	movl	$1, %esi
	call	_smpObject_cons
	leaq	-208(%rbp), %r12
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smpInteger_one@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	movq	%r12, %rdi
	call	_smpInteger_add
	movq	-344(%rbp), %rax
	movq	%rax, 40(%rbp)
	movq	-352(%rbp), %rcx
	movq	%rcx, 32(%rbp)
	andl	$1, %r14d
	leal	(%r14,%r14), %edx
	movzbl	24(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r15d
	orl	%edx, %eax
	orl	%r15d, %eax
	movb	%al, 24(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, 16(%rbp)
	leaq	-240(%rbp), %rbx
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	-344(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_speedtest_fun
	leaq	-272(%rbp), %rdi
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdx
	movl	$1, %esi
	call	_smpObject_cons
	movq	-272(%rbp), %rax
	movq	%rax, (%r13)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-248(%rbp), %rax
	movq	%rax, 24(%r13)
L1944:
	movq	%r13, %rax
	addq	$360, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L1971:
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	jmp	L1947
	.align 4,0x90
L1973:
	movl	8(%rsi), %eax
	cmpl	%eax, %ecx
	je	L1974
	cmpl	%eax, %edx
	jne	L1954
	movl	$1, %edx
	movq	%rdi, %rsi
	movq	-344(%rbp), %rdi
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L1969
L1970:
	jne	L1954
	testl	%eax, %eax
	jns	L1969
	jmp	L1954
	.align 4,0x90
L1972:
	movq	-344(%rbp), %rsi
	call	___gmpz_cmp
	cmpl	$0, %eax
	jle	L1970
	.align 4,0x90
L1969:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
	jmp	L1944
L1974:
	movq	%rdi, %rsi
	movq	-344(%rbp), %rdi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jg	L1969
	jmp	L1970
LFE152:
	.align 4,0x90
.globl _test_object_speed
_test_object_speed:
LFB151:
	pushq	%rbp
LCFI941:
	movq	%rsp, %rbp
LCFI942:
	pushq	%r12
LCFI943:
	pushq	%rbx
LCFI944:
	subq	$160, %rsp
LCFI945:
	movq	_gc_add_objectsp@GOTPCREL(%rip), %r12
	movl	$0, (%r12)
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$20000, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-112(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %r8
	movq	%r8, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rsi
	movq	%rsi, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movzbl	-72(%rbp), %edx
	movq	%rbx, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-40(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -40(%rbp)
	movq	%r8, -48(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	_speedtest_fun
	movl	$1, (%r12)
	xorl	%eax, %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
LFE151:
	.cstring
	.align 3
LC42:
	.ascii "Wrong number of arguments in %s::%s (%d expected, %d found).\0"
	.text
	.align 4,0x90
.globl _smpFunction_call
_smpFunction_call:
LFB222:
	pushq	%rbp
LCFI946:
	movq	%rsp, %rbp
LCFI947:
	pushq	%r15
LCFI948:
	pushq	%r14
LCFI949:
	pushq	%r13
LCFI950:
	pushq	%r12
LCFI951:
	pushq	%rbx
LCFI952:
	subq	$456, %rsp
LCFI953:
	movq	%rdi, %r15
	movl	%esi, %r14d
	movq	%rdx, %r13
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -56(%rbp)
	xorl	%edx, %edx
	movq	%rsp, -368(%rbp)
	leaq	LC2(%rip), %rsi
	movq	64(%rbp), %rax
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L1978
	leaq	-128(%rbp), %rdi
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
	movq	-128(%rbp), %rdx
	movq	%rdx, -224(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-288(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-200(%rbp), %rax
L2022:
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-288(%rbp), %rax
	movq	%rax, (%r15)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-272(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-264(%rbp), %rax
	movq	%rax, 24(%r15)
L1980:
	movq	-368(%rbp), %rsp
	movq	%r15, %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-56(%rbp), %rcx
	xorq	(%rdx), %rcx
	jne	L2023
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L1978:
	movq	72(%rbp), %rax
	movq	32(%rax), %rcx
	movq	%rcx, -352(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -344(%rbp)
	movq	16(%rax), %rdx
	movswl	24(%rax),%edi
	leal	-1(%rdi), %ecx
	movl	%ecx, -356(%rbp)
	movslq	%ecx,%rax
	salq	$5, %rax
	addq	$16, %rax
	subq	%rax, %rsp
	leaq	96(%rsp), %rbx
	testl	%ecx, %ecx
	jle	L1981
	leaq	56(%rdx), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	leal	-2(%rdi), %eax
	leaq	1(%rax), %rdi
	jmp	L1983
	.align 4,0x90
L2024:
	testb	$2, 8(%rcx)
	je	L1986
	movq	16(%rcx), %rax
	movq	%rax, (%rdx,%rbx)
	movq	24(%rcx), %rax
	movq	%rax, 8(%rdx,%rbx)
	movq	32(%rcx), %rax
	movq	%rax, 16(%rdx,%rbx)
	movq	40(%rcx), %rax
	movq	%rax, 24(%rdx,%rbx)
	incq	%rsi
	addq	$32, %rdx
	addq	$56, %rcx
	cmpq	%rdi, %rsi
	je	L1981
	.align 4,0x90
L1983:
	movl	%esi, %r12d
	cmpl	%esi, %r14d
	jle	L2024
L1986:
	testb	$1, 48(%rcx)
	jne	L2025
	cmpl	%r12d, %r14d
	jle	L2026
	movq	(%rdx,%r13), %rax
	movq	%rax, (%rdx,%rbx)
	movq	8(%rdx,%r13), %rax
	movq	%rax, 8(%rdx,%rbx)
	movq	16(%rdx,%r13), %rax
	movq	%rax, 16(%rdx,%rbx)
	movq	24(%rdx,%r13), %rax
	movq	%rax, 24(%rdx,%rbx)
	incq	%rsi
	addq	$32, %rdx
	addq	$56, %rcx
	cmpq	%rdi, %rsi
	jne	L1983
L1981:
	leaq	-96(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdx
	movl	-356(%rbp), %esi
	call	*-352(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -328(%rbp)
	movzbl	-88(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-96(%rbp), %rdx
	movq	%rdx, -336(%rbp)
	movq	-72(%rbp), %r13
	movq	-328(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2027
L2009:
	movq	-328(%rbp), %rdx
	movq	%rdx, 16(%r15)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r15), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%r15)
	movq	-336(%rbp), %rcx
	movq	%rcx, (%r15)
	movq	%r13, 24(%r15)
	jmp	L1980
L2025:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r8
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	sall	$7, %edx
	movl	%edx, %edi
	sarb	$7, %dil
	movq	(%rax), %r10
	decl	%r14d
	cmpl	%r12d, %r14d
	jl	L1991
	movslq	%r14d,%rax
	salq	$5, %rax
	leaq	(%rax,%r13), %r13
	leaq	-224(%rbp), %rax
	movq	%rax, -392(%rbp)
	leaq	-256(%rbp), %rdx
	movq	%rdx, -384(%rbp)
	.align 4,0x90
L1993:
	movq	(%r13), %rcx
	movq	%rcx, -288(%rbp)
	movq	8(%r13), %rax
	movq	%rax, -280(%rbp)
	movq	16(%r13), %rax
	movq	%rax, -272(%rbp)
	movq	24(%r13), %rax
	movq	%rax, -264(%rbp)
	movq	%r8, -232(%rbp)
	movq	%r9, -240(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-248(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edi
	orl	%edx, %eax
	orl	%edi, %eax
	movb	%al, -248(%rbp)
	movq	%r10, -256(%rbp)
	movq	%rcx, (%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-384(%rbp), %rdx
	movl	$1, %esi
	movq	-392(%rbp), %rdi
	call	_smpObject_cons
	movq	-200(%rbp), %r8
	movq	-208(%rbp), %r9
	movzbl	-216(%rbp), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	sall	$7, %eax
	movl	%eax, %edi
	sarb	$7, %dil
	movq	-224(%rbp), %r10
	decl	%r14d
	subq	$32, %r13
	cmpl	%r12d, %r14d
	jge	L1993
L1991:
	movslq	%r12d,%rdx
	salq	$5, %rdx
	leaq	(%rdx,%rbx), %rcx
	movq	%r8, 24(%rcx)
	movq	%r9, 16(%rcx)
	andl	$1, %esi
	addl	%esi, %esi
	movzbl	8(%rbx,%rdx), %eax
	andl	$-4, %eax
	andl	$1, %edi
	orl	%esi, %eax
	orl	%edi, %eax
	movb	%al, 8(%rdx,%rbx)
	movq	%r10, (%rcx)
	jmp	L1981
L2026:
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2003
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2003
	movq	(%rdi), %r8
	leaq	LC16(%rip), %rsi
	movl	$5381, %ecx
	movl	$65, %edx
	testq	%r8, %r8
	je	L2003
L2001:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2001
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2003
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2003
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2006
L2007:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2003
L2006:
	leaq	LC16(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2007
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L2000
L2003:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L2000:
	movq	%r10, -136(%rbp)
	movq	%r9, -144(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-152(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -152(%rbp)
	movq	%r8, -160(%rbp)
	leaq	-192(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	%r14d, %r9d
	movl	-356(%rbp), %r8d
	movq	-344(%rbp), %rcx
	movq	-376(%rbp), %rdx
	leaq	LC42(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-192(%rbp), %rdx
	movq	%rdx, -256(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-288(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-232(%rbp), %rax
	jmp	L2022
L2027:
	testb	$15, (%r13)
	jne	L2009
	cmpq	$0, 16(%r13)
	je	L2009
	xorl	%r14d, %r14d
	leaq	-320(%rbp), %rax
	movq	%rax, -400(%rbp)
L2013:
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
	movq	8(%r13), %rcx
	movq	%r14, %rdx
	salq	$5, %rdx
	movq	(%rdx,%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx,%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx,%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx,%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	-400(%rbp), %rdi
	call	_smpException_backtrace_add_now
	incq	%r14
	cmpq	%r14, 16(%r13)
	ja	L2013
	jmp	L2009
L2023:
	call	___stack_chk_fail
LFE222:
	.align 4,0x90
.globl _smpList_reduce
_smpList_reduce:
LFB307:
	pushq	%rbp
LCFI954:
	movq	%rsp, %rbp
LCFI955:
	pushq	%r15
LCFI956:
	pushq	%r14
LCFI957:
	pushq	%r13
LCFI958:
	pushq	%r12
LCFI959:
	pushq	%rbx
LCFI960:
	subq	$360, %rsp
LCFI961:
	movq	%rdi, -304(%rbp)
	movq	32(%rbp), %r12
	movq	40(%rbp), %r13
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -312(%rbp)
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	decl	%esi
	jle	L2029
	leaq	32(%rdx), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -280(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -288(%rbp)
	movzbl	8(%rax), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	%ecx, %r14d
	sarb	$7, %r14b
	sall	$7, %eax
	movl	%eax, %r15d
	sarb	$7, %r15b
	movq	32(%rdx), %rdx
	movq	%rdx, -296(%rbp)
L2031:
	movq	-312(%rbp), %rdx
	movq	(%rdx), %rbx
	leaq	LC2(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2032
	movq	-312(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	je	L2034
	xorl	%ebx, %ebx
	jmp	L2036
	.align 4,0x90
L2074:
	incq	%rbx
	movq	-312(%rbp), %rcx
	cmpq	%rbx, 24(%rcx)
	jbe	L2073
L2036:
	movq	-312(%rbp), %rdx
	movq	16(%rdx), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC2(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L2074
L2032:
	movq	-280(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-288(%rbp), %rdx
	movq	%rdx, -224(%rbp)
	andl	$1, %r14d
	leal	(%r14,%r14), %edx
	movzbl	-232(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r15d
	orl	%edx, %eax
	orl	%r15d, %eax
	movb	%al, -232(%rbp)
	movq	-296(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-240(%rbp), %rdx
	movq	%rdx, -328(%rbp)
	jmp	L2071
	.align 4,0x90
L2072:
	movq	16(%rax), %r12
	movq	24(%rax), %r13
L2071:
	movl	8(%r12), %eax
	movq	_smpType_id_nil@GOTPCREL(%rip), %rdx
	cmpl	(%rdx), %eax
	je	L2075
	movq	(%r13), %rax
	movq	%rax, -208(%rbp)
	movq	8(%r13), %rax
	movq	%rax, -200(%rbp)
	movq	16(%r13), %rax
	movq	%rax, -192(%rbp)
	movq	24(%r13), %rax
	movq	%rax, -184(%rbp)
	movq	-312(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	%rcx, 48(%rsp)
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
	movq	-328(%rbp), %rdx
	movl	$2, %esi
	movq	-320(%rbp), %rdi
	call	_smpFunction_call
	movq	-272(%rbp), %r15
	movq	%r15, -240(%rbp)
	movq	-264(%rbp), %r14
	movq	%r14, -232(%rbp)
	movq	-256(%rbp), %rbx
	movq	%rbx, -224(%rbp)
	movq	-248(%rbp), %r12
	movq	%r12, -216(%rbp)
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2076
	movq	32(%r13), %rax
	testq	%rax, %rax
	jne	L2072
	movq	_smp_nil@GOTPCREL(%rip), %rax
	jmp	L2072
L2073:
	movq	(%rcx), %rbx
L2034:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2040
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2050
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2050
	movq	(%rdi), %r8
	leaq	LC2(%rip), %rsi
	movl	$5381, %ecx
	movl	$70, %edx
	testq	%r8, %r8
	je	L2050
L2048:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2048
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2050
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2050
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2053
L2054:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2050
L2053:
	leaq	LC2(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2054
	movq	32(%rbx), %rsi
	jmp	L2047
	.align 4,0x90
L2075:
	movq	-240(%rbp), %rax
	movq	-304(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rcx)
L2028:
	movq	-304(%rbp), %rax
	addq	$360, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2076:
	movq	-304(%rbp), %rax
	movq	%r15, (%rax)
	movq	%r14, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	%r12, 24(%rax)
	jmp	L2028
L2029:
	movq	24(%r13), %rax
	movq	%rax, -280(%rbp)
	movq	16(%r13), %rdx
	movq	%rdx, -288(%rbp)
	movzbl	8(%r13), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	%ecx, %r14d
	sarb	$7, %r14b
	sall	$7, %eax
	movl	%eax, %r15d
	sarb	$7, %r15b
	movq	(%r13), %rax
	movq	%rax, -296(%rbp)
	jmp	L2031
L2040:
	movq	-312(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	-304(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	%rcx, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L2028
L2050:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2047:
	movq	-312(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	leaq	-112(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-176(%rbp), %rax
	movq	-304(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L2028
LFE307:
	.align 4,0x90
.globl _smpList_map
_smpList_map:
LFB306:
	pushq	%rbp
LCFI962:
	movq	%rsp, %rbp
LCFI963:
	pushq	%r15
LCFI964:
	pushq	%r14
LCFI965:
	pushq	%r13
LCFI966:
	pushq	%r12
LCFI967:
	pushq	%rbx
LCFI968:
	subq	$392, %rsp
LCFI969:
	movq	%rdi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2121
	movq	-328(%rbp), %rax
	movq	16(%rax), %r12
	movq	(%r12), %rbx
	leaq	LC2(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2122
L2081:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -280(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	16(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movzbl	8(%rdx), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	sarb	$7, %cl
	movb	%cl, -289(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -290(%rbp)
	movq	(%rdx), %rax
	movq	%rax, -304(%rbp)
	movq	-280(%rbp), %r15
	leaq	16(%rbp), %rdx
	movq	%rdx, -312(%rbp)
	leaq	-144(%rbp), %rcx
	movq	%rcx, -352(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -344(%rbp)
	leaq	-272(%rbp), %rdx
	movq	%rdx, -360(%rbp)
	leaq	-80(%rbp), %rcx
	movq	%rcx, -368(%rbp)
	jmp	L2105
	.align 4,0x90
L2108:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, 32(%r15)
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	movq	-360(%rbp), %rdi
	call	_smpObject_cons
	movq	-272(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	%rax, (%rbx)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-256(%rbp), %r14
	movq	%r14, 16(%rbx)
	movq	-248(%rbp), %r13
	movq	%r13, 24(%rbx)
	movzbl	8(%rbx), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	%r13, %r15
	leaq	LC15(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2123
L2110:
	movq	-312(%rbp), %rdx
	movq	24(%rdx), %rax
	movq	32(%rax), %rax
	movq	%rax, -312(%rbp)
	testq	%rax, %rax
	je	L2124
L2105:
	movq	-312(%rbp), %rdx
	movq	24(%rdx), %rax
	movq	16(%rax), %rcx
	movzbl	8(%rax), %edx
	movq	(%rax), %rsi
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-104(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-328(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %rax
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
	movq	-344(%rbp), %rdx
	movl	$1, %esi
	movq	-352(%rbp), %rdi
	call	_smpFunction_call
	movq	-128(%rbp), %rbx
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2125
	movq	_smp_nil@GOTPCREL(%rip), %rax
	cmpq	24(%rax), %r15
	jne	L2108
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	movq	-368(%rbp), %rdi
	call	_smpObject_cons
	movq	-56(%rbp), %rdx
	movq	%rdx, -280(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -288(%rbp)
	movzbl	-72(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movb	%dl, -289(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -290(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -304(%rbp)
	movq	-280(%rbp), %r15
	jmp	L2110
L2122:
	cmpq	$0, 24(%r12)
	je	L2083
	xorl	%ebx, %ebx
	jmp	L2085
	.align 4,0x90
L2127:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L2126
L2085:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC2(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L2127
	jmp	L2081
	.align 4,0x90
L2121:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	-320(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
L2077:
	movq	-320(%rbp), %rax
	addq	$392, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2124:
	movq	-280(%rbp), %rax
	movq	-320(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-288(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	andb	$1, -289(%rbp)
	movzbl	-289(%rbp), %edx
	addl	%edx, %edx
	movzbl	8(%rcx), %eax
	andl	$-4, %eax
	andb	$1, -290(%rbp)
	orl	%edx, %eax
	orb	-290(%rbp), %al
	movb	%al, 8(%rcx)
	movq	-304(%rbp), %rax
	movq	%rax, (%rcx)
	jmp	L2077
L2125:
	movq	-144(%rbp), %rax
	movq	-320(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	%rbx, 16(%rcx)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rcx)
	jmp	L2077
L2126:
	movq	-328(%rbp), %rdx
	movq	16(%rdx), %rax
	movq	(%rax), %rbx
L2083:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2128
	movl	$32, %edx
	movq	-328(%rbp), %rsi
	movq	-320(%rbp), %rdi
	call	_memmove
	jmp	L2077
L2123:
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movq	-320(%rbp), %rcx
	movzbl	8(%rcx), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%rcx)
	movq	-336(%rbp), %rax
	movq	%rax, (%rcx)
	movq	%r14, 16(%rcx)
	movq	%r13, 24(%rcx)
	jmp	L2077
L2128:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2099
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2099
	movq	(%rdi), %r8
	leaq	LC2(%rip), %rsi
	movl	$5381, %ecx
	movl	$70, %edx
	testq	%r8, %r8
	je	L2099
L2097:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2097
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2099
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2099
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2102
L2103:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2099
L2102:
	leaq	LC2(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2103
	movq	32(%rbx), %rsi
	jmp	L2096
L2099:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2096:
	leaq	-176(%rbp), %rdi
	movq	-328(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-176(%rbp), %rsi
	movq	%rsi, -208(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-240(%rbp), %rax
	movq	-320(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L2077
LFE306:
	.cstring
LC43:
	.ascii "Global\0"
	.text
	.align 4,0x90
.globl _smpList_each
_smpList_each:
LFB297:
	pushq	%rbp
LCFI970:
	movq	%rsp, %rbp
LCFI971:
	pushq	%r15
LCFI972:
	pushq	%r14
LCFI973:
	pushq	%r13
LCFI974:
	pushq	%r12
LCFI975:
	pushq	%rbx
LCFI976:
	subq	$296, %rsp
LCFI977:
	movq	%rdi, -256(%rbp)
	movq	%rdx, %r14
	movq	40(%rbp), %r13
	movq	32(%rbp), %rax
	movq	%rax, -248(%rbp)
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2188
	movq	16(%r14), %r12
	movq	(%r12), %rbx
	leaq	LC2(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2189
L2133:
	testq	%r13, %r13
	je	L2141
	movq	%r13, %r15
	leaq	-80(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	.align 4,0x90
L2157:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2165
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2165
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	L2165
	leaq	LC43(%rip), %rcx
	movl	$5381, %esi
	movl	$71, %edx
	.align 4,0x90
L2163:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L2163
	movslq	%esi,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2165
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2165
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2168
	.align 4,0x90
L2169:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2165
L2168:
	leaq	LC43(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2169
	movq	32(%rbx), %r9
	movq	24(%rbx), %r8
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %rdi
	.align 4,0x90
L2162:
	movq	%r9, -120(%rbp)
	movq	%r8, -128(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-136(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -136(%rbp)
	movq	%rdi, -144(%rbp)
	movq	(%r14), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 40(%rsp)
	movq	16(%r14), %rax
	movq	%rax, 48(%rsp)
	movq	24(%r14), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r9, 24(%rsp)
	movq	%r15, %rdx
	movl	$1, %esi
	movq	-264(%rbp), %rdi
	call	_smpFunction_call
	movq	-64(%rbp), %rbx
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2190
	movq	32(%r15), %rcx
	testq	%rcx, %rcx
	je	L2141
	movq	16(%rcx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	jne	L2174
	movq	24(%rcx), %rax
	testq	%rax, %rax
	je	L2141
	movq	%rax, %r15
	jmp	L2157
L2189:
	cmpq	$0, 24(%r12)
	je	L2135
	xorl	%ebx, %ebx
	jmp	L2137
	.align 4,0x90
L2192:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L2191
L2137:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC2(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L2192
	jmp	L2133
	.align 4,0x90
L2165:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r9
	movq	16(%rax), %r8
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %rdi
	jmp	L2162
L2188:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	-256(%rbp), %rcx
L2187:
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
L2129:
	movq	-256(%rbp), %rax
	addq	$296, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2141:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	jmp	L2187
L2191:
	movq	16(%r14), %rax
	movq	(%rax), %rbx
L2135:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2193
	movl	$32, %edx
	movq	%r14, %rsi
	movq	-256(%rbp), %rdi
	call	_memmove
	jmp	L2129
L2190:
	movq	-80(%rbp), %rax
	movq	-256(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	%rbx, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L2129
L2174:
	leaq	-176(%rbp), %rdi
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	-248(%rbp), %rsi
	call	_smpTypeError_init
	movq	-176(%rbp), %rsi
	movq	%rsi, -208(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-240(%rbp), %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rcx)
	jmp	L2129
L2193:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2151
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2151
	movq	(%rdi), %r8
	leaq	LC2(%rip), %rsi
	movl	$5381, %ecx
	movl	$70, %edx
	testq	%r8, %r8
	je	L2151
L2149:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2149
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2151
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2151
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2154
	.align 4,0x90
L2155:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2151
L2154:
	leaq	LC2(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2155
	movq	32(%rbx), %rsi
	jmp	L2148
L2151:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2148:
	leaq	-112(%rbp), %rdi
	movq	(%r14), %rax
	movq	%rax, (%rsp)
	movq	8(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r14), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rsi
	movq	%rsi, -240(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -224(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-208(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-208(%rbp), %rax
	movq	-256(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L2129
LFE297:
	.cstring
LC45:
	.ascii "%%.%dR*f\0"
	.text
	.align 4,0x90
.globl _smpFloat_to_s
_smpFloat_to_s:
LFB220:
	pushq	%rbp
LCFI978:
	movq	%rsp, %rbp
LCFI979:
	pushq	%r15
LCFI980:
	pushq	%r14
LCFI981:
	pushq	%r13
LCFI982:
	pushq	%r12
LCFI983:
	pushq	%rbx
LCFI984:
	subq	$280, %rsp
LCFI985:
	movq	%rdi, %r14
	movl	%esi, %ebx
	movq	%rdx, %r13
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -56(%rbp)
	xorl	%edx, %edx
	movq	40(%rbp), %rcx
	movq	%rcx, -280(%rbp)
	movsd	LC44(%rip), %xmm0
	call	_log10
	movq	_smp_mpfr_default_prec@GOTPCREL(%rip), %rax
	cvtsi2sdq	(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r15d
	testl	%ebx, %ebx
	jle	L2195
	movq	16(%r13), %r12
	movq	(%r12), %rbx
	leaq	LC40(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2197
	cmpq	$0, 24(%r12)
	je	L2199
	xorl	%ebx, %ebx
	jmp	L2201
	.align 4,0x90
L2230:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L2229
L2201:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC40(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L2230
L2197:
	movq	24(%r13), %rbx
	movq	%rbx, %rdi
	call	___gmpz_fits_sint_p
	testl	%eax, %eax
	jne	L2231
L2195:
	leaq	-160(%rbp), %rbx
	movl	%r15d, %r8d
	leaq	LC45(%rip), %rcx
	movl	$100, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	___sprintf_chk
	leaq	-168(%rbp), %rdi
	movq	-280(%rbp), %rcx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	_mpfr_asprintf
	leaq	-272(%rbp), %rdi
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	-168(%rbp), %r12
	movq	%r12, %rdi
	call	_strlen
	movq	%rax, 8(%rbx)
	movq	%r12, (%rbx)
	movq	%rbx, -248(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, (%r14)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	%rbx, 24(%r14)
L2194:
	movq	%r14, %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-56(%rbp), %rcx
	xorq	(%rdx), %rcx
	jne	L2232
	addq	$280, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2229:
	movq	16(%r13), %rax
	movq	(%rax), %rbx
L2199:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2205
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2215
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2215
	movq	(%rdi), %r8
	leaq	LC40(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2215
L2213:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2213
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2215
	movq	8(%rax), %r15
	testq	%r15, %r15
	je	L2215
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2218
L2219:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r15, %r12
	je	L2215
L2218:
	leaq	LC40(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2219
	movq	32(%rbx), %rsi
	jmp	L2212
L2231:
	movq	%rbx, %rdi
	call	___gmpz_get_si
	movl	%eax, %r15d
	jmp	L2195
L2205:
	movl	$32, %edx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_memmove
	jmp	L2194
L2215:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2212:
	leaq	-208(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-208(%rbp), %rsi
	movq	%rsi, -240(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -224(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-272(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-272(%rbp), %rax
	movq	%rax, (%r14)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	-248(%rbp), %rax
	movq	%rax, 24(%r14)
	jmp	L2194
L2232:
	call	___stack_chk_fail
LFE220:
	.align 4,0x90
.globl _smpFloat_gt
_smpFloat_gt:
LFB218:
	pushq	%rbp
LCFI986:
	movq	%rsp, %rbp
LCFI987:
	pushq	%r15
LCFI988:
	pushq	%r14
LCFI989:
	pushq	%r13
LCFI990:
	pushq	%r12
LCFI991:
	pushq	%rbx
LCFI992:
	subq	$136, %rsp
LCFI993:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2269
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2270
L2240:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2253
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2253
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L2253
	.align 4,0x90
L2251:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2251
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2253
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L2253
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2256
	.align 4,0x90
L2257:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L2253
L2256:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2257
	movq	32(%rbx), %rsi
	jmp	L2250
	.align 4,0x90
L2253:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2250:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L2233:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2269:
	movq	24(%r13), %rsi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jle	L2267
L2263:
	movq	_smp_true@GOTPCREL(%rip), %rdx
L2268:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L2233
L2270:
	movq	24(%r13), %rsi
	movl	$1, %edx
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L2263
L2267:
	jne	L2260
	cmpl	$-2, %eax
	je	L2240
	testl	%eax, %eax
	jg	L2263
L2260:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L2268
LFE218:
	.align 4,0x90
.globl _smpFloat_ge
_smpFloat_ge:
LFB217:
	pushq	%rbp
LCFI994:
	movq	%rsp, %rbp
LCFI995:
	pushq	%r15
LCFI996:
	pushq	%r14
LCFI997:
	pushq	%r13
LCFI998:
	pushq	%r12
LCFI999:
	pushq	%rbx
LCFI1000:
	subq	$136, %rsp
LCFI1001:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2307
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2308
L2278:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2291
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2291
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L2291
	.align 4,0x90
L2289:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2289
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2291
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L2291
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2294
	.align 4,0x90
L2295:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L2291
L2294:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2295
	movq	32(%rbx), %rsi
	jmp	L2288
	.align 4,0x90
L2291:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2288:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L2271:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2307:
	movq	24(%r13), %rsi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jle	L2305
L2301:
	movq	_smp_true@GOTPCREL(%rip), %rdx
L2306:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L2271
L2308:
	movq	24(%r13), %rsi
	movl	$1, %edx
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L2301
L2305:
	jne	L2298
	cmpl	$-2, %eax
	je	L2278
	testl	%eax, %eax
	jns	L2301
L2298:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L2306
LFE217:
	.align 4,0x90
.globl _smpFloat_le
_smpFloat_le:
LFB216:
	pushq	%rbp
LCFI1002:
	movq	%rsp, %rbp
LCFI1003:
	pushq	%r15
LCFI1004:
	pushq	%r14
LCFI1005:
	pushq	%r13
LCFI1006:
	pushq	%r12
LCFI1007:
	pushq	%rbx
LCFI1008:
	subq	$136, %rsp
LCFI1009:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2345
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2346
L2316:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2329
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2329
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L2329
	.align 4,0x90
L2327:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2327
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2329
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L2329
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2332
	.align 4,0x90
L2333:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L2329
L2332:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2333
	movq	32(%rbx), %rsi
	jmp	L2326
	.align 4,0x90
L2329:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2326:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L2309:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2345:
	movq	24(%r13), %rsi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jle	L2343
L2336:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L2344:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L2309
L2346:
	movq	24(%r13), %rsi
	movl	$1, %edx
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L2336
L2343:
	jne	L2339
	cmpl	$-2, %eax
	je	L2316
	testl	%eax, %eax
	jg	L2336
L2339:
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L2344
LFE216:
	.align 4,0x90
.globl _smpFloat_lt
_smpFloat_lt:
LFB215:
	pushq	%rbp
LCFI1010:
	movq	%rsp, %rbp
LCFI1011:
	pushq	%r15
LCFI1012:
	pushq	%r14
LCFI1013:
	pushq	%r13
LCFI1014:
	pushq	%r12
LCFI1015:
	pushq	%rbx
LCFI1016:
	subq	$136, %rsp
LCFI1017:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2383
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2384
L2354:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2367
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2367
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L2367
	.align 4,0x90
L2365:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2365
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2367
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L2367
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2370
	.align 4,0x90
L2371:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L2367
L2370:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2371
	movq	32(%rbx), %rsi
	jmp	L2364
	.align 4,0x90
L2367:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2364:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L2347:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2383:
	movq	24(%r13), %rsi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jle	L2381
L2374:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L2382:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L2347
L2384:
	movq	24(%r13), %rsi
	movl	$1, %edx
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L2374
L2381:
	jne	L2377
	cmpl	$-2, %eax
	je	L2354
	testl	%eax, %eax
	jns	L2374
L2377:
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L2382
LFE215:
	.align 4,0x90
.globl _smpFloat_nequalp
_smpFloat_nequalp:
LFB214:
	pushq	%rbp
LCFI1018:
	movq	%rsp, %rbp
LCFI1019:
	pushq	%r15
LCFI1020:
	pushq	%r14
LCFI1021:
	pushq	%r13
LCFI1022:
	pushq	%r12
LCFI1023:
	pushq	%rbx
LCFI1024:
	subq	$136, %rsp
LCFI1025:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2421
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2422
L2392:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2405
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2405
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L2405
	.align 4,0x90
L2403:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2403
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2405
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L2405
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2408
	.align 4,0x90
L2409:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L2405
L2408:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2409
	movq	32(%rbx), %rsi
	jmp	L2402
	.align 4,0x90
L2405:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2402:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L2385:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2421:
	movq	24(%r13), %rsi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jle	L2419
L2415:
	movq	_smp_true@GOTPCREL(%rip), %rdx
L2420:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L2385
L2422:
	movq	24(%r13), %rsi
	movl	$1, %edx
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L2415
L2419:
	jne	L2415
	cmpl	$-2, %eax
	je	L2392
	testl	%eax, %eax
	jne	L2415
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L2420
LFE214:
	.align 4,0x90
.globl _smpFloat_equalp
_smpFloat_equalp:
LFB213:
	pushq	%rbp
LCFI1026:
	movq	%rsp, %rbp
LCFI1027:
	pushq	%r15
LCFI1028:
	pushq	%r14
LCFI1029:
	pushq	%r13
LCFI1030:
	pushq	%r12
LCFI1031:
	pushq	%rbx
LCFI1032:
	subq	$136, %rsp
LCFI1033:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %rdi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2458
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2459
L2430:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2443
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2443
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L2443
	.align 4,0x90
L2441:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2441
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2443
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L2443
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2446
	.align 4,0x90
L2447:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L2443
L2446:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2447
	movq	32(%rbx), %rsi
	jmp	L2440
	.align 4,0x90
L2443:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2440:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L2423:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2458:
	movq	24(%r13), %rsi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jle	L2456
L2450:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L2457:
	movq	(%rdx), %rax
	movq	%rax, (%r15)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r15)
	jmp	L2423
L2459:
	movq	24(%r13), %rsi
	movl	$1, %edx
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L2450
L2456:
	jne	L2450
	cmpl	$-2, %eax
	je	L2430
	testl	%eax, %eax
	jne	L2450
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L2457
LFE213:
	.align 4,0x90
.globl _smpFloat_eq
_smpFloat_eq:
LFB219:
	pushq	%rbp
LCFI1034:
	movq	%rsp, %rbp
LCFI1035:
	pushq	%rbx
LCFI1036:
	subq	$40, %rsp
LCFI1037:
	movq	%rdi, %rbx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpFloat_equalp
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE219:
	.align 4,0x90
.globl _smpFloat_cmp
_smpFloat_cmp:
LFB212:
	pushq	%rbp
LCFI1038:
	movq	%rsp, %rbp
LCFI1039:
	pushq	%r13
LCFI1040:
	pushq	%r12
LCFI1041:
	pushq	%rbx
LCFI1042:
	subq	$136, %rsp
LCFI1043:
	movq	%rdi, %r12
	movq	%rdx, %rbx
	movq	40(%rbp), %rdi
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2480
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2481
L2469:
	leaq	-64(%rbp), %rdi
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpTypeError_init
	movq	-64(%rbp), %rsi
	movq	%rsi, -128(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-96(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-96(%rbp), %rax
	movq	%rax, (%r12)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	-80(%rbp), %rax
	movq	%rax, 16(%r12)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%r12)
L2462:
	movq	%r12, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	leave
	ret
	.align 4,0x90
L2480:
	movq	24(%rbx), %rsi
	call	_mpfr_cmp_z
	movl	%eax, %r13d
	cmpl	$0, %eax
	jle	L2471
L2477:
	movl	$1, %r13d
L2474:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movslq	%r13d,%rsi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-128(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -104(%rbp)
	movq	-128(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movzbl	-88(%rbp), %edx
	movq	%rbx, 24(%r12)
	movq	%rax, 16(%r12)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	8(%r12), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 8(%r12)
	movq	%rsi, (%r12)
	jmp	L2462
	.align 4,0x90
L2481:
	movq	24(%rbx), %rsi
	movl	$1, %edx
	call	_mpfr_cmp3
	movl	%eax, %r13d
	cmpl	$0, %eax
	jg	L2477
L2471:
	jne	L2482
	cmpl	$-2, %r13d
	jne	L2474
	jmp	L2469
L2482:
	movl	$-1, %r13d
	jmp	L2474
LFE212:
	.align 4,0x90
.globl _smpFloat_pow
_smpFloat_pow:
LFB210:
	pushq	%rbp
LCFI1044:
	movq	%rsp, %rbp
LCFI1045:
	pushq	%r15
LCFI1046:
	pushq	%r14
LCFI1047:
	pushq	%r13
LCFI1048:
	pushq	%r12
LCFI1049:
	pushq	%rbx
LCFI1050:
	subq	$136, %rsp
LCFI1051:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %r12
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2507
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2508
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2496
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2496
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L2496
	.align 4,0x90
L2494:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2494
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2496
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L2496
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2499
	.align 4,0x90
L2500:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L2496
L2499:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2500
	movq	32(%rbx), %rsi
	jmp	L2493
	.align 4,0x90
L2496:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2493:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L2483:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2507:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_mpfr_pow
L2506:
	leaq	-112(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	jmp	L2483
L2508:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_mpfr_pow_z
	jmp	L2506
LFE210:
	.align 4,0x90
.globl _smpFloat_div
_smpFloat_div:
LFB209:
	pushq	%rbp
LCFI1052:
	movq	%rsp, %rbp
LCFI1053:
	pushq	%r15
LCFI1054:
	pushq	%r14
LCFI1055:
	pushq	%r13
LCFI1056:
	pushq	%r12
LCFI1057:
	pushq	%rbx
LCFI1058:
	subq	$136, %rsp
LCFI1059:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %r12
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2533
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2534
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2522
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2522
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L2522
	.align 4,0x90
L2520:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2520
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2522
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L2522
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2525
	.align 4,0x90
L2526:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L2522
L2525:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2526
	movq	32(%rbx), %rsi
	jmp	L2519
	.align 4,0x90
L2522:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2519:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L2509:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2533:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_mpfr_div
L2532:
	leaq	-112(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	jmp	L2509
L2534:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_mpfr_div_z
	jmp	L2532
LFE209:
	.align 4,0x90
.globl _smpFloat_mul
_smpFloat_mul:
LFB208:
	pushq	%rbp
LCFI1060:
	movq	%rsp, %rbp
LCFI1061:
	pushq	%r15
LCFI1062:
	pushq	%r14
LCFI1063:
	pushq	%r13
LCFI1064:
	pushq	%r12
LCFI1065:
	pushq	%rbx
LCFI1066:
	subq	$136, %rsp
LCFI1067:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %r12
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2559
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2560
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2548
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2548
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L2548
	.align 4,0x90
L2546:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2546
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2548
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L2548
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2551
	.align 4,0x90
L2552:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L2548
L2551:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2552
	movq	32(%rbx), %rsi
	jmp	L2545
	.align 4,0x90
L2548:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2545:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L2535:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2559:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_mpfr_mul
L2558:
	leaq	-112(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	jmp	L2535
L2560:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_mpfr_mul_z
	jmp	L2558
LFE208:
	.align 4,0x90
.globl _smpFloat_sub
_smpFloat_sub:
LFB207:
	pushq	%rbp
LCFI1068:
	movq	%rsp, %rbp
LCFI1069:
	pushq	%r15
LCFI1070:
	pushq	%r14
LCFI1071:
	pushq	%r13
LCFI1072:
	pushq	%r12
LCFI1073:
	pushq	%rbx
LCFI1074:
	subq	$136, %rsp
LCFI1075:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %r12
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2585
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2586
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2574
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2574
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L2574
	.align 4,0x90
L2572:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2572
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2574
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L2574
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2577
	.align 4,0x90
L2578:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L2574
L2577:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2578
	movq	32(%rbx), %rsi
	jmp	L2571
	.align 4,0x90
L2574:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2571:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L2561:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2585:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_mpfr_sub
L2584:
	leaq	-112(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	jmp	L2561
L2586:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_mpfr_sub_z
	jmp	L2584
LFE207:
	.align 4,0x90
.globl _smpFloat_add
_smpFloat_add:
LFB206:
	pushq	%rbp
LCFI1076:
	movq	%rsp, %rbp
LCFI1077:
	pushq	%r15
LCFI1078:
	pushq	%r14
LCFI1079:
	pushq	%r13
LCFI1080:
	pushq	%r12
LCFI1081:
	pushq	%rbx
LCFI1082:
	subq	$136, %rsp
LCFI1083:
	movq	%rdi, %r15
	movq	%rdx, %r13
	movq	40(%rbp), %r12
	movq	16(%rdx), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2611
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L2612
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2600
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2600
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L2600
	.align 4,0x90
L2598:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2598
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2600
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L2600
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2603
	.align 4,0x90
L2604:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L2600
L2603:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2604
	movq	32(%rbx), %rsi
	jmp	L2597
	.align 4,0x90
L2600:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2597:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r15)
L2587:
	movq	%r15, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2611:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_mpfr_add
L2610:
	leaq	-112(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	jmp	L2587
L2612:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	24(%r13), %rdx
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_mpfr_add_z
	jmp	L2610
LFE206:
	.align 4,0x90
.globl _smpList_get
_smpList_get:
LFB302:
	pushq	%rbp
LCFI1084:
	movq	%rsp, %rbp
LCFI1085:
	pushq	%r15
LCFI1086:
	pushq	%r14
LCFI1087:
	pushq	%r13
LCFI1088:
	pushq	%r12
LCFI1089:
	pushq	%rbx
LCFI1090:
	subq	$232, %rsp
LCFI1091:
	movq	%rdi, -240(%rbp)
	movq	%rdx, %r15
	movq	40(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, -224(%rbp)
	movzbl	24(%rbp), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	%ecx, %r13d
	sarb	$7, %r13b
	sall	$7, %eax
	movl	%eax, %r14d
	sarb	$7, %r14b
	movq	16(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	16(%r15), %r12
	movq	(%r12), %rbx
	leaq	LC40(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2614
	cmpq	$0, 24(%r12)
	je	L2616
	xorl	%ebx, %ebx
	jmp	L2618
	.align 4,0x90
L2658:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L2657
L2618:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC40(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L2658
L2614:
	movq	24(%r15), %rdi
	call	___gmpz_get_si
	movq	%rax, %rdi
	movq	-216(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	-224(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	andl	$1, %r13d
	leal	(%r13,%r13), %edx
	movzbl	-104(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r14d
	orl	%edx, %eax
	orl	%r14d, %eax
	movb	%al, -104(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-112(%rbp), %rcx
	testq	%rdi, %rdi
	jle	L2623
	movq	-216(%rbp), %rdx
	movq	32(%rdx), %rcx
	testq	%rcx, %rcx
	je	L2624
	movq	16(%rcx), %rax
	movl	8(%rax), %esi
	movl	$1, %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	cmpl	(%rax), %esi
	je	L2646
	jmp	L2626
	.align 4,0x90
L2644:
	movq	24(%rcx), %rax
	movq	32(%rax), %rcx
	testq	%rcx, %rcx
	je	L2624
	incq	%rdx
	movq	16(%rcx), %rax
	cmpl	%esi, 8(%rax)
	jne	L2626
L2646:
	cmpq	%rdi, %rdx
	jne	L2644
L2623:
	movq	24(%rcx), %rdx
	jmp	L2656
L2657:
	movq	16(%r15), %rax
	movq	(%rax), %rbx
L2616:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2628
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2638
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2638
	movq	(%rdi), %r8
	leaq	LC40(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2638
L2636:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2636
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2638
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2638
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2641
L2642:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2638
L2641:
	leaq	LC40(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2642
	movq	32(%rbx), %rsi
	jmp	L2635
	.align 4,0x90
L2624:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L2656:
	movq	(%rdx), %rax
	movq	-240(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
L2613:
	movq	-240(%rbp), %rax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2626:
	leaq	-144(%rbp), %rdi
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	-224(%rbp), %rsi
	call	_smpTypeError_init
	movq	-144(%rbp), %rsi
	movq	%rsi, -176(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-208(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-208(%rbp), %rax
	movq	-240(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L2613
L2628:
	movl	$32, %edx
	movq	%r15, %rsi
	movq	-240(%rbp), %rdi
	call	_memmove
	jmp	L2613
L2638:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2635:
	leaq	-80(%rbp), %rdi
	movq	(%r15), %rax
	movq	%rax, (%rsp)
	movq	8(%r15), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r15), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -176(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -160(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-112(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-112(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rcx)
	jmp	L2613
LFE302:
	.cstring
	.align 3
LC46:
	.ascii "Cannot call an abstract function.\0"
	.text
	.align 4,0x90
.globl _smp_abstract_function
_smp_abstract_function:
LFB76:
	pushq	%rbp
LCFI1092:
	movq	%rsp, %rbp
LCFI1093:
	pushq	%r14
LCFI1094:
	pushq	%r13
LCFI1095:
	pushq	%r12
LCFI1096:
	pushq	%rbx
LCFI1097:
	subq	$160, %rsp
LCFI1098:
	movq	%rdi, %r14
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2667
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2667
	movq	(%rdi), %r8
	leaq	LC26(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2667
	.align 4,0x90
L2665:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2665
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2667
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2667
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2670
	.align 4,0x90
L2671:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2667
L2670:
	leaq	LC26(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2671
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L2664
	.align 4,0x90
L2667:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L2664:
	movq	%r10, -40(%rbp)
	movq	%r9, -48(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-56(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -56(%rbp)
	movq	%r8, -64(%rbp)
	leaq	-96(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	leaq	LC46(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-96(%rbp), %rsi
	movq	%rsi, -128(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	_smpThrown_init
	movq	%r14, %rax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
LFE76:
	.cstring
LC47:
	.ascii "Symbol\0"
	.text
	.align 4,0x90
.globl _smpSymbol_init
_smpSymbol_init:
LFB362:
	pushq	%rbp
LCFI1099:
	movq	%rsp, %rbp
LCFI1100:
	pushq	%r15
LCFI1101:
	pushq	%r14
LCFI1102:
	pushq	%r13
LCFI1103:
	pushq	%r12
LCFI1104:
	pushq	%rbx
LCFI1105:
	subq	$72, %rsp
LCFI1106:
	movq	%rdi, %r15
	movq	%rsi, -112(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2685
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2685
	movq	(%rdi), %r8
	leaq	LC47(%rip), %rsi
	movl	$5381, %ecx
	movl	$83, %edx
	testq	%r8, %r8
	je	L2685
	.align 4,0x90
L2683:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2683
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2685
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2685
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2688
	.align 4,0x90
L2689:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2685
L2688:
	leaq	LC47(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2689
	movq	32(%rbx), %rsi
	jmp	L2682
	.align 4,0x90
L2685:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2682:
	leaq	-80(%rbp), %rdi
	call	_obj_init
	movzbl	-72(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	sall	$7, %eax
	movl	%eax, %r14d
	sarb	$7, %r14b
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	LC15(%rip), %rsi
	movq	(%rax), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2699
L2698:
	andl	$1, %r13d
	leal	(%r13,%r13), %edx
	movzbl	8(%r15), %eax
	andl	$-4, %eax
	andl	$1, %r14d
	orl	%edx, %eax
	orl	%r14d, %eax
	movb	%al, 8(%r15)
	movq	-88(%rbp), %rdx
	movq	%rdx, (%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%r15)
	movq	-96(%rbp), %rdx
	movq	%rdx, 16(%r15)
	movq	%r15, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2699:
	movq	-112(%rbp), %rdi
	call	_strlen
	movq	%rax, %r12
	leaq	1(%rax), %rdi
	call	_malloc
	movq	%rax, %rbx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	call	_strcpy
	movq	-104(%rbp), %rax
	movq	%rbx, (%rax)
	movq	%r12, 8(%rax)
	jmp	L2698
LFE362:
	.cstring
	.align 3
LC48:
	.ascii "Regular expression \"%s\" had invalid '{...}' construct.\0"
	.align 3
LC49:
	.ascii "Syntax error in regular expression \"%s\".\0"
	.align 3
LC50:
	.ascii "In regular expression \"%s\", a repetition operator such as '?' or '*' appeared in a bad position.\0"
	.align 3
LC51:
	.ascii "Regular expression \"%s\" referred to an invalid collating element.\0"
	.align 3
LC52:
	.ascii "Regular expression \"%s\" referred to an invalid character class name.\0"
	.align 3
LC53:
	.ascii "Regular expression \"%s\" ended with '\\'.\0"
	.align 3
LC54:
	.ascii "Regular expression \"%s\" had invalid number in the '\\digit' construct.\0"
	.align 3
LC55:
	.ascii "Regular expression \"%s\" had unbalanced square brackets.\0"
	.align 3
LC56:
	.ascii "Regular expression \"%s\" had unbalanced parentheses.\0"
	.align 3
LC57:
	.ascii "Regular expression \"%s\" had unbalanced curly braces.\0"
	.align 3
LC58:
	.ascii "In regular expression \"%s\", one of the endpoints in a range expression was invalid.\0"
	.align 3
LC59:
	.ascii "Ran out of memory while compiling regular expression \"%s\".\0"
	.text
	.align 4,0x90
.globl _smpRegex_compile_handle_errors
_smpRegex_compile_handle_errors:
LFB339:
	pushq	%rbp
LCFI1107:
	movq	%rsp, %rbp
LCFI1108:
	pushq	%r15
LCFI1109:
	pushq	%r14
LCFI1110:
	pushq	%r13
LCFI1111:
	pushq	%r12
LCFI1112:
	pushq	%rbx
LCFI1113:
	subq	$872, %rsp
LCFI1114:
	movq	%rdi, %r14
	movq	%rsi, %r15
	cmpl	$10, %edx
	je	L2921
	cmpl	$2, %edx
	je	L2922
	cmpl	$13, %edx
	je	L2923
	cmpl	$3, %edx
	je	L2924
	cmpl	$4, %edx
	je	L2925
	cmpl	$5, %edx
	je	L2926
	cmpl	$6, %edx
	je	L2927
	cmpl	$7, %edx
	je	L2928
	cmpl	$8, %edx
	je	L2929
	cmpl	$9, %edx
	je	L2930
	cmpl	$11, %edx
	je	L2931
	cmpl	$12, %edx
	je	L2932
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	jmp	L2700
	.align 4,0x90
L2921:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	jne	L2933
L2710:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L2707:
	movq	%r10, -56(%rbp)
	movq	%r9, -64(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -72(%rbp)
	movq	%r8, -80(%rbp)
	leaq	-112(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC48(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-112(%rbp), %rsi
	movq	%rsi, -880(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -872(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -864(%rbp)
	movq	-88(%rbp), %rax
L2919:
	movq	%rax, -856(%rbp)
	leaq	-848(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-848(%rbp), %rax
	movq	%rax, (%r14)
	movq	-840(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-832(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	-824(%rbp), %rax
	movq	%rax, 24(%r14)
L2700:
	movq	%r14, %rax
	addq	$872, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L2922:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2726
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2726
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2726
	.align 4,0x90
L2724:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2724
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2726
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2726
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2729
	.align 4,0x90
L2730:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2726
L2729:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2730
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L2723
	.align 4,0x90
L2923:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2741
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2741
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2741
	.align 4,0x90
L2739:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2739
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2741
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2741
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2744
	.align 4,0x90
L2745:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2741
L2744:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2745
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L2738
	.align 4,0x90
L2933:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2710
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2710
	.align 4,0x90
L2708:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2708
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2710
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2710
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2713
	.align 4,0x90
L2714:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2710
L2713:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2714
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L2707
	.align 4,0x90
L2726:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L2723:
	movq	%r10, -120(%rbp)
	movq	%r9, -128(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-136(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -136(%rbp)
	movq	%r8, -144(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC49(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-176(%rbp), %rsi
	movq	%rsi, -848(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -840(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -832(%rbp)
	movq	-152(%rbp), %rax
L2920:
	movq	%rax, -824(%rbp)
	leaq	-880(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-880(%rbp), %rax
	movq	%rax, (%r14)
	movq	-872(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-864(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	-856(%rbp), %rax
	movq	%rax, 24(%r14)
	jmp	L2700
L2925:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2771
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2771
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2771
	.align 4,0x90
L2769:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2769
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2771
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2771
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2774
	.align 4,0x90
L2775:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2771
L2774:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2775
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L2768
L2771:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L2768:
	movq	%r10, -312(%rbp)
	movq	%r9, -320(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-328(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -328(%rbp)
	movq	%r8, -336(%rbp)
	leaq	-368(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC52(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-368(%rbp), %rsi
	movq	%rsi, -880(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, -872(%rbp)
	movq	-352(%rbp), %rdx
	movq	%rdx, -864(%rbp)
	movq	-344(%rbp), %rax
	jmp	L2919
	.align 4,0x90
L2741:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L2738:
	movq	%r10, -184(%rbp)
	movq	%r9, -192(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-200(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -200(%rbp)
	movq	%r8, -208(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC50(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-240(%rbp), %rsi
	movq	%rsi, -880(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -872(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -864(%rbp)
	movq	-216(%rbp), %rax
	jmp	L2919
	.align 4,0x90
L2924:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2756
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2756
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2756
	.align 4,0x90
L2754:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2754
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2756
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2756
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2759
	.align 4,0x90
L2760:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2756
L2759:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2760
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L2753
L2756:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L2753:
	movq	%r10, -248(%rbp)
	movq	%r9, -256(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-264(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -264(%rbp)
	movq	%r8, -272(%rbp)
	leaq	-304(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC51(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-304(%rbp), %rsi
	movq	%rsi, -848(%rbp)
	movq	-296(%rbp), %rcx
	movq	%rcx, -840(%rbp)
	movq	-288(%rbp), %rdx
	movq	%rdx, -832(%rbp)
	movq	-280(%rbp), %rax
	jmp	L2920
L2926:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2786
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2786
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2786
	.align 4,0x90
L2784:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2784
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2786
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2786
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2789
	.align 4,0x90
L2790:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2786
L2789:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2790
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L2783
L2786:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L2783:
	movq	%r10, -376(%rbp)
	movq	%r9, -384(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-392(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -392(%rbp)
	movq	%r8, -400(%rbp)
	leaq	-432(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC53(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-432(%rbp), %rsi
	movq	%rsi, -848(%rbp)
	movq	-424(%rbp), %rcx
	movq	%rcx, -840(%rbp)
	movq	-416(%rbp), %rdx
	movq	%rdx, -832(%rbp)
	movq	-408(%rbp), %rax
	jmp	L2920
L2929:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2831
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2831
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2831
L2829:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2829
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2831
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2831
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2834
L2835:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2831
L2834:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2835
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
L2828:
	movq	%r10, -568(%rbp)
	movq	%r9, -576(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-584(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -584(%rbp)
	movq	%r8, -592(%rbp)
	leaq	-624(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-584(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC56(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-624(%rbp), %rsi
	movq	%rsi, -880(%rbp)
	movq	-616(%rbp), %rcx
	movq	%rcx, -872(%rbp)
	movq	-608(%rbp), %rdx
	movq	%rdx, -864(%rbp)
	movq	-600(%rbp), %rax
	jmp	L2919
L2927:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2801
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2801
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2801
	.align 4,0x90
L2799:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2799
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2801
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2801
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2804
L2805:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2801
L2804:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2805
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
L2798:
	movq	%r10, -440(%rbp)
	movq	%r9, -448(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -456(%rbp)
	movq	%r8, -464(%rbp)
	leaq	-496(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC54(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-496(%rbp), %rsi
	movq	%rsi, -880(%rbp)
	movq	-488(%rbp), %rcx
	movq	%rcx, -872(%rbp)
	movq	-480(%rbp), %rdx
	movq	%rdx, -864(%rbp)
	movq	-472(%rbp), %rax
	jmp	L2919
L2801:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
	jmp	L2798
L2928:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2816
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2816
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2816
L2814:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2814
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2816
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2816
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2819
L2820:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2816
L2819:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2820
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
L2813:
	movq	%r10, -504(%rbp)
	movq	%r9, -512(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-520(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -520(%rbp)
	movq	%r8, -528(%rbp)
	leaq	-560(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC55(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-560(%rbp), %rsi
	movq	%rsi, -848(%rbp)
	movq	-552(%rbp), %rcx
	movq	%rcx, -840(%rbp)
	movq	-544(%rbp), %rdx
	movq	%rdx, -832(%rbp)
	movq	-536(%rbp), %rax
	jmp	L2920
L2816:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
	jmp	L2813
L2831:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
	jmp	L2828
L2930:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2846
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2846
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2846
L2844:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2844
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2846
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2846
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2849
L2850:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2846
L2849:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2850
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
L2843:
	movq	%r10, -632(%rbp)
	movq	%r9, -640(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-648(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -648(%rbp)
	movq	%r8, -656(%rbp)
	leaq	-688(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-648(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC57(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-688(%rbp), %rsi
	movq	%rsi, -848(%rbp)
	movq	-680(%rbp), %rcx
	movq	%rcx, -840(%rbp)
	movq	-672(%rbp), %rdx
	movq	%rdx, -832(%rbp)
	movq	-664(%rbp), %rax
	jmp	L2920
L2846:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
	jmp	L2843
L2931:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2861
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2861
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2861
L2859:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2859
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2861
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2861
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2864
L2865:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2861
L2864:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2865
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
L2858:
	movq	%r10, -696(%rbp)
	movq	%r9, -704(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-712(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -712(%rbp)
	movq	%r8, -720(%rbp)
	leaq	-752(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-712(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC58(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-752(%rbp), %rsi
	movq	%rsi, -880(%rbp)
	movq	-744(%rbp), %rcx
	movq	%rcx, -872(%rbp)
	movq	-736(%rbp), %rdx
	movq	%rdx, -864(%rbp)
	movq	-728(%rbp), %rax
	jmp	L2919
L2861:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
	jmp	L2858
L2932:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2876
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2876
	movq	(%rdi), %r8
	leaq	LC13(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L2876
L2874:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2874
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2876
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L2876
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L2879
L2880:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L2876
L2879:
	leaq	LC13(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2880
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
L2873:
	movq	%r10, -760(%rbp)
	movq	%r9, -768(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-776(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -776(%rbp)
	movq	%r8, -784(%rbp)
	leaq	-816(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-776(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r15, %rdx
	leaq	LC59(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-816(%rbp), %rsi
	movq	%rsi, -848(%rbp)
	movq	-808(%rbp), %rcx
	movq	%rcx, -840(%rbp)
	movq	-800(%rbp), %rdx
	movq	%rdx, -832(%rbp)
	movq	-792(%rbp), %rax
	jmp	L2920
L2876:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
	jmp	L2873
LFE339:
	.align 4,0x90
.globl _smpRegex_compile_str_flags
_smpRegex_compile_str_flags:
LFB338:
	pushq	%rbp
LCFI1115:
	movq	%rsp, %rbp
LCFI1116:
	movq	%rbx, -16(%rbp)
LCFI1117:
	movq	%r12, -8(%rbp)
LCFI1118:
	subq	$16, %rsp
LCFI1119:
	movq	%rdi, %r12
	movq	%rsi, %rdi
	movq	%rdx, %rbx
	movl	%ecx, %edx
	movq	%rbx, %rsi
	call	_regcomp
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_smpRegex_compile_handle_errors
	movq	%r12, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	leave
	ret
LFE338:
	.align 4,0x90
.globl _smpRegex_compile_str
_smpRegex_compile_str:
LFB337:
	pushq	%rbp
LCFI1120:
	movq	%rsp, %rbp
LCFI1121:
	movq	%rbx, -16(%rbp)
LCFI1122:
	movq	%r12, -8(%rbp)
LCFI1123:
	subq	$16, %rsp
LCFI1124:
	movq	%rdi, %r12
	movq	%rsi, %rdi
	movq	%rdx, %rbx
	movl	$1, %edx
	movq	%rbx, %rsi
	call	_regcomp
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_smpRegex_compile_handle_errors
	movq	%r12, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	leave
	ret
LFE337:
	.align 4,0x90
.globl _smpRegex_compile_flags
_smpRegex_compile_flags:
LFB336:
	pushq	%rbp
LCFI1125:
	movq	%rsp, %rbp
LCFI1126:
	movq	%rbx, -16(%rbp)
LCFI1127:
	movq	%r12, -8(%rbp)
LCFI1128:
	subq	$16, %rsp
LCFI1129:
	movq	%rdi, %r12
	movq	%rsi, %rdi
	movq	40(%rbp), %rax
	movq	(%rax), %rbx
	movq	%rbx, %rsi
	call	_regcomp
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_smpRegex_compile_handle_errors
	movq	%r12, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	leave
	ret
LFE336:
	.align 4,0x90
.globl _smpRegex_compile
_smpRegex_compile:
LFB335:
	pushq	%rbp
LCFI1130:
	movq	%rsp, %rbp
LCFI1131:
	movq	%rbx, -16(%rbp)
LCFI1132:
	movq	%r12, -8(%rbp)
LCFI1133:
	subq	$16, %rsp
LCFI1134:
	movq	%rdi, %r12
	movq	%rsi, %rdi
	movq	40(%rbp), %rax
	movq	(%rax), %rbx
	movl	$1, %edx
	movq	%rbx, %rsi
	call	_regcomp
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_smpRegex_compile_handle_errors
	movq	%r12, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	leave
	ret
LFE335:
	.align 4,0x90
.globl _smpRegex_match_str
_smpRegex_match_str:
LFB342:
	pushq	%rbp
LCFI1135:
	movq	%rsp, %rbp
LCFI1136:
	pushq	%r15
LCFI1137:
	pushq	%r14
LCFI1138:
	pushq	%r13
LCFI1139:
	pushq	%r12
LCFI1140:
	pushq	%rbx
LCFI1141:
	subq	$280, %rsp
LCFI1142:
	movq	%rdi, -280(%rbp)
	movq	%rsi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -56(%rbp)
	xorl	%edx, %edx
	movzbl	24(%rbp), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	%ecx, %r13d
	sarb	$7, %r13b
	sall	$7, %eax
	movl	%eax, %r14d
	sarb	$7, %r14b
	movq	16(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	40(%rbp), %rdx
	movq	%rdx, -256(%rbp)
	movq	32(%rbp), %r12
	movq	%rsp, -272(%rbp)
	movq	(%r12), %rbx
	leaq	LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2943
	cmpq	$0, 24(%r12)
	je	L2945
	xorl	%ebx, %ebx
	jmp	L2947
	.align 4,0x90
L2984:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L2983
L2947:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC5(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L2984
L2943:
	movl	$32, %edi
	call	_malloc
	movq	%rax, %r13
	movl	$1, %edx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_regcomp
	leaq	-96(%rbp), %rdi
	movl	%eax, %edx
	movq	%r15, %rsi
	call	_smpRegex_compile_handle_errors
	movq	-80(%rbp), %rbx
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2985
	testq	%r13, %r13
	je	L2968
	movq	%r13, %rdi
	call	_free
L2968:
	movq	%rbx, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	%rbx, 16(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%rcx)
L2953:
	movq	-272(%rbp), %rsp
	movq	-280(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	-56(%rbp), %rdx
	xorq	(%rcx), %rdx
	jne	L2986
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L2983:
	movq	(%r12), %rbx
L2945:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L2952
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2962
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L2962
	movq	(%rdi), %r8
	leaq	LC5(%rip), %rsi
	movl	$5381, %ecx
	movl	$83, %edx
	testq	%r8, %r8
	je	L2962
L2960:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L2960
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L2962
	movq	8(%rax), %rax
	movq	%rax, -264(%rbp)
	testq	%rax, %rax
	je	L2962
	movq	%rdx, %rbx
	xorl	%r15d, %r15d
	jmp	L2965
L2966:
	incq	%r15
	addq	$40, %rbx
	cmpq	-264(%rbp), %r15
	je	L2962
L2965:
	leaq	LC5(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2966
	movq	32(%rbx), %rsi
	jmp	L2959
L2985:
	subq	$1040, %rsp
	leaq	32(%rsp), %r14
	movl	$1024, %edx
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	_memset
	xorl	%r8d, %r8d
	movq	%r14, %rcx
	movl	$64, %edx
	movq	-256(%rbp), %rax
	movq	(%rax), %rsi
	movq	%r13, %rdi
	call	_regexec
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	24(%rdx), %rcx
	movq	%rcx, -232(%rbp)
	movq	16(%rdx), %rcx
	movq	%rcx, -240(%rbp)
	movzbl	8(%rdx), %ecx
	movl	%ecx, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	movq	(%rdx), %r15
	testl	%eax, %eax
	je	L2987
L2970:
	movq	%r13, %rdi
	call	_regfree
	testq	%r13, %r13
	je	L2972
	movq	%r13, %rdi
	call	_free
L2972:
	movq	-232(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-240(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%rcx), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%rcx)
	movq	%r15, (%rcx)
	jmp	L2953
L2952:
	andl	$1, %r13d
	leal	(%r13,%r13), %edx
	movq	-280(%rbp), %rcx
	movzbl	8(%rcx), %eax
	andl	$-4, %eax
	andl	$1, %r14d
	orl	%edx, %eax
	orl	%r14d, %eax
	movb	%al, 8(%rcx)
	movq	-248(%rbp), %rax
	movq	%rax, (%rcx)
	movq	-256(%rbp), %rdx
	movq	%rdx, 24(%rcx)
	movq	%r12, 16(%rcx)
	jmp	L2953
L2962:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L2959:
	andl	$1, %r13d
	leal	(%r13,%r13), %edx
	movzbl	24(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r14d
	orl	%edx, %eax
	orl	%r14d, %eax
	movb	%al, 24(%rbp)
	movq	-248(%rbp), %rcx
	movq	%rcx, 16(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, 40(%rbp)
	movq	%r12, 32(%rbp)
	leaq	-160(%rbp), %rdi
	movq	%rcx, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-160(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-224(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-224(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-208(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L2953
L2987:
	leaq	-128(%rbp), %rdi
	movl	$64, %edx
	movq	%r14, %rsi
	call	_smpregmatch_init
	movq	-104(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-112(%rbp), %rdx
	movq	%rdx, -240(%rbp)
	movzbl	-120(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-128(%rbp), %r15
	jmp	L2970
L2986:
	call	___stack_chk_fail
LFE342:
	.align 4,0x90
.globl _smpRegex_match
_smpRegex_match:
LFB341:
	pushq	%rbp
LCFI1143:
	movq	%rsp, %rbp
LCFI1144:
	pushq	%rbx
LCFI1145:
	subq	$40, %rsp
LCFI1146:
	movq	%rdi, %rbx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	40(%rbp), %rax
	movq	(%rax), %rsi
	call	_smpRegex_match_str
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE341:
	.cstring
LC60:
	.ascii "TrueClass\0"
	.text
	.align 4,0x90
.globl _smpRegex_matchp_cint
_smpRegex_matchp_cint:
LFB344:
	pushq	%rbp
LCFI1147:
	movq	%rsp, %rbp
LCFI1148:
	pushq	%rbx
LCFI1149:
	subq	$72, %rsp
LCFI1150:
	leaq	-48(%rbp), %rdi
	movq	(%rsi), %rax
	movq	%rax, (%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	40(%rbp), %rax
	movq	(%rax), %rsi
	call	_smpRegex_match_str
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	movl	$-1, %edx
	testl	%eax, %eax
	je	L2993
	leaq	LC60(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	xorl	%edx, %edx
	testl	%eax, %eax
	sete	%dl
L2993:
	movl	%edx, %eax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE344:
	.align 4,0x90
.globl _smpRegex_matchp
_smpRegex_matchp:
LFB343:
	pushq	%rbp
LCFI1151:
	movq	%rsp, %rbp
LCFI1152:
	pushq	%r12
LCFI1153:
	pushq	%rbx
LCFI1154:
	subq	$64, %rsp
LCFI1155:
	movq	%rdi, %r12
	leaq	-48(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	40(%rbp), %rax
	movq	(%rax), %rsi
	call	_smpRegex_match_str
	movq	-32(%rbp), %rbx
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2996
	movq	-48(%rbp), %rax
	movq	%rax, (%r12)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	%rbx, 16(%r12)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%r12)
	movq	%r12, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
	.align 4,0x90
L2996:
	movl	8(%rbx), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L3003
	movq	_smp_true@GOTPCREL(%rip), %rdx
L3002:
	movq	(%rdx), %rax
	movq	%rax, (%r12)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r12)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r12)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r12)
	movq	%r12, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
	.align 4,0x90
L3003:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L3002
LFE343:
	.cstring
LC61:
	.ascii "Collection\0"
	.text
	.align 4,0x90
.globl _smpCollection_create_class
_smpCollection_create_class:
LFB185:
	pushq	%rbp
LCFI1156:
	movq	%rsp, %rbp
LCFI1157:
	pushq	%r13
LCFI1158:
	pushq	%r12
LCFI1159:
	pushq	%rbx
LCFI1160:
	subq	$8, %rsp
LCFI1161:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3005
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3005
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	L3005
	leaq	LC61(%rip), %rsi
	movl	$5381, %ecx
	movl	$67, %edx
	.align 4,0x90
L3009:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3009
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3005
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L3005
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3013
	.align 4,0x90
L3019:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L3005
L3013:
	leaq	LC61(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3019
	.align 4,0x90
L3005:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	leave
	ret
LFE185:
	.align 4,0x90
.globl _smpArray_reduce
_smpArray_reduce:
LFB172:
	pushq	%rbp
LCFI1162:
	movq	%rsp, %rbp
LCFI1163:
	pushq	%r15
LCFI1164:
	pushq	%r14
LCFI1165:
	pushq	%r13
LCFI1166:
	pushq	%r12
LCFI1167:
	pushq	%rbx
LCFI1168:
	subq	$360, %rsp
LCFI1169:
	movq	%rdi, -312(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, -296(%rbp)
	movq	(%rax), %r14
	movq	(%rdx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -320(%rbp)
	movq	%rax, -64(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -56(%rbp)
	decl	%esi
	jle	L3021
	leaq	32(%rdx), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -280(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -288(%rbp)
	movzbl	8(%rax), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	32(%rdx), %r15
	movq	$0, -304(%rbp)
L3023:
	movq	-320(%rbp), %rax
	movq	(%rax), %rbx
	leaq	LC2(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3024
	movq	-320(%rbp), %rdx
	cmpq	$0, 24(%rdx)
	je	L3026
	xorl	%ebx, %ebx
	jmp	L3028
	.align 4,0x90
L3061:
	incq	%rbx
	movq	-320(%rbp), %rax
	cmpq	%rbx, 24(%rax)
	jbe	L3060
L3028:
	movq	-320(%rbp), %rcx
	movq	16(%rcx), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC2(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L3061
L3024:
	movq	-280(%rbp), %rdx
	movq	%rdx, -216(%rbp)
	movq	-288(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	andl	$1, %r12d
	leal	(%r12,%r12), %edx
	movzbl	-232(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r13d
	orl	%edx, %eax
	orl	%r13d, %eax
	movb	%al, -232(%rbp)
	movq	%r15, -240(%rbp)
	movq	-296(%rbp), %rax
	cmpq	%rax, -304(%rbp)
	jae	L3032
	movq	-304(%rbp), %rax
	salq	$5, %rax
	leaq	(%rax,%r14), %r12
	leaq	-272(%rbp), %rax
	movq	%rax, -336(%rbp)
	leaq	-240(%rbp), %rdx
	movq	%rdx, -328(%rbp)
	jmp	L3049
	.align 4,0x90
L3050:
	incq	-304(%rbp)
	addq	$32, %r12
	movq	-296(%rbp), %rax
	cmpq	%rax, -304(%rbp)
	je	L3032
L3049:
	movq	(%r12), %rax
	movq	%rax, -208(%rbp)
	movq	8(%r12), %rax
	movq	%rax, -200(%rbp)
	movq	16(%r12), %rax
	movq	%rax, -192(%rbp)
	movq	24(%r12), %rax
	movq	%rax, -184(%rbp)
	movq	-320(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	%rcx, 48(%rsp)
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
	movq	-328(%rbp), %rdx
	movl	$2, %esi
	movq	-336(%rbp), %rdi
	call	_smpFunction_call
	movq	-272(%rbp), %r15
	movq	%r15, -240(%rbp)
	movq	-264(%rbp), %r14
	movq	%r14, -232(%rbp)
	movq	-256(%rbp), %rbx
	movq	%rbx, -224(%rbp)
	movq	-248(%rbp), %r13
	movq	%r13, -216(%rbp)
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3050
	movq	-312(%rbp), %rcx
	movq	%r15, (%rcx)
	movq	%r14, 8(%rcx)
	movq	%rbx, 16(%rcx)
	movq	%r13, 24(%rcx)
L3020:
	movq	-312(%rbp), %rax
	addq	$360, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L3060:
	movq	(%rax), %rbx
L3026:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3033
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3043
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3043
	movq	(%rdi), %r8
	leaq	LC2(%rip), %rsi
	movl	$5381, %ecx
	movl	$70, %edx
	testq	%r8, %r8
	je	L3043
L3041:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3041
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3043
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L3043
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3046
L3047:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L3043
L3046:
	leaq	LC2(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3047
	movq	32(%rbx), %rsi
	jmp	L3040
	.align 4,0x90
L3032:
	movq	-240(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L3020
L3021:
	movq	24(%r14), %rax
	movq	%rax, -280(%rbp)
	movq	16(%r14), %rdx
	movq	%rdx, -288(%rbp)
	movzbl	8(%r14), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	(%r14), %r15
	movq	$1, -304(%rbp)
	jmp	L3023
L3033:
	movq	-320(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	-312(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	%rdx, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rcx)
	jmp	L3020
L3043:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L3040:
	movq	-320(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-112(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-320(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-112(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-176(%rbp), %rax
	movq	-312(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rcx)
	jmp	L3020
LFE172:
	.align 4,0x90
.globl _smpArray_map
_smpArray_map:
LFB171:
	pushq	%rbp
LCFI1170:
	movq	%rsp, %rbp
LCFI1171:
	pushq	%r15
LCFI1172:
	pushq	%r14
LCFI1173:
	pushq	%r13
LCFI1174:
	pushq	%r12
LCFI1175:
	pushq	%rbx
LCFI1176:
	subq	$312, %rsp
LCFI1177:
	movq	%rdi, -280(%rbp)
	movq	%rdx, %r15
	movq	40(%rbp), %r13
	movq	16(%rdx), %r12
	movq	(%r12), %rbx
	leaq	LC2(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3063
	cmpq	$0, 24(%r12)
	je	L3065
	xorl	%ebx, %ebx
	jmp	L3067
	.align 4,0x90
L3118:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L3117
L3067:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC2(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L3118
L3063:
	movq	(%r13), %rbx
	movq	8(%r13), %r13
	movq	%r13, -264(%rbp)
	movq	%r13, %rdi
	salq	$5, %rdi
	call	_malloc
	movq	%rax, -256(%rbp)
	cmpq	$0, -264(%rbp)
	je	L3071
	movq	%rax, %r14
	movq	%rbx, -248(%rbp)
	movq	$0, -272(%rbp)
	leaq	-240(%rbp), %rcx
	movq	%rcx, -288(%rbp)
	.align 4,0x90
L3088:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3096
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3096
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	L3096
	leaq	LC43(%rip), %rcx
	movl	$5381, %esi
	movl	$71, %edx
	.align 4,0x90
L3094:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L3094
	movslq	%esi,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3096
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L3096
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3099
	.align 4,0x90
L3100:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L3096
L3099:
	leaq	LC43(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3100
	movq	32(%rbx), %r9
	movq	24(%rbx), %r8
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %rdi
	.align 4,0x90
L3093:
	movq	%r9, -88(%rbp)
	movq	%r8, -96(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-104(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -104(%rbp)
	movq	%rdi, -112(%rbp)
	movq	(%r15), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r15), %rax
	movq	%rax, 40(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 48(%rsp)
	movq	24(%r15), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r9, 24(%rsp)
	movq	-248(%rbp), %rdx
	movl	$1, %esi
	movq	-288(%rbp), %rdi
	call	_smpFunction_call
	movq	-240(%rbp), %rax
	movq	%rax, (%r14)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-224(%rbp), %rdx
	movq	%rdx, 16(%r14)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%r14)
	leaq	LC15(%rip), %rsi
	movq	(%rdx), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3119
	incq	-272(%rbp)
	addq	$32, %r14
	addq	$32, -248(%rbp)
	movq	-264(%rbp), %rax
	cmpq	%rax, -272(%rbp)
	jne	L3088
L3071:
	leaq	-208(%rbp), %rdi
	leaq	LC19(%rip), %rsi
	call	_smp_getclass
	leaq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	-256(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-264(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, -152(%rbp)
	movq	-176(%rbp), %rdx
	movq	-280(%rbp), %rcx
	movq	%rdx, (%rcx)
	movq	-168(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movq	-160(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	movq	%rax, 24(%rcx)
L3062:
	movq	-280(%rbp), %rax
	addq	$312, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L3096:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r9
	movq	16(%rax), %r8
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %rdi
	jmp	L3093
L3117:
	movq	16(%r15), %rax
	movq	(%rax), %rbx
L3065:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3072
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3082
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3082
	movq	(%rdi), %r8
	leaq	LC2(%rip), %rsi
	movl	$5381, %ecx
	movl	$70, %edx
	testq	%r8, %r8
	je	L3082
L3080:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3080
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3082
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L3082
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3085
L3086:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L3082
L3085:
	leaq	LC2(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3086
	movq	32(%rbx), %rsi
	jmp	L3079
	.align 4,0x90
L3119:
	cmpq	$0, -256(%rbp)
	je	L3104
	movq	-256(%rbp), %rdi
	call	_free
L3104:
	movl	$32, %edx
	movq	%r14, %rsi
	movq	-280(%rbp), %rdi
	call	_memmove
	jmp	L3062
L3072:
	movl	$32, %edx
	movq	%r15, %rsi
	movq	-280(%rbp), %rdi
	call	_memmove
	jmp	L3062
L3082:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L3079:
	leaq	-80(%rbp), %rdi
	movq	(%r15), %rax
	movq	%rax, (%rsp)
	movq	8(%r15), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r15), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-176(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L3062
LFE171:
	.cstring
LC62:
	.ascii "IndexOutOfBoundsException\0"
LC63:
	.ascii "Index %ld is out of bounds.\0"
	.text
	.align 4,0x90
.globl _smpArray_get_c
_smpArray_get_c:
LFB169:
	pushq	%rbp
LCFI1178:
	movq	%rsp, %rbp
LCFI1179:
	movq	%rbx, -40(%rbp)
LCFI1180:
	movq	%r12, -32(%rbp)
LCFI1181:
	movq	%r13, -24(%rbp)
LCFI1182:
	movq	%r14, -16(%rbp)
LCFI1183:
	movq	%r15, -8(%rbp)
LCFI1184:
	subq	$208, %rsp
LCFI1185:
	movq	%rdi, %r15
	movq	%rsi, %r14
	movq	40(%rbp), %rax
	movq	(%rax), %rdx
	cmpq	8(%rax), %rsi
	jae	L3121
	salq	$5, %r14
	leaq	(%r14,%rdx), %rsi
	movl	$32, %edx
	call	_memmove
L3120:
	movq	%r15, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L3121:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3131
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3131
	movq	(%rdi), %r8
	leaq	LC62(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L3131
	.align 4,0x90
L3129:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3129
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3131
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L3131
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3134
	.align 4,0x90
L3135:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L3131
L3134:
	leaq	LC62(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3135
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L3128
	.align 4,0x90
L3131:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L3128:
	movq	%r10, -56(%rbp)
	movq	%r9, -64(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -72(%rbp)
	movq	%r8, -80(%rbp)
	leaq	-112(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r14, %rdx
	leaq	LC63(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-112(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-176(%rbp), %rax
	movq	%rax, (%r15)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%r15)
	jmp	L3120
LFE169:
	.align 4,0x90
.globl _smpArray_init_array
_smpArray_init_array:
LFB167:
	pushq	%rbp
LCFI1186:
	movq	%rsp, %rbp
LCFI1187:
	movq	%rbx, -40(%rbp)
LCFI1188:
	movq	%r12, -32(%rbp)
LCFI1189:
	movq	%r13, -24(%rbp)
LCFI1190:
	movq	%r14, -16(%rbp)
LCFI1191:
	movq	%r15, -8(%rbp)
LCFI1192:
	subq	$96, %rsp
LCFI1193:
	movq	%rdi, %r14
	movq	%rsi, %r15
	movq	%rdx, -88(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3149
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3149
	movq	(%rdi), %r8
	leaq	LC19(%rip), %rsi
	movl	$5381, %ecx
	movl	$65, %edx
	testq	%r8, %r8
	je	L3149
	.align 4,0x90
L3147:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3147
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3149
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L3149
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3152
	.align 4,0x90
L3153:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L3149
L3152:
	leaq	LC19(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3153
	movq	32(%rbx), %rsi
	jmp	L3146
	.align 4,0x90
L3149:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L3146:
	movq	%r14, %rdi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%r15, (%rax)
	movq	-88(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, 24(%r14)
	movq	%r14, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
LFE167:
	.align 4,0x90
.globl _smpArray_init
_smpArray_init:
LFB166:
	pushq	%rbp
LCFI1194:
	movq	%rsp, %rbp
LCFI1195:
	pushq	%r15
LCFI1196:
	pushq	%r14
LCFI1197:
	pushq	%r13
LCFI1198:
	pushq	%r12
LCFI1199:
	pushq	%rbx
LCFI1200:
	subq	$40, %rsp
LCFI1201:
	movq	%rdi, %r14
	movl	$256, %edi
	call	_malloc
	movq	%rax, %r15
	movl	$256, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	_memset
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3167
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3167
	movq	(%rdi), %r8
	leaq	LC19(%rip), %rsi
	movl	$5381, %ecx
	movl	$65, %edx
	testq	%r8, %r8
	je	L3167
	.align 4,0x90
L3165:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3165
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3167
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L3167
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3170
	.align 4,0x90
L3171:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L3167
L3170:
	leaq	LC19(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3171
	movq	32(%rbx), %rsi
	jmp	L3164
	.align 4,0x90
L3167:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L3164:
	movq	%r14, %rdi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%r15, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, 24(%r14)
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE166:
	.align 4,0x90
.globl _smpObject_type
_smpObject_type:
LFB122:
	pushq	%rbp
LCFI1202:
	movq	%rsp, %rbp
LCFI1203:
	movq	%rbx, -40(%rbp)
LCFI1204:
	movq	%r12, -32(%rbp)
LCFI1205:
	movq	%r13, -24(%rbp)
LCFI1206:
	movq	%r14, -16(%rbp)
LCFI1207:
	movq	%r15, -8(%rbp)
LCFI1208:
	subq	$48, %rsp
LCFI1209:
	movq	%rdi, %r13
	movq	32(%rbp), %rax
	movq	(%rax), %r15
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3188
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3188
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	L3188
	movzbl	(%r15), %edx
	movl	$5381, %eax
	testb	%dl, %dl
	je	L3185
	movq	%r15, %rcx
	movl	$5381, %esi
	.align 4,0x90
L3186:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L3186
	movslq	%esi,%rax
L3185:
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3188
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L3188
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3191
	.align 4,0x90
L3192:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L3188
L3191:
	movq	%r15, %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3192
	movq	8(%rbx), %rax
	movq	%rax, (%r13)
	movq	16(%rbx), %rax
	movq	%rax, 8(%r13)
	movq	24(%rbx), %rax
	movq	%rax, 16(%r13)
	movq	32(%rbx), %rax
	movq	%rax, 24(%r13)
	jmp	L3177
	.align 4,0x90
L3188:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
L3177:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
LFE122:
	.align 4,0x90
.globl _smpObject_instancep
_smpObject_instancep:
LFB116:
	pushq	%rbp
LCFI1210:
	movq	%rsp, %rbp
LCFI1211:
	pushq	%r15
LCFI1212:
	pushq	%r14
LCFI1213:
	pushq	%r13
LCFI1214:
	pushq	%r12
LCFI1215:
	pushq	%rbx
LCFI1216:
	subq	$200, %rsp
LCFI1217:
	movq	%rdi, %r14
	movq	%rdx, %r13
	movq	32(%rbp), %r15
	movq	16(%rdx), %r12
	movq	(%r12), %rbx
	leaq	LC6(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3199
	cmpq	$0, 24(%r12)
	je	L3201
	xorl	%ebx, %ebx
	jmp	L3203
	.align 4,0x90
L3234:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L3233
L3203:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC6(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L3234
L3199:
	movq	24(%r13), %rax
	movq	(%rax), %r10
	movq	%r10, -176(%rbp)
	movq	8(%rax), %r9
	movq	%r9, -168(%rbp)
	movq	16(%rax), %r8
	movq	%r8, -160(%rbp)
	movq	24(%rax), %rdi
	movq	%rdi, -152(%rbp)
	movq	32(%rax), %rsi
	movq	%rsi, -144(%rbp)
	movq	40(%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	48(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movq	56(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	%r10, (%rsp)
	movq	%r9, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, %rdi
	call	_smpObject_instancep_c
	testl	%eax, %eax
	jne	L3206
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L3232:
	movq	(%rdx), %rax
	movq	%rax, (%r14)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r14)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r14)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r14)
L3198:
	movq	%r14, %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L3206:
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L3232
L3233:
	movq	16(%r13), %rax
	movq	(%rax), %rbx
L3201:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3208
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3218
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3218
	movq	(%rdi), %r8
	leaq	LC6(%rip), %rsi
	movl	$5381, %ecx
	movl	$67, %edx
	testq	%r8, %r8
	je	L3218
L3216:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3216
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3218
	movq	8(%rax), %r15
	testq	%r15, %r15
	je	L3218
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3221
L3222:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r15, %r12
	je	L3218
L3221:
	leaq	LC6(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3222
	movq	32(%rbx), %rsi
	jmp	L3215
L3208:
	movl	$32, %edx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_memmove
	jmp	L3198
L3218:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L3215:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-176(%rbp), %rax
	movq	%rax, (%r14)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%r14)
	jmp	L3198
LFE116:
	.cstring
LC64:
	.ascii "UndefinedSymbolError\0"
	.align 3
LC65:
	.ascii "Class function \"%s\" is undefined for %s.\0"
	.align 3
LC66:
	.ascii "Instance function \"%s\" is undefined for %s.\0"
	.text
	.align 4,0x90
.globl _smpObject_get_fun
_smpObject_get_fun:
LFB113:
	pushq	%rbp
LCFI1218:
	movq	%rsp, %rbp
LCFI1219:
	movq	%rbx, -40(%rbp)
LCFI1220:
	movq	%r12, -32(%rbp)
LCFI1221:
	movq	%r13, -24(%rbp)
LCFI1222:
	movq	%r14, -16(%rbp)
LCFI1223:
	movq	%r15, -8(%rbp)
LCFI1224:
	subq	$320, %rsp
LCFI1225:
	movq	%rdi, %r13
	movq	%rsi, %r15
	movq	40(%rbp), %r12
	movq	32(%rbp), %rbx
	movl	8(%rbx), %edx
	movq	_smpType_id_class@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L3276
	leaq	-80(%rbp), %rdi
	movl	$1, %ecx
	movq	%rsi, %rdx
	movq	%rbx, %rsi
	call	_smpObject_get_fun_rec
	movq	-64(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L3277
L3254:
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	%rcx, 16(%r13)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%r13)
L3235:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L3276:
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rsi, %rdx
	movq	%r12, %rsi
	call	_smpObject_get_fun_rec
	movq	-64(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	jne	L3254
	movq	(%r12), %r12
	movq	%r12, -288(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3247
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3247
	movq	(%rdi), %r8
	leaq	LC64(%rip), %rsi
	movl	$5381, %ecx
	movl	$85, %edx
	testq	%r8, %r8
	je	L3247
	.align 4,0x90
L3245:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3245
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3247
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L3247
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3250
	.align 4,0x90
L3251:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L3247
L3250:
	leaq	LC64(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3251
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L3244
	.align 4,0x90
L3277:
	movq	(%rbx), %rbx
	movq	%rbx, -280(%rbp)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3263
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3263
	movq	(%rdi), %r8
	leaq	LC64(%rip), %rsi
	movl	$5381, %ecx
	movl	$85, %edx
	testq	%r8, %r8
	je	L3263
	.align 4,0x90
L3261:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3261
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3263
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L3263
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3266
	.align 4,0x90
L3267:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L3263
L3266:
	leaq	LC64(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3267
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L3260
	.align 4,0x90
L3263:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L3260:
	movq	%r10, -152(%rbp)
	movq	%r9, -160(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-168(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -168(%rbp)
	movq	%r8, -176(%rbp)
	leaq	-208(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	-280(%rbp), %rcx
	movq	%r15, %rdx
	leaq	LC66(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-208(%rbp), %rsi
	movq	%rsi, -240(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -224(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-272(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-272(%rbp), %rax
	movq	%rax, (%r13)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-248(%rbp), %rax
	movq	%rax, 24(%r13)
	jmp	L3235
L3247:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L3244:
	movq	%r10, -88(%rbp)
	movq	%r9, -96(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-104(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -104(%rbp)
	movq	%r8, -112(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	-288(%rbp), %rcx
	movq	%r15, %rdx
	leaq	LC65(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-144(%rbp), %rsi
	movq	%rsi, -272(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -256(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-240(%rbp), %rax
	movq	%rax, (%r13)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%r13)
	jmp	L3235
LFE113:
	.align 4,0x90
.globl _smpObject_funcall
_smpObject_funcall:
LFB109:
	pushq	%rbp
LCFI1226:
	movq	%rsp, %rbp
LCFI1227:
	movq	%rbx, -32(%rbp)
LCFI1228:
	movq	%r12, -24(%rbp)
LCFI1229:
	movq	%r13, -16(%rbp)
LCFI1230:
	movq	%r14, -8(%rbp)
LCFI1231:
	subq	$160, %rsp
LCFI1232:
	movq	%rdi, %r12
	movl	%edx, %r14d
	movq	%rcx, %r13
	leaq	-96(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpObject_get_fun
	movq	-80(%rbp), %rbx
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3279
	movq	-96(%rbp), %rax
	movq	%rax, (%r12)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	%rbx, 16(%r12)
	movq	-72(%rbp), %rax
	movq	%rax, 24(%r12)
L3278:
	movq	%r12, %rax
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
	.align 4,0x90
L3279:
	leaq	-64(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rdx
	movl	%r14d, %esi
	call	_smpFunction_call
	movq	-64(%rbp), %rax
	movq	%rax, (%r12)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%r12)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%r12)
	jmp	L3278
LFE109:
	.cstring
LC67:
	.ascii "\12\0"
LC68:
	.ascii "to_s\0"
LC69:
	.ascii "<Thrown: %s>\0"
	.text
	.align 4,0x90
.globl _smpThrown_to_s
_smpThrown_to_s:
LFB375:
	pushq	%rbp
LCFI1233:
	movq	%rsp, %rbp
LCFI1234:
	pushq	%r15
LCFI1235:
	pushq	%r14
LCFI1236:
	pushq	%r13
LCFI1237:
	pushq	%r12
LCFI1238:
	pushq	%rbx
LCFI1239:
	subq	$280, %rsp
LCFI1240:
	movq	%rdi, %r15
	movq	40(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	%rax, %rsi
	movq	-256(%rbp), %rdi
	call	_obj_init
	leaq	LC24(%rip), %rsi
	movq	-256(%rbp), %rdi
	call	_obj_init_str
	movq	-136(%rbp), %rax
	movq	%rax, -200(%rbp)
	movzbl	-152(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-160(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-144(%rbp), %r13
	leaq	LC15(%rip), %rsi
	movq	(%r13), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3284
	movq	-200(%rbp), %rax
	movq	%rax, 24(%r15)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r15), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
L3301:
	orl	%r12d, %eax
	movb	%al, 8(%r15)
	movq	-208(%rbp), %rax
	movq	%rax, (%r15)
	movq	%r13, 16(%r15)
L3283:
	movq	%r15, %rax
	addq	$280, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L3284:
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdi
	call	_obj_init
	leaq	LC67(%rip), %rsi
	movq	-256(%rbp), %rdi
	call	_obj_init_str
	movq	-160(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	%rax, -128(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %r14
	movq	%r14, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	%rax, -104(%rbp)
	leaq	LC15(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3287
	movq	-216(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	L3290
	xorl	%r14d, %r14d
	leaq	-192(%rbp), %rax
	movq	%rax, -264(%rbp)
	andl	$1, %ebx
	addl	%ebx, %ebx
	movb	%bl, -265(%rbp)
	andl	$1, %r12d
	leaq	-128(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-216(%rbp), %rax
	jmp	L3291
	.align 4,0x90
L3294:
	movq	-200(%rbp), %rax
	movq	%rax, -72(%rbp)
	movzbl	-88(%rbp), %eax
	andl	$-4, %eax
	orb	-265(%rbp), %al
	orl	%r12d, %eax
	movb	%al, -88(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	%r13, -80(%rbp)
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-256(%rbp), %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_smpString_add_now
	leaq	LC15(%rip), %rsi
	movq	(%r13), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3302
	incq	%r14
	movq	-216(%rbp), %rax
	cmpq	%r14, 16(%rax)
	jbe	L3290
L3291:
	movq	8(%rax), %rcx
	movq	%r14, %rdx
	salq	$5, %rdx
	movq	(%rdx,%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx,%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx,%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx,%rcx), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	movq	-256(%rbp), %rdi
	call	_smpObject_funcall
	movq	-144(%rbp), %rbx
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3303
	movq	-264(%rbp), %rbx
	testq	%r14, %r14
	je	L3294
	movq	-200(%rbp), %rax
	movq	%rax, -72(%rbp)
	movzbl	-88(%rbp), %eax
	andl	$-4, %eax
	orb	-265(%rbp), %al
	orl	%r12d, %eax
	movb	%al, -88(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	%r13, -80(%rbp)
	movq	%rax, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-280(%rbp), %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_smpString_add_now
	jmp	L3294
L3287:
	movq	-224(%rbp), %rax
	movq	%rax, (%r15)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	%r14, 16(%r15)
	movq	-240(%rbp), %rax
	movq	%rax, 24(%r15)
	jmp	L3283
L3290:
	leaq	-56(%rbp), %rdi
	movq	-200(%rbp), %rax
	movq	(%rax), %rdx
	leaq	LC69(%rip), %rsi
	xorl	%eax, %eax
	call	_asprintf
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdi
	call	_obj_init
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	-56(%rbp), %r12
	movq	%r12, %rdi
	call	_strlen
	movq	%rax, 8(%rbx)
	movq	%r12, (%rbx)
	movq	%rbx, -136(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, (%r15)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	%rbx, 24(%r15)
	jmp	L3283
L3303:
	movq	-160(%rbp), %rax
	movq	%rax, (%r15)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	%rbx, 16(%r15)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%r15)
	jmp	L3283
L3302:
	movq	-200(%rbp), %rax
	movq	%rax, 24(%r15)
	movzbl	8(%r15), %eax
	andl	$-4, %eax
	orb	-265(%rbp), %al
	jmp	L3301
LFE375:
	.cstring
LC70:
	.ascii "(list\0"
LC71:
	.ascii " \0"
LC72:
	.ascii "write\0"
LC73:
	.ascii ")\0"
	.text
	.align 4,0x90
.globl _smpList_write
_smpList_write:
LFB309:
	pushq	%rbp
LCFI1241:
	movq	%rsp, %rbp
LCFI1242:
	pushq	%r15
LCFI1243:
	pushq	%r14
LCFI1244:
	pushq	%r13
LCFI1245:
	pushq	%r12
LCFI1246:
	pushq	%rbx
LCFI1247:
	subq	$296, %rsp
LCFI1248:
	movq	%rdi, %rbx
	movl	%esi, %r15d
	movq	%rdx, %r14
	leaq	-240(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rax
	movq	%rax, -288(%rbp)
	movq	%rax, %rsi
	movq	-280(%rbp), %rdi
	call	_obj_init
	leaq	LC70(%rip), %rsi
	movq	-280(%rbp), %rdi
	call	_obj_init_str
	movq	-240(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-288(%rbp), %rsi
	movq	-280(%rbp), %rdi
	call	_obj_init
	leaq	LC71(%rip), %rsi
	movq	-280(%rbp), %rdi
	call	_obj_init_str
	movq	-240(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	16(%rbp), %r12
	leaq	-272(%rbp), %r13
	leaq	-112(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -296(%rbp)
	.align 4,0x90
L3307:
	movq	24(%r12), %rax
	movq	(%rax), %rsi
	movq	%rsi, -208(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -200(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -192(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%r14, %rcx
	movl	%r15d, %edx
	leaq	LC72(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-272(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	-304(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpString_add_now
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	-296(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpString_add_now
	movq	24(%r12), %rax
	movq	32(%rax), %r12
	testq	%r12, %r12
	jne	L3307
	movq	-288(%rbp), %rsi
	movq	-280(%rbp), %rdi
	call	_obj_init
	leaq	LC73(%rip), %rsi
	movq	-280(%rbp), %rdi
	call	_obj_init_str
	movq	-240(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-176(%rbp), %rdx
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpString_add_now
	movq	%rbx, %rax
	addq	$296, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE309:
	.cstring
LC74:
	.ascii "(\0"
	.text
	.align 4,0x90
.globl _smpList_to_s
_smpList_to_s:
LFB308:
	pushq	%rbp
LCFI1249:
	movq	%rsp, %rbp
LCFI1250:
	pushq	%r15
LCFI1251:
	pushq	%r14
LCFI1252:
	pushq	%r13
LCFI1253:
	pushq	%r12
LCFI1254:
	pushq	%rbx
LCFI1255:
	subq	$328, %rsp
LCFI1256:
	movq	%rdi, -288(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rdx
	movq	%rdx, -312(%rbp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_obj_init
	leaq	LC74(%rip), %rsi
	movq	-296(%rbp), %rdi
	call	_obj_init_str
	movq	-240(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-312(%rbp), %rsi
	movq	-296(%rbp), %rdi
	call	_obj_init
	leaq	LC71(%rip), %rsi
	movq	-296(%rbp), %rdi
	call	_obj_init_str
	movq	-240(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	16(%rbp), %r15
	movl	$1, -276(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-112(%rbp), %rdx
	movq	%rdx, -320(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -328(%rbp)
	jmp	L3314
	.align 4,0x90
L3318:
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-328(%rbp), %rdx
	movl	$1, %esi
	movq	-304(%rbp), %rdi
	call	_smpString_add_now
	movq	24(%r15), %rax
	movq	32(%rax), %r15
	movl	$0, -276(%rbp)
	testq	%r15, %r15
	je	L3323
L3314:
	movq	24(%r15), %rax
	movq	(%rax), %rsi
	movq	%rsi, -208(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -200(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -192(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	movq	-304(%rbp), %rdi
	call	_smpObject_funcall
	movq	-272(%rbp), %r14
	movq	%r14, -144(%rbp)
	movq	-264(%rbp), %r13
	movq	%r13, -136(%rbp)
	movq	-256(%rbp), %rbx
	movq	%rbx, -128(%rbp)
	movq	-248(%rbp), %r12
	movq	%r12, -120(%rbp)
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3324
	movl	-276(%rbp), %ebx
	testl	%ebx, %ebx
	jne	L3318
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-320(%rbp), %rdx
	movl	$1, %esi
	movq	-304(%rbp), %rdi
	call	_smpString_add_now
	jmp	L3318
L3323:
	movq	-312(%rbp), %rsi
	movq	-296(%rbp), %rdi
	call	_obj_init
	leaq	LC73(%rip), %rsi
	movq	-296(%rbp), %rdi
	call	_obj_init_str
	movq	-240(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -152(%rbp)
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
	movq	-304(%rbp), %rdi
	call	_smpString_add_now
	movq	-80(%rbp), %rax
	movq	-288(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rdx)
L3311:
	movq	-288(%rbp), %rax
	addq	$328, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L3324:
	movq	-288(%rbp), %rdx
	movq	%r14, (%rdx)
	movq	%r13, 8(%rdx)
	movq	%rbx, 16(%rdx)
	movq	%r12, 24(%rdx)
	jmp	L3311
LFE308:
	.cstring
LC75:
	.ascii "List\0"
LC76:
	.ascii "equal?\0"
	.text
	.align 4,0x90
.globl _smpList_equalp
_smpList_equalp:
LFB299:
	pushq	%rbp
LCFI1257:
	movq	%rsp, %rbp
LCFI1258:
	pushq	%r15
LCFI1259:
	pushq	%r14
LCFI1260:
	pushq	%r13
LCFI1261:
	pushq	%r12
LCFI1262:
	pushq	%rbx
LCFI1263:
	subq	$200, %rsp
LCFI1264:
	movq	%rdi, %r13
	movq	%rdx, %rbx
	movq	40(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movzbl	24(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movb	%dl, -193(%rbp)
	movq	16(%rbx), %r14
	leaq	LC75(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3356
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	sall	$7, %eax
	movl	%eax, %r9d
	sarb	$7, %r9b
	movq	(%rbx), %r10
	movq	24(%rbx), %r12
	movq	-184(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rax
	movl	8(%rax), %esi
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	(%rax), %r8d
	xorl	%edi, %edi
	cmpl	%r8d, %esi
	je	L3331
	leaq	-176(%rbp), %rax
	.align 4,0x90
L3332:
	incq	%rdi
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	L3332
L3331:
	movq	%r12, -152(%rbp)
	xorl	%ecx, %ecx
	cmpl	8(%r14), %r8d
	je	L3335
	leaq	-176(%rbp), %rax
	.align 4,0x90
L3336:
	incq	%rcx
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	L3336
L3335:
	cmpq	%rcx, %rdi
	je	L3357
L3356:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
L3355:
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
	movq	%r13, %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L3357:
	movzbl	-168(%rbp), %eax
	andl	$-4, %eax
	movq	%r14, -160(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	andl	$1, %r9d
	orl	%edx, %eax
	orl	%r9d, %eax
	movb	%al, -168(%rbp)
	movq	%r10, -176(%rbp)
	movq	-184(%rbp), %rbx
	leaq	-144(%rbp), %r15
	leaq	-112(%rbp), %r14
	jmp	L3339
	.align 4,0x90
L3353:
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	L3358
L3354:
	movq	24(%rax), %r12
	movl	8(%rcx), %esi
L3339:
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	%esi, (%rax)
	je	L3359
	movq	(%rbx), %rdi
	movq	%rdi, -80(%rbp)
	movq	8(%rbx), %rsi
	movq	%rsi, -72(%rbp)
	movq	16(%rbx), %rcx
	movq	%rcx, -64(%rbp)
	movq	24(%rbx), %rdx
	movq	%rdx, -56(%rbp)
	movq	(%r12), %rax
	movq	%rax, -112(%rbp)
	movq	8(%r12), %rax
	movq	%rax, -104(%rbp)
	movq	16(%r12), %rax
	movq	%rax, -96(%rbp)
	movq	24(%r12), %rax
	movq	%rax, -88(%rbp)
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%r14, %rcx
	movl	$1, %edx
	leaq	LC76(%rip), %rsi
	movq	%r15, %rdi
	call	_smpObject_funcall
	movq	-128(%rbp), %rax
	movl	8(%rax), %eax
	movq	_smpType_id_nil@GOTPCREL(%rip), %rdx
	cmpl	(%rdx), %eax
	je	L3356
	movq	32(%rbx), %rax
	testq	%rax, %rax
	jne	L3353
	movq	_smp_nil@GOTPCREL(%rip), %rax
	jmp	L3353
L3358:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	jmp	L3354
L3359:
	movq	_smp_true@GOTPCREL(%rip), %rdx
	jmp	L3355
LFE299:
	.cstring
LC77:
	.ascii "StringFormatException\0"
	.align 3
LC78:
	.ascii "Undefined format %s (does not begin with '%%').\0"
LC79:
	.ascii "Float\0"
LC80:
	.ascii "Undefined format type %c.\0"
	.text
	.align 4,0x90
.globl _obj_put_fmt
_obj_put_fmt:
LFB246:
	pushq	%rbp
LCFI1265:
	movq	%rsp, %rbp
LCFI1266:
	pushq	%r15
LCFI1267:
	pushq	%r14
LCFI1268:
	pushq	%r13
LCFI1269:
	pushq	%r12
LCFI1270:
	pushq	%rbx
LCFI1271:
	subq	$360, %rsp
LCFI1272:
	movq	%rdi, %r15
	movq	%rsi, %r14
	movq	%rdx, -344(%rbp)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -56(%rbp)
	xorl	%edx, %edx
	movq	32(%rbp), %rcx
	movq	%rcx, -336(%rbp)
	cmpb	$37, (%rsi)
	je	L3361
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	jne	L3428
L3370:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L3367:
	movq	%r10, -136(%rbp)
	movq	%r9, -144(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-152(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -152(%rbp)
	movq	%r8, -160(%rbp)
	leaq	-192(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r14, %rdx
	leaq	LC78(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-192(%rbp), %rdx
	movq	%rdx, -288(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -264(%rbp)
	leaq	-320(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-320(%rbp), %rax
	movq	%rax, (%r15)
	movq	-312(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-304(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-296(%rbp), %rax
	movq	%rax, 24(%r15)
L3360:
	movq	%r15, %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-56(%rbp), %rcx
	xorq	(%rdx), %rcx
	jne	L3429
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L3428:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3370
	movq	(%rdi), %r8
	leaq	LC77(%rip), %rsi
	movl	$5381, %ecx
	movl	$83, %edx
	testq	%r8, %r8
	je	L3370
	.align 4,0x90
L3368:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3368
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3370
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L3370
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3373
	.align 4,0x90
L3374:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L3370
L3373:
	leaq	LC77(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3374
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L3367
L3361:
	leaq	1(%rsi), %rsi
	movzbl	1(%r14), %edx
	leal	-48(%rdx), %eax
	movq	%rsi, %rcx
	cmpb	$9, %al
	ja	L3379
	.align 4,0x90
L3380:
	incq	%rcx
	movzbl	(%rcx), %edx
	leal	-48(%rdx), %eax
	cmpb	$9, %al
	jbe	L3380
L3379:
	cmpb	$46, %dl
	je	L3430
	movzbl	(%rcx), %r13d
	incq	%rcx
	movq	%rcx, -328(%rbp)
L3427:
	movq	_smp_nil@GOTPCREL(%rip), %r9
	movq	(%r9), %rax
	movq	%rax, -96(%rbp)
	movq	8(%r9), %rax
	movq	%rax, -88(%rbp)
	movq	16(%r9), %rax
	movq	%rax, -80(%rbp)
	movq	24(%r9), %rax
	movq	%rax, -72(%rbp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
L3392:
	cmpb	$115, %r13b
	je	L3431
	cmpb	$119, %r13b
	je	L3432
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	jne	L3433
L3405:
	movq	24(%r9), %r8
	movq	16(%r9), %rdi
	movzbl	8(%r9), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r9), %rsi
L3402:
	movq	%r8, -200(%rbp)
	movq	%rdi, -208(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-216(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -216(%rbp)
	movq	%rsi, -224(%rbp)
	leaq	-256(%rbp), %rdi
	movsbl	%r13b,%edx
	movq	%rsi, (%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-208(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC80(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-256(%rbp), %rdx
	movq	%rdx, -288(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -264(%rbp)
	leaq	-320(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-272(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movzbl	-312(%rbp), %edx
	movq	-296(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-120(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -120(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -128(%rbp)
L3395:
	movq	-112(%rbp), %rbx
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3411
	movq	-128(%rbp), %rax
	movq	%rax, (%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	%rbx, 16(%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%r15)
	jmp	L3360
L3433:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3405
	movq	(%rdi), %r8
	leaq	LC77(%rip), %rsi
	movl	$5381, %ecx
	movl	$83, %edx
	testq	%r8, %r8
	je	L3405
	.align 4,0x90
L3403:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3403
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3405
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L3405
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3408
	.align 4,0x90
L3409:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L3405
L3408:
	leaq	LC77(%rip), %rsi
	movq	(%rbx), %rdi
	movq	%r9, -360(%rbp)
	call	_strcmp
	testl	%eax, %eax
	movq	-360(%rbp), %r9
	jne	L3409
	movq	32(%rbx), %r8
	movq	24(%rbx), %rdi
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %rsi
	jmp	L3402
L3411:
	movq	-328(%rbp), %rdx
	cmpb	$116, (%rdx)
	je	L3434
L3413:
	cmpq	$0, -344(%rbp)
	je	L3415
	movq	-328(%rbp), %rcx
	movq	-344(%rbp), %rdx
	movq	%rcx, (%rdx)
L3415:
	movq	-128(%rbp), %rax
	movq	%rax, (%r15)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%r15)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%r15)
	jmp	L3360
L3430:
	leaq	1(%rcx), %rsi
	movzbl	1(%rcx), %r13d
	cmpb	$47, %r13b
	jle	L3383
	cmpb	$57, %r13b
	jg	L3383
	xorl	%r12d, %r12d
	jmp	L3386
	.align 4,0x90
L3435:
	cmpb	$57, %r13b
	jg	L3387
L3386:
	leal	(%r12,%r12,4), %edx
	movsbl	%r13b,%eax
	leal	-48(%rax,%rdx,2), %r12d
	incq	%rsi
	movzbl	(%rsi), %r13d
	cmpb	$47, %r13b
	jg	L3435
L3387:
	incq	%rsi
	movq	%rsi, -328(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %r9
	movq	(%r9), %rax
	movq	%rax, -96(%rbp)
	movq	8(%r9), %rax
	movq	%rax, -88(%rbp)
	movq	16(%r9), %rax
	movq	%rax, -80(%rbp)
	movq	24(%r9), %rax
	movq	%rax, -72(%rbp)
	testl	%r12d, %r12d
	jne	L3436
L3389:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	L3392
L3431:
	movq	-336(%rbp), %rax
	movq	%rax, 32(%rbp)
	leaq	-128(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC68(%rip), %rsi
	call	_smpObject_funcall
	jmp	L3395
L3432:
	movq	-336(%rbp), %rax
	movq	%rax, 32(%rbp)
	leaq	-128(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC72(%rip), %rsi
	call	_smpObject_funcall
	jmp	L3395
L3436:
	leaq	LC79(%rip), %rsi
	movq	-336(%rbp), %rax
	movq	(%rax), %rdi
	movq	%r9, -360(%rbp)
	call	_strcmp
	testl	%eax, %eax
	movq	-360(%rbp), %r9
	jne	L3389
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movslq	%r12d,%rsi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-288(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -264(%rbp)
	movq	-288(%rbp), %rsi
	movq	%rsi, -320(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	%rbx, -296(%rbp)
	movzbl	-312(%rbp), %edx
	movq	%rbx, -72(%rbp)
	movq	%rax, -80(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-88(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$1, %edx
	leaq	-96(%rbp), %rcx
	movq	-360(%rbp), %r9
	jmp	L3392
L3434:
	movq	%rsp, %r13
	incq	%rdx
	movq	%rdx, -328(%rbp)
	movq	-336(%rbp), %rcx
	movq	(%rcx), %rdi
	call	_strlen
	addq	$32, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	leaq	32(%rsp), %rbx
	movb	$58, (%rbx)
	leaq	1(%rbx), %rdi
	movq	-336(%rbp), %rax
	movq	(%rax), %rsi
	call	_strcpy
	leaq	-320(%rbp), %r12
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%r12, %rdi
	call	_obj_init
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_obj_init_str
	movq	-320(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -264(%rbp)
	leaq	-128(%rbp), %rdi
	leaq	-288(%rbp), %rdx
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
	movq	%r13, %rsp
	jmp	L3413
L3429:
	call	___stack_chk_fail
L3383:
	incq	%rsi
	movq	%rsi, -328(%rbp)
	jmp	L3427
LFE246:
	.cstring
	.align 3
LC81:
	.ascii "Not enough arguments for formatted output (%d expected, %d found).\0"
	.text
	.align 4,0x90
.globl _smpGlobal_sprintf_arg
_smpGlobal_sprintf_arg:
LFB245:
	pushq	%rbp
LCFI1273:
	movq	%rsp, %rbp
LCFI1274:
	pushq	%r15
LCFI1275:
	pushq	%r14
LCFI1276:
	pushq	%r13
LCFI1277:
	pushq	%r12
LCFI1278:
	pushq	%rbx
LCFI1279:
	subq	$456, %rsp
LCFI1280:
	movq	%rdi, -408(%rbp)
	movq	%rdx, %r15
	movq	16(%rdx), %r13
	movq	(%r13), %rbx
	leaq	LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3438
	cmpq	$0, 24(%r13)
	je	L3440
	xorl	%ebx, %ebx
	jmp	L3442
	.align 4,0x90
L3563:
	incq	%rbx
	cmpq	%rbx, 24(%r13)
	jbe	L3562
L3442:
	movq	16(%r13), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC5(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L3563
	movq	16(%r15), %r13
L3438:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3468
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3468
	movq	(%rdi), %r8
	leaq	LC75(%rip), %rsi
	movl	$5381, %ecx
	movl	$76, %edx
	testq	%r8, %r8
	je	L3468
	.align 4,0x90
L3466:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3466
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3468
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L3468
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3471
L3472:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L3468
L3471:
	leaq	LC75(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3472
	movq	32(%rbx), %rbx
	jmp	L3465
L3468:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rbx
L3465:
	movq	(%rbx), %r10
	movq	%r10, -352(%rbp)
	movq	8(%rbx), %r9
	movq	%r9, -344(%rbp)
	movq	16(%rbx), %r8
	movq	%r8, -336(%rbp)
	movq	24(%rbx), %rdi
	movq	%rdi, -328(%rbp)
	movq	32(%rbx), %rsi
	movq	%rsi, -320(%rbp)
	movq	40(%rbx), %rcx
	movq	%rcx, -312(%rbp)
	movq	48(%rbx), %rdx
	movq	%rdx, -304(%rbp)
	movq	56(%rbx), %rax
	movq	%rax, -296(%rbp)
	movq	%r10, (%rsp)
	movq	%r9, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r13, %rdi
	call	_smpObject_instancep_c
	testl	%eax, %eax
	je	L3474
	leaq	-128(%rbp), %rdi
	movq	(%r15), %rax
	movq	%rax, (%rsp)
	movq	8(%r15), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r15), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rsi
	call	_smpTypeError_init
	movq	-128(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	-112(%rbp), %rdx
	movq	%rdx, -240(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-352(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
L3560:
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-352(%rbp), %rax
	movq	-408(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-344(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-336(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-328(%rbp), %rax
	movq	%rax, 24(%rcx)
L3437:
	movq	-408(%rbp), %rax
	addq	$456, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L3474:
	movq	24(%r15), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	leaq	32(%r15), %rax
	movq	16(%rax), %r14
	movzbl	8(%rax), %r12d
	movl	%r12d, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %r12d
	sarb	$7, %r12b
	movq	32(%r15), %r13
	movq	24(%rax), %rax
	movq	%rax, -384(%rbp)
	movl	$17, %edi
	call	_malloc
	movq	%rax, %rdi
	movq	%r14, -240(%rbp)
	andl	$1, %ebx
	addl	%ebx, %ebx
	movzbl	-248(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -248(%rbp)
	movq	%r13, -256(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -232(%rbp)
	movl	8(%r14), %edx
	movq	$0, -360(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L3478
	xorl	%ecx, %ecx
	leaq	-256(%rbp), %rax
	.align 4,0x90
L3479:
	incq	%rcx
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	L3479
	movq	%rcx, -360(%rbp)
L3478:
	movq	%rdi, %r14
	movq	-400(%rbp), %r12
	movl	$16, %r13d
	xorl	%r15d, %r15d
	movq	$0, -392(%rbp)
	leaq	-256(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	leaq	-56(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	.align 4,0x90
L3561:
	movzbl	(%r12), %eax
	testb	%al, %al
	je	L3564
	.align 4,0x90
L3482:
	cmpb	$37, %al
	je	L3483
	cmpq	%r15, %r13
	jbe	L3565
L3485:
	movb	%al, (%r15,%r14)
	incq	%r15
	incq	%r12
	movzbl	(%r12), %eax
	testb	%al, %al
	jne	L3482
L3564:
	movb	$0, (%r14,%r15)
	leaq	-352(%rbp), %rbx
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	_obj_init_str
	movq	-328(%rbp), %r13
	movq	-336(%rbp), %r15
	movzbl	-344(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-352(%rbp), %rax
	movq	%rax, -368(%rbp)
	testq	%r14, %r14
	je	L3532
	movq	%r14, %rdi
	call	_free
L3532:
	movq	-408(%rbp), %rdx
	movq	%r13, 24(%rdx)
	movq	%r15, 16(%rdx)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movq	-408(%rbp), %rcx
	movzbl	8(%rcx), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%rcx)
	movq	-368(%rbp), %rax
	movq	%rax, (%rcx)
	jmp	L3437
L3562:
	movq	16(%r15), %rax
	movq	(%rax), %rbx
L3440:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3447
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3457
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3457
	movq	(%rdi), %r8
	leaq	LC5(%rip), %rsi
	movl	$5381, %ecx
	movl	$83, %edx
	testq	%r8, %r8
	je	L3457
L3455:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3455
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3457
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L3457
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3460
L3461:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L3457
L3460:
	leaq	LC5(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3461
	movq	32(%rbx), %rsi
	jmp	L3454
	.align 4,0x90
L3483:
	movq	-360(%rbp), %rax
	cmpq	%rax, -392(%rbp)
	jae	L3566
	movq	%r12, -56(%rbp)
	movq	-384(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	-424(%rbp), %rdx
	movq	%r12, %rsi
	movq	-416(%rbp), %rdi
	call	_obj_put_fmt
	movq	-232(%rbp), %r12
	movq	-240(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	(%rax), %rbx
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3567
	leaq	LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3558
	jmp	L3571
	.align 4,0x90
L3537:
	addq	%r13, %r13
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_realloc
	movq	%rax, %r14
L3558:
	movq	%r13, %rax
	subq	%r15, %rax
	cmpq	%rax, 8(%r12)
	ja	L3537
	movq	%r12, -232(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-376(%rbp), %rdx
	movq	%rdx, -336(%rbp)
	movq	%r12, -328(%rbp)
	leaq	(%r14,%r15), %rbx
	movq	(%r12), %rsi
	movq	%rbx, %rdi
	call	_strcpy
	movq	-56(%rbp), %r12
	movq	%rbx, %rdi
	call	_strlen
	movq	%rax, %rdx
	movq	-384(%rbp), %rcx
	movq	32(%rcx), %rax
	testq	%rax, %rax
	je	L3569
L3559:
	movq	24(%rax), %rax
	movq	%rax, -384(%rbp)
	addq	%rdx, %r15
	incq	-392(%rbp)
	jmp	L3561
L3565:
	addq	%r13, %r13
	leaq	1(%r13), %rsi
	movq	%r14, %rdi
	call	_realloc
	movq	%rax, %r14
	movzbl	(%r12), %eax
	jmp	L3485
L3569:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	jmp	L3559
L3447:
	movl	$32, %edx
	movq	%r15, %rsi
	movq	-408(%rbp), %rdi
	call	_memmove
	jmp	L3437
L3457:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L3454:
	leaq	-96(%rbp), %rdi
	movq	(%r15), %rax
	movq	%rax, (%rsp)
	movq	8(%r15), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r15), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-96(%rbp), %rsi
	movq	%rsi, -352(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -344(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, -336(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -328(%rbp)
	leaq	-256(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-256(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-240(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-232(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L3437
L3566:
	movq	-392(%rbp), %r14
	incq	%r14
	movzbl	1(%r12), %ecx
	leaq	2(%r12), %rax
	cmpb	$37, %cl
	je	L3570
L3491:
	testb	%cl, %cl
	je	L3495
	movzbl	(%rax), %edx
L3493:
	movl	%edx, %ecx
L3490:
	incq	%rax
	cmpb	$37, %cl
	jne	L3491
L3570:
	movzbl	(%rax), %edx
	movl	%edx, %ecx
	cmpb	$37, %dl
	je	L3493
	incq	%r14
	jmp	L3490
L3495:
	movq	_scope_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	L3503
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3503
	movq	(%rdi), %r8
	leaq	LC77(%rip), %rsi
	movl	$5381, %ecx
	movl	$83, %edx
	testq	%r8, %r8
	je	L3503
L3501:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3501
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3503
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L3503
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3506
L3507:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L3503
L3506:
	leaq	LC77(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3507
	movq	32(%rbx), %r9
	movq	24(%rbx), %r10
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L3500
L3503:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r9
	movq	16(%rax), %r10
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
L3500:
	movq	%r9, -136(%rbp)
	movq	%r10, -144(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-152(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -152(%rbp)
	movq	%r8, -160(%rbp)
	leaq	-192(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r9, 24(%rsp)
	movq	-360(%rbp), %rcx
	movq	%r14, %rdx
	leaq	LC81(%rip), %rsi
	xorl	%eax, %eax
	call	_smpException_init_fmt
	movq	-192(%rbp), %rcx
	movq	%rcx, -352(%rbp)
	movq	-184(%rbp), %rsi
	movq	%rsi, -344(%rbp)
	movq	-176(%rbp), %rdx
	movq	%rdx, -336(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -328(%rbp)
	leaq	-288(%rbp), %rdi
	movq	%rcx, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-288(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-272(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-264(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L3437
L3571:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3522
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3522
	movq	(%rdi), %r8
	leaq	LC5(%rip), %rsi
	movl	$5381, %ecx
	movl	$83, %edx
	testq	%r8, %r8
	je	L3522
L3520:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3520
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3522
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L3522
	movq	%rdx, %rbx
	xorl	%r13d, %r13d
	jmp	L3525
L3526:
	incq	%r13
	addq	$40, %rbx
	cmpq	%r14, %r13
	je	L3522
L3525:
	leaq	LC5(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3526
	movq	32(%rbx), %rsi
	jmp	L3519
L3567:
	movq	-376(%rbp), %rdx
	movq	-256(%rbp), %rax
	movq	-408(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	%rdx, 16(%rcx)
	movq	%r12, 24(%rcx)
	jmp	L3437
L3522:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L3519:
	movq	%r12, -232(%rbp)
	movq	-376(%rbp), %rdx
	movq	%rdx, -240(%rbp)
	leaq	-224(%rbp), %rdi
	movq	-256(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%r12, 24(%rsp)
	call	_smpTypeError_init
	movq	-224(%rbp), %rcx
	movq	%rcx, -288(%rbp)
	movq	-216(%rbp), %rsi
	movq	%rsi, -280(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rdx, -272(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -264(%rbp)
	leaq	-352(%rbp), %rdi
	movq	%rcx, (%rsp)
	movq	%rsi, 8(%rsp)
	jmp	L3560
LFE245:
	.align 4,0x90
.globl _smpGlobal_vsprintf
_smpGlobal_vsprintf:
LFB244:
	pushq	%rbp
LCFI1281:
	movq	%rsp, %rbp
LCFI1282:
	pushq	%r15
LCFI1283:
	pushq	%r14
LCFI1284:
	pushq	%r13
LCFI1285:
	pushq	%r12
LCFI1286:
	pushq	%rbx
LCFI1287:
	subq	$312, %rsp
LCFI1288:
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movzbl	(%rsi), %eax
	testb	%al, %al
	je	L3573
	movq	%rsi, %rdx
	movl	$0, -256(%rbp)
	jmp	L3603
	.align 4,0x90
L3605:
	incq	%rdx
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	L3604
L3603:
	cmpb	$37, %al
	jne	L3605
	addq	$2, %rdx
	movzbl	(%rdx), %eax
	cmpb	$37, %al
	je	L3603
	incl	-256(%rbp)
	testb	%al, %al
	jne	L3603
L3604:
	movq	_smp_nil@GOTPCREL(%rip), %r10
	movq	24(%r10), %rax
	movq	%rax, -224(%rbp)
	movq	16(%r10), %rdx
	movq	%rdx, -232(%rbp)
	movzbl	8(%r10), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	sarb	$7, %cl
	movb	%cl, -233(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -234(%rbp)
	movq	(%r10), %rax
	movq	%rax, -248(%rbp)
	leaq	-144(%rbp), %rdx
	movq	%rdx, -296(%rbp)
	movl	-256(%rbp), %r12d
	testl	%r12d, %r12d
	jle	L3581
	movq	-224(%rbp), %r14
	movq	-232(%rbp), %r9
	movl	$0, -252(%rbp)
	leaq	-80(%rbp), %rcx
	movq	%rcx, -288(%rbp)
	jmp	L3583
	.align 4,0x90
L3584:
	cmpl	8(%r13), %eax
	je	L3606
	cmpq	$0, 32(%r14)
	je	L3607
L3590:
	movq	32(%r14), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, 24(%rax)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %ecx
	movzbl	8(%rax), %edx
	andl	$-4, %edx
	andl	$1, %r12d
	orl	%ecx, %edx
	orl	%r12d, %edx
	movb	%dl, 8(%rax)
	movq	%r15, (%rax)
	movq	%r13, 16(%rax)
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	L3589
	movq	24(%rax), %r14
	movq	16(%rax), %r9
L3586:
	incl	-252(%rbp)
	movl	-256(%rbp), %ecx
	cmpl	%ecx, -252(%rbp)
	je	L3581
L3583:
	movq	-280(%rbp), %rdx
	movq	8(%rdx), %rax
	leaq	32(%rax), %rdx
	movq	-280(%rbp), %rcx
	movq	%rdx, 8(%rcx)
	movq	16(%rax), %r8
	movzbl	8(%rax), %edx
	movq	(%rax), %rsi
	movq	24(%rax), %rdi
	movq	%rdi, -88(%rbp)
	movq	%r8, -96(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-104(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	(%r10), %rax
	movq	%rax, -144(%rbp)
	movq	8(%r10), %rax
	movq	%rax, -136(%rbp)
	movq	16(%r10), %rax
	movq	%rax, -128(%rbp)
	movq	24(%r10), %rax
	movq	%rax, -120(%rbp)
	movq	%rsi, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%rdi, 24(%rsp)
	movq	-296(%rbp), %rdx
	movl	$1, %esi
	movq	-288(%rbp), %rdi
	movq	%r9, -312(%rbp)
	movq	%r10, -320(%rbp)
	call	_smpObject_cons
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)
	movzbl	-72(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-80(%rbp), %r15
	movq	-64(%rbp), %r13
	movq	_smpType_id_nil@GOTPCREL(%rip), %rdx
	movl	(%rdx), %eax
	movq	-312(%rbp), %r9
	cmpl	%eax, 8(%r9)
	movq	-320(%rbp), %r10
	jne	L3584
	movq	%r15, -248(%rbp)
	movb	%r12b, -234(%rbp)
	movb	%bl, -233(%rbp)
	movq	%r13, -232(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	%rcx, %r14
	movq	%r13, %r9
	jmp	L3586
	.align 4,0x90
L3606:
	movq	$0, 32(%r14)
L3589:
	movq	24(%r10), %r14
	movq	16(%r10), %r9
	jmp	L3586
L3573:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -224(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -232(%rbp)
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	sarb	$7, %cl
	movb	%cl, -233(%rbp)
	sall	$7, %edx
	sarb	$7, %dl
	movb	%dl, -234(%rbp)
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movl	$0, -256(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -296(%rbp)
L3581:
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	-296(%rbp), %rdi
	call	_obj_init
	movq	-272(%rbp), %rsi
	movq	-296(%rbp), %rdi
	call	_obj_init_str
	movzbl	-136(%rbp), %edx
	movq	-120(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-200(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -200(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -152(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	andb	$1, -233(%rbp)
	movzbl	-233(%rbp), %edx
	addl	%edx, %edx
	movzbl	-168(%rbp), %eax
	andl	$-4, %eax
	andb	$1, -234(%rbp)
	orl	%edx, %eax
	orb	-234(%rbp), %al
	movb	%al, -168(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-208(%rbp), %rdx
	movq	_smp_global@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rsp)
	movl	-256(%rbp), %esi
	movq	-264(%rbp), %rdi
	call	_smpGlobal_sprintf_arg
	movq	-264(%rbp), %rax
	addq	$312, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L3607:
	movl	$32, %edi
	movq	%r10, -320(%rbp)
	call	_malloc
	movq	%rax, 32(%r14)
	movq	-320(%rbp), %r10
	jmp	L3590
LFE244:
	.align 4,0x90
.globl _smpGlobal_sprintf
_smpGlobal_sprintf:
LFB243:
	pushq	%rbp
LCFI1289:
	movq	%rsp, %rbp
LCFI1290:
	pushq	%rbx
LCFI1291:
	subq	$248, %rsp
LCFI1292:
	movq	%rdi, %rbx
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	movzbl	%al, %edx
	leaq	0(,%rdx,4), %rax
	leaq	L3609(%rip), %rdx
	subq	%rax, %rdx
	leaq	-17(%rbp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L3609:
	leaq	-224(%rbp), %rdx
	movl	$16, -224(%rbp)
	movl	$48, -220(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	call	_smpGlobal_vsprintf
	movq	%rbx, %rax
	addq	$248, %rsp
	popq	%rbx
	leave
	ret
LFE243:
	.cstring
LC82:
	.ascii "(%w %w)\0"
	.text
	.align 4,0x90
.globl _smpPair_write
_smpPair_write:
LFB332:
	pushq	%rbp
LCFI1293:
	movq	%rsp, %rbp
LCFI1294:
	pushq	%rbx
LCFI1295:
	subq	$72, %rsp
LCFI1296:
	movq	%rdi, %rbx
	movq	40(%rbp), %rcx
	movq	32(%rcx), %rdx
	testq	%rdx, %rdx
	je	L3615
L3612:
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
	leaq	LC82(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_smpGlobal_sprintf
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L3615:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L3612
LFE332:
	.cstring
LC83:
	.ascii "(%s %s)\0"
	.text
	.align 4,0x90
.globl _smpPair_to_s
_smpPair_to_s:
LFB331:
	pushq	%rbp
LCFI1297:
	movq	%rsp, %rbp
LCFI1298:
	pushq	%rbx
LCFI1299:
	subq	$72, %rsp
LCFI1300:
	movq	%rdi, %rbx
	movq	40(%rbp), %rcx
	movq	32(%rcx), %rdx
	testq	%rdx, %rdx
	je	L3620
L3617:
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
	leaq	LC83(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_smpGlobal_sprintf
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L3620:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	jmp	L3617
LFE331:
	.cstring
LC85:
	.ascii "various types: %d, %f, %x, %o\0"
	.text
	.align 4,0x90
.globl _test_printf
_test_printf:
LFB142:
	pushq	%rbp
LCFI1301:
	movq	%rsp, %rbp
LCFI1302:
	pushq	%r15
LCFI1303:
	pushq	%r14
LCFI1304:
	pushq	%r13
LCFI1305:
	pushq	%r12
LCFI1306:
	pushq	%rbx
LCFI1307:
	subq	$232, %rsp
LCFI1308:
	leaq	-240(%rbp), %r15
	movl	$128, %edx
	xorl	%esi, %esi
	movq	%r15, %rdi
	call	_memset
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$18, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-80(%rbp), %r14
	movq	_smpType_int@GOTPCREL(%rip), %r12
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	_obj_init
	movq	%rbx, -56(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movzbl	-104(%rbp), %edx
	movq	%rbx, -216(%rbp)
	movq	%rax, -224(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-232(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	movsd	LC84(%rip), %xmm0
	movq	%rbx, %rdi
	call	_mpfr_set_d
	leaq	-112(%rbp), %r13
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	movq	%r13, %rdi
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movzbl	-72(%rbp), %edx
	movq	%rbx, -184(%rbp)
	movq	%rax, -192(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-200(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	_obj_init
	movq	%rbx, -56(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movzbl	-104(%rbp), %edx
	movq	%rbx, -152(%rbp)
	movq	%rax, -160(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-168(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movzbl	-72(%rbp), %edx
	movq	%rbx, -120(%rbp)
	movq	%rax, -128(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-136(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -136(%rbp)
	movq	%rsi, -144(%rbp)
	leaq	-272(%rbp), %rdi
	movq	%r15, %rcx
	movl	$4, %edx
	leaq	LC85(%rip), %rsi
	xorl	%eax, %eax
	call	_smpGlobal_sprintf
	xorl	%eax, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE142:
	.align 4,0x90
.globl _smp_print
_smp_print:
LFB237:
	pushq	%rbp
LCFI1309:
	movq	%rsp, %rbp
LCFI1310:
	movq	%rbx, -40(%rbp)
LCFI1311:
	movq	%r12, -32(%rbp)
LCFI1312:
	movq	%r13, -24(%rbp)
LCFI1313:
	movq	%r14, -16(%rbp)
LCFI1314:
	movq	%r15, -8(%rbp)
LCFI1315:
	subq	$160, %rsp
LCFI1316:
	movq	%rdi, %r13
	movq	40(%rbp), %r14
	movq	32(%rbp), %r15
	movzbl	24(%rbp), %eax
	movq	16(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movl	%eax, %edx
	andl	$2, %edx
	movb	%dl, -113(%rbp)
	movl	%eax, %edx
	andl	$1, %edx
	movb	%dl, -114(%rbp)
	movq	-112(%rbp), %rax
	leaq	-80(%rbp), %rdi
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	%r14, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	call	_smpObject_funcall
	movq	-56(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movzbl	-72(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	leaq	LC5(%rip), %rsi
	movq	(%rdx), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3624
	movq	-88(%rbp), %rax
	movq	%rax, 24(%r13)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%r13)
	movq	-96(%rbp), %rdx
	movq	%rdx, (%r13)
	movq	-104(%rbp), %rax
	movq	%rax, 16(%r13)
L3623:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L3624:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	-88(%rbp), %rdx
	movq	(%rdx), %rdi
	call	_fputs
	movq	%r14, 24(%r13)
	movq	%r15, 16(%r13)
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	orb	-113(%rbp), %al
	orb	-114(%rbp), %al
	movb	%al, 8(%r13)
	movq	-112(%rbp), %rax
	movq	%rax, (%r13)
	jmp	L3623
LFE237:
	.align 4,0x90
.globl _smpGlobal_fprint
_smpGlobal_fprint:
LFB234:
	pushq	%rbp
LCFI1317:
	movq	%rsp, %rbp
LCFI1318:
	movq	%rbx, -40(%rbp)
LCFI1319:
	movq	%r12, -32(%rbp)
LCFI1320:
	movq	%r13, -24(%rbp)
LCFI1321:
	movq	%r14, -16(%rbp)
LCFI1322:
	movq	%r15, -8(%rbp)
LCFI1323:
	addq	$-128, %rsp
LCFI1324:
	movq	%rdi, %r13
	movq	%rsi, -96(%rbp)
	leaq	-80(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	call	_smpObject_funcall
	movq	-56(%rbp), %r15
	movzbl	-72(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %r14
	leaq	LC5(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3629
	movq	%r15, 24(%r13)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%r13)
	movq	-88(%rbp), %rax
	movq	%rax, (%r13)
	movq	%r14, 16(%r13)
L3628:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L3629:
	movq	-96(%rbp), %rsi
	movq	(%r15), %rdi
	call	_fputs
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
	jmp	L3628
LFE234:
	.cstring
LC86:
	.ascii "(array\0"
	.text
	.align 4,0x90
.globl _smpArray_write
_smpArray_write:
LFB175:
	pushq	%rbp
LCFI1325:
	movq	%rsp, %rbp
LCFI1326:
	pushq	%r15
LCFI1327:
	pushq	%r14
LCFI1328:
	pushq	%r13
LCFI1329:
	pushq	%r12
LCFI1330:
	pushq	%rbx
LCFI1331:
	subq	$280, %rsp
LCFI1332:
	movq	%rdi, %r12
	movq	40(%rbp), %rbx
	movq	_gc_activep@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, -244(%rbp)
	movq	_gc_activep@GOTPCREL(%rip), %rdx
	movl	$0, (%rdx)
	leaq	-208(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rdx
	movq	%rdx, -264(%rbp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_obj_init
	leaq	LC86(%rip), %rsi
	movq	-256(%rbp), %rdi
	call	_obj_init_str
	movq	-208(%rbp), %rax
	movq	%rax, (%r12)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%r12)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%r12)
	movq	-264(%rbp), %rsi
	movq	-256(%rbp), %rdi
	call	_obj_init
	leaq	LC71(%rip), %rsi
	movq	-256(%rbp), %rdi
	call	_obj_init_str
	movq	-208(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	(%rbx), %rax
	movq	8(%rbx), %r14
	leaq	-240(%rbp), %r15
	testq	%r14, %r14
	je	L3634
	movq	%rax, %rbx
	xorl	%r13d, %r13d
	leaq	-112(%rbp), %rax
	movq	%rax, -280(%rbp)
	leaq	-144(%rbp), %rdx
	movq	%rdx, -272(%rbp)
	.align 4,0x90
L3636:
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC72(%rip), %rsi
	movq	%r15, %rdi
	call	_smpObject_funcall
	movq	-240(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	(%r12), %rax
	movq	%rax, (%rsp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	-280(%rbp), %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	call	_smpString_add_now
	movq	(%r12), %rax
	movq	%rax, (%rsp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	-272(%rbp), %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	call	_smpString_add_now
	incq	%r13
	addq	$32, %rbx
	cmpq	%r14, %r13
	jne	L3636
L3634:
	movq	-264(%rbp), %rsi
	movq	-256(%rbp), %rdi
	call	_obj_init
	leaq	LC73(%rip), %rsi
	movq	-256(%rbp), %rdi
	call	_obj_init_str
	movq	-208(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-176(%rbp), %rdx
	movq	(%r12), %rax
	movq	%rax, (%rsp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	movq	%r15, %rdi
	call	_smpString_add_now
	movl	-244(%rbp), %edx
	movq	_gc_activep@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movq	%r12, %rax
	addq	$280, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE175:
	.cstring
LC87:
	.ascii "[\0"
LC88:
	.ascii ", \0"
LC89:
	.ascii "]\0"
	.text
	.align 4,0x90
.globl _smpArray_to_s
_smpArray_to_s:
LFB174:
	pushq	%rbp
LCFI1333:
	movq	%rsp, %rbp
LCFI1334:
	pushq	%r15
LCFI1335:
	pushq	%r14
LCFI1336:
	pushq	%r13
LCFI1337:
	pushq	%r12
LCFI1338:
	pushq	%rbx
LCFI1339:
	subq	$264, %rsp
LCFI1340:
	movq	%rdi, %r12
	movq	40(%rbp), %rbx
	leaq	-208(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	%rax, %rsi
	movq	-264(%rbp), %rdi
	call	_obj_init
	leaq	LC87(%rip), %rsi
	movq	-264(%rbp), %rdi
	call	_obj_init_str
	movq	-208(%rbp), %rax
	movq	%rax, (%r12)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%r12)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%r12)
	movq	-248(%rbp), %rsi
	movq	-264(%rbp), %rdi
	call	_obj_init
	leaq	LC88(%rip), %rsi
	movq	-264(%rbp), %rdi
	call	_obj_init_str
	movq	-208(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	(%rbx), %r13
	movq	8(%rbx), %r14
	leaq	-240(%rbp), %r15
	testq	%r14, %r14
	je	L3642
	leaq	-240(%rbp), %r15
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	movq	%r15, %rdi
	call	_smpObject_funcall
	movq	-240(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	32(%r13), %rbx
	xorl	%r13d, %r13d
	leaq	-144(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -272(%rbp)
	jmp	L3646
	.align 4,0x90
L3643:
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	movq	%r15, %rdi
	call	_smpObject_funcall
	movq	-240(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -120(%rbp)
	testq	%r13, %r13
	je	L3644
	movq	(%r12), %rax
	movq	%rax, (%rsp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	-272(%rbp), %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	call	_smpString_add_now
L3644:
	addq	$32, %rbx
L3646:
	movq	(%r12), %rax
	movq	%rax, (%rsp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	-256(%rbp), %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	call	_smpString_add_now
	incq	%r13
	cmpq	%r14, %r13
	jne	L3643
L3642:
	movq	-248(%rbp), %rsi
	movq	-264(%rbp), %rdi
	call	_obj_init
	leaq	LC89(%rip), %rsi
	movq	-264(%rbp), %rdi
	call	_obj_init_str
	movq	-208(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-176(%rbp), %rdx
	movq	(%r12), %rax
	movq	%rax, (%rsp)
	movq	8(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	movq	%r15, %rdi
	call	_smpString_add_now
	movq	%r12, %rax
	addq	$264, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE174:
	.cstring
LC90:
	.ascii "make_list\0"
LC91:
	.ascii "clear\0"
	.text
	.align 4,0x90
.globl _make_list
_make_list:
LFB144:
	pushq	%rbp
LCFI1341:
	movq	%rsp, %rbp
LCFI1342:
	movq	%rbx, -40(%rbp)
LCFI1343:
	movq	%r12, -32(%rbp)
LCFI1344:
	movq	%r13, -24(%rbp)
LCFI1345:
	movq	%r14, -16(%rbp)
LCFI1346:
	movq	%r15, -8(%rbp)
LCFI1347:
	subq	$256, %rsp
LCFI1348:
	movq	%rdi, %r13
	movq	%rdx, %r14
	movq	40(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	32(%rbp), %r15
	movzbl	24(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	16(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	_smpInteger_zero@GOTPCREL(%rip), %rsi
	movq	16(%rsi), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	cmpl	%ecx, %edx
	je	L3674
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L3675
L3655:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
L3648:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L3675:
	movq	24(%rsi), %rdi
	movl	8(%r15), %eax
	cmpl	%eax, %ecx
	je	L3676
	cmpl	%eax, %edx
	jne	L3655
	movl	$1, %edx
	movq	-216(%rbp), %rsi
	call	_mpfr_cmp3
	cmpl	$0, %eax
	jg	L3672
L3673:
	jne	L3655
	testl	%eax, %eax
	jg	L3672
	jmp	L3655
	.align 4,0x90
L3674:
	movq	24(%rsi), %rsi
	movq	-216(%rbp), %rdi
	call	___gmpz_cmp
	cmpl	$0, %eax
	jle	L3673
	.align 4,0x90
L3672:
	movq	-216(%rbp), %rax
	movq	%rax, 40(%rbp)
	movq	%r15, 32(%rbp)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	24(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 24(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, 16(%rbp)
	leaq	-80(%rbp), %rdi
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smpInteger_one@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdx
	movl	$1, %esi
	call	_smpInteger_sub
	leaq	-112(%rbp), %r12
	movq	(%r14), %rax
	movq	%rax, (%rsp)
	movq	8(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r14), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%r12, %rdi
	call	_smpInteger_add
	movq	(%r14), %rax
	movq	%rax, -144(%rbp)
	movq	8(%r14), %rax
	movq	%rax, -136(%rbp)
	movq	16(%r14), %rax
	movq	%rax, -128(%rbp)
	movq	24(%r14), %rax
	movq	%rax, -120(%rbp)
	leaq	-176(%rbp), %r14
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r12, %rcx
	movl	$1, %edx
	leaq	LC90(%rip), %rsi
	movq	%r14, %rdi
	call	_smpObject_funcall
	leaq	-208(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	call	_smpObject_funcall
	movq	-160(%rbp), %rbx
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3668
	movq	-176(%rbp), %rax
	movq	%rax, (%r13)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	%rbx, 16(%r13)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%r13)
	jmp	L3648
L3668:
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r14, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpObject_cons
	jmp	L3648
L3676:
	movq	-216(%rbp), %rsi
	call	_mpfr_cmp_z
	cmpl	$0, %eax
	jg	L3672
	jmp	L3673
LFE144:
	.align 4,0x90
.globl _smpObject_write_class
_smpObject_write_class:
LFB126:
	pushq	%rbp
LCFI1349:
	movq	%rsp, %rbp
LCFI1350:
	pushq	%rbx
LCFI1351:
	subq	$40, %rsp
LCFI1352:
	movq	%rdi, %rbx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	call	_smpObject_funcall
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE126:
	.align 4,0x90
.globl _smpObject_write
_smpObject_write:
LFB125:
	pushq	%rbp
LCFI1353:
	movq	%rsp, %rbp
LCFI1354:
	pushq	%rbx
LCFI1355:
	subq	$40, %rsp
LCFI1356:
	movq	%rdi, %rbx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	call	_smpObject_funcall
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE125:
	.cstring
LC92:
	.ascii "eq?\0"
	.text
	.align 4,0x90
.globl _smpObject_equalp
_smpObject_equalp:
LFB108:
	pushq	%rbp
LCFI1357:
	movq	%rsp, %rbp
LCFI1358:
	pushq	%rbx
LCFI1359:
	subq	$40, %rsp
LCFI1360:
	movq	%rdi, %rbx
	movq	%rdx, %rcx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	%esi, %edx
	leaq	LC92(%rip), %rsi
	call	_smpObject_funcall
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE108:
	.align 4,0x90
.globl _smpObject_eql
_smpObject_eql:
LFB107:
	pushq	%rbp
LCFI1361:
	movq	%rsp, %rbp
LCFI1362:
	pushq	%rbx
LCFI1363:
	subq	$40, %rsp
LCFI1364:
	movq	%rdi, %rbx
	movq	%rdx, %rcx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	%esi, %edx
	leaq	LC76(%rip), %rsi
	call	_smpObject_funcall
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE107:
	.align 4,0x90
.globl _obj_clear
_obj_clear:
LFB99:
	pushq	%rbp
LCFI1365:
	movq	%rsp, %rbp
LCFI1366:
	pushq	%r12
LCFI1367:
	pushq	%rbx
LCFI1368:
	subq	$64, %rsp
LCFI1369:
	movq	%rdi, %r12
	movq	%rsi, %rbx
	movq	16(%rsi), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L3694
	leaq	-48(%rbp), %rdi
	movq	(%rsi), %rax
	movq	%rax, (%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	24(%rsi), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	call	_smpObject_funcall
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L3689
	call	_free
L3689:
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	L3691
	call	_free
L3691:
	movq	$0, 16(%rbx)
	movq	$0, (%rbx)
	movq	$0, 24(%rbx)
	movl	$32, %edx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_memmove
	movq	%r12, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
	.align 4,0x90
L3694:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rdi)
	movq	%r12, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
LFE99:
	.cstring
LC93:
	.ascii "compute-hash\0"
	.text
	.align 4,0x90
.globl _obj_hash
_obj_hash:
LFB98:
	pushq	%rbp
LCFI1370:
	movq	%rsp, %rbp
LCFI1371:
	pushq	%r15
LCFI1372:
	pushq	%r14
LCFI1373:
	pushq	%r13
LCFI1374:
	pushq	%r12
LCFI1375:
	pushq	%rbx
LCFI1376:
	subq	$88, %rsp
LCFI1377:
	movq	%rdi, -96(%rbp)
	movq	40(%rbp), %r15
	movzbl	24(%rbp), %ebx
	movl	%ebx, %eax
	sall	$6, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movl	%ebx, %edx
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	32(%rbp), %r14
	leaq	LC5(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3696
	movq	(%r15), %rax
	movzbl	(%rax), %edx
	movl	$5381, %esi
	testb	%dl, %dl
	je	L3700
	movq	%rax, %rcx
	.align 4,0x90
L3701:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L3701
L3700:
	movq	-96(%rbp), %rdx
	movl	%esi, (%rdx)
	xorl	%ecx, %ecx
L3702:
	movl	%ecx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L3696:
	movq	%r15, 40(%rbp)
	andl	$1, %r12d
	leal	(%r12,%r12), %eax
	andl	$-4, %ebx
	andl	$1, %r13d
	orl	%eax, %ebx
	orl	%r13d, %ebx
	movb	%bl, 24(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, 16(%rbp)
	movq	%r14, 32(%rbp)
	leaq	-80(%rbp), %rdi
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r15, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC93(%rip), %rsi
	call	_smpObject_funcall
	movq	-64(%rbp), %rax
	movl	8(%rax), %edx
	movl	$1, %ecx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	jne	L3702
	movq	%r15, %rdi
	call	___gmpz_get_si
	movq	-96(%rbp), %rdx
	movl	%eax, (%rdx)
	xorl	%ecx, %ecx
	jmp	L3702
LFE98:
	.cstring
	.align 3
LC94:
	.ascii "The object with (key %s and core %lx) is not on the GC stack.\12\0"
LC95:
	.ascii "gc_mark\0"
	.text
	.align 4,0x90
.globl _gc_mark_recursive
_gc_mark_recursive:
LFB83:
	pushq	%rbp
LCFI1378:
	movq	%rsp, %rbp
LCFI1379:
	subq	$64, %rsp
LCFI1380:
	testb	$2, 24(%rbp)
	je	L3713
L3708:
	movq	16(%rbp), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	L3710
	movl	$1, (%rax)
	leaq	-32(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	call	_smpObject_funcall
L3710:
	xorl	%eax, %eax
	leave
	ret
	.align 4,0x90
L3713:
	movq	40(%rbp), %rdx
	movq	%rdi, %rsi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	jmp	L3708
LFE83:
	.align 4,0x90
.globl _smpGlobal_fprintf
_smpGlobal_fprintf:
LFB235:
	pushq	%rbp
LCFI1381:
	movq	%rsp, %rbp
LCFI1382:
	movq	%rbx, -40(%rbp)
LCFI1383:
	movq	%r12, -32(%rbp)
LCFI1384:
	movq	%r13, -24(%rbp)
LCFI1385:
	movq	%r14, -16(%rbp)
LCFI1386:
	movq	%r15, -8(%rbp)
LCFI1387:
	subq	$416, %rsp
LCFI1388:
	movq	%rdi, %r13
	movq	%rsi, -376(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movzbl	%al, %ecx
	leaq	0(,%rcx,4), %rax
	leaq	L3715(%rip), %rcx
	subq	%rax, %rcx
	leaq	-49(%rbp), %rax
	jmp	*%rcx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L3715:
	movq	%rdx, %rsi
	leaq	-256(%rbp), %rdx
	movl	$24, -256(%rbp)
	movl	$48, -252(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-288(%rbp), %rdi
	call	_smpGlobal_vsprintf
	movq	-264(%rbp), %rax
	movq	%rax, -368(%rbp)
	movzbl	-280(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-288(%rbp), %r15
	movq	-272(%rbp), %r14
	leaq	LC15(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3716
	movq	-368(%rbp), %rax
	movq	%rax, 24(%r13)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%r13)
	movq	%r15, (%r13)
	movq	%r14, 16(%r13)
L3714:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L3716:
	movq	-368(%rbp), %rax
	movq	%rax, -296(%rbp)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	-312(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, -312(%rbp)
	movq	%r15, -320(%rbp)
	movq	%r14, -304(%rbp)
	leaq	-352(%rbp), %rdi
	movq	%r15, (%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	-368(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	call	_smpObject_funcall
	movq	-328(%rbp), %r15
	movzbl	-344(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-352(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-336(%rbp), %r14
	leaq	LC5(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3719
	movq	%r15, 24(%r13)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%r13)
	movq	-360(%rbp), %rax
	movq	%rax, (%r13)
	movq	%r14, 16(%r13)
	jmp	L3714
L3719:
	movq	-376(%rbp), %rsi
	movq	(%r15), %rdi
	call	_fputs
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
	jmp	L3714
LFE235:
	.cstring
LC96:
	.ascii "%s\12\0"
	.text
	.align 4,0x90
.globl _smpException_print
_smpException_print:
LFB192:
	pushq	%rbp
LCFI1389:
	movq	%rsp, %rbp
LCFI1390:
	pushq	%rbx
LCFI1391:
	subq	$40, %rsp
LCFI1392:
	movq	%rdi, %rbx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC96(%rip), %rdx
	movq	_smp_stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	xorl	%eax, %eax
	call	_smpGlobal_fprintf
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE192:
	.cstring
LC97:
	.ascii "eql?\0"
	.text
	.align 4,0x90
.globl _smpHash_get
_smpHash_get:
LFB257:
	pushq	%rbp
LCFI1393:
	movq	%rsp, %rbp
LCFI1394:
	pushq	%r15
LCFI1395:
	pushq	%r14
LCFI1396:
	pushq	%r13
LCFI1397:
	pushq	%r12
LCFI1398:
	pushq	%rbx
LCFI1399:
	subq	$184, %rsp
LCFI1400:
	movq	%rdi, -184(%rbp)
	movq	%rdx, %r14
	movq	40(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	(%rax), %rdx
	movq	%rdx, -160(%rbp)
	movq	40(%rax), %rcx
	movq	%rcx, -152(%rbp)
	movq	24(%r14), %r15
	movzbl	8(%r14), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	(%r14), %rax
	movq	%rax, -120(%rbp)
	movq	16(%r14), %r13
	leaq	LC5(%rip), %rsi
	movq	(%r13), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3725
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	movl	$5381, %eax
	testb	%dl, %dl
	je	L3729
	movl	$5381, %esi
	.align 4,0x90
L3730:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L3730
	movslq	%esi,%rax
L3729:
	xorl	%edx, %edx
	divq	-152(%rbp)
	movslq	%edx,%rdx
	salq	$5, %rdx
	movq	-160(%rbp), %r13
	addq	%rdx, %r13
	cmpq	$0, 24(%r13)
	je	L3734
	movq	16(%r13), %rax
	movl	8(%rax), %eax
	movq	_smpType_id_list@GOTPCREL(%rip), %rcx
	cmpl	(%rcx), %eax
	je	L3747
L3734:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	-184(%rbp), %rbx
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
L3724:
	movq	-184(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L3725:
	movq	%r15, -88(%rbp)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	-104(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, -104(%rbp)
	movq	-120(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	%r13, -96(%rbp)
	leaq	-80(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	%r15, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC93(%rip), %rsi
	call	_smpObject_funcall
	movq	-64(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L3752
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$1, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-112(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -88(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movzbl	-72(%rbp), %edx
	movq	-184(%rbp), %rcx
	movq	%rbx, 24(%rcx)
	movq	%rax, 16(%rcx)
	movl	%edx, %ecx
	andl	$2, %ecx
	movq	-184(%rbp), %rbx
	movzbl	8(%rbx), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, 8(%rbx)
	movq	%rsi, (%rbx)
	jmp	L3724
L3747:
	leaq	-112(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	L3736
	.align 4,0x90
L3740:
	movq	24(%r13), %rax
	movq	32(%rax), %r13
	testq	%r13, %r13
	je	L3753
L3736:
	movq	24(%r13), %rax
	movq	16(%rax), %rdx
	movq	%rdx, -144(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	(%r14), %rax
	movq	%rax, (%rsp)
	movq	8(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r14), %rax
	movq	%rax, 24(%rsp)
	movq	-168(%rbp), %rcx
	movl	$1, %edx
	leaq	LC97(%rip), %rsi
	movq	-192(%rbp), %rdi
	call	_smpObject_funcall
	movq	-88(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movzbl	-104(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-96(%rbp), %r15
	leaq	LC15(%rip), %rsi
	movq	(%r15), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3754
	movq	-144(%rbp), %rdx
	movl	8(%rdx), %eax
	movq	_smpType_id_list@GOTPCREL(%rip), %rcx
	cmpl	(%rcx), %eax
	jne	L3740
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	-128(%rbp), %rbx
	cmpq	%rbx, 24(%rdx)
	je	L3740
	movq	-168(%rbp), %rax
	movq	32(%rax), %rsi
	testq	%rsi, %rsi
	je	L3743
	movl	$32, %edx
	movq	-184(%rbp), %rdi
	call	_memmove
	jmp	L3724
L3752:
	movq	%r15, %rdi
	call	___gmpz_get_si
	cltq
	jmp	L3729
L3753:
	movq	-176(%rbp), %rbx
	movq	8(%rbx), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	16(%rbx), %rax
	movq	%rax, 8(%rdx)
	movq	24(%rbx), %rax
	movq	%rax, 16(%rdx)
	movq	32(%rbx), %rax
	movq	%rax, 24(%rdx)
	jmp	L3724
L3754:
	movq	-128(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movq	-184(%rbp), %rbx
	movzbl	8(%rbx), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%rbx)
	movq	-136(%rbp), %rax
	movq	%rax, (%rbx)
	movq	%r15, 16(%rbx)
	jmp	L3724
L3743:
	movq	(%rdx), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	jmp	L3724
LFE257:
	.align 4,0x90
.globl _smpHash_core_add_now
_smpHash_core_add_now:
LFB251:
	pushq	%rbp
LCFI1401:
	movq	%rsp, %rbp
LCFI1402:
	pushq	%r15
LCFI1403:
	pushq	%r14
LCFI1404:
	pushq	%r13
LCFI1405:
	pushq	%r12
LCFI1406:
	pushq	%rbx
LCFI1407:
	subq	$216, %rsp
LCFI1408:
	movq	%rdi, %r13
	movq	40(%rbp), %r15
	movq	32(%rbp), %rax
	movq	%rax, -200(%rbp)
	movzbl	24(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movb	%dl, -201(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -202(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	24(%r15), %rdx
	movq	%rdx, -184(%rbp)
	movq	16(%r15), %r14
	movzbl	8(%r15), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	(%r15), %rax
	movq	%rax, -192(%rbp)
	leaq	LC5(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3756
	movq	-184(%rbp), %rdx
	movq	(%rdx), %rcx
	movzbl	(%rcx), %edx
	movl	$5381, %eax
	testb	%dl, %dl
	je	L3760
	movl	$5381, %esi
	.align 4,0x90
L3761:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L3761
	movslq	%esi,%rax
L3760:
	xorl	%edx, %edx
	divq	40(%r13)
	movslq	%edx,%rsi
	salq	$5, %rsi
	movq	%rsi, %rax
	addq	(%r13), %rax
	cmpq	$0, 24(%rax)
	je	L3766
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L3766
L3768:
	movq	%rsi, %rbx
	addq	(%r13), %rbx
	movq	%r15, 40(%rbp)
	movq	-200(%rbp), %rdx
	movq	%rdx, 32(%rbp)
	andb	$1, -201(%rbp)
	movzbl	-201(%rbp), %edx
	addl	%edx, %edx
	movzbl	24(%rbp), %eax
	andl	$-4, %eax
	andb	$1, -202(%rbp)
	orl	%edx, %eax
	orb	-202(%rbp), %al
	movb	%al, 24(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, 16(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-200(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r15, 24(%rsp)
	movq	%rbx, %rdx
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
	incq	56(%r13)
	movq	40(%r13), %rsi
	movq	48(%r13), %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rax, %rcx
	cvtsi2sdq	%rax, %xmm0
	testq	%rax, %rax
	js	L3793
L3771:
	movsd	LC7(%rip), %xmm2
	xorl	%ecx, %ecx
	ucomisd	%xmm2, %xmm0
	jbe	L3765
	leaq	-144(%rbp), %r14
	cvtsi2sdq	%rsi, %xmm1
	testq	%rsi, %rsi
	js	L3794
L3774:
	movapd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	LC8(%rip), %xmm0
	movsd	LC9(%rip), %xmm1
	cvttsd2siq	%xmm0, %rsi
	ucomisd	%xmm1, %xmm0
	jae	L3795
L3776:
	movq	%r14, %rdi
	call	_smpHash_core_init_capacity
	cmpq	$0, 40(%r13)
	je	L3796
	movq	(%r13), %rdi
	xorl	%r12d, %r12d
	.align 4,0x90
L3780:
	movq	%r12, %rax
	salq	$5, %rax
	leaq	(%rdi,%rax), %rbx
	cmpq	$0, 24(%rbx)
	je	L3781
	.align 4,0x90
L3787:
	movq	24(%rbx), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%r14, %rdi
	call	_smpHash_core_add_now
	movq	24(%rbx), %rax
	movq	32(%rax), %rbx
	testq	%rbx, %rbx
	jne	L3787
	movq	(%r13), %rdi
L3781:
	incq	%r12
	cmpq	%r12, 40(%r13)
	ja	L3780
L3779:
	testq	%rdi, %rdi
	je	L3784
	call	_free
L3784:
	movq	-144(%rbp), %rax
	movq	%rax, (%r13)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r13)
	movq	-112(%rbp), %rax
	movq	%rax, 32(%r13)
	movq	-104(%rbp), %rax
	movq	%rax, 40(%r13)
	movq	-96(%rbp), %rax
	movq	%rax, 48(%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 56(%r13)
	xorl	%ecx, %ecx
L3765:
	movl	%ecx, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L3766:
	incq	48(%r13)
	movq	(%r13), %rcx
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsi,%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsi,%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsi,%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsi,%rcx)
	jmp	L3768
L3756:
	movq	-184(%rbp), %rax
	movq	%rax, -56(%rbp)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, -72(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	%r14, -64(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC93(%rip), %rsi
	call	_smpObject_funcall
	movq	-128(%rbp), %rax
	movl	8(%rax), %edx
	movl	$1, %ecx
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	jne	L3765
	movq	-184(%rbp), %rdi
	call	___gmpz_get_si
	cltq
	jmp	L3760
L3795:
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rsi
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, %rsi
	jmp	L3776
L3793:
	shrq	%rax
	andl	$1, %ecx
	orq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	L3771
L3794:
	movq	%rsi, %rax
	shrq	%rax
	andl	$1, %esi
	orq	%rsi, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	L3774
L3796:
	movq	(%r13), %rdi
	jmp	L3779
LFE251:
	.align 4,0x90
.globl _smpHash_core_copy
_smpHash_core_copy:
LFB255:
	pushq	%rbp
LCFI1409:
	movq	%rsp, %rbp
LCFI1410:
	pushq	%r14
LCFI1411:
	pushq	%r13
LCFI1412:
	pushq	%r12
LCFI1413:
	pushq	%rbx
LCFI1414:
	subq	$32, %rsp
LCFI1415:
	movq	%rdi, %r12
	movq	%rsi, %r14
	cmpq	$0, 40(%rsi)
	je	L3798
	xorl	%r13d, %r13d
	.align 4,0x90
L3800:
	movq	%r13, %rbx
	salq	$5, %rbx
	addq	(%r14), %rbx
	cmpq	$0, 24(%rbx)
	je	L3801
	.align 4,0x90
L3804:
	movq	24(%rbx), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	%r12, %rdi
	call	_smpHash_core_add_now
	movq	24(%rbx), %rax
	movq	32(%rax), %rbx
	testq	%rbx, %rbx
	jne	L3804
L3801:
	incq	%r13
	cmpq	%r13, 40(%r14)
	ja	L3800
L3798:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
LFE255:
	.align 4,0x90
.globl _smpHash_add_now
_smpHash_add_now:
LFB250:
	pushq	%rbp
LCFI1416:
	movq	%rsp, %rbp
LCFI1417:
	pushq	%r15
LCFI1418:
	pushq	%r14
LCFI1419:
	pushq	%r13
LCFI1420:
	pushq	%r12
LCFI1421:
	pushq	%rbx
LCFI1422:
	subq	$136, %rsp
LCFI1423:
	movq	%rdi, %r14
	movq	%rdx, %r13
	movq	40(%rbp), %r15
	movq	16(%rdx), %r12
	movq	(%r12), %rbx
	leaq	LC75(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3808
	cmpq	$0, 24(%r12)
	je	L3810
	xorl	%ebx, %ebx
	jmp	L3812
	.align 4,0x90
L3839:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L3838
L3812:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC75(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L3839
L3808:
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	movq	%r15, %rdi
	call	_smpHash_core_add_now
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r14)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r14)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r14)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r14)
L3807:
	movq	%r14, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L3838:
	movq	16(%r13), %rax
	movq	(%rax), %rbx
L3810:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3816
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3825
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L3825
	movq	(%rdi), %r8
	leaq	LC75(%rip), %rsi
	movl	$5381, %ecx
	movl	$76, %edx
	testq	%r8, %r8
	je	L3825
L3823:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L3823
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L3825
	movq	8(%rax), %r15
	testq	%r15, %r15
	je	L3825
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L3828
L3829:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r15, %r12
	je	L3825
L3828:
	leaq	LC75(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3829
	movq	32(%rbx), %rsi
	jmp	L3822
L3816:
	movl	$32, %edx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_memmove
	jmp	L3807
L3825:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L3822:
	leaq	-80(%rbp), %rdi
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	%rax, (%r14)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r14)
	jmp	L3807
LFE250:
	.align 4,0x90
.globl _smp_println
_smp_println:
LFB241:
	pushq	%rbp
LCFI1424:
	movq	%rsp, %rbp
LCFI1425:
	movq	%rbx, -40(%rbp)
LCFI1426:
	movq	%r12, -32(%rbp)
LCFI1427:
	movq	%r13, -24(%rbp)
LCFI1428:
	movq	%r14, -16(%rbp)
LCFI1429:
	movq	%r15, -8(%rbp)
LCFI1430:
	subq	$208, %rsp
LCFI1431:
	movq	%rdi, %r15
	movq	40(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, -160(%rbp)
	movzbl	24(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movb	%dl, -161(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -162(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -64(%rbp)
	movzbl	-161(%rbp), %edx
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	movzbl	-162(%rbp), %ecx
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -72(%rbp)
	movq	-176(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	leaq	-112(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	call	_smpObject_funcall
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	movzbl	-104(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	movl	%eax, %ebx
	sall	$7, %ebx
	sarb	$7, %bl
	movq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %r14
	movq	(%r14), %r13
	leaq	LC5(%rip), %rsi
	movq	%r13, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3841
	movq	%r14, -144(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -136(%rbp)
	movl	%ebx, %r14d
	movl	%r12d, %ebx
	movq	-120(%rbp), %r12
L3843:
	leaq	LC15(%rip), %rsi
	movq	%r13, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3844
	movq	%r12, 24(%r15)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r15), %eax
	andl	$-4, %eax
	andl	$1, %r14d
	orl	%edx, %eax
	orl	%r14d, %eax
	movb	%al, 8(%r15)
	movq	-136(%rbp), %rdx
	movq	%rdx, (%r15)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%r15)
L3840:
	movq	%r15, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L3841:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	-120(%rbp), %rax
	movq	(%rax), %rdi
	call	_fputs
	movq	-160(%rbp), %rdx
	movq	(%rdx), %r13
	movq	%rdx, -144(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -136(%rbp)
	movzbl	-162(%rbp), %r14d
	movzbl	-161(%rbp), %ebx
	movq	-152(%rbp), %r12
	jmp	L3843
	.align 4,0x90
L3844:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	call	_fputc
	movq	-152(%rbp), %rdx
	movq	%rdx, 24(%r15)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%r15)
	andb	$1, -161(%rbp)
	movzbl	-161(%rbp), %edx
	addl	%edx, %edx
	movzbl	8(%r15), %eax
	andl	$-4, %eax
	andb	$1, -162(%rbp)
	orl	%edx, %eax
	orb	-162(%rbp), %al
	movb	%al, 8(%r15)
	movq	-176(%rbp), %rdx
	movq	%rdx, (%r15)
	jmp	L3840
LFE241:
	.align 4,0x90
.globl _smpGlobal_println_arg
_smpGlobal_println_arg:
LFB242:
	pushq	%rbp
LCFI1432:
	movq	%rsp, %rbp
LCFI1433:
	pushq	%rbx
LCFI1434:
	subq	$40, %rsp
LCFI1435:
	movq	%rdi, %rbx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	call	_smp_println
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE242:
	.cstring
LC98:
	.ascii "^[0123456789]+$\0"
LC99:
	.ascii "09821409\0"
	.text
	.align 4,0x90
.globl _test_regex
_test_regex:
LFB147:
	pushq	%rbp
LCFI1436:
	movq	%rsp, %rbp
LCFI1437:
	pushq	%r14
LCFI1438:
	pushq	%r13
LCFI1439:
	pushq	%r12
LCFI1440:
	pushq	%rbx
LCFI1441:
	subq	$160, %rsp
LCFI1442:
	movq	_gc_add_objectsp@GOTPCREL(%rip), %r14
	movl	$0, (%r14)
	leaq	-128(%rbp), %rbx
	movq	_smpType_string@GOTPCREL(%rip), %r12
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_obj_init
	leaq	LC98(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init_str
	movq	-104(%rbp), %r13
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_obj_init
	leaq	LC99(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init_str
	movq	-128(%rbp), %rsi
	movq	%rsi, -64(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-112(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	(%r13), %rsi
	movq	%rbx, %rdi
	call	_smpRegex_match_str
	movq	-112(%rbp), %rbx
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3851
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	%rbx, -80(%rbp)
	movq	-104(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	%rdx, %r10
	movq	%rbx, %r9
	movzbl	-88(%rbp), %edi
	movl	%edi, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	movl	%edi, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	%rax, %r8
L3853:
	movq	%r10, -72(%rbp)
	movq	%r9, -80(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movl	%edi, %eax
	andl	$-3, %eax
	orl	%edx, %eax
	andl	$1, %ecx
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, -88(%rbp)
	movq	%r8, -96(%rbp)
	leaq	-160(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	call	_smp_println
	movl	$1, (%r14)
	xorl	%eax, %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
	.align 4,0x90
L3851:
	movl	8(%rbx), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L3858
	movq	_smp_true@GOTPCREL(%rip), %rax
L3857:
	movq	24(%rax), %r10
	movq	16(%rax), %r9
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %esi
	sarb	$7, %sil
	movl	%edx, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rax), %r8
	movzbl	-88(%rbp), %edi
	jmp	L3853
	.align 4,0x90
L3858:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	jmp	L3857
LFE147:
	.align 4,0x90
.globl _smpGlobal_print_arg
_smpGlobal_print_arg:
LFB238:
	pushq	%rbp
LCFI1443:
	movq	%rsp, %rbp
LCFI1444:
	movq	%rbx, -40(%rbp)
LCFI1445:
	movq	%r12, -32(%rbp)
LCFI1446:
	movq	%r13, -24(%rbp)
LCFI1447:
	movq	%r14, -16(%rbp)
LCFI1448:
	movq	%r15, -8(%rbp)
LCFI1449:
	subq	$192, %rsp
LCFI1450:
	movq	%rdi, %r13
	movq	24(%rdx), %r15
	movq	16(%rdx), %rax
	movq	%rax, -136(%rbp)
	movzbl	8(%rdx), %ecx
	movq	(%rdx), %rdx
	movq	%rdx, -144(%rbp)
	movq	%r15, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	%ecx, %eax
	andl	$2, %eax
	movb	%al, -145(%rbp)
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	movb	%cl, -146(%rbp)
	orb	-145(%rbp), %al
	orl	%ecx, %eax
	movb	%al, -72(%rbp)
	movq	%rdx, -80(%rbp)
	leaq	-112(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	call	_smpObject_funcall
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	movzbl	-104(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %r14
	leaq	LC5(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3860
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r13)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%r13)
	movq	-128(%rbp), %rax
	movq	%rax, (%r13)
	movq	%r14, 16(%r13)
L3859:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L3860:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	-120(%rbp), %rax
	movq	(%rax), %rdi
	call	_fputs
	movq	%r15, 24(%r13)
	movq	-136(%rbp), %rax
	movq	%rax, 16(%r13)
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	orb	-145(%rbp), %al
	orb	-146(%rbp), %al
	movb	%al, 8(%r13)
	movq	-144(%rbp), %rax
	movq	%rax, (%r13)
	jmp	L3859
LFE238:
	.align 4,0x90
.globl _smp_printf_arg
_smp_printf_arg:
LFB240:
	pushq	%rbp
LCFI1451:
	movq	%rsp, %rbp
LCFI1452:
	movq	%rbx, -40(%rbp)
LCFI1453:
	movq	%r12, -32(%rbp)
LCFI1454:
	movq	%r13, -24(%rbp)
LCFI1455:
	movq	%r14, -16(%rbp)
LCFI1456:
	movq	%r15, -8(%rbp)
LCFI1457:
	subq	$224, %rsp
LCFI1458:
	movq	%rdi, %r13
	leaq	-80(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpGlobal_sprintf_arg
	movq	-56(%rbp), %r15
	movzbl	-72(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-64(%rbp), %r14
	leaq	LC15(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3865
	movq	%r15, 24(%r13)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%r13)
	movq	-176(%rbp), %rdx
	movq	%rdx, (%r13)
	movq	%r14, 16(%r13)
L3864:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L3865:
	movq	%r15, -88(%rbp)
	movq	%r14, -96(%rbp)
	andl	$1, %ebx
	addl	%ebx, %ebx
	movb	%bl, -177(%rbp)
	movzbl	-104(%rbp), %eax
	andl	$-4, %eax
	movl	%r12d, %edx
	andl	$1, %edx
	movb	%dl, -178(%rbp)
	orl	%ebx, %eax
	orl	%edx, %eax
	movb	%al, -104(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r15, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	call	_smpObject_funcall
	movq	-120(%rbp), %rdx
	movq	%rdx, -152(%rbp)
	movzbl	-136(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -168(%rbp)
	leaq	LC5(%rip), %rsi
	movq	(%rdx), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3868
	movq	-152(%rbp), %rax
	movq	%rax, 24(%r13)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%r13)
	movq	-160(%rbp), %rdx
	movq	%rdx, (%r13)
	movq	-168(%rbp), %rax
	movq	%rax, 16(%r13)
	jmp	L3864
L3868:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdi
	call	_fputs
	movq	%r15, 24(%r13)
	movq	%r14, 16(%r13)
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	orb	-177(%rbp), %al
	orb	-178(%rbp), %al
	movb	%al, 8(%r13)
	movq	-176(%rbp), %rax
	movq	%rax, (%r13)
	jmp	L3864
LFE240:
	.align 4,0x90
.globl _smp_printf
_smp_printf:
LFB239:
	pushq	%rbp
LCFI1459:
	movq	%rsp, %rbp
LCFI1460:
	movq	%rbx, -40(%rbp)
LCFI1461:
	movq	%r12, -32(%rbp)
LCFI1462:
	movq	%r13, -24(%rbp)
LCFI1463:
	movq	%r14, -16(%rbp)
LCFI1464:
	movq	%r15, -8(%rbp)
LCFI1465:
	subq	$432, %rsp
LCFI1466:
	movq	%rdi, %r13
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movzbl	%al, %edx
	leaq	0(,%rdx,4), %rax
	leaq	L3872(%rip), %rdx
	subq	%rax, %rdx
	leaq	-49(%rbp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L3872:
	leaq	-256(%rbp), %rdx
	movl	$16, -256(%rbp)
	movl	$48, -252(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-288(%rbp), %rdi
	call	_smpGlobal_vsprintf
	movq	-264(%rbp), %r15
	movzbl	-280(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-288(%rbp), %rdx
	movq	%rdx, -384(%rbp)
	movq	-272(%rbp), %r14
	leaq	LC15(%rip), %rsi
	movq	(%r14), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L3873
	movq	%r15, 24(%r13)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%r13)
	movq	-384(%rbp), %rax
	movq	%rax, (%r13)
	movq	%r14, 16(%r13)
L3871:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L3873:
	movq	%r15, -296(%rbp)
	movq	%r14, -304(%rbp)
	andl	$1, %ebx
	addl	%ebx, %ebx
	movb	%bl, -385(%rbp)
	movzbl	-312(%rbp), %eax
	andl	$-4, %eax
	movl	%r12d, %edx
	andl	$1, %edx
	movb	%dl, -386(%rbp)
	orl	%ebx, %eax
	orl	%edx, %eax
	movb	%al, -312(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-352(%rbp), %rdi
	movq	%rax, (%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r15, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	call	_smpObject_funcall
	movq	-328(%rbp), %rdx
	movq	%rdx, -360(%rbp)
	movzbl	-344(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	-352(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-336(%rbp), %rdx
	movq	%rdx, -376(%rbp)
	leaq	LC5(%rip), %rsi
	movq	(%rdx), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L3876
	movq	-360(%rbp), %rax
	movq	%rax, 24(%r13)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%r13)
	movq	-368(%rbp), %rdx
	movq	%rdx, (%r13)
	movq	-376(%rbp), %rax
	movq	%rax, 16(%r13)
	jmp	L3871
L3876:
	movq	_smp_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	-360(%rbp), %rdx
	movq	(%rdx), %rdi
	call	_fputs
	movq	%r15, 24(%r13)
	movq	%r14, 16(%r13)
	movzbl	8(%r13), %eax
	andl	$-4, %eax
	orb	-385(%rbp), %al
	orb	-386(%rbp), %al
	movb	%al, 8(%r13)
	movq	-384(%rbp), %rax
	movq	%rax, (%r13)
	jmp	L3871
LFE239:
	.cstring
	.align 3
LC100:
	.ascii "name: %st, parents: %st, body: %st\12\0"
	.text
	.align 4,0x90
.globl _smpGlobal_class_arg
_smpGlobal_class_arg:
LFB233:
	pushq	%rbp
LCFI1467:
	movq	%rsp, %rbp
LCFI1468:
	movq	%rbx, -40(%rbp)
LCFI1469:
	movq	%r12, -32(%rbp)
LCFI1470:
	movq	%r13, -24(%rbp)
LCFI1471:
	movq	%r14, -16(%rbp)
LCFI1472:
	movq	%r15, -8(%rbp)
LCFI1473:
	subq	$272, %rsp
LCFI1474:
	movq	%rdi, %rbx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	%rax, -80(%rbp)
	movq	8(%rdx), %r15
	movq	%r15, -72(%rbp)
	movq	16(%rdx), %r14
	movq	%r14, -64(%rbp)
	movq	24(%rdx), %r13
	movq	%r13, -56(%rbp)
	movq	32(%rdx), %r12
	movq	%r12, -112(%rbp)
	movq	40(%rdx), %r11
	movq	%r11, -104(%rbp)
	movq	48(%rdx), %r10
	movq	%r10, -96(%rbp)
	movq	56(%rdx), %r9
	movq	%r9, -88(%rbp)
	movq	64(%rdx), %r8
	movq	%r8, -144(%rbp)
	movq	72(%rdx), %rsi
	movq	%rsi, -136(%rbp)
	movq	80(%rdx), %rcx
	movq	%rcx, -128(%rbp)
	movq	88(%rdx), %rax
	movq	%rax, -120(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%r8, 64(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	movq	%r12, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r9, 56(%rsp)
	movq	%r15, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r13, 24(%rsp)
	leaq	LC100(%rip), %rsi
	xorl	%eax, %eax
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
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
LFE233:
	.cstring
LC101:
	.ascii "What is Pi?\0"
LC102:
	.ascii "second pi\0"
LC104:
	.ascii "pi: %s\12\0"
	.text
	.align 4,0x90
.globl _test_hash
_test_hash:
LFB149:
	pushq	%rbp
LCFI1475:
	movq	%rsp, %rbp
LCFI1476:
	pushq	%r15
LCFI1477:
	pushq	%r14
LCFI1478:
	pushq	%r13
LCFI1479:
	pushq	%r12
LCFI1480:
	pushq	%rbx
LCFI1481:
	subq	$424, %rsp
LCFI1482:
	movq	_gc_add_objectsp@GOTPCREL(%rip), %r15
	movl	$0, (%r15)
	leaq	-304(%rbp), %rdi
	leaq	LC18(%rip), %rsi
	call	_smp_getclass
	leaq	-336(%rbp), %r12
	movq	-280(%rbp), %rsi
	movq	%r12, %rdi
	call	_obj_init
	movl	$64, %edi
	call	_malloc
	movq	%rax, %rbx
	leaq	-432(%rbp), %r14
	movl	$10, %esi
	movq	%r14, %rdi
	call	_smpHash_core_init_capacity
	movq	-432(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-408(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-392(%rbp), %rax
	movq	%rax, 40(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 48(%rbx)
	movq	-376(%rbp), %rax
	movq	%rax, 56(%rbx)
	movq	%rbx, -312(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rbx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_obj_init
	leaq	LC101(%rip), %rsi
	movq	%r12, %rdi
	call	_obj_init_str
	movq	-336(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_obj_init
	leaq	LC102(%rip), %rsi
	movq	%r12, %rdi
	call	_obj_init_str
	movq	-336(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	movsd	LC103(%rip), %xmm0
	movq	%rbx, %rdi
	call	_mpfr_set_d
	leaq	-368(%rbp), %rdi
	movq	_smpType_float@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -344(%rbp)
	movq	-368(%rbp), %rsi
	movq	%rsi, -336(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	%rbx, -312(%rbp)
	movzbl	-328(%rbp), %edx
	movq	%rbx, -152(%rbp)
	movq	%rax, -160(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-168(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -168(%rbp)
	movq	%rsi, -176(%rbp)
	leaq	-208(%rbp), %r13
	leaq	-176(%rbp), %rbx
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpObject_cons
	leaq	-240(%rbp), %r12
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%r12, %rdi
	call	_smpObject_cons
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	call	_smpHash_add_now
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	call	_smpHash_add_now
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r14, %rdi
	call	_smp_println
	leaq	-272(%rbp), %rbx
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
	movq	%rbx, %rdi
	call	_smpHash_get
	movq	%rbx, %rcx
	movl	$1, %edx
	leaq	LC104(%rip), %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	_smp_printf
	movl	$1, (%r15)
	xorl	%eax, %eax
	addq	$424, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE149:
	.align 4,0x90
.globl _smpThrown_gc_mark
_smpThrown_gc_mark:
LFB369:
	pushq	%rbp
LCFI1483:
	movq	%rsp, %rbp
LCFI1484:
	pushq	%r14
LCFI1485:
	pushq	%r13
LCFI1486:
	pushq	%r12
LCFI1487:
	pushq	%rbx
LCFI1488:
	subq	$96, %rsp
LCFI1489:
	movq	%rdi, %r13
	movq	40(%rbp), %rbx
	cmpq	$0, 16(%rbx)
	je	L3884
	xorl	%r12d, %r12d
	leaq	-96(%rbp), %r14
	jmp	L3886
	.align 4,0x90
L3887:
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	L3893
L3889:
	incq	%r12
	cmpq	%r12, 16(%rbx)
	jbe	L3884
L3886:
	movq	8(%rbx), %rcx
	movq	%r12, %rdx
	salq	$5, %rdx
	movq	(%rdx,%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx,%rcx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx,%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx,%rcx), %rdx
	movq	%rdx, -40(%rbp)
	testb	$2, -56(%rbp)
	jne	L3887
	xorl	%esi, %esi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jne	L3889
	.align 4,0x90
L3893:
	movl	$1, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	movq	%r14, %rdi
	call	_smpObject_funcall
	incq	%r12
	cmpq	%r12, 16(%rbx)
	ja	L3886
L3884:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
	movq	%r13, %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
LFE369:
	.align 4,0x90
.globl _smpException_gc_mark
_smpException_gc_mark:
LFB189:
	pushq	%rbp
LCFI1490:
	movq	%rsp, %rbp
LCFI1491:
	pushq	%rbx
LCFI1492:
	subq	$104, %rsp
LCFI1493:
	movq	%rdi, %rbx
	movq	40(%rbp), %rdx
	movq	8(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	32(%rdx), %rdx
	movq	%rdx, -24(%rbp)
	testb	$2, -40(%rbp)
	je	L3900
L3895:
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	jne	L3897
	movl	$1, (%rax)
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	call	_smpObject_funcall
L3897:
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
	addq	$104, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L3900:
	xorl	%esi, %esi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	jmp	L3895
LFE189:
	.align 4,0x90
.globl _smpHash_gc_mark
_smpHash_gc_mark:
LFB256:
	pushq	%rbp
LCFI1494:
	movq	%rsp, %rbp
LCFI1495:
	pushq	%r15
LCFI1496:
	pushq	%r14
LCFI1497:
	pushq	%r13
LCFI1498:
	pushq	%r12
LCFI1499:
	pushq	%rbx
LCFI1500:
	subq	$104, %rsp
LCFI1501:
	movq	%rdi, %r14
	movq	40(%rbp), %rax
	movq	(%rax), %rdx
	movq	40(%rax), %r13
	testq	%r13, %r13
	je	L3902
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	leaq	-112(%rbp), %r15
	jmp	L3904
	.align 4,0x90
L3905:
	movq	-80(%rbp), %rax
	movl	(%rax), %edi
	testl	%edi, %edi
	je	L3911
L3907:
	incq	%r12
	addq	$32, %rbx
	cmpq	%r13, %r12
	je	L3902
L3904:
	movq	(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rbx), %rdx
	movq	%rdx, -56(%rbp)
	testb	$2, -72(%rbp)
	jne	L3905
	xorl	%esi, %esi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	movq	-80(%rbp), %rax
	movl	(%rax), %edi
	testl	%edi, %edi
	jne	L3907
	.align 4,0x90
L3911:
	movl	$1, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	movq	%r15, %rdi
	call	_smpObject_funcall
	incq	%r12
	addq	$32, %rbx
	cmpq	%r13, %r12
	jne	L3904
L3902:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r14)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r14)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r14)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r14)
	movq	%r14, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE256:
	.align 4,0x90
.globl _smpArray_gc_mark
_smpArray_gc_mark:
LFB168:
	pushq	%rbp
LCFI1502:
	movq	%rsp, %rbp
LCFI1503:
	pushq	%r15
LCFI1504:
	pushq	%r14
LCFI1505:
	pushq	%r13
LCFI1506:
	pushq	%r12
LCFI1507:
	pushq	%rbx
LCFI1508:
	subq	$104, %rsp
LCFI1509:
	movq	%rdi, %r14
	movq	40(%rbp), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L3913
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	leaq	-112(%rbp), %r15
	jmp	L3915
	.align 4,0x90
L3916:
	movq	-80(%rbp), %rax
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	je	L3922
L3918:
	incq	%r12
	addq	$32, %rbx
	cmpq	%r13, %r12
	je	L3913
L3915:
	movq	(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	24(%rbx), %rdx
	movq	%rdx, -56(%rbp)
	testb	$2, -72(%rbp)
	jne	L3916
	xorl	%esi, %esi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	movq	-80(%rbp), %rax
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	jne	L3918
	.align 4,0x90
L3922:
	movl	$1, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	movq	%r15, %rdi
	call	_smpObject_funcall
	incq	%r12
	addq	$32, %rbx
	cmpq	%r13, %r12
	jne	L3915
L3913:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r14)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r14)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r14)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r14)
	movq	%r14, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE168:
	.align 4,0x90
.globl _smpListBuffer_gc_mark
_smpListBuffer_gc_mark:
LFB312:
	pushq	%rbp
LCFI1510:
	movq	%rsp, %rbp
LCFI1511:
	pushq	%rbx
LCFI1512:
	subq	$104, %rsp
LCFI1513:
	movq	%rdi, %rbx
	movq	40(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	24(%rdx), %rdx
	movq	%rdx, -24(%rbp)
	testb	$2, -40(%rbp)
	je	L3929
L3924:
	movq	-48(%rbp), %rax
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	jne	L3926
	movl	$1, (%rax)
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	call	_smpObject_funcall
L3926:
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
	addq	$104, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L3929:
	xorl	%esi, %esi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	jmp	L3924
LFE312:
	.align 4,0x90
.globl _smpPair_gc_mark
_smpPair_gc_mark:
LFB327:
	pushq	%rbp
LCFI1514:
	movq	%rsp, %rbp
LCFI1515:
	pushq	%r13
LCFI1516:
	pushq	%r12
LCFI1517:
	pushq	%rbx
LCFI1518:
	subq	$104, %rsp
LCFI1519:
	movq	%rdi, %r13
	movq	40(%rbp), %rax
	movq	32(%rax), %r12
	movq	24(%rax), %rsi
	movq	16(%rax), %rcx
	movzbl	8(%rax), %edx
	movq	(%rax), %rbx
	movq	%rsi, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-56(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -56(%rbp)
	movq	%rbx, -64(%rbp)
	testb	$2, %al
	je	L3941
L3931:
	movl	(%rbx), %r11d
	testl	%r11d, %r11d
	je	L3942
L3933:
	testq	%r12, %r12
	je	L3935
	movq	(%r12), %rax
	movq	%rax, -64(%rbp)
	movq	8(%r12), %rax
	movq	%rax, -56(%rbp)
	movq	16(%r12), %rax
	movq	%rax, -48(%rbp)
	movq	24(%r12), %rdx
	movq	%rdx, -40(%rbp)
	testb	$2, -56(%rbp)
	je	L3943
L3937:
	movq	-64(%rbp), %rax
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	je	L3944
L3935:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
	movq	%r13, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	leave
	ret
	.align 4,0x90
L3944:
	movl	$1, (%rax)
	leaq	-96(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	call	_smpObject_funcall
	jmp	L3935
	.align 4,0x90
L3942:
	movl	$1, (%rbx)
	leaq	-96(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	call	_smpObject_funcall
	jmp	L3933
	.align 4,0x90
L3941:
	movq	%rsi, %rdx
	xorl	%esi, %esi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	jmp	L3931
	.align 4,0x90
L3943:
	xorl	%esi, %esi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	jmp	L3937
LFE327:
	.align 4,0x90
.globl _smpFunction_gc_mark
_smpFunction_gc_mark:
LFB224:
	pushq	%rbp
LCFI1520:
	movq	%rsp, %rbp
LCFI1521:
	pushq	%r15
LCFI1522:
	pushq	%r14
LCFI1523:
	pushq	%r13
LCFI1524:
	pushq	%r12
LCFI1525:
	pushq	%rbx
LCFI1526:
	subq	$104, %rsp
LCFI1527:
	movq	%rdi, %r14
	movq	40(%rbp), %rax
	movq	16(%rax), %rdx
	movswl	24(%rax),%r13d
	testl	%r13d, %r13d
	jle	L3946
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	leaq	-112(%rbp), %r15
	jmp	L3948
	.align 4,0x90
L3951:
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	L3956
	.align 4,0x90
L3949:
	incl	%r12d
	addq	$56, %rbx
	cmpl	%r13d, %r12d
	je	L3946
L3948:
	testb	$2, 8(%rbx)
	je	L3949
	movq	16(%rbx), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	32(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	40(%rbx), %rdx
	movq	%rdx, -56(%rbp)
	testb	$2, -72(%rbp)
	jne	L3951
	xorl	%esi, %esi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	L3949
	.align 4,0x90
L3956:
	movl	$1, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	movq	%r15, %rdi
	call	_smpObject_funcall
	incl	%r12d
	addq	$56, %rbx
	cmpl	%r13d, %r12d
	jne	L3948
L3946:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r14)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r14)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r14)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r14)
	movq	%r14, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE224:
	.align 4,0x90
.globl _smpList_gc_mark
_smpList_gc_mark:
LFB300:
	pushq	%rbp
LCFI1528:
	movq	%rsp, %rbp
LCFI1529:
	pushq	%r13
LCFI1530:
	pushq	%r12
LCFI1531:
	pushq	%rbx
LCFI1532:
	subq	$104, %rsp
LCFI1533:
	movq	%rdi, %r12
	movq	32(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L3971
	leaq	16(%rbp), %rbx
	leaq	-96(%rbp), %r13
	jmp	L3963
	.align 4,0x90
L3964:
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	L3972
L3966:
	movq	(%rbx), %rax
	movl	$1, (%rax)
	movq	24(%rbx), %rax
	movq	32(%rax), %rbx
	testq	%rbx, %rbx
	je	L3971
L3963:
	movq	24(%rbx), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	testb	$2, -56(%rbp)
	jne	L3964
	xorl	%esi, %esi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jne	L3966
	.align 4,0x90
L3972:
	movl	$1, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	jmp	L3966
	.align 4,0x90
L3971:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r12)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r12)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r12)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r12)
	movq	%r12, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	leave
	ret
LFE300:
	.align 4,0x90
.globl _smpTypeError_gc_mark
_smpTypeError_gc_mark:
LFB195:
	pushq	%rbp
LCFI1534:
	movq	%rsp, %rbp
LCFI1535:
	pushq	%r12
LCFI1536:
	pushq	%rbx
LCFI1537:
	subq	$96, %rsp
LCFI1538:
	movq	%rdi, %r12
	movq	40(%rbp), %rbx
	movq	8(%rbx), %rax
	movq	%rax, -48(%rbp)
	movq	16(%rbx), %rax
	movq	%rax, -40(%rbp)
	movq	24(%rbx), %rax
	movq	%rax, -32(%rbp)
	movq	32(%rbx), %rdx
	movq	%rdx, -24(%rbp)
	testb	$2, -40(%rbp)
	je	L3983
L3974:
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	testl	%edi, %edi
	je	L3984
L3976:
	movq	48(%rbx), %rax
	movq	%rax, -48(%rbp)
	movq	56(%rbx), %rax
	movq	%rax, -40(%rbp)
	movq	64(%rbx), %rax
	movq	%rax, -32(%rbp)
	movq	72(%rbx), %rdx
	movq	%rdx, -24(%rbp)
	testb	$2, -40(%rbp)
	je	L3985
L3978:
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	jne	L3980
	movl	$1, (%rax)
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	call	_smpObject_funcall
L3980:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r12)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r12)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r12)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r12)
	movq	%r12, %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	leave
	ret
	.align 4,0x90
L3985:
	xorl	%esi, %esi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	jmp	L3978
	.align 4,0x90
L3984:
	movl	$1, (%rax)
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC95(%rip), %rsi
	call	_smpObject_funcall
	jmp	L3976
	.align 4,0x90
L3983:
	xorl	%esi, %esi
	leaq	LC94(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	jmp	L3974
LFE195:
	.align 4,0x90
.globl _gc_sweep
_gc_sweep:
LFB84:
	pushq	%rbp
LCFI1539:
	movq	%rsp, %rbp
LCFI1540:
	pushq	%r15
LCFI1541:
	pushq	%r14
LCFI1542:
	pushq	%r13
LCFI1543:
	pushq	%r12
LCFI1544:
	pushq	%rbx
LCFI1545:
	subq	$120, %rsp
LCFI1546:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -56(%rbp)
	xorl	%edx, %edx
	movq	%rsp, -112(%rbp)
	movq	_gc_stack_length@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
	movq	%r14, %rdx
	salq	$5, %rdx
	leaq	16(%rdx), %rax
	subq	%rax, %rsp
	leaq	32(%rsp), %rbx
	movq	_gc_stack@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	call	_memcpy
	testq	%r14, %r14
	je	L3987
	movq	%rbx, %r13
	movq	%rbx, %r12
	xorl	%r15d, %r15d
	movq	$0, -104(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	L3989
	.align 4,0x90
L4009:
	movq	-104(%rbp), %rdx
	salq	$5, %rdx
	movq	_gc_stack@GOTPCREL(%rip), %rcx
	movq	%rax, (%rdx,%rcx)
	movq	8(%r12), %rax
	movq	%rax, 8(%rdx,%rcx)
	movq	16(%r12), %rax
	movq	%rax, 16(%rdx,%rcx)
	movq	24(%r12), %rax
	movq	%rax, 24(%rdx,%rcx)
	incq	-104(%rbp)
L3992:
	incq	%r15
	addq	$32, %r12
	addq	$32, %rbx
	cmpq	%r14, %r15
	je	L4008
L3989:
	movq	(%r12), %rax
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	jne	L4009
	movq	16(%rbx), %rax
	movzbl	12(%rax), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L3992
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	-120(%rbp), %rdi
	call	_smpObject_funcall
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	L3994
	call	_free
L3994:
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	L3996
	call	_free
L3996:
	movq	$0, 16(%rbx)
	movq	$0, (%rbx)
	movq	$0, 24(%rbx)
	incq	%r15
	addq	$32, %r12
	addq	$32, %rbx
	cmpq	%r14, %r15
	jne	L3989
L4008:
	movq	-104(%rbp), %rdx
	movq	_gc_stack_length@GOTPCREL(%rip), %rax
	movq	%rdx, (%rax)
	xorl	%edx, %edx
	.align 4,0x90
L3999:
	movq	(%r13), %rax
	testq	%rax, %rax
	je	L4000
	movl	$0, (%rax)
L4000:
	incq	%rdx
	addq	$32, %r13
	cmpq	%r14, %rdx
	jne	L3999
	jmp	L4002
L3987:
	movq	_gc_stack_length@GOTPCREL(%rip), %rcx
	movq	$0, (%rcx)
L4002:
	movq	-112(%rbp), %rsp
	xorl	%eax, %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-56(%rbp), %rcx
	xorq	(%rdx), %rcx
	jne	L4010
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4010:
	call	___stack_chk_fail
LFE84:
	.align 4,0x90
.globl _gc_run
_gc_run:
LFB80:
	pushq	%rbp
LCFI1547:
	movq	%rsp, %rbp
LCFI1548:
	pushq	%r15
LCFI1549:
	pushq	%r14
LCFI1550:
	pushq	%r13
LCFI1551:
	pushq	%r12
LCFI1552:
	pushq	%rbx
LCFI1553:
	subq	$56, %rsp
LCFI1554:
	movq	_gc_runningp@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movq	_scope_classes@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	L4012
	cmpq	$0, 24(%r14)
	jne	L4041
L4012:
	movq	_scope_length@GOTPCREL(%rip), %rdx
	cmpq	$0, (%rdx)
	je	L4023
	xorl	%r8d, %r8d
	.align 4,0x90
L4025:
	movq	%r8, %r13
	salq	$5, %r13
	movq	_scope_stack@GOTPCREL(%rip), %rax
	addq	(%rax), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	L4026
	cmpq	$0, 24(%r13)
	je	L4026
	cmpq	$0, 8(%r13)
	je	L4026
	xorl	%r15d, %r15d
L4030:
	movq	%r15, %r14
	salq	$4, %r14
	leaq	(%r14,%rax), %rax
	cmpq	$0, (%rax)
	je	L4031
	cmpq	$0, 8(%rax)
	je	L4031
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L4034
	.align 4,0x90
L4042:
	incq	%r12
	movq	%r14, %rax
	addq	(%r13), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L4031
L4034:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	movq	%r8, -56(%rbp)
	call	_gc_mark_recursive
	testl	%eax, %eax
	movq	-56(%rbp), %r8
	je	L4042
L4026:
	incq	%r8
	movq	_scope_length@GOTPCREL(%rip), %rdx
	cmpq	%r8, (%rdx)
	ja	L4025
L4023:
	xorl	%eax, %eax
	call	_gc_sweep
	movq	_gc_runningp@GOTPCREL(%rip), %rdx
	movl	$0, (%rdx)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4031:
	incq	%r15
	cmpq	%r15, 8(%r13)
	jbe	L4026
	movq	(%r13), %rax
	jmp	L4030
L4041:
	cmpq	$0, 8(%r14)
	je	L4012
	xorl	%r15d, %r15d
L4016:
	movq	%r15, %r13
	salq	$4, %r13
	addq	%r13, %rax
	cmpq	$0, (%rax)
	je	L4017
	cmpq	$0, 8(%rax)
	je	L4017
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L4020
	.align 4,0x90
L4021:
	incq	%r12
	movq	%r13, %rax
	addq	(%r14), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L4017
L4020:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	call	_gc_mark_recursive
	testl	%eax, %eax
	je	L4021
	jmp	L4012
L4017:
	incq	%r15
	cmpq	%r15, 8(%r14)
	jbe	L4012
	movq	(%r14), %rax
	jmp	L4016
LFE80:
	.cstring
LC105:
	.ascii "adding %s\12\0"
	.align 3
LC106:
	.ascii "Garbage collector is disabled. No memory available to allocate a new object.\12\0"
	.align 3
LC107:
	.ascii "gc_run() had nonzero return value %d.\12\0"
	.align 3
LC108:
	.ascii "Not enough memory to initialize the default classes.\12\0"
	.align 3
LC109:
	.ascii "No memory available to allocate a new object.\12\0"
	.text
	.align 4,0x90
.globl _gc_stack_push
_gc_stack_push:
LFB79:
	pushq	%rbp
LCFI1555:
	movq	%rsp, %rbp
LCFI1556:
	pushq	%r15
LCFI1557:
	pushq	%r14
LCFI1558:
	pushq	%r13
LCFI1559:
	pushq	%r12
LCFI1560:
	pushq	%rbx
LCFI1561:
	subq	$72, %rsp
LCFI1562:
	movq	%rdi, -56(%rbp)
	movq	16(%rdi), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	L4044
	leaq	LC6(%rip), %rsi
	call	_strcmp
	testl	%eax, %eax
	jne	L4044
	movq	-56(%rbp), %rdx
	movq	24(%rdx), %rax
	movq	(%rax), %rax
	movsbl	(%rax),%edi
	testl	$-128, %edi
	jne	L4047
	movslq	%edi,%rdx
	movq	__DefaultRuneLocale@GOTPCREL(%rip), %rax
	mov	60(%rax,%rdx,4), %eax
	shrq	$8, %rax
	andl	$1, %eax
L4049:
	testl	%eax, %eax
	je	L4127
L4044:
	movq	_gc_add_objectsp@GOTPCREL(%rip), %rax
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	je	L4051
	movq	_gc_add_next_objectp@GOTPCREL(%rip), %rax
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jne	L4053
	movl	$1, (%rax)
L4051:
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4053:
	movq	_gc_stack_length@GOTPCREL(%rip), %rax
	cmpq	$1023, (%rax)
	jbe	L4055
	movq	_gc_activep@GOTPCREL(%rip), %rax
	movl	(%rax), %r11d
	testl	%r11d, %r11d
	je	L4128
L4057:
	movq	_gc_runningp@GOTPCREL(%rip), %rdx
	movl	$1, (%rdx)
	movq	_scope_classes@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	L4059
	cmpq	$0, 24(%r14)
	je	L4059
	cmpq	$0, 8(%r14)
	je	L4059
	xorl	%r15d, %r15d
L4063:
	movq	%r15, %r13
	salq	$4, %r13
	addq	%r13, %rax
	cmpq	$0, (%rax)
	je	L4064
	cmpq	$0, 8(%rax)
	je	L4064
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L4067
	.align 4,0x90
L4068:
	incq	%r12
	movq	%r13, %rax
	addq	(%r14), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L4064
L4067:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	call	_gc_mark_recursive
	testl	%eax, %eax
	je	L4068
L4059:
	movq	_scope_length@GOTPCREL(%rip), %rbx
	cmpq	$0, (%rbx)
	je	L4070
	xorl	%r8d, %r8d
	.align 4,0x90
L4072:
	movq	%r8, %r13
	salq	$5, %r13
	movq	_scope_stack@GOTPCREL(%rip), %rax
	addq	(%rax), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	L4073
	cmpq	$0, 24(%r13)
	je	L4073
	cmpq	$0, 8(%r13)
	je	L4073
	xorl	%r15d, %r15d
L4077:
	movq	%r15, %r14
	salq	$4, %r14
	addq	%r14, %rax
	cmpq	$0, (%rax)
	je	L4078
	cmpq	$0, 8(%rax)
	je	L4078
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L4081
	.align 4,0x90
L4129:
	incq	%r12
	movq	%r14, %rax
	addq	(%r13), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L4078
L4081:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	movq	%r8, -72(%rbp)
	call	_gc_mark_recursive
	testl	%eax, %eax
	movq	-72(%rbp), %r8
	je	L4129
L4073:
	incq	%r8
	movq	_scope_length@GOTPCREL(%rip), %rdx
	cmpq	%r8, (%rdx)
	ja	L4072
L4070:
	xorl	%eax, %eax
	call	_gc_sweep
	movq	_gc_runningp@GOTPCREL(%rip), %rbx
	movl	$0, (%rbx)
	testl	%eax, %eax
	jne	L4130
L4084:
	movq	_gc_stack_length@GOTPCREL(%rip), %rax
	cmpq	$1023, (%rax)
	jbe	L4086
	movq	_initialized_classesp@GOTPCREL(%rip), %rax
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	jne	L4088
	leaq	LC108(%rip), %rdi
	xorl	%eax, %eax
	call	_fatal_error
	jmp	L4086
L4055:
	movq	_gc_counter@GOTPCREL(%rip), %rdx
	cmpl	$256, (%rdx)
	je	L4131
L4086:
	movq	_gc_stack_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	_gc_stack@GOTPCREL(%rip), %rcx
	movq	%rsi, %rdx
	salq	$5, %rdx
	movq	-56(%rbp), %rbx
	movq	(%rbx), %rax
	movq	%rax, (%rdx,%rcx)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rdx,%rcx)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rdx,%rcx)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rdx,%rcx)
	incq	%rsi
	movq	_gc_stack_length@GOTPCREL(%rip), %rax
	movq	%rsi, (%rax)
	orb	$2, 8(%rbx)
	movq	_gc_counter@GOTPCREL(%rip), %rdx
	incl	(%rdx)
	jmp	L4051
L4127:
	movq	-56(%rbp), %rbx
	movq	24(%rbx), %rax
	movq	(%rax), %rsi
	leaq	LC105(%rip), %rdi
	xorl	%eax, %eax
	call	_printf
	jmp	L4044
L4078:
	incq	%r15
	cmpq	%r15, 8(%r13)
	jbe	L4073
	movq	(%r13), %rax
	jmp	L4077
L4047:
	movl	$256, %esi
	call	___maskrune
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	L4049
L4064:
	incq	%r15
	cmpq	%r15, 8(%r14)
	jbe	L4059
	movq	(%r14), %rax
	jmp	L4063
L4128:
	leaq	LC106(%rip), %rdi
	xorl	%eax, %eax
	call	_fatal_error
	jmp	L4057
L4130:
	movl	%eax, %esi
	leaq	LC107(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	jmp	L4084
L4088:
	leaq	LC109(%rip), %rdi
	xorl	%eax, %eax
	call	_fatal_error
	jmp	L4086
L4131:
	movq	_gc_activep@GOTPCREL(%rip), %rax
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	je	L4086
	movq	_gc_runningp@GOTPCREL(%rip), %rbx
	movl	$1, (%rbx)
	movq	_scope_classes@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	L4092
	cmpq	$0, 24(%r14)
	je	L4092
	cmpq	$0, 8(%r14)
	je	L4092
	xorl	%r15d, %r15d
L4096:
	movq	%r15, %r13
	salq	$4, %r13
	leaq	(%r13,%rax), %rax
	cmpq	$0, (%rax)
	je	L4097
	cmpq	$0, 8(%rax)
	je	L4097
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L4100
L4101:
	incq	%r12
	movq	%r13, %rax
	addq	(%r14), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L4097
L4100:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	call	_gc_mark_recursive
	testl	%eax, %eax
	je	L4101
L4092:
	movq	_scope_length@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	L4103
	xorl	%r15d, %r15d
L4105:
	movq	%r15, %r13
	salq	$5, %r13
	movq	_scope_stack@GOTPCREL(%rip), %rdx
	addq	(%rdx), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	L4106
	cmpq	$0, 24(%r13)
	je	L4106
	cmpq	$0, 8(%r13)
	je	L4106
	xorl	%r8d, %r8d
L4110:
	movq	%r8, %r14
	salq	$4, %r14
	leaq	(%r14,%rax), %rax
	cmpq	$0, (%rax)
	je	L4111
	cmpq	$0, 8(%rax)
	je	L4111
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	L4114
	.align 4,0x90
L4132:
	incq	%r12
	movq	%r14, %rax
	addq	(%r13), %rax
	addq	$40, %rbx
	cmpq	%r12, 8(%rax)
	jbe	L4111
L4114:
	movq	%rbx, %rdx
	addq	(%rax), %rdx
	movq	8(%rdx), %rax
	movq	%rax, (%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rdx), %rdi
	movq	%r8, -72(%rbp)
	call	_gc_mark_recursive
	testl	%eax, %eax
	movq	-72(%rbp), %r8
	je	L4132
L4106:
	incq	%r15
	movq	_scope_length@GOTPCREL(%rip), %rbx
	cmpq	%r15, (%rbx)
	ja	L4105
L4103:
	xorl	%eax, %eax
	call	_gc_sweep
	movq	_gc_runningp@GOTPCREL(%rip), %rdx
	movl	$0, (%rdx)
	testl	%eax, %eax
	jne	L4133
L4117:
	movq	_gc_counter@GOTPCREL(%rip), %rbx
	movl	$0, (%rbx)
	jmp	L4086
L4111:
	incq	%r8
	cmpq	%r8, 8(%r13)
	jbe	L4106
	movq	(%r13), %rax
	jmp	L4110
L4097:
	incq	%r15
	cmpq	%r15, 8(%r14)
	jbe	L4092
	movq	(%r14), %rax
	jmp	L4096
L4133:
	movl	%eax, %esi
	leaq	LC107(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	jmp	L4117
LFE79:
	.cstring
	.align 3
LC110:
	.ascii "Undefined function-variable flag %d.\12\0"
LC111:
	.ascii "Undefined scope flag %d.\12\0"
	.text
	.align 4,0x90
.globl _smpType_def_general
_smpType_def_general:
LFB378:
	pushq	%rbp
LCFI1563:
	movq	%rsp, %rbp
LCFI1564:
	movq	%rbx, -40(%rbp)
LCFI1565:
	movq	%r12, -32(%rbp)
LCFI1566:
	movq	%r13, -24(%rbp)
LCFI1567:
	movq	%r14, -16(%rbp)
LCFI1568:
	movq	%r15, -8(%rbp)
LCFI1569:
	subq	$256, %rsp
LCFI1570:
	movq	%rdi, -200(%rbp)
	movl	%esi, -204(%rbp)
	movq	%rdx, -216(%rbp)
	movzbl	24(%rbp), %r13d
	movl	%r13d, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	movl	%r13d, %eax
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	16(%rbp), %rdx
	movq	%rdx, -184(%rbp)
	movq	40(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	32(%rbp), %r15
	movq	(%r15), %r14
	leaq	LC15(%rip), %rsi
	movq	%r14, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4135
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movq	-200(%rbp), %rcx
	movzbl	8(%rcx), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, 8(%rcx)
	movq	-184(%rbp), %rax
	movq	%rax, (%rcx)
	movq	-192(%rbp), %rdx
	movq	%rdx, 24(%rcx)
	movq	%r15, 16(%rcx)
L4134:
	movq	-200(%rbp), %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
	.align 4,0x90
L4135:
	leaq	LC6(%rip), %rsi
	movq	%r14, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4158
	movl	-204(%rbp), %r12d
	andl	$3840, %r12d
	je	L4159
L4140:
	movl	-204(%rbp), %esi
	andl	$15, %esi
	jne	L4144
	testl	%r12d, %r12d
	je	L4160
	cmpl	$256, %r12d
	jne	L4155
	movq	-192(%rbp), %rax
	movq	40(%rax), %rbx
	jmp	L4148
L4159:
	movq	64(%rbp), %rbx
	leaq	LC2(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L4142
	leaq	-112(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	_smpType_function@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-112(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-176(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L4134
L4158:
	andl	$1, %ebx
	leal	(%rbx,%rbx), %eax
	andl	$-4, %r13d
	andl	$1, %r12d
	orl	%eax, %r13d
	orl	%r12d, %r13d
	movb	%r13b, 24(%rbp)
	movq	-184(%rbp), %rcx
	movq	%rcx, 16(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, 40(%rbp)
	movq	%r15, 32(%rbp)
	leaq	-80(%rbp), %rdi
	movq	%rcx, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-192(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	movq	_smpType_class@GOTPCREL(%rip), %rsi
	call	_smpTypeError_init
	movq	-80(%rbp), %rsi
	movq	%rsi, -176(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -160(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-144(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rcx)
	jmp	L4134
L4144:
	cmpl	$1, %esi
	je	L4161
	leaq	LC111(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	xorl	%ebx, %ebx
	.align 4,0x90
L4148:
	leaq	48(%rbp), %rdi
	call	_gc_stack_push
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-216(%rbp), %rsi
	movq	%rbx, %rdi
	call	_minihash_add
	movq	48(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	64(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L4134
L4160:
	movq	-192(%rbp), %rcx
	movq	32(%rcx), %rbx
	jmp	L4148
L4161:
	testl	%r12d, %r12d
	jne	L4153
	movq	-192(%rbp), %rdx
	movq	48(%rdx), %rbx
	jmp	L4148
L4142:
	movq	72(%rbp), %rbx
	movq	-216(%rbp), %rdi
	call	_strlen
	leaq	1(%rax), %rdi
	call	_malloc
	movq	%rax, 8(%rbx)
	movq	72(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-216(%rbp), %rsi
	call	_strcpy
	movzbl	-204(%rbp), %edx
	andl	$-16, %edx
	movq	72(%rbp), %rax
	movb	%dl, (%rax)
	jmp	L4140
L4155:
	movl	%r12d, %esi
	leaq	LC110(%rip), %rdi
	xorl	%eax, %eax
	call	_internal_error
	xorl	%ebx, %ebx
	jmp	L4148
L4153:
	cmpl	$256, %r12d
	jne	L4155
	movq	-192(%rbp), %rcx
	movq	56(%rcx), %rbx
	jmp	L4148
LFE378:
	.align 4,0x90
.globl _smpType_defvar
_smpType_defvar:
LFB380:
	pushq	%rbp
LCFI1571:
	movq	%rsp, %rbp
LCFI1572:
	pushq	%rbx
LCFI1573:
	subq	$72, %rsp
LCFI1574:
	movq	%rdi, %rbx
	orl	$256, %esi
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
	call	_smpType_def_general
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE380:
	.align 4,0x90
.globl _smpType_def
_smpType_def:
LFB379:
	pushq	%rbp
LCFI1575:
	movq	%rsp, %rbp
LCFI1576:
	pushq	%rbx
LCFI1577:
	subq	$72, %rsp
LCFI1578:
	movq	%rdi, %rbx
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
	call	_smpType_def_general
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	ret
LFE379:
	.cstring
LC112:
	.ascii "Nil\0"
	.text
	.align 4,0x90
.globl _smpFunction_create_class
_smpFunction_create_class:
LFB221:
	pushq	%rbp
LCFI1579:
	movq	%rsp, %rbp
LCFI1580:
	pushq	%r15
LCFI1581:
	pushq	%r14
LCFI1582:
	pushq	%r13
LCFI1583:
	pushq	%r12
LCFI1584:
	pushq	%rbx
LCFI1585:
	subq	$344, %rsp
LCFI1586:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4167
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4167
	movq	(%rdi), %r8
	leaq	LC2(%rip), %rsi
	movl	$5381, %ecx
	movl	$70, %edx
	testq	%r8, %r8
	je	L4167
	.align 4,0x90
L4172:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4172
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4174
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4174
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4177
	.align 4,0x90
L4178:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4174
L4177:
	leaq	LC2(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4178
	movq	32(%rbx), %rax
	movq	%rax, -312(%rbp)
	movq	24(%rbx), %r15
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	8(%rbx), %r14
	jmp	L4171
	.align 4,0x90
L4167:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -312(%rbp)
L4184:
	movq	16(%rax), %r15
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	(%rax), %r14
L4171:
	leaq	-80(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpFunction_clear(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-312(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	%r15, -224(%rbp)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	-232(%rbp), %eax
	andl	$-4, %eax
	movl	%r13d, %ebx
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -232(%rbp)
	movq	%r14, -240(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -272(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -256(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-312(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC91(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpFunction_gc_mark(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-312(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	%r15, -256(%rbp)
	movzbl	-264(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -264(%rbp)
	movq	%r14, -272(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -240(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -224(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-208(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC95(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpFunction_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-312(%rbp), %rdx
	movq	%rdx, -216(%rbp)
	movq	%r15, -224(%rbp)
	movzbl	-232(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -232(%rbp)
	movq	%r14, -240(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -272(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -256(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-304(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-312(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$344, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4174:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -312(%rbp)
	jmp	L4184
LFE221:
	.align 4,0x90
.globl _smpType_abstract_def
_smpType_abstract_def:
LFB376:
	pushq	%rbp
LCFI1587:
	movq	%rsp, %rbp
LCFI1588:
	movq	%rbx, -40(%rbp)
LCFI1589:
	movq	%r12, -32(%rbp)
LCFI1590:
	movq	%r13, -24(%rbp)
LCFI1591:
	movq	%r14, -16(%rbp)
LCFI1592:
	movq	%r15, -8(%rbp)
LCFI1593:
	subq	$480, %rsp
LCFI1594:
	movq	%rdi, -392(%rbp)
	movl	%esi, -396(%rbp)
	movq	%rdx, -408(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movzbl	%al, %edx
	leaq	0(,%rdx,4), %rax
	leaq	L4186(%rip), %rdx
	subq	%rax, %rdx
	leaq	-49(%rbp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
L4186:
	movl	%ecx, %edx
	movq	40(%rbp), %r15
	movq	32(%rbp), %r14
	movzbl	24(%rbp), %ebx
	movl	%ebx, %eax
	sall	$6, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	sall	$7, %ebx
	sarb	$7, %bl
	movq	16(%rbp), %r13
	leaq	-256(%rbp), %rcx
	movl	$32, -256(%rbp)
	movl	$48, -252(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-320(%rbp), %rdi
	leaq	_smp_abstract_function(%rip), %rsi
	call	_smpFunction_init_v
	movq	%r15, -328(%rbp)
	movq	%r14, -336(%rbp)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	-344(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -344(%rbp)
	movq	%r13, -352(%rbp)
	movq	-320(%rbp), %rsi
	movq	%rsi, -384(%rbp)
	movq	-312(%rbp), %rcx
	movq	%rcx, -376(%rbp)
	movq	-304(%rbp), %rdx
	movq	%rdx, -368(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r13, (%rsp)
	movq	-344(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r15, 24(%rsp)
	movq	-408(%rbp), %rdx
	movl	-396(%rbp), %esi
	movq	-392(%rbp), %rdi
	call	_smpType_def_general
	movq	-392(%rbp), %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
LFE376:
	.cstring
LC113:
	.ascii "Object\0"
LC114:
	.ascii "car\0"
LC115:
	.ascii "cdr\0"
	.text
	.align 4,0x90
.globl _smpPair_create_class
_smpPair_create_class:
LFB323:
	pushq	%rbp
LCFI1595:
	movq	%rsp, %rbp
LCFI1596:
	pushq	%r15
LCFI1597:
	pushq	%r14
LCFI1598:
	pushq	%r13
LCFI1599:
	pushq	%r12
LCFI1600:
	pushq	%rbx
LCFI1601:
	subq	$536, %rsp
LCFI1602:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4189
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4189
	movq	(%rdi), %r8
	leaq	LC28(%rip), %rsi
	movl	$5381, %ecx
	movl	$80, %edx
	testq	%r8, %r8
	je	L4189
	.align 4,0x90
L4194:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4194
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4196
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4196
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4199
	.align 4,0x90
L4200:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4196
L4199:
	leaq	LC28(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4200
	movq	32(%rbx), %rax
	movq	%rax, -504(%rbp)
	movq	24(%rbx), %r15
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	8(%rbx), %r14
	jmp	L4193
	.align 4,0x90
L4189:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -504(%rbp)
L4206:
	movq	16(%rax), %r15
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	(%rax), %r14
L4193:
	leaq	-80(%rbp), %rdi
	leaq	LC113(%rip), %rcx
	movl	$1, %edx
	leaq	_smpPair_car(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	%r15, -448(%rbp)
	andl	$1, %r12d
	leal	(%r12,%r12), %ebx
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	movl	$1, %r12d
	andl	%r13d, %r12d
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -456(%rbp)
	movq	%r14, -464(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-272(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC114(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC113(%rip), %rcx
	movl	$1, %edx
	leaq	_smpPair_cdr(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rcx
	movq	%rcx, -408(%rbp)
	movq	%r15, -416(%rbp)
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -424(%rbp)
	movq	%r14, -432(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-304(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC115(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpPair_clear(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rdx
	movq	%rdx, -440(%rbp)
	movq	%r15, -448(%rbp)
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -456(%rbp)
	movq	%r14, -464(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-336(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC91(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-176(%rbp), %rdi
	leaq	LC113(%rip), %rcx
	movl	$1, %edx
	leaq	_smpPair_gc_mark(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	%r15, -416(%rbp)
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -424(%rbp)
	movq	%r14, -432(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-368(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC95(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-208(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpPair_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rcx
	movq	%rcx, -440(%rbp)
	movq	%r15, -448(%rbp)
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -456(%rbp)
	movq	%r14, -464(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-400(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-240(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpPair_write(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rdx
	movq	%rdx, -408(%rbp)
	movq	%r15, -416(%rbp)
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -424(%rbp)
	movq	%r14, -432(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-496(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC72(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$536, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4196:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -504(%rbp)
	jmp	L4206
LFE323:
	.cstring
LC116:
	.ascii "Bool\0"
LC117:
	.ascii "empty?\0"
	.text
	.align 4,0x90
.globl _smpNil_create_class
_smpNil_create_class:
LFB315:
	pushq	%rbp
LCFI1603:
	movq	%rsp, %rbp
LCFI1604:
	pushq	%r15
LCFI1605:
	pushq	%r14
LCFI1606:
	pushq	%r13
LCFI1607:
	pushq	%r12
LCFI1608:
	pushq	%rbx
LCFI1609:
	subq	$536, %rsp
LCFI1610:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4208
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4208
	movq	(%rdi), %r8
	leaq	LC112(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L4208
	.align 4,0x90
L4213:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4213
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4215
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4215
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4218
	.align 4,0x90
L4219:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4215
L4218:
	leaq	LC112(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4219
	movq	32(%rbx), %rax
	movq	%rax, -504(%rbp)
	movq	24(%rbx), %r15
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	8(%rbx), %r14
	jmp	L4212
	.align 4,0x90
L4208:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -504(%rbp)
L4225:
	movq	16(%rax), %r15
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	(%rax), %r14
L4212:
	leaq	-80(%rbp), %rdi
	leaq	LC113(%rip), %rcx
	movl	$1, %edx
	leaq	_smpNil_car(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	%r15, -448(%rbp)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	movl	%r13d, %ebx
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -456(%rbp)
	movq	%r14, -464(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-272(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC114(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC113(%rip), %rcx
	movl	$1, %edx
	leaq	_smpNil_cdr(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rcx
	movq	%rcx, -408(%rbp)
	movq	%r15, -416(%rbp)
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -424(%rbp)
	movq	%r14, -432(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-304(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC115(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC116(%rip), %rcx
	movl	$1, %edx
	leaq	_smpNil_emptyp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rdx
	movq	%rdx, -440(%rbp)
	movq	%r15, -448(%rbp)
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -456(%rbp)
	movq	%r14, -464(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-336(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC117(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-176(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpNil_equalp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	%r15, -416(%rbp)
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -424(%rbp)
	movq	%r14, -432(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-368(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC76(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-208(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpNil_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rcx
	movq	%rcx, -440(%rbp)
	movq	%r15, -448(%rbp)
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -456(%rbp)
	movq	%r14, -464(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-400(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-240(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpNil_write(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rdx
	movq	%rdx, -408(%rbp)
	movq	%r15, -416(%rbp)
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -424(%rbp)
	movq	%r14, -432(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-496(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC72(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$536, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4215:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -504(%rbp)
	jmp	L4225
LFE315:
	.cstring
LC118:
	.ascii "add!\0"
LC119:
	.ascii "length\0"
LC120:
	.ascii "map\0"
LC121:
	.ascii "reduce\0"
	.text
	.align 4,0x90
.globl _smpList_create_class
_smpList_create_class:
LFB293:
	pushq	%rbp
LCFI1611:
	movq	%rsp, %rbp
LCFI1612:
	pushq	%r15
LCFI1613:
	pushq	%r14
LCFI1614:
	pushq	%r13
LCFI1615:
	pushq	%r12
LCFI1616:
	pushq	%rbx
LCFI1617:
	subq	$856, %rsp
LCFI1618:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4227
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4227
	movq	(%rdi), %r8
	leaq	LC75(%rip), %rsi
	movl	$5381, %ecx
	movl	$76, %edx
	testq	%r8, %r8
	je	L4227
	.align 4,0x90
L4232:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4232
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4234
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4234
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4237
	.align 4,0x90
L4238:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4234
L4237:
	leaq	LC75(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4238
	movq	32(%rbx), %rax
	movq	%rax, -824(%rbp)
	movq	24(%rbx), %r15
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	8(%rbx), %r14
	jmp	L4231
	.align 4,0x90
L4227:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -824(%rbp)
L4244:
	movq	16(%rax), %r15
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	(%rax), %r14
L4231:
	leaq	-80(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpList_gc_mark(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-824(%rbp), %rax
	movq	%rax, -728(%rbp)
	movq	%r15, -736(%rbp)
	andl	$1, %r12d
	leal	(%r12,%r12), %ebx
	movzbl	-744(%rbp), %eax
	andl	$-4, %eax
	movl	$1, %r12d
	andl	%r13d, %r12d
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -744(%rbp)
	movq	%r14, -752(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -784(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -776(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -768(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -760(%rbp)
	leaq	-432(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-824(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC95(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC75(%rip), %rcx
	movl	$2, %edx
	leaq	_smpList_add_now(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-824(%rbp), %rcx
	movq	%rcx, -760(%rbp)
	movq	%r15, -768(%rbp)
	movzbl	-776(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -776(%rbp)
	movq	%r14, -784(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -752(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -744(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -736(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -728(%rbp)
	leaq	-464(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-776(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-824(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC118(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC113(%rip), %rcx
	movl	$1, %edx
	leaq	_smpList_car(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-824(%rbp), %rdx
	movq	%rdx, -728(%rbp)
	movq	%r15, -736(%rbp)
	movzbl	-744(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -744(%rbp)
	movq	%r14, -752(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -784(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -776(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -768(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -760(%rbp)
	leaq	-496(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-824(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC114(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-176(%rbp), %rdi
	leaq	LC113(%rip), %rcx
	movl	$1, %edx
	leaq	_smpList_cdr(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-824(%rbp), %rax
	movq	%rax, -760(%rbp)
	movq	%r15, -768(%rbp)
	movzbl	-776(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -776(%rbp)
	movq	%r14, -784(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -752(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -744(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -736(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -728(%rbp)
	leaq	-528(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-776(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-824(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC115(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-208(%rbp), %rdi
	leaq	LC116(%rip), %rcx
	movl	$1, %edx
	leaq	_smpList_emptyp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-824(%rbp), %rcx
	movq	%rcx, -728(%rbp)
	movq	%r15, -736(%rbp)
	movzbl	-744(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -744(%rbp)
	movq	%r14, -752(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -784(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -776(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -768(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -760(%rbp)
	leaq	-560(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-824(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC117(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-240(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpList_equalp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-824(%rbp), %rdx
	movq	%rdx, -760(%rbp)
	movq	%r15, -768(%rbp)
	movzbl	-776(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -776(%rbp)
	movq	%r14, -784(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -752(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -744(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -736(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -728(%rbp)
	leaq	-592(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-776(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-824(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC76(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-272(%rbp), %rdi
	leaq	LC40(%rip), %rcx
	movl	$1, %edx
	leaq	_smpList_length(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-824(%rbp), %rax
	movq	%rax, -728(%rbp)
	movq	%r15, -736(%rbp)
	movzbl	-744(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -744(%rbp)
	movq	%r14, -752(%rbp)
	movq	-272(%rbp), %rsi
	movq	%rsi, -784(%rbp)
	movq	-264(%rbp), %rcx
	movq	%rcx, -776(%rbp)
	movq	-256(%rbp), %rdx
	movq	%rdx, -768(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -760(%rbp)
	leaq	-624(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-824(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC119(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-304(%rbp), %rdi
	leaq	LC2(%rip), %r8
	leaq	LC75(%rip), %rcx
	movl	$2, %edx
	leaq	_smpList_map(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-824(%rbp), %rcx
	movq	%rcx, -760(%rbp)
	movq	%r15, -768(%rbp)
	movzbl	-776(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -776(%rbp)
	movq	%r14, -784(%rbp)
	movq	-304(%rbp), %rsi
	movq	%rsi, -752(%rbp)
	movq	-296(%rbp), %rcx
	movq	%rcx, -744(%rbp)
	movq	-288(%rbp), %rdx
	movq	%rdx, -736(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -728(%rbp)
	leaq	-656(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-776(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-824(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC120(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-336(%rbp), %rdi
	leaq	LC113(%rip), %rdx
	movq	%rdx, (%rsp)
	leaq	LC37(%rip), %r9
	leaq	LC2(%rip), %r8
	leaq	LC75(%rip), %rcx
	movl	$4, %edx
	leaq	_smpList_reduce(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-824(%rbp), %rcx
	movq	%rcx, -728(%rbp)
	movq	%r15, -736(%rbp)
	movzbl	-744(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -744(%rbp)
	movq	%r14, -752(%rbp)
	movq	-336(%rbp), %rsi
	movq	%rsi, -784(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, -776(%rbp)
	movq	-320(%rbp), %rdx
	movq	%rdx, -768(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -760(%rbp)
	leaq	-688(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-824(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC121(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-368(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpList_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-824(%rbp), %rdx
	movq	%rdx, -760(%rbp)
	movq	%r15, -768(%rbp)
	movzbl	-776(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -776(%rbp)
	movq	%r14, -784(%rbp)
	movq	-368(%rbp), %rsi
	movq	%rsi, -752(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, -744(%rbp)
	movq	-352(%rbp), %rdx
	movq	%rdx, -736(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -728(%rbp)
	leaq	-720(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-776(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-824(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-400(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpList_write(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-824(%rbp), %rax
	movq	%rax, -728(%rbp)
	movq	%r15, -736(%rbp)
	movzbl	-744(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -744(%rbp)
	movq	%r14, -752(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rsi, -784(%rbp)
	movq	-392(%rbp), %rcx
	movq	%rcx, -776(%rbp)
	movq	-384(%rbp), %rdx
	movq	%rdx, -768(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -760(%rbp)
	leaq	-816(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-824(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC72(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$856, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4234:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -824(%rbp)
	jmp	L4244
LFE293:
	.align 4,0x90
.globl _smpThrown_create_class
_smpThrown_create_class:
LFB366:
	pushq	%rbp
LCFI1619:
	movq	%rsp, %rbp
LCFI1620:
	pushq	%r15
LCFI1621:
	pushq	%r14
LCFI1622:
	pushq	%r13
LCFI1623:
	pushq	%r12
LCFI1624:
	pushq	%rbx
LCFI1625:
	subq	$280, %rsp
LCFI1626:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4246
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4246
	movq	(%rdi), %r8
	leaq	LC15(%rip), %rsi
	movl	$5381, %ecx
	movl	$84, %edx
	testq	%r8, %r8
	je	L4246
	.align 4,0x90
L4251:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4251
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4253
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4253
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4256
	.align 4,0x90
L4257:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4253
L4256:
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4257
	movq	32(%rbx), %rax
	movq	%rax, -248(%rbp)
	movq	24(%rbx), %r15
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	8(%rbx), %r14
	jmp	L4250
	.align 4,0x90
L4246:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -248(%rbp)
L4263:
	movq	16(%rax), %r15
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	(%rax), %r14
L4250:
	leaq	-80(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpThrown_gc_mark(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-248(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	%r15, -192(%rbp)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	-200(%rbp), %eax
	andl	$-4, %eax
	movl	%r13d, %ebx
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -200(%rbp)
	movq	%r14, -208(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -176(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -160(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-248(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC95(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpThrown_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-248(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	%r15, -160(%rbp)
	movzbl	-168(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -168(%rbp)
	movq	%r14, -176(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -208(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$280, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4253:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -248(%rbp)
	jmp	L4263
LFE366:
	.cstring
LC122:
	.ascii "+\0"
LC123:
	.ascii "reverse\0"
	.text
	.align 4,0x90
.globl _smpstrcreate_class
_smpstrcreate_class:
LFB345:
	pushq	%rbp
LCFI1627:
	movq	%rsp, %rbp
LCFI1628:
	pushq	%r15
LCFI1629:
	pushq	%r14
LCFI1630:
	pushq	%r13
LCFI1631:
	pushq	%r12
LCFI1632:
	pushq	%rbx
LCFI1633:
	subq	$536, %rsp
LCFI1634:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4265
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4265
	movq	(%rdi), %r8
	leaq	LC5(%rip), %rsi
	movl	$5381, %ecx
	movl	$83, %edx
	testq	%r8, %r8
	je	L4265
	.align 4,0x90
L4270:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4270
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4272
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4272
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4275
	.align 4,0x90
L4276:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4272
L4275:
	leaq	LC5(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4276
	movq	32(%rbx), %rax
	movq	%rax, -504(%rbp)
	movq	24(%rbx), %r15
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	8(%rbx), %r14
	jmp	L4269
	.align 4,0x90
L4265:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -504(%rbp)
L4282:
	movq	16(%rax), %r15
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	(%rax), %r14
L4269:
	leaq	-80(%rbp), %rdi
	leaq	LC5(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpString_add(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	%r15, -448(%rbp)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	movl	%r13d, %ebx
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -456(%rbp)
	movq	%r14, -464(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-272(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC122(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpString_clear(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rcx
	movq	%rcx, -408(%rbp)
	movq	%r15, -416(%rbp)
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -424(%rbp)
	movq	%r14, -432(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-304(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC91(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpString_equalp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rdx
	movq	%rdx, -440(%rbp)
	movq	%r15, -448(%rbp)
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -456(%rbp)
	movq	%r14, -464(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-336(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC76(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-176(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpString_reverse(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	%r15, -416(%rbp)
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -424(%rbp)
	movq	%r14, -432(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-368(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC123(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-208(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpString_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rcx
	movq	%rcx, -440(%rbp)
	movq	%r15, -448(%rbp)
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -456(%rbp)
	movq	%r14, -464(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-400(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-240(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpString_write(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rdx
	movq	%rdx, -408(%rbp)
	movq	%r15, -416(%rbp)
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -424(%rbp)
	movq	%r14, -432(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-496(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-504(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC72(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$536, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4272:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -504(%rbp)
	jmp	L4282
LFE345:
	.align 4,0x90
.globl _scope_add
_scope_add:
LFB130:
	pushq	%rbp
LCFI1635:
	movq	%rsp, %rbp
LCFI1636:
	pushq	%rbx
LCFI1637:
	subq	$40, %rsp
LCFI1638:
	movq	%rdi, %rbx
	leaq	16(%rbp), %rdi
	call	_gc_stack_push
	testl	%eax, %eax
	jne	L4284
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	jne	L4290
L4288:
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rsi
	call	_minihash_add
L4284:
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L4290:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
	jmp	L4288
LFE130:
	.align 4,0x90
.globl _smp_putclass
_smp_putclass:
LFB74:
	pushq	%rbp
LCFI1639:
	movq	%rsp, %rbp
LCFI1640:
	pushq	%r15
LCFI1641:
	pushq	%r14
LCFI1642:
	pushq	%r13
LCFI1643:
	pushq	%r12
LCFI1644:
	pushq	%rbx
LCFI1645:
	subq	$184, %rsp
LCFI1646:
	movq	72(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	64(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	56(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	48(%rbp), %rdx
	movq	%rdx, -144(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, -160(%rbp)
	movzbl	28(%rbp), %ebx
	leal	0(,%rbx,4), %r13d
	sarb	$7, %r13b
	leal	0(,%rbx,8), %r12d
	sarb	$7, %r12b
	movl	%ebx, %eax
	sall	$4, %eax
	movl	%eax, %r15d
	sarb	$6, %r15b
	movl	%ebx, %edx
	sall	$6, %edx
	movl	%edx, %r14d
	sarb	$7, %r14b
	sall	$7, %ebx
	sarb	$7, %bl
	movl	24(%rbp), %eax
	movl	%eax, -164(%rbp)
	movq	16(%rbp), %rdx
	movq	%rdx, -176(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	_smpType_class@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	call	_obj_init
	orb	$1, -72(%rbp)
	movl	$64, %edi
	call	_malloc
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-128(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-136(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-144(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-152(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-160(%rbp), %rdx
	movq	%rdx, 16(%rax)
	andl	$1, %r13d
	sall	$5, %r13d
	movzbl	12(%rax), %edx
	andl	$-49, %edx
	andl	$1, %r12d
	sall	$4, %r12d
	orl	%r13d, %edx
	orl	%r12d, %edx
	andl	$3, %r15d
	sall	$2, %r15d
	andl	$-15, %edx
	andl	$1, %r14d
	addl	%r14d, %r14d
	orl	%r15d, %edx
	orl	%r14d, %edx
	andl	$1, %ebx
	andl	$-2, %edx
	orl	%ebx, %edx
	movb	%dl, 12(%rax)
	movl	-164(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-176(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-184(%rbp), %rdi
	call	_gc_stack_push
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-112(%rbp), %rdi
	call	_gc_stack_push
	testl	%eax, %eax
	jne	L4292
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	jne	L4298
L4296:
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-176(%rbp), %rsi
	call	_minihash_add
L4292:
	xorl	%eax, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L4298:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
	jmp	L4296
LFE74:
	.cstring
LC124:
	.ascii "array\0"
	.text
	.align 4,0x90
.globl _test_arrays
_test_arrays:
LFB148:
	pushq	%rbp
LCFI1647:
	movq	%rsp, %rbp
LCFI1648:
	pushq	%r15
LCFI1649:
	pushq	%r14
LCFI1650:
	pushq	%r13
LCFI1651:
	pushq	%r12
LCFI1652:
	pushq	%rbx
LCFI1653:
	subq	$200, %rsp
LCFI1654:
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	call	_smpArray_init
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-112(%rbp), %rdi
	call	_gc_stack_push
	testl	%eax, %eax
	jne	L4300
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	jne	L4313
L4304:
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC124(%rip), %rsi
	call	_minihash_add
L4300:
	movq	-56(%rbp), %r15
	movq	$0, -184(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -208(%rbp)
	jmp	L4305
	.align 4,0x90
L4306:
	movq	%r14, %rax
	salq	$5, %rax
	addq	(%r15), %rax
	movq	%r13, 24(%rax)
	movq	-200(%rbp), %rdx
	movq	%rdx, 16(%rax)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %ecx
	movzbl	8(%rax), %edx
	andl	$-4, %edx
	andl	$1, %r12d
	orl	%ecx, %edx
	orl	%r12d, %edx
	movb	%dl, 8(%rax)
	movq	-192(%rbp), %rdx
	movq	%rdx, (%rax)
	incq	-184(%rbp)
	cmpq	$100, -184(%rbp)
	je	L4314
L4305:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %r13
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	movq	-208(%rbp), %rdi
	call	_obj_init
	movq	%r13, -120(%rbp)
	movq	-144(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	%rax, -96(%rbp)
	movq	%r13, -88(%rbp)
	movzbl	-104(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	8(%r15), %r14
	leaq	1(%r14), %rax
	movq	%rax, 8(%r15)
	movq	%rax, %rdx
	salq	$5, %rdx
	cmpq	$4, %rdx
	jbe	L4306
	leaq	-1(%rdx), %rax
	testq	%rdx, %rax
	jne	L4306
	movq	%rdx, %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$8, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$16, %rax
	orq	%rdx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	incq	%rsi
	movq	(%r15), %rdi
	call	_realloc
	movq	%rax, (%r15)
	jmp	L4306
L4314:
	leaq	-176(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smp_println
	xorl	%eax, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4313:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
	jmp	L4304
LFE148:
	.cstring
LC125:
	.ascii "x\0"
LC126:
	.ascii "^\0"
	.text
	.align 4,0x90
.globl _test_gc
_test_gc:
LFB140:
	pushq	%rbp
LCFI1655:
	movq	%rsp, %rbp
LCFI1656:
	pushq	%r15
LCFI1657:
	pushq	%r14
LCFI1658:
	pushq	%r13
LCFI1659:
	pushq	%r12
LCFI1660:
	pushq	%rbx
LCFI1661:
	subq	$232, %rsp
LCFI1662:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %r14
	movl	$4, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-176(%rbp), %rbx
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init
	movq	-176(%rbp), %r12
	movq	%r12, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-160(%rbp), %r15
	movq	%r15, -128(%rbp)
	movq	%r14, -120(%rbp)
	movzbl	-136(%rbp), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -209(%rbp)
	movq	%r14, -152(%rbp)
	movl	%r13d, %edx
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-168(%rbp), %eax
	andl	$-4, %eax
	movzbl	-209(%rbp), %ecx
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -168(%rbp)
	movq	%rbx, %rdi
	call	_gc_stack_push
	testl	%eax, %eax
	jne	L4316
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	jne	L4326
L4320:
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC125(%rip), %rsi
	call	_minihash_add
L4316:
	movq	%r14, -56(%rbp)
	movq	%r15, -64(%rbp)
	andl	$1, %r13d
	addl	%r13d, %r13d
	movb	%r13b, -210(%rbp)
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	movzbl	-209(%rbp), %ebx
	andl	$1, %ebx
	orl	%r13d, %eax
	orl	%ebx, %eax
	movb	%al, -72(%rbp)
	movq	%r12, -80(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	%r12, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	%r14, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movl	$1, %edx
	leaq	LC126(%rip), %rsi
	movq	-224(%rbp), %rdi
	call	_smpObject_funcall
	leaq	-208(%rbp), %rdx
	movq	%rdx, -232(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, %rdi
	call	_smp_println
	movl	$1, %r13d
	movzbl	-210(%rbp), %eax
	movb	%al, -233(%rbp)
	.align 4,0x90
L4321:
	movq	%r14, -56(%rbp)
	movq	%r15, -64(%rbp)
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	orb	-233(%rbp), %al
	orl	%ebx, %eax
	movb	%al, -72(%rbp)
	movq	%r12, -80(%rbp)
	movq	%r12, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	%r14, 24(%rsp)
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movl	$1, %edx
	leaq	LC126(%rip), %rsi
	movq	-224(%rbp), %rdi
	call	_smpObject_funcall
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-232(%rbp), %rdi
	call	_smp_println
	incl	%r13d
	cmpl	$100, %r13d
	jne	L4321
	xorl	%eax, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4326:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
	jmp	L4320
LFE140:
	.align 4,0x90
.globl _smpGlobal_class_multiple
_smpGlobal_class_multiple:
LFB232:
	pushq	%rbp
LCFI1663:
	movq	%rsp, %rbp
LCFI1664:
	pushq	%r15
LCFI1665:
	pushq	%r14
LCFI1666:
	pushq	%r13
LCFI1667:
	pushq	%r12
LCFI1668:
	pushq	%rbx
LCFI1669:
	subq	$312, %rsp
LCFI1670:
	movq	%rdi, %rbx
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movl	%ecx, %r15d
	testq	%rsi, %rsi
	je	L4328
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	L4328
	movl	$1, %edx
	testb	$16, 12(%rax)
	jne	L4332
L4328:
	movq	%rbx, %rdi
	call	_strlen
	leaq	1(%rax), %rdi
	call	_malloc
	movq	%rax, -304(%rbp)
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_strcpy
	movq	_smpType_next_id@GOTPCREL(%rip), %rdx
	movl	(%rdx), %eax
	movl	%eax, -276(%rbp)
	incl	%eax
	movl	%eax, (%rdx)
	leaq	-240(%rbp), %rdx
	movq	%rdx, -312(%rbp)
	movq	_smpType_id@GOTPCREL(%rip), %rsi
	movq	%rdx, %rdi
	call	_obj_init
	movslq	-276(%rbp),%rax
	movq	%rax, -216(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	-304(%rbp), %rsi
	movq	_smpType_ids@GOTPCREL(%rip), %rdi
	call	_minihash_add
	movl	$32, %edi
	call	_malloc
	movq	%rax, %r14
	leaq	-112(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	-112(%rbp), %rax
	movq	%rax, (%r14)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%r14)
	movl	$32, %edi
	call	_malloc
	movq	%rax, %r13
	leaq	-144(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	-144(%rbp), %rax
	movq	%rax, (%r13)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%r13)
	movl	$32, %edi
	call	_malloc
	movq	%rax, %r12
	leaq	-176(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	-176(%rbp), %rax
	movq	%rax, (%r12)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%r12)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%r12)
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	leaq	-208(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	-208(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	_smpType_class@GOTPCREL(%rip), %rsi
	movq	-312(%rbp), %rdi
	call	_obj_init
	orb	$1, -232(%rbp)
	movl	$64, %edi
	call	_malloc
	movq	%rax, -216(%rbp)
	movq	%rbx, 56(%rax)
	movq	%r12, 48(%rax)
	movq	%r13, 40(%rax)
	movq	%r14, 32(%rax)
	movq	-296(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-288(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	%r15d, %esi
	shrl	$7, %esi
	andl	$1, %esi
	sall	$5, %esi
	movzbl	12(%rax), %edx
	andl	$-49, %edx
	movl	%r15d, %ecx
	shrl	$6, %ecx
	andl	$1, %ecx
	sall	$4, %ecx
	orl	%esi, %edx
	orl	%ecx, %edx
	movl	%r15d, %esi
	shrl	$2, %esi
	andl	$12, %esi
	andl	$-15, %edx
	movl	%r15d, %ecx
	shrl	%ecx
	andl	$1, %ecx
	addl	%ecx, %ecx
	orl	%esi, %edx
	orl	%ecx, %edx
	movl	%r15d, %ecx
	andl	$1, %ecx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 12(%rax)
	movl	-276(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-304(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-312(%rbp), %rdi
	call	_gc_stack_push
	movq	-240(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-272(%rbp), %rdi
	call	_gc_stack_push
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	L4332
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	jne	L4339
L4337:
	movq	-272(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-304(%rbp), %rsi
	call	_minihash_add
	xorl	%edx, %edx
L4332:
	movl	%edx, %eax
	addq	$312, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L4339:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
	jmp	L4337
LFE232:
	.align 4,0x90
.globl _smpGlobal_class
_smpGlobal_class:
LFB231:
	pushq	%rbp
LCFI1671:
	movq	%rsp, %rbp
LCFI1672:
	movq	%rbx, -24(%rbp)
LCFI1673:
	movq	%r12, -16(%rbp)
LCFI1674:
	movq	%r13, -8(%rbp)
LCFI1675:
	subq	$32, %rsp
LCFI1676:
	movq	%rdi, %r13
	movq	%rsi, %rbx
	movl	%edx, %r12d
	xorl	%esi, %esi
	xorl	%edx, %edx
	testq	%rbx, %rbx
	je	L4343
	testb	$16, 12(%rbx)
	je	L4349
	movl	$1, %eax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
	.align 4,0x90
L4349:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	movl	$1, %edx
L4343:
	movl	%r12d, %ecx
	movq	%r13, %rdi
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	jmp	_smpGlobal_class_multiple
LFE231:
	.cstring
LC127:
	.ascii "-\0"
LC128:
	.ascii "*\0"
LC129:
	.ascii "/\0"
LC130:
	.ascii "**\0"
LC131:
	.ascii "==\0"
LC132:
	.ascii "!=\0"
LC133:
	.ascii "<\0"
LC134:
	.ascii "<=\0"
LC135:
	.ascii ">=\0"
LC136:
	.ascii ">\0"
LC137:
	.ascii "PI\0"
LC138:
	.ascii "E\0"
	.text
	.align 4,0x90
.globl _smpFloat_create_class
_smpFloat_create_class:
LFB200:
	pushq	%rbp
LCFI1677:
	movq	%rsp, %rbp
LCFI1678:
	pushq	%r15
LCFI1679:
	pushq	%r14
LCFI1680:
	pushq	%r13
LCFI1681:
	pushq	%r12
LCFI1682:
	pushq	%rbx
LCFI1683:
	subq	$1320, %rsp
LCFI1684:
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movq	_smp_mpfr_default_prec@GOTPCREL(%rip), %rax
	movq	$53, (%rax)
	movl	$53, %edi
	call	_mpfr_set_default_prec
	movq	_scope_length@GOTPCREL(%rip), %r15
	movq	(%r15), %rdx
	testq	%rdx, %rdx
	je	L4358
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4358
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L4358
	.align 4,0x90
L4356:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4356
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4358
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4358
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4361
	.align 4,0x90
L4362:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4358
L4361:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4362
	movq	24(%rbx), %rcx
	movq	%rcx, -1248(%rbp)
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movb	%dl, -1249(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -1250(%rbp)
	movq	8(%rbx), %rcx
	movq	%rcx, -1264(%rbp)
	movq	32(%rbx), %rbx
	movq	%rbx, -1272(%rbp)
	jmp	L4355
	.align 4,0x90
L4358:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	16(%rax), %rdx
	movq	%rdx, -1248(%rbp)
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	sarb	$7, %cl
	movb	%cl, -1249(%rbp)
	sall	$7, %edx
	sarb	$7, %dl
	movb	%dl, -1250(%rbp)
	movq	(%rax), %rdx
	movq	%rdx, -1264(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -1272(%rbp)
L4355:
	xorl	%esi, %esi
	xorl	%edx, %edx
	cmpq	$0, -1272(%rbp)
	je	L4366
	movq	-1272(%rbp), %rcx
	testb	$16, 12(%rcx)
	je	L4404
L4367:
	movq	(%r15), %rdx
	testq	%rdx, %rdx
	je	L4369
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4369
	movq	(%rdi), %r8
	leaq	LC79(%rip), %rsi
	movl	$5381, %ecx
	movl	$70, %edx
	testq	%r8, %r8
	je	L4369
	.align 4,0x90
L4374:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4374
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4376
	movq	8(%rax), %r15
	testq	%r15, %r15
	je	L4376
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4379
	.align 4,0x90
L4380:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r15, %r12
	je	L4376
L4379:
	leaq	LC79(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4380
	movq	24(%rbx), %rax
	movq	%rax, -1240(%rbp)
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r8d
	sarb	$7, %r8b
	sall	$7, %eax
	movl	%eax, %r10d
	sarb	$7, %r10b
	movq	8(%rbx), %r15
	movq	32(%rbx), %r14
	jmp	L4373
L4369:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	16(%rax), %rdx
	movq	%rdx, -1240(%rbp)
L4403:
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r8d
	sarb	$7, %r8b
	sall	$7, %edx
	movl	%edx, %r10d
	sarb	$7, %r10b
	movq	(%rax), %r15
	movq	24(%rax), %r14
L4373:
	movq	_smpType_float@GOTPCREL(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	(%r14), %rax
	movq	-1280(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	8(%r14), %rax
	movq	%rax, 8(%rdx)
	movq	16(%r14), %rax
	movq	%rax, 16(%rdx)
	movq	24(%r14), %rax
	movq	%rax, 24(%rdx)
	movq	32(%r14), %rax
	movq	%rax, 32(%rdx)
	movq	40(%r14), %rax
	movq	%rax, 40(%rdx)
	movq	48(%r14), %rax
	movq	%rax, 48(%rdx)
	movq	56(%r14), %rax
	movq	%rax, 56(%rdx)
	movq	_smpType_ids@GOTPCREL(%rip), %rdi
	movq	(%rdi), %r9
	leaq	LC79(%rip), %rsi
	movl	$5381, %ecx
	movl	$70, %edx
	testq	%r9, %r9
	je	L4387
	.align 4,0x90
L4385:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4385
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r9,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4387
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4387
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4390
	.align 4,0x90
L4391:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4387
L4390:
	leaq	LC79(%rip), %rsi
	movq	(%rbx), %rdi
	movb	%r8b, -1288(%rbp)
	movb	%r10b, -1296(%rbp)
	call	_strcmp
	testl	%eax, %eax
	movzbl	-1288(%rbp), %r8d
	movzbl	-1296(%rbp), %r10d
	jne	L4391
	movq	32(%rbx), %rdx
	jmp	L4384
L4387:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
L4384:
	movq	_smpType_id_float@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	leaq	-112(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpFloat_clear(%rip), %rsi
	xorl	%eax, %eax
	movb	%r8b, -1288(%rbp)
	movb	%r10b, -1296(%rbp)
	call	_smpFunction_init
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1152(%rbp)
	movzbl	-1288(%rbp), %r8d
	andl	$1, %r8d
	leal	(%r8,%r8), %ebx
	movzbl	-1160(%rbp), %eax
	andl	$-4, %eax
	movzbl	-1296(%rbp), %r10d
	movl	$1, %r12d
	andl	%r10d, %r12d
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1160(%rbp)
	movq	%r15, -1168(%rbp)
	movq	%r14, -1144(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -1200(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -1192(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -1184(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1176(%rbp)
	leaq	-656(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1160(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC91(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC41(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpFloat_add(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rdx
	movq	%rdx, -1184(%rbp)
	movzbl	-1192(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1192(%rbp)
	movq	%r15, -1200(%rbp)
	movq	%r14, -1176(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -1168(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -1160(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -1152(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -1144(%rbp)
	leaq	-688(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1192(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC122(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-176(%rbp), %rdi
	leaq	LC41(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpFloat_sub(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rax
	movq	%rax, -1152(%rbp)
	movzbl	-1160(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1160(%rbp)
	movq	%r15, -1168(%rbp)
	movq	%r14, -1144(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -1200(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -1192(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -1184(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1176(%rbp)
	leaq	-720(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1160(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC127(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-208(%rbp), %rdi
	leaq	LC41(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpFloat_mul(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1184(%rbp)
	movzbl	-1192(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1192(%rbp)
	movq	%r15, -1200(%rbp)
	movq	%r14, -1176(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -1168(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -1160(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -1152(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -1144(%rbp)
	leaq	-752(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1192(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC128(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-240(%rbp), %rdi
	leaq	LC41(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpFloat_div(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rdx
	movq	%rdx, -1152(%rbp)
	movzbl	-1160(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1160(%rbp)
	movq	%r15, -1168(%rbp)
	movq	%r14, -1144(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -1200(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -1192(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -1184(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -1176(%rbp)
	leaq	-784(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1160(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC129(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-272(%rbp), %rdi
	leaq	LC41(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpFloat_pow(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rax
	movq	%rax, -1184(%rbp)
	movzbl	-1192(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1192(%rbp)
	movq	%r15, -1200(%rbp)
	movq	%r14, -1176(%rbp)
	movq	-272(%rbp), %rsi
	movq	%rsi, -1168(%rbp)
	movq	-264(%rbp), %rcx
	movq	%rcx, -1160(%rbp)
	movq	-256(%rbp), %rdx
	movq	%rdx, -1152(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -1144(%rbp)
	leaq	-816(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1192(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC130(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-304(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpInteger_equalp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1152(%rbp)
	movzbl	-1160(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1160(%rbp)
	movq	%r15, -1168(%rbp)
	movq	%r14, -1144(%rbp)
	movq	-304(%rbp), %rsi
	movq	%rsi, -1200(%rbp)
	movq	-296(%rbp), %rcx
	movq	%rcx, -1192(%rbp)
	movq	-288(%rbp), %rdx
	movq	%rdx, -1184(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -1176(%rbp)
	leaq	-848(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1160(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC131(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-336(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpInteger_nequalp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rdx
	movq	%rdx, -1184(%rbp)
	movzbl	-1192(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1192(%rbp)
	movq	%r15, -1200(%rbp)
	movq	%r14, -1176(%rbp)
	movq	-336(%rbp), %rsi
	movq	%rsi, -1168(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, -1160(%rbp)
	movq	-320(%rbp), %rdx
	movq	%rdx, -1152(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -1144(%rbp)
	leaq	-880(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1192(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC132(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-368(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpFloat_lt(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rax
	movq	%rax, -1152(%rbp)
	movzbl	-1160(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1160(%rbp)
	movq	%r15, -1168(%rbp)
	movq	%r14, -1144(%rbp)
	movq	-368(%rbp), %rsi
	movq	%rsi, -1200(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, -1192(%rbp)
	movq	-352(%rbp), %rdx
	movq	%rdx, -1184(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -1176(%rbp)
	leaq	-912(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1160(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC133(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-400(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpFloat_le(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1184(%rbp)
	movzbl	-1192(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1192(%rbp)
	movq	%r15, -1200(%rbp)
	movq	%r14, -1176(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rsi, -1168(%rbp)
	movq	-392(%rbp), %rcx
	movq	%rcx, -1160(%rbp)
	movq	-384(%rbp), %rdx
	movq	%rdx, -1152(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -1144(%rbp)
	leaq	-944(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1192(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC134(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-432(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpFloat_ge(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rdx
	movq	%rdx, -1152(%rbp)
	movzbl	-1160(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1160(%rbp)
	movq	%r15, -1168(%rbp)
	movq	%r14, -1144(%rbp)
	movq	-432(%rbp), %rsi
	movq	%rsi, -1200(%rbp)
	movq	-424(%rbp), %rcx
	movq	%rcx, -1192(%rbp)
	movq	-416(%rbp), %rdx
	movq	%rdx, -1184(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -1176(%rbp)
	leaq	-976(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1160(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC135(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-464(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpFloat_gt(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rax
	movq	%rax, -1184(%rbp)
	movzbl	-1192(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1192(%rbp)
	movq	%r15, -1200(%rbp)
	movq	%r14, -1176(%rbp)
	movq	-464(%rbp), %rsi
	movq	%rsi, -1168(%rbp)
	movq	-456(%rbp), %rcx
	movq	%rcx, -1160(%rbp)
	movq	-448(%rbp), %rdx
	movq	%rdx, -1152(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -1144(%rbp)
	leaq	-1008(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1192(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC136(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-496(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpFloat_eq(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1152(%rbp)
	movzbl	-1160(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1160(%rbp)
	movq	%r15, -1168(%rbp)
	movq	%r14, -1144(%rbp)
	movq	-496(%rbp), %rsi
	movq	%rsi, -1200(%rbp)
	movq	-488(%rbp), %rcx
	movq	%rcx, -1192(%rbp)
	movq	-480(%rbp), %rdx
	movq	%rdx, -1184(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, -1176(%rbp)
	leaq	-1040(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1160(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC92(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-528(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpFloat_equalp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rdx
	movq	%rdx, -1184(%rbp)
	movzbl	-1192(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1192(%rbp)
	movq	%r15, -1200(%rbp)
	movq	%r14, -1176(%rbp)
	movq	-528(%rbp), %rsi
	movq	%rsi, -1168(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -1160(%rbp)
	movq	-512(%rbp), %rdx
	movq	%rdx, -1152(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -1144(%rbp)
	leaq	-1072(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1192(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC76(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-560(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpFloat_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1240(%rbp), %rax
	movq	%rax, -1152(%rbp)
	movzbl	-1160(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1160(%rbp)
	movq	%r15, -1168(%rbp)
	movq	%r14, -1144(%rbp)
	movq	-560(%rbp), %rsi
	movq	%rsi, -1200(%rbp)
	movq	-552(%rbp), %rcx
	movq	%rcx, -1192(%rbp)
	movq	-544(%rbp), %rdx
	movq	%rdx, -1184(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -1176(%rbp)
	leaq	-1104(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1160(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1240(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rcx
	movl	(%rcx), %esi
	movq	%rbx, %rdi
	call	_mpfr_const_pi
	leaq	-1200(%rbp), %rdi
	movq	-1280(%rbp), %rsi
	call	_obj_init
	movq	-1200(%rbp), %r8
	movq	%r8, -592(%rbp)
	movq	-1192(%rbp), %rax
	movq	%rax, -584(%rbp)
	movq	-1184(%rbp), %rsi
	movq	%rsi, -576(%rbp)
	movq	%rbx, -568(%rbp)
	movzbl	-584(%rbp), %ecx
	movq	-1248(%rbp), %rax
	movq	%rax, -1184(%rbp)
	andb	$1, -1249(%rbp)
	movzbl	-1249(%rbp), %edx
	leal	(%rdx,%rdx), %r13d
	movzbl	-1192(%rbp), %eax
	andl	$-4, %eax
	movl	$1, %r14d
	andb	-1250(%rbp), %r14b
	orl	%r13d, %eax
	orl	%r14d, %eax
	movb	%al, -1192(%rbp)
	movq	-1264(%rbp), %rax
	movq	%rax, -1200(%rbp)
	movq	-1272(%rbp), %rdx
	movq	%rdx, -1176(%rbp)
	movq	%rbx, -1144(%rbp)
	movq	%rsi, -1152(%rbp)
	movl	%ecx, %edx
	andl	$2, %edx
	movzbl	-1160(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -1160(%rbp)
	movq	%r8, -1168(%rbp)
	leaq	-1136(%rbp), %rdi
	movq	%r8, 32(%rsp)
	movq	-1160(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rbx, 56(%rsp)
	movq	-1264(%rbp), %rcx
	movq	%rcx, (%rsp)
	movq	-1192(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1248(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-1272(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC137(%rip), %rdx
	movl	$257, %esi
	call	_smpType_def_general
	movl	$32, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_mpfr_init
	leaq	-80(%rbp), %r12
	movq	%r12, %rdi
	call	_mpfr_init
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	xorl	%edx, %edx
	movl	$1, %esi
	movq	%r12, %rdi
	call	_mpfr_set_ui_2exp
	movq	_smp_mpfr_rnd@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_mpfr_exp
	leaq	-1168(%rbp), %rdi
	movq	-1280(%rbp), %rsi
	call	_obj_init
	movq	-1168(%rbp), %r8
	movq	%r8, -624(%rbp)
	movq	-1160(%rbp), %rax
	movq	%rax, -616(%rbp)
	movq	-1152(%rbp), %rsi
	movq	%rsi, -608(%rbp)
	movq	%rbx, -600(%rbp)
	movzbl	-616(%rbp), %edx
	movq	-1248(%rbp), %rax
	movq	%rax, -1152(%rbp)
	movzbl	-1160(%rbp), %eax
	andl	$-4, %eax
	orl	%r13d, %eax
	orl	%r14d, %eax
	movb	%al, -1160(%rbp)
	movq	-1264(%rbp), %rcx
	movq	%rcx, -1168(%rbp)
	movq	-1272(%rbp), %rax
	movq	%rax, -1144(%rbp)
	movq	%rbx, -1176(%rbp)
	movq	%rsi, -1184(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-1192(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -1192(%rbp)
	movq	%r8, -1200(%rbp)
	leaq	-1232(%rbp), %rdi
	movq	%r8, 32(%rsp)
	movq	-1192(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rbx, 56(%rsp)
	movq	-1264(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1160(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1248(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	-1272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC138(%rip), %rdx
	movl	$257, %esi
	call	_smpType_def_general
	movq	%r12, %rdi
	call	_mpfr_clear
	xorl	%eax, %eax
	addq	$1320, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4404:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	-1272(%rbp), %rax
	movq	%rax, (%rsi)
	movl	$1, %edx
L4366:
	xorl	%ecx, %ecx
	leaq	LC79(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4367
L4376:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	16(%rax), %rcx
	movq	%rcx, -1240(%rbp)
	jmp	L4403
LFE200:
	.cstring
LC139:
	.ascii "Exception\0"
LC140:
	.ascii "RuntimeException\0"
LC141:
	.ascii "IncompleteTokenException\0"
LC142:
	.ascii "InternalException\0"
	.text
	.align 4,0x90
.globl _smpException_create_class
_smpException_create_class:
LFB186:
	pushq	%rbp
LCFI1685:
	movq	%rsp, %rbp
LCFI1686:
	pushq	%r15
LCFI1687:
	pushq	%r14
LCFI1688:
	pushq	%r13
LCFI1689:
	pushq	%r12
LCFI1690:
	pushq	%rbx
LCFI1691:
	subq	$600, %rsp
LCFI1692:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %r15
	testq	%r15, %r15
	je	L4406
	movq	%r15, %r14
	salq	$5, %r14
	movq	_scope_stack@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	subq	$32, %rax
	movq	%rax, %rdi
	addq	%r14, %rdi
	je	L4408
	movq	(%rdi), %r8
	leaq	LC139(%rip), %rsi
	movl	$5381, %ecx
	movl	$69, %edx
	testq	%r8, %r8
	je	L4408
	.align 4,0x90
L4412:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4412
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4414
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4414
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4417
	.align 4,0x90
L4418:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4414
L4417:
	leaq	LC139(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4418
	movq	32(%rbx), %rax
	movq	%rax, -536(%rbp)
	movq	24(%rbx), %rdx
	movq	%rdx, -544(%rbp)
	movzbl	16(%rbx), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	sarb	$7, %cl
	movb	%cl, -545(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -546(%rbp)
	movq	8(%rbx), %rbx
	movq	%rbx, -560(%rbp)
L4420:
	movq	_scope_stack@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	subq	$32, %rax
	leaq	(%r14,%rax), %r8
L4423:
	movq	(%r8), %rdi
	leaq	LC140(%rip), %rsi
	movl	$5381, %ecx
	movl	$82, %edx
	testq	%rdi, %rdi
	je	L4477
	.align 4,0x90
L4428:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4428
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%r8)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%rdi,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4430
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4430
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4433
	.align 4,0x90
L4434:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4430
L4433:
	leaq	LC140(%rip), %rsi
	movq	(%rbx), %rdi
	movq	%r8, -568(%rbp)
	call	_strcmp
	testl	%eax, %eax
	movq	-568(%rbp), %r8
	jne	L4434
	movq	32(%rbx), %rbx
	movq	%rbx, -528(%rbp)
	movq	%rbx, %r14
L4436:
	movq	%r8, %rdi
L4437:
	movq	(%rdi), %r8
	leaq	LC29(%rip), %rsi
	movl	$5381, %ecx
	movl	$84, %edx
	testq	%r8, %r8
	je	L4478
	.align 4,0x90
L4442:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4442
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4444
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4444
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4447
	.align 4,0x90
L4448:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4444
L4447:
	leaq	LC29(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4448
	movq	32(%rbx), %rax
	movq	%rax, -504(%rbp)
	movq	24(%rbx), %rdx
	movq	%rdx, -512(%rbp)
	movzbl	16(%rbx), %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	%ecx, %r13d
	sarb	$7, %r13b
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -513(%rbp)
	movq	8(%rbx), %r15
	jmp	L4441
	.align 4,0x90
L4406:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	24(%rcx), %rbx
	movq	%rbx, -536(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -544(%rbp)
	movzbl	8(%rcx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movb	%dl, -545(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -546(%rbp)
	movq	(%rcx), %rbx
	movq	%rbx, -560(%rbp)
	movq	-536(%rbp), %r14
	movq	%r14, -528(%rbp)
	movq	%r14, %rdx
L4411:
	movq	16(%rcx), %rax
	movq	%rax, -512(%rbp)
	movzbl	8(%rcx), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	movl	%ebx, %r13d
	sarb	$7, %r13b
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -513(%rbp)
	movq	(%rcx), %r15
	movq	%rdx, -504(%rbp)
L4441:
	cmpq	$0, -528(%rbp)
	je	L4450
	testb	$16, 12(%r14)
	je	L4479
L4452:
	testb	$16, 12(%r14)
	je	L4480
L4457:
	leaq	-80(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpException_gc_mark(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-536(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-544(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	andb	$1, -545(%rbp)
	movzbl	-545(%rbp), %ecx
	leal	(%rcx,%rcx), %r12d
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	movzbl	-546(%rbp), %ebx
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -456(%rbp)
	movq	-560(%rbp), %rax
	movq	%rax, -464(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-272(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-560(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-544(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	-536(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC95(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpException_clear(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-536(%rbp), %rdx
	movq	%rdx, -408(%rbp)
	movq	-544(%rbp), %rcx
	movq	%rcx, -416(%rbp)
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -424(%rbp)
	movq	-560(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-304(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-560(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-544(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	-536(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC91(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpException_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-536(%rbp), %rdx
	movq	%rdx, -440(%rbp)
	movq	-544(%rbp), %rcx
	movq	%rcx, -448(%rbp)
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -456(%rbp)
	movq	-560(%rbp), %rbx
	movq	%rbx, -464(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-336(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rbx, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-544(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-536(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-176(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpTypeError_gc_mark(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rcx
	movq	%rcx, -408(%rbp)
	movq	-512(%rbp), %rbx
	movq	%rbx, -416(%rbp)
	andl	$1, %r13d
	leal	(%r13,%r13), %r12d
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	movzbl	-513(%rbp), %ebx
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -424(%rbp)
	movq	%r15, -432(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-368(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-512(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-504(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC95(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def_general
	leaq	-208(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpTypeError_clear(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rcx
	movq	%rcx, -440(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -448(%rbp)
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -456(%rbp)
	movq	%r15, -464(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -432(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-400(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-512(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	-504(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC91(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def_general
	leaq	-240(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpTypeError_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-504(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-512(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -424(%rbp)
	movq	%r15, -432(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -448(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-496(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-512(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	-504(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$600, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4480:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%r14, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC142(%rip), %rdi
	call	_smpGlobal_class_multiple
	xorl	%esi, %esi
	xorl	%edx, %edx
	cmpq	$0, -528(%rbp)
	je	L4456
L4454:
	testb	$16, 12(%r14)
	jne	L4457
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%r14, (%rax)
	movl	$1, %edx
L4456:
	xorl	%ecx, %ecx
	leaq	LC77(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4457
L4479:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%r14, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC26(%rip), %rdi
	call	_smpGlobal_class_multiple
	testb	$16, 12(%r14)
	jne	L4454
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%r14, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC141(%rip), %rdi
	call	_smpGlobal_class_multiple
	testb	$16, 12(%r14)
	jne	L4457
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%r14, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC62(%rip), %rdi
	call	_smpGlobal_class_multiple
	testb	$16, 12(%r14)
	jne	L4457
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%r14, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC13(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4452
L4408:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	24(%rcx), %rax
	movq	%rax, -536(%rbp)
	movq	16(%rcx), %rdx
	movq	%rdx, -544(%rbp)
	movzbl	8(%rcx), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	movb	%bl, -545(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -546(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -560(%rbp)
	movq	%r15, %r14
	salq	$5, %r14
	movq	_scope_stack@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	subq	$32, %rax
	movq	-536(%rbp), %rbx
	movq	%rbx, -528(%rbp)
	movq	%rax, %r8
	addq	%r14, %r8
	jne	L4423
L4422:
	movq	-528(%rbp), %r14
	movq	%r14, %rdx
	testq	%r15, %r15
	je	L4411
	salq	$5, %r15
	movq	%r15, %rdi
	addq	%rax, %rdi
	jne	L4437
L4476:
	movq	24(%rcx), %rdx
	jmp	L4411
L4430:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	%rax, %r14
	jmp	L4436
L4444:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rbx
	movq	%rbx, -504(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -512(%rbp)
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r13d
	sarb	$7, %r13b
	sall	$7, %edx
	sarb	$7, %dl
	movb	%dl, -513(%rbp)
	movq	(%rax), %r15
	jmp	L4441
L4414:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rbx
	movq	%rbx, -536(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -544(%rbp)
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	sarb	$7, %cl
	movb	%cl, -545(%rbp)
	sall	$7, %edx
	sarb	$7, %dl
	movb	%dl, -546(%rbp)
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	jmp	L4420
L4477:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	movq	24(%rcx), %rbx
	movq	%rbx, -528(%rbp)
	jmp	L4422
L4478:
	movq	_smp_nil@GOTPCREL(%rip), %rcx
	jmp	L4476
L4450:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	LC26(%rip), %rdi
	call	_smpGlobal_class_multiple
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	LC141(%rip), %rdi
	call	_smpGlobal_class_multiple
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	LC62(%rip), %rdi
	call	_smpGlobal_class_multiple
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	LC13(%rip), %rdi
	call	_smpGlobal_class_multiple
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	LC142(%rip), %rdi
	call	_smpGlobal_class_multiple
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	L4456
LFE186:
	.align 4,0x90
.globl _smpArray_create_class
_smpArray_create_class:
LFB163:
	pushq	%rbp
LCFI1693:
	movq	%rsp, %rbp
LCFI1694:
	pushq	%r15
LCFI1695:
	pushq	%r14
LCFI1696:
	pushq	%r13
LCFI1697:
	pushq	%r12
LCFI1698:
	pushq	%rbx
LCFI1699:
	subq	$600, %rsp
LCFI1700:
	movq	_smpType_object@GOTPCREL(%rip), %rbx
	testb	$16, 12(%rbx)
	je	L4502
L4482:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4484
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4484
	movq	(%rdi), %r8
	leaq	LC19(%rip), %rsi
	movl	$5381, %ecx
	movl	$65, %edx
	testq	%r8, %r8
	je	L4484
	.align 4,0x90
L4489:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4489
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4491
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4491
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4494
	.align 4,0x90
L4495:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4491
L4494:
	leaq	LC19(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4495
	movq	32(%rbx), %rax
	movq	%rax, -568(%rbp)
	movq	24(%rbx), %r15
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	8(%rbx), %r14
	jmp	L4488
	.align 4,0x90
L4484:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -568(%rbp)
L4501:
	movq	16(%rax), %r15
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	(%rax), %r14
L4488:
	leaq	-80(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpArray_add_now(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-568(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	%r15, -480(%rbp)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	-488(%rbp), %eax
	andl	$-4, %eax
	movl	%r13d, %ebx
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -488(%rbp)
	movq	%r14, -496(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -528(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -520(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -512(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -504(%rbp)
	leaq	-304(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-568(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC118(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpArray_clear(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-568(%rbp), %rcx
	movq	%rcx, -504(%rbp)
	movq	%r15, -512(%rbp)
	movzbl	-520(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -520(%rbp)
	movq	%r14, -528(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -496(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -488(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -480(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -472(%rbp)
	leaq	-336(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-568(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC91(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpArray_gc_mark(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-568(%rbp), %rdx
	movq	%rdx, -472(%rbp)
	movq	%r15, -480(%rbp)
	movzbl	-488(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -488(%rbp)
	movq	%r14, -496(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -528(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -520(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -512(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -504(%rbp)
	leaq	-368(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-568(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC95(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-176(%rbp), %rdi
	leaq	LC2(%rip), %r8
	leaq	LC19(%rip), %rcx
	movl	$2, %edx
	leaq	_smpArray_map(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-568(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	%r15, -512(%rbp)
	movzbl	-520(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -520(%rbp)
	movq	%r14, -528(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -496(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -488(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -480(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -472(%rbp)
	leaq	-400(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-568(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC120(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-208(%rbp), %rdi
	leaq	LC113(%rip), %rcx
	movq	%rcx, (%rsp)
	leaq	LC37(%rip), %r9
	leaq	LC2(%rip), %r8
	leaq	LC19(%rip), %rcx
	movl	$2, %edx
	leaq	_smpArray_reduce(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-568(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	%r15, -480(%rbp)
	movzbl	-488(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -488(%rbp)
	movq	%r14, -496(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -528(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -520(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -512(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -504(%rbp)
	leaq	-432(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-568(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC121(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-240(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpArray_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-568(%rbp), %rcx
	movq	%rcx, -504(%rbp)
	movq	%r15, -512(%rbp)
	movzbl	-520(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -520(%rbp)
	movq	%r14, -528(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -496(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -488(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -480(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -472(%rbp)
	leaq	-464(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-568(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-272(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpArray_write(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-568(%rbp), %rdx
	movq	%rdx, -472(%rbp)
	movq	%r15, -480(%rbp)
	movzbl	-488(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -488(%rbp)
	movq	%r14, -496(%rbp)
	movq	-272(%rbp), %rsi
	movq	%rsi, -528(%rbp)
	movq	-264(%rbp), %rcx
	movq	%rcx, -520(%rbp)
	movq	-256(%rbp), %rdx
	movq	%rdx, -512(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -504(%rbp)
	leaq	-560(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-568(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC72(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$600, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4502:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC19(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4482
L4491:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -568(%rbp)
	jmp	L4501
LFE163:
	.cstring
LC143:
	.ascii "Card\0"
	.text
	.align 4,0x90
.globl _test_external_classes
_test_external_classes:
LFB150:
	pushq	%rbp
LCFI1701:
	movq	%rsp, %rbp
LCFI1702:
	pushq	%rbx
LCFI1703:
	subq	$8, %rsp
LCFI1704:
	movq	_smpType_object@GOTPCREL(%rip), %rbx
	testb	$16, 12(%rbx)
	jne	L4504
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC143(%rip), %rdi
	call	_smpGlobal_class_multiple
L4504:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE150:
	.cstring
LC144:
	.ascii "ID\0"
LC145:
	.ascii "Atom\0"
LC146:
	.ascii "CompileError\0"
LC147:
	.ascii "SyntaxError\0"
LC148:
	.ascii "->\0"
LC149:
	.ascii "cons\0"
LC150:
	.ascii "funcall\0"
LC151:
	.ascii "type\0"
LC152:
	.ascii "types_equal?\0"
LC153:
	.ascii "and\0"
LC154:
	.ascii "or\0"
LC155:
	.ascii "xor\0"
LC156:
	.ascii "&&\0"
LC157:
	.ascii "||\0"
	.text
	.align 4,0x90
.globl _init_fundamental_classes
_init_fundamental_classes:
LFB136:
	pushq	%rbp
LCFI1705:
	movq	%rsp, %rbp
LCFI1706:
	pushq	%r15
LCFI1707:
	pushq	%r14
LCFI1708:
	pushq	%r13
LCFI1709:
	pushq	%r12
LCFI1710:
	pushq	%rbx
LCFI1711:
	subq	$1704, %rsp
LCFI1712:
	movq	_smpType_next_id@GOTPCREL(%rip), %r12
	movl	$1, (%r12)
	leaq	-816(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	_smpType_ids@GOTPCREL(%rip), %rdx
	movq	-816(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-808(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-800(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-792(%rbp), %rax
	movq	%rax, 24(%rdx)
	movl	$128, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	LC113(%rip), %rdi
	call	_smpGlobal_class_multiple
	movq	_smpType_id@GOTPCREL(%rip), %rbx
	leaq	LC144(%rip), %rax
	movq	%rax, (%rbx)
	movl	(%r12), %eax
	movl	%eax, 8(%rbx)
	incl	%eax
	movl	%eax, (%r12)
	movq	$1, 24(%rbx)
	movl	$8, %edi
	call	_malloc
	movq	%rax, 16(%rbx)
	movq	_smpType_object@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	$0, 32(%rbx)
	movq	$0, 40(%rbx)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4515
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4515
	movq	(%rdi), %r8
	leaq	LC113(%rip), %rsi
	movl	$5381, %ecx
	movl	$79, %edx
	testq	%r8, %r8
	je	L4515
	.align 4,0x90
L4513:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4513
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4515
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4515
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4518
	.align 4,0x90
L4519:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4515
L4518:
	leaq	LC113(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4519
	movq	24(%rbx), %rax
	movq	%rax, -1656(%rbp)
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movb	%dl, -1657(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -1658(%rbp)
	movq	8(%rbx), %rax
	movq	%rax, -1672(%rbp)
	movq	32(%rbx), %r15
	jmp	L4512
	.align 4,0x90
L4515:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -1656(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movzbl	8(%rdx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movb	%dl, -1657(%rbp)
	sall	$7, %eax
	sarb	$7, %al
	movb	%al, -1658(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1672(%rbp)
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	24(%rdx), %r15
L4512:
	movq	(%r15), %rax
	movq	_smpType_object@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	8(%r15), %rax
	movq	%rax, 8(%rdx)
	movq	16(%r15), %rax
	movq	%rax, 16(%rdx)
	movq	24(%r15), %rax
	movq	%rax, 24(%rdx)
	movq	32(%r15), %rax
	movq	%rax, 32(%rdx)
	movq	40(%r15), %rax
	movq	%rax, 40(%rdx)
	movq	48(%r15), %rax
	movq	%rax, 48(%rdx)
	movq	56(%r15), %rax
	movq	%rax, 56(%rdx)
	testb	$16, 12(%rdx)
	je	L4789
L4521:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4530
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4530
	movq	(%rdi), %r8
	leaq	LC6(%rip), %rsi
	movl	$5381, %ecx
	movl	$67, %edx
	testq	%r8, %r8
	je	L4530
	.align 4,0x90
L4528:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4528
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4530
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4530
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4533
	.align 4,0x90
L4534:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4530
L4533:
	leaq	LC6(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4534
	movq	32(%rbx), %rdx
	jmp	L4527
	.align 4,0x90
L4530:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
L4527:
	movq	_smpType_class@GOTPCREL(%rip), %r14
	movq	(%rdx), %rax
	movq	%rax, (%r14)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r14)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r14)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r14)
	movq	32(%rdx), %rax
	movq	%rax, 32(%r14)
	movq	40(%rdx), %rax
	movq	%rax, 40(%r14)
	movq	48(%rdx), %rax
	movq	%rax, 48(%r14)
	movq	56(%rdx), %rax
	movq	%rax, 56(%r14)
	movl	8(%r14), %edx
	movq	_smpType_id_class@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movq	_smpType_object@GOTPCREL(%rip), %rdx
	testb	$16, 12(%rdx)
	je	L4790
L4536:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4538
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4538
	movq	(%rdi), %r8
	leaq	LC2(%rip), %rsi
	movl	$5381, %ecx
	movl	$70, %edx
	testq	%r8, %r8
	je	L4538
	.align 4,0x90
L4543:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4543
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4545
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4545
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4548
	.align 4,0x90
L4549:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4545
L4548:
	leaq	LC2(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4549
	movq	32(%rbx), %rcx
	jmp	L4542
	.align 4,0x90
L4538:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	24(%rdx), %rcx
L4542:
	movq	_smpType_function@GOTPCREL(%rip), %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rdx)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rdx)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rdx)
	movq	32(%rcx), %rax
	movq	%rax, 32(%rdx)
	movq	40(%rcx), %rax
	movq	%rax, 40(%rdx)
	movq	48(%rcx), %rax
	movq	%rax, 48(%rdx)
	movq	56(%rcx), %rax
	movq	%rax, 56(%rdx)
	movl	8(%r14), %edx
	movq	_smpType_id_fun@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movq	_smpType_object@GOTPCREL(%rip), %rdx
	testb	$16, 12(%rdx)
	je	L4791
L4551:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4560
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4560
	movq	(%rdi), %r8
	leaq	LC145(%rip), %rsi
	movl	$5381, %ecx
	movl	$65, %edx
	testq	%r8, %r8
	je	L4560
	.align 4,0x90
L4558:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4558
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4560
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4560
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4563
	.align 4,0x90
L4564:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4560
L4563:
	leaq	LC145(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4564
	movq	32(%rbx), %rdx
	jmp	L4557
	.align 4,0x90
L4560:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
L4557:
	movq	_smpType_atom@GOTPCREL(%rip), %r14
	movq	(%rdx), %rax
	movq	%rax, (%r14)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r14)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r14)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r14)
	movq	32(%rdx), %rax
	movq	%rax, 32(%r14)
	movq	40(%rdx), %rax
	movq	%rax, 40(%r14)
	movq	48(%rdx), %rax
	movq	%rax, 48(%r14)
	movq	56(%rdx), %rax
	movq	%rax, 56(%r14)
	testb	$16, 12(%r14)
	je	L4792
L4566:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4568
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4568
	movq	(%rdi), %r8
	leaq	LC5(%rip), %rsi
	movl	$5381, %ecx
	movl	$83, %edx
	testq	%r8, %r8
	je	L4568
	.align 4,0x90
L4573:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4573
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4575
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4575
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4578
	.align 4,0x90
L4579:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4575
L4578:
	leaq	LC5(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4579
	movq	32(%rbx), %rcx
	jmp	L4572
	.align 4,0x90
L4568:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	24(%rdx), %rcx
L4572:
	movq	_smpType_string@GOTPCREL(%rip), %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rdx)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rdx)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rdx)
	movq	32(%rcx), %rax
	movq	%rax, 32(%rdx)
	movq	40(%rcx), %rax
	movq	%rax, 40(%rdx)
	movq	48(%rcx), %rax
	movq	%rax, 48(%rdx)
	movq	56(%rcx), %rax
	movq	%rax, 56(%rdx)
	testb	$16, 12(%r14)
	je	L4793
L4581:
	movq	_smpType_object@GOTPCREL(%rip), %rdx
	testb	$16, 12(%rdx)
	je	L4794
L4583:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4592
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4592
	movq	(%rdi), %r8
	leaq	LC61(%rip), %rsi
	movl	$5381, %ecx
	movl	$67, %edx
	testq	%r8, %r8
	je	L4592
	.align 4,0x90
L4590:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4590
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4592
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4592
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4595
	.align 4,0x90
L4596:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4592
L4595:
	leaq	LC61(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4596
	movq	32(%rbx), %rdx
	jmp	L4589
	.align 4,0x90
L4592:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
L4589:
	movq	_smpType_collection@GOTPCREL(%rip), %rbx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rbx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rbx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rbx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rbx)
	testb	$16, 12(%rbx)
	je	L4795
L4598:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4607
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4607
	movq	(%rdi), %r8
	leaq	LC28(%rip), %rsi
	movl	$5381, %ecx
	movl	$80, %edx
	testq	%r8, %r8
	je	L4607
	.align 4,0x90
L4605:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4605
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4607
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4607
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4610
	.align 4,0x90
L4611:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4607
L4610:
	leaq	LC28(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4611
	movq	32(%rbx), %rdx
	jmp	L4604
	.align 4,0x90
L4607:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
L4604:
	movq	_smpType_pair@GOTPCREL(%rip), %rbx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rbx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rbx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rbx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rbx)
	testb	$16, 12(%rbx)
	je	L4796
L4613:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4622
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4622
	movq	(%rdi), %r8
	leaq	LC75(%rip), %rsi
	movl	$5381, %ecx
	movl	$76, %edx
	testq	%r8, %r8
	je	L4622
	.align 4,0x90
L4620:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4620
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4622
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4622
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4625
	.align 4,0x90
L4626:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4622
L4625:
	leaq	LC75(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4626
	movq	32(%rbx), %rdx
	jmp	L4619
	.align 4,0x90
L4622:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
L4619:
	movq	_smpType_list@GOTPCREL(%rip), %r13
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
	movq	32(%rdx), %rax
	movq	%rax, 32(%r13)
	movq	40(%rdx), %rax
	movq	%rax, 40(%r13)
	movq	48(%rdx), %rax
	movq	%rax, 48(%r13)
	movq	56(%rdx), %rax
	movq	%rax, 56(%r13)
	movl	8(%r13), %edx
	movq	_smpType_id_list@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4628
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4628
	movq	(%rdi), %r8
	leaq	LC116(%rip), %rsi
	movl	$5381, %ecx
	movl	$66, %edx
	testq	%r8, %r8
	je	L4628
	.align 4,0x90
L4633:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4633
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4635
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L4635
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4638
	.align 4,0x90
L4639:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L4635
L4638:
	leaq	LC116(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4639
	movq	32(%rbx), %r14
	jmp	L4632
	.align 4,0x90
L4628:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	24(%rdx), %r14
L4632:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%r13, (%rax)
	movq	%r14, 8(%rax)
	movl	$144, %ecx
	movl	$2, %edx
	leaq	LC112(%rip), %rdi
	call	_smpGlobal_class_multiple
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4648
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4648
	movq	(%rdi), %r8
	leaq	LC112(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L4648
	.align 4,0x90
L4646:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4646
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4648
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4648
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4651
	.align 4,0x90
L4652:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4648
L4651:
	leaq	LC112(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4652
	movq	32(%rbx), %rdx
	jmp	L4645
	.align 4,0x90
L4648:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
L4645:
	movq	_smpType_nil@GOTPCREL(%rip), %rbx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rbx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rbx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rbx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rbx)
	leaq	-1648(%rbp), %rdx
	movq	%rdx, -1680(%rbp)
	movq	%rbx, %rsi
	movq	%rdx, %rdi
	call	_obj_init
	movq	-1648(%rbp), %rax
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	-1640(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-1632(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-1624(%rbp), %rax
	movq	%rax, 24(%rdx)
	movl	8(%rbx), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movq	_smp_nil@GOTPCREL(%rip), %rax
	orb	$1, 8(%rax)
	xorl	%esi, %esi
	xorl	%edx, %edx
	testq	%r14, %r14
	je	L4656
	testb	$16, 12(%r14)
	je	L4797
L4657:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4659
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4659
	movq	(%rdi), %r8
	leaq	LC60(%rip), %rsi
	movl	$5381, %ecx
	movl	$84, %edx
	testq	%r8, %r8
	je	L4659
	.align 4,0x90
L4664:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4664
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4666
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4666
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4669
	.align 4,0x90
L4670:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4666
L4669:
	leaq	LC60(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4670
	movq	32(%rbx), %rsi
	jmp	L4663
	.align 4,0x90
L4659:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	24(%rdx), %rsi
L4663:
	movq	_smp_true@GOTPCREL(%rip), %rbx
	movq	-1680(%rbp), %rdi
	call	_obj_init
	movq	-1648(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-1640(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-1632(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-1624(%rbp), %rax
	movq	%rax, 24(%rbx)
	orb	$1, 8(%rbx)
	movq	_smpType_object@GOTPCREL(%rip), %rdx
	testb	$16, 12(%rdx)
	je	L4798
L4672:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4681
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4681
	movq	(%rdi), %r8
	leaq	LC139(%rip), %rsi
	movl	$5381, %ecx
	movl	$69, %edx
	testq	%r8, %r8
	je	L4681
	.align 4,0x90
L4679:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4679
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4681
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4681
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4684
	.align 4,0x90
L4685:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4681
L4684:
	leaq	LC139(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4685
	movq	32(%rbx), %rdx
	jmp	L4678
	.align 4,0x90
L4681:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
L4678:
	movq	_smpType_exception@GOTPCREL(%rip), %rbx
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rbx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rbx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rbx)
	movq	32(%rdx), %rax
	movq	%rax, 32(%rbx)
	movq	40(%rdx), %rax
	movq	%rax, 40(%rbx)
	movq	48(%rdx), %rax
	movq	%rax, 48(%rbx)
	movq	56(%rdx), %rax
	movq	%rax, 56(%rbx)
	testb	$16, 12(%rbx)
	je	L4799
L4687:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4690
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4690
	movq	(%rdi), %r8
	leaq	LC146(%rip), %rsi
	movl	$5381, %ecx
	movl	$67, %edx
	testq	%r8, %r8
	je	L4690
	.align 4,0x90
L4695:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4695
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4697
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4697
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4700
	.align 4,0x90
L4701:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4697
L4700:
	leaq	LC146(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4701
	movq	32(%rbx), %rbx
	jmp	L4694
	.align 4,0x90
L4690:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	24(%rdx), %rbx
L4694:
	testq	%rbx, %rbx
	je	L4703
	testb	$16, 12(%rbx)
	je	L4800
L4705:
	testb	$16, 12(%rbx)
	je	L4801
L4707:
	movq	_smpType_object@GOTPCREL(%rip), %rdx
	testb	$16, 12(%rdx)
	je	L4802
L4714:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4716
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4716
	movq	(%rdi), %r8
	leaq	LC15(%rip), %rsi
	movl	$5381, %ecx
	movl	$84, %edx
	testq	%r8, %r8
	je	L4716
	.align 4,0x90
L4721:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4721
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4723
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4723
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4726
	.align 4,0x90
L4727:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4723
L4726:
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4727
	movq	32(%rbx), %rcx
	jmp	L4720
	.align 4,0x90
L4716:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	24(%rdx), %rcx
L4720:
	movq	_smpType_thrown@GOTPCREL(%rip), %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rdx)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rdx)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rdx)
	movq	32(%rcx), %rax
	movq	%rax, 32(%rdx)
	movq	40(%rcx), %rax
	movq	%rax, 40(%rdx)
	movq	48(%rcx), %rax
	movq	%rax, 48(%rdx)
	movq	56(%rcx), %rax
	movq	%rax, 56(%rdx)
	movl	8(%rdx), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	leaq	-80(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_eq(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	andb	$1, -1657(%rbp)
	movzbl	-1657(%rbp), %ebx
	addl	%ebx, %ebx
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	movl	$1, %r12d
	andb	-1658(%rbp), %r12b
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1544(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	%r15, -1528(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-848(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC131(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_clear(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movzbl	-1608(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1608(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	%r15, -1592(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -1552(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -1544(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1528(%rbp)
	leaq	-880(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1608(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC91(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC75(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_cons(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1544(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	%r15, -1528(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-912(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC148(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-176(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC75(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_cons(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movzbl	-1608(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1608(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	%r15, -1592(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -1552(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -1544(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1528(%rbp)
	leaq	-944(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1608(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC149(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-208(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_eq(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1544(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	%r15, -1528(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-976(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC92(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-240(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_eql(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movzbl	-1608(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1608(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	%r15, -1592(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -1552(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -1544(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -1528(%rbp)
	leaq	-1008(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1608(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC97(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-272(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_equalp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1544(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	%r15, -1528(%rbp)
	movq	-272(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-264(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-256(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-1040(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC76(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-304(%rbp), %rdi
	leaq	LC113(%rip), %rdx
	movq	%rdx, (%rsp)
	leaq	LC38(%rip), %r9
	leaq	LC2(%rip), %r8
	movq	%rdx, %rcx
	movl	$4, %edx
	leaq	_smpObject_funcall_arg(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rax
	movq	%rax, -1600(%rbp)
	movzbl	-1608(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1608(%rbp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, -1616(%rbp)
	movq	%r15, -1592(%rbp)
	movq	-304(%rbp), %rsi
	movq	%rsi, -1552(%rbp)
	movq	-296(%rbp), %rcx
	movq	%rcx, -1544(%rbp)
	movq	-288(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -1528(%rbp)
	leaq	-1072(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-1608(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC150(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-336(%rbp), %rdi
	leaq	LC113(%rip), %rax
	movq	%rax, (%rsp)
	leaq	LC38(%rip), %r9
	leaq	LC2(%rip), %r8
	movq	%rax, %rcx
	movl	$4, %edx
	leaq	_smpObject_funcall_arg(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1544(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	%r15, -1528(%rbp)
	movq	-336(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-320(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-1104(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC150(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-368(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_gc_mark(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movzbl	-1608(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1608(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	%r15, -1592(%rbp)
	movq	-368(%rbp), %rsi
	movq	%rsi, -1552(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, -1544(%rbp)
	movq	-352(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -1528(%rbp)
	leaq	-1136(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1608(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC95(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def_general
	leaq	-400(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1544(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	%r15, -1528(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-392(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-384(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-1168(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-432(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_to_s_class(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movzbl	-1608(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1608(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	%r15, -1592(%rbp)
	movq	-432(%rbp), %rsi
	movq	%rsi, -1552(%rbp)
	movq	-424(%rbp), %rcx
	movq	%rcx, -1544(%rbp)
	movq	-416(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -1528(%rbp)
	leaq	-1200(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1608(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC68(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-464(%rbp), %rdi
	leaq	LC6(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_type(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1544(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	%r15, -1528(%rbp)
	movq	-464(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-456(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-448(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-1232(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC151(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-496(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpObject_types_equalp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movzbl	-1608(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1608(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	%r15, -1592(%rbp)
	movq	-496(%rbp), %rsi
	movq	%rsi, -1552(%rbp)
	movq	-488(%rbp), %rcx
	movq	%rcx, -1544(%rbp)
	movq	-480(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, -1528(%rbp)
	leaq	-1264(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1608(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC152(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-528(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_write(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1544(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	%r15, -1528(%rbp)
	movq	-528(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-512(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-1296(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC72(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-560(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpObject_write_class(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movzbl	-1608(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1608(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	%r15, -1592(%rbp)
	movq	-560(%rbp), %rsi
	movq	%rsi, -1552(%rbp)
	movq	-552(%rbp), %rcx
	movq	%rcx, -1544(%rbp)
	movq	-544(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -1528(%rbp)
	leaq	-1328(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1608(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC72(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-592(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpBool_and(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1544(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	%r15, -1528(%rbp)
	movq	-592(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-584(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-576(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-568(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-1360(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC153(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-624(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpBool_or(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movzbl	-1608(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1608(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	%r15, -1592(%rbp)
	movq	-624(%rbp), %rsi
	movq	%rsi, -1552(%rbp)
	movq	-616(%rbp), %rcx
	movq	%rcx, -1544(%rbp)
	movq	-608(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movq	-600(%rbp), %rax
	movq	%rax, -1528(%rbp)
	leaq	-1392(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1608(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC154(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-656(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpBool_xor(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1544(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	%r15, -1528(%rbp)
	movq	-656(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-648(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-640(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-632(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-1424(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC155(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-688(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpBool_and(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movzbl	-1608(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1608(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	%r15, -1592(%rbp)
	movq	-688(%rbp), %rsi
	movq	%rsi, -1552(%rbp)
	movq	-680(%rbp), %rcx
	movq	%rcx, -1544(%rbp)
	movq	-672(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movq	-664(%rbp), %rax
	movq	%rax, -1528(%rbp)
	leaq	-1456(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1608(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC156(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-720(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpBool_or(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1544(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	%r15, -1528(%rbp)
	movq	-720(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-712(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-704(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-1488(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC157(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-752(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpType_gc_mark(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1656(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movzbl	-1608(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1608(%rbp)
	movq	-1672(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	%r15, -1592(%rbp)
	movq	-752(%rbp), %rsi
	movq	%rsi, -1552(%rbp)
	movq	-744(%rbp), %rcx
	movq	%rcx, -1544(%rbp)
	movq	-736(%rbp), %rdx
	movq	%rdx, -1536(%rbp)
	movq	-728(%rbp), %rax
	movq	%rax, -1528(%rbp)
	leaq	-1520(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	-1672(%rbp), %rdx
	movq	%rdx, (%rsp)
	movq	-1608(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1656(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	leaq	LC95(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-784(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smptrue_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4736
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4736
	movq	(%rdi), %r8
	leaq	LC60(%rip), %rsi
	movl	$5381, %ecx
	movl	$84, %edx
	testq	%r8, %r8
	je	L4736
	.align 4,0x90
L4734:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4734
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4736
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4736
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4739
	.align 4,0x90
L4740:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4736
L4739:
	leaq	LC60(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4740
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	jmp	L4733
	.align 4,0x90
L4736:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	24(%rdx), %r10
	movq	16(%rdx), %r9
	movzbl	8(%rdx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	(%rax), %r8
L4733:
	movq	%r10, -1528(%rbp)
	movq	%r9, -1536(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-1544(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -1544(%rbp)
	movq	%r8, -1552(%rbp)
	movq	-784(%rbp), %rsi
	movq	%rsi, -1616(%rbp)
	movq	-776(%rbp), %rcx
	movq	%rcx, -1608(%rbp)
	movq	-768(%rbp), %rdx
	movq	%rdx, -1600(%rbp)
	movq	-760(%rbp), %rax
	movq	%rax, -1592(%rbp)
	leaq	-1584(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r8, (%rsp)
	movq	-1544(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	call	_smpFunction_create_class
	leaq	-1616(%rbp), %rdi
	leaq	LC61(%rip), %rsi
	call	_smp_getclass
	xorl	%eax, %eax
	call	_smpList_create_class
	xorl	%eax, %eax
	call	_smpNil_create_class
	xorl	%eax, %eax
	call	_smpPair_create_class
	xorl	%eax, %eax
	call	_smpThrown_create_class
	xorl	%eax, %eax
	call	_smpException_create_class
	xorl	%eax, %eax
	call	_smpstrcreate_class
	xorl	%eax, %eax
	addq	$1704, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4797:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%r14, (%rax)
	movl	$1, %edx
L4656:
	movl	$144, %ecx
	leaq	LC60(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4657
L4799:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC146(%rip), %rdi
	call	_smpGlobal_class_multiple
	testb	$16, 12(%rbx)
	jne	L4687
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC140(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4687
L4798:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	_smpType_object@GOTPCREL(%rip), %rax
	movq	%rax, (%rsi)
	movl	$128, %ecx
	movl	$1, %edx
	leaq	LC139(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4672
L4802:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	_smpType_object@GOTPCREL(%rip), %rax
	movq	%rax, (%rsi)
	movl	$128, %ecx
	movl	$1, %edx
	leaq	LC15(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4714
L4790:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	_smpType_object@GOTPCREL(%rip), %rax
	movq	%rax, (%rsi)
	movl	$128, %ecx
	movl	$1, %edx
	leaq	LC2(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4536
L4789:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	_smpType_object@GOTPCREL(%rip), %rax
	movq	%rax, (%rsi)
	movl	$128, %ecx
	movl	$1, %edx
	leaq	LC6(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4521
L4792:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%r14, (%rax)
	movl	$128, %ecx
	movl	$1, %edx
	leaq	LC5(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4566
L4791:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	_smpType_object@GOTPCREL(%rip), %rax
	movq	%rax, (%rsi)
	movl	$160, %ecx
	movl	$1, %edx
	leaq	LC145(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4551
L4794:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	_smpType_object@GOTPCREL(%rip), %rax
	movq	%rax, (%rsi)
	movl	$160, %ecx
	movl	$1, %edx
	leaq	LC61(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4583
L4793:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%r14, (%rax)
	movl	$160, %ecx
	movl	$1, %edx
	leaq	LC116(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4581
L4796:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	movl	$128, %ecx
	movl	$1, %edx
	leaq	LC75(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4613
L4795:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	movl	$128, %ecx
	movl	$1, %edx
	leaq	LC28(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4598
L4801:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	movl	$1, %edx
L4709:
	xorl	%ecx, %ecx
	leaq	LC64(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4707
L4800:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC16(%rip), %rdi
	call	_smpGlobal_class_multiple
	testb	$16, 12(%rbx)
	jne	L4707
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC33(%rip), %rdi
	call	_smpGlobal_class_multiple
	testb	$16, 12(%rbx)
	jne	L4707
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC147(%rip), %rdi
	call	_smpGlobal_class_multiple
	testb	$16, 12(%rbx)
	jne	L4707
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC29(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4705
L4697:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rbx
	jmp	L4694
L4723:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	jmp	L4720
L4575:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	jmp	L4572
L4545:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	jmp	L4542
L4635:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %r14
	jmp	L4632
L4666:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
	jmp	L4663
L4703:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	LC16(%rip), %rdi
	call	_smpGlobal_class_multiple
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	LC33(%rip), %rdi
	call	_smpGlobal_class_multiple
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	LC147(%rip), %rdi
	call	_smpGlobal_class_multiple
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	LC29(%rip), %rdi
	call	_smpGlobal_class_multiple
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	L4709
LFE136:
	.align 4,0x90
.globl _smpSymbol_create_class
_smpSymbol_create_class:
LFB361:
	pushq	%rbp
LCFI1713:
	movq	%rsp, %rbp
LCFI1714:
	pushq	%r15
LCFI1715:
	pushq	%r14
LCFI1716:
	pushq	%r13
LCFI1717:
	pushq	%r12
LCFI1718:
	pushq	%rbx
LCFI1719:
	subq	$280, %rsp
LCFI1720:
	movq	_smpType_string@GOTPCREL(%rip), %rbx
	testb	$16, 12(%rbx)
	je	L4824
L4804:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4806
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4806
	movq	(%rdi), %r8
	leaq	LC47(%rip), %rsi
	movl	$5381, %ecx
	movl	$83, %edx
	testq	%r8, %r8
	je	L4806
	.align 4,0x90
L4811:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4811
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4813
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4813
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4816
	.align 4,0x90
L4817:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4813
L4816:
	leaq	LC47(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4817
	movq	32(%rbx), %rax
	movq	%rax, -248(%rbp)
	movq	24(%rbx), %r15
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	8(%rbx), %r14
	jmp	L4810
	.align 4,0x90
L4806:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -248(%rbp)
L4823:
	movq	16(%rax), %r15
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	(%rax), %r14
L4810:
	leaq	-80(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpSymbol_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-248(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	%r15, -192(%rbp)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	-200(%rbp), %eax
	andl	$-4, %eax
	movl	%r13d, %ebx
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -200(%rbp)
	movq	%r14, -208(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -176(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -160(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-248(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpSymbol_write(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-248(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	%r15, -160(%rbp)
	movzbl	-168(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -168(%rbp)
	movq	%r14, -176(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -208(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC72(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$280, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4824:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC47(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4804
L4813:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -248(%rbp)
	jmp	L4823
LFE361:
	.cstring
LC158:
	.ascii "RegexMatch\0"
	.text
	.align 4,0x90
.globl _smpRegex_create_class
_smpRegex_create_class:
LFB333:
	pushq	%rbp
LCFI1721:
	movq	%rsp, %rbp
LCFI1722:
	pushq	%r15
LCFI1723:
	pushq	%r14
LCFI1724:
	pushq	%r13
LCFI1725:
	pushq	%r12
LCFI1726:
	pushq	%rbx
LCFI1727:
	subq	$200, %rsp
LCFI1728:
	movq	_smpType_object@GOTPCREL(%rip), %rbx
	testb	$16, 12(%rbx)
	je	L4845
L4826:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4835
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4835
	movq	(%rdi), %r8
	leaq	LC158(%rip), %rsi
	movl	$5381, %ecx
	movl	$82, %edx
	testq	%r8, %r8
	je	L4835
	.align 4,0x90
L4833:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4833
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4835
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4835
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4838
	.align 4,0x90
L4839:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4835
L4838:
	leaq	LC158(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4839
	movq	24(%rbx), %r15
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	8(%rbx), %r14
	movq	32(%rbx), %rbx
	jmp	L4832
	.align 4,0x90
L4835:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	16(%rax), %r15
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r13d
	sarb	$7, %r13b
	sall	$7, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	movq	(%rax), %r14
	movq	24(%rax), %rbx
L4832:
	movq	_smpType_regmatch@GOTPCREL(%rip), %rdx
	movq	(%rbx), %rax
	movq	%rax, (%rdx)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rdx)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rdx)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rdx)
	movq	32(%rbx), %rax
	movq	%rax, 32(%rdx)
	movq	40(%rbx), %rax
	movq	%rax, 40(%rdx)
	movq	48(%rbx), %rax
	movq	%rax, 48(%rdx)
	movq	56(%rbx), %rax
	movq	%rax, 56(%rdx)
	leaq	-80(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpregmatch_clear(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	%r15, -96(%rbp)
	andl	$1, %r13d
	leal	(%r13,%r13), %edx
	movzbl	-104(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, -104(%rbp)
	movq	%r14, -112(%rbp)
	movq	%rbx, -88(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	%rbx, 24(%rsp)
	leaq	LC91(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4845:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC158(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4826
LFE333:
	.align 4,0x90
.globl _smpNumber_create_class
_smpNumber_create_class:
LFB322:
	pushq	%rbp
LCFI1729:
	movq	%rsp, %rbp
LCFI1730:
	pushq	%r13
LCFI1731:
	pushq	%r12
LCFI1732:
	pushq	%rbx
LCFI1733:
	subq	$104, %rsp
LCFI1734:
	movq	_smpType_object@GOTPCREL(%rip), %rbx
	testb	$16, 12(%rbx)
	je	L4866
L4847:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4856
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4856
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L4856
	.align 4,0x90
L4854:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4854
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4856
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4856
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4859
	.align 4,0x90
L4860:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4856
L4859:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4860
	movq	8(%rbx), %rax
	movq	%rax, -64(%rbp)
	movq	16(%rbx), %rax
	movq	%rax, -56(%rbp)
	movq	24(%rbx), %rax
	movq	%rax, -48(%rbp)
	movq	32(%rbx), %rax
	movq	%rax, -40(%rbp)
	jmp	L4853
	.align 4,0x90
L4856:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -40(%rbp)
L4853:
	leaq	-96(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC41(%rip), %r9
	movq	%r9, %r8
	movl	$2, %ecx
	leaq	LC122(%rip), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_smpType_abstract_def
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC41(%rip), %r9
	movq	%r9, %r8
	movl	$2, %ecx
	leaq	LC127(%rip), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_smpType_abstract_def
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC41(%rip), %r9
	movq	%r9, %r8
	movl	$2, %ecx
	leaq	LC128(%rip), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_smpType_abstract_def
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC41(%rip), %r9
	movq	%r9, %r8
	movl	$2, %ecx
	leaq	LC129(%rip), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_smpType_abstract_def
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC113(%rip), %r9
	leaq	LC116(%rip), %r8
	movl	$2, %ecx
	leaq	LC133(%rip), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_smpType_abstract_def
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC113(%rip), %r9
	leaq	LC116(%rip), %r8
	movl	$2, %ecx
	leaq	LC134(%rip), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_smpType_abstract_def
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC113(%rip), %r9
	leaq	LC116(%rip), %r8
	movl	$2, %ecx
	leaq	LC135(%rip), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_smpType_abstract_def
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC113(%rip), %r9
	leaq	LC116(%rip), %r8
	movl	$2, %ecx
	leaq	LC136(%rip), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_smpType_abstract_def
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	leave
	ret
L4866:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC41(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4847
LFE322:
	.cstring
LC159:
	.ascii "to_list\0"
	.text
	.align 4,0x90
.globl _smpListBuffer_create_class
_smpListBuffer_create_class:
LFB310:
	pushq	%rbp
LCFI1735:
	movq	%rsp, %rbp
LCFI1736:
	pushq	%r15
LCFI1737:
	pushq	%r14
LCFI1738:
	pushq	%r13
LCFI1739:
	pushq	%r12
LCFI1740:
	pushq	%rbx
LCFI1741:
	subq	$344, %rsp
LCFI1742:
	movq	_smpType_nil@GOTPCREL(%rip), %rbx
	testb	$16, 12(%rbx)
	je	L4888
L4868:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4870
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4870
	movq	(%rdi), %r8
	leaq	LC30(%rip), %rsi
	movl	$5381, %ecx
	movl	$76, %edx
	testq	%r8, %r8
	je	L4870
	.align 4,0x90
L4875:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4875
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4877
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4877
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4880
	.align 4,0x90
L4881:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4877
L4880:
	leaq	LC30(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4881
	movq	32(%rbx), %rax
	movq	%rax, -312(%rbp)
	movq	24(%rbx), %r15
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	8(%rbx), %r14
	jmp	L4874
	.align 4,0x90
L4870:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -312(%rbp)
L4887:
	movq	16(%rax), %r15
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	(%rax), %r14
L4874:
	leaq	-80(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC112(%rip), %rcx
	movl	$2, %edx
	leaq	_smpListBuffer_add_now(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-312(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	%r15, -224(%rbp)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	-232(%rbp), %eax
	andl	$-4, %eax
	movl	%r13d, %ebx
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -232(%rbp)
	movq	%r14, -240(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -272(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -256(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-176(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-312(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC118(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpListBuffer_gc_mark(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-312(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	%r15, -256(%rbp)
	movzbl	-264(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -264(%rbp)
	movq	%r14, -272(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -240(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -224(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-208(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC95(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC75(%rip), %rcx
	movl	$1, %edx
	leaq	_smpListBuffer_to_list(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-312(%rbp), %rdx
	movq	%rdx, -216(%rbp)
	movq	%r15, -224(%rbp)
	movzbl	-232(%rbp), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, -232(%rbp)
	movq	%r14, -240(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -272(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -256(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-304(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-312(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC159(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$344, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4888:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	movl	$128, %ecx
	movl	$1, %edx
	leaq	LC30(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4868
L4877:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -312(%rbp)
	jmp	L4887
LFE310:
	.cstring
LC160:
	.ascii "%\0"
LC161:
	.ascii "mod\0"
LC162:
	.ascii "<<\0"
LC163:
	.ascii ">>\0"
LC164:
	.ascii "&\0"
LC165:
	.ascii "|\0"
	.text
	.align 4,0x90
.globl _smpInteger_create_class
_smpInteger_create_class:
LFB264:
	pushq	%rbp
LCFI1743:
	movq	%rsp, %rbp
LCFI1744:
	pushq	%r15
LCFI1745:
	pushq	%r14
LCFI1746:
	pushq	%r13
LCFI1747:
	pushq	%r12
LCFI1748:
	pushq	%rbx
LCFI1749:
	subq	$1576, %rsp
LCFI1750:
	leaq	_smp_free_size(%rip), %rdx
	leaq	_smp_realloc_size(%rip), %rsi
	leaq	_smp_malloc(%rip), %rdi
	call	___gmp_set_memory_functions
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %rdx
	testq	%rdx, %rdx
	je	L4897
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4897
	movq	(%rdi), %r8
	leaq	LC41(%rip), %rsi
	movl	$5381, %ecx
	movl	$78, %edx
	testq	%r8, %r8
	je	L4897
	.align 4,0x90
L4895:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4895
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4897
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4897
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4900
	.align 4,0x90
L4901:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4897
L4900:
	leaq	LC41(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4901
	movq	32(%rbx), %rbx
	jmp	L4894
	.align 4,0x90
L4897:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rbx
L4894:
	xorl	%esi, %esi
	xorl	%edx, %edx
	testq	%rbx, %rbx
	je	L4905
	testb	$16, 12(%rbx)
	je	L4943
L4906:
	movq	(%r14), %rdx
	testq	%rdx, %rdx
	je	L4908
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4908
	movq	(%rdi), %r8
	leaq	LC40(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L4908
	.align 4,0x90
L4913:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4913
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4915
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4915
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4918
	.align 4,0x90
L4919:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4915
L4918:
	leaq	LC40(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4919
	movq	24(%rbx), %rax
	movq	%rax, -1528(%rbp)
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r8d
	sarb	$7, %r8b
	sall	$7, %eax
	movl	%eax, %r10d
	sarb	$7, %r10b
	movq	8(%rbx), %r15
	movq	32(%rbx), %r14
	jmp	L4912
L4908:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	16(%rax), %rdx
	movq	%rdx, -1528(%rbp)
L4942:
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r8d
	sarb	$7, %r8b
	sall	$7, %edx
	movl	%edx, %r10d
	sarb	$7, %r10b
	movq	(%rax), %r15
	movq	24(%rax), %r14
L4912:
	movq	_smpType_int@GOTPCREL(%rip), %rax
	movq	%rax, -1536(%rbp)
	movq	(%r14), %rax
	movq	-1536(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	8(%r14), %rax
	movq	%rax, 8(%rdx)
	movq	16(%r14), %rax
	movq	%rax, 16(%rdx)
	movq	24(%r14), %rax
	movq	%rax, 24(%rdx)
	movq	32(%r14), %rax
	movq	%rax, 32(%rdx)
	movq	40(%r14), %rax
	movq	%rax, 40(%rdx)
	movq	48(%r14), %rax
	movq	%rax, 48(%rdx)
	movq	56(%r14), %rax
	movq	%rax, 56(%rdx)
	movq	_smpType_ids@GOTPCREL(%rip), %rdi
	movq	(%rdi), %r9
	leaq	LC40(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r9, %r9
	je	L4926
	.align 4,0x90
L4924:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4924
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r9,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4926
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4926
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4929
	.align 4,0x90
L4930:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4926
L4929:
	leaq	LC40(%rip), %rsi
	movq	(%rbx), %rdi
	movb	%r8b, -1544(%rbp)
	movb	%r10b, -1552(%rbp)
	call	_strcmp
	testl	%eax, %eax
	movzbl	-1544(%rbp), %r8d
	movzbl	-1552(%rbp), %r10d
	jne	L4930
	movq	32(%rbx), %rdx
	jmp	L4923
L4926:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
L4923:
	movq	_smpType_id_int@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	leaq	-80(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpInteger_clear(%rip), %rsi
	xorl	%eax, %eax
	movb	%r8b, -1544(%rbp)
	movb	%r10b, -1552(%rbp)
	call	_smpFunction_init
	movq	-1528(%rbp), %rcx
	movq	%rcx, -1504(%rbp)
	movzbl	-1544(%rbp), %r8d
	andl	$1, %r8d
	leal	(%r8,%r8), %ebx
	movzbl	-1512(%rbp), %eax
	andl	$-4, %eax
	movzbl	-1552(%rbp), %r10d
	movl	$1, %r12d
	andl	%r10d, %r12d
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1512(%rbp)
	movq	%r15, -1520(%rbp)
	movq	%r14, -1496(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -1488(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -1480(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1464(%rbp)
	leaq	-784(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1512(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC91(%rip), %rdx
	movl	$64, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC41(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_add(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movzbl	-1480(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1480(%rbp)
	movq	%r15, -1488(%rbp)
	movq	%r14, -1464(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -1520(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -1512(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1496(%rbp)
	leaq	-816(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1480(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC122(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC41(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_sub(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rax
	movq	%rax, -1504(%rbp)
	movzbl	-1512(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1512(%rbp)
	movq	%r15, -1520(%rbp)
	movq	%r14, -1496(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -1488(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -1480(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -1464(%rbp)
	leaq	-848(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1512(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC127(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-176(%rbp), %rdi
	leaq	LC41(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_mul(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rcx
	movq	%rcx, -1472(%rbp)
	movzbl	-1480(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1480(%rbp)
	movq	%r15, -1488(%rbp)
	movq	%r14, -1464(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -1520(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -1512(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1496(%rbp)
	leaq	-880(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1480(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC128(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-208(%rbp), %rdi
	leaq	LC41(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_div(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movzbl	-1512(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1512(%rbp)
	movq	%r15, -1520(%rbp)
	movq	%r14, -1496(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -1488(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -1480(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -1464(%rbp)
	leaq	-912(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1512(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC129(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-240(%rbp), %rdi
	leaq	LC40(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_mod(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rax
	movq	%rax, -1472(%rbp)
	movzbl	-1480(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1480(%rbp)
	movq	%r15, -1488(%rbp)
	movq	%r14, -1464(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -1520(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -1512(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -1496(%rbp)
	leaq	-944(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1480(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC160(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-272(%rbp), %rdi
	leaq	LC40(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_mod(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rcx
	movq	%rcx, -1504(%rbp)
	movzbl	-1512(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1512(%rbp)
	movq	%r15, -1520(%rbp)
	movq	%r14, -1496(%rbp)
	movq	-272(%rbp), %rsi
	movq	%rsi, -1488(%rbp)
	movq	-264(%rbp), %rcx
	movq	%rcx, -1480(%rbp)
	movq	-256(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -1464(%rbp)
	leaq	-976(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1512(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC161(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-304(%rbp), %rdi
	leaq	LC41(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_pow(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movzbl	-1480(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1480(%rbp)
	movq	%r15, -1488(%rbp)
	movq	%r14, -1464(%rbp)
	movq	-304(%rbp), %rsi
	movq	%rsi, -1520(%rbp)
	movq	-296(%rbp), %rcx
	movq	%rcx, -1512(%rbp)
	movq	-288(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -1496(%rbp)
	leaq	-1008(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1480(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC130(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-336(%rbp), %rdi
	leaq	LC40(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_shl(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rax
	movq	%rax, -1504(%rbp)
	movzbl	-1512(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1512(%rbp)
	movq	%r15, -1520(%rbp)
	movq	%r14, -1496(%rbp)
	movq	-336(%rbp), %rsi
	movq	%rsi, -1488(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, -1480(%rbp)
	movq	-320(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -1464(%rbp)
	leaq	-1040(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1512(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC162(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-368(%rbp), %rdi
	leaq	LC40(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_shr(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rcx
	movq	%rcx, -1472(%rbp)
	movzbl	-1480(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1480(%rbp)
	movq	%r15, -1488(%rbp)
	movq	%r14, -1464(%rbp)
	movq	-368(%rbp), %rsi
	movq	%rsi, -1520(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, -1512(%rbp)
	movq	-352(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -1496(%rbp)
	leaq	-1072(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1480(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC163(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-400(%rbp), %rdi
	leaq	LC40(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_and(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movzbl	-1512(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1512(%rbp)
	movq	%r15, -1520(%rbp)
	movq	%r14, -1496(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rsi, -1488(%rbp)
	movq	-392(%rbp), %rcx
	movq	%rcx, -1480(%rbp)
	movq	-384(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -1464(%rbp)
	leaq	-1104(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1512(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC164(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-432(%rbp), %rdi
	leaq	LC40(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_ior(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rax
	movq	%rax, -1472(%rbp)
	movzbl	-1480(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1480(%rbp)
	movq	%r15, -1488(%rbp)
	movq	%r14, -1464(%rbp)
	movq	-432(%rbp), %rsi
	movq	%rsi, -1520(%rbp)
	movq	-424(%rbp), %rcx
	movq	%rcx, -1512(%rbp)
	movq	-416(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -1496(%rbp)
	leaq	-1136(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1480(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC165(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-464(%rbp), %rdi
	leaq	LC40(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_xor(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rcx
	movq	%rcx, -1504(%rbp)
	movzbl	-1512(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1512(%rbp)
	movq	%r15, -1520(%rbp)
	movq	%r14, -1496(%rbp)
	movq	-464(%rbp), %rsi
	movq	%rsi, -1488(%rbp)
	movq	-456(%rbp), %rcx
	movq	%rcx, -1480(%rbp)
	movq	-448(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -1464(%rbp)
	leaq	-1168(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1512(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC126(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-496(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpInteger_equalp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movzbl	-1480(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1480(%rbp)
	movq	%r15, -1488(%rbp)
	movq	%r14, -1464(%rbp)
	movq	-496(%rbp), %rsi
	movq	%rsi, -1520(%rbp)
	movq	-488(%rbp), %rcx
	movq	%rcx, -1512(%rbp)
	movq	-480(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, -1496(%rbp)
	leaq	-1200(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1480(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC131(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-528(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpInteger_nequalp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rax
	movq	%rax, -1504(%rbp)
	movzbl	-1512(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1512(%rbp)
	movq	%r15, -1520(%rbp)
	movq	%r14, -1496(%rbp)
	movq	-528(%rbp), %rsi
	movq	%rsi, -1488(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -1480(%rbp)
	movq	-512(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -1464(%rbp)
	leaq	-1232(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1512(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC132(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-560(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpInteger_lt(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rcx
	movq	%rcx, -1472(%rbp)
	movzbl	-1480(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1480(%rbp)
	movq	%r15, -1488(%rbp)
	movq	%r14, -1464(%rbp)
	movq	-560(%rbp), %rsi
	movq	%rsi, -1520(%rbp)
	movq	-552(%rbp), %rcx
	movq	%rcx, -1512(%rbp)
	movq	-544(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -1496(%rbp)
	leaq	-1264(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1480(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC133(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-592(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpInteger_le(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movzbl	-1512(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1512(%rbp)
	movq	%r15, -1520(%rbp)
	movq	%r14, -1496(%rbp)
	movq	-592(%rbp), %rsi
	movq	%rsi, -1488(%rbp)
	movq	-584(%rbp), %rcx
	movq	%rcx, -1480(%rbp)
	movq	-576(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movq	-568(%rbp), %rax
	movq	%rax, -1464(%rbp)
	leaq	-1296(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1512(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC134(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-624(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpInteger_ge(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rax
	movq	%rax, -1472(%rbp)
	movzbl	-1480(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1480(%rbp)
	movq	%r15, -1488(%rbp)
	movq	%r14, -1464(%rbp)
	movq	-624(%rbp), %rsi
	movq	%rsi, -1520(%rbp)
	movq	-616(%rbp), %rcx
	movq	%rcx, -1512(%rbp)
	movq	-608(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movq	-600(%rbp), %rax
	movq	%rax, -1496(%rbp)
	leaq	-1328(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1480(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC135(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-656(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpInteger_gt(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rcx
	movq	%rcx, -1504(%rbp)
	movzbl	-1512(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1512(%rbp)
	movq	%r15, -1520(%rbp)
	movq	%r14, -1496(%rbp)
	movq	-656(%rbp), %rsi
	movq	%rsi, -1488(%rbp)
	movq	-648(%rbp), %rcx
	movq	%rcx, -1480(%rbp)
	movq	-640(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movq	-632(%rbp), %rax
	movq	%rax, -1464(%rbp)
	leaq	-1360(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1512(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC136(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-688(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpInteger_eq(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movzbl	-1480(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1480(%rbp)
	movq	%r15, -1488(%rbp)
	movq	%r14, -1464(%rbp)
	movq	-688(%rbp), %rsi
	movq	%rsi, -1520(%rbp)
	movq	-680(%rbp), %rcx
	movq	%rcx, -1512(%rbp)
	movq	-672(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movq	-664(%rbp), %rax
	movq	%rax, -1496(%rbp)
	leaq	-1392(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1480(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC92(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-720(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpInteger_equalp(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rax
	movq	%rax, -1504(%rbp)
	movzbl	-1512(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1512(%rbp)
	movq	%r15, -1520(%rbp)
	movq	%r14, -1496(%rbp)
	movq	-720(%rbp), %rsi
	movq	%rsi, -1488(%rbp)
	movq	-712(%rbp), %rcx
	movq	%rcx, -1480(%rbp)
	movq	-704(%rbp), %rdx
	movq	%rdx, -1472(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -1464(%rbp)
	leaq	-1424(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1512(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC76(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-752(%rbp), %rdi
	leaq	LC40(%rip), %r9
	leaq	LC37(%rip), %r8
	leaq	LC5(%rip), %rcx
	movl	$3, %edx
	leaq	_smpInteger_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-1528(%rbp), %rcx
	movq	%rcx, -1472(%rbp)
	movzbl	-1480(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -1480(%rbp)
	movq	%r15, -1488(%rbp)
	movq	%r14, -1464(%rbp)
	movq	-752(%rbp), %rsi
	movq	%rsi, -1520(%rbp)
	movq	-744(%rbp), %rcx
	movq	%rcx, -1512(%rbp)
	movq	-736(%rbp), %rdx
	movq	%rdx, -1504(%rbp)
	movq	-728(%rbp), %rax
	movq	%rax, -1496(%rbp)
	leaq	-1456(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r15, (%rsp)
	movq	-1480(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-1528(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-1488(%rbp), %rdi
	movq	-1536(%rbp), %rsi
	call	_obj_init
	movq	%rbx, -1464(%rbp)
	movq	-1488(%rbp), %rdi
	movq	%rdi, -1520(%rbp)
	movq	-1480(%rbp), %rax
	movq	%rax, -1512(%rbp)
	movq	-1472(%rbp), %rax
	movq	%rax, -1504(%rbp)
	movq	%rbx, -1496(%rbp)
	movzbl	-1512(%rbp), %ecx
	movq	_smpInteger_zero@GOTPCREL(%rip), %rdx
	movq	%rbx, 24(%rdx)
	movq	%rax, 16(%rdx)
	movl	$2, %esi
	andl	%ecx, %esi
	movzbl	8(%rdx), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%esi, %eax
	orl	%ecx, %eax
	movb	%al, 8(%rdx)
	movq	%rdi, (%rdx)
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$1, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-1520(%rbp), %rdi
	movq	-1536(%rbp), %rsi
	call	_obj_init
	movq	%rbx, -1496(%rbp)
	movq	-1520(%rbp), %rdi
	movq	%rdi, -1488(%rbp)
	movq	-1512(%rbp), %rax
	movq	%rax, -1480(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1472(%rbp)
	movq	%rbx, -1464(%rbp)
	movzbl	-1480(%rbp), %ecx
	movq	_smpInteger_one@GOTPCREL(%rip), %rdx
	movq	%rbx, 24(%rdx)
	movq	%rax, 16(%rdx)
	movl	$2, %esi
	andl	%ecx, %esi
	movzbl	8(%rdx), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%esi, %eax
	orl	%ecx, %eax
	movb	%al, 8(%rdx)
	movq	%rdi, (%rdx)
	xorl	%eax, %eax
	addq	$1576, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4943:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	movl	$1, %edx
L4905:
	xorl	%ecx, %ecx
	leaq	LC40(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4906
L4915:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	16(%rax), %rcx
	movq	%rcx, -1528(%rbp)
	jmp	L4942
LFE264:
	.align 4,0x90
.globl _smpHash_create_class
_smpHash_create_class:
LFB249:
	pushq	%rbp
LCFI1751:
	movq	%rsp, %rbp
LCFI1752:
	pushq	%r15
LCFI1753:
	pushq	%r14
LCFI1754:
	pushq	%r13
LCFI1755:
	pushq	%r12
LCFI1756:
	pushq	%rbx
LCFI1757:
	subq	$472, %rsp
LCFI1758:
	movq	_smpType_object@GOTPCREL(%rip), %rbx
	testb	$16, 12(%rbx)
	je	L4965
L4945:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4947
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4947
	movq	(%rdi), %r8
	leaq	LC18(%rip), %rsi
	movl	$5381, %ecx
	movl	$72, %edx
	testq	%r8, %r8
	je	L4947
	.align 4,0x90
L4952:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4952
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4954
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4954
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4957
	.align 4,0x90
L4958:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4954
L4957:
	leaq	LC18(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4958
	movq	32(%rbx), %rax
	movq	%rax, -440(%rbp)
	movq	24(%rbx), %r15
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	8(%rbx), %r14
	jmp	L4951
	.align 4,0x90
L4947:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rdx
	movq	%rdx, -440(%rbp)
L4964:
	movq	16(%rax), %r15
	movzbl	8(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	(%rax), %r14
L4951:
	leaq	-80(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC112(%rip), %rcx
	movl	$2, %edx
	leaq	_smpHash_add_now(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-440(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	%r15, -352(%rbp)
	andl	$1, %r12d
	leal	(%r12,%r12), %ebx
	movzbl	-360(%rbp), %eax
	andl	$-4, %eax
	movl	$1, %r12d
	andl	%r13d, %r12d
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -360(%rbp)
	movq	%r14, -368(%rbp)
	movq	-80(%rbp), %rsi
	movq	%rsi, -400(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -392(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -384(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -376(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-440(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC118(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-112(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpHash_clear(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-440(%rbp), %rcx
	movq	%rcx, -376(%rbp)
	movq	%r15, -384(%rbp)
	movzbl	-392(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -392(%rbp)
	movq	%r14, -400(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -368(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -360(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -352(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -344(%rbp)
	leaq	-272(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-440(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC91(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-144(%rbp), %rdi
	leaq	LC112(%rip), %rcx
	movl	$1, %edx
	leaq	_smpHash_gc_mark(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-440(%rbp), %rdx
	movq	%rdx, -344(%rbp)
	movq	%r15, -352(%rbp)
	movzbl	-360(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -360(%rbp)
	movq	%r14, -368(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -400(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -392(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -384(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -376(%rbp)
	leaq	-304(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-440(%rbp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	LC95(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-176(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpHash_to_s(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-440(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	%r15, -384(%rbp)
	movzbl	-392(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -392(%rbp)
	movq	%r14, -400(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -368(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -360(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -352(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -344(%rbp)
	leaq	-336(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-440(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	leaq	LC68(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	leaq	-208(%rbp), %rdi
	leaq	LC5(%rip), %rcx
	movl	$1, %edx
	leaq	_smpHash_write(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	-440(%rbp), %rcx
	movq	%rcx, -344(%rbp)
	movq	%r15, -352(%rbp)
	movzbl	-360(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r12d, %eax
	movb	%al, -360(%rbp)
	movq	%r14, -368(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -400(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -392(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -384(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -376(%rbp)
	leaq	-432(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-440(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC72(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$472, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L4965:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	LC18(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4945
L4954:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -440(%rbp)
	jmp	L4964
LFE249:
	.cstring
LC166:
	.ascii "!\0"
LC167:
	.ascii "~\0"
LC168:
	.ascii "catch\0"
LC169:
	.ascii "list\0"
LC170:
	.ascii "print\0"
LC171:
	.ascii "printf\0"
LC172:
	.ascii "println\0"
LC173:
	.ascii "sprintf\0"
LC174:
	.ascii "throw\0"
	.text
	.align 4,0x90
.globl _smpGlobal_create_class
_smpGlobal_create_class:
LFB228:
	pushq	%rbp
LCFI1759:
	movq	%rsp, %rbp
LCFI1760:
	pushq	%r14
LCFI1761:
	pushq	%r13
LCFI1762:
	pushq	%r12
LCFI1763:
	pushq	%rbx
LCFI1764:
	subq	$832, %rsp
LCFI1765:
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
	movq	_smpType_object@GOTPCREL(%rip), %rbx
	testb	$16, 12(%rbx)
	je	L4991
L4967:
	movq	_scope_length@GOTPCREL(%rip), %r14
	movq	(%r14), %rdx
	testq	%rdx, %rdx
	je	L4976
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L4976
	movq	(%rdi), %r8
	leaq	LC43(%rip), %rsi
	movl	$5381, %ecx
	movl	$71, %edx
	testq	%r8, %r8
	je	L4976
	.align 4,0x90
L4974:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L4974
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L4976
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L4976
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L4979
	.align 4,0x90
L4980:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L4976
L4979:
	leaq	LC43(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L4980
	movq	32(%rbx), %rsi
	movq	24(%rbx), %r8
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %rdi
	movq	_smp_nil@GOTPCREL(%rip), %r12
	jmp	L4973
	.align 4,0x90
L4976:
	movq	_smp_nil@GOTPCREL(%rip), %r12
	movq	24(%r12), %rsi
	movq	16(%r12), %r8
	movzbl	8(%r12), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r12), %rdi
L4973:
	movq	_smp_global@GOTPCREL(%rip), %rbx
	movq	%rsi, 24(%rbx)
	movq	%r8, 16(%rbx)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	8(%rbx), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, 8(%rbx)
	movq	%rdi, (%rbx)
	movq	_smpType_global@GOTPCREL(%rip), %rdx
	movq	(%rsi), %rax
	movq	%rax, (%rdx)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdx)
	movq	24(%rsi), %rax
	movq	%rax, 24(%rdx)
	movq	32(%rsi), %rax
	movq	%rax, 32(%rdx)
	movq	40(%rsi), %rax
	movq	%rax, 40(%rdx)
	movq	48(%rsi), %rax
	movq	%rax, 48(%rdx)
	movq	56(%rsi), %rax
	movq	%rax, 56(%rdx)
	movq	%rdi, -768(%rbp)
	movq	8(%rbx), %rax
	movq	%rax, -760(%rbp)
	movq	%r8, -752(%rbp)
	movq	%rsi, -744(%rbp)
	leaq	-768(%rbp), %rdi
	call	_gc_stack_push
	testl	%eax, %eax
	jne	L4982
	movq	(%r14), %rdx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	jne	L4992
L4986:
	movq	-768(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-760(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-752(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC11(%rip), %rsi
	call	_minihash_add
L4982:
	leaq	-64(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC116(%rip), %rcx
	movl	$2, %edx
	leaq	_smpBool_not(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	(%rbx), %r11
	movq	%r11, -768(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -760(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -752(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -744(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rsi, -736(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -728(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -720(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -712(%rbp)
	leaq	-384(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC166(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-96(%rbp), %rdi
	leaq	LC40(%rip), %r8
	movq	%r8, %rcx
	movl	$2, %edx
	leaq	_smpInteger_not(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	(%rbx), %r11
	movq	%r11, -736(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -728(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -720(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -712(%rbp)
	movq	-96(%rbp), %rsi
	movq	%rsi, -768(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -760(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, -752(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -744(%rbp)
	leaq	-416(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC167(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-128(%rbp), %rdi
	leaq	LC113(%rip), %r9
	leaq	LC38(%rip), %r8
	leaq	LC19(%rip), %rcx
	movl	$3, %edx
	leaq	_smpGlobal_array(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	(%rbx), %r11
	movq	%r11, -768(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -760(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -752(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -744(%rbp)
	movq	-128(%rbp), %rsi
	movq	%rsi, -736(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -728(%rbp)
	movq	-112(%rbp), %rdx
	movq	%rdx, -720(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -712(%rbp)
	leaq	-448(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC124(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-160(%rbp), %rdi
	leaq	LC139(%rip), %r8
	leaq	LC112(%rip), %rcx
	movl	$2, %edx
	leaq	_smpGlobal_catch_arg(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	(%rbx), %r11
	movq	%r11, -736(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -728(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -720(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -712(%rbp)
	movq	-160(%rbp), %rsi
	movq	%rsi, -768(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -760(%rbp)
	movq	-144(%rbp), %rdx
	movq	%rdx, -752(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -744(%rbp)
	leaq	-480(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC168(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-192(%rbp), %rdi
	leaq	LC113(%rip), %r9
	leaq	LC38(%rip), %r8
	leaq	LC75(%rip), %rcx
	movl	$3, %edx
	leaq	_smpGlobal_list(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	(%rbx), %r11
	movq	%r11, -768(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -760(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -752(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -744(%rbp)
	movq	-192(%rbp), %rsi
	movq	%rsi, -736(%rbp)
	movq	-184(%rbp), %rcx
	movq	%rcx, -728(%rbp)
	movq	-176(%rbp), %rdx
	movq	%rdx, -720(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -712(%rbp)
	leaq	-512(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC169(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-224(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC112(%rip), %rcx
	movl	$2, %edx
	leaq	_smpGlobal_print_arg(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	(%rbx), %r11
	movq	%r11, -736(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -728(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -720(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -712(%rbp)
	movq	-224(%rbp), %rsi
	movq	%rsi, -768(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, -760(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rdx, -752(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -744(%rbp)
	leaq	-544(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC170(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-256(%rbp), %rdi
	leaq	LC113(%rip), %rax
	movq	%rax, (%rsp)
	leaq	LC38(%rip), %r9
	leaq	LC5(%rip), %r8
	leaq	LC112(%rip), %rcx
	movl	$4, %edx
	leaq	_smp_printf_arg(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	(%rbx), %r11
	movq	%r11, -768(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -760(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -752(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -744(%rbp)
	movq	-256(%rbp), %rsi
	movq	%rsi, -736(%rbp)
	movq	-248(%rbp), %rcx
	movq	%rcx, -728(%rbp)
	movq	-240(%rbp), %rdx
	movq	%rdx, -720(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -712(%rbp)
	leaq	-576(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC171(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-288(%rbp), %rdi
	leaq	LC113(%rip), %r8
	leaq	LC112(%rip), %rcx
	movl	$2, %edx
	leaq	_smpGlobal_println_arg(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	(%rbx), %r11
	movq	%r11, -736(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -728(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -720(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -712(%rbp)
	movq	-288(%rbp), %rsi
	movq	%rsi, -768(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -760(%rbp)
	movq	-272(%rbp), %rdx
	movq	%rdx, -752(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -744(%rbp)
	leaq	-608(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC172(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-320(%rbp), %rdi
	leaq	LC113(%rip), %rax
	movq	%rax, (%rsp)
	leaq	LC38(%rip), %r9
	leaq	LC5(%rip), %r8
	movq	%r8, %rcx
	movl	$4, %edx
	leaq	_smpGlobal_sprintf_arg(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	(%rbx), %r11
	movq	%r11, -768(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -760(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -752(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -744(%rbp)
	movq	-320(%rbp), %rsi
	movq	%rsi, -736(%rbp)
	movq	-312(%rbp), %rcx
	movq	%rcx, -728(%rbp)
	movq	-304(%rbp), %rdx
	movq	%rdx, -720(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -712(%rbp)
	leaq	-640(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC173(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	leaq	-352(%rbp), %rdi
	leaq	LC15(%rip), %rcx
	movl	$1, %edx
	leaq	_smpGlobal_throw_arg(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	(%rbx), %r11
	movq	%r11, -736(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -728(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -720(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -712(%rbp)
	movq	-352(%rbp), %rsi
	movq	%rsi, -768(%rbp)
	movq	-344(%rbp), %rcx
	movq	%rcx, -760(%rbp)
	movq	-336(%rbp), %rdx
	movq	%rdx, -752(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -744(%rbp)
	leaq	-672(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC174(%rip), %rdx
	movl	$1, %esi
	call	_smpType_def_general
	movq	(%rbx), %r11
	movq	%r11, -768(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -760(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -752(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -744(%rbp)
	movq	(%r12), %rsi
	movq	%rsi, -736(%rbp)
	movq	8(%r12), %rcx
	movq	%rcx, -728(%rbp)
	movq	16(%r12), %rdx
	movq	%rdx, -720(%rbp)
	movq	24(%r12), %rax
	movq	%rax, -712(%rbp)
	leaq	-704(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC25(%rip), %rdx
	movl	$257, %esi
	call	_smpType_def_general
	movq	(%rbx), %r11
	movq	%r11, -736(%rbp)
	movq	8(%rbx), %r10
	movq	%r10, -728(%rbp)
	movq	16(%rbx), %r9
	movq	%r9, -720(%rbp)
	movq	24(%rbx), %r8
	movq	%r8, -712(%rbp)
	movq	_smp_true@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	%rsi, -768(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -760(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -752(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -744(%rbp)
	leaq	-800(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 24(%rsp)
	leaq	LC23(%rip), %rdx
	movl	$257, %esi
	call	_smpType_def_general
	xorl	%eax, %eax
	addq	$832, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	leave
	ret
	.align 4,0x90
L4992:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
	jmp	L4986
L4991:
	movl	$8, %edi
	call	_malloc
	movq	%rax, %rsi
	movq	%rbx, (%rax)
	movl	$96, %ecx
	movl	$1, %edx
	leaq	LC43(%rip), %rdi
	call	_smpGlobal_class_multiple
	jmp	L4967
LFE228:
	.align 4,0x90
.globl _init_required_classes
_init_required_classes:
LFB135:
	pushq	%rbp
LCFI1766:
	movq	%rsp, %rbp
LCFI1767:
	xorl	%eax, %eax
	call	_smpGlobal_create_class
	xorl	%eax, %eax
	call	_smpRegex_create_class
	xorl	%eax, %eax
	call	_smpArray_create_class
	xorl	%eax, %eax
	call	_smpHash_create_class
	xorl	%eax, %eax
	call	_smpSymbol_create_class
	xorl	%eax, %eax
	leave
	ret
LFE135:
	.align 4,0x90
.globl _init_smp_classes
_init_smp_classes:
LFB134:
	pushq	%rbp
LCFI1768:
	movq	%rsp, %rbp
LCFI1769:
	pushq	%rbx
LCFI1770:
	subq	$8, %rsp
LCFI1771:
	movq	_initialized_classesp@GOTPCREL(%rip), %rbx
	movl	$0, (%rbx)
	xorl	%eax, %eax
	call	_init_fundamental_classes
	xorl	%eax, %eax
	call	_smpGlobal_create_class
	xorl	%eax, %eax
	call	_smpRegex_create_class
	xorl	%eax, %eax
	call	_smpArray_create_class
	xorl	%eax, %eax
	call	_smpHash_create_class
	xorl	%eax, %eax
	call	_smpSymbol_create_class
	xorl	%eax, %eax
	call	_smpNumber_create_class
	xorl	%eax, %eax
	call	_smpInteger_create_class
	xorl	%eax, %eax
	call	_smpFloat_create_class
	movl	$1, (%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	leave
	ret
LFE134:
	.cstring
LC175:
	.ascii "\12%s\12\0"
	.text
	.align 4,0x90
.globl _main
_main:
LFB384:
	pushq	%rbp
LCFI1772:
	movq	%rsp, %rbp
LCFI1773:
	pushq	%r15
LCFI1774:
	pushq	%r14
LCFI1775:
	pushq	%r13
LCFI1776:
	pushq	%r12
LCFI1777:
	pushq	%rbx
LCFI1778:
	subq	$280, %rsp
LCFI1779:
	movl	%edi, -272(%rbp)
	movq	%rsi, %r12
	movq	_gc_stack_length@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	movq	_gc_add_objectsp@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movq	_gc_add_next_objectp@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movq	_gc_activep@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
	movq	_gc_runningp@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	$1, (%rax)
	movl	$256, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	_scope_stack@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	leaq	-144(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	-144(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rbx)
	leaq	-176(%rbp), %rdi
	movl	$10, %esi
	call	_minihash_init_capacity
	movq	_scope_classes@GOTPCREL(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rdx)
	movq	_smptest_print_successesp@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	xorl	%eax, %eax
	call	_init_smp_classes
	leaq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	%rax, %rdi
	xorl	%eax, %eax
	call	_smpArray_init
	movl	-272(%rbp), %r13d
	testl	%r13d, %r13d
	jle	L4998
	movq	%r12, %r15
	movl	$0, -268(%rbp)
	leaq	-208(%rbp), %rdx
	movq	%rdx, -288(%rbp)
	jmp	L5000
	.align 4,0x90
L5001:
	movq	%r14, %rax
	salq	$5, %rax
	addq	(%r12), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-256(%rbp), %rdx
	movq	%rdx, 16(%rax)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %ecx
	movzbl	8(%rax), %edx
	andl	$-4, %edx
	andl	$1, %r13d
	orl	%ecx, %edx
	orl	%r13d, %edx
	movb	%dl, 8(%rax)
	movq	-264(%rbp), %rdx
	movq	%rdx, (%rax)
	incl	-268(%rbp)
	addq	$8, %r15
	movl	-272(%rbp), %eax
	cmpl	%eax, -268(%rbp)
	je	L4998
L5000:
	movq	(%r15), %rbx
	movq	_smpType_string@GOTPCREL(%rip), %rsi
	movq	-288(%rbp), %rdi
	call	_obj_init
	movq	%rbx, %rsi
	movq	-288(%rbp), %rdi
	call	_obj_init_str
	movq	-184(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -256(%rbp)
	movzbl	-200(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r13d
	sarb	$7, %r13b
	movq	-208(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-56(%rbp), %r12
	movq	8(%r12), %r14
	leaq	1(%r14), %rax
	movq	%rax, 8(%r12)
	movq	%rax, %rdx
	salq	$5, %rdx
	cmpq	$4, %rdx
	jbe	L5001
	leaq	-1(%rdx), %rax
	testq	%rdx, %rax
	jne	L5001
	movq	%rdx, %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$8, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$16, %rax
	orq	%rdx, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	orq	%rax, %rsi
	incq	%rsi
	movq	(%r12), %rdi
	call	_realloc
	movq	%rax, (%r12)
	jmp	L5001
L4998:
	leaq	-112(%rbp), %rdi
	movq	_smp_global@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	-280(%rbp), %rdx
	movl	$1, %esi
	call	_smpGlobal_main
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	_smpType_id_thrown@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L5014
L5004:
	movq	_scope_stack@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	subq	$32, %rdi
	movq	_scope_length@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	jmp	L5013
	.align 4,0x90
L5015:
	movq	_scope_stack@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	subq	$32, %rdi
	decq	%rax
	movq	_scope_length@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
L5013:
	salq	$5, %rax
	addq	%rax, %rdi
	call	_minihash_clear
	movq	_scope_length@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	cmpq	$1, %rax
	ja	L5015
	decq	%rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	addq	$280, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L5014:
	testb	$15, (%rsi)
	jne	L5004
	leaq	-240(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rsi, 24(%rsp)
	leaq	LC175(%rip), %rsi
	xorl	%eax, %eax
	call	_smp_printf
	jmp	L5004
LFE384:
	.align 4,0x90
.globl _minihash_fullclear
_minihash_fullclear:
LFB88:
	pushq	%rbp
LCFI1780:
	movq	%rsp, %rbp
LCFI1781:
	pushq	%r15
LCFI1782:
	pushq	%r14
LCFI1783:
	pushq	%r13
LCFI1784:
	pushq	%r12
LCFI1785:
	pushq	%rbx
LCFI1786:
	subq	$88, %rsp
LCFI1787:
	movq	%rdi, %r13
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	je	L5017
	cmpq	$0, 8(%rdi)
	je	L5043
	movq	$0, -88(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	.align 4,0x90
L5021:
	movq	-88(%rbp), %r15
	salq	$4, %r15
	leaq	(%rdx,%r15), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	L5022
	cmpq	$0, 8(%rax)
	je	L5039
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	jmp	L5026
	.align 4,0x90
L5047:
	movq	(%rdx), %rdi
L5026:
	movq	(%rdi,%r12), %rdi
	testq	%rdi, %rdi
	je	L5027
	call	_free
L5027:
	movq	%r15, %rdx
	addq	(%r13), %rdx
	movq	%r12, %rbx
	addq	(%rdx), %rbx
	cmpq	$0, 32(%rbx)
	je	L5029
	movq	24(%rbx), %rax
	movzbl	12(%rax), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5029
	movq	8(%rbx), %rax
	movq	%rax, (%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rbx), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	-96(%rbp), %rdi
	call	_smpObject_funcall
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	L5032
	call	_free
L5032:
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	L5034
	call	_free
L5034:
	movq	$0, 24(%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 32(%rbx)
	movq	%r15, %rdx
	addq	(%r13), %rdx
L5029:
	incq	%r14
	addq	$40, %r12
	cmpq	%r14, 8(%rdx)
	ja	L5047
	movq	(%rdx), %rdi
	testq	%rdi, %rdi
	je	L5038
L5039:
	call	_free
L5038:
	movq	(%r13), %rax
	movq	$0, 8(%rax,%r15)
	movq	(%r13), %rdx
L5022:
	incq	-88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	%rax, 8(%r13)
	ja	L5021
	testq	%rdx, %rdx
	je	L5042
L5043:
	movq	%rdx, %rdi
	call	_free
L5042:
	movq	$0, 24(%r13)
	movq	$0, 16(%r13)
	movq	$0, 8(%r13)
L5017:
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE88:
	.cstring
LC176:
	.ascii "%s: %s expected, %st found.\0"
LC177:
	.ascii "%s: unexpected %st.\0"
LC178:
	.ascii "\12\11from \0"
	.text
	.align 4,0x90
.globl _smpTypeError_to_s
_smpTypeError_to_s:
LFB199:
	pushq	%rbp
LCFI1788:
	movq	%rsp, %rbp
LCFI1789:
	pushq	%r15
LCFI1790:
	pushq	%r14
LCFI1791:
	pushq	%r13
LCFI1792:
	pushq	%r12
LCFI1793:
	pushq	%rbx
LCFI1794:
	subq	$584, %rsp
LCFI1795:
	movq	%rdi, %r14
	movq	32(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	%rdx, -480(%rbp)
	movzbl	16(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	sarb	$7, %cl
	movb	%cl, -481(%rbp)
	sall	$7, %edx
	sarb	$7, %dl
	movb	%dl, -482(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -496(%rbp)
	movq	24(%rax), %rcx
	movq	%rcx, -504(%rbp)
	movq	72(%rax), %rdx
	movq	%rdx, -456(%rbp)
	movq	64(%rax), %rcx
	movq	%rcx, -464(%rbp)
	movzbl	56(%rax), %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movl	%ecx, %r12d
	sarb	$7, %r12b
	sall	$7, %edx
	movl	%edx, %r13d
	sarb	$7, %r13b
	movq	48(%rax), %rdx
	movq	%rdx, -472(%rbp)
	movq	40(%rax), %rdx
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	L5049
	leaq	-336(%rbp), %rcx
	movq	%rcx, -520(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %r15
	movq	%r15, %rsi
	movq	%rcx, %rdi
	call	_obj_init
	movq	%rbx, %rsi
	movq	-520(%rbp), %rdi
	call	_obj_init_str
	movq	-336(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -56(%rbp)
L5051:
	movq	-504(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L5065
	movq	%r15, %rsi
	movq	-520(%rbp), %rdi
	call	_obj_init
	leaq	LC24(%rip), %rsi
	movq	-520(%rbp), %rdi
	call	_obj_init_str
	movq	-336(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-448(%rbp), %rbx
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
	movq	%rbx, %rdi
	call	_smpString_add_now
	movq	-96(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5057
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%rbx, %rdi
	call	_smpObject_funcall
	movq	-112(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5059
	call	_free
L5059:
	movq	-88(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5061
	call	_free
L5061:
	movq	$0, -96(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -88(%rbp)
L5057:
	leaq	-144(%rbp), %rbx
	leaq	LC178(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	_smpString_init_fmt
	movq	-480(%rbp), %rax
	movq	%rax, -384(%rbp)
	andb	$1, -481(%rbp)
	movzbl	-481(%rbp), %edx
	addl	%edx, %edx
	movzbl	-400(%rbp), %eax
	andl	$-4, %eax
	andb	$1, -482(%rbp)
	orl	%edx, %eax
	orb	-482(%rbp), %al
	movb	%al, -400(%rbp)
	movq	-496(%rbp), %rdx
	movq	%rdx, -408(%rbp)
	movq	-504(%rbp), %rcx
	movq	%rcx, -392(%rbp)
	leaq	-176(%rbp), %r12
	movq	%rdx, (%rsp)
	movq	-400(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	-480(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rcx
	movl	$1, %edx
	leaq	LC68(%rip), %rsi
	movq	%r12, %rdi
	call	_smpObject_funcall
	movq	-160(%rbp), %rbx
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L5063
	movq	-176(%rbp), %rax
	movq	%rax, (%r14)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	%rbx, 16(%r14)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%r14)
	jmp	L5048
	.align 4,0x90
L5065:
	movq	-80(%rbp), %rax
	movq	%rax, (%r14)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%r14)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%r14)
L5048:
	movq	%r14, %rax
	addq	$584, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L5049:
	testq	%rdx, %rdx
	je	L5052
	movq	(%rdx), %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %r15
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_obj_init
	movq	%rbx, %rsi
	movq	-520(%rbp), %rdi
	call	_obj_init_str
	movq	-336(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-512(%rbp), %rdx
	movq	(%rdx), %rbx
	movq	%r15, %rsi
	movq	-520(%rbp), %rdi
	call	_obj_init
	movq	%rbx, %rsi
	movq	-520(%rbp), %rdi
	call	_obj_init_str
	movq	-336(%rbp), %r9
	movq	%r9, -272(%rbp)
	movq	-328(%rbp), %r8
	movq	%r8, -264(%rbp)
	movq	-320(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movq	-312(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-464(%rbp), %rdx
	movq	%rdx, -352(%rbp)
	andl	$1, %r12d
	leal	(%r12,%r12), %edx
	movzbl	-360(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r13d
	orl	%edx, %eax
	orl	%r13d, %eax
	movb	%al, -360(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-80(%rbp), %rdi
	movq	%rax, 64(%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	-464(%rbp), %rdx
	movq	%rdx, 80(%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 88(%rsp)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-224(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-216(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%r9, (%rsp)
	movq	%r8, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rcx, 24(%rsp)
	leaq	LC176(%rip), %rsi
	xorl	%eax, %eax
	call	_smpGlobal_sprintf
	jmp	L5051
	.align 4,0x90
L5063:
	leaq	-208(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r12, %rdx
	movl	$1, %esi
	call	_smpString_add_now
	movq	-192(%rbp), %rbx
	leaq	LC15(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L5065
	movq	-208(%rbp), %rax
	movq	%rax, (%r14)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%r14)
	movq	%rbx, 16(%r14)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%r14)
	jmp	L5048
L5052:
	movq	-512(%rbp), %rdx
	movq	(%rdx), %rbx
	leaq	-336(%rbp), %rcx
	movq	%rcx, -520(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %r15
	movq	%r15, %rsi
	movq	%rcx, %rdi
	call	_obj_init
	movq	%rbx, %rsi
	movq	-520(%rbp), %rdi
	call	_obj_init_str
	movq	-336(%rbp), %r9
	movq	%r9, -304(%rbp)
	movq	-328(%rbp), %r8
	movq	%r8, -296(%rbp)
	movq	-320(%rbp), %rsi
	movq	%rsi, -288(%rbp)
	movq	-312(%rbp), %rcx
	movq	%rcx, -280(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-464(%rbp), %rdx
	movq	%rdx, -352(%rbp)
	andl	$1, %r12d
	leal	(%r12,%r12), %edx
	movzbl	-360(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r13d
	orl	%edx, %eax
	orl	%r13d, %eax
	movb	%al, -360(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-80(%rbp), %rdi
	movq	%rax, 32(%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-464(%rbp), %rdx
	movq	%rdx, 48(%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%r9, (%rsp)
	movq	%r8, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rcx, 24(%rsp)
	leaq	LC177(%rip), %rsi
	xorl	%eax, %eax
	call	_smpGlobal_sprintf
	jmp	L5051
LFE199:
	.cstring
LC179:
	.ascii "not a real type\0"
	.text
	.align 4,0x90
.globl _test_listbuf
_test_listbuf:
LFB145:
	pushq	%rbp
LCFI1796:
	movq	%rsp, %rbp
LCFI1797:
	pushq	%r15
LCFI1798:
	pushq	%r14
LCFI1799:
	pushq	%r13
LCFI1800:
	pushq	%r12
LCFI1801:
	pushq	%rbx
LCFI1802:
	subq	$328, %rsp
LCFI1803:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	%rax, -312(%rbp)
	movq	24(%rax), %r14
	movq	16(%rax), %r15
	movzbl	8(%rax), %ebx
	movl	%ebx, %edx
	sall	$6, %edx
	movl	%edx, %r12d
	sarb	$7, %r12b
	sall	$7, %ebx
	sarb	$7, %bl
	movq	(%rax), %r13
	leaq	-272(%rbp), %rdi
	leaq	LC30(%rip), %rsi
	call	_smp_getclass
	leaq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	call	_obj_init
	movl	$64, %edi
	call	_malloc
	movq	%rax, %r8
	movq	%r14, 56(%rax)
	movq	%r15, 48(%rax)
	andl	$1, %r12d
	addl	%r12d, %r12d
	movzbl	40(%rax), %eax
	andl	$-4, %eax
	andl	$1, %ebx
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, 40(%r8)
	movq	%r13, 32(%r8)
	movq	%r14, 24(%r8)
	movq	%r15, 16(%r8)
	movzbl	8(%r8), %eax
	andl	$-4, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	movb	%al, 8(%r8)
	movq	%r13, (%r8)
	movq	%r8, -216(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%r8, -56(%rbp)
	movq	_smp_true@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, -112(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -104(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -96(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -88(%rbp)
	movq	-312(%rbp), %rdx
	movq	(%rdx), %rax
	movq	%rax, -144(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -136(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -128(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -120(%rbp)
	leaq	-176(%rbp), %rdi
	leaq	LC179(%rip), %rcx
	movl	$1, %edx
	leaq	_smpListBuffer_to_list(%rip), %rsi
	xorl	%eax, %eax
	movq	%r8, -328(%rbp)
	call	_smpFunction_init
	movq	-328(%rbp), %r8
	movq	16(%r8), %rax
	movq	_smpType_id_nil@GOTPCREL(%rip), %r12
	movl	8(%rax), %eax
	cmpl	(%r12), %eax
	je	L5084
	movq	56(%r8), %rbx
	movl	$32, %edi
	movq	%r8, -328(%rbp)
	call	_malloc
	movq	%rax, 32(%rbx)
	movq	-328(%rbp), %r8
	movq	56(%r8), %rax
	movq	32(%rax), %rbx
	leaq	-304(%rbp), %r13
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-312(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpObject_cons
	movq	-304(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-296(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-328(%rbp), %r8
	movq	56(%r8), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%r8)
	movq	8(%rdx), %rax
	movq	%rax, 40(%r8)
	movq	16(%rdx), %rax
	movq	%rax, 48(%r8)
	movq	24(%rdx), %rax
	movq	%rax, 56(%r8)
L5071:
	movq	16(%r8), %rax
	movl	8(%rax), %eax
	cmpl	(%r12), %eax
	je	L5085
	movq	56(%r8), %rbx
	movl	$32, %edi
	movq	%r8, -328(%rbp)
	call	_malloc
	movq	%rax, 32(%rbx)
	movq	-328(%rbp), %r8
	movq	56(%r8), %rax
	movq	32(%rax), %rbx
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-312(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpObject_cons
	movq	-304(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-296(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-328(%rbp), %r8
	movq	56(%r8), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%r8)
	movq	8(%rdx), %rax
	movq	%rax, 40(%r8)
	movq	16(%rdx), %rax
	movq	%rax, 48(%r8)
	movq	24(%rdx), %rax
	movq	%rax, 56(%r8)
L5074:
	movq	16(%r8), %rax
	movl	8(%rax), %eax
	cmpl	(%r12), %eax
	je	L5086
	movq	56(%r8), %rbx
	movl	$32, %edi
	movq	%r8, -328(%rbp)
	call	_malloc
	movq	%rax, 32(%rbx)
	movq	-328(%rbp), %r8
	movq	56(%r8), %rax
	movq	32(%rax), %rbx
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-312(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpObject_cons
	movq	-304(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-296(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	-328(%rbp), %r8
	movq	56(%r8), %rax
	movq	32(%rax), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%r8)
	movq	8(%rdx), %rax
	movq	%rax, 40(%r8)
	movq	16(%rdx), %rax
	movq	%rax, 48(%r8)
	movq	24(%rdx), %rax
	movq	%rax, 56(%r8)
	movq	(%r8), %r12
L5077:
	movq	%r12, -208(%rbp)
	movq	8(%r8), %rcx
	movq	%rcx, -200(%rbp)
	movq	16(%r8), %rdx
	movq	%rdx, -192(%rbp)
	movq	24(%r8), %rbx
	movq	%rbx, -184(%rbp)
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5078
	movq	%r12, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rbx, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	testq	%r12, %r12
	je	L5080
	movq	%r12, %rdi
	call	_free
L5080:
	testq	%rbx, %rbx
	je	L5078
	movq	%rbx, %rdi
	call	_free
L5078:
	movl	$1, %eax
	addq	$328, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L5086:
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-312(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%r8, -328(%rbp)
	call	_smpObject_cons
	movq	-304(%rbp), %rsi
	movq	-328(%rbp), %r8
	movq	%rsi, (%r8)
	movq	-296(%rbp), %rcx
	movq	%rcx, 8(%r8)
	movq	-288(%rbp), %rdx
	movq	%rdx, 16(%r8)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%r8)
	movq	%rsi, 32(%r8)
	movq	%rcx, 40(%r8)
	movq	%rdx, 48(%r8)
	movq	%rax, 56(%r8)
	movq	%rsi, %r12
	jmp	L5077
	.align 4,0x90
L5085:
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-312(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%r8, -328(%rbp)
	call	_smpObject_cons
	movq	-304(%rbp), %rsi
	movq	-328(%rbp), %r8
	movq	%rsi, (%r8)
	movq	-296(%rbp), %rcx
	movq	%rcx, 8(%r8)
	movq	-288(%rbp), %rdx
	movq	%rdx, 16(%r8)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%r8)
	movq	%rsi, 32(%r8)
	movq	%rcx, 40(%r8)
	movq	%rdx, 48(%r8)
	movq	%rax, 56(%r8)
	jmp	L5074
	.align 4,0x90
L5084:
	leaq	-304(%rbp), %r13
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-312(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpObject_cons
	movq	-304(%rbp), %rsi
	movq	-328(%rbp), %r8
	movq	%rsi, (%r8)
	movq	-296(%rbp), %rcx
	movq	%rcx, 8(%r8)
	movq	-288(%rbp), %rdx
	movq	%rdx, 16(%r8)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%r8)
	movq	%rsi, 32(%r8)
	movq	%rcx, 40(%r8)
	movq	%rdx, 48(%r8)
	movq	%rax, 56(%r8)
	jmp	L5071
LFE145:
	.cstring
LC180:
	.ascii "%s: %s\0"
	.text
	.align 4,0x90
.globl _smpException_to_s
_smpException_to_s:
LFB193:
	pushq	%rbp
LCFI1804:
	movq	%rsp, %rbp
LCFI1805:
	pushq	%r15
LCFI1806:
	pushq	%r14
LCFI1807:
	pushq	%r13
LCFI1808:
	pushq	%r12
LCFI1809:
	pushq	%rbx
LCFI1810:
	subq	$248, %rsp
LCFI1811:
	movq	%rdi, %r13
	movq	40(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rcx, -224(%rbp)
	movq	8(%rdx), %rax
	movq	%rax, -216(%rbp)
	movq	16(%rdx), %rax
	movq	%rax, -208(%rbp)
	movq	24(%rdx), %rax
	movq	%rax, -200(%rbp)
	movq	32(%rdx), %rax
	movq	%rax, -192(%rbp)
	leaq	-80(%rbp), %rdi
	movq	32(%rbp), %rax
	movq	(%rax), %rdx
	leaq	LC180(%rip), %rsi
	xorl	%eax, %eax
	call	_smpString_init_fmt
	movq	-200(%rbp), %rax
	movl	8(%rax), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L5106
	leaq	-256(%rbp), %r12
	leaq	LC178(%rip), %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	_smpString_init_fmt
	movq	-256(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-216(%rbp), %rbx
	leaq	-144(%rbp), %r15
	leaq	-112(%rbp), %r14
	.align 4,0x90
L5091:
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	%r12, %rdi
	call	_smp_println
	movq	24(%rbx), %rax
	movq	(%rax), %rsi
	movq	%rsi, -176(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -168(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -160(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC68(%rip), %rsi
	movq	%r12, %rdi
	call	_smpObject_funcall
	movq	-256(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-240(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	LC15(%rip), %rsi
	movq	(%rdx), %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L5114
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r15, %rdx
	movl	$1, %esi
	movq	%r12, %rdi
	call	_smpString_add_now
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r14, %rdx
	movl	$1, %esi
	movq	%r12, %rdi
	call	_smpString_add_now
	movq	24(%rbx), %rax
	movq	32(%rax), %rbx
	testq	%rbx, %rbx
	jne	L5091
	movq	-128(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5106
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r12, %rdi
	call	_smpObject_funcall
	movq	-144(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5108
	call	_free
L5108:
	movq	-120(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5106
	call	_free
	.align 4,0x90
L5106:
	movq	-80(%rbp), %rax
	movq	%rax, (%r13)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%r13)
L5087:
	movq	%r13, %rax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L5114:
	movq	-128(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5094
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r12, %rdi
	call	_smpObject_funcall
	movq	-144(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5096
	call	_free
L5096:
	movq	-120(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5098
	call	_free
L5098:
	movq	$0, -128(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -120(%rbp)
L5094:
	movq	-64(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5100
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r12, %rdi
	call	_smpObject_funcall
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5102
	call	_free
L5102:
	movq	-56(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5100
	call	_free
L5100:
	movq	-112(%rbp), %rax
	movq	%rax, (%r13)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%r13)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%r13)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%r13)
	jmp	L5087
LFE193:
	.cstring
LC181:
	.ascii "(hash\0"
	.text
	.align 4,0x90
.globl _smpHash_make_string
_smpHash_make_string:
LFB263:
	pushq	%rbp
LCFI1812:
	movq	%rsp, %rbp
LCFI1813:
	pushq	%r15
LCFI1814:
	pushq	%r14
LCFI1815:
	pushq	%r13
LCFI1816:
	pushq	%r12
LCFI1817:
	pushq	%rbx
LCFI1818:
	subq	$392, %rsp
LCFI1819:
	movq	%rdi, -360(%rbp)
	movq	%rsi, %r15
	movq	40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	%rdx, -344(%rbp)
	movq	(%rax), %r13
	testq	%r13, %r13
	je	L5214
	leaq	-272(%rbp), %rbx
	movq	_smpType_string@GOTPCREL(%rip), %r12
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_obj_init
	leaq	LC181(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init_str
	movq	-272(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_obj_init
	leaq	LC71(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init_str
	movq	-272(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_obj_init
	leaq	LC74(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init_str
	movq	-272(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_obj_init
	leaq	LC73(%rip), %rsi
	movq	%rbx, %rdi
	call	_obj_init_str
	movq	-272(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -184(%rbp)
	cmpq	$0, -344(%rbp)
	je	L5207
	movq	%r13, %r14
	movq	$0, -352(%rbp)
	leaq	-336(%rbp), %r13
	leaq	-144(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-176(%rbp), %rdx
	movq	%rdx, -376(%rbp)
	leaq	-80(%rbp), %rcx
	movq	%rcx, -384(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -392(%rbp)
L5121:
	movq	%r14, %r12
	cmpq	$0, 24(%r14)
	je	L5122
	testq	%r14, %r14
	jne	L5208
	jmp	L5122
	.align 4,0x90
L5125:
	leaq	LC5(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L5215
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-368(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpString_add_now
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-376(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpString_add_now
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-384(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpString_add_now
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-392(%rbp), %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpString_add_now
	movq	24(%r12), %rax
	movq	32(%rax), %r12
	testq	%r12, %r12
	je	L5122
L5208:
	movq	24(%r12), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-336(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-320(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	(%rdx), %rbx
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L5125
	movq	-96(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5127
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-112(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5129
	call	_free
L5129:
	movq	-88(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5127
	call	_free
L5127:
	movq	-128(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5132
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-144(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5134
	call	_free
L5134:
	movq	-120(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5136
	call	_free
L5136:
	movq	$0, -128(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -120(%rbp)
L5132:
	movq	-160(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5138
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-176(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5140
	call	_free
L5140:
	movq	-152(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5142
	call	_free
L5142:
	movq	$0, -160(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -152(%rbp)
L5138:
	movq	-192(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5144
	movq	-208(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-208(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5146
	call	_free
L5146:
	movq	-184(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5148
	call	_free
L5148:
	movq	$0, -192(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -184(%rbp)
L5144:
	movq	-80(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rdx)
	.align 4,0x90
L5115:
	movq	-360(%rbp), %rax
	addq	$392, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L5122:
	incq	-352(%rbp)
	addq	$32, %r14
	movq	-344(%rbp), %rax
	cmpq	%rax, -352(%rbp)
	jne	L5121
L5119:
	leaq	-208(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %esi
	movq	%r13, %rdi
	call	_smpString_add_now
	movq	-128(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5188
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-144(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5190
	call	_free
L5190:
	movq	-120(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5192
	call	_free
L5192:
	movq	$0, -128(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -120(%rbp)
L5188:
	movq	-160(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5194
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-176(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5196
	call	_free
L5196:
	movq	-152(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5198
	call	_free
L5198:
	movq	$0, -160(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -152(%rbp)
L5194:
	movq	-192(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5200
	movq	-208(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-208(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5202
	call	_free
L5202:
	movq	-184(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5204
	call	_free
L5204:
	movq	$0, -192(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -184(%rbp)
L5200:
	movq	-112(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L5115
L5214:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rdi)
	movq	8(%rdx), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	movq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	jmp	L5115
L5215:
	movq	-96(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5152
	movq	-112(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-112(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5154
	call	_free
L5154:
	movq	-88(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5152
	call	_free
L5152:
	movq	-128(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5157
	movq	-144(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-144(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5159
	call	_free
L5159:
	movq	-120(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5161
	call	_free
L5161:
	movq	$0, -128(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -120(%rbp)
L5157:
	movq	-160(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5163
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-176(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5165
	call	_free
L5165:
	movq	-152(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5167
	call	_free
L5167:
	movq	$0, -160(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -152(%rbp)
L5163:
	movq	-192(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5169
	movq	-208(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	movq	%r13, %rdi
	call	_smpObject_funcall
	movq	-208(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5171
	call	_free
L5171:
	movq	-184(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5173
	call	_free
L5173:
	movq	$0, -192(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -184(%rbp)
L5169:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L5182
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L5182
	movq	(%rdi), %r8
	leaq	LC5(%rip), %rsi
	movl	$5381, %ecx
	movl	$83, %edx
	testq	%r8, %r8
	je	L5182
L5180:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L5180
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L5182
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L5182
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L5185
L5186:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L5182
L5185:
	leaq	LC5(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L5186
	movq	32(%rbx), %rsi
	jmp	L5179
L5182:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L5179:
	leaq	-240(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-240(%rbp), %rsi
	movq	%rsi, -272(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, -256(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-304(%rbp), %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-304(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-296(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-288(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%rcx)
	jmp	L5115
L5207:
	leaq	-336(%rbp), %r13
	jmp	L5119
LFE263:
	.align 4,0x90
.globl _smpHash_write
_smpHash_write:
LFB262:
	pushq	%rbp
LCFI1820:
	movq	%rsp, %rbp
LCFI1821:
	pushq	%rbx
LCFI1822:
	subq	$40, %rsp
LCFI1823:
	movq	%rdi, %rbx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC72(%rip), %rsi
	call	_smpHash_make_string
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE262:
	.align 4,0x90
.globl _smpHash_to_s
_smpHash_to_s:
LFB261:
	pushq	%rbp
LCFI1824:
	movq	%rsp, %rbp
LCFI1825:
	pushq	%rbx
LCFI1826:
	subq	$40, %rsp
LCFI1827:
	movq	%rdi, %rbx
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC68(%rip), %rsi
	call	_smpHash_make_string
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	leave
	ret
LFE261:
	.cstring
LC182:
	.ascii "success: %s equals %s\12\0"
	.align 3
LC183:
	.ascii "failure: %s expected, %s found.\12\0"
	.text
	.align 4,0x90
.globl _smp_assert_eq
_smp_assert_eq:
LFB138:
	pushq	%rbp
LCFI1828:
	movq	%rsp, %rbp
LCFI1829:
	pushq	%rbx
LCFI1830:
	subq	$136, %rsp
LCFI1831:
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
	leaq	LC76(%rip), %rsi
	call	_smpObject_funcall
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rdx
	xorl	%ebx, %ebx
	cmpq	%rdx, 24(%rax)
	setne	%bl
	testl	%ebx, %ebx
	je	L5221
	movq	_smptest_print_successesp@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	L5236
L5223:
	movq	32(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5225
	leaq	-80(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	call	_smpObject_funcall
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5227
	call	_free
L5227:
	movq	40(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5225
	call	_free
	.align 4,0x90
L5225:
	movq	64(%rbp), %rdx
	movzbl	12(%rdx), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5230
	leaq	-80(%rbp), %rdi
	movq	48(%rbp), %rax
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	72(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	call	_smpObject_funcall
	movq	48(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5232
	call	_free
L5232:
	movq	72(%rbp), %rdi
	testq	%rdi, %rdi
	je	L5230
	call	_free
L5230:
	movl	%ebx, %eax
	addq	$136, %rsp
	popq	%rbx
	leave
	ret
	.align 4,0x90
L5236:
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
	leaq	LC182(%rip), %rsi
	xorl	%eax, %eax
	call	_smp_printf
	jmp	L5223
	.align 4,0x90
L5221:
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
	leaq	LC183(%rip), %rsi
	xorl	%eax, %eax
	call	_smp_printf
	jmp	L5223
LFE138:
	.align 4,0x90
.globl _test_bool
_test_bool:
LFB146:
	pushq	%rbp
LCFI1832:
	movq	%rsp, %rbp
LCFI1833:
	pushq	%r15
LCFI1834:
	pushq	%r14
LCFI1835:
	pushq	%r13
LCFI1836:
	pushq	%r12
LCFI1837:
	pushq	%rbx
LCFI1838:
	subq	$616, %rsp
LCFI1839:
	movq	_smp_true@GOTPCREL(%rip), %rbx
	movq	24(%rbx), %r8
	movq	16(%rbx), %rdi
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rbx), %rsi
	movl	8(%rdi), %eax
	movq	_smpType_id_nil@GOTPCREL(%rip), %r9
	cmpl	(%r9), %eax
	je	L5238
	movq	_smp_nil@GOTPCREL(%rip), %r13
L5239:
	movq	%r8, -56(%rbp)
	movq	%rdi, -64(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	(%rbx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 56(%rsp)
	movq	%rsi, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, %r12d
	movq	24(%rbx), %r9
	movq	16(%rbx), %r8
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rbx), %rdi
	movq	_smpType_id_nil@GOTPCREL(%rip), %rsi
	movl	(%rsi), %eax
	cmpl	%eax, 8(%r8)
	je	L5240
	movq	16(%r13), %rsi
	cmpl	8(%rsi), %eax
	je	L5272
	.align 4,0x90
L5242:
	movq	%r9, -88(%rbp)
	movq	%r8, -96(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-104(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -104(%rbp)
	movq	%rdi, -112(%rbp)
	movq	(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 40(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 48(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r9, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -580(%rbp)
	movq	24(%r13), %r14
	movq	16(%r13), %r8
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r13), %r10
	movq	_smpType_id_nil@GOTPCREL(%rip), %r9
	movl	(%r9), %edi
	cmpl	%edi, 8(%r8)
	je	L5245
	movq	24(%rbx), %r15
	movzbl	8(%rbx), %r9d
	movl	%r9d, %eax
	sall	$6, %eax
	movl	%eax, %esi
	sarb	$7, %sil
	movl	%r9d, %eax
	sall	$7, %eax
	sarb	$7, %al
	movq	(%rbx), %r11
	movq	16(%rbx), %r9
	cmpl	8(%r9), %edi
	jne	L5273
	.align 4,0x90
L5245:
	movq	%r14, -120(%rbp)
	movq	%r8, -128(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-136(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -136(%rbp)
	movq	%r10, -144(%rbp)
	movq	(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 40(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 48(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 56(%rsp)
	movq	%r10, (%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r14, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -576(%rbp)
	movq	24(%r13), %r8
	movq	16(%r13), %rdi
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r13), %rsi
	movl	8(%rdi), %eax
	movq	_smpType_id_nil@GOTPCREL(%rip), %r9
	cmpl	(%r9), %eax
	je	L5248
	movq	24(%rbx), %r8
	movq	16(%rbx), %rdi
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rbx), %rsi
L5248:
	movq	%r8, -152(%rbp)
	movq	%rdi, -160(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-168(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 40(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 48(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 56(%rsp)
	movq	%rsi, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -572(%rbp)
	movq	16, %rax
	movl	8(%rax), %eax
	movq	_smpType_id_nil@GOTPCREL(%rip), %rdx
	cmpl	(%rdx), %eax
	jne	L5250
	movq	24(%rbx), %r8
	movq	16(%rbx), %rdi
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rbx), %rsi
L5252:
	movq	%r8, -184(%rbp)
	movq	%rdi, -192(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-200(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	(%rbx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 56(%rsp)
	movq	%rsi, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -568(%rbp)
	movq	16, %rax
	movl	8(%rax), %eax
	movq	_smpType_id_nil@GOTPCREL(%rip), %rsi
	cmpl	(%rsi), %eax
	jne	L5253
	movq	24(%rbx), %r8
	movq	16(%rbx), %rdi
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rbx), %rsi
L5255:
	movq	%r8, -216(%rbp)
	movq	%rdi, -224(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-232(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 40(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 48(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 56(%rsp)
	movq	%rsi, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -564(%rbp)
	movq	24(%rbx), %r8
	movq	16(%rbx), %rdi
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rbx), %rsi
	movl	8(%rdi), %eax
	movq	_smpType_id_nil@GOTPCREL(%rip), %r9
	cmpl	(%r9), %eax
	jne	L5256
	movq	24(%r13), %r8
	movq	16(%r13), %rdi
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r13), %rsi
L5256:
	movq	%r8, -248(%rbp)
	movq	%rdi, -256(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-264(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	(%rbx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 56(%rsp)
	movq	%rsi, (%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -560(%rbp)
	movq	24(%rbx), %rax
	movq	%rax, -536(%rbp)
	movq	16(%rbx), %r15
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %edi
	sarb	$7, %dil
	sall	$7, %eax
	movl	%eax, %esi
	sarb	$7, %sil
	movq	(%rbx), %r14
	movl	8(%r15), %r10d
	movq	_smpType_id_nil@GOTPCREL(%rip), %r9
	cmpl	(%r9), %r10d
	jne	L5258
	movq	24(%r13), %r11
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r13), %r9
	movq	16(%r13), %r8
	cmpl	8(%r8), %r10d
	jne	L5258
	.align 4,0x90
L5260:
	movq	%r11, -280(%rbp)
	movq	%r8, -288(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-296(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -296(%rbp)
	movq	%r9, -304(%rbp)
	movq	(%rbx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 56(%rsp)
	movq	%r9, (%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r11, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -556(%rbp)
	movq	24(%r13), %r9
	movq	16(%r13), %r8
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r13), %rdi
	movl	8(%r8), %eax
	movq	_smpType_id_nil@GOTPCREL(%rip), %rsi
	cmpl	(%rsi), %eax
	je	L5261
	movq	16(%rbx), %rsi
L5263:
	movq	24(%rbx), %r9
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rbx), %rdi
	movq	%rsi, %r8
L5264:
	movq	%r9, -312(%rbp)
	movq	%r8, -320(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-328(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -328(%rbp)
	movq	%rdi, -336(%rbp)
	movq	(%rbx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r9, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -552(%rbp)
	movq	24(%r13), %r8
	movq	16(%r13), %rdi
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r13), %rsi
	movl	8(%rdi), %eax
	movq	_smpType_id_nil@GOTPCREL(%rip), %r9
	cmpl	(%r9), %eax
	je	L5265
	movq	24(%rbx), %r8
	movq	16(%rbx), %rdi
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rbx), %rsi
L5265:
	movq	%r8, -344(%rbp)
	movq	%rdi, -352(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-360(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 40(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 48(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 56(%rsp)
	movq	%rsi, (%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%r8, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -548(%rbp)
	movq	16(%r13), %r8
	movzbl	8(%r13), %edx
	movq	(%r13), %rsi
	movq	24(%r13), %rdi
	movq	%rdi, -376(%rbp)
	movq	%r8, -384(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-392(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 40(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 48(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 56(%rsp)
	movq	%rsi, (%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%rdi, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -544(%rbp)
	movq	24(%rbx), %rax
	movq	%rax, -520(%rbp)
	movq	16(%rbx), %r15
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r10d
	sarb	$7, %r10b
	sall	$7, %eax
	movl	%eax, %r8d
	sarb	$7, %r8b
	movq	(%rbx), %rsi
	movq	%rsi, -528(%rbp)
	movq	_smpType_id_nil@GOTPCREL(%rip), %r9
	movl	(%r9), %ecx
	movq	24(%r13), %r14
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %esi
	sarb	$7, %sil
	sall	$7, %eax
	movl	%eax, %edi
	sarb	$7, %dil
	movq	(%r13), %r11
	movq	16(%r13), %r9
	cmpl	8(%r9), %ecx
	setne	%dl
	cmpl	%ecx, 8(%r15)
	setne	%al
	xorl	%edx, %eax
	testb	$1, %al
	je	L5267
	movq	-528(%rbp), %r11
	movl	%r8d, %edi
	movl	%r10d, %esi
	movq	%r15, %r9
	movq	-520(%rbp), %r14
L5267:
	movq	%r14, -408(%rbp)
	movq	%r9, -416(%rbp)
	andl	$1, %esi
	leal	(%rsi,%rsi), %edx
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edi
	orl	%edx, %eax
	orl	%edi, %eax
	movb	%al, -424(%rbp)
	movq	%r11, -432(%rbp)
	movq	(%rbx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 56(%rsp)
	movq	%r11, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r14, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -540(%rbp)
	movq	24(%r13), %rsi
	movq	%rsi, -512(%rbp)
	movq	16(%r13), %r11
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %edi
	sarb	$7, %dil
	sall	$7, %eax
	movl	%eax, %r9d
	sarb	$7, %r9b
	movq	(%r13), %r14
	movq	_smpType_id_nil@GOTPCREL(%rip), %rsi
	movl	(%rsi), %ecx
	movq	24(%rbx), %rax
	movq	%rax, -504(%rbp)
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	movl	%edx, %r8d
	sarb	$7, %r8b
	sall	$7, %eax
	movl	%eax, %esi
	sarb	$7, %sil
	movq	(%rbx), %r15
	movq	16(%rbx), %r10
	cmpl	8(%r10), %ecx
	setne	%dl
	cmpl	%ecx, 8(%r11)
	setne	%al
	xorl	%edx, %eax
	testb	$1, %al
	je	L5269
	movq	%r15, %r14
	movl	%esi, %r9d
	movl	%r8d, %edi
	movq	%r10, %r11
	movq	-504(%rbp), %rsi
	movq	%rsi, -512(%rbp)
L5269:
	movq	-512(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	%r11, -448(%rbp)
	andl	$1, %edi
	leal	(%rdi,%rdi), %edx
	movzbl	-456(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r9d
	orl	%edx, %eax
	orl	%r9d, %eax
	movb	%al, -456(%rbp)
	movq	%r14, -464(%rbp)
	movq	(%rbx), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 56(%rsp)
	movq	%r14, (%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	-512(%rbp), %rdx
	movq	%rdx, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, %ebx
	movq	16(%r13), %r8
	movzbl	8(%r13), %edx
	movq	(%r13), %rsi
	movq	24(%r13), %rdi
	movq	%rdi, -472(%rbp)
	movq	%r8, -480(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-488(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -488(%rbp)
	movq	%rsi, -496(%rbp)
	movq	(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 40(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 48(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 56(%rsp)
	movq	%rsi, (%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%rdi, 24(%rsp)
	call	_smp_assert_eq
	andl	$1, %r12d
	andl	-580(%rbp), %r12d
	andl	-576(%rbp), %r12d
	andl	-572(%rbp), %r12d
	andl	-568(%rbp), %r12d
	andl	-564(%rbp), %r12d
	andl	-560(%rbp), %r12d
	andl	-556(%rbp), %r12d
	andl	-552(%rbp), %r12d
	andl	-548(%rbp), %r12d
	andl	-544(%rbp), %r12d
	andl	-540(%rbp), %r12d
	andl	%ebx, %r12d
	andl	%eax, %r12d
	movl	%r12d, %eax
	addq	$616, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L5258:
	movq	%r14, %r9
	movl	%esi, %ecx
	movl	%edi, %edx
	movq	%r15, %r8
	movq	-536(%rbp), %r11
	jmp	L5260
	.align 4,0x90
L5238:
	movq	_smp_nil@GOTPCREL(%rip), %r13
	movq	24(%r13), %r8
	movq	16(%r13), %rdi
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r13), %rsi
	jmp	L5239
	.align 4,0x90
L5261:
	movq	16(%rbx), %rsi
	cmpl	8(%rsi), %eax
	je	L5264
	jmp	L5263
	.align 4,0x90
L5240:
	movq	16(%r13), %r8
L5244:
	movq	24(%r13), %r9
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r13), %rdi
	jmp	L5242
	.align 4,0x90
L5253:
	movq	24(%r13), %r8
	movq	16(%r13), %rdi
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r13), %rsi
	jmp	L5255
	.align 4,0x90
L5250:
	movq	24(%r13), %r8
	movq	16(%r13), %rdi
	movzbl	8(%r13), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%r13), %rsi
	jmp	L5252
	.align 4,0x90
L5273:
	movq	%r11, %r10
	movl	%eax, %ecx
	movl	%esi, %edx
	movq	%r9, %r8
	movq	%r15, %r14
	jmp	L5245
	.align 4,0x90
L5272:
	movq	%rsi, %r8
	jmp	L5244
LFE146:
	.cstring
LC184:
	.ascii "xs\0"
	.text
	.align 4,0x90
.globl _test_lists
_test_lists:
LFB143:
	pushq	%rbp
LCFI1840:
	movq	%rsp, %rbp
LCFI1841:
	pushq	%r15
LCFI1842:
	pushq	%r14
LCFI1843:
	pushq	%r13
LCFI1844:
	pushq	%r12
LCFI1845:
	pushq	%rbx
LCFI1846:
	subq	$392, %rsp
LCFI1847:
	leaq	-176(%rbp), %rdi
	leaq	LC40(%rip), %r8
	leaq	LC75(%rip), %rcx
	movl	$2, %edx
	leaq	_make_list(%rip), %rsi
	xorl	%eax, %eax
	call	_smpFunction_init
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L5282
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L5282
	movq	(%rdi), %r8
	leaq	LC40(%rip), %rsi
	movl	$5381, %ecx
	movl	$73, %edx
	testq	%r8, %r8
	je	L5282
	.align 4,0x90
L5280:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L5280
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L5282
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L5282
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L5285
	.align 4,0x90
L5286:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L5282
L5285:
	leaq	LC40(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L5286
	movq	32(%rbx), %r10
	movq	24(%rbx), %r9
	movzbl	16(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	8(%rbx), %r8
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	jmp	L5279
L5282:
	movq	_smp_nil@GOTPCREL(%rip), %rbx
	movq	24(%rbx), %r10
	movq	16(%rbx), %r9
	movzbl	8(%rbx), %eax
	movl	%eax, %edx
	sall	$6, %edx
	sarb	$7, %dl
	movl	%eax, %ecx
	sall	$7, %ecx
	sarb	$7, %cl
	movq	(%rbx), %r8
L5279:
	movq	%r10, -248(%rbp)
	movq	%r9, -256(%rbp)
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-264(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -264(%rbp)
	movq	%r8, -272(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -304(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -296(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -288(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -280(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%r8, (%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r10, 24(%rsp)
	leaq	LC90(%rip), %rdx
	xorl	%esi, %esi
	call	_smpType_def_general
	movq	(%rbx), %rsi
	movq	%rsi, -112(%rbp)
	movq	8(%rbx), %rcx
	movq	%rcx, -104(%rbp)
	movq	16(%rbx), %rdx
	movq	%rdx, -96(%rbp)
	movq	24(%rbx), %rax
	movq	%rax, -88(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rcx, -296(%rbp)
	movq	%rdx, -288(%rbp)
	movq	%rax, -280(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	%rax, %rdi
	call	_gc_stack_push
	testl	%eax, %eax
	jne	L5288
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	jne	L5311
L5292:
	movq	-304(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-288(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC184(%rip), %rsi
	call	_minihash_add
L5288:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$20, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-272(%rbp), %rdi
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	call	_obj_init
	movq	%rbx, -248(%rbp)
	movq	-272(%rbp), %r8
	movq	%r8, -304(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-256(%rbp), %rsi
	movq	%rsi, -288(%rbp)
	movq	%rbx, -280(%rbp)
	movzbl	-296(%rbp), %edx
	movq	%rbx, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-200(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -200(%rbp)
	movq	%r8, -208(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%r8, (%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	_smpInteger_zero@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	call	_make_list
	movq	$19, -344(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -352(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -368(%rbp)
	.align 4,0x90
L5293:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %r14
	movq	-344(%rbp), %rsi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	_smpType_int@GOTPCREL(%rip), %rsi
	movq	-360(%rbp), %rdi
	call	_obj_init
	movq	-304(%rbp), %r15
	movq	%r15, -272(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-288(%rbp), %r13
	movq	%r13, -256(%rbp)
	movq	%r14, -248(%rbp)
	movzbl	-264(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r12d
	sarb	$7, %r12b
	movq	%r14, -280(%rbp)
	movl	%ebx, %edx
	andl	$1, %edx
	addl	%edx, %edx
	movzbl	-296(%rbp), %eax
	andl	$-4, %eax
	movl	%r12d, %ecx
	andl	$1, %ecx
	orl	%edx, %eax
	orl	%ecx, %eax
	movb	%al, -296(%rbp)
	movq	-360(%rbp), %rdi
	call	_gc_stack_push
	testl	%eax, %eax
	jne	L5294
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	je	L5298
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
L5298:
	movq	-304(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-288(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC125(%rip), %rsi
	call	_minihash_add
L5294:
	movq	%r14, -56(%rbp)
	movq	%r13, -64(%rbp)
	andl	$1, %ebx
	leal	(%rbx,%rbx), %edx
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r12d
	orl	%edx, %eax
	orl	%r12d, %eax
	movb	%al, -72(%rbp)
	movq	%r15, -80(%rbp)
	movq	%r15, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	%r14, 24(%rsp)
	movq	-368(%rbp), %rcx
	movl	$1, %edx
	leaq	LC149(%rip), %rsi
	movq	-352(%rbp), %rdi
	call	_smpObject_funcall
	movq	-336(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-320(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rcx, -296(%rbp)
	movq	%rdx, -288(%rbp)
	movq	%rax, -280(%rbp)
	movq	-360(%rbp), %rdi
	call	_gc_stack_push
	testl	%eax, %eax
	jne	L5299
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	je	L5303
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
L5303:
	movq	-304(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-288(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-280(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC184(%rip), %rsi
	call	_minihash_add
L5299:
	decq	-344(%rbp)
	cmpq	$-1, -344(%rbp)
	jne	L5293
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-120(%rbp), %rax
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
	andl	$1, %eax
	addq	$392, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L5311:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
	jmp	L5292
LFE143:
	.cstring
LC185:
	.ascii "World\0"
	.align 3
LC186:
	.ascii "Hello, %w! Mad %s, Wayne's %s, Disney %s.\0"
	.align 3
LC187:
	.ascii "Hello, World! Mad \"World\", Wayne's \"World\", Disney \"World\".\0"
	.text
	.align 4,0x90
.globl _test_strings
_test_strings:
LFB141:
	pushq	%rbp
LCFI1848:
	movq	%rsp, %rbp
LCFI1849:
	pushq	%r15
LCFI1850:
	pushq	%r14
LCFI1851:
	pushq	%r13
LCFI1852:
	pushq	%r12
LCFI1853:
	pushq	%rbx
LCFI1854:
	subq	$392, %rsp
LCFI1855:
	leaq	-176(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	_smpType_string@GOTPCREL(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	%rax, %rsi
	movq	-344(%rbp), %rdi
	call	_obj_init
	leaq	LC185(%rip), %rsi
	movq	-344(%rbp), %rdi
	call	_obj_init_str
	movzbl	-168(%rbp), %eax
	movl	%eax, %ebx
	sall	$6, %ebx
	sarb	$7, %bl
	sall	$7, %eax
	movl	%eax, %r15d
	sarb	$7, %r15b
	movq	-152(%rbp), %r12
	movq	-176(%rbp), %r13
	movq	-160(%rbp), %r14
	leaq	-304(%rbp), %rax
	movq	%rax, -360(%rbp)
	movl	$128, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	_memset
	andl	$1, %ebx
	addl	%ebx, %ebx
	movzbl	-296(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %r15d
	orl	%ebx, %eax
	orl	%r15d, %eax
	movb	%al, -296(%rbp)
	movq	%r12, -280(%rbp)
	movq	%r13, -304(%rbp)
	movq	%r14, -288(%rbp)
	movzbl	-264(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r15d, %eax
	movb	%al, -264(%rbp)
	movq	%r12, -248(%rbp)
	movq	%r13, -272(%rbp)
	movq	%r14, -256(%rbp)
	movzbl	-232(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r15d, %eax
	movb	%al, -232(%rbp)
	movq	%r12, -216(%rbp)
	movq	%r13, -240(%rbp)
	movq	%r14, -224(%rbp)
	movzbl	-200(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r15d, %eax
	movb	%al, -200(%rbp)
	movq	%r12, -184(%rbp)
	movq	%r13, -208(%rbp)
	movq	%r14, -192(%rbp)
	leaq	-112(%rbp), %rdi
	movq	-360(%rbp), %rcx
	movl	$4, %edx
	leaq	LC186(%rip), %rsi
	xorl	%eax, %eax
	call	_smpGlobal_sprintf
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rdi
	call	_obj_init
	leaq	LC187(%rip), %rsi
	movq	-344(%rbp), %rdi
	call	_obj_init_str
	movq	-176(%rbp), %rdi
	movq	%rdi, -144(%rbp)
	movq	-168(%rbp), %rsi
	movq	%rsi, -136(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-152(%rbp), %rdx
	movq	%rdx, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-104(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-96(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-88(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	call	_smp_assert_eq
	movzbl	12(%r14), %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	L5313
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	orl	%ebx, %eax
	orl	%r15d, %eax
	movb	%al, -72(%rbp)
	movq	%r12, -56(%rbp)
	movq	%r13, -80(%rbp)
	movq	%r14, -64(%rbp)
	leaq	-336(%rbp), %rdi
	movq	%r13, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r12, 24(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	LC91(%rip), %rsi
	call	_smpObject_funcall
	testq	%r13, %r13
	je	L5315
	movq	%r13, %rdi
	call	_free
L5315:
	testq	%r12, %r12
	je	L5313
	movq	%r12, %rdi
	call	_free
L5313:
	xorl	%eax, %eax
	addq	$392, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
LFE141:
	.cstring
LC188:
	.ascii "y\0"
	.text
	.align 4,0x90
.globl _test_nums
_test_nums:
LFB139:
	pushq	%rbp
LCFI1856:
	movq	%rsp, %rbp
LCFI1857:
	pushq	%r15
LCFI1858:
	pushq	%r14
LCFI1859:
	pushq	%r13
LCFI1860:
	pushq	%r12
LCFI1861:
	pushq	%rbx
LCFI1862:
	subq	$888, %rsp
LCFI1863:
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$4, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-784(%rbp), %r14
	movq	_smpType_int@GOTPCREL(%rip), %r15
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	_obj_init
	movq	%rbx, -760(%rbp)
	movq	-784(%rbp), %rsi
	movq	%rsi, -816(%rbp)
	movq	-776(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-768(%rbp), %rax
	movq	%rax, -800(%rbp)
	movq	%rbx, -792(%rbp)
	movzbl	-808(%rbp), %edx
	movq	%rbx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-72(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$7, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	leaq	-816(%rbp), %rax
	movq	%rax, -856(%rbp)
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_obj_init
	movq	-816(%rbp), %rsi
	movq	%rsi, -784(%rbp)
	movq	-808(%rbp), %rax
	movq	%rax, -776(%rbp)
	movq	-800(%rbp), %rax
	movq	%rax, -768(%rbp)
	movq	%rbx, -760(%rbp)
	movzbl	-776(%rbp), %edx
	movq	%rbx, -88(%rbp)
	movq	%rax, -96(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-104(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -800(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -792(%rbp)
	movq	-856(%rbp), %rdi
	call	_gc_stack_push
	testl	%eax, %eax
	jne	L5320
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	jne	L5331
L5324:
	movq	-816(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-808(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-800(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-792(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC125(%rip), %rsi
	call	_minihash_add
L5320:
	movq	-112(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -800(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -792(%rbp)
	movq	-856(%rbp), %rdi
	call	_gc_stack_push
	testl	%eax, %eax
	jne	L5325
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	jne	L5332
L5329:
	movq	-816(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-808(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-800(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-792(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	LC188(%rip), %rsi
	call	_minihash_add
L5325:
	leaq	-144(%rbp), %rdi
	leaq	-112(%rbp), %r13
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rcx
	movl	$1, %edx
	leaq	LC122(%rip), %rsi
	call	_smpObject_funcall
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$11, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	_obj_init
	movq	%rbx, -760(%rbp)
	movq	-784(%rbp), %rdi
	movq	%rdi, -816(%rbp)
	movq	-776(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-768(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	%rbx, -792(%rbp)
	movzbl	-808(%rbp), %edx
	movq	%rbx, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-168(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -168(%rbp)
	movq	%rdi, -176(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-120(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, %r12d
	leaq	-208(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rcx
	movl	$1, %edx
	leaq	LC127(%rip), %rsi
	call	_smpObject_funcall
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movq	$-3, %rsi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r15, %rsi
	movq	-856(%rbp), %rdi
	call	_obj_init
	movq	%rbx, -792(%rbp)
	movq	-816(%rbp), %rdi
	movq	%rdi, -784(%rbp)
	movq	-808(%rbp), %rax
	movq	%rax, -776(%rbp)
	movq	-800(%rbp), %rsi
	movq	%rsi, -768(%rbp)
	movq	%rbx, -760(%rbp)
	movzbl	-776(%rbp), %edx
	movq	%rbx, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-232(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -232(%rbp)
	movq	%rdi, -240(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-200(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-192(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-232(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -844(%rbp)
	leaq	-272(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rcx
	movl	$1, %edx
	leaq	LC128(%rip), %rsi
	call	_smpObject_funcall
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$28, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	_obj_init
	movq	%rbx, -760(%rbp)
	movq	-784(%rbp), %rdi
	movq	%rdi, -816(%rbp)
	movq	-776(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-768(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	%rbx, -792(%rbp)
	movzbl	-808(%rbp), %edx
	movq	%rbx, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-296(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -296(%rbp)
	movq	%rdi, -304(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-264(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-256(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-248(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-296(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -840(%rbp)
	leaq	-336(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rcx
	movl	$1, %edx
	leaq	LC129(%rip), %rsi
	call	_smpObject_funcall
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r15, %rsi
	movq	-856(%rbp), %rdi
	call	_obj_init
	movq	%rbx, -792(%rbp)
	movq	-816(%rbp), %rdi
	movq	%rdi, -784(%rbp)
	movq	-808(%rbp), %rax
	movq	%rax, -776(%rbp)
	movq	-800(%rbp), %rsi
	movq	%rsi, -768(%rbp)
	movq	%rbx, -760(%rbp)
	movzbl	-776(%rbp), %edx
	movq	%rbx, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-360(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -360(%rbp)
	movq	%rdi, -368(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-328(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-320(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-312(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-360(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -836(%rbp)
	leaq	-400(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rcx
	movl	$1, %edx
	leaq	LC160(%rip), %rsi
	call	_smpObject_funcall
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$4, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	_obj_init
	movq	%rbx, -760(%rbp)
	movq	-784(%rbp), %rdi
	movq	%rdi, -816(%rbp)
	movq	-776(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-768(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	%rbx, -792(%rbp)
	movzbl	-808(%rbp), %edx
	movq	%rbx, -408(%rbp)
	movq	%rsi, -416(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-424(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -424(%rbp)
	movq	%rdi, -432(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-392(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-384(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-376(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-424(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -832(%rbp)
	leaq	-464(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rcx
	movl	$1, %edx
	leaq	LC162(%rip), %rsi
	call	_smpObject_funcall
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$512, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r15, %rsi
	movq	-856(%rbp), %rdi
	call	_obj_init
	movq	%rbx, -792(%rbp)
	movq	-816(%rbp), %rdi
	movq	%rdi, -784(%rbp)
	movq	-808(%rbp), %rax
	movq	%rax, -776(%rbp)
	movq	-800(%rbp), %rsi
	movq	%rsi, -768(%rbp)
	movq	%rbx, -760(%rbp)
	movzbl	-776(%rbp), %edx
	movq	%rbx, -472(%rbp)
	movq	%rsi, -480(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-488(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -488(%rbp)
	movq	%rdi, -496(%rbp)
	movq	-464(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-456(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-448(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-440(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-488(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -828(%rbp)
	leaq	-528(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rcx
	movl	$1, %edx
	leaq	LC163(%rip), %rsi
	call	_smpObject_funcall
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	_obj_init
	movq	%rbx, -760(%rbp)
	movq	-784(%rbp), %rdi
	movq	%rdi, -816(%rbp)
	movq	-776(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-768(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	%rbx, -792(%rbp)
	movzbl	-808(%rbp), %edx
	movq	%rbx, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-552(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -552(%rbp)
	movq	%rdi, -560(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-520(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-512(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-504(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-552(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -824(%rbp)
	leaq	-592(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rcx
	movl	$1, %edx
	leaq	LC164(%rip), %rsi
	call	_smpObject_funcall
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$4, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r15, %rsi
	movq	-856(%rbp), %rdi
	call	_obj_init
	movq	%rbx, -792(%rbp)
	movq	-816(%rbp), %rdi
	movq	%rdi, -784(%rbp)
	movq	-808(%rbp), %rax
	movq	%rax, -776(%rbp)
	movq	-800(%rbp), %rsi
	movq	%rsi, -768(%rbp)
	movq	%rbx, -760(%rbp)
	movzbl	-776(%rbp), %edx
	movq	%rbx, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-616(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -616(%rbp)
	movq	%rdi, -624(%rbp)
	movq	-592(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-584(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-576(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-568(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-616(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, -820(%rbp)
	leaq	-656(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rcx
	movl	$1, %edx
	leaq	LC165(%rip), %rsi
	call	_smpObject_funcall
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$7, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	_obj_init
	movq	%rbx, -760(%rbp)
	movq	-784(%rbp), %rdi
	movq	%rdi, -816(%rbp)
	movq	-776(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-768(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	%rbx, -792(%rbp)
	movzbl	-808(%rbp), %edx
	movq	%rbx, -664(%rbp)
	movq	%rsi, -672(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-680(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -680(%rbp)
	movq	%rdi, -688(%rbp)
	movq	-656(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-648(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-640(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-632(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-680(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	call	_smp_assert_eq
	movl	%eax, %r14d
	leaq	-720(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-64(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	%r13, %rcx
	movl	$1, %edx
	leaq	LC126(%rip), %rsi
	call	_smpObject_funcall
	movl	$16, %edi
	call	_malloc
	movq	%rax, %rbx
	movl	$3, %esi
	movq	%rax, %rdi
	call	___gmpz_init_set_si
	movq	%r15, %rsi
	movq	-856(%rbp), %rdi
	call	_obj_init
	movq	%rbx, -792(%rbp)
	movq	-816(%rbp), %rdi
	movq	%rdi, -784(%rbp)
	movq	-808(%rbp), %rax
	movq	%rax, -776(%rbp)
	movq	-800(%rbp), %rsi
	movq	%rsi, -768(%rbp)
	movq	%rbx, -760(%rbp)
	movzbl	-776(%rbp), %edx
	movq	%rbx, -728(%rbp)
	movq	%rsi, -736(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-744(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -744(%rbp)
	movq	%rdi, -752(%rbp)
	movq	-720(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	-712(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-704(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	-696(%rbp), %rax
	movq	%rax, 56(%rsp)
	movq	%rdi, (%rsp)
	movq	-744(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rbx, 24(%rsp)
	call	_smp_assert_eq
	andl	-844(%rbp), %r12d
	andl	$1, %r12d
	andl	-840(%rbp), %r12d
	andl	-836(%rbp), %r12d
	andl	-832(%rbp), %r12d
	andl	-828(%rbp), %r12d
	andl	-824(%rbp), %r12d
	andl	-820(%rbp), %r12d
	andl	%r14d, %r12d
	andl	%eax, %r12d
	movl	%r12d, %eax
	addq	$888, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.align 4,0x90
L5332:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
	jmp	L5329
	.align 4,0x90
L5331:
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdi
	jmp	L5324
LFE139:
	.cstring
LC189:
	.ascii "\12\12Tests succeeded.\12\0"
LC190:
	.ascii "\12\12Tests failed.\12\0"
	.text
	.align 4,0x90
.globl _run_tests
_run_tests:
LFB153:
	pushq	%rbp
LCFI1864:
	movq	%rsp, %rbp
LCFI1865:
	movq	%rbx, -24(%rbp)
LCFI1866:
	movq	%r12, -16(%rbp)
LCFI1867:
	movq	%r13, -8(%rbp)
LCFI1868:
	subq	$32, %rsp
LCFI1869:
	xorl	%eax, %eax
	call	_test_lists
	movl	%eax, %ebx
	xorl	%eax, %eax
	call	_test_listbuf
	movl	%eax, %r13d
	xorl	%eax, %eax
	call	_test_bool
	movl	%eax, %r12d
	xorl	%eax, %eax
	call	_test_nums
	andl	%r13d, %ebx
	andl	$1, %ebx
	andl	%r12d, %ebx
	andl	%eax, %ebx
	je	L5334
	leaq	LC189(%rip), %rdi
	call	_puts
L5336:
	movl	%ebx, %eax
	movq	-24(%rbp), %rbx
	movq	-16(%rbp), %r12
	movq	-8(%rbp), %r13
	leave
	ret
	.align 4,0x90
L5334:
	leaq	LC190(%rip), %rdi
	call	_puts
	jmp	L5336
LFE153:
	.align 4,0x90
.globl _smpObject_getclass
_smpObject_getclass:
LFB111:
	pushq	%rbp
LCFI1870:
	movq	%rsp, %rbp
LCFI1871:
	movq	%rbx, -40(%rbp)
LCFI1872:
	movq	%r12, -32(%rbp)
LCFI1873:
	movq	%r13, -24(%rbp)
LCFI1874:
	movq	%r14, -16(%rbp)
LCFI1875:
	movq	%r15, -8(%rbp)
LCFI1876:
	subq	$48, %rsp
LCFI1877:
	movq	%rdi, %r13
	movq	32(%rbp), %rax
	movq	(%rax), %r15
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L5349
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L5349
	movq	(%rdi), %r8
	testq	%r8, %r8
	je	L5349
	movzbl	(%r15), %edx
	movl	$5381, %eax
	testb	%dl, %dl
	je	L5346
	movq	%r15, %rcx
	movl	$5381, %esi
	.align 4,0x90
L5347:
	movl	%esi, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %esi
	movzbl	1(%rcx), %edx
	incq	%rcx
	testb	%dl, %dl
	jne	L5347
	movslq	%esi,%rax
L5346:
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L5349
	movq	8(%rax), %r14
	testq	%r14, %r14
	je	L5349
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L5352
	.align 4,0x90
L5353:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r14, %r12
	je	L5349
L5352:
	movq	%r15, %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L5353
	movq	8(%rbx), %rax
	movq	%rax, (%r13)
	movq	16(%rbx), %rax
	movq	%rax, 8(%r13)
	movq	24(%rbx), %rax
	movq	%rax, 16(%r13)
	movq	32(%rbx), %rax
	movq	%rax, 24(%r13)
	jmp	L5338
	.align 4,0x90
L5349:
	movq	_smp_nil@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r13)
	movq	8(%rdx), %rax
	movq	%rax, 8(%r13)
	movq	16(%rdx), %rax
	movq	%rax, 16(%r13)
	movq	24(%rdx), %rax
	movq	%rax, 24(%r13)
L5338:
	movq	%r13, %rax
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
LFE111:
	.align 4,0x90
.globl _smpObject_funcall_arg
_smpObject_funcall_arg:
LFB110:
	pushq	%rbp
LCFI1878:
	movq	%rsp, %rbp
LCFI1879:
	pushq	%r15
LCFI1880:
	pushq	%r14
LCFI1881:
	pushq	%r13
LCFI1882:
	pushq	%r12
LCFI1883:
	pushq	%rbx
LCFI1884:
	subq	$232, %rsp
LCFI1885:
	movq	%rdi, -208(%rbp)
	movq	%rdx, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	%rdx, -56(%rbp)
	xorl	%edx, %edx
	movq	%rsp, -200(%rbp)
	movq	16(%r15), %r12
	movq	(%r12), %rbx
	leaq	LC2(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L5360
	cmpq	$0, 24(%r12)
	je	L5362
	xorl	%ebx, %ebx
	jmp	L5364
	.align 4,0x90
L5436:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L5435
L5364:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC2(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L5436
L5360:
	leaq	32(%r15), %r14
	movq	16(%r14), %r12
	movq	(%r12), %r13
	leaq	LC75(%rip), %rsi
	movq	%r13, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L5437
L5367:
	movzbl	8(%r14), %edx
	movq	(%r14), %rsi
	movq	24(%r14), %rdi
	movq	%r12, -176(%rbp)
	movl	%edx, %ecx
	andl	$2, %ecx
	movzbl	-184(%rbp), %eax
	andl	$-4, %eax
	andl	$1, %edx
	orl	%ecx, %eax
	orl	%edx, %eax
	movb	%al, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdi, -168(%rbp)
	movl	8(%r12), %edx
	movq	_smpType_id_nil@GOTPCREL(%rip), %rax
	cmpl	(%rax), %edx
	je	L5438
	xorl	%r10d, %r10d
	leaq	-192(%rbp), %rax
	.align 4,0x90
L5407:
	incq	%r10
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	L5407
	movl	%r10d, %esi
	movslq	%r10d,%rax
	salq	$5, %rax
	addq	$16, %rax
	subq	%rax, %rsp
	leaq	64(%rsp), %rcx
	movq	%rcx, %rdx
	testl	%r10d, %r10d
	jle	L5409
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	jmp	L5411
	.align 4,0x90
L5434:
	movq	24(%rax), %rdi
	incl	%r9d
	addq	$32, %r8
	cmpl	%r10d, %r9d
	je	L5409
L5411:
	movq	(%rdi), %rax
	movq	%rax, (%r8,%rcx)
	movq	8(%rdi), %rax
	movq	%rax, 8(%r8,%rcx)
	movq	16(%rdi), %rax
	movq	%rax, 16(%r8,%rcx)
	movq	24(%rdi), %rax
	movq	%rax, 24(%r8,%rcx)
	movq	32(%rdi), %rax
	testq	%rax, %rax
	jne	L5434
	movq	_smp_nil@GOTPCREL(%rip), %rax
	jmp	L5434
L5437:
	xorl	%ebx, %ebx
	cmpq	$0, 24(%r12)
	jne	L5387
	jmp	L5370
	.align 4,0x90
L5440:
	incq	%rbx
	cmpq	%rbx, 24(%r12)
	jbe	L5439
L5387:
	movq	16(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	leaq	LC75(%rip), %rsi
	call	_smpObject_instancep_cstr
	testl	%eax, %eax
	je	L5440
	movq	16(%r14), %r12
	jmp	L5367
L5438:
	leaq	64(%rsp), %rdx
	xorl	%esi, %esi
L5409:
	movq	(%r15), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r15), %rax
	movq	%rax, 40(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 48(%rsp)
	movq	24(%r15), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	-208(%rbp), %rdi
	call	_smpFunction_call
L5372:
	movq	-200(%rbp), %rsp
	movq	-208(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	-56(%rbp), %rdx
	xorq	(%rcx), %rdx
	jne	L5441
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L5435:
	movq	16(%r15), %rax
	movq	(%rax), %rbx
L5362:
	leaq	LC15(%rip), %rsi
	movq	%rbx, %rdi
	call	_strcmp
	testl	%eax, %eax
	je	L5371
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L5381
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L5381
	movq	(%rdi), %r8
	leaq	LC2(%rip), %rsi
	movl	$5381, %ecx
	movl	$70, %edx
	testq	%r8, %r8
	je	L5381
L5379:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L5379
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L5381
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L5381
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L5384
L5385:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L5381
L5384:
	leaq	LC2(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L5385
	movq	32(%rbx), %rsi
	jmp	L5378
L5371:
	movl	$32, %edx
	movq	%r15, %rsi
	movq	-208(%rbp), %rdi
	call	_memmove
	jmp	L5372
L5381:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L5378:
	leaq	-96(%rbp), %rdi
	movq	(%r15), %rax
	movq	%rax, (%rsp)
	movq	8(%r15), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r15), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-96(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-160(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-160(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rcx)
	jmp	L5372
L5439:
	movq	16(%r14), %rax
	movq	(%rax), %r13
L5370:
	leaq	LC15(%rip), %rsi
	movq	%r13, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L5442
	movl	$32, %edx
	movq	%r14, %rsi
	movq	-208(%rbp), %rdi
	call	_memmove
	jmp	L5372
L5442:
	movq	_scope_length@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L5401
	movq	_scope_stack@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	salq	$5, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	je	L5401
	movq	(%rdi), %r8
	leaq	LC75(%rip), %rsi
	movl	$5381, %ecx
	movl	$76, %edx
	testq	%r8, %r8
	je	L5401
L5399:
	movl	%ecx, %eax
	sall	$5, %eax
	movsbl	%dl,%edx
	addl	%edx, %eax
	addl	%eax, %ecx
	movzbl	1(%rsi), %edx
	incq	%rsi
	testb	%dl, %dl
	jne	L5399
	movslq	%ecx,%rax
	xorl	%edx, %edx
	divq	8(%rdi)
	movslq	%edx,%rdx
	salq	$4, %rdx
	leaq	(%r8,%rdx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	L5401
	movq	8(%rax), %r13
	testq	%r13, %r13
	je	L5401
	movq	%rdx, %rbx
	xorl	%r12d, %r12d
	jmp	L5404
L5405:
	incq	%r12
	addq	$40, %rbx
	cmpq	%r13, %r12
	je	L5401
L5404:
	leaq	LC75(%rip), %rsi
	movq	(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L5405
	movq	32(%rbx), %rsi
	jmp	L5398
L5401:
	movq	_smp_nil@GOTPCREL(%rip), %rax
	movq	24(%rax), %rsi
L5398:
	leaq	-128(%rbp), %rdi
	movq	(%r14), %rax
	movq	%rax, (%rsp)
	movq	8(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	16(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	24(%r14), %rax
	movq	%rax, 24(%rsp)
	call	_smpTypeError_init
	movq	-128(%rbp), %rdx
	movq	%rdx, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	-192(%rbp), %rdi
	movq	%rdx, (%rsp)
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-144(%rbp), %rax
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax
	movq	%rax, 24(%rsp)
	xorl	%esi, %esi
	call	_smpThrown_init
	movq	-192(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-168(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	L5372
L5441:
	call	___stack_chk_fail
LFE110:
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
.comm _gc_stack,32768,5
.comm _gc_stack_length,8,3
.comm _gc_counter,4,2
.comm _gc_add_objectsp,4,2
.comm _gc_add_next_objectp,4,2
.comm _gc_activep,4,2
.comm _gc_runningp,4,2
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
LC7:
	.long	0
	.long	1072168960
	.align 3
LC8:
	.long	0
	.long	1074790400
	.align 3
LC9:
	.long	0
	.long	1138753536
	.align 3
LC44:
	.long	0
	.long	1073741824
	.align 3
LC84:
	.long	1717986918
	.long	1077241446
	.align 3
LC103:
	.long	4028335726
	.long	1074340345
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
.globl _gc_init.eh
_gc_init.eh:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB78-.
	.set L$set$2,LFE78-LFB78
	.quad L$set$2
	.byte	0x0
	.byte	0x4
	.set L$set$3,LCFI0-LFB78
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
.globl _minihash_function.eh
_minihash_function.eh:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB89-.
	.set L$set$6,LFE89-LFB89
	.quad L$set$6
	.byte	0x0
	.byte	0x4
	.set L$set$7,LCFI2-LFB89
	.long L$set$7
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE3:
.globl _minihash_each.eh
_minihash_each.eh:
LSFDE5:
	.set L$set$9,LEFDE5-LASFDE5
	.long L$set$9
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB95-.
	.set L$set$10,LFE95-LFB95
	.quad L$set$10
	.byte	0x0
	.byte	0x4
	.set L$set$11,LCFI4-LFB95
	.long L$set$11
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$13,LCFI11-LCFI5
	.long L$set$13
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE5:
.globl _obj_eq.eh
_obj_eq.eh:
LSFDE7:
	.set L$set$14,LEFDE7-LASFDE7
	.long L$set$14
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB101-.
	.set L$set$15,LFE101-LFB101
	.quad L$set$15
	.byte	0x0
	.byte	0x4
	.set L$set$16,LCFI12-LFB101
	.long L$set$16
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$17,LCFI13-LCFI12
	.long L$set$17
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE7:
.globl _smpObject_clear.eh
_smpObject_clear.eh:
LSFDE9:
	.set L$set$18,LEFDE9-LASFDE9
	.long L$set$18
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB103-.
	.set L$set$19,LFE103-LFB103
	.quad L$set$19
	.byte	0x0
	.byte	0x4
	.set L$set$20,LCFI14-LFB103
	.long L$set$20
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$21,LCFI15-LCFI14
	.long L$set$21
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE9:
.globl _smpObject_gc_mark.eh
_smpObject_gc_mark.eh:
LSFDE11:
	.set L$set$22,LEFDE11-LASFDE11
	.long L$set$22
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB112-.
	.set L$set$23,LFE112-LFB112
	.quad L$set$23
	.byte	0x0
	.byte	0x4
	.set L$set$24,LCFI16-LFB112
	.long L$set$24
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$25,LCFI17-LCFI16
	.long L$set$25
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE11:
.globl _test_init.eh
_test_init.eh:
LSFDE13:
	.set L$set$26,LEFDE13-LASFDE13
	.long L$set$26
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB137-.
	.set L$set$27,LFE137-LFB137
	.quad L$set$27
	.byte	0x0
	.byte	0x4
	.set L$set$28,LCFI18-LFB137
	.long L$set$28
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$29,LCFI19-LCFI18
	.long L$set$29
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE13:
.globl _is_power_of_2.eh
_is_power_of_2.eh:
LSFDE15:
	.set L$set$30,LEFDE15-LASFDE15
	.long L$set$30
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB161-.
	.set L$set$31,LFE161-LFB161
	.quad L$set$31
	.byte	0x0
	.byte	0x4
	.set L$set$32,LCFI20-LFB161
	.long L$set$32
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$33,LCFI21-LCFI20
	.long L$set$33
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE15:
.globl _next_power_of_2.eh
_next_power_of_2.eh:
LSFDE17:
	.set L$set$34,LEFDE17-LASFDE17
	.long L$set$34
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB162-.
	.set L$set$35,LFE162-LFB162
	.quad L$set$35
	.byte	0x0
	.byte	0x4
	.set L$set$36,LCFI22-LFB162
	.long L$set$36
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$37,LCFI23-LCFI22
	.long L$set$37
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE17:
.globl _smpBool_init.eh
_smpBool_init.eh:
LSFDE19:
	.set L$set$38,LEFDE19-LASFDE19
	.long L$set$38
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB176-.
	.set L$set$39,LFE176-LFB176
	.quad L$set$39
	.byte	0x0
	.byte	0x4
	.set L$set$40,LCFI24-LFB176
	.long L$set$40
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$41,LCFI25-LCFI24
	.long L$set$41
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE19:
.globl _smpBool_to_cint.eh
_smpBool_to_cint.eh:
LSFDE21:
	.set L$set$42,LEFDE21-LASFDE21
	.long L$set$42
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB177-.
	.set L$set$43,LFE177-LFB177
	.quad L$set$43
	.byte	0x0
	.byte	0x4
	.set L$set$44,LCFI26-LFB177
	.long L$set$44
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$45,LCFI27-LCFI26
	.long L$set$45
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE21:
.globl _smpObject_truep_c.eh
_smpObject_truep_c.eh:
LSFDE23:
	.set L$set$46,LEFDE23-LASFDE23
	.long L$set$46
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB179-.
	.set L$set$47,LFE179-LFB179
	.quad L$set$47
	.byte	0x0
	.byte	0x4
	.set L$set$48,LCFI28-LFB179
	.long L$set$48
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$49,LCFI29-LCFI28
	.long L$set$49
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE23:
.globl _smpBool_and.eh
_smpBool_and.eh:
LSFDE25:
	.set L$set$50,LEFDE25-LASFDE25
	.long L$set$50
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB181-.
	.set L$set$51,LFE181-LFB181
	.quad L$set$51
	.byte	0x0
	.byte	0x4
	.set L$set$52,LCFI30-LFB181
	.long L$set$52
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$53,LCFI31-LCFI30
	.long L$set$53
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE25:
.globl _smpBool_not.eh
_smpBool_not.eh:
LSFDE27:
	.set L$set$54,LEFDE27-LASFDE27
	.long L$set$54
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB182-.
	.set L$set$55,LFE182-LFB182
	.quad L$set$55
	.byte	0x0
	.byte	0x4
	.set L$set$56,LCFI32-LFB182
	.long L$set$56
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$57,LCFI33-LCFI32
	.long L$set$57
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE27:
.globl _smpBool_or.eh
_smpBool_or.eh:
LSFDE29:
	.set L$set$58,LEFDE29-LASFDE29
	.long L$set$58
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB183-.
	.set L$set$59,LFE183-LFB183
	.quad L$set$59
	.byte	0x0
	.byte	0x4
	.set L$set$60,LCFI34-LFB183
	.long L$set$60
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$61,LCFI35-LCFI34
	.long L$set$61
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE29:
.globl _smpBool_xor.eh
_smpBool_xor.eh:
LSFDE31:
	.set L$set$62,LEFDE31-LASFDE31
	.long L$set$62
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB184-.
	.set L$set$63,LFE184-LFB184
	.quad L$set$63
	.byte	0x0
	.byte	0x4
	.set L$set$64,LCFI36-LFB184
	.long L$set$64
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$65,LCFI37-LCFI36
	.long L$set$65
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE31:
.globl _smpGlobal_list.eh
_smpGlobal_list.eh:
LSFDE33:
	.set L$set$66,LEFDE33-LASFDE33
	.long L$set$66
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB236-.
	.set L$set$67,LFE236-LFB236
	.quad L$set$67
	.byte	0x0
	.byte	0x4
	.set L$set$68,LCFI38-LFB236
	.long L$set$68
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$69,LCFI39-LCFI38
	.long L$set$69
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$70,LCFI41-LCFI39
	.long L$set$70
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE33:
.globl _smpList_car.eh
_smpList_car.eh:
LSFDE35:
	.set L$set$71,LEFDE35-LASFDE35
	.long L$set$71
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB295-.
	.set L$set$72,LFE295-LFB295
	.quad L$set$72
	.byte	0x0
	.byte	0x4
	.set L$set$73,LCFI42-LFB295
	.long L$set$73
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$74,LCFI43-LCFI42
	.long L$set$74
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE35:
.globl _smpList_cdr.eh
_smpList_cdr.eh:
LSFDE37:
	.set L$set$75,LEFDE37-LASFDE37
	.long L$set$75
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB296-.
	.set L$set$76,LFE296-LFB296
	.quad L$set$76
	.byte	0x0
	.byte	0x4
	.set L$set$77,LCFI44-LFB296
	.long L$set$77
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$78,LCFI45-LCFI44
	.long L$set$78
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$79,LCFI47-LCFI45
	.long L$set$79
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE37:
.globl _smpList_emptyp.eh
_smpList_emptyp.eh:
LSFDE39:
	.set L$set$80,LEFDE39-LASFDE39
	.long L$set$80
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB298-.
	.set L$set$81,LFE298-LFB298
	.quad L$set$81
	.byte	0x0
	.byte	0x4
	.set L$set$82,LCFI48-LFB298
	.long L$set$82
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$83,LCFI49-LCFI48
	.long L$set$83
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE39:
.globl _smpList_length_clong.eh
_smpList_length_clong.eh:
LSFDE41:
	.set L$set$84,LEFDE41-LASFDE41
	.long L$set$84
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB305-.
	.set L$set$85,LFE305-LFB305
	.quad L$set$85
	.byte	0x0
	.byte	0x4
	.set L$set$86,LCFI50-LFB305
	.long L$set$86
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$87,LCFI51-LCFI50
	.long L$set$87
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE41:
.globl _smpListBuffer_to_list.eh
_smpListBuffer_to_list.eh:
LSFDE43:
	.set L$set$88,LEFDE43-LASFDE43
	.long L$set$88
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB314-.
	.set L$set$89,LFE314-LFB314
	.quad L$set$89
	.byte	0x0
	.byte	0x4
	.set L$set$90,LCFI52-LFB314
	.long L$set$90
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$91,LCFI53-LCFI52
	.long L$set$91
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE43:
.globl _smpNil_car.eh
_smpNil_car.eh:
LSFDE45:
	.set L$set$92,LEFDE45-LASFDE45
	.long L$set$92
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB316-.
	.set L$set$93,LFE316-LFB316
	.quad L$set$93
	.byte	0x0
	.byte	0x4
	.set L$set$94,LCFI54-LFB316
	.long L$set$94
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$95,LCFI55-LCFI54
	.long L$set$95
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE45:
.globl _smpNil_cdr.eh
_smpNil_cdr.eh:
LSFDE47:
	.set L$set$96,LEFDE47-LASFDE47
	.long L$set$96
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB317-.
	.set L$set$97,LFE317-LFB317
	.quad L$set$97
	.byte	0x0
	.byte	0x4
	.set L$set$98,LCFI56-LFB317
	.long L$set$98
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$99,LCFI57-LCFI56
	.long L$set$99
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE47:
.globl _smpNil_emptyp.eh
_smpNil_emptyp.eh:
LSFDE49:
	.set L$set$100,LEFDE49-LASFDE49
	.long L$set$100
LASFDE49:
	.long	LASFDE49-EH_frame1
	.quad	LFB318-.
	.set L$set$101,LFE318-LFB318
	.quad L$set$101
	.byte	0x0
	.byte	0x4
	.set L$set$102,LCFI58-LFB318
	.long L$set$102
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$103,LCFI59-LCFI58
	.long L$set$103
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE49:
.globl _smpPair_car.eh
_smpPair_car.eh:
LSFDE51:
	.set L$set$104,LEFDE51-LASFDE51
	.long L$set$104
LASFDE51:
	.long	LASFDE51-EH_frame1
	.quad	LFB324-.
	.set L$set$105,LFE324-LFB324
	.quad L$set$105
	.byte	0x0
	.byte	0x4
	.set L$set$106,LCFI60-LFB324
	.long L$set$106
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$107,LCFI61-LCFI60
	.long L$set$107
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE51:
.globl _smpPair_cdr.eh
_smpPair_cdr.eh:
LSFDE53:
	.set L$set$108,LEFDE53-LASFDE53
	.long L$set$108
LASFDE53:
	.long	LASFDE53-EH_frame1
	.quad	LFB325-.
	.set L$set$109,LFE325-LFB325
	.quad L$set$109
	.byte	0x0
	.byte	0x4
	.set L$set$110,LCFI62-LFB325
	.long L$set$110
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$111,LCFI63-LCFI62
	.long L$set$111
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$112,LCFI65-LCFI63
	.long L$set$112
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE53:
.globl _smpPair_set_car_now.eh
_smpPair_set_car_now.eh:
LSFDE55:
	.set L$set$113,LEFDE55-LASFDE55
	.long L$set$113
LASFDE55:
	.long	LASFDE55-EH_frame1
	.quad	LFB329-.
	.set L$set$114,LFE329-LFB329
	.quad L$set$114
	.byte	0x0
	.byte	0x4
	.set L$set$115,LCFI66-LFB329
	.long L$set$115
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$116,LCFI67-LCFI66
	.long L$set$116
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE55:
.globl _smpString_to_cstr.eh
_smpString_to_cstr.eh:
LSFDE57:
	.set L$set$117,LEFDE57-LASFDE57
	.long L$set$117
LASFDE57:
	.long	LASFDE57-EH_frame1
	.quad	LFB358-.
	.set L$set$118,LFE358-LFB358
	.quad L$set$118
	.byte	0x0
	.byte	0x4
	.set L$set$119,LCFI68-LFB358
	.long L$set$119
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$120,LCFI69-LCFI68
	.long L$set$120
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE57:
.globl _smpString_to_s.eh
_smpString_to_s.eh:
LSFDE59:
	.set L$set$121,LEFDE59-LASFDE59
	.long L$set$121
LASFDE59:
	.long	LASFDE59-EH_frame1
	.quad	LFB359-.
	.set L$set$122,LFE359-LFB359
	.quad L$set$122
	.byte	0x0
	.byte	0x4
	.set L$set$123,LCFI70-LFB359
	.long L$set$123
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$124,LCFI71-LCFI70
	.long L$set$124
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE59:
.globl _smpSymbol_to_cstr.eh
_smpSymbol_to_cstr.eh:
LSFDE61:
	.set L$set$125,LEFDE61-LASFDE61
	.long L$set$125
LASFDE61:
	.long	LASFDE61-EH_frame1
	.quad	LFB363-.
	.set L$set$126,LFE363-LFB363
	.quad L$set$126
	.byte	0x0
	.byte	0x4
	.set L$set$127,LCFI72-LFB363
	.long L$set$127
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$128,LCFI73-LCFI72
	.long L$set$128
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE61:
.globl _smpThrown_get_first_value.eh
_smpThrown_get_first_value.eh:
LSFDE63:
	.set L$set$129,LEFDE63-LASFDE63
	.long L$set$129
LASFDE63:
	.long	LASFDE63-EH_frame1
	.quad	LFB370-.
	.set L$set$130,LFE370-LFB370
	.quad L$set$130
	.byte	0x0
	.byte	0x4
	.set L$set$131,LCFI74-LFB370
	.long L$set$131
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$132,LCFI75-LCFI74
	.long L$set$132
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$133,LCFI77-LCFI75
	.long L$set$133
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE63:
.globl _smp_should_breakp_c.eh
_smp_should_breakp_c.eh:
LSFDE65:
	.set L$set$134,LEFDE65-LASFDE65
	.long L$set$134
LASFDE65:
	.long	LASFDE65-EH_frame1
	.quad	LFB372-.
	.set L$set$135,LFE372-LFB372
	.quad L$set$135
	.byte	0x0
	.byte	0x4
	.set L$set$136,LCFI78-LFB372
	.long L$set$136
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$137,LCFI79-LCFI78
	.long L$set$137
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE65:
.globl _smp_should_returnp_c.eh
_smp_should_returnp_c.eh:
LSFDE67:
	.set L$set$138,LEFDE67-LASFDE67
	.long L$set$138
LASFDE67:
	.long	LASFDE67-EH_frame1
	.quad	LFB373-.
	.set L$set$139,LFE373-LFB373
	.quad L$set$139
	.byte	0x0
	.byte	0x4
	.set L$set$140,LCFI80-LFB373
	.long L$set$140
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$141,LCFI81-LCFI80
	.long L$set$141
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE67:
.globl _smp_thrown_exceptionp_c.eh
_smp_thrown_exceptionp_c.eh:
LSFDE69:
	.set L$set$142,LEFDE69-LASFDE69
	.long L$set$142
LASFDE69:
	.long	LASFDE69-EH_frame1
	.quad	LFB374-.
	.set L$set$143,LFE374-LFB374
	.quad L$set$143
	.byte	0x0
	.byte	0x4
	.set L$set$144,LCFI82-LFB374
	.long L$set$144
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$145,LCFI83-LCFI82
	.long L$set$145
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE69:
.globl _smpThrown_contains_namep.eh
_smpThrown_contains_namep.eh:
LSFDE71:
	.set L$set$146,LEFDE71-LASFDE71
	.long L$set$146
LASFDE71:
	.long	LASFDE71-EH_frame1
	.quad	LFB368-.
	.set L$set$147,LFE368-LFB368
	.quad L$set$147
	.byte	0x0
	.byte	0x4
	.set L$set$148,LCFI84-LFB368
	.long L$set$148
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$149,LCFI85-LCFI84
	.long L$set$149
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$150,LCFI89-LCFI85
	.long L$set$150
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE71:
.globl _obj_types_equalp.eh
_obj_types_equalp.eh:
LSFDE73:
	.set L$set$151,LEFDE73-LASFDE73
	.long L$set$151
LASFDE73:
	.long	LASFDE73-EH_frame1
	.quad	LFB102-.
	.set L$set$152,LFE102-LFB102
	.quad L$set$152
	.byte	0x0
	.byte	0x4
	.set L$set$153,LCFI90-LFB102
	.long L$set$153
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$154,LCFI91-LCFI90
	.long L$set$154
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$155,LCFI93-LCFI91
	.long L$set$155
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE73:
.globl _minihash_containsp.eh
_minihash_containsp.eh:
LSFDE75:
	.set L$set$156,LEFDE75-LASFDE75
	.long L$set$156
LASFDE75:
	.long	LASFDE75-EH_frame1
	.quad	LFB93-.
	.set L$set$157,LFE93-LFB93
	.quad L$set$157
	.byte	0x0
	.byte	0x4
	.set L$set$158,LCFI94-LFB93
	.long L$set$158
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$159,LCFI95-LCFI94
	.long L$set$159
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$160,LCFI99-LCFI95
	.long L$set$160
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE75:
.globl _minihash_get.eh
_minihash_get.eh:
LSFDE77:
	.set L$set$161,LEFDE77-LASFDE77
	.long L$set$161
LASFDE77:
	.long	LASFDE77-EH_frame1
	.quad	LFB92-.
	.set L$set$162,LFE92-LFB92
	.quad L$set$162
	.byte	0x0
	.byte	0x4
	.set L$set$163,LCFI100-LFB92
	.long L$set$163
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$164,LCFI101-LCFI100
	.long L$set$164
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$165,LCFI107-LCFI101
	.long L$set$165
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE77:
.globl _smpInteger_to_clong.eh
_smpInteger_to_clong.eh:
LSFDE79:
	.set L$set$166,LEFDE79-LASFDE79
	.long L$set$166
LASFDE79:
	.long	LASFDE79-EH_frame1
	.quad	LFB291-.
	.set L$set$167,LFE291-LFB291
	.quad L$set$167
	.byte	0x0
	.byte	0x4
	.set L$set$168,LCFI108-LFB291
	.long L$set$168
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$169,LCFI109-LCFI108
	.long L$set$169
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE79:
.globl _smpFloat_clear.eh
_smpFloat_clear.eh:
LSFDE81:
	.set L$set$170,LEFDE81-LASFDE81
	.long L$set$170
LASFDE81:
	.long	LASFDE81-EH_frame1
	.quad	LFB205-.
	.set L$set$171,LFE205-LFB205
	.quad L$set$171
	.byte	0x0
	.byte	0x4
	.set L$set$172,LCFI110-LFB205
	.long L$set$172
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$173,LCFI111-LCFI110
	.long L$set$173
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$174,LCFI113-LCFI111
	.long L$set$174
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE81:
.globl _smpInteger_clear.eh
_smpInteger_clear.eh:
LSFDE83:
	.set L$set$175,LEFDE83-LASFDE83
	.long L$set$175
LASFDE83:
	.long	LASFDE83-EH_frame1
	.quad	LFB269-.
	.set L$set$176,LFE269-LFB269
	.quad L$set$176
	.byte	0x0
	.byte	0x4
	.set L$set$177,LCFI114-LFB269
	.long L$set$177
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$178,LCFI115-LCFI114
	.long L$set$178
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$179,LCFI117-LCFI115
	.long L$set$179
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE83:
.globl _smpFloat_cmp_cint.eh
_smpFloat_cmp_cint.eh:
LSFDE85:
	.set L$set$180,LEFDE85-LASFDE85
	.long L$set$180
LASFDE85:
	.long	LASFDE85-EH_frame1
	.quad	LFB211-.
	.set L$set$181,LFE211-LFB211
	.quad L$set$181
	.byte	0x0
	.byte	0x4
	.set L$set$182,LCFI118-LFB211
	.long L$set$182
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$183,LCFI119-LCFI118
	.long L$set$183
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE85:
.globl _fatal_error.eh
_fatal_error.eh:
LSFDE87:
	.set L$set$184,LEFDE87-LASFDE87
	.long L$set$184
LASFDE87:
	.long	LASFDE87-EH_frame1
	.quad	LFB160-.
	.set L$set$185,LFE160-LFB160
	.quad L$set$185
	.byte	0x0
	.byte	0x4
	.set L$set$186,LCFI120-LFB160
	.long L$set$186
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$187,LCFI121-LCFI120
	.long L$set$187
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$188,LCFI125-LCFI121
	.long L$set$188
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE87:
.globl _internal_error.eh
_internal_error.eh:
LSFDE89:
	.set L$set$189,LEFDE89-LASFDE89
	.long L$set$189
LASFDE89:
	.long	LASFDE89-EH_frame1
	.quad	LFB159-.
	.set L$set$190,LFE159-LFB159
	.quad L$set$190
	.byte	0x0
	.byte	0x4
	.set L$set$191,LCFI126-LFB159
	.long L$set$191
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$192,LCFI127-LCFI126
	.long L$set$192
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$193,LCFI131-LCFI127
	.long L$set$193
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE89:
.globl _smp_free.eh
_smp_free.eh:
LSFDE91:
	.set L$set$194,LEFDE91-LASFDE91
	.long L$set$194
LASFDE91:
	.long	LASFDE91-EH_frame1
	.quad	LFB157-.
	.set L$set$195,LFE157-LFB157
	.quad L$set$195
	.byte	0x0
	.byte	0x4
	.set L$set$196,LCFI132-LFB157
	.long L$set$196
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$197,LCFI133-LCFI132
	.long L$set$197
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE91:
.globl _smpArray_resize.eh
_smpArray_resize.eh:
LSFDE93:
	.set L$set$198,LEFDE93-LASFDE93
	.long L$set$198
LASFDE93:
	.long	LASFDE93-EH_frame1
	.quad	LFB173-.
	.set L$set$199,LFE173-LFB173
	.quad L$set$199
	.byte	0x0
	.byte	0x4
	.set L$set$200,LCFI134-LFB173
	.long L$set$200
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$201,LCFI135-LCFI134
	.long L$set$201
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$202,LCFI137-LCFI135
	.long L$set$202
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE93:
.globl _smp_realloc.eh
_smp_realloc.eh:
LSFDE95:
	.set L$set$203,LEFDE95-LASFDE95
	.long L$set$203
LASFDE95:
	.long	LASFDE95-EH_frame1
	.quad	LFB155-.
	.set L$set$204,LFE155-LFB155
	.quad L$set$204
	.byte	0x0
	.byte	0x4
	.set L$set$205,LCFI138-LFB155
	.long L$set$205
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$206,LCFI139-LCFI138
	.long L$set$206
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE95:
.globl _smpPair_set_cdr_now.eh
_smpPair_set_cdr_now.eh:
LSFDE97:
	.set L$set$207,LEFDE97-LASFDE97
	.long L$set$207
LASFDE97:
	.long	LASFDE97-EH_frame1
	.quad	LFB330-.
	.set L$set$208,LFE330-LFB330
	.quad L$set$208
	.byte	0x0
	.byte	0x4
	.set L$set$209,LCFI140-LFB330
	.long L$set$209
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$210,LCFI141-LCFI140
	.long L$set$210
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$211,LCFI147-LCFI141
	.long L$set$211
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE97:
.globl _smp_malloc.eh
_smp_malloc.eh:
LSFDE99:
	.set L$set$212,LEFDE99-LASFDE99
	.long L$set$212
LASFDE99:
	.long	LASFDE99-EH_frame1
	.quad	LFB154-.
	.set L$set$213,LFE154-LFB154
	.quad L$set$213
	.byte	0x0
	.byte	0x4
	.set L$set$214,LCFI148-LFB154
	.long L$set$214
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$215,LCFI149-LCFI148
	.long L$set$215
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE99:
.globl _miniarray_push.eh
_miniarray_push.eh:
LSFDE101:
	.set L$set$216,LEFDE101-LASFDE101
	.long L$set$216
LASFDE101:
	.long	LASFDE101-EH_frame1
	.quad	LFB91-.
	.set L$set$217,LFE91-LFB91
	.quad L$set$217
	.byte	0x0
	.byte	0x4
	.set L$set$218,LCFI150-LFB91
	.long L$set$218
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$219,LCFI151-LCFI150
	.long L$set$219
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$220,LCFI157-LCFI151
	.long L$set$220
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE101:
.globl _mh_print_funs.eh
_mh_print_funs.eh:
LSFDE103:
	.set L$set$221,LEFDE103-LASFDE103
	.long L$set$221
LASFDE103:
	.long	LASFDE103-EH_frame1
	.quad	LFB81-.
	.set L$set$222,LFE81-LFB81
	.quad L$set$222
	.byte	0x0
	.byte	0x4
	.set L$set$223,LCFI158-LFB81
	.long L$set$223
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$224,LCFI159-LCFI158
	.long L$set$224
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$225,LCFI162-LCFI159
	.long L$set$225
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE103:
.globl _minihash_print.eh
_minihash_print.eh:
LSFDE105:
	.set L$set$226,LEFDE105-LASFDE105
	.long L$set$226
LASFDE105:
	.long	LASFDE105-EH_frame1
	.quad	LFB96-.
	.set L$set$227,LFE96-LFB96
	.quad L$set$227
	.byte	0x0
	.byte	0x4
	.set L$set$228,LCFI163-LFB96
	.long L$set$228
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$229,LCFI164-LCFI163
	.long L$set$229
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$230,LCFI170-LCFI164
	.long L$set$230
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE105:
.globl _smpString_equalp_cstr.eh
_smpString_equalp_cstr.eh:
LSFDE107:
	.set L$set$231,LEFDE107-LASFDE107
	.long L$set$231
LASFDE107:
	.long	LASFDE107-EH_frame1
	.quad	LFB351-.
	.set L$set$232,LFE351-LFB351
	.quad L$set$232
	.byte	0x0
	.byte	0x4
	.set L$set$233,LCFI171-LFB351
	.long L$set$233
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$234,LCFI172-LCFI171
	.long L$set$234
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE107:
.globl _smpString_equalp.eh
_smpString_equalp.eh:
LSFDE109:
	.set L$set$235,LEFDE109-LASFDE109
	.long L$set$235
LASFDE109:
	.long	LASFDE109-EH_frame1
	.quad	LFB350-.
	.set L$set$236,LFE350-LFB350
	.quad L$set$236
	.byte	0x0
	.byte	0x4
	.set L$set$237,LCFI173-LFB350
	.long L$set$237
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$238,LCFI174-LCFI173
	.long L$set$238
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$239,LCFI178-LCFI174
	.long L$set$239
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE109:
.globl _smpType_equalp.eh
_smpType_equalp.eh:
LSFDE111:
	.set L$set$240,LEFDE111-LASFDE111
	.long L$set$240
LASFDE111:
	.long	LASFDE111-EH_frame1
	.quad	LFB381-.
	.set L$set$241,LFE381-LFB381
	.quad L$set$241
	.byte	0x0
	.byte	0x4
	.set L$set$242,LCFI179-LFB381
	.long L$set$242
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$243,LCFI180-LCFI179
	.long L$set$243
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$244,LCFI184-LCFI180
	.long L$set$244
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE111:
.globl _smpNil_equalp.eh
_smpNil_equalp.eh:
LSFDE113:
	.set L$set$245,LEFDE113-LASFDE113
	.long L$set$245
LASFDE113:
	.long	LASFDE113-EH_frame1
	.quad	LFB319-.
	.set L$set$246,LFE319-LFB319
	.quad L$set$246
	.byte	0x0
	.byte	0x4
	.set L$set$247,LCFI185-LFB319
	.long L$set$247
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$248,LCFI186-LCFI185
	.long L$set$248
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE113:
.globl _smpObject_truep.eh
_smpObject_truep.eh:
LSFDE115:
	.set L$set$249,LEFDE115-LASFDE115
	.long L$set$249
LASFDE115:
	.long	LASFDE115-EH_frame1
	.quad	LFB178-.
	.set L$set$250,LFE178-LFB178
	.quad L$set$250
	.byte	0x0
	.byte	0x4
	.set L$set$251,LCFI187-LFB178
	.long L$set$251
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$252,LCFI188-LCFI187
	.long L$set$252
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE115:
.globl _smp_realloc_size.eh
_smp_realloc_size.eh:
LSFDE117:
	.set L$set$253,LEFDE117-LASFDE117
	.long L$set$253
LASFDE117:
	.long	LASFDE117-EH_frame1
	.quad	LFB156-.
	.set L$set$254,LFE156-LFB156
	.quad L$set$254
	.byte	0x0
	.byte	0x4
	.set L$set$255,LCFI189-LFB156
	.long L$set$255
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$256,LCFI190-LCFI189
	.long L$set$256
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE117:
.globl _smpObject_types_equalp.eh
_smpObject_types_equalp.eh:
LSFDE119:
	.set L$set$257,LEFDE119-LASFDE119
	.long L$set$257
LASFDE119:
	.long	LASFDE119-EH_frame1
	.quad	LFB123-.
	.set L$set$258,LFE123-LFB123
	.quad L$set$258
	.byte	0x0
	.byte	0x4
	.set L$set$259,LCFI191-LFB123
	.long L$set$259
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$260,LCFI192-LCFI191
	.long L$set$260
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$261,LCFI194-LCFI192
	.long L$set$261
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE119:
.globl _smpArray_add_now.eh
_smpArray_add_now.eh:
LSFDE121:
	.set L$set$262,LEFDE121-LASFDE121
	.long L$set$262
LASFDE121:
	.long	LASFDE121-EH_frame1
	.quad	LFB164-.
	.set L$set$263,LFE164-LFB164
	.quad L$set$263
	.byte	0x0
	.byte	0x4
	.set L$set$264,LCFI195-LFB164
	.long L$set$264
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$265,LCFI196-LCFI195
	.long L$set$265
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$266,LCFI201-LCFI196
	.long L$set$266
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE121:
.globl _smpPair_clear.eh
_smpPair_clear.eh:
LSFDE123:
	.set L$set$267,LEFDE123-LASFDE123
	.long L$set$267
LASFDE123:
	.long	LASFDE123-EH_frame1
	.quad	LFB326-.
	.set L$set$268,LFE326-LFB326
	.quad L$set$268
	.byte	0x0
	.byte	0x4
	.set L$set$269,LCFI202-LFB326
	.long L$set$269
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$270,LCFI203-LCFI202
	.long L$set$270
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$271,LCFI205-LCFI203
	.long L$set$271
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE123:
.globl _smpHash_core_clear.eh
_smpHash_core_clear.eh:
LSFDE125:
	.set L$set$272,LEFDE125-LASFDE125
	.long L$set$272
LASFDE125:
	.long	LASFDE125-EH_frame1
	.quad	LFB253-.
	.set L$set$273,LFE253-LFB253
	.quad L$set$273
	.byte	0x0
	.byte	0x4
	.set L$set$274,LCFI206-LFB253
	.long L$set$274
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$275,LCFI207-LCFI206
	.long L$set$275
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE125:
.globl _smpFunction_clear.eh
_smpFunction_clear.eh:
LSFDE127:
	.set L$set$276,LEFDE127-LASFDE127
	.long L$set$276
LASFDE127:
	.long	LASFDE127-EH_frame1
	.quad	LFB223-.
	.set L$set$277,LFE223-LFB223
	.quad L$set$277
	.byte	0x0
	.byte	0x4
	.set L$set$278,LCFI208-LFB223
	.long L$set$278
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$279,LCFI209-LCFI208
	.long L$set$279
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$280,LCFI215-LCFI209
	.long L$set$280
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE127:
.globl _smpTypeError_clear.eh
_smpTypeError_clear.eh:
LSFDE129:
	.set L$set$281,LEFDE129-LASFDE129
	.long L$set$281
LASFDE129:
	.long	LASFDE129-EH_frame1
	.quad	LFB194-.
	.set L$set$282,LFE194-LFB194
	.quad L$set$282
	.byte	0x0
	.byte	0x4
	.set L$set$283,LCFI216-LFB194
	.long L$set$283
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$284,LCFI217-LCFI216
	.long L$set$284
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$285,LCFI219-LCFI217
	.long L$set$285
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE129:
.globl _smpException_clear.eh
_smpException_clear.eh:
LSFDE131:
	.set L$set$286,LEFDE131-LASFDE131
	.long L$set$286
LASFDE131:
	.long	LASFDE131-EH_frame1
	.quad	LFB188-.
	.set L$set$287,LFE188-LFB188
	.quad L$set$287
	.byte	0x0
	.byte	0x4
	.set L$set$288,LCFI220-LFB188
	.long L$set$288
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$289,LCFI221-LCFI220
	.long L$set$289
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$290,LCFI223-LCFI221
	.long L$set$290
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE131:
.globl _smpArray_clear.eh
_smpArray_clear.eh:
LSFDE133:
	.set L$set$291,LEFDE133-LASFDE133
	.long L$set$291
LASFDE133:
	.long	LASFDE133-EH_frame1
	.quad	LFB165-.
	.set L$set$292,LFE165-LFB165
	.quad L$set$292
	.byte	0x0
	.byte	0x4
	.set L$set$293,LCFI224-LFB165
	.long L$set$293
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$294,LCFI225-LCFI224
	.long L$set$294
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$295,LCFI227-LCFI225
	.long L$set$295
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE133:
.globl _smp_free_size.eh
_smp_free_size.eh:
LSFDE135:
	.set L$set$296,LEFDE135-LASFDE135
	.long L$set$296
LASFDE135:
	.long	LASFDE135-EH_frame1
	.quad	LFB158-.
	.set L$set$297,LFE158-LFB158
	.quad L$set$297
	.byte	0x0
	.byte	0x4
	.set L$set$298,LCFI228-LFB158
	.long L$set$298
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$299,LCFI229-LCFI228
	.long L$set$299
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE135:
.globl _minihash_clear.eh
_minihash_clear.eh:
LSFDE137:
	.set L$set$300,LEFDE137-LASFDE137
	.long L$set$300
LASFDE137:
	.long	LASFDE137-EH_frame1
	.quad	LFB87-.
	.set L$set$301,LFE87-LFB87
	.quad L$set$301
	.byte	0x0
	.byte	0x4
	.set L$set$302,LCFI230-LFB87
	.long L$set$302
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$303,LCFI231-LCFI230
	.long L$set$303
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$304,LCFI237-LCFI231
	.long L$set$304
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE137:
.globl _scope_clear.eh
_scope_clear.eh:
LSFDE139:
	.set L$set$305,LEFDE139-LASFDE139
	.long L$set$305
LASFDE139:
	.long	LASFDE139-EH_frame1
	.quad	LFB133-.
	.set L$set$306,LFE133-LFB133
	.quad L$set$306
	.byte	0x0
	.byte	0x4
	.set L$set$307,LCFI238-LFB133
	.long L$set$307
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$308,LCFI239-LCFI238
	.long L$set$308
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$309,LCFI241-LCFI239
	.long L$set$309
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE139:
.globl _scope_pop.eh
_scope_pop.eh:
LSFDE141:
	.set L$set$310,LEFDE141-LASFDE141
	.long L$set$310
LASFDE141:
	.long	LASFDE141-EH_frame1
	.quad	LFB129-.
	.set L$set$311,LFE129-LFB129
	.quad L$set$311
	.byte	0x0
	.byte	0x4
	.set L$set$312,LCFI242-LFB129
	.long L$set$312
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$313,LCFI243-LCFI242
	.long L$set$313
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE141:
.globl _smpString_clear.eh
_smpString_clear.eh:
LSFDE143:
	.set L$set$314,LEFDE143-LASFDE143
	.long L$set$314
LASFDE143:
	.long	LASFDE143-EH_frame1
	.quad	LFB349-.
	.set L$set$315,LFE349-LFB349
	.quad L$set$315
	.byte	0x0
	.byte	0x4
	.set L$set$316,LCFI244-LFB349
	.long L$set$316
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$317,LCFI245-LCFI244
	.long L$set$317
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$318,LCFI248-LCFI245
	.long L$set$318
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE143:
.globl _smpregmatch_clear.eh
_smpregmatch_clear.eh:
LSFDE145:
	.set L$set$319,LEFDE145-LASFDE145
	.long L$set$319
LASFDE145:
	.long	LASFDE145-EH_frame1
	.quad	LFB334-.
	.set L$set$320,LFE334-LFB334
	.quad L$set$320
	.byte	0x0
	.byte	0x4
	.set L$set$321,LCFI249-LFB334
	.long L$set$321
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$322,LCFI250-LCFI249
	.long L$set$322
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$323,LCFI252-LCFI250
	.long L$set$323
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE145:
.globl _smpType_clear.eh
_smpType_clear.eh:
LSFDE147:
	.set L$set$324,LEFDE147-LASFDE147
	.long L$set$324
LASFDE147:
	.long	LASFDE147-EH_frame1
	.quad	LFB377-.
	.set L$set$325,LFE377-LFB377
	.quad L$set$325
	.byte	0x0
	.byte	0x4
	.set L$set$326,LCFI253-LFB377
	.long L$set$326
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$327,LCFI254-LCFI253
	.long L$set$327
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$328,LCFI260-LCFI254
	.long L$set$328
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE147:
.globl _smpHash_clear.eh
_smpHash_clear.eh:
LSFDE149:
	.set L$set$329,LEFDE149-LASFDE149
	.long L$set$329
LASFDE149:
	.long	LASFDE149-EH_frame1
	.quad	LFB252-.
	.set L$set$330,LFE252-LFB252
	.quad L$set$330
	.byte	0x0
	.byte	0x4
	.set L$set$331,LCFI261-LFB252
	.long L$set$331
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$332,LCFI262-LCFI261
	.long L$set$332
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$333,LCFI264-LCFI262
	.long L$set$333
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE149:
.globl _minihash_init_capacity.eh
_minihash_init_capacity.eh:
LSFDE151:
	.set L$set$334,LEFDE151-LASFDE151
	.long L$set$334
LASFDE151:
	.long	LASFDE151-EH_frame1
	.quad	LFB86-.
	.set L$set$335,LFE86-LFB86
	.quad L$set$335
	.byte	0x0
	.byte	0x4
	.set L$set$336,LCFI265-LFB86
	.long L$set$336
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$337,LCFI266-LCFI265
	.long L$set$337
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$338,LCFI271-LCFI266
	.long L$set$338
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE151:
.globl _minihash_init.eh
_minihash_init.eh:
LSFDE153:
	.set L$set$339,LEFDE153-LASFDE153
	.long L$set$339
LASFDE153:
	.long	LASFDE153-EH_frame1
	.quad	LFB85-.
	.set L$set$340,LFE85-LFB85
	.quad L$set$340
	.byte	0x0
	.byte	0x4
	.set L$set$341,LCFI272-LFB85
	.long L$set$341
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$342,LCFI273-LCFI272
	.long L$set$342
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$343,LCFI275-LCFI273
	.long L$set$343
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE153:
.globl _smpHash_core_init_capacity.eh
_smpHash_core_init_capacity.eh:
LSFDE155:
	.set L$set$344,LEFDE155-LASFDE155
	.long L$set$344
LASFDE155:
	.long	LASFDE155-EH_frame1
	.quad	LFB260-.
	.set L$set$345,LFE260-LFB260
	.quad L$set$345
	.byte	0x0
	.byte	0x4
	.set L$set$346,LCFI276-LFB260
	.long L$set$346
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$347,LCFI277-LCFI276
	.long L$set$347
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$348,LCFI282-LCFI277
	.long L$set$348
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE155:
.globl _scope_init.eh
_scope_init.eh:
LSFDE157:
	.set L$set$349,LEFDE157-LASFDE157
	.long L$set$349
LASFDE157:
	.long	LASFDE157-EH_frame1
	.quad	LFB127-.
	.set L$set$350,LFE127-LFB127
	.quad L$set$350
	.byte	0x0
	.byte	0x4
	.set L$set$351,LCFI283-LFB127
	.long L$set$351
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$352,LCFI284-LCFI283
	.long L$set$352
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$353,LCFI286-LCFI284
	.long L$set$353
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE157:
.globl _minihash_add.eh
_minihash_add.eh:
LSFDE159:
	.set L$set$354,LEFDE159-LASFDE159
	.long L$set$354
LASFDE159:
	.long	LASFDE159-EH_frame1
	.quad	LFB90-.
	.set L$set$355,LFE90-LFB90
	.quad L$set$355
	.byte	0x0
	.byte	0x4
	.set L$set$356,LCFI287-LFB90
	.long L$set$356
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$357,LCFI288-LCFI287
	.long L$set$357
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$358,LCFI294-LCFI288
	.long L$set$358
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE159:
.globl _minihash_copy.eh
_minihash_copy.eh:
LSFDE161:
	.set L$set$359,LEFDE161-LASFDE161
	.long L$set$359
LASFDE161:
	.long	LASFDE161-EH_frame1
	.quad	LFB94-.
	.set L$set$360,LFE94-LFB94
	.quad L$set$360
	.byte	0x0
	.byte	0x4
	.set L$set$361,LCFI295-LFB94
	.long L$set$361
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$362,LCFI296-LCFI295
	.long L$set$362
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$363,LCFI302-LCFI296
	.long L$set$363
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE161:
.globl _scope_push.eh
_scope_push.eh:
LSFDE163:
	.set L$set$364,LEFDE163-LASFDE163
	.long L$set$364
LASFDE163:
	.long	LASFDE163-EH_frame1
	.quad	LFB128-.
	.set L$set$365,LFE128-LFB128
	.quad L$set$365
	.byte	0x0
	.byte	0x4
	.set L$set$366,LCFI303-LFB128
	.long L$set$366
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$367,LCFI304-LCFI303
	.long L$set$367
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$368,LCFI310-LCFI304
	.long L$set$368
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE163:
.globl _smpObject_instancep_c.eh
_smpObject_instancep_c.eh:
LSFDE165:
	.set L$set$369,LEFDE165-LASFDE165
	.long L$set$369
LASFDE165:
	.long	LASFDE165-EH_frame1
	.quad	LFB118-.
	.set L$set$370,LFE118-LFB118
	.quad L$set$370
	.byte	0x0
	.byte	0x4
	.set L$set$371,LCFI311-LFB118
	.long L$set$371
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$372,LCFI312-LCFI311
	.long L$set$372
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$373,LCFI318-LCFI312
	.long L$set$373
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE165:
.globl _smpObject_instancep_cint.eh
_smpObject_instancep_cint.eh:
LSFDE167:
	.set L$set$374,LEFDE167-LASFDE167
	.long L$set$374
LASFDE167:
	.long	LASFDE167-EH_frame1
	.quad	LFB117-.
	.set L$set$375,LFE117-LFB117
	.quad L$set$375
	.byte	0x0
	.byte	0x4
	.set L$set$376,LCFI319-LFB117
	.long L$set$376
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$377,LCFI320-LCFI319
	.long L$set$377
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$378,LCFI325-LCFI320
	.long L$set$378
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE167:
.globl _smpType_relatedp.eh
_smpType_relatedp.eh:
LSFDE169:
	.set L$set$379,LEFDE169-LASFDE169
	.long L$set$379
LASFDE169:
	.long	LASFDE169-EH_frame1
	.quad	LFB383-.
	.set L$set$380,LFE383-LFB383
	.quad L$set$380
	.byte	0x0
	.byte	0x4
	.set L$set$381,LCFI326-LFB383
	.long L$set$381
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$382,LCFI327-LCFI326
	.long L$set$382
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$383,LCFI333-LCFI327
	.long L$set$383
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE169:
.globl _obj_init_str.eh
_obj_init_str.eh:
LSFDE171:
	.set L$set$384,LEFDE171-LASFDE171
	.long L$set$384
LASFDE171:
	.long	LASFDE171-EH_frame1
	.quad	LFB346-.
	.set L$set$385,LFE346-LFB346
	.quad L$set$385
	.byte	0x0
	.byte	0x4
	.set L$set$386,LCFI334-LFB346
	.long L$set$386
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$387,LCFI335-LCFI334
	.long L$set$387
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$388,LCFI340-LCFI335
	.long L$set$388
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE171:
.globl _smpInteger_cmp_cint.eh
_smpInteger_cmp_cint.eh:
LSFDE173:
	.set L$set$389,LEFDE173-LASFDE173
	.long L$set$389
LASFDE173:
	.long	LASFDE173-EH_frame1
	.quad	LFB282-.
	.set L$set$390,LFE282-LFB282
	.quad L$set$390
	.byte	0x0
	.byte	0x4
	.set L$set$391,LCFI341-LFB282
	.long L$set$391
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$392,LCFI342-LCFI341
	.long L$set$392
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE173:
.globl _gc_mark.eh
_gc_mark.eh:
LSFDE175:
	.set L$set$393,LEFDE175-LASFDE175
	.long L$set$393
LASFDE175:
	.long	LASFDE175-EH_frame1
	.quad	LFB82-.
	.set L$set$394,LFE82-LFB82
	.quad L$set$394
	.byte	0x0
	.byte	0x4
	.set L$set$395,LCFI343-LFB82
	.long L$set$395
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$396,LCFI344-LCFI343
	.long L$set$396
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$397,LCFI350-LCFI344
	.long L$set$397
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE175:
.globl _smpType_gc_mark.eh
_smpType_gc_mark.eh:
LSFDE177:
	.set L$set$398,LEFDE177-LASFDE177
	.long L$set$398
LASFDE177:
	.long	LASFDE177-EH_frame1
	.quad	LFB382-.
	.set L$set$399,LFE382-LFB382
	.quad L$set$399
	.byte	0x0
	.byte	0x4
	.set L$set$400,LCFI351-LFB382
	.long L$set$400
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$401,LCFI352-LCFI351
	.long L$set$401
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$402,LCFI358-LCFI352
	.long L$set$402
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE177:
.globl _smpObject_instancep_cstr.eh
_smpObject_instancep_cstr.eh:
LSFDE179:
	.set L$set$403,LEFDE179-LASFDE179
	.long L$set$403
LASFDE179:
	.long	LASFDE179-EH_frame1
	.quad	LFB119-.
	.set L$set$404,LFE119-LFB119
	.quad L$set$404
	.byte	0x0
	.byte	0x4
	.set L$set$405,LCFI359-LFB119
	.long L$set$405
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$406,LCFI360-LCFI359
	.long L$set$406
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$407,LCFI366-LCFI360
	.long L$set$407
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE179:
.globl _smp_getclass.eh
_smp_getclass.eh:
LSFDE181:
	.set L$set$408,LEFDE181-LASFDE181
	.long L$set$408
LASFDE181:
	.long	LASFDE181-EH_frame1
	.quad	LFB75-.
	.set L$set$409,LFE75-LFB75
	.quad L$set$409
	.byte	0x0
	.byte	0x4
	.set L$set$410,LCFI367-LFB75
	.long L$set$410
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$411,LCFI368-LCFI367
	.long L$set$411
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$412,LCFI374-LCFI368
	.long L$set$412
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE181:
.globl _smpObject_varcall.eh
_smpObject_varcall.eh:
LSFDE183:
	.set L$set$413,LEFDE183-LASFDE183
	.long L$set$413
LASFDE183:
	.long	LASFDE183-EH_frame1
	.quad	LFB124-.
	.set L$set$414,LFE124-LFB124
	.quad L$set$414
	.byte	0x0
	.byte	0x4
	.set L$set$415,LCFI375-LFB124
	.long L$set$415
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$416,LCFI376-LCFI375
	.long L$set$416
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$417,LCFI382-LCFI376
	.long L$set$417
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE183:
.globl _smpObject_get_fun_rec.eh
_smpObject_get_fun_rec.eh:
LSFDE185:
	.set L$set$418,LEFDE185-LASFDE185
	.long L$set$418
LASFDE185:
	.long	LASFDE185-EH_frame1
	.quad	LFB114-.
	.set L$set$419,LFE114-LFB114
	.quad L$set$419
	.byte	0x0
	.byte	0x4
	.set L$set$420,LCFI383-LFB114
	.long L$set$420
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$421,LCFI384-LCFI383
	.long L$set$421
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$422,LCFI390-LCFI384
	.long L$set$422
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE185:
.globl _scope_self.eh
_scope_self.eh:
LSFDE187:
	.set L$set$423,LEFDE187-LASFDE187
	.long L$set$423
LASFDE187:
	.long	LASFDE187-EH_frame1
	.quad	LFB132-.
	.set L$set$424,LFE132-LFB132
	.quad L$set$424
	.byte	0x0
	.byte	0x4
	.set L$set$425,LCFI391-LFB132
	.long L$set$425
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$426,LCFI392-LCFI391
	.long L$set$426
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$427,LCFI396-LCFI392
	.long L$set$427
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE187:
.globl _scope_get.eh
_scope_get.eh:
LSFDE189:
	.set L$set$428,LEFDE189-LASFDE189
	.long L$set$428
LASFDE189:
	.long	LASFDE189-EH_frame1
	.quad	LFB131-.
	.set L$set$429,LFE131-LFB131
	.quad L$set$429
	.byte	0x0
	.byte	0x4
	.set L$set$430,LCFI397-LFB131
	.long L$set$430
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$431,LCFI398-LCFI397
	.long L$set$431
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$432,LCFI404-LCFI398
	.long L$set$432
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE189:
.globl _obj_init.eh
_obj_init.eh:
LSFDE191:
	.set L$set$433,LEFDE191-LASFDE191
	.long L$set$433
LASFDE191:
	.long	LASFDE191-EH_frame1
	.quad	LFB97-.
	.set L$set$434,LFE97-LFB97
	.quad L$set$434
	.byte	0x0
	.byte	0x4
	.set L$set$435,LCFI405-LFB97
	.long L$set$435
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$436,LCFI406-LCFI405
	.long L$set$436
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$437,LCFI412-LCFI406
	.long L$set$437
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE191:
.globl _smpThrown_init.eh
_smpThrown_init.eh:
LSFDE193:
	.set L$set$438,LEFDE193-LASFDE193
	.long L$set$438
LASFDE193:
	.long	LASFDE193-EH_frame1
	.quad	LFB371-.
	.set L$set$439,LFE371-LFB371
	.quad L$set$439
	.byte	0x0
	.byte	0x4
	.set L$set$440,LCFI413-LFB371
	.long L$set$440
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$441,LCFI414-LCFI413
	.long L$set$441
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$442,LCFI420-LCFI414
	.long L$set$442
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE193:
.globl _smpThrown_add_exception_now.eh
_smpThrown_add_exception_now.eh:
LSFDE195:
	.set L$set$443,LEFDE195-LASFDE195
	.long L$set$443
LASFDE195:
	.long	LASFDE195-EH_frame1
	.quad	LFB367-.
	.set L$set$444,LFE367-LFB367
	.quad L$set$444
	.byte	0x0
	.byte	0x4
	.set L$set$445,LCFI421-LFB367
	.long L$set$445
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$446,LCFI422-LCFI421
	.long L$set$446
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$447,LCFI428-LCFI422
	.long L$set$447
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE195:
.globl _smpGlobal_throw.eh
_smpGlobal_throw.eh:
LSFDE197:
	.set L$set$448,LEFDE197-LASFDE197
	.long L$set$448
LASFDE197:
	.long	LASFDE197-EH_frame1
	.quad	LFB247-.
	.set L$set$449,LFE247-LFB247
	.quad L$set$449
	.byte	0x0
	.byte	0x4
	.set L$set$450,LCFI429-LFB247
	.long L$set$450
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$451,LCFI430-LCFI429
	.long L$set$451
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$452,LCFI432-LCFI430
	.long L$set$452
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE197:
.globl _smpGlobal_throw_arg.eh
_smpGlobal_throw_arg.eh:
LSFDE199:
	.set L$set$453,LEFDE199-LASFDE199
	.long L$set$453
LASFDE199:
	.long	LASFDE199-EH_frame1
	.quad	LFB248-.
	.set L$set$454,LFE248-LFB248
	.quad L$set$454
	.byte	0x0
	.byte	0x4
	.set L$set$455,LCFI433-LFB248
	.long L$set$455
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$456,LCFI434-LCFI433
	.long L$set$456
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$457,LCFI436-LCFI434
	.long L$set$457
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE199:
.globl _smpString_reverse.eh
_smpString_reverse.eh:
LSFDE201:
	.set L$set$458,LEFDE201-LASFDE201
	.long L$set$458
LASFDE201:
	.long	LASFDE201-EH_frame1
	.quad	LFB356-.
	.set L$set$459,LFE356-LFB356
	.quad L$set$459
	.byte	0x0
	.byte	0x4
	.set L$set$460,LCFI437-LFB356
	.long L$set$460
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$461,LCFI438-LCFI437
	.long L$set$461
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$462,LCFI442-LCFI438
	.long L$set$462
	.byte	0x83
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.align 3
LEFDE201:
.globl _smpString_init_ref.eh
_smpString_init_ref.eh:
LSFDE203:
	.set L$set$463,LEFDE203-LASFDE203
	.long L$set$463
LASFDE203:
	.long	LASFDE203-EH_frame1
	.quad	LFB354-.
	.set L$set$464,LFE354-LFB354
	.quad L$set$464
	.byte	0x0
	.byte	0x4
	.set L$set$465,LCFI443-LFB354
	.long L$set$465
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$466,LCFI444-LCFI443
	.long L$set$466
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$467,LCFI448-LCFI444
	.long L$set$467
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE203:
.globl _smpString_init_length.eh
_smpString_init_length.eh:
LSFDE205:
	.set L$set$468,LEFDE205-LASFDE205
	.long L$set$468
LASFDE205:
	.long	LASFDE205-EH_frame1
	.quad	LFB353-.
	.set L$set$469,LFE353-LFB353
	.quad L$set$469
	.byte	0x0
	.byte	0x4
	.set L$set$470,LCFI449-LFB353
	.long L$set$470
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$471,LCFI450-LCFI449
	.long L$set$471
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$472,LCFI456-LCFI450
	.long L$set$472
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE205:
.globl _smpString_init.eh
_smpString_init.eh:
LSFDE207:
	.set L$set$473,LEFDE207-LASFDE207
	.long L$set$473
LASFDE207:
	.long	LASFDE207-EH_frame1
	.quad	LFB352-.
	.set L$set$474,LFE352-LFB352
	.quad L$set$474
	.byte	0x0
	.byte	0x4
	.set L$set$475,LCFI457-LFB352
	.long L$set$475
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$476,LCFI458-LCFI457
	.long L$set$476
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$477,LCFI462-LCFI458
	.long L$set$477
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE207:
.globl _smpregmatch_init.eh
_smpregmatch_init.eh:
LSFDE209:
	.set L$set$478,LEFDE209-LASFDE209
	.long L$set$478
LASFDE209:
	.long	LASFDE209-EH_frame1
	.quad	LFB340-.
	.set L$set$479,LFE340-LFB340
	.quad L$set$479
	.byte	0x0
	.byte	0x4
	.set L$set$480,LCFI463-LFB340
	.long L$set$480
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$481,LCFI464-LCFI463
	.long L$set$481
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$482,LCFI470-LCFI464
	.long L$set$482
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE209:
.globl _smpList_init.eh
_smpList_init.eh:
LSFDE211:
	.set L$set$483,LEFDE211-LASFDE211
	.long L$set$483
LASFDE211:
	.long	LASFDE211-EH_frame1
	.quad	LFB301-.
	.set L$set$484,LFE301-LFB301
	.quad L$set$484
	.byte	0x0
	.byte	0x4
	.set L$set$485,LCFI471-LFB301
	.long L$set$485
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$486,LCFI472-LCFI471
	.long L$set$486
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$487,LCFI478-LCFI472
	.long L$set$487
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE211:
.globl _smpInteger_init_mpz_ref.eh
_smpInteger_init_mpz_ref.eh:
LSFDE213:
	.set L$set$488,LEFDE213-LASFDE213
	.long L$set$488
LASFDE213:
	.long	LASFDE213-EH_frame1
	.quad	LFB266-.
	.set L$set$489,LFE266-LFB266
	.quad L$set$489
	.byte	0x0
	.byte	0x4
	.set L$set$490,LCFI479-LFB266
	.long L$set$490
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$491,LCFI480-LCFI479
	.long L$set$491
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$492,LCFI483-LCFI480
	.long L$set$492
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE213:
.globl _smpInteger_init_mpz.eh
_smpInteger_init_mpz.eh:
LSFDE215:
	.set L$set$493,LEFDE215-LASFDE215
	.long L$set$493
LASFDE215:
	.long	LASFDE215-EH_frame1
	.quad	LFB265-.
	.set L$set$494,LFE265-LFB265
	.quad L$set$494
	.byte	0x0
	.byte	0x4
	.set L$set$495,LCFI484-LFB265
	.long L$set$495
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$496,LCFI485-LCFI484
	.long L$set$496
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$497,LCFI489-LCFI485
	.long L$set$497
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE215:
.globl _smpFloat_init_mpfr_ref.eh
_smpFloat_init_mpfr_ref.eh:
LSFDE217:
	.set L$set$498,LEFDE217-LASFDE217
	.long L$set$498
LASFDE217:
	.long	LASFDE217-EH_frame1
	.quad	LFB202-.
	.set L$set$499,LFE202-LFB202
	.quad L$set$499
	.byte	0x0
	.byte	0x4
	.set L$set$500,LCFI490-LFB202
	.long L$set$500
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$501,LCFI491-LCFI490
	.long L$set$501
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$502,LCFI494-LCFI491
	.long L$set$502
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE217:
.globl _smpFloat_init_mpfr.eh
_smpFloat_init_mpfr.eh:
LSFDE219:
	.set L$set$503,LEFDE219-LASFDE219
	.long L$set$503
LASFDE219:
	.long	LASFDE219-EH_frame1
	.quad	LFB201-.
	.set L$set$504,LFE201-LFB201
	.quad L$set$504
	.byte	0x0
	.byte	0x4
	.set L$set$505,LCFI495-LFB201
	.long L$set$505
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$506,LCFI496-LCFI495
	.long L$set$506
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$507,LCFI500-LCFI496
	.long L$set$507
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE219:
.globl _smpException_init.eh
_smpException_init.eh:
LSFDE221:
	.set L$set$508,LEFDE221-LASFDE221
	.long L$set$508
LASFDE221:
	.long	LASFDE221-EH_frame1
	.quad	LFB190-.
	.set L$set$509,LFE190-LFB190
	.quad L$set$509
	.byte	0x0
	.byte	0x4
	.set L$set$510,LCFI501-LFB190
	.long L$set$510
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$511,LCFI502-LCFI501
	.long L$set$511
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$512,LCFI508-LCFI502
	.long L$set$512
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE221:
.globl _objid_init.eh
_objid_init.eh:
LSFDE223:
	.set L$set$513,LEFDE223-LASFDE223
	.long L$set$513
LASFDE223:
	.long	LASFDE223-EH_frame1
	.quad	LFB100-.
	.set L$set$514,LFE100-LFB100
	.quad L$set$514
	.byte	0x0
	.byte	0x4
	.set L$set$515,LCFI509-LFB100
	.long L$set$515
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$516,LCFI510-LCFI509
	.long L$set$516
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$517,LCFI513-LCFI510
	.long L$set$517
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE223:
.globl _smpException_init_fmt.eh
_smpException_init_fmt.eh:
LSFDE225:
	.set L$set$518,LEFDE225-LASFDE225
	.long L$set$518
LASFDE225:
	.long	LASFDE225-EH_frame1
	.quad	LFB191-.
	.set L$set$519,LFE191-LFB191
	.quad L$set$519
	.byte	0x0
	.byte	0x4
	.set L$set$520,LCFI514-LFB191
	.long L$set$520
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$521,LCFI515-LCFI514
	.long L$set$521
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$522,LCFI521-LCFI515
	.long L$set$522
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE225:
.globl _smpObject_eq.eh
_smpObject_eq.eh:
LSFDE227:
	.set L$set$523,LEFDE227-LASFDE227
	.long L$set$523
LASFDE227:
	.long	LASFDE227-EH_frame1
	.quad	LFB106-.
	.set L$set$524,LFE106-LFB106
	.quad L$set$524
	.byte	0x0
	.byte	0x4
	.set L$set$525,LCFI522-LFB106
	.long L$set$525
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$526,LCFI523-LCFI522
	.long L$set$526
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$527,LCFI526-LCFI523
	.long L$set$527
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE227:
.globl _smpHash_init.eh
_smpHash_init.eh:
LSFDE229:
	.set L$set$528,LEFDE229-LASFDE229
	.long L$set$528
LASFDE229:
	.long	LASFDE229-EH_frame1
	.quad	LFB258-.
	.set L$set$529,LFE258-LFB258
	.quad L$set$529
	.byte	0x0
	.byte	0x4
	.set L$set$530,LCFI527-LFB258
	.long L$set$530
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$531,LCFI528-LCFI527
	.long L$set$531
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$532,LCFI531-LCFI528
	.long L$set$532
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE229:
.globl _smpGlobal_array.eh
_smpGlobal_array.eh:
LSFDE231:
	.set L$set$533,LEFDE231-LASFDE231
	.long L$set$533
LASFDE231:
	.long	LASFDE231-EH_frame1
	.quad	LFB229-.
	.set L$set$534,LFE229-LFB229
	.quad L$set$534
	.byte	0x0
	.byte	0x4
	.set L$set$535,LCFI532-LFB229
	.long L$set$535
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$536,LCFI533-LCFI532
	.long L$set$536
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$537,LCFI539-LCFI533
	.long L$set$537
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE231:
.globl _smpInteger_init_str.eh
_smpInteger_init_str.eh:
LSFDE233:
	.set L$set$538,LEFDE233-LASFDE233
	.long L$set$538
LASFDE233:
	.long	LASFDE233-EH_frame1
	.quad	LFB268-.
	.set L$set$539,LFE268-LFB268
	.quad L$set$539
	.byte	0x0
	.byte	0x4
	.set L$set$540,LCFI540-LFB268
	.long L$set$540
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$541,LCFI541-LCFI540
	.long L$set$541
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$542,LCFI545-LCFI541
	.long L$set$542
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE233:
.globl _smpInteger_init_clong.eh
_smpInteger_init_clong.eh:
LSFDE235:
	.set L$set$543,LEFDE235-LASFDE235
	.long L$set$543
LASFDE235:
	.long	LASFDE235-EH_frame1
	.quad	LFB267-.
	.set L$set$544,LFE267-LFB267
	.quad L$set$544
	.byte	0x0
	.byte	0x4
	.set L$set$545,LCFI546-LFB267
	.long L$set$545
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$546,LCFI547-LCFI546
	.long L$set$546
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$547,LCFI551-LCFI547
	.long L$set$547
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE235:
.globl _smpFloat_init_str.eh
_smpFloat_init_str.eh:
LSFDE237:
	.set L$set$548,LEFDE237-LASFDE237
	.long L$set$548
LASFDE237:
	.long	LASFDE237-EH_frame1
	.quad	LFB204-.
	.set L$set$549,LFE204-LFB204
	.quad L$set$549
	.byte	0x0
	.byte	0x4
	.set L$set$550,LCFI552-LFB204
	.long L$set$550
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$551,LCFI553-LCFI552
	.long L$set$551
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$552,LCFI557-LCFI553
	.long L$set$552
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE237:
.globl _smpFloat_init_cdouble.eh
_smpFloat_init_cdouble.eh:
LSFDE239:
	.set L$set$553,LEFDE239-LASFDE239
	.long L$set$553
LASFDE239:
	.long	LASFDE239-EH_frame1
	.quad	LFB203-.
	.set L$set$554,LFE203-LFB203
	.quad L$set$554
	.byte	0x0
	.byte	0x4
	.set L$set$555,LCFI558-LFB203
	.long L$set$555
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$556,LCFI559-LCFI558
	.long L$set$556
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$557,LCFI562-LCFI559
	.long L$set$557
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE239:
.globl _smpString_init_fmt.eh
_smpString_init_fmt.eh:
LSFDE241:
	.set L$set$558,LEFDE241-LASFDE241
	.long L$set$558
LASFDE241:
	.long	LASFDE241-EH_frame1
	.quad	LFB355-.
	.set L$set$559,LFE355-LFB355
	.quad L$set$559
	.byte	0x0
	.byte	0x4
	.set L$set$560,LCFI563-LFB355
	.long L$set$560
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$561,LCFI564-LCFI563
	.long L$set$561
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$562,LCFI568-LCFI564
	.long L$set$562
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE241:
.globl _smpFunction_to_s.eh
_smpFunction_to_s.eh:
LSFDE243:
	.set L$set$563,LEFDE243-LASFDE243
	.long L$set$563
LASFDE243:
	.long	LASFDE243-EH_frame1
	.quad	LFB227-.
	.set L$set$564,LFE227-LFB227
	.quad L$set$564
	.byte	0x0
	.byte	0x4
	.set L$set$565,LCFI569-LFB227
	.long L$set$565
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$566,LCFI570-LCFI569
	.long L$set$566
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$567,LCFI572-LCFI570
	.long L$set$567
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE243:
.globl _smpObject_to_s.eh
_smpObject_to_s.eh:
LSFDE245:
	.set L$set$568,LEFDE245-LASFDE245
	.long L$set$568
LASFDE245:
	.long	LASFDE245-EH_frame1
	.quad	LFB120-.
	.set L$set$569,LFE120-LFB120
	.quad L$set$569
	.byte	0x0
	.byte	0x4
	.set L$set$570,LCFI573-LFB120
	.long L$set$570
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$571,LCFI574-LCFI573
	.long L$set$571
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$572,LCFI576-LCFI574
	.long L$set$572
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE245:
.globl _smptrue_to_s.eh
_smptrue_to_s.eh:
LSFDE247:
	.set L$set$573,LEFDE247-LASFDE247
	.long L$set$573
LASFDE247:
	.long	LASFDE247-EH_frame1
	.quad	LFB180-.
	.set L$set$574,LFE180-LFB180
	.quad L$set$574
	.byte	0x0
	.byte	0x4
	.set L$set$575,LCFI577-LFB180
	.long L$set$575
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$576,LCFI578-LCFI577
	.long L$set$576
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$577,LCFI581-LCFI578
	.long L$set$577
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE247:
.globl _smpString_write.eh
_smpString_write.eh:
LSFDE249:
	.set L$set$578,LEFDE249-LASFDE249
	.long L$set$578
LASFDE249:
	.long	LASFDE249-EH_frame1
	.quad	LFB360-.
	.set L$set$579,LFE360-LFB360
	.quad L$set$579
	.byte	0x0
	.byte	0x4
	.set L$set$580,LCFI582-LFB360
	.long L$set$580
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$581,LCFI583-LCFI582
	.long L$set$581
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$582,LCFI589-LCFI583
	.long L$set$582
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE249:
.globl _smpstrsubstring.eh
_smpstrsubstring.eh:
LSFDE251:
	.set L$set$583,LEFDE251-LASFDE251
	.long L$set$583
LASFDE251:
	.long	LASFDE251-EH_frame1
	.quad	LFB357-.
	.set L$set$584,LFE357-LFB357
	.quad L$set$584
	.byte	0x0
	.byte	0x4
	.set L$set$585,LCFI590-LFB357
	.long L$set$585
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$586,LCFI591-LCFI590
	.long L$set$586
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$587,LCFI597-LCFI591
	.long L$set$587
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE251:
.globl _smpNil_write.eh
_smpNil_write.eh:
LSFDE253:
	.set L$set$588,LEFDE253-LASFDE253
	.long L$set$588
LASFDE253:
	.long	LASFDE253-EH_frame1
	.quad	LFB321-.
	.set L$set$589,LFE321-LFB321
	.quad L$set$589
	.byte	0x0
	.byte	0x4
	.set L$set$590,LCFI598-LFB321
	.long L$set$590
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$591,LCFI599-LCFI598
	.long L$set$591
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$592,LCFI602-LCFI599
	.long L$set$592
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE253:
.globl _smpNil_to_s.eh
_smpNil_to_s.eh:
LSFDE255:
	.set L$set$593,LEFDE255-LASFDE255
	.long L$set$593
LASFDE255:
	.long	LASFDE255-EH_frame1
	.quad	LFB320-.
	.set L$set$594,LFE320-LFB320
	.quad L$set$594
	.byte	0x0
	.byte	0x4
	.set L$set$595,LCFI603-LFB320
	.long L$set$595
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$596,LCFI604-LCFI603
	.long L$set$596
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$597,LCFI607-LCFI604
	.long L$set$597
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE255:
.globl _smpObject_to_s_class.eh
_smpObject_to_s_class.eh:
LSFDE257:
	.set L$set$598,LEFDE257-LASFDE257
	.long L$set$598
LASFDE257:
	.long	LASFDE257-EH_frame1
	.quad	LFB121-.
	.set L$set$599,LFE121-LFB121
	.quad L$set$599
	.byte	0x0
	.byte	0x4
	.set L$set$600,LCFI608-LFB121
	.long L$set$600
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$601,LCFI609-LCFI608
	.long L$set$601
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$602,LCFI613-LCFI609
	.long L$set$602
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE257:
.globl _smpSymbol_write.eh
_smpSymbol_write.eh:
LSFDE259:
	.set L$set$603,LEFDE259-LASFDE259
	.long L$set$603
LASFDE259:
	.long	LASFDE259-EH_frame1
	.quad	LFB365-.
	.set L$set$604,LFE365-LFB365
	.quad L$set$604
	.byte	0x0
	.byte	0x4
	.set L$set$605,LCFI614-LFB365
	.long L$set$605
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$606,LCFI615-LCFI614
	.long L$set$606
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$607,LCFI621-LCFI615
	.long L$set$607
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE259:
.globl _smpSymbol_to_s.eh
_smpSymbol_to_s.eh:
LSFDE261:
	.set L$set$608,LEFDE261-LASFDE261
	.long L$set$608
LASFDE261:
	.long	LASFDE261-EH_frame1
	.quad	LFB364-.
	.set L$set$609,LFE364-LFB364
	.quad L$set$609
	.byte	0x0
	.byte	0x4
	.set L$set$610,LCFI622-LFB364
	.long L$set$610
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$611,LCFI623-LCFI622
	.long L$set$611
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$612,LCFI627-LCFI623
	.long L$set$612
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE261:
.globl _smpObject_hash.eh
_smpObject_hash.eh:
LSFDE263:
	.set L$set$613,LEFDE263-LASFDE263
	.long L$set$613
LASFDE263:
	.long	LASFDE263-EH_frame1
	.quad	LFB115-.
	.set L$set$614,LFE115-LFB115
	.quad L$set$614
	.byte	0x0
	.byte	0x4
	.set L$set$615,LCFI628-LFB115
	.long L$set$615
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$616,LCFI629-LCFI628
	.long L$set$616
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$617,LCFI633-LCFI629
	.long L$set$617
	.byte	0x83
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.align 3
LEFDE263:
.globl _smpArray_length.eh
_smpArray_length.eh:
LSFDE265:
	.set L$set$618,LEFDE265-LASFDE265
	.long L$set$618
LASFDE265:
	.long	LASFDE265-EH_frame1
	.quad	LFB170-.
	.set L$set$619,LFE170-LFB170
	.quad L$set$619
	.byte	0x0
	.byte	0x4
	.set L$set$620,LCFI634-LFB170
	.long L$set$620
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$621,LCFI635-LCFI634
	.long L$set$621
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$622,LCFI639-LCFI635
	.long L$set$622
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE265:
.globl _smp_unimplemented_function.eh
_smp_unimplemented_function.eh:
LSFDE267:
	.set L$set$623,LEFDE267-LASFDE267
	.long L$set$623
LASFDE267:
	.long	LASFDE267-EH_frame1
	.quad	LFB77-.
	.set L$set$624,LFE77-LFB77
	.quad L$set$624
	.byte	0x0
	.byte	0x4
	.set L$set$625,LCFI640-LFB77
	.long L$set$625
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$626,LCFI641-LCFI640
	.long L$set$626
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$627,LCFI646-LCFI641
	.long L$set$627
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE267:
.globl _smpPair_init.eh
_smpPair_init.eh:
LSFDE269:
	.set L$set$628,LEFDE269-LASFDE269
	.long L$set$628
LASFDE269:
	.long	LASFDE269-EH_frame1
	.quad	LFB328-.
	.set L$set$629,LFE328-LFB328
	.quad L$set$629
	.byte	0x0
	.byte	0x4
	.set L$set$630,LCFI647-LFB328
	.long L$set$630
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$631,LCFI648-LCFI647
	.long L$set$631
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$632,LCFI654-LCFI648
	.long L$set$632
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE269:
.globl _smpObject_cons.eh
_smpObject_cons.eh:
LSFDE271:
	.set L$set$633,LEFDE271-LASFDE271
	.long L$set$633
LASFDE271:
	.long	LASFDE271-EH_frame1
	.quad	LFB104-.
	.set L$set$634,LFE104-LFB104
	.quad L$set$634
	.byte	0x0
	.byte	0x4
	.set L$set$635,LCFI655-LFB104
	.long L$set$635
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$636,LCFI656-LCFI655
	.long L$set$636
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$637,LCFI662-LCFI656
	.long L$set$637
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE271:
.globl _smpListBuffer_add_now.eh
_smpListBuffer_add_now.eh:
LSFDE273:
	.set L$set$638,LEFDE273-LASFDE273
	.long L$set$638
LASFDE273:
	.long	LASFDE273-EH_frame1
	.quad	LFB311-.
	.set L$set$639,LFE311-LFB311
	.quad L$set$639
	.byte	0x0
	.byte	0x4
	.set L$set$640,LCFI663-LFB311
	.long L$set$640
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$641,LCFI664-LCFI663
	.long L$set$641
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$642,LCFI669-LCFI664
	.long L$set$642
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE273:
.globl _smpException_backtrace_add_now.eh
_smpException_backtrace_add_now.eh:
LSFDE275:
	.set L$set$643,LEFDE275-LASFDE275
	.long L$set$643
LASFDE275:
	.long	LASFDE275-EH_frame1
	.quad	LFB187-.
	.set L$set$644,LFE187-LFB187
	.quad L$set$644
	.byte	0x0
	.byte	0x4
	.set L$set$645,LCFI670-LFB187
	.long L$set$645
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$646,LCFI671-LCFI670
	.long L$set$646
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$647,LCFI675-LCFI671
	.long L$set$647
	.byte	0x83
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.align 3
LEFDE275:
.globl _smpObject_cons_c.eh
_smpObject_cons_c.eh:
LSFDE277:
	.set L$set$648,LEFDE277-LASFDE277
	.long L$set$648
LASFDE277:
	.long	LASFDE277-EH_frame1
	.quad	LFB105-.
	.set L$set$649,LFE105-LFB105
	.quad L$set$649
	.byte	0x0
	.byte	0x4
	.set L$set$650,LCFI676-LFB105
	.long L$set$650
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$651,LCFI677-LCFI676
	.long L$set$651
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$652,LCFI679-LCFI677
	.long L$set$652
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE277:
.globl _smpList_add_now.eh
_smpList_add_now.eh:
LSFDE279:
	.set L$set$653,LEFDE279-LASFDE279
	.long L$set$653
LASFDE279:
	.long	LASFDE279-EH_frame1
	.quad	LFB294-.
	.set L$set$654,LFE294-LFB294
	.quad L$set$654
	.byte	0x0
	.byte	0x4
	.set L$set$655,LCFI680-LFB294
	.long L$set$655
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$656,LCFI681-LCFI680
	.long L$set$656
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$657,LCFI684-LCFI681
	.long L$set$657
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE279:
.globl _smpListBuffer_init.eh
_smpListBuffer_init.eh:
LSFDE281:
	.set L$set$658,LEFDE281-LASFDE281
	.long L$set$658
LASFDE281:
	.long	LASFDE281-EH_frame1
	.quad	LFB313-.
	.set L$set$659,LFE313-LFB313
	.quad L$set$659
	.byte	0x0
	.byte	0x4
	.set L$set$660,LCFI685-LFB313
	.long L$set$660
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$661,LCFI686-LCFI685
	.long L$set$661
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$662,LCFI692-LCFI686
	.long L$set$662
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE281:
.globl _smpHash_init_capacity.eh
_smpHash_init_capacity.eh:
LSFDE283:
	.set L$set$663,LEFDE283-LASFDE283
	.long L$set$663
LASFDE283:
	.long	LASFDE283-EH_frame1
	.quad	LFB259-.
	.set L$set$664,LFE259-LFB259
	.quad L$set$664
	.byte	0x0
	.byte	0x4
	.set L$set$665,LCFI693-LFB259
	.long L$set$665
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$666,LCFI694-LCFI693
	.long L$set$666
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$667,LCFI700-LCFI694
	.long L$set$667
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE283:
.globl _smpHash_containsp.eh
_smpHash_containsp.eh:
LSFDE285:
	.set L$set$668,LEFDE285-LASFDE285
	.long L$set$668
LASFDE285:
	.long	LASFDE285-EH_frame1
	.quad	LFB254-.
	.set L$set$669,LFE254-LFB254
	.quad L$set$669
	.byte	0x0
	.byte	0x4
	.set L$set$670,LCFI701-LFB254
	.long L$set$670
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$671,LCFI702-LCFI701
	.long L$set$671
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$672,LCFI707-LCFI702
	.long L$set$672
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE285:
.globl _smpGlobal_catch_arg.eh
_smpGlobal_catch_arg.eh:
LSFDE287:
	.set L$set$673,LEFDE287-LASFDE287
	.long L$set$673
LASFDE287:
	.long	LASFDE287-EH_frame1
	.quad	LFB230-.
	.set L$set$674,LFE230-LFB230
	.quad L$set$674
	.byte	0x0
	.byte	0x4
	.set L$set$675,LCFI708-LFB230
	.long L$set$675
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$676,LCFI709-LCFI708
	.long L$set$676
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$677,LCFI714-LCFI709
	.long L$set$677
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE287:
.globl _smpFunction_init_v.eh
_smpFunction_init_v.eh:
LSFDE289:
	.set L$set$678,LEFDE289-LASFDE289
	.long L$set$678
LASFDE289:
	.long	LASFDE289-EH_frame1
	.quad	LFB226-.
	.set L$set$679,LFE226-LFB226
	.quad L$set$679
	.byte	0x0
	.byte	0x4
	.set L$set$680,LCFI715-LFB226
	.long L$set$680
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$681,LCFI716-LCFI715
	.long L$set$681
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$682,LCFI722-LCFI716
	.long L$set$682
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE289:
.globl _smpFunction_init.eh
_smpFunction_init.eh:
LSFDE291:
	.set L$set$683,LEFDE291-LASFDE291
	.long L$set$683
LASFDE291:
	.long	LASFDE291-EH_frame1
	.quad	LFB225-.
	.set L$set$684,LFE225-LFB225
	.quad L$set$684
	.byte	0x0
	.byte	0x4
	.set L$set$685,LCFI723-LFB225
	.long L$set$685
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$686,LCFI724-LCFI723
	.long L$set$686
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$687,LCFI726-LCFI724
	.long L$set$687
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE291:
.globl _smpTypeError_init_fmt.eh
_smpTypeError_init_fmt.eh:
LSFDE293:
	.set L$set$688,LEFDE293-LASFDE293
	.long L$set$688
LASFDE293:
	.long	LASFDE293-EH_frame1
	.quad	LFB198-.
	.set L$set$689,LFE198-LFB198
	.quad L$set$689
	.byte	0x0
	.byte	0x4
	.set L$set$690,LCFI727-LFB198
	.long L$set$690
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$691,LCFI728-LCFI727
	.long L$set$691
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$692,LCFI734-LCFI728
	.long L$set$692
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE293:
.globl _smpTypeError_init_detailed.eh
_smpTypeError_init_detailed.eh:
LSFDE295:
	.set L$set$693,LEFDE295-LASFDE295
	.long L$set$693
LASFDE295:
	.long	LASFDE295-EH_frame1
	.quad	LFB197-.
	.set L$set$694,LFE197-LFB197
	.quad L$set$694
	.byte	0x0
	.byte	0x4
	.set L$set$695,LCFI735-LFB197
	.long L$set$695
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$696,LCFI736-LCFI735
	.long L$set$696
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$697,LCFI742-LCFI736
	.long L$set$697
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE295:
.globl _smpTypeError_init.eh
_smpTypeError_init.eh:
LSFDE297:
	.set L$set$698,LEFDE297-LASFDE297
	.long L$set$698
LASFDE297:
	.long	LASFDE297-EH_frame1
	.quad	LFB196-.
	.set L$set$699,LFE196-LFB196
	.quad L$set$699
	.byte	0x0
	.byte	0x4
	.set L$set$700,LCFI743-LFB196
	.long L$set$700
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$701,LCFI744-LCFI743
	.long L$set$701
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$702,LCFI750-LCFI744
	.long L$set$702
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE297:
.globl _smpString_add_now.eh
_smpString_add_now.eh:
LSFDE299:
	.set L$set$703,LEFDE299-LASFDE299
	.long L$set$703
LASFDE299:
	.long	LASFDE299-EH_frame1
	.quad	LFB348-.
	.set L$set$704,LFE348-LFB348
	.quad L$set$704
	.byte	0x0
	.byte	0x4
	.set L$set$705,LCFI751-LFB348
	.long L$set$705
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$706,LCFI752-LCFI751
	.long L$set$706
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$707,LCFI758-LCFI752
	.long L$set$707
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE299:
.globl _smpString_add.eh
_smpString_add.eh:
LSFDE301:
	.set L$set$708,LEFDE301-LASFDE301
	.long L$set$708
LASFDE301:
	.long	LASFDE301-EH_frame1
	.quad	LFB347-.
	.set L$set$709,LFE347-LFB347
	.quad L$set$709
	.byte	0x0
	.byte	0x4
	.set L$set$710,LCFI759-LFB347
	.long L$set$710
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$711,LCFI760-LCFI759
	.long L$set$711
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$712,LCFI766-LCFI760
	.long L$set$712
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE301:
.globl _smpList_length.eh
_smpList_length.eh:
LSFDE303:
	.set L$set$713,LEFDE303-LASFDE303
	.long L$set$713
LASFDE303:
	.long	LASFDE303-EH_frame1
	.quad	LFB304-.
	.set L$set$714,LFE304-LFB304
	.quad L$set$714
	.byte	0x0
	.byte	0x4
	.set L$set$715,LCFI767-LFB304
	.long L$set$715
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$716,LCFI768-LCFI767
	.long L$set$716
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$717,LCFI772-LCFI768
	.long L$set$717
	.byte	0x83
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.align 3
LEFDE303:
.globl _smpList_get_clong.eh
_smpList_get_clong.eh:
LSFDE305:
	.set L$set$718,LEFDE305-LASFDE305
	.long L$set$718
LASFDE305:
	.long	LASFDE305-EH_frame1
	.quad	LFB303-.
	.set L$set$719,LFE303-LFB303
	.quad L$set$719
	.byte	0x0
	.byte	0x4
	.set L$set$720,LCFI773-LFB303
	.long L$set$720
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$721,LCFI774-LCFI773
	.long L$set$721
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$722,LCFI776-LCFI774
	.long L$set$722
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE305:
.globl _smpInteger_to_s.eh
_smpInteger_to_s.eh:
LSFDE307:
	.set L$set$723,LEFDE307-LASFDE307
	.long L$set$723
LASFDE307:
	.long	LASFDE307-EH_frame1
	.quad	LFB292-.
	.set L$set$724,LFE292-LFB292
	.quad L$set$724
	.byte	0x0
	.byte	0x4
	.set L$set$725,LCFI777-LFB292
	.long L$set$725
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$726,LCFI778-LCFI777
	.long L$set$726
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$727,LCFI784-LCFI778
	.long L$set$727
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE307:
.globl _smpInteger_gt.eh
_smpInteger_gt.eh:
LSFDE309:
	.set L$set$728,LEFDE309-LASFDE309
	.long L$set$728
LASFDE309:
	.long	LASFDE309-EH_frame1
	.quad	LFB289-.
	.set L$set$729,LFE289-LFB289
	.quad L$set$729
	.byte	0x0
	.byte	0x4
	.set L$set$730,LCFI785-LFB289
	.long L$set$730
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$731,LCFI786-LCFI785
	.long L$set$731
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$732,LCFI792-LCFI786
	.long L$set$732
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE309:
.globl _smpInteger_ge.eh
_smpInteger_ge.eh:
LSFDE311:
	.set L$set$733,LEFDE311-LASFDE311
	.long L$set$733
LASFDE311:
	.long	LASFDE311-EH_frame1
	.quad	LFB288-.
	.set L$set$734,LFE288-LFB288
	.quad L$set$734
	.byte	0x0
	.byte	0x4
	.set L$set$735,LCFI793-LFB288
	.long L$set$735
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$736,LCFI794-LCFI793
	.long L$set$736
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$737,LCFI800-LCFI794
	.long L$set$737
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE311:
.globl _smpInteger_le.eh
_smpInteger_le.eh:
LSFDE313:
	.set L$set$738,LEFDE313-LASFDE313
	.long L$set$738
LASFDE313:
	.long	LASFDE313-EH_frame1
	.quad	LFB287-.
	.set L$set$739,LFE287-LFB287
	.quad L$set$739
	.byte	0x0
	.byte	0x4
	.set L$set$740,LCFI801-LFB287
	.long L$set$740
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$741,LCFI802-LCFI801
	.long L$set$741
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$742,LCFI808-LCFI802
	.long L$set$742
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE313:
.globl _smpInteger_lt.eh
_smpInteger_lt.eh:
LSFDE315:
	.set L$set$743,LEFDE315-LASFDE315
	.long L$set$743
LASFDE315:
	.long	LASFDE315-EH_frame1
	.quad	LFB286-.
	.set L$set$744,LFE286-LFB286
	.quad L$set$744
	.byte	0x0
	.byte	0x4
	.set L$set$745,LCFI809-LFB286
	.long L$set$745
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$746,LCFI810-LCFI809
	.long L$set$746
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$747,LCFI816-LCFI810
	.long L$set$747
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE315:
.globl _smpInteger_nequalp.eh
_smpInteger_nequalp.eh:
LSFDE317:
	.set L$set$748,LEFDE317-LASFDE317
	.long L$set$748
LASFDE317:
	.long	LASFDE317-EH_frame1
	.quad	LFB285-.
	.set L$set$749,LFE285-LFB285
	.quad L$set$749
	.byte	0x0
	.byte	0x4
	.set L$set$750,LCFI817-LFB285
	.long L$set$750
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$751,LCFI818-LCFI817
	.long L$set$751
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$752,LCFI824-LCFI818
	.long L$set$752
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE317:
.globl _smpInteger_equalp.eh
_smpInteger_equalp.eh:
LSFDE319:
	.set L$set$753,LEFDE319-LASFDE319
	.long L$set$753
LASFDE319:
	.long	LASFDE319-EH_frame1
	.quad	LFB284-.
	.set L$set$754,LFE284-LFB284
	.quad L$set$754
	.byte	0x0
	.byte	0x4
	.set L$set$755,LCFI825-LFB284
	.long L$set$755
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$756,LCFI826-LCFI825
	.long L$set$756
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$757,LCFI832-LCFI826
	.long L$set$757
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE319:
.globl _smpInteger_eq.eh
_smpInteger_eq.eh:
LSFDE321:
	.set L$set$758,LEFDE321-LASFDE321
	.long L$set$758
LASFDE321:
	.long	LASFDE321-EH_frame1
	.quad	LFB290-.
	.set L$set$759,LFE290-LFB290
	.quad L$set$759
	.byte	0x0
	.byte	0x4
	.set L$set$760,LCFI833-LFB290
	.long L$set$760
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$761,LCFI834-LCFI833
	.long L$set$761
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$762,LCFI836-LCFI834
	.long L$set$762
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE321:
.globl _smpInteger_cmp.eh
_smpInteger_cmp.eh:
LSFDE323:
	.set L$set$763,LEFDE323-LASFDE323
	.long L$set$763
LASFDE323:
	.long	LASFDE323-EH_frame1
	.quad	LFB283-.
	.set L$set$764,LFE283-LFB283
	.quad L$set$764
	.byte	0x0
	.byte	0x4
	.set L$set$765,LCFI837-LFB283
	.long L$set$765
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$766,LCFI838-LCFI837
	.long L$set$766
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$767,LCFI844-LCFI838
	.long L$set$767
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE323:
.globl _smpInteger_xor.eh
_smpInteger_xor.eh:
LSFDE325:
	.set L$set$768,LEFDE325-LASFDE325
	.long L$set$768
LASFDE325:
	.long	LASFDE325-EH_frame1
	.quad	LFB281-.
	.set L$set$769,LFE281-LFB281
	.quad L$set$769
	.byte	0x0
	.byte	0x4
	.set L$set$770,LCFI845-LFB281
	.long L$set$770
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$771,LCFI846-LCFI845
	.long L$set$771
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$772,LCFI851-LCFI846
	.long L$set$772
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE325:
.globl _smpInteger_not.eh
_smpInteger_not.eh:
LSFDE327:
	.set L$set$773,LEFDE327-LASFDE327
	.long L$set$773
LASFDE327:
	.long	LASFDE327-EH_frame1
	.quad	LFB280-.
	.set L$set$774,LFE280-LFB280
	.quad L$set$774
	.byte	0x0
	.byte	0x4
	.set L$set$775,LCFI852-LFB280
	.long L$set$775
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$776,LCFI853-LCFI852
	.long L$set$776
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$777,LCFI857-LCFI853
	.long L$set$777
	.byte	0x83
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.align 3
LEFDE327:
.globl _smpInteger_ior.eh
_smpInteger_ior.eh:
LSFDE329:
	.set L$set$778,LEFDE329-LASFDE329
	.long L$set$778
LASFDE329:
	.long	LASFDE329-EH_frame1
	.quad	LFB279-.
	.set L$set$779,LFE279-LFB279
	.quad L$set$779
	.byte	0x0
	.byte	0x4
	.set L$set$780,LCFI858-LFB279
	.long L$set$780
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$781,LCFI859-LCFI858
	.long L$set$781
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$782,LCFI864-LCFI859
	.long L$set$782
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE329:
.globl _smpInteger_and.eh
_smpInteger_and.eh:
LSFDE331:
	.set L$set$783,LEFDE331-LASFDE331
	.long L$set$783
LASFDE331:
	.long	LASFDE331-EH_frame1
	.quad	LFB278-.
	.set L$set$784,LFE278-LFB278
	.quad L$set$784
	.byte	0x0
	.byte	0x4
	.set L$set$785,LCFI865-LFB278
	.long L$set$785
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$786,LCFI866-LCFI865
	.long L$set$786
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$787,LCFI871-LCFI866
	.long L$set$787
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE331:
.globl _smpInteger_shr.eh
_smpInteger_shr.eh:
LSFDE333:
	.set L$set$788,LEFDE333-LASFDE333
	.long L$set$788
LASFDE333:
	.long	LASFDE333-EH_frame1
	.quad	LFB277-.
	.set L$set$789,LFE277-LFB277
	.quad L$set$789
	.byte	0x0
	.byte	0x4
	.set L$set$790,LCFI872-LFB277
	.long L$set$790
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$791,LCFI873-LCFI872
	.long L$set$791
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$792,LCFI878-LCFI873
	.long L$set$792
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE333:
.globl _smpInteger_shl.eh
_smpInteger_shl.eh:
LSFDE335:
	.set L$set$793,LEFDE335-LASFDE335
	.long L$set$793
LASFDE335:
	.long	LASFDE335-EH_frame1
	.quad	LFB276-.
	.set L$set$794,LFE276-LFB276
	.quad L$set$794
	.byte	0x0
	.byte	0x4
	.set L$set$795,LCFI879-LFB276
	.long L$set$795
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$796,LCFI880-LCFI879
	.long L$set$796
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$797,LCFI885-LCFI880
	.long L$set$797
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE335:
.globl _smpInteger_pow.eh
_smpInteger_pow.eh:
LSFDE337:
	.set L$set$798,LEFDE337-LASFDE337
	.long L$set$798
LASFDE337:
	.long	LASFDE337-EH_frame1
	.quad	LFB275-.
	.set L$set$799,LFE275-LFB275
	.quad L$set$799
	.byte	0x0
	.byte	0x4
	.set L$set$800,LCFI886-LFB275
	.long L$set$800
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$801,LCFI887-LCFI886
	.long L$set$801
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$802,LCFI893-LCFI887
	.long L$set$802
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE337:
.globl _smpInteger_mod.eh
_smpInteger_mod.eh:
LSFDE339:
	.set L$set$803,LEFDE339-LASFDE339
	.long L$set$803
LASFDE339:
	.long	LASFDE339-EH_frame1
	.quad	LFB274-.
	.set L$set$804,LFE274-LFB274
	.quad L$set$804
	.byte	0x0
	.byte	0x4
	.set L$set$805,LCFI894-LFB274
	.long L$set$805
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$806,LCFI895-LCFI894
	.long L$set$806
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$807,LCFI900-LCFI895
	.long L$set$807
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE339:
.globl _smpInteger_div.eh
_smpInteger_div.eh:
LSFDE341:
	.set L$set$808,LEFDE341-LASFDE341
	.long L$set$808
LASFDE341:
	.long	LASFDE341-EH_frame1
	.quad	LFB273-.
	.set L$set$809,LFE273-LFB273
	.quad L$set$809
	.byte	0x0
	.byte	0x4
	.set L$set$810,LCFI901-LFB273
	.long L$set$810
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$811,LCFI902-LCFI901
	.long L$set$811
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$812,LCFI908-LCFI902
	.long L$set$812
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE341:
.globl _smpInteger_mul.eh
_smpInteger_mul.eh:
LSFDE343:
	.set L$set$813,LEFDE343-LASFDE343
	.long L$set$813
LASFDE343:
	.long	LASFDE343-EH_frame1
	.quad	LFB272-.
	.set L$set$814,LFE272-LFB272
	.quad L$set$814
	.byte	0x0
	.byte	0x4
	.set L$set$815,LCFI909-LFB272
	.long L$set$815
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$816,LCFI910-LCFI909
	.long L$set$816
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$817,LCFI916-LCFI910
	.long L$set$817
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE343:
.globl _smpInteger_sub.eh
_smpInteger_sub.eh:
LSFDE345:
	.set L$set$818,LEFDE345-LASFDE345
	.long L$set$818
LASFDE345:
	.long	LASFDE345-EH_frame1
	.quad	LFB271-.
	.set L$set$819,LFE271-LFB271
	.quad L$set$819
	.byte	0x0
	.byte	0x4
	.set L$set$820,LCFI917-LFB271
	.long L$set$820
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$821,LCFI918-LCFI917
	.long L$set$821
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$822,LCFI924-LCFI918
	.long L$set$822
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE345:
.globl _smpInteger_add.eh
_smpInteger_add.eh:
LSFDE347:
	.set L$set$823,LEFDE347-LASFDE347
	.long L$set$823
LASFDE347:
	.long	LASFDE347-EH_frame1
	.quad	LFB270-.
	.set L$set$824,LFE270-LFB270
	.quad L$set$824
	.byte	0x0
	.byte	0x4
	.set L$set$825,LCFI925-LFB270
	.long L$set$825
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$826,LCFI926-LCFI925
	.long L$set$826
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$827,LCFI932-LCFI926
	.long L$set$827
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE347:
.globl _speedtest_fun.eh
_speedtest_fun.eh:
LSFDE349:
	.set L$set$828,LEFDE349-LASFDE349
	.long L$set$828
LASFDE349:
	.long	LASFDE349-EH_frame1
	.quad	LFB152-.
	.set L$set$829,LFE152-LFB152
	.quad L$set$829
	.byte	0x0
	.byte	0x4
	.set L$set$830,LCFI933-LFB152
	.long L$set$830
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$831,LCFI934-LCFI933
	.long L$set$831
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$832,LCFI940-LCFI934
	.long L$set$832
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE349:
.globl _test_object_speed.eh
_test_object_speed.eh:
LSFDE351:
	.set L$set$833,LEFDE351-LASFDE351
	.long L$set$833
LASFDE351:
	.long	LASFDE351-EH_frame1
	.quad	LFB151-.
	.set L$set$834,LFE151-LFB151
	.quad L$set$834
	.byte	0x0
	.byte	0x4
	.set L$set$835,LCFI941-LFB151
	.long L$set$835
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$836,LCFI942-LCFI941
	.long L$set$836
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$837,LCFI945-LCFI942
	.long L$set$837
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE351:
.globl _smpFunction_call.eh
_smpFunction_call.eh:
LSFDE353:
	.set L$set$838,LEFDE353-LASFDE353
	.long L$set$838
LASFDE353:
	.long	LASFDE353-EH_frame1
	.quad	LFB222-.
	.set L$set$839,LFE222-LFB222
	.quad L$set$839
	.byte	0x0
	.byte	0x4
	.set L$set$840,LCFI946-LFB222
	.long L$set$840
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$841,LCFI947-LCFI946
	.long L$set$841
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$842,LCFI953-LCFI947
	.long L$set$842
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE353:
.globl _smpList_reduce.eh
_smpList_reduce.eh:
LSFDE355:
	.set L$set$843,LEFDE355-LASFDE355
	.long L$set$843
LASFDE355:
	.long	LASFDE355-EH_frame1
	.quad	LFB307-.
	.set L$set$844,LFE307-LFB307
	.quad L$set$844
	.byte	0x0
	.byte	0x4
	.set L$set$845,LCFI954-LFB307
	.long L$set$845
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$846,LCFI955-LCFI954
	.long L$set$846
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$847,LCFI961-LCFI955
	.long L$set$847
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE355:
.globl _smpList_map.eh
_smpList_map.eh:
LSFDE357:
	.set L$set$848,LEFDE357-LASFDE357
	.long L$set$848
LASFDE357:
	.long	LASFDE357-EH_frame1
	.quad	LFB306-.
	.set L$set$849,LFE306-LFB306
	.quad L$set$849
	.byte	0x0
	.byte	0x4
	.set L$set$850,LCFI962-LFB306
	.long L$set$850
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$851,LCFI963-LCFI962
	.long L$set$851
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$852,LCFI969-LCFI963
	.long L$set$852
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE357:
.globl _smpList_each.eh
_smpList_each.eh:
LSFDE359:
	.set L$set$853,LEFDE359-LASFDE359
	.long L$set$853
LASFDE359:
	.long	LASFDE359-EH_frame1
	.quad	LFB297-.
	.set L$set$854,LFE297-LFB297
	.quad L$set$854
	.byte	0x0
	.byte	0x4
	.set L$set$855,LCFI970-LFB297
	.long L$set$855
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$856,LCFI971-LCFI970
	.long L$set$856
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$857,LCFI977-LCFI971
	.long L$set$857
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE359:
.globl _smpFloat_to_s.eh
_smpFloat_to_s.eh:
LSFDE361:
	.set L$set$858,LEFDE361-LASFDE361
	.long L$set$858
LASFDE361:
	.long	LASFDE361-EH_frame1
	.quad	LFB220-.
	.set L$set$859,LFE220-LFB220
	.quad L$set$859
	.byte	0x0
	.byte	0x4
	.set L$set$860,LCFI978-LFB220
	.long L$set$860
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$861,LCFI979-LCFI978
	.long L$set$861
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$862,LCFI985-LCFI979
	.long L$set$862
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE361:
.globl _smpFloat_gt.eh
_smpFloat_gt.eh:
LSFDE363:
	.set L$set$863,LEFDE363-LASFDE363
	.long L$set$863
LASFDE363:
	.long	LASFDE363-EH_frame1
	.quad	LFB218-.
	.set L$set$864,LFE218-LFB218
	.quad L$set$864
	.byte	0x0
	.byte	0x4
	.set L$set$865,LCFI986-LFB218
	.long L$set$865
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$866,LCFI987-LCFI986
	.long L$set$866
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$867,LCFI993-LCFI987
	.long L$set$867
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE363:
.globl _smpFloat_ge.eh
_smpFloat_ge.eh:
LSFDE365:
	.set L$set$868,LEFDE365-LASFDE365
	.long L$set$868
LASFDE365:
	.long	LASFDE365-EH_frame1
	.quad	LFB217-.
	.set L$set$869,LFE217-LFB217
	.quad L$set$869
	.byte	0x0
	.byte	0x4
	.set L$set$870,LCFI994-LFB217
	.long L$set$870
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$871,LCFI995-LCFI994
	.long L$set$871
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$872,LCFI1001-LCFI995
	.long L$set$872
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE365:
.globl _smpFloat_le.eh
_smpFloat_le.eh:
LSFDE367:
	.set L$set$873,LEFDE367-LASFDE367
	.long L$set$873
LASFDE367:
	.long	LASFDE367-EH_frame1
	.quad	LFB216-.
	.set L$set$874,LFE216-LFB216
	.quad L$set$874
	.byte	0x0
	.byte	0x4
	.set L$set$875,LCFI1002-LFB216
	.long L$set$875
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$876,LCFI1003-LCFI1002
	.long L$set$876
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$877,LCFI1009-LCFI1003
	.long L$set$877
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE367:
.globl _smpFloat_lt.eh
_smpFloat_lt.eh:
LSFDE369:
	.set L$set$878,LEFDE369-LASFDE369
	.long L$set$878
LASFDE369:
	.long	LASFDE369-EH_frame1
	.quad	LFB215-.
	.set L$set$879,LFE215-LFB215
	.quad L$set$879
	.byte	0x0
	.byte	0x4
	.set L$set$880,LCFI1010-LFB215
	.long L$set$880
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$881,LCFI1011-LCFI1010
	.long L$set$881
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$882,LCFI1017-LCFI1011
	.long L$set$882
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE369:
.globl _smpFloat_nequalp.eh
_smpFloat_nequalp.eh:
LSFDE371:
	.set L$set$883,LEFDE371-LASFDE371
	.long L$set$883
LASFDE371:
	.long	LASFDE371-EH_frame1
	.quad	LFB214-.
	.set L$set$884,LFE214-LFB214
	.quad L$set$884
	.byte	0x0
	.byte	0x4
	.set L$set$885,LCFI1018-LFB214
	.long L$set$885
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$886,LCFI1019-LCFI1018
	.long L$set$886
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$887,LCFI1025-LCFI1019
	.long L$set$887
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE371:
.globl _smpFloat_equalp.eh
_smpFloat_equalp.eh:
LSFDE373:
	.set L$set$888,LEFDE373-LASFDE373
	.long L$set$888
LASFDE373:
	.long	LASFDE373-EH_frame1
	.quad	LFB213-.
	.set L$set$889,LFE213-LFB213
	.quad L$set$889
	.byte	0x0
	.byte	0x4
	.set L$set$890,LCFI1026-LFB213
	.long L$set$890
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$891,LCFI1027-LCFI1026
	.long L$set$891
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$892,LCFI1033-LCFI1027
	.long L$set$892
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE373:
.globl _smpFloat_eq.eh
_smpFloat_eq.eh:
LSFDE375:
	.set L$set$893,LEFDE375-LASFDE375
	.long L$set$893
LASFDE375:
	.long	LASFDE375-EH_frame1
	.quad	LFB219-.
	.set L$set$894,LFE219-LFB219
	.quad L$set$894
	.byte	0x0
	.byte	0x4
	.set L$set$895,LCFI1034-LFB219
	.long L$set$895
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$896,LCFI1035-LCFI1034
	.long L$set$896
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$897,LCFI1037-LCFI1035
	.long L$set$897
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE375:
.globl _smpFloat_cmp.eh
_smpFloat_cmp.eh:
LSFDE377:
	.set L$set$898,LEFDE377-LASFDE377
	.long L$set$898
LASFDE377:
	.long	LASFDE377-EH_frame1
	.quad	LFB212-.
	.set L$set$899,LFE212-LFB212
	.quad L$set$899
	.byte	0x0
	.byte	0x4
	.set L$set$900,LCFI1038-LFB212
	.long L$set$900
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$901,LCFI1039-LCFI1038
	.long L$set$901
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$902,LCFI1043-LCFI1039
	.long L$set$902
	.byte	0x83
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.align 3
LEFDE377:
.globl _smpFloat_pow.eh
_smpFloat_pow.eh:
LSFDE379:
	.set L$set$903,LEFDE379-LASFDE379
	.long L$set$903
LASFDE379:
	.long	LASFDE379-EH_frame1
	.quad	LFB210-.
	.set L$set$904,LFE210-LFB210
	.quad L$set$904
	.byte	0x0
	.byte	0x4
	.set L$set$905,LCFI1044-LFB210
	.long L$set$905
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$906,LCFI1045-LCFI1044
	.long L$set$906
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$907,LCFI1051-LCFI1045
	.long L$set$907
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE379:
.globl _smpFloat_div.eh
_smpFloat_div.eh:
LSFDE381:
	.set L$set$908,LEFDE381-LASFDE381
	.long L$set$908
LASFDE381:
	.long	LASFDE381-EH_frame1
	.quad	LFB209-.
	.set L$set$909,LFE209-LFB209
	.quad L$set$909
	.byte	0x0
	.byte	0x4
	.set L$set$910,LCFI1052-LFB209
	.long L$set$910
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$911,LCFI1053-LCFI1052
	.long L$set$911
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$912,LCFI1059-LCFI1053
	.long L$set$912
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE381:
.globl _smpFloat_mul.eh
_smpFloat_mul.eh:
LSFDE383:
	.set L$set$913,LEFDE383-LASFDE383
	.long L$set$913
LASFDE383:
	.long	LASFDE383-EH_frame1
	.quad	LFB208-.
	.set L$set$914,LFE208-LFB208
	.quad L$set$914
	.byte	0x0
	.byte	0x4
	.set L$set$915,LCFI1060-LFB208
	.long L$set$915
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$916,LCFI1061-LCFI1060
	.long L$set$916
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$917,LCFI1067-LCFI1061
	.long L$set$917
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE383:
.globl _smpFloat_sub.eh
_smpFloat_sub.eh:
LSFDE385:
	.set L$set$918,LEFDE385-LASFDE385
	.long L$set$918
LASFDE385:
	.long	LASFDE385-EH_frame1
	.quad	LFB207-.
	.set L$set$919,LFE207-LFB207
	.quad L$set$919
	.byte	0x0
	.byte	0x4
	.set L$set$920,LCFI1068-LFB207
	.long L$set$920
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$921,LCFI1069-LCFI1068
	.long L$set$921
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$922,LCFI1075-LCFI1069
	.long L$set$922
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE385:
.globl _smpFloat_add.eh
_smpFloat_add.eh:
LSFDE387:
	.set L$set$923,LEFDE387-LASFDE387
	.long L$set$923
LASFDE387:
	.long	LASFDE387-EH_frame1
	.quad	LFB206-.
	.set L$set$924,LFE206-LFB206
	.quad L$set$924
	.byte	0x0
	.byte	0x4
	.set L$set$925,LCFI1076-LFB206
	.long L$set$925
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$926,LCFI1077-LCFI1076
	.long L$set$926
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$927,LCFI1083-LCFI1077
	.long L$set$927
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE387:
.globl _smpList_get.eh
_smpList_get.eh:
LSFDE389:
	.set L$set$928,LEFDE389-LASFDE389
	.long L$set$928
LASFDE389:
	.long	LASFDE389-EH_frame1
	.quad	LFB302-.
	.set L$set$929,LFE302-LFB302
	.quad L$set$929
	.byte	0x0
	.byte	0x4
	.set L$set$930,LCFI1084-LFB302
	.long L$set$930
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$931,LCFI1085-LCFI1084
	.long L$set$931
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$932,LCFI1091-LCFI1085
	.long L$set$932
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE389:
.globl _smp_abstract_function.eh
_smp_abstract_function.eh:
LSFDE391:
	.set L$set$933,LEFDE391-LASFDE391
	.long L$set$933
LASFDE391:
	.long	LASFDE391-EH_frame1
	.quad	LFB76-.
	.set L$set$934,LFE76-LFB76
	.quad L$set$934
	.byte	0x0
	.byte	0x4
	.set L$set$935,LCFI1092-LFB76
	.long L$set$935
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$936,LCFI1093-LCFI1092
	.long L$set$936
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$937,LCFI1098-LCFI1093
	.long L$set$937
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE391:
.globl _smpSymbol_init.eh
_smpSymbol_init.eh:
LSFDE393:
	.set L$set$938,LEFDE393-LASFDE393
	.long L$set$938
LASFDE393:
	.long	LASFDE393-EH_frame1
	.quad	LFB362-.
	.set L$set$939,LFE362-LFB362
	.quad L$set$939
	.byte	0x0
	.byte	0x4
	.set L$set$940,LCFI1099-LFB362
	.long L$set$940
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$941,LCFI1100-LCFI1099
	.long L$set$941
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$942,LCFI1106-LCFI1100
	.long L$set$942
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE393:
.globl _smpRegex_compile_handle_errors.eh
_smpRegex_compile_handle_errors.eh:
LSFDE395:
	.set L$set$943,LEFDE395-LASFDE395
	.long L$set$943
LASFDE395:
	.long	LASFDE395-EH_frame1
	.quad	LFB339-.
	.set L$set$944,LFE339-LFB339
	.quad L$set$944
	.byte	0x0
	.byte	0x4
	.set L$set$945,LCFI1107-LFB339
	.long L$set$945
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$946,LCFI1108-LCFI1107
	.long L$set$946
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$947,LCFI1114-LCFI1108
	.long L$set$947
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE395:
.globl _smpRegex_compile_str_flags.eh
_smpRegex_compile_str_flags.eh:
LSFDE397:
	.set L$set$948,LEFDE397-LASFDE397
	.long L$set$948
LASFDE397:
	.long	LASFDE397-EH_frame1
	.quad	LFB338-.
	.set L$set$949,LFE338-LFB338
	.quad L$set$949
	.byte	0x0
	.byte	0x4
	.set L$set$950,LCFI1115-LFB338
	.long L$set$950
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$951,LCFI1116-LCFI1115
	.long L$set$951
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$952,LCFI1119-LCFI1116
	.long L$set$952
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE397:
.globl _smpRegex_compile_str.eh
_smpRegex_compile_str.eh:
LSFDE399:
	.set L$set$953,LEFDE399-LASFDE399
	.long L$set$953
LASFDE399:
	.long	LASFDE399-EH_frame1
	.quad	LFB337-.
	.set L$set$954,LFE337-LFB337
	.quad L$set$954
	.byte	0x0
	.byte	0x4
	.set L$set$955,LCFI1120-LFB337
	.long L$set$955
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$956,LCFI1121-LCFI1120
	.long L$set$956
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$957,LCFI1124-LCFI1121
	.long L$set$957
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE399:
.globl _smpRegex_compile_flags.eh
_smpRegex_compile_flags.eh:
LSFDE401:
	.set L$set$958,LEFDE401-LASFDE401
	.long L$set$958
LASFDE401:
	.long	LASFDE401-EH_frame1
	.quad	LFB336-.
	.set L$set$959,LFE336-LFB336
	.quad L$set$959
	.byte	0x0
	.byte	0x4
	.set L$set$960,LCFI1125-LFB336
	.long L$set$960
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$961,LCFI1126-LCFI1125
	.long L$set$961
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$962,LCFI1129-LCFI1126
	.long L$set$962
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE401:
.globl _smpRegex_compile.eh
_smpRegex_compile.eh:
LSFDE403:
	.set L$set$963,LEFDE403-LASFDE403
	.long L$set$963
LASFDE403:
	.long	LASFDE403-EH_frame1
	.quad	LFB335-.
	.set L$set$964,LFE335-LFB335
	.quad L$set$964
	.byte	0x0
	.byte	0x4
	.set L$set$965,LCFI1130-LFB335
	.long L$set$965
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$966,LCFI1131-LCFI1130
	.long L$set$966
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$967,LCFI1134-LCFI1131
	.long L$set$967
	.byte	0x8c
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.align 3
LEFDE403:
.globl _smpRegex_match_str.eh
_smpRegex_match_str.eh:
LSFDE405:
	.set L$set$968,LEFDE405-LASFDE405
	.long L$set$968
LASFDE405:
	.long	LASFDE405-EH_frame1
	.quad	LFB342-.
	.set L$set$969,LFE342-LFB342
	.quad L$set$969
	.byte	0x0
	.byte	0x4
	.set L$set$970,LCFI1135-LFB342
	.long L$set$970
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$971,LCFI1136-LCFI1135
	.long L$set$971
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$972,LCFI1142-LCFI1136
	.long L$set$972
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE405:
.globl _smpRegex_match.eh
_smpRegex_match.eh:
LSFDE407:
	.set L$set$973,LEFDE407-LASFDE407
	.long L$set$973
LASFDE407:
	.long	LASFDE407-EH_frame1
	.quad	LFB341-.
	.set L$set$974,LFE341-LFB341
	.quad L$set$974
	.byte	0x0
	.byte	0x4
	.set L$set$975,LCFI1143-LFB341
	.long L$set$975
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$976,LCFI1144-LCFI1143
	.long L$set$976
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$977,LCFI1146-LCFI1144
	.long L$set$977
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE407:
.globl _smpRegex_matchp_cint.eh
_smpRegex_matchp_cint.eh:
LSFDE409:
	.set L$set$978,LEFDE409-LASFDE409
	.long L$set$978
LASFDE409:
	.long	LASFDE409-EH_frame1
	.quad	LFB344-.
	.set L$set$979,LFE344-LFB344
	.quad L$set$979
	.byte	0x0
	.byte	0x4
	.set L$set$980,LCFI1147-LFB344
	.long L$set$980
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$981,LCFI1148-LCFI1147
	.long L$set$981
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$982,LCFI1150-LCFI1148
	.long L$set$982
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE409:
.globl _smpRegex_matchp.eh
_smpRegex_matchp.eh:
LSFDE411:
	.set L$set$983,LEFDE411-LASFDE411
	.long L$set$983
LASFDE411:
	.long	LASFDE411-EH_frame1
	.quad	LFB343-.
	.set L$set$984,LFE343-LFB343
	.quad L$set$984
	.byte	0x0
	.byte	0x4
	.set L$set$985,LCFI1151-LFB343
	.long L$set$985
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$986,LCFI1152-LCFI1151
	.long L$set$986
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$987,LCFI1155-LCFI1152
	.long L$set$987
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE411:
.globl _smpCollection_create_class.eh
_smpCollection_create_class.eh:
LSFDE413:
	.set L$set$988,LEFDE413-LASFDE413
	.long L$set$988
LASFDE413:
	.long	LASFDE413-EH_frame1
	.quad	LFB185-.
	.set L$set$989,LFE185-LFB185
	.quad L$set$989
	.byte	0x0
	.byte	0x4
	.set L$set$990,LCFI1156-LFB185
	.long L$set$990
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$991,LCFI1157-LCFI1156
	.long L$set$991
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$992,LCFI1161-LCFI1157
	.long L$set$992
	.byte	0x83
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.align 3
LEFDE413:
.globl _smpArray_reduce.eh
_smpArray_reduce.eh:
LSFDE415:
	.set L$set$993,LEFDE415-LASFDE415
	.long L$set$993
LASFDE415:
	.long	LASFDE415-EH_frame1
	.quad	LFB172-.
	.set L$set$994,LFE172-LFB172
	.quad L$set$994
	.byte	0x0
	.byte	0x4
	.set L$set$995,LCFI1162-LFB172
	.long L$set$995
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$996,LCFI1163-LCFI1162
	.long L$set$996
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$997,LCFI1169-LCFI1163
	.long L$set$997
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE415:
.globl _smpArray_map.eh
_smpArray_map.eh:
LSFDE417:
	.set L$set$998,LEFDE417-LASFDE417
	.long L$set$998
LASFDE417:
	.long	LASFDE417-EH_frame1
	.quad	LFB171-.
	.set L$set$999,LFE171-LFB171
	.quad L$set$999
	.byte	0x0
	.byte	0x4
	.set L$set$1000,LCFI1170-LFB171
	.long L$set$1000
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1001,LCFI1171-LCFI1170
	.long L$set$1001
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1002,LCFI1177-LCFI1171
	.long L$set$1002
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE417:
.globl _smpArray_get_c.eh
_smpArray_get_c.eh:
LSFDE419:
	.set L$set$1003,LEFDE419-LASFDE419
	.long L$set$1003
LASFDE419:
	.long	LASFDE419-EH_frame1
	.quad	LFB169-.
	.set L$set$1004,LFE169-LFB169
	.quad L$set$1004
	.byte	0x0
	.byte	0x4
	.set L$set$1005,LCFI1178-LFB169
	.long L$set$1005
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1006,LCFI1179-LCFI1178
	.long L$set$1006
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1007,LCFI1185-LCFI1179
	.long L$set$1007
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE419:
.globl _smpArray_init_array.eh
_smpArray_init_array.eh:
LSFDE421:
	.set L$set$1008,LEFDE421-LASFDE421
	.long L$set$1008
LASFDE421:
	.long	LASFDE421-EH_frame1
	.quad	LFB167-.
	.set L$set$1009,LFE167-LFB167
	.quad L$set$1009
	.byte	0x0
	.byte	0x4
	.set L$set$1010,LCFI1186-LFB167
	.long L$set$1010
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1011,LCFI1187-LCFI1186
	.long L$set$1011
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1012,LCFI1193-LCFI1187
	.long L$set$1012
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE421:
.globl _smpArray_init.eh
_smpArray_init.eh:
LSFDE423:
	.set L$set$1013,LEFDE423-LASFDE423
	.long L$set$1013
LASFDE423:
	.long	LASFDE423-EH_frame1
	.quad	LFB166-.
	.set L$set$1014,LFE166-LFB166
	.quad L$set$1014
	.byte	0x0
	.byte	0x4
	.set L$set$1015,LCFI1194-LFB166
	.long L$set$1015
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1016,LCFI1195-LCFI1194
	.long L$set$1016
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1017,LCFI1201-LCFI1195
	.long L$set$1017
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE423:
.globl _smpObject_type.eh
_smpObject_type.eh:
LSFDE425:
	.set L$set$1018,LEFDE425-LASFDE425
	.long L$set$1018
LASFDE425:
	.long	LASFDE425-EH_frame1
	.quad	LFB122-.
	.set L$set$1019,LFE122-LFB122
	.quad L$set$1019
	.byte	0x0
	.byte	0x4
	.set L$set$1020,LCFI1202-LFB122
	.long L$set$1020
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1021,LCFI1203-LCFI1202
	.long L$set$1021
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1022,LCFI1209-LCFI1203
	.long L$set$1022
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE425:
.globl _smpObject_instancep.eh
_smpObject_instancep.eh:
LSFDE427:
	.set L$set$1023,LEFDE427-LASFDE427
	.long L$set$1023
LASFDE427:
	.long	LASFDE427-EH_frame1
	.quad	LFB116-.
	.set L$set$1024,LFE116-LFB116
	.quad L$set$1024
	.byte	0x0
	.byte	0x4
	.set L$set$1025,LCFI1210-LFB116
	.long L$set$1025
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1026,LCFI1211-LCFI1210
	.long L$set$1026
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1027,LCFI1217-LCFI1211
	.long L$set$1027
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE427:
.globl _smpObject_get_fun.eh
_smpObject_get_fun.eh:
LSFDE429:
	.set L$set$1028,LEFDE429-LASFDE429
	.long L$set$1028
LASFDE429:
	.long	LASFDE429-EH_frame1
	.quad	LFB113-.
	.set L$set$1029,LFE113-LFB113
	.quad L$set$1029
	.byte	0x0
	.byte	0x4
	.set L$set$1030,LCFI1218-LFB113
	.long L$set$1030
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1031,LCFI1219-LCFI1218
	.long L$set$1031
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1032,LCFI1225-LCFI1219
	.long L$set$1032
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE429:
.globl _smpObject_funcall.eh
_smpObject_funcall.eh:
LSFDE431:
	.set L$set$1033,LEFDE431-LASFDE431
	.long L$set$1033
LASFDE431:
	.long	LASFDE431-EH_frame1
	.quad	LFB109-.
	.set L$set$1034,LFE109-LFB109
	.quad L$set$1034
	.byte	0x0
	.byte	0x4
	.set L$set$1035,LCFI1226-LFB109
	.long L$set$1035
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1036,LCFI1227-LCFI1226
	.long L$set$1036
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1037,LCFI1232-LCFI1227
	.long L$set$1037
	.byte	0x8e
	.byte	0x3
	.byte	0x8d
	.byte	0x4
	.byte	0x8c
	.byte	0x5
	.byte	0x83
	.byte	0x6
	.align 3
LEFDE431:
.globl _smpThrown_to_s.eh
_smpThrown_to_s.eh:
LSFDE433:
	.set L$set$1038,LEFDE433-LASFDE433
	.long L$set$1038
LASFDE433:
	.long	LASFDE433-EH_frame1
	.quad	LFB375-.
	.set L$set$1039,LFE375-LFB375
	.quad L$set$1039
	.byte	0x0
	.byte	0x4
	.set L$set$1040,LCFI1233-LFB375
	.long L$set$1040
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1041,LCFI1234-LCFI1233
	.long L$set$1041
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1042,LCFI1240-LCFI1234
	.long L$set$1042
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE433:
.globl _smpList_write.eh
_smpList_write.eh:
LSFDE435:
	.set L$set$1043,LEFDE435-LASFDE435
	.long L$set$1043
LASFDE435:
	.long	LASFDE435-EH_frame1
	.quad	LFB309-.
	.set L$set$1044,LFE309-LFB309
	.quad L$set$1044
	.byte	0x0
	.byte	0x4
	.set L$set$1045,LCFI1241-LFB309
	.long L$set$1045
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1046,LCFI1242-LCFI1241
	.long L$set$1046
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1047,LCFI1248-LCFI1242
	.long L$set$1047
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE435:
.globl _smpList_to_s.eh
_smpList_to_s.eh:
LSFDE437:
	.set L$set$1048,LEFDE437-LASFDE437
	.long L$set$1048
LASFDE437:
	.long	LASFDE437-EH_frame1
	.quad	LFB308-.
	.set L$set$1049,LFE308-LFB308
	.quad L$set$1049
	.byte	0x0
	.byte	0x4
	.set L$set$1050,LCFI1249-LFB308
	.long L$set$1050
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1051,LCFI1250-LCFI1249
	.long L$set$1051
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1052,LCFI1256-LCFI1250
	.long L$set$1052
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE437:
.globl _smpList_equalp.eh
_smpList_equalp.eh:
LSFDE439:
	.set L$set$1053,LEFDE439-LASFDE439
	.long L$set$1053
LASFDE439:
	.long	LASFDE439-EH_frame1
	.quad	LFB299-.
	.set L$set$1054,LFE299-LFB299
	.quad L$set$1054
	.byte	0x0
	.byte	0x4
	.set L$set$1055,LCFI1257-LFB299
	.long L$set$1055
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1056,LCFI1258-LCFI1257
	.long L$set$1056
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1057,LCFI1264-LCFI1258
	.long L$set$1057
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE439:
.globl _obj_put_fmt.eh
_obj_put_fmt.eh:
LSFDE441:
	.set L$set$1058,LEFDE441-LASFDE441
	.long L$set$1058
LASFDE441:
	.long	LASFDE441-EH_frame1
	.quad	LFB246-.
	.set L$set$1059,LFE246-LFB246
	.quad L$set$1059
	.byte	0x0
	.byte	0x4
	.set L$set$1060,LCFI1265-LFB246
	.long L$set$1060
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1061,LCFI1266-LCFI1265
	.long L$set$1061
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1062,LCFI1272-LCFI1266
	.long L$set$1062
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE441:
.globl _smpGlobal_sprintf_arg.eh
_smpGlobal_sprintf_arg.eh:
LSFDE443:
	.set L$set$1063,LEFDE443-LASFDE443
	.long L$set$1063
LASFDE443:
	.long	LASFDE443-EH_frame1
	.quad	LFB245-.
	.set L$set$1064,LFE245-LFB245
	.quad L$set$1064
	.byte	0x0
	.byte	0x4
	.set L$set$1065,LCFI1273-LFB245
	.long L$set$1065
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1066,LCFI1274-LCFI1273
	.long L$set$1066
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1067,LCFI1280-LCFI1274
	.long L$set$1067
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE443:
.globl _smpGlobal_vsprintf.eh
_smpGlobal_vsprintf.eh:
LSFDE445:
	.set L$set$1068,LEFDE445-LASFDE445
	.long L$set$1068
LASFDE445:
	.long	LASFDE445-EH_frame1
	.quad	LFB244-.
	.set L$set$1069,LFE244-LFB244
	.quad L$set$1069
	.byte	0x0
	.byte	0x4
	.set L$set$1070,LCFI1281-LFB244
	.long L$set$1070
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1071,LCFI1282-LCFI1281
	.long L$set$1071
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1072,LCFI1288-LCFI1282
	.long L$set$1072
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE445:
.globl _smpGlobal_sprintf.eh
_smpGlobal_sprintf.eh:
LSFDE447:
	.set L$set$1073,LEFDE447-LASFDE447
	.long L$set$1073
LASFDE447:
	.long	LASFDE447-EH_frame1
	.quad	LFB243-.
	.set L$set$1074,LFE243-LFB243
	.quad L$set$1074
	.byte	0x0
	.byte	0x4
	.set L$set$1075,LCFI1289-LFB243
	.long L$set$1075
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1076,LCFI1290-LCFI1289
	.long L$set$1076
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1077,LCFI1292-LCFI1290
	.long L$set$1077
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE447:
.globl _smpPair_write.eh
_smpPair_write.eh:
LSFDE449:
	.set L$set$1078,LEFDE449-LASFDE449
	.long L$set$1078
LASFDE449:
	.long	LASFDE449-EH_frame1
	.quad	LFB332-.
	.set L$set$1079,LFE332-LFB332
	.quad L$set$1079
	.byte	0x0
	.byte	0x4
	.set L$set$1080,LCFI1293-LFB332
	.long L$set$1080
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1081,LCFI1294-LCFI1293
	.long L$set$1081
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1082,LCFI1296-LCFI1294
	.long L$set$1082
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE449:
.globl _smpPair_to_s.eh
_smpPair_to_s.eh:
LSFDE451:
	.set L$set$1083,LEFDE451-LASFDE451
	.long L$set$1083
LASFDE451:
	.long	LASFDE451-EH_frame1
	.quad	LFB331-.
	.set L$set$1084,LFE331-LFB331
	.quad L$set$1084
	.byte	0x0
	.byte	0x4
	.set L$set$1085,LCFI1297-LFB331
	.long L$set$1085
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1086,LCFI1298-LCFI1297
	.long L$set$1086
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1087,LCFI1300-LCFI1298
	.long L$set$1087
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE451:
.globl _test_printf.eh
_test_printf.eh:
LSFDE453:
	.set L$set$1088,LEFDE453-LASFDE453
	.long L$set$1088
LASFDE453:
	.long	LASFDE453-EH_frame1
	.quad	LFB142-.
	.set L$set$1089,LFE142-LFB142
	.quad L$set$1089
	.byte	0x0
	.byte	0x4
	.set L$set$1090,LCFI1301-LFB142
	.long L$set$1090
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1091,LCFI1302-LCFI1301
	.long L$set$1091
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1092,LCFI1308-LCFI1302
	.long L$set$1092
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE453:
.globl _smp_print.eh
_smp_print.eh:
LSFDE455:
	.set L$set$1093,LEFDE455-LASFDE455
	.long L$set$1093
LASFDE455:
	.long	LASFDE455-EH_frame1
	.quad	LFB237-.
	.set L$set$1094,LFE237-LFB237
	.quad L$set$1094
	.byte	0x0
	.byte	0x4
	.set L$set$1095,LCFI1309-LFB237
	.long L$set$1095
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1096,LCFI1310-LCFI1309
	.long L$set$1096
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1097,LCFI1316-LCFI1310
	.long L$set$1097
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE455:
.globl _smpGlobal_fprint.eh
_smpGlobal_fprint.eh:
LSFDE457:
	.set L$set$1098,LEFDE457-LASFDE457
	.long L$set$1098
LASFDE457:
	.long	LASFDE457-EH_frame1
	.quad	LFB234-.
	.set L$set$1099,LFE234-LFB234
	.quad L$set$1099
	.byte	0x0
	.byte	0x4
	.set L$set$1100,LCFI1317-LFB234
	.long L$set$1100
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1101,LCFI1318-LCFI1317
	.long L$set$1101
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1102,LCFI1324-LCFI1318
	.long L$set$1102
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE457:
.globl _smpArray_write.eh
_smpArray_write.eh:
LSFDE459:
	.set L$set$1103,LEFDE459-LASFDE459
	.long L$set$1103
LASFDE459:
	.long	LASFDE459-EH_frame1
	.quad	LFB175-.
	.set L$set$1104,LFE175-LFB175
	.quad L$set$1104
	.byte	0x0
	.byte	0x4
	.set L$set$1105,LCFI1325-LFB175
	.long L$set$1105
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1106,LCFI1326-LCFI1325
	.long L$set$1106
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1107,LCFI1332-LCFI1326
	.long L$set$1107
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE459:
.globl _smpArray_to_s.eh
_smpArray_to_s.eh:
LSFDE461:
	.set L$set$1108,LEFDE461-LASFDE461
	.long L$set$1108
LASFDE461:
	.long	LASFDE461-EH_frame1
	.quad	LFB174-.
	.set L$set$1109,LFE174-LFB174
	.quad L$set$1109
	.byte	0x0
	.byte	0x4
	.set L$set$1110,LCFI1333-LFB174
	.long L$set$1110
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1111,LCFI1334-LCFI1333
	.long L$set$1111
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1112,LCFI1340-LCFI1334
	.long L$set$1112
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE461:
.globl _make_list.eh
_make_list.eh:
LSFDE463:
	.set L$set$1113,LEFDE463-LASFDE463
	.long L$set$1113
LASFDE463:
	.long	LASFDE463-EH_frame1
	.quad	LFB144-.
	.set L$set$1114,LFE144-LFB144
	.quad L$set$1114
	.byte	0x0
	.byte	0x4
	.set L$set$1115,LCFI1341-LFB144
	.long L$set$1115
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1116,LCFI1342-LCFI1341
	.long L$set$1116
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1117,LCFI1348-LCFI1342
	.long L$set$1117
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE463:
.globl _smpObject_write_class.eh
_smpObject_write_class.eh:
LSFDE465:
	.set L$set$1118,LEFDE465-LASFDE465
	.long L$set$1118
LASFDE465:
	.long	LASFDE465-EH_frame1
	.quad	LFB126-.
	.set L$set$1119,LFE126-LFB126
	.quad L$set$1119
	.byte	0x0
	.byte	0x4
	.set L$set$1120,LCFI1349-LFB126
	.long L$set$1120
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1121,LCFI1350-LCFI1349
	.long L$set$1121
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1122,LCFI1352-LCFI1350
	.long L$set$1122
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE465:
.globl _smpObject_write.eh
_smpObject_write.eh:
LSFDE467:
	.set L$set$1123,LEFDE467-LASFDE467
	.long L$set$1123
LASFDE467:
	.long	LASFDE467-EH_frame1
	.quad	LFB125-.
	.set L$set$1124,LFE125-LFB125
	.quad L$set$1124
	.byte	0x0
	.byte	0x4
	.set L$set$1125,LCFI1353-LFB125
	.long L$set$1125
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1126,LCFI1354-LCFI1353
	.long L$set$1126
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1127,LCFI1356-LCFI1354
	.long L$set$1127
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE467:
.globl _smpObject_equalp.eh
_smpObject_equalp.eh:
LSFDE469:
	.set L$set$1128,LEFDE469-LASFDE469
	.long L$set$1128
LASFDE469:
	.long	LASFDE469-EH_frame1
	.quad	LFB108-.
	.set L$set$1129,LFE108-LFB108
	.quad L$set$1129
	.byte	0x0
	.byte	0x4
	.set L$set$1130,LCFI1357-LFB108
	.long L$set$1130
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1131,LCFI1358-LCFI1357
	.long L$set$1131
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1132,LCFI1360-LCFI1358
	.long L$set$1132
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE469:
.globl _smpObject_eql.eh
_smpObject_eql.eh:
LSFDE471:
	.set L$set$1133,LEFDE471-LASFDE471
	.long L$set$1133
LASFDE471:
	.long	LASFDE471-EH_frame1
	.quad	LFB107-.
	.set L$set$1134,LFE107-LFB107
	.quad L$set$1134
	.byte	0x0
	.byte	0x4
	.set L$set$1135,LCFI1361-LFB107
	.long L$set$1135
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1136,LCFI1362-LCFI1361
	.long L$set$1136
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1137,LCFI1364-LCFI1362
	.long L$set$1137
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE471:
.globl _obj_clear.eh
_obj_clear.eh:
LSFDE473:
	.set L$set$1138,LEFDE473-LASFDE473
	.long L$set$1138
LASFDE473:
	.long	LASFDE473-EH_frame1
	.quad	LFB99-.
	.set L$set$1139,LFE99-LFB99
	.quad L$set$1139
	.byte	0x0
	.byte	0x4
	.set L$set$1140,LCFI1365-LFB99
	.long L$set$1140
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1141,LCFI1366-LCFI1365
	.long L$set$1141
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1142,LCFI1369-LCFI1366
	.long L$set$1142
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE473:
.globl _obj_hash.eh
_obj_hash.eh:
LSFDE475:
	.set L$set$1143,LEFDE475-LASFDE475
	.long L$set$1143
LASFDE475:
	.long	LASFDE475-EH_frame1
	.quad	LFB98-.
	.set L$set$1144,LFE98-LFB98
	.quad L$set$1144
	.byte	0x0
	.byte	0x4
	.set L$set$1145,LCFI1370-LFB98
	.long L$set$1145
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1146,LCFI1371-LCFI1370
	.long L$set$1146
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1147,LCFI1377-LCFI1371
	.long L$set$1147
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE475:
.globl _gc_mark_recursive.eh
_gc_mark_recursive.eh:
LSFDE477:
	.set L$set$1148,LEFDE477-LASFDE477
	.long L$set$1148
LASFDE477:
	.long	LASFDE477-EH_frame1
	.quad	LFB83-.
	.set L$set$1149,LFE83-LFB83
	.quad L$set$1149
	.byte	0x0
	.byte	0x4
	.set L$set$1150,LCFI1378-LFB83
	.long L$set$1150
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1151,LCFI1379-LCFI1378
	.long L$set$1151
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE477:
.globl _smpGlobal_fprintf.eh
_smpGlobal_fprintf.eh:
LSFDE479:
	.set L$set$1152,LEFDE479-LASFDE479
	.long L$set$1152
LASFDE479:
	.long	LASFDE479-EH_frame1
	.quad	LFB235-.
	.set L$set$1153,LFE235-LFB235
	.quad L$set$1153
	.byte	0x0
	.byte	0x4
	.set L$set$1154,LCFI1381-LFB235
	.long L$set$1154
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1155,LCFI1382-LCFI1381
	.long L$set$1155
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1156,LCFI1388-LCFI1382
	.long L$set$1156
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE479:
.globl _smpException_print.eh
_smpException_print.eh:
LSFDE481:
	.set L$set$1157,LEFDE481-LASFDE481
	.long L$set$1157
LASFDE481:
	.long	LASFDE481-EH_frame1
	.quad	LFB192-.
	.set L$set$1158,LFE192-LFB192
	.quad L$set$1158
	.byte	0x0
	.byte	0x4
	.set L$set$1159,LCFI1389-LFB192
	.long L$set$1159
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1160,LCFI1390-LCFI1389
	.long L$set$1160
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1161,LCFI1392-LCFI1390
	.long L$set$1161
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE481:
.globl _smpHash_get.eh
_smpHash_get.eh:
LSFDE483:
	.set L$set$1162,LEFDE483-LASFDE483
	.long L$set$1162
LASFDE483:
	.long	LASFDE483-EH_frame1
	.quad	LFB257-.
	.set L$set$1163,LFE257-LFB257
	.quad L$set$1163
	.byte	0x0
	.byte	0x4
	.set L$set$1164,LCFI1393-LFB257
	.long L$set$1164
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1165,LCFI1394-LCFI1393
	.long L$set$1165
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1166,LCFI1400-LCFI1394
	.long L$set$1166
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE483:
.globl _smpHash_core_add_now.eh
_smpHash_core_add_now.eh:
LSFDE485:
	.set L$set$1167,LEFDE485-LASFDE485
	.long L$set$1167
LASFDE485:
	.long	LASFDE485-EH_frame1
	.quad	LFB251-.
	.set L$set$1168,LFE251-LFB251
	.quad L$set$1168
	.byte	0x0
	.byte	0x4
	.set L$set$1169,LCFI1401-LFB251
	.long L$set$1169
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1170,LCFI1402-LCFI1401
	.long L$set$1170
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1171,LCFI1408-LCFI1402
	.long L$set$1171
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE485:
.globl _smpHash_core_copy.eh
_smpHash_core_copy.eh:
LSFDE487:
	.set L$set$1172,LEFDE487-LASFDE487
	.long L$set$1172
LASFDE487:
	.long	LASFDE487-EH_frame1
	.quad	LFB255-.
	.set L$set$1173,LFE255-LFB255
	.quad L$set$1173
	.byte	0x0
	.byte	0x4
	.set L$set$1174,LCFI1409-LFB255
	.long L$set$1174
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1175,LCFI1410-LCFI1409
	.long L$set$1175
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1176,LCFI1415-LCFI1410
	.long L$set$1176
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE487:
.globl _smpHash_add_now.eh
_smpHash_add_now.eh:
LSFDE489:
	.set L$set$1177,LEFDE489-LASFDE489
	.long L$set$1177
LASFDE489:
	.long	LASFDE489-EH_frame1
	.quad	LFB250-.
	.set L$set$1178,LFE250-LFB250
	.quad L$set$1178
	.byte	0x0
	.byte	0x4
	.set L$set$1179,LCFI1416-LFB250
	.long L$set$1179
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1180,LCFI1417-LCFI1416
	.long L$set$1180
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1181,LCFI1423-LCFI1417
	.long L$set$1181
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE489:
.globl _smp_println.eh
_smp_println.eh:
LSFDE491:
	.set L$set$1182,LEFDE491-LASFDE491
	.long L$set$1182
LASFDE491:
	.long	LASFDE491-EH_frame1
	.quad	LFB241-.
	.set L$set$1183,LFE241-LFB241
	.quad L$set$1183
	.byte	0x0
	.byte	0x4
	.set L$set$1184,LCFI1424-LFB241
	.long L$set$1184
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1185,LCFI1425-LCFI1424
	.long L$set$1185
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1186,LCFI1431-LCFI1425
	.long L$set$1186
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE491:
.globl _smpGlobal_println_arg.eh
_smpGlobal_println_arg.eh:
LSFDE493:
	.set L$set$1187,LEFDE493-LASFDE493
	.long L$set$1187
LASFDE493:
	.long	LASFDE493-EH_frame1
	.quad	LFB242-.
	.set L$set$1188,LFE242-LFB242
	.quad L$set$1188
	.byte	0x0
	.byte	0x4
	.set L$set$1189,LCFI1432-LFB242
	.long L$set$1189
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1190,LCFI1433-LCFI1432
	.long L$set$1190
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1191,LCFI1435-LCFI1433
	.long L$set$1191
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE493:
.globl _test_regex.eh
_test_regex.eh:
LSFDE495:
	.set L$set$1192,LEFDE495-LASFDE495
	.long L$set$1192
LASFDE495:
	.long	LASFDE495-EH_frame1
	.quad	LFB147-.
	.set L$set$1193,LFE147-LFB147
	.quad L$set$1193
	.byte	0x0
	.byte	0x4
	.set L$set$1194,LCFI1436-LFB147
	.long L$set$1194
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1195,LCFI1437-LCFI1436
	.long L$set$1195
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1196,LCFI1442-LCFI1437
	.long L$set$1196
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE495:
.globl _smpGlobal_print_arg.eh
_smpGlobal_print_arg.eh:
LSFDE497:
	.set L$set$1197,LEFDE497-LASFDE497
	.long L$set$1197
LASFDE497:
	.long	LASFDE497-EH_frame1
	.quad	LFB238-.
	.set L$set$1198,LFE238-LFB238
	.quad L$set$1198
	.byte	0x0
	.byte	0x4
	.set L$set$1199,LCFI1443-LFB238
	.long L$set$1199
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1200,LCFI1444-LCFI1443
	.long L$set$1200
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1201,LCFI1450-LCFI1444
	.long L$set$1201
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE497:
.globl _smp_printf_arg.eh
_smp_printf_arg.eh:
LSFDE499:
	.set L$set$1202,LEFDE499-LASFDE499
	.long L$set$1202
LASFDE499:
	.long	LASFDE499-EH_frame1
	.quad	LFB240-.
	.set L$set$1203,LFE240-LFB240
	.quad L$set$1203
	.byte	0x0
	.byte	0x4
	.set L$set$1204,LCFI1451-LFB240
	.long L$set$1204
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1205,LCFI1452-LCFI1451
	.long L$set$1205
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1206,LCFI1458-LCFI1452
	.long L$set$1206
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE499:
.globl _smp_printf.eh
_smp_printf.eh:
LSFDE501:
	.set L$set$1207,LEFDE501-LASFDE501
	.long L$set$1207
LASFDE501:
	.long	LASFDE501-EH_frame1
	.quad	LFB239-.
	.set L$set$1208,LFE239-LFB239
	.quad L$set$1208
	.byte	0x0
	.byte	0x4
	.set L$set$1209,LCFI1459-LFB239
	.long L$set$1209
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1210,LCFI1460-LCFI1459
	.long L$set$1210
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1211,LCFI1466-LCFI1460
	.long L$set$1211
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE501:
.globl _smpGlobal_class_arg.eh
_smpGlobal_class_arg.eh:
LSFDE503:
	.set L$set$1212,LEFDE503-LASFDE503
	.long L$set$1212
LASFDE503:
	.long	LASFDE503-EH_frame1
	.quad	LFB233-.
	.set L$set$1213,LFE233-LFB233
	.quad L$set$1213
	.byte	0x0
	.byte	0x4
	.set L$set$1214,LCFI1467-LFB233
	.long L$set$1214
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1215,LCFI1468-LCFI1467
	.long L$set$1215
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1216,LCFI1474-LCFI1468
	.long L$set$1216
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE503:
.globl _test_hash.eh
_test_hash.eh:
LSFDE505:
	.set L$set$1217,LEFDE505-LASFDE505
	.long L$set$1217
LASFDE505:
	.long	LASFDE505-EH_frame1
	.quad	LFB149-.
	.set L$set$1218,LFE149-LFB149
	.quad L$set$1218
	.byte	0x0
	.byte	0x4
	.set L$set$1219,LCFI1475-LFB149
	.long L$set$1219
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1220,LCFI1476-LCFI1475
	.long L$set$1220
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1221,LCFI1482-LCFI1476
	.long L$set$1221
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE505:
.globl _smpThrown_gc_mark.eh
_smpThrown_gc_mark.eh:
LSFDE507:
	.set L$set$1222,LEFDE507-LASFDE507
	.long L$set$1222
LASFDE507:
	.long	LASFDE507-EH_frame1
	.quad	LFB369-.
	.set L$set$1223,LFE369-LFB369
	.quad L$set$1223
	.byte	0x0
	.byte	0x4
	.set L$set$1224,LCFI1483-LFB369
	.long L$set$1224
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1225,LCFI1484-LCFI1483
	.long L$set$1225
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1226,LCFI1489-LCFI1484
	.long L$set$1226
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE507:
.globl _smpException_gc_mark.eh
_smpException_gc_mark.eh:
LSFDE509:
	.set L$set$1227,LEFDE509-LASFDE509
	.long L$set$1227
LASFDE509:
	.long	LASFDE509-EH_frame1
	.quad	LFB189-.
	.set L$set$1228,LFE189-LFB189
	.quad L$set$1228
	.byte	0x0
	.byte	0x4
	.set L$set$1229,LCFI1490-LFB189
	.long L$set$1229
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1230,LCFI1491-LCFI1490
	.long L$set$1230
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1231,LCFI1493-LCFI1491
	.long L$set$1231
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE509:
.globl _smpHash_gc_mark.eh
_smpHash_gc_mark.eh:
LSFDE511:
	.set L$set$1232,LEFDE511-LASFDE511
	.long L$set$1232
LASFDE511:
	.long	LASFDE511-EH_frame1
	.quad	LFB256-.
	.set L$set$1233,LFE256-LFB256
	.quad L$set$1233
	.byte	0x0
	.byte	0x4
	.set L$set$1234,LCFI1494-LFB256
	.long L$set$1234
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1235,LCFI1495-LCFI1494
	.long L$set$1235
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1236,LCFI1501-LCFI1495
	.long L$set$1236
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE511:
.globl _smpArray_gc_mark.eh
_smpArray_gc_mark.eh:
LSFDE513:
	.set L$set$1237,LEFDE513-LASFDE513
	.long L$set$1237
LASFDE513:
	.long	LASFDE513-EH_frame1
	.quad	LFB168-.
	.set L$set$1238,LFE168-LFB168
	.quad L$set$1238
	.byte	0x0
	.byte	0x4
	.set L$set$1239,LCFI1502-LFB168
	.long L$set$1239
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1240,LCFI1503-LCFI1502
	.long L$set$1240
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1241,LCFI1509-LCFI1503
	.long L$set$1241
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE513:
.globl _smpListBuffer_gc_mark.eh
_smpListBuffer_gc_mark.eh:
LSFDE515:
	.set L$set$1242,LEFDE515-LASFDE515
	.long L$set$1242
LASFDE515:
	.long	LASFDE515-EH_frame1
	.quad	LFB312-.
	.set L$set$1243,LFE312-LFB312
	.quad L$set$1243
	.byte	0x0
	.byte	0x4
	.set L$set$1244,LCFI1510-LFB312
	.long L$set$1244
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1245,LCFI1511-LCFI1510
	.long L$set$1245
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1246,LCFI1513-LCFI1511
	.long L$set$1246
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE515:
.globl _smpPair_gc_mark.eh
_smpPair_gc_mark.eh:
LSFDE517:
	.set L$set$1247,LEFDE517-LASFDE517
	.long L$set$1247
LASFDE517:
	.long	LASFDE517-EH_frame1
	.quad	LFB327-.
	.set L$set$1248,LFE327-LFB327
	.quad L$set$1248
	.byte	0x0
	.byte	0x4
	.set L$set$1249,LCFI1514-LFB327
	.long L$set$1249
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1250,LCFI1515-LCFI1514
	.long L$set$1250
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1251,LCFI1519-LCFI1515
	.long L$set$1251
	.byte	0x83
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.align 3
LEFDE517:
.globl _smpFunction_gc_mark.eh
_smpFunction_gc_mark.eh:
LSFDE519:
	.set L$set$1252,LEFDE519-LASFDE519
	.long L$set$1252
LASFDE519:
	.long	LASFDE519-EH_frame1
	.quad	LFB224-.
	.set L$set$1253,LFE224-LFB224
	.quad L$set$1253
	.byte	0x0
	.byte	0x4
	.set L$set$1254,LCFI1520-LFB224
	.long L$set$1254
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1255,LCFI1521-LCFI1520
	.long L$set$1255
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1256,LCFI1527-LCFI1521
	.long L$set$1256
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE519:
.globl _smpList_gc_mark.eh
_smpList_gc_mark.eh:
LSFDE521:
	.set L$set$1257,LEFDE521-LASFDE521
	.long L$set$1257
LASFDE521:
	.long	LASFDE521-EH_frame1
	.quad	LFB300-.
	.set L$set$1258,LFE300-LFB300
	.quad L$set$1258
	.byte	0x0
	.byte	0x4
	.set L$set$1259,LCFI1528-LFB300
	.long L$set$1259
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1260,LCFI1529-LCFI1528
	.long L$set$1260
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1261,LCFI1533-LCFI1529
	.long L$set$1261
	.byte	0x83
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.align 3
LEFDE521:
.globl _smpTypeError_gc_mark.eh
_smpTypeError_gc_mark.eh:
LSFDE523:
	.set L$set$1262,LEFDE523-LASFDE523
	.long L$set$1262
LASFDE523:
	.long	LASFDE523-EH_frame1
	.quad	LFB195-.
	.set L$set$1263,LFE195-LFB195
	.quad L$set$1263
	.byte	0x0
	.byte	0x4
	.set L$set$1264,LCFI1534-LFB195
	.long L$set$1264
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1265,LCFI1535-LCFI1534
	.long L$set$1265
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1266,LCFI1538-LCFI1535
	.long L$set$1266
	.byte	0x83
	.byte	0x4
	.byte	0x8c
	.byte	0x3
	.align 3
LEFDE523:
.globl _gc_sweep.eh
_gc_sweep.eh:
LSFDE525:
	.set L$set$1267,LEFDE525-LASFDE525
	.long L$set$1267
LASFDE525:
	.long	LASFDE525-EH_frame1
	.quad	LFB84-.
	.set L$set$1268,LFE84-LFB84
	.quad L$set$1268
	.byte	0x0
	.byte	0x4
	.set L$set$1269,LCFI1539-LFB84
	.long L$set$1269
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1270,LCFI1540-LCFI1539
	.long L$set$1270
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1271,LCFI1546-LCFI1540
	.long L$set$1271
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE525:
.globl _gc_run.eh
_gc_run.eh:
LSFDE527:
	.set L$set$1272,LEFDE527-LASFDE527
	.long L$set$1272
LASFDE527:
	.long	LASFDE527-EH_frame1
	.quad	LFB80-.
	.set L$set$1273,LFE80-LFB80
	.quad L$set$1273
	.byte	0x0
	.byte	0x4
	.set L$set$1274,LCFI1547-LFB80
	.long L$set$1274
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1275,LCFI1548-LCFI1547
	.long L$set$1275
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1276,LCFI1554-LCFI1548
	.long L$set$1276
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE527:
.globl _gc_stack_push.eh
_gc_stack_push.eh:
LSFDE529:
	.set L$set$1277,LEFDE529-LASFDE529
	.long L$set$1277
LASFDE529:
	.long	LASFDE529-EH_frame1
	.quad	LFB79-.
	.set L$set$1278,LFE79-LFB79
	.quad L$set$1278
	.byte	0x0
	.byte	0x4
	.set L$set$1279,LCFI1555-LFB79
	.long L$set$1279
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1280,LCFI1556-LCFI1555
	.long L$set$1280
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1281,LCFI1562-LCFI1556
	.long L$set$1281
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE529:
.globl _smpType_def_general.eh
_smpType_def_general.eh:
LSFDE531:
	.set L$set$1282,LEFDE531-LASFDE531
	.long L$set$1282
LASFDE531:
	.long	LASFDE531-EH_frame1
	.quad	LFB378-.
	.set L$set$1283,LFE378-LFB378
	.quad L$set$1283
	.byte	0x0
	.byte	0x4
	.set L$set$1284,LCFI1563-LFB378
	.long L$set$1284
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1285,LCFI1564-LCFI1563
	.long L$set$1285
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1286,LCFI1570-LCFI1564
	.long L$set$1286
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE531:
.globl _smpType_defvar.eh
_smpType_defvar.eh:
LSFDE533:
	.set L$set$1287,LEFDE533-LASFDE533
	.long L$set$1287
LASFDE533:
	.long	LASFDE533-EH_frame1
	.quad	LFB380-.
	.set L$set$1288,LFE380-LFB380
	.quad L$set$1288
	.byte	0x0
	.byte	0x4
	.set L$set$1289,LCFI1571-LFB380
	.long L$set$1289
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1290,LCFI1572-LCFI1571
	.long L$set$1290
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1291,LCFI1574-LCFI1572
	.long L$set$1291
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE533:
.globl _smpType_def.eh
_smpType_def.eh:
LSFDE535:
	.set L$set$1292,LEFDE535-LASFDE535
	.long L$set$1292
LASFDE535:
	.long	LASFDE535-EH_frame1
	.quad	LFB379-.
	.set L$set$1293,LFE379-LFB379
	.quad L$set$1293
	.byte	0x0
	.byte	0x4
	.set L$set$1294,LCFI1575-LFB379
	.long L$set$1294
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1295,LCFI1576-LCFI1575
	.long L$set$1295
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1296,LCFI1578-LCFI1576
	.long L$set$1296
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE535:
.globl _smpFunction_create_class.eh
_smpFunction_create_class.eh:
LSFDE537:
	.set L$set$1297,LEFDE537-LASFDE537
	.long L$set$1297
LASFDE537:
	.long	LASFDE537-EH_frame1
	.quad	LFB221-.
	.set L$set$1298,LFE221-LFB221
	.quad L$set$1298
	.byte	0x0
	.byte	0x4
	.set L$set$1299,LCFI1579-LFB221
	.long L$set$1299
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1300,LCFI1580-LCFI1579
	.long L$set$1300
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1301,LCFI1586-LCFI1580
	.long L$set$1301
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE537:
.globl _smpType_abstract_def.eh
_smpType_abstract_def.eh:
LSFDE539:
	.set L$set$1302,LEFDE539-LASFDE539
	.long L$set$1302
LASFDE539:
	.long	LASFDE539-EH_frame1
	.quad	LFB376-.
	.set L$set$1303,LFE376-LFB376
	.quad L$set$1303
	.byte	0x0
	.byte	0x4
	.set L$set$1304,LCFI1587-LFB376
	.long L$set$1304
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1305,LCFI1588-LCFI1587
	.long L$set$1305
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1306,LCFI1594-LCFI1588
	.long L$set$1306
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE539:
.globl _smpPair_create_class.eh
_smpPair_create_class.eh:
LSFDE541:
	.set L$set$1307,LEFDE541-LASFDE541
	.long L$set$1307
LASFDE541:
	.long	LASFDE541-EH_frame1
	.quad	LFB323-.
	.set L$set$1308,LFE323-LFB323
	.quad L$set$1308
	.byte	0x0
	.byte	0x4
	.set L$set$1309,LCFI1595-LFB323
	.long L$set$1309
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1310,LCFI1596-LCFI1595
	.long L$set$1310
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1311,LCFI1602-LCFI1596
	.long L$set$1311
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE541:
.globl _smpNil_create_class.eh
_smpNil_create_class.eh:
LSFDE543:
	.set L$set$1312,LEFDE543-LASFDE543
	.long L$set$1312
LASFDE543:
	.long	LASFDE543-EH_frame1
	.quad	LFB315-.
	.set L$set$1313,LFE315-LFB315
	.quad L$set$1313
	.byte	0x0
	.byte	0x4
	.set L$set$1314,LCFI1603-LFB315
	.long L$set$1314
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1315,LCFI1604-LCFI1603
	.long L$set$1315
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1316,LCFI1610-LCFI1604
	.long L$set$1316
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE543:
.globl _smpList_create_class.eh
_smpList_create_class.eh:
LSFDE545:
	.set L$set$1317,LEFDE545-LASFDE545
	.long L$set$1317
LASFDE545:
	.long	LASFDE545-EH_frame1
	.quad	LFB293-.
	.set L$set$1318,LFE293-LFB293
	.quad L$set$1318
	.byte	0x0
	.byte	0x4
	.set L$set$1319,LCFI1611-LFB293
	.long L$set$1319
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1320,LCFI1612-LCFI1611
	.long L$set$1320
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1321,LCFI1618-LCFI1612
	.long L$set$1321
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE545:
.globl _smpThrown_create_class.eh
_smpThrown_create_class.eh:
LSFDE547:
	.set L$set$1322,LEFDE547-LASFDE547
	.long L$set$1322
LASFDE547:
	.long	LASFDE547-EH_frame1
	.quad	LFB366-.
	.set L$set$1323,LFE366-LFB366
	.quad L$set$1323
	.byte	0x0
	.byte	0x4
	.set L$set$1324,LCFI1619-LFB366
	.long L$set$1324
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1325,LCFI1620-LCFI1619
	.long L$set$1325
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1326,LCFI1626-LCFI1620
	.long L$set$1326
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE547:
.globl _smpstrcreate_class.eh
_smpstrcreate_class.eh:
LSFDE549:
	.set L$set$1327,LEFDE549-LASFDE549
	.long L$set$1327
LASFDE549:
	.long	LASFDE549-EH_frame1
	.quad	LFB345-.
	.set L$set$1328,LFE345-LFB345
	.quad L$set$1328
	.byte	0x0
	.byte	0x4
	.set L$set$1329,LCFI1627-LFB345
	.long L$set$1329
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1330,LCFI1628-LCFI1627
	.long L$set$1330
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1331,LCFI1634-LCFI1628
	.long L$set$1331
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE549:
.globl _scope_add.eh
_scope_add.eh:
LSFDE551:
	.set L$set$1332,LEFDE551-LASFDE551
	.long L$set$1332
LASFDE551:
	.long	LASFDE551-EH_frame1
	.quad	LFB130-.
	.set L$set$1333,LFE130-LFB130
	.quad L$set$1333
	.byte	0x0
	.byte	0x4
	.set L$set$1334,LCFI1635-LFB130
	.long L$set$1334
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1335,LCFI1636-LCFI1635
	.long L$set$1335
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1336,LCFI1638-LCFI1636
	.long L$set$1336
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE551:
.globl _smp_putclass.eh
_smp_putclass.eh:
LSFDE553:
	.set L$set$1337,LEFDE553-LASFDE553
	.long L$set$1337
LASFDE553:
	.long	LASFDE553-EH_frame1
	.quad	LFB74-.
	.set L$set$1338,LFE74-LFB74
	.quad L$set$1338
	.byte	0x0
	.byte	0x4
	.set L$set$1339,LCFI1639-LFB74
	.long L$set$1339
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1340,LCFI1640-LCFI1639
	.long L$set$1340
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1341,LCFI1646-LCFI1640
	.long L$set$1341
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE553:
.globl _test_arrays.eh
_test_arrays.eh:
LSFDE555:
	.set L$set$1342,LEFDE555-LASFDE555
	.long L$set$1342
LASFDE555:
	.long	LASFDE555-EH_frame1
	.quad	LFB148-.
	.set L$set$1343,LFE148-LFB148
	.quad L$set$1343
	.byte	0x0
	.byte	0x4
	.set L$set$1344,LCFI1647-LFB148
	.long L$set$1344
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1345,LCFI1648-LCFI1647
	.long L$set$1345
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1346,LCFI1654-LCFI1648
	.long L$set$1346
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE555:
.globl _test_gc.eh
_test_gc.eh:
LSFDE557:
	.set L$set$1347,LEFDE557-LASFDE557
	.long L$set$1347
LASFDE557:
	.long	LASFDE557-EH_frame1
	.quad	LFB140-.
	.set L$set$1348,LFE140-LFB140
	.quad L$set$1348
	.byte	0x0
	.byte	0x4
	.set L$set$1349,LCFI1655-LFB140
	.long L$set$1349
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1350,LCFI1656-LCFI1655
	.long L$set$1350
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1351,LCFI1662-LCFI1656
	.long L$set$1351
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE557:
.globl _smpGlobal_class_multiple.eh
_smpGlobal_class_multiple.eh:
LSFDE559:
	.set L$set$1352,LEFDE559-LASFDE559
	.long L$set$1352
LASFDE559:
	.long	LASFDE559-EH_frame1
	.quad	LFB232-.
	.set L$set$1353,LFE232-LFB232
	.quad L$set$1353
	.byte	0x0
	.byte	0x4
	.set L$set$1354,LCFI1663-LFB232
	.long L$set$1354
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1355,LCFI1664-LCFI1663
	.long L$set$1355
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1356,LCFI1670-LCFI1664
	.long L$set$1356
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE559:
.globl _smpGlobal_class.eh
_smpGlobal_class.eh:
LSFDE561:
	.set L$set$1357,LEFDE561-LASFDE561
	.long L$set$1357
LASFDE561:
	.long	LASFDE561-EH_frame1
	.quad	LFB231-.
	.set L$set$1358,LFE231-LFB231
	.quad L$set$1358
	.byte	0x0
	.byte	0x4
	.set L$set$1359,LCFI1671-LFB231
	.long L$set$1359
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1360,LCFI1672-LCFI1671
	.long L$set$1360
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1361,LCFI1676-LCFI1672
	.long L$set$1361
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE561:
.globl _smpFloat_create_class.eh
_smpFloat_create_class.eh:
LSFDE563:
	.set L$set$1362,LEFDE563-LASFDE563
	.long L$set$1362
LASFDE563:
	.long	LASFDE563-EH_frame1
	.quad	LFB200-.
	.set L$set$1363,LFE200-LFB200
	.quad L$set$1363
	.byte	0x0
	.byte	0x4
	.set L$set$1364,LCFI1677-LFB200
	.long L$set$1364
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1365,LCFI1678-LCFI1677
	.long L$set$1365
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1366,LCFI1684-LCFI1678
	.long L$set$1366
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE563:
.globl _smpException_create_class.eh
_smpException_create_class.eh:
LSFDE565:
	.set L$set$1367,LEFDE565-LASFDE565
	.long L$set$1367
LASFDE565:
	.long	LASFDE565-EH_frame1
	.quad	LFB186-.
	.set L$set$1368,LFE186-LFB186
	.quad L$set$1368
	.byte	0x0
	.byte	0x4
	.set L$set$1369,LCFI1685-LFB186
	.long L$set$1369
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1370,LCFI1686-LCFI1685
	.long L$set$1370
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1371,LCFI1692-LCFI1686
	.long L$set$1371
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE565:
.globl _smpArray_create_class.eh
_smpArray_create_class.eh:
LSFDE567:
	.set L$set$1372,LEFDE567-LASFDE567
	.long L$set$1372
LASFDE567:
	.long	LASFDE567-EH_frame1
	.quad	LFB163-.
	.set L$set$1373,LFE163-LFB163
	.quad L$set$1373
	.byte	0x0
	.byte	0x4
	.set L$set$1374,LCFI1693-LFB163
	.long L$set$1374
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1375,LCFI1694-LCFI1693
	.long L$set$1375
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1376,LCFI1700-LCFI1694
	.long L$set$1376
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE567:
.globl _test_external_classes.eh
_test_external_classes.eh:
LSFDE569:
	.set L$set$1377,LEFDE569-LASFDE569
	.long L$set$1377
LASFDE569:
	.long	LASFDE569-EH_frame1
	.quad	LFB150-.
	.set L$set$1378,LFE150-LFB150
	.quad L$set$1378
	.byte	0x0
	.byte	0x4
	.set L$set$1379,LCFI1701-LFB150
	.long L$set$1379
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1380,LCFI1702-LCFI1701
	.long L$set$1380
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1381,LCFI1704-LCFI1702
	.long L$set$1381
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE569:
.globl _init_fundamental_classes.eh
_init_fundamental_classes.eh:
LSFDE571:
	.set L$set$1382,LEFDE571-LASFDE571
	.long L$set$1382
LASFDE571:
	.long	LASFDE571-EH_frame1
	.quad	LFB136-.
	.set L$set$1383,LFE136-LFB136
	.quad L$set$1383
	.byte	0x0
	.byte	0x4
	.set L$set$1384,LCFI1705-LFB136
	.long L$set$1384
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1385,LCFI1706-LCFI1705
	.long L$set$1385
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1386,LCFI1712-LCFI1706
	.long L$set$1386
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE571:
.globl _smpSymbol_create_class.eh
_smpSymbol_create_class.eh:
LSFDE573:
	.set L$set$1387,LEFDE573-LASFDE573
	.long L$set$1387
LASFDE573:
	.long	LASFDE573-EH_frame1
	.quad	LFB361-.
	.set L$set$1388,LFE361-LFB361
	.quad L$set$1388
	.byte	0x0
	.byte	0x4
	.set L$set$1389,LCFI1713-LFB361
	.long L$set$1389
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1390,LCFI1714-LCFI1713
	.long L$set$1390
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1391,LCFI1720-LCFI1714
	.long L$set$1391
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE573:
.globl _smpRegex_create_class.eh
_smpRegex_create_class.eh:
LSFDE575:
	.set L$set$1392,LEFDE575-LASFDE575
	.long L$set$1392
LASFDE575:
	.long	LASFDE575-EH_frame1
	.quad	LFB333-.
	.set L$set$1393,LFE333-LFB333
	.quad L$set$1393
	.byte	0x0
	.byte	0x4
	.set L$set$1394,LCFI1721-LFB333
	.long L$set$1394
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1395,LCFI1722-LCFI1721
	.long L$set$1395
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1396,LCFI1728-LCFI1722
	.long L$set$1396
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE575:
.globl _smpNumber_create_class.eh
_smpNumber_create_class.eh:
LSFDE577:
	.set L$set$1397,LEFDE577-LASFDE577
	.long L$set$1397
LASFDE577:
	.long	LASFDE577-EH_frame1
	.quad	LFB322-.
	.set L$set$1398,LFE322-LFB322
	.quad L$set$1398
	.byte	0x0
	.byte	0x4
	.set L$set$1399,LCFI1729-LFB322
	.long L$set$1399
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1400,LCFI1730-LCFI1729
	.long L$set$1400
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1401,LCFI1734-LCFI1730
	.long L$set$1401
	.byte	0x83
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.align 3
LEFDE577:
.globl _smpListBuffer_create_class.eh
_smpListBuffer_create_class.eh:
LSFDE579:
	.set L$set$1402,LEFDE579-LASFDE579
	.long L$set$1402
LASFDE579:
	.long	LASFDE579-EH_frame1
	.quad	LFB310-.
	.set L$set$1403,LFE310-LFB310
	.quad L$set$1403
	.byte	0x0
	.byte	0x4
	.set L$set$1404,LCFI1735-LFB310
	.long L$set$1404
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1405,LCFI1736-LCFI1735
	.long L$set$1405
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1406,LCFI1742-LCFI1736
	.long L$set$1406
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE579:
.globl _smpInteger_create_class.eh
_smpInteger_create_class.eh:
LSFDE581:
	.set L$set$1407,LEFDE581-LASFDE581
	.long L$set$1407
LASFDE581:
	.long	LASFDE581-EH_frame1
	.quad	LFB264-.
	.set L$set$1408,LFE264-LFB264
	.quad L$set$1408
	.byte	0x0
	.byte	0x4
	.set L$set$1409,LCFI1743-LFB264
	.long L$set$1409
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1410,LCFI1744-LCFI1743
	.long L$set$1410
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1411,LCFI1750-LCFI1744
	.long L$set$1411
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE581:
.globl _smpHash_create_class.eh
_smpHash_create_class.eh:
LSFDE583:
	.set L$set$1412,LEFDE583-LASFDE583
	.long L$set$1412
LASFDE583:
	.long	LASFDE583-EH_frame1
	.quad	LFB249-.
	.set L$set$1413,LFE249-LFB249
	.quad L$set$1413
	.byte	0x0
	.byte	0x4
	.set L$set$1414,LCFI1751-LFB249
	.long L$set$1414
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1415,LCFI1752-LCFI1751
	.long L$set$1415
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1416,LCFI1758-LCFI1752
	.long L$set$1416
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE583:
.globl _smpGlobal_create_class.eh
_smpGlobal_create_class.eh:
LSFDE585:
	.set L$set$1417,LEFDE585-LASFDE585
	.long L$set$1417
LASFDE585:
	.long	LASFDE585-EH_frame1
	.quad	LFB228-.
	.set L$set$1418,LFE228-LFB228
	.quad L$set$1418
	.byte	0x0
	.byte	0x4
	.set L$set$1419,LCFI1759-LFB228
	.long L$set$1419
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1420,LCFI1760-LCFI1759
	.long L$set$1420
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1421,LCFI1765-LCFI1760
	.long L$set$1421
	.byte	0x83
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.align 3
LEFDE585:
.globl _init_required_classes.eh
_init_required_classes.eh:
LSFDE587:
	.set L$set$1422,LEFDE587-LASFDE587
	.long L$set$1422
LASFDE587:
	.long	LASFDE587-EH_frame1
	.quad	LFB135-.
	.set L$set$1423,LFE135-LFB135
	.quad L$set$1423
	.byte	0x0
	.byte	0x4
	.set L$set$1424,LCFI1766-LFB135
	.long L$set$1424
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1425,LCFI1767-LCFI1766
	.long L$set$1425
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE587:
.globl _init_smp_classes.eh
_init_smp_classes.eh:
LSFDE589:
	.set L$set$1426,LEFDE589-LASFDE589
	.long L$set$1426
LASFDE589:
	.long	LASFDE589-EH_frame1
	.quad	LFB134-.
	.set L$set$1427,LFE134-LFB134
	.quad L$set$1427
	.byte	0x0
	.byte	0x4
	.set L$set$1428,LCFI1768-LFB134
	.long L$set$1428
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1429,LCFI1769-LCFI1768
	.long L$set$1429
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1430,LCFI1771-LCFI1769
	.long L$set$1430
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE589:
.globl _main.eh
_main.eh:
LSFDE591:
	.set L$set$1431,LEFDE591-LASFDE591
	.long L$set$1431
LASFDE591:
	.long	LASFDE591-EH_frame1
	.quad	LFB384-.
	.set L$set$1432,LFE384-LFB384
	.quad L$set$1432
	.byte	0x0
	.byte	0x4
	.set L$set$1433,LCFI1772-LFB384
	.long L$set$1433
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1434,LCFI1773-LCFI1772
	.long L$set$1434
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1435,LCFI1779-LCFI1773
	.long L$set$1435
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE591:
.globl _minihash_fullclear.eh
_minihash_fullclear.eh:
LSFDE593:
	.set L$set$1436,LEFDE593-LASFDE593
	.long L$set$1436
LASFDE593:
	.long	LASFDE593-EH_frame1
	.quad	LFB88-.
	.set L$set$1437,LFE88-LFB88
	.quad L$set$1437
	.byte	0x0
	.byte	0x4
	.set L$set$1438,LCFI1780-LFB88
	.long L$set$1438
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1439,LCFI1781-LCFI1780
	.long L$set$1439
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1440,LCFI1787-LCFI1781
	.long L$set$1440
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE593:
.globl _smpTypeError_to_s.eh
_smpTypeError_to_s.eh:
LSFDE595:
	.set L$set$1441,LEFDE595-LASFDE595
	.long L$set$1441
LASFDE595:
	.long	LASFDE595-EH_frame1
	.quad	LFB199-.
	.set L$set$1442,LFE199-LFB199
	.quad L$set$1442
	.byte	0x0
	.byte	0x4
	.set L$set$1443,LCFI1788-LFB199
	.long L$set$1443
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1444,LCFI1789-LCFI1788
	.long L$set$1444
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1445,LCFI1795-LCFI1789
	.long L$set$1445
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE595:
.globl _test_listbuf.eh
_test_listbuf.eh:
LSFDE597:
	.set L$set$1446,LEFDE597-LASFDE597
	.long L$set$1446
LASFDE597:
	.long	LASFDE597-EH_frame1
	.quad	LFB145-.
	.set L$set$1447,LFE145-LFB145
	.quad L$set$1447
	.byte	0x0
	.byte	0x4
	.set L$set$1448,LCFI1796-LFB145
	.long L$set$1448
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1449,LCFI1797-LCFI1796
	.long L$set$1449
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1450,LCFI1803-LCFI1797
	.long L$set$1450
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE597:
.globl _smpException_to_s.eh
_smpException_to_s.eh:
LSFDE599:
	.set L$set$1451,LEFDE599-LASFDE599
	.long L$set$1451
LASFDE599:
	.long	LASFDE599-EH_frame1
	.quad	LFB193-.
	.set L$set$1452,LFE193-LFB193
	.quad L$set$1452
	.byte	0x0
	.byte	0x4
	.set L$set$1453,LCFI1804-LFB193
	.long L$set$1453
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1454,LCFI1805-LCFI1804
	.long L$set$1454
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1455,LCFI1811-LCFI1805
	.long L$set$1455
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE599:
.globl _smpHash_make_string.eh
_smpHash_make_string.eh:
LSFDE601:
	.set L$set$1456,LEFDE601-LASFDE601
	.long L$set$1456
LASFDE601:
	.long	LASFDE601-EH_frame1
	.quad	LFB263-.
	.set L$set$1457,LFE263-LFB263
	.quad L$set$1457
	.byte	0x0
	.byte	0x4
	.set L$set$1458,LCFI1812-LFB263
	.long L$set$1458
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1459,LCFI1813-LCFI1812
	.long L$set$1459
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1460,LCFI1819-LCFI1813
	.long L$set$1460
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE601:
.globl _smpHash_write.eh
_smpHash_write.eh:
LSFDE603:
	.set L$set$1461,LEFDE603-LASFDE603
	.long L$set$1461
LASFDE603:
	.long	LASFDE603-EH_frame1
	.quad	LFB262-.
	.set L$set$1462,LFE262-LFB262
	.quad L$set$1462
	.byte	0x0
	.byte	0x4
	.set L$set$1463,LCFI1820-LFB262
	.long L$set$1463
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1464,LCFI1821-LCFI1820
	.long L$set$1464
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1465,LCFI1823-LCFI1821
	.long L$set$1465
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE603:
.globl _smpHash_to_s.eh
_smpHash_to_s.eh:
LSFDE605:
	.set L$set$1466,LEFDE605-LASFDE605
	.long L$set$1466
LASFDE605:
	.long	LASFDE605-EH_frame1
	.quad	LFB261-.
	.set L$set$1467,LFE261-LFB261
	.quad L$set$1467
	.byte	0x0
	.byte	0x4
	.set L$set$1468,LCFI1824-LFB261
	.long L$set$1468
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1469,LCFI1825-LCFI1824
	.long L$set$1469
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1470,LCFI1827-LCFI1825
	.long L$set$1470
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE605:
.globl _smp_assert_eq.eh
_smp_assert_eq.eh:
LSFDE607:
	.set L$set$1471,LEFDE607-LASFDE607
	.long L$set$1471
LASFDE607:
	.long	LASFDE607-EH_frame1
	.quad	LFB138-.
	.set L$set$1472,LFE138-LFB138
	.quad L$set$1472
	.byte	0x0
	.byte	0x4
	.set L$set$1473,LCFI1828-LFB138
	.long L$set$1473
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1474,LCFI1829-LCFI1828
	.long L$set$1474
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1475,LCFI1831-LCFI1829
	.long L$set$1475
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE607:
.globl _test_bool.eh
_test_bool.eh:
LSFDE609:
	.set L$set$1476,LEFDE609-LASFDE609
	.long L$set$1476
LASFDE609:
	.long	LASFDE609-EH_frame1
	.quad	LFB146-.
	.set L$set$1477,LFE146-LFB146
	.quad L$set$1477
	.byte	0x0
	.byte	0x4
	.set L$set$1478,LCFI1832-LFB146
	.long L$set$1478
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1479,LCFI1833-LCFI1832
	.long L$set$1479
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1480,LCFI1839-LCFI1833
	.long L$set$1480
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE609:
.globl _test_lists.eh
_test_lists.eh:
LSFDE611:
	.set L$set$1481,LEFDE611-LASFDE611
	.long L$set$1481
LASFDE611:
	.long	LASFDE611-EH_frame1
	.quad	LFB143-.
	.set L$set$1482,LFE143-LFB143
	.quad L$set$1482
	.byte	0x0
	.byte	0x4
	.set L$set$1483,LCFI1840-LFB143
	.long L$set$1483
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1484,LCFI1841-LCFI1840
	.long L$set$1484
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1485,LCFI1847-LCFI1841
	.long L$set$1485
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE611:
.globl _test_strings.eh
_test_strings.eh:
LSFDE613:
	.set L$set$1486,LEFDE613-LASFDE613
	.long L$set$1486
LASFDE613:
	.long	LASFDE613-EH_frame1
	.quad	LFB141-.
	.set L$set$1487,LFE141-LFB141
	.quad L$set$1487
	.byte	0x0
	.byte	0x4
	.set L$set$1488,LCFI1848-LFB141
	.long L$set$1488
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1489,LCFI1849-LCFI1848
	.long L$set$1489
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1490,LCFI1855-LCFI1849
	.long L$set$1490
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE613:
.globl _test_nums.eh
_test_nums.eh:
LSFDE615:
	.set L$set$1491,LEFDE615-LASFDE615
	.long L$set$1491
LASFDE615:
	.long	LASFDE615-EH_frame1
	.quad	LFB139-.
	.set L$set$1492,LFE139-LFB139
	.quad L$set$1492
	.byte	0x0
	.byte	0x4
	.set L$set$1493,LCFI1856-LFB139
	.long L$set$1493
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1494,LCFI1857-LCFI1856
	.long L$set$1494
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1495,LCFI1863-LCFI1857
	.long L$set$1495
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE615:
.globl _run_tests.eh
_run_tests.eh:
LSFDE617:
	.set L$set$1496,LEFDE617-LASFDE617
	.long L$set$1496
LASFDE617:
	.long	LASFDE617-EH_frame1
	.quad	LFB153-.
	.set L$set$1497,LFE153-LFB153
	.quad L$set$1497
	.byte	0x0
	.byte	0x4
	.set L$set$1498,LCFI1864-LFB153
	.long L$set$1498
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1499,LCFI1865-LCFI1864
	.long L$set$1499
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1500,LCFI1869-LCFI1865
	.long L$set$1500
	.byte	0x8d
	.byte	0x3
	.byte	0x8c
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.align 3
LEFDE617:
.globl _smpObject_getclass.eh
_smpObject_getclass.eh:
LSFDE619:
	.set L$set$1501,LEFDE619-LASFDE619
	.long L$set$1501
LASFDE619:
	.long	LASFDE619-EH_frame1
	.quad	LFB111-.
	.set L$set$1502,LFE111-LFB111
	.quad L$set$1502
	.byte	0x0
	.byte	0x4
	.set L$set$1503,LCFI1870-LFB111
	.long L$set$1503
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1504,LCFI1871-LCFI1870
	.long L$set$1504
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1505,LCFI1877-LCFI1871
	.long L$set$1505
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.align 3
LEFDE619:
.globl _smpObject_funcall_arg.eh
_smpObject_funcall_arg.eh:
LSFDE621:
	.set L$set$1506,LEFDE621-LASFDE621
	.long L$set$1506
LASFDE621:
	.long	LASFDE621-EH_frame1
	.quad	LFB110-.
	.set L$set$1507,LFE110-LFB110
	.quad L$set$1507
	.byte	0x0
	.byte	0x4
	.set L$set$1508,LCFI1878-LFB110
	.long L$set$1508
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$1509,LCFI1879-LCFI1878
	.long L$set$1509
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$1510,LCFI1885-LCFI1879
	.long L$set$1510
	.byte	0x83
	.byte	0x7
	.byte	0x8c
	.byte	0x6
	.byte	0x8d
	.byte	0x5
	.byte	0x8e
	.byte	0x4
	.byte	0x8f
	.byte	0x3
	.align 3
LEFDE621:
	.subsections_via_symbols
