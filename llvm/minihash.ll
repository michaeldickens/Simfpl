; ModuleID = 'minihash.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smptype_struct*, i8* }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@.str = private constant [9 x i8] c"key: %s\0A\00"
@.str1 = private constant [2 x i8] c"\0A\00"
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

define void @minihash_init(%struct.minihash_struct* sret %agg.result) nounwind {
  call void @minihash_init_capacity(%struct.minihash_struct* sret %agg.result, i64 10)
  ret void
}

define void @minihash_init_capacity(%struct.minihash_struct* sret %agg.result, i64 %capacity) nounwind {
  %1 = alloca i64, align 8
  %hash = alloca %struct.minihash_struct, align 8
  store i64 %capacity, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 1
  store i64 %2, i64* %3, align 8
  %4 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 1
  %5 = load i64* %4, align 8
  %6 = mul i64 16, %5
  %7 = call i8* @smp_malloc(i64 %6)
  %8 = bitcast i8* %7 to %struct.miniarray_struct*
  %9 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  store %struct.miniarray_struct* %8, %struct.miniarray_struct** %9, align 8
  %10 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %11 = load %struct.miniarray_struct** %10, align 8
  %12 = bitcast %struct.miniarray_struct* %11 to i8*
  %13 = call i64 @llvm.objectsize.i64(i8* %12, i1 false)
  %14 = icmp ne i64 %13, -1
  br i1 %14, label %15, label %27

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %17 = load %struct.miniarray_struct** %16, align 8
  %18 = bitcast %struct.miniarray_struct* %17 to i8*
  %19 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 1
  %20 = load i64* %19, align 8
  %21 = mul i64 16, %20
  %22 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %23 = load %struct.miniarray_struct** %22, align 8
  %24 = bitcast %struct.miniarray_struct* %23 to i8*
  %25 = call i64 @llvm.objectsize.i64(i8* %24, i1 false)
  %26 = call i8* @__memset_chk(i8* %18, i32 0, i64 %21, i64 %25)
  br label %35

; <label>:27                                      ; preds = %0
  %28 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %29 = load %struct.miniarray_struct** %28, align 8
  %30 = bitcast %struct.miniarray_struct* %29 to i8*
  %31 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 1
  %32 = load i64* %31, align 8
  %33 = mul i64 16, %32
  %34 = call i8* @__inline_memset_chk(i8* %30, i32 0, i64 %33)
  br label %35

; <label>:35                                      ; preds = %27, %15
  %36 = phi i8* [ %26, %15 ], [ %34, %27 ]
  %37 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = bitcast %struct.minihash_struct* %agg.result to i8*
  %40 = bitcast %struct.minihash_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  ret void
}

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

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define i32 @minihash_clear(%struct.minihash_struct* %hash) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.minihash_struct*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %2, align 8
  %3 = load %struct.minihash_struct** %2, align 8
  %4 = getelementptr inbounds %struct.minihash_struct* %3, i32 0, i32 0
  %5 = load %struct.miniarray_struct** %4, align 8
  %6 = icmp ne %struct.miniarray_struct* %5, null
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1
  br label %94

; <label>:8                                       ; preds = %0
  store i64 0, i64* %i, align 8
  br label %9

; <label>:9                                       ; preds = %80, %8
  %10 = load i64* %i, align 8
  %11 = load %struct.minihash_struct** %2, align 8
  %12 = getelementptr inbounds %struct.minihash_struct* %11, i32 0, i32 1
  %13 = load i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %83

; <label>:15                                      ; preds = %9
  %16 = load i64* %i, align 8
  %17 = load %struct.minihash_struct** %2, align 8
  %18 = getelementptr inbounds %struct.minihash_struct* %17, i32 0, i32 0
  %19 = load %struct.miniarray_struct** %18, align 8
  %20 = getelementptr inbounds %struct.miniarray_struct* %19, i64 %16
  %21 = getelementptr inbounds %struct.miniarray_struct* %20, i32 0, i32 0
  %22 = load %struct.minipair_struct** %21, align 8
  %23 = icmp ne %struct.minipair_struct* %22, null
  br i1 %23, label %24, label %79

; <label>:24                                      ; preds = %15
  store i64 0, i64* %j, align 8
  br label %25

; <label>:25                                      ; preds = %61, %24
  %26 = load i64* %j, align 8
  %27 = load i64* %i, align 8
  %28 = load %struct.minihash_struct** %2, align 8
  %29 = getelementptr inbounds %struct.minihash_struct* %28, i32 0, i32 0
  %30 = load %struct.miniarray_struct** %29, align 8
  %31 = getelementptr inbounds %struct.miniarray_struct* %30, i64 %27
  %32 = getelementptr inbounds %struct.miniarray_struct* %31, i32 0, i32 1
  %33 = load i64* %32, align 8
  %34 = icmp ult i64 %26, %33
  br i1 %34, label %35, label %64

; <label>:35                                      ; preds = %25
  %36 = load i64* %j, align 8
  %37 = load i64* %i, align 8
  %38 = load %struct.minihash_struct** %2, align 8
  %39 = getelementptr inbounds %struct.minihash_struct* %38, i32 0, i32 0
  %40 = load %struct.miniarray_struct** %39, align 8
  %41 = getelementptr inbounds %struct.miniarray_struct* %40, i64 %37
  %42 = getelementptr inbounds %struct.miniarray_struct* %41, i32 0, i32 0
  %43 = load %struct.minipair_struct** %42, align 8
  %44 = getelementptr inbounds %struct.minipair_struct* %43, i64 %36
  %45 = getelementptr inbounds %struct.minipair_struct* %44, i32 0, i32 0
  %46 = load i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %60

; <label>:48                                      ; preds = %35
  %49 = load i64* %j, align 8
  %50 = load i64* %i, align 8
  %51 = load %struct.minihash_struct** %2, align 8
  %52 = getelementptr inbounds %struct.minihash_struct* %51, i32 0, i32 0
  %53 = load %struct.miniarray_struct** %52, align 8
  %54 = getelementptr inbounds %struct.miniarray_struct* %53, i64 %50
  %55 = getelementptr inbounds %struct.miniarray_struct* %54, i32 0, i32 0
  %56 = load %struct.minipair_struct** %55, align 8
  %57 = getelementptr inbounds %struct.minipair_struct* %56, i64 %49
  %58 = getelementptr inbounds %struct.minipair_struct* %57, i32 0, i32 0
  %59 = load i8** %58, align 8
  call void @smp_free(i8* %59)
  br label %60

