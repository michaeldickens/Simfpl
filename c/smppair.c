/*
 *  smppair.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 8/5/11.
 *
 */

int smpPair_create_class()
{
	Object pair = smp_getclass("Pair");
	
	smpType_def(pair, SCOPE_INSTANCE_DATA, "car", smpFunction_init(&smpPair_car, 1, "Object"));
	smpType_def(pair, SCOPE_INSTANCE_DATA, "cdr", smpFunction_init(&smpPair_cdr, 1, "Object"));
	smpType_def(pair, SCOPE_INSTANCE_DATA, "clear", smpFunction_init(&smpPair_clear, 1, "Nil"));
	smpType_def(pair, SCOPE_INSTANCE_DATA, "gc_mark", smpFunction_init(&smpPair_gc_mark, 1, "Object"));
	smpType_def(pair, SCOPE_INSTANCE_DATA, "to_s", smpFunction_init(&smpPair_to_s, 1, "String"));
	smpType_def(pair, SCOPE_INSTANCE_DATA, "write", smpFunction_init(&smpPair_write, 1, "String"));
	
	return 0;
}

Object smpPair_car(Object obj, int argc, Object argv[])
{
	return obj_core(SmpPair, obj).car;
}

Object smpPair_cdr(Object obj, int argc, Object argv[])
{
	Object *cdr = obj_core(SmpPair, obj).cdr;
	return obj_deref(cdr);
}

Object smpPair_clear(Object obj, int argc, Object argv[])
{
	smp_free(obj_core(SmpPair, obj).cdr);
	return smp_nil;
}

Object smpPair_gc_mark(Object obj, int argc, Object argv[])
{
	SmpPair core = obj_core(SmpPair, obj);
	gc_mark_recursive(NULL, core.car);
	
	if (core.cdr)
		gc_mark_recursive(NULL, *core.cdr);
	return smp_nil;
}

Object smpPair_init(Object car, Object cdr)
{
	SmpPair pair;
	pair.car = car;
	
	if (smpType_id_eq(cdr, smpType_id_nil)) {
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

Object smpPair_set_car_now(Object obj, int argc, Object argv[])
{
	SmpPair *core = &obj_core(SmpPair, obj);
	
	/* This should sometimes clear the old car, or there will be memory leaks. */
	core->car = argv[0];
	return obj;
}

Object smpPair_set_cdr_now(Object obj, int argc, Object argv[])
{
	SmpPair *core = &obj_core(SmpPair, obj);
	if (smpType_id_eq(argv[0], smpType_id_nil)) {
		core->cdr = NULL;
		return obj;
	}
	
	if (core->cdr == NULL) core->cdr = smp_malloc(sizeof(Object));
	*core->cdr = argv[0];
	return obj;
}

Object smpPair_to_s(Object obj, int argc, Object argv[])
{
	return smpGlobal_sprintf("(%s -> %s)", smpPair_car_c(obj), smpPair_cdr_c(obj));
}

Object smpPair_write(Object obj, int argc, Object argv[])
{
	return smpGlobal_sprintf("(%w -> %w)", smpPair_car_c(obj), smpPair_cdr_c(obj));
}



