/*
 *  smparray.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/4/11.
 *
 */

#include "smp_classes.h"

int smparray_create_class()
{
	smpglobal_class("Array", &smptype_object, 0);
	Object array = smp_getclass("Array");
	
	smptype_def(array, SCOPE_INSTANCE_DATA, "gc_mark", smpfun_init(&smparray_gc_mark, 1, "Nil"));
	smptype_def(array, SCOPE_INSTANCE_DATA, "clear", smpfun_init(&smparray_clear, 1, "Nil"));
	smptype_def(array, SCOPE_INSTANCE_DATA, "add!", smpfun_init(&smparray_add_now, 1, "Nil"));
	smptype_def(array, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smparray_to_s, 1, "String"));
	smptype_def(array, SCOPE_INSTANCE_DATA, "write", smpfun_init(&smparray_write, 1, "String"));
	
	return 0;
}

Object smparray_add_now(Object obj, int argc, Object argv[])
{
	SmpArray *arr = (SmpArray *) obj.core;
	size_t i = arr->length;
	++arr->length;
	smparray_resize(arr, sizeof(Object) * arr->length);
	
	arr->a[i] = argv[0];
	return smp_nil;
}

Object smparray_clear(Object obj, int argc, Object argv[])
{
	smp_free(obj_core(SmpArray, obj).a);
	return smp_nil;
}

Object smparray_init()
{
	SmpArray core;
	core.length = 0;
	core.a = smp_malloc(sizeof(Object) * next_power_of_2(ARRAY_MIN_LENGTH));
	memset(core.a, 0, sizeof(Object) * next_power_of_2(ARRAY_MIN_LENGTH));
	
	Object res = obj_init((SmpType *) smp_getclass("Array").core);
	res.core = smp_malloc(sizeof(SmpArray));
	obj_core(SmpArray, res) = core;
	
	return res;
}

Object smparray_init_array(Object *arr, size_t length)
{
	SmpArray core;
	core.length = length;
	core.a = arr;
	
	Object res = obj_init((SmpType *) smp_getclass("Array").core);
	res.core = smp_malloc(sizeof(SmpArray));
	obj_core(SmpArray, res) = core;
	
	return res;
}

Object smparray_gc_mark(Object obj, int argc, Object argv[])
{
	Object *a = obj_core(SmpArray, obj).a;
	size_t i, length = obj_core(SmpArray, obj).length;
	for (i = 0; i < length; ++i)
		gc_mark_recursive(NULL, a[i]);
	return smp_nil;
}

Object smparray_get_c(Object obj, size_t index)
{
	SmpArray core = obj_core(SmpArray, obj);
	if (index < core.length) return core.a[index];
	else return smpglobal_throw(smpexc_init_fmt(
			smp_getclass("IndexOutOfBoundsException"), 
			"Index %ld is out of bounds.", index));
}

Object smparray_length(Object obj, int argc, Object argv[])
{
	return smpint_init_clong((long) smparray_length_c(obj));
}

Object smparray_map(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Function");
	
	Object *a = obj_core(SmpArray, obj).a;
	size_t i, length = obj_core(SmpArray, obj).length;
	Object *res_arr = smp_malloc(sizeof(Object) * length);
	
	for (i = 0; i < length; ++i) {
		res_arr[i] = smpfun_call(smp_getclass("Global"), argv[0], 1, &a[i]);
		check_for_thrown(res_arr[i], smp_free(res_arr));
	}
	
	return smparray_init_array(res_arr, length);
}


int smparray_resize(SmpArray *arr, size_t size)
{
	if (size > ARRAY_MIN_LENGTH && is_power_of_2(size)) {
		arr->a = smp_realloc(arr->a, next_power_of_2(size));
		return 1;
	}
	
	return 0;
}

Object smparray_to_s(Object obj, int argc, Object argv[])
{
	Object res = smpstr_init("[");
	
	DISABLE_GC_ACTIVEP;
	
	Object divider = smpstr_init(", ");
	
	Object str2;
	Object *a = obj_core(SmpArray, obj).a;
	size_t i, length = obj_core(SmpArray, obj).length;
	for (i = 0; i < length; ++i) {
		str2 = smpobj_funcall(a[i], "to_s", 0, NULL);
		if (i != 0) smpstr_add_now(res, 1, &divider);
		smpstr_add_now(res, 1, &str2);
	}
	
	Object bracket = smpstr_init("]");
	smpstr_add_now(res, 1, &bracket);
	
	ENABLE_GC_ACTIVEP;
	return res;
}

Object smparray_write(Object obj, int argc, Object argv[])
{	
	int old_gc_activep = gc_activep;
	gc_activep = FALSE;
	
	Object res = smpstr_init("(array");
	Object space = smpstr_init(" ");
	
	Object str2;
	Object *a = obj_core(SmpArray, obj).a;
	size_t i, length = obj_core(SmpArray, obj).length;
	for (i = 0; i < length; ++i) {
		str2 = smpobj_funcall(a[i], "write", 0, NULL);
		smpstr_add_now(res, 1, &space);
		smpstr_add_now(res, 1, &str2);
	}
	
	Object paren = smpstr_init(")");
	smpstr_add_now(res, 1, &paren);
	
	gc_activep = old_gc_activep;
	return res;
}

