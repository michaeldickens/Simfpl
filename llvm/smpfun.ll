; ModuleID = 'smpfun.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.argspec_struct = type { i8*, i8, %struct.obj_struct, i8 }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smptype_struct*, i8* }
%struct.smpfun_struct = type { i8, i8*, %struct.argspec_struct*, [2 x i8], void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* }
%struct.smpthrown_struct = type { i8, %struct.obj_struct*, i64 }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@.str = private constant [9 x i8] c"Function\00"
@.str1 = private constant [6 x i8] c"clear\00"
@.str2 = private constant [4 x i8] c"Nil\00"
@.str3 = private constant [8 x i8] c"gc_mark\00"
@.str4 = private constant [5 x i8] c"to_s\00"
@.str5 = private constant [7 x i8] c"String\00"
@smptype_function = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_thrown = common global %struct.smptype_struct zeroinitializer, align 8
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@.str6 = private constant [14 x i8] c"FunctionError\00"
@.str7 = private constant [42 x i8] c"Unexpected token %s after &rest argument.\00"
@.str8 = private constant [9 x i8] c"&default\00"
@.str9 = private constant [7 x i8] c"&quote\00"
@.str10 = private constant [10 x i8] c"&optional\00"
@.str11 = private constant [6 x i8] c"&rest\00"
@.str12 = private constant [9 x i8] c"&keyword\00"
@.str13 = private constant [5 x i8] c"%s()\00"
@.str14 = private constant [16 x i8] c"<Function: %lx>\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_id = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_nil = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_class = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_global = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_exception = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_string = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_pair = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_list = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_atom = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_collection = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_regmatch = common global %struct.smptype_struct zeroinitializer, align 8
@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@smp_global = common global %struct.obj_struct zeroinitializer, align 8
@smptype_id_nil = common global i32 0, align 4
@smptype_id_class = common global i32 0, align 4
@smptype_id_int = common global i32 0, align 4
@smptype_id_float = common global i32 0, align 4
@smptype_id_fun = common global i32 0, align 4
@smptype_id_list = common global i32 0, align 4
@smptype_id_array = common global i32 0, align 4
@smptype_id_hash = common global i32 0, align 4
@smptype_id_var = common global i32 0, align 4
@gc_stack = common global [1024 x %struct.obj_struct] zeroinitializer, align 16
@gc_stack_length = common global i64 0, align 8
@gc_counter = common global i32 0, align 4
@gc_add_objectsp = common global i32 0, align 4
@gc_add_next_objectp = common global i32 0, align 4
@gc_activep = common global i32 0, align 4
@gc_runningp = common global i32 0, align 4
@smptype_next_id = common global i32 0, align 4
@smptype_ids = common global %struct.minihash_struct zeroinitializer, align 8
@smp_stdin = common global %struct.__sFILE* null, align 8
@smp_stdout = common global %struct.__sFILE* null, align 8
@smp_stderr = common global %struct.__sFILE* null, align 8
@scope_stack = common global %struct.minihash_struct* null, align 8
@scope_length = common global i64 0, align 8
@scope_classes = common global %struct.minihash_struct zeroinitializer, align 8
@initialized_classesp = common global i32 0, align 4
@smptype_int = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_float = common global %struct.smptype_struct zeroinitializer, align 8
@smpint_zero = common global %struct.obj_struct zeroinitializer, align 8
@smpint_one = common global %struct.obj_struct zeroinitializer, align 8
@smp_mpfr_rnd = common global i32 0, align 4
@smp_mpfr_default_prec = common global i64 0, align 8

define i32 @smpfun_create_class() nounwind {
  %function = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  call void @smp_getclass(%struct.obj_struct* sret %function, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0))
  %10 = bitcast %struct.obj_struct* %1 to i8*
  %11 = bitcast %struct.obj_struct* %function to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfun_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %2)
  %12 = bitcast %struct.obj_struct* %4 to i8*
  %13 = bitcast %struct.obj_struct* %function to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfun_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), %struct.obj_struct* byval %5)
  %14 = bitcast %struct.obj_struct* %7 to i8*
  %15 = bitcast %struct.obj_struct* %function to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfun_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), %struct.obj_struct* byval %8)
  ret i32 0
}

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define void @smpfun_init(%struct.obj_struct* sret %agg.result, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %fun, i32 %argc, ...) nounwind {
  %1 = alloca void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, align 8
  %2 = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  store void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %fun, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %1, align 8
  store i32 %argc, i32* %2, align 4
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* %4)
  %5 = load void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %1, align 8
  %6 = load i32* %2, align 4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @smpfun_init_v(%struct.obj_struct* sret %res, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %5, i32 %6, %struct.__va_list_tag* %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_end(i8* %9)
  %10 = bitcast %struct.obj_struct* %agg.result to i8*
  %11 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  ret void
}

