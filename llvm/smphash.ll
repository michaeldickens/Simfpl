; ModuleID = 'smphash.c'
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
%struct.smphash_struct = type { %struct.obj_struct*, %struct.obj_struct, i64, i64, i64 }
%struct.smppair_struct = type { %struct.obj_struct, %struct.obj_struct* }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@.str = private constant [5 x i8] c"Hash\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@.str1 = private constant [5 x i8] c"add!\00"
@.str2 = private constant [4 x i8] c"Nil\00"
@.str3 = private constant [7 x i8] c"Object\00"
@.str4 = private constant [6 x i8] c"clear\00"
@.str5 = private constant [8 x i8] c"gc_mark\00"
@.str6 = private constant [5 x i8] c"to_s\00"
@.str7 = private constant [7 x i8] c"String\00"
@.str8 = private constant [6 x i8] c"write\00"
@.str9 = private constant [5 x i8] c"List\00"
@.str10 = private constant [7 x i8] c"Thrown\00"
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@smptype_id_nil = common global i32 0, align 4
@.str11 = private constant [24 x i8] c"ImplementationException\00"
@.str12 = private constant [34 x i8] c"hash contains?() not implemented.\00"
@smptype_id_list = common global i32 0, align 4
@.str13 = private constant [5 x i8] c"eql?\00"
@.str14 = private constant [6 x i8] c"(hash\00"
@.str15 = private constant [2 x i8] c" \00"
@.str16 = private constant [2 x i8] c"(\00"
@.str17 = private constant [2 x i8] c")\00"
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

define i32 @smphash_create_class() nounwind {
  %hash = alloca %struct.obj_struct, align 8
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
  %16 = call i32 @smpglobal_class(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %hash, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0))
  %17 = bitcast %struct.obj_struct* %1 to i8*
  %18 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smphash_add_now, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %2)
  %19 = bitcast %struct.obj_struct* %4 to i8*
  %20 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smphash_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), %struct.obj_struct* byval %5)
  %21 = bitcast %struct.obj_struct* %7 to i8*
  %22 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smphash_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), %struct.obj_struct* byval %8)
  %23 = bitcast %struct.obj_struct* %10 to i8*
  %24 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smphash_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), %struct.obj_struct* byval %11)
  %25 = bitcast %struct.obj_struct* %13 to i8*
  %26 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smphash_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), %struct.obj_struct* byval %14)
  ret i32 0
}

declare i32 @smpglobal_class(i8*, %struct.smptype_struct*, i32)

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smphash_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %7 = load %struct.obj_struct** %2, align 8
  %8 = getelementptr inbounds %struct.obj_struct* %7, i64 0
  %9 = getelementptr inbounds %struct.obj_struct* %8, i32 0, i32 2
  %10 = load %struct.smptype_struct** %9, align 8
  %11 = call i32 @smpobj_instancep_cstr(%struct.smptype_struct* %10, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

; <label>:13                                      ; preds = %0
  %14 = load %struct.obj_struct** %2, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 0
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 2
  %17 = load %struct.smptype_struct** %16, align 8
  %18 = getelementptr inbounds %struct.smptype_struct* %17, i32 0, i32 0
  %19 = load i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

; <label>:22                                      ; preds = %13
  %23 = load %struct.obj_struct** %2, align 8
  %24 = getelementptr inbounds %struct.obj_struct* %23, i64 0
  %25 = bitcast %struct.obj_struct* %agg.result to i8*
  %26 = bitcast %struct.obj_struct* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  br label %45

; <label>:27                                      ; preds = %13
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0))
  %28 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %29 = load i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.smptype_struct*
  %31 = load %struct.obj_struct** %2, align 8
  %32 = getelementptr inbounds %struct.obj_struct* %31, i64 0
  %33 = bitcast %struct.obj_struct* %5 to i8*
  %34 = bitcast %struct.obj_struct* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %30, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %45

; <label>:35                                      ; preds = %0
  %36 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %37 = load i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.smphash_struct*
  %39 = load %struct.obj_struct** %2, align 8
  %40 = getelementptr inbounds %struct.obj_struct* %39, i64 0
  %41 = bitcast %struct.obj_struct* %6 to i8*
  %42 = bitcast %struct.obj_struct* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  %43 = call i32 @smphash_core_add_now(%struct.smphash_struct* %38, %struct.obj_struct* byval %6)
  %44 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %45

; <label>:45                                      ; preds = %35, %27, %22
  ret void
}

define void @smphash_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smphash_struct*
  %6 = call i32 @smphash_core_clear(%struct.smphash_struct* %5)
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smphash_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %hash = alloca %struct.smphash_struct, align 8
  %i = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smphash_struct*
  %7 = bitcast %struct.smphash_struct* %hash to i8*
  %8 = bitcast %struct.smphash_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 64, i32 8, i1 false)
  store i64 0, i64* %i, align 8
  br label %9

; <label>:9                                       ; preds = %22, %0
  %10 = load i64* %i, align 8
  %11 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 2
  %12 = load i64* %11, align 8
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %25

; <label>:14                                      ; preds = %9
  %15 = load i64* %i, align 8
  %16 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  %17 = load %struct.obj_struct** %16, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 %15
  %19 = bitcast %struct.obj_struct* %3 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  %21 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  br label %22

; <label>:22                                      ; preds = %14
  %23 = load i64* %i, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %i, align 8
  br label %9

; <label>:25                                      ; preds = %9
  %26 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smphash_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smphash_make_string(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0))
  ret void
}

define void @smphash_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smphash_make_string(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0))
  ret void
}

declare i32 @smpobj_instancep_cstr(%struct.smptype_struct*, i8*)

declare i32 @strcmp(i8*, i8*)

declare void @smpglobal_throw(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smptypeerr_init(%struct.obj_struct* sret, %struct.smptype_struct*, %struct.obj_struct* byval)

define i32 @smphash_core_add_now(%struct.smphash_struct* %hash, %struct.obj_struct* byval %pair) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smphash_struct*, align 8
  %index = alloca i32, align 4
  %code = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %hash2 = alloca %struct.smphash_struct, align 8
  store %struct.smphash_struct* %hash, %struct.smphash_struct** %2, align 8
  store i32 0, i32* %index, align 4
  %6 = bitcast %struct.obj_struct* %4 to i8*
  %7 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @smplist_car(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i32 0, %struct.obj_struct* null)
  %8 = call i32 @obj_hash(i32* %index, %struct.obj_struct* byval %3)
  store i32 %8, i32* %code, align 4
  %9 = load i32* %code, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i32* %code, align 4
  store i32 %12, i32* %1
  br label %99

; <label>:13                                      ; preds = %0
  %14 = load %struct.smphash_struct** %2, align 8
  %15 = getelementptr inbounds %struct.smphash_struct* %14, i32 0, i32 2
  %16 = load i64* %15, align 8
  %17 = load i32* %index, align 4
  %18 = sext i32 %17 to i64
  %19 = urem i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %index, align 4
  %21 = load i32* %index, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.smphash_struct** %2, align 8
  %24 = getelementptr inbounds %struct.smphash_struct* %23, i32 0, i32 0
  %25 = load %struct.obj_struct** %24, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 %22
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %43, label %30

; <label>:30                                      ; preds = %13
  %31 = load i32* %index, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.smphash_struct** %2, align 8
  %34 = getelementptr inbounds %struct.smphash_struct* %33, i32 0, i32 0
  %35 = load %struct.obj_struct** %34, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 %32
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smptype_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smptype_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smptype_id_nil, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %55

; <label>:43                                      ; preds = %30, %13
  %44 = load %struct.smphash_struct** %2, align 8
  %45 = getelementptr inbounds %struct.smphash_struct* %44, i32 0, i32 3
  %46 = load i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load i32* %index, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.smphash_struct** %2, align 8
  %51 = getelementptr inbounds %struct.smphash_struct* %50, i32 0, i32 0
  %52 = load %struct.obj_struct** %51, align 8
  %53 = getelementptr inbounds %struct.obj_struct* %52, i64 %49
  %54 = bitcast %struct.obj_struct* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %55

; <label>:55                                      ; preds = %43, %30
  %56 = load i32* %index, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.smphash_struct** %2, align 8
  %59 = getelementptr inbounds %struct.smphash_struct* %58, i32 0, i32 0
  %60 = load %struct.obj_struct** %59, align 8
  %61 = getelementptr inbounds %struct.obj_struct* %60, i64 %57
  %62 = bitcast %struct.obj_struct* %5 to i8*
  %63 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 32, i32 8, i1 false)
  %64 = load i32* %index, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.smphash_struct** %2, align 8
  %67 = getelementptr inbounds %struct.smphash_struct* %66, i32 0, i32 0
  %68 = load %struct.obj_struct** %67, align 8
  %69 = getelementptr inbounds %struct.obj_struct* %68, i64 %65
  call void @smpobj_cons(%struct.obj_struct* sret %61, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %69)
  %70 = load %struct.smphash_struct** %2, align 8
  %71 = getelementptr inbounds %struct.smphash_struct* %70, i32 0, i32 4
  %72 = load i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.smphash_struct** %2, align 8
  %75 = getelementptr inbounds %struct.smphash_struct* %74, i32 0, i32 3
  %76 = load i64* %75, align 8
  %77 = load %struct.smphash_struct** %2, align 8
  %78 = getelementptr inbounds %struct.smphash_struct* %77, i32 0, i32 2
  %79 = load i64* %78, align 8
  %80 = udiv i64 %76, %79
  %81 = uitofp i64 %80 to double
  %82 = fcmp ogt double %81, 7.500000e-01
  br i1 %82, label %83, label %98

; <label>:83                                      ; preds = %55
  %84 = load %struct.smphash_struct** %2, align 8
  %85 = getelementptr inbounds %struct.smphash_struct* %84, i32 0, i32 2
  %86 = load i64* %85, align 8
  %87 = uitofp i64 %86 to double
  %88 = fmul double %87, 7.500000e-01
  %89 = fdiv double %88, 2.500000e-01
  %90 = fptoui double %89 to i64
  call void @smphash_core_init_capacity(%struct.smphash_struct* sret %hash2, i64 %90)
  %91 = load %struct.smphash_struct** %2, align 8
  %92 = call i32 @smphash_core_copy(%struct.smphash_struct* %hash2, %struct.smphash_struct* %91)
  %93 = load %struct.smphash_struct** %2, align 8
  %94 = call i32 @smphash_core_clear(%struct.smphash_struct* %93)
  %95 = load %struct.smphash_struct** %2, align 8
  %96 = bitcast %struct.smphash_struct* %95 to i8*
  %97 = bitcast %struct.smphash_struct* %hash2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 64, i32 8, i1 false)
  br label %98

; <label>:98                                      ; preds = %83, %55
  store i32 0, i32* %1
  br label %99

; <label>:99                                      ; preds = %98, %11
  %100 = load i32* %1
  ret i32 %100
}

declare i32 @obj_hash(i32*, %struct.obj_struct* byval)

