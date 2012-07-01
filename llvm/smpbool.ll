; ModuleID = 'smpbool.c'
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

@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@.str = private constant [5 x i8] c"true\00"
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

define void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %truep) nounwind {
  %1 = alloca i32, align 4
  store i32 %truep, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  br label %8

; <label>:6                                       ; preds = %0
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %8

; <label>:8                                       ; preds = %6, %4
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define i32 @smpbool_to_cint(%struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i32, align 4
  %2 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %3 = load i8** %2, align 8
  %4 = load i8** getelementptr inbounds (%struct.obj_struct* @smp_nil, i32 0, i32 3), align 8
  %5 = icmp eq i8* %3, %4
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 0, i32* %1
  br label %8

; <label>:7                                       ; preds = %0
  store i32 1, i32* %1
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i32* %1
  ret i32 %9
}

define void @smptrue_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smpstr_init(%struct.obj_struct* sret %agg.result, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0))
  ret void
}

declare void @smpstr_init(%struct.obj_struct* sret, i8*)

define void @smpbool_and(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
; <label>:0
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = call i32 @smpobj_truep_c(%struct.obj_struct* byval %3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %0
  %10 = load %struct.obj_struct** %2, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %10, i64 0
  %12 = bitcast %struct.obj_struct* %4 to i8*
  %13 = bitcast %struct.obj_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %14 = call i32 @smpobj_truep_c(%struct.obj_struct* byval %4)
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16                                      ; preds = %9, %0
  %17 = phi i1 [ false, %0 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %18)
  ret void
}

declare i32 @smpobj_truep_c(%struct.obj_struct* byval)

define void @smpbool_not(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = call i32 @smpobj_truep_c(%struct.obj_struct* byval %3)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %9)
  ret void
}

define void @smpbool_or(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
; <label>:0
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = call i32 @smpobj_truep_c(%struct.obj_struct* byval %3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

; <label>:9                                       ; preds = %0
  %10 = load %struct.obj_struct** %2, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %10, i64 0
  %12 = bitcast %struct.obj_struct* %4 to i8*
  %13 = bitcast %struct.obj_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %14 = call i32 @smpobj_truep_c(%struct.obj_struct* byval %4)
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16                                      ; preds = %9, %0
  %17 = phi i1 [ true, %0 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %18)
  ret void
}

define void @smpbool_xor(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = call i32 @smpobj_truep_c(%struct.obj_struct* byval %3)
  %8 = load %struct.obj_struct** %2, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %8, i64 0
  %10 = bitcast %struct.obj_struct* %4 to i8*
  %11 = bitcast %struct.obj_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  %12 = call i32 @smpobj_truep_c(%struct.obj_struct* byval %4)
  %13 = xor i32 %7, %12
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %13)
  ret void
}
