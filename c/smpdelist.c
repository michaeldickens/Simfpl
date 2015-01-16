/*
 *  smpdelist.c
 *  Simfpl2
 *
 *  Created by Michael Dickens on 10/22/12.
 *
 *  Double-ended linked list.
 */

// built on top of SmpListBuf

int smpDEList_create_class()
{
	return 0;
}

/* TODO: Test this. */
Object smpDEList_dequeue_now(Object obj, int argc, Object argv[])
{
	Object res = smpList_car(obj, argc, argv);
	Object *ptr = obj_core(SmpList, obj_core(SmpDEList, obj).first).cdr;
	smpPair_clear(obj_core(SmpList, obj_core(SmpDEList, obj).first), 0, NULL);
	obj_core(SmpList, obj_core(SmpDEList, obj).first = obj_deref(ptr);
	return res;
}

/* TODO: Test this. */
Object smpDEList_enqueue_now(Object obj, int argc, Object argv[])
{
	return smpListBuffer_add_now(obj, argc, argv);
}