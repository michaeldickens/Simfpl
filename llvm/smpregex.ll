; ModuleID = 'smpregex.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10"

%0 = type { i32, i64, i8*, %struct.re_guts* }
%enum.anon = type i32
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.anon = type { i64, i64 }
%struct.miniarray_struct = type { %struct.minipair_struct*, i64 }
%struct.minihash_struct = type { %struct.miniarray_struct*, i64, i64, i64 }
%struct.minipair_struct = type { i8*, %struct.obj_struct }
%struct.obj_struct = type { i32*, i8, %struct.smptype_struct*, i8* }
%struct.re_guts = type opaque
%struct.smpregexmatch_struct = type { %struct.anon*, i64 }
%struct.smpstrstruct = type { i8*, i64 }
%struct.smptype_struct = type { i8*, i32, i8, %struct.smptype_struct**, i64, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct*, %struct.minihash_struct* }

@.str = private constant [11 x i8] c"RegexMatch\00"
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_regmatch = common global %struct.smptype_struct zeroinitializer, align 8
@.str1 = private constant [6 x i8] c"clear\00"
@.str2 = private constant [4 x i8] c"Nil\00"
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@.str3 = private constant [24 x i8] c"InitializationException\00"
@.str4 = private constant [55 x i8] c"Regular expression \22%s\22 had invalid '{...}' construct.\00"
@.str5 = private constant [41 x i8] c"Syntax error in regular expression \22%s\22.\00"
@.str6 = private constant [97 x i8] c"In regular expression \22%s\22, a repetition operator such as '?' or '*' appeared in a bad position.\00"
@.str7 = private constant [66 x i8] c"Regular expression \22%s\22 referred to an invalid collating element.\00"
@.str8 = private constant [69 x i8] c"Regular expression \22%s\22 referred to an invalid character class name.\00"
@.str9 = private constant [40 x i8] c"Regular expression \22%s\22 ended with '\5C'.\00"
@.str10 = private constant [70 x i8] c"Regular expression \22%s\22 had invalid number in the '\5Cdigit' construct.\00"
@.str11 = private constant [56 x i8] c"Regular expression \22%s\22 had unbalanced square brackets.\00"
@.str12 = private constant [52 x i8] c"Regular expression \22%s\22 had unbalanced parentheses.\00"
@.str13 = private constant [53 x i8] c"Regular expression \22%s\22 had unbalanced curly braces.\00"
@.str14 = private constant [84 x i8] c"In regular expression \22%s\22, one of the endpoints in a range expression was invalid.\00"
@.str15 = private constant [59 x i8] c"Ran out of memory while compiling regular expression \22%s\22.\00"
@.str16 = private constant [7 x i8] c"String\00"
@.str17 = private constant [7 x i8] c"Thrown\00"
@smptype_id_nil = common global i32 0, align 4
@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@.str18 = private constant [10 x i8] c"TrueClass\00"
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

define i32 @smpregex_create_class() nounwind {
  %regmatch = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = call i32 @smpglobal_class(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %regmatch, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0))
  %5 = getelementptr inbounds %struct.obj_struct* %regmatch, i32 0, i32 3
  %6 = load i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.smptype_struct*
  %8 = bitcast %struct.smptype_struct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_regmatch to i8*), i8* %8, i64 64, i32 8, i1 false)
  %9 = bitcast %struct.obj_struct* %1 to i8*
  %10 = bitcast %struct.obj_struct* %regmatch to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %2, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpregmatch_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %3, %struct.obj_struct* byval %1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), %struct.obj_struct* byval %2)
  ret i32 0
}

declare i32 @smpglobal_class(i8*, %struct.smptype_struct*, i32)

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

define void @smpregmatch_clear(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %core = alloca %struct.smpregexmatch_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %3 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %4 = load i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.smpregexmatch_struct*
  %6 = bitcast %struct.smpregexmatch_struct* %core to i8*
  %7 = bitcast %struct.smpregexmatch_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 0
  %9 = load %struct.anon** %8, align 8
  %10 = bitcast %struct.anon* %9 to i8*
  call void @smp_free(i8* %10)
  %11 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  ret void
}

