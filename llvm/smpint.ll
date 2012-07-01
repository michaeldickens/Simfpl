; ModuleID = 'smpint.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%0 = type { i64, i32, i64, i64* }
%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.anon = type { i32, i32, i64* }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smptype_struct*, i8* }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@.str = private constant [8 x i8] c"Integer\00"
@.str1 = private constant [7 x i8] c"Number\00"
@smptype_int = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_ids = common global %struct.minihash_struct zeroinitializer, align 8
@smptype_id_int = common global i32 0, align 4
@.str2 = private constant [6 x i8] c"clear\00"
@.str3 = private constant [4 x i8] c"Nil\00"
@.str4 = private constant [2 x i8] c"+\00"
@.str5 = private constant [2 x i8] c"-\00"
@.str6 = private constant [2 x i8] c"*\00"
@.str7 = private constant [2 x i8] c"/\00"
@.str8 = private constant [2 x i8] c"%\00"
@.str9 = private constant [3 x i8] c"<<\00"
@.str10 = private constant [3 x i8] c">>\00"
@.str11 = private constant [2 x i8] c"&\00"
@.str12 = private constant [2 x i8] c"|\00"
@.str13 = private constant [2 x i8] c"^\00"
@.str14 = private constant [3 x i8] c"==\00"
@.str15 = private constant [5 x i8] c"Bool\00"
@.str16 = private constant [7 x i8] c"Object\00"
@.str17 = private constant [3 x i8] c"!=\00"
@.str18 = private constant [2 x i8] c"<\00"
@.str19 = private constant [3 x i8] c"<=\00"
@.str20 = private constant [3 x i8] c">=\00"
@.str21 = private constant [2 x i8] c">\00"
@.str22 = private constant [4 x i8] c"eq?\00"
@.str23 = private constant [7 x i8] c"equal?\00"
@.str24 = private constant [5 x i8] c"to_s\00"
@.str25 = private constant [7 x i8] c"String\00"
@smpint_zero = common global %struct.obj_struct zeroinitializer, align 8
@smpint_one = common global %struct.obj_struct zeroinitializer, align 8
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@smptype_id_float = common global i32 0, align 4
@smp_mpfr_rnd = common global i32 0, align 4
@.str26 = private constant [7 x i8] c"Thrown\00"
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
@smptype_float = common global %struct.smptype_struct zeroinitializer, align 8
@smp_mpfr_default_prec = common global i64 0, align 8

define i32 @smpint_create_class() nounwind {
  %1 = alloca %struct.obj_struct, align 8
  %intclass = alloca %struct.obj_struct, align 8
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
  %44 = alloca %struct.obj_struct, align 8
  %45 = alloca %struct.obj_struct, align 8
  %46 = alloca %struct.obj_struct, align 8
  %47 = alloca %struct.obj_struct, align 8
  %48 = alloca %struct.obj_struct, align 8
  %49 = alloca %struct.obj_struct, align 8
  %50 = alloca %struct.obj_struct, align 8
  %51 = alloca %struct.obj_struct, align 8
  %52 = alloca %struct.obj_struct, align 8
  %53 = alloca %struct.obj_struct, align 8
  %54 = alloca %struct.obj_struct, align 8
  %55 = alloca %struct.obj_struct, align 8
  %56 = alloca %struct.obj_struct, align 8
  %57 = alloca %struct.obj_struct, align 8
  %58 = alloca %struct.obj_struct, align 8
  %59 = alloca %struct.obj_struct, align 8
  %60 = alloca %struct.obj_struct, align 8
  %61 = alloca %struct.obj_struct, align 8
  %62 = alloca %struct.obj_struct, align 8
  call void @__gmp_set_memory_functions(i8* (i64)* @smp_malloc, i8* (i8*, i64, i64)* @smp_realloc_size, void (i8*, i64)* @smp_free_size)
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
  %63 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 3
  %64 = load i8** %63, align 8
  %65 = bitcast i8* %64 to %struct.smptype_struct*
  %66 = call i32 @smpglobal_class(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), %struct.smptype_struct* %65, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %intclass, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  %67 = getelementptr inbounds %struct.obj_struct* %intclass, i32 0, i32 3
  %68 = load i8** %67, align 8
  %69 = bitcast i8* %68 to %struct.smptype_struct*
  %70 = bitcast %struct.smptype_struct* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_int to i8*), i8* %70, i64 64, i32 8, i1 false)
  call void @minihash_get(%struct.obj_struct* sret %2, %struct.minihash_struct* @smptype_ids, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  %71 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %72 = load i8** %71, align 8
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* @smptype_id_int, align 4
  %74 = bitcast %struct.obj_struct* %3 to i8*
  %75 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %4, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %5, %struct.obj_struct* byval %3, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), %struct.obj_struct* byval %4)
  %76 = bitcast %struct.obj_struct* %6 to i8*
  %77 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %7, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_add, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %8, %struct.obj_struct* byval %6, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), %struct.obj_struct* byval %7)
  %78 = bitcast %struct.obj_struct* %9 to i8*
  %79 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %10, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_sub, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %11, %struct.obj_struct* byval %9, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), %struct.obj_struct* byval %10)
  %80 = bitcast %struct.obj_struct* %12 to i8*
  %81 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %13, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_mul, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %14, %struct.obj_struct* byval %12, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), %struct.obj_struct* byval %13)
  %82 = bitcast %struct.obj_struct* %15 to i8*
  %83 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %16, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_div, i32 2, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %17, %struct.obj_struct* byval %15, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), %struct.obj_struct* byval %16)
  %84 = bitcast %struct.obj_struct* %18 to i8*
  %85 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %19, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_mod, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %20, %struct.obj_struct* byval %18, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.obj_struct* byval %19)
  %86 = bitcast %struct.obj_struct* %21 to i8*
  %87 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %22, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_shl, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %23, %struct.obj_struct* byval %21, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), %struct.obj_struct* byval %22)
  %88 = bitcast %struct.obj_struct* %24 to i8*
  %89 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %25, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_shr, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %26, %struct.obj_struct* byval %24, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), %struct.obj_struct* byval %25)
  %90 = bitcast %struct.obj_struct* %27 to i8*
  %91 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %28, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_and, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %29, %struct.obj_struct* byval %27, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), %struct.obj_struct* byval %28)
  %92 = bitcast %struct.obj_struct* %30 to i8*
  %93 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %31, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_ior, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %32, %struct.obj_struct* byval %30, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), %struct.obj_struct* byval %31)
  %94 = bitcast %struct.obj_struct* %33 to i8*
  %95 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %34, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_xor, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %35, %struct.obj_struct* byval %33, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str13, i32 0, i32 0), %struct.obj_struct* byval %34)
  %96 = bitcast %struct.obj_struct* %36 to i8*
  %97 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %37, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %38, %struct.obj_struct* byval %36, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0), %struct.obj_struct* byval %37)
  %98 = bitcast %struct.obj_struct* %39 to i8*
  %99 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %40, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_nequalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %41, %struct.obj_struct* byval %39, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), %struct.obj_struct* byval %40)
  %100 = bitcast %struct.obj_struct* %42 to i8*
  %101 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %43, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_lt, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %44, %struct.obj_struct* byval %42, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str18, i32 0, i32 0), %struct.obj_struct* byval %43)
  %102 = bitcast %struct.obj_struct* %45 to i8*
  %103 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %46, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_le, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %47, %struct.obj_struct* byval %45, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str19, i32 0, i32 0), %struct.obj_struct* byval %46)
  %104 = bitcast %struct.obj_struct* %48 to i8*
  %105 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %49, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_ge, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %50, %struct.obj_struct* byval %48, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0), %struct.obj_struct* byval %49)
  %106 = bitcast %struct.obj_struct* %51 to i8*
  %107 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %52, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_gt, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %53, %struct.obj_struct* byval %51, i32 0, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0), %struct.obj_struct* byval %52)
  %108 = bitcast %struct.obj_struct* %54 to i8*
  %109 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %55, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_eq, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %56, %struct.obj_struct* byval %54, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0), %struct.obj_struct* byval %55)
  %110 = bitcast %struct.obj_struct* %57 to i8*
  %111 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %110, i8* %111, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %58, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %59, %struct.obj_struct* byval %57, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), %struct.obj_struct* byval %58)
  %112 = bitcast %struct.obj_struct* %60 to i8*
  %113 = bitcast %struct.obj_struct* %intclass to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %61, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpint_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %62, %struct.obj_struct* byval %60, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 0), %struct.obj_struct* byval %61)
  call void @smpint_init_clong(%struct.obj_struct* sret @smpint_zero, i64 0)
  call void @smpint_init_clong(%struct.obj_struct* sret @smpint_one, i64 1)
  ret i32 0
}

