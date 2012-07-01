; ModuleID = 'smpfloat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%0 = type { i32, i32, i64* }
%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.anon = type { i64, i32, i64, i64* }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smptype_struct*, i8* }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@smp_mpfr_rnd = common global i32 0, align 4
@smp_mpfr_default_prec = common global i64 0, align 8
@.str = private constant [7 x i8] c"Number\00"
@.str1 = private constant [6 x i8] c"Float\00"
@smptype_float = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_ids = common global %struct.minihash_struct zeroinitializer, align 8
@smptype_id_float = common global i32 0, align 4
@.str2 = private constant [6 x i8] c"clear\00"
@.str3 = private constant [4 x i8] c"Nil\00"
@.str4 = private constant [2 x i8] c"+\00"
@.str5 = private constant [2 x i8] c"-\00"
@.str6 = private constant [2 x i8] c"*\00"
@.str7 = private constant [2 x i8] c"/\00"
@.str8 = private constant [3 x i8] c"==\00"
@.str9 = private constant [5 x i8] c"Bool\00"
@.str10 = private constant [7 x i8] c"Object\00"
@.str11 = private constant [3 x i8] c"!=\00"
@.str12 = private constant [2 x i8] c"<\00"
@.str13 = private constant [3 x i8] c"<=\00"
@.str14 = private constant [3 x i8] c">=\00"
@.str15 = private constant [2 x i8] c">\00"
@.str16 = private constant [4 x i8] c"eq?\00"
@.str17 = private constant [7 x i8] c"equal?\00"
@.str18 = private constant [5 x i8] c"to_s\00"
@.str19 = private constant [7 x i8] c"String\00"
@.str20 = private constant [3 x i8] c"PI\00"
@.str21 = private constant [2 x i8] c"E\00"
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@smptype_id_int = common global i32 0, align 4
@.str22 = private constant [8 x i8] c"Integer\00"
@.str23 = private constant [7 x i8] c"Thrown\00"
@.str24 = private constant [9 x i8] c"%%.%dR*f\00"
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
@smp_stdin = common global %struct.__sFILE* null, align 8
@smp_stdout = common global %struct.__sFILE* null, align 8
@smp_stderr = common global %struct.__sFILE* null, align 8
@scope_stack = common global %struct.minihash_struct* null, align 8
@scope_length = common global i64 0, align 8
@scope_classes = common global %struct.minihash_struct zeroinitializer, align 8
@initialized_classesp = common global i32 0, align 4
@smptype_int = common global %struct.smptype_struct zeroinitializer, align 8
@smpint_zero = common global %struct.obj_struct zeroinitializer, align 8
@smpint_one = common global %struct.obj_struct zeroinitializer, align 8

