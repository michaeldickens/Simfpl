; ModuleID = 'tests.c'
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

@smptest_print_successesp = common global i32 0, align 4
@.str = private constant [7 x i8] c"equal?\00"
@.str1 = private constant [23 x i8] c"success: %s equals %s\0A\00"
@.str2 = private constant [33 x i8] c"failure: %s expected, %s found.\0A\00"
@.str3 = private constant [2 x i8] c"x\00"
@.str4 = private constant [2 x i8] c"y\00"
@.str5 = private constant [2 x i8] c"+\00"
@.str6 = private constant [2 x i8] c"-\00"
@.str7 = private constant [2 x i8] c"*\00"
@.str8 = private constant [2 x i8] c"/\00"
@.str9 = private constant [2 x i8] c"%\00"
@.str10 = private constant [3 x i8] c"<<\00"
@.str11 = private constant [3 x i8] c">>\00"
@.str12 = private constant [2 x i8] c"&\00"
@.str13 = private constant [2 x i8] c"|\00"
@.str14 = private constant [2 x i8] c"^\00"
@.str15 = private constant [3 x i8] c"==\00"
@.str16 = private constant [3 x i8] c"!=\00"
@.str17 = private constant [2 x i8] c"<\00"
@.str18 = private constant [3 x i8] c"<=\00"
@.str19 = private constant [3 x i8] c">=\00"
@.str20 = private constant [2 x i8] c">\00"
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@.str21 = private constant [6 x i8] c"World\00"
@.str22 = private constant [42 x i8] c"Hello, %w! Mad %s, Wayne's %s, Disney %s.\00"
@.str23 = private constant [60 x i8] c"Hello, World! Mad \22World\22, Wayne's \22World\22, Disney \22World\22.\00"
@.str24 = private constant [30 x i8] c"various types: %d, %f, %x, %o\00"
@.str25 = private constant [8 x i8] c"Integer\00"
@.str26 = private constant [10 x i8] c"make_list\00"
@.str27 = private constant [5 x i8] c"List\00"
@.str28 = private constant [3 x i8] c"xs\00"
@smpint_zero = common global %struct.obj_struct zeroinitializer, align 8
@.str29 = private constant [5 x i8] c"cons\00"
@smpint_one = common global %struct.obj_struct zeroinitializer, align 8
@.str30 = private constant [6 x i8] c"clear\00"
@.str31 = private constant [7 x i8] c"Thrown\00"
@.str32 = private constant [16 x i8] c"not a real type\00"
@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@gc_add_objectsp = common global i32 0, align 4
@.str33 = private constant [16 x i8] c"^[0123456789]+$\00"
@.str34 = private constant [9 x i8] c"09821409\00"
@.str35 = private constant [6 x i8] c"array\00"
@.str36 = private constant [12 x i8] c"What is Pi?\00"
@.str37 = private constant [10 x i8] c"second pi\00"
@.str38 = private constant [8 x i8] c"pi: %s\0A\00"
@.str39 = private constant [5 x i8] c"Card\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@.str40 = private constant [21 x i8] c"\0A\0ATests succeeded.\0A\0A\00"
@.str41 = private constant [18 x i8] c"\0A\0ATests failed.\0A\0A\00"
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
@smp_mpfr_rnd = common global i32 0, align 4
@smp_mpfr_default_prec = common global i64 0, align 8

define i32 @test_init() nounwind {
  store i32 0, i32* @smptest_print_successesp, align 4
  ret i32 0
}

define i32 @smp_assert_eq(%struct.obj_struct* byval %expected, %struct.obj_struct* byval %found) nounwind {
  %obj = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %equalp = alloca i32, align 4
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  %11 = bitcast %struct.obj_struct* %1 to i8*
  %12 = bitcast %struct.obj_struct* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %obj, %struct.obj_struct* byval %1, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 1, %struct.obj_struct* %found)
  %13 = bitcast %struct.obj_struct* %2 to i8*
  %14 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  %15 = call i32 @smpbool_to_cint(%struct.obj_struct* byval %2)
  store i32 %15, i32* %equalp, align 4
  %16 = load i32* %equalp, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

; <label>:18                                      ; preds = %0
  %19 = load i32* @smptest_print_successesp, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

; <label>:21                                      ; preds = %18
  %22 = bitcast %struct.obj_struct* %3 to i8*
  %23 = bitcast %struct.obj_struct* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  %24 = bitcast %struct.obj_struct* %4 to i8*
  %25 = bitcast %struct.obj_struct* %found to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, i8*, ...)* @smp_printf(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  br label %35

; <label>:26                                      ; preds = %18, %0
  %27 = load i32* %equalp, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

; <label>:29                                      ; preds = %26
  %30 = bitcast %struct.obj_struct* %6 to i8*
  %31 = bitcast %struct.obj_struct* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  %32 = bitcast %struct.obj_struct* %7 to i8*
  %33 = bitcast %struct.obj_struct* %found to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, i8*, ...)* @smp_printf(%struct.obj_struct* sret %8, i8* getelementptr inbounds ([33 x i8]* @.str2, i32 0, i32 0), %struct.obj_struct* byval %6, %struct.obj_struct* byval %7)
  br label %34

; <label>:34                                      ; preds = %29, %26
  br label %35

; <label>:35                                      ; preds = %34, %21
  call void @obj_clear(%struct.obj_struct* sret %9, %struct.obj_struct* %expected)
  call void @obj_clear(%struct.obj_struct* sret %10, %struct.obj_struct* %found)
  %36 = load i32* %equalp, align 4
  ret i32 %36
}

