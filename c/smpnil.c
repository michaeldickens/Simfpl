/*
 *  smpnil.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/11/11.
 *
 */

int smpNil_create_class()
{
	Object nilclass = smp_getclass("Nil");
	
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "+", smpFunction_init(&smpList_add, 2, "List", "Object"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "add!", smpFunction_init(&smpList_add_now, 2, "List", "Object"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "append", smpFunction_init(&smpList_append, 2, "List", "Object"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "append!", smpFunction_init(&smpList_append_now, 2, "List", "Object"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "car", smpFunction_init(&smpNil_car, 1, "Object"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "cdr", smpFunction_init(&smpNil_cdr, 1, "Object"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "concat", smpFunction_init(&smpList_concat, 2, "List", "List"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "copy", smpFunction_init(&smpNil_copy, 1, "Nil"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "each", smpFunction_init(&smpNil_each, 1, "Nil"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "empty?", smpFunction_init(&smpNil_emptyp, 1, "Bool"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "length", smpFunction_init(&smpNil_length, 1, "Integer"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "map", smpFunction_init(&smpNil_map, 2, "Nil", "Function"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "reduce", smpFunction_init(&smpNil_reduce, 4, "Nil", "Function", "&optional", "Object"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "reverse", smpFunction_init(&smpNil_reverse, 1, "List"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "equal?", smpFunction_init(&smpNil_equalp, 2, "Bool", "Object"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpNil_to_s, 3, "String", "&optional", "String"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "write", smpFunction_init(&smpNil_write, 1, "String"));

	return 0;
}

Object smpNil_add(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_list))
		return argv[0];
	return smpObject_cons_c(argv[0], smp_nil);
}

Object smpNil_add_now(Object obj, int argc, Object argv[])
{
	if (smpType_id_eq(argv[0], smpType_id_list))
		return argv[0];
	return smpObject_cons_c(argv[0], smp_nil);
}

Object smpNil_car(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpNil_cdr(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpNil_copy(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpNil_each(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpNil_emptyp(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpNil_equalp(Object obj, int argc, Object argv[])
{
	return smpBool_init(smpObject_truep_c(argv[0]) == FALSE);
}

Object smpNil_reverse(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpNil_to_s(Object obj, int argc, Object argv[])
{
	return smpString_init("nil");
}

Object smpNil_write(Object obj, int argc, Object argv[])
{
	return smpString_init("nil");
}

Object smpNil_length(Object obj, int argc, Object argv[])
{
	return smpInteger_zero;
}

Object smpNil_map(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpNil_reduce(Object obj, int argc, Object argv[])
{
	if (argc > 1)
		return argv[1];
	return smp_nil;
}

