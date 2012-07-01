; ModuleID = 'smptype.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.argspec_struct = type { i8*, i8, %struct.obj_struct, i8 }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smptype_struct*, i8* }
%struct.smpfun_struct = type { i8, i8*, %struct.argspec_struct*, [2 x i8], void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@.str = private constant [7 x i8] c"Thrown\00"
@.str1 = private constant [6 x i8] c"Class\00"
@smptype_class = common global %struct.smptype_struct zeroinitializer, align 8
@.str2 = private constant [9 x i8] c"Function\00"
@smptype_function = common global %struct.smptype_struct zeroinitializer, align 8
@.str3 = private constant [38 x i8] c"Undefined function-variable flag %d.\0A\00"
@.str4 = private constant [26 x i8] c"Undefined scope flag %d.\0A\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_id = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_nil = common global %struct.smptype_struct zeroinitializer, align 8
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

define void @smptype_abstract_def(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type, i32 %scope, i8* %name, i32 %argc, ...) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  %res = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %scope, i32* %1, align 4
  store i8* %name, i8** %2, align 8
  store i32 %argc, i32* %3, align 4
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = bitcast %struct.obj_struct* %4 to i8*
  %9 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = load i32* %1, align 4
  %11 = load i8** %2, align 8
  %12 = load i32* %3, align 4
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @smpfun_init_v(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smp_abstract_function, i32 %12, %struct.__va_list_tag* %13)
  call void @smptype_def(%struct.obj_struct* sret %res, %struct.obj_struct* byval %4, i32 %10, i8* %11, %struct.obj_struct* byval %5)
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_end(i8* %15)
  %16 = bitcast %struct.obj_struct* %agg.result to i8*
  %17 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  ret void
}

declare void @llvm.va_start(i8*) nounwind

define void @smptype_def(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type, i32 %flags, i8* %name, %struct.obj_struct* byval %fun) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %flags, i32* %1, align 4
  store i8* %name, i8** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load i32* %1, align 4
  %8 = load i8** %2, align 8
  %9 = bitcast %struct.obj_struct* %4 to i8*
  %10 = bitcast %struct.obj_struct* %fun to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void @smptype_def_general(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i32 %7, i8* %8, %struct.obj_struct* byval %4)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @smpfun_init_v(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, %struct.__va_list_tag*)

declare void @smp_abstract_function(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @llvm.va_end(i8*) nounwind

define void @smptype_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %type = alloca %struct.smptype_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smptype_struct*
  %6 = bitcast %struct.smptype_struct* %type to i8*
  %7 = bitcast %struct.smptype_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 64, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.smptype_struct* %type, i32 0, i32 7
  %9 = load %struct.minihash_struct** %8, align 8
  %10 = call i32 @minihash_clear(%struct.minihash_struct* %9)
  %11 = getelementptr inbounds %struct.smptype_struct* %type, i32 0, i32 8
  %12 = load %struct.minihash_struct** %11, align 8
  %13 = call i32 @minihash_clear(%struct.minihash_struct* %12)
  %14 = getelementptr inbounds %struct.smptype_struct* %type, i32 0, i32 0
  %15 = load i8** %14, align 8
  call void @smp_free(i8* %15)
  %16 = getelementptr inbounds %struct.smptype_struct* %type, i32 0, i32 3
  %17 = load %struct.smptype_struct*** %16, align 8
  %18 = bitcast %struct.smptype_struct** %17 to i8*
  call void @smp_free(i8* %18)
  %19 = getelementptr inbounds %struct.smptype_struct* %type, i32 0, i32 3
  store %struct.smptype_struct** null, %struct.smptype_struct*** %19, align 8
  %20 = getelementptr inbounds %struct.smptype_struct* %type, i32 0, i32 5
  %21 = load %struct.minihash_struct** %20, align 8
  %22 = call i32 @minihash_clear(%struct.minihash_struct* %21)
  %23 = getelementptr inbounds %struct.smptype_struct* %type, i32 0, i32 6
  %24 = load %struct.minihash_struct** %23, align 8
  %25 = call i32 @minihash_clear(%struct.minihash_struct* %24)
  %26 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

declare i32 @minihash_clear(%struct.minihash_struct*)

declare void @smp_free(i8*)

define void @smptype_def_general(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type, i32 %flags, i8* %name, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %data = alloca %struct.minihash_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  store i32 %flags, i32* %1, align 4
  store i8* %name, i8** %2, align 8
  %8 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 2
  %9 = load %struct.smptype_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smptype_struct* %9, i32 0, i32 0
  %11 = load i8** %10, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %agg.result to i8*
  %16 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  br label %169

; <label>:17                                      ; preds = %0
  store %struct.minihash_struct* null, %struct.minihash_struct** %data, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 2
  %19 = load %struct.smptype_struct** %18, align 8
  %20 = getelementptr inbounds %struct.smptype_struct* %19, i32 0, i32 0
  %21 = load i8** %20, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0))
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

