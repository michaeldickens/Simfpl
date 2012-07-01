/*
 *  fundamental_classes.h
 *  Simfpl
 *
 *  Created by Michael Dickens on 7/31/11.
 *
 *  Header file for classes that are fundamental to the object structure.
 */

#include "gc.h"

/* 
 * 
 * Collection
 * 
 * 
 */

int smpcollection_create_class();

/* 
 * 
 * Pair
 * 
 * A cell containing a car and a cdr.
 */
typedef struct smppair_struct {
	Object car;
	Object *cdr;
} SmpPair;

int smppair_create_class();

#define smppair_car_c(obj) (obj_core(SmpList, (obj)).car)
#define smppair_cdr_c(obj) (obj_deref(obj_core(SmpList, (obj)).cdr))

Object smppair_car(Object obj, int argc, Object argv[]);
Object smppair_cdr(Object obj, int argc, Object argv[]);
Object smppair_clear(Object obj, int argc, Object argv[]);
Object smppair_gc_mark(Object obj, int argc, Object argv[]);
Object smppair_init(Object car, Object cdr);

/* Sets the car to argv[0]. */
Object smppair_set_car_now(Object obj, int argc, Object argv[]);
Object smppair_set_cdr_now(Object obj, int argc, Object argv[]);

Object smppair_to_s(Object obj, int argc, Object argv[]);
Object smppair_write(Object obj, int argc, Object argv[]);


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

#define smplist_check_nil(list) \
	if (smptype_id_eq(list, smptype_id_nil)) \
		return smp_nil;

int smplist_create_class();

#define smplist_car_c(obj) smppair_car_c(obj)
#define smplist_cdr_c(obj) smppair_cdr_c(obj)

Object smplist_add_now(Object obj, int argc, Object argv[]);
Object smplist_car(Object obj, int argc, Object argv[]);
Object smplist_cdr(Object obj, int argc, Object argv[]);

/* Clears the list. Note that this does not clear the objects inside the list.
 */
Object smplist_clear(Object obj, int argc, Object argv[]);

Object smplist_emptyp(Object obj, int argc, Object argv[]);
Object smplist_equalp(Object obj, int argc, Object argv[]);
Object smplist_gc_mark(Object obj, int argc, Object argv[]);
Object smplist_get(Object obj, int argc, Object argv[]);
Object smplist_get_clong(Object obj, long index);
Object smplist_init(SmpList list);

Object smplist_length(Object obj, int argc, Object argv[]);
long smplist_length_clong(Object obj);

Object smplist_map(Object obj, int argc, Object argv[]);

/* 
 * Takes one optional argument. If given, separates elements by the string in 
 * argv[0]. If not, separates elements by a space.
 */
Object smplist_to_s(Object obj, int argc, Object argv[]);
Object smplist_write(Object obj, int argc, Object argv[]);


/* 
 * 
 * ListBuffer
 *
 */

typedef struct listbuf_struct {
	Object first;
	Object last;
} SmpListBuf;

Object smplistbuf_add_now(Object obj, int argc, Object argv[]);
Object smplistbuf_gc_mark(Object obj, int argc, Object argv[]);
Object smplistbuf_init();
Object smplistbuf_to_list(Object obj, int argc, Object argv[]);

/* 
 * 
 * Bool
 * 
 * There are two boolean values: true and nil.
 * 
 * Notice that most boolean functions (and, or, etc) can be called on any 
 * Object.
 */

Object smpbool_init(int truep);
int smpbool_to_cint(Object obj);
Object smptrue_to_s(Object obj, int argc, Object argv[]);

/* Bool functions that can be called on any Object.
 */

Object smpbool_and(Object obj, int argc, Object argv[]);
Object smpbool_not(Object obj, int argc, Object argv[]);
Object smpbool_or(Object obj, int argc, Object argv[]);
Object smpbool_xor(Object obj, int argc, Object argv[]);


#define bool_to_obj(x) ((x) ? smp_true : smp_nil)
/* 
 * 
 * Nil
 * 
 * Nil is a representation of an empty list, and the only value that is 
 * considered false. All other values are true.
 */

int smpnil_create_class();

Object smpnil_car(Object obj, int argc, Object argv[]);
Object smpnil_cdr(Object obj, int argc, Object argv[]);
Object smpnil_emptyp(Object obj, int argc, Object argv[]);
Object smpnil_equalp(Object obj, int argc, Object argv[]);
Object smpnil_to_s(Object obj, int argc, Object argv[]);
Object smpnil_write(Object obj, int argc, Object argv[]);



/* 
 * 
 * Class
 * 
 * The typedef for SmpType is in object.h.
 * 
 */

int smptype_next_id;
MiniHash smptype_ids;

/* 
 * Defines an abstract method. The defined method can be inherited but not 
 * actually called.
 */
Object smptype_abstract_def(Object type, int scope, char *name, int argc, ...);

Object smptype_clear(Object obj, int argc, Object argv[]);

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
Object smptype_def_general(Object type, int flags, char *name, Object obj);
Object smptype_def(Object type, int flags, char *name, Object fun);
Object smptype_defvar(Object type, int flags, char *name, Object var);

Object smptype_equalp(Object obj, int argc, Object argv[]);
Object smptype_gc_mark(Object obj, int argc, Object argv[]);

/* Tests whether the first class is the same as or the subclass of the second 
 * class.
 */
Object smptype_subclassp(Object obj, int argc, Object argv[]);


/*
 * Function
 * 
 */
