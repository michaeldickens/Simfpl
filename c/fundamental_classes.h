/*
 *  fundamental_classes.h
 *  Simfpl
 *
 *  Created by Michael Dickens on 7/31/11.
 *
 *  Header file for classes that are fundamental to the object structure.
 */

#include "object.h"

/* 
 * 
 * Collection
 * 
 * 
 */

int smpCollection_create_class();

/* 
 * 
 * Pair
 * 
 * A cell containing a car and a cdr.
 */
typedef struct smpPair_struct {
	Object car;
	Object *cdr;
} SmpPair;

int smpPair_create_class();

#define smpPair_car_c(obj) (obj_core(SmpList, (obj)).car)
#define smpPair_cdr_c(obj) (obj_deref(obj_core(SmpList, (obj)).cdr))

Object smpPair_car(Object obj, int argc, Object argv[]);
Object smpPair_cdr(Object obj, int argc, Object argv[]);
Object smpPair_clear(Object obj, int argc, Object argv[]);
Object smpPair_init(Object car, Object cdr);

/* Sets the car to argv[0]. */
Object smpPair_set_car_now(Object obj, int argc, Object argv[]);
Object smpPair_set_cdr_now(Object obj, int argc, Object argv[]);

Object smpPair_to_s(Object obj, int argc, Object argv[]);
Object smpPair_write(Object obj, int argc, Object argv[]);


/* 
 * 
 * List
 * 
 * A singly linked list. Like in Lisp, lists are implemented using cons cells 
 * and the elements can be accessed with (car) and (cdr).
 * 
 * Internally, a List is just a series of Pairs linked together. However, Lists 
 * require that the cdr cell contain a List.
 * 
 * Although lists and recursive functions go hand in hand, most primitive 
 * operations on lists are designed using loops because loops tend to be faster.
 * 
 */
typedef SmpPair SmpList;

#define smpList_check_nil(list) \
	if (smpType_id_eq(list, smpType_id_nil)) \
		return smp_nil;

int smpList_create_class();

#define smpList_car_c(obj) smpPair_car_c(obj)
#define smpList_cdr_c(obj) smpPair_cdr_c(obj)

Object smpList_add(Object obj, int argc, Object argv[]);
Object smpList_add_now(Object obj, int argc, Object argv[]);
Object smpList_append(Object obj, int argc, Object argv[]);
Object smpList_append_now(Object obj, int argc, Object argv[]);
Object smpList_at(Object obj, int argc, Object argv[]);
Object smpList_at_c(Object obj, size_t index);
Object smpList_at_assign(Object obj, int argc, Object argv[]);
Object smpList_at_assign_c(Object obj, size_t index, Object val);
Object smpList_car(Object obj, int argc, Object argv[]);
Object smpList_cdr(Object obj, int argc, Object argv[]);
Object smpList_concat(Object obj, int argc, Object argv[]);
Object smpList_concat_now(Object obj, int argc, Object argv[]);
Object smpList_copy(Object obj, int argc, Object argv[]);
Object smpList_each(Object obj, int argc, Object argv[]);
Object smpList_emptyp(Object obj, int argc, Object argv[]);
Object smpList_equalp(Object obj, int argc, Object argv[]);
Object smpList_init(SmpList list);

Object smpList_length(Object obj, int argc, Object argv[]);
long smpList_length_clong(Object obj);

Object smpList_map(Object obj, int argc, Object argv[]);
Object smpList_reduce(Object obj, int argc, Object argv[]);
Object smpList_reverse(Object obj, int argc, Object argv[]);

#define SMPLIST_SORT_AS_ARRAY 8

Object smpList_sort(Object obj, int argc, Object argv[]);
Object smpList_nsort(Object obj, int argc, Object argv[]);
Object smpList_sort_rec(Object obj, size_t length, Object cmp_fun);

Object smpList_to_list(Object obj, int argc, Object argv[]);
Object smpList_to_a(Object obj, int argc, Object argv[]);

/* 
 * Takes one optional argument. If given, separates elements by the string in 
 * argv[0]. If not, separates elements by a space.
 */
Object smpList_to_s(Object obj, int argc, Object argv[]);
Object smpList_write(Object obj, int argc, Object argv[]);


/* 
 * 
 * ListBuffer
 *
 */

typedef struct listbuf_struct {
	Object first;
	Object last;
} SmpListBuf;

/* 
 * Adds arg[0] to the end of the list.
 */
Object smpListBuffer_add_now(Object obj, int argc, Object argv[]);
Object smpListBuffer_init();
Object smpListBuffer_to_list(Object obj, int argc, Object argv[]);

/* 
 * 
 * Bool
 * 
 * There are two boolean values: true and nil.
 * 
 * Notice that most boolean functions (and, or, etc) can be called on any 
 * Object.
 */