define i32 @smpfloat_create_class() nounwind {
  %number = alloca %struct.obj_struct, align 8
  %floatclass = alloca %struct.obj_struct, align 8
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
  %28 = alloca %struct.obj_struct, align 8
  %29 = alloca %struct.obj_struct, align 8
  %30 = alloca %struct.obj_struct, align 8
  %31 = alloca %struct.obj_struct, align 8
  %32 = alloca %struct.obj_struct, align 8
  %33 = alloca %struct.obj_struct, align 8
  %34 = alloca %struct.obj_struct, align 8
  %35 = alloca %struct.obj_struct, align 8
  %36 = alloca %struct.obj_struct, align 8
  %37 = alloca %struct.obj_struct, align 8
  %38 = alloca %struct.obj_struct, align 8
  %39 = alloca %struct.obj_struct, align 8
  %40 = alloca %struct.obj_struct, align 8
  %41 = alloca %struct.obj_struct, align 8
  %42 = alloca %struct.obj_struct, align 8
  %43 = alloca %struct.obj_struct, align 8
  %pi = alloca [1 x %struct.anon]*, align 8
  %44 = alloca %struct.obj_struct, align 8
  %45 = alloca %struct.obj_struct, align 8
  %46 = alloca %struct.obj_struct, align 8
  %e = alloca [1 x %struct.anon]*, align 8
  %one = alloca [1 x %struct.anon], align 8
  %47 = alloca %struct.obj_struct, align 8
  %48 = alloca %struct.obj_struct, align 8
  %49 = alloca %struct.obj_struct, align 8
  store i32 1, i32* @smp_mpfr_rnd, align 4
  store i64 53, i64* @smp_mpfr_default_prec, align 8
  %50 = load i64* @smp_mpfr_default_prec, align 8
  call void @mpfr_set_default_prec(i64 %50)
  call void @smp_getclass(%struct.obj_struct* sret %number, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %51 = getelementptr inbounds %struct.obj_struct* %number, i32 0, i32 3
  %52 = load i8** %51, align 8
  %53 = bitcast i8* %52 to %struct.smptype_struct*
  %54 = call i32 @smpglobal_class(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), %struct.smptype_struct* %53, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %floatclass, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0))
  %55 = getelementptr inbounds %struct.obj_struct* %floatclass, i32 0, i32 3
  %56 = load i8** %55, align 8
  %57 = bitcast i8* %56 to %struct.smptype_struct*
  %58 = bitcast %struct.smptype_struct* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_float to i8*), i8* %58, i64 64, i32 8, i1 false)
  call void @minihash_get(%struct.obj_struct* sret %1, %struct.minihash_struct* @smptype_ids, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0))
  %59 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 3
  %60 = load i8** %59, align 8
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* @smptype_id_float, align 4
  %62 = bitcast %struct.obj_struct* %2 to i8*
  %63 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %3, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %4, %struct.obj_struct* byval %2, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), %struct.obj_struct* byval %3)
  %64 = bitcast %struct.obj_struct* %5 to i8*
  %65 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %6, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_add, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %7, %struct.obj_struct* byval %5, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), %struct.obj_struct* byval %6)
  %66 = bitcast %struct.obj_struct* %8 to i8*
  %67 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %9, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_sub, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %10, %struct.obj_struct* byval %8, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), %struct.obj_struct* byval %9)
  %68 = bitcast %struct.obj_struct* %11 to i8*
  %69 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %12, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_mul, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %13, %struct.obj_struct* byval %11, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), %struct.obj_struct* byval %12)
  %70 = bitcast %struct.obj_struct* %14 to i8*
  %71 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %15, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_div, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %16, %struct.obj_struct* byval %14, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), %struct.obj_struct* byval %15)
  %72 = bitcast %struct.obj_struct* %17 to i8*
  %73 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %18, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %19, %struct.obj_struct* byval %17, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), %struct.obj_struct* byval %18)
  %74 = bitcast %struct.obj_struct* %20 to i8*
  %75 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %21, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_nequalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %22, %struct.obj_struct* byval %20, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0), %struct.obj_struct* byval %21)
  %76 = bitcast %struct.obj_struct* %23 to i8*
  %77 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %24, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_lt, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %25, %struct.obj_struct* byval %23, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %24)
  %78 = bitcast %struct.obj_struct* %26 to i8*
  %79 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %27, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_le, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %28, %struct.obj_struct* byval %26, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), %struct.obj_struct* byval %27)
  %80 = bitcast %struct.obj_struct* %29 to i8*
  %81 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %30, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_ge, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %31, %struct.obj_struct* byval %29, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0), %struct.obj_struct* byval %30)
  %82 = bitcast %struct.obj_struct* %32 to i8*
  %83 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %33, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_gt, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %34, %struct.obj_struct* byval %32, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0), %struct.obj_struct* byval %33)
  %84 = bitcast %struct.obj_struct* %35 to i8*
  %85 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %36, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_eq, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %37, %struct.obj_struct* byval %35, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), %struct.obj_struct* byval %36)
  %86 = bitcast %struct.obj_struct* %38 to i8*
  %87 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %39, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %40, %struct.obj_struct* byval %38, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0), %struct.obj_struct* byval %39)
  %88 = bitcast %struct.obj_struct* %41 to i8*
  %89 = bitcast %struct.obj_struct* %floatclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %42, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpfloat_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str19, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %43, %struct.obj_struct* byval %41, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str18, i32 0, i32 0), %struct.obj_struct* byval %42)
  %90 = call i8* @smp_malloc(i64 32)
  %91 = bitcast i8* %90 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %91, [1 x %struct.anon]** %pi, align 8
  %92 = load [1 x %struct.anon]** %pi, align 8
  %93 = getelementptr inbounds [1 x %struct.anon]* %92, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %93)
  %94 = load [1 x %struct.anon]** %pi, align 8
  %95 = getelementptr inbounds [1 x %struct.anon]* %94, i32 0, i32 0
  %96 = load i32* @smp_mpfr_rnd, align 4
  %97 = call i32 @mpfr_const_pi(%struct.anon* %95, i32 %96)
  %98 = bitcast %struct.obj_struct* %44 to i8*
  %99 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 32, i32 8, i1 false)
  %100 = load [1 x %struct.anon]** %pi, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %45, [1 x %struct.anon]* %100)
  call void @smptype_defvar(%struct.obj_struct* sret %46, %struct.obj_struct* byval %44, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %45)
  %101 = call i8* @smp_malloc(i64 32)
  %102 = bitcast i8* %101 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %102, [1 x %struct.anon]** %e, align 8
  %103 = load [1 x %struct.anon]** %e, align 8
  %104 = getelementptr inbounds [1 x %struct.anon]* %103, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %104)
  %105 = getelementptr inbounds [1 x %struct.anon]* %one, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %105)
  %106 = getelementptr inbounds [1 x %struct.anon]* %one, i32 0, i32 0
  %107 = load i32* @smp_mpfr_rnd, align 4
  %108 = call i32 @mpfr_set_ui_2exp(%struct.anon* %106, i64 1, i64 0, i32 %107)
  %109 = load [1 x %struct.anon]** %e, align 8
  %110 = getelementptr inbounds [1 x %struct.anon]* %109, i32 0, i32 0
  %111 = getelementptr inbounds [1 x %struct.anon]* %one, i32 0, i32 0
  %112 = load i32* @smp_mpfr_rnd, align 4
  %113 = call i32 @mpfr_exp(%struct.anon* %110, %struct.anon* %111, i32 %112)
  %114 = bitcast %struct.obj_struct* %47 to i8*
  %115 = bitcast %struct.obj_struct* %number to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 32, i32 8, i1 false)
  %116 = load [1 x %struct.anon]** %e, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %48, [1 x %struct.anon]* %116)
  call void @smptype_defvar(%struct.obj_struct* sret %49, %struct.obj_struct* byval %47, i32 1, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0), %struct.obj_struct* byval %48)
  %117 = getelementptr inbounds [1 x %struct.anon]* %one, i32 0, i32 0
  call void @mpfr_clear(%struct.anon* %117)
  ret i32 0
}

