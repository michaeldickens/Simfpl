/*
 *  object.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/2/11.
 *
 */

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
			return smpGlobal_throw(smpException_init_fmt(
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
	
//	gc_stack_push(&obj);
	
	return obj;
}

int obj_hash(int *dest, Object obj)
{
	if (smpType_name_eq(obj, "String")) {
		*dest = minihash_function(smpString_to_cstr(obj));
		return 0;
	}
	
	Object hash = smpObject_funcall(obj, "compute-hash", 0, NULL);
	if (smpType_id_eq(hash, smpType_id_int)) {
		*dest = smpInteger_to_clong(obj);
		return 0;
	}
	return 1;
}

Object obj_clear(Object *obj)
{
	if (obj->type->instantiability == 
			CLASS_SINGLETON >> CLASS_INSTANTIABILITY_SHIFT)
		return smp_nil;
	
	smpObject_funcall(*obj, "clear", 0, NULL);
	smp_free(obj->gc_mark);
	smp_free(obj->core);
	obj->type = NULL;
	obj->gc_mark = NULL;
	obj->core = NULL;
	
	return *obj;
}

Object objid_init(int type_id)
{
	Object res = obj_init(&smpType_id);
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

Object smpObject_clear(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpObject_cons(Object obj, int argc, Object argv[])
{
	SmpList list;
	list.car = obj;
	
	if (smpType_id_eq(argv[0], smpType_id_nil)) {
		list.cdr = NULL;
	} else if (smpType_id_eq(argv[0], smpType_id_list)) {
		list.cdr = smp_malloc(sizeof(Object));
		*list.cdr = argv[0];
	} else {
		return smpPair_init(obj, argv[0]);
	}
	
	return smpList_init(list);
}

Object smpObject_cons_c(Object car, Object cdr)
{
	return smpObject_cons(car, 1, &cdr);
}

Object smpObject_eq(Object obj, int argc, Object argv[])
{
	if (argc == 1)
		return smpBool_init(obj.core == argv[0].core);
	
	return smpGlobal_throw(smpException_init_fmt(smp_getclass("ArgumentError"), 
			"Wrong number of arguments (1 expected, %d found).", argc));
}

Object smpObject_eql(Object obj, int argc, Object argv[])
{
	return smpObject_funcall(obj, "equal?", argc, argv);
}

Object smpObject_equalp(Object obj, int argc, Object argv[])
{
	return smpObject_funcall(obj, "eq?", argc, argv);
}

Object smpObject_funcall(Object obj, char *name, int argc, Object argv[])
{	
	Object res = smp_nil;
	
	Object fun = smpObject_get_fun(obj, name);
	check_for_thrown(fun, NULL);
	res = smpFunction_call(obj, fun, argc, argv);
	
	return res;
}

Object smpObject_funcall_arg(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Function");
	smp_type_check(argv[1], "List");
	
	Object arglist = argv[1];
	int i, length = (int) smpList_length_clong(arglist);
	Object fun_args[length];
	
	for (i = 0; i < length; ++i) {
		fun_args[i] = smpList_car_c(arglist);
		arglist = smpList_cdr_c(arglist);
	}
	
	return smpFunction_call(obj, argv[0], length, fun_args);
}

Object smpObject_getclass(Object obj, int argc, Object argv[])
{
	return smp_getclass(obj.type->name);
}

Object smpObject_gc_mark(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpObject_get_fun(Object obj, char *name)
{
	if (smpType_id_eq(obj, smpType_id_class)) {
		SmpType *type = &obj_core(SmpType, obj);
		
		Object res = smpObject_get_fun_rec(type, name, FALSE);
		if (smpType_id_eq(res, smpType_id_nil)) {
			return smpGlobal_throw(smpException_init_fmt(
				smp_getclass("UndefinedSymbolError"), 
				"Class function \"%s\" is undefined for %s.", name, 
						type->name));
		}
		
		return res;
	} else {
		SmpType *type = obj.type;
		
		Object res = smpObject_get_fun_rec(type, name, TRUE);
		if (smpType_id_eq(res, smpType_id_nil)) {
			return smpGlobal_throw(smpException_init_fmt(
				smp_getclass("UndefinedSymbolError"), 
				"Instance function \"%s\" is undefined for %s.", name, 
						type->name));
		}
		
		return res;
	}
}

Object smpObject_get_fun_rec(SmpType *type, char *name, int instance_funp)
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
		if (smpType_name_eq(fun, "Function") == FALSE) {
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
		fun = smpObject_get_fun_rec(type->parents[i], name, instance_funp);
		if (smpType_id_eq(fun, smpType_id_nil) == FALSE)
			return fun;
	}
		
	/* If the function is not found anywhere, return nil. */
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
Object smpObject_hash(Object obj, int argc, Object argv[])
{
	long hash = ((long) obj.core) >> 3;
	
	char *key = obj.type->name - 1;
	while (*(++key))
		hash = ((hash << 5) + hash) + *key;
	return smpInteger_init_clong(hash);
}

Object smpObject_instancep(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Class");
	return smpBool_init(smpObject_instancep_cint(obj, argc, argv));
}

int smpObject_instancep_cint(Object obj, int argc, Object argv[])
{
	SmpType *objtype = obj.type;
	SmpType type = obj_core(SmpType, argv[0]);
	return smpObject_instancep_c(objtype, type);
}

int smpObject_instancep_c(SmpType *objtype, SmpType type)
{
	if (objtype == NULL)
		return FALSE;
	if (objtype->type_id == type.type_id)
		return TRUE;
	
	size_t i;
	for (i = 0; i < objtype->parents_length; ++i) {
		if (smpObject_instancep_c(objtype->parents[i], type))
			return TRUE;
	}
	
	return FALSE;
}

int smpObject_instancep_cstr(SmpType *objtype, char *type)
{
	if (streq(objtype->name, type))
		return TRUE;
	
	size_t i;
	for (i = 0; i < objtype->parents_length; ++i) {
		if (smpObject_instancep_cstr(objtype->parents[i], type))
			return TRUE;
	}
	
	return FALSE;
}

Object smpObject_to_s(Object obj, int argc, Object argv[])
{
	return smpString_init_fmt("<%s 0x%lx>", obj.type->name, 
			(unsigned long) (obj.core));
}

Object smpObject_to_s_class(Object obj, int argc, Object argv[])
{
	return smpString_init(obj_core(SmpType, obj).name);
}

Object smpObject_type(Object obj, int argc, Object argv[])
{
	return smp_getclass(obj.type->name);
}

Object smpObject_types_equalp(Object obj, int argc, Object argv[])
{
	return obj_types_equalp(obj, argv[0]);
}

Object smpObject_varcall(Object obj, char *name)
{
	Object res = smp_nil;
	
	MiniHash *hash = NULL;
	if (smpType_id_eq(obj, smpType_id_class)) {
		hash = obj_core(SmpType, obj).class_vars;
	} else {
		hash = &obj_core(StandardCore, obj).instance_vars;
	}

	Object var = minihash_get(hash, name);
	res = var;
		
	return res;
}

Object smpObject_write(Object obj, int argc, Object argv[])
{
	return smpObject_funcall(obj, "to_s", 0, NULL);
}

Object smpObject_write_class(Object obj, int argc, Object argv[])
{
	return smpObject_funcall(obj, "to_s", 0, NULL);
}