declare void @smpobj_funcall(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, i32, %struct.obj_struct*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i32 @smpbool_to_cint(%struct.obj_struct* byval)

declare void @smp_printf(%struct.obj_struct* sret, i8*, ...)

declare void @obj_clear(%struct.obj_struct* sret, %struct.obj_struct*)

define i32 @test_nums() nounwind {
  %x = alloca %struct.obj_struct, align 8
  %y = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %successp = alloca i32, align 4
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
  %63 = alloca %struct.obj_struct, align 8
  %64 = alloca %struct.obj_struct, align 8
  %65 = alloca %struct.obj_struct, align 8
  %66 = alloca %struct.obj_struct, align 8
  %67 = alloca %struct.obj_struct, align 8
  %68 = alloca %struct.obj_struct, align 8
  %69 = alloca %struct.obj_struct, align 8
  %70 = alloca %struct.obj_struct, align 8
  %71 = alloca %struct.obj_struct, align 8
  %72 = alloca %struct.obj_struct, align 8
  %73 = alloca %struct.obj_struct, align 8
  %74 = alloca %struct.obj_struct, align 8
  %75 = alloca %struct.obj_struct, align 8
  %76 = alloca %struct.obj_struct, align 8
  %77 = alloca %struct.obj_struct, align 8
  %78 = alloca %struct.obj_struct, align 8
  %79 = alloca %struct.obj_struct, align 8
  %80 = alloca %struct.obj_struct, align 8
  %81 = alloca %struct.obj_struct, align 8
  %82 = alloca %struct.obj_struct, align 8
  call void @smpint_init_clong(%struct.obj_struct* sret %x, i64 4)
  call void @smpint_init_clong(%struct.obj_struct* sret %y, i64 7)
  %83 = bitcast %struct.obj_struct* %1 to i8*
  %84 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 32, i32 8, i1 false)
  %85 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), %struct.obj_struct* byval %1)
  %86 = bitcast %struct.obj_struct* %2 to i8*
  %87 = bitcast %struct.obj_struct* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 32, i32 8, i1 false)
  %88 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), %struct.obj_struct* byval %2)
  store i32 1, i32* %successp, align 4
  call void @smpint_init_clong(%struct.obj_struct* sret %3, i64 11)
  %89 = bitcast %struct.obj_struct* %5 to i8*
  %90 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %4, %struct.obj_struct* byval %5, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %91 = call i32 @smp_assert_eq(%struct.obj_struct* byval %3, %struct.obj_struct* byval %4)
  %92 = load i32* %successp, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %successp, align 4
  call void @smpint_init_clong(%struct.obj_struct* sret %6, i64 -3)
  %94 = bitcast %struct.obj_struct* %8 to i8*
  %95 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %7, %struct.obj_struct* byval %8, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %96 = call i32 @smp_assert_eq(%struct.obj_struct* byval %6, %struct.obj_struct* byval %7)
  %97 = load i32* %successp, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %successp, align 4
  call void @smpint_init_clong(%struct.obj_struct* sret %9, i64 28)
  %99 = bitcast %struct.obj_struct* %11 to i8*
  %100 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* %100, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %10, %struct.obj_struct* byval %11, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %101 = call i32 @smp_assert_eq(%struct.obj_struct* byval %9, %struct.obj_struct* byval %10)
  %102 = load i32* %successp, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %successp, align 4
  call void @smpint_init_clong(%struct.obj_struct* sret %12, i64 0)
  %104 = bitcast %struct.obj_struct* %14 to i8*
  %105 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %13, %struct.obj_struct* byval %14, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %106 = call i32 @smp_assert_eq(%struct.obj_struct* byval %12, %struct.obj_struct* byval %13)
  %107 = load i32* %successp, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %successp, align 4
  call void @smpint_init_clong(%struct.obj_struct* sret %15, i64 4)
  %109 = bitcast %struct.obj_struct* %17 to i8*
  %110 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %16, %struct.obj_struct* byval %17, i8* getelementptr inbounds ([2 x i8]* @.str9, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %111 = call i32 @smp_assert_eq(%struct.obj_struct* byval %15, %struct.obj_struct* byval %16)
  %112 = load i32* %successp, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %successp, align 4
  call void @smpint_init_clong(%struct.obj_struct* sret %18, i64 512)
  %114 = bitcast %struct.obj_struct* %20 to i8*
  %115 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %19, %struct.obj_struct* byval %20, i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %116 = call i32 @smp_assert_eq(%struct.obj_struct* byval %18, %struct.obj_struct* byval %19)
  %117 = load i32* %successp, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %successp, align 4
  call void @smpint_init_clong(%struct.obj_struct* sret %21, i64 0)
  %119 = bitcast %struct.obj_struct* %23 to i8*
  %120 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %22, %struct.obj_struct* byval %23, i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %121 = call i32 @smp_assert_eq(%struct.obj_struct* byval %21, %struct.obj_struct* byval %22)
  %122 = load i32* %successp, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %successp, align 4
  call void @smpint_init_clong(%struct.obj_struct* sret %24, i64 4)
  %124 = bitcast %struct.obj_struct* %26 to i8*
  %125 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %125, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %25, %struct.obj_struct* byval %26, i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %126 = call i32 @smp_assert_eq(%struct.obj_struct* byval %24, %struct.obj_struct* byval %25)
  %127 = load i32* %successp, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %successp, align 4
  call void @smpint_init_clong(%struct.obj_struct* sret %27, i64 7)
  %129 = bitcast %struct.obj_struct* %29 to i8*
  %130 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %130, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %28, %struct.obj_struct* byval %29, i8* getelementptr inbounds ([2 x i8]* @.str13, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %131 = call i32 @smp_assert_eq(%struct.obj_struct* byval %27, %struct.obj_struct* byval %28)
  %132 = load i32* %successp, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %successp, align 4
  call void @smpint_init_clong(%struct.obj_struct* sret %30, i64 3)
  %134 = bitcast %struct.obj_struct* %32 to i8*
  %135 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %31, %struct.obj_struct* byval %32, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %136 = call i32 @smp_assert_eq(%struct.obj_struct* byval %30, %struct.obj_struct* byval %31)
  %137 = load i32* %successp, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %33, i32 0)
  %139 = bitcast %struct.obj_struct* %35 to i8*
  %140 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %139, i8* %140, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %34, %struct.obj_struct* byval %35, i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %141 = call i32 @smp_assert_eq(%struct.obj_struct* byval %33, %struct.obj_struct* byval %34)
  %142 = load i32* %successp, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %36, i32 1)
  %144 = bitcast %struct.obj_struct* %38 to i8*
  %145 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %37, %struct.obj_struct* byval %38, i8* getelementptr inbounds ([3 x i8]* @.str16, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %146 = call i32 @smp_assert_eq(%struct.obj_struct* byval %36, %struct.obj_struct* byval %37)
  %147 = load i32* %successp, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %39, i32 1)
  %149 = bitcast %struct.obj_struct* %41 to i8*
  %150 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %149, i8* %150, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %40, %struct.obj_struct* byval %41, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %151 = call i32 @smp_assert_eq(%struct.obj_struct* byval %39, %struct.obj_struct* byval %40)
  %152 = load i32* %successp, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %42, i32 1)
  %154 = bitcast %struct.obj_struct* %44 to i8*
  %155 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %43, %struct.obj_struct* byval %44, i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %156 = call i32 @smp_assert_eq(%struct.obj_struct* byval %42, %struct.obj_struct* byval %43)
  %157 = load i32* %successp, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %45, i32 0)
  %159 = bitcast %struct.obj_struct* %47 to i8*
  %160 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %159, i8* %160, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %46, %struct.obj_struct* byval %47, i8* getelementptr inbounds ([3 x i8]* @.str19, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %161 = call i32 @smp_assert_eq(%struct.obj_struct* byval %45, %struct.obj_struct* byval %46)
  %162 = load i32* %successp, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %48, i32 0)
  %164 = bitcast %struct.obj_struct* %50 to i8*
  %165 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* %165, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %49, %struct.obj_struct* byval %50, i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %166 = call i32 @smp_assert_eq(%struct.obj_struct* byval %48, %struct.obj_struct* byval %49)
  %167 = load i32* %successp, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %successp, align 4
  call void @smpfloat_init_cdouble(%struct.obj_struct* sret %x, double 4.000000e+00)
  call void @smpfloat_init_cdouble(%struct.obj_struct* sret %y, double 7.000000e+00)
  %169 = bitcast %struct.obj_struct* %51 to i8*
  %170 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* %170, i64 32, i32 8, i1 false)
  %171 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), %struct.obj_struct* byval %51)
  %172 = bitcast %struct.obj_struct* %52 to i8*
  %173 = bitcast %struct.obj_struct* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %172, i8* %173, i64 32, i32 8, i1 false)
  %174 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), %struct.obj_struct* byval %52)
  call void @smpfloat_init_cdouble(%struct.obj_struct* sret %53, double 1.100000e+01)
  %175 = bitcast %struct.obj_struct* %55 to i8*
  %176 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* %176, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %54, %struct.obj_struct* byval %55, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %177 = call i32 @smp_assert_eq(%struct.obj_struct* byval %53, %struct.obj_struct* byval %54)
  %178 = load i32* %successp, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %successp, align 4
  call void @smpfloat_init_cdouble(%struct.obj_struct* sret %56, double -3.000000e+00)
  %180 = bitcast %struct.obj_struct* %58 to i8*
  %181 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %181, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %57, %struct.obj_struct* byval %58, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %182 = call i32 @smp_assert_eq(%struct.obj_struct* byval %56, %struct.obj_struct* byval %57)
  %183 = load i32* %successp, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %successp, align 4
  call void @smpfloat_init_cdouble(%struct.obj_struct* sret %59, double 2.800000e+01)
  %185 = bitcast %struct.obj_struct* %61 to i8*
  %186 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %185, i8* %186, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %60, %struct.obj_struct* byval %61, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %187 = call i32 @smp_assert_eq(%struct.obj_struct* byval %59, %struct.obj_struct* byval %60)
  %188 = load i32* %successp, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %successp, align 4
  call void @smpfloat_init_cdouble(%struct.obj_struct* sret %62, double 0x3FE2492492492492)
  %190 = bitcast %struct.obj_struct* %64 to i8*
  %191 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %191, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %63, %struct.obj_struct* byval %64, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %192 = call i32 @smp_assert_eq(%struct.obj_struct* byval %62, %struct.obj_struct* byval %63)
  %193 = load i32* %successp, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %65, i32 0)
  %195 = bitcast %struct.obj_struct* %67 to i8*
  %196 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %195, i8* %196, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %66, %struct.obj_struct* byval %67, i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %197 = call i32 @smp_assert_eq(%struct.obj_struct* byval %65, %struct.obj_struct* byval %66)
  %198 = load i32* %successp, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %68, i32 1)
  %200 = bitcast %struct.obj_struct* %70 to i8*
  %201 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %200, i8* %201, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %69, %struct.obj_struct* byval %70, i8* getelementptr inbounds ([3 x i8]* @.str16, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %202 = call i32 @smp_assert_eq(%struct.obj_struct* byval %68, %struct.obj_struct* byval %69)
  %203 = load i32* %successp, align 4
  %204 = and i32 %203, %202
  store i32 %204, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %71, i32 1)
  %205 = bitcast %struct.obj_struct* %73 to i8*
  %206 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %205, i8* %206, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %72, %struct.obj_struct* byval %73, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %207 = call i32 @smp_assert_eq(%struct.obj_struct* byval %71, %struct.obj_struct* byval %72)
  %208 = load i32* %successp, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %74, i32 1)
  %210 = bitcast %struct.obj_struct* %76 to i8*
  %211 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %210, i8* %211, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %75, %struct.obj_struct* byval %76, i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %212 = call i32 @smp_assert_eq(%struct.obj_struct* byval %74, %struct.obj_struct* byval %75)
  %213 = load i32* %successp, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %77, i32 0)
  %215 = bitcast %struct.obj_struct* %79 to i8*
  %216 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %215, i8* %216, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %78, %struct.obj_struct* byval %79, i8* getelementptr inbounds ([3 x i8]* @.str19, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %217 = call i32 @smp_assert_eq(%struct.obj_struct* byval %77, %struct.obj_struct* byval %78)
  %218 = load i32* %successp, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %successp, align 4
  call void @smpbool_init(%struct.obj_struct* sret %80, i32 0)
  %220 = bitcast %struct.obj_struct* %82 to i8*
  %221 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %221, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %81, %struct.obj_struct* byval %82, i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), i32 1, %struct.obj_struct* %y)
  %222 = call i32 @smp_assert_eq(%struct.obj_struct* byval %80, %struct.obj_struct* byval %81)
  %223 = load i32* %successp, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %successp, align 4
  %225 = load i32* %successp, align 4
  ret i32 %225
}

