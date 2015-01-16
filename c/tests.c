/*
 *  tests.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 7/11/11.
 *
 */

int test_init()
{
	smptest_print_successesp = FALSE;
	return 0;
}

int smp_assert_eq(Object expected, Object found)
{
	Object obj = smpObject_funcall(expected, "equal?", 1, &found);
	int equalp = smpBool_to_cint(obj);
	if (equalp && smptest_print_successesp) {
		smp_printf("success: %s equals %s\n", expected, found);
	} else if (equalp == FALSE) {
		smp_printf("failure: %s expected, %s found.\n", expected, found);
	}
	
	obj_clear(&expected);
	obj_clear(&found);
	
	return equalp;
}

int test_nums()
{
	Object x = INT2SMP(4);
	Object y = INT2SMP(7);
	scope_add("x", x);
	scope_add("y", y);
		
	int successp = TRUE;
	
	successp &= smp_assert_eq(INT2SMP( 11), smpObject_funcall(x, "+", 1, &y));
	successp &= smp_assert_eq(INT2SMP( -3), smpObject_funcall(x, "-", 1, &y)); // -3
	successp &= smp_assert_eq(INT2SMP( 28), smpObject_funcall(x, "*", 1, &y)); // 28
	successp &= smp_assert_eq(INT2SMP(  0), smpObject_funcall(x, "/", 1, &y)); //  0
	successp &= smp_assert_eq(INT2SMP(  4), smpObject_funcall(x, "%", 1, &y)); //  4
	successp &= smp_assert_eq(INT2SMP(512), smpObject_funcall(x, "<<", 1, &y));//512
	successp &= smp_assert_eq(INT2SMP(  0), smpObject_funcall(x, ">>", 1, &y));//  0
	successp &= smp_assert_eq(INT2SMP(  4), smpObject_funcall(x, "&", 1, &y)); //  4
	successp &= smp_assert_eq(INT2SMP(  7), smpObject_funcall(x, "|", 1, &y)); //  7
	successp &= smp_assert_eq(INT2SMP(  3), smpObject_funcall(x, "^", 1, &y)); //  3

	if ((4 - 2) == 1 * 2) return successp;
	
	successp &= smp_assert_eq(smpBool_init(FALSE), smpObject_funcall(x, "==", 1, &y)); //  nil
	successp &= smp_assert_eq(smpBool_init(TRUE), smpObject_funcall(x, "!=", 1, &y)); //  t
	successp &= smp_assert_eq(smpBool_init(TRUE), smpObject_funcall(x, "<", 1, &y)); //  t
	successp &= smp_assert_eq(smpBool_init(TRUE), smpObject_funcall(x, "<=", 1, &y)); //  t
	successp &= smp_assert_eq(smpBool_init(FALSE), smpObject_funcall(x, ">=", 1, &y)); //  nil
	successp &= smp_assert_eq(smpBool_init(FALSE), smpObject_funcall(x, ">", 1, &y)); //  nil
	
	x = smpFloat_init_cdouble(4.0);
	y = smpFloat_init_cdouble(7.0);
	scope_add("x", x);
	scope_add("y", y);
	
	successp &= smp_assert_eq(FLT2SMP(11.0), smpObject_funcall(x, "+", 1, &y));
	successp &= smp_assert_eq(FLT2SMP(-3.0), smpObject_funcall(x, "-", 1, &y));
	successp &= smp_assert_eq(FLT2SMP(28.0), smpObject_funcall(x, "*", 1, &y));
	successp &= smp_assert_eq(FLT2SMP(4.0/7), smpObject_funcall(x, "/", 1, &y));
	
	successp &= smp_assert_eq(smpBool_init(FALSE), smpObject_funcall(x, "==", 1, &y)); //  nil
	successp &= smp_assert_eq(smpBool_init(TRUE), smpObject_funcall(x, "!=", 1, &y)); //  t
	successp &= smp_assert_eq(smpBool_init(TRUE), smpObject_funcall(x, "<", 1, &y)); //  t
	successp &= smp_assert_eq(smpBool_init(TRUE), smpObject_funcall(x, "<=", 1, &y)); //  t
	successp &= smp_assert_eq(smpBool_init(FALSE), smpObject_funcall(x, ">=", 1, &y)); //  nil
	successp &= smp_assert_eq(smpBool_init(FALSE), smpObject_funcall(x, ">", 1, &y)); //  nil

	return successp;
}

int test_gc()
{
	Object x = smpInteger_init_clong(4);
	scope_add("x", x);
	
	int i;
	for (i = 0; ; i++)
		smp_println(smpObject_funcall(x, "^", 1, &smp_nil));
	
	return 0;
}