declare void @smplist_car(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_cons(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define void @smphash_core_init_capacity(%struct.smphash_struct* sret %agg.result, i64 %capacity) nounwind {
  %1 = alloca i64, align 8
  %hash = alloca %struct.smphash_struct, align 8
  store i64 %capacity, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 2
  store i64 %2, i64* %3, align 8
  %4 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 2
  %5 = load i64* %4, align 8
  %6 = mul i64 32, %5
  %7 = call i8* @smp_malloc(i64 %6)
  %8 = bitcast i8* %7 to %struct.obj_struct*
  %9 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  store %struct.obj_struct* %8, %struct.obj_struct** %9, align 8
  %10 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  %11 = load %struct.obj_struct** %10, align 8
  %12 = bitcast %struct.obj_struct* %11 to i8*
  %13 = call i64 @llvm.objectsize.i64(i8* %12, i1 false)
  %14 = icmp ne i64 %13, -1
  br i1 %14, label %15, label %27

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  %17 = load %struct.obj_struct** %16, align 8
  %18 = bitcast %struct.obj_struct* %17 to i8*
  %19 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 2
  %20 = load i64* %19, align 8
  %21 = mul i64 32, %20
  %22 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  %23 = load %struct.obj_struct** %22, align 8
  %24 = bitcast %struct.obj_struct* %23 to i8*
  %25 = call i64 @llvm.objectsize.i64(i8* %24, i1 false)
  %26 = call i8* @__memset_chk(i8* %18, i32 0, i64 %21, i64 %25)
  br label %35

; <label>:27                                      ; preds = %0
  %28 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  %29 = load %struct.obj_struct** %28, align 8
  %30 = bitcast %struct.obj_struct* %29 to i8*
  %31 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 2
  %32 = load i64* %31, align 8
  %33 = mul i64 32, %32
  %34 = call i8* @__inline_memset_chk(i8* %30, i32 0, i64 %33)
  br label %35

; <label>:35                                      ; preds = %27, %15
  %36 = phi i8* [ %26, %15 ], [ %34, %27 ]
  %37 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 1
  %38 = bitcast %struct.obj_struct* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %39 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = bitcast %struct.smphash_struct* %agg.result to i8*
  %42 = bitcast %struct.smphash_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 64, i32 8, i1 false)
  ret void
}

define i32 @smphash_core_copy(%struct.smphash_struct* %res, %struct.smphash_struct* %hash) nounwind {
  %1 = alloca %struct.smphash_struct*, align 8
  %2 = alloca %struct.smphash_struct*, align 8
  %i = alloca i64, align 8
  %list = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.smphash_struct* %res, %struct.smphash_struct** %1, align 8
  store %struct.smphash_struct* %hash, %struct.smphash_struct** %2, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %46, %0
  %5 = load i64* %i, align 8
  %6 = load %struct.smphash_struct** %2, align 8
  %7 = getelementptr inbounds %struct.smphash_struct* %6, i32 0, i32 2
  %8 = load i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %49

; <label>:10                                      ; preds = %4
  %11 = load i64* %i, align 8
  %12 = load %struct.smphash_struct** %2, align 8
  %13 = getelementptr inbounds %struct.smphash_struct* %12, i32 0, i32 0
  %14 = load %struct.obj_struct** %13, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 %11
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %45

; <label>:19                                      ; preds = %10
  %20 = load i64* %i, align 8
  %21 = load %struct.smphash_struct** %2, align 8
  %22 = getelementptr inbounds %struct.smphash_struct* %21, i32 0, i32 0
  %23 = load %struct.obj_struct** %22, align 8
  %24 = getelementptr inbounds %struct.obj_struct* %23, i64 %20
  store %struct.obj_struct* %24, %struct.obj_struct** %list, align 8
  br label %25

; <label>:25                                      ; preds = %28, %19
  %26 = load %struct.obj_struct** %list, align 8
  %27 = icmp ne %struct.obj_struct* %26, null
  br i1 %27, label %28, label %44

; <label>:28                                      ; preds = %25
  %29 = load %struct.smphash_struct** %1, align 8
  %30 = load %struct.obj_struct** %list, align 8
  %31 = getelementptr inbounds %struct.obj_struct* %30, i32 0, i32 3
  %32 = load i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.smppair_struct*
  %34 = getelementptr inbounds %struct.smppair_struct* %33, i32 0, i32 0
  %35 = bitcast %struct.obj_struct* %3 to i8*
  %36 = bitcast %struct.obj_struct* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  %37 = call i32 @smphash_core_add_now(%struct.smphash_struct* %29, %struct.obj_struct* byval %3)
  %38 = load %struct.obj_struct** %list, align 8
  %39 = getelementptr inbounds %struct.obj_struct* %38, i32 0, i32 3
  %40 = load i8** %39, align 8
  %41 = bitcast i8* %40 to %struct.smppair_struct*
  %42 = getelementptr inbounds %struct.smppair_struct* %41, i32 0, i32 1
  %43 = load %struct.obj_struct** %42, align 8
  store %struct.obj_struct* %43, %struct.obj_struct** %list, align 8
  br label %25

; <label>:44                                      ; preds = %25
  br label %45

; <label>:45                                      ; preds = %44, %10
  br label %46

; <label>:46                                      ; preds = %45
  %47 = load i64* %i, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %i, align 8
  br label %4

; <label>:49                                      ; preds = %4
  ret i32 0
}

define i32 @smphash_core_clear(%struct.smphash_struct* %hash) nounwind {
  %1 = alloca %struct.smphash_struct*, align 8
  store %struct.smphash_struct* %hash, %struct.smphash_struct** %1, align 8
  %2 = load %struct.smphash_struct** %1, align 8
  %3 = getelementptr inbounds %struct.smphash_struct* %2, i32 0, i32 0
  %4 = load %struct.obj_struct** %3, align 8
  %5 = bitcast %struct.obj_struct* %4 to i8*
  call void @smp_free(i8* %5)
  ret i32 0
}

declare void @smp_free(i8*)

define void @smphash_containsp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([24 x i8]* @.str11, i32 0, i32 0))
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([34 x i8]* @.str12, i32 0, i32 0))
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

