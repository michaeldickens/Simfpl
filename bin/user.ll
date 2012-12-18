target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { %struct.smpType_struct*, i8* }
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

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind
declare i32 @smp_should_breakp_c(%struct.smpType_struct*, i8*) nounwind
declare i32 @smp_should_returnp_c(%struct.smpType_struct*, i8*) nounwind
declare i32 @smp_thrown_exceptionp_c(%struct.smpType_struct*, i8*) nounwind
declare i32 @smpObject_truep_c(%struct.smpType_struct*, i8*) nounwind
declare %struct.obj_struct @smpObject_funcall(%struct.smpType_struct*, i8*, i8*, i32, %struct.obj_struct*) nounwind
declare %struct.obj_struct @smpInteger_init_clong(i64) nounwind
declare %struct.obj_struct @smpInteger_init_str(i8*) nounwind
declare %struct.obj_struct @smpFloat_init_str(i8*) nounwind
declare %struct.obj_struct @smpFunction_init(%struct.obj_struct (%struct.smpType_struct*, i8*, i32, %struct.obj_struct*)*, i32, ...) nounwind
declare %struct.obj_struct @smpType_def(%struct.smpType_struct*, i8*, i32, i8*, %struct.smpType_struct*, i8*) nounwind
declare %struct.obj_struct @smpString_init(i8*)
declare %struct.obj_struct @smpThrown_get_first_value(%struct.smpType_struct*, i8*) nounwind
declare i32 @scope_add(i8*, %struct.smpType_struct*, i8*) nounwind
declare %struct.obj_struct @scope_get(i8*) nounwind
declare i32 @scope_pop()
declare i32 @scope_push()


@.smp_str1 = private constant [7 x i8] c"Global\00"
@.smp_str2 = private constant [2 x i8] c"1\00"
@.smp_str3 = private constant [2 x i8] c"2\00"
@.smp_str4 = private constant [2 x i8] c"3\00"
@.smp_str5 = private constant [6 x i8] c"array\00"
@.smp_str6 = private constant [2 x i8] c"x\00"
@.smp_str7 = private constant [2 x i8] c"*\00"
@.smp_str8 = private constant [7 x i8] c"Object\00"
@.smp_str9 = private constant [4 x i8] c"map\00"
@.smp_str10 = private constant [8 x i8] c"println\00"


