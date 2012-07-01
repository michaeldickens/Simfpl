; ModuleID = 'object.c'
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
%struct.smppair_struct = type { %struct.obj_struct, %struct.obj_struct* }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }
%struct.standardcore_struct = type { %struct.minihash_struct }

@gc_runningp = common global i32 0, align 4
@.str = private constant [58 x i8] c"Cannot initialize %s while running the garbage collector.\00"
@.str1 = private constant [24 x i8] c"InitializationException\00"
@.str2 = private constant [38 x i8] c"Cannot initialize singleton class %s.\00"
@.str3 = private constant [7 x i8] c"String\00"
@.str4 = private constant [5 x i8] c"hash\00"
@smptype_id_int = common global i32 0, align 4
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@.str5 = private constant [6 x i8] c"clear\00"
@smptype_id = common global %struct.smptype_struct zeroinitializer, align 8
@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@smptype_id_nil = common global i32 0, align 4
@smptype_id_list = common global i32 0, align 4
@.str6 = private constant [14 x i8] c"ArgumentError\00"
@.str7 = private constant [50 x i8] c"Wrong number of arguments (1 expected, %d found).\00"
@.str8 = private constant [7 x i8] c"equal?\00"
@.str9 = private constant [4 x i8] c"eq?\00"
@.str10 = private constant [7 x i8] c"Thrown\00"
@smptype_id_class = common global i32 0, align 4
@.str11 = private constant [21 x i8] c"UndefinedSymbolError\00"
@.str12 = private constant [41 x i8] c"Class function \22%s\22 is undefined for %s.\00"
@.str13 = private constant [44 x i8] c"Instance function \22%s\22 is undefined for %s.\00"
@.str14 = private constant [9 x i8] c"Function\00"
@.str15 = private constant [29 x i8] c"Function expected, %s found.\00"
@.str16 = private constant [6 x i8] c"Class\00"
@.str17 = private constant [11 x i8] c"<%s 0x%lx>\00"
@.str18 = private constant [75 x i8] c"In smpobj_varcall(), expected object of type %s to be an external object.\0A\00"
@.str19 = private constant [5 x i8] c"to_s\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
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
@smp_global = common global %struct.obj_struct zeroinitializer, align 8
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

define void @obj_init(%struct.obj_struct* sret %agg.result, %struct.smptype_struct* %type) nounwind {
  %1 = alloca %struct.smptype_struct*, align 8
  %obj = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %core = alloca %struct.standardcore_struct, align 8
  store %struct.smptype_struct* %type, %struct.smptype_struct** %1, align 8
  %4 = load i32* @gc_runningp, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %0
  %7 = load %struct.smptype_struct** %1, align 8
  %8 = getelementptr inbounds %struct.smptype_struct* %7, i32 0, i32 0
  %9 = load i8** %8, align 8
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([58 x i8]* @.str, i32 0, i32 0), i8* %9)
  br label %10

; <label>:10                                      ; preds = %6, %0
  %11 = call i8* @smp_malloc(i64 4)
  %12 = bitcast i8* %11 to i32*
  %13 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 0
  store i32* %12, i32** %13, align 8
  %14 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 0
  %15 = load i32** %14, align 8
  store i32 0, i32* %15
  %16 = bitcast %struct.obj_struct* %obj to i8*
  %17 = getelementptr i8* %16, i32 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32* %18, align 8
  %20 = and i32 %19, -3
  store i32 %20, i32* %18, align 8
  %21 = bitcast %struct.obj_struct* %obj to i8*
  %22 = getelementptr i8* %21, i32 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32* %23, align 8
  %25 = and i32 %24, -2
  store i32 %25, i32* %23, align 8
  %26 = load %struct.smptype_struct** %1, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  store %struct.smptype_struct* %26, %struct.smptype_struct** %27, align 8
  %28 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  store i8* null, i8** %28, align 8
  %29 = load %struct.smptype_struct** %1, align 8
  %30 = bitcast %struct.smptype_struct* %29 to i8*
  %31 = getelementptr i8* %30, i32 12
  %32 = bitcast i8* %31 to i32*
  %33 = load i32* %32, align 4
  %34 = lshr i32 %33, 2
  %35 = and i32 %34, 3
  %36 = shl i32 %35, 30
  %37 = ashr i32 %36, 30
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %62

; <label>:39                                      ; preds = %10
  %40 = load %struct.smptype_struct** %1, align 8
  %41 = bitcast %struct.smptype_struct* %40 to i8*
  %42 = getelementptr i8* %41, i32 12
  %43 = bitcast i8* %42 to i32*
  %44 = load i32* %43, align 4
  %45 = lshr i32 %44, 1
  %46 = and i32 %45, 1
  %47 = shl i32 %46, 31
  %48 = ashr i32 %47, 31
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

