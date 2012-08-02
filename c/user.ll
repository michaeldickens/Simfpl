target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smpType_struct*, i8* }
%struct.smpType_struct = type { i8*, i32, i8, %struct.smpType_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@smpType_object = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_id = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_nil = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_class = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_function = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_global = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_thrown = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_exception = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_string = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_pair = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_list = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_atom = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_collection = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_regmatch = common global %struct.smpType_struct zeroinitializer, align 8
@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@smp_global = common global %struct.obj_struct zeroinitializer, align 8
@smpType_id_nil = common global i32 0, align 4
@smpType_id_class = common global i32 0, align 4
@smpType_id_int = common global i32 0, align 4
@smpType_id_float = common global i32 0, align 4
@smpType_id_fun = common global i32 0, align 4
@smpType_id_list = common global i32 0, align 4
@smpType_id_array = common global i32 0, align 4
@smpType_id_hash = common global i32 0, align 4
@smpType_id_var = common global i32 0, align 4
@smpType_id_thrown = common global i32 0, align 4
@gc_stack = common global [1024 x %struct.obj_struct] zeroinitializer, align 16
@gc_stack_length = common global i64 0, align 8
@gc_counter = common global i32 0, align 4
@gc_add_objectsp = common global i32 0, align 4
@gc_add_next_objectp = common global i32 0, align 4
@gc_activep = common global i32 0, align 4
@gc_runningp = common global i32 0, align 4
@smpType_next_id = common global i32 0, align 4
@smpType_ids = common global %struct.minihash_struct zeroinitializer, align 8
@smp_stdin = common global %struct.__sFILE* null, align 8
@smp_stdout = common global %struct.__sFILE* null, align 8
@smp_stderr = common global %struct.__sFILE* null, align 8
@scope_stack = common global %struct.minihash_struct* null, align 8
@scope_length = common global i64 0, align 8
@scope_classes = common global %struct.minihash_struct zeroinitializer, align 8
@initialized_classesp = common global i32 0, align 4
@smpType_int = common global %struct.smpType_struct zeroinitializer, align 8
@smpType_float = common global %struct.smpType_struct zeroinitializer, align 8
@smpInteger_zero = common global %struct.obj_struct zeroinitializer, align 8
@smpInteger_one = common global %struct.obj_struct zeroinitializer, align 8
@smp_mpfr_rnd = common global i32 0, align 4
@smp_mpfr_default_prec = common global i64 0, align 8
@smptest_print_successesp = common global i32 0, align 4

declare void @smpFunction_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)
declare void @smpObject_cons(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)
declare void @smpType_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind
declare void @smpObject_funcall(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, i32, %struct.obj_struct*)
declare i32 @smpObject_truep_c(%struct.obj_struct* byval)
declare i32 @smp_should_breakp_c(%struct.obj_struct* byval)
declare i32 @smp_should_returnp_c(%struct.obj_struct* byval)
declare i32 @smp_thrown_exceptionp_c(%struct.obj_struct* byval)
declare void @smpThrown_get_first_value(%struct.obj_struct* sret, %struct.obj_struct* byval)
declare void @smpInteger_init_clong(%struct.obj_struct* sret, i64)
declare void @smpInteger_init_str(%struct.obj_struct* sret, i8*)
declare void @smpFloat_init_cdouble(%struct.obj_struct* sret, double)
declare void @smpFloat_init_str(%struct.obj_struct* sret, i8*)
declare void @smpString_init(%struct.obj_struct* sret, i8*)
declare i32 @scope_add(i8*, %struct.obj_struct* byval)
declare void @scope_get(%struct.obj_struct* sret, i8*)
declare i32 @scope_pop()
declare i32 @scope_push()


@.smp_str1 = private constant [7 x i8] c"Global\00"
@.smp_str2 = private constant [6 x i8] c"Array\00"
@.smp_str3 = private constant [6 x i8] c"range\00"
@.smp_str4 = private constant [5 x i8] c"rand\00"
@.smp_str5 = private constant [2 x i8] c"x\00"
@.smp_str6 = private constant [7 x i8] c"Object\00"
@.smp_str7 = private constant [2 x i8] c"1\00"
@.smp_str8 = private constant [4 x i8] c"map\00"
@.smp_str9 = private constant [8 x i8] c"println\00"
@.smp_str10 = private constant [5 x i8] c"sort\00"


define void @smpGlobal_1(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) {
  %1 = call i32 @scope_push()
  %smpGlobal_x = getelementptr inbounds %struct.obj_struct* %argv, i32 0
  %2 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.smp_str5, i32 0, i32 0), %struct.obj_struct* byval %smpGlobal_x)
  %3 = alloca %struct.obj_struct, align 8
  call void @scope_get(%struct.obj_struct* %3, i8* getelementptr inbounds ([7 x i8]* @.smp_str1, i32 0, i32 0))
  %4 = call i32 @smp_should_returnp_c(%struct.obj_struct* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6
  %7 = load %struct.obj_struct* %3, align 8
  store %struct.obj_struct %7, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:8
  %9 = alloca %struct.obj_struct, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %9, i64 20)
  %10 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %10, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.smp_str4, i32 0, i32 0), i32 1, %struct.obj_struct* %9)
  %11 = call i32 @smp_should_returnp_c(%struct.obj_struct* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

; <label>:13
  %14 = load %struct.obj_struct* %10, align 8
  store %struct.obj_struct %14, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:15
  %16 = load %struct.obj_struct* %10, align 8
  store %struct.obj_struct %16, %struct.obj_struct* %agg.result, align 8
  %17 = call i32 @scope_pop()
  ret void
}

