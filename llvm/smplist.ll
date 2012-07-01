; ModuleID = 'smplist.c'
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

@.str = private constant [5 x i8] c"List\00"
@.str1 = private constant [8 x i8] c"gc_mark\00"
@.str2 = private constant [4 x i8] c"Nil\00"
@.str3 = private constant [5 x i8] c"add!\00"
@.str4 = private constant [7 x i8] c"Object\00"
@.str5 = private constant [4 x i8] c"car\00"
@.str6 = private constant [4 x i8] c"cdr\00"
@.str7 = private constant [7 x i8] c"empty?\00"
@.str8 = private constant [5 x i8] c"Bool\00"
@.str9 = private constant [7 x i8] c"equal?\00"
@.str10 = private constant [7 x i8] c"length\00"
@.str11 = private constant [8 x i8] c"Integer\00"
@.str12 = private constant [5 x i8] c"to_s\00"
@.str13 = private constant [7 x i8] c"String\00"
@.str14 = private constant [6 x i8] c"write\00"
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@smptype_id_nil = common global i32 0, align 4
@.str15 = private constant [9 x i8] c"Function\00"
@.str16 = private constant [7 x i8] c"Thrown\00"
@.str17 = private constant [7 x i8] c"Global\00"
@smptype_id_list = common global i32 0, align 4
@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@smptype_list = common global %struct.smptype_struct zeroinitializer, align 8
@smp_global = common global %struct.obj_struct zeroinitializer, align 8
@.str18 = private constant [2 x i8] c"(\00"
@.str19 = private constant [2 x i8] c" \00"
@.str20 = private constant [2 x i8] c")\00"
@.str21 = private constant [6 x i8] c"(list\00"
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
@smptype_atom = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_collection = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_regmatch = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_id_class = common global i32 0, align 4
@smptype_id_int = common global i32 0, align 4
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

define i32 @smplist_create_class() nounwind {
  %listclass = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  %11 = alloca %struct.obj_struct, align 8
  %12 = alloca %struct.obj_struct, align 8
  %13 = alloca %struct.obj_struct, align 8
  %14 = alloca %struct.obj_struct, align 8
  %15 = alloca %struct.obj_struct, align 8
  %16 = alloca %struct.obj_struct, align 8
  %17 = alloca %struct.obj_struct, align 8
  %18 = alloca %struct.obj_struct, align 8
  %19 = alloca %struct.obj_struct, align 8
  %20 = alloca %struct.obj_struct, align 8
  %21 = alloca %struct.obj_struct, align 8
  %22 = alloca %struct.obj_struct, align 8
  %23 = alloca %struct.obj_struct, align 8
  %24 = alloca %struct.obj_struct, align 8
  %25 = alloca %struct.obj_struct, align 8
  %26 = alloca %struct.obj_struct, align 8
  %27 = alloca %struct.obj_struct, align 8
  call void @smp_getclass(%struct.obj_struct* sret %listclass, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0))
  %28 = bitcast %struct.obj_struct* %1 to i8*
  %29 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplist_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 64, i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %2)
  %30 = bitcast %struct.obj_struct* %4 to i8*
  %31 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %5, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplist_add_now, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %6, %struct.obj_struct* byval %4, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), %struct.obj_struct* byval %5)
  %32 = bitcast %struct.obj_struct* %7 to i8*
  %33 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %8, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplist_car, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %9, %struct.obj_struct* byval %7, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), %struct.obj_struct* byval %8)
  %34 = bitcast %struct.obj_struct* %10 to i8*
  %35 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %11, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplist_cdr, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %12, %struct.obj_struct* byval %10, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str6, i32 0, i32 0), %struct.obj_struct* byval %11)
  %36 = bitcast %struct.obj_struct* %13 to i8*
  %37 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %14, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplist_emptyp, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %15, %struct.obj_struct* byval %13, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0), %struct.obj_struct* byval %14)
  %38 = bitcast %struct.obj_struct* %16 to i8*
  %39 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %17, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplist_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %18, %struct.obj_struct* byval %16, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str9, i32 0, i32 0), %struct.obj_struct* byval %17)
  %40 = bitcast %struct.obj_struct* %19 to i8*
  %41 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %20, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplist_length, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %21, %struct.obj_struct* byval %19, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0), %struct.obj_struct* byval %20)
  %42 = bitcast %struct.obj_struct* %22 to i8*
  %43 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %23, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplist_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %24, %struct.obj_struct* byval %22, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %23)
  %44 = bitcast %struct.obj_struct* %25 to i8*
  %45 = bitcast %struct.obj_struct* %listclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %26, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplist_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %27, %struct.obj_struct* byval %25, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0), %struct.obj_struct* byval %26)
  ret i32 0
}

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smplist_gc_mark(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %ptr = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %5 = load %struct.smptype_struct** %4, align 8
  %6 = getelementptr inbounds %struct.smptype_struct* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = load i32* @smptype_id_nil, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %0
  %11 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %36

; <label>:12                                      ; preds = %0
  store %struct.obj_struct* %obj, %struct.obj_struct** %ptr, align 8
  br label %13

; <label>:13                                      ; preds = %16, %12
  %14 = load %struct.obj_struct** %ptr, align 8
  %15 = icmp ne %struct.obj_struct* %14, null
  br i1 %15, label %16, label %34

; <label>:16                                      ; preds = %13
  %17 = load %struct.obj_struct** %ptr, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i32 0, i32 3
  %19 = load i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.smppair_struct*
  %21 = getelementptr inbounds %struct.smppair_struct* %20, i32 0, i32 0
  %22 = bitcast %struct.obj_struct* %3 to i8*
  %23 = bitcast %struct.obj_struct* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  %24 = call i32 @gc_mark_recursive(i8* null, %struct.obj_struct* byval %3)
  %25 = load %struct.obj_struct** %ptr, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 0
  %27 = load i32** %26, align 8
  store i32 1, i32* %27
  %28 = load %struct.obj_struct** %ptr, align 8
  %29 = getelementptr inbounds %struct.obj_struct* %28, i32 0, i32 3
  %30 = load i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.smppair_struct*
  %32 = getelementptr inbounds %struct.smppair_struct* %31, i32 0, i32 1
  %33 = load %struct.obj_struct** %32, align 8
  store %struct.obj_struct* %33, %struct.obj_struct** %ptr, align 8
  br label %13

; <label>:34                                      ; preds = %13
  %35 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %36

; <label>:36                                      ; preds = %34, %10
  ret void
}

