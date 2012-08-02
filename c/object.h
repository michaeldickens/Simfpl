/*
 *  object.h
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/2/11.
 * 
 */

#include "tools.h"


/* 
 * A Note on Naming Conventions
 * 
 * Some functions begin with smpObject_ and others begin with obj_. The difference 
 * is this.
 * 
 * smpObject_: Functions that can be called on an object of type Object.
 * 
 * obj_: Functions that can be called on any object, and will respect that 
 *   object's type. Even if the object is not of type Object, it will still 
 *   work properly.
 */


/* 
 * The SmpType structure used to define types.
 */
typedef struct smpType_struct {
	char *name;
	
	/* Every type has a unique ID. This allows types to be quickly compared to 
	 * each other.
	 */
	int type_id;
	
	/* Indicates whether the class was created externally. External classes use 
	 * StandardCore, and instance variables can be added to them. Internal 
	 * classes use internally-defined structs; instance variables are accessed 
	 * through those structs and new ones cannot be created.
	 */
	int externalp : 1;
	
	/* Used to determine if a singleton class has been instantiated. */
	int instantiatedp : 1; 
	
	/* Indicates the instantiability of the class: instantiable, singleton, 
	 * abstract, or static.
	 */
	int instantiability : 2;
	
	/* Indicates whether child classes may be created. */
	int finalp : 1;
	
	/* If the class is marked as fundamental, it will never be cleared. */
	int fundamentalp : 1;

	
	struct smpType_struct **parents;
	size_t parents_length;
	
	struct minihash_struct *instance_funs;
	struct minihash_struct *instance_vars_defaults;
	struct minihash_struct *class_funs;
	struct minihash_struct *class_vars;
} SmpType;

/* 
 * 
 * Object.
 * 
 * Objects are represented internally using this Object typedef. Objects contain 
 * the following values.
 * 
 * gc_mark: A pointer to a mark used by the garbage collector (see gc.h for more 
 *     info).
 * frozenp: Indicates whether the object is frozen. A frozen object may not be 
 *     modified.
 * on_gc_stackp: A boolean used by the garbage collector to determine if the 
 *     object is on the gc stack.
 * type: A pointer to an SmpType holding the object's type.
 * core: A void pointer to the object's actual contents. What this contains 
 *     depends on the type of object. Any internally-defined functions must cast 
 *     core to the correct type.
 * 
 * Most of the material for creating objects and defining functions for them can 
 * be found in class.c.
 * 
 */
typedef struct obj_struct {
	int *gc_mark;
	int frozenp : 1;
	int on_gc_stackp : 1;
	SmpType *type;
	void *core;
} Object;

/* Extracts the core of an object.
 */
#define obj_core(type, obj) (*((type *) (obj).core))

#define smp_gettype(name) obj_core(SmpType, smp_getclass(name))

/* Dereferences a pointer to an Object. If the pointer is NULL, returns an 
 * Object of type Nil.
 */
#define obj_deref(ptr) ((ptr) ? (*ptr) : smp_nil)

/* Checks that an object is the right type. If it is not, throws an exception.
 */
#define smp_type_check(obj, type_str) \
	if (!smpObject_instancep_cstr((obj).type, (type_str))) { \
		if (smpType_name_eq(obj, "Thrown")) return (obj); \
		return smpGlobal_throw(smpTypeError_init( \
				&obj_core(SmpType, smp_getclass(type_str)), \
				(obj))); \
	}

/* Checks to see if the object is Thrown. If it is, returns it.
 */
#define check_for_thrown(obj, clean_up) \
	if (smp_thrown_exceptionp_c(obj)) { \
		clean_up; \
		return obj; \
	}

#define smpType_id_get(name) ((int) (size_t) minihash_get(&smpType_ids, name).core)

/* Returns TRUE if the type of obj is equal to str.
 */
#define smpType_name_eq(obj, str) streq((obj).type->name, (str))

/* Returns TRUE if the type of obj is equal to type_id.
 */
#define smpType_id_eq(obj, id) ((obj).type->type_id == (id))

Object obj_init(SmpType *type);

/* Calculates the hash value for the object and puts the result in *dest. For 
 * internal calculation of hash values, this is more efficient for commonly-
 * hashed types.
 * 
 * Return Codes
 * 0: Success.
 * 1: The object's hash function did not return an integer.
 */
int obj_hash(int *dest, Object obj);


/* Clears the object. Each object has its own clear() function, but this will 
 * clear the object shell itself in addition to calling the clear() function. 
 * To clear an object, use this function and NOT the object's clear() function.
 */
Object obj_clear(Object *obj);

/* Initializes an object for the given type. Only does preliminary 
 * initialization; a separate function must initialize the object core.
 */
Object objid_init(int type_id);

Object obj_eq(Object obj1, Object obj2);
Object obj_types_equalp(Object obj1, Object obj2);

Object smpObject_clear(Object obj, int argc, Object argv[]);

/* Compares two objects just like cmp(). Designed to be fast for common 
 * values (e.g. integers).
 */
int smpObject_cmp_fast(Object *err, Object obj, Object arg);

/* 
 * Conses two elements together. If the cdr element is a List, the return type 
 * is a List. Otherwise, the return type is a Pair.
 */
Object smpObject_cons(Object obj, int argc, Object argv[]);
Object smpObject_cons_c(Object car, Object cdr);

Object smpObject_eq(Object obj, int argc, Object argv[]);
Object smpObject_eql(Object obj, int argc, Object argv[]);
Object smpObject_equalp(Object obj, int argc, Object argv[]);