; <label>:60                                      ; preds = %48, %35
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load i64* %j, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %j, align 8
  br label %25

; <label>:64                                      ; preds = %25
  %65 = load i64* %i, align 8
  %66 = load %struct.minihash_struct** %2, align 8
  %67 = getelementptr inbounds %struct.minihash_struct* %66, i32 0, i32 0
  %68 = load %struct.miniarray_struct** %67, align 8
  %69 = getelementptr inbounds %struct.miniarray_struct* %68, i64 %65
  %70 = getelementptr inbounds %struct.miniarray_struct* %69, i32 0, i32 0
  %71 = load %struct.minipair_struct** %70, align 8
  %72 = bitcast %struct.minipair_struct* %71 to i8*
  call void @smp_free(i8* %72)
  %73 = load i64* %i, align 8
  %74 = load %struct.minihash_struct** %2, align 8
  %75 = getelementptr inbounds %struct.minihash_struct* %74, i32 0, i32 0
  %76 = load %struct.miniarray_struct** %75, align 8
  %77 = getelementptr inbounds %struct.miniarray_struct* %76, i64 %73
  %78 = getelementptr inbounds %struct.miniarray_struct* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  br label %79

; <label>:79                                      ; preds = %64, %15
  br label %80

; <label>:80                                      ; preds = %79
  %81 = load i64* %i, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %i, align 8
  br label %9

; <label>:83                                      ; preds = %9
  %84 = load %struct.minihash_struct** %2, align 8
  %85 = getelementptr inbounds %struct.minihash_struct* %84, i32 0, i32 0
  %86 = load %struct.miniarray_struct** %85, align 8
  %87 = bitcast %struct.miniarray_struct* %86 to i8*
  call void @smp_free(i8* %87)
  %88 = load %struct.minihash_struct** %2, align 8
  %89 = getelementptr inbounds %struct.minihash_struct* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load %struct.minihash_struct** %2, align 8
  %91 = getelementptr inbounds %struct.minihash_struct* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.minihash_struct** %2, align 8
  %93 = getelementptr inbounds %struct.minihash_struct* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  store i32 0, i32* %1
  br label %94

; <label>:94                                      ; preds = %83, %7
  %95 = load i32* %1
  ret i32 %95
}

declare void @smp_free(i8*)

define i32 @minihash_fullclear(%struct.minihash_struct* %hash) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.minihash_struct*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %2, align 8
  %4 = load %struct.minihash_struct** %2, align 8
  %5 = getelementptr inbounds %struct.minihash_struct* %4, i32 0, i32 0
  %6 = load %struct.miniarray_struct** %5, align 8
  %7 = icmp ne %struct.miniarray_struct* %6, null
  br i1 %7, label %9, label %8

; <label>:8                                       ; preds = %0
  store i32 0, i32* %1
  br label %120

; <label>:9                                       ; preds = %0
  store i64 0, i64* %i, align 8
  br label %10

; <label>:10                                      ; preds = %106, %9
  %11 = load i64* %i, align 8
  %12 = load %struct.minihash_struct** %2, align 8
  %13 = getelementptr inbounds %struct.minihash_struct* %12, i32 0, i32 1
  %14 = load i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %109

; <label>:16                                      ; preds = %10
  %17 = load i64* %i, align 8
  %18 = load %struct.minihash_struct** %2, align 8
  %19 = getelementptr inbounds %struct.minihash_struct* %18, i32 0, i32 0
  %20 = load %struct.miniarray_struct** %19, align 8
  %21 = getelementptr inbounds %struct.miniarray_struct* %20, i64 %17
  %22 = getelementptr inbounds %struct.miniarray_struct* %21, i32 0, i32 0
  %23 = load %struct.minipair_struct** %22, align 8
  %24 = icmp ne %struct.minipair_struct* %23, null
  br i1 %24, label %25, label %105

; <label>:25                                      ; preds = %16
  store i64 0, i64* %j, align 8
  br label %26

; <label>:26                                      ; preds = %87, %25
  %27 = load i64* %j, align 8
  %28 = load i64* %i, align 8
  %29 = load %struct.minihash_struct** %2, align 8
  %30 = getelementptr inbounds %struct.minihash_struct* %29, i32 0, i32 0
  %31 = load %struct.miniarray_struct** %30, align 8
  %32 = getelementptr inbounds %struct.miniarray_struct* %31, i64 %28
  %33 = getelementptr inbounds %struct.miniarray_struct* %32, i32 0, i32 1
  %34 = load i64* %33, align 8
  %35 = icmp ult i64 %27, %34
  br i1 %35, label %36, label %90

; <label>:36                                      ; preds = %26
  %37 = load i64* %j, align 8
  %38 = load i64* %i, align 8
  %39 = load %struct.minihash_struct** %2, align 8
  %40 = getelementptr inbounds %struct.minihash_struct* %39, i32 0, i32 0
  %41 = load %struct.miniarray_struct** %40, align 8
  %42 = getelementptr inbounds %struct.miniarray_struct* %41, i64 %38
  %43 = getelementptr inbounds %struct.miniarray_struct* %42, i32 0, i32 0
  %44 = load %struct.minipair_struct** %43, align 8
  %45 = getelementptr inbounds %struct.minipair_struct* %44, i64 %37
  %46 = getelementptr inbounds %struct.minipair_struct* %45, i32 0, i32 0
  %47 = load i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %61

; <label>:49                                      ; preds = %36
  %50 = load i64* %j, align 8
  %51 = load i64* %i, align 8
  %52 = load %struct.minihash_struct** %2, align 8
  %53 = getelementptr inbounds %struct.minihash_struct* %52, i32 0, i32 0
  %54 = load %struct.miniarray_struct** %53, align 8
  %55 = getelementptr inbounds %struct.miniarray_struct* %54, i64 %51
  %56 = getelementptr inbounds %struct.miniarray_struct* %55, i32 0, i32 0
  %57 = load %struct.minipair_struct** %56, align 8
  %58 = getelementptr inbounds %struct.minipair_struct* %57, i64 %50
  %59 = getelementptr inbounds %struct.minipair_struct* %58, i32 0, i32 0
  %60 = load i8** %59, align 8
  call void @smp_free(i8* %60)
  br label %61