declare void @mpfr_set_default_prec(i64)

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare i32 @smpglobal_class(i8*, %struct.smptype_struct*, i32)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @minihash_get(%struct.obj_struct* sret, %struct.minihash_struct*, i8*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smpfloat_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to [1 x %struct.anon]*
  %6 = getelementptr inbounds [1 x %struct.anon]* %5, i32 0, i32 0
  call void @mpfr_clear(%struct.anon* %6)
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpfloat_add(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %f = alloca [1 x %struct.anon]*, align 8
  %res = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smptype_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smptype_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smptype_id_float, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %34

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 32)
  %16 = bitcast i8* %15 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %16, [1 x %struct.anon]** %f, align 8
  %17 = load [1 x %struct.anon]** %f, align 8
  %18 = getelementptr inbounds [1 x %struct.anon]* %17, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %18)
  %19 = load [1 x %struct.anon]** %f, align 8
  %20 = getelementptr inbounds [1 x %struct.anon]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %22 = load i8** %21, align 8
  %23 = bitcast i8* %22 to [1 x %struct.anon]*
  %24 = getelementptr inbounds [1 x %struct.anon]* %23, i32 0, i32 0
  %25 = load %struct.obj_struct** %2, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 0
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to [1 x %struct.anon]*
  %30 = getelementptr inbounds [1 x %struct.anon]* %29, i32 0, i32 0
  %31 = load i32* @smp_mpfr_rnd, align 4
  %32 = call i32 @mpfr_add(%struct.anon* %20, %struct.anon* %24, %struct.anon* %30, i32 %31)
  %33 = load [1 x %struct.anon]** %f, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %33)
  br label %70

; <label>:34                                      ; preds = %0
  %35 = load %struct.obj_struct** %2, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 0
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smptype_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smptype_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smptype_id_int, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %63

; <label>:43                                      ; preds = %34
  %44 = call i8* @smp_malloc(i64 32)
  %45 = bitcast i8* %44 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %45, [1 x %struct.anon]** %res, align 8
  %46 = load [1 x %struct.anon]** %res, align 8
  %47 = getelementptr inbounds [1 x %struct.anon]* %46, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %47)
  %48 = load [1 x %struct.anon]** %res, align 8
  %49 = getelementptr inbounds [1 x %struct.anon]* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %struct.anon]*
  %53 = getelementptr inbounds [1 x %struct.anon]* %52, i32 0, i32 0
  %54 = load %struct.obj_struct** %2, align 8
  %55 = getelementptr inbounds %struct.obj_struct* %54, i64 0
  %56 = getelementptr inbounds %struct.obj_struct* %55, i32 0, i32 3
  %57 = load i8** %56, align 8
  %58 = bitcast i8* %57 to [1 x %0]*
  %59 = getelementptr inbounds [1 x %0]* %58, i32 0, i32 0
  %60 = load i32* @smp_mpfr_rnd, align 4
  %61 = call i32 @mpfr_add_z(%struct.anon* %49, %struct.anon* %53, %0* %59, i32 %60)
  %62 = load [1 x %struct.anon]** %res, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %62)
  br label %70

; <label>:63                                      ; preds = %34
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %64 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %65 = load %struct.smptype_struct** %64, align 8
  %66 = load %struct.obj_struct** %2, align 8
  %67 = getelementptr inbounds %struct.obj_struct* %66, i64 0
  %68 = bitcast %struct.obj_struct* %5 to i8*
  %69 = bitcast %struct.obj_struct* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %65, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %70

; <label>:70                                      ; preds = %63, %43, %14
  ret void
}

define void @smpfloat_sub(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %f = alloca [1 x %struct.anon]*, align 8
  %res = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smptype_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smptype_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smptype_id_float, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %34

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 32)
  %16 = bitcast i8* %15 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %16, [1 x %struct.anon]** %f, align 8
  %17 = load [1 x %struct.anon]** %f, align 8
  %18 = getelementptr inbounds [1 x %struct.anon]* %17, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %18)
  %19 = load [1 x %struct.anon]** %f, align 8
  %20 = getelementptr inbounds [1 x %struct.anon]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %22 = load i8** %21, align 8
  %23 = bitcast i8* %22 to [1 x %struct.anon]*
  %24 = getelementptr inbounds [1 x %struct.anon]* %23, i32 0, i32 0
  %25 = load %struct.obj_struct** %2, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 0
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to [1 x %struct.anon]*
  %30 = getelementptr inbounds [1 x %struct.anon]* %29, i32 0, i32 0
  %31 = load i32* @smp_mpfr_rnd, align 4
  %32 = call i32 @mpfr_sub(%struct.anon* %20, %struct.anon* %24, %struct.anon* %30, i32 %31)
  %33 = load [1 x %struct.anon]** %f, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %33)
  br label %70

; <label>:34                                      ; preds = %0
  %35 = load %struct.obj_struct** %2, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 0
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smptype_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smptype_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smptype_id_int, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %63

