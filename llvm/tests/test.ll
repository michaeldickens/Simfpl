;;; Contains a pointer to an object. WARNING: Assumes 64-bit pointers.
%value = type { i64 }

@.int_printer = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1


define i32 @int_to_value(%value* %res, i64 %x) {
  %res_inner = getelementptr %value* %res, i64 0, i32 0
  store i64 %x, i64* %res_inner
  ret i32 0
}


;;; WARNING: If the passed value does not contain a Fixint, this will still 
;;; try to extract one.
define i32 @value_to_int(i64* %res, %value* %x) {
  %ptr = getelementptr %value* %x, i64 0, i32 0
  %inner = load i64* %ptr
  store i64 %inner, i64* %res
  ret i32 0
}


define i32 @smpFixint_add(%value* %res, %value* %x, %value* %y) {
  %res_ptr = getelementptr %value* %res, i64 0, i32 0
  %x_ptr = getelementptr %value* %x, i64 0, i32 0
  %y_ptr = getelementptr %value* %y, i64 0, i32 0
  %x_inner = load i64* %x_ptr
  %y_inner = load i64* %y_ptr
  %sum = add i64 %x_inner, %y_inner
  store i64 %sum, i64* %res_ptr
  ret i32 0
}

define i32 @test_smpFixint_add() {
  ;; allocate two Fixints
  %x = alloca %value
  %1 = call i32 @int_to_value(%value* %x, i64 12)
  %y = alloca %value
  %2 = call i32 @int_to_value(%value* %y, i64 8)

  ;; compute x + y
  %rval = alloca %value
  %3 = call i32 @smpFixint_add(%value* %rval, %value* %x, 
      	%value* %y)

  ;; extract the LLVM integer from the return value
  %r_ptr = getelementptr %value* %rval, i64 0, i32 0
  %res = load i64* %r_ptr

  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.int_printer, i32 0, i32 0), i64 %res) nounwind
  ret i32 0
}

define i32 @main() {
  %1 = call i32 @test_smpFixint_add()
  ret i32 0
}

declare i32 @printf(i8* nocapture, ...) nounwind