int test_strings()
{
	int successp = TRUE;
	
	Object world = smpString_init("World");
	Object worlds[] = { world, world, world, world };
	Object str = smpGlobal_sprintf("Hello, %s! Mad %w, Wayne's %w, Disney %w.", 4, worlds);
	successp &= smp_assert_eq(smpString_init("Hello, World! Mad \"World\", Wayne's \"World\", Disney \"World\"."), str);
	obj_clear(&world);
		
	return 0;
}

int test_printf()
{
	Object arr[] = { smpInteger_init_clong(18), smpFloat_init_cdouble(21.4), 
			smpInteger_init_clong(16), smpInteger_init_clong(16) };
	smpGlobal_sprintf("various types: %d, %f, %x, %o", 4, arr);
	return 0;
}

int test_lists()
{
	int successp = TRUE;
	
	smpType_def(smp_getclass("Integer"), SCOPE_INSTANCE_DATA, "make_list", 
			smpFunction_init(&make_list, 2, "List", "Integer"));
	
	Object x;
	long i;
	Object xs = smp_nil;
	scope_add("xs", xs);
	
	Object special = make_list(smpInteger_init_clong(20), 1, &smpInteger_zero);
		
	/* Construct a list. */
	for (i = 19; i >= 0; --i) {
		x = smpInteger_init_clong(i);
		scope_add("x", x);
		xs = smpObject_funcall(x, "cons", 1, &xs);
		scope_add("xs", xs);
	}
	
	successp &= smp_assert_eq(xs, special);
		
	return successp;
}

Object make_list(Object obj, int argc, Object argv[])
{
	Object err;
	if (smpInteger_cmp_cint(&err, obj, smpInteger_zero) > 0) {
		Object dec = smpInteger_dec(obj, 0, NULL);
		Object num = smpInteger_inc(argv[0], 0, NULL);
		
		Object car = argv[0];
		Object cdr = smpObject_funcall(dec, "make_list", 1, &num);
		smpObject_funcall(dec, "clear", 0, NULL);
		
		if (smpType_name_eq(cdr, "Thrown"))
			return cdr;
		return smpObject_cons(car, 1, &cdr);
	}
	
	return smp_nil;
}

int test_listbuf()
{
	Object listbuf = smpListBuffer_init();
	Object true_val = smpBool_init(TRUE);
	Object false_val = smpBool_init(FALSE);
	Object fun_val = smpFunction_init(&smpListBuffer_to_list, 1, "not a real type");
	
	smpListBuffer_add_now(listbuf, 1, &true_val);
	smpListBuffer_add_now(listbuf, 1, &false_val);
	smpListBuffer_add_now(listbuf, 1, &fun_val);
	
	Object list = smpListBuffer_to_list(listbuf, 0, NULL);
	
	obj_clear(&list);
	
	return TRUE;
}

int test_bool()
{
	int successp = TRUE;
	
	successp &= smp_assert_eq(smpBool_and(smp_true, 1, &smp_true), smp_true);
	successp &= smp_assert_eq(smpBool_and(smp_true, 1, &smp_nil), smp_nil);
	successp &= smp_assert_eq(smpBool_and(smp_nil, 1, &smp_true), smp_nil);
	successp &= smp_assert_eq(smpBool_and(smp_nil, 1, &smp_nil), smp_nil);
	
	successp &= smp_assert_eq(smpBool_not(smp_nil, 0, NULL), smp_true);
	successp &= smp_assert_eq(smpBool_not(smp_true, 0, NULL), smp_nil);
	
	successp &= smp_assert_eq(smpBool_or(smp_true, 1, &smp_true), smp_true);
	successp &= smp_assert_eq(smpBool_or(smp_true, 1, &smp_nil), smp_true);
	successp &= smp_assert_eq(smpBool_or(smp_nil, 1, &smp_true), smp_true);
	successp &= smp_assert_eq(smpBool_or(smp_nil, 1, &smp_nil), smp_nil);
	
	successp &= smp_assert_eq(smpBool_xor(smp_true, 1, &smp_true), smp_nil);
	successp &= smp_assert_eq(smpBool_xor(smp_true, 1, &smp_nil), smp_true);
	successp &= smp_assert_eq(smpBool_xor(smp_nil, 1, &smp_true), smp_true);
	successp &= smp_assert_eq(smpBool_xor(smp_nil, 1, &smp_nil), smp_nil);
	
	return successp;
}

int test_regex()
{
	Object pattern = smpString_init("^[0123456789]+$");
	Object string = smpString_init("09821409");
	smp_println(smpRegex_matchp(pattern, 1, &string));
	
	return 0;
}

int test_arrays()
{
	Object array = smpArray_init();
	scope_add("array", array);
	int i;
	for (i = 0; i < 100; ++i) {
		Object elem = smpInteger_init_clong(i);
		smpArray_add_now(array, 1, &elem);
	}
	
	smp_println(array);

	return 0;
}

