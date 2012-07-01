; ModuleID = 'smpnumber.c'
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

@.str = private constant [7 x i8] c"Number\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@.str1 = private constant [2 x i8] c"+\00"
@.str2 = private constant [2 x i8] c"-\00"
@.str3 = private constant [2 x i8] c"*\00"
@.str4 = private constant [2 x i8] c"/\00"
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

define i32 @smpnum_create_class() nounwind {
  %number = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = call i32 @smpglobal_class(i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %number, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %10 = bitcast %struct.obj_struct* %1 to i8*
  %11 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smptype_abstract_def(%struct.obj_struct* sret %2, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %12 = bitcast %struct.obj_struct* %3 to i8*
  %13 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smptype_abstract_def(%struct.obj_struct* sret %4, %struct.obj_struct* byval %3, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %14 = bitcast %struct.obj_struct* %5 to i8*
  %15 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smptype_abstract_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %16 = bitcast %struct.obj_struct* %7 to i8*
  %17 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, %struct.obj_struct*, i32, i8*, i32, ...)* @smptype_abstract_def(%struct.obj_struct* sret %8, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  ret i32 0
}

declare i32 @smpglobal_class(i8*, %struct.smptype_struct*, i32)

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @smptype_abstract_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, i32, ...)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind
