; ModuleID = 'smpexc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smptype_struct*, i8* }
%struct.smpexc_struct = type { i8*, %struct.obj_struct }
%struct.smppair_struct = type { %struct.obj_struct, %struct.obj_struct* }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }
%struct.smptypeerr_struct = type { i8*, %struct.obj_struct, %struct.smptype_struct*, %struct.obj_struct }

@.str = private constant [10 x i8] c"Exception\00"
@.str1 = private constant [17 x i8] c"RuntimeException\00"
@.str2 = private constant [10 x i8] c"TypeError\00"
@.str3 = private constant [24 x i8] c"ImplementationException\00"
@.str4 = private constant [25 x i8] c"IncompleteTokenException\00"
@.str5 = private constant [26 x i8] c"IndexOutOfBoundsException\00"
@.str6 = private constant [24 x i8] c"InitializationException\00"
@.str7 = private constant [18 x i8] c"InternalException\00"
@.str8 = private constant [22 x i8] c"StringFormatException\00"
@.str9 = private constant [8 x i8] c"gc_mark\00"
@.str10 = private constant [4 x i8] c"Nil\00"
@.str11 = private constant [6 x i8] c"clear\00"
@.str12 = private constant [5 x i8] c"to_s\00"
@.str13 = private constant [7 x i8] c"String\00"
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@gc_runningp = common global i32 0, align 4
@__stderrp = external global %struct.__sFILE*
@.str14 = private constant [2 x i8] c"\0A\00"
@smp_stderr = common global %struct.__sFILE* null, align 8
@.str15 = private constant [4 x i8] c"%s\0A\00"
@.str16 = private constant [7 x i8] c"%s: %s\00"
@smptype_id_nil = common global i32 0, align 4
@.str17 = private constant [8 x i8] c"\0A\09from \00"
@.str18 = private constant [7 x i8] c"Thrown\00"
@.str19 = private constant [28 x i8] c"%s: %s expected, %st found.\00"
@.str20 = private constant [20 x i8] c"%s: unexpected %st.\00"
@.str21 = private constant [1 x i8] zeroinitializer
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_id = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_nil = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_class = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_function = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_global = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_thrown = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_exception = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_string = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_pair = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_list = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_atom = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_collection = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_regmatch = common global %struct.smptype_struct zeroinitializer, align 8
@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@smp_global = common global %struct.obj_struct zeroinitializer, align 8
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
@smptype_next_id = common global i32 0, align 4
@smptype_ids = common global %struct.minihash_struct zeroinitializer, align 8
@smp_stdin = common global %struct.__sFILE* null, align 8
@smp_stdout = common global %struct.__sFILE* null, align 8
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

