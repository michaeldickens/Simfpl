; ModuleID = 'smpthrown.c'
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
%struct.smpthrown_struct = type { i8, %struct.obj_struct*, i64 }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@.str = private constant [7 x i8] c"Thrown\00"
@.str1 = private constant [8 x i8] c"gc_mark\00"
@.str2 = private constant [4 x i8] c"Nil\00"
@.str3 = private constant [5 x i8] c"to_s\00"
@.str4 = private constant [7 x i8] c"String\00"
@smptype_id_nil = common global i32 0, align 4
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@smptype_thrown = common global %struct.smptype_struct zeroinitializer, align 8
@.str5 = private constant [1 x i8] zeroinitializer
@.str6 = private constant [2 x i8] c"\0A\00"
@.str7 = private constant [13 x i8] c"<Thrown: %s>\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_id = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_nil = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_class = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_function = common global %struct.smptype_struct zeroinitializer, align 8
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

define i32 @smpthrown_create_class() nounwind {
  %thrown = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  call void @smp_getclass(%struct.obj_struct* sret %thrown, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %7 = bitcast %struct.obj_struct* %1 to i8*
  %8 = bitcast %struct.obj_struct* %thrown to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpthrown_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 64, i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %2)
  %9 = bitcast %struct.obj_struct* %4 to i8*
  %10 = bitcast %struct.obj_struct* %thrown to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpthrown_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), %struct.obj_struct* byval %5)
  ret i32 0
}

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smpthrown_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %i = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %23, %0
  %5 = load i64* %i, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %7 = load i8** %6, align 8
  %8 = bitcast i8* %7 to %struct.smpthrown_struct*
  %9 = getelementptr inbounds %struct.smpthrown_struct* %8, i32 0, i32 2
  %10 = load i64* %9, align 8
  %11 = icmp ult i64 %5, %10
  br i1 %11, label %12, label %26

; <label>:12                                      ; preds = %4
  %13 = load i64* %i, align 8
  %14 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %15 = load i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.smpthrown_struct*
  %17 = getelementptr inbounds %struct.smpthrown_struct* %16, i32 0, i32 1
  %18 = load %struct.obj_struct** %17, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 %13
  %20 = bitcast %struct.obj_struct* %3 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  br label %23

; <label>:23                                      ; preds = %12
  %24 = load i64* %i, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %i, align 8
  br label %4

; <label>:26                                      ; preds = %4
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpthrown_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %exc_str = alloca %struct.obj_struct, align 8
  %divider = alloca %struct.obj_struct, align 8
  %i = alloca i64, align 8
  %new_str = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %str = alloca i8*, align 8
  %8 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smpstr_init(%struct.obj_struct* sret %exc_str, i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0))
  %9 = getelementptr inbounds %struct.obj_struct* %exc_str, i32 0, i32 2
  %10 = load %struct.smptype_struct** %9, align 8
  %11 = getelementptr inbounds %struct.smptype_struct* %10, i32 0, i32 0
  %12 = load i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %0
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %exc_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %83

; <label>:18                                      ; preds = %0
  call void @smpstr_init(%struct.obj_struct* sret %divider, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0))
  %19 = getelementptr inbounds %struct.obj_struct* %divider, i32 0, i32 2
  %20 = load %struct.smptype_struct** %19, align 8
  %21 = getelementptr inbounds %struct.smptype_struct* %20, i32 0, i32 0
  %22 = load i8** %21, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %18
  %26 = bitcast %struct.obj_struct* %agg.result to i8*
  %27 = bitcast %struct.obj_struct* %divider to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  br label %83

; <label>:28                                      ; preds = %18
  store i64 0, i64* %i, align 8
  br label %29

; <label>:29                                      ; preds = %75, %28
  %30 = load i64* %i, align 8
  %31 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %32 = load i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.smpthrown_struct*
  %34 = getelementptr inbounds %struct.smpthrown_struct* %33, i32 0, i32 2
  %35 = load i64* %34, align 8
  %36 = icmp ult i64 %30, %35
  br i1 %36, label %37, label %78

