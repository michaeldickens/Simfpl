/*
 *  smpexception.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/8/11.
 *
 */

#include "smp_classes.h"

int smpexc_create_class()
{		
	Object exc = smp_getclass("Exception");
	Object runtime_exception = smp_getclass("RuntimeException");
	SmpType *smptype_runtime = &obj_core(SmpType, runtime_exception);
	Object type_exception = smp_getclass("TypeError");
	
	smpglobal_class("ImplementationException", smptype_runtime, 0);
	smpglobal_class("IncompleteTokenException", smptype_runtime, 0);
	smpglobal_class("IndexOutOfBoundsException", smptype_runtime, 0);
	smpglobal_class("InitializationException", smptype_runtime, 0);
	smpglobal_class("InternalException", smptype_runtime, 0);
	smpglobal_class("StringFormatException", smptype_runtime, 0);	

	smptype_def(exc, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "gc_mark", smpfun_init(&smpexc_gc_mark, 1, "Nil"));
	smptype_def(exc, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "clear", smpfun_init(&smpexc_clear, 1, "Nil"));
	smptype_def(exc, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smpexc_to_s, 1, "String"));
	
	smptype_def(type_exception, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "gc_mark", smpfun_init(&smptypeerr_gc_mark, 1, "Nil"));
	smptype_def(type_exception, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "clear", smpfun_init(&smptypeerr_clear, 1, "Nil"));
	smptype_def(type_exception, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smptypeerr_to_s, 1, "String"));
	
	return 0;
}

Object smpexc_backtrace_add_now(Object exc, Object obj, Object fun)
{
	Object pair = smpobj_cons(obj, 1, &fun);
	
	if (smptype_name_eq(exc, "TypeError")) {
		Object *bt = &obj_core(SmpTypeExc, exc).backtrace;
		*bt = smpobj_cons(pair, 1, bt);
	} else {
		Object *bt = &obj_core(SmpExc, exc).backtrace;
		*bt = smpobj_cons(pair, 1, bt);
	}
	
	return smp_nil;
}

Object smpexc_clear(Object obj, int argc, Object argv[])
{
	smp_free(obj_core(SmpExc, obj).message);
	return smp_nil;
}

Object smpexc_gc_mark(Object obj, int argc, Object argv[])
{
	gc_mark_recursive(NULL, obj_core(SmpExc, obj).backtrace);
	return smp_nil;
}

Object smpexc_init(Object type)
{
	SmpExc res;
	res.message = NULL;
	res.backtrace = smp_nil;
	
	Object wrapper = obj_init(&obj_core(SmpType, type));
	wrapper.core = smp_malloc(sizeof(SmpExc));
	obj_core(SmpExc, wrapper) = res;
	
	return wrapper;
}

Object smpexc_init_fmt(Object type, const char *fmt, ...)
{
	/* If the garbage collector is running, a new Exception cannot be allocated.
	 */
	if (gc_runningp) {
		va_list ap;
		va_start(ap, fmt);
		vfprintf(stderr, fmt, ap);
		fprintf(stderr, "\n");
		va_end(ap);
		return smp_nil;
	}
	
	Object res = smpexc_init(type);
	va_list ap;
	va_start(ap, fmt);
	vasprintf(&obj_core(SmpExc, res).message, fmt, ap);
	va_end(ap);
	return res;
}

Object smpexc_print(Object obj)
{
	return smpglobal_fprintf(smp_stderr, "%s\n", obj);
}

Object smpexc_to_s(Object obj, int argc, Object argv[])
{	
	SmpExc core = obj_core(SmpExc, obj);
	Object *bt = &core.backtrace;
	Object res = smpstr_init_fmt("%s: %s", obj.type->name, core.message);
	
	if (smptype_id_eq(*bt, smptype_id_nil))
		return res;
	
	/* If something is added to the gc stack, the garbage collector might 
	 * run and end up clearing str before it is returned.
	 */

	Object temp, from;
	from = smpstr_init_fmt("\n\tfrom ");
	while (bt) {
		smp_println(*bt);
		temp = smpobj_funcall(smplist_car(*bt, 0, NULL), "to_s", 0, NULL);
		check_for_thrown(temp, obj_clear(&from); obj_clear(&res););
			
		smpstr_add_now(res, 1, &from);
		smpstr_add_now(res, 1, &temp);
		bt = obj_core(SmpList, *bt).cdr;
	}
	obj_clear(&from);
	
	return res;
}

