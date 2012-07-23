/*
 *  gc.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/27/11.
 *
 */

int gc_init()
{
	gc_stack_length = 0;
	gc_add_objectsp = TRUE;
	gc_add_next_objectp = TRUE;
	gc_activep = TRUE;
	gc_runningp = FALSE;
	return 0;
}

int gc_stack_push(Object *obj)
{
	if (obj->type->name && smpType_name_eq(*obj, "Class") && 
			isalpha(obj_core(SmpType, *obj).name[0]) == FALSE) {
		printf("adding %s\n", obj_core(SmpType, *obj).name);
	}
	
	if (gc_add_objectsp == FALSE)
		return 0;
	if (gc_add_next_objectp == FALSE) {
		gc_add_next_objectp = TRUE;
		return 0;
	}
	if (gc_stack_length >= GC_STACK_MAX_LENGTH) {
		if (gc_activep == FALSE) {
			fatal_error("Garbage collector is disabled. No memory available to allocate a new object.\n");
		}
		
		/* Run the garbage collector. */
		int res = gc_run();
		if (res)
			internal_error("gc_run() had nonzero return value %d.\n", res);
		
		/* If there's still no room even after running the garbage collector, 
		 * throw a fatal error.
		 */
		if (gc_stack_length >= GC_STACK_MAX_LENGTH) {
			if (initialized_classesp == FALSE) {
				fatal_error("Not enough memory to initialize the default classes.\n");
			} else {
				fatal_error("No memory available to allocate a new object.\n");
			}
		}
	} else if (gc_counter == GC_RUN_AFTER_COUNTS && gc_activep) {
		int res = gc_run();
		if (res)
			internal_error("gc_run() had nonzero return value %d.\n", res);
		gc_counter = 0;
	}
	
	gc_stack[gc_stack_length++] = *obj;
	obj->on_gc_stackp = TRUE;
	++gc_counter;
	
	return 0;
}

int gc_run()
{	
	gc_runningp = TRUE;
	int res = gc_mark();
	if (res) return res;
	res = gc_sweep();
	gc_runningp = FALSE;
	return res;
}

int mh_print_funs(char *key, Object val)
{
	if (smpType_name_eq(val, "Function")) {
		printf("found %lx (%s)\n", (unsigned long) obj_core(SmpFun, val).fun, key);
	}
	
	return 0;
}

int gc_mark()
{
	int res;
	
	res = minihash_each(&scope_classes, &gc_mark_recursive);

	/* 
	 * Mark all objects on the scope stack. This will mark everything pointed to 
	 * by Global since Global rests at the top level of the stack.
	 */
	size_t i;
	for (i = 0; i < scope_length; ++i) {
		res = minihash_each(&scope_stack[i], &gc_mark_recursive);
	}
	
	return 0;
}

int gc_mark_recursive(char *key, Object obj)
{
	if (!obj.on_gc_stackp) {
		internal_error("The object with (key %s and core %lx) is not on the GC stack.\n", 
				key, obj.core);
	}
	
	/* If an object has been marked, exit immediately. This is very important 
	 * because without it, two (or more) objects that refer to each other will 
	 * cause an unending loop of marking. This if statement stops the loop.
	 */
	if (*obj.gc_mark) {
		return 0;
	}
		
	GC_MARK_OBJECT(obj);
	smpObject_funcall(obj, "gc_mark", 0, NULL);
	
	return 0;
}

/* 
 * Algorithm: 
 *  1. Copy the stack of objects to gc_old_stack.
 *  2. Empty gc_stack.
 *  3. For each element in gc_old_stack: 
 *  4.   If marked, push onto gc_stack.
 *  5.   If unmarked, clear it.
 *  6. Remove all marks.
 * 
 * If it removes marks as it goes instead of making a second pass, it will be 
 * faster, but then if something is in the stack twice it will get cleared on the 
 * second time it comes up.
 */
int gc_sweep()
{
	size_t i, j = 0;
	size_t gc_old_stack_length = gc_stack_length;
	Object gc_old_stack[gc_old_stack_length];
	memcpy(gc_old_stack, gc_stack, sizeof(gc_old_stack));
	
	
	for (i = 0; i < gc_old_stack_length; ++i) {		
		if (*gc_old_stack[i].gc_mark) {
			gc_stack[j++] = gc_old_stack[i];
		} else {
			obj_clear(&gc_old_stack[i]);
		}
	}
	
	gc_stack_length = j;
	
	for (i = 0; i < gc_old_stack_length; ++i) {
		if (gc_old_stack[i].gc_mark)
			*gc_old_stack[i].gc_mark = FALSE;
	}
			
	return 0;
}