; <label>:50                                      ; preds = %39
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([24 x i8]* @.str1, i32 0, i32 0))
  %51 = load %struct.smptype_struct** %1, align 8
  %52 = getelementptr inbounds %struct.smptype_struct* %51, i32 0, i32 0
  %53 = load i8** %52, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([38 x i8]* @.str2, i32 0, i32 0), i8* %53)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
  br label %84

; <label>:54                                      ; preds = %39
  %55 = load %struct.smptype_struct** %1, align 8
  %56 = bitcast %struct.smptype_struct* %55 to i8*
  %57 = getelementptr i8* %56, i32 12
  %58 = bitcast i8* %57 to i32*
  %59 = load i32* %58, align 4
  %60 = and i32 %59, -3
  %61 = or i32 %60, 2
  store i32 %61, i32* %58, align 4
  br label %62

; <label>:62                                      ; preds = %54, %10
  %63 = load %struct.smptype_struct** %1, align 8
  %64 = bitcast %struct.smptype_struct* %63 to i8*
  %65 = getelementptr i8* %64, i32 12
  %66 = bitcast i8* %65 to i32*
  %67 = load i32* %66, align 4
  %68 = and i32 %67, 1
  %69 = shl i32 %68, 31
  %70 = ashr i32 %69, 31
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

; <label>:72                                      ; preds = %62
  %73 = getelementptr inbounds %struct.standardcore_struct* %core, i32 0, i32 0
  call void (%struct.minihash_struct*, ...)* @minihash_init(%struct.minihash_struct* sret %73)
  %74 = call i8* @smp_malloc(i64 32)
  %75 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %77 = load i8** %76, align 8
  %78 = bitcast i8* %77 to %struct.standardcore_struct*
  %79 = bitcast %struct.standardcore_struct* %78 to i8*
  %80 = bitcast %struct.standardcore_struct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 32, i32 8, i1 false)
  br label %81

; <label>:81                                      ; preds = %72, %62
  %82 = bitcast %struct.obj_struct* %agg.result to i8*
  %83 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 32, i32 8, i1 false)
  br label %84

; <label>:84                                      ; preds = %81, %50
  ret void
}

declare void @internal_error(i8*, ...)

declare i8* @smp_malloc(i64)

declare void @smpglobal_throw(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smpexc_init_fmt(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, ...)

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @minihash_init(%struct.minihash_struct* sret, ...)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define i32 @obj_hash(i32* %dest, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %hash = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32* %dest, i32** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %7 = load %struct.smptype_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smptype_struct* %7, i32 0, i32 0
  %9 = load i8** %8, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %0
  %13 = bitcast %struct.obj_struct* %3 to i8*
  %14 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  %15 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %3)
  %16 = call i32 @minihash_function(i8* %15)
  %17 = load i32** %2, align 8
  store i32 %16, i32* %17
  store i32 0, i32* %1
  br label %34

; <label>:18                                      ; preds = %0
  %19 = bitcast %struct.obj_struct* %4 to i8*
  %20 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %hash, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %21 = getelementptr inbounds %struct.obj_struct* %hash, i32 0, i32 2
  %22 = load %struct.smptype_struct** %21, align 8
  %23 = getelementptr inbounds %struct.smptype_struct* %22, i32 0, i32 1
  %24 = load i32* %23, align 4
  %25 = load i32* @smptype_id_int, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

; <label>:27                                      ; preds = %18
  %28 = bitcast %struct.obj_struct* %5 to i8*
  %29 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  %30 = call i64 @smpint_to_clong(%struct.obj_struct* byval %5)
  %31 = trunc i64 %30 to i32
  %32 = load i32** %2, align 8
  store i32 %31, i32* %32
  store i32 0, i32* %1
  br label %34

; <label>:33                                      ; preds = %18
  store i32 1, i32* %1
  br label %34

; <label>:34                                      ; preds = %33, %27, %12
  %35 = load i32* %1
  ret i32 %35
}

declare i32 @strcmp(i8*, i8*)

declare i32 @minihash_function(i8*)

declare i8* @smpstr_to_cstr(%struct.obj_struct* byval)

define void @smpobj_funcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i8* %name, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.obj_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %fun = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i8* %name, i8** %1, align 8
  store i32 %argc, i32* %2, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %3, align 8
  %7 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %8 = bitcast %struct.obj_struct* %4 to i8*
  %9 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = load i8** %1, align 8
  call void @smpobj_get_fun(%struct.obj_struct* sret %fun, %struct.obj_struct* byval %4, i8* %10)
  %11 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 2
  %12 = load %struct.smptype_struct** %11, align 8
  %13 = getelementptr inbounds %struct.smptype_struct* %12, i32 0, i32 0
  %14 = load i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17                                      ; preds = %0
  %18 = bitcast %struct.obj_struct* %agg.result to i8*
  %19 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  br label %29

