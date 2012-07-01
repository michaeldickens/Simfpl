; ModuleID = 'smparray.c'
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
%struct.smparray_struct = type { %struct.obj_struct*, i64 }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@.str = private constant [6 x i8] c"Array\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@.str1 = private constant [8 x i8] c"gc_mark\00"
@.str2 = private constant [4 x i8] c"Nil\00"
@.str3 = private constant [6 x i8] c"clear\00"
@.str4 = private constant [5 x i8] c"add!\00"
@.str5 = private constant [5 x i8] c"to_s\00"
@.str6 = private constant [7 x i8] c"String\00"
@.str7 = private constant [6 x i8] c"write\00"
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@.str8 = private constant [26 x i8] c"IndexOutOfBoundsException\00"
@.str9 = private constant [28 x i8] c"Index %ld is out of bounds.\00"
@.str10 = private constant [9 x i8] c"Function\00"
@.str11 = private constant [7 x i8] c"Thrown\00"
@.str12 = private constant [7 x i8] c"Global\00"
@.str13 = private constant [2 x i8] c"[\00"
@.str14 = private constant [3 x i8] c", \00"
@.str15 = private constant [2 x i8] c"]\00"
@gc_activep = common global i32 0, align 4
@.str16 = private constant [7 x i8] c"(array\00"
@.str17 = private constant [2 x i8] c" \00"
@.str18 = private constant [2 x i8] c")\00"
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

define i32 @smparray_create_class() nounwind {
  %array = alloca %struct.obj_struct, align 8
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
  %16 = call i32 @smpglobal_class(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %array, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0))
  %17 = bitcast %struct.obj_struct* %1 to i8*
  %18 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smparray_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %2)
  %19 = bitcast %struct.obj_struct* %4 to i8*
  %20 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smparray_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), %struct.obj_struct* byval %5)
  %21 = bitcast %struct.obj_struct* %7 to i8*
  %22 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smparray_add_now, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), %struct.obj_struct* byval %8)
  %23 = bitcast %struct.obj_struct* %10 to i8*
  %24 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smparray_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), %struct.obj_struct* byval %11)
  %25 = bitcast %struct.obj_struct* %13 to i8*
  %26 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smparray_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), %struct.obj_struct* byval %14)
  ret i32 0
}

declare i32 @smpglobal_class(i8*, %struct.smptype_struct*, i32)

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smparray_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %a = alloca %struct.obj_struct*, align 8
  %i = alloca i64, align 8
  %length = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smparray_struct*
  %7 = getelementptr inbounds %struct.smparray_struct* %6, i32 0, i32 0
  %8 = load %struct.obj_struct** %7, align 8
  store %struct.obj_struct* %8, %struct.obj_struct** %a, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %10 = load i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.smparray_struct*
  %12 = getelementptr inbounds %struct.smparray_struct* %11, i32 0, i32 1
  %13 = load i64* %12, align 8
  store i64 %13, i64* %length, align 8
  store i64 0, i64* %i, align 8
  br label %14

; <label>:14                                      ; preds = %25, %0
  %15 = load i64* %i, align 8
  %16 = load i64* %length, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %28

; <label>:18                                      ; preds = %14
  %19 = load i64* %i, align 8
  %20 = load %struct.obj_struct** %a, align 8
  %21 = getelementptr inbounds %struct.obj_struct* %20, i64 %19
  %22 = bitcast %struct.obj_struct* %3 to i8*
  %23 = bitcast %struct.obj_struct* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  %24 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  br label %25

; <label>:25                                      ; preds = %18
  %26 = load i64* %i, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %i, align 8
  br label %14

