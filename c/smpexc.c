/*
 *  smpexception.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/8/11.
 *
 */

int smpException_create_class()
{		
	Object exc = smp_getclass("Exception");
	Object runtime_exception = smp_getclass("RuntimeException");
	SmpType *smpType_runtime = &obj_core(SmpType, runtime_exception);
	Object type_exception = smp_getclass("TypeError");
	
	smpGlobal_class("ImplementationException", smpType_runtime, 0);
	smpGlobal_class("IncompleteTokenException", smpType_runtime, 0);
	smpGlobal_class("IndexOutOfBoundsException", smpType_runtime, 0);
	smpGlobal_class("InitializationException", smpType_runtime, 0);
	smpGlobal_class("InternalException", smpType_runtime, 0);
	smpGlobal_class("StringFormatException", smpType_runtime, 0);	

	smpType_def(exc, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "gc_mark", smpFunction_init(&smpException_gc_mark, 1, "Nil"));
	smpType_def(exc, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "clear", smpFunction_init(&smpException_clear, 1, "Nil"));
	smpType_def(exc, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpException_to_s, 1, "String"));
	
	smpType_def(type_exception, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "gc_mark", smpFunction_init(&smpTypeError_gc_mark, 1, "Nil"));
	smpType_def(type_exception, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "clear", smpFunction_init(&smpTypeError_clear, 1, "Nil"));
	smpType_def(type_exception, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpTypeError_to_s, 1, "String"));
	
	return 0;
}

Object smpException_backtrace_add_now(Object exc, Object obj, Object fun)
{
	Object pair = smpObject_cons(obj, 1, &fun);
	Object *bt;
	
	if (smpType_name_eq(exc, "TypeError")) {
		bt = &obj_core(SmpTypeExc, exc).backtrace;
	} else {
		bt = &obj_core(SmpExc, exc).backtrace;
	}

	*bt = smpList_append_now(*bt, 1, &pair);
	
	return smp_nil;
}

Object smpException_clear(Object obj, int argc, Object argv[])
{
	smp_free(obj_core(SmpExc, obj).message);
	return smp_nil;
}

Object smpException_gc_mark(Object obj, int argc, Object argv[])
{
	gc_mark_recursive(NULL, obj_core(SmpExc, obj).backtrace);
	return smp_nil;
}

Object smpException_init(Object type)
{
	SmpExc res;
	res.message = NULL;
	res.backtrace = smp_nil;
	
	if (!smpObject_instancep_cstr(type.type, "Class")) {
		internal_error("In smpException_init(), wrong object type (Class expected, %s found).", 
			type.type->name);
		return smp_nil;
	}
	
	Object wrapper = obj_init(&obj_core(SmpType, type));
	wrapper.core = smp_malloc(sizeof(SmpExc));
	obj_core(SmpExc, wrapper) = res;
	
	return wrapper;
}

Object smpException_init_fmt(Object type, const char *fmt, ...)
{
	Object res = smpException_init(type);
	va_list ap;
	va_start(ap, fmt);
	vasprintf(&obj_core(SmpExc, res).message, fmt, ap);
	va_end(ap);
	return res;
}

Object smpException_print(Object obj)
{
	return smpGlobal_fprintf(smp_stderr, "%s\n", obj);
}

Object smpException_to_s(Object obj, int argc, Object argv[])
{	
	SmpExc core = obj_core(SmpExc, obj);
	Object *bt = &core.backtrace;
	Object res = smpString_init_fmt("%s: %s", obj.type->name, core.message);
	
	if (smpType_id_eq(*bt, smpType_id_nil))
		return res;
	
	/* If something is added to the gc stack, the garbage collector might 
	 * run and end up clearing str before it is returned.
	 */

	Object temp, from;
	from = smpString_init_fmt("\n\tfrom ");
	while (bt) {
		smp_println(*bt);
		temp = smpObject_funcall(smpList_car(*bt, 0, NULL), "to_s", 0, NULL);
		check_for_thrown(temp, obj_clear(&from); obj_clear(&res););
			
		smpString_add_now(res, 1, &from);
		smpString_add_now(res, 1, &temp);
		bt = obj_core(SmpList, *bt).cdr;
	}
	obj_clear(&from);
	
	return res;
}

Object smpTypeError_clear(Object obj, int argc, Object argv[])
{
	smp_free(obj_core(SmpTypeExc, obj).message);
	return smp_nil;	
}

Object smpTypeError_gc_mark(Object obj, int argc, Object argv[])
{
	gc_mark_recursive(NULL, obj_core(SmpTypeExc, obj).backtrace);
	gc_mark_recursive(NULL, obj_core(SmpTypeExc, obj).found);
	return smp_nil;
}

Object smpTypeError_init(SmpType *expected, Object found)
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

Object smpTypeError_init_detailed(SmpType *expected, Object found, 
		const char *fmt, ...)
{
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

Object smpTypeError_init_fmt(const char *fmt, ...)
{
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

Object smpTypeError_to_s(Object obj, int argc, Object argv[])
{
	SmpTypeExc core = obj_core(SmpTypeExc, obj);
	Object res;
	if (core.message)
		res = smpString_init(core.message);
	else if (core.expected)
		/* memory leak */
		res = smpGlobal_sprintf("%s: %s expected, %st found.", 
				smpString_init(obj.type->name), smpString_init(core.expected->name), 
				core.found);
	else
		/* memory leak */
		res = smpGlobal_sprintf("%s: unexpected %st.", 
				smpString_init(obj.type->name), core.found);
	
	if (smpType_id_eq(core.backtrace, smpType_id_nil))
		return res;
	
	
	Object newline = smpString_init("\n");
	res = smpString_add_now(res, 1, &newline);
	check_for_thrown(res, NULL);
	obj_clear(&newline);
	
	Object separator = smpString_init_fmt("\n\tfrom ");
	Object str = smpObject_funcall(core.backtrace, "to_s", 1, &separator);
	check_for_thrown(str, NULL);
	res = smpString_add_now(res, 1, &str);
	check_for_thrown(res, NULL);
	
	return res;
}

