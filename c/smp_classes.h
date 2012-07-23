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



SmpType smpType_int, smpType_float;

/* 
 * Number
 * 
 * An interface that subclasses Integer and Float.
 */

int smpNumber_create_class();

/* 
 * Integer
 * 
 * Arbitrary-precision integer type implemented using GNU GMP.
 */

typedef mpz_t SmpInt;

int smpInteger_create_class();

Object smpInteger_zero, smpInteger_one;

/* Initializes an Integer from an mpz. Creates a copy of the given mpz.
 * 
 * Notice that there is no way to create a reference to an already-existing mpz, 
 * which means that allocating an Integer requires allocating two mpz's and then 
 * destroying one of them. I don't want to try to fix this unless it is shown to 
 * be a problem, but if optimizations take a long time, you now know why.
 */
Object smpInteger_init_mpz(mpz_t x);

/* Initializes an Integer using a pointer to the given mpz.
 * x: A pointer to the given mpz. This must be already allocated and should 
 *     never be deallocated. This pointer will be freed when the returned object 
 *     is freed.
 */
Object smpInteger_init_mpz_ref(mpz_t *x);

/* Initializes an Integer from a long.
 */
Object smpInteger_init_clong(long x);
Object smpInteger_init_str(const char *str);
Object smpInteger_clear(Object obj, int argc, Object argv[]);

#define INT2SMP(x) smpInteger_init_clong(x)

/* 
 * Arithmetic functions.
 */
Object smpInteger_add(Object obj, int argc, Object argv[]);
Object smpInteger_sub(Object obj, int argc, Object argv[]);
Object smpInteger_mul(Object obj, int argc, Object argv[]);
Object smpInteger_div(Object obj, int argc, Object argv[]);
Object smpInteger_mod(Object obj, int argc, Object argv[]);
Object smpInteger_pow(Object obj, int argc, Object argv[]);
Object smpInteger_shl(Object obj, int argc, Object argv[]);
Object smpInteger_shr(Object obj, int argc, Object argv[]);
Object smpInteger_and(Object obj, int argc, Object argv[]);
Object smpInteger_ior(Object obj, int argc, Object argv[]);
Object smpInteger_not(Object obj, int argc, Object argv[]);
Object smpInteger_xor(Object obj, int argc, Object argv[]);

#define smpInteger_inc(obj) smpInteger_add((obj), 1, &smpInteger_one)
#define smpInteger_dec(obj) smpInteger_sub((obj), 1, &smpInteger_one)

/* 
 * Comparison functions.
 */
 
/* See smpInteger_cmp(). If argv[0] is the wrong type, returns -2.
 */
int smpInteger_cmp_cint(Object obj, int argc, Object argv[]);

#define smpInteger_eq_cint(obj, argc, argv) (smpInteger_cmp_cint((obj), (argc), (argv)) == 0)
#define smpInteger_ne_cint(obj, argc, argv) (smpInteger_cmp_cint((obj), (argc), (argv)) != 0)
#define smpInteger_lt_cint(obj, argc, argv) (smpInteger_cmp_cint((obj), (argc), (argv)) <  0)
#define smpInteger_le_cint(obj, argc, argv) (smpInteger_cmp_cint((obj), (argc), (argv)) <= 0)
#define smpInteger_ge_cint(obj, argc, argv) (smpInteger_cmp_cint((obj), (argc), (argv)) >= 0)
#define smpInteger_gt_cint(obj, argc, argv) (smpInteger_cmp_cint((obj), (argc), (argv)) >  0)

/* Compares an integer to another number, argv[0]. If obj > argv[0], returns 1. 
 * If obj == argv[0], returns 0. If obj < argv[0], returns -1.
 */
Object smpInteger_cmp(Object obj, int argc, Object argv[]);

Object smpInteger_equalp(Object obj, int argc, Object argv[]);
Object smpInteger_nequalp(Object obj, int argc, Object argv[]);
Object smpInteger_lt(Object obj, int argc, Object argv[]);
Object smpInteger_le(Object obj, int argc, Object argv[]);
Object smpInteger_ge(Object obj, int argc, Object argv[]);
Object smpInteger_gt(Object obj, int argc, Object argv[]);

Object smpInteger_eq(Object obj, int argc, Object argv[]);

long smpInteger_to_clong(Object obj);

/* Takes a single optional argument to indicate the base.
 */
Object smpInteger_to_s(Object obj, int argc, Object argv[]);

/* 
 * Float
 * 
 * Arbitrary-precision floating point type implemented using GNU MPFR.
 */
typedef mpfr_t SmpFloat;

int smpFloat_create_class();

mpfr_rnd_t smp_mpfr_rnd;
mpfr_prec_t smp_mpfr_default_prec;


/* Initializes a Float from an mpfr. Creates a copy of the given mpfr.
 */
Object smpFloat_init_mpfr(mpfr_t x);

/* Initializes a Float from a pointer to an mpfr. See smpInteger_init_mpz_ref() for 
 * details.
 */
Object smpFloat_init_mpfr_ref(mpfr_t *x);

/* Initializes an Integer from a long.
 */
Object smpFloat_init_cdouble(double x);
Object smpFloat_init_str(const char *str);
Object smpFloat_clear(Object obj, int argc, Object argv[]);

#define FLT2SMP(x) smpFloat_init_cdouble(x)

/* Arithmetic operations. */
Object smpFloat_add(Object obj, int argc, Object argv[]);
Object smpFloat_sub(Object obj, int argc, Object argv[]);
Object smpFloat_mul(Object obj, int argc, Object argv[]);
Object smpFloat_div(Object obj, int argc, Object argv[]);
Object smpFloat_pow(Object obj, int argc, Object argv[]);

/* Comparison operations. */
int smpFloat_cmp_cint(Object obj, int argc, Object argv[]);
Object smpFloat_cmp(Object obj, int argc, Object argv[]);

Object smpFloat_equalp(Object obj, int argc, Object argv[]);
Object smpFloat_nequalp(Object obj, int argc, Object argv[]);
Object smpFloat_lt(Object obj, int argc, Object argv[]);
Object smpFloat_le(Object obj, int argc, Object argv[]);
Object smpFloat_ge(Object obj, int argc, Object argv[]);
Object smpFloat_gt(Object obj, int argc, Object argv[]);

Object smpFloat_eq(Object obj, int argc, Object argv[]);

/* Takes a single optional argument to indicate the number of trailing digits.
 */
Object smpFloat_to_s(Object obj, int argc, Object argv[]);





