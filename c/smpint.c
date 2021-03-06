/*
 *  smpint.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/27/11.
 *
 */

int smpInteger_create_class()
{
	/* Tells GMP to use the smp_ allocation functions instead of the built-in 
	 * ones.
	 */
	mp_set_memory_functions(&smp_malloc_fun, &smp_realloc_size, &smp_free_size);
	
	smpGlobal_class("Integer", &obj_core(SmpType, smp_getclass("Number")), 0);
	Object intclass = smp_getclass("Integer");
	smpType_int = obj_core(SmpType, intclass);
	
	smpType_id_int = smpType_id_get("Integer");
	
	smpType_def(intclass, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "clear", smpFunction_init(&smpInteger_clear, 1, "Nil"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "+", smpFunction_init(&smpInteger_add, 2, "Number", "Number"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "-", smpFunction_init(&smpInteger_sub, 2, "Number", "Number"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "*", smpFunction_init(&smpInteger_mul, 2, "Number", "Number"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "/", smpFunction_init(&smpInteger_div, 2, "Number", "Number"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "%", smpFunction_init(&smpInteger_mod, 2, "Integer", "Integer"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "mod", smpFunction_init(&smpInteger_mod, 2, "Integer", "Integer"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "**", smpFunction_init(&smpInteger_pow, 2, "Number", "Number"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "<<", smpFunction_init(&smpInteger_shl, 2, "Integer", "Integer"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, ">>", smpFunction_init(&smpInteger_shr, 2, "Integer", "Integer"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "&", smpFunction_init(&smpInteger_and, 2, "Integer", "Integer"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "|", smpFunction_init(&smpInteger_ior, 2, "Integer", "Integer"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "^", smpFunction_init(&smpInteger_xor, 2, "Integer", "Integer"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "inc", smpFunction_init(&smpInteger_inc, 1, "Integer"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "dec", smpFunction_init(&smpInteger_dec, 1, "Integer"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "cmp", smpFunction_init(&smpInteger_cmp, 2, "Integer", "Object"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "==", smpFunction_init(&smpInteger_equalp, 2, "Bool", "Object"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "!=", smpFunction_init(&smpInteger_nequalp, 2, "Bool", "Object"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "<", smpFunction_init(&smpInteger_lt, 2, "Bool", "Object"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "<=", smpFunction_init(&smpInteger_le, 2, "Bool", "Object"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, ">=", smpFunction_init(&smpInteger_ge, 2, "Bool", "Object"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, ">", smpFunction_init(&smpInteger_gt, 2, "Bool", "Object"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "eq?", smpFunction_init(&smpInteger_eq, 2, "Bool", "Object"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "equal?", smpFunction_init(&smpInteger_equalp, 2, "Bool", "Object"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "range", smpFunction_init(&smpInteger_range, 4, "List", "Integer", "&optional", "String"));
	smpType_def(intclass, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpInteger_to_s, 3, "String", "&optional", "Integer"));
	
		
	smpInteger_zero = smpInteger_init_clong(0);
	smpInteger_one = smpInteger_init_clong(1);
	
	return 0;
}

Object smpInteger_init_mpz(mpz_t x)
{
	Object res = obj_init(&smpType_int);
	res.core = smp_malloc(sizeof(mpz_t));
	mpz_init_set(obj_core(mpz_t, res), x);
	return res;
}

Object smpInteger_init_mpz_ref(mpz_t *x)
{
	Object res = obj_init(&smpType_int);
	res.core = (void *) x;
	return res;
}

Object smpInteger_init_clong(long x)
{
	mpz_t *z = smp_malloc(sizeof(mpz_t));
	mpz_init_set_si(*z, x);
	Object res = smpInteger_init_mpz_ref(z);
	return res;
}

Object smpInteger_init_str(const char *str)
{
	mpz_t *z = smp_malloc(sizeof(mpz_t));
	mpz_init_set_str(*z, str, 0);
	Object res = smpInteger_init_mpz_ref(z);
	return res;
}

Object smpInteger_clear(Object obj, int argc, Object argv[])
{
	mpz_clear(obj_core(mpz_t, obj));
	return smp_nil;
}

Object smpInteger_add(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_add(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpInteger_init_mpz_ref(z);
	} else if (smpType_id_eq(argv[0], smpType_id_float)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_add_z(*res, obj_core(mpfr_t, argv[0]), obj_core(mpz_t, obj), 
				smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(res);
	} else {
		return smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), 
				argv[0]));
	}
}

Object smpInteger_sub(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_sub(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpInteger_init_mpz_ref(z);
	} else if (smpType_id_eq(argv[0], smpType_id_float)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_sub_z(*res, obj_core(mpfr_t, argv[0]), obj_core(mpz_t, obj), 
				smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(res);
	} else {
		return smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), 
				argv[0]));
	}
}

Object smpInteger_mul(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_mul(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpInteger_init_mpz_ref(z);
	} else if (smpType_id_eq(argv[0], smpType_id_float)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_mul_z(*res, obj_core(mpfr_t, argv[0]), obj_core(mpz_t, obj), 
				smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(res);
	} else {
		return smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), 
				argv[0]));
	}
}

Object smpInteger_div(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_div(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpInteger_init_mpz_ref(z);
	} else if (smpType_id_eq(argv[0], smpType_id_float)) {
		mpfr_t *res = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*res);
		mpfr_div_z(*res, obj_core(mpfr_t, argv[0]), obj_core(mpz_t, obj), 
				smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(res);
	} else {
		return smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), 
				argv[0]));
	}
}

Object smpInteger_mod(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_mod(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpInteger_init_mpz_ref(z);
	} else {
		return smpGlobal_throw(smpTypeError_init(&smpType_int, argv[0]));
	}
}

Object smpInteger_pow(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpfr_t f;
		mpfr_init_set_z(f, obj_core(mpz_t, obj), smp_mpfr_rnd);
		mpfr_pow_z(f, f, obj_core(mpz_t, argv[0]), 
				smp_mpfr_rnd);
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpfr_get_z(*z, f, smp_mpfr_rnd);
		mpfr_clear(f);
		return smpInteger_init_mpz_ref(z);
	} else if (smpType_id_eq(argv[0], smpType_id_float)) {
		mpfr_t *f = smp_malloc(sizeof(mpfr_t));
		mpfr_init(*f);
		mpfr_pow(*f, obj_core(mpfr_t, obj), 
				obj_core(mpfr_t, argv[0]), smp_mpfr_rnd);
		return smpFloat_init_mpfr_ref(f);
	} else {
		return smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), 
				argv[0]));
	}	
}

Object smpInteger_shl(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpz_t *x = &obj_core(mpz_t, argv[0]);
		if (mpz_fits_ulong_p(*x) == FALSE) {
			// TODO: Return Infinity.
			return smp_nil;
		}
		unsigned long bits = mpz_get_ui(*x);
		
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_mul_2exp(*z, obj_core(mpz_t, obj), bits);
		return smpInteger_init_mpz_ref(z);
	} else {
		return smpGlobal_throw(smpTypeError_init(&smpType_int, argv[0]));
	}
}

Object smpInteger_shr(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpz_t *x = &obj_core(mpz_t, argv[0]);
		if (mpz_fits_ulong_p(*x) == FALSE) {
			// TODO: Return Infinity.
			return smp_nil;
		}
		unsigned long bits = mpz_get_ui(*x);
		
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_div_2exp(*z, obj_core(mpz_t, obj), bits);
		return smpInteger_init_mpz_ref(z);
	} else {
		return smpGlobal_throw(smpTypeError_init(&smpType_int, argv[0]));
	}
}

Object smpInteger_and(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_and(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpInteger_init_mpz_ref(z);
	} else {
		return smpGlobal_throw(smpTypeError_init(&smpType_int, argv[0]));
	}
}


Object smpInteger_ior(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_ior(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpInteger_init_mpz_ref(z);
	} else {
		return smpGlobal_throw(smpTypeError_init(&smpType_int, argv[0]));
	}
}

/* IMPORTANT: Operates on the second argument, not the object itself.
 */
Object smpInteger_not(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_com(*z, obj_core(mpz_t, argv[0]));
		return smpInteger_init_mpz_ref(z);
	} else {
		return smpGlobal_throw(smpTypeError_init(&smpType_int, argv[0]));
	}
}

Object smpInteger_xor(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_int)) {
		mpz_t *z = smp_malloc(sizeof(mpz_t));
		mpz_init(*z);
		mpz_xor(*z, obj_core(mpz_t, obj), 
				obj_core(mpz_t, argv[0]));
		return smpInteger_init_mpz_ref(z);
	} else {
		return smpGlobal_throw(smpTypeError_init(&smpType_int, argv[0]));
	}
}

Object smpInteger_inc(Object obj, int argc, Object argv[])
{
	return smpInteger_add(obj, 1, &smpInteger_one);
}

Object smpInteger_dec(Object obj, int argc, Object argv[])
{
	return smpInteger_sub(obj, 1, &smpInteger_one);
}

int smpInteger_cmp_cint(Object *err, Object obj, Object arg)
{
	if (smpType_id_eq(arg, smpType_id_int)) {
		int num = mpz_cmp(obj_core(mpz_t, obj), obj_core(mpz_t, arg));
		return num;
	} else if (smpType_id_eq(arg, smpType_id_float)) {
		return smpFloat_cmp_cint(err, arg, obj);
	} else {
		*err = smpGlobal_throw(smpTypeError_init(
				&obj_core(SmpType, smp_getclass("Number")), 
				arg));
		return -2;
	}
}

Object smpInteger_cmp(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpInteger_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	return smpInteger_init_clong((long) num);
}

Object smpInteger_equalp(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpInteger_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num == 0);
}

Object smpInteger_nequalp(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpInteger_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num != 0);
}

Object smpInteger_lt(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpInteger_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num < 0);
}

Object smpInteger_le(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpInteger_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num <= 0);
}

Object smpInteger_ge(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpInteger_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num >= 0);
}