declare void @smpint_init_clong(%struct.obj_struct* sret, i64)

declare i32 @scope_add(i8*, %struct.obj_struct* byval)

declare void @smpbool_init(%struct.obj_struct* sret, i32)

declare void @smpfloat_init_cdouble(%struct.obj_struct* sret, double)

define i32 @test_gc() nounwind {
  %x = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %i = alloca i32, align 4
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  call void @smpint_init_clong(%struct.obj_struct* sret %x, i64 4)
  %5 = bitcast %struct.obj_struct* %1 to i8*
  %6 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), %struct.obj_struct* byval %1)
  store i32 0, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %14, %0
  %9 = load i32* %i, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %8
  %12 = bitcast %struct.obj_struct* %3 to i8*
  %13 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %2, %struct.obj_struct* byval %3, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i32 1, %struct.obj_struct* @smp_nil)
  call void @smp_println(%struct.obj_struct* sret %4, %struct.obj_struct* byval %2)
  br label %14

; <label>:14                                      ; preds = %11
  %15 = load i32* %i, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %8

; <label>:17                                      ; preds = %8
  ret i32 0
}

declare void @smp_println(%struct.obj_struct* sret, %struct.obj_struct* byval)

define i32 @test_strings() nounwind {
  %successp = alloca i32, align 4
  %world = alloca %struct.obj_struct, align 8
  %worlds = alloca [4 x %struct.obj_struct], align 16
  %str = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 1, i32* %successp, align 4
  call void @smpstr_init(%struct.obj_struct* sret %world, i8* getelementptr inbounds ([6 x i8]* @.str21, i32 0, i32 0))
  %4 = getelementptr inbounds [4 x %struct.obj_struct]* %worlds, i32 0, i32 0
  %5 = bitcast %struct.obj_struct* %4 to i8*
  %6 = bitcast %struct.obj_struct* %world to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = getelementptr inbounds [4 x %struct.obj_struct]* %worlds, i32 0, i32 1
  %8 = bitcast %struct.obj_struct* %7 to i8*
  %9 = bitcast %struct.obj_struct* %world to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = getelementptr inbounds [4 x %struct.obj_struct]* %worlds, i32 0, i32 2
  %11 = bitcast %struct.obj_struct* %10 to i8*
  %12 = bitcast %struct.obj_struct* %world to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  %13 = getelementptr inbounds [4 x %struct.obj_struct]* %worlds, i32 0, i32 3
  %14 = bitcast %struct.obj_struct* %13 to i8*
  %15 = bitcast %struct.obj_struct* %world to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  %16 = getelementptr inbounds [4 x %struct.obj_struct]* %worlds, i32 0, i32 0
  call void (%struct.obj_struct*, i8*, ...)* @smpglobal_sprintf(%struct.obj_struct* sret %str, i8* getelementptr inbounds ([42 x i8]* @.str22, i32 0, i32 0), i32 4, %struct.obj_struct* %16)
  call void @smpstr_init(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([60 x i8]* @.str23, i32 0, i32 0))
  %17 = bitcast %struct.obj_struct* %2 to i8*
  %18 = bitcast %struct.obj_struct* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  %19 = call i32 @smp_assert_eq(%struct.obj_struct* byval %1, %struct.obj_struct* byval %2)
  %20 = load i32* %successp, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %successp, align 4
  call void @obj_clear(%struct.obj_struct* sret %3, %struct.obj_struct* %world)
  ret i32 0
}