/* 
 * Calls a function. Does not check whether the user has permission to call the 
 * function, so permission checking must be done before this point.
 */
Object smpObject_funcall(Object obj, char *name, int argc, Object argv[]);

/* argv[0]: A Function.
 * argv[1]: A List containing the arguments.
 */
Object smpObject_funcall_arg(Object obj, int argc, Object argv[]);

Object smpObject_getclass(Object obj, int argc, Object argv[]);
Object smpObject_get_fun(Object obj, char *name);
Object smpObject_get_fun_rec(SmpType *type, char *name, int instance_funp);

Object smpObject_gc_mark(Object obj, int argc, Object argv[]);
Object smpObject_hash(Object obj, int argc, Object argv[]);

/* Determines if the object is an instance of the class argv[0]. */
Object smpObject_instancep(Object obj, int argc, Object argv[]);
int smpObject_instancep_cint(Object obj, int argc, Object argv[]);
int smpObject_instancep_c(SmpType *objtype, SmpType type);
int smpObject_instancep_cstr(SmpType *objtype, char *type);

/* Converts the object to a string in human-readable format.
 */
Object smpObject_to_s(Object obj, int argc, Object argv[]);

/* A class function to convert the class to a string.
 */
Object smpObject_to_s_class(Object obj, int argc, Object argv[]);

Object smpObject_type(Object obj, int argc, Object argv[]);

Object smpObject_types_equalp(Object obj, int argc, Object argv[]);
Object smpObject_varcall(Object obj, char *name);

/* Converts the object to a string in computer format.
 */
Object smpObject_write(Object obj, int argc, Object argv[]);
Object smpObject_write_class(Object obj, int argc, Object argv[]);


/* 
 * MiniHash
 * 
 * A simple implementation of an internal hash table, used to hold internal 
 * values. key is stored as a value so when you pass in a key it will be copied 
 * and the original key is safe. But because val is a complex datatype, it is 
 * stored as a reference.
 * 
 * Important: MiniHash must be declared in object.h.
 * 
 * Fields
 * a: The internal array containing the hash table.
 * length: The length of the internal array that contains the hash table.
 * occupied: The number of occupied elements in the internal array.
 * size: The number of key-value pairs inside the hash.
 * 
 * minihash.a contains an array of MiniArrays. Each MiniArray serves as a 
 * bucket. For typical arrays the minimum length is given by ARRAY_MIN_LENGTH, 
 * but since a bucket typically only contains one element and rarely contains 
 * more than three, its minimum length is given by MINIARRAY_MIN_LENGTH.
 * 
 * MiniHash represents buckets with arrays while SmpHash represents buckets with 
 * linked lists. This is because typical arrays have a certain minimum size 
 * which is greater than the necessary size for buckets, so representing buckets 
 * with SmpArrays would take up several times more memory than necessary. 
 * MiniHash does not use SmpArrays, so it does not have this limitation.
 */

typedef struct minipair_struct {
	char *key;
	Object val;
} MiniPair;

typedef struct miniarray_struct {
	MiniPair *a;
	size_t length;
} MiniArray;

typedef struct minihash_struct {
	MiniArray *a;
	size_t capacity, occupied, size;
} MiniHash;

#define ARRAY_MIN_LENGTH 4
#define MINIARRAY_MIN_LENGTH 1

#define HASH_DEFAULT_LENGTH 10
#define HASH_MIN_OCCUPIED 0.25
#define HASH_MAX_OCCUPIED 0.75

/* 
 * Initializes a hash with the default capacity.
 */
MiniHash minihash_init();

MiniHash minihash_init_capacity(size_t capacity);

/* 
 * Clears a hash. Does NOT clear the Objects inside the hash.
 */
int minihash_clear(MiniHash *hash);

/* 
 * Clears a hash and all of its contents.
 */
int minihash_fullclear(MiniHash *hash);

/* 
 * Compute the hash value for the given key.
 */
int minihash_function(char *key);

/* Puts the object reference into the hash.
 */
int minihash_add(MiniHash *hash, char *key, Object val);

int miniarray_push(MiniArray *arr, MiniPair pair);
Object minihash_get(MiniHash *hash, char *key);
int minihash_containsp(MiniHash *hash, char *key);

/* Copies hash's contents into res. The objects in res will be references to 
 * the the same objects as in hash.
 */
int minihash_copy(MiniHash *res, MiniHash *hash);

/* 
 * Calls (fun) for each key-value pair inside (hash). If (fun) returns nonzero, 
 * minihash_each() will exit with the same return code as (fun).
 */
int minihash_each(MiniHash *hash, int (*fun)(char *key, Object val));

int minihash_print(MiniHash hash);


/* 
 * StandardCore is the core used for any user-defined class.
 */
typedef struct standardcore_struct {
	struct minihash_struct instance_vars;	
} StandardCore;


/* 
 * 
 * Object functions and miscellaneous declarations.
 * 
 */

/* 
 * These are objects and object types that are used frequently enough that it 
 * makes sense to put them as global variables, so they don't have to be 
 * reinitialized every time someone wants to use one of them.
 */
SmpType smpType_object, smpType_id, smpType_nil, smpType_class, 
	smpType_function, smpType_global, smpType_thrown, smpType_exception, 
	smpType_string, smpType_pair, smpType_list, smpType_atom, 
	smpType_collection, smpType_regmatch;

Object smp_nil, smp_true, smp_global;

int smpType_id_nil, smpType_id_class, smpType_id_int, smpType_id_float, 
		smpType_id_fun, smpType_id_list, smpType_id_array, smpType_id_hash, 
		smpType_id_var, smpType_id_thrown;