Object smpInteger_gt(Object obj, int argc, Object argv[])
{
	Object err = smp_nil;
	int num = smpInteger_cmp_cint(&err, obj, argv[0]);
	if (smpType_id_eq(err, smpType_id_thrown))
		return err;
	
	return smpBool_init(num > 0);
}

Object smpInteger_eq(Object obj, int argc, Object argv[])
{
	return smpInteger_equalp(obj, argc, argv);
}

Object smpInteger_range(Object obj, int argc, Object argv[])
{
	/* 0: List
	 * 1: Array
	 */
	int res_type = 0;
	
	if (argc > 1) {
		if (smpString_equalp_cstr(argv[1], "Array"))
			res_type = 1;
		else if (smpString_equalp_cstr(argv[1], "List"))
			res_type = 0;
		else return smpGlobal_throw(smpException_init_fmt(
			smp_getclass("ArgumentError"), 
			"Invalid range type %s (expected \"Array\" or \"List\").", 
			argv[1]));
	}
	
	Object min = obj;
	Object ctr = min;
	Object max = argv[0];
	Object cmp_ret = smp_nil;
	Object res = smp_nil;
	
	;
	
	if (res_type == 0) {
		res = smp_nil;
		
		while (TRUE) {
			cmp_ret = smpObject_funcall(ctr, "<", 1, &max);
			check_for_thrown(cmp_ret, );
			if (!smpObject_truep_c(cmp_ret))
				break;
			
			res = smpObject_cons_c(ctr, res);
			ctr = smpObject_funcall(ctr, "inc", 0, NULL);
			check_for_thrown(ctr, );
		}
		
		res = smpList_reverse(res, 0, NULL);
		
	} else {
		res = smpArray_init();
		
		while (TRUE) {
			cmp_ret = smpObject_funcall(ctr, "<", 1, &max);
			check_for_thrown(cmp_ret, );
			if (!smpObject_truep_c(cmp_ret))
				break;
			
			smpArray_add_now(res, 1, &ctr);
			ctr = smpObject_funcall(ctr, "inc", 0, NULL);
			check_for_thrown(ctr, );
		}
	}
	
	;
	return res;
}

long smpInteger_to_clong(Object *ret, Object obj)
{
	if (!mpz_fits_slong_p(obj_core(mpz_t, obj))) {
		*ret = smpGlobal_throw(smpException_init_fmt(
			smp_getclass("IndexOutOfBoundsException"), "%ld", index));
		return LONG_MAX;
	}
	
	return mpz_get_si(obj_core(mpz_t, obj));
}

Object smpInteger_to_s(Object obj, int argc, Object argv[])
{
	int base = 10;
	if (argc != 0 && !smpType_id_eq(argv[0], smpType_id_nil)) {
		smp_type_check(argv[0], "Integer");
		if (mpz_fits_sint_p(obj_core(mpz_t, argv[0])))
			base = (int) mpz_get_si(obj_core(mpz_t, argv[0]));
	}
	
	char *str = mpz_get_str(NULL, base, obj_core(mpz_t, obj));
	return smpString_init_ref(&str);
}