declare void @__gmp_set_memory_functions(i8* (i64)*, i8* (i8*, i64, i64)*, void (i8*, i64)*)

declare i8* @smp_malloc(i64)

declare i8* @smp_realloc_size(i8*, i64, i64)

declare void @smp_free_size(i8*, i64)

declare i32 @smpglobal_class(i8*, %struct.smptype_struct*, i32)

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @minihash_get(%struct.obj_struct* sret, %struct.minihash_struct*, i8*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smpint_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to [1 x %struct.anon]*
  %6 = getelementptr inbounds [1 x %struct.anon]* %5, i32 0, i32 0
  call void @__gmpz_clear(%struct.anon* %6)
  %7 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

define void @smpint_add(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %res = alloca [1 x %0]*, align 8
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
  %12 = load i32* @smptype_id_int, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %32

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 16)
  %16 = bitcast i8* %15 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %16, [1 x %struct.anon]** %z, align 8
  %17 = load [1 x %struct.anon]** %z, align 8
  %18 = getelementptr inbounds [1 x %struct.anon]* %17, i32 0, i32 0
  call void @__gmpz_init(%struct.anon* %18)
  %19 = load [1 x %struct.anon]** %z, align 8
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
  call void @__gmpz_add(%struct.anon* %20, %struct.anon* %24, %struct.anon* %30)
  %31 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %31)
  br label %68

; <label>:32                                      ; preds = %0
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = getelementptr inbounds %struct.obj_struct* %34, i32 0, i32 2
  %36 = load %struct.smptype_struct** %35, align 8
  %37 = getelementptr inbounds %struct.smptype_struct* %36, i32 0, i32 1
  %38 = load i32* %37, align 4
  %39 = load i32* @smptype_id_float, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %61

; <label>:41                                      ; preds = %32
  %42 = call i8* @smp_malloc(i64 32)
  %43 = bitcast i8* %42 to [1 x %0]*
  store [1 x %0]* %43, [1 x %0]** %res, align 8
  %44 = load [1 x %0]** %res, align 8
  %45 = getelementptr inbounds [1 x %0]* %44, i32 0, i32 0
  call void @mpfr_init(%0* %45)
  %46 = load [1 x %0]** %res, align 8
  %47 = getelementptr inbounds [1 x %0]* %46, i32 0, i32 0
  %48 = load %struct.obj_struct** %2, align 8
  %49 = getelementptr inbounds %struct.obj_struct* %48, i64 0
  %50 = getelementptr inbounds %struct.obj_struct* %49, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %0]*
  %53 = getelementptr inbounds [1 x %0]* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %55 = load i8** %54, align 8
  %56 = bitcast i8* %55 to [1 x %struct.anon]*
  %57 = getelementptr inbounds [1 x %struct.anon]* %56, i32 0, i32 0
  %58 = load i32* @smp_mpfr_rnd, align 4
  %59 = call i32 @mpfr_add_z(%0* %47, %0* %53, %struct.anon* %57, i32 %58)
  %60 = load [1 x %0]** %res, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %0]* %60)
  br label %68