; <label>:43                                      ; preds = %34
  %44 = call i8* @smp_malloc(i64 32)
  %45 = bitcast i8* %44 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %45, [1 x %struct.anon]** %res, align 8
  %46 = load [1 x %struct.anon]** %res, align 8
  %47 = getelementptr inbounds [1 x %struct.anon]* %46, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %47)
  %48 = load [1 x %struct.anon]** %res, align 8
  %49 = getelementptr inbounds [1 x %struct.anon]* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %struct.anon]*
  %53 = getelementptr inbounds [1 x %struct.anon]* %52, i32 0, i32 0
  %54 = load %struct.obj_struct** %2, align 8
  %55 = getelementptr inbounds %struct.obj_struct* %54, i64 0
  %56 = getelementptr inbounds %struct.obj_struct* %55, i32 0, i32 3
  %57 = load i8** %56, align 8
  %58 = bitcast i8* %57 to [1 x %0]*
  %59 = getelementptr inbounds [1 x %0]* %58, i32 0, i32 0
  %60 = load i32* @smp_mpfr_rnd, align 4
  %61 = call i32 @mpfr_sub_z(%struct.anon* %49, %struct.anon* %53, %0* %59, i32 %60)
  %62 = load [1 x %struct.anon]** %res, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %62)
  br label %70

; <label>:63                                      ; preds = %34
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %64 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %65 = load %struct.smptype_struct** %64, align 8
  %66 = load %struct.obj_struct** %2, align 8
  %67 = getelementptr inbounds %struct.obj_struct* %66, i64 0
  %68 = bitcast %struct.obj_struct* %5 to i8*
  %69 = bitcast %struct.obj_struct* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %65, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %70

; <label>:70                                      ; preds = %63, %43, %14
  ret void
}

define void @smpfloat_mul(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %f = alloca [1 x %struct.anon]*, align 8
  %res = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smptype_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smptype_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smptype_id_float, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %34

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 32)
  %16 = bitcast i8* %15 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %16, [1 x %struct.anon]** %f, align 8
  %17 = load [1 x %struct.anon]** %f, align 8
  %18 = getelementptr inbounds [1 x %struct.anon]* %17, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %18)
  %19 = load [1 x %struct.anon]** %f, align 8
  %20 = getelementptr inbounds [1 x %struct.anon]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %22 = load i8** %21, align 8
  %23 = bitcast i8* %22 to [1 x %struct.anon]*
  %24 = getelementptr inbounds [1 x %struct.anon]* %23, i32 0, i32 0
  %25 = load %struct.obj_struct** %2, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 0
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to [1 x %struct.anon]*
  %30 = getelementptr inbounds [1 x %struct.anon]* %29, i32 0, i32 0
  %31 = load i32* @smp_mpfr_rnd, align 4
  %32 = call i32 @mpfr_mul(%struct.anon* %20, %struct.anon* %24, %struct.anon* %30, i32 %31)
  %33 = load [1 x %struct.anon]** %f, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %33)
  br label %70

; <label>:34                                      ; preds = %0
  %35 = load %struct.obj_struct** %2, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 0
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smptype_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smptype_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smptype_id_int, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %63

; <label>:43                                      ; preds = %34
  %44 = call i8* @smp_malloc(i64 32)
  %45 = bitcast i8* %44 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %45, [1 x %struct.anon]** %res, align 8
  %46 = load [1 x %struct.anon]** %res, align 8
  %47 = getelementptr inbounds [1 x %struct.anon]* %46, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %47)
  %48 = load [1 x %struct.anon]** %res, align 8
  %49 = getelementptr inbounds [1 x %struct.anon]* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %struct.anon]*
  %53 = getelementptr inbounds [1 x %struct.anon]* %52, i32 0, i32 0
  %54 = load %struct.obj_struct** %2, align 8
  %55 = getelementptr inbounds %struct.obj_struct* %54, i64 0
  %56 = getelementptr inbounds %struct.obj_struct* %55, i32 0, i32 3
  %57 = load i8** %56, align 8
  %58 = bitcast i8* %57 to [1 x %0]*
  %59 = getelementptr inbounds [1 x %0]* %58, i32 0, i32 0
  %60 = load i32* @smp_mpfr_rnd, align 4
  %61 = call i32 @mpfr_mul_z(%struct.anon* %49, %struct.anon* %53, %0* %59, i32 %60)
  %62 = load [1 x %struct.anon]** %res, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %62)
  br label %70

; <label>:63                                      ; preds = %34
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %64 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %65 = load %struct.smptype_struct** %64, align 8
  %66 = load %struct.obj_struct** %2, align 8
  %67 = getelementptr inbounds %struct.obj_struct* %66, i64 0
  %68 = bitcast %struct.obj_struct* %5 to i8*
  %69 = bitcast %struct.obj_struct* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %65, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %70

; <label>:70                                      ; preds = %63, %43, %14
  ret void
}

define void @smpfloat_div(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %f = alloca [1 x %struct.anon]*, align 8
  %res = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load %struct.obj_struct** %2, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %6, i64 0
  %8 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 2
  %9 = load %struct.smptype_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smptype_struct* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = load i32* @smptype_id_float, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %34

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 32)
  %16 = bitcast i8* %15 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %16, [1 x %struct.anon]** %f, align 8
  %17 = load [1 x %struct.anon]** %f, align 8
  %18 = getelementptr inbounds [1 x %struct.anon]* %17, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %18)
  %19 = load [1 x %struct.anon]** %f, align 8
  %20 = getelementptr inbounds [1 x %struct.anon]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %22 = load i8** %21, align 8
  %23 = bitcast i8* %22 to [1 x %struct.anon]*
  %24 = getelementptr inbounds [1 x %struct.anon]* %23, i32 0, i32 0
  %25 = load %struct.obj_struct** %2, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 0
  %27 = getelementptr inbounds %struct.obj_struct* %26, i32 0, i32 3
  %28 = load i8** %27, align 8
  %29 = bitcast i8* %28 to [1 x %struct.anon]*
  %30 = getelementptr inbounds [1 x %struct.anon]* %29, i32 0, i32 0
  %31 = load i32* @smp_mpfr_rnd, align 4
  %32 = call i32 @mpfr_div(%struct.anon* %20, %struct.anon* %24, %struct.anon* %30, i32 %31)
  %33 = load [1 x %struct.anon]** %f, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %33)
  br label %70

