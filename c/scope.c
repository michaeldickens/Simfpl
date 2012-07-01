/*
 *  scope.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/8/11.
 *
 */

#include "scope.h"

int scope_init()
{
	scope_length = 1;
	scope_stack = smp_malloc(sizeof(MiniHash) * next_power_of_2(ARRAY_MIN_LENGTH));
	scope_stack[0] = minihash_init();
	
	scope_classes = minihash_init();
	
	return 0;
}

int scope_push()
{
	if (scope_length >= ARRAY_MIN_LENGTH && is_power_of_2(scope_length))
		scope_stack = smp_realloc(scope_stack, 
				sizeof(MiniHash) * next_power_of_2(scope_length));
	
	scope_stack[scope_length++] = minihash_init();
	minihash_copy(&scope_stack[scope_length-1], &scope_stack[scope_length-2]);
	
	return 0;
}

int scope_pop()
{
	/* Note: The pointer representing the stack is never made smaller. This 
	 * shouldn't be a problem unless the stack has hundreds or thousands of 
	 * elements on it, which it shouldn't (unless maybe there's some deep 
	 * recursion going on...hmm, I'll have to fix that).
	 */
	
	minihash_clear(&scope_stack[--scope_length]);
	return 0;
}

int scope_add(char *name, Object obj)
{
	int ret = gc_stack_push(&obj);
	if (ret) return ret;
	return minihash_add(scope_top, name, obj);
}

Object scope_self()
{
	return minihash_get(scope_top, "self");
}

int scope_clear()
{
	minihash_clear(&scope_stack[scope_length-1]);
	
	while (scope_length > 1)
		minihash_clear(&scope_stack[--scope_length - 1]);
	--scope_length;
	
	
	return 0;
}