declare void @smpexc_init_fmt(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, ...)

declare i32 @gc_mark_recursive(i8*, %struct.obj_struct* byval)

define void @smphash_get(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %hash = alloca %struct.smphash_struct, align 8
  %index = alloca i32, align 4
  %code = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %list = alloca %struct.obj_struct*, align 8
  %pair = alloca %struct.obj_struct, align 8
  %equal_test = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %8 = load i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.smphash_struct*
  %10 = bitcast %struct.smphash_struct* %hash to i8*
  %11 = bitcast %struct.smphash_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 64, i32 8, i1 false)
  store i32 0, i32* %index, align 4
  %12 = load %struct.obj_struct** %2, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %12, i64 0
  %14 = bitcast %struct.obj_struct* %3 to i8*
  %15 = bitcast %struct.obj_struct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  %16 = call i32 @obj_hash(i32* %index, %struct.obj_struct* byval %3)
  store i32 %16, i32* %code, align 4
  %17 = load i32* %code, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %0
  %20 = load i32* %code, align 4
  %21 = sext i32 %20 to i64
  call void @smpint_init_clong(%struct.obj_struct* sret %agg.result, i64 %21)
  br label %116

; <label>:22                                      ; preds = %0
  %23 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 2
  %24 = load i64* %23, align 8
  %25 = load i32* %index, align 4
  %26 = sext i32 %25 to i64
  %27 = urem i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %index, align 4
  %29 = load i32* %index, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  %32 = load %struct.obj_struct** %31, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 %30
  %34 = getelementptr inbounds %struct.obj_struct* %33, i32 0, i32 3
  %35 = load i8** %34, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %51, label %37

; <label>:37                                      ; preds = %22
  %38 = load i32* %index, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  %41 = load %struct.obj_struct** %40, align 8
  %42 = getelementptr inbounds %struct.obj_struct* %41, i64 %39
  %43 = getelementptr inbounds %struct.obj_struct* %42, i32 0, i32 2
  %44 = load %struct.smptype_struct** %43, align 8
  %45 = getelementptr inbounds %struct.smptype_struct* %44, i32 0, i32 1
  %46 = load i32* %45, align 4
  %47 = load i32* @smptype_id_list, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

; <label>:51                                      ; preds = %37, %22
  %52 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %116

; <label>:53                                      ; preds = %37
  %54 = load i32* %index, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  %57 = load %struct.obj_struct** %56, align 8
  %58 = getelementptr inbounds %struct.obj_struct* %57, i64 %55
  store %struct.obj_struct* %58, %struct.obj_struct** %list, align 8
  br label %59

; <label>:59                                      ; preds = %102, %53
  %60 = load %struct.obj_struct** %list, align 8
  %61 = icmp ne %struct.obj_struct* %60, null
  br i1 %61, label %62, label %109

; <label>:62                                      ; preds = %59
  %63 = load %struct.obj_struct** %list, align 8
  %64 = getelementptr inbounds %struct.obj_struct* %63, i32 0, i32 3
  %65 = load i8** %64, align 8
  %66 = bitcast i8* %65 to %struct.smppair_struct*
  %67 = getelementptr inbounds %struct.smppair_struct* %66, i32 0, i32 0
  %68 = bitcast %struct.obj_struct* %pair to i8*
  %69 = bitcast %struct.obj_struct* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  %70 = load %struct.obj_struct** %2, align 8
  %71 = getelementptr inbounds %struct.obj_struct* %70, i64 0
  %72 = bitcast %struct.obj_struct* %4 to i8*
  %73 = bitcast %struct.obj_struct* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 32, i32 8, i1 false)
  %74 = getelementptr inbounds %struct.obj_struct* %pair, i32 0, i32 3
  %75 = load i8** %74, align 8
  %76 = bitcast i8* %75 to %struct.smppair_struct*
  %77 = getelementptr inbounds %struct.smppair_struct* %76, i32 0, i32 0
  call void @smpobj_funcall(%struct.obj_struct* sret %equal_test, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([5 x i8]* @.str13, i32 0, i32 0), i32 1, %struct.obj_struct* %77)
  %78 = getelementptr inbounds %struct.obj_struct* %equal_test, i32 0, i32 2
  %79 = load %struct.smptype_struct** %78, align 8
  %80 = getelementptr inbounds %struct.smptype_struct* %79, i32 0, i32 0
  %81 = load i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

