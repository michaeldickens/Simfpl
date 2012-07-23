/*
 *  smpsymbol.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 7/31/11.
 *
 */

int smpSymbol_create_class()
{
	smpGlobal_class("Symbol", &smpType_string, 0);
	Object symbol = smp_getclass("Symbol");	
		
	smpType_def(symbol, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpSymbol_to_s, 1, "String"));
	smpType_def(symbol, SCOPE_INSTANCE_DATA, "write", smpFunction_init(&smpSymbol_write, 1, "String"));
		
	return 0;
}

Object smpSymbol_init(char *str)
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

char * smpSymbol_to_cstr(Object obj)
{
	return obj_core(SmpString, obj).s;
}

Object smpSymbol_to_s(Object obj, int argc, Object argv[])
{
	return smpString_init(obj_core(SmpString, obj).s);
}

Object smpSymbol_write(Object obj, int argc, Object argv[])
{
	char str[obj_core(SmpString, obj).length + 2];
	str[0] = '`';
	strcpy(str + 1, obj_core(SmpString, obj).s);
	return smpString_init(str);
}