; <label>:24                                      ; preds = %17
  %25 = bitcast %struct.obj_struct* %4 to i8*
  %26 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* @smptype_class, %struct.obj_struct* byval %4)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %169

; <label>:27                                      ; preds = %17
  %28 = load i32* %1, align 4
  %29 = and i32 %28, 3840
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

; <label>:31                                      ; preds = %27
  %32 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %33 = load %struct.smptype_struct** %32, align 8
  %34 = getelementptr inbounds %struct.smptype_struct* %33, i32 0, i32 0
  %35 = load i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

; <label>:38                                      ; preds = %31
  %39 = bitcast %struct.obj_struct* %6 to i8*
  %40 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %5, %struct.smptype_struct* @smptype_function, %struct.obj_struct* byval %6)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %5)
  br label %169

; <label>:41                                      ; preds = %31, %27
  %42 = load i32* %1, align 4
  %43 = and i32 %42, 3840
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %99

; <label>:45                                      ; preds = %41
  %46 = load i8** %2, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = add i64 %47, 1
  %49 = mul i64 1, %48
  %50 = call i8* @smp_malloc(i64 %49)
  %51 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %52 = load i8** %51, align 8
  %53 = bitcast i8* %52 to %struct.smpfun_struct*
  %54 = getelementptr inbounds %struct.smpfun_struct* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  %55 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %56 = load i8** %55, align 8
  %57 = bitcast i8* %56 to %struct.smpfun_struct*
  %58 = getelementptr inbounds %struct.smpfun_struct* %57, i32 0, i32 1
  %59 = load i8** %58, align 8
  %60 = call i64 @llvm.objectsize.i64(i8* %59, i1 false)
  %61 = icmp ne i64 %60, -1
  br i1 %61, label %62, label %76

; <label>:62                                      ; preds = %45
  %63 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %64 = load i8** %63, align 8
  %65 = bitcast i8* %64 to %struct.smpfun_struct*
  %66 = getelementptr inbounds %struct.smpfun_struct* %65, i32 0, i32 1
  %67 = load i8** %66, align 8
  %68 = load i8** %2, align 8
  %69 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %70 = load i8** %69, align 8
  %71 = bitcast i8* %70 to %struct.smpfun_struct*
  %72 = getelementptr inbounds %struct.smpfun_struct* %71, i32 0, i32 1
  %73 = load i8** %72, align 8
  %74 = call i64 @llvm.objectsize.i64(i8* %73, i1 false)
  %75 = call i8* @__strcpy_chk(i8* %67, i8* %68, i64 %74)
  br label %84

; <label>:76                                      ; preds = %45
  %77 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %78 = load i8** %77, align 8
  %79 = bitcast i8* %78 to %struct.smpfun_struct*
  %80 = getelementptr inbounds %struct.smpfun_struct* %79, i32 0, i32 1
  %81 = load i8** %80, align 8
  %82 = load i8** %2, align 8
  %83 = call i8* @__inline_strcpy_chk(i8* %81, i8* %82)
  br label %84

; <label>:84                                      ; preds = %76, %62
  %85 = phi i8* [ %75, %62 ], [ %83, %76 ]
  %86 = load i32* %1, align 4
  %87 = and i32 %86, 240
  %88 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %89 = load i8** %88, align 8
  %90 = bitcast i8* %89 to %struct.smpfun_struct*
  %91 = and i32 %87, 255
  %92 = shl i32 %91, 24
  %93 = ashr i32 %92, 24
  %94 = bitcast %struct.smpfun_struct* %90 to i32*
  %95 = and i32 %91, 255
  %96 = load i32* %94, align 8
  %97 = and i32 %96, -256
  %98 = or i32 %97, %95
  store i32 %98, i32* %94, align 8
  br label %99

; <label>:99                                      ; preds = %84, %41
  %100 = load i32* %1, align 4
  %101 = and i32 %100, 15
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %128

