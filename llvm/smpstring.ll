; ModuleID = 'smpstring.c'
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
%struct.smpstrstruct = type { i8*, i64 }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@.str = private constant [7 x i8] c"String\00"
@.str1 = private constant [2 x i8] c"+\00"
@.str2 = private constant [6 x i8] c"clear\00"
@.str3 = private constant [4 x i8] c"Nil\00"
@.str4 = private constant [7 x i8] c"equal?\00"
@.str5 = private constant [5 x i8] c"Bool\00"
@.str6 = private constant [7 x i8] c"Object\00"
@.str7 = private constant [8 x i8] c"reverse\00"
@.str8 = private constant [5 x i8] c"to_s\00"
@.str9 = private constant [6 x i8] c"write\00"
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@smptype_string = common global %struct.smptype_struct zeroinitializer, align 8
@.str10 = private constant [1 x i8] zeroinitializer
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

define i32 @smpstrcreate_class() nounwind {
  %strclass = alloca %struct.obj_struct, align 8
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
  call void @smp_getclass(%struct.obj_struct* sret %strclass, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %19 = bitcast %struct.obj_struct* %1 to i8*
  %20 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpstr_add, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %2)
  %21 = bitcast %struct.obj_struct* %4 to i8*
  %22 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpstr_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), %struct.obj_struct* byval %5)
  %23 = bitcast %struct.obj_struct* %7 to i8*
  %24 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpstr_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), %struct.obj_struct* byval %8)
  %25 = bitcast %struct.obj_struct* %10 to i8*
  %26 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpstr_reverse, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str7, i32 0, i32 0), %struct.obj_struct* byval %11)
  %27 = bitcast %struct.obj_struct* %13 to i8*
  %28 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpstr_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), %struct.obj_struct* byval %14)
  %29 = bitcast %struct.obj_struct* %16 to i8*
  %30 = bitcast %struct.obj_struct* %strclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %17, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpstr_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %18, %struct.obj_struct* byval %16, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), %struct.obj_struct* byval %17)
  ret i32 0
}

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smpstr_add(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.smptype_struct, align 8
  %str1 = alloca %struct.smpstrstruct, align 8
  %str2 = alloca %struct.smpstrstruct, align 8
  %length = alloca i64, align 8
  %str = alloca i8*, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smptype_struct** %8, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %11 = load %struct.smptype_struct** %10, align 8
  %12 = bitcast %struct.smptype_struct* %3 to i8*
  %13 = bitcast %struct.smptype_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 64, i32 8, i1 false)
  %14 = call i32 @smpobj_instancep_c(%struct.smptype_struct* %9, %struct.smptype_struct* byval %3)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %83

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %18 = load i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.smpstrstruct*
  %20 = bitcast %struct.smpstrstruct* %str1 to i8*
  %21 = bitcast %struct.smpstrstruct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  %22 = load %struct.obj_struct** %2, align 8
  %23 = getelementptr inbounds %struct.obj_struct* %22, i64 0
  %24 = getelementptr inbounds %struct.obj_struct* %23, i32 0, i32 3
  %25 = load i8** %24, align 8
  %26 = bitcast i8* %25 to %struct.smpstrstruct*
  %27 = bitcast %struct.smpstrstruct* %str2 to i8*
  %28 = bitcast %struct.smpstrstruct* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  %29 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 1
  %30 = load i64* %29, align 8
  %31 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 1
  %32 = load i64* %31, align 8
  %33 = add i64 %30, %32
  store i64 %33, i64* %length, align 8
  %34 = load i64* %length, align 8
  %35 = add i64 %34, 1
  %36 = call i8* @smp_malloc(i64 %35)
  store i8* %36, i8** %str, align 8
  %37 = load i8** %str, align 8
  %38 = call i64 @llvm.objectsize.i64(i8* %37, i1 false)
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %40, label %47

; <label>:40                                      ; preds = %16
  %41 = load i8** %str, align 8
  %42 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 0
  %43 = load i8** %42, align 8
  %44 = load i8** %str, align 8
  %45 = call i64 @llvm.objectsize.i64(i8* %44, i1 false)
  %46 = call i8* @__strcpy_chk(i8* %41, i8* %43, i64 %45)
  br label %52

