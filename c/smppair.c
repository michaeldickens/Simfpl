/*
 *  smppair.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 8/5/11.
 *
 */

#include "smp_classes.h"

int smppair_create_class()
{
	Object pair = smp_getclass("Pair");
	
	smptype_def(pair, SCOPE_INSTANCE_DATA, "car", smpfun_init(&smppair_car, 1, "Object"));
	smptype_def(pair, SCOPE_INSTANCE_DATA, "cdr", smpfun_init(&smppair_cdr, 1, "Object"));
	smptype_def(pair, SCOPE_INSTANCE_DATA, "clear", smpfun_init(&smppair_clear, 1, "Nil"));
	smptype_def(pair, SCOPE_INSTANCE_DATA, "gc_mark", smpfun_init(&smppair_gc_mark, 1, "Object"));
	smptype_def(pair, SCOPE_INSTANCE_DATA, "to_s", smpfun_init(&smppair_to_s, 1, "String"));
	smptype_def(pair, SCOPE_INSTANCE_DATA, "write", smpfun_init(&smppair_write, 1, "String"));
	
	return 0;
}

Object smppair_car(Object obj, int argc, Object argv[])
{
	return obj_core(SmpPair, obj).car;
}

Object smppair_cdr(Object obj, int argc, Object argv[])
{
	Object *cdr = obj_core(SmpPair, obj).cdr;
	return obj_deref(cdr);
}

Object smppair_clear(Object obj, int argc, Object argv[])
{
	smp_free(obj_core(SmpPair, obj).cdr);
	return smp_nil;
}

Object smppair_gc_mark(Object obj, int argc, Object argv[])
{
	SmpPair core = obj_core(SmpPair, obj);
	gc_mark_recursive(NULL, core.car);
	
	if (core.cdr)
		gc_mark_recursive(NULL, *core.cdr);
	return smp_nil;
}

Object smppair_init(Object car, Object cdr)
{
	SmpPair pair;
	pair.car = car;
	
	if (smptype_id_eq(cdr, smptype_id_nil)) {
		pair.cdr = NULL;
	} else {
		pair.cdr = smp_malloc(sizeof(Object));
		*pair.cdr = cdr;
	}
	
	Object res = obj_init(&obj_core(SmpType, smp_getclass("Pair")));
	res.core = smp_malloc(sizeof(SmpPair));
	obj_core(SmpPair, res) = pair;
	return res;
}

Object smppair_set_car_now(Object obj, int argc, Object argv[])
{
	SmpPair *core = &obj_core(SmpPair, obj);
	
	/* This should sometimes clear the old car, or there will be memory leaks. */
	core->car = argv[0];
	return obj;
}

Object smppair_set_cdr_now(Object obj, int argc, Object argv[])
{
	SmpPair *core = &obj_core(SmpPair, obj);
	if (smptype_id_eq(argv[0], smptype_id_nil)) {
		core->cdr = NULL;
		return obj;
	}
	
	if (core->cdr == NULL) core->cdr = smp_malloc(sizeof(Object));
	*core->cdr = argv[0];
	return obj;
}

Object smppair_to_s(Object obj, int argc, Object argv[])
{
	return smpglobal_sprintf("(%s %s)", smppair_car_c(obj), smppair_cdr_c(obj));
}

Object smppair_write(Object obj, int argc, Object argv[])
{
	return smpglobal_sprintf("(%w %w)", smppair_car_c(obj), smppair_cdr_c(obj));
}



