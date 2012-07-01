/*
 *  object.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/2/11.
 *
 */

#include "smp_classes.h"

Object obj_init(SmpType *type)
{
	if (gc_runningp) {
		internal_error("Cannot initialize %s while running the garbage collector.", 
				type->name);
	}
	
	Object obj;
	obj.gc_mark = smp_malloc(sizeof(int));
	*obj.gc_mark = FALSE;
	obj.on_gc_stackp = FALSE;
	obj.frozenp = FALSE;
	obj.type = type;
	obj.core = NULL;
	
	if (type->instantiability == CLASS_SINGLETON >> CLASS_INSTANTIABILITY_SHIFT) {
		if (type->instantiatedp)
			return smpglobal_throw(smpexc_init_fmt(
					smp_getclass("InitializationException"), 
					"Cannot initialize singleton class %s.", type->name));
		type->instantiatedp = TRUE;
	}
	
	/* Initialize the object and its instance variables. */
	if (type->externalp == CLASS_EXTERNAL >> CLASS_EXTERNALP_SHIFT) {
		StandardCore core;
		core.instance_vars = minihash_init();
		/* TODO: Add instance variables to core.instance_vars. */
		
		obj.core = smp_malloc(sizeof(StandardCore));
		obj_core(StandardCore, obj) = core;
	}
	
	return obj;
}

int obj_hash(int *dest, Object obj)
{
	if (smptype_name_eq(obj, "String")) {
		*dest = minihash_function(smpstr_to_cstr(obj));
		return 0;
	}
	
	Object hash = smpobj_funcall(obj, "hash", 0, NULL);
	if (smptype_id_eq(hash, smptype_id_int)) {
		*dest = smpint_to_clong(obj);
		return 0;
	}
	return 1;
}

Object obj_clear(Object *obj)
{
	if (obj->type->instantiability == 
			CLASS_SINGLETON >> CLASS_INSTANTIABILITY_SHIFT)
		return smp_nil;
	
	smpobj_funcall(*obj, "clear", 0, NULL);
	smp_free(obj->gc_mark);
	smp_free(obj->core);
	obj->type = NULL;
	obj->gc_mark = NULL;
	obj->core = NULL;
	
	return *obj;
}

Object objid_init(int type_id)
{
	Object res = obj_init(&smptype_id);
	res.core = (void *) type_id;
	return res;
}

Object obj_eq(Object obj1, Object obj2)
{
	return bool_to_obj(obj1.core == obj2.core);
}

Object obj_types_equalp(Object obj1, Object obj2)
{
	return bool_to_obj(streq(obj1.type->name, obj2.type->name));
}

Object smpobj_clear(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpobj_cons(Object obj, int argc, Object argv[])
{
	SmpList list;
	list.car = obj;
	
	if (smptype_id_eq(argv[0], smptype_id_nil)) {
		list.cdr = NULL;
	} else if (smptype_id_eq(argv[0], smptype_id_list)) {
		list.cdr = smp_malloc(sizeof(Object));
		*list.cdr = argv[0];
	} else {
		return smppair_init(obj, argv[0]);
	}
	
	return smplist_init(list);
}

Object smpobj_cons_c(Object car, Object cdr)
{
	return smpobj_cons(car, 1, &cdr);
}

Object smpobj_eq(Object obj, int argc, Object argv[])
{
	if (argc == 1)
		return smpbool_init(obj.core == argv[0].core);
	
	return smpglobal_throw(smpexc_init_fmt(smp_getclass("ArgumentError"), 
			"Wrong number of arguments (1 expected, %d found).", argc));
}

Object smpobj_eql(Object obj, int argc, Object argv[])
{
	return smpobj_funcall(obj, "equal?", argc, argv);
}

Object smpobj_equalp(Object obj, int argc, Object argv[])
{
	return smpobj_funcall(obj, "eq?", argc, argv);
}

Object smpobj_funcall(Object obj, char *name, int argc, Object argv[])
{	
	Object res = smp_nil;
	
	Object fun = smpobj_get_fun(obj, name);
	check_for_thrown(fun, NULL);
	res = smpfun_call(obj, fun, argc, argv);
	
	return res;
}

Object smpobj_getclass(Object obj, int argc, Object argv[])
{
	return smp_getclass(obj.type->name);
}

Object smpobj_get_fun(Object obj, char *name)
{
	if (smptype_id_eq(obj, smptype_id_class)) {
		SmpType *type = &obj_core(SmpType, obj);
		
		Object res = smpobj_get_fun_rec(type, name, FALSE);
		if (smptype_id_eq(res, smptype_id_nil)) {
			return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("UndefinedSymbolError"), 
				"Class function \"%s\" is undefined for %s.", name, 
						type->name));
		}
		
		return res;
	} else {
		SmpType *type = obj.type;
		
		Object res = smpobj_get_fun_rec(type, name, TRUE);
		if (smptype_id_eq(res, smptype_id_nil)) {
			return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("UndefinedSymbolError"), 
				"Instance function \"%s\" is undefined for %s.", name, 
						type->name));
		}
		
		return res;
	}
}

