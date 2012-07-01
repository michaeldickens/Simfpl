; ModuleID = 'scope.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smptype_struct*, i8* }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@scope_length = common global i64 0, align 8
@scope_stack = common global %struct.minihash_struct* null, align 8
@scope_classes = common global %struct.minihash_struct zeroinitializer, align 8
@.str = private constant [5 x i8] c"self\00"
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

define i32 @scope_init() nounwind {
  store i64 1, i64* @scope_length, align 8
  %1 = call i64 @next_power_of_2(i64 4)
  %2 = mul i64 32, %1
  %3 = call i8* @smp_malloc(i64 %2)
  %4 = bitcast i8* %3 to %struct.minihash_struct*
  store %struct.minihash_struct* %4, %struct.minihash_struct** @scope_stack, align 8
  %5 = load %struct.minihash_struct** @scope_stack, align 8
  %6 = getelementptr inbounds %struct.minihash_struct* %5, i64 0
  call void (%struct.minihash_struct*, ...)* @minihash_init(%struct.minihash_struct* sret %6)
  call void (%struct.minihash_struct*, ...)* @minihash_init(%struct.minihash_struct* sret @scope_classes)
  ret i32 0
}

declare i8* @smp_malloc(i64)

declare i64 @next_power_of_2(i64)

declare void @minihash_init(%struct.minihash_struct* sret, ...)

define i32 @scope_push() nounwind {
  %1 = load i64* @scope_length, align 8
  %2 = icmp uge i64 %1, 4
  br i1 %2, label %3, label %15

; <label>:3                                       ; preds = %0
  %4 = load i64* @scope_length, align 8
  %5 = call i32 @is_power_of_2(i64 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

; <label>:7                                       ; preds = %3
  %8 = load %struct.minihash_struct** @scope_stack, align 8
  %9 = bitcast %struct.minihash_struct* %8 to i8*
  %10 = load i64* @scope_length, align 8
  %11 = call i64 @next_power_of_2(i64 %10)
  %12 = mul i64 32, %11
  %13 = call i8* @smp_realloc(i8* %9, i64 %12)
  %14 = bitcast i8* %13 to %struct.minihash_struct*
  store %struct.minihash_struct* %14, %struct.minihash_struct** @scope_stack, align 8
  br label %15

; <label>:15                                      ; preds = %7, %3, %0
  %16 = load i64* @scope_length, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* @scope_length, align 8
  %18 = load %struct.minihash_struct** @scope_stack, align 8
  %19 = getelementptr inbounds %struct.minihash_struct* %18, i64 %16
  call void (%struct.minihash_struct*, ...)* @minihash_init(%struct.minihash_struct* sret %19)
  %20 = load i64* @scope_length, align 8
  %21 = sub i64 %20, 1
  %22 = load %struct.minihash_struct** @scope_stack, align 8
  %23 = getelementptr inbounds %struct.minihash_struct* %22, i64 %21
  %24 = load i64* @scope_length, align 8
  %25 = sub i64 %24, 2
  %26 = load %struct.minihash_struct** @scope_stack, align 8
  %27 = getelementptr inbounds %struct.minihash_struct* %26, i64 %25
  %28 = call i32 @minihash_copy(%struct.minihash_struct* %23, %struct.minihash_struct* %27)
  ret i32 0
}

declare i32 @is_power_of_2(i64)

declare i8* @smp_realloc(i8*, i64)

declare i32 @minihash_copy(%struct.minihash_struct*, %struct.minihash_struct*)

define i32 @scope_pop() nounwind {
  %1 = load i64* @scope_length, align 8
  %2 = add i64 %1, -1
  store i64 %2, i64* @scope_length, align 8
  %3 = load %struct.minihash_struct** @scope_stack, align 8
  %4 = getelementptr inbounds %struct.minihash_struct* %3, i64 %2
  %5 = call i32 @minihash_clear(%struct.minihash_struct* %4)
  ret i32 0
}

declare i32 @minihash_clear(%struct.minihash_struct*)

define i32 @scope_add(i8* %name, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %ret = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  store i8* %name, i8** %2, align 8
  %4 = call i32 @gc_stack_push(%struct.obj_struct* %obj)
  store i32 %4, i32* %ret, align 4
  %5 = load i32* %ret, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = load i32* %ret, align 4
  store i32 %8, i32* %1
  br label %24

; <label>:9                                       ; preds = %0
  %10 = load i64* @scope_length, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %9
  br label %18

; <label>:13                                      ; preds = %9
  %14 = load i64* @scope_length, align 8
  %15 = sub i64 %14, 1
  %16 = load %struct.minihash_struct** @scope_stack, align 8
  %17 = getelementptr inbounds %struct.minihash_struct* %16, i64 %15
  br label %18

; <label>:18                                      ; preds = %13, %12
  %19 = phi %struct.minihash_struct* [ null, %12 ], [ %17, %13 ]
  %20 = load i8** %2, align 8
  %21 = bitcast %struct.obj_struct* %3 to i8*
  %22 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  %23 = call i32 @minihash_add(%struct.minihash_struct* %19, i8* %20, %struct.obj_struct* byval %3)
  store i32 %23, i32* %1
  br label %24

; <label>:24                                      ; preds = %18, %7
  %25 = load i32* %1
  ret i32 %25
}

declare i32 @gc_stack_push(%struct.obj_struct*)

declare i32 @minihash_add(%struct.minihash_struct*, i8*, %struct.obj_struct* byval)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define void @scope_self(%struct.obj_struct* sret %agg.result) nounwind {
  %1 = load i64* @scope_length, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %9

; <label>:4                                       ; preds = %0
  %5 = load i64* @scope_length, align 8
  %6 = sub i64 %5, 1
  %7 = load %struct.minihash_struct** @scope_stack, align 8
  %8 = getelementptr inbounds %struct.minihash_struct* %7, i64 %6
  br label %9

; <label>:9                                       ; preds = %4, %3
  %10 = phi %struct.minihash_struct* [ null, %3 ], [ %8, %4 ]
  call void @minihash_get(%struct.obj_struct* sret %agg.result, %struct.minihash_struct* %10, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0))
  ret void
}

declare void @minihash_get(%struct.obj_struct* sret, %struct.minihash_struct*, i8*)

define i32 @scope_clear() nounwind {
  %1 = load i64* @scope_length, align 8
  %2 = sub i64 %1, 1
  %3 = load %struct.minihash_struct** @scope_stack, align 8
  %4 = getelementptr inbounds %struct.minihash_struct* %3, i64 %2
  %5 = call i32 @minihash_clear(%struct.minihash_struct* %4)
  br label %6

; <label>:6                                       ; preds = %9, %0
  %7 = load i64* @scope_length, align 8
  %8 = icmp ugt i64 %7, 1
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %6
  %10 = load i64* @scope_length, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* @scope_length, align 8
  %12 = sub i64 %11, 1
  %13 = load %struct.minihash_struct** @scope_stack, align 8
  %14 = getelementptr inbounds %struct.minihash_struct* %13, i64 %12
  %15 = call i32 @minihash_clear(%struct.minihash_struct* %14)
  br label %6

; <label>:16                                      ; preds = %6
  %17 = load i64* @scope_length, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* @scope_length, align 8
  ret i32 0
}
