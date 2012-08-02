/*
 *  tools.h
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/2/11.
 *
 */

#include <ctype.h>
#include <limits.h>
#include <math.h>
#include <regex.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <gmp.h>
#include <mpfr.h>
#include "../lib/SFMT/SFMT.c"
#include "../lib/bdwgc/include/gc.h"

/* TODO: only on Unix systems */
#include <sys/time.h>

#define TRUE 1
#define FALSE 0

#define streq(x, y) (strcmp((x), (y)) == 0)

#define MEMBATCH_SIZE 256

struct membatch_stack {
	struct obj_struct *object[MEMBATCH_SIZE];
	struct smpList_struct *smplist[MEMBATCH_SIZE];
};

#define malloc(bytes) smp_malloc(bytes)
#define realloc(mem, bytes) smp_realloc((mem), (bytes))
#define free(mem) smp_free(mem)

/* Having this separate function may prove ineffective because regular 
 * expressions, snprintf, and possibly other things all use malloc().
 */
#define smp_malloc(bytes) GC_malloc(bytes)
#define smp_realloc(mem, bytes) GC_realloc((mem), (bytes))
#define smp_free(mem) GC_free(mem)

/* Used as a placeholder in case the garbage collector is ever implemented 
 * again. Currently does nothing.
 */
int gc_mark_recursive(char *key, struct obj_struct obj);

#define GC_MARK_OBJECT(obj) /* intentionally left blank */

void * smp_malloc_fun(size_t bytes);
void * smp_realloc_size(void *mem, size_t old_bytes, size_t new_bytes);
void smp_free_size(void *mem, size_t bytes);

void internal_error(char *format, ...);
void fatal_error(char *format, ...);

int is_power_of_2(size_t x);
size_t next_power_of_2(size_t x);

