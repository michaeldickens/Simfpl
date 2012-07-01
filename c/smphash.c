/*
 *  smphash.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 7/13/11.
 *
 */


#include "smp_classes.h"

int smphash_create_class()
{
	smpglobal_class("Hash", &smptype_object, 0);
	Object hash = smp_getclass("Hash");
	
	smptype_def(hash, SCOPE_INSTANCE_DATA, "add!", smpfun_init(&smphash_add_now, 2, "Nil", "Object"));
	smptype_def(hash, SCOPE_INSTANCE_DATA, "clear", smpfun_init(&smphash_clear, 1, "Nil"));
	smptype_def(hash, SCOPE_INSTANCE_DATA, "gc_mark", smpfun_init(&smphash_gc_mark, 1, "Nil"));
	smptype_def(hash, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smphash_to_s, 1, "String"));
	smptype_def(hash, SCOPE_INSTANCE_DATA, "write", smpfun_init(&smphash_write, 1, "String"));
	
	return 0;
}

Object smphash_add_now(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "List");
	
	smphash_core_add_now((SmpHash *) obj.core, argv[0]);
			
	return smp_nil;
}

int smphash_core_add_now(SmpHash *hash, Object pair)
{
	int index = 0;
	int code = obj_hash(&index, smplist_car(pair, 0, NULL));
	if (code) return code;
	
	index %= hash->capacity;
	
	/* If nothing is in this bucket yet, add 1 to hash.occupied. */
	if (hash->a[index].core == NULL || 
			smptype_id_eq(hash->a[index], smptype_id_nil)) {
		++hash->occupied;
		hash->a[index] = smp_nil;
	}
	
	hash->a[index] = smpobj_cons(pair, 1, &hash->a[index]);
	++hash->size;

	/* If a high enough percentage of buckets is occupied, it is time to resize 
	 * the hash. Delete the old core hash and create a new one.
	 * 
	 * Note that hashes are never resized to be smaller.
	 */
	if (hash->occupied / hash->capacity > HASH_MAX_OCCUPIED) {
		SmpHash hash2 = smphash_core_init_capacity((size_t) (hash->capacity * 
				HASH_MAX_OCCUPIED / HASH_MIN_OCCUPIED));
		
		smphash_core_copy(&hash2, hash);
		
		/* Clear the contents of the hash. */
		smphash_core_clear(hash);
		
		/* Set the core of obj to the new hash. */
		*hash = hash2;
	}
	
	return 0;
}

Object smphash_clear(Object obj, int argc, Object argv[])
{
	smphash_core_clear((SmpHash * ) obj.core);
	return smp_nil;
}

int smphash_core_clear(SmpHash *hash)
{
	smp_free(hash->a);
	return 0;
}

Object smphash_containsp(Object obj, int argc, Object argv[])
{
	return smpglobal_throw(smpexc_init_fmt(smp_getclass("ImplementationException"), "hash contains?() not implemented."));
}

int smphash_core_copy(SmpHash *res,SmpHash *hash)
{	
	size_t i;
	for (i = 0; i < hash->capacity; ++i) {
		if (hash->a[i].core != NULL) {
			Object *list = &hash->a[i];
			while (list) {
				smphash_core_add_now(res, obj_core(SmpList, *list).car);
				list = obj_core(SmpList, *list).cdr;
			}
		}
	}
	
	return 0;
}

Object smphash_gc_mark(Object obj, int argc, Object argv[])
{
	SmpHash hash = obj_core(SmpHash, obj);
	
	size_t i;
	for (i = 0; i < hash.capacity; ++i) {
		gc_mark_recursive(NULL, hash.a[i]);
	}
	
	return smp_nil;
}

Object smphash_get(Object obj, int argc, Object argv[])
{
	SmpHash hash = obj_core(SmpHash, obj);
	int index = 0;
	int code = obj_hash(&index, argv[0]);
	if (code) return smpint_init_clong((long) code);
	
	index %= hash.capacity;
	
	if (hash.a[index].core == NULL || 
			smptype_id_eq(hash.a[index], smptype_id_list) == FALSE)
		return smp_nil;

	
	Object *list = &hash.a[index];
	while (list) {
		Object pair = obj_core(SmpList, *list).car;
		
		Object equal_test = smpobj_funcall(argv[0], "eql?", 1, 
								&(obj_core(SmpList, pair).car));
		check_for_thrown(equal_test, NULL);
		if (smptype_id_eq(pair, smptype_id_list) && smpbool_to_cint(equal_test))
			return smplist_cdr(pair, 0, NULL);
		
		list = obj_core(SmpList, *list).cdr;
	}
	
	return obj_core(SmpHash, obj).default_return_value;
}

Object smphash_init()
{
	return smphash_init_capacity(HASH_DEFAULT_LENGTH);
}

Object smphash_init_capacity(size_t capacity)
{	
	Object res = obj_init((SmpType *) smp_getclass("Hash").core);
	res.core = smp_malloc(sizeof(SmpHash));
	obj_core(SmpHash, res) = smphash_core_init_capacity(capacity);
		
	return res;
}

SmpHash smphash_core_init_capacity(size_t capacity)
{
	SmpHash hash;
	hash.capacity = capacity;
	hash.a = smp_malloc(sizeof(Object) * hash.capacity);
	memset(hash.a, 0, sizeof(Object) * hash.capacity);
	hash.default_return_value = smp_nil;
	hash.occupied = 0;
	hash.size = 0;
	
	return hash;
}

Object smphash_to_s(Object obj, int argc, Object argv[])
{
	return smphash_make_string(obj, "to_s");
}

Object smphash_write(Object obj, int argc, Object argv[])
{
	return smphash_make_string(obj, "write");
}

Object smphash_make_string(Object obj, char *fun)
{
	SmpHash hash = obj_core(SmpHash, obj);
	
	if (!hash.a)
		return smp_nil;
		
	Object str, res = smpstr_init("(hash");

	Object space = smpstr_init(" ");
	Object l_paren = smpstr_init("(");
	Object r_paren = smpstr_init(")");
	
	size_t i;
	for (i = 0; i < hash.capacity; ++i) {
		if (hash.a[i].core != NULL) {
			Object *list = &hash.a[i];
			while (list) {
				str = smpobj_funcall(obj_core(SmpList, *list).car, fun, 0, NULL);
				if (smptype_name_eq(str, "Thrown")) {
					obj_clear(&res);
					obj_clear(&space);
					obj_clear(&l_paren);
					obj_clear(&r_paren);
					return str;
				} else if (smptype_name_eq(str, "String") == FALSE) {
					obj_clear(&res);
					obj_clear(&space);
					obj_clear(&l_paren);
					obj_clear(&r_paren);
					return smpglobal_throw(smptypeerr_init(
						(SmpType *) smp_getclass("String").core, str));
				}
								
				smpstr_add_now(res, 1, &space);
				smpstr_add_now(res, 1, &l_paren);
				smpstr_add_now(res, 1, &str);
				smpstr_add_now(res, 1, &r_paren);
				list = obj_core(SmpList, *list).cdr;
			}
		}
	}
	
	smpstr_add_now(res, 1, &r_paren);
	
	obj_clear(&space);
	obj_clear(&l_paren);
	obj_clear(&r_paren);
	
	return res;
}