define void @smplist_add_now(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %ptr = alloca %struct.obj_struct*, align 8
  %list_core = alloca %struct.smppair_struct*, align 8
  %cons_cell = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  store %struct.obj_struct* %obj, %struct.obj_struct** %ptr, align 8
  br label %5

; <label>:5                                       ; preds = %0, %14
  %6 = load %struct.obj_struct** %ptr, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 3
  %8 = load i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.smppair_struct*
  %10 = getelementptr inbounds %struct.smppair_struct* %9, i32 0, i32 1
  %11 = load %struct.obj_struct** %10, align 8
  %12 = icmp eq %struct.obj_struct* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %5
  br label %21

; <label>:14                                      ; preds = %5
  %15 = load %struct.obj_struct** %ptr, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.smppair_struct*
  %19 = getelementptr inbounds %struct.smppair_struct* %18, i32 0, i32 1
  %20 = load %struct.obj_struct** %19, align 8
  store %struct.obj_struct* %20, %struct.obj_struct** %ptr, align 8
  br label %5

; <label>:21                                      ; preds = %13
  %22 = load %struct.obj_struct** %ptr, align 8
  %23 = getelementptr inbounds %struct.obj_struct* %22, i32 0, i32 3
  %24 = load i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.smppair_struct*
  store %struct.smppair_struct* %25, %struct.smppair_struct** %list_core, align 8
  %26 = load %struct.obj_struct** %2, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %26, i64 0
  %28 = bitcast %struct.obj_struct* %3 to i8*
  %29 = bitcast %struct.obj_struct* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  %30 = bitcast %struct.obj_struct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpobj_cons_c(%struct.obj_struct* sret %cons_cell, %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  %31 = call i8* @smp_malloc(i64 32)
  %32 = bitcast i8* %31 to %struct.obj_struct*
  %33 = load %struct.smppair_struct** %list_core, align 8
  %34 = getelementptr inbounds %struct.smppair_struct* %33, i32 0, i32 1
  store %struct.obj_struct* %32, %struct.obj_struct** %34, align 8
  %35 = load %struct.smppair_struct** %list_core, align 8
  %36 = getelementptr inbounds %struct.smppair_struct* %35, i32 0, i32 1
  %37 = load %struct.obj_struct** %36, align 8
  %38 = bitcast %struct.obj_struct* %37 to i8*
  %39 = bitcast %struct.obj_struct* %cons_cell to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  %40 = bitcast %struct.obj_struct* %agg.result to i8*
  %41 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  ret void
}

define void @smplist_car(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smppair_struct*
  %6 = getelementptr inbounds %struct.smppair_struct* %5, i32 0, i32 0
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  %8 = bitcast %struct.obj_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  ret void
}

define void @smplist_cdr(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %cdr = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smppair_struct*
  %6 = getelementptr inbounds %struct.smppair_struct* %5, i32 0, i32 1
  %7 = load %struct.obj_struct** %6, align 8
  store %struct.obj_struct* %7, %struct.obj_struct** %cdr, align 8
  %8 = load %struct.obj_struct** %cdr, align 8
  %9 = icmp ne %struct.obj_struct* %8, null
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %0
  %11 = load %struct.obj_struct** %cdr, align 8
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  %13 = bitcast %struct.obj_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  br label %16

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %16

; <label>:16                                      ; preds = %14, %10
  ret void
}

define void @smplist_emptyp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smplist_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %list1 = alloca %struct.obj_struct, align 8
  %list2 = alloca %struct.obj_struct, align 8
  %car1 = alloca %struct.obj_struct, align 8
  %car2 = alloca %struct.obj_struct, align 8
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
  %11 = getelementptr inbounds %struct.smptype_struct* %10, i32 0, i32 0
  %12 = load i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0))
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %0
  %18 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %101

; <label>:19                                      ; preds = %0
  %20 = bitcast %struct.obj_struct* %list1 to i8*
  %21 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = load %struct.obj_struct** %2, align 8
  %23 = getelementptr inbounds %struct.obj_struct* %22, i64 0
  %24 = bitcast %struct.obj_struct* %list2 to i8*
  %25 = bitcast %struct.obj_struct* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 8, i1 false)
  %26 = bitcast %struct.obj_struct* %3 to i8*
  %27 = bitcast %struct.obj_struct* %list1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = call i64 @smplist_length_clong(%struct.obj_struct* byval %3)
  %29 = bitcast %struct.obj_struct* %4 to i8*
  %30 = bitcast %struct.obj_struct* %list2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false)
  %31 = call i64 @smplist_length_clong(%struct.obj_struct* byval %4)
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %35

; <label>:33                                      ; preds = %19
  %34 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %101

; <label>:35                                      ; preds = %19
  br label %36

