/*
 *  tests.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 7/11/11.
 *
 */

#include "tests.h"

int test_init()
{
	smptest_print_successesp = FALSE;
	return 0;
}

int smp_assert_eq(Object expected, Object found)
{
	Object obj = smpobj_funcall(expected, "equal?", 1, &found);
	int equalp = smpbool_to_cint(obj);
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
	
	successp &= smp_assert_eq(INT2SMP( 11), smpobj_funcall(x, "+", 1, &y));
	successp &= smp_assert_eq(INT2SMP( -3), smpobj_funcall(x, "-", 1, &y)); // -3
	successp &= smp_assert_eq(INT2SMP( 28), smpobj_funcall(x, "*", 1, &y)); // 28
	successp &= smp_assert_eq(INT2SMP(  0), smpobj_funcall(x, "/", 1, &y)); //  0
	successp &= smp_assert_eq(INT2SMP(  4), smpobj_funcall(x, "%", 1, &y)); //  4
	successp &= smp_assert_eq(INT2SMP(512), smpobj_funcall(x, "<<", 1, &y));//512
	successp &= smp_assert_eq(INT2SMP(  0), smpobj_funcall(x, ">>", 1, &y));//  0
	successp &= smp_assert_eq(INT2SMP(  4), smpobj_funcall(x, "&", 1, &y)); //  4
	successp &= smp_assert_eq(INT2SMP(  7), smpobj_funcall(x, "|", 1, &y)); //  7
	successp &= smp_assert_eq(INT2SMP(  3), smpobj_funcall(x, "^", 1, &y)); //  3

	successp &= smp_assert_eq(smpbool_init(FALSE), smpobj_funcall(x, "==", 1, &y)); //  nil
	successp &= smp_assert_eq(smpbool_init(TRUE), smpobj_funcall(x, "!=", 1, &y)); //  t
	successp &= smp_assert_eq(smpbool_init(TRUE), smpobj_funcall(x, "<", 1, &y)); //  t
	successp &= smp_assert_eq(smpbool_init(TRUE), smpobj_funcall(x, "<=", 1, &y)); //  t
	successp &= smp_assert_eq(smpbool_init(FALSE), smpobj_funcall(x, ">=", 1, &y)); //  nil
	successp &= smp_assert_eq(smpbool_init(FALSE), smpobj_funcall(x, ">", 1, &y)); //  nil
	
	x = smpfloat_init_cdouble(4.0);
	y = smpfloat_init_cdouble(7.0);
	scope_add("x", x);
	scope_add("y", y);
	
	successp &= smp_assert_eq(FLT2SMP(11.0), smpobj_funcall(x, "+", 1, &y));
	successp &= smp_assert_eq(FLT2SMP(-3.0), smpobj_funcall(x, "-", 1, &y));
	successp &= smp_assert_eq(FLT2SMP(28.0), smpobj_funcall(x, "*", 1, &y));
	successp &= smp_assert_eq(FLT2SMP(4.0/7), smpobj_funcall(x, "/", 1, &y));
	
	successp &= smp_assert_eq(smpbool_init(FALSE), smpobj_funcall(x, "==", 1, &y)); //  nil
	successp &= smp_assert_eq(smpbool_init(TRUE), smpobj_funcall(x, "!=", 1, &y)); //  t
	successp &= smp_assert_eq(smpbool_init(TRUE), smpobj_funcall(x, "<", 1, &y)); //  t
	successp &= smp_assert_eq(smpbool_init(TRUE), smpobj_funcall(x, "<=", 1, &y)); //  t
	successp &= smp_assert_eq(smpbool_init(FALSE), smpobj_funcall(x, ">=", 1, &y)); //  nil
	successp &= smp_assert_eq(smpbool_init(FALSE), smpobj_funcall(x, ">", 1, &y)); //  nil

	return successp;
}

int test_gc()
{
	Object x = smpint_init_clong(4);
	scope_add("x", x);
	
	int i;
	for (i = 0; i < 100; i++)
		smp_println(smpobj_funcall(x, "^", 1, &smp_nil));
	
	return 0;
}

int test_strings()
{
	int successp = TRUE;
	
	Object world = smpstr_init("World");
	Object worlds[] = { world, world, world, world };
	Object str = smpglobal_sprintf("Hello, %w! Mad %s, Wayne's %s, Disney %s.", 4, worlds);
	successp &= smp_assert_eq(smpstr_init("Hello, World! Mad \"World\", Wayne's \"World\", Disney \"World\"."), str);
	obj_clear(&world);
		
	return 0;
}

int test_printf()
{
	Object arr[] = { smpint_init_clong(18), smpfloat_init_cdouble(21.4), 
			smpint_init_clong(16), smpint_init_clong(16) };
	smpglobal_sprintf("various types: %d, %f, %x, %o", 4, arr);
	return 0;
}

int test_lists()
{
	int successp = TRUE;
	
	smptype_def(smp_getclass("Integer"), SCOPE_INSTANCE_DATA, "make_list", 
			smpfun_init(&make_list, 2, "List", "Integer"));
	
	Object x;
	long i;
	Object xs = smp_nil;
	scope_add("xs", xs);
	
	Object special = make_list(smpint_init_clong(20), 1, &smpint_zero);
		
	/* Construct a list. */
	for (i = 19; i >= 0; --i) {
		x = smpint_init_clong(i);
		scope_add("x", x);
		xs = smpobj_funcall(x, "cons", 1, &xs);
		scope_add("xs", xs);
	}
	
	successp &= smp_assert_eq(xs, special);
		
	return successp;
}

