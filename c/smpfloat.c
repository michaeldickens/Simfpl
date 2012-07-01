/*
 *  smpfloat.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 6/27/11.
 *
 */

#include "smp_classes.h"

int smpfloat_create_class()
{
	smp_mpfr_rnd = MPFR_RNDZ; /* round towards 0 */
	smp_mpfr_default_prec = 53;
	mpfr_set_default_prec(smp_mpfr_default_prec);
	
	Object number = smp_getclass("Number");
	smpglobal_class("Float", &obj_core(SmpType, number), 0);
	Object floatclass = smp_getclass("Float");
	smptype_float = obj_core(SmpType, floatclass);
	
	smptype_id_float = smptype_id_get("Float");
	
	smptype_def(floatclass, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "clear", smpfun_init(&smpfloat_clear, 1, "Nil"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, "+", smpfun_init(&smpfloat_add, 2, "Number", "Number"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, "-", smpfun_init(&smpfloat_sub, 2, "Number", "Number"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, "*", smpfun_init(&smpfloat_mul, 2, "Number", "Number"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, "/", smpfun_init(&smpfloat_div, 2, "Number", "Number"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, "==", smpfun_init(&smpint_equalp, 2, "Bool", "Object"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, "!=", smpfun_init(&smpint_nequalp, 2, "Bool", "Object"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, "<", smpfun_init(&smpfloat_lt, 2, "Bool", "Object"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, "<=", smpfun_init(&smpfloat_le, 2, "Bool", "Object"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, ">=", smpfun_init(&smpfloat_ge, 2, "Bool", "Object"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, ">", smpfun_init(&smpfloat_gt, 2, "Bool", "Object"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, "eq?", smpfun_init(&smpfloat_eq, 2, "Bool", "Object"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, "equal?", smpfun_init(&smpfloat_equalp, 2, "Bool", "Object"));
	smptype_def(floatclass, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smpfloat_to_s, 1, "String"));
		
	mpfr_t *pi = smp_malloc(sizeof(mpfr_t));
	mpfr_init(*pi);
	mpfr_const_pi(*pi, smp_mpfr_rnd);
	smptype_defvar(number, SCOPE_CLASS_DATA, "PI", smpfloat_init_mpfr_ref(pi));

	mpfr_t *e = smp_malloc(sizeof(mpfr_t));
	mpfr_init(*e);
	mpfr_t one;
	mpfr_init_set_si(one, 1, smp_mpfr_rnd);
	mpfr_exp(*e, one, smp_mpfr_rnd);
	smptype_defvar(number, SCOPE_CLASS_DATA, "E", smpfloat_init_mpfr_ref(e));
	mpfr_clear(one);
	
	return 0;
}

Object smpfloat_init_mpfr(mpfr_t x)
{
	Object res = obj_init(&smptype_float);
	res.core = smp_malloc(sizeof(mpfr_t));
	mpfr_init_set(obj_core(mpfr_t, res), x, smp_mpfr_rnd);
	return res;
}

Object smpfloat_init_mpfr_ref(mpfr_t *x)
{
	Object res = obj_init(&smptype_float);
	res.core = (void *) x;
	return res;
}

Object smpfloat_init_cdouble(double d)
{
	mpfr_t *f = smp_malloc(sizeof(mpfr_t));
	mpfr_init_set_d(*f, d, smp_mpfr_rnd);
	Object res = smpfloat_init_mpfr_ref(f);
	return res;
}

Object smpfloat_init_str(const char *str)
{
	mpfr_t *f = smp_malloc(sizeof(mpfr_t));
	mpfr_init_set_str(*f, str, 0, smp_mpfr_rnd);
	Object res = smpfloat_init_mpfr_ref(f);
	return res;
}

Object smpfloat_clear(Object obj, int argc, Object argv[])
{
	mpfr_clear(obj_core(mpfr_t, obj));
	return smp_nil;
}

Object smpfloat_add(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_float)) {
		mpfr_t *f = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*f);
		mpfr_add(*f, obj_core(mpfr_t, obj), 
				obj_core(mpfr_t, argv[0]), smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(f);
	} else if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_add_z(*res, obj_core(mpfr_t, obj), obj_core(mpz_t, argv[0]), 
				smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(res);
	} else {
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	}
}

Object smpfloat_sub(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_float)) {
		mpfr_t *f = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*f);
		mpfr_sub(*f, obj_core(mpfr_t, obj), 
				obj_core(mpfr_t, argv[0]), smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(f);
	} else if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_sub_z(*res, obj_core(mpfr_t, obj), obj_core(mpz_t, argv[0]), 
				smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(res);
	} else {
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	}
}

Object smpfloat_mul(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_float)) {
		mpfr_t *f = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*f);
		mpfr_mul(*f, obj_core(mpfr_t, obj), 
				obj_core(mpfr_t, argv[0]), smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(f);
	} else if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_mul_z(*res, obj_core(mpfr_t, obj), obj_core(mpz_t, argv[0]), 
				smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(res);
	} else {
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	}
}

Object smpfloat_div(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_float)) {
		mpfr_t *f = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*f);
		mpfr_div(*f, obj_core(mpfr_t, obj), 
				obj_core(mpfr_t, argv[0]), smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(f);
	} else if (smptype_id_eq(argv[0], smptype_id_int)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_div_z(*res, obj_core(mpfr_t, obj), obj_core(mpz_t, argv[0]), 
				smp_mpfr_rnd);
		return smpfloat_init_mpfr_ref(res);
	} else {
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	}
}

int smpfloat_cmp_cint(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(argv[0], smptype_id_int)) {
		int num = mpfr_cmp_z(obj_core(mpfr_t, obj), obj_core(mpz_t, argv[0]));
		if (num > 0) num = 1;
		if (num < 0) num = -1;
		return num;
	} else if (smptype_id_eq(argv[0], smptype_id_float)) {
		int num = mpfr_cmp(obj_core(mpfr_t, obj), obj_core(mpfr_t, argv[0]));
		if (num > 0) num = 1;
		if (num < 0) num = -1;
		return num;		
	} else {
		return -2;
	}
}

Object smpfloat_cmp(Object obj, int argc, Object argv[])
{
	int num = smpfloat_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(NULL, argv[0]));
	
	return smpint_init_clong((long) num);
}

Object smpfloat_equalp(Object obj, int argc, Object argv[])
{
	int num = smpfloat_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num == 0);
}