; <label>:20                                      ; preds = %0
  %21 = bitcast %struct.obj_struct* %5 to i8*
  %22 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  %23 = bitcast %struct.obj_struct* %6 to i8*
  %24 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  %25 = load i32* %2, align 4
  %26 = load %struct.obj_struct** %3, align 8
  call void @smpfun_call(%struct.obj_struct* sret %res, %struct.obj_struct* byval %5, %struct.obj_struct* byval %6, i32 %25, %struct.obj_struct* %26)
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  %28 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  br label %29

; <label>:29                                      ; preds = %20, %17
  ret void
}

declare i64 @smpint_to_clong(%struct.obj_struct* byval)

define void @obj_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* %obj) nounwind {
  %1 = alloca %struct.obj_struct*, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct* %obj, %struct.obj_struct** %1, align 8
  %4 = load %struct.obj_struct** %1, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %6 = load %struct.smptype_struct** %5, align 8
  %7 = bitcast %struct.smptype_struct* %6 to i8*
  %8 = getelementptr i8* %7, i32 12
  %9 = bitcast i8* %8 to i32*
  %10 = load i32* %9, align 4
  %11 = lshr i32 %10, 2
  %12 = and i32 %11, 3
  %13 = shl i32 %12, 30
  %14 = ashr i32 %13, 30
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %0
  %17 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %38

; <label>:18                                      ; preds = %0
  %19 = load %struct.obj_struct** %1, align 8
  %20 = bitcast %struct.obj_struct* %2 to i8*
  %21 = bitcast %struct.obj_struct* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %3, %struct.obj_struct* byval %2, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %22 = load %struct.obj_struct** %1, align 8
  %23 = getelementptr inbounds %struct.obj_struct* %22, i32 0, i32 0
  %24 = load i32** %23, align 8
  %25 = bitcast i32* %24 to i8*
  call void @smp_free(i8* %25)
  %26 = load %struct.obj_struct** %1, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  call void @smp_free(i8* %28)
  %29 = load %struct.obj_struct** %1, align 8
  %30 = getelementptr inbounds %struct.obj_struct* %29, i32 0, i32 2
  store %struct.smptype_struct* null, %struct.smptype_struct** %30, align 8
  %31 = load %struct.obj_struct** %1, align 8
  %32 = getelementptr inbounds %struct.obj_struct* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.obj_struct** %1, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i32 0, i32 3
  store i8* null, i8** %34, align 8
  %35 = load %struct.obj_struct** %1, align 8
  %36 = bitcast %struct.obj_struct* %agg.result to i8*
  %37 = bitcast %struct.obj_struct* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  br label %38

; <label>:38                                      ; preds = %18, %16
  ret void
}

declare void @smp_free(i8*)

define void @objid_init(%struct.obj_struct* sret %agg.result, i32 %type_id) nounwind {
  %1 = alloca i32, align 4
  %res = alloca %struct.obj_struct, align 8
  store i32 %type_id, i32* %1, align 4
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_id)
  %2 = load i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = inttoptr i64 %3 to i8*
  %5 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %4, i8** %5, align 8
  %6 = bitcast %struct.obj_struct* %agg.result to i8*
  %7 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  ret void
}

define void @obj_eq(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj1, %struct.obj_struct* byval %obj2) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj1, i32 0, i32 3
  %2 = load i8** %1, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj2, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = icmp eq i8* %2, %4
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  br label %10

; <label>:8                                       ; preds = %0
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %10

; <label>:10                                      ; preds = %8, %6
  ret void
}

define void @obj_types_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj1, %struct.obj_struct* byval %obj2) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj1, i32 0, i32 2
  %2 = load %struct.smptype_struct** %1, align 8
  %3 = getelementptr inbounds %struct.smptype_struct* %2, i32 0, i32 0
  %4 = load i8** %3, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj2, i32 0, i32 2
  %6 = load %struct.smptype_struct** %5, align 8
  %7 = getelementptr inbounds %struct.smptype_struct* %6, i32 0, i32 0
  %8 = load i8** %7, align 8
  %9 = call i32 @strcmp(i8* %4, i8* %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  br label %15

; <label>:13                                      ; preds = %0
  %14 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %15

; <label>:15                                      ; preds = %13, %11
  ret void
}