define i32 @smpexc_create_class() nounwind {
  %exc = alloca %struct.obj_struct, align 8
  %runtime_exception = alloca %struct.obj_struct, align 8
  %smptype_runtime = alloca %struct.smptype_struct*, align 8
  %type_exception = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  %11 = alloca %struct.obj_struct, align 8
  %12 = alloca %struct.obj_struct, align 8
  %13 = alloca %struct.obj_struct, align 8
  %14 = alloca %struct.obj_struct, align 8
  %15 = alloca %struct.obj_struct, align 8
  %16 = alloca %struct.obj_struct, align 8
  %17 = alloca %struct.obj_struct, align 8
  %18 = alloca %struct.obj_struct, align 8
  call void @smp_getclass(%struct.obj_struct* sret %exc, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0))
  call void @smp_getclass(%struct.obj_struct* sret %runtime_exception, i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0))
  %19 = getelementptr inbounds %struct.obj_struct* %runtime_exception, i32 0, i32 3
  %20 = load i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.smptype_struct*
  store %struct.smptype_struct* %21, %struct.smptype_struct** %smptype_runtime, align 8
  call void @smp_getclass(%struct.obj_struct* sret %type_exception, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0))
  %22 = load %struct.smptype_struct** %smptype_runtime, align 8
  %23 = call i32 @smpglobal_class(i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0), %struct.smptype_struct* %22, i32 0)
  %24 = load %struct.smptype_struct** %smptype_runtime, align 8
  %25 = call i32 @smpglobal_class(i8* getelementptr inbounds ([25 x i8]* @.str4, i32 0, i32 0), %struct.smptype_struct* %24, i32 0)
  %26 = load %struct.smptype_struct** %smptype_runtime, align 8
  %27 = call i32 @smpglobal_class(i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0), %struct.smptype_struct* %26, i32 0)
  %28 = load %struct.smptype_struct** %smptype_runtime, align 8
  %29 = call i32 @smpglobal_class(i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0), %struct.smptype_struct* %28, i32 0)
  %30 = load %struct.smptype_struct** %smptype_runtime, align 8
  %31 = call i32 @smpglobal_class(i8* getelementptr inbounds ([18 x i8]* @.str7, i32 0, i32 0), %struct.smptype_struct* %30, i32 0)
  %32 = load %struct.smptype_struct** %smptype_runtime, align 8
  %33 = call i32 @smpglobal_class(i8* getelementptr inbounds ([22 x i8]* @.str8, i32 0, i32 0), %struct.smptype_struct* %32, i32 0)
  %34 = bitcast %struct.obj_struct* %1 to i8*
  %35 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpexc_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 64, i8* getelementptr inbounds ([8 x i8]* @.str9, i32 0, i32 0), %struct.obj_struct* byval %2)
  %36 = bitcast %struct.obj_struct* %4 to i8*
  %37 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpexc_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0), %struct.obj_struct* byval %5)
  %38 = bitcast %struct.obj_struct* %7 to i8*
  %39 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpexc_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %8)
  %40 = bitcast %struct.obj_struct* %10 to i8*
  %41 = bitcast %struct.obj_struct* %type_exception to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smptypeerr_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 64, i8* getelementptr inbounds ([8 x i8]* @.str9, i32 0, i32 0), %struct.obj_struct* byval %11)
  %42 = bitcast %struct.obj_struct* %13 to i8*
  %43 = bitcast %struct.obj_struct* %type_exception to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smptypeerr_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0), %struct.obj_struct* byval %14)
  %44 = bitcast %struct.obj_struct* %16 to i8*
  %45 = bitcast %struct.obj_struct* %type_exception to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %17, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smptypeerr_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %18, %struct.obj_struct* byval %16, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %17)
  ret i32 0
}

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare i32 @smpglobal_class(i8*, %struct.smptype_struct*, i32)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smpexc_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.minipair_struct*
  %7 = getelementptr inbounds %struct.minipair_struct* %6, i32 0, i32 1
  %8 = bitcast %struct.obj_struct* %3 to i8*
  %9 = bitcast %struct.obj_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  %11 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpexc_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.minipair_struct*
  %6 = getelementptr inbounds %struct.minipair_struct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  call void @smp_free(i8* %7)
  %8 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpexc_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.minipair_struct, align 8
  %bt = alloca %struct.obj_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %temp = alloca %struct.obj_struct, align 8
  %from = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  %11 = alloca %struct.obj_struct, align 8
  %12 = alloca %struct.obj_struct, align 8
  %13 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %14 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %15 = load i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.minipair_struct*
  %17 = bitcast %struct.minipair_struct* %core to i8*
  %18 = bitcast %struct.minipair_struct* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 40, i32 8, i1 false)
  %19 = getelementptr inbounds %struct.minipair_struct* %core, i32 0, i32 1
  store %struct.obj_struct* %19, %struct.obj_struct** %bt, align 8
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %21 = load %struct.smptype_struct** %20, align 8
  %22 = getelementptr inbounds %struct.smptype_struct* %21, i32 0, i32 0
  %23 = load i8** %22, align 8
  %24 = getelementptr inbounds %struct.minipair_struct* %core, i32 0, i32 0
  %25 = load i8** %24, align 8
  call void (%struct.obj_struct*, i8*, ...)* @smpstr_init_fmt(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0), i8* %23, i8* %25)
  %26 = load %struct.obj_struct** %bt, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 2
  %28 = load %struct.smptype_struct** %27, align 8
  %29 = getelementptr inbounds %struct.smptype_struct* %28, i32 0, i32 1
  %30 = load i32* %29, align 4
  %31 = load i32* @smptype_id_nil, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %0
  %34 = bitcast %struct.obj_struct* %agg.result to i8*
  %35 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  br label %70

; <label>:36                                      ; preds = %0
  call void (%struct.obj_struct*, i8*, ...)* @smpstr_init_fmt(%struct.obj_struct* sret %from, i8* getelementptr inbounds ([8 x i8]* @.str17, i32 0, i32 0))
  br label %37