declare void @smp_free(i8*)

define void @smpregex_compile(%struct.obj_struct* sret %agg.result, %0* %compiled, %struct.obj_struct* byval %regex) nounwind {
  %1 = alloca %0*, align 8
  %2 = alloca %struct.obj_struct, align 8
  store %0* %compiled, %0** %1, align 8
  %3 = load %0** %1, align 8
  %4 = bitcast %struct.obj_struct* %2 to i8*
  %5 = bitcast %struct.obj_struct* %regex to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  call void @smpregex_compile_flags(%struct.obj_struct* sret %agg.result, %0* %3, %struct.obj_struct* byval %2, i32 1)
  ret void
}

define void @smpregex_compile_flags(%struct.obj_struct* sret %agg.result, %0* %compiled, %struct.obj_struct* byval %regex, i32 %flags) nounwind {
  %1 = alloca %0*, align 8
  %2 = alloca i32, align 4
  store %0* %compiled, %0** %1, align 8
  store i32 %flags, i32* %2, align 4
  %3 = load %0** %1, align 8
  %4 = getelementptr inbounds %struct.obj_struct* %regex, i32 0, i32 3
  %5 = load i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.smpstrstruct*
  %7 = getelementptr inbounds %struct.smpstrstruct* %6, i32 0, i32 0
  %8 = load i8** %7, align 8
  %9 = load i32* %2, align 4
  call void @smpregex_compile_str_flags(%struct.obj_struct* sret %agg.result, %0* %3, i8* %8, i32 %9)
  ret void
}

define void @smpregex_compile_str_flags(%struct.obj_struct* sret %agg.result, %0* %compiled, i8* %pattern, i32 %flags) nounwind {
  %1 = alloca %0*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %code = alloca i32, align 4
  store %0* %compiled, %0** %1, align 8
  store i8* %pattern, i8** %2, align 8
  store i32 %flags, i32* %3, align 4
  %4 = load %0** %1, align 8
  %5 = load i8** %2, align 8
  %6 = load i32* %3, align 4
  %7 = call i32 @"\01_regcomp"(%0* %4, i8* %5, i32 %6)
  store i32 %7, i32* %code, align 4
  %8 = load i8** %2, align 8
  %9 = load i32* %code, align 4
  call void @smpregex_compile_handle_errors(%struct.obj_struct* sret %agg.result, i8* %8, i32 %9)
  ret void
}

define void @smpregex_compile_str(%struct.obj_struct* sret %agg.result, %0* %compiled, i8* %pattern) nounwind {
  %1 = alloca %0*, align 8
  %2 = alloca i8*, align 8
  store %0* %compiled, %0** %1, align 8
  store i8* %pattern, i8** %2, align 8
  %3 = load %0** %1, align 8
  %4 = load i8** %2, align 8
  call void @smpregex_compile_str_flags(%struct.obj_struct* sret %agg.result, %0* %3, i8* %4, i32 1)
  ret void
}

declare i32 @"\01_regcomp"(%0*, i8*, i32)

define void @smpregex_compile_handle_errors(%struct.obj_struct* sret %agg.result, i8* %pattern, i32 %code) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
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
  store i8* %pattern, i8** %1, align 8
  store i32 %code, i32* %2, align 4
  %27 = load i32* %2, align 4
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %31

; <label>:29                                      ; preds = %0
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %30 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %3, %struct.obj_struct* byval %4, i8* getelementptr inbounds ([55 x i8]* @.str4, i32 0, i32 0), i8* %30)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %3)
  br label %88

; <label>:31                                      ; preds = %0
  %32 = load i32* %2, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %36

; <label>:34                                      ; preds = %31
  call void @smp_getclass(%struct.obj_struct* sret %6, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %35 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %5, %struct.obj_struct* byval %6, i8* getelementptr inbounds ([41 x i8]* @.str5, i32 0, i32 0), i8* %35)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %5)
  br label %88

; <label>:36                                      ; preds = %31
  %37 = load i32* %2, align 4
  %38 = icmp eq i32 %37, 13
  br i1 %38, label %39, label %41

