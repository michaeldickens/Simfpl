/*
 *  smplistbuffer.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 8/31/11.
 *
 */

#include "smp_classes.h"

int smplistbuf_create_class()
{
	smpglobal_class("ListBuffer", &smptype_nil, CLASS_FUNDAMENTAL);
	
	Object listbuf = smp_getclass("ListBuffer");
	
	smptype_def(listbuf, SCOPE_INSTANCE_DATA, "add!", smpfun_init(&smplistbuf_add_now, 2, "Nil", "Object"));
	smptype_def(listbuf, SCOPE_INSTANCE_DATA, "gc_mark", smpfun_init(&smplistbuf_gc_mark, 1, "Nil"));
	smptype_def(listbuf, SCOPE_INSTANCE_DATA, "to_list", smpfun_init(&smplistbuf_to_list, 1, "List"));
	
	return 0;
}

Object smplistbuf_add_now(Object obj, int argc, Object argv[])
{
	SmpListBuf *lb = &obj_core(SmpListBuf, obj);
	
	if (smptype_id_eq(lb->first, smptype_id_nil)) {
		lb->first = smpobj_cons(argv[0], 1, &smp_nil);
		lb->last = lb->first;
	} else {
		obj_core(SmpList, lb->last).cdr = smp_malloc(sizeof(Object));
		*obj_core(SmpList, lb->last).cdr = smpobj_cons(argv[0], 1, &smp_nil);
		lb->last = *obj_core(SmpList, lb->last).cdr;
	}
	
	return smp_nil;
}

Object smplistbuf_gc_mark(Object obj, int argc, Object argv[])
{
	gc_mark_recursive(NULL, obj_core(SmpListBuf, obj).first);
	return smp_nil;
}

Object smplistbuf_init()
{
	SmpListBuf lb;
	lb.first = smp_nil;
	lb.last = smp_nil;
	
	Object res = obj_init(smp_getclass("ListBuffer").type);
	res.core = smp_malloc(sizeof(SmpListBuf));
	obj_core(SmpListBuf, res) = lb;
	return res;
}

Object smplistbuf_to_list(Object obj, int argc, Object argv[])
{
	return obj_core(SmpListBuf, obj).first;
}