; <label>:28                                      ; preds = %14
  %29 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smparray_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smparray_struct*
  %6 = getelementptr inbounds %struct.smparray_struct* %5, i32 0, i32 0
  %7 = load %struct.obj_struct** %6, align 8
  %8 = bitcast %struct.obj_struct* %7 to i8*
  call void @smp_free(i8* %8)
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smparray_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %arr = alloca %struct.smparray_struct*, align 8
  %i = alloca i64, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smparray_struct*
  store %struct.smparray_struct* %5, %struct.smparray_struct** %arr, align 8
  %6 = load %struct.smparray_struct** %arr, align 8
  %7 = getelementptr inbounds %struct.smparray_struct* %6, i32 0, i32 1
  %8 = load i64* %7, align 8
  store i64 %8, i64* %i, align 8
  %9 = load %struct.smparray_struct** %arr, align 8
  %10 = getelementptr inbounds %struct.smparray_struct* %9, i32 0, i32 1
  %11 = load i64* %10, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.smparray_struct** %arr, align 8
  %14 = load %struct.smparray_struct** %arr, align 8
  %15 = getelementptr inbounds %struct.smparray_struct* %14, i32 0, i32 1
  %16 = load i64* %15, align 8
  %17 = mul i64 32, %16
  %18 = call i32 @smparray_resize(%struct.smparray_struct* %13, i64 %17)
  %19 = load i64* %i, align 8
  %20 = load %struct.smparray_struct** %arr, align 8
  %21 = getelementptr inbounds %struct.smparray_struct* %20, i32 0, i32 0
  %22 = load %struct.obj_struct** %21, align 8
  %23 = getelementptr inbounds %struct.obj_struct* %22, i64 %19
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = bitcast %struct.obj_struct* %23 to i8*
  %27 = bitcast %struct.obj_struct* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smparray_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %divider = alloca %struct.obj_struct, align 8
  %str2 = alloca %struct.obj_struct, align 8
  %a = alloca %struct.obj_struct*, align 8
  %i = alloca i64, align 8
  %length = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %bracket = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smpstr_init(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([2 x i8]* @.str13, i32 0, i32 0))
  call void @smpstr_init(%struct.obj_struct* sret %divider, i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0))
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %11 = load i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.smparray_struct*
  %13 = getelementptr inbounds %struct.smparray_struct* %12, i32 0, i32 0
  %14 = load %struct.obj_struct** %13, align 8
  store %struct.obj_struct* %14, %struct.obj_struct** %a, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smparray_struct*
  %18 = getelementptr inbounds %struct.smparray_struct* %17, i32 0, i32 1
  %19 = load i64* %18, align 8
  store i64 %19, i64* %length, align 8
  store i64 0, i64* %i, align 8
  br label %20

; <label>:20                                      ; preds = %38, %0
  %21 = load i64* %i, align 8
  %22 = load i64* %length, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %41

; <label>:24                                      ; preds = %20
  %25 = load i64* %i, align 8
  %26 = load %struct.obj_struct** %a, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %26, i64 %25
  %28 = bitcast %struct.obj_struct* %3 to i8*
  %29 = bitcast %struct.obj_struct* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %str2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %30 = load i64* %i, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

; <label>:32                                      ; preds = %24
  %33 = bitcast %struct.obj_struct* %4 to i8*
  %34 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %5, %struct.obj_struct* byval %4, i32 1, %struct.obj_struct* %divider)
  br label %35

; <label>:35                                      ; preds = %32, %24
  %36 = bitcast %struct.obj_struct* %6 to i8*
  %37 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %7, %struct.obj_struct* byval %6, i32 1, %struct.obj_struct* %str2)
  br label %38

; <label>:38                                      ; preds = %35
  %39 = load i64* %i, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %i, align 8
  br label %20

; <label>:41                                      ; preds = %20
  call void @smpstr_init(%struct.obj_struct* sret %bracket, i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0))
  %42 = bitcast %struct.obj_struct* %8 to i8*
  %43 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %9, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* %bracket)
  %44 = bitcast %struct.obj_struct* %agg.result to i8*
  %45 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  ret void
}

