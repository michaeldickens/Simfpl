/*
 *  required_classes.h
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/9/11.
 * 
 * Header file for classes that are required for the interpreter to function.
 *
 */

#include "fundamental_classes.h"

/* 
 * Global
 * 
 */
int smpGlobal_create_class();

FILE *smp_stdin;
FILE *smp_stdout;
FILE *smp_stderr;

Object smpGlobal_array(Object obj, int argc, Object argv[]);

#define smpGlobal_catch(arg, type) \
	if (smpType_name_eq(arg, "Thrown") && \
			smpThrown_contains_namep((arg), (type)))

Object smpGlobal_catch_arg(Object obj, int argc, Object argv[]);

/* 
 * Defines a class with name (name) and parent class (parent). (name) is copied, 
 * but obj.parent will reference the same place in memory as is referenced by 
 * (parent).
 * 
 * It is important that a SmpType not be modified after it is created.
 * 
 * Return Codes
 * 0: Success.
 * 1: Failure. The parent type is final.
 */
int smpGlobal_class(char *name, SmpType *parent, int flags);
Object smpGlobal_class_arg(Object obj, int argc, Object argv[]);

/* Creates a class with multiple parent classes. parents must be allocated 
 * before it is passed in, and never cleared.
 */
int smpGlobal_class_multiple(char *name, SmpType **parents, 
		size_t parents_length, int flags);

Object smpGlobal_fprint(FILE *fp, Object obj);
Object smpGlobal_fprintf(FILE *fp, char *format, ...);

Object smpGlobal_hash(Object obj, int argc, Object argv[]);
Object smpGlobal_list(Object obj, int argc, Object argv[]);

Object smpGlobal_main(Object obj, int argc, Object argv[]);

/* Prints the object and returns it. */
Object smp_print(Object obj);
Object smpGlobal_print_arg(Object obj, int argc, Object argv[]);

/* 
 * Equivalent to print(sprintf(format, ...)).
 */
Object smp_printf(char *format, ...);
Object smp_printf_arg(Object obj, int argc, Object argv[]);

/* Prints the object followed by a newline and returns the object. */
Object smp_println(Object obj);
Object smpGlobal_println_arg(Object obj, int argc, Object argv[]);

/* 
 * If argv[0] is an integer, returns an integer on [0, argv[0]). The 
 *   largest possible value is 2**31 - 1.
 * If argv[0] is not given, returns a float on [0, 1).
 */
Object smpGlobal_rand(Object obj, int argc, Object argv[]);
Object smpGlobal_set_seed(Object obj, int argc, Object argv[]);

/* 
 * Writes a string using the given format.
 * 
 * %[width][.precision]type
 * 
 * The following types are possible.
 * 
 * %: Writes a literal % character.
 * a: Calls write() on atoms and to_s() on all other objects. TODO: Implement this.
 * s: Prints the object by calling to_s().
 * w: Prints the object by calling write().
 * 
 */
Object smpGlobal_sprintf(char *format, ...);
Object smpGlobal_vsprintf(char *format, va_list ap);

/* argv[0] contains the format and the other elements of argv contain the 
 * argument list.
 */
Object smpGlobal_sprintf_arg(Object obj, int argc, Object argv[]);

/* Takes a single format and returns a string with the object written using 
 * that format.
 * 
 * fmt_end: A pointer to the end of the format inside (fmt). Used by sprintf().
 */
Object obj_put_fmt(Object obj, char *fmt, char **fmt_end);
Object smpGlobal_sprintf_arg(Object obj, int argc, Object argv[]);

Object smpGlobal_throw(Object type);
Object smpGlobal_throw_arg(Object obj, int argc, Object argv[]);

/* 
 * Regex
 * 
 * A regular expression built on top of the GNU Regular Expression Library. 
 * There is no special class for regexes--they are implemented using strings.
 * 
 * 
 * RegexMatch
 * 
 * An object representing a regular expression match.
 */
 
#define SMPREGEX_MAX_MATCHES 64

typedef struct smpregexmatch_struct {
	regmatch_t *matches;
	size_t length;
} SmpRegexMatch;

int smpRegex_create_class();

