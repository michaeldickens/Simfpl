; ModuleID = 'smpglobal.c'
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
%struct.smppair_struct = type { %struct.obj_struct, %struct.obj_struct* }
%struct.smpstrstruct = type { i8*, i64 }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@__stdinp = external global %struct.__sFILE*
@smp_stdin = common global %struct.__sFILE* null, align 8
@__stdoutp = external global %struct.__sFILE*
@smp_stdout = common global %struct.__sFILE* null, align 8
@__stderrp = external global %struct.__sFILE*
@smp_stderr = common global %struct.__sFILE* null, align 8
@.str = private constant [7 x i8] c"Global\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@smp_global = common global %struct.obj_struct zeroinitializer, align 8
@smptype_global = common global %struct.smptype_struct zeroinitializer, align 8
@.str1 = private constant [5 x i8] c"self\00"
@.str2 = private constant [6 x i8] c"catch\00"
@.str3 = private constant [4 x i8] c"Nil\00"
@.str4 = private constant [10 x i8] c"Exception\00"
@.str5 = private constant [5 x i8] c"list\00"
@.str6 = private constant [5 x i8] c"List\00"
@.str7 = private constant [6 x i8] c"&rest\00"
@.str8 = private constant [7 x i8] c"Object\00"
@.str9 = private constant [6 x i8] c"print\00"
@.str10 = private constant [7 x i8] c"printf\00"
@.str11 = private constant [7 x i8] c"String\00"
@.str12 = private constant [8 x i8] c"println\00"
@.str13 = private constant [8 x i8] c"sprintf\00"
@.str14 = private constant [6 x i8] c"throw\00"
@.str15 = private constant [7 x i8] c"Thrown\00"
@.str16 = private constant [4 x i8] c"nil\00"
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@.str17 = private constant [5 x i8] c"true\00"
@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@.str18 = private constant [24 x i8] c"ImplementationException\00"
@.str19 = private constant [25 x i8] c"catch() not implemented.\00"
@smptype_next_id = common global i32 0, align 4
@smptype_ids = common global %struct.minihash_struct zeroinitializer, align 8
@.str20 = private constant [36 x i8] c"name: %st, parents: %st, body: %st\0A\00"
@.str21 = private constant [5 x i8] c"to_s\00"
@.str22 = private constant [3 x i8] c"%s\00"
@.str23 = private constant [2 x i8] c"\0A\00"
@smptype_id_nil = common global i32 0, align 4
@.str24 = private constant [22 x i8] c"StringFormatException\00"
@.str25 = private constant [67 x i8] c"Not enough arguments for formatted output (%d expected, %d found).\00"
@.str26 = private constant [48 x i8] c"Undefined format %s (does not begin with '%%').\00"
@.str27 = private constant [6 x i8] c"Float\00"
@.str28 = private constant [6 x i8] c"write\00"
@.str29 = private constant [26 x i8] c"Undefined format type %c.\00"
@smptype_id = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_nil = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_class = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_function = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_thrown = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_exception = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_string = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_pair = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_list = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_atom = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_collection = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_regmatch = common global %struct.smptype_struct zeroinitializer, align 8
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

define i32 @smpglobal_create_class() nounwind {
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
  %19 = alloca %struct.obj_struct, align 8
  %20 = alloca %struct.obj_struct, align 8
  %21 = alloca %struct.obj_struct, align 8
  %22 = alloca %struct.obj_struct, align 8
  %23 = alloca %struct.obj_struct, align 8
  %24 = alloca %struct.obj_struct, align 8
  %25 = alloca %struct.obj_struct, align 8
  %26 = alloca %struct.obj_struct, align 8
  %27 = alloca %struct.obj_struct, align 8
  %28 = alloca %struct.obj_struct, align 8
  %29 = load %struct.__sFILE** @__stdinp, align 8
  store %struct.__sFILE* %29, %struct.__sFILE** @smp_stdin, align 8
  %30 = load %struct.__sFILE** @__stdoutp, align 8
  store %struct.__sFILE* %30, %struct.__sFILE** @smp_stdout, align 8
  %31 = load %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %31, %struct.__sFILE** @smp_stderr, align 8
  %32 = call i32 @smpglobal_class(i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 96)
  call void @smp_getclass(%struct.obj_struct* sret @smp_global, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %33 = load i8** getelementptr inbounds (%struct.obj_struct* @smp_global, i32 0, i32 3), align 8
  %34 = bitcast i8* %33 to %struct.smptype_struct*
  %35 = bitcast %struct.smptype_struct* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_global to i8*), i8* %35, i64 64, i32 8, i1 false)
  %36 = bitcast %struct.obj_struct* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  %37 = call i32 @scope_add(i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %1)
  %38 = bitcast %struct.obj_struct* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %3, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpglobal_catch_arg, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %4, %struct.obj_struct* byval %2, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), %struct.obj_struct* byval %3)
  %39 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %6, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpglobal_list, i32 3, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %7, %struct.obj_struct* byval %5, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), %struct.obj_struct* byval %6)
  %40 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %9, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpglobal_print_arg, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %10, %struct.obj_struct* byval %8, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), %struct.obj_struct* byval %9)
  %41 = bitcast %struct.obj_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %12, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smp_printf_arg, i32 4, i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %13, %struct.obj_struct* byval %11, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0), %struct.obj_struct* byval %12)
  %42 = bitcast %struct.obj_struct* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %15, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpglobal_println_arg, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %16, %struct.obj_struct* byval %14, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %15)
  %43 = bitcast %struct.obj_struct* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %18, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpglobal_sprintf_arg, i32 4, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %19, %struct.obj_struct* byval %17, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str13, i32 0, i32 0), %struct.obj_struct* byval %18)
  %44 = bitcast %struct.obj_struct* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %21, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpglobal_throw_arg, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %22, %struct.obj_struct* byval %20, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0), %struct.obj_struct* byval %21)
  %45 = bitcast %struct.obj_struct* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  %46 = bitcast %struct.obj_struct* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smptype_defvar(%struct.obj_struct* sret %25, %struct.obj_struct* byval %23, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), %struct.obj_struct* byval %24)
  %47 = bitcast %struct.obj_struct* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  %48 = bitcast %struct.obj_struct* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smptype_defvar(%struct.obj_struct* sret %28, %struct.obj_struct* byval %26, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), %struct.obj_struct* byval %27)
  ret i32 0
}

define i32 @smpglobal_class(i8* %name, %struct.smptype_struct* %parent, i32 %flags) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.smptype_struct*, align 8
  %4 = alloca i32, align 4
  %parents = alloca %struct.smptype_struct**, align 8
  %parents_length = alloca i64, align 8
  store i8* %name, i8** %2, align 8
  store %struct.smptype_struct* %parent, %struct.smptype_struct** %3, align 8
  store i32 %flags, i32* %4, align 4
  %5 = load %struct.smptype_struct** %3, align 8
  %6 = icmp ne %struct.smptype_struct* %5, null
  br i1 %6, label %7, label %19

; <label>:7                                       ; preds = %0
  %8 = load %struct.smptype_struct** %3, align 8
  %9 = bitcast %struct.smptype_struct* %8 to i8*
  %10 = getelementptr i8* %9, i32 12
  %11 = bitcast i8* %10 to i32*
  %12 = load i32* %11, align 4
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 1
  %15 = shl i32 %14, 31
  %16 = ashr i32 %15, 31
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %7
  store i32 1, i32* %1
  br label %34