define void @smparray_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %old_gc_activep = alloca i32, align 4
  %res = alloca %struct.obj_struct, align 8
  %space = alloca %struct.obj_struct, align 8
  %str2 = alloca %struct.obj_struct, align 8
  %a = alloca %struct.obj_struct*, align 8
  %i = alloca i64, align 8
  %length = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %paren = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %10 = load i32* @gc_activep, align 4
  store i32 %10, i32* %old_gc_activep, align 4
  store i32 0, i32* @gc_activep, align 4
  call void @smpstr_init(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  call void @smpstr_init(%struct.obj_struct* sret %space, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0))
  %11 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.smparray_struct*
  %14 = getelementptr inbounds %struct.smparray_struct* %13, i32 0, i32 0
  %15 = load %struct.obj_struct** %14, align 8
  store %struct.obj_struct* %15, %struct.obj_struct** %a, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.smparray_struct*
  %19 = getelementptr inbounds %struct.smparray_struct* %18, i32 0, i32 1
  %20 = load i64* %19, align 8
  store i64 %20, i64* %length, align 8
  store i64 0, i64* %i, align 8
  br label %21

; <label>:21                                      ; preds = %35, %0
  %22 = load i64* %i, align 8
  %23 = load i64* %length, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %38

; <label>:25                                      ; preds = %21
  %26 = load i64* %i, align 8
  %27 = load %struct.obj_struct** %a, align 8
  %28 = getelementptr inbounds %struct.obj_struct* %27, i64 %26
  %29 = bitcast %struct.obj_struct* %3 to i8*
  %30 = bitcast %struct.obj_struct* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %str2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %31 = bitcast %struct.obj_struct* %4 to i8*
  %32 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %5, %struct.obj_struct* byval %4, i32 1, %struct.obj_struct* %space)
  %33 = bitcast %struct.obj_struct* %6 to i8*
  %34 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %7, %struct.obj_struct* byval %6, i32 1, %struct.obj_struct* %str2)
  br label %35

; <label>:35                                      ; preds = %25
  %36 = load i64* %i, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %i, align 8
  br label %21

; <label>:38                                      ; preds = %21
  call void @smpstr_init(%struct.obj_struct* sret %paren, i8* getelementptr inbounds ([2 x i8]* @.str18, i32 0, i32 0))
  %39 = bitcast %struct.obj_struct* %8 to i8*
  %40 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %9, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* %paren)
  %41 = load i32* %old_gc_activep, align 4
  store i32 %41, i32* @gc_activep, align 4
  %42 = bitcast %struct.obj_struct* %agg.result to i8*
  %43 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  ret void
}

define i32 @smparray_resize(%struct.smparray_struct* %arr, i64 %size) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smparray_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.smparray_struct* %arr, %struct.smparray_struct** %2, align 8
  store i64 %size, i64* %3, align 8
  %4 = load i64* %3, align 8
  %5 = icmp ugt i64 %4, 4
  br i1 %5, label %6, label %21

; <label>:6                                       ; preds = %0
  %7 = load i64* %3, align 8
  %8 = call i32 @is_power_of_2(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

; <label>:10                                      ; preds = %6
  %11 = load %struct.smparray_struct** %2, align 8
  %12 = getelementptr inbounds %struct.smparray_struct* %11, i32 0, i32 0
  %13 = load %struct.obj_struct** %12, align 8
  %14 = bitcast %struct.obj_struct* %13 to i8*
  %15 = load i64* %3, align 8
  %16 = call i64 @next_power_of_2(i64 %15)
  %17 = call i8* @smp_realloc(i8* %14, i64 %16)
  %18 = bitcast i8* %17 to %struct.obj_struct*
  %19 = load %struct.smparray_struct** %2, align 8
  %20 = getelementptr inbounds %struct.smparray_struct* %19, i32 0, i32 0
  store %struct.obj_struct* %18, %struct.obj_struct** %20, align 8
  store i32 1, i32* %1
  br label %22

; <label>:21                                      ; preds = %6, %0
  store i32 0, i32* %1
  br label %22

; <label>:22                                      ; preds = %21, %10
  %23 = load i32* %1
  ret i32 %23
}

declare void @smp_free(i8*)