; <label>:37                                      ; preds = %29
  %38 = load i64* %i, align 8
  %39 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %40 = load i8** %39, align 8
  %41 = bitcast i8* %40 to %struct.smpthrown_struct*
  %42 = getelementptr inbounds %struct.smpthrown_struct* %41, i32 0, i32 1
  %43 = load %struct.obj_struct** %42, align 8
  %44 = getelementptr inbounds %struct.obj_struct* %43, i64 %38
  %45 = bitcast %struct.obj_struct* %3 to i8*
  %46 = bitcast %struct.obj_struct* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %new_str, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %47 = getelementptr inbounds %struct.obj_struct* %new_str, i32 0, i32 2
  %48 = load %struct.smptype_struct** %47, align 8
  %49 = getelementptr inbounds %struct.smptype_struct* %48, i32 0, i32 0
  %50 = load i8** %49, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %37
  %54 = bitcast %struct.obj_struct* %agg.result to i8*
  %55 = bitcast %struct.obj_struct* %new_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  br label %83

; <label>:56                                      ; preds = %37
  %57 = load i64* %i, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %62

; <label>:59                                      ; preds = %56
  %60 = bitcast %struct.obj_struct* %4 to i8*
  %61 = bitcast %struct.obj_struct* %exc_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %5, %struct.obj_struct* byval %4, i32 1, %struct.obj_struct* %divider)
  br label %62

; <label>:62                                      ; preds = %59, %56
  %63 = bitcast %struct.obj_struct* %6 to i8*
  %64 = bitcast %struct.obj_struct* %exc_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %7, %struct.obj_struct* byval %6, i32 1, %struct.obj_struct* %new_str)
  %65 = getelementptr inbounds %struct.obj_struct* %exc_str, i32 0, i32 2
  %66 = load %struct.smptype_struct** %65, align 8
  %67 = getelementptr inbounds %struct.smptype_struct* %66, i32 0, i32 0
  %68 = load i8** %67, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

; <label>:71                                      ; preds = %62
  %72 = bitcast %struct.obj_struct* %agg.result to i8*
  %73 = bitcast %struct.obj_struct* %exc_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 32, i32 8, i1 false)
  br label %83

; <label>:74                                      ; preds = %62
  br label %75

; <label>:75                                      ; preds = %74
  %76 = load i64* %i, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %i, align 8
  br label %29

; <label>:78                                      ; preds = %29
  %79 = bitcast %struct.obj_struct* %8 to i8*
  %80 = bitcast %struct.obj_struct* %exc_str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 32, i32 8, i1 false)
  %81 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %8)
  %82 = call i32 (i8**, i8*, ...)* @asprintf(i8** %str, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i8* %81)
  call void @smpstr_init_ref(%struct.obj_struct* sret %agg.result, i8** %str)
  br label %83

; <label>:83                                      ; preds = %78, %71, %53, %25, %15
  ret void
}

