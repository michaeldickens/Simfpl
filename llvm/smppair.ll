; ModuleID = 'smppair.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smptype_struct*, i8* }
%struct.smppair_struct = type { %struct.obj_struct, %struct.obj_struct* }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@.str = private constant [5 x i8] c"Pair\00"
@.str1 = private constant [4 x i8] c"car\00"
@.str2 = private constant [7 x i8] c"Object\00"
@.str3 = private constant [4 x i8] c"cdr\00"
@.str4 = private constant [6 x i8] c"clear\00"
@.str5 = private constant [4 x i8] c"Nil\00"
@.str6 = private constant [8 x i8] c"gc_mark\00"
@.str7 = private constant [5 x i8] c"to_s\00"
@.str8 = private constant [7 x i8] c"String\00"
@.str9 = private constant [6 x i8] c"write\00"
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@smptype_id_nil = common global i32 0, align 4
@.str10 = private constant [8 x i8] c"(%s %s)\00"
@.str11 = private constant [8 x i8] c"(%w %w)\00"
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

define i32 @smppair_create_class() nounwind {
  %pair = alloca %struct.obj_struct, align 8
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
  call void @smp_getclass(%struct.obj_struct* sret %pair, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0))
  %19 = bitcast %struct.obj_struct* %1 to i8*
  %20 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smppair_car, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %2)
  %21 = bitcast %struct.obj_struct* %4 to i8*
  %22 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smppair_cdr, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), %struct.obj_struct* byval %5)
  %23 = bitcast %struct.obj_struct* %7 to i8*
  %24 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smppair_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), %struct.obj_struct* byval %8)
  %25 = bitcast %struct.obj_struct* %10 to i8*
  %26 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smppair_gc_mark, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 0), %struct.obj_struct* byval %11)
  %27 = bitcast %struct.obj_struct* %13 to i8*
  %28 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smppair_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), %struct.obj_struct* byval %14)
  %29 = bitcast %struct.obj_struct* %16 to i8*
  %30 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %17, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smppair_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %18, %struct.obj_struct* byval %16, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), %struct.obj_struct* byval %17)
  ret i32 0
}

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smppair_car(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smppair_struct*
  %6 = getelementptr inbounds %struct.smppair_struct* %5, i32 0, i32 0
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  %8 = bitcast %struct.obj_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  ret void
}

define void @smppair_cdr(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %cdr = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smppair_struct*
  %6 = getelementptr inbounds %struct.smppair_struct* %5, i32 0, i32 1
  %7 = load %struct.obj_struct** %6, align 8
  store %struct.obj_struct* %7, %struct.obj_struct** %cdr, align 8
  %8 = load %struct.obj_struct** %cdr, align 8
  %9 = icmp ne %struct.obj_struct* %8, null
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %0
  %11 = load %struct.obj_struct** %cdr, align 8
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  %13 = bitcast %struct.obj_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  br label %16

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %16

; <label>:16                                      ; preds = %14, %10
  ret void
}

define void @smppair_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smppair_struct*
  %6 = getelementptr inbounds %struct.smppair_struct* %5, i32 0, i32 1
  %7 = load %struct.obj_struct** %6, align 8
  %8 = bitcast %struct.obj_struct* %7 to i8*
  call void @smp_free(i8* %8)
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smppair_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smppair_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smppair_struct*
  %8 = bitcast %struct.smppair_struct* %core to i8*
  %9 = bitcast %struct.smppair_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 40, i32 8, i1 false)
  %10 = getelementptr inbounds %struct.smppair_struct* %core, i32 0, i32 0
  %11 = bitcast %struct.obj_struct* %3 to i8*
  %12 = bitcast %struct.obj_struct* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  %13 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  %14 = getelementptr inbounds %struct.smppair_struct* %core, i32 0, i32 1
  %15 = load %struct.obj_struct** %14, align 8
  %16 = icmp ne %struct.obj_struct* %15, null
  br i1 %16, label %17, label %23

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.smppair_struct* %core, i32 0, i32 1
  %19 = load %struct.obj_struct** %18, align 8
  %20 = bitcast %struct.obj_struct* %4 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %4)
  br label %23

; <label>:23                                      ; preds = %17, %0
  %24 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smppair_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smppair_struct*
  %8 = getelementptr inbounds %struct.smppair_struct* %7, i32 0, i32 0
  %9 = bitcast %struct.obj_struct* %3 to i8*
  %10 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.smppair_struct*
  %14 = getelementptr inbounds %struct.smppair_struct* %13, i32 0, i32 1
  %15 = load %struct.obj_struct** %14, align 8
  %16 = icmp ne %struct.obj_struct* %15, null
  br i1 %16, label %17, label %25

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %19 = load i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.smppair_struct*
  %21 = getelementptr inbounds %struct.smppair_struct* %20, i32 0, i32 1
  %22 = load %struct.obj_struct** %21, align 8
  %23 = bitcast %struct.obj_struct* %4 to i8*
  %24 = bitcast %struct.obj_struct* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  br label %27

; <label>:25                                      ; preds = %0
  %26 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %27

; <label>:27                                      ; preds = %25, %17
  call void (%struct.obj_struct*, i8*, ...)* @smpglobal_sprintf(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 0), %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  ret void
}

