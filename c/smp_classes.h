/*
 *  smp_primitives.h
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/5/11.
 *  
 *  
 *  A Note on Naming Conventions: 
 *  
 *  Function names should begin with smp[name]_ where [name] is the lowercase 
 *  name of the type, such as int or list, or an abbreviation such as obj for 
 *  Object or fun for Function.
 *  
 *  Any function that modifies the object ends with _now. Functions generally 
 *  should not modify any of the arguments.
 *  
 *  Any function that returns a C type rather than an Object should end its 
 *  name with _c[type]. For example, a function that returns an int would end 
 *  in _cint.
 */

#include "class.h"

/* 
 * TRUE if all the default classes have been initialized, FALSE if not.
 */
int initialized_classesp;

/* 
 * Initializes the core classes other than the required classes. Assumes that 
 * the required classes have already been initialized.
 */
int init_smp_classes();

/* 
 * Initializes the classes that are required for the interpreter to run.
 */
int init_required_classes();

/* 
 * Initializes the classes that must be defined in order for other classes to 
 * work.
 */
int init_fundamental_classes();



SmpType smptype_int, smptype_float;

/* 
 * Number
 * 
 * An interface that subclasses Integer and Float.
 */

int smpnum_create_class();

/* 
 * Integer
 * 
 * Arbitrary-precision integer type implemented using GNU GMP.
 */

typedef mpz_t SmpInt;

int smpint_create_class();

Object smpint_zero, smpint_one;

/* Initializes an Integer from an mpz. Creates a copy of the given mpz.
 * 
 * Notice that there is no way to create a reference to an already-existing mpz, 
 * which means that allocating an Integer requires allocating two mpz's and then 
 * destroying one of them. I don't want to try to fix this unless it is shown to 
 * be a problem, but if optimizations take a long time, you now know why.
 */
Object smpint_init_mpz(mpz_t x);

/* Initializes an Integer using a pointer to the given mpz.
 * x: A pointer to the given mpz. This must be already allocated and should 
 *     never be deallocated. This pointer will be freed when the returned object 
 *     is freed.
 */
Object smpint_init_mpz_ref(mpz_t *x);

/* Initializes an Integer from a long.
 */
Object smpint_init_clong(long x);
Object smpint_init_str(const char *str);
Object smpint_clear(Object obj, int argc, Object argv[]);

#define INT2SMP(x) smpint_init_clong(x)

/* 
 * Arithmetic functions.
 */
Object smpint_add(Object obj, int argc, Object argv[]);
Object smpint_sub(Object obj, int argc, Object argv[]);
Object smpint_mul(Object obj, int argc, Object argv[]);
Object smpint_div(Object obj, int argc, Object argv[]);
Object smpint_mod(Object obj, int argc, Object argv[]);
Object smpint_shl(Object obj, int argc, Object argv[]);
Object smpint_shr(Object obj, int argc, Object argv[]);
Object smpint_and(Object obj, int argc, Object argv[]);
Object smpint_ior(Object obj, int argc, Object argv[]);
Object smpint_xor(Object obj, int argc, Object argv[]);

#define smpint_inc(obj) smpint_add((obj), 1, &smpint_one)
#define smpint_dec(obj) smpint_sub((obj), 1, &smpint_one)

/* 
 * Comparison functions.
 */
 
/* See smpint_cmp(). If argv[0] is the wrong type, returns -2.
 */
int smpint_cmp_cint(Object obj, int argc, Object argv[]);

#define smpint_eq_cint(obj, argc, argv) (smpint_cmp_cint((obj), (argc), (argv)) == 0)
#define smpint_ne_cint(obj, argc, argv) (smpint_cmp_cint((obj), (argc), (argv)) != 0)
#define smpint_lt_cint(obj, argc, argv) (smpint_cmp_cint((obj), (argc), (argv)) <  0)
#define smpint_le_cint(obj, argc, argv) (smpint_cmp_cint((obj), (argc), (argv)) <= 0)
#define smpint_ge_cint(obj, argc, argv) (smpint_cmp_cint((obj), (argc), (argv)) >= 0)
#define smpint_gt_cint(obj, argc, argv) (smpint_cmp_cint((obj), (argc), (argv)) >  0)

/* Compares an integer to another number, argv[0]. If obj > argv[0], returns 1. 
 * If obj == argv[0], returns 0. If obj < argv[0], returns -1.
 */
Object smpint_cmp(Object obj, int argc, Object argv[]);

Object smpint_equalp(Object obj, int argc, Object argv[]);
Object smpint_nequalp(Object obj, int argc, Object argv[]);
Object smpint_lt(Object obj, int argc, Object argv[]);
Object smpint_le(Object obj, int argc, Object argv[]);
Object smpint_ge(Object obj, int argc, Object argv[]);
Object smpint_gt(Object obj, int argc, Object argv[]);

Object smpint_eq(Object obj, int argc, Object argv[]);

long smpint_to_clong(Object obj);

/* Takes a single optional argument to indicate the base.
 */
Object smpint_to_s(Object obj, int argc, Object argv[]);

/* 
 * Float
 * 
 * Arbitrary-precision floating point type implemented using GNU MPFR.
 */
typedef mpfr_t SmpFloat;

int smpfloat_create_class();

mpfr_rnd_t smp_mpfr_rnd;
mpfr_prec_t smp_mpfr_default_prec;


/* Initializes a Float from an mpfr. Creates a copy of the given mpfr.
 */
Object smpfloat_init_mpfr(mpfr_t x);

/* Initializes a Float from a pointer to an mpfr. See smpint_init_mpz_ref() for 
 * details.
 */
Object smpfloat_init_mpfr_ref(mpfr_t *x);

/* Initializes an Integer from a long.
 */
Object smpfloat_init_cdouble(double x);
Object smpfloat_init_str(const char *str);
Object smpfloat_clear(Object obj, int argc, Object argv[]);

#define FLT2SMP(x) smpfloat_init_cdouble(x)

/* Arithmetic operations. */
Object smpfloat_add(Object obj, int argc, Object argv[]);
Object smpfloat_sub(Object obj, int argc, Object argv[]);
Object smpfloat_mul(Object obj, int argc, Object argv[]);
Object smpfloat_div(Object obj, int argc, Object argv[]);

/* Comparison operations. */
int smpfloat_cmp_cint(Object obj, int argc, Object argv[]);
Object smpfloat_cmp(Object obj, int argc, Object argv[]);

Object smpfloat_equalp(Object obj, int argc, Object argv[]);
Object smpfloat_nequalp(Object obj, int argc, Object argv[]);
Object smpfloat_lt(Object obj, int argc, Object argv[]);
Object smpfloat_le(Object obj, int argc, Object argv[]);
Object smpfloat_ge(Object obj, int argc, Object argv[]);
Object smpfloat_gt(Object obj, int argc, Object argv[]);

Object smpfloat_eq(Object obj, int argc, Object argv[]);

/* Takes a single optional argument to indicate the number of trailing digits.
 */
Object smpfloat_to_s(Object obj, int argc, Object argv[]);