; <label>:61                                      ; preds = %32
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
  %62 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %63 = load %struct.smptype_struct** %62, align 8
  %64 = load %struct.obj_struct** %2, align 8
  %65 = getelementptr inbounds %struct.obj_struct* %64, i64 0
  %66 = bitcast %struct.obj_struct* %5 to i8*
  %67 = bitcast %struct.obj_struct* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %63, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %68

; <label>:68                                      ; preds = %61, %41, %14
  ret void
}

define void @smpint_sub(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %res = alloca [1 x %0]*, align 8
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
  %12 = load i32* @smptype_id_int, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %32

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 16)
  %16 = bitcast i8* %15 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %16, [1 x %struct.anon]** %z, align 8
  %17 = load [1 x %struct.anon]** %z, align 8
  %18 = getelementptr inbounds [1 x %struct.anon]* %17, i32 0, i32 0
  call void @__gmpz_init(%struct.anon* %18)
  %19 = load [1 x %struct.anon]** %z, align 8
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
  call void @__gmpz_sub(%struct.anon* %20, %struct.anon* %24, %struct.anon* %30)
  %31 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %31)
  br label %68

; <label>:32                                      ; preds = %0
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = getelementptr inbounds %struct.obj_struct* %34, i32 0, i32 2
  %36 = load %struct.smptype_struct** %35, align 8
  %37 = getelementptr inbounds %struct.smptype_struct* %36, i32 0, i32 1
  %38 = load i32* %37, align 4
  %39 = load i32* @smptype_id_float, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %61

; <label>:41                                      ; preds = %32
  %42 = call i8* @smp_malloc(i64 32)
  %43 = bitcast i8* %42 to [1 x %0]*
  store [1 x %0]* %43, [1 x %0]** %res, align 8
  %44 = load [1 x %0]** %res, align 8
  %45 = getelementptr inbounds [1 x %0]* %44, i32 0, i32 0
  call void @mpfr_init(%0* %45)
  %46 = load [1 x %0]** %res, align 8
  %47 = getelementptr inbounds [1 x %0]* %46, i32 0, i32 0
  %48 = load %struct.obj_struct** %2, align 8
  %49 = getelementptr inbounds %struct.obj_struct* %48, i64 0
  %50 = getelementptr inbounds %struct.obj_struct* %49, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %0]*
  %53 = getelementptr inbounds [1 x %0]* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %55 = load i8** %54, align 8
  %56 = bitcast i8* %55 to [1 x %struct.anon]*
  %57 = getelementptr inbounds [1 x %struct.anon]* %56, i32 0, i32 0
  %58 = load i32* @smp_mpfr_rnd, align 4
  %59 = call i32 @mpfr_sub_z(%0* %47, %0* %53, %struct.anon* %57, i32 %58)
  %60 = load [1 x %0]** %res, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %0]* %60)
  br label %68

; <label>:61                                      ; preds = %32
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
  %62 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %63 = load %struct.smptype_struct** %62, align 8
  %64 = load %struct.obj_struct** %2, align 8
  %65 = getelementptr inbounds %struct.obj_struct* %64, i64 0
  %66 = bitcast %struct.obj_struct* %5 to i8*
  %67 = bitcast %struct.obj_struct* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %63, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %68

; <label>:68                                      ; preds = %61, %41, %14
  ret void
}

define void @smpint_mul(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %res = alloca [1 x %0]*, align 8
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
  %12 = load i32* @smptype_id_int, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %32

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 16)
  %16 = bitcast i8* %15 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %16, [1 x %struct.anon]** %z, align 8
  %17 = load [1 x %struct.anon]** %z, align 8
  %18 = getelementptr inbounds [1 x %struct.anon]* %17, i32 0, i32 0
  call void @__gmpz_init(%struct.anon* %18)
  %19 = load [1 x %struct.anon]** %z, align 8
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
  call void @__gmpz_mul(%struct.anon* %20, %struct.anon* %24, %struct.anon* %30)
  %31 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %31)
  br label %68

; <label>:32                                      ; preds = %0
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = getelementptr inbounds %struct.obj_struct* %34, i32 0, i32 2
  %36 = load %struct.smptype_struct** %35, align 8
  %37 = getelementptr inbounds %struct.smptype_struct* %36, i32 0, i32 1
  %38 = load i32* %37, align 4
  %39 = load i32* @smptype_id_float, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %61

; <label>:41                                      ; preds = %32
  %42 = call i8* @smp_malloc(i64 32)
  %43 = bitcast i8* %42 to [1 x %0]*
  store [1 x %0]* %43, [1 x %0]** %res, align 8
  %44 = load [1 x %0]** %res, align 8
  %45 = getelementptr inbounds [1 x %0]* %44, i32 0, i32 0
  call void @mpfr_init(%0* %45)
  %46 = load [1 x %0]** %res, align 8
  %47 = getelementptr inbounds [1 x %0]* %46, i32 0, i32 0
  %48 = load %struct.obj_struct** %2, align 8
  %49 = getelementptr inbounds %struct.obj_struct* %48, i64 0
  %50 = getelementptr inbounds %struct.obj_struct* %49, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %0]*
  %53 = getelementptr inbounds [1 x %0]* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %55 = load i8** %54, align 8
  %56 = bitcast i8* %55 to [1 x %struct.anon]*
  %57 = getelementptr inbounds [1 x %struct.anon]* %56, i32 0, i32 0
  %58 = load i32* @smp_mpfr_rnd, align 4
  %59 = call i32 @mpfr_mul_z(%0* %47, %0* %53, %struct.anon* %57, i32 %58)
  %60 = load [1 x %0]** %res, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %0]* %60)
  br label %68