; <label>:36                                      ; preds = %98, %35
  %37 = getelementptr inbounds %struct.obj_struct* %list1, i32 0, i32 2
  %38 = load %struct.smptype_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smptype_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smptype_id_nil, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %99

; <label>:45                                      ; preds = %36
  %46 = getelementptr inbounds %struct.obj_struct* %list1, i32 0, i32 3
  %47 = load i8** %46, align 8
  %48 = bitcast i8* %47 to %struct.smppair_struct*
  %49 = getelementptr inbounds %struct.smppair_struct* %48, i32 0, i32 0
  %50 = bitcast %struct.obj_struct* %car1 to i8*
  %51 = bitcast %struct.obj_struct* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 32, i32 8, i1 false)
  %52 = getelementptr inbounds %struct.obj_struct* %list2, i32 0, i32 3
  %53 = load i8** %52, align 8
  %54 = bitcast i8* %53 to %struct.smppair_struct*
  %55 = getelementptr inbounds %struct.smppair_struct* %54, i32 0, i32 0
  %56 = bitcast %struct.obj_struct* %car2 to i8*
  %57 = bitcast %struct.obj_struct* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 32, i32 8, i1 false)
  %58 = bitcast %struct.obj_struct* %6 to i8*
  %59 = bitcast %struct.obj_struct* %car1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %5, %struct.obj_struct* byval %6, i8* getelementptr inbounds ([7 x i8]* @.str9, i32 0, i32 0), i32 1, %struct.obj_struct* %car2)
  %60 = call i32 @smpobj_truep_c(%struct.obj_struct* byval %5)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

; <label>:62                                      ; preds = %45
  %63 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %101

; <label>:64                                      ; preds = %45
  %65 = getelementptr inbounds %struct.obj_struct* %list1, i32 0, i32 3
  %66 = load i8** %65, align 8
  %67 = bitcast i8* %66 to %struct.smppair_struct*
  %68 = getelementptr inbounds %struct.smppair_struct* %67, i32 0, i32 1
  %69 = load %struct.obj_struct** %68, align 8
  %70 = icmp ne %struct.obj_struct* %69, null
  br i1 %70, label %71, label %79

; <label>:71                                      ; preds = %64
  %72 = getelementptr inbounds %struct.obj_struct* %list1, i32 0, i32 3
  %73 = load i8** %72, align 8
  %74 = bitcast i8* %73 to %struct.smppair_struct*
  %75 = getelementptr inbounds %struct.smppair_struct* %74, i32 0, i32 1
  %76 = load %struct.obj_struct** %75, align 8
  %77 = bitcast %struct.obj_struct* %list1 to i8*
  %78 = bitcast %struct.obj_struct* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 32, i32 8, i1 false)
  br label %81

; <label>:79                                      ; preds = %64
  %80 = bitcast %struct.obj_struct* %list1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %81

; <label>:81                                      ; preds = %79, %71
  %82 = getelementptr inbounds %struct.obj_struct* %list2, i32 0, i32 3
  %83 = load i8** %82, align 8
  %84 = bitcast i8* %83 to %struct.smppair_struct*
  %85 = getelementptr inbounds %struct.smppair_struct* %84, i32 0, i32 1
  %86 = load %struct.obj_struct** %85, align 8
  %87 = icmp ne %struct.obj_struct* %86, null
  br i1 %87, label %88, label %96

; <label>:88                                      ; preds = %81
  %89 = getelementptr inbounds %struct.obj_struct* %list2, i32 0, i32 3
  %90 = load i8** %89, align 8
  %91 = bitcast i8* %90 to %struct.smppair_struct*
  %92 = getelementptr inbounds %struct.smppair_struct* %91, i32 0, i32 1
  %93 = load %struct.obj_struct** %92, align 8
  %94 = bitcast %struct.obj_struct* %list2 to i8*
  %95 = bitcast %struct.obj_struct* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 32, i32 8, i1 false)
  br label %98

; <label>:96                                      ; preds = %81
  %97 = bitcast %struct.obj_struct* %list2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %98

; <label>:98                                      ; preds = %96, %88
  br label %36

; <label>:99                                      ; preds = %36
  %100 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  br label %101

; <label>:101                                     ; preds = %99, %62, %33, %17
  ret void
}

define void @smplist_length(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %length = alloca i64, align 8
  %list = alloca %struct.smppair_struct*, align 8
  %rest = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %6 = load %struct.smptype_struct** %5, align 8
  %7 = getelementptr inbounds %struct.smptype_struct* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  %9 = load i32* @smptype_id_nil, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  call void @smpint_init_clong(%struct.obj_struct* sret %agg.result, i64 0)
  br label %51

; <label>:12                                      ; preds = %0
  store i64 0, i64* %length, align 8
  %13 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.smppair_struct*
  store %struct.smppair_struct* %15, %struct.smppair_struct** %list, align 8
  br label %16

; <label>:16                                      ; preds = %48, %12
  %17 = load %struct.smppair_struct** %list, align 8
  %18 = icmp ne %struct.smppair_struct* %17, null
  br i1 %18, label %19, label %49

; <label>:19                                      ; preds = %16
  %20 = load i64* %length, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %length, align 8
  %22 = load %struct.smppair_struct** %list, align 8
  %23 = getelementptr inbounds %struct.smppair_struct* %22, i32 0, i32 1
  %24 = load %struct.obj_struct** %23, align 8
  store %struct.obj_struct* %24, %struct.obj_struct** %rest, align 8
  %25 = load %struct.obj_struct** %rest, align 8
  %26 = icmp eq %struct.obj_struct* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %19
  br label %49

; <label>:28                                      ; preds = %19
  %29 = load %struct.obj_struct** %rest, align 8
  %30 = getelementptr inbounds %struct.obj_struct* %29, i32 0, i32 2
  %31 = load %struct.smptype_struct** %30, align 8
  %32 = getelementptr inbounds %struct.smptype_struct* %31, i32 0, i32 1
  %33 = load i32* %32, align 4
  %34 = load i32* @smptype_id_list, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

; <label>:36                                      ; preds = %28
  %37 = load %struct.obj_struct** %rest, align 8
  %38 = getelementptr inbounds %struct.obj_struct* %37, i32 0, i32 3
  %39 = load i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.smppair_struct*
  store %struct.smppair_struct* %40, %struct.smppair_struct** %list, align 8
  br label %47

; <label>:41                                      ; preds = %28
  %42 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %43 = load %struct.smptype_struct** %42, align 8
  %44 = load %struct.obj_struct** %rest, align 8
  %45 = bitcast %struct.obj_struct* %4 to i8*
  %46 = bitcast %struct.obj_struct* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %43, %struct.obj_struct* byval %4)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %51

