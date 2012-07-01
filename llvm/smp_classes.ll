; ModuleID = 'smp_classes.c'
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

@initialized_classesp = common global i32 0, align 4
@smptype_next_id = common global i32 0, align 4
@smptype_ids = common global %struct.minihash_struct zeroinitializer, align 8
@.str = private constant [7 x i8] c"Object\00"
@.str1 = private constant [3 x i8] c"ID\00"
@smptype_id = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_object = common global %struct.smptype_struct zeroinitializer, align 8
@.str2 = private constant [6 x i8] c"Class\00"
@smptype_class = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_id_class = common global i32 0, align 4
@.str3 = private constant [9 x i8] c"Function\00"
@smptype_function = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_id_fun = common global i32 0, align 4
@.str4 = private constant [5 x i8] c"Atom\00"
@smptype_atom = common global %struct.smptype_struct zeroinitializer, align 8
@.str5 = private constant [7 x i8] c"String\00"
@smptype_string = common global %struct.smptype_struct zeroinitializer, align 8
@.str6 = private constant [5 x i8] c"Bool\00"
@.str7 = private constant [11 x i8] c"Collection\00"
@smptype_collection = common global %struct.smptype_struct zeroinitializer, align 8
@.str8 = private constant [5 x i8] c"Pair\00"
@smptype_pair = common global %struct.smptype_struct zeroinitializer, align 8
@.str9 = private constant [5 x i8] c"List\00"
@smptype_list = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_id_list = common global i32 0, align 4
@.str10 = private constant [4 x i8] c"Nil\00"
@smptype_nil = common global %struct.smptype_struct zeroinitializer, align 8
@smp_nil = common global %struct.obj_struct zeroinitializer, align 8
@smptype_id_nil = common global i32 0, align 4
@.str11 = private constant [10 x i8] c"TrueClass\00"
@smp_true = common global %struct.obj_struct zeroinitializer, align 8
@.str12 = private constant [10 x i8] c"Exception\00"
@smptype_exception = common global %struct.smptype_struct zeroinitializer, align 8
@.str13 = private constant [13 x i8] c"CompileError\00"
@.str14 = private constant [17 x i8] c"RuntimeException\00"
@.str15 = private constant [14 x i8] c"ArgumentError\00"
@.str16 = private constant [14 x i8] c"FunctionError\00"
@.str17 = private constant [12 x i8] c"SyntaxError\00"
@.str18 = private constant [10 x i8] c"TypeError\00"
@.str19 = private constant [21 x i8] c"UndefinedSymbolError\00"
@.str20 = private constant [7 x i8] c"Thrown\00"
@smptype_thrown = common global %struct.smptype_struct zeroinitializer, align 8
@.str21 = private constant [3 x i8] c"==\00"
@.str22 = private constant [6 x i8] c"clear\00"
@.str23 = private constant [5 x i8] c"cons\00"
@.str24 = private constant [4 x i8] c"eq?\00"
@.str25 = private constant [5 x i8] c"eql?\00"
@.str26 = private constant [7 x i8] c"equal?\00"
@.str27 = private constant [8 x i8] c"gc_mark\00"
@.str28 = private constant [5 x i8] c"to_s\00"
@.str29 = private constant [5 x i8] c"type\00"
@.str30 = private constant [13 x i8] c"types_equal?\00"
@.str31 = private constant [6 x i8] c"write\00"
@.str32 = private constant [4 x i8] c"and\00"
@.str33 = private constant [4 x i8] c"not\00"
@.str34 = private constant [3 x i8] c"or\00"
@.str35 = private constant [4 x i8] c"xor\00"
@smptype_global = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_regmatch = common global %struct.smptype_struct zeroinitializer, align 8
@smp_global = common global %struct.obj_struct zeroinitializer, align 8
@smptype_id_int = common global i32 0, align 4
@smptype_id_float = common global i32 0, align 4
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
@smp_stdin = common global %struct.__sFILE* null, align 8
@smp_stdout = common global %struct.__sFILE* null, align 8
@smp_stderr = common global %struct.__sFILE* null, align 8
@scope_stack = common global %struct.minihash_struct* null, align 8
@scope_length = common global i64 0, align 8
@scope_classes = common global %struct.minihash_struct zeroinitializer, align 8
@smptype_int = common global %struct.smptype_struct zeroinitializer, align 8
@smptype_float = common global %struct.smptype_struct zeroinitializer, align 8
@smpint_zero = common global %struct.obj_struct zeroinitializer, align 8
@smpint_one = common global %struct.obj_struct zeroinitializer, align 8
@smp_mpfr_rnd = common global i32 0, align 4
@smp_mpfr_default_prec = common global i64 0, align 8