; <label>:47                                      ; preds = %16
  %48 = load i8** %str, align 8
  %49 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 0
  %50 = load i8** %49, align 8
  %51 = call i8* @__inline_strcpy_chk(i8* %48, i8* %50)
  br label %52

; <label>:52                                      ; preds = %47, %40
  %53 = phi i8* [ %46, %40 ], [ %51, %47 ]
  %54 = load i8** %str, align 8
  %55 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 1
  %56 = load i64* %55, align 8
  %57 = getelementptr inbounds i8* %54, i64 %56
  %58 = call i64 @llvm.objectsize.i64(i8* %57, i1 false)
  %59 = icmp ne i64 %58, -1
  br i1 %59, label %60, label %73

; <label>:60                                      ; preds = %52
  %61 = load i8** %str, align 8
  %62 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 1
  %63 = load i64* %62, align 8
  %64 = getelementptr inbounds i8* %61, i64 %63
  %65 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 0
  %66 = load i8** %65, align 8
  %67 = load i8** %str, align 8
  %68 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 1
  %69 = load i64* %68, align 8
  %70 = getelementptr inbounds i8* %67, i64 %69
  %71 = call i64 @llvm.objectsize.i64(i8* %70, i1 false)
  %72 = call i8* @__strcpy_chk(i8* %64, i8* %66, i64 %71)
  br label %81

; <label>:73                                      ; preds = %52
  %74 = load i8** %str, align 8
  %75 = getelementptr inbounds %struct.smpstrstruct* %str1, i32 0, i32 1
  %76 = load i64* %75, align 8
  %77 = getelementptr inbounds i8* %74, i64 %76
  %78 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 0
  %79 = load i8** %78, align 8
  %80 = call i8* @__inline_strcpy_chk(i8* %77, i8* %79)
  br label %81

; <label>:81                                      ; preds = %73, %60
  %82 = phi i8* [ %72, %60 ], [ %80, %73 ]
  call void @smpstr_init_ref(%struct.obj_struct* sret %agg.result, i8** %str)
  br label %90

; <label>:83                                      ; preds = %0
  %84 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %85 = load %struct.smptype_struct** %84, align 8
  %86 = load %struct.obj_struct** %2, align 8
  %87 = getelementptr inbounds %struct.obj_struct* %86, i64 0
  %88 = bitcast %struct.obj_struct* %5 to i8*
  %89 = bitcast %struct.obj_struct* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %4, %struct.smptype_struct* %85, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %90

; <label>:90                                      ; preds = %83, %81
  ret void
}

define void @smpstr_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpstrstruct*
  %6 = getelementptr inbounds %struct.smpstrstruct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  call void @smp_free(i8* %7)
  %8 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.smpstrstruct*
  %11 = getelementptr inbounds %struct.smpstrstruct* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpstr_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smptype_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smptype_struct* %8, i32 0, i32 0
  %10 = load i8** %9, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

; <label>:13                                      ; preds = %0
  %14 = bitcast %struct.obj_struct* %3 to i8*
  %15 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  %16 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %3)
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = bitcast %struct.obj_struct* %4 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  %21 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %4)
  %22 = call i32 @strcmp(i8* %16, i8* %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %13
  %25 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  br label %28

; <label>:26                                      ; preds = %13, %0
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %28

; <label>:28                                      ; preds = %26, %24
  ret void
}

define void @smpstr_reverse(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %str = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %other = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  %res = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %3)
  store i8* %6, i8** %str, align 8
  %7 = load i8** %str, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = add i64 %8, 1
  %10 = mul i64 1, %9
  %11 = call i8* @smp_malloc(i64 %10)
  store i8* %11, i8** %other, align 8
  %12 = load i8** %str, align 8
  %13 = load i8** %str, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = getelementptr inbounds i8* %12, i64 %14
  store i8* %15, i8** %ptr, align 8
  store i32 0, i32* %i, align 4
  br label %16

; <label>:16                                      ; preds = %21, %0
  %17 = load i8** %ptr, align 8
  %18 = getelementptr inbounds i8* %17, i32 -1
  store i8* %18, i8** %ptr, align 8
  %19 = load i8** %str, align 8
  %20 = icmp uge i8* %18, %19
  br i1 %20, label %21, label %29