; <label>:39                                      ; preds = %36
  call void @smp_getclass(%struct.obj_struct* sret %8, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %40 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %7, %struct.obj_struct* byval %8, i8* getelementptr inbounds ([97 x i8]* @.str6, i32 0, i32 0), i8* %40)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %7)
  br label %88

; <label>:41                                      ; preds = %36
  %42 = load i32* %2, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %46

; <label>:44                                      ; preds = %41
  call void @smp_getclass(%struct.obj_struct* sret %10, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %45 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %9, %struct.obj_struct* byval %10, i8* getelementptr inbounds ([66 x i8]* @.str7, i32 0, i32 0), i8* %45)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %9)
  br label %88

; <label>:46                                      ; preds = %41
  %47 = load i32* %2, align 4
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %51

; <label>:49                                      ; preds = %46
  call void @smp_getclass(%struct.obj_struct* sret %12, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %50 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %11, %struct.obj_struct* byval %12, i8* getelementptr inbounds ([69 x i8]* @.str8, i32 0, i32 0), i8* %50)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %11)
  br label %88

; <label>:51                                      ; preds = %46
  %52 = load i32* %2, align 4
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %54, label %56

; <label>:54                                      ; preds = %51
  call void @smp_getclass(%struct.obj_struct* sret %14, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %55 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %13, %struct.obj_struct* byval %14, i8* getelementptr inbounds ([40 x i8]* @.str9, i32 0, i32 0), i8* %55)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %13)
  br label %88

; <label>:56                                      ; preds = %51
  %57 = load i32* %2, align 4
  %58 = icmp eq i32 %57, 6
  br i1 %58, label %59, label %61

; <label>:59                                      ; preds = %56
  call void @smp_getclass(%struct.obj_struct* sret %16, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %60 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %15, %struct.obj_struct* byval %16, i8* getelementptr inbounds ([70 x i8]* @.str10, i32 0, i32 0), i8* %60)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %15)
  br label %88

; <label>:61                                      ; preds = %56
  %62 = load i32* %2, align 4
  %63 = icmp eq i32 %62, 7
  br i1 %63, label %64, label %66

; <label>:64                                      ; preds = %61
  call void @smp_getclass(%struct.obj_struct* sret %18, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %65 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %17, %struct.obj_struct* byval %18, i8* getelementptr inbounds ([56 x i8]* @.str11, i32 0, i32 0), i8* %65)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %17)
  br label %88

; <label>:66                                      ; preds = %61
  %67 = load i32* %2, align 4
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %71

; <label>:69                                      ; preds = %66
  call void @smp_getclass(%struct.obj_struct* sret %20, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %70 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %19, %struct.obj_struct* byval %20, i8* getelementptr inbounds ([52 x i8]* @.str12, i32 0, i32 0), i8* %70)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %19)
  br label %88

; <label>:71                                      ; preds = %66
  %72 = load i32* %2, align 4
  %73 = icmp eq i32 %72, 9
  br i1 %73, label %74, label %76

; <label>:74                                      ; preds = %71
  call void @smp_getclass(%struct.obj_struct* sret %22, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %75 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %21, %struct.obj_struct* byval %22, i8* getelementptr inbounds ([53 x i8]* @.str13, i32 0, i32 0), i8* %75)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %21)
  br label %88

; <label>:76                                      ; preds = %71
  %77 = load i32* %2, align 4
  %78 = icmp eq i32 %77, 11
  br i1 %78, label %79, label %81

; <label>:79                                      ; preds = %76
  call void @smp_getclass(%struct.obj_struct* sret %24, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %80 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %23, %struct.obj_struct* byval %24, i8* getelementptr inbounds ([84 x i8]* @.str14, i32 0, i32 0), i8* %80)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %23)
  br label %88

; <label>:81                                      ; preds = %76
  %82 = load i32* %2, align 4
  %83 = icmp eq i32 %82, 12
  br i1 %83, label %84, label %86