; <label>:34                                      ; preds = %0
  %35 = load %struct.obj_struct** %2, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 0
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smptype_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smptype_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smptype_id_int, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %63

; <label>:43                                      ; preds = %34
  %44 = call i8* @smp_malloc(i64 32)
  %45 = bitcast i8* %44 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %45, [1 x %struct.anon]** %res, align 8
  %46 = load [1 x %struct.anon]** %res, align 8
  %47 = getelementptr inbounds [1 x %struct.anon]* %46, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %47)
  %48 = load [1 x %struct.anon]** %res, align 8
  %49 = getelementptr inbounds [1 x %struct.anon]* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %struct.anon]*
  %53 = getelementptr inbounds [1 x %struct.anon]* %52, i32 0, i32 0
  %54 = load %struct.obj_struct** %2, align 8
  %55 = getelementptr inbounds %struct.obj_struct* %54, i64 0
  %56 = getelementptr inbounds %struct.obj_struct* %55, i32 0, i32 3
  %57 = load i8** %56, align 8
  %58 = bitcast i8* %57 to [1 x %0]*
  %59 = getelementptr inbounds [1 x %0]* %58, i32 0, i32 0
  %60 = load i32* @smp_mpfr_rnd, align 4
  %61 = call i32 @mpfr_div_z(%struct.anon* %49, %struct.anon* %53, %0* %59, i32 %60)
  %62 = load [1 x %struct.anon]** %res, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %62)
  br label %70

; <label>:63                                      ; preds = %34
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %64 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %65 = load %struct.smptype_struct** %64, align 8
  %66 = load %struct.obj_struct** %2, align 8
  %67 = getelementptr inbounds %struct.obj_struct* %66, i64 0
  %68 = bitcast %struct.obj_struct* %5 to i8*
  %69 = bitcast %struct.obj_struct* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %65, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %70

; <label>:70                                      ; preds = %63, %43, %14
  ret void
}

declare void @smpint_equalp(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpint_nequalp(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define void @smpfloat_lt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %num = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %7 = bitcast %struct.obj_struct* %3 to i8*
  %8 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  %9 = load i32* %1, align 4
  %10 = load %struct.obj_struct** %2, align 8
  %11 = call i32 @smpfloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 2
  %16 = load %struct.smptype_struct** %15, align 8
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = bitcast %struct.obj_struct* %6 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %4, %struct.smptype_struct* %16, %struct.obj_struct* byval %6)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %25

; <label>:21                                      ; preds = %0
  %22 = load i32* %num, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %24)
  br label %25

; <label>:25                                      ; preds = %21, %14
  ret void
}

define void @smpfloat_le(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %num = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %7 = bitcast %struct.obj_struct* %3 to i8*
  %8 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  %9 = load i32* %1, align 4
  %10 = load %struct.obj_struct** %2, align 8
  %11 = call i32 @smpfloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 2
  %16 = load %struct.smptype_struct** %15, align 8
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = bitcast %struct.obj_struct* %6 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %4, %struct.smptype_struct* %16, %struct.obj_struct* byval %6)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %25

; <label>:21                                      ; preds = %0
  %22 = load i32* %num, align 4
  %23 = icmp sle i32 %22, 0
  %24 = zext i1 %23 to i32
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %24)
  br label %25

; <label>:25                                      ; preds = %21, %14
  ret void
}

define void @smpfloat_ge(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %num = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %7 = bitcast %struct.obj_struct* %3 to i8*
  %8 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  %9 = load i32* %1, align 4
  %10 = load %struct.obj_struct** %2, align 8
  %11 = call i32 @smpfloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 2
  %16 = load %struct.smptype_struct** %15, align 8
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = bitcast %struct.obj_struct* %6 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %4, %struct.smptype_struct* %16, %struct.obj_struct* byval %6)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %25

; <label>:21                                      ; preds = %0
  %22 = load i32* %num, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i32
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %24)
  br label %25

; <label>:25                                      ; preds = %21, %14
  ret void
}

define void @smpfloat_gt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %num = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %7 = bitcast %struct.obj_struct* %3 to i8*
  %8 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  %9 = load i32* %1, align 4
  %10 = load %struct.obj_struct** %2, align 8
  %11 = call i32 @smpfloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 2
  %16 = load %struct.smptype_struct** %15, align 8
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = bitcast %struct.obj_struct* %6 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %4, %struct.smptype_struct* %16, %struct.obj_struct* byval %6)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %25

; <label>:21                                      ; preds = %0
  %22 = load i32* %num, align 4
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %24)
  br label %25

; <label>:25                                      ; preds = %21, %14
  ret void
}

define void @smpfloat_eq(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = load i32* %1, align 4
  %7 = load %struct.obj_struct** %2, align 8
  call void @smpfloat_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i32 %6, %struct.obj_struct* %7)
  ret void
}

define void @smpfloat_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %num = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %7 = bitcast %struct.obj_struct* %3 to i8*
  %8 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  %9 = load i32* %1, align 4
  %10 = load %struct.obj_struct** %2, align 8
  %11 = call i32 @smpfloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 2
  %16 = load %struct.smptype_struct** %15, align 8
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = bitcast %struct.obj_struct* %6 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %4, %struct.smptype_struct* %16, %struct.obj_struct* byval %6)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %25

