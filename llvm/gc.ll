; ModuleID = 'gc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%0 = type { i32, i32, i32, i32* }
%1 = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct.anon, %struct.anon, %struct.anon, i8*, i32, i32, %2* }
%2 = type { [14 x i8], i32 }
%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.anon = type { i32, %0* }
%struct.argspec_struct = type { i8*, i8, %struct.obj_struct, i8 }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smptype_struct*, i8* }
%struct.smpfun_struct = type { i8, i8*, %struct.argspec_struct*, [2 x i8], void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@gc_stack_length = common global i64 0, align 8
@gc_add_objectsp = common global i32 0, align 4
@gc_add_next_objectp = common global i32 0, align 4
@gc_activep = common global i32 0, align 4
@gc_runningp = common global i32 0, align 4
@.str = private constant [6 x i8] c"Class\00"
@.str1 = private constant [11 x i8] c"adding %s\0A\00"
@.str2 = private constant [78 x i8] c"Garbage collector is disabled. No memory available to allocate a new object.\0A\00"
@.str3 = private constant [39 x i8] c"gc_run() had nonzero return value %d.\0A\00"
@initialized_classesp = common global i32 0, align 4
@.str4 = private constant [54 x i8] c"Not enough memory to initialize the default classes.\0A\00"
@.str5 = private constant [47 x i8] c"No memory available to allocate a new object.\0A\00"
@gc_counter = common global i32 0, align 4
@gc_stack = common global [1024 x %struct.obj_struct] zeroinitializer, align 16
@.str6 = private constant [9 x i8] c"Function\00"
@.str7 = private constant [16 x i8] c"found %lx (%s)\0A\00"
@scope_classes = common global %struct.minihash_struct zeroinitializer, align 8
@scope_length = common global i64 0, align 8
@scope_stack = common global %struct.minihash_struct* null, align 8
@.str8 = private constant [63 x i8] c"The object with (key %s and core %lx) is not on the GC stack.\0A\00"
@.str9 = private constant [8 x i8] c"gc_mark\00"
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
@smptype_next_id = common global i32 0, align 4
@smptype_ids = common global %struct.minihash_struct zeroinitializer, align 8
@smp_stdin = common global %struct.__sFILE* null, align 8
@smp_stdout = common global %struct.__sFILE* null, align 8
@smp_stderr = common global %struct.__sFILE* null, align 8
@smptype_int = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_float = common global %struct.smptype_struct zeroinitializer, align 8
@smpint_zero = common global %struct.obj_struct zeroinitializer, align 8
@smpint_one = common global %struct.obj_struct zeroinitializer, align 8
@smp_mpfr_rnd = common global i32 0, align 4
@smp_mpfr_default_prec = common global i64 0, align 8
@_DefaultRuneLocale = external global %1

define i32 @gc_init() nounwind {
  store i64 0, i64* @gc_stack_length, align 8
  store i32 1, i32* @gc_add_objectsp, align 4
  store i32 1, i32* @gc_add_next_objectp, align 4
  store i32 1, i32* @gc_activep, align 4
  store i32 0, i32* @gc_runningp, align 4
  ret i32 0
}

define i32 @gc_stack_push(%struct.obj_struct* %obj) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %res = alloca i32, align 4
  %res1 = alloca i32, align 4
  store %struct.obj_struct* %obj, %struct.obj_struct** %2, align 8
  %3 = load %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 2
  %5 = load %struct.smptype_struct** %4, align 8
  %6 = getelementptr inbounds %struct.smptype_struct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %37

; <label>:9                                       ; preds = %0
  %10 = load %struct.obj_struct** %2, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %10, i32 0, i32 2
  %12 = load %struct.smptype_struct** %11, align 8
  %13 = getelementptr inbounds %struct.smptype_struct* %12, i32 0, i32 0
  %14 = load i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

; <label>:17                                      ; preds = %9
  %18 = load %struct.obj_struct** %2, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i32 0, i32 3
  %20 = load i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.smptype_struct*
  %22 = getelementptr inbounds %struct.smptype_struct* %21, i32 0, i32 0
  %23 = load i8** %22, align 8
  %24 = getelementptr inbounds i8* %23, i64 0
  %25 = load i8* %24
  %26 = sext i8 %25 to i32
  %27 = call i32 @isalpha(i32 %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

; <label>:29                                      ; preds = %17
  %30 = load %struct.obj_struct** %2, align 8
  %31 = getelementptr inbounds %struct.obj_struct* %30, i32 0, i32 3
  %32 = load i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.smptype_struct*
  %34 = getelementptr inbounds %struct.smptype_struct* %33, i32 0, i32 0
  %35 = load i8** %34, align 8
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0), i8* %35)
  br label %37

