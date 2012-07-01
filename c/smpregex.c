/*
 *  smpregex.c
 *  Simfpl
 *
 *  Created by Michael Dickens on 7/13/11.
 *
 */

#include "smp_classes.h"

int smpregex_create_class()
{	
	smpglobal_class("RegexMatch", &smptype_object, 0);
	Object regmatch = smp_getclass("RegexMatch");
	smptype_regmatch = obj_core(SmpType, regmatch);
	
	smptype_def(regmatch, SCOPE_INSTANCE_DATA, "clear", smpfun_init(&smpregmatch_clear, 1, "Nil"));
	
	return 0;
}

Object smpregmatch_clear(Object obj, int argc, Object argv[])
{
	SmpRegexMatch core = obj_core(SmpRegexMatch, obj);
	smp_free(core.matches);
	return smp_nil;
}

Object smpregex_compile(regex_t *compiled, Object regex)
{
	return smpregex_compile_flags(compiled, regex, REG_EXTENDED);
}

Object smpregex_compile_flags(regex_t *compiled, Object regex, int flags)
{
	return smpregex_compile_str_flags(compiled, obj_core(SmpString, regex).s, 
			flags);
}

Object smpregex_compile_str(regex_t *compiled, char *pattern)
{
	return smpregex_compile_str_flags(compiled, pattern, REG_EXTENDED);
}

Object smpregex_compile_str_flags(regex_t *compiled, char *pattern, int flags)
{
	int code = regcomp(compiled, pattern, flags);
	return smpregex_compile_handle_errors(pattern, code);
}

Object smpregex_compile_handle_errors(char *pattern, int code)
{
	if (code == REG_BADBR)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"Regular expression \"%s\" had invalid '{...}' construct.", 
					pattern));
	if (code == REG_BADPAT)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"Syntax error in regular expression \"%s\".", 
					pattern));
	if (code == REG_BADRPT)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"In regular expression \"%s\", a repetition operator such as '?' or '*' appeared in a bad position.", 
					pattern));
	if (code == REG_ECOLLATE)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"Regular expression \"%s\" referred to an invalid collating element.", 
					pattern));
	if (code == REG_ECTYPE)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"Regular expression \"%s\" referred to an invalid character class name.", 
					pattern));
	if (code == REG_EESCAPE)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"Regular expression \"%s\" ended with '\\'.", 
					pattern));
	if (code == REG_ESUBREG)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"Regular expression \"%s\" had invalid number in the '\\digit' construct.", 
					pattern));
	if (code == REG_EBRACK)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"Regular expression \"%s\" had unbalanced square brackets.", 
					pattern));
	if (code == REG_EPAREN)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"Regular expression \"%s\" had unbalanced parentheses.", 
					pattern));
	if (code == REG_EBRACE)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"Regular expression \"%s\" had unbalanced curly braces.", 
					pattern));
	if (code == REG_ERANGE)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"In regular expression \"%s\", one of the endpoints in a range expression was invalid.", 
					pattern));
	if (code == REG_ESPACE)
		return smpglobal_throw(smpexc_init_fmt(
				smp_getclass("InitializationException"), 
				"Ran out of memory while compiling regular expression \"%s\".", 
					pattern));
	
	return smp_nil;
}

Object smpregmatch_init(regmatch_t matches[], size_t length)
{	
	size_t true_len;
	for (true_len = 0; true_len < length; ++true_len)
		if (matches[true_len].rm_so == 0 && matches[true_len].rm_eo == 0) {
			++true_len;
			break;
		}
	
	SmpRegexMatch core;
	core.length = true_len;
	core.matches = smp_malloc(sizeof(regmatch_t) * core.length);
	memcpy(core.matches, matches, sizeof(regmatch_t) * core.length);
	
	Object res = obj_init(&smptype_regmatch);
	res.core = smp_malloc(sizeof(SmpRegexMatch));
	obj_core(SmpRegexMatch, res) = core;
	return res;
}

Object smpregex_match(Object obj, int argc, Object argv[])
{
	return smpregex_match_str(smpstr_to_cstr(obj), argv[0]);
}

Object smpregex_match_str(char *pattern, Object obj)
{
	smp_type_check(obj, "String");
	regex_t *compiled = smp_malloc(sizeof(regex_t));
	Object obj_code = smpregex_compile_str(compiled, pattern);
	check_for_thrown(obj_code, smp_free(compiled));
	
	size_t length = SMPREGEX_MAX_MATCHES;
	regmatch_t matches[length];
	memset(matches, 0, sizeof(regmatch_t) * length);
	int code = regexec(compiled, obj_core(SmpString, obj).s, length, matches, 0);
	
	Object res = smp_nil;
	
	/* Return code 0 indicates a match. */
	if (code == 0) {
		res = smpregmatch_init(matches, length);
	}
	
	regfree(compiled);
	smp_free(compiled);
	
	return res;
	
}
Object smpregex_matchp(Object obj, int argc, Object argv[])
{
	Object match = smpregex_match(obj, argc, argv);
	check_for_thrown(match, NULL);
	if (smptype_id_eq(match, smptype_id_nil))
		return smp_nil;
	return smp_true;
}

int smpregex_matchp_cint(Object obj, int argc, Object argv[])
{
	Object match = smpregex_match(obj, argc, argv);
	if (smptype_name_eq(match, "Thrown"))
		return -1;
	if (smptype_name_eq(match, "TrueClass"))
		return 1;
	return 0;
}