define void @smparray_init(%struct.obj_struct* sret %agg.result) nounwind {
  %core = alloca %struct.smparray_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = getelementptr inbounds %struct.smparray_struct* %core, i32 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = call i64 @next_power_of_2(i64 4)
  %4 = mul i64 32, %3
  %5 = call i8* @smp_malloc(i64 %4)
  %6 = bitcast i8* %5 to %struct.obj_struct*
  %7 = getelementptr inbounds %struct.smparray_struct* %core, i32 0, i32 0
  store %struct.obj_struct* %6, %struct.obj_struct** %7, align 8
  %8 = getelementptr inbounds %struct.smparray_struct* %core, i32 0, i32 0
  %9 = load %struct.obj_struct** %8, align 8
  %10 = bitcast %struct.obj_struct* %9 to i8*
  %11 = call i64 @llvm.objectsize.i64(i8* %10, i1 false)
  %12 = icmp ne i64 %11, -1
  br i1 %12, label %13, label %24

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.smparray_struct* %core, i32 0, i32 0
  %15 = load %struct.obj_struct** %14, align 8
  %16 = bitcast %struct.obj_struct* %15 to i8*
  %17 = call i64 @next_power_of_2(i64 4)
  %18 = mul i64 32, %17
  %19 = getelementptr inbounds %struct.smparray_struct* %core, i32 0, i32 0
  %20 = load %struct.obj_struct** %19, align 8
  %21 = bitcast %struct.obj_struct* %20 to i8*
  %22 = call i64 @llvm.objectsize.i64(i8* %21, i1 false)
  %23 = call i8* @__memset_chk(i8* %16, i32 0, i64 %18, i64 %22)
  br label %31

; <label>:24                                      ; preds = %0
  %25 = getelementptr inbounds %struct.smparray_struct* %core, i32 0, i32 0
  %26 = load %struct.obj_struct** %25, align 8
  %27 = bitcast %struct.obj_struct* %26 to i8*
  %28 = call i64 @next_power_of_2(i64 4)
  %29 = mul i64 32, %28
  %30 = call i8* @__inline_memset_chk(i8* %27, i32 0, i64 %29)
  br label %31

; <label>:31                                      ; preds = %24, %13
  %32 = phi i8* [ %23, %13 ], [ %30, %24 ]
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0))
  %33 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 3
  %34 = load i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.smptype_struct*
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* %35)
  %36 = call i8* @smp_malloc(i64 16)
  %37 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %39 = load i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.smparray_struct*
  %41 = bitcast %struct.smparray_struct* %40 to i8*
  %42 = bitcast %struct.smparray_struct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  %43 = bitcast %struct.obj_struct* %agg.result to i8*
  %44 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  ret void
}

declare i8* @smp_malloc(i64)

declare i64 @next_power_of_2(i64)

declare i64 @llvm.objectsize.i64(i8*, i1) nounwind readonly

declare i8* @__memset_chk(i8*, i32, i64, i64) nounwind

define internal i8* @__inline_memset_chk(i8* %__dest, i32 %__val, i64 %__len) nounwind inlinehint {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i8* %__dest, i8** %1, align 8
  store i32 %__val, i32* %2, align 4
  store i64 %__len, i64* %3, align 8
  %4 = load i8** %1, align 8
  %5 = load i32* %2, align 4
  %6 = load i64* %3, align 8
  %7 = load i8** %1, align 8
  %8 = call i64 @llvm.objectsize.i64(i8* %7, i1 false)
  %9 = call i8* @__memset_chk(i8* %4, i32 %5, i64 %6, i64 %8)
  ret i8* %9
}

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

define void @smparray_init_array(%struct.obj_struct* sret %agg.result, %struct.obj_struct* %arr, i64 %length) nounwind {
  %1 = alloca %struct.obj_struct*, align 8
  %2 = alloca i64, align 8
  %core = alloca %struct.smparray_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct* %arr, %struct.obj_struct** %1, align 8
  store i64 %length, i64* %2, align 8
  %4 = load i64* %2, align 8
  %5 = getelementptr inbounds %struct.smparray_struct* %core, i32 0, i32 1
  store i64 %4, i64* %5, align 8
  %6 = load %struct.obj_struct** %1, align 8
  %7 = getelementptr inbounds %struct.smparray_struct* %core, i32 0, i32 0
  store %struct.obj_struct* %6, %struct.obj_struct** %7, align 8
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0))
  %8 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.smptype_struct*
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* %10)
  %11 = call i8* @smp_malloc(i64 16)
  %12 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smparray_struct*
  %16 = bitcast %struct.smparray_struct* %15 to i8*
  %17 = bitcast %struct.smparray_struct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = bitcast %struct.obj_struct* %agg.result to i8*
  %19 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  ret void
}