; <label>:61                                      ; preds = %32
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
  %62 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %63 = load %struct.smptype_struct** %62, align 8
  %64 = load %struct.obj_struct** %2, align 8
  %65 = getelementptr inbounds %struct.obj_struct* %64, i64 0
  %66 = bitcast %struct.obj_struct* %5 to i8*
  %67 = bitcast %struct.obj_struct* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %63, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %68

; <label>:68                                      ; preds = %61, %41, %14
  ret void
}

define void @smpint_div(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %res = alloca [1 x %0]*, align 8
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
  %12 = load i32* @smptype_id_int, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %32

; <label>:14                                      ; preds = %0
  %15 = call i8* @smp_malloc(i64 16)
  %16 = bitcast i8* %15 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %16, [1 x %struct.anon]** %z, align 8
  %17 = load [1 x %struct.anon]** %z, align 8
  %18 = getelementptr inbounds [1 x %struct.anon]* %17, i32 0, i32 0
  call void @__gmpz_init(%struct.anon* %18)
  %19 = load [1 x %struct.anon]** %z, align 8
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
  call void @__gmpz_fdiv_q(%struct.anon* %20, %struct.anon* %24, %struct.anon* %30)
  %31 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %31)
  br label %68

; <label>:32                                      ; preds = %0
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = getelementptr inbounds %struct.obj_struct* %34, i32 0, i32 2
  %36 = load %struct.smptype_struct** %35, align 8
  %37 = getelementptr inbounds %struct.smptype_struct* %36, i32 0, i32 1
  %38 = load i32* %37, align 4
  %39 = load i32* @smptype_id_float, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %61

; <label>:41                                      ; preds = %32
  %42 = call i8* @smp_malloc(i64 32)
  %43 = bitcast i8* %42 to [1 x %0]*
  store [1 x %0]* %43, [1 x %0]** %res, align 8
  %44 = load [1 x %0]** %res, align 8
  %45 = getelementptr inbounds [1 x %0]* %44, i32 0, i32 0
  call void @mpfr_init(%0* %45)
  %46 = load [1 x %0]** %res, align 8
  %47 = getelementptr inbounds [1 x %0]* %46, i32 0, i32 0
  %48 = load %struct.obj_struct** %2, align 8
  %49 = getelementptr inbounds %struct.obj_struct* %48, i64 0
  %50 = getelementptr inbounds %struct.obj_struct* %49, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = bitcast i8* %51 to [1 x %0]*
  %53 = getelementptr inbounds [1 x %0]* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %55 = load i8** %54, align 8
  %56 = bitcast i8* %55 to [1 x %struct.anon]*
  %57 = getelementptr inbounds [1 x %struct.anon]* %56, i32 0, i32 0
  %58 = load i32* @smp_mpfr_rnd, align 4
  %59 = call i32 @mpfr_div_z(%0* %47, %0* %53, %struct.anon* %57, i32 %58)
  %60 = load [1 x %0]** %res, align 8
  call void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret %agg.result, [1 x %0]* %60)
  br label %68

; <label>:61                                      ; preds = %32
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
  %62 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 2
  %63 = load %struct.smptype_struct** %62, align 8
  %64 = load %struct.obj_struct** %2, align 8
  %65 = getelementptr inbounds %struct.obj_struct* %64, i64 0
  %66 = bitcast %struct.obj_struct* %5 to i8*
  %67 = bitcast %struct.obj_struct* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %63, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %68

; <label>:68                                      ; preds = %61, %41, %14
  ret void
}

define void @smpint_mod(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smptype_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smptype_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smptype_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %31

; <label>:13                                      ; preds = %0
  %14 = call i8* @smp_malloc(i64 16)
  %15 = bitcast i8* %14 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %15, [1 x %struct.anon]** %z, align 8
  %16 = load [1 x %struct.anon]** %z, align 8
  %17 = getelementptr inbounds [1 x %struct.anon]* %16, i32 0, i32 0
  call void @__gmpz_init(%struct.anon* %17)
  %18 = load [1 x %struct.anon]** %z, align 8
  %19 = getelementptr inbounds [1 x %struct.anon]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to [1 x %struct.anon]*
  %23 = getelementptr inbounds [1 x %struct.anon]* %22, i32 0, i32 0
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 3
  %27 = load i8** %26, align 8
  %28 = bitcast i8* %27 to [1 x %struct.anon]*
  %29 = getelementptr inbounds [1 x %struct.anon]* %28, i32 0, i32 0
  call void @__gmpz_mod(%struct.anon* %19, %struct.anon* %23, %struct.anon* %29)
  %30 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %30)
  br label %36

; <label>:31                                      ; preds = %0
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %4 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* @smptype_int, %struct.obj_struct* byval %4)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %36

; <label>:36                                      ; preds = %31, %13
  ret void
}

