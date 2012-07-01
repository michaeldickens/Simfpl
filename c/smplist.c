/*
 *  smplist.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 6/28/11.
 *
 */

#include "smp_classes.h"

int smplist_create_class()
{
	Object listclass = smp_getclass("List");
	
	smptype_def(listclass, SCOPE_INSTANCE_DATA | SCOPE_INTERNAL, "gc_mark", smpfun_init(&smplist_gc_mark, 1, "Nil"));
	smptype_def(listclass, SCOPE_INSTANCE_DATA, "add!", smpfun_init(&smplist_add_now, 2, "List", "Object"));
	smptype_def(listclass, SCOPE_INSTANCE_DATA, "car", smpfun_init(&smplist_car, 1, "Object"));
	smptype_def(listclass, SCOPE_INSTANCE_DATA, "cdr", smpfun_init(&smplist_cdr, 1, "Object"));
	smptype_def(listclass, SCOPE_INSTANCE_DATA, "empty?", smpfun_init(&smplist_emptyp, 1, "Bool"));
	smptype_def(listclass, SCOPE_INSTANCE_DATA, "equal?", smpfun_init(&smplist_equalp, 2, "Bool", "Object"));
	smptype_def(listclass, SCOPE_INSTANCE_DATA, "length", smpfun_init(&smplist_length, 1, "Integer"));
	smptype_def(listclass, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smplist_to_s, 1, "String"));
	smptype_def(listclass, SCOPE_INSTANCE_DATA, "write", smpfun_init(&smplist_write, 1, "String"));
	
	return 0;
}