; <label>:84                                      ; preds = %62
  %85 = bitcast %struct.obj_struct* %agg.result to i8*
  %86 = bitcast %struct.obj_struct* %equal_test to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 32, i32 8, i1 false)
  br label %116

; <label>:87                                      ; preds = %62
  %88 = getelementptr inbounds %struct.obj_struct* %pair, i32 0, i32 2
  %89 = load %struct.smptype_struct** %88, align 8
  %90 = getelementptr inbounds %struct.smptype_struct* %89, i32 0, i32 1
  %91 = load i32* %90, align 4
  %92 = load i32* @smptype_id_list, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %102

; <label>:94                                      ; preds = %87
  %95 = bitcast %struct.obj_struct* %5 to i8*
  %96 = bitcast %struct.obj_struct* %equal_test to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 32, i32 8, i1 false)
  %97 = call i32 @smpbool_to_cint(%struct.obj_struct* byval %5)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

; <label>:99                                      ; preds = %94
  %100 = bitcast %struct.obj_struct* %6 to i8*
  %101 = bitcast %struct.obj_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 32, i32 8, i1 false)
  call void @smplist_cdr(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %6, i32 0, %struct.obj_struct* null)
  br label %116

; <label>:102                                     ; preds = %94, %87
  %103 = load %struct.obj_struct** %list, align 8
  %104 = getelementptr inbounds %struct.obj_struct* %103, i32 0, i32 3
  %105 = load i8** %104, align 8
  %106 = bitcast i8* %105 to %struct.smppair_struct*
  %107 = getelementptr inbounds %struct.smppair_struct* %106, i32 0, i32 1
  %108 = load %struct.obj_struct** %107, align 8
  store %struct.obj_struct* %108, %struct.obj_struct** %list, align 8
  br label %59

; <label>:109                                     ; preds = %59
  %110 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %111 = load i8** %110, align 8
  %112 = bitcast i8* %111 to %struct.smphash_struct*
  %113 = getelementptr inbounds %struct.smphash_struct* %112, i32 0, i32 1
  %114 = bitcast %struct.obj_struct* %agg.result to i8*
  %115 = bitcast %struct.obj_struct* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 32, i32 8, i1 false)
  br label %116

; <label>:116                                     ; preds = %109, %99, %84, %51, %19
  ret void
}

declare void @smpint_init_clong(%struct.obj_struct* sret, i64)

declare void @smpobj_funcall(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, i32, %struct.obj_struct*)

declare i32 @smpbool_to_cint(%struct.obj_struct* byval)

declare void @smplist_cdr(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define void @smphash_init(%struct.obj_struct* sret %agg.result) nounwind {
  call void @smphash_init_capacity(%struct.obj_struct* sret %agg.result, i64 10)
  ret void
}

define void @smphash_init_capacity(%struct.obj_struct* sret %agg.result, i64 %capacity) nounwind {
  %1 = alloca i64, align 8
  %res = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  store i64 %capacity, i64* %1, align 8
  call void @smp_getclass(%struct.obj_struct* sret %2, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0))
  %3 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smptype_struct*
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* %5)
  %6 = call i8* @smp_malloc(i64 64)
  %7 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %6, i8** %7, align 8
  %8 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.smphash_struct*
  %11 = load i64* %1, align 8
  call void @smphash_core_init_capacity(%struct.smphash_struct* sret %10, i64 %11)
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  %13 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  ret void
}

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