define void @smpobj_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpobj_cons(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %list = alloca %struct.smppair_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.smppair_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.smppair_struct* %list, i32 0, i32 0
  %7 = bitcast %struct.obj_struct* %6 to i8*
  %8 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  %9 = load %struct.obj_struct** %2, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %9, i64 0
  %11 = getelementptr inbounds %struct.obj_struct* %10, i32 0, i32 2
  %12 = load %struct.smptype_struct** %11, align 8
  %13 = getelementptr inbounds %struct.smptype_struct* %12, i32 0, i32 1
  %14 = load i32* %13, align 4
  %15 = load i32* @smptype_id_nil, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.smppair_struct* %list, i32 0, i32 1
  store %struct.obj_struct* null, %struct.obj_struct** %18, align 8
  br label %46

; <label>:19                                      ; preds = %0
  %20 = load %struct.obj_struct** %2, align 8
  %21 = getelementptr inbounds %struct.obj_struct* %20, i64 0
  %22 = getelementptr inbounds %struct.obj_struct* %21, i32 0, i32 2
  %23 = load %struct.smptype_struct** %22, align 8
  %24 = getelementptr inbounds %struct.smptype_struct* %23, i32 0, i32 1
  %25 = load i32* %24, align 4
  %26 = load i32* @smptype_id_list, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

; <label>:28                                      ; preds = %19
  %29 = call i8* @smp_malloc(i64 32)
  %30 = bitcast i8* %29 to %struct.obj_struct*
  %31 = getelementptr inbounds %struct.smppair_struct* %list, i32 0, i32 1
  store %struct.obj_struct* %30, %struct.obj_struct** %31, align 8
  %32 = getelementptr inbounds %struct.smppair_struct* %list, i32 0, i32 1
  %33 = load %struct.obj_struct** %32, align 8
  %34 = load %struct.obj_struct** %2, align 8
  %35 = getelementptr inbounds %struct.obj_struct* %34, i64 0
  %36 = bitcast %struct.obj_struct* %33 to i8*
  %37 = bitcast %struct.obj_struct* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  br label %45

; <label>:38                                      ; preds = %19
  %39 = bitcast %struct.obj_struct* %3 to i8*
  %40 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  %41 = load %struct.obj_struct** %2, align 8
  %42 = getelementptr inbounds %struct.obj_struct* %41, i64 0
  %43 = bitcast %struct.obj_struct* %4 to i8*
  %44 = bitcast %struct.obj_struct* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  call void @smppair_init(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  br label %49

; <label>:45                                      ; preds = %28
  br label %46

; <label>:46                                      ; preds = %45, %17
  %47 = bitcast %struct.smppair_struct* %5 to i8*
  %48 = bitcast %struct.smppair_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 40, i32 8, i1 false)
  call void @smplist_init(%struct.obj_struct* sret %agg.result, %struct.smppair_struct* byval %5)
  br label %49

; <label>:49                                      ; preds = %46, %38
  ret void
}

declare void @smppair_init(%struct.obj_struct* sret, %struct.obj_struct* byval, %struct.obj_struct* byval)

declare void @smplist_init(%struct.obj_struct* sret, %struct.smppair_struct* byval)

define void @smpobj_cons_c(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %car, %struct.obj_struct* byval %cdr) nounwind {
  %1 = alloca %struct.obj_struct, align 8
  %2 = bitcast %struct.obj_struct* %1 to i8*
  %3 = bitcast %struct.obj_struct* %car to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %1, i32 1, %struct.obj_struct* %cdr)
  ret void
}

define void @smpobj_eq(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load i32* %1, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = load %struct.obj_struct** %2, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %10, i64 0
  %12 = getelementptr inbounds %struct.obj_struct* %11, i32 0, i32 3
  %13 = load i8** %12, align 8
  %14 = icmp eq i8* %9, %13
  %15 = zext i1 %14 to i32
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %15)
  br label %18

; <label>:16                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([14 x i8]* @.str6, i32 0, i32 0))
  %17 = load i32* %1, align 4
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([50 x i8]* @.str7, i32 0, i32 0), i32 %17)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %18

; <label>:18                                      ; preds = %16, %7
  ret void
}

declare void @smpbool_init(%struct.obj_struct* sret, i32)

define void @smpobj_eql(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = load i32* %1, align 4
  %7 = load %struct.obj_struct** %2, align 8
  call void @smpobj_funcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0), i32 %6, %struct.obj_struct* %7)
  ret void
}

define void @smpobj_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = load i32* %1, align 4
  %7 = load %struct.obj_struct** %2, align 8
  call void @smpobj_funcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0), i32 %6, %struct.obj_struct* %7)
  ret void
}

define void @smpobj_get_fun(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i8* %name) nounwind {
  %1 = alloca i8*, align 8
  %type = alloca %struct.smptype_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %type1 = alloca %struct.smptype_struct*, align 8
  %res2 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i8* %name, i8** %1, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %7 = load %struct.smptype_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smptype_struct* %7, i32 0, i32 1
  %9 = load i32* %8, align 4
  %10 = load i32* @smptype_id_class, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %32

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smptype_struct*
  store %struct.smptype_struct* %15, %struct.smptype_struct** %type, align 8
  %16 = load %struct.smptype_struct** %type, align 8
  %17 = load i8** %1, align 8
  call void @smpobj_get_fun_rec(%struct.obj_struct* sret %res, %struct.smptype_struct* %16, i8* %17, i32 0)
  %18 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 2
  %19 = load %struct.smptype_struct** %18, align 8
  %20 = getelementptr inbounds %struct.smptype_struct* %19, i32 0, i32 1
  %21 = load i32* %20, align 4
  %22 = load i32* @smptype_id_nil, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

; <label>:24                                      ; preds = %12
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([21 x i8]* @.str11, i32 0, i32 0))
  %25 = load i8** %1, align 8
  %26 = load %struct.smptype_struct** %type, align 8
  %27 = getelementptr inbounds %struct.smptype_struct* %26, i32 0, i32 0
  %28 = load i8** %27, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([41 x i8]* @.str12, i32 0, i32 0), i8* %25, i8* %28)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
  br label %51