; <label>:19                                      ; preds = %7, %0
  %20 = load %struct.smptype_struct** %3, align 8
  %21 = icmp eq %struct.smptype_struct* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %19
  store %struct.smptype_struct** null, %struct.smptype_struct*** %parents, align 8
  store i64 0, i64* %parents_length, align 8
  br label %28

; <label>:23                                      ; preds = %19
  %24 = call i8* @smp_malloc(i64 8)
  %25 = bitcast i8* %24 to %struct.smptype_struct**
  store %struct.smptype_struct** %25, %struct.smptype_struct*** %parents, align 8
  %26 = load %struct.smptype_struct** %3, align 8
  %27 = load %struct.smptype_struct*** %parents, align 8
  store %struct.smptype_struct* %26, %struct.smptype_struct** %27
  store i64 1, i64* %parents_length, align 8
  br label %28

; <label>:28                                      ; preds = %23, %22
  %29 = load i8** %2, align 8
  %30 = load %struct.smptype_struct*** %parents, align 8
  %31 = load i64* %parents_length, align 8
  %32 = load i32* %4, align 4
  %33 = call i32 @smpglobal_class_multiple(i8* %29, %struct.smptype_struct** %30, i64 %31, i32 %32)
  store i32 %33, i32* %1
  br label %34

; <label>:34                                      ; preds = %28, %18
  %35 = load i32* %1
  ret i32 %35
}

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i32 @scope_add(i8*, %struct.obj_struct* byval)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smpglobal_catch_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([24 x i8]* @.str18, i32 0, i32 0))
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([25 x i8]* @.str19, i32 0, i32 0))
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

define void @smpglobal_list(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = load %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %3, i64 0
  %5 = bitcast %struct.obj_struct* %agg.result to i8*
  %6 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  ret void
}

define void @smpglobal_print_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = load %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i64 0
  %6 = bitcast %struct.obj_struct* %3 to i8*
  %7 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @smp_print(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

define void @smp_printf_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = bitcast %struct.obj_struct* %3 to i8*
  %7 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %3)
  %9 = load i32* %1, align 4
  %10 = load %struct.obj_struct** %2, align 8
  call void (%struct.obj_struct*, i8*, ...)* @smpglobal_sprintf(%struct.obj_struct* sret %res, i8* %8, i32 %9, %struct.obj_struct* %10)
  %11 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %12 = load %struct.smptype_struct** %11, align 8
  %13 = getelementptr inbounds %struct.smptype_struct* %12, i32 0, i32 0
  %14 = load i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17                                      ; preds = %0
  %18 = bitcast %struct.obj_struct* %agg.result to i8*
  %19 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  br label %24

; <label>:20                                      ; preds = %0
  %21 = bitcast %struct.obj_struct* %4 to i8*
  %22 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void @smp_print(%struct.obj_struct* sret %5, %struct.obj_struct* byval %4)
  %23 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %24

; <label>:24                                      ; preds = %20, %17
  ret void
}

define void @smpglobal_println_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = load %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i64 0
  %6 = bitcast %struct.obj_struct* %3 to i8*
  %7 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @smp_println(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

define void @smpglobal_sprintf_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %listtype = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %format = alloca i8*, align 8
  %list = alloca %struct.obj_struct, align 8
  %str_len = alloca i64, align 8
  %str = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %arglen = alloca i64, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  %11 = alloca %struct.obj_struct, align 8
  %fmt_end = alloca i8*, align 8
  %fmt_res = alloca %struct.obj_struct, align 8
  %12 = alloca %struct.obj_struct, align 8
  %13 = alloca %struct.obj_struct, align 8
  %14 = alloca %struct.obj_struct, align 8
  %15 = alloca %struct.obj_struct, align 8
  %16 = alloca %struct.obj_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = getelementptr inbounds %struct.obj_struct* %18, i32 0, i32 2
  %20 = load %struct.smptype_struct** %19, align 8
  %21 = call i32 @smpobj_instancep_cstr(%struct.smptype_struct* %20, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %45, label %23

; <label>:23                                      ; preds = %0
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 2
  %27 = load %struct.smptype_struct** %26, align 8
  %28 = getelementptr inbounds %struct.smptype_struct* %27, i32 0, i32 0
  %29 = load i8** %28, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0))
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

; <label>:32                                      ; preds = %23
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = bitcast %struct.obj_struct* %agg.result to i8*
  %36 = bitcast %struct.obj_struct* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  br label %235

; <label>:37                                      ; preds = %23
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0))
  %38 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %39 = load i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.smptype_struct*
  %41 = load %struct.obj_struct** %2, align 8
  %42 = getelementptr inbounds %struct.obj_struct* %41, i64 0
  %43 = bitcast %struct.obj_struct* %5 to i8*
  %44 = bitcast %struct.obj_struct* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %40, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %235

; <label>:45                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %listtype, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0))
  %46 = load %struct.obj_struct** %2, align 8
  %47 = getelementptr inbounds %struct.obj_struct* %46, i64 0
  %48 = bitcast %struct.obj_struct* %6 to i8*
  %49 = bitcast %struct.obj_struct* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 32, i32 8, i1 false)
  %50 = call i32 @smpobj_instancep_cint(%struct.obj_struct* byval %6, i32 1, %struct.obj_struct* %listtype)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

; <label>:52                                      ; preds = %45
  %53 = getelementptr inbounds %struct.obj_struct* %listtype, i32 0, i32 3
  %54 = load i8** %53, align 8
  %55 = bitcast i8* %54 to %struct.smptype_struct*
  %56 = load %struct.obj_struct** %2, align 8
  %57 = getelementptr inbounds %struct.obj_struct* %56, i64 0
  %58 = bitcast %struct.obj_struct* %8 to i8*
  %59 = bitcast %struct.obj_struct* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %7, %struct.smptype_struct* %55, %struct.obj_struct* byval %8)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %7)
  br label %235

; <label>:60                                      ; preds = %45
  %61 = load %struct.obj_struct** %2, align 8
  %62 = getelementptr inbounds %struct.obj_struct* %61, i64 0
  %63 = getelementptr inbounds %struct.obj_struct* %62, i32 0, i32 3
  %64 = load i8** %63, align 8
  %65 = bitcast i8* %64 to %struct.smpstrstruct*
  %66 = getelementptr inbounds %struct.smpstrstruct* %65, i32 0, i32 0
  %67 = load i8** %66, align 8
  store i8* %67, i8** %format, align 8
  %68 = load %struct.obj_struct** %2, align 8
  %69 = getelementptr inbounds %struct.obj_struct* %68, i64 1
  %70 = bitcast %struct.obj_struct* %list to i8*
  %71 = bitcast %struct.obj_struct* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 32, i32 8, i1 false)
  store i64 16, i64* %str_len, align 8
  %72 = load i64* %str_len, align 8
  %73 = add i64 %72, 1
  %74 = mul i64 1, %73
  %75 = call i8* @smp_malloc(i64 %74)
  store i8* %75, i8** %str, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %j, align 8
  %76 = load i8** %format, align 8
  store i8* %76, i8** %ptr, align 8
  %77 = bitcast %struct.obj_struct* %9 to i8*
  %78 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 32, i32 8, i1 false)
  %79 = call i64 @smplist_length_clong(%struct.obj_struct* byval %9)
  store i64 %79, i64* %arglen, align 8
  br label %80