define void @smpint_shl(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %x = alloca [1 x %struct.anon]*, align 8
  %bits = alloca i64, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smptype_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smptype_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smptype_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %41

; <label>:13                                      ; preds = %0
  %14 = load %struct.obj_struct** %2, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 0
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %18, [1 x %struct.anon]** %x, align 8
  %19 = load [1 x %struct.anon]** %x, align 8
  %20 = getelementptr inbounds [1 x %struct.anon]* %19, i32 0, i32 0
  %21 = call i32 @__gmpz_fits_ulong_p(%struct.anon* %20) readonly
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %13
  %24 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %46

; <label>:25                                      ; preds = %13
  %26 = load [1 x %struct.anon]** %x, align 8
  %27 = getelementptr inbounds [1 x %struct.anon]* %26, i32 0, i32 0
  %28 = call i64 @__gmpz_get_ui(%struct.anon* %27) readonly
  store i64 %28, i64* %bits, align 8
  %29 = call i8* @smp_malloc(i64 16)
  %30 = bitcast i8* %29 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %30, [1 x %struct.anon]** %z, align 8
  %31 = load [1 x %struct.anon]** %z, align 8
  %32 = getelementptr inbounds [1 x %struct.anon]* %31, i32 0, i32 0
  call void @__gmpz_init(%struct.anon* %32)
  %33 = load [1 x %struct.anon]** %z, align 8
  %34 = getelementptr inbounds [1 x %struct.anon]* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to [1 x %struct.anon]*
  %38 = getelementptr inbounds [1 x %struct.anon]* %37, i32 0, i32 0
  %39 = load i64* %bits, align 8
  call void @__gmpz_mul_2exp(%struct.anon* %34, %struct.anon* %38, i64 %39)
  %40 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %40)
  br label %46

; <label>:41                                      ; preds = %0
  %42 = load %struct.obj_struct** %2, align 8
  %43 = getelementptr inbounds %struct.obj_struct* %42, i64 0
  %44 = bitcast %struct.obj_struct* %4 to i8*
  %45 = bitcast %struct.obj_struct* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* @smptype_int, %struct.obj_struct* byval %4)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %46

; <label>:46                                      ; preds = %41, %25, %23
  ret void
}

define void @smpint_shr(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %x = alloca [1 x %struct.anon]*, align 8
  %bits = alloca i64, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smptype_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smptype_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smptype_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %41

; <label>:13                                      ; preds = %0
  %14 = load %struct.obj_struct** %2, align 8
  %15 = getelementptr inbounds %struct.obj_struct* %14, i64 0
  %16 = getelementptr inbounds %struct.obj_struct* %15, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = bitcast i8* %17 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %18, [1 x %struct.anon]** %x, align 8
  %19 = load [1 x %struct.anon]** %x, align 8
  %20 = getelementptr inbounds [1 x %struct.anon]* %19, i32 0, i32 0
  %21 = call i32 @__gmpz_fits_ulong_p(%struct.anon* %20) readonly
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %13
  %24 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %46

; <label>:25                                      ; preds = %13
  %26 = load [1 x %struct.anon]** %x, align 8
  %27 = getelementptr inbounds [1 x %struct.anon]* %26, i32 0, i32 0
  %28 = call i64 @__gmpz_get_ui(%struct.anon* %27) readonly
  store i64 %28, i64* %bits, align 8
  %29 = call i8* @smp_malloc(i64 16)
  %30 = bitcast i8* %29 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %30, [1 x %struct.anon]** %z, align 8
  %31 = load [1 x %struct.anon]** %z, align 8
  %32 = getelementptr inbounds [1 x %struct.anon]* %31, i32 0, i32 0
  call void @__gmpz_init(%struct.anon* %32)
  %33 = load [1 x %struct.anon]** %z, align 8
  %34 = getelementptr inbounds [1 x %struct.anon]* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %36 = load i8** %35, align 8
  %37 = bitcast i8* %36 to [1 x %struct.anon]*
  %38 = getelementptr inbounds [1 x %struct.anon]* %37, i32 0, i32 0
  %39 = load i64* %bits, align 8
  call void @__gmpz_fdiv_q_2exp(%struct.anon* %34, %struct.anon* %38, i64 %39)
  %40 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %40)
  br label %46

; <label>:41                                      ; preds = %0
  %42 = load %struct.obj_struct** %2, align 8
  %43 = getelementptr inbounds %struct.obj_struct* %42, i64 0
  %44 = bitcast %struct.obj_struct* %4 to i8*
  %45 = bitcast %struct.obj_struct* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* @smptype_int, %struct.obj_struct* byval %4)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %46

; <label>:46                                      ; preds = %41, %25, %23
  ret void
}

define void @smpint_and(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smptype_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smptype_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smptype_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %31

; <label>:13                                      ; preds = %0
  %14 = call i8* @smp_malloc(i64 16)
  %15 = bitcast i8* %14 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %15, [1 x %struct.anon]** %z, align 8
  %16 = load [1 x %struct.anon]** %z, align 8
  %17 = getelementptr inbounds [1 x %struct.anon]* %16, i32 0, i32 0
  call void @__gmpz_init(%struct.anon* %17)
  %18 = load [1 x %struct.anon]** %z, align 8
  %19 = getelementptr inbounds [1 x %struct.anon]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to [1 x %struct.anon]*
  %23 = getelementptr inbounds [1 x %struct.anon]* %22, i32 0, i32 0
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 3
  %27 = load i8** %26, align 8
  %28 = bitcast i8* %27 to [1 x %struct.anon]*
  %29 = getelementptr inbounds [1 x %struct.anon]* %28, i32 0, i32 0
  call void @__gmpz_and(%struct.anon* %19, %struct.anon* %23, %struct.anon* %29)
  %30 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %30)
  br label %36

; <label>:31                                      ; preds = %0
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %4 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* @smptype_int, %struct.obj_struct* byval %4)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %36

; <label>:36                                      ; preds = %31, %13
  ret void
}