; <label>:21                                      ; preds = %16
  %22 = load i8** %ptr, align 8
  %23 = load i8* %22
  %24 = load i32* %i, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %i, align 4
  %26 = sext i32 %24 to i64
  %27 = load i8** %other, align 8
  %28 = getelementptr inbounds i8* %27, i64 %26
  store i8 %23, i8* %28
  br label %16

; <label>:29                                      ; preds = %16
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_string)
  %30 = load i8** %other, align 8
  %31 = call i32 @obj_init_str(%struct.obj_struct* %res, i8* %30)
  %32 = bitcast %struct.obj_struct* %agg.result to i8*
  %33 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  ret void
}

define void @smpstr_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = bitcast %struct.obj_struct* %agg.result to i8*
  %4 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  ret void
}

define void @smpstr_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca i8*
  %i = alloca i64, align 8
  %ptr = alloca i8*, align 8
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
  %11 = mul i64 2, %10
  %12 = add i64 3, %11
  %13 = mul i64 1, %12
  %14 = alloca i8, i64 %13, align 16
  store i64 0, i64* %i, align 8
  %15 = load i64* %i, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %i, align 8
  %17 = getelementptr inbounds i8* %14, i64 %15
  store i8 34, i8* %17
  %18 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %19 = load i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.smpstrstruct*
  %21 = getelementptr inbounds %struct.smpstrstruct* %20, i32 0, i32 0
  %22 = load i8** %21, align 8
  store i8* %22, i8** %ptr, align 8
  br label %23

; <label>:23                                      ; preds = %111, %0
  %24 = load i8** %ptr, align 8
  %25 = load i8* %24
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %114

; <label>:27                                      ; preds = %23
  %28 = load i8** %ptr, align 8
  %29 = load i8* %28
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 34
  br i1 %31, label %52, label %32

; <label>:32                                      ; preds = %27
  %33 = load i8** %ptr, align 8
  %34 = load i8* %33
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 92
  br i1 %36, label %52, label %37

; <label>:37                                      ; preds = %32
  %38 = load i8** %ptr, align 8
  %39 = load i8* %38
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %52, label %42

; <label>:42                                      ; preds = %37
  %43 = load i8** %ptr, align 8
  %44 = load i8* %43
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 13
  br i1 %46, label %52, label %47

; <label>:47                                      ; preds = %42
  %48 = load i8** %ptr, align 8
  %49 = load i8* %48
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 9
  br i1 %51, label %52, label %105

; <label>:52                                      ; preds = %47, %42, %37, %32, %27
  %53 = load i64* %i, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %i, align 8
  %55 = getelementptr inbounds i8* %14, i64 %53
  store i8 92, i8* %55
  %56 = load i8** %ptr, align 8
  %57 = load i8* %56
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 34
  br i1 %59, label %60, label %64

; <label>:60                                      ; preds = %52
  %61 = load i64* %i, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %i, align 8
  %63 = getelementptr inbounds i8* %14, i64 %61
  store i8 34, i8* %63
  br label %104

; <label>:64                                      ; preds = %52
  %65 = load i8** %ptr, align 8
  %66 = load i8* %65
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 92
  br i1 %68, label %69, label %73

; <label>:69                                      ; preds = %64
  %70 = load i64* %i, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %i, align 8
  %72 = getelementptr inbounds i8* %14, i64 %70
  store i8 92, i8* %72
  br label %103

; <label>:73                                      ; preds = %64
  %74 = load i8** %ptr, align 8
  %75 = load i8* %74
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %78, label %82

; <label>:78                                      ; preds = %73
  %79 = load i64* %i, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %i, align 8
  %81 = getelementptr inbounds i8* %14, i64 %79
  store i8 110, i8* %81
  br label %102

; <label>:82                                      ; preds = %73
  %83 = load i8** %ptr, align 8
  %84 = load i8* %83
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 13
  br i1 %86, label %87, label %91

; <label>:87                                      ; preds = %82
  %88 = load i64* %i, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %i, align 8
  %90 = getelementptr inbounds i8* %14, i64 %88
  store i8 114, i8* %90
  br label %101

; <label>:91                                      ; preds = %82
  %92 = load i8** %ptr, align 8
  %93 = load i8* %92
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 9
  br i1 %95, label %96, label %100

; <label>:96                                      ; preds = %91
  %97 = load i64* %i, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %i, align 8
  %99 = getelementptr inbounds i8* %14, i64 %97
  store i8 116, i8* %99
  br label %100