; <label>:29                                      ; preds = %12
  %30 = bitcast %struct.obj_struct* %agg.result to i8*
  %31 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  br label %51

; <label>:32                                      ; preds = %0
  %33 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %34 = load %struct.smptype_struct** %33, align 8
  store %struct.smptype_struct* %34, %struct.smptype_struct** %type1, align 8
  %35 = load %struct.smptype_struct** %type1, align 8
  %36 = load i8** %1, align 8
  call void @smpobj_get_fun_rec(%struct.obj_struct* sret %res2, %struct.smptype_struct* %35, i8* %36, i32 1)
  %37 = getelementptr inbounds %struct.obj_struct* %res2, i32 0, i32 2
  %38 = load %struct.smptype_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smptype_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smptype_id_nil, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

; <label>:43                                      ; preds = %32
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([21 x i8]* @.str11, i32 0, i32 0))
  %44 = load i8** %1, align 8
  %45 = load %struct.smptype_struct** %type1, align 8
  %46 = getelementptr inbounds %struct.smptype_struct* %45, i32 0, i32 0
  %47 = load i8** %46, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %4, %struct.obj_struct* byval %5, i8* getelementptr inbounds ([44 x i8]* @.str13, i32 0, i32 0), i8* %44, i8* %47)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %51

; <label>:48                                      ; preds = %32
  %49 = bitcast %struct.obj_struct* %agg.result to i8*
  %50 = bitcast %struct.obj_struct* %res2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  br label %51

; <label>:51                                      ; preds = %48, %43, %29, %24
  ret void
}

declare void @smpfun_call(%struct.obj_struct* sret, %struct.obj_struct* byval, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define void @smpobj_getclass(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %4 = load %struct.smptype_struct** %3, align 8
  %5 = getelementptr inbounds %struct.smptype_struct* %4, i32 0, i32 0
  %6 = load i8** %5, align 8
  call void @smp_getclass(%struct.obj_struct* sret %agg.result, i8* %6)
  ret void
}

define void @smpobj_get_fun_rec(%struct.obj_struct* sret %agg.result, %struct.smptype_struct* %type, i8* %name, i32 %instance_funp) nounwind {
  %1 = alloca %struct.smptype_struct*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %fun = alloca %struct.obj_struct, align 8
  %hash = alloca %struct.minihash_struct*, align 8
  %i = alloca i64, align 8
  store %struct.smptype_struct* %type, %struct.smptype_struct** %1, align 8
  store i8* %name, i8** %2, align 8
  store i32 %instance_funp, i32* %3, align 4
  %4 = load %struct.smptype_struct** %1, align 8
  %5 = icmp eq %struct.smptype_struct* %4, null
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %83

; <label>:8                                       ; preds = %0
  store %struct.minihash_struct* null, %struct.minihash_struct** %hash, align 8
  %9 = load i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11                                      ; preds = %8
  %12 = load %struct.smptype_struct** %1, align 8
  %13 = getelementptr inbounds %struct.smptype_struct* %12, i32 0, i32 5
  %14 = load %struct.minihash_struct** %13, align 8
  store %struct.minihash_struct* %14, %struct.minihash_struct** %hash, align 8
  br label %19

; <label>:15                                      ; preds = %8
  %16 = load %struct.smptype_struct** %1, align 8
  %17 = getelementptr inbounds %struct.smptype_struct* %16, i32 0, i32 7
  %18 = load %struct.minihash_struct** %17, align 8
  store %struct.minihash_struct* %18, %struct.minihash_struct** %hash, align 8
  br label %19

; <label>:19                                      ; preds = %15, %11
  %20 = load %struct.minihash_struct** %hash, align 8
  %21 = load i8** %2, align 8
  %22 = call i32 @minihash_containsp(%struct.minihash_struct* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

; <label>:24                                      ; preds = %19
  %25 = load %struct.minihash_struct** %hash, align 8
  %26 = load i8** %2, align 8
  call void @minihash_get(%struct.obj_struct* sret %fun, %struct.minihash_struct* %25, i8* %26)
  %27 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 2
  %28 = load %struct.smptype_struct** %27, align 8
  %29 = getelementptr inbounds %struct.smptype_struct* %28, i32 0, i32 0
  %30 = load i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([9 x i8]* @.str14, i32 0, i32 0))
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

; <label>:35                                      ; preds = %24
  %36 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 2
  %37 = load %struct.smptype_struct** %36, align 8
  %38 = getelementptr inbounds %struct.smptype_struct* %37, i32 0, i32 0
  %39 = load i8** %38, align 8
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([29 x i8]* @.str15, i32 0, i32 0), i8* %39)
  br label %40

; <label>:40                                      ; preds = %35, %24
  %41 = bitcast %struct.obj_struct* %agg.result to i8*
  %42 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  br label %83

; <label>:43                                      ; preds = %19
  %44 = load %struct.smptype_struct** %1, align 8
  %45 = getelementptr inbounds %struct.smptype_struct* %44, i32 0, i32 3
  %46 = load %struct.smptype_struct*** %45, align 8
  %47 = icmp eq %struct.smptype_struct** %46, null
  br i1 %47, label %48, label %50

; <label>:48                                      ; preds = %43
  %49 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %83

; <label>:50                                      ; preds = %43
  store i64 0, i64* %i, align 8
  br label %51

; <label>:51                                      ; preds = %78, %50
  %52 = load i64* %i, align 8
  %53 = load %struct.smptype_struct** %1, align 8
  %54 = getelementptr inbounds %struct.smptype_struct* %53, i32 0, i32 4
  %55 = load i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %81

; <label>:57                                      ; preds = %51
  %58 = load i64* %i, align 8
  %59 = load %struct.smptype_struct** %1, align 8
  %60 = getelementptr inbounds %struct.smptype_struct* %59, i32 0, i32 3
  %61 = load %struct.smptype_struct*** %60, align 8
  %62 = getelementptr inbounds %struct.smptype_struct** %61, i64 %58
  %63 = load %struct.smptype_struct** %62
  %64 = load i8** %2, align 8
  %65 = load i32* %3, align 4
  call void @smpobj_get_fun_rec(%struct.obj_struct* sret %fun, %struct.smptype_struct* %63, i8* %64, i32 %65)
  %66 = getelementptr inbounds %struct.obj_struct* %fun, i32 0, i32 2
  %67 = load %struct.smptype_struct** %66, align 8
  %68 = getelementptr inbounds %struct.smptype_struct* %67, i32 0, i32 1
  %69 = load i32* %68, align 4
  %70 = load i32* @smptype_id_nil, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

; <label>:74                                      ; preds = %57
  %75 = bitcast %struct.obj_struct* %agg.result to i8*
  %76 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 32, i32 8, i1 false)
  br label %83

