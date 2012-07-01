/*
 *  gc.h
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/27/11.
 * 
 *  Simfpl's garbage collector uses a mark-and-sweep algorithm. See individual 
 *  functions for details.
 *
 */

#include "object.h"

#define GC_STACK_MAX_LENGTH 0x400

Object gc_stack[GC_STACK_MAX_LENGTH];
size_t gc_stack_length;

/* The garbage collector runs every time this many objects are allocated.
 */
#define GC_RUN_AFTER_COUNTS 0x100

/* A counter that increases by 1 every time a new object is allocated. Every so 
 * many allocations, the garbage collector runs.
 */
int gc_counter;

/* If TRUE, the garbage collector will add objects to its stack as usual. If 
 * FALSE, the garbage collector will not add objects.
 * 
 * WARNING: If an object is not added to the gc stack, it will *never* be 
 * cleared by the garbage collector. You must clear it yourself.
 */
int gc_add_objectsp;

/* Set FALSE in order to not add the next allocated object to the GC stack. Use 
 * this if there is an object that you are using internally or if you don't 
 * want the garbage collector to run.
 */
int gc_add_next_objectp;

/* Set FALSE to prevent the garbage collector from running. Objects will still 
 * be added to the gc stack, so this is a safer option than disabling 
 * gc_add_objectsp. If the program runs out of memory, it will exit.
 */
int gc_activep;

#define DISABLE_GC_ACTIVEP /* int old_gc_activep = gc_activep; \
	gc_activep = FALSE; */

#define ENABLE_GC_ACTIVEP /* gc_activep = old_gc_activep; */

/* Indicates whether the garbage collector is currently running. This is used to 
 * prevent objects from being allocated and deallocated while the gc is running.
 */
int gc_runningp;

/* Initializes global variables and prepares the garbage collector. This must be 
 * called before the garbage collector is used--even before any objects are 
 * added to the gc stack.
 */
int gc_init();

/* 
 * Pushes an object onto the stack. This must be called every time an object is 
 * allocated.
 * 
 * It is CRITICAL that the pointers in obj (gc_mark, type, core) are not 
 * reassigned after gc_stack_push() is called. If they are reassigned, the new 
 * values will be impossible to find and therefore will never be deallocated.
 * 
 * Although obj is a pointer, the pointer is not stored inside gc_stack. obj has 
 * to be a pointer so that this function can set in_gc_stackp to TRUE. obj must 
 * not be used until after this function is called; otherwise, in_gc_stackp may 
 * be a false negative.
 */
int gc_stack_push(Object *obj);

/* 
 * Runs the garbage collector. Calls gc_mark() and gc_sweep().
 */
int gc_run();

/* 
 * The mark stage of the mark-and-sweep algorithm. Starts at Global.class_data 
 * and marks everything in it, then moves outward from there and marks every 
 * object it finds.
 */
int gc_mark();
int gc_mark_recursive(char *key, Object val);

#define GC_MARK_OBJECT(obj) (*(obj).gc_mark = TRUE)

/* 
 * Sweeps through the object stack to find unmarked objects. Deletes all 
 * unmarked objects and then removes marks from marked objects.
 */
int gc_sweep();