; <label>:37                                      ; preds = %56, %36
  %38 = load %struct.obj_struct** %bt, align 8
  %39 = icmp ne %struct.obj_struct* %38, null
  br i1 %39, label %40, label %67

; <label>:40                                      ; preds = %37
  %41 = load %struct.obj_struct** %bt, align 8
  %42 = bitcast %struct.obj_struct* %3 to i8*
  %43 = bitcast %struct.obj_struct* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  call void @smp_println(%struct.obj_struct* sret %4, %struct.obj_struct* byval %3)
  %44 = load %struct.obj_struct** %bt, align 8
  %45 = bitcast %struct.obj_struct* %6 to i8*
  %46 = bitcast %struct.obj_struct* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  call void @smplist_car(%struct.obj_struct* sret %5, %struct.obj_struct* byval %6, i32 0, %struct.obj_struct* null)
  call void @smpobj_funcall(%struct.obj_struct* sret %temp, %struct.obj_struct* byval %5, i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %47 = getelementptr inbounds %struct.obj_struct* %temp, i32 0, i32 2
  %48 = load %struct.smptype_struct** %47, align 8
  %49 = getelementptr inbounds %struct.smptype_struct* %48, i32 0, i32 0
  %50 = load i8** %49, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %40
  call void @obj_clear(%struct.obj_struct* sret %7, %struct.obj_struct* %from)
  call void @obj_clear(%struct.obj_struct* sret %8, %struct.obj_struct* %res)
  %54 = bitcast %struct.obj_struct* %agg.result to i8*
  %55 = bitcast %struct.obj_struct* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  br label %70

; <label>:56                                      ; preds = %40
  %57 = bitcast %struct.obj_struct* %9 to i8*
  %58 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %10, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %from)
  %59 = bitcast %struct.obj_struct* %11 to i8*
  %60 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %12, %struct.obj_struct* byval %11, i32 1, %struct.obj_struct* %temp)
  %61 = load %struct.obj_struct** %bt, align 8
  %62 = getelementptr inbounds %struct.obj_struct* %61, i32 0, i32 3
  %63 = load i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.smppair_struct*
  %65 = getelementptr inbounds %struct.smppair_struct* %64, i32 0, i32 1
  %66 = load %struct.obj_struct** %65, align 8
  store %struct.obj_struct* %66, %struct.obj_struct** %bt, align 8
  br label %37

; <label>:67                                      ; preds = %37
  call void @obj_clear(%struct.obj_struct* sret %13, %struct.obj_struct* %from)
  %68 = bitcast %struct.obj_struct* %agg.result to i8*
  %69 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  br label %70

; <label>:70                                      ; preds = %67, %53, %33
  ret void
}

define void @smptypeerr_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smptypeerr_struct*
  %8 = getelementptr inbounds %struct.smptypeerr_struct* %7, i32 0, i32 1
  %9 = bitcast %struct.obj_struct* %3 to i8*
  %10 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  %12 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %13 = load i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.smptypeerr_struct*
  %15 = getelementptr inbounds %struct.smptypeerr_struct* %14, i32 0, i32 3
  %16 = bitcast %struct.obj_struct* %4 to i8*
  %17 = bitcast %struct.obj_struct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  %18 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %4)
  %19 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smptypeerr_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smptypeerr_struct*
  %6 = getelementptr inbounds %struct.smptypeerr_struct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  call void @smp_free(i8* %7)
  %8 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smptypeerr_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smptypeerr_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %newline = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  %separator = alloca %struct.obj_struct, align 8
  %str = alloca %struct.obj_struct, align 8
  %11 = alloca %struct.obj_struct, align 8
  %code = alloca %struct.obj_struct, align 8
  %12 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smptypeerr_struct*
  %16 = bitcast %struct.smptypeerr_struct* %core to i8*
  %17 = bitcast %struct.smptypeerr_struct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 80, i32 8, i1 false)
  %18 = getelementptr inbounds %struct.smptypeerr_struct* %core, i32 0, i32 0
  %19 = load i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %0
  %22 = getelementptr inbounds %struct.smptypeerr_struct* %core, i32 0, i32 0
  %23 = load i8** %22, align 8
  call void @smpstr_init(%struct.obj_struct* sret %res, i8* %23)
  br label %49