; <label>:80                                      ; preds = %224, %100, %60
  %81 = load i8** %ptr, align 8
  %82 = load i8* %81
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %227

; <label>:84                                      ; preds = %80
  %85 = load i8** %ptr, align 8
  %86 = load i8* %85
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 37
  br i1 %88, label %89, label %108

; <label>:89                                      ; preds = %84
  %90 = load i64* %i, align 8
  %91 = load i64* %str_len, align 8
  %92 = icmp uge i64 %90, %91
  br i1 %92, label %93, label %100

; <label>:93                                      ; preds = %89
  %94 = load i8** %str, align 8
  %95 = load i64* %str_len, align 8
  %96 = mul i64 %95, 2
  store i64 %96, i64* %str_len, align 8
  %97 = add i64 %96, 1
  %98 = mul i64 1, %97
  %99 = call i8* @smp_realloc(i8* %94, i64 %98)
  store i8* %99, i8** %str, align 8
  br label %100

; <label>:100                                     ; preds = %93, %89
  %101 = load i8** %ptr, align 8
  %102 = getelementptr inbounds i8* %101, i32 1
  store i8* %102, i8** %ptr, align 8
  %103 = load i8* %101
  %104 = load i64* %i, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %i, align 8
  %106 = load i8** %str, align 8
  %107 = getelementptr inbounds i8* %106, i64 %104
  store i8 %103, i8* %107
  br label %80

; <label>:108                                     ; preds = %84
  %109 = load i64* %j, align 8
  %110 = load i64* %arglen, align 8
  %111 = icmp uge i64 %109, %110
  br i1 %111, label %112, label %138

; <label>:112                                     ; preds = %108
  %113 = load i64* %j, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %j, align 8
  br label %115

; <label>:115                                     ; preds = %134, %112
  %116 = load i8** %ptr, align 8
  %117 = getelementptr inbounds i8* %116, i32 1
  store i8* %117, i8** %ptr, align 8
  %118 = load i8* %116
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %135

; <label>:120                                     ; preds = %115
  %121 = load i8** %ptr, align 8
  %122 = load i8* %121
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 37
  br i1 %124, label %125, label %134

; <label>:125                                     ; preds = %120
  %126 = load i8** %ptr, align 8
  %127 = getelementptr inbounds i8* %126, i64 1
  %128 = load i8* %127
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 37
  br i1 %130, label %131, label %134

; <label>:131                                     ; preds = %125
  %132 = load i64* %j, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %j, align 8
  br label %134

; <label>:134                                     ; preds = %131, %125, %120
  br label %115

; <label>:135                                     ; preds = %115
  call void @smp_getclass(%struct.obj_struct* sret %11, i8* getelementptr inbounds ([22 x i8]* @.str24, i32 0, i32 0))
  %136 = load i64* %j, align 8
  %137 = load i64* %arglen, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %10, %struct.obj_struct* byval %11, i8* getelementptr inbounds ([67 x i8]* @.str25, i32 0, i32 0), i64 %136, i64 %137)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %10)
  br label %235

; <label>:138                                     ; preds = %108
  %139 = load i8** %ptr, align 8
  store i8* %139, i8** %fmt_end, align 8
  %140 = getelementptr inbounds %struct.obj_struct* %list, i32 0, i32 3
  %141 = load i8** %140, align 8
  %142 = bitcast i8* %141 to %struct.smppair_struct*
  %143 = getelementptr inbounds %struct.smppair_struct* %142, i32 0, i32 0
  %144 = bitcast %struct.obj_struct* %12 to i8*
  %145 = bitcast %struct.obj_struct* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 32, i32 8, i1 false)
  %146 = load i8** %ptr, align 8
  call void @obj_put_fmt(%struct.obj_struct* sret %fmt_res, %struct.obj_struct* byval %12, i8* %146, i8** %fmt_end)
  %147 = getelementptr inbounds %struct.obj_struct* %fmt_res, i32 0, i32 2
  %148 = load %struct.smptype_struct** %147, align 8
  %149 = getelementptr inbounds %struct.smptype_struct* %148, i32 0, i32 0
  %150 = load i8** %149, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0))
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

; <label>:153                                     ; preds = %138
  %154 = bitcast %struct.obj_struct* %agg.result to i8*
  %155 = bitcast %struct.obj_struct* %fmt_res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 32, i32 8, i1 false)
  br label %235

; <label>:156                                     ; preds = %138
  %157 = getelementptr inbounds %struct.obj_struct* %fmt_res, i32 0, i32 2
  %158 = load %struct.smptype_struct** %157, align 8
  %159 = getelementptr inbounds %struct.smptype_struct* %158, i32 0, i32 0
  %160 = load i8** %159, align 8
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0))
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %171

; <label>:165                                     ; preds = %156
  call void @smp_getclass(%struct.obj_struct* sret %14, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0))
  %166 = getelementptr inbounds %struct.obj_struct* %14, i32 0, i32 3
  %167 = load i8** %166, align 8
  %168 = bitcast i8* %167 to %struct.smptype_struct*
  %169 = bitcast %struct.obj_struct* %15 to i8*
  %170 = bitcast %struct.obj_struct* %fmt_res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* %170, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %13, %struct.smptype_struct* %168, %struct.obj_struct* byval %15)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %13)
  br label %235

; <label>:171                                     ; preds = %156
  br label %172

; <label>:172                                     ; preds = %171
  br label %173

; <label>:173                                     ; preds = %183, %172
  %174 = getelementptr inbounds %struct.obj_struct* %fmt_res, i32 0, i32 3
  %175 = load i8** %174, align 8
  %176 = bitcast i8* %175 to %struct.smpstrstruct*
  %177 = getelementptr inbounds %struct.smpstrstruct* %176, i32 0, i32 1
  %178 = load i64* %177, align 8
  %179 = load i64* %str_len, align 8
  %180 = load i64* %i, align 8
  %181 = sub i64 %179, %180
  %182 = icmp ugt i64 %178, %181
  br i1 %182, label %183, label %189

; <label>:183                                     ; preds = %173
  %184 = load i8** %str, align 8
  %185 = load i64* %str_len, align 8
  %186 = mul i64 %185, 2
  store i64 %186, i64* %str_len, align 8
  %187 = mul i64 1, %186
  %188 = call i8* @smp_realloc(i8* %184, i64 %187)
  store i8* %188, i8** %str, align 8
  br label %173

