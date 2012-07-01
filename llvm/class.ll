; ModuleID = 'class.c'
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
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@smptype_class = common global %struct.smptype_struct zeroinitializer, align 8
@scope_length = common global i64 0, align 8
@scope_stack = common global %struct.minihash_struct* null, align 8
@.str = private constant [24 x i8] c"ImplementationException\00"
@.str1 = private constant [34 x i8] c"Cannot call an abstract function.\00"
@.str2 = private constant [31 x i8] c"default unimplemented function\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_id = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_nil = common global %struct.smptype_struct zeroinitializer, align 8
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
@scope_classes = common global %struct.minihash_struct zeroinitializer, align 8
@initialized_classesp = common global i32 0, align 4
@smptype_int = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_float = common global %struct.smptype_struct zeroinitializer, align 8
@smpint_zero = common global %struct.obj_struct zeroinitializer, align 8
@smpint_one = common global %struct.obj_struct zeroinitializer, align 8
@smp_mpfr_rnd = common global i32 0, align 4
@smp_mpfr_default_prec = common global i64 0, align 8

define i32 @smp_putclass(%struct.smptype_struct* byval %type) nounwind {
  %wrapper = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  call void @obj_init(%struct.obj_struct* sret %wrapper, %struct.smptype_struct* @smptype_class)
  %2 = bitcast %struct.obj_struct* %wrapper to i8*
  %3 = getelementptr i8* %2, i32 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %4, align 8
  %6 = and i32 %5, -2
  %7 = or i32 %6, 1
  store i32 %7, i32* %4, align 8
  %8 = call i8* @smp_malloc(i64 64)
  %9 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %wrapper, i32 0, i32 3
  %11 = load i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.smptype_struct*
  %13 = bitcast %struct.smptype_struct* %12 to i8*
  %14 = bitcast %struct.smptype_struct* %type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 64, i32 8, i1 false)
  %15 = call i32 @gc_stack_push(%struct.obj_struct* %wrapper)
  %16 = getelementptr inbounds %struct.smptype_struct* %type, i32 0, i32 0
  %17 = load i8** %16, align 8
  %18 = bitcast %struct.obj_struct* %1 to i8*
  %19 = bitcast %struct.obj_struct* %wrapper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = call i32 @scope_add(i8* %17, %struct.obj_struct* byval %1)
  ret i32 0
}

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

declare i8* @smp_malloc(i64)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i32 @gc_stack_push(%struct.obj_struct*)

declare i32 @scope_add(i8*, %struct.obj_struct* byval)

define void @smp_getclass(%struct.obj_struct* sret %agg.result, i8* %name) nounwind {
  %1 = alloca i8*, align 8
  store i8* %name, i8** %1, align 8
  %2 = load i64* @scope_length, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %10

; <label>:5                                       ; preds = %0
  %6 = load i64* @scope_length, align 8
  %7 = sub i64 %6, 1
  %8 = load %struct.minihash_struct** @scope_stack, align 8
  %9 = getelementptr inbounds %struct.minihash_struct* %8, i64 %7
  br label %10

; <label>:10                                      ; preds = %5, %4
  %11 = phi %struct.minihash_struct* [ null, %4 ], [ %9, %5 ]
  %12 = load i8** %1, align 8
  call void @minihash_get(%struct.obj_struct* sret %agg.result, %struct.minihash_struct* %11, i8* %12)
  ret void
}

declare void @minihash_get(%struct.obj_struct* sret, %struct.minihash_struct*, i8*)

define void @smp_abstract_function(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0))
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0))
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}

declare void @smpglobal_throw(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smpexc_init_fmt(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, ...)

define void @smp_unimplemented_function(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0))
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([31 x i8]* @.str2, i32 0, i32 0))
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  ret void
}