Object smptypeerr_clear(Object obj, int argc, Object argv[])
{
	smp_free(obj_core(SmpTypeExc, obj).message);
	return smp_nil;	
}

Object smptypeerr_gc_mark(Object obj, int argc, Object argv[])
{
	gc_mark_recursive(NULL, obj_core(SmpTypeExc, obj).backtrace);
	gc_mark_recursive(NULL, obj_core(SmpTypeExc, obj).found);
	return smp_nil;
}

Object smptypeerr_init(SmpType *expected, Object found)
{
	SmpTypeExc res;
	res.message = NULL;
	res.backtrace = smp_nil;
	res.expected = expected;
	res.found = found;
	
	Object wrapper = obj_init(&obj_core(SmpType, smp_getclass("TypeError")));
	wrapper.core = smp_malloc(sizeof(SmpTypeExc));
	obj_core(SmpTypeExc, wrapper) = res;
	
	return wrapper;
}

Object smptypeerr_init_detailed(SmpType *expected, Object found, 
		const char *fmt, ...)
{
	if (gc_runningp) {
		va_list ap;
		va_start(ap, fmt);
		vfprintf(stderr, fmt, ap);
		fprintf(stderr, "\n");
		va_end(ap);
		return smp_nil;
	}
		
	SmpTypeExc res;
	res.message = NULL;
	res.backtrace = smp_nil;
	res.expected = expected;
	res.found = found;
		
	va_list ap;
	va_start(ap, fmt);
	vasprintf(&res.message, fmt, ap);
	va_end(ap);

	Object wrapper = obj_init(&obj_core(SmpType, smp_getclass("TypeError")));
	wrapper.core = smp_malloc(sizeof(SmpTypeExc));
	obj_core(SmpTypeExc, wrapper) = res;
	
	return wrapper;	
}

Object smptypeerr_init_fmt(const char *fmt, ...)
{
	if (gc_runningp) {
		va_list ap;
		va_start(ap, fmt);
		vfprintf(stderr, fmt, ap);
		fprintf(stderr, "\n");
		va_end(ap);
		return smp_nil;
	}
	
	SmpTypeExc res;
	
	va_list ap;
	va_start(ap, fmt);
	vasprintf(&res.message, fmt, ap);
	va_end(ap);

	res.backtrace = smp_nil;
	res.expected = NULL;
	res.found = smp_nil;
	
	Object wrapper = obj_init(&obj_core(SmpType, smp_getclass("TypeError")));
	wrapper.core = smp_malloc(sizeof(SmpTypeExc));
	obj_core(SmpTypeExc, wrapper) = res;
	
	return wrapper;
	
}

Object smptypeerr_to_s(Object obj, int argc, Object argv[])
{
	SmpTypeExc core = obj_core(SmpTypeExc, obj);
	Object res;
	if (core.message)
		res = smpstr_init(core.message);
	else if (core.expected)
		/* memory leak */
		res = smpglobal_sprintf("%s: %s expected, %st found.", 
				smpstr_init(obj.type->name), smpstr_init(core.expected->name), 
				core.found);
	else
		/* memory leak */
		res = smpglobal_sprintf("%s: unexpected %st.", 
				smpstr_init(obj.type->name), core.found);
	
	if (smptype_id_eq(core.backtrace, smptype_id_nil))
		return res;
	
	DISABLE_GC_ACTIVEP;
	
	Object newline = smpstr_init("");
	smpstr_add_now(res, 1, &newline);
	obj_clear(&newline);
	
	Object separator = smpstr_init_fmt("\n\tfrom ");
	Object str = smpobj_funcall(core.backtrace, "to_s", 1, &separator);
	check_for_thrown(str, ENABLE_GC_ACTIVEP);
	Object code = smpstr_add_now(res, 1, &str);
	check_for_thrown(code, ENABLE_GC_ACTIVEP);
	
	ENABLE_GC_ACTIVEP;
	return res;
}