; <label>:47                                      ; preds = %36
  br label %48

; <label>:48                                      ; preds = %47
  br label %16

; <label>:49                                      ; preds = %27, %16
  %50 = load i64* %length, align 8
  call void @smpint_init_clong(%struct.obj_struct* sret %agg.result, i64 %50)
  br label %51

; <label>:51                                      ; preds = %49, %41, %11
  ret void
}

define void @smplist_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %divider = alloca %struct.obj_struct, align 8
  %str2 = alloca %struct.obj_struct, align 8
  %ptr = alloca %struct.obj_struct*, align 8
  %first_timep = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %paren = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smpstr_init(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([2 x i8]* @.str18, i32 0, i32 0))
  call void @smpstr_init(%struct.obj_struct* sret %divider, i8* getelementptr inbounds ([2 x i8]* @.str19, i32 0, i32 0))
  store %struct.obj_struct* %obj, %struct.obj_struct** %ptr, align 8
  store i32 1, i32* %first_timep, align 4
  br label %11

; <label>:11                                      ; preds = %25, %0
  %12 = load %struct.obj_struct** %ptr, align 8
  %13 = icmp ne %struct.obj_struct* %12, null
  br i1 %13, label %14, label %34

; <label>:14                                      ; preds = %11
  %15 = load %struct.obj_struct** %ptr, align 8
  %16 = bitcast %struct.obj_struct* %4 to i8*
  %17 = bitcast %struct.obj_struct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  call void @smplist_car(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i32 0, %struct.obj_struct* null)
  %18 = load i32* %1, align 4
  %19 = load %struct.obj_struct** %2, align 8
  call void @smpobj_funcall(%struct.obj_struct* sret %str2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0), i32 %18, %struct.obj_struct* %19)
  %20 = load i32* %first_timep, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %14
  %23 = bitcast %struct.obj_struct* %5 to i8*
  %24 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %divider)
  br label %25

; <label>:25                                      ; preds = %22, %14
  %26 = bitcast %struct.obj_struct* %7 to i8*
  %27 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %8, %struct.obj_struct* byval %7, i32 1, %struct.obj_struct* %str2)
  %28 = load %struct.obj_struct** %ptr, align 8
  %29 = getelementptr inbounds %struct.obj_struct* %28, i32 0, i32 3
  %30 = load i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.smppair_struct*
  %32 = getelementptr inbounds %struct.smppair_struct* %31, i32 0, i32 1
  %33 = load %struct.obj_struct** %32, align 8
  store %struct.obj_struct* %33, %struct.obj_struct** %ptr, align 8
  store i32 0, i32* %first_timep, align 4
  br label %11

; <label>:34                                      ; preds = %11
  call void @smpstr_init(%struct.obj_struct* sret %paren, i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0))
  %35 = bitcast %struct.obj_struct* %9 to i8*
  %36 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %10, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %paren)
  %37 = bitcast %struct.obj_struct* %agg.result to i8*
  %38 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  ret void
}

define void @smplist_write(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %res = alloca %struct.obj_struct, align 8
  %divider = alloca %struct.obj_struct, align 8
  %str2 = alloca %struct.obj_struct, align 8
  %ptr = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %paren = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  call void @smpstr_init(%struct.obj_struct* sret %res, i8* getelementptr inbounds ([6 x i8]* @.str21, i32 0, i32 0))
  call void @smpstr_init(%struct.obj_struct* sret %divider, i8* getelementptr inbounds ([2 x i8]* @.str19, i32 0, i32 0))
  store %struct.obj_struct* %obj, %struct.obj_struct** %ptr, align 8
  br label %11

; <label>:11                                      ; preds = %14, %0
  %12 = load %struct.obj_struct** %ptr, align 8
  %13 = icmp ne %struct.obj_struct* %12, null
  br i1 %13, label %14, label %30

; <label>:14                                      ; preds = %11
  %15 = load %struct.obj_struct** %ptr, align 8
  %16 = bitcast %struct.obj_struct* %4 to i8*
  %17 = bitcast %struct.obj_struct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  call void @smplist_car(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i32 0, %struct.obj_struct* null)
  %18 = load i32* %1, align 4
  %19 = load %struct.obj_struct** %2, align 8
  call void @smpobj_funcall(%struct.obj_struct* sret %str2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0), i32 %18, %struct.obj_struct* %19)
  %20 = bitcast %struct.obj_struct* %5 to i8*
  %21 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %divider)
  %22 = bitcast %struct.obj_struct* %7 to i8*
  %23 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %8, %struct.obj_struct* byval %7, i32 1, %struct.obj_struct* %str2)
  %24 = load %struct.obj_struct** %ptr, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i32 0, i32 3
  %26 = load i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.smppair_struct*
  %28 = getelementptr inbounds %struct.smppair_struct* %27, i32 0, i32 1
  %29 = load %struct.obj_struct** %28, align 8
  store %struct.obj_struct* %29, %struct.obj_struct** %ptr, align 8
  br label %11