define void @smpthrown_add_exception_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* %obj, %struct.obj_struct* byval %exc) nounwind {
  %1 = alloca %struct.obj_struct*, align 8
  %2 = alloca %struct.obj_struct, align 8
  %core = alloca %struct.smpthrown_struct*, align 8
  %other_core = alloca %struct.smpthrown_struct, align 8
  %old_length = alloca i64, align 8
  store %struct.obj_struct* %obj, %struct.obj_struct** %1, align 8
  %3 = load %struct.obj_struct** %1, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 2
  %5 = load %struct.smptype_struct** %4, align 8
  %6 = getelementptr inbounds %struct.smptype_struct* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = load i32* @smptype_id_nil, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %15

; <label>:10                                      ; preds = %0
  %11 = load %struct.obj_struct** %1, align 8
  %12 = bitcast %struct.obj_struct* %2 to i8*
  %13 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  call void @smpthrown_init(%struct.obj_struct* sret %11, i32 0, %struct.obj_struct* byval %2)
  %14 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %127

; <label>:15                                      ; preds = %0
  %16 = load %struct.obj_struct** %1, align 8
  %17 = getelementptr inbounds %struct.obj_struct* %16, i32 0, i32 3
  %18 = load i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.smpthrown_struct*
  store %struct.smpthrown_struct* %19, %struct.smpthrown_struct** %core, align 8
  %20 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 2
  %21 = load %struct.smptype_struct** %20, align 8
  %22 = getelementptr inbounds %struct.smptype_struct* %21, i32 0, i32 0
  %23 = load i8** %22, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %98

; <label>:26                                      ; preds = %15
  %27 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.smpthrown_struct*
  %30 = bitcast %struct.smpthrown_struct* %other_core to i8*
  %31 = bitcast %struct.smpthrown_struct* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 24, i32 8, i1 false)
  %32 = load %struct.smpthrown_struct** %core, align 8
  %33 = getelementptr inbounds %struct.smpthrown_struct* %32, i32 0, i32 2
  %34 = load i64* %33, align 8
  store i64 %34, i64* %old_length, align 8
  %35 = getelementptr inbounds %struct.smpthrown_struct* %other_core, i32 0, i32 2
  %36 = load i64* %35, align 8
  %37 = load %struct.smpthrown_struct** %core, align 8
  %38 = getelementptr inbounds %struct.smpthrown_struct* %37, i32 0, i32 2
  %39 = load i64* %38, align 8
  %40 = add i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load %struct.smpthrown_struct** %core, align 8
  %42 = getelementptr inbounds %struct.smpthrown_struct* %41, i32 0, i32 1
  %43 = load %struct.obj_struct** %42, align 8
  %44 = bitcast %struct.obj_struct* %43 to i8*
  %45 = load %struct.smpthrown_struct** %core, align 8
  %46 = getelementptr inbounds %struct.smpthrown_struct* %45, i32 0, i32 2
  %47 = load i64* %46, align 8
  %48 = mul i64 32, %47
  %49 = call i8* @smp_realloc(i8* %44, i64 %48)
  %50 = bitcast i8* %49 to %struct.obj_struct*
  %51 = load %struct.smpthrown_struct** %core, align 8
  %52 = getelementptr inbounds %struct.smpthrown_struct* %51, i32 0, i32 1
  store %struct.obj_struct* %50, %struct.obj_struct** %52, align 8
  %53 = load %struct.smpthrown_struct** %core, align 8
  %54 = getelementptr inbounds %struct.smpthrown_struct* %53, i32 0, i32 1
  %55 = load %struct.obj_struct** %54, align 8
  %56 = load i64* %old_length, align 8
  %57 = getelementptr inbounds %struct.obj_struct* %55, i64 %56
  %58 = bitcast %struct.obj_struct* %57 to i8*
  %59 = call i64 @llvm.objectsize.i64(i8* %58, i1 false)
  %60 = icmp ne i64 %59, -1
  br i1 %60, label %61, label %82

; <label>:61                                      ; preds = %26
  %62 = load %struct.smpthrown_struct** %core, align 8
  %63 = getelementptr inbounds %struct.smpthrown_struct* %62, i32 0, i32 1
  %64 = load %struct.obj_struct** %63, align 8
  %65 = load i64* %old_length, align 8
  %66 = getelementptr inbounds %struct.obj_struct* %64, i64 %65
  %67 = bitcast %struct.obj_struct* %66 to i8*
  %68 = getelementptr inbounds %struct.smpthrown_struct* %other_core, i32 0, i32 1
  %69 = load %struct.obj_struct** %68, align 8
  %70 = bitcast %struct.obj_struct* %69 to i8*
  %71 = getelementptr inbounds %struct.smpthrown_struct* %other_core, i32 0, i32 2
  %72 = load i64* %71, align 8
  %73 = mul i64 32, %72
  %74 = load %struct.smpthrown_struct** %core, align 8
  %75 = getelementptr inbounds %struct.smpthrown_struct* %74, i32 0, i32 1
  %76 = load %struct.obj_struct** %75, align 8
  %77 = load i64* %old_length, align 8
  %78 = getelementptr inbounds %struct.obj_struct* %76, i64 %77
  %79 = bitcast %struct.obj_struct* %78 to i8*
  %80 = call i64 @llvm.objectsize.i64(i8* %79, i1 false)
  %81 = call i8* @__memcpy_chk(i8* %67, i8* %70, i64 %73, i64 %80)
  br label %96