define void @smpint_ior(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smptype_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smptype_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smptype_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %31

; <label>:13                                      ; preds = %0
  %14 = call i8* @smp_malloc(i64 16)
  %15 = bitcast i8* %14 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %15, [1 x %struct.anon]** %z, align 8
  %16 = load [1 x %struct.anon]** %z, align 8
  %17 = getelementptr inbounds [1 x %struct.anon]* %16, i32 0, i32 0
  call void @__gmpz_init(%struct.anon* %17)
  %18 = load [1 x %struct.anon]** %z, align 8
  %19 = getelementptr inbounds [1 x %struct.anon]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to [1 x %struct.anon]*
  %23 = getelementptr inbounds [1 x %struct.anon]* %22, i32 0, i32 0
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 3
  %27 = load i8** %26, align 8
  %28 = bitcast i8* %27 to [1 x %struct.anon]*
  %29 = getelementptr inbounds [1 x %struct.anon]* %28, i32 0, i32 0
  call void @__gmpz_ior(%struct.anon* %19, %struct.anon* %23, %struct.anon* %29)
  %30 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %30)
  br label %36

; <label>:31                                      ; preds = %0
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %4 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* @smptype_int, %struct.obj_struct* byval %4)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %36

; <label>:36                                      ; preds = %31, %13
  ret void
}

define void @smpint_xor(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = load %struct.obj_struct** %2, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smptype_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smptype_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smptype_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %31

; <label>:13                                      ; preds = %0
  %14 = call i8* @smp_malloc(i64 16)
  %15 = bitcast i8* %14 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %15, [1 x %struct.anon]** %z, align 8
  %16 = load [1 x %struct.anon]** %z, align 8
  %17 = getelementptr inbounds [1 x %struct.anon]* %16, i32 0, i32 0
  call void @__gmpz_init(%struct.anon* %17)
  %18 = load [1 x %struct.anon]** %z, align 8
  %19 = getelementptr inbounds [1 x %struct.anon]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to [1 x %struct.anon]*
  %23 = getelementptr inbounds [1 x %struct.anon]* %22, i32 0, i32 0
  %24 = load %struct.obj_struct** %2, align 8
  %25 = getelementptr inbounds %struct.obj_struct* %24, i64 0
  %26 = getelementptr inbounds %struct.obj_struct* %25, i32 0, i32 3
  %27 = load i8** %26, align 8
  %28 = bitcast i8* %27 to [1 x %struct.anon]*
  %29 = getelementptr inbounds [1 x %struct.anon]* %28, i32 0, i32 0
  call void @__gmpz_xor(%struct.anon* %19, %struct.anon* %23, %struct.anon* %29)
  %30 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %30)
  br label %36

; <label>:31                                      ; preds = %0
  %32 = load %struct.obj_struct** %2, align 8
  %33 = getelementptr inbounds %struct.obj_struct* %32, i64 0
  %34 = bitcast %struct.obj_struct* %4 to i8*
  %35 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* @smptype_int, %struct.obj_struct* byval %4)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %36

; <label>:36                                      ; preds = %31, %13
  ret void
}

define void @smpint_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpint_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
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

define void @smpint_nequalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpint_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
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

define void @smpint_lt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpint_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
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

define void @smpint_le(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpint_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
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

define void @smpint_ge(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpint_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
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

define void @smpint_gt(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpint_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
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

define void @smpint_eq(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  call void @smpint_equalp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3, i32 %6, %struct.obj_struct* %7)
  ret void
}

define void @smpint_to_s(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %base = alloca i32, align 4
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %str = alloca i8*, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  store i32 10, i32* %base, align 4
  %6 = load i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %56

; <label>:8                                       ; preds = %0
  %9 = load %struct.obj_struct** %2, align 8
  %10 = getelementptr inbounds %struct.obj_struct* %9, i64 0
  %11 = getelementptr inbounds %struct.obj_struct* %10, i32 0, i32 2
  %12 = load %struct.smptype_struct** %11, align 8
  %13 = call i32 @smpobj_instancep_cstr(%struct.smptype_struct* %12, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %37, label %15

; <label>:15                                      ; preds = %8
  %16 = load %struct.obj_struct** %2, align 8
  %17 = getelementptr inbounds %struct.obj_struct* %16, i64 0
  %18 = getelementptr inbounds %struct.obj_struct* %17, i32 0, i32 2
  %19 = load %struct.smptype_struct** %18, align 8
  %20 = getelementptr inbounds %struct.smptype_struct* %19, i32 0, i32 0
  %21 = load i8** %20, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8]* @.str26, i32 0, i32 0))
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

; <label>:24                                      ; preds = %15
  %25 = load %struct.obj_struct** %2, align 8
  %26 = getelementptr inbounds %struct.obj_struct* %25, i64 0
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  %28 = bitcast %struct.obj_struct* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  br label %63

; <label>:29                                      ; preds = %15
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0))
  %30 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %31 = load i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.smptype_struct*
  %33 = load %struct.obj_struct** %2, align 8
  %34 = getelementptr inbounds %struct.obj_struct* %33, i64 0
  %35 = bitcast %struct.obj_struct* %5 to i8*
  %36 = bitcast %struct.obj_struct* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %3, %struct.smptype_struct* %32, %struct.obj_struct* byval %5)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %63

; <label>:37                                      ; preds = %8
  %38 = load %struct.obj_struct** %2, align 8
  %39 = getelementptr inbounds %struct.obj_struct* %38, i64 0
  %40 = getelementptr inbounds %struct.obj_struct* %39, i32 0, i32 3
  %41 = load i8** %40, align 8
  %42 = bitcast i8* %41 to [1 x %struct.anon]*
  %43 = getelementptr inbounds [1 x %struct.anon]* %42, i32 0, i32 0
  %44 = call i32 @__gmpz_fits_sint_p(%struct.anon* %43) readonly
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

