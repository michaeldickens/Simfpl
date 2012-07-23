/*
 *  smparray.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/4/11.
 *
 */

int smpArray_create_class()
{
	smpGlobal_class("Array", &smpType_object, 0);
	Object array = smp_getclass("Array");
	
	smpType_def(array, SCOPE_INSTANCE_DATA, "add!", smpFunction_init(&smpArray_add_now, 1, "Nil"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "clear", smpFunction_init(&smpArray_clear, 1, "Nil"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "gc_mark", smpFunction_init(&smpArray_gc_mark, 1, "Nil"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "map", smpFunction_init(&smpArray_map, 2, "Array", "Function"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "reduce", smpFunction_init(&smpArray_reduce, 2, "Array", "Function", "&optional", "Object"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpArray_to_s, 1, "String"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "write", smpFunction_init(&smpArray_write, 1, "String"));
	
	return 0;
}

Object smpArray_add_now(Object obj, int argc, Object argv[])
{
	SmpArray *arr = (SmpArray *) obj.core;
	size_t i = arr->length;
	++arr->length;
	smpArray_resize(arr, sizeof(Object) * arr->length);
	
	arr->a[i] = argv[0];
	return smp_nil;
}

Object smpArray_clear(Object obj, int argc, Object argv[])
{
	smp_free(obj_core(SmpArray, obj).a);
	return smp_nil;
}

Object smpArray_init()
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

Object smpArray_init_array(Object *arr, size_t length)
{
	SmpArray core;
	core.length = length;
	core.a = arr;
	
	Object res = obj_init((SmpType *) smp_getclass("Array").core);
	res.core = smp_malloc(sizeof(SmpArray));
	obj_core(SmpArray, res) = core;
	
	return res;
}

Object smpArray_gc_mark(Object obj, int argc, Object argv[])
{
	Object *a = obj_core(SmpArray, obj).a;
	size_t i, length = obj_core(SmpArray, obj).length;
	for (i = 0; i < length; ++i)
		gc_mark_recursive(NULL, a[i]);
	return smp_nil;
}

Object smpArray_get_c(Object obj, size_t index)
{
	SmpArray core = obj_core(SmpArray, obj);
	if (index < core.length) return core.a[index];
	else return smpGlobal_throw(smpException_init_fmt(
			smp_getclass("IndexOutOfBoundsException"), 
			"Index %ld is out of bounds.", index));
}

Object smpArray_length(Object obj, int argc, Object argv[])
{
	return smpInteger_init_clong((long) smpArray_length_c(obj));
}

Object smpArray_map(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Function");
	
	Object *a = obj_core(SmpArray, obj).a;
	size_t i, length = obj_core(SmpArray, obj).length;
	Object *res_arr = smp_malloc(sizeof(Object) * length);
	
	for (i = 0; i < length; ++i) {
		res_arr[i] = smpFunction_call(smp_getclass("Global"), argv[0], 1, &a[i]);
		check_for_thrown(res_arr[i], smp_free(res_arr));
	}
	
	return smpArray_init_array(res_arr, length);
}

Object smpArray_reduce(Object obj, int argc, Object argv[])
{
	SmpArray core = obj_core(SmpArray, obj);	
	size_t i = 0;

	Object initial = smp_nil;
	Object fun = argv[0];
	if (argc > 1) {
		initial = argv[1];
	} else {
		initial = core.a[i++];
	}
	smp_type_check(fun, "Function");
	
	DISABLE_GC_ACTIVEP;
	
	Object pair[2];
	pair[0] = initial;
	
	for (; i < core.length; ++i) {
		pair[1] = core.a[i];
		pair[0] = smpFunction_call(smp_global, fun, 2, pair);
		check_for_thrown(pair[0], ENABLE_GC_ACTIVEP);
	}
	
	ENABLE_GC_ACTIVEP;
	return pair[0];
}

int smpArray_resize(SmpArray *arr, size_t size)
{
	if (size > ARRAY_MIN_LENGTH && is_power_of_2(size)) {
		arr->a = smp_realloc(arr->a, next_power_of_2(size));
		return 1;
	}
	
	return 0;
}

Object smpArray_to_s(Object obj, int argc, Object argv[])
{
	Object res = smpString_init("[");
	
	DISABLE_GC_ACTIVEP;
	
	Object divider = smpString_init(", ");
	
	Object str2;
	Object *a = obj_core(SmpArray, obj).a;
	size_t i, length = obj_core(SmpArray, obj).length;
	for (i = 0; i < length; ++i) {
		str2 = smpObject_funcall(a[i], "to_s", 0, NULL);
		if (i != 0) smpString_add_now(res, 1, &divider);
		smpString_add_now(res, 1, &str2);
	}
	
	Object bracket = smpString_init("]");
	smpString_add_now(res, 1, &bracket);
	
	ENABLE_GC_ACTIVEP;
	return res;
}

Object smpArray_write(Object obj, int argc, Object argv[])
{	
	int old_gc_activep = gc_activep;
	gc_activep = FALSE;
	
	Object res = smpString_init("(array");
	Object space = smpString_init(" ");
	
	Object str2;
	Object *a = obj_core(SmpArray, obj).a;
	size_t i, length = obj_core(SmpArray, obj).length;
	for (i = 0; i < length; ++i) {
		str2 = smpObject_funcall(a[i], "write", 0, NULL);
		smpString_add_now(res, 1, &space);
		smpString_add_now(res, 1, &str2);
	}
	
	Object paren = smpString_init(")");
	smpString_add_now(res, 1, &paren);
	
	gc_activep = old_gc_activep;
	return res;
}