; <label>:82                                      ; preds = %26
  %83 = load %struct.smpthrown_struct** %core, align 8
  %84 = getelementptr inbounds %struct.smpthrown_struct* %83, i32 0, i32 1
  %85 = load %struct.obj_struct** %84, align 8
  %86 = load i64* %old_length, align 8
  %87 = getelementptr inbounds %struct.obj_struct* %85, i64 %86
  %88 = bitcast %struct.obj_struct* %87 to i8*
  %89 = getelementptr inbounds %struct.smpthrown_struct* %other_core, i32 0, i32 1
  %90 = load %struct.obj_struct** %89, align 8
  %91 = bitcast %struct.obj_struct* %90 to i8*
  %92 = getelementptr inbounds %struct.smpthrown_struct* %other_core, i32 0, i32 2
  %93 = load i64* %92, align 8
  %94 = mul i64 32, %93
  %95 = call i8* @__inline_memcpy_chk(i8* %88, i8* %91, i64 %94)
  br label %96

; <label>:96                                      ; preds = %82, %61
  %97 = phi i8* [ %81, %61 ], [ %95, %82 ]
  br label %125

; <label>:98                                      ; preds = %15
  %99 = load %struct.smpthrown_struct** %core, align 8
  %100 = getelementptr inbounds %struct.smpthrown_struct* %99, i32 0, i32 2
  %101 = load i64* %100, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load %struct.smpthrown_struct** %core, align 8
  %104 = getelementptr inbounds %struct.smpthrown_struct* %103, i32 0, i32 1
  %105 = load %struct.obj_struct** %104, align 8
  %106 = bitcast %struct.obj_struct* %105 to i8*
  %107 = load %struct.smpthrown_struct** %core, align 8
  %108 = getelementptr inbounds %struct.smpthrown_struct* %107, i32 0, i32 2
  %109 = load i64* %108, align 8
  %110 = mul i64 32, %109
  %111 = call i8* @smp_realloc(i8* %106, i64 %110)
  %112 = bitcast i8* %111 to %struct.obj_struct*
  %113 = load %struct.smpthrown_struct** %core, align 8
  %114 = getelementptr inbounds %struct.smpthrown_struct* %113, i32 0, i32 1
  store %struct.obj_struct* %112, %struct.obj_struct** %114, align 8
  %115 = load %struct.smpthrown_struct** %core, align 8
  %116 = getelementptr inbounds %struct.smpthrown_struct* %115, i32 0, i32 2
  %117 = load i64* %116, align 8
  %118 = sub i64 %117, 1
  %119 = load %struct.smpthrown_struct** %core, align 8
  %120 = getelementptr inbounds %struct.smpthrown_struct* %119, i32 0, i32 1
  %121 = load %struct.obj_struct** %120, align 8
  %122 = getelementptr inbounds %struct.obj_struct* %121, i64 %118
  %123 = bitcast %struct.obj_struct* %122 to i8*
  %124 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 32, i32 8, i1 false)
  br label %125

; <label>:125                                     ; preds = %98, %96
  %126 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %127

; <label>:127                                     ; preds = %125, %10
  ret void
}