declare i32 @gc_mark_recursive(i8*, %struct.obj_struct* byval)

define void @smparray_get_c(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i64 %index) nounwind {
  %1 = alloca i64, align 8
  %core = alloca %struct.smparray_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i64 %index, i64* %1, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smparray_struct*
  %7 = bitcast %struct.smparray_struct* %core to i8*
  %8 = bitcast %struct.smparray_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = load i64* %1, align 8
  %10 = getelementptr inbounds %struct.smparray_struct* %core, i32 0, i32 1
  %11 = load i64* %10, align 8
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %0
  %14 = load i64* %1, align 8
  %15 = getelementptr inbounds %struct.smparray_struct* %core, i32 0, i32 0
  %16 = load %struct.obj_struct** %15, align 8
  %17 = getelementptr inbounds %struct.obj_struct* %16, i64 %14
  %18 = bitcast %struct.obj_struct* %agg.result to i8*
  %19 = bitcast %struct.obj_struct* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  br label %22

; <label>:20                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([26 x i8]* @.str8, i32 0, i32 0))
  %21 = load i64* %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([28 x i8]* @.str9, i32 0, i32 0), i64 %21)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
  br label %22

; <label>:22                                      ; preds = %20, %13
  ret void
}

declare void @smpglobal_throw(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smpexc_init_fmt(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, ...)

define void @smparray_length(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smparray_struct*
  %6 = getelementptr inbounds %struct.smparray_struct* %5, i32 0, i32 1
  %7 = load i64* %6, align 8
  call void @smpint_init_clong(%struct.obj_struct* sret %agg.result, i64 %7)
  ret void
}

declare void @smpint_init_clong(%struct.obj_struct* sret, i64)

define void @smparray_map(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %a = alloca %struct.obj_struct*, align 8
  %i = alloca i64, align 8
  %length = alloca i64, align 8
  %res_arr = alloca %struct.obj_struct*, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %8 = load %struct.obj_struct** %2, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %8, i64 0
  %10 = getelementptr inbounds %struct.obj_struct* %9, i32 0, i32 2
  %11 = load %struct.smptype_struct** %10, align 8
  %12 = call i32 @smpobj_instancep_cstr(%struct.smptype_struct* %11, i8* getelementptr inbounds ([9 x i8]* @.str10, i32 0, i32 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %36, label %14

; <label>:14                                      ; preds = %0
  %15 = load %struct.obj_struct** %2, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %15, i64 0
  %17 = getelementptr inbounds %struct.obj_struct* %16, i32 0, i32 2
  %18 = load %struct.smptype_struct** %17, align 8
  %19 = getelementptr inbounds %struct.smptype_struct* %18, i32 0, i32 0
  %20 = load i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0))
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

; <label>:23                                      ; preds = %14
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = bitcast %struct.obj_struct* %agg.result to i8*
  %27 = bitcast %struct.obj_struct* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  br label %90

; <label>:28                                      ; preds = %14
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([9 x i8]* @.str10, i32 0, i32 0))
  %29 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %30 = load i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.smptype_struct*
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %5 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %31, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %90

; <label>:36                                      ; preds = %0
  %37 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %38 = load i8** %37, align 8
  %39 = bitcast i8* %38 to %struct.smparray_struct*
  %40 = getelementptr inbounds %struct.smparray_struct* %39, i32 0, i32 0
  %41 = load %struct.obj_struct** %40, align 8
  store %struct.obj_struct* %41, %struct.obj_struct** %a, align 8
  %42 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %43 = load i8** %42, align 8
  %44 = bitcast i8* %43 to %struct.smparray_struct*
  %45 = getelementptr inbounds %struct.smparray_struct* %44, i32 0, i32 1
  %46 = load i64* %45, align 8
  store i64 %46, i64* %length, align 8
  %47 = load i64* %length, align 8
  %48 = mul i64 32, %47
  %49 = call i8* @smp_malloc(i64 %48)
  %50 = bitcast i8* %49 to %struct.obj_struct*
  store %struct.obj_struct* %50, %struct.obj_struct** %res_arr, align 8
  store i64 0, i64* %i, align 8
  br label %51

; <label>:51                                      ; preds = %84, %36
  %52 = load i64* %i, align 8
  %53 = load i64* %length, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %87

; <label>:55                                      ; preds = %51
  %56 = load i64* %i, align 8
  %57 = load %struct.obj_struct** %res_arr, align 8
  %58 = getelementptr inbounds %struct.obj_struct* %57, i64 %56
  call void @smp_getclass(%struct.obj_struct* sret %6, i8* getelementptr inbounds ([7 x i8]* @.str12, i32 0, i32 0))
  %59 = load %struct.obj_struct** %2, align 8
  %60 = getelementptr inbounds %struct.obj_struct* %59, i64 0
  %61 = bitcast %struct.obj_struct* %7 to i8*
  %62 = bitcast %struct.obj_struct* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 32, i32 8, i1 false)
  %63 = load i64* %i, align 8
  %64 = load %struct.obj_struct** %a, align 8
  %65 = getelementptr inbounds %struct.obj_struct* %64, i64 %63
  call void @smpfun_call(%struct.obj_struct* sret %58, %struct.obj_struct* byval %6, %struct.obj_struct* byval %7, i32 1, %struct.obj_struct* %65)
  %66 = load i64* %i, align 8
  %67 = load %struct.obj_struct** %res_arr, align 8
  %68 = getelementptr inbounds %struct.obj_struct* %67, i64 %66
  %69 = getelementptr inbounds %struct.obj_struct* %68, i32 0, i32 2
  %70 = load %struct.smptype_struct** %69, align 8
  %71 = getelementptr inbounds %struct.smptype_struct* %70, i32 0, i32 0
  %72 = load i8** %71, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0))
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

