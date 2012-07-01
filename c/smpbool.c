/*
 *  smptrue.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/18/11.
 *
 */

#include "smp_classes.h"

Object smpbool_init(int truep)
{
	return truep ? smp_true : smp_nil;
}

int smpbool_to_cint(Object obj)
{
	if (obj.core == smp_nil.core)
		return FALSE;
	return TRUE;
}

Object smptrue_to_s(Object obj, int argc, Object argv[])
{
	return smpstr_init("true");
}

Object smpbool_and(Object obj, int argc, Object argv[])
{
	return smpbool_init(smpobj_truep_c(obj) && smpobj_truep_c(argv[0]));
}

Object smpbool_not(Object obj, int argc, Object argv[])
{
	return smpbool_init(!smpobj_truep_c(obj));	
}

Object smpbool_or(Object obj, int argc, Object argv[])
{
	return smpbool_init(smpobj_truep_c(obj) || smpobj_truep_c(argv[0]));	
}

Object smpbool_xor(Object obj, int argc, Object argv[])
{
	return smpbool_init(smpobj_truep_c(obj) ^ smpobj_truep_c(argv[0]));	
}
