/*
 *  minihash.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/5/11.
 *
 */

MiniHash minihash_init()
{
	return minihash_init_capacity(HASH_DEFAULT_LENGTH);
}

MiniHash minihash_init_capacity(size_t capacity)
{
	MiniHash hash;
	hash.capacity = capacity;
	hash.a = smp_malloc(sizeof(MiniArray) * hash.capacity);
	memset(hash.a, 0, sizeof(MiniArray) * hash.capacity);
	hash.occupied = 0;
	hash.size = 0;
	return hash;
}

int minihash_clear(MiniHash *hash)
{
	if (!hash->a)
		return 0;
	
	size_t i, j;
	for (i = 0; i < hash->capacity; ++i) {
		if (hash->a[i].a) {
			for (j = 0; j < hash->a[i].length; ++j)
				if (hash->a[i].a[j].key)
					smp_free(hash->a[i].a[j].key);
			
			smp_free(hash->a[i].a);
			hash->a[i].length = 0;
		}
	}
	
	smp_free(hash->a);
	hash->capacity = hash->occupied = hash->size = 0;
	
	return 0;
}

int minihash_fullclear(MiniHash *hash)
{
	if (!hash->a)
		return 0;
	
	size_t i, j;
	for (i = 0; i < hash->capacity; ++i) {
		if (hash->a[i].a) {
			for (j = 0; j < hash->a[i].length; ++j) {
				if (hash->a[i].a[j].key) smp_free(hash->a[i].a[j].key);
				if (hash->a[i].a[j].val.core) obj_clear(&hash->a[i].a[j].val);
			}
			
			smp_free(hash->a[i].a);
			hash->a[i].length = 0;
		}
	}
	
	smp_free(hash->a);
	hash->capacity = hash->occupied = hash->size = 0;
	
	return 0;
}

int minihash_function(char *key)
{
	int hash = 5381;
	
	--key;
	while (*(++key))
		hash = ((hash << 5) + hash) + *key;
	return hash;
}

int minihash_add(MiniHash *hash, char *key, Object val)
{
	if (!hash->a)
		*hash = minihash_init();
	
	int index = minihash_function(key) % hash->capacity;
	
	MiniPair pair;
	pair.key = smp_malloc(sizeof(char) * (strlen(key) + 1));
	strcpy(pair.key, key);
	pair.val = val;
	
	if (!hash->a[index].a)
		++hash->occupied;
	
	miniarray_push(&hash->a[index], pair);
	++hash->size;
	
	if (hash->occupied / hash->capacity > HASH_MAX_OCCUPIED) {
		MiniHash hash2 = minihash_init_capacity((size_t) (hash->capacity * HASH_MAX_OCCUPIED / HASH_MIN_OCCUPIED));
		
		minihash_copy(&hash2, hash);
		
		minihash_clear(hash);
		*hash = hash2;
	}
	
	return 0;
}

int miniarray_push(MiniArray *arr, MiniPair pair)
{
	/* If the array has not yet been allocated, allocate it.
	 */
	if (!arr->a) {
		arr->a = smp_malloc(sizeof(MiniPair) * 
				next_power_of_2(MINIARRAY_MIN_LENGTH));
		arr->length = 0;
	}
	
	/* If the key already exists in the array, insert the pair where that key 
	 * is.
	 */
	size_t i;
	for (i = 0; i < arr->length; ++i) {
		if (streq(arr->a[i].key, pair.key)) {
			arr->a[i].val = pair.val;
			return 0;
		}
	}
	
	/* If necessary, reallocate the array to be larger.
	 */
	if (arr->length + 1 >= MINIARRAY_MIN_LENGTH && is_power_of_2(arr->length + 1)) {
		arr->a = smp_realloc(arr->a, sizeof(MiniPair) * next_power_of_2(arr->length + 1));
	}
	
	/* Insert the new pair onto the end.
	 */
	arr->a[arr->length++] = pair;
	return 0;
}

Object minihash_get(MiniHash *hash, char *key)
{
	if (!hash || !hash->a)
		return smp_nil;
	
	int index = minihash_function(key) % hash->capacity;
	
	if (hash->a[index].a) {
		size_t i;
		for (i = 0; i < hash->a[index].length; ++i)
			if (streq(hash->a[index].a[i].key, key))
				return hash->a[index].a[i].val;
	}
		
	return smp_nil;
}

int minihash_containsp(MiniHash *hash, char *key)
{
	if (!hash || !hash->a)
		return FALSE;
	
	int index = minihash_function(key) % hash->capacity;
	
	if (hash->a[index].a) {
		size_t i;
		for (i = 0; i < hash->a[index].length; ++i)
			if (streq(hash->a[index].a[i].key, key))
				return TRUE;
	}
		
	return FALSE;
}

int minihash_copy(MiniHash *res, MiniHash *hash)
{	
	size_t i, j;
	for (i = 0; i < hash->capacity; ++i) {
		if (hash->a[i].a)
			for (j = 0; j < hash->a[i].length; ++j) {
				minihash_add(res, hash->a[i].a[j].key, hash->a[i].a[j].val);
			}
	}
	
	return 0;
}


int minihash_each(MiniHash *hash, int (*fun)(char *key, Object val))
{
	if (!hash->a || hash->size == 0)
		return 0;
	
	size_t i, j;
	for (i = 0; i < hash->capacity; ++i) {
		if (hash->a[i].a) {
			for (j = 0; j < hash->a[i].length; ++j) {
				int res = (*fun)(hash->a[i].a[j].key, hash->a[i].a[j].val);
				if (res) return res;
			}
		}
	}
	
	return 0;	
}

int minihash_print(MiniHash hash)
{
	if (!hash.a)
		return 0;
	
	size_t i, j;
	for (i = 0; i < hash.capacity; ++i) {
		if (hash.a[i].a) {
			for (j = 0; j < hash.a[i].length; ++j) {
				printf("key: %s\n", hash.a[i].a[j].key);
			}
		}
	}
	
	printf("\n");
	return 0;
}