; <label>:103                                     ; preds = %99
  %104 = load i32* %1, align 4
  %105 = and i32 %104, 3840
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

; <label>:107                                     ; preds = %103
  %108 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 3
  %109 = load i8** %108, align 8
  %110 = bitcast i8* %109 to %struct.smptype_struct*
  %111 = getelementptr inbounds %struct.smptype_struct* %110, i32 0, i32 5
  %112 = load %struct.minihash_struct** %111, align 8
  store %struct.minihash_struct* %112, %struct.minihash_struct** %data, align 8
  br label %127

; <label>:113                                     ; preds = %103
  %114 = load i32* %1, align 4
  %115 = and i32 %114, 3840
  %116 = icmp eq i32 %115, 256
  br i1 %116, label %117, label %123

; <label>:117                                     ; preds = %113
  %118 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 3
  %119 = load i8** %118, align 8
  %120 = bitcast i8* %119 to %struct.smptype_struct*
  %121 = getelementptr inbounds %struct.smptype_struct* %120, i32 0, i32 6
  %122 = load %struct.minihash_struct** %121, align 8
  store %struct.minihash_struct* %122, %struct.minihash_struct** %data, align 8
  br label %126

; <label>:123                                     ; preds = %113
  %124 = load i32* %1, align 4
  %125 = and i32 %124, 3840
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([38 x i8]* @.str3, i32 0, i32 0), i32 %125)
  br label %126

; <label>:126                                     ; preds = %123, %117
  br label %127

; <label>:127                                     ; preds = %126, %107
  br label %161

; <label>:128                                     ; preds = %99
  %129 = load i32* %1, align 4
  %130 = and i32 %129, 15
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %157

; <label>:132                                     ; preds = %128
  %133 = load i32* %1, align 4
  %134 = and i32 %133, 3840
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %142

; <label>:136                                     ; preds = %132
  %137 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 3
  %138 = load i8** %137, align 8
  %139 = bitcast i8* %138 to %struct.smptype_struct*
  %140 = getelementptr inbounds %struct.smptype_struct* %139, i32 0, i32 7
  %141 = load %struct.minihash_struct** %140, align 8
  store %struct.minihash_struct* %141, %struct.minihash_struct** %data, align 8
  br label %156

; <label>:142                                     ; preds = %132
  %143 = load i32* %1, align 4
  %144 = and i32 %143, 3840
  %145 = icmp eq i32 %144, 256
  br i1 %145, label %146, label %152

; <label>:146                                     ; preds = %142
  %147 = getelementptr inbounds %struct.obj_struct* %type, i32 0, i32 3
  %148 = load i8** %147, align 8
  %149 = bitcast i8* %148 to %struct.smptype_struct*
  %150 = getelementptr inbounds %struct.smptype_struct* %149, i32 0, i32 8
  %151 = load %struct.minihash_struct** %150, align 8
  store %struct.minihash_struct* %151, %struct.minihash_struct** %data, align 8
  br label %155

; <label>:152                                     ; preds = %142
  %153 = load i32* %1, align 4
  %154 = and i32 %153, 3840
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([38 x i8]* @.str3, i32 0, i32 0), i32 %154)
  br label %155

; <label>:155                                     ; preds = %152, %146
  br label %156

; <label>:156                                     ; preds = %155, %136
  br label %160

; <label>:157                                     ; preds = %128
  %158 = load i32* %1, align 4
  %159 = and i32 %158, 15
  call void (i8*, ...)* @internal_error(i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i32 %159)
  br label %160

; <label>:160                                     ; preds = %157, %156
  br label %161

; <label>:161                                     ; preds = %160, %127
  %162 = call i32 @gc_stack_push(%struct.obj_struct* %obj)
  %163 = load %struct.minihash_struct** %data, align 8
  %164 = load i8** %2, align 8
  %165 = bitcast %struct.obj_struct* %7 to i8*
  %166 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %166, i64 32, i32 8, i1 false)
  %167 = call i32 @minihash_add(%struct.minihash_struct* %163, i8* %164, %struct.obj_struct* byval %7)
  %168 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %168, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %169

; <label>:169                                     ; preds = %161, %38, %24, %14
  ret void
}

declare i32 @strcmp(i8*, i8*)