; <label>:61                                      ; preds = %49, %36
  %62 = load i64* %j, align 8
  %63 = load i64* %i, align 8
  %64 = load %struct.minihash_struct** %2, align 8
  %65 = getelementptr inbounds %struct.minihash_struct* %64, i32 0, i32 0
  %66 = load %struct.miniarray_struct** %65, align 8
  %67 = getelementptr inbounds %struct.miniarray_struct* %66, i64 %63
  %68 = getelementptr inbounds %struct.miniarray_struct* %67, i32 0, i32 0
  %69 = load %struct.minipair_struct** %68, align 8
  %70 = getelementptr inbounds %struct.minipair_struct* %69, i64 %62
  %71 = getelementptr inbounds %struct.minipair_struct* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.obj_struct* %71, i32 0, i32 3
  %73 = load i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %86

; <label>:75                                      ; preds = %61
  %76 = load i64* %j, align 8
  %77 = load i64* %i, align 8
  %78 = load %struct.minihash_struct** %2, align 8
  %79 = getelementptr inbounds %struct.minihash_struct* %78, i32 0, i32 0
  %80 = load %struct.miniarray_struct** %79, align 8
  %81 = getelementptr inbounds %struct.miniarray_struct* %80, i64 %77
  %82 = getelementptr inbounds %struct.miniarray_struct* %81, i32 0, i32 0
  %83 = load %struct.minipair_struct** %82, align 8
  %84 = getelementptr inbounds %struct.minipair_struct* %83, i64 %76
  %85 = getelementptr inbounds %struct.minipair_struct* %84, i32 0, i32 1
  call void @obj_clear(%struct.obj_struct* sret %3, %struct.obj_struct* %85)
  br label %86

; <label>:86                                      ; preds = %75, %61
  br label %87

; <label>:87                                      ; preds = %86
  %88 = load i64* %j, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %j, align 8
  br label %26

; <label>:90                                      ; preds = %26
  %91 = load i64* %i, align 8
  %92 = load %struct.minihash_struct** %2, align 8
  %93 = getelementptr inbounds %struct.minihash_struct* %92, i32 0, i32 0
  %94 = load %struct.miniarray_struct** %93, align 8
  %95 = getelementptr inbounds %struct.miniarray_struct* %94, i64 %91
  %96 = getelementptr inbounds %struct.miniarray_struct* %95, i32 0, i32 0
  %97 = load %struct.minipair_struct** %96, align 8
  %98 = bitcast %struct.minipair_struct* %97 to i8*
  call void @smp_free(i8* %98)
  %99 = load i64* %i, align 8
  %100 = load %struct.minihash_struct** %2, align 8
  %101 = getelementptr inbounds %struct.minihash_struct* %100, i32 0, i32 0
  %102 = load %struct.miniarray_struct** %101, align 8
  %103 = getelementptr inbounds %struct.miniarray_struct* %102, i64 %99
  %104 = getelementptr inbounds %struct.miniarray_struct* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  br label %105

; <label>:105                                     ; preds = %90, %16
  br label %106

; <label>:106                                     ; preds = %105
  %107 = load i64* %i, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %i, align 8
  br label %10

; <label>:109                                     ; preds = %10
  %110 = load %struct.minihash_struct** %2, align 8
  %111 = getelementptr inbounds %struct.minihash_struct* %110, i32 0, i32 0
  %112 = load %struct.miniarray_struct** %111, align 8
  %113 = bitcast %struct.miniarray_struct* %112 to i8*
  call void @smp_free(i8* %113)
  %114 = load %struct.minihash_struct** %2, align 8
  %115 = getelementptr inbounds %struct.minihash_struct* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.minihash_struct** %2, align 8
  %117 = getelementptr inbounds %struct.minihash_struct* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  %118 = load %struct.minihash_struct** %2, align 8
  %119 = getelementptr inbounds %struct.minihash_struct* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  store i32 0, i32* %1
  br label %120

; <label>:120                                     ; preds = %109, %8
  %121 = load i32* %1
  ret i32 %121
}

declare void @obj_clear(%struct.obj_struct* sret, %struct.obj_struct*)

define i32 @minihash_function(i8* %key) nounwind {
  %1 = alloca i8*, align 8
  %hash = alloca i32, align 4
  store i8* %key, i8** %1, align 8
  store i32 5381, i32* %hash, align 4
  %2 = load i8** %1, align 8
  %3 = getelementptr inbounds i8* %2, i32 -1
  store i8* %3, i8** %1, align 8
  br label %4

; <label>:4                                       ; preds = %9, %0
  %5 = load i8** %1, align 8
  %6 = getelementptr inbounds i8* %5, i32 1
  store i8* %6, i8** %1, align 8
  %7 = load i8* %6
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %18

; <label>:9                                       ; preds = %4
  %10 = load i32* %hash, align 4
  %11 = shl i32 %10, 5
  %12 = load i32* %hash, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i8** %1, align 8
  %15 = load i8* %14
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %hash, align 4
  br label %4

; <label>:18                                      ; preds = %4
  %19 = load i32* %hash, align 4
  ret i32 %19
}

