To compile C code, run: 

  clang -cc1 filename.c -emit-llvm
  llc filename.ll
  gcc filename.s -lgmp -lmpfr

It would be nice if I could link it with GMP in the first step, so it's ready to go by the time it's LLVM code.