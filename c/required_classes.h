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
int smpglobal_create_class();

FILE *smp_stdin;
FILE *smp_stdout;
FILE *smp_stderr;

#define smpglobal_catch(arg, type) \
	if (smptype_name_eq(arg, "Thrown") && \
			smpthrown_contains_namep((arg), (type)))

Object smpglobal_catch_arg(Object obj, int argc, Object argv[]);

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
int smpglobal_class(char *name, SmpType *parent, int flags);
Object smpglobal_class_arg(Object obj, int argc, Object argv[]);

/* Creates a class with multiple parent classes. parents must be allocated 
 * before it is passed in, and never cleared.
 */
int smpglobal_class_multiple(char *name, SmpType **parents, 
		size_t parents_length, int flags);

Object smpglobal_fprint(FILE *fp, Object obj);
Object smpglobal_fprintf(FILE *fp, char *format, ...);

/* Constructs a list.
 */
Object smpglobal_list(Object obj, int argc, Object argv[]);

Object smp_print(Object obj);
Object smpglobal_print_arg(Object obj, int argc, Object argv[]);

/* 
 * Equivalent to print(sprintf(format, ...)).
 */
Object smp_printf(char *format, ...);
Object smp_printf_arg(Object obj, int argc, Object argv[]);

Object smp_println(Object obj);
Object smpglobal_println_arg(Object obj, int argc, Object argv[]);

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
Object smpglobal_sprintf(char *format, ...);
Object smpglobal_vsprintf(char *format, va_list ap);

/* argv[0] contains the format and the other elements of argv contain the 
 * argument list.
 */
Object smpglobal_sprintf_arg(Object obj, int argc, Object argv[]);

/* Takes a single format and returns a string with the object written using 
 * that format.
 * 
 * fmt_end: A pointer to the end of the format inside (fmt). Used by sprintf().
 */
Object obj_put_fmt(Object obj, char *fmt, char **fmt_end);
Object smpglobal_sprintf_arg(Object obj, int argc, Object argv[]);

Object smpglobal_throw(Object type);
Object smpglobal_throw_arg(Object obj, int argc, Object argv[]);

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

int smpregex_create_class();

Object smpregmatch_clear(Object obj, int argc, Object argv[]);

/* Compiles a regex with the REG_EXTENDED flag, which tells GNU to use 
 * extended regular expressions.
 */
Object smpregex_compile(regex_t *compiled, Object regex);

/* Compiles a regex with the given flags. See GNU Regular Expression Library 
 * documentation for a description of flags.
 * 
 * Returns nil on success and throws an exception on failure.
 */
Object smpregex_compile_flags(regex_t *compiled, Object regex, int flags);

Object smpregex_compile_str(regex_t *compiled, char *pattern);
Object smpregex_compile_str_flags(regex_t *compiled, char *pattern, int flags);

/* Examines the return code to find errors. If an error was found, throws an 
 * exception. Otherwise, returns nil.
 */
Object smpregex_compile_handle_errors(char *pattern, int code);

Object smpregmatch_init(regmatch_t matches[], size_t length);

/* Takes an array and its length and extracts matches from it. Allocates a new 
 * pointer to put in the result. If length is too long, this function will 
 * adjust if the unused elements in matches are set to 0.
Object smpregmatch_init(regmatch_t matches[], size_t length);

/* Matches a string.
 * 
 * obj: Regular expression to match against a string.
 * arg0: A string to match.
 * 
 * return: A RegexMatch object
 */
Object smpregex_match(Object obj, int argc, Object argv[]);
Object smpregex_match_str(char *pattern, Object obj);

Object smpregex_matchp(Object obj, int argc, Object argv[]);
int smpregex_matchp_cint(Object obj, int argc, Object argv[]);

/* 
 * Return Codes
 * -1: Error.
 *  0: No match.
 *  1: Match.
 */
int smpregex_matchp_cint(Object obj, int argc, Object argv[]);


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
typedef struct smparray_struct {
	Object *a;
	size_t length;
} SmpArray;

int smparray_create_class();

/* Adds an object onto the end of the array.
 */
Object smparray_add_now(Object obj, int argc, Object argv[]);

Object smparray_clear(Object obj, int argc, Object argv[]);

/* Initializes an empty array.
 */
Object smparray_init();

/* Initializes a SmpArray from a given C array. The pointer inside the SmpArray 
 * will point to the same area in memory as (arr), so if (arr) is modified, the 
 * SmpArray will change.
 */
Object smparray_init_array(Object *arr, size_t length);
Object smparray_gc_mark(Object obj, int argc, Object argv[]);

Object smparray_get_c(Object obj, size_t index);

#define smparray_length_c(obj) (obj_core(SmpArray, obj).length)
Object smparray_length(Object obj, int argc, Object argv[]);

Object smparray_map(Object obj, int argc, Object argv[]);
int smparray_resize(SmpArray *arr, size_t size);
Object smparray_to_s(Object obj, int argc, Object argv[]);
Object smparray_write(Object obj, int argc, Object argv[]);


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
 * A Note on Naming Conventions: A function starting with smphash_ is a function 
 * on a hash contained in an Object. A function starting with smphash_core_ is a 
 * function directly on a SmpHash.
 * 
 * Hash constants are defined with MiniHash.
 */
typedef struct smphash_struct {
	Object *a;
	Object default_return_value;
	size_t capacity, occupied, size;
} SmpHash;

#define CHARTYPE_LETTER 1
#define CHARTYPE_NUMBER 2
#define CHARTYPE_WHITESPACE 3
#define CHARTYPE_SINGLE 4
#define CHARTYPE_SYMBOL 5

int smphash_create_class();

/* Determines the type of a character.
 */
int smpparser_char_type(char c);

/* Adds the given pair to the hash.
 * 
 * arg0: A cons cell where the key is in the car and the value is in the cdr.
 */
int smphash_core_add_now(SmpHash *hash, Object pair);
Object smphash_add_now(Object obj, int argc, Object argv[]);

Object smphash_clear(Object obj, int argc, Object argv[]);
int smphash_core_clear(SmpHash *hash);

/* Returns true if the hash contains the given key, nil if otherwise.
 */
Object smphash_containsp(Object obj, int argc, Object argv[]);

int smphash_core_copy(SmpHash *res,SmpHash *hash);
Object smphash_gc_mark(Object obj, int argc, Object argv[]);

/* Performs a function on each argument.
 * 
 * arg0: The function to be used.
 */
Object smphash_each(Object obj, int argc, Object argv[]);

/* If the hash contains the given key, returns the corresponding value. If not, 
 * returns the default return value.
 */
Object smphash_get(Object obj, int argc, Object argv[]);

Object smphash_init();
Object smphash_init_capacity(size_t capacity);
SmpHash smphash_core_init_capacity(size_t capacity);

Object smphash_to_s(Object obj, int argc, Object argv[]);
Object smphash_write(Object obj, int argc, Object argv[]);
Object smphash_make_string(Object obj, char *fun);


/* 
 * 
 * Symbol
 * 
 */

typedef SmpString SmpSymbol;

int smpsymbol_create_class();

Object smpsymbol_init(char *str);
char * smpsymbol_to_cstr(Object obj);
Object smpsymbol_to_s(Object obj, int argc, Object argv[]);
Object smpsymbol_write(Object obj, int argc, Object argv[]);