Object smpregmatch_clear(Object obj, int argc, Object argv[]);

/* Compiles a regex with the REG_EXTENDED flag, which tells GNU to use 
 * extended regular expressions.
 */
Object smpRegex_compile(regex_t *compiled, Object regex);

/* Compiles a regex with the given flags. See GNU Regular Expression Library 
 * documentation for a description of flags.
 * 
 * Returns nil on success and throws an exception on failure.
 */
Object smpRegex_compile_flags(regex_t *compiled, Object regex, int flags);

Object smpRegex_compile_str(regex_t *compiled, char *pattern);
Object smpRegex_compile_str_flags(regex_t *compiled, char *pattern, int flags);

/* Examines the return code to find errors. If an error was found, throws an 
 * exception. Otherwise, returns nil.
 */
Object smpRegex_compile_handle_errors(char *pattern, int code);

/* Takes an array and its length and extracts matches from it. Allocates a 
 * new pointer to put in the result. If length is too long, this function 
 * will adjust if the unused elements in matches are set to 0.
 */
Object smpregmatch_init(regmatch_t matches[], size_t length);

/* Matches a string.
 * 
 * obj: Regular expression to match against a string.
 * arg0: A string to match.
 * 
 * return: A RegexMatch object
 */
Object smpRegex_match(Object obj, int argc, Object argv[]);
Object smpRegex_match_str(char *pattern, Object obj);

Object smpRegex_matchp(Object obj, int argc, Object argv[]);
int smpRegex_matchp_cint(Object obj, int argc, Object argv[]);

/* 
 * Return Codes
 * -1: Error.
 *  0: No match.
 *  1: Match.
 */
int smpRegex_matchp_cint(Object obj, int argc, Object argv[]);


/* 
 * Array
 * 
 * SmpArray is an internal representation of an array used to create the 
 * fundamentals of the Object type.
 * 
 * When an array is allocated, a certain number of slots (given by 
 * ARRAY_MIN_LENGTH) are always allocated. When adding an element to an array, 
 * if there is no room in the allocated space for that element, the array is 
 * reallocated to where the size is the next power of 2. This means that 
 * insertion will be fast and memory-efficient at any array size.
 * 
 * Array constants (ARRAY_MIN_LENGTH, etc) are defined with MiniHash.
 */
typedef struct smpArray_struct {
	Object *a;
	size_t length;
} SmpArray;

int smpArray_create_class();

/* Adds an object onto the end of the array.
 */
Object smpArray_add_now(Object obj, int argc, Object argv[]);

Object smpArray_at(Object obj, int argc, Object argv[]);
Object smpArray_at_c(Object obj, size_t index);
Object smpArray_at_assign(Object obj, int argc, Object argv[]);
Object smpArray_at_assign_c(Object obj, size_t index, Object val);

Object smpArray_clear(Object obj, int argc, Object argv[]);
Object smpArray_copy(Object obj, int argc, Object argv[]);

/* Initializes an empty array.
 */
Object smpArray_init();

/* Initializes a SmpArray from a given C array. The pointer inside the SmpArray 
 * will point to the same area in memory as (arr), so if (arr) is modified, the 
 * SmpArray will change.
 */
Object smpArray_init_array(Object *arr, size_t length);
Object smpArray_gc_mark(Object obj, int argc, Object argv[]);

Object smpArray_get_c(Object obj, size_t index);

#define smpArray_length_c(obj) (obj_core(SmpArray, obj).length)
Object smpArray_length(Object obj, int argc, Object argv[]);

Object smpArray_map(Object obj, int argc, Object argv[]);
Object smpArray_reduce(Object obj, int argc, Object argv[]);
int smpArray_resize(SmpArray *arr, size_t size);
Object smpArray_reverse(Object obj, int argc, Object argv[]);
Object smpArray_reverse_now(Object obj, int argc, Object argv[]);

/* Sorts an array using a combination of merge sort and insertion sort. 
 * Takes a function as an optional argument. If no function is given, uses 
 * cmp() as the comparator.
 * 
 * (arr sort) is equivalent to (arr sort ((a b) => (a <= b))).
 */
#define SMPARRAY_USE_INSERTION 16

