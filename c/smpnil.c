/*
 *  smpnil.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/11/11.
 *
 */

#include "smp_classes.h"

int smpnil_create_class()
{
	Object nilclass = smp_getclass("Nil");
	
	smptype_def(nilclass, SCOPE_INSTANCE_DATA, "car", smpfun_init(&smpnil_car, 1, "Object"));
	smptype_def(nilclass, SCOPE_INSTANCE_DATA, "cdr", smpfun_init(&smpnil_cdr, 1, "Object"));
	smptype_def(nilclass, SCOPE_INSTANCE_DATA, "empty?", smpfun_init(&smpnil_emptyp, 1, "Bool"));
	smptype_def(nilclass, SCOPE_INSTANCE_DATA, "equal?", smpfun_init(&smpnil_equalp, 2, "Bool", "Object"));
	smptype_def(nilclass, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smpnil_to_s, 1, "String"));
	smptype_def(nilclass, SCOPE_INSTANCE_DATA, "write", smpfun_init(&smpnil_write, 1, "String"));
	
	return 0;
}

Object smpnil_car(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpnil_cdr(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpnil_emptyp(Object obj, int argc, Object argv[])
{
	return smp_nil;
}

Object smpnil_equalp(Object obj, int argc, Object argv[])
{
	return smpbool_init(smpobj_truep_c(argv[0]) == FALSE);
}

Object smpnil_to_s(Object obj, int argc, Object argv[])
{
	return smpstr_init("nil");
}

Object smpnil_write(Object obj, int argc, Object argv[])
{
	return smpstr_init("nil");
}