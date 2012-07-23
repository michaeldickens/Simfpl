/*
 *  class.h
 *  Simfpl2
 *
 *  Created by Michael Dickens on 2/5/11.
 *  
 *  Contains functions used to create and fill new classes.
 */

#include "scope.h"

/* Class flags for classes. By default, classes are external and instantiable.
 */
#define CLASS_EXTERNALP_FLAG 0x01
#define CLASS_EXTERNALP_SHIFT 0
#define CLASS_EXTERNAL 0x00
#define CLASS_INTERNAL 0x01

/* Used to determine if a singleton class has been instantiated. */
#define CLASS_INSTANTIATEDP_FLAG 0x02
#define CLASS_INSTANTIATEDP_SHIFT 1
#define CLASS_NOT_INSTANTIATED 0x00
#define CLASS_INSTANTIATED 0x02

#define CLASS_INSTANTIABILITY_FLAG 0x30
#define CLASS_INSTANTIABILITY_SHIFT 4
#define CLASS_INSTANTIABLE 0x00
#define CLASS_SINGLETON 0x10
#define CLASS_ABSTRACT 0x20

#define CLASS_FINALP_FLAG 0x40
#define CLASS_FINALP_SHIFT 6
#define CLASS_NOT_FINAL 0x00
#define CLASS_FINAL 0x40

#define CLASS_FUNDAMENTALP_FLAG 0x80
#define CLASS_FUNDAMENTALP_SHIFT 7
#define CLASS_NOT_FUNDAMENTALP 0x00
#define CLASS_FUNDAMENTAL 0x80

/* Scope flags for functions.
 * WARNING: These must not be changed because the literal values are used 
 * by the Simfpl compiler.
 */
#define SCOPE_DATA_FLAG 0xf
#define SCOPE_INSTANCE_DATA 0x0
#define SCOPE_CLASS_DATA 0x1

#define SCOPE_PERMISSION_FLAG 0xf0
#define SCOPE_PUBLIC 0x00
#define SCOPE_PACKAGE 0x10
#define SCOPE_PROTECTED 0x20
#define SCOPE_PRIVATE 0x30
#define SCOPE_INTERNAL 0x40

#define FUNVAR_FLAG 0xf00
#define FUNVAR_FUN 0x000
#define FUNVAR_VAR 0x100

/* 
 * Returns an object containing the class of the object with the given name.
 */
Object smp_getclass(char *name);

/* 
 * Adds class (type) to the internal container that contains all the classes.
 */
int smp_putclass(SmpType type);

/* 
 * A function that is called whenever the user attempts to call an abstract 
 * method. Throws an ImplementationError.
 */
Object smp_abstract_function(Object obj, int argc, Object argv[]);

Object smp_unimplemented_function(Object obj, int argc, Object argv[]);