define i32 @minihash_add(%struct.minihash_struct* %hash, i8* %key, %struct.obj_struct* byval %val) nounwind {
  %1 = alloca %struct.minihash_struct*, align 8
  %2 = alloca i8*, align 8
  %index = alloca i32, align 4
  %pair = alloca %struct.minipair_struct, align 8
  %3 = alloca %struct.minipair_struct, align 8
  %hash2 = alloca %struct.minihash_struct, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %1, align 8
  store i8* %key, i8** %2, align 8
  %4 = load %struct.minihash_struct** %1, align 8
  %5 = getelementptr inbounds %struct.minihash_struct* %4, i32 0, i32 0
  %6 = load %struct.miniarray_struct** %5, align 8
  %7 = icmp ne %struct.miniarray_struct* %6, null
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %0
  %9 = load %struct.minihash_struct** %1, align 8
  call void @minihash_init(%struct.minihash_struct* sret %9)
  br label %10

; <label>:10                                      ; preds = %8, %0
  %11 = load i8** %2, align 8
  %12 = call i32 @minihash_function(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = load %struct.minihash_struct** %1, align 8
  %15 = getelementptr inbounds %struct.minihash_struct* %14, i32 0, i32 1
  %16 = load i64* %15, align 8
  %17 = urem i64 %13, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %index, align 4
  %19 = load i8** %2, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add i64 %20, 1
  %22 = mul i64 1, %21
  %23 = call i8* @smp_malloc(i64 %22)
  %24 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  %26 = load i8** %25, align 8
  %27 = call i64 @llvm.objectsize.i64(i8* %26, i1 false)
  %28 = icmp ne i64 %27, -1
  br i1 %28, label %29, label %37

; <label>:29                                      ; preds = %10
  %30 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  %31 = load i8** %30, align 8
  %32 = load i8** %2, align 8
  %33 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  %34 = load i8** %33, align 8
  %35 = call i64 @llvm.objectsize.i64(i8* %34, i1 false)
  %36 = call i8* @__strcpy_chk(i8* %31, i8* %32, i64 %35)
  br label %42

; <label>:37                                      ; preds = %10
  %38 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  %39 = load i8** %38, align 8
  %40 = load i8** %2, align 8
  %41 = call i8* @__inline_strcpy_chk(i8* %39, i8* %40)
  br label %42

; <label>:42                                      ; preds = %37, %29
  %43 = phi i8* [ %36, %29 ], [ %41, %37 ]
  %44 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 1
  %45 = bitcast %struct.obj_struct* %44 to i8*
  %46 = bitcast %struct.obj_struct* %val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  %47 = load i32* %index, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.minihash_struct** %1, align 8
  %50 = getelementptr inbounds %struct.minihash_struct* %49, i32 0, i32 0
  %51 = load %struct.miniarray_struct** %50, align 8
  %52 = getelementptr inbounds %struct.miniarray_struct* %51, i64 %48
  %53 = getelementptr inbounds %struct.miniarray_struct* %52, i32 0, i32 0
  %54 = load %struct.minipair_struct** %53, align 8
  %55 = icmp ne %struct.minipair_struct* %54, null
  br i1 %55, label %61, label %56

; <label>:56                                      ; preds = %42
  %57 = load %struct.minihash_struct** %1, align 8
  %58 = getelementptr inbounds %struct.minihash_struct* %57, i32 0, i32 2
  %59 = load i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %61

; <label>:61                                      ; preds = %56, %42
  %62 = load i32* %index, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.minihash_struct** %1, align 8
  %65 = getelementptr inbounds %struct.minihash_struct* %64, i32 0, i32 0
  %66 = load %struct.miniarray_struct** %65, align 8
  %67 = getelementptr inbounds %struct.miniarray_struct* %66, i64 %63
  %68 = bitcast %struct.minipair_struct* %3 to i8*
  %69 = bitcast %struct.minipair_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 40, i32 8, i1 false)
  %70 = call i32 @miniarray_push(%struct.miniarray_struct* %67, %struct.minipair_struct* byval %3)
  %71 = load %struct.minihash_struct** %1, align 8
  %72 = getelementptr inbounds %struct.minihash_struct* %71, i32 0, i32 3
  %73 = load i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.minihash_struct** %1, align 8
  %76 = getelementptr inbounds %struct.minihash_struct* %75, i32 0, i32 2
  %77 = load i64* %76, align 8
  %78 = load %struct.minihash_struct** %1, align 8
  %79 = getelementptr inbounds %struct.minihash_struct* %78, i32 0, i32 1
  %80 = load i64* %79, align 8
  %81 = udiv i64 %77, %80
  %82 = uitofp i64 %81 to double
  %83 = fcmp ogt double %82, 7.500000e-01
  br i1 %83, label %84, label %99

; <label>:84                                      ; preds = %61
  %85 = load %struct.minihash_struct** %1, align 8
  %86 = getelementptr inbounds %struct.minihash_struct* %85, i32 0, i32 1
  %87 = load i64* %86, align 8
  %88 = uitofp i64 %87 to double
  %89 = fmul double %88, 7.500000e-01
  %90 = fdiv double %89, 2.500000e-01
  %91 = fptoui double %90 to i64
  call void @minihash_init_capacity(%struct.minihash_struct* sret %hash2, i64 %91)
  %92 = load %struct.minihash_struct** %1, align 8
  %93 = call i32 @minihash_copy(%struct.minihash_struct* %hash2, %struct.minihash_struct* %92)
  %94 = load %struct.minihash_struct** %1, align 8
  %95 = call i32 @minihash_clear(%struct.minihash_struct* %94)
  %96 = load %struct.minihash_struct** %1, align 8
  %97 = bitcast %struct.minihash_struct* %96 to i8*
  %98 = bitcast %struct.minihash_struct* %hash2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 32, i32 8, i1 false)
  br label %99

; <label>:99                                      ; preds = %84, %61
  ret i32 0
}

declare i64 @strlen(i8*)

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

define i32 @miniarray_push(%struct.miniarray_struct* %arr, %struct.minipair_struct* byval %pair) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.miniarray_struct*, align 8
  %i = alloca i64, align 8
  store %struct.miniarray_struct* %arr, %struct.miniarray_struct** %2, align 8
  %3 = load %struct.miniarray_struct** %2, align 8
  %4 = getelementptr inbounds %struct.miniarray_struct* %3, i32 0, i32 0
  %5 = load %struct.minipair_struct** %4, align 8
  %6 = icmp ne %struct.minipair_struct* %5, null
  br i1 %6, label %16, label %7

; <label>:7                                       ; preds = %0
  %8 = call i64 @next_power_of_2(i64 1)
  %9 = mul i64 40, %8
  %10 = call i8* @smp_malloc(i64 %9)
  %11 = bitcast i8* %10 to %struct.minipair_struct*
  %12 = load %struct.miniarray_struct** %2, align 8
  %13 = getelementptr inbounds %struct.miniarray_struct* %12, i32 0, i32 0
  store %struct.minipair_struct* %11, %struct.minipair_struct** %13, align 8
  %14 = load %struct.miniarray_struct** %2, align 8
  %15 = getelementptr inbounds %struct.miniarray_struct* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  br label %16

; <label>:16                                      ; preds = %7, %0
  store i64 0, i64* %i, align 8
  br label %17