define void @smpfun_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smpfun_struct, align 8
  %i = alloca i32, align 4
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpfun_struct*
  %6 = bitcast %struct.smpfun_struct* %core to i8*
  %7 = bitcast %struct.smpfun_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 40, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.smpfun_struct* %core, i32 0, i32 1
  %9 = load i8** %8, align 8
  call void @smp_free(i8* %9)
  store i32 0, i32* %i, align 4
  br label %10

; <label>:10                                      ; preds = %28, %0
  %11 = load i32* %i, align 4
  %12 = bitcast %struct.smpfun_struct* %core to i8*
  %13 = getelementptr i8* %12, i32 24
  %14 = bitcast i8* %13 to i32*
  %15 = load i32* %14, align 8
  %16 = and i32 %15, 65535
  %17 = shl i32 %16, 16
  %18 = ashr i32 %17, 16
  %19 = icmp slt i32 %11, %18
  br i1 %19, label %20, label %31

; <label>:20                                      ; preds = %10
  %21 = load i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.smpfun_struct* %core, i32 0, i32 2
  %24 = load %struct.argspec_struct** %23, align 8
  %25 = getelementptr inbounds %struct.argspec_struct* %24, i64 %22
  %26 = getelementptr inbounds %struct.argspec_struct* %25, i32 0, i32 0
  %27 = load i8** %26, align 8
  call void @smp_free(i8* %27)
  br label %28

; <label>:28                                      ; preds = %20
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %10

; <label>:31                                      ; preds = %10
  %32 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %33 = load i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.smpfun_struct*
  %35 = getelementptr inbounds %struct.smpfun_struct* %34, i32 0, i32 2
  %36 = load %struct.argspec_struct** %35, align 8
  %37 = bitcast %struct.argspec_struct* %36 to i8*
  call void @smp_free(i8* %37)
  %38 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpfun_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smpfun_struct, align 8
  %i = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smpfun_struct*
  %7 = bitcast %struct.smpfun_struct* %core to i8*
  %8 = bitcast %struct.smpfun_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 40, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %45, %0
  %10 = load i32* %i, align 4
  %11 = bitcast %struct.smpfun_struct* %core to i8*
  %12 = getelementptr i8* %11, i32 24
  %13 = bitcast i8* %12 to i32*
  %14 = load i32* %13, align 8
  %15 = and i32 %14, 65535
  %16 = shl i32 %15, 16
  %17 = ashr i32 %16, 16
  %18 = icmp slt i32 %10, %17
  br i1 %18, label %19, label %48

; <label>:19                                      ; preds = %9
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.smpfun_struct* %core, i32 0, i32 2
  %23 = load %struct.argspec_struct** %22, align 8
  %24 = getelementptr inbounds %struct.argspec_struct* %23, i64 %21
  %25 = bitcast %struct.argspec_struct* %24 to i8*
  %26 = getelementptr i8* %25, i32 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32* %27, align 8
  %29 = lshr i32 %28, 1
  %30 = and i32 %29, 1
  %31 = shl i32 %30, 31
  %32 = ashr i32 %31, 31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

; <label>:34                                      ; preds = %19
  %35 = load i32* %i, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.smpfun_struct* %core, i32 0, i32 2
  %38 = load %struct.argspec_struct** %37, align 8
  %39 = getelementptr inbounds %struct.argspec_struct* %38, i64 %36
  %40 = getelementptr inbounds %struct.argspec_struct* %39, i32 0, i32 2
  %41 = bitcast %struct.obj_struct* %3 to i8*
  %42 = bitcast %struct.obj_struct* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  %43 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  br label %44

; <label>:44                                      ; preds = %34, %19
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i32* %i, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4
  br label %9

