To compile: 

make_lib.sh will compile the C libraries.
exec.sh will compile LLVM code, link it with the appropriate libraries, and run.


*WARNING*: If you change any of the struct declarations, that will mess up the Lisp compiler.

***Internal Function Call Conventions***

smpFunction_call() will guarantee that the called function has enough arguments, except in the case of optional arguments. Internal functions must handle optional arguments themselves. Other than that, internal fuctions do not handle argument checking.


***BUGS***

 * Numbers of different types cannot be compared.
 * In test_lists(), printing is creating an infinite loop because the list somehow gets stuck onto itself, so it has (19 18 17 x) where x is a reference to the beginning of the list. So it's trying to print (19 18 17 19 18 17 19 18 17 ...). It does not happen without garbage collection.
 * If there is a type X with subtype Y, smpType_id_eq(Y, smpType_id_x) will say FALSE when it should say TRUE.

 * If a function calls  and never calls , the garbage collector will never run.
 * Exceptions cannot be thrown during garbage collection because that requires allocating a new object. Theoretically this isn't a problem but it causes problems if there's an implementation error.