; <label>:17                                      ; preds = %46, %16
  %18 = load i64* %i, align 8
  %19 = load %struct.miniarray_struct** %2, align 8
  %20 = getelementptr inbounds %struct.miniarray_struct* %19, i32 0, i32 1
  %21 = load i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %49

; <label>:23                                      ; preds = %17
  %24 = load i64* %i, align 8
  %25 = load %struct.miniarray_struct** %2, align 8
  %26 = getelementptr inbounds %struct.miniarray_struct* %25, i32 0, i32 0
  %27 = load %struct.minipair_struct** %26, align 8
  %28 = getelementptr inbounds %struct.minipair_struct* %27, i64 %24
  %29 = getelementptr inbounds %struct.minipair_struct* %28, i32 0, i32 0
  %30 = load i8** %29, align 8
  %31 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 0
  %32 = load i8** %31, align 8
  %33 = call i32 @strcmp(i8* %30, i8* %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

; <label>:35                                      ; preds = %23
  %36 = load i64* %i, align 8
  %37 = load %struct.miniarray_struct** %2, align 8
  %38 = getelementptr inbounds %struct.miniarray_struct* %37, i32 0, i32 0
  %39 = load %struct.minipair_struct** %38, align 8
  %40 = getelementptr inbounds %struct.minipair_struct* %39, i64 %36
  %41 = getelementptr inbounds %struct.minipair_struct* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.minipair_struct* %pair, i32 0, i32 1
  %43 = bitcast %struct.obj_struct* %41 to i8*
  %44 = bitcast %struct.obj_struct* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  store i32 0, i32* %1
  br label %88

; <label>:45                                      ; preds = %23
  br label %46

; <label>:46                                      ; preds = %45
  %47 = load i64* %i, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %i, align 8
  br label %17

; <label>:49                                      ; preds = %17
  %50 = load %struct.miniarray_struct** %2, align 8
  %51 = getelementptr inbounds %struct.miniarray_struct* %50, i32 0, i32 1
  %52 = load i64* %51, align 8
  %53 = add i64 %52, 1
  %54 = icmp uge i64 %53, 1
  br i1 %54, label %55, label %77

; <label>:55                                      ; preds = %49
  %56 = load %struct.miniarray_struct** %2, align 8
  %57 = getelementptr inbounds %struct.miniarray_struct* %56, i32 0, i32 1
  %58 = load i64* %57, align 8
  %59 = add i64 %58, 1
  %60 = call i32 @is_power_of_2(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

; <label>:62                                      ; preds = %55
  %63 = load %struct.miniarray_struct** %2, align 8
  %64 = getelementptr inbounds %struct.miniarray_struct* %63, i32 0, i32 0
  %65 = load %struct.minipair_struct** %64, align 8
  %66 = bitcast %struct.minipair_struct* %65 to i8*
  %67 = load %struct.miniarray_struct** %2, align 8
  %68 = getelementptr inbounds %struct.miniarray_struct* %67, i32 0, i32 1
  %69 = load i64* %68, align 8
  %70 = add i64 %69, 1
  %71 = call i64 @next_power_of_2(i64 %70)
  %72 = mul i64 40, %71
  %73 = call i8* @smp_realloc(i8* %66, i64 %72)
  %74 = bitcast i8* %73 to %struct.minipair_struct*
  %75 = load %struct.miniarray_struct** %2, align 8
  %76 = getelementptr inbounds %struct.miniarray_struct* %75, i32 0, i32 0
  store %struct.minipair_struct* %74, %struct.minipair_struct** %76, align 8
  br label %77

; <label>:77                                      ; preds = %62, %55, %49
  %78 = load %struct.miniarray_struct** %2, align 8
  %79 = getelementptr inbounds %struct.miniarray_struct* %78, i32 0, i32 1
  %80 = load i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.miniarray_struct** %2, align 8
  %83 = getelementptr inbounds %struct.miniarray_struct* %82, i32 0, i32 0
  %84 = load %struct.minipair_struct** %83, align 8
  %85 = getelementptr inbounds %struct.minipair_struct* %84, i64 %80
  %86 = bitcast %struct.minipair_struct* %85 to i8*
  %87 = bitcast %struct.minipair_struct* %pair to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 40, i32 8, i1 false)
  store i32 0, i32* %1
  br label %88

; <label>:88                                      ; preds = %77, %35
  %89 = load i32* %1
  ret i32 %89
}

define i32 @minihash_copy(%struct.minihash_struct* %res, %struct.minihash_struct* %hash) nounwind {
  %1 = alloca %struct.minihash_struct*, align 8
  %2 = alloca %struct.minihash_struct*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %3 = alloca %struct.obj_struct, align 8
  store %struct.minihash_struct* %res, %struct.minihash_struct** %1, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %2, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %61, %0
  %5 = load i64* %i, align 8
  %6 = load %struct.minihash_struct** %2, align 8
  %7 = getelementptr inbounds %struct.minihash_struct* %6, i32 0, i32 1
  %8 = load i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %64

; <label>:10                                      ; preds = %4
  %11 = load i64* %i, align 8
  %12 = load %struct.minihash_struct** %2, align 8
  %13 = getelementptr inbounds %struct.minihash_struct* %12, i32 0, i32 0
  %14 = load %struct.miniarray_struct** %13, align 8
  %15 = getelementptr inbounds %struct.miniarray_struct* %14, i64 %11
  %16 = getelementptr inbounds %struct.miniarray_struct* %15, i32 0, i32 0
  %17 = load %struct.minipair_struct** %16, align 8
  %18 = icmp ne %struct.minipair_struct* %17, null
  br i1 %18, label %19, label %60

; <label>:19                                      ; preds = %10
  store i64 0, i64* %j, align 8
  br label %20

; <label>:20                                      ; preds = %56, %19
  %21 = load i64* %j, align 8
  %22 = load i64* %i, align 8
  %23 = load %struct.minihash_struct** %2, align 8
  %24 = getelementptr inbounds %struct.minihash_struct* %23, i32 0, i32 0
  %25 = load %struct.miniarray_struct** %24, align 8
  %26 = getelementptr inbounds %struct.miniarray_struct* %25, i64 %22
  %27 = getelementptr inbounds %struct.miniarray_struct* %26, i32 0, i32 1
  %28 = load i64* %27, align 8
  %29 = icmp ult i64 %21, %28
  br i1 %29, label %30, label %59

; <label>:30                                      ; preds = %20
  %31 = load %struct.minihash_struct** %1, align 8
  %32 = load i64* %j, align 8
  %33 = load i64* %i, align 8
  %34 = load %struct.minihash_struct** %2, align 8
  %35 = getelementptr inbounds %struct.minihash_struct* %34, i32 0, i32 0
  %36 = load %struct.miniarray_struct** %35, align 8
  %37 = getelementptr inbounds %struct.miniarray_struct* %36, i64 %33
  %38 = getelementptr inbounds %struct.miniarray_struct* %37, i32 0, i32 0
  %39 = load %struct.minipair_struct** %38, align 8
  %40 = getelementptr inbounds %struct.minipair_struct* %39, i64 %32
  %41 = getelementptr inbounds %struct.minipair_struct* %40, i32 0, i32 0
  %42 = load i8** %41, align 8
  %43 = load i64* %j, align 8
  %44 = load i64* %i, align 8
  %45 = load %struct.minihash_struct** %2, align 8
  %46 = getelementptr inbounds %struct.minihash_struct* %45, i32 0, i32 0
  %47 = load %struct.miniarray_struct** %46, align 8
  %48 = getelementptr inbounds %struct.miniarray_struct* %47, i64 %44
  %49 = getelementptr inbounds %struct.miniarray_struct* %48, i32 0, i32 0
  %50 = load %struct.minipair_struct** %49, align 8
  %51 = getelementptr inbounds %struct.minipair_struct* %50, i64 %43
  %52 = getelementptr inbounds %struct.minipair_struct* %51, i32 0, i32 1
  %53 = bitcast %struct.obj_struct* %3 to i8*
  %54 = bitcast %struct.obj_struct* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 32, i32 8, i1 false)
  %55 = call i32 @minihash_add(%struct.minihash_struct* %31, i8* %42, %struct.obj_struct* byval %3)
  br label %56