; <label>:37                                      ; preds = %29, %17, %9, %0
  %38 = load i32* @gc_add_objectsp, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %37
  store i32 0, i32* %1
  br label %98

; <label>:41                                      ; preds = %37
  %42 = load i32* @gc_add_next_objectp, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %41
  store i32 1, i32* @gc_add_next_objectp, align 4
  store i32 0, i32* %1
  br label %98

; <label>:45                                      ; preds = %41
  %46 = load i64* @gc_stack_length, align 8
  %47 = icmp uge i64 %46, 1024
  br i1 %47, label %48, label %68

; <label>:48                                      ; preds = %45
  %49 = load i32* @gc_activep, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %48
  call void (i8*, ...)* @fatal_error(i8* getelementptr inbounds ([78 x i8]* @.str2, i32 0, i32 0))
  br label %52

; <label>:52                                      ; preds = %51, %48
  %53 = call i32 @gc_run()
  store i32 %53, i32* %res, align 4
  %54 = load i32* %res, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

; <label>:56                                      ; preds = %52
  %57 = load i32* %res, align 4
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([39 x i8]* @.str3, i32 0, i32 0), i32 %57)
  br label %58

; <label>:58                                      ; preds = %56, %52
  %59 = load i64* @gc_stack_length, align 8
  %60 = icmp uge i64 %59, 1024
  br i1 %60, label %61, label %67

; <label>:61                                      ; preds = %58
  %62 = load i32* @initialized_classesp, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %61
  call void (i8*, ...)* @fatal_error(i8* getelementptr inbounds ([54 x i8]* @.str4, i32 0, i32 0))
  br label %66

; <label>:65                                      ; preds = %61
  call void (i8*, ...)* @fatal_error(i8* getelementptr inbounds ([47 x i8]* @.str5, i32 0, i32 0))
  br label %66

; <label>:66                                      ; preds = %65, %64
  br label %67

; <label>:67                                      ; preds = %66, %58
  br label %82

; <label>:68                                      ; preds = %45
  %69 = load i32* @gc_counter, align 4
  %70 = icmp eq i32 %69, 256
  br i1 %70, label %71, label %81

; <label>:71                                      ; preds = %68
  %72 = load i32* @gc_activep, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

; <label>:74                                      ; preds = %71
  %75 = call i32 @gc_run()
  store i32 %75, i32* %res1, align 4
  %76 = load i32* %res1, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

; <label>:78                                      ; preds = %74
  %79 = load i32* %res1, align 4
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([39 x i8]* @.str3, i32 0, i32 0), i32 %79)
  br label %80

; <label>:80                                      ; preds = %78, %74
  store i32 0, i32* @gc_counter, align 4
  br label %81

; <label>:81                                      ; preds = %80, %71, %68
  br label %82

; <label>:82                                      ; preds = %81, %67
  %83 = load i64* @gc_stack_length, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* @gc_stack_length, align 8
  %85 = getelementptr inbounds [1024 x %struct.obj_struct]* @gc_stack, i32 0, i64 %83
  %86 = load %struct.obj_struct** %2, align 8
  %87 = bitcast %struct.obj_struct* %85 to i8*
  %88 = bitcast %struct.obj_struct* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 32, i32 8, i1 false)
  %89 = load %struct.obj_struct** %2, align 8
  %90 = bitcast %struct.obj_struct* %89 to i8*
  %91 = getelementptr i8* %90, i32 8
  %92 = bitcast i8* %91 to i32*
  %93 = load i32* %92, align 8
  %94 = and i32 %93, -3
  %95 = or i32 %94, 2
  store i32 %95, i32* %92, align 8
  %96 = load i32* @gc_counter, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @gc_counter, align 4
  store i32 0, i32* %1
  br label %98

; <label>:98                                      ; preds = %82, %44, %40
  %99 = load i32* %1
  ret i32 %99
}

declare i32 @strcmp(i8*, i8*)

define internal i32 @isalpha(i32 %_c) nounwind inlinehint {
  %1 = alloca i32, align 4
  store i32 %_c, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = call i32 @__istype(i32 %2, i64 256)
  ret i32 %3
}

declare i32 @printf(i8*, ...)

declare void @fatal_error(i8*, ...)

declare void @internal_error(i8*, ...)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define i32 @gc_run() nounwind {
  %1 = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 1, i32* @gc_runningp, align 4
  %2 = call i32 @gc_mark()
  store i32 %2, i32* %res, align 4
  %3 = load i32* %res, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i32* %res, align 4
  store i32 %6, i32* %1
  br label %10

; <label>:7                                       ; preds = %0
  %8 = call i32 @gc_sweep()
  store i32 %8, i32* %res, align 4
  store i32 0, i32* @gc_runningp, align 4
  %9 = load i32* %res, align 4
  store i32 %9, i32* %1
  br label %10

; <label>:10                                      ; preds = %7, %5
  %11 = load i32* %1
  ret i32 %11
}

