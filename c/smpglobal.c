/*
 *  smpglobal.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/8/11.
 * 
 *  The library for all Global functions.
 *
 */

int smpGlobal_create_class()
{
	smp_stdin = stdin;
	smp_stdout = stdout;
	smp_stderr = stderr;
	
	smpGlobal_class("Global", &smpType_object, CLASS_ABSTRACT | CLASS_FINAL);
	smp_global = smp_getclass("Global");
	smpType_global = obj_core(SmpType, smp_global);
	
	/* Set Global as the default self. */
	scope_add("self", smp_global);
	
	smpType_def(smp_global, SCOPE_CLASS_DATA, "!", smpFunction_init(&smpBool_not, 2, "Bool", "Object"));
	smpType_def(smp_global, SCOPE_CLASS_DATA, "~", smpFunction_init(&smpInteger_not, 2, "Integer", "Integer"));
	smpType_def(smp_global, SCOPE_CLASS_DATA, "array", smpFunction_init(&smpGlobal_array, 3, "Array", "&rest", "Object"));
	smpType_def(smp_global, SCOPE_CLASS_DATA, "catch", smpFunction_init(&smpGlobal_catch_arg, 2, "Nil", "Exception"));
	smpType_def(smp_global, SCOPE_CLASS_DATA, "list", smpFunction_init(&smpGlobal_list, 3, "List", "&rest", "Object"));
	smpType_def(smp_global, SCOPE_CLASS_DATA, "print", smpFunction_init(&smpGlobal_print_arg, 2, "Nil", "Object"));
	smpType_def(smp_global, SCOPE_CLASS_DATA, "printf", smpFunction_init(&smp_printf_arg, 4, "Nil", "String", "&rest", "Object"));
	smpType_def(smp_global, SCOPE_CLASS_DATA, "println", smpFunction_init(&smpGlobal_println_arg, 2, "Nil", "Object"));
	smpType_def(smp_global, SCOPE_CLASS_DATA, "sprintf", smpFunction_init(&smpGlobal_sprintf_arg, 4, "String", "String", "&rest", "Object"));
	smpType_def(smp_global, SCOPE_CLASS_DATA, "throw", smpFunction_init(&smpGlobal_throw_arg, 1, "Thrown"));
	
	smpType_defvar(smp_global, SCOPE_CLASS_DATA, "nil", smp_nil);
	smpType_defvar(smp_global, SCOPE_CLASS_DATA, "true", smp_true);
		
	return 0;
}

Object smpGlobal_array(Object obj, int argc, Object argv[])
{
	long i, length = smpList_length_clong(argv[0]);
	Object *arr = smp_malloc(sizeof(Object) * next_power_of_2(length));
	memset(arr, 0, sizeof(Object) * next_power_of_2(length));
	
	Object ptr = argv[0];
	for (i = 0; i < length; ++i) {
		arr[i] = smpList_car_c(ptr);
		ptr = smpList_cdr_c(ptr);
	}
	
	return smpArray_init_array(arr, length);
}

Object smpGlobal_catch_arg(Object obj, int argc, Object argv[])
{
	return smpGlobal_throw(smpException_init_fmt(
			smp_getclass("ImplementationException"), 
			"catch() not implemented."));
}

int smpGlobal_class(char *name, SmpType *parent, int flags)
{
	if (parent && parent->finalp)
		return 1;
	
	SmpType **parents;
	size_t parents_length;
	if (parent == NULL) {
		parents = NULL;
		parents_length = 0;
	} else {
		parents = smp_malloc(sizeof(SmpType *));
		*parents = parent;
		parents_length = 1;
	}
	
	return smpGlobal_class_multiple(name, parents, parents_length, flags);
}

int smpGlobal_class_multiple(char *name, SmpType **parents, 
		size_t parents_length, int flags)
{
	if (parents && parents[0] && parents[0]->finalp)
		return 1;
	
	SmpType new_type;
	new_type.name = smp_malloc(sizeof(char) * (strlen(name) + 1));
	strcpy(new_type.name, name);

	new_type.type_id = smpType_next_id++;
	minihash_add(&smpType_ids, new_type.name, objid_init(new_type.type_id));

	new_type.parents = parents;
	new_type.parents_length = parents_length;
	new_type.externalp = (flags & CLASS_EXTERNALP_FLAG) >> 
			CLASS_EXTERNALP_SHIFT;
	new_type.instantiatedp = (flags & CLASS_INSTANTIATEDP_FLAG) >> 
			CLASS_INSTANTIATEDP_SHIFT;
	new_type.instantiability = (flags & CLASS_INSTANTIABILITY_FLAG) >> 
			CLASS_INSTANTIABILITY_SHIFT;
	new_type.finalp = (flags & CLASS_FINALP_FLAG) >> CLASS_FINALP_SHIFT;
	new_type.fundamentalp = (flags & CLASS_FUNDAMENTALP_FLAG) >> 
			CLASS_FUNDAMENTALP_SHIFT;
	
	new_type.instance_funs = smp_malloc(sizeof(MiniHash));
	*new_type.instance_funs = minihash_init();	
	new_type.instance_vars_defaults = smp_malloc(sizeof(MiniHash));
	*new_type.instance_vars_defaults = minihash_init();
	new_type.class_funs = smp_malloc(sizeof(MiniHash));
	*new_type.class_funs = minihash_init();	
	new_type.class_vars = smp_malloc(sizeof(MiniHash));
	*new_type.class_vars = minihash_init();	
	
	smp_putclass(new_type);
	return 0;	
}

