/*
 *  smptype.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 6/28/11.
 *
 */

#include "smp_classes.h"

Object smptype_abstract_def(Object type, int scope, char *name, int argc, ...)
{
	va_list ap;
	va_start(ap, argc);
	Object res = smptype_def(type, scope, name, smpfun_init_v(&smp_abstract_function, argc, ap));
	va_end(ap);
	return res;
}

Object smptype_clear(Object obj, int argc, Object argv[])
{
	SmpType type = obj_core(SmpType, obj);
	
	/* Do not need to fullclear() because all of the objects inside class_funs 
	 * should have been added to the garbage collection pile.
	 */
	minihash_clear(type.class_funs);
	minihash_clear(type.class_vars);
	
	smp_free(type.name);
	smp_free(type.parents);
	type.parents = NULL;
	minihash_clear(type.instance_funs);
	minihash_clear(type.instance_vars_defaults);
	return smp_nil;
}

Object smptype_def_general(Object type, int flags, char *name, Object obj)
{	
	check_for_thrown(type, NULL);
		
	MiniHash *data = NULL;
	if (!smptype_name_eq(type, "Class"))
		return smpglobal_throw(smptypeerr_init(&smptype_class, type));
	if ((flags & FUNVAR_FLAG) == FUNVAR_FUN && !smptype_name_eq(obj, "Function"))
		return smpglobal_throw(smptypeerr_init(&smptype_function, obj));
	
	if ((flags & FUNVAR_FLAG) == FUNVAR_FUN) {
		smpfun_name(obj) = smp_malloc(sizeof(char) * (strlen(name) + 1));
		strcpy(smpfun_name(obj), name);
		obj_core(SmpFun, obj).permission = flags & SCOPE_PERMISSION_FLAG;
	}
	
	/* Determine which hash to put the defined object into.
	 */
	if ((flags & SCOPE_DATA_FLAG) == SCOPE_INSTANCE_DATA) {
		if ((flags & FUNVAR_FLAG) == FUNVAR_FUN)
			data = obj_core(SmpType, type).instance_funs;
		else if ((flags & FUNVAR_FLAG) == FUNVAR_VAR)
			data = obj_core(SmpType, type).instance_vars_defaults;
		else
			internal_error("Undefined function-variable flag %d.\n", 
					flags & FUNVAR_FLAG);
		
	} else if ((flags & SCOPE_DATA_FLAG) == SCOPE_CLASS_DATA) {
		if ((flags & FUNVAR_FLAG) == FUNVAR_FUN)
			data = obj_core(SmpType, type).class_funs;
		else if ((flags & FUNVAR_FLAG) == FUNVAR_VAR)
			data = obj_core(SmpType, type).class_vars;
		else
			internal_error("Undefined function-variable flag %d.\n", 
					flags & FUNVAR_FLAG);
	} else {
		internal_error("Undefined scope flag %d.\n", flags & SCOPE_DATA_FLAG);
	}
	
	gc_stack_push(&obj);
	minihash_add(data, name, obj);
	
	return smp_nil;
}

Object smptype_def(Object type, int flags, char *name, Object fun)
{
	return smptype_def_general(type, flags | FUNVAR_FUN, name, fun);
}

Object smptype_defvar(Object type, int flags, char *name, Object var)
{
	return smptype_def_general(type, flags | FUNVAR_VAR, name, var);
}

Object smptype_equalp(Object obj, int argc, Object argv[])
{
	if (smptype_name_eq(argv[0], "Class")) {
		return smpbool_init(obj_core(SmpType, obj).type_id == 
				obj_core(SmpType, argv[0]).type_id);
	}
	
	return smp_nil;
}

Object smptype_gc_mark(Object obj, int argc, Object argv[])
{
	minihash_each(obj_core(SmpType, obj).class_funs, 
			&gc_mark_recursive);

	minihash_each(obj_core(SmpType, obj).class_vars, 
			&gc_mark_recursive);

	minihash_each(obj_core(SmpType, obj).instance_funs,
			&gc_mark_recursive);
	
	minihash_each(obj_core(SmpType, obj).instance_vars_defaults,
			&gc_mark_recursive);
	return smp_nil;
}

Object smptype_relatedp(Object obj, int argc, Object argv[])
{
	SmpType *type1 = &obj_core(SmpType, obj);
	SmpType type2 = obj_core(SmpType, argv[0]);
	return smpbool_init(smpobj_instancep_c(type1, type2));
}