declare i8* @smp_malloc(i64)

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

define void @smphash_make_string(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i8* %fun) nounwind {
  %1 = alloca i8*, align 8
  %hash = alloca %struct.smphash_struct, align 8
  %str = alloca %struct.obj_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %space = alloca %struct.obj_struct, align 8
  %l_paren = alloca %struct.obj_struct, align 8
  %r_paren = alloca %struct.obj_struct, align 8
  %i = alloca i64, align 8
  %list = alloca %struct.obj_struct*, align 8
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
  %19 = alloca %struct.obj_struct, align 8
  %20 = alloca %struct.obj_struct, align 8
  %21 = alloca %struct.obj_struct, align 8
  %22 = alloca %struct.obj_struct, align 8
  %23 = alloca %struct.obj_struct, align 8
  %24 = alloca %struct.obj_struct, align 8
  %25 = alloca %struct.obj_struct, align 8
  %26 = alloca %struct.obj_struct, align 8
  store i8* %fun, i8** %1, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.smphash_struct*
  %30 = bitcast %struct.smphash_struct* %hash to i8*
  %31 = bitcast %struct.smphash_struct* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 64, i32 8, i1 false)
  %32 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  %33 = load %struct.obj_struct** %32, align 8
  %34 = icmp ne %struct.obj_struct* %33, null
  br i1 %34, label %37, label %35

; <label>:35                                      ; preds = %0
  %36 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %118

; <label>:37                                      ; preds = %0
  call void @smpstr_init(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0))
  call void @smpstr_init(%struct.obj_struct* sret %space, i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0))
  call void @smpstr_init(%struct.obj_struct* sret %l_paren, i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0))
  call void @smpstr_init(%struct.obj_struct* sret %r_paren, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0))
  store i64 0, i64* %i, align 8
  br label %38

; <label>:38                                      ; preds = %110, %37
  %39 = load i64* %i, align 8
  %40 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 2
  %41 = load i64* %40, align 8
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %113

; <label>:43                                      ; preds = %38
  %44 = load i64* %i, align 8
  %45 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  %46 = load %struct.obj_struct** %45, align 8
  %47 = getelementptr inbounds %struct.obj_struct* %46, i64 %44
  %48 = getelementptr inbounds %struct.obj_struct* %47, i32 0, i32 3
  %49 = load i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %109

; <label>:51                                      ; preds = %43
  %52 = load i64* %i, align 8
  %53 = getelementptr inbounds %struct.smphash_struct* %hash, i32 0, i32 0
  %54 = load %struct.obj_struct** %53, align 8
  %55 = getelementptr inbounds %struct.obj_struct* %54, i64 %52
  store %struct.obj_struct* %55, %struct.obj_struct** %list, align 8
  br label %56

; <label>:56                                      ; preds = %93, %51
  %57 = load %struct.obj_struct** %list, align 8
  %58 = icmp ne %struct.obj_struct* %57, null
  br i1 %58, label %59, label %108

; <label>:59                                      ; preds = %56
  %60 = load %struct.obj_struct** %list, align 8
  %61 = getelementptr inbounds %struct.obj_struct* %60, i32 0, i32 3
  %62 = load i8** %61, align 8
  %63 = bitcast i8* %62 to %struct.smppair_struct*
  %64 = getelementptr inbounds %struct.smppair_struct* %63, i32 0, i32 0
  %65 = bitcast %struct.obj_struct* %2 to i8*
  %66 = bitcast %struct.obj_struct* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 32, i32 8, i1 false)
  %67 = load i8** %1, align 8
  call void @smpobj_funcall(%struct.obj_struct* sret %str, %struct.obj_struct* byval %2, i8* %67, i32 0, %struct.obj_struct* null)
  %68 = getelementptr inbounds %struct.obj_struct* %str, i32 0, i32 2
  %69 = load %struct.smptype_struct** %68, align 8
  %70 = getelementptr inbounds %struct.smptype_struct* %69, i32 0, i32 0
  %71 = load i8** %70, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