Object smpGlobal_class_arg(Object obj, int argc, Object argv[])
{
	Object name = argv[0];
	Object parents = argv[1];
	Object body = argv[2];
	
	char *name_str = smpString_to_cstr(name);
	
	smp_printf("name: %st, parents: %st, body: %st\n", name, parents, body);
	
	return smp_nil;
}

Object smpGlobal_fprint(FILE *fp, Object obj)
{
	Object strobj = smpObject_funcall(obj, "to_s", 0, NULL);
	
	if (smpType_name_eq(strobj, "String") == FALSE)
		return strobj;
	
	fprintf(fp, "%s", smpString_to_cstr(strobj));
	return smp_nil;
}

Object smpGlobal_fprintf(FILE *fp, char *format, ...)
{
	va_list ap;
	va_start(ap, format);
	Object res = smpGlobal_vsprintf(format, ap);
	va_end(ap);
	check_for_thrown(res, NULL);
	return smpGlobal_fprint(fp, res);
}

Object smpGlobal_list(Object obj, int argc, Object argv[])
{
	/* The &rest in the argument specifier does all the work. */
	return argv[0];
}

/*
Object smpGlobal_main(Object obj, int argc, Object argv[])
{
	return smp_nil;
}
*/

Object smp_print(Object obj)
{
	Object strobj = smpObject_funcall(obj, "to_s", 0, NULL);
	
	if (smpType_name_eq(strobj, "String") == FALSE)
		return strobj;
	
	fprintf(smp_stdout, "%s", smpString_to_cstr(strobj));
	return obj;
}

Object smpGlobal_print_arg(Object obj, int argc, Object argv[])
{
	return smp_print(argv[0]);
}

Object smp_printf(char *format, ...)
{
	va_list ap;
	va_start(ap, format);
	Object res = smpGlobal_vsprintf(format, ap);
	va_end(ap);
	check_for_thrown(res, NULL);
	return smp_print(res);
}

Object smp_printf_arg(Object obj, int argc, Object argv[])
{
	Object res = smpGlobal_sprintf_arg(obj, argc, argv);
	check_for_thrown(res, NULL);
	return smp_print(res);
}

Object smp_println(Object obj)
{
	Object res = smp_print(obj);
	if (smpType_name_eq(res, "Thrown"))
		return res;
	fprintf(smp_stdout, "\n");
	return obj;
}

Object smpGlobal_println_arg(Object obj, int argc, Object argv[])
{
	return smp_println(argv[0]);
}

Object smpGlobal_sprintf(char *format, ...)
{
	va_list ap;
	va_start(ap, format);
	Object res = smpGlobal_vsprintf(format, ap);
	va_end(ap);
	return res;
}

Object smpGlobal_vsprintf(char *format, va_list ap)
{
	/* Convert the variable arguments into an array. */
	int argc = 0;
	char *ptr = format;
	while (*ptr) {
		/* If there are two %'s in a row, it is necessary to skip over both of 
		 * them instead of just one. If it only skips one, this routine will 
		 * think that the second one is by itself and count it towards argc.
		 */
		if (*ptr == '%') {
			++ptr;
			if (*(ptr+1) != '%')
				++argc;
		}
		++ptr;
	}
	
	Object list, list_ptr;
	list_ptr = list = smp_nil;
	
	int i;
	for (i = 0; i < argc; ++i) {
		Object car = va_arg(ap, Object);
//		check_for_thrown(car, NULL);
		Object cons = smpObject_cons_c(car, smp_nil);
		if (smpType_id_eq(list_ptr, smpType_id_nil)) {
			list_ptr = list = cons;
		} else {
			smpPair_set_cdr_now(list_ptr, 1, &cons);
			list_ptr = smpList_cdr_c(list_ptr);
		}
	}
			
	Object argv[2];
	argv[0] = smpString_init(format);
	argv[1] = list;
	
	return smpGlobal_sprintf_arg(smp_global, argc, argv);
}

