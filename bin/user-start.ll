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

