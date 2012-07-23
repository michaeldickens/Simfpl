/*
 *  smpnumber.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/27/11.
 *
 */

int smpNumber_create_class()
{
	smpGlobal_class("Number", &smpType_object, 0);
	
	Object number = smp_getclass("Number");
		
	smpType_abstract_def(number, SCOPE_INSTANCE_DATA, "+", 2, "Number", "Number");
	smpType_abstract_def(number, SCOPE_INSTANCE_DATA, "-", 2, "Number", "Number");
	smpType_abstract_def(number, SCOPE_INSTANCE_DATA, "*", 2, "Number", "Number");
	smpType_abstract_def(number, SCOPE_INSTANCE_DATA, "/", 2, "Number", "Number");
	smpType_abstract_def(number, SCOPE_INSTANCE_DATA, "<", 2, "Bool", "Object");
	smpType_abstract_def(number, SCOPE_INSTANCE_DATA, "<=", 2, "Bool", "Object");
	smpType_abstract_def(number, SCOPE_INSTANCE_DATA, ">=", 2, "Bool", "Object");
	smpType_abstract_def(number, SCOPE_INSTANCE_DATA, ">", 2, "Bool", "Object");

	return 0;
}