; <label>:84                                      ; preds = %81
  call void @smp_getclass(%struct.obj_struct* sret %26, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  %85 = load i8** %1, align 8
  call void (%struct.obj_struct*, %struct.obj_struct*, i8*, ...)* @smpexc_init_fmt(%struct.obj_struct* sret %25, %struct.obj_struct* byval %26, i8* getelementptr inbounds ([59 x i8]* @.str15, i32 0, i32 0), i8* %85)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %25)
  br label %88

; <label>:86                                      ; preds = %81
  %87 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %88

; <label>:88                                      ; preds = %86, %84, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %29
  ret void
}

declare void @smpglobal_throw(%struct.obj_struct* sret, %struct.obj_struct* byval)

declare void @smpexc_init_fmt(%struct.obj_struct* sret, %struct.obj_struct* byval, i8*, ...)

define void @smpregmatch_init(%struct.obj_struct* sret %agg.result, %struct.anon* %matches, i64 %length) nounwind {
  %1 = alloca %struct.anon*, align 8
  %2 = alloca i64, align 8
  %true_len = alloca i64, align 8
  %core = alloca %struct.smpregexmatch_struct, align 8
  %res = alloca %struct.obj_struct, align 8
  store %struct.anon* %matches, %struct.anon** %1, align 8
  store i64 %length, i64* %2, align 8
  store i64 0, i64* %true_len, align 8
  br label %3

; <label>:3                                       ; preds = %25, %0
  %4 = load i64* %true_len, align 8
  %5 = load i64* %2, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %28

; <label>:7                                       ; preds = %3
  %8 = load i64* %true_len, align 8
  %9 = load %struct.anon** %1, align 8
  %10 = getelementptr inbounds %struct.anon* %9, i64 %8
  %11 = getelementptr inbounds %struct.anon* %10, i32 0, i32 0
  %12 = load i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %24

; <label>:14                                      ; preds = %7
  %15 = load i64* %true_len, align 8
  %16 = load %struct.anon** %1, align 8
  %17 = getelementptr inbounds %struct.anon* %16, i64 %15
  %18 = getelementptr inbounds %struct.anon* %17, i32 0, i32 1
  %19 = load i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %14
  %22 = load i64* %true_len, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %true_len, align 8
  br label %28

; <label>:24                                      ; preds = %14, %7
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i64* %true_len, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %true_len, align 8
  br label %3

; <label>:28                                      ; preds = %21, %3
  %29 = load i64* %true_len, align 8
  %30 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 1
  %32 = load i64* %31, align 8
  %33 = mul i64 16, %32
  %34 = call i8* @smp_malloc(i64 %33)
  %35 = bitcast i8* %34 to %struct.anon*
  %36 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 0
  store %struct.anon* %35, %struct.anon** %36, align 8
  %37 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 0
  %38 = load %struct.anon** %37, align 8
  %39 = bitcast %struct.anon* %38 to i8*
  %40 = call i64 @llvm.objectsize.i64(i8* %39, i1 false)
  %41 = icmp ne i64 %40, -1
  br i1 %41, label %42, label %56

; <label>:42                                      ; preds = %28
  %43 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 0
  %44 = load %struct.anon** %43, align 8
  %45 = bitcast %struct.anon* %44 to i8*
  %46 = load %struct.anon** %1, align 8
  %47 = bitcast %struct.anon* %46 to i8*
  %48 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 1
  %49 = load i64* %48, align 8
  %50 = mul i64 16, %49
  %51 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 0
  %52 = load %struct.anon** %51, align 8
  %53 = bitcast %struct.anon* %52 to i8*
  %54 = call i64 @llvm.objectsize.i64(i8* %53, i1 false)
  %55 = call i8* @__memcpy_chk(i8* %45, i8* %47, i64 %50, i64 %54)
  br label %66

; <label>:56                                      ; preds = %28
  %57 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 0
  %58 = load %struct.anon** %57, align 8
  %59 = bitcast %struct.anon* %58 to i8*
  %60 = load %struct.anon** %1, align 8
  %61 = bitcast %struct.anon* %60 to i8*
  %62 = getelementptr inbounds %struct.smpregexmatch_struct* %core, i32 0, i32 1
  %63 = load i64* %62, align 8
  %64 = mul i64 16, %63
  %65 = call i8* @__inline_memcpy_chk(i8* %59, i8* %61, i64 %64)
  br label %66

; <label>:66                                      ; preds = %56, %42
  %67 = phi i8* [ %55, %42 ], [ %65, %56 ]
  call void @obj_init(%struct.obj_struct* sret %res, %struct.smptype_struct* @smptype_regmatch)
  %68 = call i8* @smp_malloc(i64 16)
  %69 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.obj_struct* %res, i32 0, i32 3
  %71 = load i8** %70, align 8
  %72 = bitcast i8* %71 to %struct.smpregexmatch_struct*
  %73 = bitcast %struct.smpregexmatch_struct* %72 to i8*
  %74 = bitcast %struct.smpregexmatch_struct* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 16, i32 8, i1 false)
  %75 = bitcast %struct.obj_struct* %agg.result to i8*
  %76 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 32, i32 8, i1 false)
  ret void
}

