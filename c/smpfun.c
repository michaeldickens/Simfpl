/*
 *  smpbif.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/5/11.
 *
 */

#include "smp_classes.h"

int smpfun_create_class()
{
	Object function = smp_getclass("Function");
	
	smptype_def(function, SCOPE_INSTANCE_DATA, "clear", smpfun_init(&smpfun_clear, 1, "Nil"));
	smptype_def(function, SCOPE_INSTANCE_DATA, "gc_mark", smpfun_init(&smpfun_gc_mark, 1, "Nil"));
	smptype_def(function, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smpfun_to_s, 1, "String"));
	
	return 0;
}

Object smpfun_call(Object obj, Object fun, int argc, Object argv[])
{
	if (!smptype_name_eq(fun, "Function")) {
		return smpglobal_throw(smptypeerr_init(&smptype_function, fun));
	}
	
	SmpFun fun_core = obj_core(SmpFun, fun);
	
	Object res = (*fun_core.fun)(obj, argc, argv);
	

	/* If a Thrown object was returned, add this function to the backtraces of 
	 * the contained exceptions. 
	 */
	if (smptype_id_eq(res, smptype_thrown.type_id) && 
			obj_core(SmpThrown, res).type == SMPTHROWN_EXCEPTION) {
		size_t i;
		for (i = 0; i < obj_core(SmpThrown, res).length; ++i)
			smpexc_backtrace_add_now(obj_core(SmpThrown, res).objs[i], obj, fun);
	}
	
	return res;
}

Object smpfun_clear(Object obj, int argc, Object argv[])
{
	SmpFun core = obj_core(SmpFun, obj);
	smp_free(core.name);
	
	int i;
	for (i = 0; i < core.argspecs_length; ++i) {
		smp_free(core.argspecs[i].name);
	}
	
	smp_free(obj_core(SmpFun, obj).argspecs);
	return smp_nil;
}

Object smpfun_gc_mark(Object obj, int argc, Object argv[])
{
	SmpFun core = obj_core(SmpFun, obj);
	
	int i;
	for (i = 0; i < core.argspecs_length; ++i) {
		if (core.argspecs[i].optionalp)
			gc_mark_recursive(NULL, core.argspecs[i].default_val);
	}
	
	return smp_nil;
}

Object smpfun_init(Object (*fun)(Object obj, int argc, Object argv[]), 
		int argc, ...)
{
	va_list ap;
	va_start(ap, argc);
	Object res = smpfun_init_v(fun, argc, ap);
	va_end(ap);
	return res;
}

Object smpfun_init_v(Object (*fun)(Object obj, int argc, Object argv[]), 
		int argc, va_list ap)
{	
	DISABLE_GC_ACTIVEP;
	Object res = obj_init(&smptype_function);
		
	SmpFun smp_fun;
	smp_fun.name = NULL;
	smp_fun.permission = SCOPE_PUBLIC;
	smp_fun.fun = fun;
	
	if (argc == 0) {
		ENABLE_GC_ACTIVEP;
		return smp_nil;
	}
		
	--argc;
	argspec_t argspecs[argc];
	
	/* If one argument is optional, all the rest are optional as well. */
	int optionalp = FALSE;
		
	char *arg;
	int i, length;
	for (i = 0, length = 0; i < argc; ++i, ++length) {
		argspecs[length].quote = 0;
		argspecs[length].optionalp = optionalp;
		argspecs[length].default_val = smp_nil;
		argspecs[length].restp = FALSE;
		
		arg = va_arg(ap, char *);
		
		/* If a previous argument was the &rest, it is impossible for there 
		 * to be any more arguments.
		 */
		if (length > 0 && argspecs[length-1].restp) {
			ENABLE_GC_ACTIVEP;
			return smpglobal_throw(smpexc_init_fmt(
					smp_getclass("FunctionError"), 
					"Unexpected token %s after &rest argument.", arg));
		}
		
		for (; i < argc; (arg = va_arg(ap, char *)) && ++i) {
			if (streq(arg, "&default")) {
				argspecs[length].default_val = va_arg(ap, Object);
				++i;
			} else if (streq(arg, "&quote")) {
				argspecs[length].quote = TRUE;
			} else if (streq(arg, "&optional")) {
				argspecs[length].optionalp = optionalp = TRUE;
			} else if (streq(arg, "&rest")) {
				argspecs[length].restp = TRUE;
			} else if (streq(arg, "&keyword")) {
				/* Keywords are handled at compile time. */
			} else {
				break;
			}
		}
		
		argspecs[length].name = arg;
	}
	
	smp_fun.argspecs_length = length;
	smp_fun.argspecs = smp_malloc(sizeof(argspec_t) * length);
	memcpy(smp_fun.argspecs, argspecs, sizeof(argspec_t) * length);
		
	res.core = smp_malloc(sizeof(SmpFun));
	obj_core(SmpFun, res) = smp_fun;
			
	ENABLE_GC_ACTIVEP;
	return res;
}

Object smpfun_to_s(Object obj, int argc, Object argv[])
{
	if (smpfun_name(obj))
		return smpstr_init_fmt("%s()", smpfun_name(obj));
	return smpstr_init_fmt("<Function: %lx>", obj_core(SmpFun, obj).fun);
}