define i32 @mh_print_funs(i8* %key, %struct.obj_struct* byval %val) nounwind {
  %1 = alloca i8*, align 8
  store i8* %key, i8** %1, align 8
  %2 = getelementptr inbounds %struct.obj_struct* %val, i32 0, i32 2
  %3 = load %struct.smptype_struct** %2, align 8
  %4 = getelementptr inbounds %struct.smptype_struct* %3, i32 0, i32 0
  %5 = load i8** %4, align 8
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([9 x i8]* @.str6, i32 0, i32 0))
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.obj_struct* %val, i32 0, i32 3
  %10 = load i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.smpfun_struct*
  %12 = getelementptr inbounds %struct.smpfun_struct* %11, i32 0, i32 4
  %13 = load void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)** %12, align 8
  %14 = ptrtoint void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* %13 to i64
  %15 = load i8** %1, align 8
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str7, i32 0, i32 0), i64 %14, i8* %15)
  br label %17

; <label>:17                                      ; preds = %8, %0
  ret i32 0
}

define i32 @gc_mark() nounwind {
  %res = alloca i32, align 4
  %i = alloca i64, align 8
  %1 = call i32 @minihash_each(%struct.minihash_struct* @scope_classes, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  store i32 %1, i32* %res, align 4
  store i64 0, i64* %i, align 8
  br label %2

; <label>:2                                       ; preds = %11, %0
  %3 = load i64* %i, align 8
  %4 = load i64* @scope_length, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %2
  %7 = load i64* %i, align 8
  %8 = load %struct.minihash_struct** @scope_stack, align 8
  %9 = getelementptr inbounds %struct.minihash_struct* %8, i64 %7
  %10 = call i32 @minihash_each(%struct.minihash_struct* %9, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  store i32 %10, i32* %res, align 4
  br label %11

; <label>:11                                      ; preds = %6
  %12 = load i64* %i, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %i, align 8
  br label %2

; <label>:14                                      ; preds = %2
  ret i32 0
}

declare i32 @minihash_each(%struct.minihash_struct*, i32 (i8*, %struct.obj_struct*)*)

define i32 @gc_mark_recursive(i8* %key, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i8* %key, i8** %2, align 8
  %5 = bitcast %struct.obj_struct* %obj to i8*
  %6 = getelementptr i8* %5, i32 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32* %7, align 8
  %9 = lshr i32 %8, 1
  %10 = and i32 %9, 1
  %11 = shl i32 %10, 31
  %12 = ashr i32 %11, 31
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

; <label>:14                                      ; preds = %0
  %15 = load i8** %2, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %17 = load i8** %16, align 8
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([63 x i8]* @.str8, i32 0, i32 0), i8* %15, i8* %17)
  br label %18

; <label>:18                                      ; preds = %14, %0
  %19 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 0
  %20 = load i32** %19, align 8
  %21 = load i32* %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  store i32 0, i32* %1
  br label %29

; <label>:24                                      ; preds = %18
  %25 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 0
  %26 = load i32** %25, align 8
  store i32 1, i32* %26
  %27 = bitcast %struct.obj_struct* %3 to i8*
  %28 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %4, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([8 x i8]* @.str9, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  store i32 0, i32* %1
  br label %29

; <label>:29                                      ; preds = %24, %23
  %30 = load i32* %1
  ret i32 %30
}

declare void @smpobj_funcall(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, i32, %struct.obj_struct*)

define i32 @gc_sweep() nounwind {
  %1 = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %gc_old_stack_length = alloca i64, align 8
  %2 = alloca i8*
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca i32
  store i64 0, i64* %j, align 8
  %5 = load i64* @gc_stack_length, align 8
  store i64 %5, i64* %gc_old_stack_length, align 8
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2
  %7 = load i64* %gc_old_stack_length, align 8
  %8 = mul i64 32, %7
  %9 = alloca i8, i64 %8, align 16
  %10 = bitcast i8* %9 to %struct.obj_struct*
  %11 = bitcast %struct.obj_struct* %10 to i8*
  %12 = call i64 @llvm.objectsize.i64(i8* %11, i1 false)
  %13 = icmp ne i64 %12, -1
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %10 to i8*
  %16 = bitcast %struct.obj_struct* %10 to i8*
  %17 = call i64 @llvm.objectsize.i64(i8* %16, i1 false)
  %18 = call i8* @__memcpy_chk(i8* %15, i8* bitcast ([1024 x %struct.obj_struct]* @gc_stack to i8*), i64 %8, i64 %17)
  br label %22

; <label>:19                                      ; preds = %0
  %20 = bitcast %struct.obj_struct* %10 to i8*
  %21 = call i8* @__inline_memcpy_chk(i8* %20, i8* bitcast ([1024 x %struct.obj_struct]* @gc_stack to i8*), i64 %8)
  br label %22

; <label>:22                                      ; preds = %19, %14
  %23 = phi i8* [ %18, %14 ], [ %21, %19 ]
  store i64 0, i64* %i, align 8
  br label %24

; <label>:24                                      ; preds = %47, %22
  %25 = load i64* %i, align 8
  %26 = load i64* %gc_old_stack_length, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %50

; <label>:28                                      ; preds = %24
  %29 = load i64* %i, align 8
  %30 = getelementptr inbounds %struct.obj_struct* %10, i64 %29
  %31 = getelementptr inbounds %struct.obj_struct* %30, i32 0, i32 0
  %32 = load i32** %31, align 8
  %33 = load i32* %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

; <label>:35                                      ; preds = %28
  %36 = load i64* %j, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %j, align 8
  %38 = getelementptr inbounds [1024 x %struct.obj_struct]* @gc_stack, i32 0, i64 %36
  %39 = load i64* %i, align 8
  %40 = getelementptr inbounds %struct.obj_struct* %10, i64 %39
  %41 = bitcast %struct.obj_struct* %38 to i8*
  %42 = bitcast %struct.obj_struct* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  br label %46

; <label>:43                                      ; preds = %28
  %44 = load i64* %i, align 8
  %45 = getelementptr inbounds %struct.obj_struct* %10, i64 %44
  call void @obj_clear(%struct.obj_struct* sret %3, %struct.obj_struct* %45)
  br label %46

; <label>:46                                      ; preds = %43, %35
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load i64* %i, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %i, align 8
  br label %24

; <label>:50                                      ; preds = %24
  %51 = load i64* %j, align 8
  store i64 %51, i64* @gc_stack_length, align 8
  store i64 0, i64* %i, align 8
  br label %52

; <label>:52                                      ; preds = %68, %50
  %53 = load i64* %i, align 8
  %54 = load i64* %gc_old_stack_length, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %71

; <label>:56                                      ; preds = %52
  %57 = load i64* %i, align 8
  %58 = getelementptr inbounds %struct.obj_struct* %10, i64 %57
  %59 = getelementptr inbounds %struct.obj_struct* %58, i32 0, i32 0
  %60 = load i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

; <label>:62                                      ; preds = %56
  %63 = load i64* %i, align 8
  %64 = getelementptr inbounds %struct.obj_struct* %10, i64 %63
  %65 = getelementptr inbounds %struct.obj_struct* %64, i32 0, i32 0
  %66 = load i32** %65, align 8
  store i32 0, i32* %66
  br label %67

; <label>:67                                      ; preds = %62, %56
  br label %68

; <label>:68                                      ; preds = %67
  %69 = load i64* %i, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %i, align 8
  br label %52

; <label>:71                                      ; preds = %52
  store i32 0, i32* %1
  store i32 1, i32* %4
  %72 = load i8** %2
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32* %1
  ret i32 %73
}

declare i8* @llvm.stacksave() nounwind

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

declare void @obj_clear(%struct.obj_struct* sret, %struct.obj_struct*)

declare void @llvm.stackrestore(i8*) nounwind

define internal i32 @__istype(i32 %_c, i64 %_f) nounwind inlinehint {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 %_c, i32* %1, align 4
  store i64 %_f, i64* %2, align 8
  %3 = load i32* %1, align 4
  %4 = call i32 @isascii(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = load i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [256 x i32]* getelementptr inbounds (%1* @_DefaultRuneLocale, i32 0, i32 5), i32 0, i64 %8
  %10 = load i32* %9
  %11 = zext i32 %10 to i64
  %12 = load i64* %2, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  br label %26

; <label>:18                                      ; preds = %0
  %19 = load i32* %1, align 4
  %20 = load i64* %2, align 8
  %21 = call i32 @__maskrune(i32 %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  br label %26

; <label>:26                                      ; preds = %18, %6
  %27 = phi i32 [ %17, %6 ], [ %25, %18 ]
  ret i32 %27
}

define internal i32 @isascii(i32 %_c) nounwind inlinehint {
  %1 = alloca i32, align 4
  store i32 %_c, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = and i32 %2, -128
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare i32 @__maskrune(i32, i64)