Object make_list(Object obj, int argc, Object argv[])
{
	if (smpint_cmp_cint(obj, 1, &smpint_zero) > 0) {
		Object dec = smpint_dec(obj);
		Object num = smpint_inc(argv[0]);
		
		Object car = argv[0];
		Object cdr = smpobj_funcall(dec, "make_list", 1, &num);
		smpobj_funcall(dec, "clear", 0, NULL);
		
		if (smptype_name_eq(cdr, "Thrown"))
			return cdr;
		return smpobj_cons(car, 1, &cdr);
	}
	
	return smp_nil;
}

int test_listbuf()
{
	Object listbuf = smplistbuf_init();
	Object true_val = smpbool_init(TRUE);
	Object false_val = smpbool_init(FALSE);
	Object fun_val = smpfun_init(&smplistbuf_to_list, 1, "not a real type");
	
	smplistbuf_add_now(listbuf, 1, &true_val);
	smplistbuf_add_now(listbuf, 1, &false_val);
	smplistbuf_add_now(listbuf, 1, &fun_val);
	
	Object list = smplistbuf_to_list(listbuf, 0, NULL);
	
	obj_clear(&list);
	
	return TRUE;
}

int test_bool()
{
	int successp = TRUE;
	
	successp &= smp_assert_eq(smpbool_and(smp_true, 1, &smp_true), smp_true);
	successp &= smp_assert_eq(smpbool_and(smp_true, 1, &smp_nil), smp_nil);
	successp &= smp_assert_eq(smpbool_and(smp_nil, 1, &smp_true), smp_nil);
	successp &= smp_assert_eq(smpbool_and(smp_nil, 1, &smp_nil), smp_nil);
	
	successp &= smp_assert_eq(smpbool_not(smp_nil, 0, NULL), smp_true);
	successp &= smp_assert_eq(smpbool_not(smp_true, 0, NULL), smp_nil);
	
	successp &= smp_assert_eq(smpbool_or(smp_true, 1, &smp_true), smp_true);
	successp &= smp_assert_eq(smpbool_or(smp_true, 1, &smp_nil), smp_true);
	successp &= smp_assert_eq(smpbool_or(smp_nil, 1, &smp_true), smp_true);
	successp &= smp_assert_eq(smpbool_or(smp_nil, 1, &smp_nil), smp_nil);
	
	successp &= smp_assert_eq(smpbool_xor(smp_true, 1, &smp_true), smp_nil);
	successp &= smp_assert_eq(smpbool_xor(smp_true, 1, &smp_nil), smp_true);
	successp &= smp_assert_eq(smpbool_xor(smp_nil, 1, &smp_true), smp_true);
	successp &= smp_assert_eq(smpbool_xor(smp_nil, 1, &smp_nil), smp_nil);
	
	return successp;
}

int test_regex()
{
	gc_add_objectsp = FALSE;
	Object pattern = smpstr_init("^[0123456789]+$");
	Object string = smpstr_init("09821409");
	smp_println(smpregex_matchp(pattern, 1, &string));
	gc_add_objectsp = TRUE;
	
	return 0;
}

int test_arrays()
{
	Object array = smparray_init();
	scope_add("array", array);
	int i;
	for (i = 0; i < 100; ++i) {
		Object elem = smpint_init_clong(i);
		smparray_add_now(array, 1, &elem);
	}
	
	smp_println(array);

	return 0;
}

int test_hash()
{
	gc_add_objectsp = FALSE;
	Object hash = smphash_init();
	Object key = smpstr_init("What is Pi?");
	Object key2 = smpstr_init("second pi");
	Object val = smpfloat_init_cdouble(3.14159);
	Object pair = smpobj_cons(key, 1, &val);
	Object pair2 = smpobj_cons(key2, 1, &val);
	
	smphash_add_now(hash, 1, &pair);
	smphash_add_now(hash, 1, &pair2);
	
	smp_println(hash);
	
	Object get = smphash_get(hash, 1, &key);
	smp_printf("pi: %s\n", 1, &get);
	
	gc_add_objectsp = TRUE;
	return 0;
}

int test_external_classes()
{
	smpglobal_class("Card", &smptype_object, 0);
	
	return 0;
}

int test_object_speed()
{
	gc_add_objectsp = FALSE;
	speedtest_fun(smpint_init_clong(20000), 0, NULL);
	gc_add_objectsp = TRUE;
	return 0;
}

Object speedtest_fun(Object obj, int argc, Object argv[])
{
	Object num, square;
	if (argc == 1) num = argv[0];
	else num = smpint_init_clong(0);
	square = smpint_mul(num, 1, &num);
	
	Object max = obj;
	if (smpint_ge_cint(num, 1, &max))
		return smp_nil;
	
	Object chain2 = smpobj_cons(num, 1, &smp_nil);
	Object chain = smpobj_cons(square, 1, &chain2);
	
	Object inc = smpint_inc(num);
	Object tmp = speedtest_fun(obj, 1, &inc);
	Object res = smpobj_cons(chain, 1, &tmp);
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