Object smpArray_sort(Object obj, int argc, Object argv[]);
Object smpArray_sort_now(Object obj, int argc, Object argv[]);

int smp_cmp_helper(Object *ret, Object cmp_fun, Object op1, Object op2);

Object smpArray_sort_merge(Object *a, size_t length, Object *merger_space, Object cmp_fun);
Object smpArray_sort_quick(Object *a, size_t last, Object cmp_fun);
Object smpArray_sort_timmy(Object *a, size_t length, Object *merger_space, Object cmp_fun);
SmpArray timmy_get_run(Object *ret, Object *a, size_t length, Object cmp_fun);

Object smp_merge_sorted_arrays(Object *arr1, size_t length1, 
	Object *arr2, size_t length2, Object *merger_space, Object cmp_fun);
Object smpArray_sort_insertion(Object *a, size_t length, Object cmp_fun);

Object smpArray_to_a(Object obj, int argc, Object argv[]);
Object smpArray_to_list(Object obj, int argc, Object argv[]);
Object smpArray_to_s(Object obj, int argc, Object argv[]);
Object smpArray_write(Object obj, int argc, Object argv[]);


/*
 * Hash
 * 
 * This is an implementation of a hash table designed to efficiently handle 
 * key-value pairs.
 * 
 * Fields
 * a: The internal array containing the hash table.
 * default_return_value: The value that is returned if a key is not found. This  
 *   value is nil by default.
 * length: The length of the internal array that contains the hash table.
 * occupied: The number of occupied elements in the internal array.
 * size: The number of key-value pairs inside the hash.
 * 
 * Buckets are represented with linked lists. Key-value pairs are stored with 
 * cons cells.
 * 
 * A Note on Naming Conventions: A function starting with smpHash_ is a function 
 * on a hash contained in an Object. A function starting with smpHash_core_ is a 
 * function directly on a SmpHash.
 * 
 * Hash constants are defined with MiniHash.
 */
typedef struct smpHash_struct {
	Object *a;
	Object default_return_value;
	size_t capacity, occupied, size;
} SmpHash;

#define CHARTYPE_LETTER 1
#define CHARTYPE_NUMBER 2
#define CHARTYPE_WHITESPACE 3
#define CHARTYPE_SINGLE 4
#define CHARTYPE_SYMBOL 5

int smpHash_create_class();

/* Determines the type of a character.
 */
int smpparser_char_type(char c);

/* Adds the given pair to the hash.
 * 
 * arg0: A cons cell where the key is in the car and the value is in the cdr.
 */
int smpHash_core_add_now(SmpHash *hash, Object pair);
Object smpHash_add_now(Object obj, int argc, Object argv[]);

/* If the hash contains the given key, returns the corresponding value. If not, 
 * returns the default return value.
 */
Object smpHash_at(Object obj, int argc, Object argv[]);
Object smpHash_at_assign(Object obj, int argc, Object argv[]);

Object smpHash_clear(Object obj, int argc, Object argv[]);
int smpHash_core_clear(SmpHash *hash);

/* Returns true if the hash contains the given key, nil if otherwise.
 */
Object smpHash_containsp(Object obj, int argc, Object argv[]);

int smpHash_core_copy(SmpHash *res,SmpHash *hash);
Object smpHash_gc_mark(Object obj, int argc, Object argv[]);

/* Performs a function on each argument.
 * 
 * arg0: The function to be used.
 */
Object smpHash_each(Object obj, int argc, Object argv[]);

Object smpHash_init();
Object smpHash_init_capacity(size_t capacity);
SmpHash smpHash_core_init_capacity(size_t capacity);

Object smpHash_to_s(Object obj, int argc, Object argv[]);
Object smpHash_write(Object obj, int argc, Object argv[]);
Object smpHash_make_string(Object obj, char *fun);


/* 
 * 
 * Symbol
 * 
 */

typedef SmpString SmpSymbol;

int smpSymbol_create_class();

Object smpSymbol_init(char *str);
char * smpSymbol_to_cstr(Object obj);
Object smpSymbol_to_s(Object obj, int argc, Object argv[]);
Object smpSymbol_write(Object obj, int argc, Object argv[]);