; <label>:48                                      ; preds = %9
  %49 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpfun_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpfun_struct*
  %6 = getelementptr inbounds %struct.smpfun_struct* %5, i32 0, i32 1
  %7 = load i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %11 = load i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.smpfun_struct*
  %13 = getelementptr inbounds %struct.smpfun_struct* %12, i32 0, i32 1
  %14 = load i8** %13, align 8
  call void (%struct.obj_struct*, i8*, ...)* @smpstr_init_fmt(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([5 x i8]* @.str13, i32 0, i32 0), i8* %14)
  br label %21

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.smpfun_struct*
  %19 = getelementptr inbounds %struct.smpfun_struct* %18, i32 0, i32 4
  %20 = load void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %19, align 8
  call void (%struct.obj_struct*, i8*, ...)* @smpstr_init_fmt(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([16 x i8]* @.str14, i32 0, i32 0), void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %20)
  br label %21

; <label>:21                                      ; preds = %15, %9
  ret void
}

define void @smpfun_call(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, %struct.obj_struct* byval %fun, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %fun_core = alloca %struct.smpfun_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %i = alloca i64, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 2
  %11 = load %struct.smptype_struct** %10, align 8
  %12 = getelementptr inbounds %struct.smptype_struct* %11, i32 0, i32 0
  %13 = load i8** %12, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0))
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

; <label>:16                                      ; preds = %0
  %17 = bitcast %struct.obj_struct* %4 to i8*
  %18 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* @smptype_function, %struct.obj_struct* byval %4)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %77

; <label>:19                                      ; preds = %0
  %20 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.smpfun_struct*
  %23 = bitcast %struct.smpfun_struct* %fun_core to i8*
  %24 = bitcast %struct.smpfun_struct* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 40, i32 8, i1 false)
  %25 = getelementptr inbounds %struct.smpfun_struct* %fun_core, i32 0, i32 4
  %26 = load void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %25, align 8
  %27 = bitcast %struct.obj_struct* %5 to i8*
  %28 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  %29 = load i32* %1, align 4
  %30 = load %struct.obj_struct** %2, align 8
  call void %26(%struct.obj_struct* sret %res, %struct.obj_struct* byval %5, i32 %29, %struct.obj_struct* %30)
  %31 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %32 = load %struct.smptype_struct** %31, align 8
  %33 = getelementptr inbounds %struct.smptype_struct* %32, i32 0, i32 1
  %34 = load i32* %33, align 4
  %35 = load i32* getelementptr inbounds (%struct.smptype_struct* @smptype_thrown, i32 0, i32 1), align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %74

; <label>:37                                      ; preds = %19
  %38 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %39 = load i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.smpthrown_struct*
  %41 = bitcast %struct.smpthrown_struct* %40 to i32*
  %42 = load i32* %41, align 8
  %43 = and i32 %42, 15
  %44 = shl i32 %43, 28
  %45 = ashr i32 %44, 28
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %74

; <label>:47                                      ; preds = %37
  store i64 0, i64* %i, align 8
  br label %48

; <label>:48                                      ; preds = %70, %47
  %49 = load i64* %i, align 8
  %50 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to %struct.smpthrown_struct*
  %53 = getelementptr inbounds %struct.smpthrown_struct* %52, i32 0, i32 2
  %54 = load i64* %53, align 8
  %55 = icmp ult i64 %49, %54
  br i1 %55, label %56, label %73

; <label>:56                                      ; preds = %48
  %57 = load i64* %i, align 8
  %58 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %59 = load i8** %58, align 8
  %60 = bitcast i8* %59 to %struct.smpthrown_struct*
  %61 = getelementptr inbounds %struct.smpthrown_struct* %60, i32 0, i32 1
  %62 = load %struct.obj_struct** %61, align 8
  %63 = getelementptr inbounds %struct.obj_struct* %62, i64 %57
  %64 = bitcast %struct.obj_struct* %6 to i8*
  %65 = bitcast %struct.obj_struct* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 32, i32 8, i1 false)
  %66 = bitcast %struct.obj_struct* %7 to i8*
  %67 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 32, i32 8, i1 false)
  %68 = bitcast %struct.obj_struct* %8 to i8*
  %69 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  call void @smpexc_backtrace_add_now(%struct.obj_struct* sret %9, %struct.obj_struct* byval %6, %struct.obj_struct* byval %7, %struct.obj_struct* byval %8)
  br label %70