; <label>:100                                     ; preds = %96, %91
  br label %101

; <label>:101                                     ; preds = %100, %87
  br label %102

; <label>:102                                     ; preds = %101, %78
  br label %103

; <label>:103                                     ; preds = %102, %69
  br label %104

; <label>:104                                     ; preds = %103, %60
  br label %111

; <label>:105                                     ; preds = %47
  %106 = load i8** %ptr, align 8
  %107 = load i8* %106
  %108 = load i64* %i, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %i, align 8
  %110 = getelementptr inbounds i8* %14, i64 %108
  store i8 %107, i8* %110
  br label %111

; <label>:111                                     ; preds = %105, %104
  %112 = load i8** %ptr, align 8
  %113 = getelementptr inbounds i8* %112, i32 1
  store i8* %113, i8** %ptr, align 8
  br label %23

; <label>:114                                     ; preds = %23
  %115 = load i64* %i, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %i, align 8
  %117 = getelementptr inbounds i8* %14, i64 %115
  store i8 34, i8* %117
  %118 = load i64* %i, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %i, align 8
  %120 = getelementptr inbounds i8* %14, i64 %118
  store i8 0, i8* %120
  call void @smpstr_init(%struct.obj_struct* sret %agg.result, i8* %14)
  store i32 1, i32* %4
  %121 = load i8** %3
  call void @llvm.stackrestore(i8* %121)
  ret void
}

define i32 @obj_init_str(%struct.obj_struct* %obj, i8* %str) nounwind {
  %1 = alloca %struct.obj_struct*, align 8
  %2 = alloca i8*, align 8
  %core = alloca %struct.smpstrstruct, align 8
  store %struct.obj_struct* %obj, %struct.obj_struct** %1, align 8
  store i8* %str, i8** %2, align 8
  %3 = call i8* @smp_malloc(i64 16)
  %4 = load %struct.obj_struct** %1, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  store i8* %3, i8** %5, align 8
  %6 = load i8** %2, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  store i64 %7, i64* %8, align 8
  %9 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  %10 = load i64* %9, align 8
  %11 = add i64 %10, 1
  %12 = mul i64 1, %11
  %13 = call i8* @smp_malloc(i64 %12)
  %14 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %16 = load i8** %15, align 8
  %17 = call i64 @llvm.objectsize.i64(i8* %16, i1 false)
  %18 = icmp ne i64 %17, -1
  br i1 %18, label %19, label %27

; <label>:19                                      ; preds = %0
  %20 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %21 = load i8** %20, align 8
  %22 = load i8** %2, align 8
  %23 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %24 = load i8** %23, align 8
  %25 = call i64 @llvm.objectsize.i64(i8* %24, i1 false)
  %26 = call i8* @__strcpy_chk(i8* %21, i8* %22, i64 %25)
  br label %32

; <label>:27                                      ; preds = %0
  %28 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %29 = load i8** %28, align 8
  %30 = load i8** %2, align 8
  %31 = call i8* @__inline_strcpy_chk(i8* %29, i8* %30)
  br label %32

; <label>:32                                      ; preds = %27, %19
  %33 = phi i8* [ %26, %19 ], [ %31, %27 ]
  %34 = load %struct.obj_struct** %1, align 8
  %35 = getelementptr inbounds %struct.obj_struct* %34, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.smpstrstruct*
  %38 = bitcast %struct.smpstrstruct* %37 to i8*
  %39 = bitcast %struct.smpstrstruct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false)
  ret i32 0
}

declare i8* @smp_malloc(i64)

declare i64 @strlen(i8*)

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

declare i32 @smpobj_instancep_c(%struct.smptype_struct*, %struct.smptype_struct* byval)

define void @smpstr_init_ref(%struct.obj_struct* sret %agg.result, i8** %str) nounwind {
  %1 = alloca i8**, align 8
  %res = alloca %struct.obj_struct, align 8
  %core = alloca %struct.smpstrstruct, align 8
  store i8** %str, i8*** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_string)
  %2 = call i8* @smp_malloc(i64 16)
  %3 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %2, i8** %3, align 8
  %4 = load i8*** %1, align 8
  %5 = load i8** %4
  %6 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  store i8* %5, i8** %6, align 8
  %7 = load i8*** %1, align 8
  %8 = load i8** %7
  %9 = call i64 @strlen(i8* %8)
  %10 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.smpstrstruct*
  %14 = bitcast %struct.smpstrstruct* %13 to i8*
  %15 = bitcast %struct.smpstrstruct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  ret void
}

