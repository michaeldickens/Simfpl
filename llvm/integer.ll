; ModuleID = 'integer.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%struct.anon = type { i32, i32, i64* }

@.str = private constant [5 x i8] c"%ld\0A\00"

define i64 @int_to_value(i64 %x) nounwind {
  %1 = alloca i64, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  store i64 %x, i64* %1, align 8
  %2 = call i8* @malloc(i64 16)
  %3 = bitcast i8* %2 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %3, [1 x %struct.anon]** %z, align 8
  %4 = load [1 x %struct.anon]** %z, align 8
  %5 = getelementptr inbounds [1 x %struct.anon]* %4, i32 0, i32 0
  %6 = load i64* %1, align 8
  call void @__gmpz_init_set_si(%struct.anon* %5, i64 %6)
  %7 = load [1 x %struct.anon]** %z, align 8
  %8 = ptrtoint [1 x %struct.anon]* %7 to i64
  ret i64 %8
}

declare i8* @malloc(i64)

declare void @__gmpz_init_set_si(%struct.anon*, i64)

define i64 @mpz_to_value([1 x %struct.anon]* %x) nounwind {
  %1 = alloca [1 x %struct.anon]*, align 8
  store [1 x %struct.anon]* %x, [1 x %struct.anon]** %1, align 8
  %2 = load [1 x %struct.anon]** %1, align 8
  %3 = ptrtoint [1 x %struct.anon]* %2 to i64
  ret i64 %3
}

define i64 @value_to_int(i64 %x) nounwind {
  %1 = alloca i64, align 8
  %res_mpz = alloca [1 x %struct.anon]*, align 8
  store i64 %x, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = inttoptr i64 %2 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %3, [1 x %struct.anon]** %res_mpz, align 8
  %4 = load [1 x %struct.anon]** %res_mpz, align 8
  %5 = getelementptr inbounds [1 x %struct.anon]* %4, i32 0, i32 0
  %6 = call i64 @__gmpz_get_si(%struct.anon* %5) readonly
  ret i64 %6
}

declare i64 @__gmpz_get_si(%struct.anon*) readonly

define i64 @smpInteger_add(i64 %obj, i64 %x) nounwind {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %op1 = alloca [1 x %struct.anon]*, align 8
  %op2 = alloca [1 x %struct.anon]*, align 8
  %res_mpz = alloca [1 x %struct.anon]*, align 8
  store i64 %obj, i64* %1, align 8
  store i64 %x, i64* %2, align 8
  %3 = load i64* %1, align 8
  %4 = inttoptr i64 %3 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %4, [1 x %struct.anon]** %op1, align 8
  %5 = load i64* %2, align 8
  %6 = inttoptr i64 %5 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %6, [1 x %struct.anon]** %op2, align 8
  %7 = call i8* @malloc(i64 16)
  %8 = bitcast i8* %7 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %8, [1 x %struct.anon]** %res_mpz, align 8
  %9 = load [1 x %struct.anon]** %res_mpz, align 8
  %10 = getelementptr inbounds [1 x %struct.anon]* %9, i32 0, i32 0
  call void @__gmpz_init(%struct.anon* %10)
  %11 = load [1 x %struct.anon]** %res_mpz, align 8
  %12 = getelementptr inbounds [1 x %struct.anon]* %11, i32 0, i32 0
  %13 = load [1 x %struct.anon]** %op1, align 8
  %14 = getelementptr inbounds [1 x %struct.anon]* %13, i32 0, i32 0
  %15 = load [1 x %struct.anon]** %op2, align 8
  %16 = getelementptr inbounds [1 x %struct.anon]* %15, i32 0, i32 0
  call void @__gmpz_add(%struct.anon* %12, %struct.anon* %14, %struct.anon* %16)
  %17 = load [1 x %struct.anon]** %res_mpz, align 8
  %18 = call i64 @mpz_to_value([1 x %struct.anon]* %17)
  ret i64 %18
}

declare void @__gmpz_init(%struct.anon*)

declare void @__gmpz_add(%struct.anon*, %struct.anon*, %struct.anon*)

define i32 @main() nounwind {
  %1 = alloca i32, align 4
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %res = alloca i64, align 8
  %z = alloca i64, align 8
  store i32 0, i32* %1
  %2 = call i64 @int_to_value(i64 12)
  store i64 %2, i64* %x, align 8
  %3 = call i64 @int_to_value(i64 8)
  store i64 %3, i64* %y, align 8
  %4 = load i64* %x, align 8
  %5 = load i64* %y, align 8
  %6 = call i64 @smpInteger_add(i64 %4, i64 %5)
  store i64 %6, i64* %res, align 8
  %7 = load i64* %res, align 8
  %8 = call i64 @value_to_int(i64 %7)
  store i64 %8, i64* %z, align 8
  %9 = load i64* %z, align 8
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i64 %9)
  ret i32 0
}

declare i32 @printf(i8*, ...)
