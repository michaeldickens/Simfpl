/*
 *  smptrue.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/18/11.
 *
 */

Object smpBool_init(int truep)
{
	return truep ? smp_true : smp_nil;
}

int smpBool_to_cint(Object obj)
{
	return obj.core != smp_nil.core;
}

Object smpObject_truep(Object obj, int argc, Object argv[])
{
	return smpBool_init(smpObject_truep_c(obj));
}

int smpObject_truep_c(Object obj)
{
	return !smpType_id_eq(obj, smpType_id_nil);
}

Object smptrue_to_s(Object obj, int argc, Object argv[])
{
	return smpString_init("true");
}

Object smpBool_and(Object obj, int argc, Object argv[])
{
	return smpBool_init(smpObject_truep_c(obj) && smpObject_truep_c(argv[0]));
}

/* IMPORTANT: Operates on the second argument, not the object itself.
 */
Object smpBool_not(Object obj, int argc, Object argv[])
{
	return smpBool_init(!smpObject_truep_c(argv[0]));	
}

Object smpBool_or(Object obj, int argc, Object argv[])
{
	return smpBool_init(smpObject_truep_c(obj) || smpObject_truep_c(argv[0]));	
}

Object smpBool_xor(Object obj, int argc, Object argv[])
{
	return smpBool_init(smpObject_truep_c(obj) ^ smpObject_truep_c(argv[0]));	
}