; <label>:70                                      ; preds = %56
  %71 = load i64* %i, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %i, align 8
  br label %48

; <label>:73                                      ; preds = %48
  br label %74

; <label>:74                                      ; preds = %73, %37, %19
  %75 = bitcast %struct.obj_struct* %agg.result to i8*
  %76 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 32, i32 8, i1 false)
  br label %77

; <label>:77                                      ; preds = %74, %16
  ret void
}

declare i32 @strcmp(i8*, i8*)

declare void @smpglobal_throw(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smptypeerr_init(%struct.obj_struct* sret, %struct.smptype_struct*, %struct.obj_struct* byval)

declare void @smpexc_backtrace_add_now(%struct.obj_struct* sret, %struct.obj_struct* byval, %struct.obj_struct* byval, %struct.obj_struct* byval)

declare void @smp_free(i8*)

declare i32 @gc_mark_recursive(i8*, %struct.obj_struct* byval)

declare void @llvm.va_start(i8*) nounwind

define void @smpfun_init_v(%struct.obj_struct* sret %agg.result, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %fun, i32 %argc, %struct.__va_list_tag* %ap) nounwind {
  %1 = alloca void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.__va_list_tag*, align 8
  %res = alloca %struct.obj_struct, align 8
  %smp_fun = alloca %struct.smpfun_struct, align 8
  %4 = alloca i8*
  %optionalp = alloca i32, align 4
  %arg = alloca i8*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca i32
  store void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %fun, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %1, align 8
  store i32 %argc, i32* %2, align 4
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %3, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_function)
  %8 = getelementptr inbounds %struct.smpfun_struct* %smp_fun, i32 0, i32 1
  store i8* null, i8** %8, align 8
  %9 = bitcast %struct.smpfun_struct* %smp_fun to i32*
  %10 = load i32* %9, align 8
  %11 = and i32 %10, -256
  store i32 %11, i32* %9, align 8
  %12 = load void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %1, align 8
  %13 = getelementptr inbounds %struct.smpfun_struct* %smp_fun, i32 0, i32 4
  store void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %12, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %13, align 8
  %14 = load i32* %2, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %0
  %17 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %275

; <label>:18                                      ; preds = %0
  %19 = load i32* %2, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %2, align 4
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %4
  %22 = load i32* %2, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 56, %23
  %25 = alloca i8, i64 %24, align 16
  %26 = bitcast i8* %25 to %struct.argspec_struct*
  store i32 0, i32* %optionalp, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %length, align 4
  br label %27

; <label>:27                                      ; preds = %212, %18
  %28 = load i32* %i, align 4
  %29 = load i32* %2, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %217

; <label>:31                                      ; preds = %27
  %32 = load i32* %length, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.argspec_struct* %26, i64 %33
  %35 = bitcast %struct.argspec_struct* %34 to i8*
  %36 = getelementptr i8* %35, i32 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32* %37, align 8
  %39 = and i32 %38, -2
  store i32 %39, i32* %37, align 8
  %40 = load i32* %optionalp, align 4
  %41 = load i32* %length, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.argspec_struct* %26, i64 %42
  %44 = and i32 %40, 1
  %45 = shl i32 %44, 31
  %46 = ashr i32 %45, 31
  %47 = bitcast %struct.argspec_struct* %43 to i8*
  %48 = getelementptr i8* %47, i32 8
  %49 = bitcast i8* %48 to i32*
  %50 = and i32 %44, 1
  %51 = shl i32 %50, 1
  %52 = load i32* %49, align 8
  %53 = and i32 %52, -3
  %54 = or i32 %53, %51
  store i32 %54, i32* %49, align 8
  %55 = load i32* %length, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.argspec_struct* %26, i64 %56
  %58 = getelementptr inbounds %struct.argspec_struct* %57, i32 0, i32 2
  %59 = bitcast %struct.obj_struct* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %60 = load i32* %length, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.argspec_struct* %26, i64 %61
  %63 = bitcast %struct.argspec_struct* %62 to i8*
  %64 = getelementptr i8* %63, i32 48
  %65 = bitcast i8* %64 to i32*
  %66 = load i32* %65, align 8
  %67 = and i32 %66, -2
  store i32 %67, i32* %65, align 8
  %68 = load %struct.__va_list_tag** %3, align 8
  %69 = getelementptr inbounds %struct.__va_list_tag* %68, i32 0, i32 0
  %70 = load i32* %69
  %71 = icmp ule i32 %70, 40
  br i1 %71, label %72, label %78

; <label>:72                                      ; preds = %31
  %73 = getelementptr inbounds %struct.__va_list_tag* %68, i32 0, i32 3
  %74 = load i8** %73
  %75 = getelementptr i8* %74, i32 %70
  %76 = bitcast i8* %75 to i8**
  %77 = add i32 %70, 8
  store i32 %77, i32* %69
  br label %83

; <label>:78                                      ; preds = %31
  %79 = getelementptr inbounds %struct.__va_list_tag* %68, i32 0, i32 2
  %80 = load i8** %79
  %81 = bitcast i8* %80 to i8**
  %82 = getelementptr i8* %80, i32 8
  store i8* %82, i8** %79
  br label %83

; <label>:83                                      ; preds = %78, %72
  %84 = phi i8** [ %76, %72 ], [ %81, %78 ]
  %85 = load i8** %84
  store i8* %85, i8** %arg, align 8
  %86 = load i32* %length, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %103

; <label>:88                                      ; preds = %83
  %89 = load i32* %length, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.argspec_struct* %26, i64 %91
  %93 = bitcast %struct.argspec_struct* %92 to i8*
  %94 = getelementptr i8* %93, i32 48
  %95 = bitcast i8* %94 to i32*
  %96 = load i32* %95, align 8
  %97 = and i32 %96, 1
  %98 = shl i32 %97, 31
  %99 = ashr i32 %98, 31
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

; <label>:101                                     ; preds = %88
  call void @smp_getclass(%struct.obj_struct* sret %6, i8* getelementptr inbounds ([14 x i8]* @.str6, i32 0, i32 0))
  %102 = load i8** %arg, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %5, %struct.obj_struct* byval %6, i8* getelementptr inbounds ([42 x i8]* @.str7, i32 0, i32 0), i8* %102)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %5)
  store i32 1, i32* %7
  br label %273

