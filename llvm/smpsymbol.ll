; ModuleID = 'smpsymbol.c'
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
%struct.smpstrstruct = type { i8*, i64 }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@.str = private constant [7 x i8] c"Symbol\00"
@smptype_string = common global %struct.smptype_struct zeroinitializer, align 8
@.str1 = private constant [5 x i8] c"to_s\00"
@.str2 = private constant [7 x i8] c"String\00"
@.str3 = private constant [6 x i8] c"write\00"
@.str4 = private constant [7 x i8] c"Thrown\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_id = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_nil = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_class = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_function = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_global = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_thrown = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_exception = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_pair = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_list = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_atom = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_collection = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_regmatch = common global %struct.smptype_struct zeroinitializer, align 8
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
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

define i32 @smpsymbol_create_class() nounwind {
  %symbol = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = call i32 @smpglobal_class(i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), %struct.smptype_struct* @smptype_string, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %symbol, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %8 = bitcast %struct.obj_struct* %1 to i8*
  %9 = bitcast %struct.obj_struct* %symbol to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpsymbol_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %2)
  %10 = bitcast %struct.obj_struct* %4 to i8*
  %11 = bitcast %struct.obj_struct* %symbol to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpsymbol_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), %struct.obj_struct* byval %5)
  ret i32 0
}

declare i32 @smpglobal_class(i8*, %struct.smptype_struct*, i32)

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smpsymbol_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpstrstruct*
  %6 = getelementptr inbounds %struct.smpstrstruct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  call void @smpstr_init(%struct.obj_struct* sret %agg.result, i8* %7)
  ret void
}

define void @smpsymbol_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %3
  %6 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %7 = load i8** %6, align 8
  %8 = bitcast i8* %7 to %struct.smpstrstruct*
  %9 = getelementptr inbounds %struct.smpstrstruct* %8, i32 0, i32 1
  %10 = load i64* %9, align 8
  %11 = add i64 %10, 2
  %12 = mul i64 1, %11
  %13 = alloca i8, i64 %12, align 16
  %14 = getelementptr inbounds i8* %13, i64 0
  store i8 96, i8* %14
  %15 = getelementptr inbounds i8* %13, i64 1
  %16 = call i64 @llvm.objectsize.i64(i8* %15, i1 false)
  %17 = icmp ne i64 %16, -1
  br i1 %17, label %18, label %28

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds i8* %13, i64 1
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.smpstrstruct*
  %23 = getelementptr inbounds %struct.smpstrstruct* %22, i32 0, i32 0
  %24 = load i8** %23, align 8
  %25 = getelementptr inbounds i8* %13, i64 1
  %26 = call i64 @llvm.objectsize.i64(i8* %25, i1 false)
  %27 = call i8* @__strcpy_chk(i8* %19, i8* %24, i64 %26)
  br label %36

; <label>:28                                      ; preds = %0
  %29 = getelementptr inbounds i8* %13, i64 1
  %30 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %31 = load i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.smpstrstruct*
  %33 = getelementptr inbounds %struct.smpstrstruct* %32, i32 0, i32 0
  %34 = load i8** %33, align 8
  %35 = call i8* @__inline_strcpy_chk(i8* %29, i8* %34)
  br label %36

; <label>:36                                      ; preds = %28, %18
  %37 = phi i8* [ %27, %18 ], [ %35, %28 ]
  call void @smpstr_init(%struct.obj_struct* sret %agg.result, i8* %13)
  store i32 1, i32* %4
  %38 = load i8** %3
  call void @llvm.stackrestore(i8* %38)
  ret void
}

define void @smpsymbol_init(%struct.obj_struct* sret %agg.result, i8* %str) nounwind {
  %1 = alloca i8*, align 8
  %res = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %core = alloca %struct.smpstrstruct, align 8
  store i8* %str, i8** %1, align 8
  call void @smp_getclass(%struct.obj_struct* sret %2, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %3 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smptype_struct*
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* %5)
  %6 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %7 = load %struct.smptype_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smptype_struct* %7, i32 0, i32 0
  %9 = load i8** %8, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %0
  %13 = bitcast %struct.obj_struct* %agg.result to i8*
  %14 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  br label %51

; <label>:15                                      ; preds = %0
  %16 = load i8** %1, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  %20 = load i64* %19, align 8
  %21 = add i64 %20, 1
  %22 = mul i64 1, %21
  %23 = call i8* @smp_malloc(i64 %22)
  %24 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %26 = load i8** %25, align 8
  %27 = call i64 @llvm.objectsize.i64(i8* %26, i1 false)
  %28 = icmp ne i64 %27, -1
  br i1 %28, label %29, label %37

; <label>:29                                      ; preds = %15
  %30 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %31 = load i8** %30, align 8
  %32 = load i8** %1, align 8
  %33 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %34 = load i8** %33, align 8
  %35 = call i64 @llvm.objectsize.i64(i8* %34, i1 false)
  %36 = call i8* @__strcpy_chk(i8* %31, i8* %32, i64 %35)
  br label %42

; <label>:37                                      ; preds = %15
  %38 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %39 = load i8** %38, align 8
  %40 = load i8** %1, align 8
  %41 = call i8* @__inline_strcpy_chk(i8* %39, i8* %40)
  br label %42

; <label>:42                                      ; preds = %37, %29
  %43 = phi i8* [ %36, %29 ], [ %41, %37 ]
  %44 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %45 = load i8** %44, align 8
  %46 = bitcast i8* %45 to %struct.smpstrstruct*
  %47 = bitcast %struct.smpstrstruct* %46 to i8*
  %48 = bitcast %struct.smpstrstruct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 16, i32 8, i1 false)
  %49 = bitcast %struct.obj_struct* %agg.result to i8*
  %50 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  br label %51

; <label>:51                                      ; preds = %42, %12
  ret void
}

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

declare i32 @strcmp(i8*, i8*)

declare i64 @strlen(i8*)

declare i8* @smp_malloc(i64)

declare i64 @llvm.objectsize.i64(i8*, i1) nounwind readonly

declare i8* @__strcpy_chk(i8*, i8*, i64) nounwind

define internal i8* @__inline_strcpy_chk(i8* noalias %__dest, i8* noalias %__src) nounwind inlinehint {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %__dest, i8** %1, align 8
  store i8* %__src, i8** %2, align 8
  %3 = load i8** %1, align 8
  %4 = load i8** %2, align 8
  %5 = load i8** %1, align 8
  %6 = call i64 @llvm.objectsize.i64(i8* %5, i1 false)
  %7 = call i8* @__strcpy_chk(i8* %3, i8* %4, i64 %6)
  ret i8* %7
}

define i8* @smpsymbol_to_cstr(%struct.obj_struct* byval %obj) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.smpstrstruct*
  %4 = getelementptr inbounds %struct.smpstrstruct* %3, i32 0, i32 0
  %5 = load i8** %4, align 8
  ret i8* %5
}

declare void @smpstr_init(%struct.obj_struct* sret, i8*)

declare i8* @llvm.stacksave() nounwind

declare void @llvm.stackrestore(i8*) nounwind
