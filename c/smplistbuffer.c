/*
 *  smplistbuffer.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 8/31/11.
 *
 */

int smpListBuffer_create_class()
{
	smpGlobal_class("ListBuffer", &smpType_nil, CLASS_FUNDAMENTAL);
	
	Object listbuf = smp_getclass("ListBuffer");
	
	smpType_def(listbuf, SCOPE_INSTANCE_DATA, "add!", smpFunction_init(&smpListBuffer_add_now, 2, "Nil", "Object"));
	smpType_def(listbuf, SCOPE_INSTANCE_DATA, "to_list", smpFunction_init(&smpListBuffer_to_list, 1, "List"));
	
	return 0;
}

Object smpListBuffer_add_now(Object obj, int argc, Object argv[])
{
	SmpListBuf *lb = &obj_core(SmpListBuf, obj);
	
	if (smpType_id_eq(lb->first, smpType_id_nil)) {
		lb->first = smpObject_cons(argv[0], 1, &smp_nil);
		lb->last = lb->first;
	} else {
		obj_core(SmpList, lb->last).cdr = smp_malloc(sizeof(Object));
		*obj_core(SmpList, lb->last).cdr = smpObject_cons(argv[0], 1, &smp_nil);
		lb->last = *obj_core(SmpList, lb->last).cdr;
	}
	
	return smp_nil;
}

Object smpListBuffer_init()
{
	SmpListBuf lb;
	lb.first = smp_nil;
	lb.last = smp_nil;
	
	Object res = obj_init(
				&obj_core(SmpType, smp_getclass("ListBuffer")));
	res.core = smp_malloc(sizeof(SmpListBuf));
	obj_core(SmpListBuf, res) = lb;
	return res;
}

Object smpListBuffer_to_list(Object obj, int argc, Object argv[])
{
	return obj_core(SmpListBuf, obj).first;
}