Object smplist_add_now(Object obj, int argc, Object argv[])
{
	Object *ptr = &obj;
	while (TRUE) {
		if (obj_core(SmpList, *ptr).cdr == NULL)
			break;
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	SmpList *list_core = &obj_core(SmpList, *ptr);	
	Object cons_cell = smpobj_cons_c(argv[0], smp_nil);
	list_core->cdr = smp_malloc(sizeof(Object));
	*list_core->cdr = cons_cell;
	return obj;
}

Object smplist_car(Object obj, int argc, Object argv[])
{
	return obj_core(SmpList, obj).car;
}

Object smplist_cdr(Object obj, int argc, Object argv[])
{
	Object *cdr = obj_core(SmpList, obj).cdr;
	return obj_deref(cdr);
}

Object smplist_each(Object obj, int argc, Object argv[])
{
	smplist_check_nil(obj);
	smp_type_check(argv[0], "Function");
	
	SmpList *list = (SmpList *) obj.core;
	Object code;
	Object *rest;
	while (list) {
		code = smpfun_call(smp_getclass("Global"), argv[0], 1, &list->car);
		check_for_thrown(code, NULL);
		
		rest = list->cdr;
		
		if (rest == NULL) {
			break;
		} else if (smptype_id_eq(*rest, smptype_id_list)) {
			list = (SmpList *) rest->core;
		} else {
			return smpglobal_throw(smptypeerr_init(obj.type, *rest));
		}
	}
	
	return smp_nil;
}

Object smplist_emptyp(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smplist_equalp(Object obj, int argc, Object argv[])
{
	if (smptype_name_eq(argv[0], "List") == FALSE) {
		return smp_nil;
	}
	
	Object list1 = obj, list2 = argv[0];
	Object car1, car2;
	
	if (smplist_length_clong(list1) != smplist_length_clong(list2)) {
		return smp_nil;
	}
	
	while (smptype_id_eq(list1, smptype_id_nil) == FALSE) {
		car1 = smplist_car_c(list1);
		car2 = smplist_car_c(list2);
		
		if (smpobj_truep_c(smpobj_funcall(car1, "equal?", 1, &car2)) == FALSE)
			return smp_nil;
		
		list1 = smplist_cdr_c(list1);
		list2 = smplist_cdr_c(list2);
	}
	
	return smp_true;
}

Object smplist_gc_mark(Object obj, int argc, Object argv[])
{
	smplist_check_nil(obj);
	Object *ptr = &obj;
	while (ptr) {
		gc_mark_recursive(NULL, obj_core(SmpList, *ptr).car);
		GC_MARK_OBJECT(*ptr);
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	return smp_nil;
}

Object smplist_init(SmpList list)
{
	Object res = obj_init(&smptype_list);
	res.core = smp_malloc(sizeof(SmpList));
	obj_core(SmpList, res) = list;
	return res;
}

Object smplist_get(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Integer");
	long index = smpint_to_clong(argv[0]);
	return smplist_get_clong(obj, index);
}

Object smplist_get_clong(Object obj, long index)
{
	Object *ptr = &obj;
	
	int i;
	for (i = 0; ptr && i < index; ++i) {
		ptr = obj_core(SmpList, *ptr).cdr;
		
		if (ptr == NULL)
			break;
		else if (smptype_id_eq(*ptr, smptype_id_list) == FALSE)
			return smpglobal_throw(smptypeerr_init(obj.type, *ptr));			
	}
	
	if (ptr) return obj_core(SmpList, *ptr).car;
	else return smp_nil;
}

Object smplist_length(Object obj, int argc, Object argv[])
{
	if (smptype_id_eq(obj, smptype_id_nil))
		return smpint_init_clong(0);
	
	long length = 0;
	SmpList *list = (SmpList *) obj.core;
	Object *rest;
	while (list) {
		++length;
		rest = list->cdr;
		if (rest == NULL) {
			break;
		} else if (smptype_id_eq(*rest, smptype_id_list)) {
			list = (SmpList *) rest->core;
		} else {
			return smpglobal_throw(smptypeerr_init(obj.type, *rest));
		}
	}
	
	return smpint_init_clong(length);
}

long smplist_length_clong(Object obj)
{
	if (smptype_id_eq(obj, smptype_id_nil))
		return 0;
	
	long length = 0;
	Object *ptr = &obj;
	while (ptr) {
		++length;
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	return length;
}

Object smplist_map(Object obj, int argc, Object argv[])
{
	smplist_check_nil(obj);
	smp_type_check(argv[0], "Function");
	DISABLE_GC_ACTIVEP;
	
	Object res = smp_nil;
	Object last = res;
	Object *ptr = &obj;
	Object car, called;
	while (ptr) {
		car = smplist_car(*ptr, 0, NULL);
		called = smpfun_call(smp_global, argv[0], 1, &car);
		check_for_thrown(called, ENABLE_GC_ACTIVEP);
		
		if (last.core == smp_nil.core) {
			last = res = smpobj_cons(called, 1, &smp_nil);
		} else {
			obj_core(SmpList, last).cdr = smp_malloc(sizeof(Object));
			last = *obj_core(SmpList, last).cdr = 
					smpobj_cons(called, 1, &smp_nil);
			check_for_thrown(last, ENABLE_GC_ACTIVEP);
		}
		
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	ENABLE_GC_ACTIVEP;
	return res;
}

Object smplist_to_s(Object obj, int argc, Object argv[])
{
	DISABLE_GC_ACTIVEP;
	
	Object res = smpstr_init("(");
	Object divider = smpstr_init(" ");
		
	Object str2;
	Object *ptr = &obj;
	int first_timep = TRUE;
	while (ptr) {
		str2 = smpobj_funcall(smplist_car(*ptr, 0, NULL), "to_s", argc, argv);
		if (first_timep == FALSE)
			smpstr_add_now(res, 1, &divider);
		smpstr_add_now(res, 1, &str2);
		ptr = obj_core(SmpList, *ptr).cdr;
		first_timep = FALSE;
	}
	
	Object paren = smpstr_init(")");
	smpstr_add_now(res, 1, &paren);
	
	ENABLE_GC_ACTIVEP;
	return res;
}

Object smplist_write(Object obj, int argc, Object argv[])
{
	DISABLE_GC_ACTIVEP;
	
	Object res = smpstr_init("(list");
	Object divider = smpstr_init(" ");
	
	Object str2;
	Object *ptr = &obj;
	while (ptr) {
		str2 = smpobj_funcall(smplist_car(*ptr, 0, NULL), "write", argc, argv);
		smpstr_add_now(res, 1, &divider);
		smpstr_add_now(res, 1, &str2);
		ptr = obj_core(SmpList, *ptr).cdr;
	}
	
	Object paren = smpstr_init(")");
	smpstr_add_now(res, 1, &paren);
	
	ENABLE_GC_ACTIVEP;
	return res;
}