; <label>:24                                      ; preds = %0
  %25 = getelementptr inbounds %struct.smptypeerr_struct* %core, i32 0, i32 2
  %26 = load %struct.smptype_struct** %25, align 8
  %27 = icmp ne %struct.smptype_struct* %26, null
  br i1 %27, label %28, label %40

; <label>:28                                      ; preds = %24
  %29 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %30 = load %struct.smptype_struct** %29, align 8
  %31 = getelementptr inbounds %struct.smptype_struct* %30, i32 0, i32 0
  %32 = load i8** %31, align 8
  call void @smpstr_init(%struct.obj_struct* sret %3, i8* %32)
  %33 = getelementptr inbounds %struct.smptypeerr_struct* %core, i32 0, i32 2
  %34 = load %struct.smptype_struct** %33, align 8
  %35 = getelementptr inbounds %struct.smptype_struct* %34, i32 0, i32 0
  %36 = load i8** %35, align 8
  call void @smpstr_init(%struct.obj_struct* sret %4, i8* %36)
  %37 = getelementptr inbounds %struct.smptypeerr_struct* %core, i32 0, i32 3
  %38 = bitcast %struct.obj_struct* %5 to i8*
  %39 = bitcast %struct.obj_struct* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, i8*, ...)* @smpglobal_sprintf(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([28 x i8]* @.str19, i32 0, i32 0), %struct.obj_struct* byval %3, %struct.obj_struct* byval %4, %struct.obj_struct* byval %5)
  br label %48

; <label>:40                                      ; preds = %24
  %41 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %42 = load %struct.smptype_struct** %41, align 8
  %43 = getelementptr inbounds %struct.smptype_struct* %42, i32 0, i32 0
  %44 = load i8** %43, align 8
  call void @smpstr_init(%struct.obj_struct* sret %6, i8* %44)
  %45 = getelementptr inbounds %struct.smptypeerr_struct* %core, i32 0, i32 3
  %46 = bitcast %struct.obj_struct* %7 to i8*
  %47 = bitcast %struct.obj_struct* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, i8*, ...)* @smpglobal_sprintf(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([20 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %6, %struct.obj_struct* byval %7)
  br label %48

; <label>:48                                      ; preds = %40, %28
  br label %49

; <label>:49                                      ; preds = %48, %21
  %50 = getelementptr inbounds %struct.smptypeerr_struct* %core, i32 0, i32 1
  %51 = getelementptr inbounds %struct.obj_struct* %50, i32 0, i32 2
  %52 = load %struct.smptype_struct** %51, align 8
  %53 = getelementptr inbounds %struct.smptype_struct* %52, i32 0, i32 1
  %54 = load i32* %53, align 4
  %55 = load i32* @smptype_id_nil, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %49
  %58 = bitcast %struct.obj_struct* %agg.result to i8*
  %59 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 32, i32 8, i1 false)
  br label %90

; <label>:60                                      ; preds = %49
  call void @smpstr_init(%struct.obj_struct* sret %newline, i8* getelementptr inbounds ([1 x i8]* @.str21, i32 0, i32 0))
  %61 = bitcast %struct.obj_struct* %8 to i8*
  %62 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %9, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* %newline)
  call void @obj_clear(%struct.obj_struct* sret %10, %struct.obj_struct* %newline)
  call void (%struct.obj_struct*, i8*, ...)* @smpstr_init_fmt(%struct.obj_struct* sret %separator, i8* getelementptr inbounds ([8 x i8]* @.str17, i32 0, i32 0))
  %63 = getelementptr inbounds %struct.smptypeerr_struct* %core, i32 0, i32 1
  %64 = bitcast %struct.obj_struct* %11 to i8*
  %65 = bitcast %struct.obj_struct* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %str, %struct.obj_struct* byval %11, i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0), i32 1, %struct.obj_struct* %separator)
  %66 = getelementptr inbounds %struct.obj_struct* %str, i32 0, i32 2
  %67 = load %struct.smptype_struct** %66, align 8
  %68 = getelementptr inbounds %struct.smptype_struct* %67, i32 0, i32 0
  %69 = load i8** %68, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

; <label>:72                                      ; preds = %60
  %73 = bitcast %struct.obj_struct* %agg.result to i8*
  %74 = bitcast %struct.obj_struct* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 32, i32 8, i1 false)
  br label %90

