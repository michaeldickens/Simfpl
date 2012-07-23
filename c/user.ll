; ModuleID = 'user.c'
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
declare void @scope_get(%struct.obj_struct* sret, i8*)


@.smp_str1 = private constant [7 x i8] c"Global\00"
@.smp_str2 = private constant [5 x i8] c"list\00"
@.smp_str3 = private constant [4 x i8] c"car\00"
@.smp_str4 = private constant [2 x i8] c"<\00"
@.smp_str5 = private constant [2 x i8] c"+\00"
@.smp_str6 = private constant [5 x i8] c"cons\00"
@.smp_str7 = private constant [3 x i8] c"**\00"
@.smp_str8 = private constant [7 x i8] c"Object\00"
@.smp_str9 = private constant [2 x i8] c"1\00"
@.smp_str10 = private constant [4 x i8] c"map\00"
@.smp_str11 = private constant [2 x i8] c"2\00"
@.smp_str12 = private constant [7 x i8] c"reduce\00"
@.smp_str13 = private constant [8 x i8] c"println\00"


define void @smpGlobal_1(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) {
  %smpGlobal_x = getelementptr inbounds %struct.obj_struct* %argv, i32 0
  %1 = alloca %struct.obj_struct, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %1, i64 2)
  %2 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %2, %struct.obj_struct* byval %1, i8* getelementptr inbounds ([3 x i8]* @.smp_str7, i32 0, i32 0), i32 1, %struct.obj_struct* %smpGlobal_x)
  %3 = call i32 @smp_should_returnp_c(%struct.obj_struct* %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5
  %6 = load %struct.obj_struct* %2, align 8
  store %struct.obj_struct %6, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:7
  %8 = load %struct.obj_struct* %2, align 8
  store %struct.obj_struct %8, %struct.obj_struct* %agg.result, align 8
  ret void
}

