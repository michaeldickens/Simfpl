/*
 *  smpbif.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/5/11.
 *
 */

int smpFunction_create_class()
{
	Object function = smp_getclass("Function");
	
	smpType_def(function, SCOPE_INSTANCE_DATA, "clear", smpFunction_init(&smpFunction_clear, 1, "Nil"));
	smpType_def(function, SCOPE_INSTANCE_DATA, "gc_mark", smpFunction_init(&smpFunction_gc_mark, 1, "Nil"));
	smpType_def(function, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpFunction_to_s, 1, "String"));
	
	return 0;
}

Object smpFunction_call(Object obj, Object fun, int argc, Object argv[])
{
	if (!smpType_name_eq(fun, "Function")) {
		return smpGlobal_throw(smpTypeError_init(&smpType_function, fun));
	}
	
	SmpFun fun_core = obj_core(SmpFun, fun);
	
	/* Change the arguments according to the modifiers: optional, rest, etc. 
	 * Assumes that the modifiers have no errors; an optional arg cannot be 
	 * followed by any non-optional args, and a rest arg must come last.
	 */
	int i, restp = FALSE, new_argc = fun_core.argspecs_length - 1;
	
	Object new_argv[new_argc];
	for (i = 0; i < new_argc; ++i) {
		if (i >= argc && fun_core.argspecs[i+1].optionalp) {
			if (fun_core.argspecs[i+1].has_default_valp) {
				new_argv[i] = fun_core.argspecs[i+1].default_val;
			} else {
				new_argc = i;
				break;
			}
		} else if (fun_core.argspecs[i+1].restp) {
			restp = TRUE;
			Object list = smp_nil;
			int j;
			for (j = argc - 1; j >= i; --j) {
				list = smpObject_cons_c(argv[j], list);
			}
			new_argv[i] = list;
			break;
		} else if (i >= argc) {
			return smpGlobal_throw(smpException_init_fmt(
				smp_getclass("ArgumentError"), 
				"Wrong number of arguments in %s.%s (%d expected, %d found).", 
				obj.type->name, fun_core.name, new_argc, argc));
		} else {
			new_argv[i] = argv[i];
		}
	}
	
	if (!restp && new_argc < argc) {
		return smpGlobal_throw(smpException_init_fmt(
			smp_getclass("ArgumentError"), 
			"Wrong number of arguments in %s.%s (%d expected, %d found).", 
			obj.type->name, fun_core.name, new_argc, argc));		
	}
	
	Object res = (*fun_core.fun)(obj, new_argc, new_argv);	
	
	/* If a Thrown object was returned, add this function to the backtraces 
	 * of the contained exceptions. 
	 */
	if (smp_thrown_exceptionp_c(res)) {
		size_t i;
		for (i = 0; i < obj_core(SmpThrown, res).length; ++i) {
			smpException_backtrace_add_now(obj_core(SmpThrown, res).objs[i], obj, fun);
		}
	}
	
	return res;
}

Object smpFunction_clear(Object obj, int argc, Object argv[])
{
	SmpFun core = obj_core(SmpFun, obj);
	smp_free(core.name);
	
	int i;
	for (i = 0; i < core.argspecs_length; ++i) {
		/* name is a string literal, so it doesn't need to be cleared */
//		smp_free(core.argspecs[i].name);
	}
	
	smp_free(obj_core(SmpFun, obj).argspecs);
	return smp_nil;
}

Object smpFunction_gc_mark(Object obj, int argc, Object argv[])
{
	SmpFun core = obj_core(SmpFun, obj);
	
	int i;
	for (i = 0; i < core.argspecs_length; ++i) {
		if (core.argspecs[i].optionalp)
			gc_mark_recursive(NULL, core.argspecs[i].default_val);
	}
	
	return smp_nil;
}

Object smpFunction_init(Object (*fun)(Object obj, int argc, Object argv[]), 
		int argc, ...)
{
	va_list ap;
	va_start(ap, argc);
	Object res = smpFunction_init_v(fun, argc, ap);
	va_end(ap);
	return res;
}

Object smpFunction_init_v(Object (*fun)(Object obj, int argc, Object argv[]), 
		int argc, va_list ap)
{	
	;
	Object res = obj_init(&smpType_function);
		
	SmpFun smp_fun;
	smp_fun.name = NULL;
	smp_fun.permission = SCOPE_PUBLIC;
	smp_fun.fun = fun;
	
	if (argc == 0) {
		;
		return smp_nil;
	}
		
	argspec_t argspecs[argc];
	
	/* If one argument is optional, all the rest are optional as well. */
	int optionalp = FALSE;
		
	char *arg;
	int i, length;
	for (i = 0, length = 0; i < argc; ++i, ++length) {
		argspecs[length].quote = 0;
		argspecs[length].optionalp = optionalp;
		argspecs[length].has_default_valp = FALSE;
		argspecs[length].default_val = smp_nil;
		argspecs[length].restp = FALSE;
		
		arg = va_arg(ap, char *);
		
		/* If a previous argument was the &rest, it is impossible for there 
		 * to be any more arguments.
		 */
		if (length > 0 && argspecs[length-1].restp) {
			;
			return smpGlobal_throw(smpException_init_fmt(
					smp_getclass("FunctionError"), 
					"Unexpected token %s after &rest argument.", arg));
		}
		
		for (; i < argc; (arg = va_arg(ap, char *)) && ++i) {
			if (streq(arg, "&default")) {
				argspecs[length].optionalp = TRUE;
				argspecs[length].has_default_valp = TRUE;
				argspecs[length].default_val = va_arg(ap, Object);
				++i;
			} else if (streq(arg, "&quote")) {
				argspecs[length].quote = TRUE;
			} else if (streq(arg, "&optional")) {
				argspecs[length].optionalp = optionalp = TRUE;
			} else if (streq(arg, "&rest")) {
				argspecs[length].restp = TRUE;
			} else if (streq(arg, "&keyword")) {
				/* TODO: Keywords are handled at compile time. */
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
			
	;
	return res;
}

Object smpFunction_to_s(Object obj, int argc, Object argv[])
{
	if (smpFunction_name(obj))
		return smpString_init_fmt("%s()", smpFunction_name(obj));
	return smpString_init_fmt("<Function: %lx>", obj_core(SmpFun, obj).fun);
}