define i32 @init_smp_classes() nounwind {
  store i32 0, i32* @initialized_classesp, align 4
  %1 = call i32 @init_fundamental_classes()
  %2 = call i32 @init_required_classes()
  %3 = call i32 (...)* @smpnum_create_class()
  %4 = call i32 (...)* @smpint_create_class()
  %5 = call i32 (...)* @smpfloat_create_class()
  store i32 1, i32* @initialized_classesp, align 4
  ret i32 0
}

declare i32 @smpnum_create_class(...)

declare i32 @smpint_create_class(...)

declare i32 @smpfloat_create_class(...)

define i32 @init_required_classes() nounwind {
  %1 = call i32 (...)* @smpglobal_create_class()
  %2 = call i32 (...)* @smpregex_create_class()
  %3 = call i32 (...)* @smparray_create_class()
  %4 = call i32 (...)* @smphash_create_class()
  %5 = call i32 (...)* @smpsymbol_create_class()
  ret i32 0
}

declare i32 @smpglobal_create_class(...)

declare i32 @smpregex_create_class(...)

declare i32 @smparray_create_class(...)

declare i32 @smphash_create_class(...)

declare i32 @smpsymbol_create_class(...)

define i32 @init_fundamental_classes() nounwind {
  %object = alloca %struct.obj_struct, align 8
  %1 = alloca %struct.obj_struct, align 8
  %2 = alloca %struct.obj_struct, align 8
  %3 = alloca %struct.obj_struct, align 8
  %4 = alloca %struct.obj_struct, align 8
  %5 = alloca %struct.obj_struct, align 8
  %6 = alloca %struct.obj_struct, align 8
  %7 = alloca %struct.obj_struct, align 8
  %nil_parents_length = alloca i64, align 8
  %nil_parents = alloca %struct.smptype_struct**, align 8
  %8 = alloca %struct.obj_struct, align 8
  %nilclass = alloca %struct.obj_struct, align 8
  %boolclass = alloca %struct.obj_struct, align 8
  %9 = alloca %struct.obj_struct, align 8
  %exc = alloca %struct.obj_struct, align 8
  %smptype_compiletime = alloca %struct.smptype_struct*, align 8
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
  store i32 1, i32* @smptype_next_id, align 4
  call void (%struct.minihash_struct*, ...)* @minihash_init(%struct.minihash_struct* sret @smptype_ids)
  %69 = call i32 @smpglobal_class(i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), %struct.smptype_struct* null, i32 128)
  store i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i8** getelementptr inbounds (%struct.smptype_struct* @smptype_id, i32 0, i32 0), align 8
  %70 = load i32* @smptype_next_id, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @smptype_next_id, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.smptype_struct* @smptype_id, i32 0, i32 1), align 4
  store i64 1, i64* getelementptr inbounds (%struct.smptype_struct* @smptype_id, i32 0, i32 4), align 8
  %72 = load i64* getelementptr inbounds (%struct.smptype_struct* @smptype_id, i32 0, i32 4), align 8
  %73 = mul i64 8, %72
  %74 = call i8* @smp_malloc(i64 %73)
  %75 = bitcast i8* %74 to %struct.smptype_struct**
  store %struct.smptype_struct** %75, %struct.smptype_struct*** getelementptr inbounds (%struct.smptype_struct* @smptype_id, i32 0, i32 3), align 8
  %76 = load %struct.smptype_struct*** getelementptr inbounds (%struct.smptype_struct* @smptype_id, i32 0, i32 3), align 8
  %77 = getelementptr inbounds %struct.smptype_struct** %76, i64 0
  store %struct.smptype_struct* @smptype_object, %struct.smptype_struct** %77
  store %struct.minihash_struct* null, %struct.minihash_struct** getelementptr inbounds (%struct.smptype_struct* @smptype_id, i32 0, i32 5), align 8
  store %struct.minihash_struct* null, %struct.minihash_struct** getelementptr inbounds (%struct.smptype_struct* @smptype_id, i32 0, i32 6), align 8
  call void @smp_getclass(%struct.obj_struct* sret %object, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %78 = getelementptr inbounds %struct.obj_struct* %object, i32 0, i32 3
  %79 = load i8** %78, align 8
  %80 = bitcast i8* %79 to %struct.smptype_struct*
  %81 = bitcast %struct.smptype_struct* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_object to i8*), i8* %81, i64 64, i32 8, i1 false)
  %82 = call i32 @smpglobal_class(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %1, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0))
  %83 = getelementptr inbounds %struct.obj_struct* %1, i32 0, i32 3
  %84 = load i8** %83, align 8
  %85 = bitcast i8* %84 to %struct.smptype_struct*
  %86 = bitcast %struct.smptype_struct* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_class to i8*), i8* %86, i64 64, i32 8, i1 false)
  %87 = load i32* getelementptr inbounds (%struct.smptype_struct* @smptype_class, i32 0, i32 1), align 4
  store i32 %87, i32* @smptype_id_class, align 4
  %88 = call i32 @smpglobal_class(i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %2, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0))
  %89 = getelementptr inbounds %struct.obj_struct* %2, i32 0, i32 3
  %90 = load i8** %89, align 8
  %91 = bitcast i8* %90 to %struct.smptype_struct*
  %92 = bitcast %struct.smptype_struct* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_function to i8*), i8* %92, i64 64, i32 8, i1 false)
  %93 = load i32* getelementptr inbounds (%struct.smptype_struct* @smptype_class, i32 0, i32 1), align 4
  store i32 %93, i32* @smptype_id_fun, align 4
  %94 = call i32 @smpglobal_class(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 160)
  call void @smp_getclass(%struct.obj_struct* sret %3, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0))
  %95 = getelementptr inbounds %struct.obj_struct* %3, i32 0, i32 3
  %96 = load i8** %95, align 8
  %97 = bitcast i8* %96 to %struct.smptype_struct*
  %98 = bitcast %struct.smptype_struct* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_atom to i8*), i8* %98, i64 64, i32 8, i1 false)
  %99 = call i32 @smpglobal_class(i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0), %struct.smptype_struct* @smptype_atom, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %4, i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0))
  %100 = getelementptr inbounds %struct.obj_struct* %4, i32 0, i32 3
  %101 = load i8** %100, align 8
  %102 = bitcast i8* %101 to %struct.smptype_struct*
  %103 = bitcast %struct.smptype_struct* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_string to i8*), i8* %103, i64 64, i32 8, i1 false)
  %104 = call i32 @smpglobal_class(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), %struct.smptype_struct* @smptype_atom, i32 160)
  %105 = call i32 @smpglobal_class(i8* getelementptr inbounds ([11 x i8]* @.str7, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 160)
  call void @smp_getclass(%struct.obj_struct* sret %5, i8* getelementptr inbounds ([11 x i8]* @.str7, i32 0, i32 0))
  %106 = getelementptr inbounds %struct.obj_struct* %5, i32 0, i32 3
  %107 = load i8** %106, align 8
  %108 = bitcast i8* %107 to %struct.smptype_struct*
  %109 = bitcast %struct.smptype_struct* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_collection to i8*), i8* %109, i64 64, i32 8, i1 false)
  %110 = call i32 @smpglobal_class(i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), %struct.smptype_struct* @smptype_collection, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %6, i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0))
  %111 = getelementptr inbounds %struct.obj_struct* %6, i32 0, i32 3
  %112 = load i8** %111, align 8
  %113 = bitcast i8* %112 to %struct.smptype_struct*
  %114 = bitcast %struct.smptype_struct* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_pair to i8*), i8* %114, i64 64, i32 8, i1 false)
  %115 = call i32 @smpglobal_class(i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), %struct.smptype_struct* @smptype_pair, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %7, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0))
  %116 = getelementptr inbounds %struct.obj_struct* %7, i32 0, i32 3
  %117 = load i8** %116, align 8
  %118 = bitcast i8* %117 to %struct.smptype_struct*
  %119 = bitcast %struct.smptype_struct* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_list to i8*), i8* %119, i64 64, i32 8, i1 false)
  %120 = load i32* getelementptr inbounds (%struct.smptype_struct* @smptype_list, i32 0, i32 1), align 4
  store i32 %120, i32* @smptype_id_list, align 4
  store i64 2, i64* %nil_parents_length, align 8
  %121 = load i64* %nil_parents_length, align 8
  %122 = mul i64 8, %121
  %123 = call i8* @smp_malloc(i64 %122)
  %124 = bitcast i8* %123 to %struct.smptype_struct**
  store %struct.smptype_struct** %124, %struct.smptype_struct*** %nil_parents, align 8
  %125 = load %struct.smptype_struct*** %nil_parents, align 8
  %126 = getelementptr inbounds %struct.smptype_struct** %125, i64 0
  store %struct.smptype_struct* @smptype_list, %struct.smptype_struct** %126
  call void @smp_getclass(%struct.obj_struct* sret %8, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0))
  %127 = getelementptr inbounds %struct.obj_struct* %8, i32 0, i32 3
  %128 = load i8** %127, align 8
  %129 = bitcast i8* %128 to %struct.smptype_struct*
  %130 = load %struct.smptype_struct*** %nil_parents, align 8
  %131 = getelementptr inbounds %struct.smptype_struct** %130, i64 1
  store %struct.smptype_struct* %129, %struct.smptype_struct** %131
  %132 = load %struct.smptype_struct*** %nil_parents, align 8
  %133 = load i64* %nil_parents_length, align 8
  %134 = call i32 @smpglobal_class_multiple(i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0), %struct.smptype_struct** %132, i64 %133, i32 144)
  call void @smp_getclass(%struct.obj_struct* sret %nilclass, i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0))
  %135 = getelementptr inbounds %struct.obj_struct* %nilclass, i32 0, i32 3
  %136 = load i8** %135, align 8
  %137 = bitcast i8* %136 to %struct.smptype_struct*
  %138 = bitcast %struct.smptype_struct* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_nil to i8*), i8* %138, i64 64, i32 8, i1 false)
  call void @obj_init(%struct.obj_struct* sret @smp_nil, %struct.smptype_struct* @smptype_nil)
  %139 = load i32* getelementptr inbounds (%struct.smptype_struct* @smptype_nil, i32 0, i32 1), align 4
  store i32 %139, i32* @smptype_id_nil, align 4
  %140 = load i32* bitcast (i8* getelementptr (i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i32 8) to i32*), align 8
  %141 = and i32 %140, -2
  %142 = or i32 %141, 1
  store i32 %142, i32* bitcast (i8* getelementptr (i8* bitcast (%struct.obj_struct* @smp_nil to i8*), i32 8) to i32*), align 8
  call void @smp_getclass(%struct.obj_struct* sret %boolclass, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0))
  %143 = getelementptr inbounds %struct.obj_struct* %boolclass, i32 0, i32 3
  %144 = load i8** %143, align 8
  %145 = bitcast i8* %144 to %struct.smptype_struct*
  %146 = call i32 @smpglobal_class(i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0), %struct.smptype_struct* %145, i32 144)
  call void @smp_getclass(%struct.obj_struct* sret %9, i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0))
  %147 = getelementptr inbounds %struct.obj_struct* %9, i32 0, i32 3
  %148 = load i8** %147, align 8
  %149 = bitcast i8* %148 to %struct.smptype_struct*
  call void @obj_init(%struct.obj_struct* sret @smp_true, %struct.smptype_struct* %149)
  %150 = load i32* bitcast (i8* getelementptr (i8* bitcast (%struct.obj_struct* @smp_true to i8*), i32 8) to i32*), align 8
  %151 = and i32 %150, -2
  %152 = or i32 %151, 1
  store i32 %152, i32* bitcast (i8* getelementptr (i8* bitcast (%struct.obj_struct* @smp_true to i8*), i32 8) to i32*), align 8
  %153 = call i32 @smpglobal_class(i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %exc, i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0))
  %154 = getelementptr inbounds %struct.obj_struct* %exc, i32 0, i32 3
  %155 = load i8** %154, align 8
  %156 = bitcast i8* %155 to %struct.smptype_struct*
  %157 = bitcast %struct.smptype_struct* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_exception to i8*), i8* %157, i64 64, i32 8, i1 false)
  %158 = call i32 @smpglobal_class(i8* getelementptr inbounds ([13 x i8]* @.str13, i32 0, i32 0), %struct.smptype_struct* @smptype_exception, i32 0)
  %159 = call i32 @smpglobal_class(i8* getelementptr inbounds ([17 x i8]* @.str14, i32 0, i32 0), %struct.smptype_struct* @smptype_exception, i32 0)
  call void @smp_getclass(%struct.obj_struct* sret %10, i8* getelementptr inbounds ([13 x i8]* @.str13, i32 0, i32 0))
  %160 = getelementptr inbounds %struct.obj_struct* %10, i32 0, i32 3
  %161 = load i8** %160, align 8
  %162 = bitcast i8* %161 to %struct.smptype_struct*
  store %struct.smptype_struct* %162, %struct.smptype_struct** %smptype_compiletime, align 8
  %163 = load %struct.smptype_struct** %smptype_compiletime, align 8
  %164 = call i32 @smpglobal_class(i8* getelementptr inbounds ([14 x i8]* @.str15, i32 0, i32 0), %struct.smptype_struct* %163, i32 0)
  %165 = load %struct.smptype_struct** %smptype_compiletime, align 8
  %166 = call i32 @smpglobal_class(i8* getelementptr inbounds ([14 x i8]* @.str16, i32 0, i32 0), %struct.smptype_struct* %165, i32 0)
  %167 = load %struct.smptype_struct** %smptype_compiletime, align 8
  %168 = call i32 @smpglobal_class(i8* getelementptr inbounds ([12 x i8]* @.str17, i32 0, i32 0), %struct.smptype_struct* %167, i32 0)
  %169 = load %struct.smptype_struct** %smptype_compiletime, align 8
  %170 = call i32 @smpglobal_class(i8* getelementptr inbounds ([10 x i8]* @.str18, i32 0, i32 0), %struct.smptype_struct* %169, i32 0)
  %171 = load %struct.smptype_struct** %smptype_compiletime, align 8
  %172 = call i32 @smpglobal_class(i8* getelementptr inbounds ([21 x i8]* @.str19, i32 0, i32 0), %struct.smptype_struct* %171, i32 0)
  %173 = call i32 @smpglobal_class(i8* getelementptr inbounds ([7 x i8]* @.str20, i32 0, i32 0), %struct.smptype_struct* @smptype_object, i32 128)
  call void @smp_getclass(%struct.obj_struct* sret %11, i8* getelementptr inbounds ([7 x i8]* @.str20, i32 0, i32 0))
  %174 = getelementptr inbounds %struct.obj_struct* %11, i32 0, i32 3
  %175 = load i8** %174, align 8
  %176 = bitcast i8* %175 to %struct.smptype_struct*
  %177 = bitcast %struct.smptype_struct* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.smptype_struct* @smptype_thrown to i8*), i8* %177, i64 64, i32 8, i1 false)
  %178 = bitcast %struct.obj_struct* %12 to i8*
  %179 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* %179, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %13, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_eq, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %14, %struct.obj_struct* byval %12, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str21, i32 0, i32 0), %struct.obj_struct* byval %13)
  %180 = bitcast %struct.obj_struct* %15 to i8*
  %181 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %181, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %16, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_clear, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %17, %struct.obj_struct* byval %15, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str22, i32 0, i32 0), %struct.obj_struct* byval %16)
  %182 = bitcast %struct.obj_struct* %18 to i8*
  %183 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* %183, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %19, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_cons, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %20, %struct.obj_struct* byval %18, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0), %struct.obj_struct* byval %19)
  %184 = bitcast %struct.obj_struct* %21 to i8*
  %185 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %184, i8* %185, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %22, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_eq, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %23, %struct.obj_struct* byval %21, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), %struct.obj_struct* byval %22)
  %186 = bitcast %struct.obj_struct* %24 to i8*
  %187 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* %187, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %25, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_eql, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %26, %struct.obj_struct* byval %24, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str25, i32 0, i32 0), %struct.obj_struct* byval %25)
  %188 = bitcast %struct.obj_struct* %27 to i8*
  %189 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %188, i8* %189, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %28, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %29, %struct.obj_struct* byval %27, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str26, i32 0, i32 0), %struct.obj_struct* byval %28)
  %190 = bitcast %struct.obj_struct* %30 to i8*
  %191 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %191, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %31, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %32, %struct.obj_struct* byval %30, i32 64, i8* getelementptr inbounds ([8 x i8]* @.str27, i32 0, i32 0), %struct.obj_struct* byval %31)
  %192 = bitcast %struct.obj_struct* %33 to i8*
  %193 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %193, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %34, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %35, %struct.obj_struct* byval %33, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str28, i32 0, i32 0), %struct.obj_struct* byval %34)
  %194 = bitcast %struct.obj_struct* %36 to i8*
  %195 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %194, i8* %195, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %37, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_to_s_class, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %38, %struct.obj_struct* byval %36, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str28, i32 0, i32 0), %struct.obj_struct* byval %37)
  %196 = bitcast %struct.obj_struct* %39 to i8*
  %197 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %196, i8* %197, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %40, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_type, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %41, %struct.obj_struct* byval %39, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str29, i32 0, i32 0), %struct.obj_struct* byval %40)
  %198 = bitcast %struct.obj_struct* %42 to i8*
  %199 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %198, i8* %199, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %43, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_types_equalp, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %44, %struct.obj_struct* byval %42, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str30, i32 0, i32 0), %struct.obj_struct* byval %43)
  %200 = bitcast %struct.obj_struct* %45 to i8*
  %201 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %200, i8* %201, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %46, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_write, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %47, %struct.obj_struct* byval %45, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %46)
  %202 = bitcast %struct.obj_struct* %48 to i8*
  %203 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %202, i8* %203, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %49, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpobj_write_class, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %50, %struct.obj_struct* byval %48, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str31, i32 0, i32 0), %struct.obj_struct* byval %49)
  %204 = bitcast %struct.obj_struct* %51 to i8*
  %205 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %204, i8* %205, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %52, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpbool_and, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %53, %struct.obj_struct* byval %51, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), %struct.obj_struct* byval %52)
  %206 = bitcast %struct.obj_struct* %54 to i8*
  %207 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* %207, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %55, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpbool_not, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %56, %struct.obj_struct* byval %54, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str33, i32 0, i32 0), %struct.obj_struct* byval %55)
  %208 = bitcast %struct.obj_struct* %57 to i8*
  %209 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %208, i8* %209, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %58, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpbool_or, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %59, %struct.obj_struct* byval %57, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str34, i32 0, i32 0), %struct.obj_struct* byval %58)
  %210 = bitcast %struct.obj_struct* %60 to i8*
  %211 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %210, i8* %211, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %61, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smpbool_xor, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %62, %struct.obj_struct* byval %60, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str35, i32 0, i32 0), %struct.obj_struct* byval %61)
  %212 = bitcast %struct.obj_struct* %63 to i8*
  %213 = bitcast %struct.obj_struct* %object to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %212, i8* %213, i64 32, i32 8, i1 false)
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %64, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smptype_gc_mark, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %65, %struct.obj_struct* byval %63, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str27, i32 0, i32 0), %struct.obj_struct* byval %64)
  call void @smp_getclass(%struct.obj_struct* sret %66, i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0))
  call void (%struct.obj_struct*, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)* @smpfun_init(%struct.obj_struct* sret %67, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)* @smptrue_to_s, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0))
  call void @smptype_def(%struct.obj_struct* sret %68, %struct.obj_struct* byval %66, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str28, i32 0, i32 0), %struct.obj_struct* byval %67)
  %214 = call i32 (...)* @smpfun_create_class()
  %215 = call i32 (...)* @smpcollection_create_class()
  %216 = call i32 (...)* @smplist_create_class()
  %217 = call i32 (...)* @smpnil_create_class()
  %218 = call i32 (...)* @smppair_create_class()
  %219 = call i32 (...)* @smpthrown_create_class()
  %220 = call i32 (...)* @smpexc_create_class()
  %221 = call i32 (...)* @smpstrcreate_class()
  ret i32 0
}

