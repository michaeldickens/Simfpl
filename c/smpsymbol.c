/*
 *  smpsymbol.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 7/31/11.
 *
 */

#include "smp_classes.h"

int smpsymbol_create_class()
{
	smpglobal_class("Symbol", &smptype_string, 0);
	Object symbol = smp_getclass("Symbol");	
		
	smptype_def(symbol, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smpsymbol_to_s, 1, "String"));
	smptype_def(symbol, SCOPE_INSTANCE_DATA, "write", smpfun_init(&smpsymbol_write, 1, "String"));
		
	return 0;
}

Object smpsymbol_init(char *str)
{
	Object res = obj_init(&obj_core(SmpType, smp_getclass("Symbol")));
	check_for_thrown(res, NULL);
	
	SmpString core;
	core.length = strlen(str);
	core.s = smp_malloc(sizeof(char) * (core.length + 1));
	strcpy(core.s, str);
	
	obj_core(SmpString, res) = core;
	return res;
}

char * smpsymbol_to_cstr(Object obj)
{
	return obj_core(SmpString, obj).s;
}

Object smpsymbol_to_s(Object obj, int argc, Object argv[])
{
	return smpstr_init(obj_core(SmpString, obj).s);
}

Object smpsymbol_write(Object obj, int argc, Object argv[])
{
	char str[obj_core(SmpString, obj).length + 2];
	str[0] = '`';
	strcpy(str + 1, obj_core(SmpString, obj).s);
	return smpstr_init(str);
}