declare void @smpstr_init(%struct.obj_struct* sret, i8*)

declare void @smpglobal_sprintf(%struct.obj_struct* sret, i8*, ...)

define i32 @test_printf() nounwind {
  %arr = alloca [4 x %struct.obj_struct], align 16
  %1 = alloca %struct.obj_struct, align 8
  %2 = getelementptr inbounds [4 x %struct.obj_struct]* %arr, i32 0, i32 0
  call void @smpint_init_clong(%struct.obj_struct* sret %2, i64 18)
  %3 = getelementptr inbounds [4 x %struct.obj_struct]* %arr, i32 0, i32 1
  call void @smpfloat_init_cdouble(%struct.obj_struct* sret %3, double 2.140000e+01)
  %4 = getelementptr inbounds [4 x %struct.obj_struct]* %arr, i32 0, i32 2
  call void @smpint_init_clong(%struct.obj_struct* sret %4, i64 16)
  %5 = getelementptr inbounds [4 x %struct.obj_struct]* %arr, i32 0, i32 3
  call void @smpint_init_clong(%struct.obj_struct* sret %5, i64 16)
  %6 = getelementptr inbounds [4 x %struct.obj_struct]* %arr, i32 0, i32 0
  call void (%struct.obj_struct*, i8*, ...)* @smpglobal_sprintf(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([30 x i8]* @.str24, i32 0, i32 0), i32 4, %struct.obj_struct* %6)
  ret i32 0
}

