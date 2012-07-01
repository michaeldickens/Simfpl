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

#define TRUE 1
#define FALSE 0

#define streq(x, y) (strcmp((x), (y)) == 0)

#define MEMBATCH_SIZE 256

struct membatch_stack {
	struct obj_struct *object[MEMBATCH_SIZE];
	struct smplist_struct *smplist[MEMBATCH_SIZE];
};

void * smp_malloc(size_t bytes);

void * smp_realloc(void *mem, size_t bytes);
void * smp_realloc_size(void *mem, size_t old_bytes, size_t new_bytes);

void smp_free(void *mem);
void smp_free_size(void *mem, size_t bytes);

void internal_error(char *format, ...);
void fatal_error(char *format, ...);

int is_power_of_2(size_t x);
size_t next_power_of_2(size_t x);

