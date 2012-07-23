/*
 *  smpthrown.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 7/1/11.
 *
 */

int smpThrown_create_class()
{
	Object thrown = smp_getclass("Thrown");
	smpType_def(thrown, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "gc_mark", smpFunction_init(&smpThrown_gc_mark, 1, "Nil"));
	smpType_def(thrown, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpThrown_to_s, 1, "String"));
	
	return 0;
}

Object smpThrown_add_exception_now(Object *obj, Object exc)
{
	if (smpType_id_eq(*obj, smpType_id_nil)) {
		*obj = smpThrown_init(SMPTHROWN_EXCEPTION, exc);
		return smp_nil;
	}
	
	SmpThrown *core = (SmpThrown *) obj->core;
	if (smpType_name_eq(exc, "Thrown")) {
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

int smpThrown_contains_namep(Object obj, char *name)
{
	size_t i;
	for (i = 0; i < obj_core(SmpThrown, obj).length; ++i)
		if (smpType_name_eq(obj_core(SmpThrown, obj).objs[i], name))
			return TRUE;
	return FALSE;
}

Object smpThrown_gc_mark(Object obj, int argc, Object argv[])
{
	size_t i;
	for (i = 0; i < obj_core(SmpThrown, obj).length; ++i)
		gc_mark_recursive(NULL, obj_core(SmpThrown, obj).objs[i]);
	return smp_nil;
}

Object smpThrown_get_first_value(Object obj)
{
	if (obj_core(SmpThrown, obj).length == 0) return smp_nil;
	else return obj_core(SmpThrown, obj).objs[0];
}

Object smpThrown_init(int type, Object obj)
{
	if (smpType_name_eq(obj, "Thrown"))
		return obj;
		
	SmpThrown core;
	core.type = type;
	core.length = 1;
	core.objs = smp_malloc(sizeof(Object) * core.length);
	core.objs[0] = obj;
	
	Object res = obj_init(&smpType_thrown);
	res.core = smp_malloc(sizeof(SmpThrown));
	obj_core(SmpThrown, res) = core;

	return res;
}

int smp_should_breakp_c(Object obj)
{
	return smpType_id_eq(obj, smpType_id_thrown);
}

int smp_should_returnp_c(Object obj)
{
	return smpType_id_eq(obj, smpType_id_thrown) && 
			(obj_core(SmpThrown, obj).type == SMPTHROWN_EXCEPTION ||
			obj_core(SmpThrown, obj).type == SMPTHROWN_RETURN);
}

int smp_thrown_exceptionp_c(Object obj)
{
	return smpType_id_eq(obj, smpType_id_thrown) && 
			obj_core(SmpThrown, obj).type == SMPTHROWN_EXCEPTION;
}

Object smpThrown_to_s(Object obj, int argc, Object argv[])
{
	DISABLE_GC_ACTIVEP;
	Object exc_str = smpString_init("");
	check_for_thrown(exc_str, ENABLE_GC_ACTIVEP);
	Object divider = smpString_init("\n");
	check_for_thrown(divider, ENABLE_GC_ACTIVEP);
	
	size_t i;
	for (i = 0; i < obj_core(SmpThrown, obj).length; ++i) {
		Object new_str = smpObject_funcall(obj_core(SmpThrown, obj).objs[i], 
				"to_s", 0, NULL);
		check_for_thrown(new_str, ENABLE_GC_ACTIVEP);
		if (i > 0) smpString_add_now(exc_str, 1, &divider);
		smpString_add_now(exc_str, 1, &new_str);
		check_for_thrown(exc_str, ENABLE_GC_ACTIVEP);
	}
	
	char *str;
	asprintf(&str, "<Thrown: %s>", smpString_to_cstr(exc_str));
	ENABLE_GC_ACTIVEP;
	return smpString_init_ref(&str);
}