; <label>:189                                     ; preds = %173
  %190 = load i8** %str, align 8
  %191 = load i64* %i, align 8
  %192 = getelementptr inbounds i8* %190, i64 %191
  %193 = load i8** %str, align 8
  %194 = load i64* %i, align 8
  %195 = getelementptr inbounds i8* %193, i64 %194
  %196 = call i64 @llvm.objectsize.i64(i8* %195, i1 false)
  %197 = bitcast %struct.obj_struct* %16 to i8*
  %198 = bitcast %struct.obj_struct* %fmt_res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* %198, i64 32, i32 8, i1 false)
  %199 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %16)
  %200 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %192, i32 0, i64 %196, i8* getelementptr inbounds ([3 x i8]* @.str22, i32 0, i32 0), i8* %199)
  %201 = load i8** %fmt_end, align 8
  store i8* %201, i8** %ptr, align 8
  %202 = load i8** %str, align 8
  %203 = load i64* %i, align 8
  %204 = getelementptr inbounds i8* %202, i64 %203
  %205 = call i64 @strlen(i8* %204)
  %206 = load i64* %i, align 8
  %207 = add i64 %206, %205
  store i64 %207, i64* %i, align 8
  %208 = getelementptr inbounds %struct.obj_struct* %list, i32 0, i32 3
  %209 = load i8** %208, align 8
  %210 = bitcast i8* %209 to %struct.smppair_struct*
  %211 = getelementptr inbounds %struct.smppair_struct* %210, i32 0, i32 1
  %212 = load %struct.obj_struct** %211, align 8
  %213 = icmp ne %struct.obj_struct* %212, null
  br i1 %213, label %214, label %222

; <label>:214                                     ; preds = %189
  %215 = getelementptr inbounds %struct.obj_struct* %list, i32 0, i32 3
  %216 = load i8** %215, align 8
  %217 = bitcast i8* %216 to %struct.smppair_struct*
  %218 = getelementptr inbounds %struct.smppair_struct* %217, i32 0, i32 1
  %219 = load %struct.obj_struct** %218, align 8
  %220 = bitcast %struct.obj_struct* %list to i8*
  %221 = bitcast %struct.obj_struct* %219 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %221, i64 32, i32 8, i1 false)
  br label %224

; <label>:222                                     ; preds = %189
  %223 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %223, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %224

; <label>:224                                     ; preds = %222, %214
  %225 = load i64* %j, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %j, align 8
  br label %80

; <label>:227                                     ; preds = %80
  %228 = load i64* %i, align 8
  %229 = load i8** %str, align 8
  %230 = getelementptr inbounds i8* %229, i64 %228
  store i8 0, i8* %230
  %231 = load i8** %str, align 8
  call void @smpstr_init(%struct.obj_struct* sret %res, i8* %231)
  %232 = load i8** %str, align 8
  call void @smp_free(i8* %232)
  %233 = bitcast %struct.obj_struct* %agg.result to i8*
  %234 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %233, i8* %234, i64 32, i32 8, i1 false)
  br label %235

; <label>:235                                     ; preds = %227, %165, %153, %135, %52, %37, %32
  ret void
}

define void @smpglobal_throw_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = load %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i64 0
  %6 = bitcast %struct.obj_struct* %3 to i8*
  %7 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

declare void @smptype_defvar(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

define void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %exc) nounwind {
  %thrown = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = bitcast %struct.obj_struct* %1 to i8*
  %3 = bitcast %struct.obj_struct* %exc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @smpthrown_init(%struct.obj_struct* sret %thrown, i32 0, %struct.obj_struct* byval %1)
  %4 = bitcast %struct.obj_struct* %agg.result to i8*
  %5 = bitcast %struct.obj_struct* %thrown to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  ret void
}

declare void @smpexc_init_fmt(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, ...)

declare i8* @smp_malloc(i64)

define i32 @smpglobal_class_multiple(i8* %name, %struct.smptype_struct** %parents, i64 %parents_length, i32 %flags) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.smptype_struct**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %new_type = alloca %struct.smptype_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.smptype_struct, align 8
  store i8* %name, i8** %2, align 8
  store %struct.smptype_struct** %parents, %struct.smptype_struct*** %3, align 8
  store i64 %parents_length, i64* %4, align 8
  store i32 %flags, i32* %5, align 4
  %8 = load %struct.smptype_struct*** %3, align 8
  %9 = icmp ne %struct.smptype_struct** %8, null
  br i1 %9, label %10, label %29

; <label>:10                                      ; preds = %0
  %11 = load %struct.smptype_struct*** %3, align 8
  %12 = getelementptr inbounds %struct.smptype_struct** %11, i64 0
  %13 = load %struct.smptype_struct** %12
  %14 = icmp ne %struct.smptype_struct* %13, null
  br i1 %14, label %15, label %29

; <label>:15                                      ; preds = %10
  %16 = load %struct.smptype_struct*** %3, align 8
  %17 = getelementptr inbounds %struct.smptype_struct** %16, i64 0
  %18 = load %struct.smptype_struct** %17
  %19 = bitcast %struct.smptype_struct* %18 to i8*
  %20 = getelementptr i8* %19, i32 12
  %21 = bitcast i8* %20 to i32*
  %22 = load i32* %21, align 4
  %23 = lshr i32 %22, 4
  %24 = and i32 %23, 1
  %25 = shl i32 %24, 31
  %26 = ashr i32 %25, 31
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %15
  store i32 1, i32* %1
  br label %159

; <label>:29                                      ; preds = %15, %10, %0
  %30 = load i8** %2, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = add i64 %31, 1
  %33 = mul i64 1, %32
  %34 = call i8* @smp_malloc(i64 %33)
  %35 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 0
  %37 = load i8** %36, align 8
  %38 = call i64 @llvm.objectsize.i64(i8* %37, i1 false)
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %29
  %41 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 0
  %42 = load i8** %41, align 8
  %43 = load i8** %2, align 8
  %44 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 0
  %45 = load i8** %44, align 8
  %46 = call i64 @llvm.objectsize.i64(i8* %45, i1 false)
  %47 = call i8* @__strcpy_chk(i8* %42, i8* %43, i64 %46)
  br label %53

; <label>:48                                      ; preds = %29
  %49 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 0
  %50 = load i8** %49, align 8
  %51 = load i8** %2, align 8
  %52 = call i8* @__inline_strcpy_chk(i8* %50, i8* %51)
  br label %53