; <label>:77                                      ; preds = %57
  br label %78

; <label>:78                                      ; preds = %77
  %79 = load i64* %i, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %i, align 8
  br label %51

; <label>:81                                      ; preds = %51
  %82 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %83

; <label>:83                                      ; preds = %81, %74, %48, %40, %6
  ret void
}

declare i32 @minihash_containsp(%struct.minihash_struct*, i8*)

declare void @minihash_get(%struct.obj_struct* sret, %struct.minihash_struct*, i8*)

define void @smpobj_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpobj_hash(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %hash = alloca i64, align 8
  %key = alloca i8*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = ptrtoint i8* %4 to i64
  %6 = ashr i64 %5, 3
  store i64 %6, i64* %hash, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %8 = load %struct.smptype_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smptype_struct* %8, i32 0, i32 0
  %10 = load i8** %9, align 8
  %11 = getelementptr inbounds i8* %10, i64 -1
  store i8* %11, i8** %key, align 8
  br label %12

; <label>:12                                      ; preds = %17, %0
  %13 = load i8** %key, align 8
  %14 = getelementptr inbounds i8* %13, i32 1
  store i8* %14, i8** %key, align 8
  %15 = load i8* %14
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %27

; <label>:17                                      ; preds = %12
  %18 = load i64* %hash, align 8
  %19 = shl i64 %18, 5
  %20 = load i64* %hash, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i8** %key, align 8
  %23 = load i8* %22
  %24 = sext i8 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  store i64 %26, i64* %hash, align 8
  br label %12

; <label>:27                                      ; preds = %12
  %28 = load i64* %hash, align 8
  call void @smpint_init_clong(%struct.obj_struct* sret %agg.result, i64 %28)
  ret void
}

declare void @smpint_init_clong(%struct.obj_struct* sret, i64)

define void @smpobj_instancep(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpobj_instancep_cstr(%struct.smptype_struct* %10, i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0))
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
  br label %41

; <label>:27                                      ; preds = %13
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0))
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
  br label %41

; <label>:35                                      ; preds = %0
  %36 = bitcast %struct.obj_struct* %6 to i8*
  %37 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  %38 = load i32* %1, align 4
  %39 = load %struct.obj_struct** %2, align 8
  %40 = call i32 @smpobj_instancep_cint(%struct.obj_struct* byval %6, i32 %38, %struct.obj_struct* %39)
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %40)
  br label %41

; <label>:41                                      ; preds = %35, %27, %22
  ret void
}

