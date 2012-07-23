#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <gmp.h>

#define Object int64_t

#define value_cast(type, val) (*((type *) val))

/* Cast an object pointer to a value. */
#define to_value(ptr) ((Object) (ptr))

Object int_to_value(long x)
{
	mpz_t *z = malloc(sizeof(mpz_t));
	mpz_init_set_si(*z, x);
	return to_value(z);
}

Object mpz_to_value(mpz_t *x)
{
	return to_value(x);
}
	
long value_to_int(Object x)
{
	mpz_t *res_mpz = &value_cast(mpz_t, x);
	return mpz_get_si(*res_mpz);
}

Object smpInteger_add(Object obj, Object x)
{
	mpz_t *op1 = &value_cast(mpz_t, obj);
	mpz_t *op2 = &value_cast(mpz_t, x);

	mpz_t *res_mpz = malloc(sizeof(mpz_t));
	mpz_init(*res_mpz);
	mpz_add(*res_mpz, *op1, *op2);
	return mpz_to_value(res_mpz);
}

int main()
{
	Object x, y;
	x = int_to_value(12);
	y = int_to_value(8);

	Object res = smpInteger_add(x, y);
	long z = value_to_int(res);
	printf("%ld\n", z);
	return 0;
}
