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
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "+", smpFunction_init(&smpList_add, 2, "List", "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "add!", smpFunction_init(&smpList_add_now, 2, "List", "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "append", smpFunction_init(&smpList_append, 2, "List", "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "append!", smpFunction_init(&smpList_append_now, 2, "List", "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "at", smpFunction_init(&smpList_at, 2, "Object", "Integer"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "at=", smpFunction_init(&smpList_at_assign, 3, "Object", "Integer", "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "car", smpFunction_init(&smpList_car, 1, "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "cdr", smpFunction_init(&smpList_cdr, 1, "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "concat", smpFunction_init(&smpList_concat, 2, "List", "List"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "concat!", smpFunction_init(&smpList_concat_now, 2, "List", "List"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "copy", smpFunction_init(&smpList_copy, 1, "List"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "each", smpFunction_init(&smpList_each, 1, "Nil"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "empty?", smpFunction_init(&smpList_emptyp, 1, "Bool"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "equal?", smpFunction_init(&smpList_equalp, 2, "Bool", "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "length", smpFunction_init(&smpList_length, 1, "Integer"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "map", smpFunction_init(&smpList_map, 2, "List", "Function"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "reduce", smpFunction_init(&smpList_reduce, 4, "List", "Function", "&optional", "Object"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "reverse", smpFunction_init(&smpList_reverse, 1, "List"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "sort", smpFunction_init(&smpList_sort, 3, "List", "&optional", "Function"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "nsort", smpFunction_init(&smpList_nsort, 3, "List", "&optional", "Function"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "to_a", smpFunction_init(&smpList_to_a, 1, "List"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "to_list", smpFunction_init(&smpList_to_list, 1, "List"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpList_to_s, 3, "String", "&optional", "String"));
	smpType_def(listclass, SCOPE_INSTANCE_DATA, "write", smpFunction_init(&smpList_write, 1, "String"));
	
	return 0;
}

Object smpList_add(Object obj, int argc, Object argv[])
{
	;
	Object obj2 = smpList_copy(obj, 0, NULL);
	
	Object arg2 = argv[0];
	if (smpType_id_eq(arg2, smpType_id_list))
		arg2 = smpList_copy(arg2, 0, NULL);
	
	;
	return smpList_add_now(obj2, 1, &arg2);
}

Object smpList_add_now(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(obj, smpType_id_nil))
		if (smpType_id_eq(argv[0], smpType_id_list)) {
			return argv[0];
		} else {
			return smpObject_cons_c(argv[0], smp_nil);
		}
	
	Object *ptr = &obj;
	while (obj_core(SmpList, *ptr).cdr) {
		ptr = obj_core(SmpList, *ptr).cdr;
	}
		
	SmpList *list_core = &obj_core(SmpList, *ptr);	
	Object cons_cell = smp_nil;
		
	;
	
	if (smpType_id_eq(argv[0], smpType_id_list)) {
		cons_cell = argv[0];
	} else {
		cons_cell = smpObject_cons_c(argv[0], smp_nil);
	}
	list_core->cdr = smp_malloc(sizeof(Object));
	*list_core->cdr = cons_cell;
	
	;
	return obj;
}

Object smpList_append(Object obj, int argc, Object argv[])
{
	Object obj2 = smpList_copy(obj, 0, NULL);
	check_for_thrown(obj2, NULL);
	return smpList_append_now(obj2, argc, argv);
}

Object smpList_append_now(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(obj, smpType_id_nil)) {
		return smpObject_cons_c(argv[0], smp_nil);
	}
	
	Object *ptr = &obj;
	while (obj_core(SmpList, *ptr).cdr) {
		ptr = obj_core(SmpList, *ptr).cdr;
	}
		
	SmpList *list_core = &obj_core(SmpList, *ptr);	
	Object cons_cell = smp_nil;
		
	;
	
	cons_cell = smpObject_cons_c(argv[0], smp_nil);
	list_core->cdr = smp_malloc(sizeof(Object));
	*list_core->cdr = cons_cell;
	
	;
	return obj;	
}

Object smpList_at(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Integer");
	
	Object ret = smp_nil;
	long index = smpInteger_to_clong(&ret, argv[0]);
	check_for_thrown(ret, NULL);
	
	return smpList_at_c(obj, (size_t) index);
}

Object smpList_at_c(Object obj, size_t index)
{
	Object *ptr = &obj;
	size_t i;
	for (i = 0; ptr; ++i) {
		if (i >= index)
			return smpList_car_c(*ptr);
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	return smpGlobal_throw(smpException_init_fmt(
		smp_getclass("IndexOutOfBoundsException"), "%ld", index));
}

Object smpList_at_assign(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Integer");
	
	Object ret = smp_nil;
	long index = smpInteger_to_clong(&ret, argv[0]);
	check_for_thrown(ret, NULL);
	
	return smpList_at_assign_c(obj, (size_t) index, argv[1]);
}

Object smpList_at_assign_c(Object obj, size_t index, Object val)
{
	Object *ptr = &obj;
	size_t i;
	for (i = 0; ptr; ++i) {
		if (i >= index) {
			SmpList list = obj_core(SmpList, *ptr);
			list.car = val;
			return list.car;
		}
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	return smpGlobal_throw(smpException_init_fmt(
		smp_getclass("IndexOutOfBoundsException"), "%ld", index));
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

Object smpList_concat(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "List");
	if (smpType_id_eq(argv[0], smpType_id_nil))
		return obj;
	return smpList_add(obj, argc, argv);
}

Object smpList_concat_now(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "List");
	if (smpType_id_eq(argv[0], smpType_id_nil))
		return obj;
	return smpList_add_now(obj, argc, argv);
}

Object smpList_copy(Object obj, int argc, Object argv[])
{
	;
	Object res = smp_nil;
	Object last = res;
	Object *ptr = &obj;
	Object car = smp_nil;
	while (ptr) {
		car = smpList_car(*ptr, 0, NULL);
		
		if (smpType_id_eq(last, smpType_id_nil)) {
			last = res = smpObject_cons(car, 1, &smp_nil);
		} else {
			obj_core(SmpList, last).cdr = smp_malloc(sizeof(Object));
			last = *obj_core(SmpList, last).cdr = 
					smpObject_cons(car, 1, &smp_nil);
			check_for_thrown(last, );
		}
		
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	;
	return res;
}

Object smpList_each(Object obj, int argc, Object argv[])
{
	smpList_check_nil(obj);
	smp_type_check(argv[0], "Function");
	
	SmpList *list = &obj_core(SmpList, obj);
	Object code;
	Object *rest;
	while (list) {
		code = smpFunction_call(smp_global, argv[0], 1, &list->car);
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
	;
	
	Object res = smp_nil;
	Object last = res;
	Object *ptr = &obj;
	Object car, called;
	while (ptr) {
		car = smpList_car(*ptr, 0, NULL);
		called = smpFunction_call(smp_global, argv[0], 1, &car);
		check_for_thrown(called, );
		
		if (smpType_id_eq(last, smpType_id_nil)) {
			last = res = smpObject_cons(called, 1, &smp_nil);
		} else {
			obj_core(SmpList, last).cdr = smp_malloc(sizeof(Object));
			last = *obj_core(SmpList, last).cdr = 
					smpObject_cons(called, 1, &smp_nil);
			check_for_thrown(last, );
		}
		
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	;
	return res;
}

Object smpList_reduce(Object obj, int argc, Object argv[])
{
	Object initial = smp_nil;
	Object fun = argv[0];
	if (argc > 1) {
		initial = argv[1];
	} else if (smpType_id_eq(obj, smpType_id_nil)) {
		return smp_nil;
	} else {
		initial = smpList_car_c(obj);
		obj = smpList_cdr_c(obj);
	}
	smp_type_check(fun, "Function");
	
	;
	
	Object pair[2];
	pair[0] = initial;
	
	while (smpObject_truep_c(obj)) {
		pair[1] = smpList_car_c(obj);
		
		pair[0] = smpFunction_call(smp_global, fun, 2, pair);
		check_for_thrown(pair[0], );
		
		obj = smpList_cdr_c(obj);
	}
	
	;
	return pair[0];
}

Object smpList_reverse(Object obj, int argc, Object argv[])
{
	;
	
	Object res = smp_nil;
	Object *ptr = &obj;
	Object car = smp_nil;
	while (ptr) {
		res = smpObject_cons_c(smpList_car_c(*ptr), res);
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	;
	return res;
}

Object smpList_sort(Object obj, int argc, Object argv[])
{
	Object copy = smpList_copy(obj, 0, NULL);
	check_for_thrown(copy, NULL);
	return smpList_nsort(copy, argc, argv);
}

Object smpList_nsort(Object obj, int argc, Object argv[])
{
	Object cmp_fun = smp_nil;
	if (argc > 0) {
		cmp_fun = argv[0];
		smp_type_check(cmp_fun, "Function");
	}
	return smpList_sort_rec(obj, smpList_length_clong(obj), cmp_fun);
}

Object smpList_sort_rec(Object obj, size_t length, Object cmp_fun)
{
	if (length <= 1) {
		return obj;
	} else if (length >= SMPLIST_SORT_AS_ARRAY) {
		/* If the list is long enough, the fastest way to sort it is to 
		 * convert it into an array and then sort the array.
		 */
		
		return smpArray_to_list(
			smpArray_sort(smpList_to_a(obj, 0, NULL), 0, NULL), 0, NULL);
	}
					
	/* Split obj into two lists and sort each one. */
	size_t half = length / 2;
	Object list1, list2;
	Object op2 = obj;
	Object *ptr = &op2;
	size_t i;
	for (i = 0; ptr && i < half; ++i) {
		op2 = *ptr;
		ptr = obj_core(SmpList, op2).cdr;
	}
	
	obj_core(SmpList, op2).cdr = NULL;
	op2 = *ptr;
	
	list1 = smpList_sort_rec(obj, half, cmp_fun);
	check_for_thrown(list1, NULL);
	list2 = smpList_sort_rec(op2, length - half, cmp_fun);
	check_for_thrown(list2, NULL);
		
	/* Merge the sorted lists. */
	Object res = smp_nil, ret = smp_nil, cons_cell = smp_nil;
	ptr = NULL;
	int cmp = 0, firstp = TRUE;
	while (smpObject_truep_c(list1) && smpObject_truep_c(list2)) {
		cmp = smp_cmp_helper(&ret, cmp_fun, smpList_car_c(list1), 
			smpList_car_c(list2));
		check_for_thrown(ret, NULL);
		
		if (cmp < 0) {
			cons_cell = smpObject_cons_c(smpList_car_c(list1), smp_nil);
			if (firstp) {
				res = cons_cell;
				ptr = &res;
				firstp = FALSE;
			} else {
				ptr = obj_core(SmpList, *ptr).cdr = smp_malloc(sizeof(Object));
				*ptr = cons_cell;
			}
			list1 = smpList_cdr_c(list1);
		} else {
			cons_cell = smpObject_cons_c(smpList_car_c(list2), smp_nil);
			if (firstp) {
				res = cons_cell;
				ptr = &res;
				firstp = FALSE;
			} else {
				ptr = obj_core(SmpList, *ptr).cdr = smp_malloc(sizeof(Object));
				*ptr = cons_cell;
			}
			list2 = smpList_cdr_c(list2);
		}
	}
		
	if (smpType_id_eq(res, smpType_id_list))
		res = smpList_concat_now(res, 1, &list1);
	else res = list1;
	
	if (smpType_id_eq(res, smpType_id_list))
		res = smpList_concat_now(res, 1, &list2);
	else res = list2;
	
	return res;
}

Object smpList_to_a(Object obj, int argc, Object argv[])
{
	long i, length = smpList_length_clong(obj);
	Object *arr = smp_malloc(sizeof(Object) * next_power_of_2(length));
	memset(arr, 0, sizeof(Object) * next_power_of_2(length));
	
	Object ptr = obj;
	for (i = 0; i < length; ++i) {
		arr[i] = smpList_car_c(ptr);
		ptr = smpList_cdr_c(ptr);
	}
	
	return smpArray_init_array(arr, length);
}

Object smpList_to_list(Object obj, int argc, Object argv[])
{
	return obj;
}

Object smpList_to_s(Object obj, int argc, Object argv[])
{
	;
	
	Object res = smpString_init("(");
	Object divider = smp_nil;
	if (argc > 0) {
		smp_type_check(argv[0], "String");
		divider = argv[0];
	} else {
		divider = smpString_init(" ");
	}
		
	Object str2;
	Object *ptr = &obj;
	int first_timep = TRUE;
	while (ptr) {
		str2 = smpObject_funcall(smpList_car(*ptr, 0, NULL), "to_s", 0, NULL);
		check_for_thrown(str2, );
		if (first_timep == FALSE)
			smpString_add_now(res, 1, &divider);
		smpString_add_now(res, 1, &str2);
		ptr = obj_core(SmpList, *ptr).cdr;
		first_timep = FALSE;
	}
	
	Object paren = smpString_init(")");
	smpString_add_now(res, 1, &paren);
	
	;
	return res;
}

Object smpList_write(Object obj, int argc, Object argv[])
{
	;
	
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
	
	;
	return res;
}

