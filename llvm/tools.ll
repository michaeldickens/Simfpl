; ModuleID = 'tools.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__stderrp = external global %struct.__sFILE*
@.str = private constant [17 x i8] c"Internal Error: \00"
@.str1 = private constant [2 x i8] c"\0A\00"
@.str2 = private constant [14 x i8] c"Fatal Error: \00"

define i8* @smp_malloc(i64 %bytes) nounwind {
  %1 = alloca i64, align 8
  store i64 %bytes, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = call i8* @malloc(i64 %2)
  ret i8* %3
}

declare i8* @malloc(i64)

define i8* @smp_realloc(i8* %mem, i64 %bytes) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  store i8* %mem, i8** %1, align 8
  store i64 %bytes, i64* %2, align 8
  %3 = load i8** %1, align 8
  %4 = load i64* %2, align 8
  %5 = call i8* @realloc(i8* %3, i64 %4)
  ret i8* %5
}

declare i8* @realloc(i8*, i64)

define i8* @smp_realloc_size(i8* %mem, i64 %old_bytes, i64 %new_bytes) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i8* %mem, i8** %1, align 8
  store i64 %old_bytes, i64* %2, align 8
  store i64 %new_bytes, i64* %3, align 8
  %4 = load i8** %1, align 8
  %5 = load i64* %3, align 8
  %6 = call i8* @smp_realloc(i8* %4, i64 %5)
  ret i8* %6
}

define void @smp_free(i8* %mem) nounwind {
  %1 = alloca i8*, align 8
  store i8* %mem, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = load i8** %1, align 8
  call void @free(i8* %5)
  br label %6

; <label>:6                                       ; preds = %4, %0
  ret void
}

declare void @free(i8*)

define void @smp_free_size(i8* %mem, i64 %bytes) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  store i8* %mem, i8** %1, align 8
  store i64 %bytes, i64* %2, align 8
  %3 = load i8** %1, align 8
  call void @smp_free(i8* %3)
  ret void
}

define void @internal_error(i8* %format, ...) nounwind {
  %1 = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 8
  %intentional_crash = alloca i32*, align 8
  store i8* %format, i8** %1, align 8
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  %4 = load %struct.__sFILE** @__stderrp, align 8
  %5 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([17 x i8]* @.str, i32 0, i32 0))
  %6 = load %struct.__sFILE** @__stderrp, align 8
  %7 = load i8** %1, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %9 = call i32 @vfprintf(%struct.__sFILE* %6, i8* %7, %struct.__va_list_tag* %8)
  %10 = load %struct.__sFILE** @__stderrp, align 8
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_end(i8* %13)
  store i32* null, i32** %intentional_crash, align 8
  %14 = load i32** %intentional_crash, align 8
  store i32 1, i32* %14
  ret void
}

declare void @llvm.va_start(i8*) nounwind

declare i32 @fprintf(%struct.__sFILE*, i8*, ...)

declare i32 @vfprintf(%struct.__sFILE*, i8*, %struct.__va_list_tag*)

declare void @llvm.va_end(i8*) nounwind

define void @fatal_error(i8* %format, ...) nounwind {
  %1 = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 8
  %intentional_crash = alloca i32*, align 8
  store i8* %format, i8** %1, align 8
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  %4 = load %struct.__sFILE** @__stderrp, align 8
  %5 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([14 x i8]* @.str2, i32 0, i32 0))
  %6 = load %struct.__sFILE** @__stderrp, align 8
  %7 = load i8** %1, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %9 = call i32 @vfprintf(%struct.__sFILE* %6, i8* %7, %struct.__va_list_tag* %8)
  %10 = load %struct.__sFILE** @__stderrp, align 8
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_end(i8* %13)
  store i32* null, i32** %intentional_crash, align 8
  %14 = load i32** %intentional_crash, align 8
  store i32 1, i32* %14
  ret void
}

define i32 @is_power_of_2(i64 %x) nounwind {
; <label>:0
  %1 = alloca i64, align 8
  store i64 %x, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

; <label>:4                                       ; preds = %0
  %5 = load i64* %1, align 8
  %6 = load i64* %1, align 8
  %7 = sub i64 %6, 1
  %8 = and i64 %5, %7
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  br label %11

; <label>:11                                      ; preds = %4, %0
  %12 = phi i1 [ false, %0 ], [ %10, %4 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

define i64 @next_power_of_2(i64 %x) nounwind {
  %1 = alloca i64, align 8
  store i64 %x, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = lshr i64 %2, 1
  %4 = load i64* %1, align 8
  %5 = or i64 %4, %3
  store i64 %5, i64* %1, align 8
  %6 = load i64* %1, align 8
  %7 = lshr i64 %6, 2
  %8 = load i64* %1, align 8
  %9 = or i64 %8, %7
  store i64 %9, i64* %1, align 8
  %10 = load i64* %1, align 8
  %11 = lshr i64 %10, 4
  %12 = load i64* %1, align 8
  %13 = or i64 %12, %11
  store i64 %13, i64* %1, align 8
  %14 = load i64* %1, align 8
  %15 = lshr i64 %14, 8
  %16 = load i64* %1, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %1, align 8
  %18 = load i64* %1, align 8
  %19 = lshr i64 %18, 16
  %20 = load i64* %1, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %1, align 8
  %22 = load i64* %1, align 8
  %23 = lshr i64 %22, 32
  %24 = load i64* %1, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %1, align 8
  %26 = load i64* %1, align 8
  %27 = add i64 %26, 1
  ret i64 %27
}