define void @smpthrown_init(%struct.obj_struct* sret %agg.result, i32 %type, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i32, align 4
  %core = alloca %struct.smpthrown_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  store i32 %type, i32* %1, align 4
  %2 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %3 = load %struct.smptype_struct** %2, align 8
  %4 = getelementptr inbounds %struct.smptype_struct* %3, i32 0, i32 0
  %5 = load i8** %4, align 8
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %0
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  %10 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  br label %42

; <label>:11                                      ; preds = %0
  %12 = load i32* %1, align 4
  %13 = and i32 %12, 15
  %14 = shl i32 %13, 28
  %15 = ashr i32 %14, 28
  %16 = bitcast %struct.smpthrown_struct* %core to i32*
  %17 = and i32 %13, 15
  %18 = load i32* %16, align 8
  %19 = and i32 %18, -16
  %20 = or i32 %19, %17
  store i32 %20, i32* %16, align 8
  %21 = getelementptr inbounds %struct.smpthrown_struct* %core, i32 0, i32 2
  store i64 1, i64* %21, align 8
  %22 = getelementptr inbounds %struct.smpthrown_struct* %core, i32 0, i32 2
  %23 = load i64* %22, align 8
  %24 = mul i64 32, %23
  %25 = call i8* @smp_malloc(i64 %24)
  %26 = bitcast i8* %25 to %struct.obj_struct*
  %27 = getelementptr inbounds %struct.smpthrown_struct* %core, i32 0, i32 1
  store %struct.obj_struct* %26, %struct.obj_struct** %27, align 8
  %28 = getelementptr inbounds %struct.smpthrown_struct* %core, i32 0, i32 1
  %29 = load %struct.obj_struct** %28, align 8
  %30 = getelementptr inbounds %struct.obj_struct* %29, i64 0
  %31 = bitcast %struct.obj_struct* %30 to i8*
  %32 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_thrown)
  %33 = call i8* @smp_malloc(i64 24)
  %34 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.smpthrown_struct*
  %38 = bitcast %struct.smpthrown_struct* %37 to i8*
  %39 = bitcast %struct.smpthrown_struct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 24, i32 8, i1 false)
  %40 = bitcast %struct.obj_struct* %agg.result to i8*
  %41 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  br label %42

; <label>:42                                      ; preds = %11, %8
  ret void
}

declare i32 @strcmp(i8*, i8*)

declare i8* @smp_realloc(i8*, i64)

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

define i32 @smpthrown_contains_namep(%struct.obj_struct* byval %obj, i8* %name) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %name, i8** %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %28, %0
  %4 = load i64* %i, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smpthrown_struct*
  %8 = getelementptr inbounds %struct.smpthrown_struct* %7, i32 0, i32 2
  %9 = load i64* %8, align 8
  %10 = icmp ult i64 %4, %9
  br i1 %10, label %11, label %31

; <label>:11                                      ; preds = %3
  %12 = load i64* %i, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smpthrown_struct*
  %16 = getelementptr inbounds %struct.smpthrown_struct* %15, i32 0, i32 1
  %17 = load %struct.obj_struct** %16, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 %12
  %19 = getelementptr inbounds %struct.obj_struct* %18, i32 0, i32 2
  %20 = load %struct.smptype_struct** %19, align 8
  %21 = getelementptr inbounds %struct.smptype_struct* %20, i32 0, i32 0
  %22 = load i8** %21, align 8
  %23 = load i8** %2, align 8
  %24 = call i32 @strcmp(i8* %22, i8* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %11
  store i32 1, i32* %1
  br label %32

; <label>:27                                      ; preds = %11
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i64* %i, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %i, align 8
  br label %3

; <label>:31                                      ; preds = %3
  store i32 0, i32* %1
  br label %32

; <label>:32                                      ; preds = %31, %26
  %33 = load i32* %1
  ret i32 %33
}

declare i32 @gc_mark_recursive(i8*, %struct.obj_struct* byval)

declare i8* @smp_malloc(i64)

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

declare void @smpstr_init(%struct.obj_struct* sret, i8*)

declare void @smpobj_funcall(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, i32, %struct.obj_struct*)

declare void @smpstr_add_now(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare i32 @asprintf(i8**, i8*, ...)

declare i8* @smpstr_to_cstr(%struct.obj_struct* byval)

declare void @smpstr_init_ref(%struct.obj_struct* sret, i8**)