; <label>:53                                      ; preds = %48, %40
  %54 = phi i8* [ %47, %40 ], [ %52, %48 ]
  %55 = load i32* @smptype_next_id, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @smptype_next_id, align 4
  %57 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 0
  %59 = load i8** %58, align 8
  %60 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 1
  %61 = load i32* %60, align 4
  call void @objid_init(%struct.obj_struct* sret %6, i32 %61)
  %62 = call i32 @minihash_add(%struct.minihash_struct* @smptype_ids, i8* %59, %struct.obj_struct* byval %6)
  %63 = load %struct.smptype_struct*** %3, align 8
  %64 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 3
  store %struct.smptype_struct** %63, %struct.smptype_struct*** %64, align 8
  %65 = load i64* %4, align 8
  %66 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 4
  store i64 %65, i64* %66, align 8
  %67 = load i32* %5, align 4
  %68 = and i32 %67, 1
  %69 = ashr i32 %68, 0
  %70 = and i32 %69, 1
  %71 = shl i32 %70, 31
  %72 = ashr i32 %71, 31
  %73 = bitcast %struct.smptype_struct* %new_type to i8*
  %74 = getelementptr i8* %73, i32 12
  %75 = bitcast i8* %74 to i32*
  %76 = and i32 %70, 1
  %77 = load i32* %75, align 4
  %78 = and i32 %77, -2
  %79 = or i32 %78, %76
  store i32 %79, i32* %75, align 4
  %80 = load i32* %5, align 4
  %81 = and i32 %80, 2
  %82 = ashr i32 %81, 1
  %83 = and i32 %82, 1
  %84 = shl i32 %83, 31
  %85 = ashr i32 %84, 31
  %86 = bitcast %struct.smptype_struct* %new_type to i8*
  %87 = getelementptr i8* %86, i32 12
  %88 = bitcast i8* %87 to i32*
  %89 = and i32 %83, 1
  %90 = shl i32 %89, 1
  %91 = load i32* %88, align 4
  %92 = and i32 %91, -3
  %93 = or i32 %92, %90
  store i32 %93, i32* %88, align 4
  %94 = load i32* %5, align 4
  %95 = and i32 %94, 48
  %96 = ashr i32 %95, 4
  %97 = and i32 %96, 3
  %98 = shl i32 %97, 30
  %99 = ashr i32 %98, 30
  %100 = bitcast %struct.smptype_struct* %new_type to i8*
  %101 = getelementptr i8* %100, i32 12
  %102 = bitcast i8* %101 to i32*
  %103 = and i32 %97, 3
  %104 = shl i32 %103, 2
  %105 = load i32* %102, align 4
  %106 = and i32 %105, -13
  %107 = or i32 %106, %104
  store i32 %107, i32* %102, align 4
  %108 = load i32* %5, align 4
  %109 = and i32 %108, 64
  %110 = ashr i32 %109, 6
  %111 = and i32 %110, 1
  %112 = shl i32 %111, 31
  %113 = ashr i32 %112, 31
  %114 = bitcast %struct.smptype_struct* %new_type to i8*
  %115 = getelementptr i8* %114, i32 12
  %116 = bitcast i8* %115 to i32*
  %117 = and i32 %111, 1
  %118 = shl i32 %117, 4
  %119 = load i32* %116, align 4
  %120 = and i32 %119, -17
  %121 = or i32 %120, %118
  store i32 %121, i32* %116, align 4
  %122 = load i32* %5, align 4
  %123 = and i32 %122, 128
  %124 = ashr i32 %123, 7
  %125 = and i32 %124, 1
  %126 = shl i32 %125, 31
  %127 = ashr i32 %126, 31
  %128 = bitcast %struct.smptype_struct* %new_type to i8*
  %129 = getelementptr i8* %128, i32 12
  %130 = bitcast i8* %129 to i32*
  %131 = and i32 %125, 1
  %132 = shl i32 %131, 5
  %133 = load i32* %130, align 4
  %134 = and i32 %133, -33
  %135 = or i32 %134, %132
  store i32 %135, i32* %130, align 4
  %136 = call i8* @smp_malloc(i64 32)
  %137 = bitcast i8* %136 to %struct.minihash_struct*
  %138 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 5
  store %struct.minihash_struct* %137, %struct.minihash_struct** %138, align 8
  %139 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 5
  %140 = load %struct.minihash_struct** %139, align 8
  call void (%struct.minihash_struct*, ...)* @minihash_init(%struct.minihash_struct* sret %140)
  %141 = call i8* @smp_malloc(i64 32)
  %142 = bitcast i8* %141 to %struct.minihash_struct*
  %143 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 6
  store %struct.minihash_struct* %142, %struct.minihash_struct** %143, align 8
  %144 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 6
  %145 = load %struct.minihash_struct** %144, align 8
  call void (%struct.minihash_struct*, ...)* @minihash_init(%struct.minihash_struct* sret %145)
  %146 = call i8* @smp_malloc(i64 32)
  %147 = bitcast i8* %146 to %struct.minihash_struct*
  %148 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 7
  store %struct.minihash_struct* %147, %struct.minihash_struct** %148, align 8
  %149 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 7
  %150 = load %struct.minihash_struct** %149, align 8
  call void (%struct.minihash_struct*, ...)* @minihash_init(%struct.minihash_struct* sret %150)
  %151 = call i8* @smp_malloc(i64 32)
  %152 = bitcast i8* %151 to %struct.minihash_struct*
  %153 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 8
  store %struct.minihash_struct* %152, %struct.minihash_struct** %153, align 8
  %154 = getelementptr inbounds %struct.smptype_struct* %new_type, i32 0, i32 8
  %155 = load %struct.minihash_struct** %154, align 8
  call void (%struct.minihash_struct*, ...)* @minihash_init(%struct.minihash_struct* sret %155)
  %156 = bitcast %struct.smptype_struct* %7 to i8*
  %157 = bitcast %struct.smptype_struct* %new_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %157, i64 64, i32 8, i1 false)
  %158 = call i32 @smp_putclass(%struct.smptype_struct* byval %7)
  store i32 0, i32* %1
  br label %159

; <label>:159                                     ; preds = %53, %28
  %160 = load i32* %1
  ret i32 %160
}

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

declare i32 @minihash_add(%struct.minihash_struct*, i8*, %struct.obj_struct* byval)

declare void @objid_init(%struct.obj_struct* sret, i32)

declare void @minihash_init(%struct.minihash_struct* sret, ...)

declare i32 @smp_putclass(%struct.smptype_struct* byval)

define void @smpglobal_class_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %name = alloca %struct.obj_struct, align 8
  %parents = alloca %struct.obj_struct, align 8
  %body = alloca %struct.obj_struct, align 8
  %name_str = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %8 = load %struct.obj_struct** %2, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %8, i64 0
  %10 = bitcast %struct.obj_struct* %name to i8*
  %11 = bitcast %struct.obj_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  %12 = load %struct.obj_struct** %2, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %12, i64 1
  %14 = bitcast %struct.obj_struct* %parents to i8*
  %15 = bitcast %struct.obj_struct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  %16 = load %struct.obj_struct** %2, align 8
  %17 = getelementptr inbounds %struct.obj_struct* %16, i64 2
  %18 = bitcast %struct.obj_struct* %body to i8*
  %19 = bitcast %struct.obj_struct* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = bitcast %struct.obj_struct* %3 to i8*
  %21 = bitcast %struct.obj_struct* %name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %3)
  store i8* %22, i8** %name_str, align 8
  %23 = bitcast %struct.obj_struct* %4 to i8*
  %24 = bitcast %struct.obj_struct* %name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  %25 = bitcast %struct.obj_struct* %5 to i8*
  %26 = bitcast %struct.obj_struct* %parents to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  %27 = bitcast %struct.obj_struct* %6 to i8*
  %28 = bitcast %struct.obj_struct* %body to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, i8*, ...)* @smp_printf(%struct.obj_struct* sret %7, i8* getelementptr inbounds ([36 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %4, %struct.obj_struct* byval %5, %struct.obj_struct* byval %6)
  %29 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

declare i8* @smpstr_to_cstr(%struct.obj_struct* byval)

define void @smp_printf(%struct.obj_struct* sret %agg.result, i8* %format, ...) nounwind {
  %1 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  store i8* %format, i8** %1, align 8
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* %4)
  %5 = load i8** %1, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @smpglobal_vsprintf(%struct.obj_struct* sret %res, i8* %5, %struct.__va_list_tag* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_end(i8* %8)
  %9 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %10 = load %struct.smptype_struct** %9, align 8
  %11 = getelementptr inbounds %struct.smptype_struct* %10, i32 0, i32 0
  %12 = load i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0))
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %0
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %21

; <label>:18                                      ; preds = %0
  %19 = bitcast %struct.obj_struct* %2 to i8*
  %20 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smp_print(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
  br label %21

; <label>:21                                      ; preds = %18, %15
  ret void
}

define void @smpglobal_fprint(%struct.obj_struct* sret %agg.result, %struct.__sFILE* %fp, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca %struct.__sFILE*, align 8
  %strobj = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %1, align 8
  %4 = bitcast %struct.obj_struct* %2 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %strobj, %struct.obj_struct* byval %2, i8* getelementptr inbounds ([5 x i8]* @.str21, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %6 = getelementptr inbounds %struct.obj_struct* %strobj, i32 0, i32 2
  %7 = load %struct.smptype_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smptype_struct* %7, i32 0, i32 0
  %9 = load i8** %8, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %agg.result to i8*
  %16 = bitcast %struct.obj_struct* %strobj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  br label %24

; <label>:17                                      ; preds = %0
  %18 = load %struct.__sFILE** %1, align 8
  %19 = bitcast %struct.obj_struct* %3 to i8*
  %20 = bitcast %struct.obj_struct* %strobj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  %21 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %3)
  %22 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([3 x i8]* @.str22, i32 0, i32 0), i8* %21)
  %23 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %24

; <label>:24                                      ; preds = %17, %14
  ret void
}