Object smpGlobal_sprintf_arg(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "String");
	Object listtype = smp_getclass("List");
	if (smpObject_instancep_cint(argv[0], 1, &listtype)) {
		return smpGlobal_throw(smpTypeError_init((SmpType *) listtype.core, 
				argv[0]));
	}
	DISABLE_GC_ACTIVEP;
	char *format = obj_core(SmpString, argv[0]).s;
	Object list = argv[1];
	
	size_t str_len = 16;
	char *str = smp_malloc(sizeof(char) * (str_len + 1));
	size_t i = 0, j = 0;
	
	char *ptr = format;
	
	size_t arglen = smpList_length_clong(list);
	
	while (*ptr) {
		if (*ptr != '%') {
			if (i >= str_len)
				str = smp_realloc(str, sizeof(char) * ((str_len *= 2) + 1));
			str[i++] = *(ptr++);
			continue;
		}
		
		/* Make sure the argument list is long enough. */
		if (j >= arglen) {
			++j;
			while (*(ptr++))
				if (*ptr == '%' && *(ptr+1) != '%')
					++j;
			
			ENABLE_GC_ACTIVEP;
			return smpGlobal_throw(smpException_init_fmt(smp_getclass("StringFormatException"), 
					"Not enough arguments for formatted output (%d expected, %d found).", j, arglen));
		}
		
		char *fmt_end = ptr;
		Object fmt_res = obj_put_fmt(smpList_car_c(list), ptr, &fmt_end);
		if (smpType_name_eq(fmt_res, "Thrown")) {
			ENABLE_GC_ACTIVEP;
			return fmt_res;
		} else if (smpType_name_eq(fmt_res, "String") == FALSE) {
			ENABLE_GC_ACTIVEP;
			return smpGlobal_throw(smpTypeError_init(
				(SmpType *) smp_getclass("String").core, fmt_res));
		}
		
		/* If there is not enough space in the output string, allocate more. */
		while (obj_core(SmpString, fmt_res).length > str_len - i) {
			str = smp_realloc(str, sizeof(char) * (str_len *= 2));
		}
		
		sprintf(str + i, "%s", smpString_to_cstr(fmt_res));
		ptr = fmt_end;
		i += strlen(str + i);
		
		list = smpList_cdr_c(list);
		++j;
	}
	
	str[i] = '\0';
	
	Object res = smpString_init(str);
	smp_free(str);
		
	ENABLE_GC_ACTIVEP;
	return res;	
}

Object obj_put_fmt(Object obj, char *fmt, char **fmt_end)
{	
	if (*fmt != '%')
		return smpGlobal_throw(smpException_init_fmt(
				smp_getclass("StringFormatException"), 
				"Undefined format %s (does not begin with '%%').", fmt));

	DISABLE_GC_ACTIVEP;
	
	++fmt;
	
	int width = 0;
	char *ptr = fmt;
	while (*ptr >= '0' && *ptr <= '9')
		width = 10*width + (*(ptr++) - '0');
	
	int prec = 0;
	if (*ptr == '.')
		while (*(++ptr) >= '0' && *ptr <= '9')
			prec = 10*prec + (*ptr - '0');
		
	char type = *(ptr++);
	
	int argc = 0;
	Object *argv = NULL;
	Object prec_obj = smp_nil;
	
	if (prec != 0 && smpType_name_eq(obj, "Float")) {
		prec_obj = smpInteger_init_clong(prec);
		
		argc = 1;
		argv = &prec_obj;
	}
		
	Object res = smp_nil;
	if (type == 's')
		res = smpObject_funcall(obj, "to_s", argc, argv);
	else if (type == 'w')
		res = smpObject_funcall(obj, "write", argc, argv);
	else
		res = smpGlobal_throw(smpException_init_fmt(
				smp_getclass("StringFormatException"), 
				"Undefined format type %c.", type));
	
	check_for_thrown(res, ENABLE_GC_ACTIVEP);
	
	if (*ptr == 't') {
		++ptr;
		char temp_str[strlen(obj.type->name) + 2];
		temp_str[0] = ':';
		strcpy(temp_str + 1, obj.type->name);
		
		Object type_str = smpString_init(temp_str);
		res = smpString_add(res, 1, &type_str);
	}
	
	if (fmt_end != NULL)
		*fmt_end = ptr;

	ENABLE_GC_ACTIVEP;
	return res;
}

Object smpGlobal_throw(Object exc)
{
	Object thrown = smpThrown_init(SMPTHROWN_EXCEPTION, exc);
	return thrown;
}

Object smpGlobal_throw_arg(Object obj, int argc, Object argv[])
{
	return smpGlobal_throw(argv[0]);
}