define void @smpGlobal_main(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) {
  %1 = alloca %struct.obj_struct, align 8
  call void @scope_get(%struct.obj_struct* %1, i8* getelementptr inbounds ([7 x i8]* @.smp_str1, i32 0, i32 0))
  %2 = call i32 @smp_should_returnp_c(%struct.obj_struct* %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4
  %5 = load %struct.obj_struct* %1, align 8
  store %struct.obj_struct %5, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:6
  %7 = alloca %struct.obj_struct, align 8
  call void @scope_get(%struct.obj_struct* %7, i8* getelementptr inbounds ([7 x i8]* @.smp_str1, i32 0, i32 0))
  %8 = call i32 @smp_should_returnp_c(%struct.obj_struct* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

; <label>:10
  %11 = load %struct.obj_struct* %7, align 8
  store %struct.obj_struct %11, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:12
  %13 = alloca %struct.obj_struct, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %13, i64 0)
  %14 = alloca %struct.obj_struct, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %14, i64 32)
  %15 = alloca %struct.obj_struct, align 8
  call void @smpString_init(%struct.obj_struct* sret %15, i8* getelementptr inbounds ([6 x i8]* @.smp_str2, i32 0, i32 0))
  %16 = call i32 @smp_should_returnp_c(%struct.obj_struct* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18
  %19 = load %struct.obj_struct* %15, align 8
  store %struct.obj_struct %19, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:20
  %21 = alloca [2 x %struct.obj_struct], align 8
  %22 = getelementptr inbounds [2 x %struct.obj_struct]* %21, i32 0, i32 1
  %23 = load %struct.obj_struct* %15, align 8
  store %struct.obj_struct %23, %struct.obj_struct* %22, align 8
  %24 = getelementptr inbounds [2 x %struct.obj_struct]* %21, i32 0, i32 0
  %25 = load %struct.obj_struct* %14, align 8
  store %struct.obj_struct %25, %struct.obj_struct* %24, align 8
  %26 = bitcast [2 x %struct.obj_struct]* %21 to %struct.obj_struct* 
  %27 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %27, %struct.obj_struct* byval %13, i8* getelementptr inbounds ([6 x i8]* @.smp_str3, i32 0, i32 0), i32 2, %struct.obj_struct* %26)
  %28 = call i32 @smp_should_returnp_c(%struct.obj_struct* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

; <label>:30
  %31 = load %struct.obj_struct* %27, align 8
  store %struct.obj_struct %31, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:32
  %33 = alloca %struct.obj_struct, align 8
  call void @scope_get(%struct.obj_struct* %33, i8* getelementptr inbounds ([7 x i8]* @.smp_str1, i32 0, i32 0))
  %34 = call i32 @smp_should_returnp_c(%struct.obj_struct* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36
  %37 = load %struct.obj_struct* %33, align 8
  store %struct.obj_struct %37, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:38
  %39 = alloca %struct.obj_struct, align 8
  %40 = alloca %struct.obj_struct, align 8
  call void (%struct.obj_struct* , void (%struct.obj_struct* , %struct.obj_struct* , i32, %struct.obj_struct* )*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %39, void (%struct.obj_struct* , %struct.obj_struct* , i32, %struct.obj_struct* )* @smpGlobal_1, i32 2, i8* getelementptr inbounds ([7 x i8]* @.smp_str6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.smp_str6, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %40, %struct.obj_struct* byval %33, i32 1, i8* getelementptr inbounds ([2 x i8]* @.smp_str7, i32 0, i32 0), %struct.obj_struct* byval %39)
  %41 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %41, %struct.obj_struct* byval %27, i8* getelementptr inbounds ([4 x i8]* @.smp_str8, i32 0, i32 0), i32 1, %struct.obj_struct* %40)
  %42 = call i32 @smp_should_returnp_c(%struct.obj_struct* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

; <label>:44
  %45 = load %struct.obj_struct* %41, align 8
  store %struct.obj_struct %45, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:46
  %47 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %47, %struct.obj_struct* byval %7, i8* getelementptr inbounds ([8 x i8]* @.smp_str9, i32 0, i32 0), i32 1, %struct.obj_struct* %41)
  %48 = call i32 @smp_should_returnp_c(%struct.obj_struct* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

; <label>:50
  %51 = load %struct.obj_struct* %47, align 8
  store %struct.obj_struct %51, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:52
  %53 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %53, %struct.obj_struct* byval %47, i8* getelementptr inbounds ([5 x i8]* @.smp_str10, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %54 = call i32 @smp_should_returnp_c(%struct.obj_struct* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

; <label>:56
  %57 = load %struct.obj_struct* %53, align 8
  store %struct.obj_struct %57, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:58
  %59 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %59, %struct.obj_struct* byval %1, i8* getelementptr inbounds ([8 x i8]* @.smp_str9, i32 0, i32 0), i32 1, %struct.obj_struct* %53)
  %60 = call i32 @smp_should_returnp_c(%struct.obj_struct* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

; <label>:62
  %63 = load %struct.obj_struct* %59, align 8
  store %struct.obj_struct %63, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:64
  %65 = load %struct.obj_struct* %59, align 8
  store %struct.obj_struct %65, %struct.obj_struct* %agg.result, align 8
  ret void
}