; <label>:30                                      ; preds = %11
  call void @smpstr_init(%struct.obj_struct* sret %paren, i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0))
  %31 = bitcast %struct.obj_struct* %9 to i8*
  %32 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 32, i32 8, i1 false)
  call void @smpstr_add_now(%struct.obj_struct* sret %10, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %paren)
  %33 = bitcast %struct.obj_struct* %agg.result to i8*
  %34 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  ret void
}

declare void @smpobj_cons_c(%struct.obj_struct* sret, %struct.obj_struct* byval, %struct.obj_struct* byval)

declare i8* @smp_malloc(i64)

define void @smplist_each(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %list = alloca %struct.smppair_struct*, align 8
  %code = alloca %struct.obj_struct, align 8
  %rest = alloca %struct.obj_struct*, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %11 = load %struct.smptype_struct** %10, align 8
  %12 = getelementptr inbounds %struct.smptype_struct* %11, i32 0, i32 1
  %13 = load i32* %12, align 4
  %14 = load i32* @smptype_id_nil, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %0
  %17 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %100

; <label>:18                                      ; preds = %0
  %19 = load %struct.obj_struct** %2, align 8
  %20 = getelementptr inbounds %struct.obj_struct* %19, i64 0
  %21 = getelementptr inbounds %struct.obj_struct* %20, i32 0, i32 2
  %22 = load %struct.smptype_struct** %21, align 8
  %23 = call i32 @smpobj_instancep_cstr(%struct.smptype_struct* %22, i8* getelementptr inbounds ([9 x i8]* @.str15, i32 0, i32 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %47, label %25

; <label>:25                                      ; preds = %18
  %26 = load %struct.obj_struct** %2, align 8
  %27 = getelementptr inbounds %struct.obj_struct* %26, i64 0
  %28 = getelementptr inbounds %struct.obj_struct* %27, i32 0, i32 2
  %29 = load %struct.smptype_struct** %28, align 8
  %30 = getelementptr inbounds %struct.smptype_struct* %29, i32 0, i32 0
  %31 = load i8** %30, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

; <label>:34                                      ; preds = %25
  %35 = load %struct.obj_struct** %2, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 0
  %37 = bitcast %struct.obj_struct* %agg.result to i8*
  %38 = bitcast %struct.obj_struct* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  br label %100

; <label>:39                                      ; preds = %25
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([9 x i8]* @.str15, i32 0, i32 0))
  %40 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %41 = load i8** %40, align 8
  %42 = bitcast i8* %41 to %struct.smptype_struct*
  %43 = load %struct.obj_struct** %2, align 8
  %44 = getelementptr inbounds %struct.obj_struct* %43, i64 0
  %45 = bitcast %struct.obj_struct* %5 to i8*
  %46 = bitcast %struct.obj_struct* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %42, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %100

; <label>:47                                      ; preds = %18
  %48 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %49 = load i8** %48, align 8
  %50 = bitcast i8* %49 to %struct.smppair_struct*
  store %struct.smppair_struct* %50, %struct.smppair_struct** %list, align 8
  br label %51

; <label>:51                                      ; preds = %97, %47
  %52 = load %struct.smppair_struct** %list, align 8
  %53 = icmp ne %struct.smppair_struct* %52, null
  br i1 %53, label %54, label %98

; <label>:54                                      ; preds = %51
  call void @smp_getclass(%struct.obj_struct* sret %6, i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0))
  %55 = load %struct.obj_struct** %2, align 8
  %56 = getelementptr inbounds %struct.obj_struct* %55, i64 0
  %57 = bitcast %struct.obj_struct* %7 to i8*
  %58 = bitcast %struct.obj_struct* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 32, i32 8, i1 false)
  %59 = load %struct.smppair_struct** %list, align 8
  %60 = getelementptr inbounds %struct.smppair_struct* %59, i32 0, i32 0
  call void @smpfun_call(%struct.obj_struct* sret %code, %struct.obj_struct* byval %6, %struct.obj_struct* byval %7, i32 1, %struct.obj_struct* %60)
  %61 = getelementptr inbounds %struct.obj_struct* %code, i32 0, i32 2
  %62 = load %struct.smptype_struct** %61, align 8
  %63 = getelementptr inbounds %struct.smptype_struct* %62, i32 0, i32 0
  %64 = load i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

; <label>:67                                      ; preds = %54
  %68 = bitcast %struct.obj_struct* %agg.result to i8*
  %69 = bitcast %struct.obj_struct* %code to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  br label %100

; <label>:70                                      ; preds = %54
  %71 = load %struct.smppair_struct** %list, align 8
  %72 = getelementptr inbounds %struct.smppair_struct* %71, i32 0, i32 1
  %73 = load %struct.obj_struct** %72, align 8
  store %struct.obj_struct* %73, %struct.obj_struct** %rest, align 8
  %74 = load %struct.obj_struct** %rest, align 8
  %75 = icmp eq %struct.obj_struct* %74, null
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %70
  br label %98

