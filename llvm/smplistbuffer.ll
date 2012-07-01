; ModuleID = 'smplistbuffer.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.listbuf_struct = type { %struct.obj_struct, %struct.obj_struct }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smptype_struct*, i8* }
%struct.smppair_struct = type { %struct.obj_struct, %struct.obj_struct* }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@.str = private constant [11 x i8] c"ListBuffer\00"
@smptype_nil = common global %struct.smptype_struct zeroinitializer, align 8
@.str1 = private constant [5 x i8] c"add!\00"
@.str2 = private constant [4 x i8] c"Nil\00"
@.str3 = private constant [7 x i8] c"Object\00"
@.str4 = private constant [8 x i8] c"gc_mark\00"
@.str5 = private constant [8 x i8] c"to_list\00"
@.str6 = private constant [5 x i8] c"List\00"
@smptype_id_nil = common global i32 0, align 4
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_id = common global %struct.smptype_struct zeroinitializer, align 8
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

define i32 @smplistbuf_create_class() nounwind {
  %listbuf = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = call i32 @smpglobal_class(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), %struct.smptype_struct* @smptype_nil, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %listbuf, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0))
  %11 = bitcast %struct.obj_struct* %1 to i8*
  %12 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplistbuf_add_now, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %2)
  %13 = bitcast %struct.obj_struct* %4 to i8*
  %14 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplistbuf_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0), %struct.obj_struct* byval %5)
  %15 = bitcast %struct.obj_struct* %7 to i8*
  %16 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplistbuf_to_list, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), %struct.obj_struct* byval %8)
  ret i32 0
}

declare i32 @smpglobal_class(i8*, %struct.smptype_struct*, i32)

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smplistbuf_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %lb = alloca %struct.listbuf_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.listbuf_struct*
  store %struct.listbuf_struct* %7, %struct.listbuf_struct** %lb, align 8
  %8 = load %struct.listbuf_struct** %lb, align 8
  %9 = getelementptr inbounds %struct.listbuf_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.obj_struct* %9, i32 0, i32 2
  %11 = load %struct.smptype_struct** %10, align 8
  %12 = getelementptr inbounds %struct.smptype_struct* %11, i32 0, i32 1
  %13 = load i32* %12, align 4
  %14 = load i32* @smptype_id_nil, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %29

; <label>:16                                      ; preds = %0
  %17 = load %struct.listbuf_struct** %lb, align 8
  %18 = getelementptr inbounds %struct.listbuf_struct* %17, i32 0, i32 0
  %19 = load %struct.obj_struct** %2, align 8
  %20 = getelementptr inbounds %struct.obj_struct* %19, i64 0
  %21 = bitcast %struct.obj_struct* %3 to i8*
  %22 = bitcast %struct.obj_struct* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %18, %struct.obj_struct* byval %3, i32 1, %struct.obj_struct* @smp_nil)
  %23 = load %struct.listbuf_struct** %lb, align 8
  %24 = getelementptr inbounds %struct.listbuf_struct* %23, i32 0, i32 1
  %25 = load %struct.listbuf_struct** %lb, align 8
  %26 = getelementptr inbounds %struct.listbuf_struct* %25, i32 0, i32 0
  %27 = bitcast %struct.obj_struct* %24 to i8*
  %28 = bitcast %struct.obj_struct* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  br label %60

; <label>:29                                      ; preds = %0
  %30 = call i8* @smp_malloc(i64 32)
  %31 = bitcast i8* %30 to %struct.obj_struct*
  %32 = load %struct.listbuf_struct** %lb, align 8
  %33 = getelementptr inbounds %struct.listbuf_struct* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.obj_struct* %33, i32 0, i32 3
  %35 = load i8** %34, align 8
  %36 = bitcast i8* %35 to %struct.smppair_struct*
  %37 = getelementptr inbounds %struct.smppair_struct* %36, i32 0, i32 1
  store %struct.obj_struct* %31, %struct.obj_struct** %37, align 8
  %38 = load %struct.listbuf_struct** %lb, align 8
  %39 = getelementptr inbounds %struct.listbuf_struct* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.obj_struct* %39, i32 0, i32 3
  %41 = load i8** %40, align 8
  %42 = bitcast i8* %41 to %struct.smppair_struct*
  %43 = getelementptr inbounds %struct.smppair_struct* %42, i32 0, i32 1
  %44 = load %struct.obj_struct** %43, align 8
  %45 = load %struct.obj_struct** %2, align 8
  %46 = getelementptr inbounds %struct.obj_struct* %45, i64 0
  %47 = bitcast %struct.obj_struct* %4 to i8*
  %48 = bitcast %struct.obj_struct* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %44, %struct.obj_struct* byval %4, i32 1, %struct.obj_struct* @smp_nil)
  %49 = load %struct.listbuf_struct** %lb, align 8
  %50 = getelementptr inbounds %struct.listbuf_struct* %49, i32 0, i32 1
  %51 = load %struct.listbuf_struct** %lb, align 8
  %52 = getelementptr inbounds %struct.listbuf_struct* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.obj_struct* %52, i32 0, i32 3
  %54 = load i8** %53, align 8
  %55 = bitcast i8* %54 to %struct.smppair_struct*
  %56 = getelementptr inbounds %struct.smppair_struct* %55, i32 0, i32 1
  %57 = load %struct.obj_struct** %56, align 8
  %58 = bitcast %struct.obj_struct* %50 to i8*
  %59 = bitcast %struct.obj_struct* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 32, i32 8, i1 false)
  br label %60

; <label>:60                                      ; preds = %29, %16
  %61 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smplistbuf_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.listbuf_struct*
  %7 = getelementptr inbounds %struct.listbuf_struct* %6, i32 0, i32 0
  %8 = bitcast %struct.obj_struct* %3 to i8*
  %9 = bitcast %struct.obj_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  %11 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smplistbuf_to_list(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.listbuf_struct*
  %6 = getelementptr inbounds %struct.listbuf_struct* %5, i32 0, i32 0
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  %8 = bitcast %struct.obj_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  ret void
}

declare void @smpobj_cons(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare i8* @smp_malloc(i64)

declare i32 @gc_mark_recursive(i8*, %struct.obj_struct* byval)

define void @smplistbuf_init(%struct.obj_struct* sret %agg.result) nounwind {
  %lb = alloca %struct.listbuf_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = getelementptr inbounds %struct.listbuf_struct* %lb, i32 0, i32 0
  %3 = bitcast %struct.obj_struct* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %4 = getelementptr inbounds %struct.listbuf_struct* %lb, i32 0, i32 1
  %5 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0))
  %6 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 2
  %7 = load %struct.smptype_struct** %6, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* %7)
  %8 = call i8* @smp_malloc(i64 64)
  %9 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %11 = load i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.listbuf_struct*
  %13 = bitcast %struct.listbuf_struct* %12 to i8*
  %14 = bitcast %struct.listbuf_struct* %lb to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 64, i32 8, i1 false)
  %15 = bitcast %struct.obj_struct* %agg.result to i8*
  %16 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  ret void
}

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)
