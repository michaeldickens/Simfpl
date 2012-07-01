/*
 *  smp_classes.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/27/11.
 *
 */

#include "smp_classes.h"

int init_smp_classes()
{
	initialized_classesp = FALSE;
	
	init_fundamental_classes();
	init_required_classes();
	
	smpnum_create_class();
	smpint_create_class();
	smpfloat_create_class();
	
	initialized_classesp = TRUE;
	
	return 0;
}

int init_required_classes()
{
	smpglobal_create_class();
	smpregex_create_class();
	smparray_create_class();
	smphash_create_class();
	smpsymbol_create_class();
	
	return 0;
}

int init_fundamental_classes()
{
	smptype_next_id = 1;
	smptype_ids = minihash_init();
	
	smpglobal_class("Object", NULL, CLASS_FUNDAMENTAL);
	
	/* smptype_id must be defined before any class can be created.
	 */
	smptype_id.name = "ID";
	smptype_id.type_id = smptype_next_id++;
	smptype_id.parents_length = 1;
	smptype_id.parents = smp_malloc(sizeof(SmpType *) * smptype_id.parents_length);
	smptype_id.parents[0] = &smptype_object;
	smptype_id.instance_funs = NULL;
	smptype_id.instance_vars_defaults = NULL;
	
	Object object = smp_getclass("Object");
	smptype_object = obj_core(SmpType, object);
		
	/* Class must be created before any objects are used. */
	smpglobal_class("Class", &smptype_object, CLASS_FUNDAMENTAL);
	smptype_class = obj_core(SmpType, smp_getclass("Class"));
	smptype_id_class = smptype_class.type_id;
	
	/* It is impossible to define any functions until Function is created. */
	smpglobal_class("Function", &smptype_object, CLASS_FUNDAMENTAL);
	smptype_function = obj_core(SmpType, smp_getclass("Function"));
	smptype_id_fun = smptype_class.type_id;
	
	smpglobal_class("Atom", &smptype_object, CLASS_FUNDAMENTAL | CLASS_ABSTRACT);
	smptype_atom = obj_core(SmpType, smp_getclass("Atom"));
	
	/* It is impossible to define any functions until String is created. */
	smpglobal_class("String", &smptype_atom, CLASS_FUNDAMENTAL);
	smptype_string = obj_core(SmpType, smp_getclass("String"));
	
	smpglobal_class("Bool", &smptype_atom, CLASS_FUNDAMENTAL | CLASS_ABSTRACT);
	
	smpglobal_class("Collection", &smptype_object, CLASS_FUNDAMENTAL | 
			CLASS_ABSTRACT);
	smptype_collection = obj_core(SmpType, smp_getclass("Collection"));
	
	smpglobal_class("Pair", &smptype_collection, CLASS_FUNDAMENTAL);
	smptype_pair = obj_core(SmpType, smp_getclass("Pair"));
	
	smpglobal_class("List", &smptype_pair, CLASS_FUNDAMENTAL);
	smptype_list = obj_core(SmpType, smp_getclass("List"));
	smptype_id_list = smptype_list.type_id;

	/* It is impossible to define any functions until Nil is created. */
	size_t nil_parents_length = 2;
	SmpType **nil_parents = smp_malloc(sizeof(SmpType *) * nil_parents_length);
	nil_parents[0] = &smptype_list;
	nil_parents[1] = &obj_core(SmpType, smp_getclass("Bool"));
	
	smpglobal_class_multiple("Nil", nil_parents, nil_parents_length, 
			CLASS_SINGLETON | CLASS_FUNDAMENTAL);
	Object nilclass = smp_getclass("Nil");
	smptype_nil = obj_core(SmpType, nilclass);
	smp_nil = obj_init(&smptype_nil);
	smptype_id_nil = smptype_nil.type_id;
	smp_nil.frozenp = TRUE;
	
	Object boolclass = smp_getclass("Bool");
	smpglobal_class("TrueClass", &obj_core(SmpType, boolclass), 
			CLASS_SINGLETON | CLASS_FUNDAMENTAL);
	smp_true = obj_init(&obj_core(SmpType, smp_getclass("TrueClass")));
	smp_true.frozenp = TRUE;

	/* Define Exception and its most important subclasses. */
	smpglobal_class("Exception", &smptype_object, CLASS_FUNDAMENTAL);
	Object exc = smp_getclass("Exception");
	smptype_exception = obj_core(SmpType, exc);
	smpglobal_class("CompileError", &smptype_exception, 0);
	smpglobal_class("RuntimeException", &smptype_exception, 0);
	SmpType *smptype_compiletime = &obj_core(SmpType, smp_getclass("CompileError"));
	smpglobal_class("ArgumentError", smptype_compiletime, 0);
	smpglobal_class("FunctionError", smptype_compiletime, 0);
	smpglobal_class("SyntaxError", smptype_compiletime, 0);
	smpglobal_class("TypeError", smptype_compiletime, 0);
	smpglobal_class("UndefinedSymbolError", smptype_compiletime, 0);
	
	/* Define Thrown. */
	smpglobal_class("Thrown", &smptype_object, CLASS_FUNDAMENTAL);
	smptype_thrown = obj_core(SmpType, smp_getclass("Thrown"));

	
	smptype_def(object, SCOPE_INSTANCE_DATA, "==", smpfun_init(&smpobj_eq, 2, "Bool", "Object"));
	smptype_def(object, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "clear", smpfun_init(&smpobj_clear, 1, "Nil"));
	smptype_def(object, SCOPE_INSTANCE_DATA, "cons", smpfun_init(&smpobj_cons, 2, "List", "Object"));
	smptype_def(object, SCOPE_INSTANCE_DATA, "eq?", smpfun_init(&smpobj_eq, 2, "Bool", "Object"));
	smptype_def(object, SCOPE_INSTANCE_DATA, "eql?", smpfun_init(&smpobj_eql, 2, "Bool", "Object"));
	smptype_def(object, SCOPE_INSTANCE_DATA, "equal?", smpfun_init(&smpobj_equalp, 2, "Bool", "Object"));
	smptype_def(object, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "gc_mark", smpfun_init(&smpobj_gc_mark, 1, "Nil"));
	smptype_def(object, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smpobj_to_s, 1, "String"));
	smptype_def(object, SCOPE_CLASS_DATA, "to_s", smpfun_init(&smpobj_to_s_class, 1, "String"));
	smptype_def(object, SCOPE_INSTANCE_DATA, "type", smpfun_init(&smpobj_type, 1, "Class"));
	smptype_def(object, SCOPE_INSTANCE_DATA, "types_equal?", smpfun_init(&smpobj_types_equalp, 2, "Bool", "Object"));
	smptype_def(object, SCOPE_INSTANCE_DATA, "write", smpfun_init(&smpobj_write, 1, "String"));
	smptype_def(object, SCOPE_CLASS_DATA, "write", smpfun_init(&smpobj_write_class, 1, "String"));
	
	smptype_def(object, SCOPE_CLASS_DATA, "and", smpfun_init(&smpbool_and, 2, "Bool", "Object"));
	smptype_def(object, SCOPE_CLASS_DATA, "not", smpfun_init(&smpbool_not, 1, "Bool"));
	smptype_def(object, SCOPE_CLASS_DATA, "or", smpfun_init(&smpbool_or, 2, "Bool", "Object"));
	smptype_def(object, SCOPE_CLASS_DATA, "xor", smpfun_init(&smpbool_xor, 2, "Bool", "Object"));

	smptype_def(object, SCOPE_CLASS_DATA, "gc_mark", smpfun_init(&smptype_gc_mark, 1, "Nil"));
	
	smptype_def(smp_getclass("TrueClass"), SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smptrue_to_s, 1, "String"));
	
	smpfun_create_class();
	smpcollection_create_class();
	smplist_create_class();
	smpnil_create_class();
	smppair_create_class();
	smpthrown_create_class();
	smpexc_create_class();
	smpstrcreate_class();

	return 0;
}