define %struct.obj_struct @smpGlobal_1(%struct.smpType_struct* %obj.coerce0, i8* %obj.coerce1,  i32 %argc, %struct.obj_struct* %argv) {
  %1 = call i32 @scope_push()
  %obj = alloca %struct.obj_struct, align 8
  %2 = getelementptr %struct.obj_struct* %obj, i32 0, i32 0
  store %struct.smpType_struct* %obj.coerce0, %struct.smpType_struct** %2
  %3 = getelementptr %struct.obj_struct* %obj, i32 0, i32 1
  store i8* %obj.coerce1, i8** %3
  %smpGlobal_x = getelementptr inbounds %struct.obj_struct* %argv, i32 0
  %4 = getelementptr inbounds %struct.obj_struct* %smpGlobal_x, i32 0, i32 0
  %5 = load %struct.smpType_struct** %4
  %6 = getelementptr inbounds %struct.obj_struct* %smpGlobal_x, i32 0, i32 1
  %7 = load i8** %6
  %8 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.smp_str6, i32 0, i32 0), %struct.smpType_struct* %5, i8* %7)
  %9 = call %struct.obj_struct @smpInteger_init_str(i8* getelementptr inbounds ([2 x i8]* @.smp_str3, i32 0, i32 0))
  %10 = call %struct.obj_struct @scope_get(i8* getelementptr inbounds ([2 x i8]* @.smp_str6, i32 0, i32 0))
  %11 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %10, %struct.obj_struct* %11, align 8
  %12 = getelementptr inbounds %struct.obj_struct* %11, i32 0, i32 0
  %13 = load %struct.smpType_struct** %12
  %14 = getelementptr inbounds %struct.obj_struct* %11, i32 0, i32 1
  %15 = load i8** %14
  %16 = call i32 @smp_should_returnp_c(%struct.smpType_struct* %13, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18
  ret %struct.obj_struct %10

; <label>:19
  %20 = alloca [1 x %struct.obj_struct], align 8
  %21 = getelementptr inbounds [1 x %struct.obj_struct]* %20, i32 0, i32 0
  store %struct.obj_struct %10, %struct.obj_struct* %21, align 8
  %22 = bitcast [1 x %struct.obj_struct]* %20 to %struct.obj_struct* 
  %23 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %9, %struct.obj_struct* %23, align 8
  %24 = getelementptr inbounds %struct.obj_struct* %23, i32 0, i32 0
  %25 = load %struct.smpType_struct** %24
  %26 = getelementptr inbounds %struct.obj_struct* %23, i32 0, i32 1
  %27 = load i8** %26
  %28 = call %struct.obj_struct @smpObject_funcall(%struct.smpType_struct* %25, i8* %27, i8* getelementptr inbounds ([2 x i8]* @.smp_str7, i32 0, i32 0), i32 1, %struct.obj_struct* %22)
  %29 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %28, %struct.obj_struct* %29, align 8
  %30 = getelementptr inbounds %struct.obj_struct* %29, i32 0, i32 0
  %31 = load %struct.smpType_struct** %30
  %32 = getelementptr inbounds %struct.obj_struct* %29, i32 0, i32 1
  %33 = load i8** %32
  %34 = call i32 @smp_should_returnp_c(%struct.smpType_struct* %31, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36
  ret %struct.obj_struct %28

; <label>:37
  %38 = call i32 @scope_pop()
  ret %struct.obj_struct%28
}

define %struct.obj_struct @smpGlobal_main(%struct.smpType_struct* %obj.coerce0, i8* %obj.coerce1, i32 %argc, %struct.obj_struct* %argv) {
  %1 = call %struct.obj_struct @scope_get(i8* getelementptr inbounds ([7 x i8]* @.smp_str1, i32 0, i32 0))
  %2 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %1, %struct.obj_struct* %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 0
  %4 = load %struct.smpType_struct** %3
  %5 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 1
  %6 = load i8** %5
  %7 = call i32 @smp_should_returnp_c(%struct.smpType_struct* %4, i8* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9
  ret %struct.obj_struct %1

; <label>:10
  %11 = call %struct.obj_struct @scope_get(i8* getelementptr inbounds ([7 x i8]* @.smp_str1, i32 0, i32 0))
  %12 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %11, %struct.obj_struct* %12, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %12, i32 0, i32 0
  %14 = load %struct.smpType_struct** %13
  %15 = getelementptr inbounds %struct.obj_struct* %12, i32 0, i32 1
  %16 = load i8** %15
  %17 = call i32 @smp_should_returnp_c(%struct.smpType_struct* %14, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19
  ret %struct.obj_struct %11

; <label>:20
  %21 = call %struct.obj_struct @smpInteger_init_str(i8* getelementptr inbounds ([2 x i8]* @.smp_str2, i32 0, i32 0))
  %22 = call %struct.obj_struct @smpInteger_init_str(i8* getelementptr inbounds ([2 x i8]* @.smp_str3, i32 0, i32 0))
  %23 = call %struct.obj_struct @smpInteger_init_str(i8* getelementptr inbounds ([2 x i8]* @.smp_str4, i32 0, i32 0))
  %24 = alloca [3 x %struct.obj_struct], align 8
  %25 = getelementptr inbounds [3 x %struct.obj_struct]* %24, i32 0, i32 2
  store %struct.obj_struct %23, %struct.obj_struct* %25, align 8
  %26 = getelementptr inbounds [3 x %struct.obj_struct]* %24, i32 0, i32 1
  store %struct.obj_struct %22, %struct.obj_struct* %26, align 8
  %27 = getelementptr inbounds [3 x %struct.obj_struct]* %24, i32 0, i32 0
  store %struct.obj_struct %21, %struct.obj_struct* %27, align 8
  %28 = bitcast [3 x %struct.obj_struct]* %24 to %struct.obj_struct* 
  %29 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %11, %struct.obj_struct* %29, align 8
  %30 = getelementptr inbounds %struct.obj_struct* %29, i32 0, i32 0
  %31 = load %struct.smpType_struct** %30
  %32 = getelementptr inbounds %struct.obj_struct* %29, i32 0, i32 1
  %33 = load i8** %32
  %34 = call %struct.obj_struct @smpObject_funcall(%struct.smpType_struct* %31, i8* %33, i8* getelementptr inbounds ([6 x i8]* @.smp_str5, i32 0, i32 0), i32 3, %struct.obj_struct* %28)
  %35 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %34, %struct.obj_struct* %35, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i32 0, i32 0
  %37 = load %struct.smpType_struct** %36
  %38 = getelementptr inbounds %struct.obj_struct* %35, i32 0, i32 1
  %39 = load i8** %38
  %40 = call i32 @smp_should_returnp_c(%struct.smpType_struct* %37, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42
  ret %struct.obj_struct %34

; <label>:43
  %44 = call %struct.obj_struct @scope_get(i8* getelementptr inbounds ([7 x i8]* @.smp_str1, i32 0, i32 0))
  %45 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %44, %struct.obj_struct* %45, align 8
  %46 = getelementptr inbounds %struct.obj_struct* %45, i32 0, i32 0
  %47 = load %struct.smpType_struct** %46
  %48 = getelementptr inbounds %struct.obj_struct* %45, i32 0, i32 1
  %49 = load i8** %48
  %50 = call i32 @smp_should_returnp_c(%struct.smpType_struct* %47, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52
  ret %struct.obj_struct %44

; <label>:53
  %54 = call %struct.obj_struct (%struct.obj_struct (%struct.smpType_struct*, i8*, i32, %struct.obj_struct* )*, i32, ...)* @smpFunction_init(%struct.obj_struct (%struct.smpType_struct*, i8*, i32, %struct.obj_struct* )* @smpGlobal_1, i32 2, i8* getelementptr inbounds ([7 x i8]* @.smp_str8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.smp_str8, i32 0, i32 0))
  %55 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %44, %struct.obj_struct* %55, align 8
  %56 = getelementptr inbounds %struct.obj_struct* %55, i32 0, i32 0
  %57 = load %struct.smpType_struct** %56
  %58 = getelementptr inbounds %struct.obj_struct* %55, i32 0, i32 1
  %59 = load i8** %58
  %60 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %54, %struct.obj_struct* %60, align 8
  %61 = getelementptr inbounds %struct.obj_struct* %60, i32 0, i32 0
  %62 = load %struct.smpType_struct** %61
  %63 = getelementptr inbounds %struct.obj_struct* %60, i32 0, i32 1
  %64 = load i8** %63
  %65 = call %struct.obj_struct @smpType_def(%struct.smpType_struct* %57, i8* %59, i32 1, i8* getelementptr inbounds ([2 x i8]* @.smp_str2, i32 0, i32 0), %struct.smpType_struct* %62, i8* %64)
  %66 = alloca [1 x %struct.obj_struct], align 8
  %67 = getelementptr inbounds [1 x %struct.obj_struct]* %66, i32 0, i32 0
  store %struct.obj_struct %65, %struct.obj_struct* %67, align 8
  %68 = bitcast [1 x %struct.obj_struct]* %66 to %struct.obj_struct* 
  %69 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %34, %struct.obj_struct* %69, align 8
  %70 = getelementptr inbounds %struct.obj_struct* %69, i32 0, i32 0
  %71 = load %struct.smpType_struct** %70
  %72 = getelementptr inbounds %struct.obj_struct* %69, i32 0, i32 1
  %73 = load i8** %72
  %74 = call %struct.obj_struct @smpObject_funcall(%struct.smpType_struct* %71, i8* %73, i8* getelementptr inbounds ([4 x i8]* @.smp_str9, i32 0, i32 0), i32 1, %struct.obj_struct* %68)
  %75 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %74, %struct.obj_struct* %75, align 8
  %76 = getelementptr inbounds %struct.obj_struct* %75, i32 0, i32 0
  %77 = load %struct.smpType_struct** %76
  %78 = getelementptr inbounds %struct.obj_struct* %75, i32 0, i32 1
  %79 = load i8** %78
  %80 = call i32 @smp_should_returnp_c(%struct.smpType_struct* %77, i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

; <label>:82
  ret %struct.obj_struct %74

; <label>:83
  %84 = alloca [1 x %struct.obj_struct], align 8
  %85 = getelementptr inbounds [1 x %struct.obj_struct]* %84, i32 0, i32 0
  store %struct.obj_struct %74, %struct.obj_struct* %85, align 8
  %86 = bitcast [1 x %struct.obj_struct]* %84 to %struct.obj_struct* 
  %87 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %1, %struct.obj_struct* %87, align 8
  %88 = getelementptr inbounds %struct.obj_struct* %87, i32 0, i32 0
  %89 = load %struct.smpType_struct** %88
  %90 = getelementptr inbounds %struct.obj_struct* %87, i32 0, i32 1
  %91 = load i8** %90
  %92 = call %struct.obj_struct @smpObject_funcall(%struct.smpType_struct* %89, i8* %91, i8* getelementptr inbounds ([8 x i8]* @.smp_str10, i32 0, i32 0), i32 1, %struct.obj_struct* %86)
  %93 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %92, %struct.obj_struct* %93, align 8
  %94 = getelementptr inbounds %struct.obj_struct* %93, i32 0, i32 0
  %95 = load %struct.smpType_struct** %94
  %96 = getelementptr inbounds %struct.obj_struct* %93, i32 0, i32 1
  %97 = load i8** %96
  %98 = call i32 @smp_should_returnp_c(%struct.smpType_struct* %95, i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

; <label>:100
  ret %struct.obj_struct %92

; <label>:101
  ret %struct.obj_struct %92
}