; <label>:74                                      ; preds = %59
  call void @obj_clear(%struct.obj_struct* sret %3, %struct.obj_struct* %res)
  call void @obj_clear(%struct.obj_struct* sret %4, %struct.obj_struct* %space)
  call void @obj_clear(%struct.obj_struct* sret %5, %struct.obj_struct* %l_paren)
  call void @obj_clear(%struct.obj_struct* sret %6, %struct.obj_struct* %r_paren)
  %75 = bitcast %struct.obj_struct* %agg.result to i8*
  %76 = bitcast %struct.obj_struct* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 32, i32 8, i1 false)
  br label %118

; <label>:77                                      ; preds = %59
  %78 = getelementptr inbounds %struct.obj_struct* %str, i32 0, i32 2
  %79 = load %struct.smptype_struct** %78, align 8
  %80 = getelementptr inbounds %struct.smptype_struct* %79, i32 0, i32 0
  %81 = load i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0))
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

; <label>:86                                      ; preds = %77
  call void @obj_clear(%struct.obj_struct* sret %7, %struct.obj_struct* %res)
  call void @obj_clear(%struct.obj_struct* sret %8, %struct.obj_struct* %space)
  call void @obj_clear(%struct.obj_struct* sret %9, %struct.obj_struct* %l_paren)
  call void @obj_clear(%struct.obj_struct* sret %10, %struct.obj_struct* %r_paren)
  call void @smp_getclass(%struct.obj_struct* sret %12, i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0))
  %87 = getelementptr inbounds %struct.obj_struct* %12, i32 0, i32 3
  %88 = load i8** %87, align 8
  %89 = bitcast i8* %88 to %struct.smptype_struct*
  %90 = bitcast %struct.obj_struct* %13 to i8*
  %91 = bitcast %struct.obj_struct* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %11, %struct.smptype_struct* %89, %struct.obj_struct* byval %13)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %11)
  br label %118

; <label>:92                                      ; preds = %77
  br label %93

; <label>:93                                      ; preds = %92
  %94 = bitcast %struct.obj_struct* %14 to i8*
  %95 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %15, %struct.obj_struct* byval %14, i32 1, %struct.obj_struct* %space)
  %96 = bitcast %struct.obj_struct* %16 to i8*
  %97 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %17, %struct.obj_struct* byval %16, i32 1, %struct.obj_struct* %l_paren)
  %98 = bitcast %struct.obj_struct* %18 to i8*
  %99 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %19, %struct.obj_struct* byval %18, i32 1, %struct.obj_struct* %str)
  %100 = bitcast %struct.obj_struct* %20 to i8*
  %101 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %21, %struct.obj_struct* byval %20, i32 1, %struct.obj_struct* %r_paren)
  %102 = load %struct.obj_struct** %list, align 8
  %103 = getelementptr inbounds %struct.obj_struct* %102, i32 0, i32 3
  %104 = load i8** %103, align 8
  %105 = bitcast i8* %104 to %struct.smppair_struct*
  %106 = getelementptr inbounds %struct.smppair_struct* %105, i32 0, i32 1
  %107 = load %struct.obj_struct** %106, align 8
  store %struct.obj_struct* %107, %struct.obj_struct** %list, align 8
  br label %56

; <label>:108                                     ; preds = %56
  br label %109

; <label>:109                                     ; preds = %108, %43
  br label %110

; <label>:110                                     ; preds = %109
  %111 = load i64* %i, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %i, align 8
  br label %38

; <label>:113                                     ; preds = %38
  %114 = bitcast %struct.obj_struct* %22 to i8*
  %115 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %23, %struct.obj_struct* byval %22, i32 1, %struct.obj_struct* %r_paren)
  call void @obj_clear(%struct.obj_struct* sret %24, %struct.obj_struct* %space)
  call void @obj_clear(%struct.obj_struct* sret %25, %struct.obj_struct* %l_paren)
  call void @obj_clear(%struct.obj_struct* sret %26, %struct.obj_struct* %r_paren)
  %116 = bitcast %struct.obj_struct* %agg.result to i8*
  %117 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 32, i32 8, i1 false)
  br label %118

; <label>:118                                     ; preds = %113, %86, %74, %35
  ret void
}

declare void @smpstr_init(%struct.obj_struct* sret, i8*)

declare void @obj_clear(%struct.obj_struct* sret, %struct.obj_struct*)

declare void @smpstr_add_now(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)