; <label>:56                                      ; preds = %30
  %57 = load i64* %j, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %j, align 8
  br label %20

; <label>:59                                      ; preds = %20
  br label %60

; <label>:60                                      ; preds = %59, %10
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load i64* %i, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %i, align 8
  br label %4

; <label>:64                                      ; preds = %4
  ret i32 0
}

declare i64 @next_power_of_2(i64)

declare i32 @strcmp(i8*, i8*)

declare i32 @is_power_of_2(i64)

declare i8* @smp_realloc(i8*, i64)

define void @minihash_get(%struct.obj_struct* sret %agg.result, %struct.minihash_struct* %hash, i8* %key) nounwind {
  %1 = alloca %struct.minihash_struct*, align 8
  %2 = alloca i8*, align 8
  %index = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %1, align 8
  store i8* %key, i8** %2, align 8
  %3 = load %struct.minihash_struct** %1, align 8
  %4 = icmp ne %struct.minihash_struct* %3, null
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %0
  %6 = load %struct.minihash_struct** %1, align 8
  %7 = getelementptr inbounds %struct.minihash_struct* %6, i32 0, i32 0
  %8 = load %struct.miniarray_struct** %7, align 8
  %9 = icmp ne %struct.miniarray_struct* %8, null
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %5, %0
  %11 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %79

; <label>:12                                      ; preds = %5
  %13 = load i8** %2, align 8
  %14 = call i32 @minihash_function(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = load %struct.minihash_struct** %1, align 8
  %17 = getelementptr inbounds %struct.minihash_struct* %16, i32 0, i32 1
  %18 = load i64* %17, align 8
  %19 = urem i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %index, align 4
  %21 = load i32* %index, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.minihash_struct** %1, align 8
  %24 = getelementptr inbounds %struct.minihash_struct* %23, i32 0, i32 0
  %25 = load %struct.miniarray_struct** %24, align 8
  %26 = getelementptr inbounds %struct.miniarray_struct* %25, i64 %22
  %27 = getelementptr inbounds %struct.miniarray_struct* %26, i32 0, i32 0
  %28 = load %struct.minipair_struct** %27, align 8
  %29 = icmp ne %struct.minipair_struct* %28, null
  br i1 %29, label %30, label %77

; <label>:30                                      ; preds = %12
  store i64 0, i64* %i, align 8
  br label %31

; <label>:31                                      ; preds = %73, %30
  %32 = load i64* %i, align 8
  %33 = load i32* %index, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.minihash_struct** %1, align 8
  %36 = getelementptr inbounds %struct.minihash_struct* %35, i32 0, i32 0
  %37 = load %struct.miniarray_struct** %36, align 8
  %38 = getelementptr inbounds %struct.miniarray_struct* %37, i64 %34
  %39 = getelementptr inbounds %struct.miniarray_struct* %38, i32 0, i32 1
  %40 = load i64* %39, align 8
  %41 = icmp ult i64 %32, %40
  br i1 %41, label %42, label %76

; <label>:42                                      ; preds = %31
  %43 = load i64* %i, align 8
  %44 = load i32* %index, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.minihash_struct** %1, align 8
  %47 = getelementptr inbounds %struct.minihash_struct* %46, i32 0, i32 0
  %48 = load %struct.miniarray_struct** %47, align 8
  %49 = getelementptr inbounds %struct.miniarray_struct* %48, i64 %45
  %50 = getelementptr inbounds %struct.miniarray_struct* %49, i32 0, i32 0
  %51 = load %struct.minipair_struct** %50, align 8
  %52 = getelementptr inbounds %struct.minipair_struct* %51, i64 %43
  %53 = getelementptr inbounds %struct.minipair_struct* %52, i32 0, i32 0
  %54 = load i8** %53, align 8
  %55 = load i8** %2, align 8
  %56 = call i32 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %72

; <label>:58                                      ; preds = %42
  %59 = load i64* %i, align 8
  %60 = load i32* %index, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.minihash_struct** %1, align 8
  %63 = getelementptr inbounds %struct.minihash_struct* %62, i32 0, i32 0
  %64 = load %struct.miniarray_struct** %63, align 8
  %65 = getelementptr inbounds %struct.miniarray_struct* %64, i64 %61
  %66 = getelementptr inbounds %struct.miniarray_struct* %65, i32 0, i32 0
  %67 = load %struct.minipair_struct** %66, align 8
  %68 = getelementptr inbounds %struct.minipair_struct* %67, i64 %59
  %69 = getelementptr inbounds %struct.minipair_struct* %68, i32 0, i32 1
  %70 = bitcast %struct.obj_struct* %agg.result to i8*
  %71 = bitcast %struct.obj_struct* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 32, i32 8, i1 false)
  br label %79

; <label>:72                                      ; preds = %42
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i64* %i, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %i, align 8
  br label %31

; <label>:76                                      ; preds = %31
  br label %77

; <label>:77                                      ; preds = %76, %12
  %78 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %79

; <label>:79                                      ; preds = %77, %58, %10
  ret void
}