define void @smpGlobal_2(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) {
  %smpGlobal_x = getelementptr inbounds %struct.obj_struct* %argv, i32 1
  %smpGlobal_y = getelementptr inbounds %struct.obj_struct* %argv, i32 0
  %1 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %1, %struct.obj_struct* byval %smpGlobal_x, i8* getelementptr inbounds ([2 x i8]* @.smp_str5, i32 0, i32 0), i32 1, %struct.obj_struct* %smpGlobal_y)
  %2 = call i32 @smp_should_returnp_c(%struct.obj_struct* %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4
  %5 = load %struct.obj_struct* %1, align 8
  store %struct.obj_struct %5, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:6
  %7 = load %struct.obj_struct* %1, align 8
  store %struct.obj_struct %7, %struct.obj_struct* %agg.result, align 8
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
  call void @smpInteger_init_clong(%struct.obj_struct* sret %7, i64 0)
  %8 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %8, %struct.obj_struct* byval %1, i8* getelementptr inbounds ([5 x i8]* @.smp_str2, i32 0, i32 0), i32 1, %struct.obj_struct* %7)
  %9 = call i32 @smp_should_returnp_c(%struct.obj_struct* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11
  %12 = load %struct.obj_struct* %8, align 8
  store %struct.obj_struct %12, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:13
  %smpGlobal_$nums = alloca %struct.obj_struct, align 8
  %14 = load %struct.obj_struct* %8, align 8
  store %struct.obj_struct %14, %struct.obj_struct* %smpGlobal_$nums
  %15 = alloca %struct.obj_struct, align 8
  br label %16

; <label>:16
  %17 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %17, %struct.obj_struct* byval %smpGlobal_$nums, i8* getelementptr inbounds ([4 x i8]* @.smp_str3, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %18 = call i32 @smp_should_returnp_c(%struct.obj_struct* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20
  %21 = load %struct.obj_struct* %17, align 8
  store %struct.obj_struct %21, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:22
  %23 = alloca %struct.obj_struct, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %23, i64 10000)
  %24 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %24, %struct.obj_struct* byval %17, i8* getelementptr inbounds ([2 x i8]* @.smp_str4, i32 0, i32 0), i32 1, %struct.obj_struct* %23)
  %25 = call i32 @smp_should_returnp_c(%struct.obj_struct* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27
  %28 = load %struct.obj_struct* %24, align 8
  store %struct.obj_struct %28, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:29
  %30 = call i32 @smpObject_truep_c(%struct.obj_struct* byval %24)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

; <label>:32
  %33 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %33, %struct.obj_struct* byval %smpGlobal_$nums, i8* getelementptr inbounds ([4 x i8]* @.smp_str3, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %34 = call i32 @smp_should_returnp_c(%struct.obj_struct* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36
  %37 = load %struct.obj_struct* %33, align 8
  store %struct.obj_struct %37, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:38
  %39 = alloca %struct.obj_struct, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %39, i64 1)
  %40 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %40, %struct.obj_struct* byval %33, i8* getelementptr inbounds ([2 x i8]* @.smp_str5, i32 0, i32 0), i32 1, %struct.obj_struct* %39)
  %41 = call i32 @smp_should_returnp_c(%struct.obj_struct* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

; <label>:43
  %44 = load %struct.obj_struct* %40, align 8
  store %struct.obj_struct %44, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:45
  %46 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %46, %struct.obj_struct* byval %40, i8* getelementptr inbounds ([5 x i8]* @.smp_str6, i32 0, i32 0), i32 1, %struct.obj_struct* %smpGlobal_$nums)
  %47 = call i32 @smp_should_returnp_c(%struct.obj_struct* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

; <label>:49
  %50 = load %struct.obj_struct* %46, align 8
  store %struct.obj_struct %50, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:51
  %52 = load %struct.obj_struct* %46, align 8
  store %struct.obj_struct %52, %struct.obj_struct* %smpGlobal_$nums
  %53 = load %struct.obj_struct* %smpGlobal_$nums, align 8
  store %struct.obj_struct %53, %struct.obj_struct* %15, align 8
  %54 = call i32 @smp_should_breakp_c(%struct.obj_struct* %smpGlobal_$nums)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %16

; <label>:56
  %57 = alloca %struct.obj_struct, align 8
  call void @smpThrown_get_first_value(%struct.obj_struct* sret %57, %struct.obj_struct* %smpGlobal_$nums)
  %58 = load %struct.obj_struct* %57, align 8
  store %struct.obj_struct %58, %struct.obj_struct* %15, align 8
  br label %59

; <label>:59
  %60 = alloca %struct.obj_struct, align 8
  call void @scope_get(%struct.obj_struct* %60, i8* getelementptr inbounds ([7 x i8]* @.smp_str1, i32 0, i32 0))
  %61 = call i32 @smp_should_returnp_c(%struct.obj_struct* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

; <label>:63
  %64 = load %struct.obj_struct* %60, align 8
  store %struct.obj_struct %64, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:65
  %66 = alloca %struct.obj_struct, align 8
  call void @scope_get(%struct.obj_struct* %66, i8* getelementptr inbounds ([7 x i8]* @.smp_str1, i32 0, i32 0))
  %67 = call i32 @smp_should_returnp_c(%struct.obj_struct* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

; <label>:69
  %70 = load %struct.obj_struct* %66, align 8
  store %struct.obj_struct %70, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:71
  %72 = alloca %struct.obj_struct, align 8
  %73 = alloca %struct.obj_struct, align 8
  call void (%struct.obj_struct* , void (%struct.obj_struct* , %struct.obj_struct* , i32, %struct.obj_struct* )*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %72, void (%struct.obj_struct* , %struct.obj_struct* , i32, %struct.obj_struct* )* @smpGlobal_1, i32 2, i8* getelementptr inbounds ([7 x i8]* @.smp_str8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.smp_str8, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %73, %struct.obj_struct* byval %66, i32 1, i8* getelementptr inbounds ([2 x i8]* @.smp_str9, i32 0, i32 0), %struct.obj_struct* byval %72)
  %74 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %74, %struct.obj_struct* byval %smpGlobal_$nums, i8* getelementptr inbounds ([4 x i8]* @.smp_str10, i32 0, i32 0), i32 1, %struct.obj_struct* %73)
  %75 = call i32 @smp_should_returnp_c(%struct.obj_struct* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

; <label>:77
  %78 = load %struct.obj_struct* %74, align 8
  store %struct.obj_struct %78, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:79
  %80 = alloca %struct.obj_struct, align 8
  call void @scope_get(%struct.obj_struct* %80, i8* getelementptr inbounds ([7 x i8]* @.smp_str1, i32 0, i32 0))
  %81 = call i32 @smp_should_returnp_c(%struct.obj_struct* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

; <label>:83
  %84 = load %struct.obj_struct* %80, align 8
  store %struct.obj_struct %84, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:85
  %86 = alloca %struct.obj_struct, align 8
  %87 = alloca %struct.obj_struct, align 8
  call void (%struct.obj_struct* , void (%struct.obj_struct* , %struct.obj_struct* , i32, %struct.obj_struct* )*, i32, ...)* @smpFunction_init(%struct.obj_struct* sret %86, void (%struct.obj_struct* , %struct.obj_struct* , i32, %struct.obj_struct* )* @smpGlobal_2, i32 3, i8* getelementptr inbounds ([7 x i8]* @.smp_str8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.smp_str8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.smp_str8, i32 0, i32 0))
  call void @smpType_def(%struct.obj_struct* sret %87, %struct.obj_struct* byval %80, i32 1, i8* getelementptr inbounds ([2 x i8]* @.smp_str11, i32 0, i32 0), %struct.obj_struct* byval %86)
  %88 = alloca %struct.obj_struct, align 8
  call void @smpInteger_init_clong(%struct.obj_struct* sret %88, i64 0)
  %89 = alloca [2 x %struct.obj_struct], align 8
  %90 = getelementptr inbounds [2 x %struct.obj_struct]* %89, i32 0, i32 1
  %91 = load %struct.obj_struct* %88, align 8
  store %struct.obj_struct %91, %struct.obj_struct* %90, align 8
  %92 = getelementptr inbounds [2 x %struct.obj_struct]* %89, i32 0, i32 0
  %93 = load %struct.obj_struct* %87, align 8
  store %struct.obj_struct %93, %struct.obj_struct* %92, align 8
  %94 = bitcast [2 x %struct.obj_struct]* %89 to %struct.obj_struct* 
  %95 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %95, %struct.obj_struct* byval %74, i8* getelementptr inbounds ([7 x i8]* @.smp_str12, i32 0, i32 0), i32 2, %struct.obj_struct* %94)
  %96 = call i32 @smp_should_returnp_c(%struct.obj_struct* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

; <label>:98
  %99 = load %struct.obj_struct* %95, align 8
  store %struct.obj_struct %99, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:100
  %101 = alloca %struct.obj_struct, align 8
  call void @smpObject_funcall(%struct.obj_struct* sret %101, %struct.obj_struct* byval %60, i8* getelementptr inbounds ([8 x i8]* @.smp_str13, i32 0, i32 0), i32 1, %struct.obj_struct* %95)
  %102 = call i32 @smp_should_returnp_c(%struct.obj_struct* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

; <label>:104
  %105 = load %struct.obj_struct* %101, align 8
  store %struct.obj_struct %105, %struct.obj_struct* %agg.result, align 8
  ret void

; <label>:106
  %107 = load %struct.obj_struct* %101, align 8
  store %struct.obj_struct %107, %struct.obj_struct* %agg.result, align 8
  ret void
}