; <label>:21                                      ; preds = %0
  %22 = load i32* %num, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %24)
  br label %25

; <label>:25                                      ; preds = %21, %14
  ret void
}

define void @smpfloat_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %fmt = alloca [100 x i8], align 16
  %digits = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %str = alloca i8*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = load i64* @smp_mpfr_default_prec, align 8
  %7 = sitofp i64 %6 to double
  %8 = call double @log10(double 2.000000e+00)
  %9 = fmul double %7, %8
  %10 = fptosi double %9 to i32
  store i32 %10, i32* %digits, align 4
  %11 = load i32* %1, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %61

; <label>:13                                      ; preds = %0
  %14 = load %struct.obj_struct** %2, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 0
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 2
  %17 = load %struct.smptype_struct** %16, align 8
  %18 = call i32 @smpobj_instancep_cstr(%struct.smptype_struct* %17, i8* getelementptr inbounds ([8 x i8]* @.str22, i32 0, i32 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %42, label %20

; <label>:20                                      ; preds = %13
  %21 = load %struct.obj_struct** %2, align 8
  %22 = getelementptr inbounds %struct.obj_struct* %21, i64 0
  %23 = getelementptr inbounds %struct.obj_struct* %22, i32 0, i32 2
  %24 = load %struct.smptype_struct** %23, align 8
  %25 = getelementptr inbounds %struct.smptype_struct* %24, i32 0, i32 0
  %26 = load i8** %25, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0))
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

; <label>:29                                      ; preds = %20
  %30 = load %struct.obj_struct** %2, align 8
  %31 = getelementptr inbounds %struct.obj_struct* %30, i64 0
  %32 = bitcast %struct.obj_struct* %agg.result to i8*
  %33 = bitcast %struct.obj_struct* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  br label %72

; <label>:34                                      ; preds = %20
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([8 x i8]* @.str22, i32 0, i32 0))
  %35 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.smptype_struct*
  %38 = load %struct.obj_struct** %2, align 8
  %39 = getelementptr inbounds %struct.obj_struct* %38, i64 0
  %40 = bitcast %struct.obj_struct* %5 to i8*
  %41 = bitcast %struct.obj_struct* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %37, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %72

; <label>:42                                      ; preds = %13
  %43 = load %struct.obj_struct** %2, align 8
  %44 = getelementptr inbounds %struct.obj_struct* %43, i64 0
  %45 = getelementptr inbounds %struct.obj_struct* %44, i32 0, i32 3
  %46 = load i8** %45, align 8
  %47 = bitcast i8* %46 to [1 x %0]*
  %48 = getelementptr inbounds [1 x %0]* %47, i32 0, i32 0
  %49 = call i32 @__gmpz_fits_sint_p(%0* %48) readonly
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

; <label>:51                                      ; preds = %42
  %52 = load %struct.obj_struct** %2, align 8
  %53 = getelementptr inbounds %struct.obj_struct* %52, i64 0
  %54 = getelementptr inbounds %struct.obj_struct* %53, i32 0, i32 3
  %55 = load i8** %54, align 8
  %56 = bitcast i8* %55 to [1 x %0]*
  %57 = getelementptr inbounds [1 x %0]* %56, i32 0, i32 0
  %58 = call i64 @__gmpz_get_si(%0* %57) readonly
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %digits, align 4
  br label %60

; <label>:60                                      ; preds = %51, %42
  br label %61

; <label>:61                                      ; preds = %60, %0
  %62 = getelementptr inbounds [100 x i8]* %fmt, i32 0, i32 0
  %63 = load i32* %digits, align 4
  %64 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %62, i32 0, i64 100, i8* getelementptr inbounds ([9 x i8]* @.str24, i32 0, i32 0), i32 %63)
  %65 = getelementptr inbounds [100 x i8]* %fmt, i32 0, i32 0
  %66 = load i32* @smp_mpfr_rnd, align 4
  %67 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %68 = load i8** %67, align 8
  %69 = bitcast i8* %68 to [1 x %struct.anon]*
  %70 = getelementptr inbounds [1 x %struct.anon]* %69, i32 0, i32 0
  %71 = call i32 (i8**, i8*, ...)* @mpfr_asprintf(i8** %str, i8* %65, i32 %66, %struct.anon* %70)
  call void @smpstr_init_ref(%struct.obj_struct* sret %agg.result, i8** %str)
  br label %72

; <label>:72                                      ; preds = %61, %34, %29
  ret void
}

declare i8* @smp_malloc(i64)

declare void @mpfr_init(%struct.anon*)

declare i32 @mpfr_const_pi(%struct.anon*, i32)

declare void @smptype_defvar(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

define void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %x) nounwind {
  %1 = alloca [1 x %struct.anon]*, align 8
  %res = alloca %struct.obj_struct, align 8
  store [1 x %struct.anon]* %x, [1 x %struct.anon]** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_float)
  %2 = load [1 x %struct.anon]** %1, align 8
  %3 = bitcast [1 x %struct.anon]* %2 to i8*
  %4 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %3, i8** %4, align 8
  %5 = bitcast %struct.obj_struct* %agg.result to i8*
  %6 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  ret void
}

declare i32 @mpfr_set_ui_2exp(%struct.anon*, i64, i64, i32)

declare i32 @mpfr_exp(%struct.anon*, %struct.anon*, i32)