; <label>:77                                      ; preds = %70
  %78 = load %struct.obj_struct** %rest, align 8
  %79 = getelementptr inbounds %struct.obj_struct* %78, i32 0, i32 2
  %80 = load %struct.smptype_struct** %79, align 8
  %81 = getelementptr inbounds %struct.smptype_struct* %80, i32 0, i32 1
  %82 = load i32* %81, align 4
  %83 = load i32* @smptype_id_list, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

; <label>:85                                      ; preds = %77
  %86 = load %struct.obj_struct** %rest, align 8
  %87 = getelementptr inbounds %struct.obj_struct* %86, i32 0, i32 3
  %88 = load i8** %87, align 8
  %89 = bitcast i8* %88 to %struct.smppair_struct*
  store %struct.smppair_struct* %89, %struct.smppair_struct** %list, align 8
  br label %96

; <label>:90                                      ; preds = %77
  %91 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %92 = load %struct.smptype_struct** %91, align 8
  %93 = load %struct.obj_struct** %rest, align 8
  %94 = bitcast %struct.obj_struct* %9 to i8*
  %95 = bitcast %struct.obj_struct* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %8, %struct.smptype_struct* %92, %struct.obj_struct* byval %9)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %8)
  br label %100

; <label>:96                                      ; preds = %85
  br label %97

; <label>:97                                      ; preds = %96
  br label %51

; <label>:98                                      ; preds = %76, %51
  %99 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %100

; <label>:100                                     ; preds = %98, %90, %67, %39, %34, %16
  ret void
}

declare i32 @smpobj_instancep_cstr(%struct.smptype_struct*, i8*)

declare i32 @strcmp(i8*, i8*)

declare void @smpglobal_throw(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smptypeerr_init(%struct.obj_struct* sret, %struct.smptype_struct*, %struct.obj_struct* byval)

declare void @smpfun_call(%struct.obj_struct* sret, %struct.obj_struct* byval, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define i64 @smplist_length_clong(%struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i64, align 8
  %length = alloca i64, align 8
  %ptr = alloca %struct.obj_struct*, align 8
  %2 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %3 = load %struct.smptype_struct** %2, align 8
  %4 = getelementptr inbounds %struct.smptype_struct* %3, i32 0, i32 1
  %5 = load i32* %4, align 4
  %6 = load i32* @smptype_id_nil, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store i64 0, i64* %1
  br label %24

; <label>:9                                       ; preds = %0
  store i64 0, i64* %length, align 8
  store %struct.obj_struct* %obj, %struct.obj_struct** %ptr, align 8
  br label %10

; <label>:10                                      ; preds = %13, %9
  %11 = load %struct.obj_struct** %ptr, align 8
  %12 = icmp ne %struct.obj_struct* %11, null
  br i1 %12, label %13, label %22

; <label>:13                                      ; preds = %10
  %14 = load i64* %length, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %length, align 8
  %16 = load %struct.obj_struct** %ptr, align 8
  %17 = getelementptr inbounds %struct.obj_struct* %16, i32 0, i32 3
  %18 = load i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.smppair_struct*
  %20 = getelementptr inbounds %struct.smppair_struct* %19, i32 0, i32 1
  %21 = load %struct.obj_struct** %20, align 8
  store %struct.obj_struct* %21, %struct.obj_struct** %ptr, align 8
  br label %10

; <label>:22                                      ; preds = %10
  %23 = load i64* %length, align 8
  store i64 %23, i64* %1
  br label %24

; <label>:24                                      ; preds = %22, %8
  %25 = load i64* %1
  ret i64 %25
}

declare i32 @smpobj_truep_c(%struct.obj_struct* byval)

declare void @smpobj_funcall(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, i32, %struct.obj_struct*)

declare i32 @gc_mark_recursive(i8*, %struct.obj_struct* byval)

define void @smplist_init(%struct.obj_struct* sret %agg.result, %struct.smppair_struct* byval %list) nounwind {
  %res = alloca %struct.obj_struct, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_list)
  %1 = call i8* @smp_malloc(i64 40)
  %2 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %1, i8** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smppair_struct*
  %6 = bitcast %struct.smppair_struct* %5 to i8*
  %7 = bitcast %struct.smppair_struct* %list to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 40, i32 8, i1 false)
  %8 = bitcast %struct.obj_struct* %agg.result to i8*
  %9 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  ret void
}

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

define void @smplist_get(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %index = alloca i64, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %8 = load %struct.obj_struct** %2, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %8, i64 0
  %10 = getelementptr inbounds %struct.obj_struct* %9, i32 0, i32 2
  %11 = load %struct.smptype_struct** %10, align 8
  %12 = call i32 @smpobj_instancep_cstr(%struct.smptype_struct* %11, i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %36, label %14

; <label>:14                                      ; preds = %0
  %15 = load %struct.obj_struct** %2, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %15, i64 0
  %17 = getelementptr inbounds %struct.obj_struct* %16, i32 0, i32 2
  %18 = load %struct.smptype_struct** %17, align 8
  %19 = getelementptr inbounds %struct.smptype_struct* %18, i32 0, i32 0
  %20 = load i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

; <label>:23                                      ; preds = %14
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = bitcast %struct.obj_struct* %agg.result to i8*
  %27 = bitcast %struct.obj_struct* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  br label %45

; <label>:28                                      ; preds = %14
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0))
  %29 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %30 = load i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.smptype_struct*
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %5 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %31, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %45