declare void @smpglobal_throw(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smptypeerr_init(%struct.obj_struct* sret, %struct.smptype_struct*, %struct.obj_struct* byval)

define void @smpstr_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.smptype_struct, align 8
  %core = alloca %struct.smpstrstruct*, align 8
  %str2 = alloca %struct.smpstrstruct, align 8
  %length = alloca i64, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smptype_struct** %8, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %11 = load %struct.smptype_struct** %10, align 8
  %12 = bitcast %struct.smptype_struct* %3 to i8*
  %13 = bitcast %struct.smptype_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 64, i32 8, i1 false)
  %14 = call i32 @smpobj_instancep_c(%struct.smptype_struct* %9, %struct.smptype_struct* byval %3)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %87

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %18 = load i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.smpstrstruct*
  store %struct.smpstrstruct* %19, %struct.smpstrstruct** %core, align 8
  %20 = load %struct.obj_struct** %2, align 8
  %21 = getelementptr inbounds %struct.obj_struct* %20, i64 0
  %22 = getelementptr inbounds %struct.obj_struct* %21, i32 0, i32 3
  %23 = load i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.smpstrstruct*
  %25 = bitcast %struct.smpstrstruct* %str2 to i8*
  %26 = bitcast %struct.smpstrstruct* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  %27 = load %struct.smpstrstruct** %core, align 8
  %28 = getelementptr inbounds %struct.smpstrstruct* %27, i32 0, i32 1
  %29 = load i64* %28, align 8
  %30 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 1
  %31 = load i64* %30, align 8
  %32 = add i64 %29, %31
  store i64 %32, i64* %length, align 8
  %33 = load %struct.smpstrstruct** %core, align 8
  %34 = getelementptr inbounds %struct.smpstrstruct* %33, i32 0, i32 0
  %35 = load i8** %34, align 8
  %36 = load i64* %length, align 8
  %37 = add i64 %36, 1
  %38 = call i8* @smp_realloc(i8* %35, i64 %37)
  %39 = load %struct.smpstrstruct** %core, align 8
  %40 = getelementptr inbounds %struct.smpstrstruct* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.smpstrstruct** %core, align 8
  %42 = getelementptr inbounds %struct.smpstrstruct* %41, i32 0, i32 0
  %43 = load i8** %42, align 8
  %44 = load %struct.smpstrstruct** %core, align 8
  %45 = getelementptr inbounds %struct.smpstrstruct* %44, i32 0, i32 1
  %46 = load i64* %45, align 8
  %47 = getelementptr inbounds i8* %43, i64 %46
  %48 = call i64 @llvm.objectsize.i64(i8* %47, i1 false)
  %49 = icmp ne i64 %48, -1
  br i1 %49, label %50, label %69

; <label>:50                                      ; preds = %16
  %51 = load %struct.smpstrstruct** %core, align 8
  %52 = getelementptr inbounds %struct.smpstrstruct* %51, i32 0, i32 0
  %53 = load i8** %52, align 8
  %54 = load %struct.smpstrstruct** %core, align 8
  %55 = getelementptr inbounds %struct.smpstrstruct* %54, i32 0, i32 1
  %56 = load i64* %55, align 8
  %57 = getelementptr inbounds i8* %53, i64 %56
  %58 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 0
  %59 = load i8** %58, align 8
  %60 = load %struct.smpstrstruct** %core, align 8
  %61 = getelementptr inbounds %struct.smpstrstruct* %60, i32 0, i32 0
  %62 = load i8** %61, align 8
  %63 = load %struct.smpstrstruct** %core, align 8
  %64 = getelementptr inbounds %struct.smpstrstruct* %63, i32 0, i32 1
  %65 = load i64* %64, align 8
  %66 = getelementptr inbounds i8* %62, i64 %65
  %67 = call i64 @llvm.objectsize.i64(i8* %66, i1 false)
  %68 = call i8* @__strcpy_chk(i8* %57, i8* %59, i64 %67)
  br label %80