declare void @mpfr_clear(%struct.anon*)

define void @smpfloat_init_mpfr(%struct.obj_struct* sret %agg.result, %struct.anon* %x) nounwind {
  %1 = alloca %struct.anon*, align 8
  %res = alloca %struct.obj_struct, align 8
  store %struct.anon* %x, %struct.anon** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_float)
  %2 = call i8* @smp_malloc(i64 32)
  %3 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %2, i8** %3, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to [1 x %struct.anon]*
  %7 = getelementptr inbounds [1 x %struct.anon]* %6, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %7)
  %8 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %9 = load i8** %8, align 8
  %10 = bitcast i8* %9 to [1 x %struct.anon]*
  %11 = getelementptr inbounds [1 x %struct.anon]* %10, i32 0, i32 0
  %12 = load %struct.anon** %1, align 8
  %13 = load i32* @smp_mpfr_rnd, align 4
  %14 = load %struct.anon** %1, align 8
  %15 = getelementptr inbounds %struct.anon* %14, i32 0, i32 1
  %16 = load i32* %15, align 4
  %17 = call i32 @mpfr_set4(%struct.anon* %11, %struct.anon* %12, i32 %13, i32 %16)
  %18 = bitcast %struct.obj_struct* %agg.result to i8*
  %19 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  ret void
}

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

declare i32 @mpfr_set4(%struct.anon*, %struct.anon*, i32, i32)

define void @smpfloat_init_cdouble(%struct.obj_struct* sret %agg.result, double %d) nounwind {
  %1 = alloca double, align 8
  %f = alloca [1 x %struct.anon]*, align 8
  %res = alloca %struct.obj_struct, align 8
  store double %d, double* %1, align 8
  %2 = call i8* @smp_malloc(i64 32)
  %3 = bitcast i8* %2 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %3, [1 x %struct.anon]** %f, align 8
  %4 = load [1 x %struct.anon]** %f, align 8
  %5 = getelementptr inbounds [1 x %struct.anon]* %4, i32 0, i32 0
  call void @mpfr_init(%struct.anon* %5)
  %6 = load [1 x %struct.anon]** %f, align 8
  %7 = getelementptr inbounds [1 x %struct.anon]* %6, i32 0, i32 0
  %8 = load double* %1, align 8
  %9 = load i32* @smp_mpfr_rnd, align 4
  %10 = call i32 @mpfr_set_d(%struct.anon* %7, double %8, i32 %9)
  %11 = load [1 x %struct.anon]** %f, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %res, [1 x %struct.anon]* %11)
  %12 = bitcast %struct.obj_struct* %agg.result to i8*
  %13 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  ret void
}

declare i32 @mpfr_set_d(%struct.anon*, double, i32)

define void @smpfloat_init_str(%struct.obj_struct* sret %agg.result, i8* %str) nounwind {
  %1 = alloca i8*, align 8
  %f = alloca [1 x %struct.anon]*, align 8
  %res = alloca %struct.obj_struct, align 8
  store i8* %str, i8** %1, align 8
  %2 = call i8* @smp_malloc(i64 32)
  %3 = bitcast i8* %2 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %3, [1 x %struct.anon]** %f, align 8
  %4 = load [1 x %struct.anon]** %f, align 8
  %5 = getelementptr inbounds [1 x %struct.anon]* %4, i32 0, i32 0
  %6 = load i8** %1, align 8
  %7 = load i32* @smp_mpfr_rnd, align 4
  %8 = call i32 @mpfr_init_set_str(%struct.anon* %5, i8* %6, i32 0, i32 %7)
  %9 = load [1 x %struct.anon]** %f, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %res, [1 x %struct.anon]* %9)
  %10 = bitcast %struct.obj_struct* %agg.result to i8*
  %11 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  ret void
}

declare i32 @mpfr_init_set_str(%struct.anon*, i8*, i32, i32)

declare i32 @mpfr_add(%struct.anon*, %struct.anon*, %struct.anon*, i32)

declare i32 @mpfr_add_z(%struct.anon*, %struct.anon*, %0*, i32)

