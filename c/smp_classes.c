/*
 *  smp_classes.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/27/11.
 *
 */

int init_smp_classes()
{
	initialized_classesp = FALSE;
	
	init_fundamental_classes();
	init_required_classes();
	
	smpNumber_create_class();
	smpInteger_create_class();
	smpFloat_create_class();
	
	initialized_classesp = TRUE;
	
	return 0;
}

int init_required_classes()
{
	smpGlobal_create_class();
	smpRegex_create_class();
	smpArray_create_class();
	smpHash_create_class();
	smpSymbol_create_class();
	
	return 0;
}

int init_fundamental_classes()
{
	smpType_next_id = 1;
	smpType_ids = minihash_init();
	
	smpGlobal_class("Object", NULL, CLASS_FUNDAMENTAL);
	
	/* smpType_id must be defined before any class can be created.
	 */
	smpType_id.name = "ID";
	smpType_id.type_id = smpType_next_id++;
	smpType_id.parents_length = 1;
	smpType_id.parents = smp_malloc(sizeof(SmpType *) * smpType_id.parents_length);
	smpType_id.parents[0] = &smpType_object;
	smpType_id.instance_funs = NULL;
	smpType_id.instance_vars_defaults = NULL;
	
	Object object = smp_getclass("Object");
	smpType_object = obj_core(SmpType, object);
		
	/* Class must be created before any objects are used. */
	smpGlobal_class("Class", &smpType_object, CLASS_FUNDAMENTAL);
	smpType_class = obj_core(SmpType, smp_getclass("Class"));
	smpType_id_class = smpType_class.type_id;
	
	/* It is impossible to define any functions until Function is created. */
	smpGlobal_class("Function", &smpType_object, CLASS_FUNDAMENTAL);
	smpType_function = obj_core(SmpType, smp_getclass("Function"));
	smpType_id_fun = smpType_class.type_id;
	
	smpGlobal_class("Atom", &smpType_object, CLASS_FUNDAMENTAL | CLASS_ABSTRACT);
	smpType_atom = obj_core(SmpType, smp_getclass("Atom"));
	
	/* It is impossible to define any functions until String is created. */
	smpGlobal_class("String", &smpType_atom, CLASS_FUNDAMENTAL);
	smpType_string = obj_core(SmpType, smp_getclass("String"));
	
	smpGlobal_class("Bool", &smpType_atom, CLASS_FUNDAMENTAL | CLASS_ABSTRACT);
	
	smpGlobal_class("Collection", &smpType_object, CLASS_FUNDAMENTAL | 
			CLASS_ABSTRACT);
	smpType_collection = obj_core(SmpType, smp_getclass("Collection"));
	
	smpGlobal_class("Pair", &smpType_collection, CLASS_FUNDAMENTAL);
	smpType_pair = obj_core(SmpType, smp_getclass("Pair"));
	
	smpGlobal_class("List", &smpType_pair, CLASS_FUNDAMENTAL);
	smpType_list = obj_core(SmpType, smp_getclass("List"));
	smpType_id_list = smpType_list.type_id;

	/* It is impossible to define any functions until Nil is created. */
	Object boolclass = smp_getclass("Bool");
	size_t nil_parents_length = 2;
	SmpType **nil_parents = smp_malloc(sizeof(SmpType *) * nil_parents_length);
	nil_parents[0] = &smpType_list;
	nil_parents[1] = &obj_core(SmpType, boolclass);
	
	smpGlobal_class_multiple("Nil", nil_parents, nil_parents_length, 
			CLASS_SINGLETON | CLASS_FUNDAMENTAL);
	Object nilclass = smp_getclass("Nil");
	smpType_nil = obj_core(SmpType, nilclass);
	smp_nil = obj_init(&smpType_nil);
	smpType_id_nil = smpType_nil.type_id;
	smp_nil.frozenp = TRUE;
	
	smpGlobal_class("TrueClass", &obj_core(SmpType, boolclass), 
			CLASS_SINGLETON | CLASS_FUNDAMENTAL);
	smp_true = obj_init(&obj_core(SmpType, smp_getclass("TrueClass")));
	smp_true.frozenp = TRUE;

	/* Define Exception and its most important subclasses. */
	smpGlobal_class("Exception", &smpType_object, CLASS_FUNDAMENTAL);
	Object exc = smp_getclass("Exception");
	smpType_exception = obj_core(SmpType, exc);
	smpGlobal_class("CompileError", &smpType_exception, 0);
	smpGlobal_class("RuntimeException", &smpType_exception, 0);
	SmpType *smpType_compiletime = &obj_core(SmpType, smp_getclass("CompileError"));
	smpGlobal_class("ArgumentError", smpType_compiletime, 0);
	smpGlobal_class("FunctionError", smpType_compiletime, 0);
	smpGlobal_class("SyntaxError", smpType_compiletime, 0);
	smpGlobal_class("TypeError", smpType_compiletime, 0);
	smpGlobal_class("UndefinedSymbolError", smpType_compiletime, 0);
	
	/* Define Thrown. */
	smpGlobal_class("Thrown", &smpType_object, CLASS_FUNDAMENTAL);
	smpType_thrown = obj_core(SmpType, smp_getclass("Thrown"));
	smpType_id_thrown = smpType_thrown.type_id;

	
	smpType_def(object, SCOPE_INSTANCE_DATA, "==", smpFunction_init(&smpObject_eq, 2, "Bool", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "clear", smpFunction_init(&smpObject_clear, 1, "Nil"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "->", smpFunction_init(&smpObject_cons, 2, "List", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "cons", smpFunction_init(&smpObject_cons, 2, "List", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "eq?", smpFunction_init(&smpObject_eq, 2, "Bool", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "eql?", smpFunction_init(&smpObject_eql, 2, "Bool", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "equal?", smpFunction_init(&smpObject_equalp, 2, "Bool", "Object"));
	smpType_def(object, SCOPE_CLASS_DATA, "funcall", smpFunction_init(&smpObject_funcall_arg, 4, "Object", "Function", "&rest", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "funcall", smpFunction_init(&smpObject_funcall_arg, 4, "Object", "Function", "&rest", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "gc_mark", smpFunction_init(&smpObject_gc_mark, 1, "Nil"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpObject_to_s, 1, "String"));
	smpType_def(object, SCOPE_CLASS_DATA, "to_s", smpFunction_init(&smpObject_to_s_class, 1, "String"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "type", smpFunction_init(&smpObject_type, 1, "Class"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "types_equal?", smpFunction_init(&smpObject_types_equalp, 2, "Bool", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "write", smpFunction_init(&smpObject_write, 1, "String"));
	smpType_def(object, SCOPE_CLASS_DATA, "write", smpFunction_init(&smpObject_write_class, 1, "String"));
	
	smpType_def(object, SCOPE_INSTANCE_DATA, "and", smpFunction_init(&smpBool_and, 2, "Bool", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "or", smpFunction_init(&smpBool_or, 2, "Bool", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "xor", smpFunction_init(&smpBool_xor, 2, "Bool", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "&&", smpFunction_init(&smpBool_and, 2, "Bool", "Object"));
	smpType_def(object, SCOPE_INSTANCE_DATA, "||", smpFunction_init(&smpBool_or, 2, "Bool", "Object"));

	smpType_def(object, SCOPE_CLASS_DATA, "gc_mark", smpFunction_init(&smpType_gc_mark, 1, "Nil"));
	
	smpType_def(smp_getclass("TrueClass"), SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smptrue_to_s, 1, "String"));
	
	smpFunction_create_class();
	smpCollection_create_class();
	smpList_create_class();
	smpNil_create_class();
	smpPair_create_class();
	smpThrown_create_class();
	smpException_create_class();
	smpstrcreate_class();

	return 0;
}

