/*
 *  smpglobal.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/8/11.
 * 
 *  The library for all Global functions.
 *
 */

#include "smp_classes.h"

int smpglobal_create_class()
{
	smp_stdin = stdin;
	smp_stdout = stdout;
	smp_stderr = stderr;
	
	smpglobal_class("Global", &smptype_object, CLASS_ABSTRACT | CLASS_FINAL);
	smp_global = smp_getclass("Global");
	smptype_global = obj_core(SmpType, smp_global);
	
	/* Set Global as the default self. */
	scope_add("self", smp_global);
	
	smptype_def(smp_global, SCOPE_CLASS_DATA, "catch", smpfun_init(&smpglobal_catch_arg, 2, "Nil", "Exception"));
	smptype_def(smp_global, SCOPE_CLASS_DATA, "list", smpfun_init(&smpglobal_list, 3, "List", "&rest", "Object"));
	smptype_def(smp_global, SCOPE_CLASS_DATA, "print", smpfun_init(&smpglobal_print_arg, 2, "Nil", "Object"));
	smptype_def(smp_global, SCOPE_CLASS_DATA, "printf", smpfun_init(&smp_printf_arg, 4, "Nil", "String", "&rest", "Object"));
	smptype_def(smp_global, SCOPE_CLASS_DATA, "println", smpfun_init(&smpglobal_println_arg, 2, "Nil", "Object"));
	smptype_def(smp_global, SCOPE_CLASS_DATA, "sprintf", smpfun_init(&smpglobal_sprintf_arg, 4, "String", "String", "&rest", "Object"));
	smptype_def(smp_global, SCOPE_CLASS_DATA, "throw", smpfun_init(&smpglobal_throw_arg, 1, "Thrown"));
	
	smptype_defvar(smp_global, SCOPE_CLASS_DATA, "nil", smp_nil);
	smptype_defvar(smp_global, SCOPE_CLASS_DATA, "true", smp_true);
		
	return 0;
}

Object smpglobal_catch_arg(Object obj, int argc, Object argv[])
{
	return smpglobal_throw(smpexc_init_fmt(
			smp_getclass("ImplementationException"), 
			"catch() not implemented."));
}

int smpglobal_class(char *name, SmpType *parent, int flags)
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
	
	return smpglobal_class_multiple(name, parents, parents_length, flags);
}

int smpglobal_class_multiple(char *name, SmpType **parents, 
		size_t parents_length, int flags)
{
	if (parents && parents[0] && parents[0]->finalp)
		return 1;
	
	SmpType new_type;
	new_type.name = smp_malloc(sizeof(char) * (strlen(name) + 1));
	strcpy(new_type.name, name);

	new_type.type_id = smptype_next_id++;
	minihash_add(&smptype_ids, new_type.name, objid_init(new_type.type_id));

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

Object smpglobal_class_arg(Object obj, int argc, Object argv[])
{
	Object name = argv[0];
	Object parents = argv[1];
	Object body = argv[2];
	
	char *name_str = smpstr_to_cstr(name);
	
	smp_printf("name: %st, parents: %st, body: %st\n", name, parents, body);
	
	return smp_nil;
}

Object smpglobal_fprint(FILE *fp, Object obj)
{
	Object strobj = smpobj_funcall(obj, "to_s", 0, NULL);
	
	if (smptype_name_eq(strobj, "String") == FALSE)
		return strobj;
	
	fprintf(fp, "%s", smpstr_to_cstr(strobj));
	return smp_nil;
}

Object smpglobal_fprintf(FILE *fp, char *format, ...)
{
	va_list ap;
	va_start(ap, format);
	Object res = smpglobal_vsprintf(format, ap);
	va_end(ap);
	check_for_thrown(res, NULL);
	return smpglobal_fprint(fp, res);
}

Object smpglobal_list(Object obj, int argc, Object argv[])
{
	/* The &rest in the argument specifier does all the work. */
	return argv[0];
}

Object smp_print(Object obj)
{
	Object strobj = smpobj_funcall(obj, "to_s", 0, NULL);
	
	if (smptype_name_eq(strobj, "String") == FALSE)
		return strobj;
	
	fprintf(smp_stdout, "%s", smpstr_to_cstr(strobj));
	return smp_nil;
}

Object smpglobal_print_arg(Object obj, int argc, Object argv[])
{
	return smp_print(argv[0]);
}

Object smp_printf(char *format, ...)
{
	va_list ap;
	va_start(ap, format);
	Object res = smpglobal_vsprintf(format, ap);
	va_end(ap);
	check_for_thrown(res, NULL);
	return smp_print(res);
}

Object smp_printf_arg(Object obj, int argc, Object argv[])
{
	Object res = smpglobal_sprintf(smpstr_to_cstr(obj), argc, argv);
	check_for_thrown(res, NULL);
	smp_print(res);
	return smp_nil;
}

Object smp_println(Object obj)
{
	Object res = smp_print(obj);
	if (smptype_name_eq(res, "Thrown"))
		return res;
	fprintf(smp_stdout, "\n");
	return smp_nil;
}

Object smpglobal_println_arg(Object obj, int argc, Object argv[])
{
	return smp_println(argv[0]);
}

Object smpglobal_sprintf(char *format, ...)
{
	va_list ap;
	va_start(ap, format);
	Object res = smpglobal_vsprintf(format, ap);
	va_end(ap);
	return res;
}

Object smpglobal_vsprintf(char *format, va_list ap)
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
		Object cons = smpobj_cons_c(car, smp_nil);
		if (smptype_id_eq(list_ptr, smptype_id_nil)) {
			list_ptr = list = cons;
		} else {
			smppair_set_cdr_now(list_ptr, 1, &cons);
			list_ptr = smplist_cdr_c(list_ptr);
		}
	}
			
	Object argv[2];
	argv[0] = smpstr_init(format);
	argv[1] = list;
	
	return smpglobal_sprintf_arg(smp_global, argc, argv);
}