define i32 @minihash_containsp(%struct.minihash_struct* %hash, i8* %key) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.minihash_struct*, align 8
  %3 = alloca i8*, align 8
  %index = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %2, align 8
  store i8* %key, i8** %3, align 8
  %4 = load %struct.minihash_struct** %2, align 8
  %5 = icmp ne %struct.minihash_struct* %4, null
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = load %struct.minihash_struct** %2, align 8
  %8 = getelementptr inbounds %struct.minihash_struct* %7, i32 0, i32 0
  %9 = load %struct.miniarray_struct** %8, align 8
  %10 = icmp ne %struct.miniarray_struct* %9, null
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %6, %0
  store i32 0, i32* %1
  br label %65

; <label>:12                                      ; preds = %6
  %13 = load i8** %3, align 8
  %14 = call i32 @minihash_function(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = load %struct.minihash_struct** %2, align 8
  %17 = getelementptr inbounds %struct.minihash_struct* %16, i32 0, i32 1
  %18 = load i64* %17, align 8
  %19 = urem i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %index, align 4
  %21 = load i32* %index, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.minihash_struct** %2, align 8
  %24 = getelementptr inbounds %struct.minihash_struct* %23, i32 0, i32 0
  %25 = load %struct.miniarray_struct** %24, align 8
  %26 = getelementptr inbounds %struct.miniarray_struct* %25, i64 %22
  %27 = getelementptr inbounds %struct.miniarray_struct* %26, i32 0, i32 0
  %28 = load %struct.minipair_struct** %27, align 8
  %29 = icmp ne %struct.minipair_struct* %28, null
  br i1 %29, label %30, label %64

; <label>:30                                      ; preds = %12
  store i64 0, i64* %i, align 8
  br label %31

; <label>:31                                      ; preds = %60, %30
  %32 = load i64* %i, align 8
  %33 = load i32* %index, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.minihash_struct** %2, align 8
  %36 = getelementptr inbounds %struct.minihash_struct* %35, i32 0, i32 0
  %37 = load %struct.miniarray_struct** %36, align 8
  %38 = getelementptr inbounds %struct.miniarray_struct* %37, i64 %34
  %39 = getelementptr inbounds %struct.miniarray_struct* %38, i32 0, i32 1
  %40 = load i64* %39, align 8
  %41 = icmp ult i64 %32, %40
  br i1 %41, label %42, label %63

; <label>:42                                      ; preds = %31
  %43 = load i64* %i, align 8
  %44 = load i32* %index, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.minihash_struct** %2, align 8
  %47 = getelementptr inbounds %struct.minihash_struct* %46, i32 0, i32 0
  %48 = load %struct.miniarray_struct** %47, align 8
  %49 = getelementptr inbounds %struct.miniarray_struct* %48, i64 %45
  %50 = getelementptr inbounds %struct.miniarray_struct* %49, i32 0, i32 0
  %51 = load %struct.minipair_struct** %50, align 8
  %52 = getelementptr inbounds %struct.minipair_struct* %51, i64 %43
  %53 = getelementptr inbounds %struct.minipair_struct* %52, i32 0, i32 0
  %54 = load i8** %53, align 8
  %55 = load i8** %3, align 8
  %56 = call i32 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %42
  store i32 1, i32* %1
  br label %65

; <label>:59                                      ; preds = %42
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load i64* %i, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %i, align 8
  br label %31

; <label>:63                                      ; preds = %31
  br label %64

; <label>:64                                      ; preds = %63, %12
  store i32 0, i32* %1
  br label %65

; <label>:65                                      ; preds = %64, %58, %11
  %66 = load i32* %1
  ret i32 %66
}

define i32 @minihash_each(%struct.minihash_struct* %hash, i32 (i8*, %struct.obj_struct*)* %fun) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.minihash_struct*, align 8
  %3 = alloca i32 (i8*, %struct.obj_struct*)*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %res = alloca i32, align 4
  %4 = alloca %struct.obj_struct, align 8
  store %struct.minihash_struct* %hash, %struct.minihash_struct** %2, align 8
  store i32 (i8*, %struct.obj_struct*)* %fun, i32 (i8*, %struct.obj_struct*)** %3, align 8
  %5 = load %struct.minihash_struct** %2, align 8
  %6 = getelementptr inbounds %struct.minihash_struct* %5, i32 0, i32 0
  %7 = load %struct.miniarray_struct** %6, align 8
  %8 = icmp ne %struct.miniarray_struct* %7, null
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %0
  %10 = load %struct.minihash_struct** %2, align 8
  %11 = getelementptr inbounds %struct.minihash_struct* %10, i32 0, i32 3
  %12 = load i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9, %0
  store i32 0, i32* %1
  br label %82

; <label>:15                                      ; preds = %9
  store i64 0, i64* %i, align 8
  br label %16

; <label>:16                                      ; preds = %78, %15
  %17 = load i64* %i, align 8
  %18 = load %struct.minihash_struct** %2, align 8
  %19 = getelementptr inbounds %struct.minihash_struct* %18, i32 0, i32 1
  %20 = load i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %81

; <label>:22                                      ; preds = %16
  %23 = load i64* %i, align 8
  %24 = load %struct.minihash_struct** %2, align 8
  %25 = getelementptr inbounds %struct.minihash_struct* %24, i32 0, i32 0
  %26 = load %struct.miniarray_struct** %25, align 8
  %27 = getelementptr inbounds %struct.miniarray_struct* %26, i64 %23
  %28 = getelementptr inbounds %struct.miniarray_struct* %27, i32 0, i32 0
  %29 = load %struct.minipair_struct** %28, align 8
  %30 = icmp ne %struct.minipair_struct* %29, null
  br i1 %30, label %31, label %77

