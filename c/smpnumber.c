/*
 *  smpnumber.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/27/11.
 *
 */

#include "smp_classes.h"

int smpnum_create_class()
{
	smpglobal_class("Number", &smptype_object, 0);
	
	Object number = smp_getclass("Number");
		
	smptype_abstract_def(number, SCOPE_INSTANCE_DATA, "+", 2, "Number", "Number");
	smptype_abstract_def(number, SCOPE_INSTANCE_DATA, "-", 2, "Number", "Number");
	smptype_abstract_def(number, SCOPE_INSTANCE_DATA, "*", 2, "Number", "Number");
	smptype_abstract_def(number, SCOPE_INSTANCE_DATA, "/", 2, "Number", "Number");
	
	return 0;
}
