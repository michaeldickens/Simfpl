To compile: 

compile_c.sh will compile the C libraries.
exec.sh will compile and run LLVM code after linking it with GMP and MPFR.


***BUGS***

 * There are a lot of leaks because of all the things that used to be added to the GC stack but aren't anymore.
 * GC doesn't work properly.
 * Numbers of different types cannot be compared.
 * In test_lists(), printing is creating an infinite loop because the list somehow gets stuck onto itself, so it has (19 18 17 x) where x is a reference to the beginning of the list. So it's trying to print (19 18 17 19 18 17 19 18 17 ...). It does not happen without garbage collection.
 * If there is a type X with subtype Y, smpType_id_eq(Y, smpType_id_x) will say FALSE when it should say TRUE.

 * If a function calls DISABLE_GC_ACTIVEP and never calls ENABLE_GC_ACTIVEP, the garbage collector will never run.
 * Exceptions cannot be thrown during garbage collection because that requires allocating a new object. Theoretically this isn't a problem but it causes problems if there's an implementation error.