declare void @smpobj_funcall(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, i32, %struct.obj_struct*)

declare i32 @strcmp(i8*, i8*)

declare i32 @fprintf(%struct.__sFILE*, i8*, ...)

define void @smpglobal_fprintf(%struct.obj_struct* sret %agg.result, %struct.__sFILE* %fp, i8* %format, ...) nounwind {
  %1 = alloca %struct.__sFILE*, align 8
  %2 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %1, align 8
  store i8* %format, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @smpglobal_vsprintf(%struct.obj_struct* sret %res, i8* %6, %struct.__va_list_tag* %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_end(i8* %9)
  %10 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %11 = load %struct.smptype_struct** %10, align 8
  %12 = getelementptr inbounds %struct.smptype_struct* %11, i32 0, i32 0
  %13 = load i8** %12, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0))
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %0
  %17 = bitcast %struct.obj_struct* %agg.result to i8*
  %18 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  br label %23

; <label>:19                                      ; preds = %0
  %20 = load %struct.__sFILE** %1, align 8
  %21 = bitcast %struct.obj_struct* %3 to i8*
  %22 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void @smpglobal_fprint(%struct.obj_struct* sret %agg.result, %struct.__sFILE* %20, %struct.obj_struct* byval %3)
  br label %23

; <label>:23                                      ; preds = %19, %16
  ret void
}

declare void @llvm.va_start(i8*) nounwind

define void @smpglobal_vsprintf(%struct.obj_struct* sret %agg.result, i8* %format, %struct.__va_list_tag* %ap) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.__va_list_tag*, align 8
  %argc = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %list = alloca %struct.obj_struct, align 8
  %list_ptr = alloca %struct.obj_struct, align 8
  %i = alloca i32, align 4
  %car = alloca %struct.obj_struct, align 8
  %cons = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %argv = alloca [2 x %struct.obj_struct], align 16
  %7 = alloca %struct.obj_struct, align 8
  store i8* %format, i8** %1, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %2, align 8
  store i32 0, i32* %argc, align 4
  %8 = load i8** %1, align 8
  store i8* %8, i8** %ptr, align 8
  br label %9

; <label>:9                                       ; preds = %30, %0
  %10 = load i8** %ptr, align 8
  %11 = load i8* %10
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %33

; <label>:13                                      ; preds = %9
  %14 = load i8** %ptr, align 8
  %15 = load i8* %14
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %30

; <label>:18                                      ; preds = %13
  %19 = load i8** %ptr, align 8
  %20 = getelementptr inbounds i8* %19, i32 1
  store i8* %20, i8** %ptr, align 8
  %21 = load i8** %ptr, align 8
  %22 = getelementptr inbounds i8* %21, i64 1
  %23 = load i8* %22
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 37
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %18
  %27 = load i32* %argc, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %argc, align 4
  br label %29

; <label>:29                                      ; preds = %26, %18
  br label %30

; <label>:30                                      ; preds = %29, %13
  %31 = load i8** %ptr, align 8
  %32 = getelementptr inbounds i8* %31, i32 1
  store i8* %32, i8** %ptr, align 8
  br label %9

; <label>:33                                      ; preds = %9
  %34 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %35 = bitcast %struct.obj_struct* %list_ptr to i8*
  %36 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %37

; <label>:37                                      ; preds = %84, %33
  %38 = load i32* %i, align 4
  %39 = load i32* %argc, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %87

; <label>:41                                      ; preds = %37
  %42 = load %struct.__va_list_tag** %2, align 8
  %43 = getelementptr inbounds %struct.__va_list_tag* %42, i32 0, i32 2
  %44 = load i8** %43
  %45 = bitcast i8* %44 to %struct.obj_struct*
  %46 = getelementptr i8* %44, i32 32
  store i8* %46, i8** %43
  %47 = bitcast %struct.obj_struct* %car to i8*
  %48 = bitcast %struct.obj_struct* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 32, i32 8, i1 false)
  %49 = bitcast %struct.obj_struct* %3 to i8*
  %50 = bitcast %struct.obj_struct* %car to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  %51 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpobj_cons_c(%struct.obj_struct* sret %cons, %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  %52 = getelementptr inbounds %struct.obj_struct* %list_ptr, i32 0, i32 2
  %53 = load %struct.smptype_struct** %52, align 8
  %54 = getelementptr inbounds %struct.smptype_struct* %53, i32 0, i32 1
  %55 = load i32* %54, align 4
  %56 = load i32* @smptype_id_nil, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

; <label>:58                                      ; preds = %41
  %59 = bitcast %struct.obj_struct* %list to i8*
  %60 = bitcast %struct.obj_struct* %cons to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 8, i1 false)
  %61 = bitcast %struct.obj_struct* %list_ptr to i8*
  %62 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 32, i32 8, i1 false)
  br label %83

; <label>:63                                      ; preds = %41
  %64 = bitcast %struct.obj_struct* %5 to i8*
  %65 = bitcast %struct.obj_struct* %list_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 32, i32 8, i1 false)
  call void @smppair_set_cdr_now(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %cons)
  %66 = getelementptr inbounds %struct.obj_struct* %list_ptr, i32 0, i32 3
  %67 = load i8** %66, align 8
  %68 = bitcast i8* %67 to %struct.smppair_struct*
  %69 = getelementptr inbounds %struct.smppair_struct* %68, i32 0, i32 1
  %70 = load %struct.obj_struct** %69, align 8
  %71 = icmp ne %struct.obj_struct* %70, null
  br i1 %71, label %72, label %80

; <label>:72                                      ; preds = %63
  %73 = getelementptr inbounds %struct.obj_struct* %list_ptr, i32 0, i32 3
  %74 = load i8** %73, align 8
  %75 = bitcast i8* %74 to %struct.smppair_struct*
  %76 = getelementptr inbounds %struct.smppair_struct* %75, i32 0, i32 1
  %77 = load %struct.obj_struct** %76, align 8
  %78 = bitcast %struct.obj_struct* %list_ptr to i8*
  %79 = bitcast %struct.obj_struct* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 32, i32 8, i1 false)
  br label %82

; <label>:80                                      ; preds = %63
  %81 = bitcast %struct.obj_struct* %list_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %82

