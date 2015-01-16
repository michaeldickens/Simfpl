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


@.smp_str1 = private constant [2 x i8] c"3\00"
@.smp_str2 = private constant [2 x i8] c"4\00"
@.smp_str3 = private constant [5 x i8] c"adsf\00"


define %struct.obj_struct @smpGlobal_main(%struct.smpType_struct* %obj.coerce0, i8* %obj.coerce1, i32 %argc, %struct.obj_struct* %argv) {
  %1 = call %struct.obj_struct @smpInteger_init_str(i8* getelementptr inbounds ([2 x i8]* @.smp_str1, i32 0, i32 0))
  %2 = call %struct.obj_struct @smpInteger_init_str(i8* getelementptr inbounds ([2 x i8]* @.smp_str2, i32 0, i32 0))
  %3 = alloca [1 x %struct.obj_struct], align 8
  %4 = getelementptr inbounds [1 x %struct.obj_struct]* %3, i32 0, i32 0
  store %struct.obj_struct %2, %struct.obj_struct* %4, align 8
  %5 = bitcast [1 x %struct.obj_struct]* %3 to %struct.obj_struct* 
  %6 = alloca %struct.obj_struct, align 8
  store %struct.obj_struct %1, %struct.obj_struct* %6, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 0
  %8 = load %struct.smpType_struct** %7
  %9 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 1
  %10 = load i8** %9
  %11 = call %struct.obj_struct @smpObject_funcall(%struct.smpType_struct* %8, i8* %10, i8* getelementptr inbounds ([5 x i8]* @.smp_str3, i32 0, i32 0), i32 1, %struct.obj_struct* %5)
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
  ret %struct.obj_struct %11
}