typedef struct smpfun_struct {
	/* Indicates the permission of the function.
	 * public: May be called from anywhere.
	 * package: May only be called from within the package.
	 * protected: May only be called from the class or its subclasses.
	 * private: May only be called from the class.
	 * internal: May only be called internally.
	 */
	int permission : 8;
	
	char *name;
	
	/* An array where the first element is for the return value  and the rest 
	 * are for the arguments.
	 * 
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
	/* The name of the argument. Used for external functions only.
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
	Object default_val;
	
	/* If true, this argument should contain a list of the arguments at the end 
	 * of the function.
	 */
	int restp : 1;
	
} argspec_t;

#define smpfun_name(obj) (obj_core(SmpFun, obj).name)

int smpfun_create_class();

Object smpfun_call(Object obj, Object fun, int argc, Object argv[]);
Object smpfun_clear(Object obj, int argc, Object argv[]);
Object smpfun_gc_mark(Object obj, int argc, Object argv[]);

/* Initializes a function.
 * 
 * argc: The number of arguments given after argc.
 * argument list: Takes a list of C strings representing types, e.g. "Integer", 
 *   "List", etc. Types may be preceded by modifiers, e.g. "&rest", 
 *   "&optional". A "&default" argument must be followed by an Object, not a C 
 *   string.
 */
Object smpfun_init(Object (*fun)(Object obj, int argc, Object argv[]), 
		int argc, ...);
Object smpfun_init_v(Object (*fun)(Object obj, int argc, Object argv[]), 
		int argc, va_list ap);
Object smpfun_to_s(Object obj, int argc, Object argv[]);


/*
 * Exception
 * 
 */
typedef struct smpexc_struct {
	/* The message carried by the exception.
	 */
	char *message;
	
	/* A linked list representing the backtrace. Each car contains a cons cell 
	 * with the object type and the function.
	 */
	Object backtrace;
} SmpExc;

typedef struct smptypeerr_struct {
	char *message;
	Object backtrace;
	SmpType *expected;
	Object found;
} SmpTypeExc;
 
int smpexc_create_class();

/* Creates an empty instance of the exception of the given type. Assumes that 
 * the type uses SmpExc as its core.
 */
Object smpexc_backtrace_add_now(Object exc, Object obj, Object fun);
Object smpexc_clear(Object obj, int argc, Object argv[]);
Object smpexc_gc_mark(Object obj, int argc, Object argv[]);
Object smpexc_init(Object type);
Object smpexc_init_fmt(Object type, const char *fmt, ...);
Object smpexc_print(Object obj);
Object smpexc_to_s(Object obj, int argc, Object argv[]);

Object smptypeerr_clear(Object obj, int argc, Object argv[]);
Object smptypeerr_gc_mark(Object obj, int argc, Object argv[]);
Object smptypeerr_init(SmpType *expected, Object found);
Object smptypeerr_init_detailed(SmpType *expected, Object found, const char *fmt, ...);
Object smptypeerr_init_fmt(const char *fmt, ...);
Object smptypeerr_to_s(Object obj, int argc, Object argv[]);

/* 
 * Thrown
 * 
 * A wrapper used to designate that flow has been interrupted, typically by an 
 * exception.
 * 
 */
typedef struct smpthrown_struct {
	int type : 4;
	Object *objs;
	size_t length;
} SmpThrown;

#define SMPTHROWN_EXCEPTION 0
#define SMPTHROWN_RETURN 1
#define SMPTHROWN_BREAK 2

int smpthrown_create_class();

Object smpthrown_add_exception_now(Object *obj, Object exc);
int smpthrown_contains_namep(Object obj, char *name);
Object smpthrown_gc_mark(Object obj, int argc, Object argv[]);
Object smpthrown_init(int type, Object obj);

/* Note: No clear() function is necessary because there is nothing to clear.
 */

Object smpthrown_to_s(Object obj, int argc, Object argv[]);

/* 
 * String
 * 
 */
typedef struct smpstrstruct {
	char *s;
	size_t length;
} SmpString;

int smpstrcreate_class();

int obj_init_str(Object *obj, char *str);

Object smpstr_add(Object obj, int argc, Object argv[]);
Object smpstr_add_now(Object obj, int argc, Object argv[]);
Object smpstr_clear(Object obj, int argc, Object argv[]);
Object smpstr_equalp(Object obj, int argc, Object argv[]);
int smpstr_equalp_cstr(Object obj, char *str);

/* Initializes a String from a C string.
 */
Object smpstr_init(char *str);

/* Initializes a String from a C string of a given length. If length is greater 
 * than the length of str, the initialized string will still be no longer than 
 * str.
 */
Object smpstr_init_length(char *str, size_t length);

/* Initializes a String from a reference to a C string. The core of the 
 * initialized string will be a pointer to the same string as *str, so *str 
 * should never be deallocated.
 */
Object smpstr_init_ref(char **str);

/* Initializes a String from a format, as would be used by printf().
 */
Object smpstr_init_fmt(char *format, ...);

Object smpstr_reverse(Object obj, int argc, Object argv[]);
Object smpstrsubstring(Object obj, int start, int length);

char * smpstr_to_cstr(Object obj);

/* Returns itself.
 */
Object smpstr_to_s(Object obj, int argc, Object argv[]);

/* Surrounds the string in quotes and non-literal characters such as tab and 
 * newline into a character representation such as "\t" or "\n".
 */
Object smpstr_write(Object obj, int argc, Object argv[]);

