/*
 *  smpint.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/27/11.
 *
 */

#include "smp_classes.h"

int smpint_create_class()
{
	/* Tells GMP to use the smp_ allocation functions instead of the built-in 
	 * ones.
	 */
	mp_set_memory_functions(&smp_malloc, &smp_realloc_size, &smp_free_size);
	
	smpglobal_class("Integer", &obj_core(SmpType, smp_getclass("Number")), 0);
	Object intclass = smp_getclass("Integer");
	smptype_int = obj_core(SmpType, intclass);
	
	smptype_id_int = smptype_id_get("Integer");
	
	smptype_def(intclass, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "clear", smpfun_init(&smpint_clear, 1, "Nil"));
//	smptype_def(intclass, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "gc_mark", smpfun_init(&smpint_gc_mark));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "+", smpfun_init(&smpint_add, 2, "Number", "Number"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "-", smpfun_init(&smpint_sub, 2, "Number", "Number"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "*", smpfun_init(&smpint_mul, 2, "Number", "Number"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "/", smpfun_init(&smpint_div, 2, "Number", "Number"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "%", smpfun_init(&smpint_mod, 2, "Integer", "Integer"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "<<", smpfun_init(&smpint_shl, 2, "Integer", "Integer"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, ">>", smpfun_init(&smpint_shr, 2, "Integer", "Integer"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "&", smpfun_init(&smpint_and, 2, "Integer", "Integer"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "|", smpfun_init(&smpint_ior, 2, "Integer", "Integer"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "^", smpfun_init(&smpint_xor, 2, "Integer", "Integer"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "==", smpfun_init(&smpint_equalp, 2, "Bool", "Object"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "!=", smpfun_init(&smpint_nequalp, 2, "Bool", "Object"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "<", smpfun_init(&smpint_lt, 2, "Bool", "Object"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "<=", smpfun_init(&smpint_le, 2, "Bool", "Object"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, ">=", smpfun_init(&smpint_ge, 2, "Bool", "Object"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, ">", smpfun_init(&smpint_gt, 2, "Bool", "Object"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "eq?", smpfun_init(&smpint_eq, 2, "Bool", "Object"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "equal?", smpfun_init(&smpint_equalp, 2, "Bool", "Object"));
	smptype_def(intclass, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smpint_to_s, 1, "String"));
	
		
	smpint_zero = smpint_init_clong(0);
	smpint_one = smpint_init_clong(1);
	
	return 0;
}

Object smpint_init_mpz(mpz_t x)
{
	Object res = obj_init(&smptype_int);
	res.core = smp_malloc(sizeof(mpz_t));
	mpz_init_set(obj_core(mpz_t, res), x);
	return res;
}

Object smpint_init_mpz_ref(mpz_t *x)
{
	Object res = obj_init(&smptype_int);
	res.core = (void *) x;
	return res;
}

Object smpint_init_clong(long x)
{
	mpz_t *z = smp_malloc(sizeof(mpz_t));
	mpz_init_set_si(*z, x);
	Object res = smpint_init_mpz_ref(z);
	return res;
}

Object smpint_init_str(const char *str)
{
	mpz_t *z = smp_malloc(sizeof(mpz_t));
	mpz_init_set_str(*z, str, 0);
	Object res = smpint_init_mpz_ref(z);
	return res;
}

Object smpint_clear(Object obj, int argc, Object argv[])
{
	mpz_clear(obj_core(mpz_t, obj));
	return smp_nil;
}