; <label>:75                                      ; preds = %55
  %76 = load %struct.obj_struct** %res_arr, align 8
  %77 = bitcast %struct.obj_struct* %76 to i8*
  call void @smp_free(i8* %77)
  %78 = load i64* %i, align 8
  %79 = load %struct.obj_struct** %res_arr, align 8
  %80 = getelementptr inbounds %struct.obj_struct* %79, i64 %78
  %81 = bitcast %struct.obj_struct* %agg.result to i8*
  %82 = bitcast %struct.obj_struct* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 32, i32 8, i1 false)
  br label %90

; <label>:83                                      ; preds = %55
  br label %84

; <label>:84                                      ; preds = %83
  %85 = load i64* %i, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %i, align 8
  br label %51

; <label>:87                                      ; preds = %51
  %88 = load %struct.obj_struct** %res_arr, align 8
  %89 = load i64* %length, align 8
  call void @smparray_init_array(%struct.obj_struct* sret %agg.result, %struct.obj_struct* %88, i64 %89)
  br label %90

; <label>:90                                      ; preds = %87, %75, %28, %23
  ret void
}

declare i32 @smpobj_instancep_cstr(%struct.smptype_struct*, i8*)

declare i32 @strcmp(i8*, i8*)

declare void @smptypeerr_init(%struct.obj_struct* sret, %struct.smptype_struct*, %struct.obj_struct* byval)

declare void @smpfun_call(%struct.obj_struct* sret, %struct.obj_struct* byval, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare i32 @is_power_of_2(i64)

declare i8* @smp_realloc(i8*, i64)

declare void @smpstr_init(%struct.obj_struct* sret, i8*)

declare void @smpobj_funcall(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, i32, %struct.obj_struct*)

declare void @smpstr_add_now(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)
