/*
 *  tests.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 7/1/12.
 *
 */

#include "tests.h"

#include "class.c"
#include "gc.c"
#include "minihash.c"
#include "object.c"
#include "scope.c"
#include "smp_classes.c"
#include "tests.c"
#include "tools.c"

#include "smparray.c"
#include "smpbool.c"
#include "smpcollection.c"
#include "smpexc.c"
#include "smpfloat.c"
#include "smpfun.c"
#include "smpglobal.c"
#include "smphash.c"
#include "smpint.c"
#include "smplist.c"
#include "smplistbuffer.c"
#include "smpnil.c"
#include "smpnumber.c"
#include "smppair.c"
#include "smpregex.c"
#include "smpstring.c"
#include "smpsymbol.c"
#include "smpthrown.c"
#include "smptype.c"

int main(int argc, const char *argv[])
{
	gc_init();
	scope_init();
	test_init();
	init_smp_classes();
	
	Object tmp, arr = smpArray_init();
	int i;
	for (i = 0; i < argc; ++i) {
		tmp = smpString_init(argv[i]);
		smpArray_add_now(arr, 1, &tmp);
	}
	
	Object res = smpGlobal_main(smp_global, 1, &arr);
	if (smp_thrown_exceptionp_c(res)) {
		smp_printf("\n%s\n", res);
	}
		
	scope_clear();
	return 0;
}