; <label>:103                                     ; preds = %88, %83
  br label %104

; <label>:104                                     ; preds = %203, %103
  %105 = load i32* %i, align 4
  %106 = load i32* %2, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %206

; <label>:108                                     ; preds = %104
  %109 = load i8** %arg, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0))
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %126

; <label>:112                                     ; preds = %108
  %113 = load i32* %length, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.argspec_struct* %26, i64 %114
  %116 = getelementptr inbounds %struct.argspec_struct* %115, i32 0, i32 2
  %117 = load %struct.__va_list_tag** %3, align 8
  %118 = getelementptr inbounds %struct.__va_list_tag* %117, i32 0, i32 2
  %119 = load i8** %118
  %120 = bitcast i8* %119 to %struct.obj_struct*
  %121 = getelementptr i8* %119, i32 32
  store i8* %121, i8** %118
  %122 = bitcast %struct.obj_struct* %116 to i8*
  %123 = bitcast %struct.obj_struct* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 32, i32 8, i1 false)
  %124 = load i32* %i, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %i, align 4
  br label %178

; <label>:126                                     ; preds = %108
  %127 = load i8** %arg, align 8
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([7 x i8]* @.str9, i32 0, i32 0))
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %140

; <label>:130                                     ; preds = %126
  %131 = load i32* %length, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.argspec_struct* %26, i64 %132
  %134 = bitcast %struct.argspec_struct* %133 to i8*
  %135 = getelementptr i8* %134, i32 8
  %136 = bitcast i8* %135 to i32*
  %137 = load i32* %136, align 8
  %138 = and i32 %137, -2
  %139 = or i32 %138, 1
  store i32 %139, i32* %136, align 8
  br label %177

; <label>:140                                     ; preds = %126
  %141 = load i8** %arg, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([10 x i8]* @.str10, i32 0, i32 0))
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %154

; <label>:144                                     ; preds = %140
  store i32 1, i32* %optionalp, align 4
  %145 = load i32* %length, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.argspec_struct* %26, i64 %146
  %148 = bitcast %struct.argspec_struct* %147 to i8*
  %149 = getelementptr i8* %148, i32 8
  %150 = bitcast i8* %149 to i32*
  %151 = load i32* %150, align 8
  %152 = and i32 %151, -3
  %153 = or i32 %152, 2
  store i32 %153, i32* %150, align 8
  br label %176

