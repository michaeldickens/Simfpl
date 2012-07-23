#include "tests.h"

/* TODO: None of the functions from the header files are declared in user.ll. 
 * Get them to be declared somehow. There's probably a command-line argument 
 * for clang.
 */

Object smpGlobal_main(Object obj, int argc, Object argv[])
{
	smpFunction_init(&smpObject_cons, 0);
	smpType_def(smp_nil, 0, NULL, smp_nil);
	smpObject_funcall(smp_nil, NULL, 0, &smp_nil);
	smpObject_truep_c(smp_nil);
	smp_should_breakp_c(smp_nil);
	smp_should_returnp_c(smp_nil);
	smp_thrown_exceptionp_c(smp_nil);
	smpThrown_get_first_value(smp_nil);
	smpInteger_init_clong(0);
	smpInteger_init_str(NULL);
	smpFloat_init_cdouble(0.0);
	smpFloat_init_str(NULL);
	smpString_init(NULL);
	scope_get(NULL);
	
	return smp_nil;
}