Object smpint_add(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_add(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpint_init_mpz_ref(z);
	} else if (smptype_id_eq(argv[0], smptype_id_float)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_add_z(*res, obj_core(mpfr_t, argv[0]), obj_core(mpz_t, obj), 
				smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(res);
	} else {
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	}
}

Object smpint_sub(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_sub(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpint_init_mpz_ref(z);
	} else if (smptype_id_eq(argv[0], smptype_id_float)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_sub_z(*res, obj_core(mpfr_t, argv[0]), obj_core(mpz_t, obj), 
				smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(res);
	} else {
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	}
}

Object smpint_mul(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_mul(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpint_init_mpz_ref(z);
	} else if (smptype_id_eq(argv[0], smptype_id_float)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_mul_z(*res, obj_core(mpfr_t, argv[0]), obj_core(mpz_t, obj), 
				smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(res);
	} else {
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	}
}

Object smpint_div(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_div(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpint_init_mpz_ref(z);
	} else if (smptype_id_eq(argv[0], smptype_id_float)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_div_z(*res, obj_core(mpfr_t, argv[0]), obj_core(mpz_t, obj), 
				smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(res);
	} else {
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	}
}

Object smpint_mod(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_mod(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpint_init_mpz_ref(z);
	} else {
		return smpglobal_throw(smptypeerr_init(&smptype_int, argv[0]));
	}
}

Object smpint_shl(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpz_t *x = &obj_core(mpz_t, argv[0]);
		if (mpz_fits_ulong_p(*x) == FALSE) {
			// TODO: Return Infinity.
			return smp_nil;
		}
		unsigned long bits = mpz_get_ui(*x);
		
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_mul_2exp(*z, obj_core(mpz_t, obj), bits);
		return smpint_init_mpz_ref(z);
	} else {
		return smpglobal_throw(smptypeerr_init(&smptype_int, argv[0]));
	}
}

Object smpint_shr(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpz_t *x = &obj_core(mpz_t, argv[0]);
		if (mpz_fits_ulong_p(*x) == FALSE) {
			// TODO: Return Infinity.
			return smp_nil;
		}
		unsigned long bits = mpz_get_ui(*x);
		
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_div_2exp(*z, obj_core(mpz_t, obj), bits);
		return smpint_init_mpz_ref(z);
	} else {
		return smpglobal_throw(smptypeerr_init(&smptype_int, argv[0]));
	}
}

Object smpint_and(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_and(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpint_init_mpz_ref(z);
	} else {
		return smpglobal_throw(smptypeerr_init(&smptype_int, argv[0]));
	}
}

Object smpint_ior(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_ior(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpint_init_mpz_ref(z);
	} else {
		return smpglobal_throw(smptypeerr_init(&smptype_int, argv[0]));
	}
}

Object smpint_xor(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_xor(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpint_init_mpz_ref(z);
	} else {
		return smpglobal_throw(smptypeerr_init(&smptype_int, argv[0]));
	}
}

int smpint_cmp_cint(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		int num = mpz_cmp(obj_core(mpz_t, obj), obj_core(mpz_t, argv[0]));
		if (num > 0) num = 1;
		if (num < 0) num = -1;
		return num;
	} else if (smptype_id_eq(argv[0], smptype_id_float)) {
		return smpfloat_cmp_cint(argv[0], 1, &obj);
	} else {
		return -2;
	}
}

Object smpint_cmp(Object obj, int argc, Object argv[])
{
	int num = smpint_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpint_init_clong((long) num);
}

Object smpint_equalp(Object obj, int argc, Object argv[])
{
	int num = smpint_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num == 0);
}

Object smpint_nequalp(Object obj, int argc, Object argv[])
{
	int num = smpint_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num != 0);
}

Object smpint_lt(Object obj, int argc, Object argv[])
{
	int num = smpint_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num < 0);
}

Object smpint_le(Object obj, int argc, Object argv[])
{
	int num = smpint_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num <= 0);
}

Object smpint_ge(Object obj, int argc, Object argv[])
{
	int num = smpint_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num >= 0);
}

Object smpint_gt(Object obj, int argc, Object argv[])
{
	int num = smpint_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num > 0);
}

Object smpint_eq(Object obj, int argc, Object argv[])
{
	return smpint_equalp(obj, argc, argv);
}

long smpint_to_clong(Object obj)
{
	return mpz_get_si(obj_core(mpz_t, obj));
}

Object smpint_to_s(Object obj, int argc, Object argv[])
{
	int base = 10;
	if (argc != 0) {
		smp_type_check(argv[0], "Integer");
		if (mpz_fits_sint_p(obj_core(mpz_t, argv[0])))
			base = (int) mpz_get_si(obj_core(mpz_t, argv[0]));
	}
	
	char *str = mpz_get_str(NULL, base, obj_core(mpz_t, obj));
	return smpstr_init_ref(&str);
}