Object smpBool_init(int truep);
int smpBool_to_cint(Object obj);
Object smptrue_to_s(Object obj, int argc, Object argv[]);

#define bool_to_obj(x) ((x) ? smp_true : smp_nil)

/* Bool functions that can be called on any Object.
 */

Object smpObject_truep(Object obj, int argc, Object argv[]);
int smpObject_truep_c(Object obj);

Object smpBool_and(Object obj, int argc, Object argv[]);
Object smpBool_not(Object obj, int argc, Object argv[]);
Object smpBool_or(Object obj, int argc, Object argv[]);
Object smpBool_xor(Object obj, int argc, Object argv[]);

/* 
 * 
 * Nil
 * 
 * Nil is a representation of an empty list, and the only value that is 
 * considered false. All other values are true.
 */

int smpNil_create_class();

Object smpNil_add(Object obj, int argc, Object argv[]);
Object smpNil_add_now(Object obj, int argc, Object argv[]);
Object smpNil_car(Object obj, int argc, Object argv[]);
Object smpNil_cdr(Object obj, int argc, Object argv[]);
Object smpNil_concat(Object obj, int argc, Object argv[]);
Object smpNil_copy(Object obj, int argc, Object argv[]);
Object smpNil_each(Object obj, int argc, Object argv[]);
Object smpNil_emptyp(Object obj, int argc, Object argv[]);
Object smpNil_equalp(Object obj, int argc, Object argv[]);
Object smpNil_length(Object obj, int argc, Object argv[]);
Object smpNil_map(Object obj, int argc, Object argv[]);
Object smpNil_reduce(Object obj, int argc, Object argv[]);
Object smpNil_reverse(Object obj, int argc, Object argv[]);
Object smpNil_to_s(Object obj, int argc, Object argv[]);
Object smpNil_write(Object obj, int argc, Object argv[]);



/* 
 * 
 * Class
 * 
 * The typedef for SmpType is in object.h.
 * 
 */

int smpType_next_id;
MiniHash smpType_ids;

/* 
 * Defines an abstract method. The defined method can be inherited but not 
 * actually called.
 */
Object smpType_abstract_def(Object type, int scope, char *name, int argc, ...);

Object smpType_clear(Object obj, int argc, Object argv[]);

/* 
 * Defines a method.
 * 
 * type: The class in which to define the method. Should be of type SmpType.
 * flags: 
 *     SCOPE_DATA_FLAG: Indicates whether the method is an instance method or 
 *         class method. Use the macro definitions SCOPE_CLASS_DATA and 
 *         SCOPE_INSTANCE_DATA.
 *     SCOPE_PERMISSION_FLAG: Indicates whether external functions may use this 
 *         function. By default, this is true. To restrict the function to 
 *         internal usage, add the flag SCOPE_INTERNAL.
 * name: The name of the method.
 * fun: The method to be defined.
 * 
 * return: Nil.
 */
Object smpType_def_general(Object type, int flags, char *name, Object obj);
Object smpType_def(Object type, int flags, char *name, Object fun);
Object smpType_defvar(Object type, int flags, char *name, Object var);

Object smpType_equalp(Object obj, int argc, Object argv[]);

/* Tests whether the first class is the same as or the subclass of the second 
 * class.
 */
Object smpType_subclassp(Object obj, int argc, Object argv[]);


/*
 * Function
 * 
 */
typedef struct smpFunction_struct {
	/* Indicates the permission of the function.
	 * public: May be called from anywhere.
	 * package: May only be called from within the package.
	 * protected: May only be called from the class or its subclasses.
	 * private: May only be called from the class.
	 * internal: May only be called internally.
	 */
	int permission : 8;
	
	char *name;
	
	/* An array where the first element is for the return value and the rest 
	 * are for the arguments.
	 */
	struct argspec_struct *argspecs;
	int argspecs_length : 16;
	
	/* The function pointer (internal functions only). */
	Object (*fun)(Object obj, int argc, Object argv[]);
} SmpFun;


/* 
 * An argument specifier used to give specifications for the function argument.
 * 
 * Types are represented by strings. The string "*SelfType*" will match the 
 * type of the object on which the function is called.
 * 
 */
typedef struct argspec_struct {
	/* The name of the argument.
	 * WARNING: This MUST be set by a string literal because it is never 
	 * cleared. If it is set with a string on the heap, there will be 
	 * memory leakage.
	 */
	const char *name;
	
	/* If true, does not evaluate the argument before sending it to the 
	 * function.
	 */
	int quote : 1;
	
	/* If true, this argument is optional. */
	int optionalp : 1;
	
	int has_default_valp : 1;
	Object default_val;
	
	/* If true, this argument should contain a list of the arguments at the end 
	 * of the function.
	 */
	int restp : 1;
	
} argspec_t;