; <label>:75                                      ; preds = %60
  %76 = bitcast %struct.obj_struct* %12 to i8*
  %77 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %code, %struct.obj_struct* byval %12, i32 1, %struct.obj_struct* %str)
  %78 = getelementptr inbounds %struct.obj_struct* %code, i32 0, i32 2
  %79 = load %struct.smptype_struct** %78, align 8
  %80 = getelementptr inbounds %struct.smptype_struct* %79, i32 0, i32 0
  %81 = load i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

; <label>:84                                      ; preds = %75
  %85 = bitcast %struct.obj_struct* %agg.result to i8*
  %86 = bitcast %struct.obj_struct* %code to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 32, i32 8, i1 false)
  br label %90

; <label>:87                                      ; preds = %75
  %88 = bitcast %struct.obj_struct* %agg.result to i8*
  %89 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 32, i32 8, i1 false)
  br label %90

; <label>:90                                      ; preds = %87, %84, %72, %57
  ret void
}

define void @smpexc_backtrace_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %exc, %struct.obj_struct* byval %obj, %struct.obj_struct* byval %fun) nounwind {
  %pair = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %bt = alloca %struct.obj_struct*, align 8
  %2 = alloca %struct.obj_struct, align 8
  %bt1 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = bitcast %struct.obj_struct* %1 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %pair, %struct.obj_struct* byval %1, i32 1, %struct.obj_struct* %fun)
  %6 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 2
  %7 = load %struct.smptype_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smptype_struct* %7, i32 0, i32 0
  %9 = load i8** %8, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smptypeerr_struct*
  %16 = getelementptr inbounds %struct.smptypeerr_struct* %15, i32 0, i32 1
  store %struct.obj_struct* %16, %struct.obj_struct** %bt, align 8
  %17 = load %struct.obj_struct** %bt, align 8
  %18 = bitcast %struct.obj_struct* %2 to i8*
  %19 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = load %struct.obj_struct** %bt, align 8
  call void @smpobj_cons(%struct.obj_struct* sret %17, %struct.obj_struct* byval %2, i32 1, %struct.obj_struct* %20)
  br label %30

; <label>:21                                      ; preds = %0
  %22 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 3
  %23 = load i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.minipair_struct*
  %25 = getelementptr inbounds %struct.minipair_struct* %24, i32 0, i32 1
  store %struct.obj_struct* %25, %struct.obj_struct** %bt1, align 8
  %26 = load %struct.obj_struct** %bt1, align 8
  %27 = bitcast %struct.obj_struct* %3 to i8*
  %28 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  %29 = load %struct.obj_struct** %bt1, align 8
  call void @smpobj_cons(%struct.obj_struct* sret %26, %struct.obj_struct* byval %3, i32 1, %struct.obj_struct* %29)
  br label %30

; <label>:30                                      ; preds = %21, %12
  %31 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

declare void @smpobj_cons(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare i32 @strcmp(i8*, i8*)

declare void @smp_free(i8*)

declare i32 @gc_mark_recursive(i8*, %struct.obj_struct* byval)

define void @smpexc_init(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type) nounwind {
  %res = alloca %struct.minipair_struct, align 8
  %wrapper = alloca %struct.obj_struct, align 8
  %1 = getelementptr inbounds %struct.minipair_struct* %res, i32 0, i32 0
  store i8* null, i8** %1, align 8
  %2 = getelementptr inbounds %struct.minipair_struct* %res, i32 0, i32 1
  %3 = bitcast %struct.obj_struct* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %4 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smptype_struct*
  call void @obj_init(%struct.obj_struct* sret %wrapper, %struct.smptype_struct* %6)
  %7 = call i8* @smp_malloc(i64 40)
  %8 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  %10 = load i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.minipair_struct*
  %12 = bitcast %struct.minipair_struct* %11 to i8*
  %13 = bitcast %struct.minipair_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 40, i32 8, i1 false)
  %14 = bitcast %struct.obj_struct* %agg.result to i8*
  %15 = bitcast %struct.obj_struct* %wrapper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  ret void
}

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

declare i8* @smp_malloc(i64)