Object smpobj_get_fun_rec(SmpType *type, char *name, int instance_funp)
{
	if (type == NULL) {
		return smp_nil;
	}
		
	Object fun;
	
	MiniHash *hash = NULL;
	if (instance_funp) hash = type->instance_funs;
	else hash = type->class_funs;
	
	/* Look for the function in this type. */
	if (minihash_containsp(hash, name)) {
		fun = minihash_get(hash, name);
		if (smptype_name_eq(fun, "Function") == FALSE) {
			internal_error("Function expected, %s found.", fun.type->name);
		}
		
		return fun;
	}
	
	/* If this type does not contain the function, look in its parent types. */
	if (type->parents == NULL) {
		return smp_nil;
	}
		
	size_t i;
	for (i = 0; i < type->parents_length; ++i) {
		fun = smpobj_get_fun_rec(type->parents[i], name, instance_funp);
		if (smptype_id_eq(fun, smptype_id_nil) == FALSE)
			return fun;
	}
		
	/* If the function is not found anywhere, return nil. */
	return smp_nil;
}

Object smpobj_gc_mark(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

/* Calculates the hash value for an Object. This algorithm is not very good, 
 * which is why it is a good idea for classes to define their own hash 
 * functions.
 * 
 * Takes the pointer to the object's core and divides it by 8. Then it uses the 
 * name of the object's type and runs the well-known string-hashing algorithm 
 * on it.
 */
Object smpobj_hash(Object obj, int argc, Object argv[])
{
	long hash = ((long) obj.core) >> 3;
	
	char *key = obj.type->name - 1;
	while (*(++key))
		hash = ((hash << 5) + hash) + *key;
	return smpint_init_clong(hash);
}

Object smpobj_instancep(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Class");
	return smpbool_init(smpobj_instancep_cint(obj, argc, argv));
}

int smpobj_instancep_cint(Object obj, int argc, Object argv[])
{
	SmpType *objtype = obj.type;
	SmpType type = obj_core(SmpType, argv[0]);
	return smpobj_instancep_c(objtype, type);
}

int smpobj_instancep_c(SmpType *objtype, SmpType type)
{
	if (objtype == NULL)
		return FALSE;
	if (objtype->type_id == type.type_id)
		return TRUE;
	
	size_t i;
	for (i = 0; i < objtype->parents_length; ++i) {
		if (smpobj_instancep_c(objtype->parents[i], type))
			return TRUE;
	}
	
	return FALSE;
}

int smpobj_instancep_cstr(SmpType *objtype, char *type)
{
	if (streq(objtype->name, type))
		return TRUE;
	
	size_t i;
	for (i = 0; i < objtype->parents_length; ++i) {
		if (smpobj_instancep_cstr(objtype->parents[i], type))
			return TRUE;
	}
	
	return FALSE;
}

Object smpobj_to_s(Object obj, int argc, Object argv[])
{
	return smpstr_init_fmt("<%s 0x%lx>", obj.type->name, 
			(unsigned long) (obj.core));
}

Object smpobj_to_s_class(Object obj, int argc, Object argv[])
{
	return smpstr_init(obj_core(SmpType, obj).name);
}

Object smpobj_truep(Object obj, int argc, Object argv[])
{
	return smpbool_init(smpobj_truep_c(obj));
}

int smpobj_truep_c(Object obj)
{
	return !smptype_id_eq(obj, smptype_id_nil);
}

Object smpobj_type(Object obj, int argc, Object argv[])
{
	return smp_getclass(obj.type->name);
}

Object smpobj_types_equalp(Object obj, int argc, Object argv[])
{
	return obj_types_equalp(obj, argv[0]);
}

Object smpobj_varcall(Object obj, char *name)
{
	Object res = smp_nil;
	
	MiniHash *hash = NULL;
	if (smptype_id_eq(obj, smptype_id_class)) {
		hash = obj_core(SmpType, obj).class_vars;
	} else {
		if ((obj.type->externalp == FALSE))
			internal_error("In smpobj_varcall(), expected object of type %s to be an external object.\n", obj.type->name);
		hash = &obj_core(StandardCore, obj).instance_vars;
	}

	Object var = minihash_get(hash, name);
	res = var;
		
	return res;
}

Object smpobj_write(Object obj, int argc, Object argv[])
{
	return smpobj_funcall(obj, "to_s", 0, NULL);
}

Object smpobj_write_class(Object obj, int argc, Object argv[])
{
	return smpobj_funcall(obj, "to_s", 0, NULL);
}