#define smpFunction_name(obj) (obj_core(SmpFun, obj).name)

int smpFunction_create_class();

Object smpFunction_call(Object obj, Object fun, int argc, Object argv[]);
Object smpFunction_clear(Object obj, int argc, Object argv[]);

/* Initializes a function.
 * 
 * argc: The number of arguments given after argc.
 * argument list: Takes a list of C strings representing types, e.g. "Integer", 
 *   "List", etc. Types may be preceded by modifiers, e.g. "&rest", 
 *   "&optional". A "&default" argument must be followed by an Object, not a C 
 *   string.
 */
Object smpFunction_init(Object (*fun)(Object obj, int argc, Object argv[]), 
		int argc, ...);
Object smpFunction_init_v(Object (*fun)(Object obj, int argc, Object argv[]), 
		int argc, va_list ap);
Object smpFunction_to_s(Object obj, int argc, Object argv[]);


/*
 * Exception
 * 
 */
typedef struct smpException_struct {
	/* The message carried by the exception.
	 */
	char *message;
	
	/* A linked list representing the backtrace. Each car contains a cons cell 
	 * with the object type and the function.
	 */
	Object backtrace;
} SmpExc;

typedef struct smpTypeError_struct {
	char *message;
	Object backtrace;
	SmpType *expected;
	Object found;
} SmpTypeExc;
 
int smpException_create_class();

/* Creates an empty instance of the exception of the given type. Assumes that 
 * the type uses SmpExc as its core.
 */
Object smpException_backtrace_add_now(Object exc, Object obj, Object fun);
Object smpException_clear(Object obj, int argc, Object argv[]);
Object smpException_init(Object type);
Object smpException_init_fmt(Object type, const char *fmt, ...);
Object smpException_print(Object obj);
Object smpException_to_s(Object obj, int argc, Object argv[]);

Object smpTypeError_clear(Object obj, int argc, Object argv[]);
Object smpTypeError_init(SmpType *expected, Object found);
Object smpTypeError_init_detailed(SmpType *expected, Object found, const char *fmt, ...);
Object smpTypeError_init_fmt(const char *fmt, ...);
Object smpTypeError_to_s(Object obj, int argc, Object argv[]);

/* 
 * Thrown
 * 
 * A wrapper used to designate that flow has been interrupted, typically by an 
 * exception.
 * 
 */
typedef struct smpThrown_struct {
	int type : 4;
	Object *objs;
	size_t length;
} SmpThrown;

#define SMPTHROWN_EXCEPTION 0
#define SMPTHROWN_RETURN 1
#define SMPTHROWN_BREAK 2

int smpThrown_create_class();

Object smpThrown_add_exception_now(Object *obj, Object exc);
int smpThrown_contains_namep(Object obj, char *name);
Object smpThrown_init(int type, Object obj);
Object smpThrown_get_first_value(Object obj);

int smp_should_breakp_c(Object obj);
int smp_should_returnp_c(Object obj);
int smp_thrown_exceptionp_c(Object obj);

/* Note: No clear() function is necessary because there is nothing to clear.
 */

Object smpThrown_to_s(Object obj, int argc, Object argv[]);

/* 
 * String
 * 
 */
typedef struct smpstrstruct {
	char *s;
	size_t length;
} SmpString;

int smpstrcreate_class();

int obj_init_str(Object *obj, const char *str);

Object smpString_add(Object obj, int argc, Object argv[]);
Object smpString_add_now(Object obj, int argc, Object argv[]);
Object smpString_clear(Object obj, int argc, Object argv[]);
Object smpString_equalp(Object obj, int argc, Object argv[]);
int smpString_equalp_cstr(Object obj, char *str);

/* Initializes a String from a C string.
 */
Object smpString_init(const char *str);

/* Initializes a String from a C string of a given length. If length is greater 
 * than the length of str, the initialized string will still be no longer than 
 * str.
 */
Object smpString_init_length(char *str, size_t length);

/* Initializes a String from a reference to a C string. The core of the 
 * initialized string will be a pointer to the same string as *str, so *str 
 * should never be deallocated.
 */
Object smpString_init_ref(char **str);

/* Initializes a String from a format, as would be used by printf().
 */
Object smpString_init_fmt(char *format, ...);

Object smpString_length(Object obj, int argc, Object argv[]);
Object smpString_reverse(Object obj, int argc, Object argv[]);
Object smpString_substring(Object obj, int start, int length);

char * smpString_to_cstr(Object obj);

/* Returns itself.
 */
Object smpString_to_s(Object obj, int argc, Object argv[]);

/* Surrounds the string in quotes and non-literal characters such as tab and 
 * newline into a character representation such as "\t" or "\n".
 */
Object smpString_write(Object obj, int argc, Object argv[]);