declare void @smpglobal_throw(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smptypeerr_init(%struct.obj_struct* sret, %struct.smptype_struct*, %struct.obj_struct* byval)

declare i32 @mpfr_sub(%struct.anon*, %struct.anon*, %struct.anon*, i32)

declare i32 @mpfr_sub_z(%struct.anon*, %struct.anon*, %0*, i32)

declare i32 @mpfr_mul(%struct.anon*, %struct.anon*, %struct.anon*, i32)

declare i32 @mpfr_mul_z(%struct.anon*, %struct.anon*, %0*, i32)

declare i32 @mpfr_div(%struct.anon*, %struct.anon*, %struct.anon*, i32)

declare i32 @mpfr_div_z(%struct.anon*, %struct.anon*, %0*, i32)

define i32 @smpfloat_cmp_cint(%struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.obj_struct*, align 8
  %num = alloca i32, align 4
  %num1 = alloca i32, align 4
  store i32 %argc, i32* %2, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %3, align 8
  %4 = load %struct.obj_struct** %3, align 8
  %5 = getelementptr inbounds %struct.obj_struct* %4, i64 0
  %6 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 2
  %7 = load %struct.smptype_struct** %6, align 8
  %8 = getelementptr inbounds %struct.smptype_struct* %7, i32 0, i32 1
  %9 = load i32* %8, align 4
  %10 = load i32* @smptype_id_int, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %33

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = bitcast i8* %14 to [1 x %struct.anon]*
  %16 = getelementptr inbounds [1 x %struct.anon]* %15, i32 0, i32 0
  %17 = load %struct.obj_struct** %3, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = getelementptr inbounds %struct.obj_struct* %18, i32 0, i32 3
  %20 = load i8** %19, align 8
  %21 = bitcast i8* %20 to [1 x %0]*
  %22 = getelementptr inbounds [1 x %0]* %21, i32 0, i32 0
  %23 = call i32 @mpfr_cmp_z(%struct.anon* %16, %0* %22)
  store i32 %23, i32* %num, align 4
  %24 = load i32* %num, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %12
  store i32 1, i32* %num, align 4
  br label %27

; <label>:27                                      ; preds = %26, %12
  %28 = load i32* %num, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %27
  store i32 -1, i32* %num, align 4
  br label %31

; <label>:31                                      ; preds = %30, %27
  %32 = load i32* %num, align 4
  store i32 %32, i32* %1
  br label %64

; <label>:33                                      ; preds = %0
  %34 = load %struct.obj_struct** %3, align 8
  %35 = getelementptr inbounds %struct.obj_struct* %34, i64 0
  %36 = getelementptr inbounds %struct.obj_struct* %35, i32 0, i32 2
  %37 = load %struct.smptype_struct** %36, align 8
  %38 = getelementptr inbounds %struct.smptype_struct* %37, i32 0, i32 1
  %39 = load i32* %38, align 4
  %40 = load i32* @smptype_id_float, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %63

; <label>:42                                      ; preds = %33
  %43 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %44 = load i8** %43, align 8
  %45 = bitcast i8* %44 to [1 x %struct.anon]*
  %46 = getelementptr inbounds [1 x %struct.anon]* %45, i32 0, i32 0
  %47 = load %struct.obj_struct** %3, align 8
  %48 = getelementptr inbounds %struct.obj_struct* %47, i64 0
  %49 = getelementptr inbounds %struct.obj_struct* %48, i32 0, i32 3
  %50 = load i8** %49, align 8
  %51 = bitcast i8* %50 to [1 x %struct.anon]*
  %52 = getelementptr inbounds [1 x %struct.anon]* %51, i32 0, i32 0
  %53 = call i32 @mpfr_cmp3(%struct.anon* %46, %struct.anon* %52, i32 1)
  store i32 %53, i32* %num1, align 4
  %54 = load i32* %num1, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %42
  store i32 1, i32* %num1, align 4
  br label %57

; <label>:57                                      ; preds = %56, %42
  %58 = load i32* %num1, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %57
  store i32 -1, i32* %num1, align 4
  br label %61

; <label>:61                                      ; preds = %60, %57
  %62 = load i32* %num1, align 4
  store i32 %62, i32* %1
  br label %64

; <label>:63                                      ; preds = %33
  store i32 -2, i32* %1
  br label %64

; <label>:64                                      ; preds = %63, %61, %31
  %65 = load i32* %1
  ret i32 %65
}

declare i32 @mpfr_cmp_z(%struct.anon*, %0*)

declare i32 @mpfr_cmp3(%struct.anon*, %struct.anon*, i32)

define void @smpfloat_cmp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %num = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %6 = bitcast %struct.obj_struct* %3 to i8*
  %7 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = load i32* %1, align 4
  %9 = load %struct.obj_struct** %2, align 8
  %10 = call i32 @smpfloat_cmp_cint(%struct.obj_struct* byval %3, i32 %8, %struct.obj_struct* %9)
  store i32 %10, i32* %num, align 4
  %11 = load i32* %num, align 4
  %12 = icmp eq i32 %11, -2
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %0
  %14 = load %struct.obj_struct** %2, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 0
  %16 = bitcast %struct.obj_struct* %5 to i8*
  %17 = bitcast %struct.obj_struct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %4, %struct.smptype_struct* null, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %21

; <label>:18                                      ; preds = %0
  %19 = load i32* %num, align 4
  %20 = sext i32 %19 to i64
  call void @smpint_init_clong(%struct.obj_struct* sret %agg.result, i64 %20)
  br label %21

; <label>:21                                      ; preds = %18, %13
  ret void
}

declare void @smpint_init_clong(%struct.obj_struct* sret, i64)

declare void @smpbool_init(%struct.obj_struct* sret, i32)

define void @smpfloat_nequalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %num = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %7 = bitcast %struct.obj_struct* %3 to i8*
  %8 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  %9 = load i32* %1, align 4
  %10 = load %struct.obj_struct** %2, align 8
  %11 = call i32 @smpfloat_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 2
  %16 = load %struct.smptype_struct** %15, align 8
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = bitcast %struct.obj_struct* %6 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %4, %struct.smptype_struct* %16, %struct.obj_struct* byval %6)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %25

; <label>:21                                      ; preds = %0
  %22 = load i32* %num, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  call void @smpbool_init(%struct.obj_struct* sret %agg.result, i32 %24)
  br label %25

; <label>:25                                      ; preds = %21, %14
  ret void
}

declare double @log10(double)

declare i32 @smpobj_instancep_cstr(%struct.smptype_struct*, i8*)

declare i32 @strcmp(i8*, i8*)

declare i32 @__gmpz_fits_sint_p(%0*) readonly

declare i64 @__gmpz_get_si(%0*) readonly

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...)

declare i32 @mpfr_asprintf(i8**, i8*, ...)

declare void @smpstr_init_ref(%struct.obj_struct* sret, i8**)