; <label>:82                                      ; preds = %80, %72
  br label %83

; <label>:83                                      ; preds = %82, %58
  br label %84

; <label>:84                                      ; preds = %83
  %85 = load i32* %i, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %i, align 4
  br label %37

; <label>:87                                      ; preds = %37
  %88 = getelementptr inbounds [2 x %struct.obj_struct]* %argv, i32 0, i64 0
  %89 = load i8** %1, align 8
  call void @smpstr_init(%struct.obj_struct* sret %88, i8* %89)
  %90 = getelementptr inbounds [2 x %struct.obj_struct]* %argv, i32 0, i64 1
  %91 = bitcast %struct.obj_struct* %90 to i8*
  %92 = bitcast %struct.obj_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 32, i32 8, i1 false)
  %93 = bitcast %struct.obj_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  %94 = load i32* %argc, align 4
  %95 = getelementptr inbounds [2 x %struct.obj_struct]* %argv, i32 0, i32 0
  call void @smpglobal_sprintf_arg(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %7, i32 %94, %struct.obj_struct* %95)
  ret void
}

declare void @llvm.va_end(i8*) nounwind

define void @smp_print(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj) nounwind {
  %strobj = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = bitcast %struct.obj_struct* %1 to i8*
  %4 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %strobj, %struct.obj_struct* byval %1, i8* getelementptr inbounds ([5 x i8]* @.str21, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %5 = getelementptr inbounds %struct.obj_struct* %strobj, i32 0, i32 2
  %6 = load %struct.smptype_struct** %5, align 8
  %7 = getelementptr inbounds %struct.smptype_struct* %6, i32 0, i32 0
  %8 = load i8** %7, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0))
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %0
  %14 = bitcast %struct.obj_struct* %agg.result to i8*
  %15 = bitcast %struct.obj_struct* %strobj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  br label %23

; <label>:16                                      ; preds = %0
  %17 = load %struct.__sFILE** @smp_stdout, align 8
  %18 = bitcast %struct.obj_struct* %2 to i8*
  %19 = bitcast %struct.obj_struct* %strobj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %2)
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([3 x i8]* @.str22, i32 0, i32 0), i8* %20)
  %22 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %23

; <label>:23                                      ; preds = %16, %13
  ret void
}

define void @smpglobal_sprintf(%struct.obj_struct* sret %agg.result, i8* %format, ...) nounwind {
  %1 = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  store i8* %format, i8** %1, align 8
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  %4 = load i8** %1, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @smpglobal_vsprintf(%struct.obj_struct* sret %res, i8* %4, %struct.__va_list_tag* %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_end(i8* %7)
  %8 = bitcast %struct.obj_struct* %agg.result to i8*
  %9 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  ret void
}

define void @smp_println(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj) nounwind {
  %res = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = bitcast %struct.obj_struct* %1 to i8*
  %3 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @smp_print(%struct.obj_struct* sret %res, %struct.obj_struct* byval %1)
  %4 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %5 = load %struct.smptype_struct** %4, align 8
  %6 = getelementptr inbounds %struct.smptype_struct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0))
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = bitcast %struct.obj_struct* %agg.result to i8*
  %12 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  br label %17

; <label>:13                                      ; preds = %0
  %14 = load %struct.__sFILE** @smp_stdout, align 8
  %15 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([2 x i8]* @.str23, i32 0, i32 0))
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %17

; <label>:17                                      ; preds = %13, %10
  ret void
}

declare void @smpobj_cons_c(%struct.obj_struct* sret, %struct.obj_struct* byval, %struct.obj_struct* byval)

declare void @smppair_set_cdr_now(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpstr_init(%struct.obj_struct* sret, i8*)

declare i32 @smpobj_instancep_cstr(%struct.smptype_struct*, i8*)

declare void @smptypeerr_init(%struct.obj_struct* sret, %struct.smptype_struct*, %struct.obj_struct* byval)

declare i32 @smpobj_instancep_cint(%struct.obj_struct* byval, i32, %struct.obj_struct*)

declare i64 @smplist_length_clong(%struct.obj_struct* byval)

declare i8* @smp_realloc(i8*, i64)

define void @obj_put_fmt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i8* %fmt, i8** %fmt_end) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %width = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %prec = alloca i32, align 4
  %type = alloca i8, align 1
  %argc = alloca i32, align 4
  %argv = alloca %struct.obj_struct*, align 8
  %prec_obj = alloca %struct.obj_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca i8*
  %type_str = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  store i8* %fmt, i8** %1, align 8
  store i8** %fmt_end, i8*** %2, align 8
  %11 = load i8** %1, align 8
  %12 = load i8* %11
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 37
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([22 x i8]* @.str24, i32 0, i32 0))
  %16 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([48 x i8]* @.str26, i32 0, i32 0), i8* %16)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %171

; <label>:17                                      ; preds = %0
  %18 = load i8** %1, align 8
  %19 = getelementptr inbounds i8* %18, i32 1
  store i8* %19, i8** %1, align 8
  store i32 0, i32* %width, align 4
  %20 = load i8** %1, align 8
  store i8* %20, i8** %ptr, align 8
  br label %21

; <label>:21                                      ; preds = %33, %17
  %22 = load i8** %ptr, align 8
  %23 = load i8* %22
  %24 = sext i8 %23 to i32
  %25 = icmp sge i32 %24, 48
  br i1 %25, label %26, label %31

; <label>:26                                      ; preds = %21
  %27 = load i8** %ptr, align 8
  %28 = load i8* %27
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 %29, 57
  br label %31

