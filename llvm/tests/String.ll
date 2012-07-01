; ModuleID = 'String.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

define i32 @reverse(i8** %res, i8* %str) nounwind {
  %1 = alloca i8**, align 8
  %2 = alloca i8*, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store i8** %res, i8*** %1, align 8
  store i8* %str, i8** %2, align 8
  %3 = load i8** %2, align 8
  %4 = call i64 @strlen(i8* %3)
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %length, align 4
  %6 = load i32* %length, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = mul i64 1, %8
  %10 = call i8* @malloc(i64 %9)
  %11 = load i8*** %1, align 8
  store i8* %10, i8** %11
  store i32 0, i32* %i, align 4
  br label %12

; <label>:12                                      ; preds = %31, %0
  %13 = load i32* %i, align 4
  %14 = load i32* %length, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %34

; <label>:16                                      ; preds = %12
  %17 = load i32* %length, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32* %i, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = load i8** %2, align 8
  %23 = getelementptr inbounds i8* %22, i64 %21
  %24 = load i8* %23
  %25 = load i32* %i, align 4
  %26 = sext i32 %25 to i64
  %27 = load i8*** %1, align 8
  %28 = getelementptr inbounds i8** %27, i64 0
  %29 = load i8** %28
  %30 = getelementptr inbounds i8* %29, i64 %26
  store i8 %24, i8* %30
  br label %31

; <label>:31                                      ; preds = %16
  %32 = load i32* %i, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %i, align 4
  br label %12

; <label>:34                                      ; preds = %12
  %35 = load i32* %length, align 4
  %36 = sext i32 %35 to i64
  %37 = load i8*** %1, align 8
  %38 = getelementptr inbounds i8** %37, i64 0
  %39 = load i8** %38
  %40 = getelementptr inbounds i8* %39, i64 %36
  store i8 0, i8* %40
  ret i32 0
}

declare i64 @strlen(i8*)

declare i8* @malloc(i64)