; <label>:69                                      ; preds = %16
  %70 = load %struct.smpstrstruct** %core, align 8
  %71 = getelementptr inbounds %struct.smpstrstruct* %70, i32 0, i32 0
  %72 = load i8** %71, align 8
  %73 = load %struct.smpstrstruct** %core, align 8
  %74 = getelementptr inbounds %struct.smpstrstruct* %73, i32 0, i32 1
  %75 = load i64* %74, align 8
  %76 = getelementptr inbounds i8* %72, i64 %75
  %77 = getelementptr inbounds %struct.smpstrstruct* %str2, i32 0, i32 0
  %78 = load i8** %77, align 8
  %79 = call i8* @__inline_strcpy_chk(i8* %76, i8* %78)
  br label %80

; <label>:80                                      ; preds = %69, %50
  %81 = phi i8* [ %68, %50 ], [ %79, %69 ]
  %82 = load i64* %length, align 8
  %83 = load %struct.smpstrstruct** %core, align 8
  %84 = getelementptr inbounds %struct.smpstrstruct* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = bitcast %struct.obj_struct* %agg.result to i8*
  %86 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 32, i32 8, i1 false)
  br label %94

; <label>:87                                      ; preds = %0
  %88 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %89 = load %struct.smptype_struct** %88, align 8
  %90 = load %struct.obj_struct** %2, align 8
  %91 = getelementptr inbounds %struct.obj_struct* %90, i64 0
  %92 = bitcast %struct.obj_struct* %5 to i8*
  %93 = bitcast %struct.obj_struct* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %4, %struct.smptype_struct* %89, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %94

; <label>:94                                      ; preds = %87, %80
  ret void
}

declare i8* @smp_realloc(i8*, i64)

declare void @smp_free(i8*)

declare i32 @strcmp(i8*, i8*)

define i8* @smpstr_to_cstr(%struct.obj_struct* byval %obj) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.smpstrstruct*
  %4 = getelementptr inbounds %struct.smpstrstruct* %3, i32 0, i32 0
  %5 = load i8** %4, align 8
  ret i8* %5
}

define i32 @smpstr_equalp_cstr(%struct.obj_struct* byval %obj, i8* %str) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.obj_struct, align 8
  store i8* %str, i8** %1, align 8
  %3 = bitcast %struct.obj_struct* %2 to i8*
  %4 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  %5 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %2)
  %6 = load i8** %1, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6)
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

define void @smpstr_init(%struct.obj_struct* sret %agg.result, i8* %str) nounwind {
  %1 = alloca i8*, align 8
  %res = alloca %struct.obj_struct, align 8
  store i8* %str, i8** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_string)
  %2 = load i8** %1, align 8
  %3 = call i32 @obj_init_str(%struct.obj_struct* %res, i8* %2)
  %4 = bitcast %struct.obj_struct* %agg.result to i8*
  %5 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  ret void
}

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

define void @smpstr_init_length(%struct.obj_struct* sret %agg.result, i8* %str, i64 %length) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %res = alloca %struct.obj_struct, align 8
  %str_len = alloca i64, align 8
  %core = alloca %struct.smpstrstruct, align 8
  store i8* %str, i8** %1, align 8
  store i64 %length, i64* %2, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_string)
  %3 = call i8* @smp_malloc(i64 16)
  %4 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %3, i8** %4, align 8
  %5 = load i8** %1, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %str_len, align 8
  %7 = load i64* %str_len, align 8
  %8 = load i64* %2, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %0
  %11 = load i64* %str_len, align 8
  store i64 %11, i64* %2, align 8
  br label %12

; <label>:12                                      ; preds = %10, %0
  %13 = load i64* %2, align 8
  %14 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 1
  %16 = load i64* %15, align 8
  %17 = add i64 %16, 1
  %18 = mul i64 1, %17
  %19 = call i8* @smp_malloc(i64 %18)
  %20 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %22 = load i8** %21, align 8
  %23 = call i64 @llvm.objectsize.i64(i8* %22, i1 false)
  %24 = icmp ne i64 %23, -1
  br i1 %24, label %25, label %34

; <label>:25                                      ; preds = %12
  %26 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %27 = load i8** %26, align 8
  %28 = load i8** %1, align 8
  %29 = load i64* %2, align 8
  %30 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %31 = load i8** %30, align 8
  %32 = call i64 @llvm.objectsize.i64(i8* %31, i1 false)
  %33 = call i8* @__strncpy_chk(i8* %27, i8* %28, i64 %29, i64 %32)
  br label %40