define i32 @smpobj_instancep_cstr(%struct.smptype_struct* %objtype, i8* %type) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smptype_struct*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.smptype_struct* %objtype, %struct.smptype_struct** %2, align 8
  store i8* %type, i8** %3, align 8
  %4 = load %struct.smptype_struct** %2, align 8
  %5 = getelementptr inbounds %struct.smptype_struct* %4, i32 0, i32 0
  %6 = load i8** %5, align 8
  %7 = load i8** %3, align 8
  %8 = call i32 @strcmp(i8* %6, i8* %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i32 1, i32* %1
  br label %34

; <label>:11                                      ; preds = %0
  store i64 0, i64* %i, align 8
  br label %12

; <label>:12                                      ; preds = %30, %11
  %13 = load i64* %i, align 8
  %14 = load %struct.smptype_struct** %2, align 8
  %15 = getelementptr inbounds %struct.smptype_struct* %14, i32 0, i32 4
  %16 = load i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %33

; <label>:18                                      ; preds = %12
  %19 = load i64* %i, align 8
  %20 = load %struct.smptype_struct** %2, align 8
  %21 = getelementptr inbounds %struct.smptype_struct* %20, i32 0, i32 3
  %22 = load %struct.smptype_struct*** %21, align 8
  %23 = getelementptr inbounds %struct.smptype_struct** %22, i64 %19
  %24 = load %struct.smptype_struct** %23
  %25 = load i8** %3, align 8
  %26 = call i32 @smpobj_instancep_cstr(%struct.smptype_struct* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %18
  store i32 1, i32* %1
  br label %34

; <label>:29                                      ; preds = %18
  br label %30

; <label>:30                                      ; preds = %29
  %31 = load i64* %i, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %i, align 8
  br label %12

; <label>:33                                      ; preds = %12
  store i32 0, i32* %1
  br label %34

; <label>:34                                      ; preds = %33, %28, %10
  %35 = load i32* %1
  ret i32 %35
}

declare void @smptypeerr_init(%struct.obj_struct* sret, %struct.smptype_struct*, %struct.obj_struct* byval)

define i32 @smpobj_instancep_cint(%struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %objtype = alloca %struct.smptype_struct*, align 8
  %type = alloca %struct.smptype_struct, align 8
  %3 = alloca %struct.smptype_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %5 = load %struct.smptype_struct** %4, align 8
  store %struct.smptype_struct* %5, %struct.smptype_struct** %objtype, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.smptype_struct*
  %11 = bitcast %struct.smptype_struct* %type to i8*
  %12 = bitcast %struct.smptype_struct* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 64, i32 8, i1 false)
  %13 = load %struct.smptype_struct** %objtype, align 8
  %14 = bitcast %struct.smptype_struct* %3 to i8*
  %15 = bitcast %struct.smptype_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 64, i32 8, i1 false)
  %16 = call i32 @smpobj_instancep_c(%struct.smptype_struct* %13, %struct.smptype_struct* byval %3)
  ret i32 %16
}

define i32 @smpobj_instancep_c(%struct.smptype_struct* %objtype, %struct.smptype_struct* byval %type) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smptype_struct*, align 8
  %i = alloca i64, align 8
  %3 = alloca %struct.smptype_struct, align 8
  store %struct.smptype_struct* %objtype, %struct.smptype_struct** %2, align 8
  %4 = load %struct.smptype_struct** %2, align 8
  %5 = icmp eq %struct.smptype_struct* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 0, i32* %1
  br label %39

; <label>:7                                       ; preds = %0
  %8 = load %struct.smptype_struct** %2, align 8
  %9 = getelementptr inbounds %struct.smptype_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = getelementptr inbounds %struct.smptype_struct* %type, i32 0, i32 1
  %12 = load i32* %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %7
  store i32 1, i32* %1
  br label %39

; <label>:15                                      ; preds = %7
  store i64 0, i64* %i, align 8
  br label %16

; <label>:16                                      ; preds = %35, %15
  %17 = load i64* %i, align 8
  %18 = load %struct.smptype_struct** %2, align 8
  %19 = getelementptr inbounds %struct.smptype_struct* %18, i32 0, i32 4
  %20 = load i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %38

; <label>:22                                      ; preds = %16
  %23 = load i64* %i, align 8
  %24 = load %struct.smptype_struct** %2, align 8
  %25 = getelementptr inbounds %struct.smptype_struct* %24, i32 0, i32 3
  %26 = load %struct.smptype_struct*** %25, align 8
  %27 = getelementptr inbounds %struct.smptype_struct** %26, i64 %23
  %28 = load %struct.smptype_struct** %27
  %29 = bitcast %struct.smptype_struct* %3 to i8*
  %30 = bitcast %struct.smptype_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 64, i32 8, i1 false)
  %31 = call i32 @smpobj_instancep_c(%struct.smptype_struct* %28, %struct.smptype_struct* byval %3)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %22
  store i32 1, i32* %1
  br label %39