define i32 @test_lists() nounwind {
  %successp = alloca i32, align 4
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %x = alloca %struct.obj_struct, align 8
  %i = alloca i64, align 8
  %xs = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %special = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  store i32 1, i32* %successp, align 4
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([8 x i8]* @.str25, i32 0, i32 0))
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @make_list, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str25, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str26, i32 0, i32 0), %struct.obj_struct* byval %2)
  %11 = bitcast %struct.obj_struct* %xs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %12 = bitcast %struct.obj_struct* %4 to i8*
  %13 = bitcast %struct.obj_struct* %xs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %14 = call i32 @scope_add(i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0), %struct.obj_struct* byval %4)
  call void @smpint_init_clong(%struct.obj_struct* sret %5, i64 20)
  call void @make_list(%struct.obj_struct* sret %special, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* @smpint_zero)
  store i64 19, i64* %i, align 8
  br label %15

; <label>:15                                      ; preds = %28, %0
  %16 = load i64* %i, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %31

; <label>:18                                      ; preds = %15
  %19 = load i64* %i, align 8
  call void @smpint_init_clong(%struct.obj_struct* sret %x, i64 %19)
  %20 = bitcast %struct.obj_struct* %6 to i8*
  %21 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = call i32 @scope_add(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), %struct.obj_struct* byval %6)
  %23 = bitcast %struct.obj_struct* %7 to i8*
  %24 = bitcast %struct.obj_struct* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %xs, %struct.obj_struct* byval %7, i8* getelementptr inbounds ([5 x i8]* @.str29, i32 0, i32 0), i32 1, %struct.obj_struct* %xs)
  %25 = bitcast %struct.obj_struct* %8 to i8*
  %26 = bitcast %struct.obj_struct* %xs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  %27 = call i32 @scope_add(i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0), %struct.obj_struct* byval %8)
  br label %28

; <label>:28                                      ; preds = %18
  %29 = load i64* %i, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %i, align 8
  br label %15

; <label>:31                                      ; preds = %15
  %32 = bitcast %struct.obj_struct* %9 to i8*
  %33 = bitcast %struct.obj_struct* %xs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  %34 = bitcast %struct.obj_struct* %10 to i8*
  %35 = bitcast %struct.obj_struct* %special to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  %36 = call i32 @smp_assert_eq(%struct.obj_struct* byval %9, %struct.obj_struct* byval %10)
  %37 = load i32* %successp, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %successp, align 4
  %39 = load i32* %successp, align 4
  ret i32 %39
}

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @make_list(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %dec = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %num = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %car = alloca %struct.obj_struct, align 8
  %cdr = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %10 = bitcast %struct.obj_struct* %3 to i8*
  %11 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  %12 = call i32 @smpint_cmp_cint(%struct.obj_struct* byval %3, i32 1, %struct.obj_struct* @smpint_zero)
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %41

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %4 to i8*
  %16 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  call void @smpint_sub(%struct.obj_struct* sret %dec, %struct.obj_struct* byval %4, i32 1, %struct.obj_struct* @smpint_one)
  %17 = load %struct.obj_struct** %2, align 8
  %18 = getelementptr inbounds %struct.obj_struct* %17, i64 0
  %19 = bitcast %struct.obj_struct* %5 to i8*
  %20 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smpint_add(%struct.obj_struct* sret %num, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* @smpint_one)
  %21 = load %struct.obj_struct** %2, align 8
  %22 = getelementptr inbounds %struct.obj_struct* %21, i64 0
  %23 = bitcast %struct.obj_struct* %car to i8*
  %24 = bitcast %struct.obj_struct* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  %25 = bitcast %struct.obj_struct* %6 to i8*
  %26 = bitcast %struct.obj_struct* %dec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %cdr, %struct.obj_struct* byval %6, i8* getelementptr inbounds ([10 x i8]* @.str26, i32 0, i32 0), i32 1, %struct.obj_struct* %num)
  %27 = bitcast %struct.obj_struct* %7 to i8*
  %28 = bitcast %struct.obj_struct* %dec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  call void @smpobj_funcall(%struct.obj_struct* sret %8, %struct.obj_struct* byval %7, i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0), i32 0, %struct.obj_struct* null)
  %29 = getelementptr inbounds %struct.obj_struct* %cdr, i32 0, i32 2
  %30 = load %struct.smptype_struct** %29, align 8
  %31 = getelementptr inbounds %struct.smptype_struct* %30, i32 0, i32 0
  %32 = load i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8]* @.str31, i32 0, i32 0))
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35                                      ; preds = %14
  %36 = bitcast %struct.obj_struct* %agg.result to i8*
  %37 = bitcast %struct.obj_struct* %cdr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  br label %43

; <label>:38                                      ; preds = %14
  %39 = bitcast %struct.obj_struct* %9 to i8*
  %40 = bitcast %struct.obj_struct* %car to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %cdr)
  br label %43

; <label>:41                                      ; preds = %0
  %42 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %43

; <label>:43                                      ; preds = %41, %38, %35
  ret void
}