declare i8* @smp_malloc(i64)

declare i64 @llvm.objectsize.i64(i8*, i1) nounwind readonly

declare i8* @__memcpy_chk(i8*, i8*, i64, i64) nounwind

define internal i8* @__inline_memcpy_chk(i8* %__dest, i8* %__src, i64 %__len) nounwind inlinehint {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %__dest, i8** %1, align 8
  store i8* %__src, i8** %2, align 8
  store i64 %__len, i64* %3, align 8
  %4 = load i8** %1, align 8
  %5 = load i8** %2, align 8
  %6 = load i64* %3, align 8
  %7 = load i8** %1, align 8
  %8 = call i64 @llvm.objectsize.i64(i8* %7, i1 false)
  %9 = call i8* @__memcpy_chk(i8* %4, i8* %5, i64 %6, i64 %8)
  ret i8* %9
}

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

define void @smpregex_match(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %5 = bitcast %struct.obj_struct* %3 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = call i8* @smpstr_to_cstr(%struct.obj_struct* byval %3)
  %8 = load %struct.obj_struct** %2, align 8
  %9 = getelementptr inbounds %struct.obj_struct* %8, i64 0
  %10 = bitcast %struct.obj_struct* %4 to i8*
  %11 = bitcast %struct.obj_struct* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  call void @smpregex_match_str(%struct.obj_struct* sret %agg.result, i8* %7, %struct.obj_struct* byval %4)
  ret void
}

define void @smpregex_match_str(%struct.obj_struct* sret %agg.result, i8* %pattern, %struct.obj_struct* byval %obj) nounwind {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %compiled = alloca %0*, align 8
  %obj_code = alloca %struct.obj_struct, align 8
  %length = alloca i64, align 8
  %5 = alloca i8*
  %code = alloca i32, align 4
  %res = alloca %struct.obj_struct, align 8
  %6 = alloca i32
  store i8* %pattern, i8** %1, align 8
  %7 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %8 = load %struct.smptype_struct** %7, align 8
  %9 = call i32 @smpobj_instancep_cstr(%struct.smptype_struct* %8, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %27, label %11

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 2
  %13 = load %struct.smptype_struct** %12, align 8
  %14 = getelementptr inbounds %struct.smptype_struct* %13, i32 0, i32 0
  %15 = load i8** %14, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0))
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %11
  %19 = bitcast %struct.obj_struct* %agg.result to i8*
  %20 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  br label %86

; <label>:21                                      ; preds = %11
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  %22 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 3
  %23 = load i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.smptype_struct*
  %25 = bitcast %struct.obj_struct* %4 to i8*
  %26 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 32, i32 8, i1 false)
  call void @smptypeerr_init(%struct.obj_struct* sret %2, %struct.smptype_struct* %24, %struct.obj_struct* byval %4)
  call void @smpglobal_throw(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %2)
  br label %86

