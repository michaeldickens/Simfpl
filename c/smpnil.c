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
	
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "car", smpFunction_init(&smpNil_car, 1, "Object"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "cdr", smpFunction_init(&smpNil_cdr, 1, "Object"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "empty?", smpFunction_init(&smpNil_emptyp, 1, "Bool"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "equal?", smpFunction_init(&smpNil_equalp, 2, "Bool", "Object"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpNil_to_s, 1, "String"));
	smpType_def(nilclass, SCOPE_INSTANCE_DATA, "write", smpFunction_init(&smpNil_write, 1, "String"));
	
	return 0;
}

Object smpNil_car(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpNil_cdr(Object obj, int argc, Object argv[])
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

Object smpNil_to_s(Object obj, int argc, Object argv[])
{
	return smpString_init("nil");
}

Object smpNil_write(Object obj, int argc, Object argv[])
{
	return smpString_init("nil");
}