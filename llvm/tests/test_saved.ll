;;; Contains a pointer to an object. WARNING: Assumes 64-bit pointers.
%value = type { i64 }

%smpType = type {
;  label, ; superclass
  i8* ; name
}

%smpObject = type { 
  %smpType
}

%smpFixint = type {
  i32
}

@.int_printer = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define i32 @make_smpFixint(%smpFixint* %res, i32 %x) {
  %res_inner = getelementptr %smpFixint* %res, i64 0, i32 0
  store i32 %x, i32* %res_inner
  ret i32 0
}

;;; TODO: Test this.
define i32 @smpFixint_to_value(%value* %res, %smpFixint* %x) {
  %res_inner = getelementptr %value* %res, i64 0, i32 0
  %ptr = ptrtoint %smpFixint* %x to i64
  store i64 %ptr, i64* %res_inner
  ret i32 0
}

;;; TODO: Test this.
;;; WARNING: If the passed value does not contain a Fixint, this will still 
;;; try to extract one.
define i32 @value_to_smpFixint(%smpFixint* %res, %value* %x) {
  %ptr_ptr = getelementptr %value* %x, i64 0, i32 0
  %ptr_val = load i64* %ptr_ptr
  %ptr = inttoptr i64 %ptr_val to %smpFixint*
  %num = load %smpFixint* %ptr
  store %smpFixint %num, %smpFixint* %res
  ret i32 0
}

define i32 @smpFixint_add_internal(%smpFixint* %x, %smpFixint* %y) {
  %xintptr = getelementptr %smpFixint* %x, i64 0, i32 0
  %xint = load i32* %xintptr
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.int_printer, i32 0, i32 0), i32 %xint) nounwind
  %yintptr = getelementptr %smpFixint* %y, i64 0, i32 0
  %yint = load i32* %yintptr
  %res = add i32 %xint, %yint
  ret i32 %res
}

;;; TODO: Finish this.
define i32 @smpFixint_add(%value* %res, %smpFixint* %x, %value* %y) {
  %y_inner = alloca %smpFixint
  %1 = call i32 @value_to_smpFixint(%smpFixint* %y_inner, %value* %y)
  %res_inner = call i32 @smpFixint_add_internal(%smpFixint* %x, 
      %smpFixint* %y_inner)
  %res_smp = alloca %smpFixint
  %2 = call i32 @make_smpFixint(%smpFixint* %res_smp, i32 %res_inner)
  %3 = call i32 @smpFixint_to_value(%value* %res, %smpFixint* %res_smp)
  ret i32 0
}

define i32 @test_smpFixint_add() {
  ;; allocate a Fixint
  %xptr = alloca %smpFixint
  %1 = call i32 @make_smpFixint(%smpFixint* %xptr, i32 12)

  ;; allocate a Fixint and put it inside a value
  %yptr = alloca %smpFixint
  %2 = call i32 @make_smpFixint(%smpFixint* %yptr, i32 8)
  %yval = alloca %value
  %3 = call i32 @smpFixint_to_value(%value* %yval, %smpFixint* %yptr)

  ;; compute x + y
  %rval = alloca %value
  %4 = call i32 @smpFixint_add(%value* %rval, %smpFixint* %xptr, 
      	%value* %yval)

  ;; extract the LLVM integer from the return value
  %rptr = alloca %smpFixint
  %5 = call i32 @value_to_smpFixint(%smpFixint* %rptr, %value* %rval)
  %r_inner = getelementptr %smpFixint* %rptr, i64 0, i32 0
  %res = load i32* %r_inner

  %6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.int_printer, i32 0, i32 0), i32 %res) nounwind
  ret i32 0
}

define i32 @main() {
  %1 = call i32 @test_smpFixint_add()
  ret i32 0
}

declare i32 @printf(i8* nocapture, ...) nounwind