; <label>:27                                      ; preds = %0
  %28 = call i8* @smp_malloc(i64 32)
  %29 = bitcast i8* %28 to %0*
  store %0* %29, %0** %compiled, align 8
  %30 = load %0** %compiled, align 8
  %31 = load i8** %1, align 8
  call void @smpregex_compile_str(%struct.obj_struct* sret %obj_code, %0* %30, i8* %31)
  %32 = getelementptr inbounds %struct.obj_struct* %obj_code, i32 0, i32 2
  %33 = load %struct.smptype_struct** %32, align 8
  %34 = getelementptr inbounds %struct.smptype_struct* %33, i32 0, i32 0
  %35 = load i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

; <label>:38                                      ; preds = %27
  %39 = load %0** %compiled, align 8
  %40 = bitcast %0* %39 to i8*
  call void @smp_free(i8* %40)
  %41 = bitcast %struct.obj_struct* %agg.result to i8*
  %42 = bitcast %struct.obj_struct* %obj_code to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  br label %86

; <label>:43                                      ; preds = %27
  store i64 64, i64* %length, align 8
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %5
  %45 = load i64* %length, align 8
  %46 = mul i64 16, %45
  %47 = alloca i8, i64 %46, align 16
  %48 = bitcast i8* %47 to %struct.anon*
  %49 = bitcast %struct.anon* %48 to i8*
  %50 = call i64 @llvm.objectsize.i64(i8* %49, i1 false)
  %51 = icmp ne i64 %50, -1
  br i1 %51, label %52, label %59

; <label>:52                                      ; preds = %43
  %53 = bitcast %struct.anon* %48 to i8*
  %54 = load i64* %length, align 8
  %55 = mul i64 16, %54
  %56 = bitcast %struct.anon* %48 to i8*
  %57 = call i64 @llvm.objectsize.i64(i8* %56, i1 false)
  %58 = call i8* @__memset_chk(i8* %53, i32 0, i64 %55, i64 %57)
  br label %64

; <label>:59                                      ; preds = %43
  %60 = bitcast %struct.anon* %48 to i8*
  %61 = load i64* %length, align 8
  %62 = mul i64 16, %61
  %63 = call i8* @__inline_memset_chk(i8* %60, i32 0, i64 %62)
  br label %64

; <label>:64                                      ; preds = %59, %52
  %65 = phi i8* [ %58, %52 ], [ %63, %59 ]
  %66 = load %0** %compiled, align 8
  %67 = getelementptr inbounds %struct.obj_struct* %obj, i32 0, i32 3
  %68 = load i8** %67, align 8
  %69 = bitcast i8* %68 to %struct.smpstrstruct*
  %70 = getelementptr inbounds %struct.smpstrstruct* %69, i32 0, i32 0
  %71 = load i8** %70, align 8
  %72 = load i64* %length, align 8
  %73 = call i32 @regexec(%0* %66, i8* %71, i64 %72, %struct.anon* %48, i32 0)
  store i32 %73, i32* %code, align 4
  %74 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  %75 = load i32* %code, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

; <label>:77                                      ; preds = %64
  %78 = load i64* %length, align 8
  call void @smpregmatch_init(%struct.obj_struct* sret %res, %struct.anon* %48, i64 %78)
  br label %79

; <label>:79                                      ; preds = %77, %64
  %80 = load %0** %compiled, align 8
  call void @regfree(%0* %80)
  %81 = load %0** %compiled, align 8
  %82 = bitcast %0* %81 to i8*
  call void @smp_free(i8* %82)
  %83 = bitcast %struct.obj_struct* %agg.result to i8*
  %84 = bitcast %struct.obj_struct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 32, i32 8, i1 false)
  store i32 1, i32* %6
  %85 = load i8** %5
  call void @llvm.stackrestore(i8* %85)
  br label %86

; <label>:86                                      ; preds = %79, %38, %21, %18
  ret void
}

declare i8* @smpstr_to_cstr(%struct.obj_struct* byval)

declare i32 @smpobj_instancep_cstr(%struct.smptype_struct*, i8*)

declare i32 @strcmp(i8*, i8*)

declare void @smptypeerr_init(%struct.obj_struct* sret, %struct.smptype_struct*, %struct.obj_struct* byval)