Object smpfloat_nequalp(Object obj, int argc, Object argv[])
{
	int num = smpfloat_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num != 0);
}

Object smpfloat_lt(Object obj, int argc, Object argv[])
{
	int num = smpfloat_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num < 0);
}

Object smpfloat_le(Object obj, int argc, Object argv[])
{
	int num = smpfloat_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num <= 0);
}

Object smpfloat_ge(Object obj, int argc, Object argv[])
{
	int num = smpfloat_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num >= 0);
}

Object smpfloat_gt(Object obj, int argc, Object argv[])
{
	int num = smpfloat_cmp_cint(obj, argc, argv);
	if (num == -2)
		return smpglobal_throw(smptypeerr_init(smp_getclass("Number").type, 
				argv[0]));
	
	return smpbool_init(num > 0);
}

Object smpfloat_eq(Object obj, int argc, Object argv[])
{
	return smpfloat_equalp(obj, argc, argv);
}

Object smpfloat_to_s(Object obj, int argc, Object argv[])
{
	char fmt[100];
	int digits = (int) (smp_mpfr_default_prec * log10(2));
	
	if (argc > 0) {
		/* argv[0] indicates the precision. */
		smp_type_check(argv[0], "Integer");
		if (mpz_fits_sint_p(obj_core(mpz_t, argv[0]))) {
			digits = (int) mpz_get_si(obj_core(mpz_t, argv[0]));
		}
	}
	
	sprintf(fmt, "%%.%dR*f", digits);

	
	char *str;
	mpfr_asprintf(&str, fmt, smp_mpfr_rnd, obj_core(mpfr_t, obj));	
	return smpstr_init_ref(&str);
}