declare i32 @smpint_cmp_cint(%struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpint_sub(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpint_add(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare i32 @strcmp(i8*, i8*)

declare void @smpobj_cons(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define i32 @test_listbuf() nounwind {
  %listbuf = alloca %struct.obj_struct, align 8
  %true_val = alloca %struct.obj_struct, align 8
  %false_val = alloca %struct.obj_struct, align 8
  %fun_val = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %list = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  call void (%struct.obj_struct*, ...)* @smplistbuf_init(%struct.obj_struct* sret %listbuf)
  call void @smpbool_init(%struct.obj_struct* sret %true_val, i32 1)
  call void @smpbool_init(%struct.obj_struct* sret %false_val, i32 0)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %fun_val, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smplistbuf_to_list, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str32, i32 0, i32 0))
  %9 = bitcast %struct.obj_struct* %1 to i8*
  %10 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void @smplistbuf_add_now(%struct.obj_struct* sret %2, %struct.obj_struct* byval %1, i32 1, %struct.obj_struct* %true_val)
  %11 = bitcast %struct.obj_struct* %3 to i8*
  %12 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  call void @smplistbuf_add_now(%struct.obj_struct* sret %4, %struct.obj_struct* byval %3, i32 1, %struct.obj_struct* %false_val)
  %13 = bitcast %struct.obj_struct* %5 to i8*
  %14 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  call void @smplistbuf_add_now(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %fun_val)
  %15 = bitcast %struct.obj_struct* %7 to i8*
  %16 = bitcast %struct.obj_struct* %listbuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  call void @smplistbuf_to_list(%struct.obj_struct* sret %list, %struct.obj_struct* byval %7, i32 0, %struct.obj_struct* null)
  call void @obj_clear(%struct.obj_struct* sret %8, %struct.obj_struct* %list)
  ret i32 1
}

declare void @smplistbuf_init(%struct.obj_struct* sret, ...)

declare void @smplistbuf_to_list(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smplistbuf_add_now(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define i32 @test_bool() nounwind {
  %successp = alloca i32, align 4
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
  store i32 1, i32* %successp, align 4
  %43 = bitcast %struct.obj_struct* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_and(%struct.obj_struct* sret %1, %struct.obj_struct* byval %2, i32 1, %struct.obj_struct* @smp_true)
  %44 = bitcast %struct.obj_struct* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %45 = call i32 @smp_assert_eq(%struct.obj_struct* byval %1, %struct.obj_struct* byval %3)
  %46 = load i32* %successp, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %successp, align 4
  %48 = bitcast %struct.obj_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_and(%struct.obj_struct* sret %4, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* @smp_nil)
  %49 = bitcast %struct.obj_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %50 = call i32 @smp_assert_eq(%struct.obj_struct* byval %4, %struct.obj_struct* byval %6)
  %51 = load i32* %successp, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %successp, align 4
  %53 = bitcast %struct.obj_struct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_and(%struct.obj_struct* sret %7, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* @smp_true)
  %54 = bitcast %struct.obj_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %55 = call i32 @smp_assert_eq(%struct.obj_struct* byval %7, %struct.obj_struct* byval %9)
  %56 = load i32* %successp, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %successp, align 4
  %58 = bitcast %struct.obj_struct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_and(%struct.obj_struct* sret %10, %struct.obj_struct* byval %11, i32 1, %struct.obj_struct* @smp_nil)
  %59 = bitcast %struct.obj_struct* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %60 = call i32 @smp_assert_eq(%struct.obj_struct* byval %10, %struct.obj_struct* byval %12)
  %61 = load i32* %successp, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %successp, align 4
  %63 = bitcast %struct.obj_struct* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_not(%struct.obj_struct* sret %13, %struct.obj_struct* byval %14, i32 0, %struct.obj_struct* null)
  %64 = bitcast %struct.obj_struct* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %65 = call i32 @smp_assert_eq(%struct.obj_struct* byval %13, %struct.obj_struct* byval %15)
  %66 = load i32* %successp, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %successp, align 4
  %68 = bitcast %struct.obj_struct* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_not(%struct.obj_struct* sret %16, %struct.obj_struct* byval %17, i32 0, %struct.obj_struct* null)
  %69 = bitcast %struct.obj_struct* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %70 = call i32 @smp_assert_eq(%struct.obj_struct* byval %16, %struct.obj_struct* byval %18)
  %71 = load i32* %successp, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %successp, align 4
  %73 = bitcast %struct.obj_struct* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_or(%struct.obj_struct* sret %19, %struct.obj_struct* byval %20, i32 1, %struct.obj_struct* @smp_true)
  %74 = bitcast %struct.obj_struct* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %75 = call i32 @smp_assert_eq(%struct.obj_struct* byval %19, %struct.obj_struct* byval %21)
  %76 = load i32* %successp, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %successp, align 4
  %78 = bitcast %struct.obj_struct* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_or(%struct.obj_struct* sret %22, %struct.obj_struct* byval %23, i32 1, %struct.obj_struct* @smp_nil)
  %79 = bitcast %struct.obj_struct* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %80 = call i32 @smp_assert_eq(%struct.obj_struct* byval %22, %struct.obj_struct* byval %24)
  %81 = load i32* %successp, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %successp, align 4
  %83 = bitcast %struct.obj_struct* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_or(%struct.obj_struct* sret %25, %struct.obj_struct* byval %26, i32 1, %struct.obj_struct* @smp_true)
  %84 = bitcast %struct.obj_struct* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %85 = call i32 @smp_assert_eq(%struct.obj_struct* byval %25, %struct.obj_struct* byval %27)
  %86 = load i32* %successp, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %successp, align 4
  %88 = bitcast %struct.obj_struct* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_or(%struct.obj_struct* sret %28, %struct.obj_struct* byval %29, i32 1, %struct.obj_struct* @smp_nil)
  %89 = bitcast %struct.obj_struct* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %90 = call i32 @smp_assert_eq(%struct.obj_struct* byval %28, %struct.obj_struct* byval %30)
  %91 = load i32* %successp, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %successp, align 4
  %93 = bitcast %struct.obj_struct* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_xor(%struct.obj_struct* sret %31, %struct.obj_struct* byval %32, i32 1, %struct.obj_struct* @smp_true)
  %94 = bitcast %struct.obj_struct* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %95 = call i32 @smp_assert_eq(%struct.obj_struct* byval %31, %struct.obj_struct* byval %33)
  %96 = load i32* %successp, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %successp, align 4
  %98 = bitcast %struct.obj_struct* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_xor(%struct.obj_struct* sret %34, %struct.obj_struct* byval %35, i32 1, %struct.obj_struct* @smp_nil)
  %99 = bitcast %struct.obj_struct* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %100 = call i32 @smp_assert_eq(%struct.obj_struct* byval %34, %struct.obj_struct* byval %36)
  %101 = load i32* %successp, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %successp, align 4
  %103 = bitcast %struct.obj_struct* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_xor(%struct.obj_struct* sret %37, %struct.obj_struct* byval %38, i32 1, %struct.obj_struct* @smp_true)
  %104 = bitcast %struct.obj_struct* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  %105 = call i32 @smp_assert_eq(%struct.obj_struct* byval %37, %struct.obj_struct* byval %39)
  %106 = load i32* %successp, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %successp, align 4
  %108 = bitcast %struct.obj_struct* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  call void @smpbool_xor(%struct.obj_struct* sret %40, %struct.obj_struct* byval %41, i32 1, %struct.obj_struct* @smp_nil)
  %109 = bitcast %struct.obj_struct* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %110 = call i32 @smp_assert_eq(%struct.obj_struct* byval %40, %struct.obj_struct* byval %42)
  %111 = load i32* %successp, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %successp, align 4
  %113 = load i32* %successp, align 4
  ret i32 %113
}

declare void @smpbool_and(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpbool_not(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpbool_or(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpbool_xor(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define i32 @test_regex() nounwind {
  %pattern = alloca %struct.obj_struct, align 8
  %string = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 0, i32* @gc_add_objectsp, align 4
  call void @smpstr_init(%struct.obj_struct* sret %pattern, i8* getelementptr inbounds ([16 x i8]* @.str33, i32 0, i32 0))
  call void @smpstr_init(%struct.obj_struct* sret %string, i8* getelementptr inbounds ([9 x i8]* @.str34, i32 0, i32 0))
  %4 = bitcast %struct.obj_struct* %2 to i8*
  %5 = bitcast %struct.obj_struct* %pattern to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpregex_matchp(%struct.obj_struct* sret %1, %struct.obj_struct* byval %2, i32 1, %struct.obj_struct* %string)
  call void @smp_println(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1)
  store i32 1, i32* @gc_add_objectsp, align 4
  ret i32 0
}

declare void @smpregex_matchp(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define i32 @test_arrays() nounwind {
  %array = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %i = alloca i32, align 4
  %elem = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  call void (%struct.obj_struct*, ...)* @smparray_init(%struct.obj_struct* sret %array)
  %6 = bitcast %struct.obj_struct* %1 to i8*
  %7 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = call i32 @scope_add(i8* getelementptr inbounds ([6 x i8]* @.str35, i32 0, i32 0), %struct.obj_struct* byval %1)
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %17, %0
  %10 = load i32* %i, align 4
  %11 = icmp slt i32 %10, 100
  br i1 %11, label %12, label %20

; <label>:12                                      ; preds = %9
  %13 = load i32* %i, align 4
  %14 = sext i32 %13 to i64
  call void @smpint_init_clong(%struct.obj_struct* sret %elem, i64 %14)
  %15 = bitcast %struct.obj_struct* %2 to i8*
  %16 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  call void @smparray_add_now(%struct.obj_struct* sret %3, %struct.obj_struct* byval %2, i32 1, %struct.obj_struct* %elem)
  br label %17

; <label>:17                                      ; preds = %12
  %18 = load i32* %i, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %i, align 4
  br label %9

; <label>:20                                      ; preds = %9
  %21 = bitcast %struct.obj_struct* %4 to i8*
  %22 = bitcast %struct.obj_struct* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void @smp_println(%struct.obj_struct* sret %5, %struct.obj_struct* byval %4)
  ret i32 0
}

declare void @smparray_init(%struct.obj_struct* sret, ...)

declare void @smparray_add_now(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define i32 @test_hash() nounwind {
  %hash = alloca %struct.obj_struct, align 8
  %key = alloca %struct.obj_struct, align 8
  %key2 = alloca %struct.obj_struct, align 8
  %val = alloca %struct.obj_struct, align 8
  %pair = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %pair2 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %get = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %10 = alloca %struct.obj_struct, align 8
  store i32 0, i32* @gc_add_objectsp, align 4
  call void (%struct.obj_struct*, ...)* @smphash_init(%struct.obj_struct* sret %hash)
  call void @smpstr_init(%struct.obj_struct* sret %key, i8* getelementptr inbounds ([12 x i8]* @.str36, i32 0, i32 0))
  call void @smpstr_init(%struct.obj_struct* sret %key2, i8* getelementptr inbounds ([10 x i8]* @.str37, i32 0, i32 0))
  call void @smpfloat_init_cdouble(%struct.obj_struct* sret %val, double 3.141590e+00)
  %11 = bitcast %struct.obj_struct* %1 to i8*
  %12 = bitcast %struct.obj_struct* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %pair, %struct.obj_struct* byval %1, i32 1, %struct.obj_struct* %val)
  %13 = bitcast %struct.obj_struct* %2 to i8*
  %14 = bitcast %struct.obj_struct* %key2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %pair2, %struct.obj_struct* byval %2, i32 1, %struct.obj_struct* %val)
  %15 = bitcast %struct.obj_struct* %3 to i8*
  %16 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  call void @smphash_add_now(%struct.obj_struct* sret %4, %struct.obj_struct* byval %3, i32 1, %struct.obj_struct* %pair)
  %17 = bitcast %struct.obj_struct* %5 to i8*
  %18 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  call void @smphash_add_now(%struct.obj_struct* sret %6, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* %pair2)
  %19 = bitcast %struct.obj_struct* %7 to i8*
  %20 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smp_println(%struct.obj_struct* sret %8, %struct.obj_struct* byval %7)
  %21 = bitcast %struct.obj_struct* %9 to i8*
  %22 = bitcast %struct.obj_struct* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  call void @smphash_get(%struct.obj_struct* sret %get, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %key)
  call void (%struct.obj_struct*, i8*, ...)* @smp_printf(%struct.obj_struct* sret %10, i8* getelementptr inbounds ([8 x i8]* @.str38, i32 0, i32 0), i32 1, %struct.obj_struct* %get)
  store i32 1, i32* @gc_add_objectsp, align 4
  ret i32 0
}

declare void @smphash_init(%struct.obj_struct* sret, ...)

declare void @smphash_add_now(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smphash_get(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define i32 @test_external_classes() nounwind {
  %1 = call i32 @smpglobal_class(i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 0)
  ret i32 0
}

declare i32 @smpglobal_class(i8*, %struct.smptype_struct*, i32)

define i32 @test_object_speed() nounwind {
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  store i32 0, i32* @gc_add_objectsp, align 4
  call void @smpint_init_clong(%struct.obj_struct* sret %1, i64 20000)
  call void @speedtest_fun(%struct.obj_struct* sret %2, %struct.obj_struct* byval %1, i32 0, %struct.obj_struct* null)
  store i32 1, i32* @gc_add_objectsp, align 4
  ret i32 0
}

define void @speedtest_fun(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %num = alloca %struct.obj_struct, align 8
  %square = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %max = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %chain2 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %chain = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %inc = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %tmp = alloca %struct.obj_struct, align 8
  %8 = alloca %struct.obj_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %10 = load i32* %1, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

; <label>:12                                      ; preds = %0
  %13 = load %struct.obj_struct** %2, align 8
  %14 = getelementptr inbounds %struct.obj_struct* %13, i64 0
  %15 = bitcast %struct.obj_struct* %num to i8*
  %16 = bitcast %struct.obj_struct* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  br label %18

; <label>:17                                      ; preds = %0
  call void @smpint_init_clong(%struct.obj_struct* sret %num, i64 0)
  br label %18

; <label>:18                                      ; preds = %17, %12
  %19 = bitcast %struct.obj_struct* %3 to i8*
  %20 = bitcast %struct.obj_struct* %num to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  call void @smpint_mul(%struct.obj_struct* sret %square, %struct.obj_struct* byval %3, i32 1, %struct.obj_struct* %num)
  %21 = bitcast %struct.obj_struct* %max to i8*
  %22 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  %23 = bitcast %struct.obj_struct* %4 to i8*
  %24 = bitcast %struct.obj_struct* %num to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 32, i32 8, i1 false)
  %25 = call i32 @smpint_cmp_cint(%struct.obj_struct* byval %4, i32 1, %struct.obj_struct* %max)
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27                                      ; preds = %18
  %28 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %42

; <label>:29                                      ; preds = %18
  %30 = bitcast %struct.obj_struct* %5 to i8*
  %31 = bitcast %struct.obj_struct* %num to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %chain2, %struct.obj_struct* byval %5, i32 1, %struct.obj_struct* @smp_nil)
  %32 = bitcast %struct.obj_struct* %6 to i8*
  %33 = bitcast %struct.obj_struct* %square to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %chain, %struct.obj_struct* byval %6, i32 1, %struct.obj_struct* %chain2)
  %34 = bitcast %struct.obj_struct* %7 to i8*
  %35 = bitcast %struct.obj_struct* %num to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  call void @smpint_add(%struct.obj_struct* sret %inc, %struct.obj_struct* byval %7, i32 1, %struct.obj_struct* @smpint_one)
  %36 = bitcast %struct.obj_struct* %8 to i8*
  %37 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  call void @speedtest_fun(%struct.obj_struct* sret %tmp, %struct.obj_struct* byval %8, i32 1, %struct.obj_struct* %inc)
  %38 = bitcast %struct.obj_struct* %9 to i8*
  %39 = bitcast %struct.obj_struct* %chain to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  call void @smpobj_cons(%struct.obj_struct* sret %res, %struct.obj_struct* byval %9, i32 1, %struct.obj_struct* %tmp)
  %40 = bitcast %struct.obj_struct* %agg.result to i8*
  %41 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  br label %42

; <label>:42                                      ; preds = %29, %27
  ret void
}

declare void @smpint_mul(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

define i32 @run_tests() nounwind {
  %successp = alloca i32, align 4
  store i32 1, i32* %successp, align 4
  %1 = call i32 @test_lists()
  %2 = load i32* %successp, align 4
  %3 = and i32 %2, %1
  store i32 %3, i32* %successp, align 4
  %4 = call i32 @test_listbuf()
  %5 = load i32* %successp, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* %successp, align 4
  %7 = call i32 @test_bool()
  %8 = load i32* %successp, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %successp, align 4
  %10 = call i32 @test_nums()
  %11 = load i32* %successp, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %successp, align 4
  %13 = load i32* %successp, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %0
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str40, i32 0, i32 0))
  br label %19

; <label>:17                                      ; preds = %0
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str41, i32 0, i32 0))
  br label %19

; <label>:19                                      ; preds = %17, %15
  %20 = load i32* %successp, align 4
  ret i32 %20
}

declare i32 @printf(i8*, ...)
