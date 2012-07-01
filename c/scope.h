/*
 *  scope.h
 *  Simfpl
 *
 *  Copyright 2011 The Khabele School. All rights reserved.
 * 
 */


#include "required_classes.h"

/* 
 * scope_stack: A hash containing the names of the objects in scope, pointing 
 * to the objects themselves.
 * 
 * Whenever a new scope is created, all the objects from the old scope that are 
 * still in scope are added onto the new scope. This way, every accessible 
 * object is contained in the top level.
 * 
 * The scope also maintains an object called "self", which is a reference to 
 * the object that the scope is currently inside. At the outermost level, 
 * (self) is Global.
 */
MiniHash *scope_stack;
size_t scope_length;

MiniHash scope_classes;

int scope_init();

#define scope_top (scope_length == 0 ? NULL : &scope_stack[scope_length - 1])

/* Pushes a new layer onto the scope stack.
 */
int scope_push();

/* Pops the top layer off the scope stack.
 */
int scope_pop();

/* Adds an object to the current scope and pushes it onto the GC stack.
 */
int scope_add(char *name, Object obj);

/* Returns (self) from the current scope.
 */
Object scope_self();

/* Clears the scope stack.
 */
int scope_clear();