declare void @smpglobal_throw(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smptypeerr_init(%struct.obj_struct* sret, %struct.smptype_struct*, %struct.obj_struct* byval)

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

declare void @internal_error(i8*, ...)

declare i32 @gc_stack_push(%struct.obj_struct*)

declare i32 @minihash_add(%struct.minihash_struct*, i8*, %struct.obj_struct* byval)

define void @smptype_defvar(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %type, i32 %flags, i8* %name, %struct.obj_struct* byval %var) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %flags, i32* %1, align 4
  store i8* %name, i8** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load i32* %1, align 4
  %8 = or i32 %7, 256
  %9 = load i8** %2, align 8
  %10 = bitcast %struct.obj_struct* %4 to i8*
  %11 = bitcast %struct.obj_struct* %var to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  call void @smptype_def_general(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i32 %8, i8* %9, %struct.obj_struct* byval %4)
  ret void
}

define void @smptype_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = load %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %3, i64 0
  %5 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %6 = load %struct.smptype_struct** %5, align 8
  %7 = getelementptr inbounds %struct.smptype_struct* %6, i32 0, i32 0
  %8 = load i8** %7, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0))
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %13 = load i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.smptype_struct*
  %15 = getelementptr inbounds %struct.smptype_struct* %14, i32 0, i32 1
  %16 = load i32* %15, align 4
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = getelementptr inbounds %struct.obj_struct* %18, i32 0, i32 3
  %20 = load i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.smptype_struct*
  %22 = getelementptr inbounds %struct.smptype_struct* %21, i32 0, i32 1
  %23 = load i32* %22, align 4
  %24 = icmp eq i32 %16, %23
  %25 = zext i1 %24 to i32
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %25)
  br label %28

; <label>:26                                      ; preds = %0
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %28

; <label>:28                                      ; preds = %26, %11
  ret void
}

declare void @smpbool_init(%struct.obj_struct* sret, i32)

define void @smptype_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smptype_struct*
  %6 = getelementptr inbounds %struct.smptype_struct* %5, i32 0, i32 7
  %7 = load %struct.minihash_struct** %6, align 8
  %8 = call i32 @minihash_each(%struct.minihash_struct* %7, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  %9 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %10 = load i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.smptype_struct*
  %12 = getelementptr inbounds %struct.smptype_struct* %11, i32 0, i32 8
  %13 = load %struct.minihash_struct** %12, align 8
  %14 = call i32 @minihash_each(%struct.minihash_struct* %13, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  %15 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %16 = load i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.smptype_struct*
  %18 = getelementptr inbounds %struct.smptype_struct* %17, i32 0, i32 5
  %19 = load %struct.minihash_struct** %18, align 8
  %20 = call i32 @minihash_each(%struct.minihash_struct* %19, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  %21 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %22 = load i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.smptype_struct*
  %24 = getelementptr inbounds %struct.smptype_struct* %23, i32 0, i32 6
  %25 = load %struct.minihash_struct** %24, align 8
  %26 = call i32 @minihash_each(%struct.minihash_struct* %25, i32 (i8*, %struct.obj_struct*)* @gc_mark_recursive)
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

declare i32 @minihash_each(%struct.minihash_struct*, i32 (i8*, %struct.obj_struct*)*)

declare i32 @gc_mark_recursive(i8*, %struct.obj_struct* byval)

define void @smptype_relatedp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %type1 = alloca %struct.smptype_struct*, align 8
  %type2 = alloca %struct.smptype_struct, align 8
  %3 = alloca %struct.smptype_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smptype_struct*
  store %struct.smptype_struct* %6, %struct.smptype_struct** %type1, align 8
  %7 = load %struct.obj_struct** %2, align 8
  %8 = getelementptr inbounds %struct.obj_struct* %7, i64 0
  %9 = getelementptr inbounds %struct.obj_struct* %8, i32 0, i32 3
  %10 = load i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.smptype_struct*
  %12 = bitcast %struct.smptype_struct* %type2 to i8*
  %13 = bitcast %struct.smptype_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 64, i32 8, i1 false)
  %14 = load %struct.smptype_struct** %type1, align 8
  %15 = bitcast %struct.smptype_struct* %3 to i8*
  %16 = bitcast %struct.smptype_struct* %type2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 64, i32 8, i1 false)
  %17 = call i32 @smpobj_instancep_c(%struct.smptype_struct* %14, %struct.smptype_struct* byval %3)
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %17)
  ret void
}

declare i32 @smpobj_instancep_c(%struct.smptype_struct*, %struct.smptype_struct* byval)