; <label>:46                                      ; preds = %37
  %47 = load %struct.obj_struct** %2, align 8
  %48 = getelementptr inbounds %struct.obj_struct* %47, i64 0
  %49 = getelementptr inbounds %struct.obj_struct* %48, i32 0, i32 3
  %50 = load i8** %49, align 8
  %51 = bitcast i8* %50 to [1 x %struct.anon]*
  %52 = getelementptr inbounds [1 x %struct.anon]* %51, i32 0, i32 0
  %53 = call i64 @__gmpz_get_si(%struct.anon* %52) readonly
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %base, align 4
  br label %55

; <label>:55                                      ; preds = %46, %37
  br label %56

; <label>:56                                      ; preds = %55, %0
  %57 = load i32* %base, align 4
  %58 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %59 = load i8** %58, align 8
  %60 = bitcast i8* %59 to [1 x %struct.anon]*
  %61 = getelementptr inbounds [1 x %struct.anon]* %60, i32 0, i32 0
  %62 = call i8* @__gmpz_get_str(i8* null, i32 %57, %struct.anon* %61)
  store i8* %62, i8** %str, align 8
  call void @smpstr_init_ref(%struct.obj_struct* sret %agg.result, i8** %str)
  br label %63

; <label>:63                                      ; preds = %56, %29, %24
  ret void
}

define void @smpint_init_clong(%struct.obj_struct* sret %agg.result, i64 %x) nounwind {
  %1 = alloca i64, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %res = alloca %struct.obj_struct, align 8
  store i64 %x, i64* %1, align 8
  %2 = call i8* @smp_malloc(i64 16)
  %3 = bitcast i8* %2 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %3, [1 x %struct.anon]** %z, align 8
  %4 = load [1 x %struct.anon]** %z, align 8
  %5 = getelementptr inbounds [1 x %struct.anon]* %4, i32 0, i32 0
  %6 = load i64* %1, align 8
  call void @__gmpz_init_set_si(%struct.anon* %5, i64 %6)
  %7 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %res, [1 x %struct.anon]* %7)
  %8 = bitcast %struct.obj_struct* %agg.result to i8*
  %9 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  ret void
}

define void @smpint_init_mpz(%struct.obj_struct* sret %agg.result, %struct.anon* %x) nounwind {
  %1 = alloca %struct.anon*, align 8
  %res = alloca %struct.obj_struct, align 8
  store %struct.anon* %x, %struct.anon** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_int)
  %2 = call i8* @smp_malloc(i64 16)
  %3 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %2, i8** %3, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to [1 x %struct.anon]*
  %7 = getelementptr inbounds [1 x %struct.anon]* %6, i32 0, i32 0
  %8 = load %struct.anon** %1, align 8
  call void @__gmpz_init_set(%struct.anon* %7, %struct.anon* %8)
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  %10 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  ret void
}

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

declare void @__gmpz_init_set(%struct.anon*, %struct.anon*)

define void @smpint_init_mpz_ref(%struct.obj_struct* sret %agg.result, [1 x %struct.anon]* %x) nounwind {
  %1 = alloca [1 x %struct.anon]*, align 8
  %res = alloca %struct.obj_struct, align 8
  store [1 x %struct.anon]* %x, [1 x %struct.anon]** %1, align 8
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_int)
  %2 = load [1 x %struct.anon]** %1, align 8
  %3 = bitcast [1 x %struct.anon]* %2 to i8*
  %4 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %3, i8** %4, align 8
  %5 = bitcast %struct.obj_struct* %agg.result to i8*
  %6 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  ret void
}

declare void @__gmpz_init_set_si(%struct.anon*, i64)

define void @smpint_init_str(%struct.obj_struct* sret %agg.result, i8* %str) nounwind {
  %1 = alloca i8*, align 8
  %z = alloca [1 x %struct.anon]*, align 8
  %res = alloca %struct.obj_struct, align 8
  store i8* %str, i8** %1, align 8
  %2 = call i8* @smp_malloc(i64 16)
  %3 = bitcast i8* %2 to [1 x %struct.anon]*
  store [1 x %struct.anon]* %3, [1 x %struct.anon]** %z, align 8
  %4 = load [1 x %struct.anon]** %z, align 8
  %5 = getelementptr inbounds [1 x %struct.anon]* %4, i32 0, i32 0
  %6 = load i8** %1, align 8
  %7 = call i32 @__gmpz_init_set_str(%struct.anon* %5, i8* %6, i32 0)
  %8 = load [1 x %struct.anon]** %z, align 8
  call void @smpint_init_mpz_ref(%struct.obj_struct* sret %res, [1 x %struct.anon]* %8)
  %9 = bitcast %struct.obj_struct* %agg.result to i8*
  %10 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  ret void
}

declare i32 @__gmpz_init_set_str(%struct.anon*, i8*, i32)

declare void @__gmpz_clear(%struct.anon*)

declare void @__gmpz_init(%struct.anon*)

declare void @__gmpz_add(%struct.anon*, %struct.anon*, %struct.anon*)

declare void @mpfr_init(%0*)

declare i32 @mpfr_add_z(%0*, %0*, %struct.anon*, i32)

declare void @smpfloat_init_mpfr_ref(%struct.obj_struct* sret, [1 x %0]*)