; <label>:34                                      ; preds = %12
  %35 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %36 = load i8** %35, align 8
  %37 = load i8** %1, align 8
  %38 = load i64* %2, align 8
  %39 = call i8* @__inline_strncpy_chk(i8* %36, i8* %37, i64 %38)
  br label %40

; <label>:40                                      ; preds = %34, %25
  %41 = phi i8* [ %33, %25 ], [ %39, %34 ]
  %42 = load i64* %2, align 8
  %43 = getelementptr inbounds %struct.smpstrstruct* %core, i32 0, i32 0
  %44 = load i8** %43, align 8
  %45 = getelementptr inbounds i8* %44, i64 %42
  store i8 0, i8* %45
  %46 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %47 = load i8** %46, align 8
  %48 = bitcast i8* %47 to %struct.smpstrstruct*
  %49 = bitcast %struct.smpstrstruct* %48 to i8*
  %50 = bitcast %struct.smpstrstruct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 16, i32 8, i1 false)
  %51 = bitcast %struct.obj_struct* %agg.result to i8*
  %52 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 32, i32 8, i1 false)
  ret void
}

declare i8* @__strncpy_chk(i8*, i8*, i64, i64) nounwind

define internal i8* @__inline_strncpy_chk(i8* noalias %__dest, i8* noalias %__src, i64 %__len) nounwind inlinehint {
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
  %9 = call i8* @__strncpy_chk(i8* %4, i8* %5, i64 %6, i64 %8)
  ret i8* %9
}

define void @smpstr_init_fmt(%struct.obj_struct* sret %agg.result, i8* %format, ...) nounwind {
  %1 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %str = alloca i8*, align 8
  store i8* %format, i8** %1, align 8
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  %4 = load i8** %1, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %6 = call i32 @vasprintf(i8** %str, i8* %4, %struct.__va_list_tag* %5)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_end(i8* %8)
  call void @smpstr_init_ref(%struct.obj_struct* sret %agg.result, i8** %str)
  ret void
}

declare void @llvm.va_start(i8*) nounwind

declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*)

declare void @llvm.va_end(i8*) nounwind

define void @smpstrsubstring(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %start, i32 %length) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %str = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %copy = alloca i8*, align 8
  store i32 %start, i32* %1, align 4
  store i32 %length, i32* %2, align 4
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %3)
  store i8* %6, i8** %str, align 8
  %7 = load i32* %1, align 4
  %8 = load i32* %2, align 4
  %9 = add nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = load i8** %str, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = icmp ugt i64 %10, %12
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  %15 = load i8** %str, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = load i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %16, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

; <label>:21                                      ; preds = %14, %0
  %22 = load i32* %2, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %21
  call void @smpstr_init(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([1 x i8]* @.str10, i32 0, i32 0))
  br label %52

; <label>:25                                      ; preds = %21
  %26 = load i32* %2, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 1, %28
  %30 = call i8* @smp_malloc(i64 %29)
  store i8* %30, i8** %copy, align 8
  %31 = load i8** %copy, align 8
  %32 = call i64 @llvm.objectsize.i64(i8* %31, i1 false)
  %33 = icmp ne i64 %32, -1
  br i1 %33, label %34, label %43

; <label>:34                                      ; preds = %25
  %35 = load i8** %copy, align 8
  %36 = load i8** %str, align 8
  %37 = load i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8* %36, i64 %38
  %40 = load i8** %copy, align 8
  %41 = call i64 @llvm.objectsize.i64(i8* %40, i1 false)
  %42 = call i8* @__strcpy_chk(i8* %35, i8* %39, i64 %41)
  br label %50

; <label>:43                                      ; preds = %25
  %44 = load i8** %copy, align 8
  %45 = load i8** %str, align 8
  %46 = load i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8* %45, i64 %47
  %49 = call i8* @__inline_strcpy_chk(i8* %44, i8* %48)
  br label %50

; <label>:50                                      ; preds = %43, %34
  %51 = phi i8* [ %42, %34 ], [ %49, %43 ]
  call void @smpstr_init_ref(%struct.obj_struct* sret %agg.result, i8** %copy)
  br label %52

; <label>:52                                      ; preds = %50, %24
  ret void
}

declare i8* @llvm.stacksave() nounwind

declare void @llvm.stackrestore(i8*) nounwind
