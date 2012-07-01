/*
 *  tests.h
 *  Simfpl
 *
 *  Copyright 2011 The Khabele School. All rights reserved.
 *
 */

#include "smp_classes.h"

int smptest_print_successesp;

int init_tests();

/* Calls smp_equal?(expected, found) and returns the result. If false, prints 
 * an error message.
 * 
 * WARNING: Clears (expected) and (found).
 */
int smp_assert_eq(Object expected, Object found);

int test_nums();
int test_gc();
int test_strings();
int test_printf();

int test_lists();
Object make_list(Object obj, int argc, Object argv[]);

int test_listbuf();
int test_bool();
int test_regex();
int test_arrays();
int test_hash();
int test_external_classes();

int test_object_speed();
Object speedtest_fun(Object obj, int argc, Object argv[]);

/* Run all the main tests.
 */
int run_tests();