; <label>:154                                     ; preds = %140
  %155 = load i8** %arg, align 8
  %156 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0))
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %168

; <label>:158                                     ; preds = %154
  %159 = load i32* %length, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.argspec_struct* %26, i64 %160
  %162 = bitcast %struct.argspec_struct* %161 to i8*
  %163 = getelementptr i8* %162, i32 48
  %164 = bitcast i8* %163 to i32*
  %165 = load i32* %164, align 8
  %166 = and i32 %165, -2
  %167 = or i32 %166, 1
  store i32 %167, i32* %164, align 8
  br label %175

; <label>:168                                     ; preds = %154
  %169 = load i8** %arg, align 8
  %170 = call i32 @strcmp(i8* %169, i8* getelementptr inbounds ([9 x i8]* @.str12, i32 0, i32 0))
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

; <label>:172                                     ; preds = %168
  br label %174

; <label>:173                                     ; preds = %168
  br label %206

; <label>:174                                     ; preds = %172
  br label %175

; <label>:175                                     ; preds = %174, %158
  br label %176

; <label>:176                                     ; preds = %175, %144
  br label %177

; <label>:177                                     ; preds = %176, %130
  br label %178

; <label>:178                                     ; preds = %177, %112
  br label %179

; <label>:179                                     ; preds = %178
  %180 = load %struct.__va_list_tag** %3, align 8
  %181 = getelementptr inbounds %struct.__va_list_tag* %180, i32 0, i32 0
  %182 = load i32* %181
  %183 = icmp ule i32 %182, 40
  br i1 %183, label %184, label %190

; <label>:184                                     ; preds = %179
  %185 = getelementptr inbounds %struct.__va_list_tag* %180, i32 0, i32 3
  %186 = load i8** %185
  %187 = getelementptr i8* %186, i32 %182
  %188 = bitcast i8* %187 to i8**
  %189 = add i32 %182, 8
  store i32 %189, i32* %181
  br label %195

; <label>:190                                     ; preds = %179
  %191 = getelementptr inbounds %struct.__va_list_tag* %180, i32 0, i32 2
  %192 = load i8** %191
  %193 = bitcast i8* %192 to i8**
  %194 = getelementptr i8* %192, i32 8
  store i8* %194, i8** %191
  br label %195

; <label>:195                                     ; preds = %190, %184
  %196 = phi i8** [ %188, %184 ], [ %193, %190 ]
  %197 = load i8** %196
  store i8* %197, i8** %arg, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %203

; <label>:199                                     ; preds = %195
  %200 = load i32* %i, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %i, align 4
  %202 = icmp ne i32 %201, 0
  br label %203

; <label>:203                                     ; preds = %199, %195
  %204 = phi i1 [ false, %195 ], [ %202, %199 ]
  %205 = zext i1 %204 to i32
  br label %104

; <label>:206                                     ; preds = %173, %104
  %207 = load i8** %arg, align 8
  %208 = load i32* %length, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.argspec_struct* %26, i64 %209
  %211 = getelementptr inbounds %struct.argspec_struct* %210, i32 0, i32 0
  store i8* %207, i8** %211, align 8
  br label %212

; <label>:212                                     ; preds = %206
  %213 = load i32* %i, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %i, align 4
  %215 = load i32* %length, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %length, align 4
  br label %27

; <label>:217                                     ; preds = %27
  %218 = load i32* %length, align 4
  %219 = and i32 %218, 65535
  %220 = shl i32 %219, 16
  %221 = ashr i32 %220, 16
  %222 = bitcast %struct.smpfun_struct* %smp_fun to i8*
  %223 = getelementptr i8* %222, i32 24
  %224 = bitcast i8* %223 to i32*
  %225 = and i32 %219, 65535
  %226 = load i32* %224, align 8
  %227 = and i32 %226, -65536
  %228 = or i32 %227, %225
  store i32 %228, i32* %224, align 8
  %229 = load i32* %length, align 4
  %230 = sext i32 %229 to i64
  %231 = mul i64 56, %230
  %232 = call i8* @smp_malloc(i64 %231)
  %233 = bitcast i8* %232 to %struct.argspec_struct*
  %234 = getelementptr inbounds %struct.smpfun_struct* %smp_fun, i32 0, i32 2
  store %struct.argspec_struct* %233, %struct.argspec_struct** %234, align 8
  %235 = getelementptr inbounds %struct.smpfun_struct* %smp_fun, i32 0, i32 2
  %236 = load %struct.argspec_struct** %235, align 8
  %237 = bitcast %struct.argspec_struct* %236 to i8*
  %238 = call i64 @llvm.objectsize.i64(i8* %237, i1 false)
  %239 = icmp ne i64 %238, -1
  br i1 %239, label %240, label %253