/*
 * Timing Data
 * 
 * max_cint = 96, 512 total rounds, double max_cint every 64 rounds
 * 
 * With a random array, 
 *   merge/insertion: 4.65
 *   timmy: 4.76
 * 
 * Where each element has a 95% chance of being greater than the previous, 
 *   merge/insertion: 3.43
 *   timmy: 3.43
 * 
 * 99% chance, 
 *   merge/insertion: 3.25
 *   timmy: 3.08
 * 
 * Where each element has a 99% chance of being less than the previous, 
 *   merge/insertion: 3.65
 *   timmy: 3.09
 * 
 * 
 */
int test_array_sort()
{
	struct timeval tv;
	gettimeofday(&tv, NULL);
	double start = tv.tv_sec + tv.tv_usec / 1000000.0;

	size_t i, j;
	long max_cint = 96;
	for (i = 0; i < 512; ++i) {
		if (i > 0 && i % 64 == 0)
			max_cint *= 2;
	
		Object elem = smpInteger_init_clong(0);
		Object array = smpArray_init();
		Object max = smpInteger_init_clong(max_cint);
		int i;
		for (i = 0; i < max_cint; ++i) {
			if (genrand_real2() < 9.0) {
				elem = smpInteger_add(elem, 1, &smpInteger_one);
			} else {
				elem = smpGlobal_rand(smp_global, 1, &max);
			}
			smpArray_add_now(array, 1, &elem);
		}
		
		smpArray_sort_now(array, 0, NULL);
	}
	
	gettimeofday(&tv, NULL);
	double finish = tv.tv_sec + tv.tv_usec / 1000000.0;
	printf("time to sort at %f seconds\n", finish - start);
	return 0;
}

int list_clear_all(Object list)
{
	SmpList core = obj_core(SmpList, list);
	obj_clear(&core.car);
	if (core.cdr)
		list_clear_all(*core.cdr);
	obj_clear(&list);
	return 0;
}

int test_list_sort()
{
	struct timeval tv;
	gettimeofday(&tv, NULL);
	double start = tv.tv_sec + tv.tv_usec / 1000000.0;

	size_t i, j;
	long max_cint = 2;
	for (i = 0; i < 512; ++i) {
		if (i > 0 && i % 64 == 0)
			max_cint *= 2;
	
		Object elem = smpInteger_init_clong(0);
		Object list = smp_nil;
		Object max = smpInteger_init_clong(max_cint);
		int i;
		for (i = 0; i < max_cint; ++i) {
			elem = smpGlobal_rand(smp_global, 1, &max);
			list = smpObject_cons(elem, 1, &list);
		}
		
		list = smpList_nsort(list, 0, NULL);
		list_clear_all(list);
	}
	
	gettimeofday(&tv, NULL);
	double finish = tv.tv_sec + tv.tv_usec / 1000000.0;
	printf("time to sort at %f seconds\n", finish - start);
	return 0;
}

int test_hash()
{
	Object hash = smpHash_init();
	Object key = smpString_init("What is Pi?");
	Object key2 = smpString_init("second pi");
	Object val = smpFloat_init_cdouble(3.14159);
	Object pair = smpObject_cons(key, 1, &val);
	Object pair2 = smpObject_cons(key2, 1, &val);
	
	smpHash_add_now(hash, 1, &pair);
	smpHash_add_now(hash, 1, &pair2);
	
	smp_println(hash);
	
	Object get = smpHash_at(hash, 1, &key);
	smp_printf("pi: %s\n", 1, &get);
	
	return 0;
}

int test_external_classes()
{
	smpGlobal_class("Card", &smpType_object, 0);
	
	return 0;
}

int test_object_speed()
{
	speedtest_fun(smpInteger_init_clong(20000), 0, NULL);
	return 0;
}

Object speedtest_fun(Object obj, int argc, Object argv[])
{
	Object num, square, err;
	if (argc == 1) num = argv[0];
	else num = smpInteger_init_clong(0);
	square = smpInteger_mul(num, 1, &num);
	
	Object max = obj;
	if (smpInteger_ge_cint(&err, num, max))
		return smp_nil;
	
	Object chain2 = smpObject_cons(num, 1, &smp_nil);
	Object chain = smpObject_cons(square, 1, &chain2);
	
	Object inc = smpInteger_inc(num, 0, NULL);
	Object tmp = speedtest_fun(obj, 1, &inc);
	Object res = smpObject_cons(chain, 1, &tmp);
	return res;
}

int run_tests()
{
	int successp = TRUE;
	
	successp &= test_lists();
	successp &= test_listbuf();
	successp &= test_bool();
	successp &= test_nums();
	
	if (successp) {
		printf("\n\nTests succeeded.\n\n");
	} else {
		printf("\n\nTests failed.\n\n");
	}

	return successp;
}