define void @smpexc_init_fmt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type, i8* %fmt, ...) nounwind {
  %1 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %ap1 = alloca [1 x %struct.__va_list_tag], align 8
  store i8* %fmt, i8** %1, align 8
  %3 = load i32* @gc_runningp, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %17

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load %struct.__sFILE** @__stderrp, align 8
  %9 = load i8** %1, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %11 = call i32 @vfprintf(%struct.__sFILE* %8, i8* %9, %struct.__va_list_tag* %10)
  %12 = load %struct.__sFILE** @__stderrp, align 8
  %13 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_end(i8* %15)
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %33

; <label>:17                                      ; preds = %0
  %18 = bitcast %struct.obj_struct* %2 to i8*
  %19 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  call void @smpexc_init(%struct.obj_struct* sret %res, %struct.obj_struct* byval %2)
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %21 = bitcast %struct.__va_list_tag* %20 to i8*
  call void @llvm.va_start(i8* %21)
  %22 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %23 = load i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.minipair_struct*
  %25 = getelementptr inbounds %struct.minipair_struct* %24, i32 0, i32 0
  %26 = load i8** %1, align 8
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %28 = call i32 @vasprintf(i8** %25, i8* %26, %struct.__va_list_tag* %27)
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %30 = bitcast %struct.__va_list_tag* %29 to i8*
  call void @llvm.va_end(i8* %30)
  %31 = bitcast %struct.obj_struct* %agg.result to i8*
  %32 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  br label %33

; <label>:33                                      ; preds = %17, %5
  ret void
}

declare void @llvm.va_start(i8*) nounwind

declare i32 @vfprintf(%struct.__sFILE*, i8*, %struct.__va_list_tag*)

declare i32 @fprintf(%struct.__sFILE*, i8*, ...)

declare void @llvm.va_end(i8*) nounwind

declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*)

define void @smpexc_print(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca %struct.obj_struct, align 8
  %2 = load %struct.__sFILE** @smp_stderr, align 8
  %3 = bitcast %struct.obj_struct* %1 to i8*
  %4 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.__sFILE*, i8*, ...)* @smpglobal_fprintf(%struct.obj_struct* sret %agg.result, %struct.__sFILE* %2, i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), %struct.obj_struct* byval %1)
  ret void
}

declare void @smpglobal_fprintf(%struct.obj_struct* sret, %struct.__sFILE*, i8*, ...)

declare void @smpstr_init_fmt(%struct.obj_struct* sret, i8*, ...)

declare void @smp_println(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smpobj_funcall(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, i32, %struct.obj_struct*)

declare void @smplist_car(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @obj_clear(%struct.obj_struct* sret, %struct.obj_struct*)

declare void @smpstr_add_now(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define void @smptypeerr_init(%struct.obj_struct* sret %agg.result, %struct.smptype_struct* %expected, %struct.obj_struct* byval %found) nounwind {
  %1 = alloca %struct.smptype_struct*, align 8
  %res = alloca %struct.smptypeerr_struct, align 8
  %wrapper = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  store %struct.smptype_struct* %expected, %struct.smptype_struct** %1, align 8
  %3 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 0
  store i8* null, i8** %3, align 8
  %4 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 1
  %5 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %6 = load %struct.smptype_struct** %1, align 8
  %7 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 2
  store %struct.smptype_struct* %6, %struct.smptype_struct** %7, align 8
  %8 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 3
  %9 = bitcast %struct.obj_struct* %8 to i8*
  %10 = bitcast %struct.obj_struct* %found to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void @smp_getclass(%struct.obj_struct* sret %2, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0))
  %11 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.smptype_struct*
  call void @obj_init(%struct.obj_struct* sret %wrapper, %struct.smptype_struct* %13)
  %14 = call i8* @smp_malloc(i64 80)
  %15 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.smptypeerr_struct*
  %19 = bitcast %struct.smptypeerr_struct* %18 to i8*
  %20 = bitcast %struct.smptypeerr_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 80, i32 8, i1 false)
  %21 = bitcast %struct.obj_struct* %agg.result to i8*
  %22 = bitcast %struct.obj_struct* %wrapper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  ret void
}

define void @smptypeerr_init_detailed(%struct.obj_struct* sret %agg.result, %struct.smptype_struct* %expected, %struct.obj_struct* byval %found, i8* %fmt, ...) nounwind {
  %1 = alloca %struct.smptype_struct*, align 8
  %2 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.smptypeerr_struct, align 8
  %ap1 = alloca [1 x %struct.__va_list_tag], align 8
  %wrapper = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.smptype_struct* %expected, %struct.smptype_struct** %1, align 8
  store i8* %fmt, i8** %2, align 8
  %4 = load i32* @gc_runningp, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load %struct.__sFILE** @__stderrp, align 8
  %10 = load i8** %2, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %12 = call i32 @vfprintf(%struct.__sFILE* %9, i8* %10, %struct.__va_list_tag* %11)
  %13 = load %struct.__sFILE** @__stderrp, align 8
  %14 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %16 = bitcast %struct.__va_list_tag* %15 to i8*
  call void @llvm.va_end(i8* %16)
  %17 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %47

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 0
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 1
  %21 = bitcast %struct.obj_struct* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %22 = load %struct.smptype_struct** %1, align 8
  %23 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 2
  store %struct.smptype_struct* %22, %struct.smptype_struct** %23, align 8
  %24 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 3
  %25 = bitcast %struct.obj_struct* %24 to i8*
  %26 = bitcast %struct.obj_struct* %found to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %28 = bitcast %struct.__va_list_tag* %27 to i8*
  call void @llvm.va_start(i8* %28)
  %29 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 0
  %30 = load i8** %2, align 8
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %32 = call i32 @vasprintf(i8** %29, i8* %30, %struct.__va_list_tag* %31)
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %34 = bitcast %struct.__va_list_tag* %33 to i8*
  call void @llvm.va_end(i8* %34)
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0))
  %35 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.smptype_struct*
  call void @obj_init(%struct.obj_struct* sret %wrapper, %struct.smptype_struct* %37)
  %38 = call i8* @smp_malloc(i64 80)
  %39 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  %41 = load i8** %40, align 8
  %42 = bitcast i8* %41 to %struct.smptypeerr_struct*
  %43 = bitcast %struct.smptypeerr_struct* %42 to i8*
  %44 = bitcast %struct.smptypeerr_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 80, i32 8, i1 false)
  %45 = bitcast %struct.obj_struct* %agg.result to i8*
  %46 = bitcast %struct.obj_struct* %wrapper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  br label %47