Object smpglobal_sprintf_arg(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "String");
	Object listtype = smp_getclass("List");
	if (smpobj_instancep_cint(argv[0], 1, &listtype)) {
		return smpglobal_throw(smptypeerr_init((SmpType *) listtype.core, 
				argv[0]));
	}
	DISABLE_GC_ACTIVEP;
	char *format = obj_core(SmpString, argv[0]).s;
	Object list = argv[1];
	
	size_t str_len = 16;
	char *str = smp_malloc(sizeof(char) * (str_len + 1));
	size_t i = 0, j = 0;
	
	char *ptr = format;
	
	size_t arglen = smplist_length_clong(list);
	
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
			return smpglobal_throw(smpexc_init_fmt(smp_getclass("StringFormatException"), 
					"Not enough arguments for formatted output (%d expected, %d found).", j, arglen));
		}
		
		char *fmt_end = ptr;
		Object fmt_res = obj_put_fmt(smplist_car_c(list), ptr, &fmt_end);
		if (smptype_name_eq(fmt_res, "Thrown")) {
			ENABLE_GC_ACTIVEP;
			return fmt_res;
		} else if (smptype_name_eq(fmt_res, "String") == FALSE) {
			ENABLE_GC_ACTIVEP;
			return smpglobal_throw(smptypeerr_init(
				(SmpType *) smp_getclass("String").core, fmt_res));
		}
		
		/* If there is not enough space in the output string, allocate more. */
		while (obj_core(SmpString, fmt_res).length > str_len - i) {
			str = smp_realloc(str, sizeof(char) * (str_len *= 2));
		}
		
		sprintf(str + i, "%s", smpstr_to_cstr(fmt_res));
		ptr = fmt_end;
		i += strlen(str + i);
		
		list = smplist_cdr_c(list);
		++j;
	}
	
	str[i] = '\0';
	
	Object res = smpstr_init(str);
	smp_free(str);
		
	ENABLE_GC_ACTIVEP;
	return res;	
}

Object obj_put_fmt(Object obj, char *fmt, char **fmt_end)
{	
	if (*fmt != '%')
		return smpglobal_throw(smpexc_init_fmt(
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
	
	if (prec != 0 && smptype_name_eq(obj, "Float")) {
		prec_obj = smpint_init_clong(prec);
		
		argc = 1;
		argv = &prec_obj;
	}
		
	Object res = smp_nil;
	if (type == 's')
		res = smpobj_funcall(obj, "to_s", argc, argv);
	else if (type == 'w')
		res = smpobj_funcall(obj, "write", argc, argv);
	else
		res = smpglobal_throw(smpexc_init_fmt(
				smp_getclass("StringFormatException"), 
				"Undefined format type %c.", type));
	
	check_for_thrown(res, ENABLE_GC_ACTIVEP);
	
	if (*ptr == 't') {
		++ptr;
		char temp_str[strlen(obj.type->name) + 2];
		temp_str[0] = ':';
		strcpy(temp_str + 1, obj.type->name);
		
		Object type_str = smpstr_init(temp_str);
		res = smpstr_add(res, 1, &type_str);
	}
	
	if (fmt_end != NULL)
		*fmt_end = ptr;

	ENABLE_GC_ACTIVEP;
	return res;
}

Object smpglobal_throw(Object exc)
{
	Object thrown = smpthrown_init(SMPTHROWN_EXCEPTION, exc);
	return thrown;
}

Object smpglobal_throw_arg(Object obj, int argc, Object argv[])
{
	return smpglobal_throw(argv[0]);
}