; <label>:34                                      ; preds = %22
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load i64* %i, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %i, align 8
  br label %16

; <label>:38                                      ; preds = %16
  store i32 0, i32* %1
  br label %39

; <label>:39                                      ; preds = %38, %33, %14, %6
  %40 = load i32* %1
  ret i32 %40
}

define void @smpobj_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %4 = load %struct.smptype_struct** %3, align 8
  %5 = getelementptr inbounds %struct.smptype_struct* %4, i32 0, i32 0
  %6 = load i8** %5, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %8 = load i8** %7, align 8
  %9 = ptrtoint i8* %8 to i64
  call void (%struct.obj_struct*, i8*, ...)* @smpstr_init_fmt(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([11 x i8]* @.str17, i32 0, i32 0), i8* %6, i64 %9)
  ret void
}

declare void @smpstr_init_fmt(%struct.obj_struct* sret, i8*, ...)

define void @smpobj_to_s_class(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smptype_struct*
  %6 = getelementptr inbounds %struct.smptype_struct* %5, i32 0, i32 0
  %7 = load i8** %6, align 8
  call void @smpstr_init(%struct.obj_struct* sret %agg.result, i8* %7)
  ret void
}

declare void @smpstr_init(%struct.obj_struct* sret, i8*)

define void @smpobj_truep(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = call i32 @smpobj_truep_c(%struct.obj_struct* byval %3)
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %6)
  ret void
}

define i32 @smpobj_truep_c(%struct.obj_struct* byval %obj) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %2 = load %struct.smptype_struct** %1, align 8
  %3 = getelementptr inbounds %struct.smptype_struct* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = load i32* @smptype_id_nil, align 4
  %6 = icmp eq i32 %4, %5
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  ret i32 %8
}

define void @smpobj_type(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %4 = load %struct.smptype_struct** %3, align 8
  %5 = getelementptr inbounds %struct.smptype_struct* %4, i32 0, i32 0
  %6 = load i8** %5, align 8
  call void @smp_getclass(%struct.obj_struct* sret %agg.result, i8* %6)
  ret void
}

define void @smpobj_types_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load %struct.obj_struct** %2, align 8
  %8 = getelementptr inbounds %struct.obj_struct* %7, i64 0
  %9 = bitcast %struct.obj_struct* %4 to i8*
  %10 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void @obj_types_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  ret void
}

define void @smpobj_varcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i8* %name) nounwind {
  %1 = alloca i8*, align 8
  %res = alloca %struct.obj_struct, align 8
  %hash = alloca %struct.minihash_struct*, align 8
  %var = alloca %struct.obj_struct, align 8
  store i8* %name, i8** %1, align 8
  %2 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  store %struct.minihash_struct* null, %struct.minihash_struct** %hash, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %4 = load %struct.smptype_struct** %3, align 8
  %5 = getelementptr inbounds %struct.smptype_struct* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = load i32* @smptype_id_class, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %11 = load i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.smptype_struct*
  %13 = getelementptr inbounds %struct.smptype_struct* %12, i32 0, i32 8
  %14 = load %struct.minihash_struct** %13, align 8
  store %struct.minihash_struct* %14, %struct.minihash_struct** %hash, align 8
  br label %36

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %17 = load %struct.smptype_struct** %16, align 8
  %18 = bitcast %struct.smptype_struct* %17 to i8*
  %19 = getelementptr i8* %18, i32 12
  %20 = bitcast i8* %19 to i32*
  %21 = load i32* %20, align 4
  %22 = and i32 %21, 1
  %23 = shl i32 %22, 31
  %24 = ashr i32 %23, 31
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

; <label>:26                                      ; preds = %15
  %27 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %28 = load %struct.smptype_struct** %27, align 8
  %29 = getelementptr inbounds %struct.smptype_struct* %28, i32 0, i32 0
  %30 = load i8** %29, align 8
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([75 x i8]* @.str18, i32 0, i32 0), i8* %30)
  br label %31

; <label>:31                                      ; preds = %26, %15
  %32 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %33 = load i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.standardcore_struct*
  %35 = getelementptr inbounds %struct.standardcore_struct* %34, i32 0, i32 0
  store %struct.minihash_struct* %35, %struct.minihash_struct** %hash, align 8
  br label %36

; <label>:36                                      ; preds = %31, %9
  %37 = load %struct.minihash_struct** %hash, align 8
  %38 = load i8** %1, align 8
  call void @minihash_get(%struct.obj_struct* sret %var, %struct.minihash_struct* %37, i8* %38)
  %39 = bitcast %struct.obj_struct* %res to i8*
  %40 = bitcast %struct.obj_struct* %var to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  %41 = bitcast %struct.obj_struct* %agg.result to i8*
  %42 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  ret void
}

define void @smpobj_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  ret void
}

define void @smpobj_write_class(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  ret void
}
