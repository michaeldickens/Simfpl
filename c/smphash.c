/*
 *  smphash.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 7/13/11.
 *
 */

int smpHash_create_class()
{
	smpGlobal_class("Hash", &smpType_object, 0);
	Object hash = smp_getclass("Hash");
	
	smpType_def(hash, SCOPE_INSTANCE_DATA, "add!", smpFunction_init(&smpHash_add_now, 2, "Object", "Pair"));
	smpType_def(hash, SCOPE_INSTANCE_DATA, "at", smpFunction_init(&smpHash_at, 2, "Object", "Object"));
	smpType_def(hash, SCOPE_INSTANCE_DATA, "at=", smpFunction_init(&smpHash_at_assign, 3, "Object", "Object", "Object"));
	smpType_def(hash, SCOPE_INSTANCE_DATA, "clear", smpFunction_init(&smpHash_clear, 1, "Nil"));
	smpType_def(hash, SCOPE_INSTANCE_DATA, "gc_mark", smpFunction_init(&smpHash_gc_mark, 1, "Nil"));
	smpType_def(hash, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpHash_to_s, 1, "String"));
	smpType_def(hash, SCOPE_INSTANCE_DATA, "write", smpFunction_init(&smpHash_write, 1, "String"));
	
	return 0;
}

Object smpHash_add_now(Object obj, int argc, Object argv[])
{
	smp_type_check(argv[0], "Pair");
	
	smpHash_core_add_now((SmpHash *) obj.core, argv[0]);
			
	return smpPair_cdr_c(argv[0]);
}

int smpHash_core_add_now(SmpHash *hash, Object pair)
{
	int index = 0;
	int code = obj_hash(&index, smpList_car(pair, 0, NULL));
	if (code) return code;
	
	index %= hash->capacity;
	
	/* If nothing is in this bucket yet, add 1 to hash.occupied. */
	if (hash->a[index].core == NULL || 
			smpType_id_eq(hash->a[index], smpType_id_nil)) {
		++hash->occupied;
		hash->a[index] = smp_nil;
	}
	
	hash->a[index] = smpObject_cons(pair, 1, &hash->a[index]);
	++hash->size;

	/* If a high enough percentage of buckets is occupied, it is time to resize 
	 * the hash. Delete the old core hash and create a new one.
	 * 
	 * Note that hashes are never resized to be smaller.
	 */
	if (hash->occupied / hash->capacity > HASH_MAX_OCCUPIED) {
		SmpHash hash2 = smpHash_core_init_capacity((size_t) (hash->capacity * 
				HASH_MAX_OCCUPIED / HASH_MIN_OCCUPIED));
		
		smpHash_core_copy(&hash2, hash);
		
		/* Clear the contents of the hash. */
		smpHash_core_clear(hash);
		
		/* Set the core of obj to the new hash. */
		*hash = hash2;
	}
	
	return 0;
}

Object smpHash_at(Object obj, int argc, Object argv[])
{
	SmpHash hash = obj_core(SmpHash, obj);
	int index = 0;
	int code = obj_hash(&index, argv[0]);
	if (code) return smpInteger_init_clong((long) code);
	
	index %= hash.capacity;
	
	if (hash.a[index].core == NULL || 
			smpType_id_eq(hash.a[index], smpType_id_list) == FALSE)
		return smp_nil;

	
	Object *list = &hash.a[index];
	while (list) {
		Object pair = obj_core(SmpList, *list).car;
		
		Object equal_test = smpObject_funcall(argv[0], "eql?", 1, 
								&(obj_core(SmpList, pair).car));
		check_for_thrown(equal_test, NULL);
		if (smpType_id_eq(pair, smpType_id_list) && smpBool_to_cint(equal_test))
			return smpList_cdr(pair, 0, NULL);
		
		list = obj_core(SmpList, *list).cdr;
	}
	
	return obj_core(SmpHash, obj).default_return_value;
}

Object smpHash_at_assign(Object obj, int argc, Object argv[])
{
	Object pair = smpPair_init(argv[0], argv[1]);
	check_for_thrown(pair, NULL);
	return smpHash_add_now(obj, 1, &pair);
}

Object smpHash_clear(Object obj, int argc, Object argv[])
{
	smpHash_core_clear((SmpHash * ) obj.core);
	return smp_nil;
}

int smpHash_core_clear(SmpHash *hash)
{
	smp_free(hash->a);
	return 0;
}

Object smpHash_containsp(Object obj, int argc, Object argv[])
{
	return smpGlobal_throw(smpException_init_fmt(smp_getclass("ImplementationException"), "hash contains?() not implemented."));
}

int smpHash_core_copy(SmpHash *res,SmpHash *hash)
{	
	size_t i;
	for (i = 0; i < hash->capacity; ++i) {
		if (hash->a[i].core != NULL) {
			Object *list = &hash->a[i];
			while (list) {
				smpHash_core_add_now(res, obj_core(SmpList, *list).car);
				list = obj_core(SmpList, *list).cdr;
			}
		}
	}
	
	return 0;
}

Object smpHash_gc_mark(Object obj, int argc, Object argv[])
{
	SmpHash hash = obj_core(SmpHash, obj);
	
	size_t i;
	for (i = 0; i < hash.capacity; ++i) {
		gc_mark_recursive(NULL, hash.a[i]);
	}
	
	return smp_nil;
}

Object smpHash_init()
{
	return smpHash_init_capacity(HASH_DEFAULT_LENGTH);
}

Object smpHash_init_capacity(size_t capacity)
{	
	Object res = obj_init((SmpType *) smp_getclass("Hash").core);
	res.core = smp_malloc(sizeof(SmpHash));
	obj_core(SmpHash, res) = smpHash_core_init_capacity(capacity);
		
	return res;
}

SmpHash smpHash_core_init_capacity(size_t capacity)
{
	if (capacity < HASH_DEFAULT_LENGTH)
		capacity = HASH_DEFAULT_LENGTH;
	
	SmpHash hash;
	hash.capacity = capacity;
	hash.a = smp_malloc(sizeof(Object) * hash.capacity);
	memset(hash.a, 0, sizeof(Object) * hash.capacity);
	hash.default_return_value = smp_nil;
	hash.occupied = 0;
	hash.size = 0;
	
	return hash;
}

Object smpHash_to_s(Object obj, int argc, Object argv[])
{
	return smpHash_make_string(obj, "to_s");
}

Object smpHash_write(Object obj, int argc, Object argv[])
{
	return smpHash_make_string(obj, "write");
}

Object smpHash_make_string(Object obj, char *fun)
{
	SmpHash hash = obj_core(SmpHash, obj);
	
	if (!hash.a)
		return smp_nil;
		
	Object str, res = smpString_init("(hash");

	Object space = smpString_init(" ");
	Object arrow = smpString_init("->");
	Object r_paren = smpString_init(")");
	
	size_t i;
	for (i = 0; i < hash.capacity; ++i) {
		if (hash.a[i].core != NULL) {
			Object *list = &hash.a[i];
			while (list) {
				str = smpObject_funcall(obj_core(SmpList, *list).car, fun, 
				 	0, NULL);
				if (smpType_name_eq(str, "Thrown")) {
					return str;
				} else if (!smpType_name_eq(str, "String")) {
					return smpGlobal_throw(smpTypeError_init(
						(SmpType *) smp_getclass("String").core, str));
				}
				
				smpString_add_now(res, 1, &space);
				smpString_add_now(res, 1, &str);
				list = obj_core(SmpList, *list).cdr;
			}
		}
	}
	
	smpString_add_now(res, 1, &r_paren);
	
	return res;
}