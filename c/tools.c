/*
 *  tools.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/2/11.
 *
 */

/* Having this separate function is kind of pointless because regular 
 * expressions, snprintf, and possibly other things all use malloc(). It works 
 * fine as long as smp_malloc() just calls malloc().
 */
void * smp_malloc_fun(size_t bytes)
{
	return smp_malloc(bytes);
}

void * smp_realloc_size(void *mem, size_t old_bytes, size_t new_bytes)
{
	return smp_realloc(mem, new_bytes);
}

void smp_free_size(void *mem, size_t bytes)
{
	smp_free(mem);
}

void internal_error(char *format, ...)
{
	va_list args;
	va_start(args, format);
	fprintf(stderr, "Internal Error: ");
	vfprintf(stderr, format, args);
	fprintf(stderr, "\n");
	va_end(args);
	
	/* This does not use exit(1) because exit(1) does not provide a 
	 * backtrace.
	 */
	int *intentional_crash = 100 - 50*2;
	*intentional_crash = 1;
}

void fatal_error(char *format, ...)
{
	va_list args;
	va_start(args, format);
	fprintf(stderr, "Fatal Error: ");
	vfprintf(stderr, format, args);
	fprintf(stderr, "\n");
	va_end(args);

	int *intentional_crash = 100 - 50*2;
	*intentional_crash = 1;
}

int is_power_of_2(size_t x)
{
	return x && !(x & x-1);
}

size_t next_power_of_2(size_t x)
{
	x |= x >> 1;
	x |= x >> 2;
	x |= x >> 4;
	x |= x >> 8;
	x |= x >> 16;
	x |= x >> 32;
	return x + 1;
}