; <label>:31                                      ; preds = %22
  store i64 0, i64* %j, align 8
  br label %32

; <label>:32                                      ; preds = %73, %31
  %33 = load i64* %j, align 8
  %34 = load i64* %i, align 8
  %35 = load %struct.minihash_struct** %2, align 8
  %36 = getelementptr inbounds %struct.minihash_struct* %35, i32 0, i32 0
  %37 = load %struct.miniarray_struct** %36, align 8
  %38 = getelementptr inbounds %struct.miniarray_struct* %37, i64 %34
  %39 = getelementptr inbounds %struct.miniarray_struct* %38, i32 0, i32 1
  %40 = load i64* %39, align 8
  %41 = icmp ult i64 %33, %40
  br i1 %41, label %42, label %76

; <label>:42                                      ; preds = %32
  %43 = load i32 (i8*, %struct.obj_struct*)** %3, align 8
  %44 = load i64* %j, align 8
  %45 = load i64* %i, align 8
  %46 = load %struct.minihash_struct** %2, align 8
  %47 = getelementptr inbounds %struct.minihash_struct* %46, i32 0, i32 0
  %48 = load %struct.miniarray_struct** %47, align 8
  %49 = getelementptr inbounds %struct.miniarray_struct* %48, i64 %45
  %50 = getelementptr inbounds %struct.miniarray_struct* %49, i32 0, i32 0
  %51 = load %struct.minipair_struct** %50, align 8
  %52 = getelementptr inbounds %struct.minipair_struct* %51, i64 %44
  %53 = getelementptr inbounds %struct.minipair_struct* %52, i32 0, i32 0
  %54 = load i8** %53, align 8
  %55 = load i64* %j, align 8
  %56 = load i64* %i, align 8
  %57 = load %struct.minihash_struct** %2, align 8
  %58 = getelementptr inbounds %struct.minihash_struct* %57, i32 0, i32 0
  %59 = load %struct.miniarray_struct** %58, align 8
  %60 = getelementptr inbounds %struct.miniarray_struct* %59, i64 %56
  %61 = getelementptr inbounds %struct.miniarray_struct* %60, i32 0, i32 0
  %62 = load %struct.minipair_struct** %61, align 8
  %63 = getelementptr inbounds %struct.minipair_struct* %62, i64 %55
  %64 = getelementptr inbounds %struct.minipair_struct* %63, i32 0, i32 1
  %65 = bitcast %struct.obj_struct* %4 to i8*
  %66 = bitcast %struct.obj_struct* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 32, i32 8, i1 false)
  %67 = call i32 %43(i8* %54, %struct.obj_struct* byval %4)
  store i32 %67, i32* %res, align 4
  %68 = load i32* %res, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

; <label>:70                                      ; preds = %42
  %71 = load i32* %res, align 4
  store i32 %71, i32* %1
  br label %82

; <label>:72                                      ; preds = %42
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i64* %j, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %j, align 8
  br label %32

; <label>:76                                      ; preds = %32
  br label %77

; <label>:77                                      ; preds = %76, %22
  br label %78

; <label>:78                                      ; preds = %77
  %79 = load i64* %i, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %i, align 8
  br label %16

; <label>:81                                      ; preds = %16
  store i32 0, i32* %1
  br label %82

; <label>:82                                      ; preds = %81, %70, %14
  %83 = load i32* %1
  ret i32 %83
}

define i32 @minihash_print(%struct.minihash_struct* byval %hash) nounwind {
  %1 = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %2 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %3 = load %struct.miniarray_struct** %2, align 8
  %4 = icmp ne %struct.miniarray_struct* %3, null
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %0
  store i32 0, i32* %1
  br label %52

; <label>:6                                       ; preds = %0
  store i64 0, i64* %i, align 8
  br label %7

; <label>:7                                       ; preds = %47, %6
  %8 = load i64* %i, align 8
  %9 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 1
  %10 = load i64* %9, align 8
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %50

; <label>:12                                      ; preds = %7
  %13 = load i64* %i, align 8
  %14 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %15 = load %struct.miniarray_struct** %14, align 8
  %16 = getelementptr inbounds %struct.miniarray_struct* %15, i64 %13
  %17 = getelementptr inbounds %struct.miniarray_struct* %16, i32 0, i32 0
  %18 = load %struct.minipair_struct** %17, align 8
  %19 = icmp ne %struct.minipair_struct* %18, null
  br i1 %19, label %20, label %46

; <label>:20                                      ; preds = %12
  store i64 0, i64* %j, align 8
  br label %21

; <label>:21                                      ; preds = %42, %20
  %22 = load i64* %j, align 8
  %23 = load i64* %i, align 8
  %24 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %25 = load %struct.miniarray_struct** %24, align 8
  %26 = getelementptr inbounds %struct.miniarray_struct* %25, i64 %23
  %27 = getelementptr inbounds %struct.miniarray_struct* %26, i32 0, i32 1
  %28 = load i64* %27, align 8
  %29 = icmp ult i64 %22, %28
  br i1 %29, label %30, label %45

; <label>:30                                      ; preds = %21
  %31 = load i64* %j, align 8
  %32 = load i64* %i, align 8
  %33 = getelementptr inbounds %struct.minihash_struct* %hash, i32 0, i32 0
  %34 = load %struct.miniarray_struct** %33, align 8
  %35 = getelementptr inbounds %struct.miniarray_struct* %34, i64 %32
  %36 = getelementptr inbounds %struct.miniarray_struct* %35, i32 0, i32 0
  %37 = load %struct.minipair_struct** %36, align 8
  %38 = getelementptr inbounds %struct.minipair_struct* %37, i64 %31
  %39 = getelementptr inbounds %struct.minipair_struct* %38, i32 0, i32 0
  %40 = load i8** %39, align 8
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i8* %40)
  br label %42

; <label>:42                                      ; preds = %30
  %43 = load i64* %j, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %j, align 8
  br label %21

; <label>:45                                      ; preds = %21
  br label %46

; <label>:46                                      ; preds = %45, %12
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load i64* %i, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %i, align 8
  br label %7

; <label>:50                                      ; preds = %7
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  store i32 0, i32* %1
  br label %52

; <label>:52                                      ; preds = %50, %5
  %53 = load i32* %1
  ret i32 %53
}

declare i32 @printf(i8*, ...)