declare void @minihash_init(%struct.minihash_struct* sret, ...)

declare i32 @smpglobal_class(i8*, %struct.smptype_struct*, i32)

declare i8* @smp_malloc(i64)

declare void @smp_getclass(%struct.obj_struct* sret, i8*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i32 @smpglobal_class_multiple(i8*, %struct.smptype_struct**, i64, i32)

declare void @obj_init(%struct.obj_struct* sret, %struct.smptype_struct*)

declare void @smptype_def(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, i8*, %struct.obj_struct* byval)

declare void @smpfun_init(%struct.obj_struct* sret, void (%struct.obj_struct*, %struct.obj_struct*, i32, %struct.obj_struct*)*, i32, ...)

declare void @smpobj_eq(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_clear(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_cons(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_eql(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_equalp(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_gc_mark(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_to_s(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_to_s_class(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_type(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_types_equalp(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_write(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpobj_write_class(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpbool_and(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpbool_not(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpbool_or(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smpbool_xor(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smptype_gc_mark(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare void @smptrue_to_s(%struct.obj_struct* sret, %struct.obj_struct* byval, i32, %struct.obj_struct*)

declare i32 @smpfun_create_class(...)

declare i32 @smpcollection_create_class(...)

declare i32 @smplist_create_class(...)

declare i32 @smpnil_create_class(...)

declare i32 @smppair_create_class(...)

declare i32 @smpthrown_create_class(...)

declare i32 @smpexc_create_class(...)

declare i32 @smpstrcreate_class(...)
