/*
 *  class.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/5/11.
 *
 */

int smp_putclass(SmpType type)
{
	Object wrapper = obj_init(&smpType_class);
	wrapper.frozenp = TRUE;
	wrapper.core = smp_malloc(sizeof(SmpType));
	
	obj_core(SmpType, wrapper) = type;
	scope_add(type.name, wrapper);
	
	return 0;
}

Object smp_getclass(char *name)
{
	return minihash_get(scope_top, name);
}

Object smp_abstract_function(Object obj, int argc, Object argv[])
{
	return smpGlobal_throw(smpException_init_fmt(
			smp_getclass("ImplementationException"), 
			"Cannot call an abstract function."));
}

Object smp_unimplemented_function(Object obj, int argc, Object argv[])
{
	return smpGlobal_throw(smpException_init_fmt(
			smp_getclass("ImplementationException"), 
			"default unimplemented function"));
}