declare i8* @llvm.stacksave() nounwind

declare i8* @__memset_chk(i8*, i32, i64, i64) nounwind

define internal i8* @__inline_memset_chk(i8* %__dest, i32 %__val, i64 %__len) nounwind inlinehint {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i8* %__dest, i8** %1, align 8
  store i32 %__val, i32* %2, align 4
  store i64 %__len, i64* %3, align 8
  %4 = load i8** %1, align 8
  %5 = load i32* %2, align 4
  %6 = load i64* %3, align 8
  %7 = load i8** %1, align 8
  %8 = call i64 @llvm.objectsize.i64(i8* %7, i1 false)
  %9 = call i8* @__memset_chk(i8* %4, i32 %5, i64 %6, i64 %8)
  ret i8* %9
}

declare i32 @regexec(%0*, i8*, i64, %struct.anon*, i32)

declare void @regfree(%0*)

declare void @llvm.stackrestore(i8*) nounwind

define void @smpregex_matchp(%struct.obj_struct* sret %agg.result, %struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obj_struct*, align 8
  %match = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %1, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %2, align 8
  %4 = bitcast %struct.obj_struct* %3 to i8*
  %5 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = load i32* %1, align 4
  %7 = load %struct.obj_struct** %2, align 8
  call void @smpregex_match(%struct.obj_struct* sret %match, %struct.obj_struct* byval %3, i32 %6, %struct.obj_struct* %7)
  %8 = getelementptr inbounds %struct.obj_struct* %match, i32 0, i32 2
  %9 = load %struct.smptype_struct** %8, align 8
  %10 = getelementptr inbounds %struct.smptype_struct* %9, i32 0, i32 0
  %11 = load i8** %10, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0))
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %0
  %15 = bitcast %struct.obj_struct* %agg.result to i8*
  %16 = bitcast %struct.obj_struct* %match to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  br label %28

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.obj_struct* %match, i32 0, i32 2
  %19 = load %struct.smptype_struct** %18, align 8
  %20 = getelementptr inbounds %struct.smptype_struct* %19, i32 0, i32 1
  %21 = load i32* %20, align 4
  %22 = load i32* @smptype_id_nil, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %17
  %25 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i64 32, i32 8, i1 false)
  br label %28

; <label>:26                                      ; preds = %17
  %27 = bitcast %struct.obj_struct* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast (%struct.obj_struct* @smp_true to i8*), i64 32, i32 8, i1 false)
  br label %28

; <label>:28                                      ; preds = %26, %24, %14
  ret void
}

define i32 @smpregex_matchp_cint(%struct.obj_struct* byval %obj, i32 %argc, %struct.obj_struct* %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.obj_struct*, align 8
  %match = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  store i32 %argc, i32* %2, align 4
  store %struct.obj_struct* %argv, %struct.obj_struct** %3, align 8
  %5 = bitcast %struct.obj_struct* %4 to i8*
  %6 = bitcast %struct.obj_struct* %obj to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load i32* %2, align 4
  %8 = load %struct.obj_struct** %3, align 8
  call void @smpregex_match(%struct.obj_struct* sret %match, %struct.obj_struct* byval %4, i32 %7, %struct.obj_struct* %8)
  %9 = getelementptr inbounds %struct.obj_struct* %match, i32 0, i32 2
  %10 = load %struct.smptype_struct** %9, align 8
  %11 = getelementptr inbounds %struct.smptype_struct* %10, i32 0, i32 0
  %12 = load i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0))
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  store i32 -1, i32* %1
  br label %25

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.obj_struct* %match, i32 0, i32 2
  %18 = load %struct.smptype_struct** %17, align 8
  %19 = getelementptr inbounds %struct.smptype_struct* %18, i32 0, i32 0
  %20 = load i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([10 x i8]* @.str18, i32 0, i32 0))
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %16
  store i32 1, i32* %1
  br label %25

; <label>:24                                      ; preds = %16
  store i32 0, i32* %1
  br label %25

; <label>:25                                      ; preds = %24, %23, %15
  %26 = load i32* %1
  ret i32 %26
}
