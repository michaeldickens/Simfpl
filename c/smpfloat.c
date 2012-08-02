/*
 *  smpfloat.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 6/27/11.
 *
 */

int smpFloat_create_class()
{
	smp_mpfr_rnd = MPFR_RNDZ; /* round towards 0 */
	smp_mpfr_default_prec = 53;
	mpfr_set_default_prec(smp_mpfr_default_prec);
	
	Object number = smp_getclass("Number");
	smpGlobal_class("Float", &obj_core(SmpType, number), 0);
	Object floatclass = smp_getclass("Float");
	smpType_float = obj_core(SmpType, floatclass);
	
	smpType_id_float = smpType_id_get("Float");
	
	smpType_def(floatclass, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "clear", smpFunction_init(&smpFloat_clear, 1, "Nil"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "+", smpFunction_init(&smpFloat_add, 2, "Number", "Number"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "-", smpFunction_init(&smpFloat_sub, 2, "Number", "Number"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "*", smpFunction_init(&smpFloat_mul, 2, "Number", "Number"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "/", smpFunction_init(&smpFloat_div, 2, "Number", "Number"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "**", smpFunction_init(&smpFloat_pow, 2, "Number", "Number"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "cmp", smpFunction_init(&smpFloat_cmp, 2, "Integer", "Object"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "==", smpFunction_init(&smpInteger_equalp, 2, "Bool", "Object"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "!=", smpFunction_init(&smpInteger_nequalp, 2, "Bool", "Object"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "<", smpFunction_init(&smpFloat_lt, 2, "Bool", "Object"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "<=", smpFunction_init(&smpFloat_le, 2, "Bool", "Object"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, ">=", smpFunction_init(&smpFloat_ge, 2, "Bool", "Object"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, ">", smpFunction_init(&smpFloat_gt, 2, "Bool", "Object"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "eq?", smpFunction_init(&smpFloat_eq, 2, "Bool", "Object"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "equal?", smpFunction_init(&smpFloat_equalp, 2, "Bool", "Object"));
	smpType_def(floatclass, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpFloat_to_s, 1, "String"));
		
	mpfr_t *pi = smp_malloc(sizeof(mpfr_t));
	mpfr_init(*pi);
	mpfr_const_pi(*pi, smp_mpfr_rnd);
	smpType_defvar(number, SCOPE_CLASS_DATA, "PI", smpFloat_init_mpfr_ref(pi));

	mpfr_t *e = smp_malloc(sizeof(mpfr_t));
	mpfr_init(*e);
	mpfr_t one;
	mpfr_init_set_si(one, 1, smp_mpfr_rnd);
	mpfr_exp(*e, one, smp_mpfr_rnd);
	smpType_defvar(number, SCOPE_CLASS_DATA, "E", smpFloat_init_mpfr_ref(e));
	mpfr_clear(one);
	
	return 0;
}

Object smpFloat_init_mpfr(mpfr_t x)
{
	Object res = obj_init(&smpType_float);
	res.core = smp_malloc(sizeof(mpfr_t));
	mpfr_init_set(obj_core(mpfr_t, res), x, smp_mpfr_rnd);
	return res;
}

Object smpFloat_init_mpfr_ref(mpfr_t *x)
{
	Object res = obj_init(&smpType_float);
	res.core = (void *) x;
	return res;
}

Object smpFloat_init_cdouble(double d)
{
	mpfr_t *f = smp_malloc(sizeof(mpfr_t));
	mpfr_init_set_d(*f, d, smp_mpfr_rnd);
	Object res = smpFloat_init_mpfr_ref(f);
	return res;
}

Object smpFloat_init_str(const char *str)
{
	mpfr_t *f = smp_malloc(sizeof(mpfr_t));
	mpfr_init_set_str(*f, str, 0, smp_mpfr_rnd);
	Object res = smpFloat_init_mpfr_ref(f);
	return res;
}

Object smpFloat_clear(Object obj, int argc, Object argv[])
{
	mpfr_clear(obj_core(mpfr_t, obj));
	return smp_nil;
}

Object smpFloat_add(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_float)) {
		mpfr_t *f = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*f);
		mpfr_add(*f, obj_core(mpfr_t, obj), 
				obj_core(mpfr_t, argv[0]), smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(f);
	} else if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_add_z(*res, obj_core(mpfr_t, obj), obj_core(mpz_t, argv[0]), 
				smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(res);
	} else {
		return smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), 
				argv[0]));
	}
}

Object smpFloat_sub(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_float)) {
		mpfr_t *f = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*f);
		mpfr_sub(*f, obj_core(mpfr_t, obj), 
				obj_core(mpfr_t, argv[0]), smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(f);
	} else if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_sub_z(*res, obj_core(mpfr_t, obj), obj_core(mpz_t, argv[0]), 
				smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(res);
	} else {
		return smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), 
				argv[0]));
	}
}

Object smpFloat_mul(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_float)) {
		mpfr_t *f = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*f);
		mpfr_mul(*f, obj_core(mpfr_t, obj), 
				obj_core(mpfr_t, argv[0]), smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(f);
	} else if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_mul_z(*res, obj_core(mpfr_t, obj), obj_core(mpz_t, argv[0]), 
				smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(res);
	} else {
		return smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), 
				argv[0]));
	}
}

Object smpFloat_div(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_float)) {
		mpfr_t *f = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*f);
		mpfr_div(*f, obj_core(mpfr_t, obj), 
				obj_core(mpfr_t, argv[0]), smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(f);
	} else if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_div_z(*res, obj_core(mpfr_t, obj), obj_core(mpz_t, argv[0]), 
				smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(res);
	} else {
		return smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), 
				argv[0]));
	}
}

Object smpFloat_pow(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_float)) {
		mpfr_t *f = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*f);
		mpfr_pow(*f, obj_core(mpfr_t, obj), 
				obj_core(mpfr_t, argv[0]), smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(f);
	} else if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_pow_z(*res, obj_core(mpfr_t, obj), obj_core(mpz_t, argv[0]), 
				smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(res);
	} else {
		return smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), 
				argv[0]));
	}	
}

int smpFloat_cmp_cint(Object *err, Object obj, Object arg)
{
	if (smpType_id_eq(arg, smpType_id_int)) {
		int num = mpfr_cmp_z(obj_core(mpfr_t, obj), obj_core(mpz_t, arg));
		return num;
	} else if (smpType_id_eq(arg, smpType_id_float)) {
		int num = mpfr_cmp(obj_core(mpfr_t, obj), obj_core(mpfr_t, arg));
		return num;		
	} else {
		*err = smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), arg));
		return -2;
	}
}

Object smpFloat_cmp(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpFloat_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	return smpInteger_init_clong((long) num);
}

Object smpFloat_equalp(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpFloat_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num == 0);
}

Object smpFloat_nequalp(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpFloat_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num != 0);
}

Object smpFloat_lt(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpFloat_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num < 0);
}

Object smpFloat_le(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpFloat_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num <= 0);
}

Object smpFloat_ge(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpFloat_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num >= 0);
}

Object smpFloat_gt(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpFloat_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num > 0);
}

Object smpFloat_eq(Object obj, int argc, Object argv[])
{
	return smpFloat_equalp(obj, argc, argv);
}

Object smpFloat_to_s(Object obj, int argc, Object argv[])
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
	return smpString_init_ref(&str);
}