declare void @smpglobal_throw(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smptypeerr_init(%struct.obj_struct* sret, %struct.smptype_struct*, %struct.obj_struct* byval)

declare void @__gmpz_sub(%struct.anon*, %struct.anon*, %struct.anon*)

declare i32 @mpfr_sub_z(%0*, %0*, %struct.anon*, i32)

declare void @__gmpz_mul(%struct.anon*, %struct.anon*, %struct.anon*)

declare i32 @mpfr_mul_z(%0*, %0*, %struct.anon*, i32)

declare void @__gmpz_fdiv_q(%struct.anon*, %struct.anon*, %struct.anon*)

declare i32 @mpfr_div_z(%0*, %0*, %struct.anon*, i32)

declare void @__gmpz_mod(%struct.anon*, %struct.anon*, %struct.anon*)

declare i32 @__gmpz_fits_ulong_p(%struct.anon*) readonly

declare i64 @__gmpz_get_ui(%struct.anon*) readonly

declare void @__gmpz_mul_2exp(%struct.anon*, %struct.anon*, i64)

declare void @__gmpz_fdiv_q_2exp(%struct.anon*, %struct.anon*, i64)

declare void @__gmpz_and(%struct.anon*, %struct.anon*, %struct.anon*)

declare void @__gmpz_ior(%struct.anon*, %struct.anon*, %struct.anon*)

declare void @__gmpz_xor(%struct.anon*, %struct.anon*, %struct.anon*)

define i32 @smpint_cmp_cint(%struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.obj_struct*, align 8
  %num = alloca i32, align 4
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %2, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %3, align 8
  %5 = load %struct.obj_struct** %3, align 8
  %6 = getelementptr inbounds %struct.obj_struct* %5, i64 0
  %7 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 2
  %8 = load %struct.smptype_struct** %7, align 8
  %9 = getelementptr inbounds %struct.smptype_struct* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load i32* @smptype_id_int, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %34

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %15 = load i8** %14, align 8
  %16 = bitcast i8* %15 to [1 x %struct.anon]*
  %17 = getelementptr inbounds [1 x %struct.anon]* %16, i32 0, i32 0
  %18 = load %struct.obj_struct** %3, align 8
  %19 = getelementptr inbounds %struct.obj_struct* %18, i64 0
  %20 = getelementptr inbounds %struct.obj_struct* %19, i32 0, i32 3
  %21 = load i8** %20, align 8
  %22 = bitcast i8* %21 to [1 x %struct.anon]*
  %23 = getelementptr inbounds [1 x %struct.anon]* %22, i32 0, i32 0
  %24 = call i32 @__gmpz_cmp(%struct.anon* %17, %struct.anon* %23) readonly
  store i32 %24, i32* %num, align 4
  %25 = load i32* %num, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %13
  store i32 1, i32* %num, align 4
  br label %28

; <label>:28                                      ; preds = %27, %13
  %29 = load i32* %num, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %28
  store i32 -1, i32* %num, align 4
  br label %32

; <label>:32                                      ; preds = %31, %28
  %33 = load i32* %num, align 4
  store i32 %33, i32* %1
  br label %50

; <label>:34                                      ; preds = %0
  %35 = load %struct.obj_struct** %3, align 8
  %36 = getelementptr inbounds %struct.obj_struct* %35, i64 0
  %37 = getelementptr inbounds %struct.obj_struct* %36, i32 0, i32 2
  %38 = load %struct.smptype_struct** %37, align 8
  %39 = getelementptr inbounds %struct.smptype_struct* %38, i32 0, i32 1
  %40 = load i32* %39, align 4
  %41 = load i32* @smptype_id_float, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

; <label>:43                                      ; preds = %34
  %44 = load %struct.obj_struct** %3, align 8
  %45 = getelementptr inbounds %struct.obj_struct* %44, i64 0
  %46 = bitcast %struct.obj_struct* %4 to i8*
  %47 = bitcast %struct.obj_struct* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  %48 = call i32 @smpfloat_cmp_cint(%struct.obj_struct* byval %4, i32 1, %struct.obj_struct* %obj)
  store i32 %48, i32* %1
  br label %50

; <label>:49                                      ; preds = %34
  store i32 -2, i32* %1
  br label %50

; <label>:50                                      ; preds = %49, %43, %32
  %51 = load i32* %1
  ret i32 %51
}

declare i32 @__gmpz_cmp(%struct.anon*, %struct.anon*) readonly

declare i32 @smpfloat_cmp_cint(%struct.obj_struct* byval, i32, %struct.obj_struct*)

define void @smpint_cmp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
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
  %11 = call i32 @smpint_cmp_cint(%struct.obj_struct* byval %3, i32 %9, %struct.obj_struct* %10)
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 2
  %16 = load %struct.smptype_struct** %15, align 8
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = bitcast %struct.obj_struct* %6 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %4, %struct.smptype_struct* %16, %struct.obj_struct* byval %6)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %4)
  br label %24

; <label>:21                                      ; preds = %0
  %22 = load i32* %num, align 4
  %23 = sext i32 %22 to i64
  call void @smpint_init_clong(%struct.obj_struct* sret %agg.result, i64 %23)
  br label %24

; <label>:24                                      ; preds = %21, %14
  ret void
}

declare void @smpbool_init(%struct.obj_struct* sret, i32)

define i64 @smpint_to_clong(%struct.obj_struct* byval %obj) nounwind {
  %1 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %2 = load i8** %1, align 8
  %3 = bitcast i8* %2 to [1 x %struct.anon]*
  %4 = getelementptr inbounds [1 x %struct.anon]* %3, i32 0, i32 0
  %5 = call i64 @__gmpz_get_si(%struct.anon* %4) readonly
  ret i64 %5
}

declare i64 @__gmpz_get_si(%struct.anon*) readonly

declare i32 @smpobj_instancep_cstr(%struct.smptype_struct*, i8*)

declare i32 @strcmp(i8*, i8*)

declare i32 @__gmpz_fits_sint_p(%struct.anon*) readonly

declare i8* @__gmpz_get_str(i8*, i32, %struct.anon*)

declare void @smpstr_init_ref(%struct.obj_struct* sret, i8**)
