/*
 *  smpstring.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/4/11.
 *
 */

#include "smp_classes.h"

int smpstrcreate_class()
{
	Object strclass = smp_getclass("String");

	smptype_def(strclass, SCOPE_INSTANCE_DATA, "+", smpfun_init(&smpstr_add, 2, "String", "String"));
	smptype_def(strclass, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "clear", smpfun_init(&smpstr_clear, 1, "Nil"));
	smptype_def(strclass, SCOPE_INSTANCE_DATA, "equal?", smpfun_init(&smpstr_equalp, 2, "Bool", "Object"));
	smptype_def(strclass, SCOPE_INSTANCE_DATA, "reverse", smpfun_init(&smpstr_reverse, 1, "String"));
	smptype_def(strclass, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smpstr_to_s, 1, "String"));
	smptype_def(strclass, SCOPE_INSTANCE_DATA, "write", smpfun_init(&smpstr_write, 1, "String"));
	return 0;
}

int obj_init_str(Object *obj, char *str)
{
	obj->core = smp_malloc(sizeof(SmpString));

	SmpString core;
	core.length = strlen(str);
	core.s = smp_malloc(sizeof(char) * (core.length + 1));
	strcpy(core.s, str);
	
	obj_core(SmpString, *obj) = core;
	return 0;
}

Object smpstr_add(Object obj, int argc, Object argv[])
{
	if (smpobj_instancep_c(argv[0].type, *obj.type)) {
		SmpString str1 = obj_core(SmpString, obj);
		SmpString str2 = obj_core(SmpString, argv[0]);
		
		size_t length = str1.length + str2.length;
		char *str = smp_malloc(length + 1);
		strcpy(str, str1.s);
		strcpy(str + str1.length, str2.s);
		
		return smpstr_init_ref(&str);
		
	} else {
		return smpglobal_throw(smptypeerr_init(obj.type, argv[0]));		
	}
}

Object smpstr_add_now(Object obj, int argc, Object argv[])
{
	if (smpobj_instancep_c(argv[0].type, *obj.type)) {
		SmpString *core = (SmpString *) obj.core;
		SmpString str2 = obj_core(SmpString, argv[0]);
		
		size_t length = core->length + str2.length;
		core->s = smp_realloc(core->s, length + 1);
		strcpy(core->s + core->length, str2.s);
		core->length = length;
		
		return obj;
		
	} else {
		return smpglobal_throw(smptypeerr_init(obj.type, argv[0]));		
	}	
}

Object smpstr_clear(Object obj, int argc, Object argv[])
{
	smp_free(obj_core(SmpString, obj).s);
	obj_core(SmpString, obj).length = 0;
	return smp_nil;
}

Object smpstr_equalp(Object obj, int argc, Object argv[])
{
	return bool_to_obj(smptype_name_eq(argv[0], "String") && 
			streq(smpstr_to_cstr(obj), smpstr_to_cstr(argv[0])));
}

int smpstr_equalp_cstr(Object obj, char *str)
{
	return streq(smpstr_to_cstr(obj), str);
}

Object smpstr_init(char *str)
{
	Object res = obj_init(&smptype_string);
	obj_init_str(&res, str);
	return res;
}

Object smpstr_init_length(char *str, size_t length)
{
	Object res = obj_init(&smptype_string);
	res.core = smp_malloc(sizeof(SmpString));
	
	size_t str_len = strlen(str);
	if (str_len < length) length = str_len;
	
	SmpString core;
	core.length = length;
	core.s = smp_malloc(sizeof(char) * (core.length + 1));
	strncpy(core.s, str, length);
	core.s[length] = '\0';
	
	obj_core(SmpString, res) = core;
	return res;
}

Object smpstr_init_ref(char **str)
{
	Object res = obj_init(&smptype_string);
	res.core = smp_malloc(sizeof(SmpString));
	
	SmpString core;
	core.s = *str;
	core.length = strlen(*str);
	
	obj_core(SmpString, res) = core;
	return res;
}

Object smpstr_init_fmt(char *format, ...)
{
	va_list ap;
	va_start(ap, format);
	
	char *str;
	vasprintf(&str, format, ap);
	va_end(ap);
	
	return smpstr_init_ref(&str);
}

Object smpstr_reverse(Object obj, int argc, Object argv[])
{
	char *str = smpstr_to_cstr(obj);
	char *other = smp_malloc(sizeof(char) * (strlen(str) + 1));
	
	char *ptr = str + strlen(str);
	int i = 0;
	while (--ptr >= str) {
		other[i++] = *ptr;
	}
	
	Object res = obj_init(&smptype_string);
	obj_init_str(&res, other);
	return res;
}

Object smpstrsubstring(Object obj, int start, int length)
{
	char *str = smpstr_to_cstr(obj);
	if (start + length > strlen(str))
		length = strlen(str) - start;
	if (length <= 0)
		return smpstr_init("");
	
	char *copy = smp_malloc(sizeof(char) * (length + 1));
	strcpy(copy, str + start);
	return smpstr_init_ref(&copy);
}

char * smpstr_to_cstr(Object obj)
{
	return obj_core(SmpString, obj).s;
}

Object smpstr_to_s(Object obj, int argc, Object argv[])
{
	return obj;
}

Object smpstr_write(Object obj, int argc, Object argv[])
{
	char str[(3 + 2 * obj_core(SmpString, obj).length)];
	size_t i = 0;
	str[i++] = '"';
	
	char *ptr = obj_core(SmpString, obj).s;
	while (*ptr) {
		if (*ptr == '"' || *ptr == '\\' || 
				*ptr == '\n' || *ptr == '\r' || *ptr == '\t') {
			str[i++] = '\\';
			if (*ptr == '"')
				str[i++] = '"';
			else if (*ptr == '\\')
				str[i++] = '\\';
			else if (*ptr == '\n')
				str[i++] = 'n';
			else if (*ptr == '\r')
				str[i++] = 'r';
			else if (*ptr == '\t')
				str[i++] = 't';
		} else {
			str[i++] = *ptr;
		}
		
		++ptr;
	}
	
	str[i++] = '"';
	str[i++] = '\0';
	return smpstr_init(str);
}