define void @smppair_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smppair_struct*
  %8 = getelementptr inbounds %struct.smppair_struct* %7, i32 0, i32 0
  %9 = bitcast %struct.obj_struct* %3 to i8*
  %10 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  %11 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.smppair_struct*
  %14 = getelementptr inbounds %struct.smppair_struct* %13, i32 0, i32 1
  %15 = load %struct.obj_struct** %14, align 8
  %16 = icmp ne %struct.obj_struct* %15, null
  br i1 %16, label %17, label %25

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %19 = load i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.smppair_struct*
  %21 = getelementptr inbounds %struct.smppair_struct* %20, i32 0, i32 1
  %22 = load %struct.obj_struct** %21, align 8
  %23 = bitcast %struct.obj_struct* %4 to i8*
  %24 = bitcast %struct.obj_struct* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  br label %27

; <label>:25                                      ; preds = %0
  %26 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %27

; <label>:27                                      ; preds = %25, %17
  call void (%struct.obj_struct*, i8*, ...)* @smpglobal_sprintf(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0), %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  ret void
}

declare void @smp_free(i8*)

declare i32 @gc_mark_recursive(i8*, %struct.obj_struct* byval)

define void @smppair_init(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %car, %struct.obj_struct* byval %cdr) nounwind {
  %pair = alloca %struct.smppair_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = getelementptr inbounds %struct.smppair_struct* %pair, i32 0, i32 0
  %3 = bitcast %struct.obj_struct* %2 to i8*
  %4 = bitcast %struct.obj_struct* %car to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  %5 = getelementptr inbounds %struct.obj_struct* %cdr, i32 0, i32 2
  %6 = load %struct.smptype_struct** %5, align 8
  %7 = getelementptr inbounds %struct.smptype_struct* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  %9 = load i32* @smptype_id_nil, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.smppair_struct* %pair, i32 0, i32 1
  store %struct.obj_struct* null, %struct.obj_struct** %12, align 8
  br label %21

; <label>:13                                      ; preds = %0
  %14 = call i8* @smp_malloc(i64 32)
  %15 = bitcast i8* %14 to %struct.obj_struct*
  %16 = getelementptr inbounds %struct.smppair_struct* %pair, i32 0, i32 1
  store %struct.obj_struct* %15, %struct.obj_struct** %16, align 8
  %17 = getelementptr inbounds %struct.smppair_struct* %pair, i32 0, i32 1
  %18 = load %struct.obj_struct** %17, align 8
  %19 = bitcast %struct.obj_struct* %18 to i8*
  %20 = bitcast %struct.obj_struct* %cdr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  br label %21

; <label>:21                                      ; preds = %13, %11
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0))
  %22 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 3
  %23 = load i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.smptype_struct*
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* %24)
  %25 = call i8* @smp_malloc(i64 40)
  %26 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.smppair_struct*
  %30 = bitcast %struct.smppair_struct* %29 to i8*
  %31 = bitcast %struct.smppair_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 40, i32 8, i1 false)
  %32 = bitcast %struct.obj_struct* %agg.result to i8*
  %33 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  ret void
}

declare i8* @smp_malloc(i64)

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

define void @smppair_set_car_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smppair_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smppair_struct*
  store %struct.smppair_struct* %5, %struct.smppair_struct** %core, align 8
  %6 = load %struct.smppair_struct** %core, align 8
  %7 = getelementptr inbounds %struct.smppair_struct* %6, i32 0, i32 0
  %8 = load %struct.obj_struct** %2, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %8, i64 0
  %10 = bitcast %struct.obj_struct* %7 to i8*
  %11 = bitcast %struct.obj_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  %13 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  ret void
}

define void @smppair_set_cdr_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smppair_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smppair_struct*
  store %struct.smppair_struct* %5, %struct.smppair_struct** %core, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smptype_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smptype_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smptype_id_nil, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %0
  %15 = load %struct.smppair_struct** %core, align 8
  %16 = getelementptr inbounds %struct.smppair_struct* %15, i32 0, i32 1
  store %struct.obj_struct* null, %struct.obj_struct** %16, align 8
  %17 = bitcast %struct.obj_struct* %agg.result to i8*
  %18 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  br label %39

; <label>:19                                      ; preds = %0
  %20 = load %struct.smppair_struct** %core, align 8
  %21 = getelementptr inbounds %struct.smppair_struct* %20, i32 0, i32 1
  %22 = load %struct.obj_struct** %21, align 8
  %23 = icmp eq %struct.obj_struct* %22, null
  br i1 %23, label %24, label %29

; <label>:24                                      ; preds = %19
  %25 = call i8* @smp_malloc(i64 32)
  %26 = bitcast i8* %25 to %struct.obj_struct*
  %27 = load %struct.smppair_struct** %core, align 8
  %28 = getelementptr inbounds %struct.smppair_struct* %27, i32 0, i32 1
  store %struct.obj_struct* %26, %struct.obj_struct** %28, align 8
  br label %29

; <label>:29                                      ; preds = %24, %19
  %30 = load %struct.smppair_struct** %core, align 8
  %31 = getelementptr inbounds %struct.smppair_struct* %30, i32 0, i32 1
  %32 = load %struct.obj_struct** %31, align 8
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = bitcast %struct.obj_struct* %32 to i8*
  %36 = bitcast %struct.obj_struct* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  %37 = bitcast %struct.obj_struct* %agg.result to i8*
  %38 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  br label %39

; <label>:39                                      ; preds = %29, %14
  ret void
}

declare void @smpglobal_sprintf(%struct.obj_struct* sret, i8*, ...)