; <label>:31                                      ; preds = %26, %21
  %32 = phi i1 [ false, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %42

; <label>:33                                      ; preds = %31
  %34 = load i32* %width, align 4
  %35 = mul nsw i32 10, %34
  %36 = load i8** %ptr, align 8
  %37 = getelementptr inbounds i8* %36, i32 1
  store i8* %37, i8** %ptr, align 8
  %38 = load i8* %36
  %39 = sext i8 %38 to i32
  %40 = sub nsw i32 %39, 48
  %41 = add nsw i32 %35, %40
  store i32 %41, i32* %width, align 4
  br label %21

; <label>:42                                      ; preds = %31
  store i32 0, i32* %prec, align 4
  %43 = load i8** %ptr, align 8
  %44 = load i8* %43
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br i1 %46, label %47, label %70

; <label>:47                                      ; preds = %42
  br label %48

; <label>:48                                      ; preds = %61, %47
  %49 = load i8** %ptr, align 8
  %50 = getelementptr inbounds i8* %49, i32 1
  store i8* %50, i8** %ptr, align 8
  %51 = load i8* %50
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 48
  br i1 %53, label %54, label %59

; <label>:54                                      ; preds = %48
  %55 = load i8** %ptr, align 8
  %56 = load i8* %55
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 57
  br label %59

; <label>:59                                      ; preds = %54, %48
  %60 = phi i1 [ false, %48 ], [ %58, %54 ]
  br i1 %60, label %61, label %69

; <label>:61                                      ; preds = %59
  %62 = load i32* %prec, align 4
  %63 = mul nsw i32 10, %62
  %64 = load i8** %ptr, align 8
  %65 = load i8* %64
  %66 = sext i8 %65 to i32
  %67 = sub nsw i32 %66, 48
  %68 = add nsw i32 %63, %67
  store i32 %68, i32* %prec, align 4
  br label %48

; <label>:69                                      ; preds = %59
  br label %70

; <label>:70                                      ; preds = %69, %42
  %71 = load i8** %ptr, align 8
  %72 = getelementptr inbounds i8* %71, i32 1
  store i8* %72, i8** %ptr, align 8
  %73 = load i8* %71
  store i8 %73, i8* %type, align 1
  store i32 0, i32* %argc, align 4
  store %struct.obj_struct* null, %struct.obj_struct** %argv, align 8
  %74 = bitcast %struct.obj_struct* %prec_obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %75 = load i32* %prec, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

; <label>:77                                      ; preds = %70
  %78 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %79 = load %struct.smptype_struct** %78, align 8
  %80 = getelementptr inbounds %struct.smptype_struct* %79, i32 0, i32 0
  %81 = load i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

; <label>:84                                      ; preds = %77
  %85 = load i32* %prec, align 4
  %86 = sext i32 %85 to i64
  call void @smpint_init_clong(%struct.obj_struct* sret %prec_obj, i64 %86)
  store i32 1, i32* %argc, align 4
  store %struct.obj_struct* %prec_obj, %struct.obj_struct** %argv, align 8
  br label %87

; <label>:87                                      ; preds = %84, %77, %70
  %88 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %89 = load i8* %type, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 115
  br i1 %91, label %92, label %97

; <label>:92                                      ; preds = %87
  %93 = bitcast %struct.obj_struct* %5 to i8*
  %94 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 32, i32 8, i1 false)
  %95 = load i32* %argc, align 4
  %96 = load %struct.obj_struct** %argv, align 8
  call void @smpobj_funcall(%struct.obj_struct* sret %res, %struct.obj_struct* byval %5, i8* getelementptr inbounds ([5 x i8]* @.str21, i32 0, i32 0), i32 %95, %struct.obj_struct* %96)
  br label %110

; <label>:97                                      ; preds = %87
  %98 = load i8* %type, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 119
  br i1 %100, label %101, label %106

; <label>:101                                     ; preds = %97
  %102 = bitcast %struct.obj_struct* %6 to i8*
  %103 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 32, i32 8, i1 false)
  %104 = load i32* %argc, align 4
  %105 = load %struct.obj_struct** %argv, align 8
  call void @smpobj_funcall(%struct.obj_struct* sret %res, %struct.obj_struct* byval %6, i8* getelementptr inbounds ([6 x i8]* @.str28, i32 0, i32 0), i32 %104, %struct.obj_struct* %105)
  br label %109

; <label>:106                                     ; preds = %97
  call void @smp_getclass(%struct.obj_struct* sret %8, i8* getelementptr inbounds ([22 x i8]* @.str24, i32 0, i32 0))
  %107 = load i8* %type, align 1
  %108 = sext i8 %107 to i32
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %7, %struct.obj_struct* byval %8, i8* getelementptr inbounds ([26 x i8]* @.str29, i32 0, i32 0), i32 %108)
  call void @smpglobal_throw(%struct.obj_struct* sret %res, %struct.obj_struct* byval %7)
  br label %109

; <label>:109                                     ; preds = %106, %101
  br label %110

; <label>:110                                     ; preds = %109, %92
  %111 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %112 = load %struct.smptype_struct** %111, align 8
  %113 = getelementptr inbounds %struct.smptype_struct* %112, i32 0, i32 0
  %114 = load i8** %113, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0))
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

; <label>:117                                     ; preds = %110
  %118 = bitcast %struct.obj_struct* %agg.result to i8*
  %119 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 32, i32 8, i1 false)
  br label %171

; <label>:120                                     ; preds = %110
  %121 = load i8** %ptr, align 8
  %122 = load i8* %121
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 116
  br i1 %124, label %125, label %162

; <label>:125                                     ; preds = %120
  %126 = load i8** %ptr, align 8
  %127 = getelementptr inbounds i8* %126, i32 1
  store i8* %127, i8** %ptr, align 8
  %128 = call i8* @llvm.stacksave()
  store i8* %128, i8** %9
  %129 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %130 = load %struct.smptype_struct** %129, align 8
  %131 = getelementptr inbounds %struct.smptype_struct* %130, i32 0, i32 0
  %132 = load i8** %131, align 8
  %133 = call i64 @strlen(i8* %132)
  %134 = add i64 %133, 2
  %135 = mul i64 1, %134
  %136 = alloca i8, i64 %135, align 16
  %137 = getelementptr inbounds i8* %136, i64 0
  store i8 58, i8* %137
  %138 = getelementptr inbounds i8* %136, i64 1
  %139 = call i64 @llvm.objectsize.i64(i8* %138, i1 false)
  %140 = icmp ne i64 %139, -1
  br i1 %140, label %141, label %150

; <label>:141                                     ; preds = %125
  %142 = getelementptr inbounds i8* %136, i64 1
  %143 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %144 = load %struct.smptype_struct** %143, align 8
  %145 = getelementptr inbounds %struct.smptype_struct* %144, i32 0, i32 0
  %146 = load i8** %145, align 8
  %147 = getelementptr inbounds i8* %136, i64 1
  %148 = call i64 @llvm.objectsize.i64(i8* %147, i1 false)
  %149 = call i8* @__strcpy_chk(i8* %142, i8* %146, i64 %148)
  br label %157

; <label>:150                                     ; preds = %125
  %151 = getelementptr inbounds i8* %136, i64 1
  %152 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %153 = load %struct.smptype_struct** %152, align 8
  %154 = getelementptr inbounds %struct.smptype_struct* %153, i32 0, i32 0
  %155 = load i8** %154, align 8
  %156 = call i8* @__inline_strcpy_chk(i8* %151, i8* %155)
  br label %157

; <label>:157                                     ; preds = %150, %141
  %158 = phi i8* [ %149, %141 ], [ %156, %150 ]
  call void @smpstr_init(%struct.obj_struct* sret %type_str, i8* %136)
  %159 = bitcast %struct.obj_struct* %10 to i8*
  %160 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %159, i8* %160, i64 32, i32 8, i1 false)
  call void @smpstr_add(%struct.obj_struct* sret %res, %struct.obj_struct* byval %10, i32 1, %struct.obj_struct* %type_str)
  %161 = load i8** %9
  call void @llvm.stackrestore(i8* %161)
  br label %162

; <label>:162                                     ; preds = %157, %120
  %163 = load i8*** %2, align 8
  %164 = icmp ne i8** %163, null
  br i1 %164, label %165, label %168

; <label>:165                                     ; preds = %162
  %166 = load i8** %ptr, align 8
  %167 = load i8*** %2, align 8
  store i8* %166, i8** %167
  br label %168

; <label>:168                                     ; preds = %165, %162
  %169 = bitcast %struct.obj_struct* %agg.result to i8*
  %170 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* %170, i64 32, i32 8, i1 false)
  br label %171

; <label>:171                                     ; preds = %168, %117, %15
  ret void
}

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...)

declare void @smp_free(i8*)

declare void @smpint_init_clong(%struct.obj_struct* sret, i64)

declare i8* @llvm.stacksave() nounwind

declare void @smpstr_add(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @llvm.stackrestore(i8*) nounwind

declare void @smpthrown_init(%struct.obj_struct* sret, i32, %struct.obj_struct* byval)