; <label>:240                                     ; preds = %217
  %241 = getelementptr inbounds %struct.smpfun_struct* %smp_fun, i32 0, i32 2
  %242 = load %struct.argspec_struct** %241, align 8
  %243 = bitcast %struct.argspec_struct* %242 to i8*
  %244 = bitcast %struct.argspec_struct* %26 to i8*
  %245 = load i32* %length, align 4
  %246 = sext i32 %245 to i64
  %247 = mul i64 56, %246
  %248 = getelementptr inbounds %struct.smpfun_struct* %smp_fun, i32 0, i32 2
  %249 = load %struct.argspec_struct** %248, align 8
  %250 = bitcast %struct.argspec_struct* %249 to i8*
  %251 = call i64 @llvm.objectsize.i64(i8* %250, i1 false)
  %252 = call i8* @__memcpy_chk(i8* %243, i8* %244, i64 %247, i64 %251)
  br label %262

; <label>:253                                     ; preds = %217
  %254 = getelementptr inbounds %struct.smpfun_struct* %smp_fun, i32 0, i32 2
  %255 = load %struct.argspec_struct** %254, align 8
  %256 = bitcast %struct.argspec_struct* %255 to i8*
  %257 = bitcast %struct.argspec_struct* %26 to i8*
  %258 = load i32* %length, align 4
  %259 = sext i32 %258 to i64
  %260 = mul i64 56, %259
  %261 = call i8* @__inline_memcpy_chk(i8* %256, i8* %257, i64 %260)
  br label %262

; <label>:262                                     ; preds = %253, %240
  %263 = phi i8* [ %252, %240 ], [ %261, %253 ]
  %264 = call i8* @smp_malloc(i64 40)
  %265 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %264, i8** %265, align 8
  %266 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %267 = load i8** %266, align 8
  %268 = bitcast i8* %267 to %struct.smpfun_struct*
  %269 = bitcast %struct.smpfun_struct* %268 to i8*
  %270 = bitcast %struct.smpfun_struct* %smp_fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %269, i8* %270, i64 40, i32 8, i1 false)
  %271 = bitcast %struct.obj_struct* %agg.result to i8*
  %272 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %271, i8* %272, i64 32, i32 8, i1 false)
  store i32 1, i32* %7
  br label %273

; <label>:273                                     ; preds = %262, %101
  %274 = load i8** %4
  call void @llvm.stackrestore(i8* %274)
  br label %275

; <label>:275                                     ; preds = %273, %16
  ret void
}

declare void @llvm.va_end(i8*) nounwind

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

declare i8* @llvm.stacksave() nounwind

declare void @smpexc_init_fmt(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, ...)

declare i8* @smp_malloc(i64)

declare i64 @llvm.objectsize.i64(i8*, i1) nounwind readonly

declare i8* @__memcpy_chk(i8*, i8*, i64, i64) nounwind

define internal i8* @__inline_memcpy_chk(i8* %__dest, i8* %__src, i64 %__len) nounwind inlinehint {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %__dest, i8** %1, align 8
  store i8* %__src, i8** %2, align 8
  store i64 %__len, i64* %3, align 8
  %4 = load i8** %1, align 8
  %5 = load i8** %2, align 8
  %6 = load i64* %3, align 8
  %7 = load i8** %1, align 8
  %8 = call i64 @llvm.objectsize.i64(i8* %7, i1 false)
  %9 = call i8* @__memcpy_chk(i8* %4, i8* %5, i64 %6, i64 %8)
  ret i8* %9
}

declare void @llvm.stackrestore(i8*) nounwind

declare void @smpstr_init_fmt(%struct.obj_struct* sret, i8*, ...)
