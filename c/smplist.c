/*
 *  smplist.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 6/28/11.
 *
 */

int smpList_create_class()
{
	Object listclass = smp_getclass("List");
	
	smpType_def(listclass, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "gc_mark", smpFunction_init(&smpList_gc_mark, 1, "Nil"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "add!", smpFunction_init(&smpList_add_now, 2, "List", "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "car", smpFunction_init(&smpList_car, 1, "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "cdr", smpFunction_init(&smpList_cdr, 1, "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "empty?", smpFunction_init(&smpList_emptyp, 1, "Bool"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "equal?", smpFunction_init(&smpList_equalp, 2, "Bool", "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "length", smpFunction_init(&smpList_length, 1, "Integer"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "map", smpFunction_init(&smpList_map, 2, "List", "Function"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "reduce", smpFunction_init(&smpList_reduce, 4, "List", "Function", "&optional", "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpList_to_s, 1, "String"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "write", smpFunction_init(&smpList_write, 1, "String"));
	
	return 0;
}

Object smpList_add_now(Object obj, int argc, Object argv[])
{
	Object *ptr = &obj;
	while (TRUE) {
		if (obj_core(SmpList, *ptr).cdr == NULL)
			break;
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	SmpList *list_core = &obj_core(SmpList, *ptr);	
	Object cons_cell = smpObject_cons_c(argv[0], smp_nil);
	list_core->cdr = smp_malloc(sizeof(Object));
	*list_core->cdr = cons_cell;
	return obj;
}

Object smpList_car(Object obj, int argc, Object argv[])
{
	return obj_core(SmpList, obj).car;
}

Object smpList_cdr(Object obj, int argc, Object argv[])
{
	Object *cdr = obj_core(SmpList, obj).cdr;
	return obj_deref(cdr);
}

Object smpList_each(Object obj, int argc, Object argv[])
{
	smpList_check_nil(obj);
	smp_type_check(argv[0], "Function");
	
	SmpList *list = (SmpList *) obj.core;
	Object code;
	Object *rest;
	while (list) {
		code = smpFunction_call(smp_getclass("Global"), argv[0], 1, &list->car);
		check_for_thrown(code, NULL);
		
		rest = list->cdr;
		
		if (rest == NULL) {
			break;
		} else if (smpType_id_eq(*rest, smpType_id_list)) {
			list = (SmpList *) rest->core;
		} else {
			return smpGlobal_throw(smpTypeError_init(obj.type, *rest));
		}
	}
	
	return smp_nil;
}

Object smpList_emptyp(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpList_equalp(Object obj, int argc, Object argv[])
{
	if (smpType_name_eq(argv[0], "List") == FALSE) {
		return smp_nil;
	}
	
	Object list1 = obj, list2 = argv[0];
	Object car1, car2;
	
	if (smpList_length_clong(list1) != smpList_length_clong(list2)) {
		return smp_nil;
	}
	
	while (smpType_id_eq(list1, smpType_id_nil) == FALSE) {
		car1 = smpList_car_c(list1);
		car2 = smpList_car_c(list2);
		
		if (smpObject_truep_c(smpObject_funcall(car1, "equal?", 1, &car2)) == FALSE)
			return smp_nil;
		
		list1 = smpList_cdr_c(list1);
		list2 = smpList_cdr_c(list2);
	}
	
	return smp_true;
}

Object smpList_gc_mark(Object obj, int argc, Object argv[])
{
	smpList_check_nil(obj);
	Object *ptr = &obj;
	while (ptr) {
		gc_mark_recursive(NULL, obj_core(SmpList, *ptr).car);
		GC_MARK_OBJECT(*ptr);
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	return smp_nil;
}

Object smpList_init(SmpList list)
{
	Object res = obj_init(&smpType_list);
	res.core = smp_malloc(sizeof(SmpList));
	obj_core(SmpList, res) = list;
	return res;
}

Object smpList_get(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Integer");
	long index = smpInteger_to_clong(argv[0]);
	return smpList_get_clong(obj, index);
}

Object smpList_get_clong(Object obj, long index)
{
	Object *ptr = &obj;
	
	int i;
	for (i = 0; ptr && i < index; ++i) {
		ptr = obj_core(SmpList, *ptr).cdr;
		
		if (ptr == NULL)
			break;
		else if (smpType_id_eq(*ptr, smpType_id_list) == FALSE)
			return smpGlobal_throw(smpTypeError_init(obj.type, *ptr));			
	}
	
	if (ptr) return obj_core(SmpList, *ptr).car;
	else return smp_nil;
}

Object smpList_length(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(obj, smpType_id_nil))
		return smpInteger_init_clong(0);
	
	long length = 0;
	SmpList *list = (SmpList *) obj.core;
	Object *rest;
	while (list) {
		++length;
		rest = list->cdr;
		if (rest == NULL) {
			break;
		} else if (smpType_id_eq(*rest, smpType_id_list)) {
			list = (SmpList *) rest->core;
		} else {
			return smpGlobal_throw(smpTypeError_init(obj.type, *rest));
		}
	}
	
	return smpInteger_init_clong(length);
}

long smpList_length_clong(Object obj)
{
	if (smpType_id_eq(obj, smpType_id_nil))
		return 0;
	
	long length = 0;
	Object *ptr = &obj;
	while (ptr) {
		++length;
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	return length;
}

Object smpList_map(Object obj, int argc, Object argv[])
{
	smpList_check_nil(obj);
	smp_type_check(argv[0], "Function");
	DISABLE_GC_ACTIVEP;
	
	Object res = smp_nil;
	Object last = res;
	Object *ptr = &obj;
	Object car, called;
	while (ptr) {
		car = smpList_car(*ptr, 0, NULL);
		called = smpFunction_call(smp_global, argv[0], 1, &car);
		check_for_thrown(called, ENABLE_GC_ACTIVEP);
		
		if (last.core == smp_nil.core) {
			last = res = smpObject_cons(called, 1, &smp_nil);
		} else {
			obj_core(SmpList, last).cdr = smp_malloc(sizeof(Object));
			last = *obj_core(SmpList, last).cdr = 
					smpObject_cons(called, 1, &smp_nil);
			check_for_thrown(last, ENABLE_GC_ACTIVEP);
		}
		
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	ENABLE_GC_ACTIVEP;
	return res;
}

Object smpList_reduce(Object obj, int argc, Object argv[])
{
	Object initial = smp_nil;
	Object fun = argv[0];
	if (argc > 1) {
		initial = argv[1];
	} else {
		initial = smpList_car_c(obj);
	}
	smp_type_check(fun, "Function");
	
	DISABLE_GC_ACTIVEP;
	
	Object pair[2];
	pair[0] = initial;
	
	while (smpObject_truep_c(obj)) {
		pair[1] = smpList_car_c(obj);
		
		pair[0] = smpFunction_call(smp_global, fun, 2, pair);
		check_for_thrown(pair[0], ENABLE_GC_ACTIVEP);
		
		obj = smpList_cdr_c(obj);
	}
	
	ENABLE_GC_ACTIVEP;
	return pair[0];
}

Object smpList_to_s(Object obj, int argc, Object argv[])
{
	DISABLE_GC_ACTIVEP;
	
	Object res = smpString_init("(");
	Object divider = smpString_init(" ");
		
	Object str2;
	Object *ptr = &obj;
	int first_timep = TRUE;
	while (ptr) {
		str2 = smpObject_funcall(smpList_car(*ptr, 0, NULL), "to_s", 0, NULL);
		check_for_thrown(str2, ENABLE_GC_ACTIVEP);
		if (first_timep == FALSE)
			smpString_add_now(res, 1, &divider);
		smpString_add_now(res, 1, &str2);
		ptr = obj_core(SmpList, *ptr).cdr;
		first_timep = FALSE;
	}
	
	Object paren = smpString_init(")");
	smpString_add_now(res, 1, &paren);
	
	ENABLE_GC_ACTIVEP;
	return res;
}

Object smpList_write(Object obj, int argc, Object argv[])
{
	DISABLE_GC_ACTIVEP;
	
	Object res = smpString_init("(list");
	Object divider = smpString_init(" ");
	
	Object str2;
	Object *ptr = &obj;
	while (ptr) {
		str2 = smpObject_funcall(smpList_car(*ptr, 0, NULL), "write", argc, argv);
		smpString_add_now(res, 1, &divider);
		smpString_add_now(res, 1, &str2);
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	Object paren = smpString_init(")");
	smpString_add_now(res, 1, &paren);
	
	ENABLE_GC_ACTIVEP;
	return res;
}