; <label>:36                                      ; preds = %0
  %37 = load %struct.obj_struct** %2, align 8
  %38 = getelementptr inbounds %struct.obj_struct* %37, i64 0
  %39 = bitcast %struct.obj_struct* %6 to i8*
  %40 = bitcast %struct.obj_struct* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  %41 = call i64 @smpint_to_clong(%struct.obj_struct* byval %6)
  store i64 %41, i64* %index, align 8
  %42 = bitcast %struct.obj_struct* %7 to i8*
  %43 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  %44 = load i64* %index, align 8
  call void @smplist_get_clong(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %7, i64 %44)
  br label %45

; <label>:45                                      ; preds = %36, %28, %23
  ret void
}

declare i64 @smpint_to_clong(%struct.obj_struct* byval)

define void @smplist_get_clong(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i64 %index) nounwind {
  %1 = alloca i64, align 8
  %ptr = alloca %struct.obj_struct*, align 8
  %i = alloca i32, align 4
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i64 %index, i64* %1, align 8
  store %struct.obj_struct* %obj, %struct.obj_struct** %ptr, align 8
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %42, %0
  %5 = load %struct.obj_struct** %ptr, align 8
  %6 = icmp ne %struct.obj_struct* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64* %1, align 8
  %11 = icmp slt i64 %9, %10
  br label %12

; <label>:12                                      ; preds = %7, %4
  %13 = phi i1 [ false, %4 ], [ %11, %7 ]
  br i1 %13, label %14, label %45

; <label>:14                                      ; preds = %12
  %15 = load %struct.obj_struct** %ptr, align 8
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.smppair_struct*
  %19 = getelementptr inbounds %struct.smppair_struct* %18, i32 0, i32 1
  %20 = load %struct.obj_struct** %19, align 8
  store %struct.obj_struct* %20, %struct.obj_struct** %ptr, align 8
  %21 = load %struct.obj_struct** %ptr, align 8
  %22 = icmp eq %struct.obj_struct* %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %14
  br label %45

; <label>:24                                      ; preds = %14
  %25 = load %struct.obj_struct** %ptr, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 2
  %27 = load %struct.smptype_struct** %26, align 8
  %28 = getelementptr inbounds %struct.smptype_struct* %27, i32 0, i32 1
  %29 = load i32* %28, align 4
  %30 = load i32* @smptype_id_list, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

; <label>:34                                      ; preds = %24
  %35 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %36 = load %struct.smptype_struct** %35, align 8
  %37 = load %struct.obj_struct** %ptr, align 8
  %38 = bitcast %struct.obj_struct* %3 to i8*
  %39 = bitcast %struct.obj_struct* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %2, %struct.smptype_struct* %36, %struct.obj_struct* byval %3)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
  br label %58

; <label>:40                                      ; preds = %24
  br label %41

; <label>:41                                      ; preds = %40
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i32* %i, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i, align 4
  br label %4

; <label>:45                                      ; preds = %23, %12
  %46 = load %struct.obj_struct** %ptr, align 8
  %47 = icmp ne %struct.obj_struct* %46, null
  br i1 %47, label %48, label %56

; <label>:48                                      ; preds = %45
  %49 = load %struct.obj_struct** %ptr, align 8
  %50 = getelementptr inbounds %struct.obj_struct* %49, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to %struct.smppair_struct*
  %53 = getelementptr inbounds %struct.smppair_struct* %52, i32 0, i32 0
  %54 = bitcast %struct.obj_struct* %agg.result to i8*
  %55 = bitcast %struct.obj_struct* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  br label %58

; <label>:56                                      ; preds = %45
  %57 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %58

; <label>:58                                      ; preds = %56, %48, %34
  ret void
}

declare void @smpint_init_clong(%struct.obj_struct* sret, i64)

define void @smplist_map(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %last = alloca %struct.obj_struct, align 8
  %ptr = alloca %struct.obj_struct*, align 8
  %car = alloca %struct.obj_struct, align 8
  %called = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %11 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %12 = load %struct.smptype_struct** %11, align 8
  %13 = getelementptr inbounds %struct.smptype_struct* %12, i32 0, i32 1
  %14 = load i32* %13, align 4
  %15 = load i32* @smptype_id_nil, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %0
  %18 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %119

; <label>:19                                      ; preds = %0
  %20 = load %struct.obj_struct** %2, align 8
  %21 = getelementptr inbounds %struct.obj_struct* %20, i64 0
  %22 = getelementptr inbounds %struct.obj_struct* %21, i32 0, i32 2
  %23 = load %struct.smptype_struct** %22, align 8
  %24 = call i32 @smpobj_instancep_cstr(%struct.smptype_struct* %23, i8* getelementptr inbounds ([9 x i8]* @.str15, i32 0, i32 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %48, label %26

; <label>:26                                      ; preds = %19
  %27 = load %struct.obj_struct** %2, align 8
  %28 = getelementptr inbounds %struct.obj_struct* %27, i64 0
  %29 = getelementptr inbounds %struct.obj_struct* %28, i32 0, i32 2
  %30 = load %struct.smptype_struct** %29, align 8
  %31 = getelementptr inbounds %struct.smptype_struct* %30, i32 0, i32 0
  %32 = load i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

; <label>:35                                      ; preds = %26
  %36 = load %struct.obj_struct** %2, align 8
  %37 = getelementptr inbounds %struct.obj_struct* %36, i64 0
  %38 = bitcast %struct.obj_struct* %agg.result to i8*
  %39 = bitcast %struct.obj_struct* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  br label %119

; <label>:40                                      ; preds = %26
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([9 x i8]* @.str15, i32 0, i32 0))
  %41 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %42 = load i8** %41, align 8
  %43 = bitcast i8* %42 to %struct.smptype_struct*
  %44 = load %struct.obj_struct** %2, align 8
  %45 = getelementptr inbounds %struct.obj_struct* %44, i64 0
  %46 = bitcast %struct.obj_struct* %5 to i8*
  %47 = bitcast %struct.obj_struct* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %43, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %119

; <label>:48                                      ; preds = %19
  %49 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %50 = bitcast %struct.obj_struct* %last to i8*
  %51 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 32, i32 8, i1 false)
  store %struct.obj_struct* %obj, %struct.obj_struct** %ptr, align 8
  br label %52

; <label>:52                                      ; preds = %109, %48
  %53 = load %struct.obj_struct** %ptr, align 8
  %54 = icmp ne %struct.obj_struct* %53, null
  br i1 %54, label %55, label %116

; <label>:55                                      ; preds = %52
  %56 = load %struct.obj_struct** %ptr, align 8
  %57 = bitcast %struct.obj_struct* %6 to i8*
  %58 = bitcast %struct.obj_struct* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 32, i32 8, i1 false)
  call void @smplist_car(%struct.obj_struct* sret %car, %struct.obj_struct* byval %6, i32 0, %struct.obj_struct* null)
  %59 = bitcast %struct.obj_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* bitcast (%struct.obj_struct* @smp_global to i8*), i64 32, i32 8, i1 false)
  %60 = load %struct.obj_struct** %2, align 8
  %61 = getelementptr inbounds %struct.obj_struct* %60, i64 0
  %62 = bitcast %struct.obj_struct* %8 to i8*
  %63 = bitcast %struct.obj_struct* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 32, i32 8, i1 false)
  call void @smpfun_call(%struct.obj_struct* sret %called, %struct.obj_struct* byval %7, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* %car)
  %64 = getelementptr inbounds %struct.obj_struct* %called, i32 0, i32 2
  %65 = load %struct.smptype_struct** %64, align 8
  %66 = getelementptr inbounds %struct.smptype_struct* %65, i32 0, i32 0
  %67 = load i8** %66, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

