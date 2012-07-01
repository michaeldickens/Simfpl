/*
 *  smpthrown.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 7/1/11.
 *
 */

#include "smp_classes.h"

int smpthrown_create_class()
{
	Object thrown = smp_getclass("Thrown");
	smptype_def(thrown, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "gc_mark", smpfun_init(&smpthrown_gc_mark, 1, "Nil"));
	smptype_def(thrown, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smpthrown_to_s, 1, "String"));
	
	return 0;
}

Object smpthrown_add_exception_now(Object *obj, Object exc)
{
	if (smptype_id_eq(*obj, smptype_id_nil)) {
		*obj = smpthrown_init(SMPTHROWN_EXCEPTION, exc);
		return smp_nil;
	}
	
	SmpThrown *core = (SmpThrown *) obj->core;
	if (smptype_name_eq(exc, "Thrown")) {
		SmpThrown other_core = obj_core(SmpThrown, exc);
		size_t old_length = core->length;
		core->length += other_core.length;
		core->objs = smp_realloc(core->objs, sizeof(Object) * core->length);
		memcpy(core->objs + old_length, other_core.objs, 
				sizeof(Object) * other_core.length);
	} else {
		++core->length;
		core->objs = smp_realloc(core->objs, sizeof(Object) * core->length);
		core->objs[core->length - 1] = exc;
	}
	
	return smp_nil;
}

int smpthrown_contains_namep(Object obj, char *name)
{
	size_t i;
	for (i = 0; i < obj_core(SmpThrown, obj).length; ++i)
		if (smptype_name_eq(obj_core(SmpThrown, obj).objs[i], name))
			return TRUE;
	return FALSE;
}

Object smpthrown_gc_mark(Object obj, int argc, Object argv[])
{
	size_t i;
	for (i = 0; i < obj_core(SmpThrown, obj).length; ++i)
		gc_mark_recursive(NULL, obj_core(SmpThrown, obj).objs[i]);
	return smp_nil;
}

Object smpthrown_init(int type, Object obj)
{
	if (smptype_name_eq(obj, "Thrown"))
		return obj;
	
	SmpThrown core;
	core.type = type;
	core.length = 1;
	core.objs = smp_malloc(sizeof(Object) * core.length);
	core.objs[0] = obj;
	
	Object res = obj_init(&smptype_thrown);
	res.core = smp_malloc(sizeof(SmpThrown));
	obj_core(SmpThrown, res) = core;

	return res;
}

Object smpthrown_to_s(Object obj, int argc, Object argv[])
{
	DISABLE_GC_ACTIVEP;
	Object exc_str = smpstr_init("");
	check_for_thrown(exc_str, ENABLE_GC_ACTIVEP);
	Object divider = smpstr_init("\n");
	check_for_thrown(divider, ENABLE_GC_ACTIVEP);
	
	size_t i;
	for (i = 0; i < obj_core(SmpThrown, obj).length; ++i) {
		Object new_str = smpobj_funcall(obj_core(SmpThrown, obj).objs[i], 
				"to_s", 0, NULL);
		check_for_thrown(new_str, ENABLE_GC_ACTIVEP);
		if (i > 0) smpstr_add_now(exc_str, 1, &divider);
		smpstr_add_now(exc_str, 1, &new_str);
		check_for_thrown(exc_str, ENABLE_GC_ACTIVEP);
	}
	
	char *str;
	asprintf(&str, "<Thrown: %s>", smpstr_to_cstr(exc_str));
	ENABLE_GC_ACTIVEP;
	return smpstr_init_ref(&str);
}


