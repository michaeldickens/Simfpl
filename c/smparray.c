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
	smpType_def(array, SCOPE_INSTANCE_DATA, "at", smpFunction_init(&smpArray_at, 2, "Object", "Integer"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "at=", smpFunction_init(&smpArray_at_assign, 3, "Object", "Integer", "Object"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "clear", smpFunction_init(&smpArray_clear, 1, "Nil"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "copy", smpFunction_init(&smpArray_copy, 1, "Array"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "map", smpFunction_init(&smpArray_map, 2, "Array", "Function"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "reduce", smpFunction_init(&smpArray_reduce, 4, "Array", "Function", "&optional", "Object"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "reverse", smpFunction_init(&smpArray_reverse, 1, "Array"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "reverse!", smpFunction_init(&smpArray_reverse_now, 1, "Array"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "sort", smpFunction_init(&smpArray_sort, 3, "Array", "&optional", "Function"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "sort!", smpFunction_init(&smpArray_sort_now, 3, "Array", "&optional", "Function"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "to_a", smpFunction_init(&smpArray_to_a, 1, "Array"));
	smpType_def(array, SCOPE_INSTANCE_DATA, "to_list", smpFunction_init(&smpArray_to_list, 1, "List"));
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
	return obj;
}

Object smpArray_at(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Integer");
	
	Object ret = smp_nil;
	long index = smpInteger_to_clong(&ret, argv[0]);
	check_for_thrown(ret, NULL);
	
	return smpArray_at_c(obj, (size_t) index);
}

Object smpArray_at_c(Object obj, size_t index)
{
	SmpArray core = obj_core(SmpArray, obj);
	if (index >= core.length) {
		return smpGlobal_throw(smpException_init_fmt(
			smp_getclass("IndexOutOfBoundsException"), "%ld", index));
	}
	
	return core.a[index];
}

Object smpArray_at_assign(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Integer");
	
	Object ret = smp_nil;
	long index = smpInteger_to_clong(&ret, argv[0]);
	check_for_thrown(ret, NULL);
		
	return smpArray_at_assign_c(obj, (size_t) index, argv[1]);	
}

Object smpArray_at_assign_c(Object obj, size_t index, Object val)
{
	SmpArray core = obj_core(SmpArray, obj);
	if (index >= core.length) {
		return smpGlobal_throw(smpException_init_fmt(
			smp_getclass("IndexOutOfBoundsException"), "%ld", index));
	}
	
	core.a[index] = val;
	return val;
}

Object smpArray_clear(Object obj, int argc, Object argv[])
{
	obj_core(SmpArray, obj).length = 0;
	smp_free(obj_core(SmpArray, obj).a);
	return smp_nil;
}

Object smpArray_copy(Object obj, int argc, Object argv[])
{
	SmpArray core = obj_core(SmpArray, obj);
	Object *arr = smp_malloc(sizeof(Object) * next_power_of_2(core.length));
	memcpy(arr, core.a, sizeof(Object) * core.length);
	return smpArray_init_array(arr, core.length);
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
		res_arr[i] = smpFunction_call(smp_global, argv[0], 1, &a[i]);
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
	
	;
	
	Object pair[2];
	pair[0] = initial;
	
	for (; i < core.length; ++i) {
		pair[1] = core.a[i];
		pair[0] = smpFunction_call(smp_global, fun, 2, pair);
		check_for_thrown(pair[0], );
	}
	
	;
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

Object smpArray_reverse(Object obj, int argc, Object argv[])
{
	Object res = smpArray_copy(obj, 0, NULL);
	check_for_thrown(res, NULL);
	return smpArray_reverse_now(res, argc, argv);	
}

Object smpArray_reverse_now(Object obj, int argc, Object argv[])
{
	SmpArray core = obj_core(SmpArray, obj);
	Object temp;
	size_t i;
	
	for (i = 0; i < core.length / 2; ++i) {
		temp = core.a[i];
		core.a[i] = core.a[core.length - i - 1];
		core.a[core.length - i - 1] = temp;
	}
	
	return obj;
}

Object smpArray_sort(Object obj, int argc, Object argv[])
{
	Object res = smpArray_copy(obj, 0, NULL);
	check_for_thrown(res, NULL);
	return smpArray_sort_now(res, argc, argv);
}

Object smpArray_sort_now(Object obj, int argc, Object argv[])
{
	Object ret = smp_nil, cmp_fun = smp_nil;
	if (argc > 0) {
		cmp_fun = argv[0];
		smp_type_check(cmp_fun, "Function");
	}
	
	SmpArray core = obj_core(SmpArray, obj);
	// ret = smpArray_sort_quick(core.a, core.length - 1, cmp_fun);
	Object *merger_space = smp_malloc(sizeof(Object) * core.length);
	ret = smpArray_sort_timmy(core.a, core.length, merger_space, cmp_fun);
	smp_free(merger_space);
	check_for_thrown(ret, NULL);
	return obj;
}

int smp_cmp_helper(Object *ret, Object cmp_fun, Object op1, Object op2)
{
	int cmp = 0;
	if (smpObject_truep_c(cmp_fun)) {
		Object args[2];
		args[0] = op1;
		args[1] = op2;
		*ret = smpFunction_call(smp_global, cmp_fun, 2, args);
		cmp = smpObject_truep_c(*ret) ? -1 : 1;
	} else {
		cmp = smpObject_cmp_fast(ret, op1, op2);
	}
	
	return cmp;
}

/* A simple recursive sorting algorithm that uses merge sort on large lists 
 * and insertion sort on small lists.
 */
Object smpArray_sort_merge(Object *a, size_t length, Object *merger_space, Object cmp_fun)
{
	int cmp = 0;
	Object temp, ret = smp_nil;
	
	if (length <= 1) {
		return smp_nil;
	} else if (length < SMPARRAY_USE_INSERTION) {
		/* Insertion sort. */
		ret = smpArray_sort_insertion(a, length, cmp_fun);
		check_for_thrown(ret, NULL);
		
	} else {
		/* Sort each half of the array. */
		size_t half = length / 2;
		ret = smpArray_sort_merge(a, half, merger_space, cmp_fun);
		check_for_thrown(ret, NULL);
		ret = smpArray_sort_merge(a + half, length - half, merger_space, 
			cmp_fun);
		check_for_thrown(ret, NULL);
		
		/* Merge the two sorted halves. */
		ret = smp_merge_sorted_arrays(a, half, a + half, length - half, 
			merger_space, cmp_fun);
		check_for_thrown(ret, NULL);
	}
	
	return smp_nil;
}

/* Uses quicksort on large lists and insertion sort on small lists.
 */
Object smpArray_sort_quick(Object *a, size_t last, Object cmp_fun)
{
	if (last <= SMPARRAY_USE_INSERTION)
		return smpArray_sort_insertion(a, last + 1, cmp_fun);
	
	Object pivot = a[last / 2];
	Object temp = smp_nil, ret = smp_nil;
	int cmp = 0;
	
	long i = 0, j = last;
	while (i <= j) {
		while (TRUE) {
			/* Keep incrementing as long as a[i] is strictly less than pivot. 
			 * The below code is a roundabout way of doing this, but this 
			 * is the only way that works when cmp_fun returns a boolean 
			 * value.
			 */
			cmp = smp_cmp_helper(&ret, cmp_fun, pivot, a[i]);
			check_for_thrown(ret, NULL);
			if (cmp <= 0)
				break;
			++i;
		}
				
		while (TRUE) {
			cmp = smp_cmp_helper(&ret, cmp_fun, a[j], pivot);
			check_for_thrown(ret, NULL);
			if (cmp <= 0)
				break;
			--j;
		}
				
		if (i <= j) {
			temp = a[i];
			a[i] = a[j];
			a[j] = temp;
			++i; --j;
		}		
	}
	
	if (0 < j) {
		ret = smpArray_sort_quick(a, j, cmp_fun);
		check_for_thrown(ret, NULL);
	}
	
	if (i < last) {
		ret = smpArray_sort_quick(a + i, last - i, cmp_fun);
		check_for_thrown(ret, NULL);
	}
	
	return ret;
}

/* A sophisticated sorting algorithm that implements some of the features of 
 * timsort. Breaks the array into descending and non-descending runs, 
 * reverses the descending runs, and merges all the runs.
 */
Object smpArray_sort_timmy(Object *a, size_t length, Object *merger_space, Object cmp_fun)
{
	SmpArray runs[67];
	memset(runs, 0, sizeof(SmpArray) * 67);
	
	long run_i;
	size_t index = 0;
	Object ret = smp_nil;
	int cmp = 0;
	
	for (run_i = 0; index < length; ++run_i) {
		runs[run_i] = timmy_get_run(&ret, a + index, length - index, 
			cmp_fun);
		index += runs[run_i].length;
		check_for_thrown(ret, NULL);
		
		for (; run_i > 0 && runs[run_i].length * 2 > 
				runs[run_i-1].length; --run_i) {
			ret = smp_merge_sorted_arrays(runs[run_i-1].a, 
				runs[run_i-1].length, runs[run_i].a, runs[run_i].length, 
				merger_space, cmp_fun);
			check_for_thrown(ret, NULL);

			runs[run_i-1].length += runs[run_i].length;
		}
	}
	
	for (--run_i; run_i > 0; --run_i) {
		ret = smp_merge_sorted_arrays(runs[run_i-1].a, 
			runs[run_i-1].length, runs[run_i].a, runs[run_i].length, 
			merger_space, cmp_fun);
		check_for_thrown(ret, NULL);

		runs[run_i-1].length += runs[run_i].length;
	}
		
	return ret;
}

SmpArray timmy_get_run(Object *ret, Object *a, size_t length, Object cmp_fun)
{
	SmpArray res_array;
	res_array.a = NULL;
	res_array.length = 0;
	
	if (length == 1) {
		res_array.a = a;
		res_array.length = 1;
		return res_array;
	}
	
	size_t i = 0;
	
	int cmp = 0;
	cmp = smp_cmp_helper(ret, cmp_fun, a[i], a[i+1]);
	if (smp_thrown_exceptionp_c(*ret))
		return res_array;
	
	if (cmp > 0) {
		for (++i; i + 1 < length; ++i) {
			cmp = smp_cmp_helper(ret, cmp_fun, a[i], a[i+1]);
			if (smp_thrown_exceptionp_c(*ret))
				return res_array;
			if (cmp <= 0)
				break;
		}
		
		res_array.a = a;
		res_array.length = ++i;

		/* Reverse the run. */
		size_t j;
		for (j = 0; j < res_array.length / 2; ++j) {
			Object temp = res_array.a[j];
			res_array.a[j] = res_array.a[res_array.length - j - 1];
			res_array.a[res_array.length - j - 1] = temp;
		}
		
	} else {
		for (++i; i + 1 < length; ++i) {
			cmp = smp_cmp_helper(ret, cmp_fun, a[i], a[i+1]);
			
			if (smp_thrown_exceptionp_c(*ret))
				return res_array;
			if (cmp > 0)
				break;
		}

		res_array.a = a;
		res_array.length = ++i;
	}
	
	/* TODO: If i - *index < 8, insertion sort up to 16 (or likewise for 
	 * bigger numbers). See if this runs faster.
	 */
	if (i == 0) {

	} else if (i < SMPARRAY_USE_INSERTION) {
		res_array.length = (length < SMPARRAY_USE_INSERTION ? 
			length : SMPARRAY_USE_INSERTION);
		i = res_array.length;
		*ret = smpArray_sort_insertion(res_array.a, res_array.length, 
			cmp_fun);
	}
		
	return res_array;
}

Object smpArray_sort_insertion(Object *a, size_t length, Object cmp_fun)
{
	Object ret = smp_nil;
	
	long i, j;
	int cmp;
	Object temp;
	for (i = 0; i < length - 1; ++i) {
		for (j = i; j >= 0; --j) {
			cmp = smp_cmp_helper(&ret, cmp_fun, a[j], a[j+1]);
			check_for_thrown(ret, NULL);
			
			if (cmp > 0) {
				temp = a[j];
				a[j] = a[j+1];
				a[j+1] = temp;
			} else {
				break;
			}
		}
	}

	return ret;
}

/* WARNING: arr1 must have room to contain both arrays. */
Object smp_merge_sorted_arrays(Object *arr1, size_t length1, 
		Object *arr2, size_t length2, Object *merger_space, Object cmp_fun)
{
	Object ret = smp_nil;
	int cmp = 0;
	size_t i, j, k;
	memcpy(merger_space, arr1, sizeof(Object) * length1);
	for (i = 0, j = 0, k = 0; i < length1 && j < length2; ++k) {
		cmp = smp_cmp_helper(&ret, cmp_fun, merger_space[i], arr2[j]);
		check_for_thrown(ret, 
			while (i < length1) {
				arr1[k++] = merger_space[i++];
			});
		
		if (cmp <= 0) {
			arr1[k] = merger_space[i++];
		} else {
			arr1[k] = arr2[j++];
		}
	}
	
	while (i < length1)
		arr1[k++] = merger_space[i++];
	while (j < length2)
		arr1[k++] = arr2[j++];
	
	return ret;
}

Object smpArray_to_a(Object obj, int argc, Object argv[])
{
	return obj;
}

Object smpArray_to_list(Object obj, int argc, Object argv[])
{
	Object res = smp_nil;
	SmpArray core = obj_core(SmpArray, obj);
	long i;
	for (i = core.length - 1; i >= 0; --i) {
		res = smpObject_cons_c(core.a[i], res);
		check_for_thrown(res, NULL);
	}
	
	return res;
}

Object smpArray_to_s(Object obj, int argc, Object argv[])
{
	Object res = smpString_init("[");
	
	;
	
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
	
	;
	return res;
}

Object smpArray_write(Object obj, int argc, Object argv[])
{	
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
	
	return res;
}