; <label>:47                                      ; preds = %18, %6
  ret void
}

define void @smptypeerr_init_fmt(%struct.obj_struct* sret %agg.result, i8* %fmt, ...) nounwind {
  %1 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.smptypeerr_struct, align 8
  %ap1 = alloca [1 x %struct.__va_list_tag], align 8
  %wrapper = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  store i8* %fmt, i8** %1, align 8
  %3 = load i32* @gc_runningp, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %17

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load %struct.__sFILE** @__stderrp, align 8
  %9 = load i8** %1, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %11 = call i32 @vfprintf(%struct.__sFILE* %8, i8* %9, %struct.__va_list_tag* %10)
  %12 = load %struct.__sFILE** @__stderrp, align 8
  %13 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_end(i8* %15)
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %43

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %19 = bitcast %struct.__va_list_tag* %18 to i8*
  call void @llvm.va_start(i8* %19)
  %20 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 0
  %21 = load i8** %1, align 8
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %23 = call i32 @vasprintf(i8** %20, i8* %21, %struct.__va_list_tag* %22)
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap1, i32 0, i32 0
  %25 = bitcast %struct.__va_list_tag* %24 to i8*
  call void @llvm.va_end(i8* %25)
  %26 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 1
  %27 = bitcast %struct.obj_struct* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %28 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 2
  store %struct.smptype_struct* null, %struct.smptype_struct** %28, align 8
  %29 = getelementptr inbounds %struct.smptypeerr_struct* %res, i32 0, i32 3
  %30 = bitcast %struct.obj_struct* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smp_getclass(%struct.obj_struct* sret %2, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0))
  %31 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %32 = load i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.smptype_struct*
  call void @obj_init(%struct.obj_struct* sret %wrapper, %struct.smptype_struct* %33)
  %34 = call i8* @smp_malloc(i64 80)
  %35 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  %37 = load i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.smptypeerr_struct*
  %39 = bitcast %struct.smptypeerr_struct* %38 to i8*
  %40 = bitcast %struct.smptypeerr_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 80, i32 8, i1 false)
  %41 = bitcast %struct.obj_struct* %agg.result to i8*
  %42 = bitcast %struct.obj_struct* %wrapper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  br label %43

; <label>:43                                      ; preds = %17, %5
  ret void
}

declare void @smpstr_init(%struct.obj_struct* sret, i8*)

declare void @smpglobal_sprintf(%struct.obj_struct* sret, i8*, ...)