; <label>:70                                      ; preds = %55
  %71 = bitcast %struct.obj_struct* %agg.result to i8*
  %72 = bitcast %struct.obj_struct* %called to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 32, i32 8, i1 false)
  br label %119

; <label>:73                                      ; preds = %55
  %74 = getelementptr inbounds %struct.obj_struct* %last, i32 0, i32 3
  %75 = load i8** %74, align 8
  %76 = load i8** getelementptr inbounds (%struct.obj_struct* @smp_nil, i32 0, i32 3), align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %83

; <label>:78                                      ; preds = %73
  %79 = bitcast %struct.obj_struct* %9 to i8*
  %80 = bitcast %struct.obj_struct* %called to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %res, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* @smp_nil)
  %81 = bitcast %struct.obj_struct* %last to i8*
  %82 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 32, i32 8, i1 false)
  br label %109

; <label>:83                                      ; preds = %73
  %84 = call i8* @smp_malloc(i64 32)
  %85 = bitcast i8* %84 to %struct.obj_struct*
  %86 = getelementptr inbounds %struct.obj_struct* %last, i32 0, i32 3
  %87 = load i8** %86, align 8
  %88 = bitcast i8* %87 to %struct.smppair_struct*
  %89 = getelementptr inbounds %struct.smppair_struct* %88, i32 0, i32 1
  store %struct.obj_struct* %85, %struct.obj_struct** %89, align 8
  %90 = getelementptr inbounds %struct.obj_struct* %last, i32 0, i32 3
  %91 = load i8** %90, align 8
  %92 = bitcast i8* %91 to %struct.smppair_struct*
  %93 = getelementptr inbounds %struct.smppair_struct* %92, i32 0, i32 1
  %94 = load %struct.obj_struct** %93, align 8
  %95 = bitcast %struct.obj_struct* %10 to i8*
  %96 = bitcast %struct.obj_struct* %called to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %94, %struct.obj_struct* byval %10, i32 1, %struct.obj_struct* @smp_nil)
  %97 = bitcast %struct.obj_struct* %last to i8*
  %98 = bitcast %struct.obj_struct* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 32, i32 8, i1 false)
  %99 = getelementptr inbounds %struct.obj_struct* %last, i32 0, i32 2
  %100 = load %struct.smptype_struct** %99, align 8
  %101 = getelementptr inbounds %struct.smptype_struct* %100, i32 0, i32 0
  %102 = load i8** %101, align 8
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

; <label>:105                                     ; preds = %83
  %106 = bitcast %struct.obj_struct* %agg.result to i8*
  %107 = bitcast %struct.obj_struct* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 32, i32 8, i1 false)
  br label %119

; <label>:108                                     ; preds = %83
  br label %109

; <label>:109                                     ; preds = %108, %78
  %110 = load %struct.obj_struct** %ptr, align 8
  %111 = getelementptr inbounds %struct.obj_struct* %110, i32 0, i32 3
  %112 = load i8** %111, align 8
  %113 = bitcast i8* %112 to %struct.smppair_struct*
  %114 = getelementptr inbounds %struct.smppair_struct* %113, i32 0, i32 1
  %115 = load %struct.obj_struct** %114, align 8
  store %struct.obj_struct* %115, %struct.obj_struct** %ptr, align 8
  br label %52

; <label>:116                                     ; preds = %52
  %117 = bitcast %struct.obj_struct* %agg.result to i8*
  %118 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 32, i32 8, i1 false)
  br label %119

; <label>:119                                     ; preds = %116, %105, %70, %40, %35, %17
  ret void
}

declare void @smpobj_cons(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpstr_init(%struct.obj_struct* sret, i8*)

declare void @smpstr_add_now(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)
